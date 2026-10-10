#!/bin/bash
# Plays a sound chip register dump on the Vectrex's MIDI player: a bundled tune by name, or a PSG
# file with the clock of its sound chip in Hz (default 1500000, the Vectrex's). Further arguments
# go to upload.py midi play, e.g. --loop. Mutes at the end, also after Ctrl+C.
#
# usage: ./play.sh title|bitcrusher [--loop]
#        ./play.sh file.psg [clock] [--loop]
# environment: MIDI = the raw MIDI device, default the first /dev/snd/midiC*D*
set -e
M="$(cd "$(dirname "$0")" && pwd)"
case "$1" in
    title) file="$M/bloxorz_title.psg"; clock=1500000; shift ;;
    bitcrusher) file="$M/a64_the_bitcrusher.psg"; clock=1789772; shift ;;
    ''|-h|--help) sed -n '2,8p' "$0"; exit 1 ;;
    *)
        file="$1"; shift
        clock=1500000
        if [[ "$1" =~ ^[0-9]+$ ]]; then clock="$1"; shift; fi
        ;;
esac
trap '"$M/mute.sh" > /dev/null' EXIT
"$M/../programmer/firmware/upload.py" ${MIDI:+--midi "$MIDI"} midi play "$file" --clock "$clock" "$@"
