#!/bin/bash
# Polyphony test for the Vectrex's MIDI player: the first phrase of Ode to Joy on channel A over
# root and fifth chords on B and C, then a C major triad on all three, about 8 seconds. Mutes at
# the end, also after Ctrl+C.
# environment: MIDI = the raw MIDI device, default the first /dev/snd/midiC*D*
set -e
M="$(cd "$(dirname "$0")" && pwd)"
trap '"$M/mute.sh" > /dev/null' EXIT
python3 -I "$M/tools/polytest.py"
