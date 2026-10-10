#!/bin/bash
# Plays one note on the Vectrex's MIDI player, by default middle C at full volume for half a
# second. Volume on the sound chip is velocity / 8, 0-15.
#
# usage: ./note.sh [note 0-127] [velocity 1-127] [seconds]
# environment: MIDI = the raw MIDI device, default the first /dev/snd/midiC*D*
set -e
M="$(cd "$(dirname "$0")" && pwd)"
UPLOAD="$M/../programmer/firmware/upload.py"
note=$(printf "%02x" "${1:-60}")
velocity=$(printf "%02x" "${2:-127}")
trap '"$UPLOAD" ${MIDI:+--midi "$MIDI"} midi send 80 '"$note"' 00 > /dev/null' EXIT
"$UPLOAD" ${MIDI:+--midi "$MIDI"} midi send 90 "$note" "$velocity" > /dev/null
sleep "${3:-0.5}"
