"""Audio concatenation via scale-based navigation.

This module chains audio samples by walking through the Tymoczko 57-scale
network, selecting samples that fit the current scale or adjacent scales.
"""

import json
import os
import random
from pathlib import Path
from typing import Dict, List, Optional, Tuple

from pydub import AudioSegment

from ..scales.tymoczko import load_scales_data, get_adjacent_scales


def find_initial_samples(
    scales_dir: Path,
    sample_prefix: str,
    measure_number: int = 1,
) -> List[Tuple[str, Path]]:
    """Find all samples matching a pattern across all scale folders.

    Args:
        scales_dir: Path to the scales_dir with organized samples
        sample_prefix: Prefix pattern like "wildrose" or "takemitsu_perc"
        measure_number: Measure/segment number to find

    Returns:
        List of (scale_name, sample_path) tuples
    """
    pattern = f"{sample_prefix}_{measure_number}_"
    results = []

    for scale_folder in scales_dir.iterdir():
        if not scale_folder.is_dir():
            continue

        for sample_file in scale_folder.iterdir():
            if sample_file.name.startswith(pattern):
                results.append((scale_folder.name, sample_file))

    return results


def find_next_samples(
    scales_dir: Path,
    scales_data: Dict,
    current_scale: str,
    sample_prefix: str,
    measure_number: int,
) -> List[Path]:
    """Find samples for the next measure from current and adjacent scales.

    Args:
        scales_dir: Path to scales_dir
        scales_data: Loaded scales dictionary
        current_scale: Current scale name
        sample_prefix: Sample naming prefix
        measure_number: Target measure number

    Returns:
        List of sample paths from compatible scales
    """
    pattern = f"{sample_prefix}_{measure_number}_"

    # Build list of directories to search
    adjacent = get_adjacent_scales(scales_data, current_scale)
    search_dirs = [current_scale] + adjacent

    samples = []
    seen = set()  # Avoid duplicates from symlinks

    for scale_name in search_dirs:
        scale_dir = scales_dir / scale_name
        if not scale_dir.exists():
            continue

        for sample_file in scale_dir.iterdir():
            if sample_file.name.startswith(pattern):
                # Resolve symlinks to avoid duplicates
                resolved = sample_file.resolve()
                if resolved not in seen:
                    seen.add(resolved)
                    samples.append(sample_file)

    return samples


def extract_transposition(sample_path: Path) -> int:
    """Extract transposition amount from sample filename.

    Looks for pattern like "_transposed_by-3.wav" or "_transposed_by+4.wav"

    Args:
        sample_path: Path to sample file

    Returns:
        Transposition in semitones, or 0 if not transposed
    """
    name = sample_path.stem
    if "_transposed_by" in name:
        try:
            trans_str = name.split("_transposed_by")[-1]
            # Remove any remaining suffix
            trans_str = trans_str.split("_")[0].split(".")[0]
            return int(trans_str)
        except ValueError:
            pass
    return 0


def concatenate_audio(
    scales_dir: Path,
    sample_prefix: str,
    num_measures: int,
    output_path: Optional[Path] = None,
    scales_data_path: Optional[Path] = None,
    crossfade_ms: int = 1,
    seed: Optional[int] = None,
    verbose: bool = True,
) -> Tuple[Path, List[Dict]]:
    """Concatenate audio samples via scale network navigation.

    Args:
        scales_dir: Path to organized scales_dir
        sample_prefix: Sample naming prefix (e.g., "wildrose", "takemitsu_perc")
        num_measures: Number of measures/segments to chain
        output_path: Output WAV path (auto-generated if None)
        scales_data_path: Path to scales_data.json
        crossfade_ms: Crossfade duration in milliseconds
        seed: Random seed for reproducibility
        verbose: Print progress

    Returns:
        Tuple of (output_path, journey) where journey is a list of dicts
        with scale and sample info for each measure
    """
    if seed is not None:
        random.seed(seed)

    scales_data = load_scales_data(scales_data_path)

    # Find starting options
    initial_options = find_initial_samples(scales_dir, sample_prefix, 1)

    if not initial_options:
        raise ValueError(f"No samples found matching '{sample_prefix}_1_' in {scales_dir}")

    # Pick random starting point
    current_scale, current_sample = random.choice(initial_options)

    # Initialize audio
    combined = AudioSegment.from_wav(current_sample)

    # Track the journey
    journey = [{
        "measure": 1,
        "scale": current_scale,
        "sample": current_sample.name,
        "transposition": extract_transposition(current_sample),
        "duration_ms": len(combined),
    }]

    if verbose:
        print(f"1: {current_scale} - {current_sample.name}")

    # Chain subsequent measures
    for measure in range(2, num_measures + 1):
        options = find_next_samples(
            scales_dir, scales_data, current_scale, sample_prefix, measure
        )

        if not options:
            if verbose:
                print(f"No samples found for measure {measure}, stopping")
            break

        # Pick random next sample
        next_sample = random.choice(options)
        current_scale = next_sample.parent.name

        # Append audio
        next_audio = AudioSegment.from_wav(next_sample)
        combined = combined.append(next_audio, crossfade=crossfade_ms)

        journey.append({
            "measure": measure,
            "scale": current_scale,
            "sample": next_sample.name,
            "transposition": extract_transposition(next_sample),
            "duration_ms": len(next_audio),
        })

        if verbose:
            print(f"{measure}: {current_scale} - {next_sample.name}")

    # Export
    if output_path is None:
        output_path = scales_dir.parent / "output" / f"{sample_prefix}_concat.wav"

    output_path.parent.mkdir(parents=True, exist_ok=True)
    combined.export(output_path, format="wav")

    if verbose:
        print(f"\nExported: {output_path}")
        print(f"Duration: {len(combined) / 1000:.2f}s")
        print(f"Scales traveled: {' -> '.join(j['scale'] for j in journey)}")

    return output_path, journey


def generate_companion_midi(
    journey: List[Dict],
    scales_data: Dict,
    output_path: Path,
    instrument_name: str = "Cello",
    velocity: int = 100,
    base_octave: int = 60,
) -> Path:
    """Generate a companion MIDI file showing scale pitches.

    Args:
        journey: List of measure info dicts from concatenate_audio
        scales_data: Loaded scales dictionary
        output_path: Output MIDI path
        instrument_name: MIDI instrument name
        velocity: Note velocity (0-127)
        base_octave: Base MIDI note number (60 = middle C)

    Returns:
        Path to generated MIDI file
    """
    try:
        import pretty_midi
    except ImportError:
        raise ImportError("pretty_midi required for MIDI generation: pip install pretty_midi")

    midi = pretty_midi.PrettyMIDI()
    program = pretty_midi.instrument_name_to_program(instrument_name)
    instrument = pretty_midi.Instrument(program=program)

    current_time = 0.0

    for entry in journey:
        scale_name = entry["scale"]
        duration_sec = entry["duration_ms"] / 1000.0

        # Get scale pitch classes
        pitch_classes = scales_data.get(scale_name, {}).get("pitch_classes", [])

        # Add notes for each pitch in the scale
        for pc in pitch_classes:
            note = pretty_midi.Note(
                velocity=velocity,
                pitch=base_octave + pc,
                start=current_time,
                end=current_time + duration_sec,
            )
            instrument.notes.append(note)

        current_time += duration_sec

    midi.instruments.append(instrument)
    midi.write(str(output_path))

    return output_path
