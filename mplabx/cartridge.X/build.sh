#!/bin/bash
# Builds the cartridge PIC16F18323 firmware into build/cartridge.hex with XC8.
# mcc_generated_files/ comes from MCC (MyConfig.mc3) and is not in git; its
# interrupt_manager.c is left out, main.c has the interrupt routine.
# RC1 is flash A17: the EUSART TX routing to it that MCC generates while the
# TX pin is assigned in MyConfig.mc3 is removed before compiling.
#
# flash: cd /opt/microchip/mplabx/v6.20/mplab_platform/mplab_ipe &&
#        ./ipecmd.sh -TPPK4 -P16F18323 -W5 -M -OL -F<path>/build/cartridge.hex
set -e
cd "$(dirname "$0")"
XC8="${XC8:-/opt/microchip/xc8/v2.50/bin/xc8-cc}"
sed -i '/RC1PPS.*EUSART:TX/d' mcc_generated_files/pin_manager.c
mkdir -p build
"$XC8" -mcpu=16F18323 -std=c90 -O2 -mwarn=-3 -Imcc_generated_files -o build/cartridge.hex main.c $(ls mcc_generated_files/*.c | grep -v interrupt_manager)
