# Concatenator

Musical concatenation tools for chaining MIDI progressions and audio samples into continuous compositions based on harmonic compatibility.

## Overview

Concatenator provides two approaches to musical concatenation:

1. **MIDI Concatenation**: Analyzes chord progressions and builds a directed graph where progressions can transition based on voice-leading intervals. Random walks produce infinitely-varying, harmonically coherent sequences.

2. **Audio Concatenation**: Chains audio samples by navigating the Tymoczko 57-scale network. Samples are organized by compatible scales, and concatenation walks through adjacent scales for smooth harmonic transitions.

**Key Features:**
- MIDI: Flexible 4-6 voice SATB matching, LilyPond/MusicXML output
- Audio: Scale-based sample organization, automatic transpositions
- Shared: Tymoczko 57-scale network for harmonic navigation

## Installation

```bash
# Clone the repository
git clone https://github.com/nathanturczan/concatenator.git
cd concatenator

# Install core dependencies (MIDI only)
pip install -e .

# Install with audio support
pip install -e ".[audio]"
```

### Dependencies
- Python 3.9+
- music21 >= 9.0.0
- numpy >= 1.20.0
- graphviz >= 0.20.0
- LilyPond (optional, for PDF rendering)

**Audio extras:**
- pydub >= 0.25.0
- pretty_midi >= 0.2.10

---

## MIDI Concatenation

### Quick Start

```bash
# Generate a 20-progression loop starting from a Schoenberg example
python scripts/concatenate_midi.py datasets/schoenberg/harmonielehre-p89-91-inversions-of-7th-chords-1.midi -n 20 --no-play

# Output is saved to outputs/scores/output.ly by default
lilypond outputs/scores/output.ly  # Generates PDF
```

### Usage

```bash
python scripts/concatenate_midi.py <start_file> [options]

Arguments:
  start_file          Starting MIDI filename (relative to datasets/)

Options:
  -n, --num NUM       Target number of progressions (default: 100)
  --output-format     lilypond (default), musicxml, or show
  -o, --output PATH   Custom output file path
  --graph             Render Graphviz visualization of the progression network
  --no-play           Disable realtime MIDI playback
  --seed SEED         Random seed for reproducible walks
```

### Examples

```bash
# Generate MusicXML for MuseScore
python scripts/concatenate_midi.py datasets/reger/reger-mods-001.mid -n 50 --output-format musicxml

# Visualize the progression network
python scripts/concatenate_midi.py datasets/schoenberg/harmonielehre-p89-91-inversions-of-7th-chords-1.midi --graph
```

---

## Audio Concatenation

Audio concatenation uses the Tymoczko 57-scale network to chain audio samples. Samples are pre-organized by compatible scales, then concatenated by walking through adjacent scales.

### Setup (One-Time)

First, organize your samples into scale folders:

```bash
python scripts/concatenate_audio.py organize /path/to/samples samples_data.json
```

This creates a `scales_dir/` with symlinks to samples (and transpositions) in each compatible scale folder.

**samples_data.json format:**
```json
{
  "sample_name": {
    "note_names": ["C", "E", "G"]
  },
  "another_sample": {
    "note_names": ["D", "F#", "A"]
  }
}
```

### Chaining Samples

```bash
# Chain 50 measures of "wildrose" samples
python scripts/concatenate_audio.py chain /path/to/scales_dir wildrose -n 50

# With companion MIDI file
python scripts/concatenate_audio.py chain /path/to/scales_dir takemitsu_perc -n 20 --midi

# Reproducible output
python scripts/concatenate_audio.py chain /path/to/scales_dir mamamia -n 30 --seed 42
```

### Usage

```bash
python scripts/concatenate_audio.py {organize,chain} ...

organize:
  samples_dir         Directory containing source WAV samples
  manifest            Path to samples_data.json
  -o, --output        Output directory for scales_dir
  --transpositions    Comma-separated semitones (default: -7 to +4)

chain:
  scales_dir          Path to organized scales_dir
  prefix              Sample naming prefix (e.g., 'wildrose')
  -n, --num           Number of measures to chain (default: 50)
  -o, --output        Output WAV path
  --midi              Generate companion MIDI file
  --crossfade         Crossfade in milliseconds (default: 1)
  --seed              Random seed for reproducibility
```

**Note:** Audio samples are stored externally (not in this repo) due to size and copyright considerations. Point `scales_dir` to your local sample-laboratory location.

---

## Datasets

The `datasets/` directory contains ~905 MIDI files from various music theory sources:

| Dataset | Files | Source |
|---------|-------|--------|
| schoenberg | 198 | Harmonielehre |
| reger | 121 | Modulation treatise |
| boyd-jazz | 114 | Jazz harmony |
| messiaen | 101 | Modes of limited transposition |
| misc | 74 | Various |
| hindemith | 65 | Craft of Musical Composition |
| ham | 52 | Harmonic Analysis Materials |
| hanson | 52 | Harmonic Materials of Modern Music |
| levarie | 39 | Theory textbook |
| persichetti | 37 | Twentieth-Century Harmony |
| slonimsky | 36 | Thesaurus of Scales |

See `datasets/README.md` for full provenance documentation.

---

## Project Structure

```
concatenator/
├── datasets/           # MIDI corpus (~905 files)
├── src/concatenator/   # Python package
│   ├── midi/
│   │   ├── analyzer.py # Chord interval extraction
│   │   ├── graph.py    # Network construction
│   │   ├── walker.py   # Random walk algorithm
│   │   └── output.py   # LilyPond/MusicXML export
│   ├── audio/
│   │   ├── sample_clerk.py  # Sample organization
│   │   └── chain.py         # Audio concatenation
│   └── scales/
│       └── tymoczko.py      # 57-scale network operations
├── scripts/            # CLI entry points
├── data/               # Shared data (scales_data.json)
└── outputs/            # Generated files (.gitignored)
```

---

## How It Works

### MIDI Approach

1. **Analysis**: Parse MIDI files for first/last chord voicings and intervals
2. **Graph**: Connect progressions whose end/start chords share interval patterns
3. **Prune**: Remove "sink" nodes (progressions with no valid children)
4. **Walk**: Random walk with bias toward loop closure

### Audio Approach

1. **Organize**: Tag samples with pitch classes, distribute to compatible scale folders
2. **Transpose**: Generate transpositions (-7 to +4 semitones) for more scale coverage
3. **Walk**: Navigate adjacent scales, selecting random samples that fit
4. **Concatenate**: Chain audio with crossfades

Both approaches use the **Tymoczko 57-scale network** for harmonic coherence.

---

## References

- Tymoczko, D. (2011). *A Geometry of Music*
- Turczan, N. (2019). Scale Navigator: A Networked Approach to Scale-Based Composition. NIME 2019.

## License

MIT License - See LICENSE file for details.
