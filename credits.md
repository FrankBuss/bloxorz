# Credits

## Bloxorz

Bloxorz for the Vectrex by Frank Buss, after the Flash game Bloxorz by Damien
Clarke (DX Interactive). Vector logo, attract demo and level select from the
VecFever version. Bank switching and field drawing by Malban.

Title music composed by Luchs Soft, an Arkos Tracker tune, played by the
Arkos Tracker 2 Vectrex player (`Vide/source/arkosPlayer.s`).
`music/bloxorz_title.psg` is its sound chip register dump, recorded with
`music/tools/dump-bloxorz.sh` in the Godot emulator.

C library and startup code: Peer Johannsen's Vectrex C library for Vide.
Emulator: vecx by Valavan Manohararajah, C# port in `godot/Scripts`.

## Other games in the flash

The original GCE games are the dumps from archive.org (`vectrex-*` items),
checksums as in the MAME software list `hash/vectrex.xml`, see
`Vide/games/games.txt`:

Armor Attack, Berzerk, Blitz, Cosmic Chasm, Fortress Narzod, Hyperchase,
Pole Position, Rip-Off, Scramble, Solar Quest, Spike, Star Castle, Web Warp.

Karl Quappe by Malban, public domain, used with permission:
https://github.com/malbanGit/KarlQuappe

## Music for the MIDI player

In `music/`, licenses in `music/README.md`.

**The [BITCRUSHER]** by A64 (Abstract 64), entry of the Battle of the Bits
Summer Chip XII, 2022, made with Furnace, licensed under
[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/):
https://battleofthebits.com/arena/Entry/The+%5BBITCRUSHER%5D/54557/ and
https://www.youtube.com/watch?v=quo7s79syQs. `music/source/a64_the_bitcrusher.vgm`
is the entry file, `music/a64_the_bitcrusher.psg` its conversion to a register
dump with `music/tools/vgm2psg.py`, under the same license.

## Tools

- Furnace by tildearrow: https://github.com/tildearrow/furnace
- Vide, the Vectrex IDE by Malban: http://vide.malban.de/
