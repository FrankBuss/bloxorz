#!/bin/bash
# Regenerates the register dumps in music/ from the VGM files in music/source/.
set -e
M="$(cd "$(dirname "$0")/.." && pwd)"
for f in "$M"/source/*.vgm; do
    "$M/tools/vgm2psg.py" "$f" "$M/$(basename "${f%.*}").psg"
done
