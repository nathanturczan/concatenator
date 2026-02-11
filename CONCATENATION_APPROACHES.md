# Concatenation Approaches Master Tracker

## Overview

This document tracks different approaches to musical concatenation—chaining audio snippets, MIDI progressions, or notation fragments end-to-end based on harmonic compatibility.

---

## Approach Comparison

| Approach | Domain | Matching Logic | Transposition Method | Scale Network | Status |
|----------|--------|----------------|---------------------|---------------|--------|
| **Progression Concatenator** | MIDI | Voice-leading intervals (4-6 voice flexible matching) | Bass note alignment + octave correction | Graph of compatible progressions | **Active** |
| **Sample Laboratory** | Audio | Pitch class subset → scale membership | Pre-computed transpositions (-7 to +4 semitones) | Tymoczko 57-scale adjacency | Active |
| **Reger Mods Chainer** | MIDI/LilyPond | First/last chord matching | Transpose entire progression | TBD | Planned |
| **Sarabande Project** | Audio | Pitch class subset → scale membership | Scale network navigation | Tymoczko 57-scale adjacency | Planned |

---

## Source Material Inventory

### Audio Sample Collections

| Collection | Source | Samples | Tagged | Location | Status |
|------------|--------|---------|--------|----------|--------|
| **Whiteroom** | Cream - White Room | 9 triads | Yes | `/Users/soney/Music/sample-laboratory/whiteroom/` | Complete |
| **RHCP** | Red Hot Chili Peppers | 15 | Yes | `/Users/soney/Music/sample-laboratory/rhcp/` | Complete |
| **Mayer** | John Mayer | 9 | Yes | `/Users/soney/Music/sample-laboratory/mayer/` | Complete |
| **Wild Rose** | MacDowell - To a Wild Rose | 50 | Yes | `/Users/soney/Music/sample-laboratory/wildrose/` | Complete |
| **Mamamia** | ABBA - Mamma Mia | Multiple | Yes | `/Users/soney/Music/sample-laboratory/mamamia/` | Complete |
| **ILYAF** | I Love You Always Forever | Multiple | Yes | `/Users/soney/Music/sample-laboratory/ilyaf/` | Complete |
| **Sarabande** | Satie - Sarabande | 78 | Yes | `/Users/soney/Music/samples/sarabande/` | Ready for processing |

### MIDI/Notation Collections

| Collection | Source | Items | Format | Location | Status |
|------------|--------|-------|--------|----------|--------|
| **Reger Modulations** | Max Reger modulation exercises | 120 MIDI files (with a/b variants) | MIDI + LilyPond | `/Users/soney/Music/MIDI_Experiments/Modulation old/Reger-Dataset/` | Ready for analysis |
| **Demo MIDIs** | Various (Take 5, All Night Long, etc.) | 6 | MIDI | `/Users/soney/Music/MIDI_Experiments/demo_MIDIs/` | Available |
| **Schoenberg** | Harmonielehre examples | 198 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/Schoenberg-Dataset/` | Active |
| **Hindemith** | Craft of Musical Composition | 65 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/Hindemith-Dataset/` | Active |
| **Hanson** | Harmonic Materials of Modern Music | 52 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/Hanson-Dataset/` | Active |
| **HAM** | Harmonic Analysis Materials | 52 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/HAM-Dataset/` | Active |
| **Levarie** | Theory textbook | 39 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/Levarie-Dataset/` | Active |
| **Slonimsky** | Thesaurus of Scales | 20 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/Slonimsky-Dataset/` | Active |
| **Misc** | Various sources | 74 | MIDI | `/Users/soney/Music/MIDI_Experiments/Modulation/Misc-Dataset/` | Active |

---

## Detailed Approach Documentation

### 1. Sample Laboratory (Audio Chaining)

**Location:** `/Users/soney/Music/sample-laboratory/`

**Core Files:**
- `sample_clerk.py` - Organizes samples into scale folders via symlinks
- `scales_data.json` - 57 scales with adjacency relationships
- `{collection}/make_song.py` - Chains samples via adjacent scale navigation

**Algorithm:**
1. Tag each sample with its pitch classes (note_names in JSON)
2. Create transpositions from -7 to +4 semitones
3. Distribute samples/transpositions to all compatible scale folders
4. Chain by walking through adjacent scales, selecting next numbered sample
5. Concatenate audio with 1ms crossfade

**Scales Supported:** 57 scales
- 12 Diatonic, 12 Acoustic, 12 Harmonic minor, 12 Harmonic major
- 3 Octatonic, 2 Whole-tone, 4 Hexatonic

---

### 2. Progression Concatenator (MIDI Chaining)

**Active Implementation:** `/Users/soney/Music/MIDI_Experiments/Modulation/progression5.py`
**Documentation:** `/Users/soney/Github/harmony-tools/progression-concatenator/README.md`
**Archived Version:** `/Users/soney/Github/archived/Modulation/progression-concatenator.py`

**MIDI Corpus (504 progressions):**
| Dataset | Count | Source |
|---------|-------|--------|
| Schoenberg | 198 | *Harmonielehre*, pp. 89-93, 360-361 |
| Misc | 74 | Various sources |
| Hindemith | 65 | *Craft of Musical Composition* |
| HAM | 52 | Harmonic Analysis Materials |
| Hanson | 52 | *Harmonic Materials of Modern Music* |
| Levarie | 39 | Theory textbook |
| Slonimsky | 20 | *Thesaurus of Scales* |
| NAKH | 4 | Miscellaneous |

**Algorithm:**
1. Parse MIDI progressions using music21
2. Extract SATB voicing with flexible 4-6 voice matching via sliding window
3. Build directed graph: progression A → B if any 4-note window intervals match
4. Prune sinks iteratively (progressions with no valid children)
5. Random walk through graph, biasing toward loop closure after target length
6. Apply octave correction for voice leading continuity
7. Add ties for repeated notes, export to MusicXML

**Usage:**
```bash
cd /Users/soney/Music/MIDI_Experiments/Modulation
python progression5.py Schoenberg-Dataset/harmonielehre-p89-91-inversions-of-7th-chords-1.midi -n 100
```

**Output:** MusicXML score opened in MuseScore, with optional realtime MIDI playback

---

### 3. Reger Modulations Chainer (Planned)

**Source Material:**
- 100+ modulations starting from C major
- Each ends in a different key
- 4-part harmony (SATB)
- a/b variants for enharmonic alternatives

**Planned Approach:**
- Analyze ending chord of each modulation
- Match to starting chord (C major) of next modulation
- Transpose entire modulation to create smooth transitions
- Support both sequential playback and graph-based navigation

---

### 4. Sarabande Project (Planned)

**Source Material:**
- Satie Sarabande broken into ~80 chord segments
- Each segment tagged with pitch classes
- Similar structure to Wild Rose project

**Planned Approach:**
- Copy sample-laboratory workflow
- Create scales_dir with symlinked transpositions
- Chain via adjacent scale navigation
- Output: continuously modulating Satie

---

## Technical Components

### Shared Dependencies

```
pydub          # Audio concatenation
music21        # MIDI parsing/analysis
pretty_midi    # MIDI generation
librosa        # Audio analysis
graphviz       # Network visualization
```

### Scale Network (Tymoczko)

The 57-scale network is based on Dmitri Tymoczko's research on voice leading and scale relationships. Adjacent scales share maximum pitch class overlap, enabling smooth modulation.

**Key Properties:**
- Each scale has 4-6 adjacent scales
- Adjacency = minimal voice leading distance
- Enables infinite harmonic walks without jarring transitions

---

## Project Roadmap

### Immediate (Sarabande)
- [ ] Copy sample-laboratory structure to sarabande folder
- [ ] Run sample_clerk.py to create scales_dir
- [ ] Create make_song.py for sarabande
- [ ] Generate test outputs

### Near-term (Reger Mods)
- [ ] Analyze all Reger modulations for first/last chords
- [ ] Build compatibility graph
- [ ] Create concatenation script
- [ ] Generate continuous modulation pieces

### Future
- [ ] Unified concatenation tool supporting MIDI + audio
- [ ] Real-time concatenation in Max/MSP or Pure Data
- [ ] Web interface for exploring concatenation possibilities
- [ ] Integration with Scale Navigator ecosystem

---

## References

- Tymoczko, D. (2011). *A Geometry of Music*
- Turczan, N. (2019). NIME paper on scale networks
- MacDowell's "To a Wild Rose" with random modulations: https://nathanturczan.bandcamp.com
- Ted Gioia tweet: https://twitter.com/tedgioia/status/1321481234567890

---

*Last updated: 2026-02-11*
