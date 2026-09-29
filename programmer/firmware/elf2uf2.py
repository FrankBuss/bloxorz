#!/usr/bin/env python3
"""Convert the firmware ELF to a UF2 file for the RP2350 USB bootloader.

    ./elf2uf2.py target/thumbv8m.main-none-eabihf/release/vectrex-programmer out.uf2

Takes every PT_LOAD segment by its load address (so `.data` initial values,
which live in flash, are included), keeps what falls in the flash window, and
emits 256-byte UF2 blocks tagged with the RP2350 ARM-secure family ID.
"""

import struct
import sys

UF2_MAGIC0 = 0x0A324655
UF2_MAGIC1 = 0x9E5D5157
UF2_MAGIC_END = 0x0AB16F30
UF2_FLAG_FAMILY = 0x00002000
FAMILY_RP2350_ARM_S = 0xE48BFF59

FLASH_START = 0x10000000
FLASH_END = 0x10000000 + 2 * 1024 * 1024  # RP2354B: 2 MB stacked flash
PAGE = 256
PT_LOAD = 1


def load_segments(path):
    elf = open(path, "rb").read()
    if elf[:4] != b"\x7fELF" or elf[4] != 1 or elf[5] != 1:
        sys.exit(f"{path}: not a 32-bit little-endian ELF")
    phoff, = struct.unpack_from("<I", elf, 0x1C)
    phentsize, phnum = struct.unpack_from("<HH", elf, 0x2A)
    segs = []
    for i in range(phnum):
        p_type, p_offset, _vaddr, p_paddr, p_filesz = struct.unpack_from(
            "<IIIII", elf, phoff + i * phentsize)
        if p_type != PT_LOAD or p_filesz == 0:
            continue
        if not (FLASH_START <= p_paddr and p_paddr + p_filesz <= FLASH_END):
            sys.exit(f"segment at 0x{p_paddr:08X} (+{p_filesz}) is outside flash")
        segs.append((p_paddr, elf[p_offset:p_offset + p_filesz]))
    if not segs:
        sys.exit(f"{path}: no loadable segments")
    return segs


def to_pages(segs):
    """Merge segments into 256-byte pages, gaps inside a page padded with 0xFF."""
    pages = {}
    for addr, data in segs:
        for i, b in enumerate(data):
            a = addr + i
            page = pages.setdefault(a & ~(PAGE - 1), bytearray(b"\xff" * PAGE))
            page[a % PAGE] = b
    return sorted(pages.items())


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    pages = to_pages(load_segments(sys.argv[1]))
    out = bytearray()
    for n, (addr, data) in enumerate(pages):
        block = struct.pack("<8I", UF2_MAGIC0, UF2_MAGIC1, UF2_FLAG_FAMILY, addr,
                            PAGE, n, len(pages), FAMILY_RP2350_ARM_S)
        block += bytes(data) + b"\x00" * (476 - PAGE)
        block += struct.pack("<I", UF2_MAGIC_END)
        out += block
    open(sys.argv[2], "wb").write(out)
    span = pages[-1][0] + PAGE - pages[0][0]
    print(f"{sys.argv[2]}: {len(pages)} blocks, 0x{pages[0][0]:08X}..0x{pages[0][0] + span:08X}")


if __name__ == "__main__":
    main()
