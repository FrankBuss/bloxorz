#!/bin/bash
# Records the Bloxorz title music as music/bloxorz_title.psg by running the game in the Godot
# emulator without a window: 200 seconds of sound chip register writes after the BIOS start.
# needs: Godot 4.7 .NET, like build.sh (GODOT = the binary, DOTNET_ROOT = the .NET SDK)
set -e
R="$(cd "$(dirname "$0")/../.." && pwd)"
GODOT="${GODOT:-$HOME/.local/opt/Godot_v4.7-stable_mono_linux_x86_64/Godot_v4.7-stable_mono_linux.x86_64}"
export DOTNET_ROOT="${DOTNET_ROOT:-$HOME/.dotnet}"
export PATH="$DOTNET_ROOT:$PATH"
"$GODOT" --headless --path "$R/godot" --build-solutions --quit > /dev/null 2>&1 || true
"$GODOT" --headless --path "$R/godot" -- --dump-psg "$R/music/bloxorz_title.psg" 200 2>&1 | grep -v "^$" | tail -3
