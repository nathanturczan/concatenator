#!/usr/bin/env python3
"""CLI for audio sample concatenation via scale network navigation."""

import argparse
import json
import sys
from pathlib import Path

# Add src to path for development
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))

from concatenator.audio import (
    concatenate_audio,
    organize_samples,
    generate_companion_midi,
)
from concatenator.scales import load_scales_data


def parse_args(argv=None):
    parser = argparse.ArgumentParser(
        description="Concatenate audio samples via Tymoczko 57-scale network navigation."
    )

    subparsers = parser.add_subparsers(dest="command", help="Commands")

    # organize command
    org_parser = subparsers.add_parser(
        "organize",
        help="Organize samples into scale folders (run once before concatenating)"
    )
    org_parser.add_argument(
        "samples_dir",
        type=Path,
        help="Directory containing source WAV samples",
    )
    org_parser.add_argument(
        "manifest",
        type=Path,
        help="Path to samples_data.json with pitch class info",
    )
    org_parser.add_argument(
        "-o", "--output",
        type=Path,
        help="Output directory for scales_dir (default: samples_dir/scales_dir)",
    )
    org_parser.add_argument(
        "--no-symlinks",
        action="store_true",
        help="Copy files instead of creating symlinks",
    )
    org_parser.add_argument(
        "--transpositions",
        type=str,
        default="-7,-6,-5,-4,-3,-2,-1,1,2,3,4",
        help="Comma-separated semitone transpositions (default: -7 to +4 excluding 0)",
    )

    # chain command
    chain_parser = subparsers.add_parser(
        "chain",
        help="Chain samples into a continuous audio file"
    )
    chain_parser.add_argument(
        "scales_dir",
        type=Path,
        help="Path to organized scales_dir",
    )
    chain_parser.add_argument(
        "prefix",
        help="Sample naming prefix (e.g., 'wildrose', 'takemitsu_perc')",
    )
    chain_parser.add_argument(
        "-n", "--num",
        type=int,
        default=50,
        help="Number of measures/segments to chain (default: 50)",
    )
    chain_parser.add_argument(
        "-o", "--output",
        type=Path,
        help="Output WAV path (default: auto-generated)",
    )
    chain_parser.add_argument(
        "--midi",
        action="store_true",
        help="Also generate companion MIDI file showing scale pitches",
    )
    chain_parser.add_argument(
        "--crossfade",
        type=int,
        default=1,
        help="Crossfade duration in milliseconds (default: 1)",
    )
    chain_parser.add_argument(
        "--seed",
        type=int,
        help="Random seed for reproducible output",
    )
    chain_parser.add_argument(
        "--json",
        action="store_true",
        help="Output journey data as JSON",
    )

    return parser.parse_args(argv)


def cmd_organize(args):
    """Handle the organize command."""
    transpositions = tuple(int(x) for x in args.transpositions.split(","))

    output_dir = organize_samples(
        samples_dir=args.samples_dir,
        samples_manifest=args.manifest,
        output_dir=args.output,
        transpositions=transpositions,
        use_symlinks=not args.no_symlinks,
        verbose=True,
    )

    print(f"\nScales directory created at: {output_dir}")
    print(f"Ready to concatenate with: concatenate_audio.py chain {output_dir} <prefix>")


def cmd_chain(args):
    """Handle the chain command."""
    output_path, journey = concatenate_audio(
        scales_dir=args.scales_dir,
        sample_prefix=args.prefix,
        num_measures=args.num,
        output_path=args.output,
        crossfade_ms=args.crossfade,
        seed=args.seed,
        verbose=not args.json,
    )

    if args.midi:
        scales_data = load_scales_data()
        midi_path = output_path.with_suffix(".mid")
        generate_companion_midi(journey, scales_data, midi_path)
        if not args.json:
            print(f"MIDI exported: {midi_path}")

    if args.json:
        result = {
            "output_path": str(output_path),
            "journey": journey,
        }
        if args.midi:
            result["midi_path"] = str(midi_path)
        print(json.dumps(result, indent=2))


def main(argv=None):
    args = parse_args(argv)

    if args.command == "organize":
        cmd_organize(args)
    elif args.command == "chain":
        cmd_chain(args)
    else:
        print("Usage: concatenate_audio.py {organize,chain} ...")
        print("Run with -h for help")
        sys.exit(1)


if __name__ == "__main__":
    main()
