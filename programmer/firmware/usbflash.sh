#!/usr/bin/env bash
# Flash the programmer firmware over USB, without the debug probe.
#
#   ./usbflash.sh              build in release mode and flash
#   ./usbflash.sh path/to.elf  flash an existing ELF
#
# Asks the running firmware to reboot into the RP2350 bootrom (BOOTSEL), then
# copies a UF2 onto the RP2350 drive; the bootrom writes it and reboots into
# it. Needs a firmware that still answers on USB - if it does not, hold
# BOOTSEL while plugging in, or use ./flash.sh over SWD.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

TARGET=thumbv8m.main-none-eabihf
ELF="${1:-}"

if [ -z "$ELF" ]; then
    echo "building (release)..."
    cargo build --release
    ELF="target/$TARGET/release/vectrex-programmer"
fi
[ -f "$ELF" ] || { echo "ERROR: $ELF not found" >&2; exit 1; }

UF2="$(mktemp --suffix=.uf2)"
trap 'rm -f "$UF2"' EXIT
./elf2uf2.py "$ELF" "$UF2"

# Wait up to $2 tenths of a second for command $1 to succeed.
wait_for() {
    for _ in $(seq "$2"); do
        if eval "$1"; then return 0; fi
        sleep 0.1
    done
    return 1
}

DEV=/dev/disk/by-label/RP2350
if [ ! -e "$DEV" ]; then
    ./upload.py bootsel
    wait_for '[ -e "$DEV" ]' 100 || { echo "ERROR: no RP2350 drive appeared" >&2; exit 1; }
fi

MNT="$(findmnt -rn -S "$DEV" -o TARGET || true)"
if [ -z "$MNT" ]; then
    udisksctl mount -b "$DEV" >/dev/null
    MNT="$(findmnt -rn -S "$DEV" -o TARGET)"
fi
echo "copying to $MNT"
cp "$UF2" "$MNT/firmware.uf2"
sync

# The bootrom reboots into the new image once the last block is written.
wait_for '! [ -e "$DEV" ]' 100 || echo "WARNING: RP2350 drive still present" >&2
wait_for 'compgen -G "/dev/serial/by-id/*Vectrex*" >/dev/null' 100 \
    || { echo "ERROR: firmware did not come back on USB" >&2; exit 1; }
echo "done"
