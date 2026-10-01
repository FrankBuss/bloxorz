#!/bin/bash
# Programs the cartridge PIC16F18323 with build/cartridge.hex over a PICkit 4,
# building it first when it is missing.
#
# The cartridge must be on its own, not in the programmer or the Vectrex: PGD
# is the Vectrex CE line and PGC is flash A18. Plug the PICkit onto J1 with its
# pin 1 on the square pad; J1 pins 1-5 are VPP, VDD, GND, PGD, PGC in the
# PICkit's order, J1 pin 6 and PICkit pins 6-8 stay unconnected. The PICkit
# powers the cartridge at 5 V. Do not press the cartridge button, it shorts
# VPP to ground. The PIC's EEPROM with the high scores is erased.
#
# usage: ./flash.sh [hexfile]
set -o pipefail
cd "$(dirname "$0")"
IPE="${IPE:-/opt/microchip/mplabx/v6.20/mplab_platform/mplab_ipe}"
if [ -n "$1" ]; then
    HEX="$(realpath "$1")"
else
    [ -f build/cartridge.hex ] || ./build.sh
    HEX="$PWD/build/cartridge.hex"
fi
cd "$IPE"
if ./ipecmd.sh -TPPK4 -P16F18323 -W5 -M -OL -F"$HEX" | grep -i "found\|device id\|programming\|succeeded\|failed\|error\|supplying"; then
    echo "SUCCESS: cartridge PIC programmed and verified"
else
    echo "FAILED: cartridge PIC not programmed"
    exit 1
fi
