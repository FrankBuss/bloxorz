#!/bin/bash
# Writes a ROM image to the flash cartridge in the programmer: checks the
# cartridge PIC and its EEPROM, clears the high scores, erases the flash,
# programs all banks and verifies them.
#
# usage: ./flashrom.sh [image]   default: bloxorz.bin from buildrom.sh
P="$(cd "$(dirname "$0")" && pwd)"
if "$P/../programmer/firmware/upload.py" cart write "${1:-$P/bloxorz.bin}"; then
    echo "SUCCESS: cartridge programmed and verified"
else
    echo "FAILED: cartridge not programmed"
    exit 1
fi
