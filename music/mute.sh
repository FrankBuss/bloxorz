#!/bin/bash
# Mutes the Vectrex's MIDI player: volumes of channels A, B, C to 0 and the mixer back to the
# three tones on, noise off (register 7 = 0x38).
# environment: MIDI = the raw MIDI device, default the first /dev/snd/midiC*D*
set -e
M="$(cd "$(dirname "$0")" && pwd)"
"$M/../programmer/firmware/upload.py" ${MIDI:+--midi "$MIDI"} midi send F0 7D 7F 39 18 40 00 48 00 50 00 F7
