#!/usr/bin/env python3
"""Host tool for the Vectrex cartridge programmer (RP2354B).

Everything goes over the board's USB CDC serial port:

    ./upload.py cart write bloxorz.bin      # erase, program and verify a ROM
    ./upload.py cart read dump.bin 32768    # read the cartridge back
    ./upload.py flash write song.wav        # fill the 128 MB array
    ./upload.py flash read dump.bin 4096    # read it back
    ./upload.py flash banktest              # check the '138 bank decode
    ./upload.py audio sram song.wav         # 256 KiB SRAM playback test
    ./upload.py audio flash 0 8000000       # stream from flash
    ./upload.py audio volume -40            # DAC volume in dB, 0 to -63.5
    ./upload.py info

The old PIC-based tool sent ASCII hex with one serial round trip per byte on the
slow path; this one sends binary blocks of up to 128 KiB with a CRC32 per frame,
so the flash itself is the only thing left to wait for.
"""

import argparse
import glob
import struct
import sys
import time
import wave
import zlib

try:
    import serial  # pyserial
except ImportError:
    sys.exit("pyserial missing:  pip install pyserial")

SYNC_REQ = b"\xA5\x5A"
SYNC_RSP = b"\x5A\xA5"

CMD = {
    "ping": 0x01, "info": 0x02,
    "cart_id": 0x10, "cart_enable": 0x11, "cart_bank": 0x12,
    "cart_erase_chip": 0x13, "cart_erase_sector": 0x14,
    "cart_write": 0x15, "cart_read": 0x16, "cart_pic": 0x17,
    "flash_id": 0x20, "flash_erase": 0x21, "flash_write": 0x22, "flash_read": 0x23,
    "audio_load_sram": 0x30, "audio_play_sram": 0x31, "audio_play_flash": 0x32,
    "audio_stop": 0x33, "audio_codec_init": 0x34, "audio_volume": 0x35, "audio_codec_read": 0x36, "audio_codec_write": 0x37,
    "midi_send": 0x50,
    "bootsel": 0x40,
}

STATUS = {
    0: "ok", 1: "bad CRC", 2: "unknown command", 3: "bad length",
    4: "cartridge timeout", 5: "verify failed", 6: "wrong cartridge flash ID",
    7: "busy", 8: "address out of range", 9: "flash error", 10: "hardware init failed",
}

MAX_PAYLOAD = 128 * 1024
CART_SIZE = 512 * 1024
BANK_SIZE = 32 * 1024            # cartridge bank, selected via the on-cart PIC
SECTOR = 4096
FLASH_CHIP_SIZE = 32 * 1024 * 1024   # one W25Q256; the '138 picks between four
FLASH_CHIPS = 4
SAMPLE_RATE = 48000


class ProtocolError(Exception):
    pass


class Programmer:
    def __init__(self, port=None, timeout=10.0):
        if port is None:
            port = self._find_port()
        self.ser = serial.Serial(port, baudrate=115200, timeout=timeout)
        self.port = port

    @staticmethod
    def _find_port():
        for pattern in ("/dev/serial/by-id/*Vectrex*", "/dev/ttyACM*"):
            hits = sorted(glob.glob(pattern))
            if hits:
                return hits[0]
        sys.exit("no serial port found - pass --port")

    # -- framing -----------------------------------------------------------
    def _send(self, cmd, payload=b""):
        head = struct.pack("<BI", cmd, len(payload))
        crc = zlib.crc32(head + payload) & 0xFFFFFFFF
        self.ser.write(SYNC_REQ + head + payload + struct.pack("<I", crc))
        self.ser.flush()

    def _read(self, n):
        out = b""
        while len(out) < n:
            chunk = self.ser.read(n - len(out))
            if not chunk:
                raise ProtocolError(f"timeout after {len(out)} of {n} bytes")
            out += chunk
        return out

    def _recv(self):
        # resynchronise on the response sync bytes
        window = b""
        while True:
            window = (window + self._read(1))[-2:]
            if window == SYNC_RSP:
                break
        head = self._read(5)
        status, length = struct.unpack("<BI", head)
        payload = self._read(length) if length else b""
        crc = struct.unpack("<I", self._read(4))[0]
        if zlib.crc32(head + payload) & 0xFFFFFFFF != crc:
            raise ProtocolError("response CRC mismatch")
        return status, payload

    def cmd(self, name, payload=b"", expect_ok=True, timeout=None):
        """`timeout` overrides the serial timeout for commands that only
        answer when done, like a long erase or a playback."""
        self._send(CMD[name], payload)
        saved = self.ser.timeout
        if timeout is not None:
            self.ser.timeout = timeout
        try:
            status, data = self._recv()
        finally:
            self.ser.timeout = saved
        if expect_ok and status != 0:
            raise ProtocolError(f"{name}: {STATUS.get(status, status)} {data.hex()}")
        return status, data

    # -- convenience -------------------------------------------------------
    def info(self):
        _, d = self.cmd("info")
        ver, minor, buf, cart, flash_kib = struct.unpack("<BBIII", d[:14])
        error = d[16:].decode(errors="replace")
        return dict(error=error, protocol=ver, firmware=minor, buffer=buf,
                    cart_size=cart, flash_size=flash_kib * 1024)


def progress(done, total, started, what):
    frac = done / total if total else 1.0
    elapsed = time.time() - started
    rate = done / elapsed / 1024 if elapsed > 0 else 0
    bar = "#" * int(frac * 30)
    sys.stdout.write(f"\r{what}: [{bar:<30}] {frac*100:5.1f}%  {rate:6.1f} KiB/s")
    sys.stdout.flush()
    if done >= total:
        print()


# ---------------------------------------------------------------------------
# cartridge
# ---------------------------------------------------------------------------

# cartridge PIC commands over PB6
PIC_VERSION, PIC_SET_EEPROM_ADR, PIC_EEPROM_WRITE, PIC_EEPROM_READ, PIC_SET_BANK, PIC_ENABLE_PROGRAMMER = 1, 2, 3, 4, 5, 6
PIC_UART_COUNT, PIC_UART_READ = 7, 8
EEPROM_SIZE = 256


def pic_decode(data):
    """The cartridge PIC's answer: 8 high-pulse widths in us, 160 = 1, 80 = 0. None if it did not answer."""
    w = struct.unpack("<8H", data[:16]) if len(data) >= 16 else ()
    if not w or not all(w):
        return None
    v = 0
    for x in w:
        v = v << 1 | (x > 120)
    return v


def pic_reply(data):
    v = pic_decode(data)
    if v is None:
        return "PIC reply: none"
    return f"PIC reply: 0x{v:02X}  (pulses {list(struct.unpack('<8H', data[:16]))} us)"


def pic(pr, cmd, arg):
    """Send one command to the cartridge PIC and return its reply byte."""
    _, r = pr.cmd("cart_pic", bytes([cmd, arg]))
    v = pic_decode(r)
    if v is None:
        sys.exit(f"no reply from the cartridge PIC to command {cmd}")
    return v


def eeprom_read(pr, addr):
    return pic(pr, PIC_EEPROM_READ, addr)


def eeprom_write(pr, addr, value):
    """Write one EEPROM byte; the PIC answers with the byte read back."""
    pic(pr, PIC_SET_EEPROM_ADR, addr)
    got = pic(pr, PIC_EEPROM_WRITE, value)
    if got != value:
        sys.exit(f"EEPROM write failed at {addr}: wrote {value:02X}, read back {got:02X}")


def eeprom_clear(pr):
    """Erase the whole EEPROM to 0xFF, which the game shows as no high score."""
    started = time.time()
    for addr in range(EEPROM_SIZE):
        eeprom_write(pr, addr, 0xFF)
        progress(addr + 1, EEPROM_SIZE, started, "clearing EEPROM")


def pic_check(pr):
    """EEPROM write/read test on the last byte."""
    for value in (0xA5, 0x5A):
        eeprom_write(pr, EEPROM_SIZE - 1, value)
        got = eeprom_read(pr, EEPROM_SIZE - 1)
        if got != value:
            sys.exit(f"EEPROM read failed: wrote {value:02X}, read {got:02X}")
    print("EEPROM write/read ok")


def midi_test(pr):
    """Send bytes on the MIDI output and read them back from the PIC's receive buffer."""
    pattern = bytes([0x90, 0x3C, 0x7F, 0x80, 0x3C, 0x00, 0xF8, 0x55, 0xAA, 0x00, 0xFF])
    while pic(pr, PIC_UART_COUNT, 0):
        pic(pr, PIC_UART_READ, 0)
    pr.cmd("midi_send", pattern)
    time.sleep(0.05)
    n = pic(pr, PIC_UART_COUNT, 0)
    got = bytes(pic(pr, PIC_UART_READ, 0) for _ in range(n))
    print(f"MIDI sent     {pattern.hex(' ')}")
    print(f"PIC received  {got.hex(' ') if got else 'nothing'}")
    if got != pattern:
        sys.exit("MIDI receive test failed")
    print("MIDI receive ok")


def cart_write(pr, path, block=MAX_PAYLOAD, verify_pass=True):
    data = open(path, "rb").read()
    if len(data) > CART_SIZE:
        sys.exit(f"{path} is {len(data)} bytes, cartridge holds {CART_SIZE}")

    print(f"{path}: {len(data)} bytes")
    _, r = pr.cmd("cart_enable", b"\x01")   # let HALT gate flash /CE
    print(pic_reply(r))
    status, ident = pr.cmd("cart_id")
    print(f"cartridge flash ID: {ident[0]:02X} {ident[1]:02X}", end="")
    if tuple(ident[:2]) != (0xBF, 0xB7):
        print("  (expected BF B7 = SST39SF040)")
        sys.exit("unexpected flash, aborting")
    print("  (SST39SF040)")
    pic_check(pr)
    eeprom_clear(pr)

    print("chip erase...", end="", flush=True)
    t0 = time.time()
    pr.cmd("cart_erase_chip")
    print(f" {time.time()-t0:.1f} s")

    started = time.time()
    written = 0
    for bank in range((len(data) + BANK_SIZE - 1) // BANK_SIZE):
        pr.cmd("cart_bank", bytes([bank]))
        chunk = data[bank * BANK_SIZE:(bank + 1) * BANK_SIZE]
        # The cartridge only sees A0..A14, so every bank restarts at 0x0000.
        for off in range(0, len(chunk), block):
            piece = chunk[off:off + block]
            _, resp = pr.cmd("cart_write", struct.pack("<I", off) + piece)
            crc = struct.unpack("<I", resp[:4])[0]
            if crc != zlib.crc32(piece) & 0xFFFFFFFF:
                sys.exit(f"\nCRC mismatch in bank {bank} at 0x{off:04X}")
            written += len(piece)
            progress(written, len(data), started, "programming")

    if verify_pass:
        started = time.time()
        done = 0
        for bank in range((len(data) + BANK_SIZE - 1) // BANK_SIZE):
            pr.cmd("cart_bank", bytes([bank]))
            chunk = data[bank * BANK_SIZE:(bank + 1) * BANK_SIZE]
            for off in range(0, len(chunk), 32768):
                want = chunk[off:off + 32768]
                _, got = pr.cmd("cart_read", struct.pack("<II", off, len(want)))
                if got != want:
                    bad = next(i for i in range(len(want)) if got[i] != want[i])
                    sys.exit(f"\nverify failed, bank {bank} offset 0x{off+bad:04X}: "
                             f"wrote {want[bad]:02X}, read {got[bad]:02X}")
                done += len(want)
                progress(done, len(data), started, "verifying  ")

    pr.cmd("cart_enable", b"\x00")
    print(f"done in {time.time()-started:.1f} s")


def cart_read(pr, path, length):
    out = bytearray()
    started = time.time()
    for bank in range((length + BANK_SIZE - 1) // BANK_SIZE):
        pr.cmd("cart_bank", bytes([bank]))
        remaining = min(BANK_SIZE, length - len(out))
        for off in range(0, remaining, 32768):
            n = min(32768, remaining - off)
            _, data = pr.cmd("cart_read", struct.pack("<II", off, n))
            out += data
            progress(len(out), length, started, "reading")
    open(path, "wb").write(out)
    print(f"wrote {len(out)} bytes to {path}")


# ---------------------------------------------------------------------------
# audio
# ---------------------------------------------------------------------------

def load_pcm(path):
    """Return interleaved stereo 16-bit LE PCM at 48 kHz."""
    if path.lower().endswith(".wav"):
        with wave.open(path, "rb") as w:
            if w.getsampwidth() != 2:
                sys.exit("need 16-bit WAV")
            if w.getnchannels() != 2:
                sys.exit("need stereo WAV")
            if w.getframerate() != SAMPLE_RATE:
                sys.exit(f"need {SAMPLE_RATE} Hz WAV, got {w.getframerate()}")
            return w.readframes(w.getnframes())
    return open(path, "rb").read()


def audio_sram(pr, path):
    pcm = load_pcm(path)
    limit = 256 * 1024
    if len(pcm) > limit:
        print(f"clipping {len(pcm)} bytes to the {limit} byte SRAM buffer "
              f"({limit/4/SAMPLE_RATE:.2f} s)")
        pcm = pcm[:limit]
    pr.cmd("audio_codec_init")
    started = time.time()
    for off in range(0, len(pcm), MAX_PAYLOAD):
        piece = pcm[off:off + MAX_PAYLOAD]
        pr.cmd("audio_load_sram", struct.pack("<I", off) + piece)
        progress(off + len(piece), len(pcm), started, "loading")
    print(f"playing {len(pcm)//4} frames ({len(pcm)/4/SAMPLE_RATE:.2f} s)")
    pr.cmd("audio_play_sram", struct.pack("<I", len(pcm)))


def flash_write(pr, path, addr=0):
    data = load_pcm(path) if path.lower().endswith(".wav") else open(path, "rb").read()
    print(f"{path}: {len(data)} bytes -> flash 0x{addr:X}")
    print("erasing...", end="", flush=True)
    t0 = time.time()
    blocks = (addr + len(data) + 0xFFFF) // 0x10000 - addr // 0x10000
    # W25Q256JV 64 KiB block erase: 2 s worst case each
    pr.cmd("flash_erase", struct.pack("<II", addr, len(data)), timeout=10 + 2.5 * blocks)
    print(f" {time.time()-t0:.1f} s")
    started = time.time()
    for off in range(0, len(data), MAX_PAYLOAD):
        piece = data[off:off + MAX_PAYLOAD]
        _, resp = pr.cmd("flash_write", struct.pack("<I", addr + off) + piece)
        if struct.unpack("<I", resp[:4])[0] != zlib.crc32(piece) & 0xFFFFFFFF:
            sys.exit(f"\nCRC mismatch at 0x{addr+off:X}")
        progress(off + len(piece), len(data), started, "writing")
    return len(data)


def flash_read(pr, path, length, addr=0):
    out = bytearray()
    started = time.time()
    while len(out) < length:
        n = min(32768, length - len(out))
        _, data = pr.cmd("flash_read", struct.pack("<II", addr + len(out), n))
        out += data
        progress(len(out), length, started, "reading")
    open(path, "wb").write(out)
    print(f"wrote {len(out)} bytes from flash 0x{addr:X} to {path}")


def flash_banktest(pr):
    """Prove the '138 bank decode: write a distinct pattern to each 32 MB bank
    and read it all back. Destroys the first sector of every bank."""
    ok = True
    for bank in range(FLASH_CHIPS):
        addr = bank * FLASH_CHIP_SIZE
        want = bytes([0xA0 | bank, bank, ~bank & 0xFF, 0x5A]) * 64  # 256 bytes
        pr.cmd("flash_erase", struct.pack("<II", addr, len(want)))
        pr.cmd("flash_write", struct.pack("<I", addr) + want)
    for bank in range(FLASH_CHIPS):
        addr = bank * FLASH_CHIP_SIZE
        want = bytes([0xA0 | bank, bank, ~bank & 0xFF, 0x5A]) * 64
        _, got = pr.cmd("flash_read", struct.pack("<II", addr, len(want)))
        if got == want:
            print(f"  bank {bank} @ 0x{addr:08X}: ok")
        else:
            ok = False
            bad = next((i for i in range(len(want)) if got[i] != want[i]), 0)
            print(f"  bank {bank} @ 0x{addr:08X}: MISMATCH at +{bad}, "
                  f"wrote {want[bad]:02X}, read {got[bad]:02X}")
    print("bank decode ok" if ok else
          "bank decode FAILED - check FLASH_SEL0 (GPIO37) / FLASH_SEL1 (GPIO36)")
    return ok


def audio_flash(pr, addr, length):
    pr.cmd("audio_codec_init")
    print(f"streaming {length} bytes from flash 0x{addr:X} "
          f"({length/4/SAMPLE_RATE:.1f} s)")
    pr.cmd("audio_play_flash", struct.pack("<II", addr, length),
           timeout=10 + length / 4 / SAMPLE_RATE)


# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--port", help="serial device (default: autodetect)")
    sub = ap.add_subparsers(dest="group", required=True)

    sub.add_parser("info")
    sub.add_parser("bootsel", help="reboot into USB BOOTSEL for reflashing")

    c = sub.add_parser("cart").add_subparsers(dest="action", required=True)
    cw = c.add_parser("write"); cw.add_argument("file")
    cw.add_argument("--no-verify", action="store_true")
    cw.add_argument("--block", type=int, default=MAX_PAYLOAD)
    cr = c.add_parser("read"); cr.add_argument("file"); cr.add_argument("length", type=lambda x: int(x, 0))
    c.add_parser("id")
    cp = c.add_parser("pic", help="send a command to the cartridge PIC: cmd arg")
    cp.add_argument("cmd", type=lambda x: int(x, 0)); cp.add_argument("arg", type=lambda x: int(x, 0))
    cee = c.add_parser("eeprom").add_subparsers(dest="eeprom", required=True)
    cee.add_parser("dump", help="print the PIC's 256 EEPROM bytes")
    cee.add_parser("clear", help="erase the high scores")
    c.add_parser("miditest", help="send MIDI bytes on J3 and read them back from the PIC")

    m = sub.add_parser("midi").add_subparsers(dest="action", required=True)
    ms = m.add_parser("send", help="send bytes on the MIDI output, hex"); ms.add_argument("bytes", nargs="+")
    ce = c.add_parser("erase", help="erase one 4 KiB sector, or the whole chip")
    ce.add_argument("addr", type=lambda x: int(x, 0), nargs="?",
                    help="sector address; omit to erase the whole chip")

    f = sub.add_parser("flash").add_subparsers(dest="action", required=True)
    fw = f.add_parser("write"); fw.add_argument("file")
    fw.add_argument("--addr", type=lambda x: int(x, 0), default=0)
    fr = f.add_parser("read"); fr.add_argument("file")
    fr.add_argument("length", type=lambda x: int(x, 0))
    fr.add_argument("--addr", type=lambda x: int(x, 0), default=0)
    f.add_parser("id")
    f.add_parser("banktest", help="verify the '138 bank decode (destructive)")

    a = sub.add_parser("audio").add_subparsers(dest="action", required=True)
    asr = a.add_parser("sram"); asr.add_argument("file")
    af = a.add_parser("flash")
    af.add_argument("addr", type=lambda x: int(x, 0), nargs="?", default=0)
    af.add_argument("length", type=lambda x: int(x, 0), nargs="?")
    af.add_argument("--file", help="upload this file first, then play it")
    a.add_parser("stop")
    ar = a.add_parser("regs", help="dump codec registers (page 0)")
    ar.add_argument("first", type=lambda x: int(x, 0), nargs="?", default=0)
    ar.add_argument("count", type=lambda x: int(x, 0), nargs="?", default=110)
    aw = a.add_parser("regw", help="write codec registers: reg val [reg val ...]")
    aw.add_argument("pairs", type=lambda x: int(x, 0), nargs="+")
    av = a.add_parser("volume", help="DAC volume, kept until reset (power-on -30 dB)")
    av.add_argument("db", type=float, help="0 (loudest) to -63.5, in 0.5 dB steps")

    args = ap.parse_args()
    pr = Programmer(args.port)

    if args.group == "info":
        pr.cmd("ping")
        i = pr.info()
        print(f"port          {pr.port}")
        print(f"protocol      v{i['protocol']}")
        print(f"host buffer   {i['buffer']//1024} KiB")
        print(f"cartridge     {i['cart_size']//1024} KiB")
        print(f"data flash    {i['flash_size']//1024//1024} MiB")
        if i["error"]:
            print(f"ERROR         {i['error']}")
        _, ids = pr.cmd("flash_id")
        for b in range(4):
            print(f"  bank {b}: {ids[b*3]:02X} {ids[b*3+1]:02X} {ids[b*3+2]:02X}")
    elif args.group == "bootsel":
        pr.cmd("bootsel")
        print("rebooting into BOOTSEL")
    elif args.group == "cart":
        if args.action == "write":
            cart_write(pr, args.file, args.block, not args.no_verify)
        elif args.action == "read":
            cart_read(pr, args.file, args.length)
        elif args.action == "erase":
            pr.cmd("cart_enable", b"\x01")
            if args.addr is None:
                print("chip erase...", end="", flush=True)
                t0 = time.time()
                pr.cmd("cart_erase_chip")
                print(f" {time.time()-t0:.1f} s")
            else:
                pr.cmd("cart_erase_sector", struct.pack("<I", args.addr))
                print(f"erased sector at 0x{args.addr:X}")
            pr.cmd("cart_enable", b"\x00")
        elif args.action == "pic":
            _, r = pr.cmd("cart_pic", bytes([args.cmd & 0xFF, args.arg & 0xFF]))
            print(pic_reply(r))
        elif args.action == "miditest":
            midi_test(pr)
        elif args.action == "eeprom":
            if args.eeprom == "dump":
                data = bytes(eeprom_read(pr, a) for a in range(EEPROM_SIZE))
                for off in range(0, EEPROM_SIZE, 16):
                    print(f"{off:02X}: {data[off:off+16].hex(' ')}")
            else:
                eeprom_clear(pr)
                print()
        else:
            _, r = pr.cmd("cart_enable", b"\x01")
            print(pic_reply(r))
            print(f"PIC firmware version {pic(pr, PIC_VERSION, 0)}")
            _, d = pr.cmd("cart_id")
            print(f"{d[0]:02X} {d[1]:02X}")
            pr.cmd("cart_enable", b"\x00")
    elif args.group == "midi":
        data = bytes(int(b, 16) for b in args.bytes)
        pr.cmd("midi_send", data)
        print(f"sent {data.hex(' ')}")
    elif args.group == "flash":
        if args.action == "write":
            flash_write(pr, args.file, args.addr)
        elif args.action == "read":
            flash_read(pr, args.file, args.length, args.addr)
        elif args.action == "banktest":
            sys.exit(0 if flash_banktest(pr) else 1)
        else:
            _, ids = pr.cmd("flash_id")
            for b in range(4):
                print(f"bank {b}: {ids[b*3]:02X} {ids[b*3+1]:02X} {ids[b*3+2]:02X}")
    elif args.group == "audio":
        if args.action == "sram":
            audio_sram(pr, args.file)
        elif args.action == "flash":
            length = args.length
            if args.file:
                length = flash_write(pr, args.file, args.addr)
            if not length:
                sys.exit("give a length, or --file to upload one")
            audio_flash(pr, args.addr, length)
        elif args.action == "regs":
            _, d = pr.cmd("audio_codec_read", bytes([args.first, args.count]))
            for i in range(0, len(d), 16):
                row = " ".join(f"{b:02X}" for b in d[i:i + 16])
                print(f"{args.first + i:3d}: {row}")
        elif args.action == "regw":
            if len(args.pairs) % 2:
                sys.exit("give reg/value pairs")
            pr.cmd("audio_codec_write", bytes(args.pairs))
        elif args.action == "volume":
            atten = max(0, min(127, round(-args.db * 2)))
            pr.cmd("audio_volume", bytes([atten]))
            print(f"volume {-atten / 2:.1f} dB")
        else:
            pr.cmd("audio_stop")


if __name__ == "__main__":
    main()
