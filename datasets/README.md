# MIDI Datasets

This directory contains MIDI files of chord progressions and modulations from various music theory sources, used for algorithmic concatenation.

## Dataset Summary

| Dataset | Count | Source | Notes |
|---------|-------|--------|-------|
| **schoenberg** | 198 | *Harmonielehre* pp. 89-93, 360-361 | Largest dataset; inversions of 7th chords |
| **reger** | 121 | Max Reger's modulation treatise | Includes LilyPond source in `source/` |
| **boyd-jazz** | 114 | Jazz chord progressions book | Jazz harmony examples |
| **messiaen** | 101 | Modes of limited transposition | Modal harmony |
| **misc** | 74 | Various sources | Mixed examples |
| **hindemith** | 65 | *Craft of Musical Composition* | Intervallic theory |
| **ham** | 52 | Harmonic Analysis Materials | Traditional harmony |
| **hanson** | 52 | *Harmonic Materials of Modern Music* | Modern harmonic materials |
| **levarie** | 39 | Music theory textbook | Traditional theory |
| **persichetti** | 37 | *Twentieth-Century Harmony* | 20th century techniques |
| **slonimsky** | 36 | *Thesaurus of Scales and Melodic Patterns* | Pandiatonic harmony, exotic scales |
| **vocalarr** | 11 | Vocal arrangement examples | Voice leading studies |
| **nakh** | 4 | Miscellaneous | Various examples |
| **wagner** | 2 | Wagner excerpts | Chromatic progressions |
| **wischnegradsky** | 1 | Microtonal examples | Quarter-tone examples |

**Total: ~905 MIDI files**

## Source Provenance

### Primary Source
Most datasets were migrated from `/Users/soney/Music/MIDI_Experiments/Modulation old/` which contains the original hand-transcribed MIDI files.

### LilyPond Sources
- `reger/source/Nathan-Turczan-regermodsV2.ly` - Original LilyPond source for Reger modulations
- `slonimsky/source/` - LilyPond sources for Slonimsky patterns

### Citation
These datasets were created for research on algorithmic music concatenation. If using these materials, please cite:

> Turczan, N. (2019). Scale Navigator: A Networked Approach to Scale-Based Composition. Proceedings of NIME 2019.

## Usage

The MIDI files are designed to be parsed by music21 and analyzed for:
- First/last chord voicings (SATB + extensions)
- Voice-leading intervals between adjacent notes
- Graph connectivity based on interval matching

See the main README for concatenation usage.
