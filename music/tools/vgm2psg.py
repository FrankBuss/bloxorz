#!/usr/bin/env python3
"""Converts the AY-3-8910 writes of a VGM file into a PSG register dump.

    ./vgm2psg.py song.vgm song.psg

A VGM that only waits in 1/60 s steps keeps that rate, anything else becomes 50 frames per
second; the rate is stored in byte 5 of the PSG header, where `upload.py midi play` reads it.
Prints the chip clock of the VGM; pass it to `upload.py midi play --clock`.
"""
import gzip
import struct
import sys


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    d = open(sys.argv[1], "rb").read()
    if d[:2] == b"\x1f\x8b":
        d = gzip.decompress(d)
    if d[:4] != b"Vgm ":
        sys.exit("not a VGM file")
    version = struct.unpack_from("<I", d, 8)[0]
    data = struct.unpack_from("<I", d, 0x34)[0] + 0x34 if version >= 0x150 else 0x40
    clock = struct.unpack_from("<I", d, 0x74)[0] if version >= 0x151 and len(d) > 0x78 else 0
    print(f"VGM version {version:x}, AY clock {clock & 0x3fffffff} Hz")
    # frame length in samples at 44100 Hz: 735 when every wait is 1/60 s, else 882
    waits = set()
    i = data
    while i < len(d) and d[i] != 0x66:
        c = d[i]
        if c == 0xA0:
            i += 3
        elif c == 0x61:
            waits.add(struct.unpack_from("<H", d, i + 1)[0]); i += 3
        elif c == 0x62:
            waits.add(735); i += 1
        elif c == 0x63:
            waits.add(882); i += 1
        elif 0x70 <= c <= 0x7F:
            waits.add((c & 15) + 1); i += 1
        else:
            break
    step = 735 if waits and all(w % 735 == 0 for w in waits) else 882
    rate = 44100 // step
    out = bytearray(b"PSG\x1a" + bytes([0, rate]) + bytes(10))
    frame = {}
    samples = 0
    i = data
    while i < len(d):
        c = d[i]
        if c == 0x66:
            break
        if c == 0xA0:
            reg, val = d[i + 1] & 15, d[i + 2]
            if reg == 13 or frame.get(reg) != val:
                frame[reg] = val
                out += bytes((reg, val))
            i += 3
            continue
        if c == 0x61:
            samples += struct.unpack_from("<H", d, i + 1)[0]; i += 3
        elif c == 0x62:
            samples += 735; i += 1
        elif c == 0x63:
            samples += 882; i += 1
        elif 0x70 <= c <= 0x7F:
            samples += (c & 15) + 1; i += 1
        elif c == 0x67:
            i += 7 + struct.unpack_from("<I", d, i + 3)[0]
        elif c in (0x4F, 0x50):
            i += 2
        elif 0x51 <= c <= 0x5F or c in (0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xBB):
            i += 3
        elif 0xC0 <= c <= 0xDF:
            i += 4
        elif 0xE0 <= c <= 0xFF:
            i += 5
        elif 0x30 <= c <= 0x3F:
            i += 2
        elif 0x40 <= c <= 0x4E:
            i += 3
        else:
            sys.exit(f"unknown VGM command {c:02x} at {i}")
        while samples >= step:
            samples -= step
            out.append(0xFF)
            frame = {}
    out.append(0xFD)
    open(sys.argv[2], "wb").write(out)
    print(f"wrote {sys.argv[2]}: {rate} frames per second")


if __name__ == "__main__":
    main()
