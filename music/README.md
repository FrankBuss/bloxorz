# Music for the MIDI player

Sound chip register dumps and test scripts for the MIDI player of the
cartridge.

## Setup

The MIDI out of a USB MIDI interface on the PC goes into the cartridge's DIN
socket. On the Vectrex, button 4 in the level select starts the MIDI player.
The scripts send to the first ALSA raw MIDI device, `/dev/snd/midiC*D*`;
`MIDI=/dev/snd/midiC2D0 ./play.sh title` selects another one. All scripts mute
at the end, also after Ctrl+C.

| Script | What it does |
|---|---|
| `./play.sh title` | the Bloxorz title music, `bloxorz_title.psg`, 187 s |
| `./play.sh bitcrusher` | "The [BITCRUSHER]", `a64_the_bitcrusher.psg` at its 1789772 Hz clock, 162 s |
| `./play.sh file.psg [clock] [--loop]` | any register dump, clock of its sound chip in Hz, default 1500000; 1773400 for ZX Spectrum tunes |
| `./polytest.sh` | the first phrase of Ode to Joy on all three channels: melody over chords, then a triad, 8 s |
| `./note.sh [note] [velocity] [seconds]` | one note, default middle C (60) at full volume for 0.5 s; the volume is velocity / 8 |
| `./mute.sh` | volumes of A, B, C to 0 and register 7 back to 0x38, the three tones on |

Single messages, hex, complete MIDI messages only:

```bash
../programmer/firmware/upload.py midi send F0 7D 08 00 00 F7   # register 8 = 0, silent
../programmer/firmware/upload.py midi send 90 3C 7F            # note on, middle C
../programmer/firmware/upload.py midi send 80 3C 00            # note off
```

The silent message is a quick check: the received byte count on the screen
goes up by 6 and the last line shows `F0 7D 08 00`.

The player plays note on and off of any channel on the three tone channels and
writes sound chip registers with sysex, `F0 7D rr hh ll F7` for one register,
`F0 7D 7F (rr << 3 | value >> 5) (value & 31) ... F7` for several; the details
are in `../programmer/firmware/README.md`, section 5.6. A note switches the
tone of its channel on, even when a register dump left it off, and register 7
always keeps the I/O port an input for the buttons.

With the cartridge in the programmer instead, `upload.py cart miditest` and
`upload.py cart blocktest` send MIDI through the interface and read it back
from the cartridge PIC.

## Files

`tools/dump-bloxorz.sh` records the Bloxorz dump in the Godot emulator,
`tools/convert.sh` converts the VGM in `source/`, `tools/vgm2psg.py` is the
converter, `tools/polytest.py` is the polyphony test.

## Licenses

`bloxorz_title.psg` is the title music of this game, composed by Luchs Soft,
and falls under the project license, see `../license.txt`.

`source/a64_the_bitcrusher.vgm` and `a64_the_bitcrusher.psg`:
**"The [BITCRUSHER]" by A64 (Abstract 64)**, an entry of the Battle of the Bits
Summer Chip XII, 2022,
https://battleofthebits.com/arena/Entry/The+%5BBITCRUSHER%5D/54557/,
licensed under Creative Commons Attribution-NonCommercial-ShareAlike 4.0,
https://creativecommons.org/licenses/by-nc-sa/4.0/. The VGM is the unchanged
entry file. The PSG file is a conversion of it into a register dump at the
original 60 frames per second and is under the same license. Neither file is
covered by the project license, and they may not be used commercially.
