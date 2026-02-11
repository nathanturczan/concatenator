# Concatenator

Musical concatenation tools for chaining MIDI progressions into continuous compositions based on voice-leading compatibility.

## Overview

Concatenator analyzes a corpus of MIDI chord progressions and builds a directed graph where each progression can transition to others that share similar inner-voice intervals. Random walks through this graph produce infinitely-varying, harmonically coherent sequences.

**Key Features:**
- Flexible 4-6 voice SATB matching via sliding window
- Automatic octave normalization for voice leading continuity
- Tie generation for repeated notes across progression boundaries
- LilyPond output for high-quality notation (default)
- MusicXML output for MuseScore/Dorico compatibility

## Installation

```bash
# Clone the repository
git clone https://github.com/nathanturczan/concatenator.git
cd concatenator

# Install dependencies
pip install -r requirements.txt

# Or install as a package
pip install -e .
```

### Dependencies
- Python 3.9+
- music21 >= 9.0.0
- numpy >= 1.20.0
- graphviz >= 0.20.0
- LilyPond (optional, for PDF rendering)

## Quick Start

```bash
# Generate a 20-progression loop starting from a Schoenberg example
python scripts/concatenate_midi.py datasets/schoenberg/harmonielehre-p89-91-inversions-of-7th-chords-1.midi -n 20 --no-play

# Output is saved to outputs/scores/output.ly by default
lilypond outputs/scores/output.ly  # Generates PDF
```

## Usage

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
  --datasets-dir DIR  Custom datasets directory
```

### Examples

```bash
# Generate MusicXML for MuseScore
python scripts/concatenate_midi.py datasets/reger/reger-mods-001.mid -n 50 --output-format musicxml

# Visualize the progression network
python scripts/concatenate_midi.py datasets/schoenberg/harmonielehre-p89-91-inversions-of-7th-chords-1.midi --graph

# Reproducible output with seed
python scripts/concatenate_midi.py datasets/hindemith/hindemith-01.midi -n 30 --seed 42 --no-play
```

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

## How It Works

### 1. Analysis
Each MIDI file is parsed to extract:
- First and last chord of the progression
- MIDI pitches sorted from bass to soprano
- Adjacent intervals between voices
- 4-note "match patterns" for flexible voice matching

### 2. Graph Construction
Progressions are connected when the ending chord of one matches the beginning chord of another. For 4-6 voice chords, matching is flexible: any contiguous 4-note window can serve as the SATB frame.

### 3. Sink Pruning
"Sink" nodes (progressions with no valid children) are iteratively removed to ensure the walk can always continue.

### 4. Random Walk
Starting from a specified progression:
1. Select a random child progression
2. Transpose to maintain voice continuity
3. Bias toward returning to the start after target length
4. Apply ties for repeated notes
5. Export to LilyPond/MusicXML

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
│   ├── audio/          # Audio concatenation (planned)
│   └── scales/         # Tymoczko 57-scale network
├── scripts/            # CLI entry points
├── data/               # Shared data (scales_data.json)
└── outputs/            # Generated files (.gitignored)
```

## Related Work

- **Scale Navigator**: Harmonic middleware ecosystem using the Tymoczko 57-scale network
- **Sample Laboratory**: Audio concatenation using pitch class → scale mapping

## References

- Tymoczko, D. (2011). *A Geometry of Music*
- Turczan, N. (2019). Scale Navigator: A Networked Approach to Scale-Based Composition. NIME 2019.

## License

MIT License - See LICENSE file for details.
