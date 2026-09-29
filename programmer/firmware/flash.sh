#!/usr/bin/env bash
# Flash the programmer firmware to the RP2354B with a SEGGER J-Link / J-Trace.
#
#   ./flash.sh              build in release mode and flash
#   ./flash.sh --debug      build the debug profile and flash
#   ./flash.sh path/to.elf  flash an existing ELF
#
# Environment overrides:
#   DEVICE  J-Link device name        (default RP2350_M33_0)
#   IFACE   SWD or JTAG               (default SWD)
#   SPEED   interface speed in kHz    (default 4000)
#
# The board's debug connector J1 is a Tag-Connect TC2030 wired for SWD only -
# SWCLK, SWDIO and RESET, with the SWO pad unconnected - so the J-Trace talks
# SWD here even though it can do 4-wire JTAG on other targets.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

DEVICE="${DEVICE:-RP2350_M33_0}"
IFACE="${IFACE:-SWD}"
SPEED="${SPEED:-4000}"
TARGET=thumbv8m.main-none-eabihf
PROFILE=release
ELF=""

for arg in "$@"; do
    case "$arg" in
        --debug)   PROFILE=debug ;;
        --release) PROFILE=release ;;
        -h|--help) sed -n '2,15p' "$0"; exit 0 ;;
        *)         ELF="$arg" ;;
    esac
done

if [ -z "$ELF" ]; then
    echo "building ($PROFILE)..."
    if [ "$PROFILE" = release ]; then
        cargo build --release
    else
        cargo build
    fi
    ELF="target/$TARGET/$PROFILE/vectrex-programmer"
fi

[ -f "$ELF" ] || { echo "ERROR: $ELF not found" >&2; exit 1; }
command -v JLinkExe >/dev/null || { echo "ERROR: JLinkExe not on PATH" >&2; exit 1; }

echo "flashing $ELF"
echo "  device $DEVICE, $IFACE at ${SPEED} kHz"

CMD="$(mktemp --suffix=.jlink)"
# J-Link picks the file format from the extension, and cargo's ELFs have none.
ELF_COPY="$(mktemp --suffix=.elf)"
trap 'rm -f "$CMD" "$ELF_COPY"' EXIT
cp "$ELF" "$ELF_COPY"
cat > "$CMD" <<EOF
device $DEVICE
si $IFACE
speed $SPEED
connect
halt
loadfile $ELF_COPY
r
g
exit
EOF

# -exitonerror makes a failed connect or load a non-zero exit instead of
# dropping into the interactive prompt.
if ! JLinkExe -nogui 1 -exitonerror 1 -CommandFile "$CMD"; then
    cat >&2 <<'HINT'

J-Link failed. Things worth checking, in order of likelihood:

  * Device name. This script defaults to RP2350_M33_0, verified against J-Link
    V9.78. J-Link V7.98f and earlier do NOT know the RP2350 at all - their
    device database stops at RP2040 - so if the name is rejected, update the
    J-Link package rather than editing this script. Override if you must:
    DEVICE=<name> ./flash.sh
  * Target power. The board is USB powered; the J-Trace does not supply it.
    Check VTref in the JLinkExe banner: 0.000 V means the target is dead or
    not connected, and no amount of retrying will help.
  * The Tag-Connect needs to be held in place - it has no latch unless you
    have the retaining clip version.
  * A previously flashed firmware that reconfigures SWD pins can lock out the
    debugger; hold the BOOTSEL button while connecting to keep it in the
    bootrom, or erase and retry.
HINT
    exit 1
fi

echo "done"
