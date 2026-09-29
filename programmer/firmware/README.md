# Vectrex cartridge programmer — RP2354B firmware

Firmware for the programmer board in `..` (KiCad project `programmer.kicad_pro`),
plus `upload.py`, the host tool that drives it.

Status: **code written, not yet run on hardware.** The cartridge bus sequences,
the flash algorithms and the codec register sequence are all derived from working
references (see §9) rather than guessed, but nothing here has been executed yet.
§11 is the bring-up plan.

---

## 1. What it does

| Feature | Detail |
|---|---|
| USB serial | CDC-ACM, the only host interface |
| Cartridge programming | SST39SF040, 128 KiB blocks, DQ7-polled, read-back verified |
| Cartridge reading | dump a cartridge back to a file |
| Data flash | 128 MB array (4 × W25Q256JV), erase / program / read |
| Audio, SRAM | 256 KiB PCM buffer played at 48 kHz stereo 16-bit |
| Audio, flash | streamed from the flash array at 48 kHz stereo 16-bit |
| Codec | TLV320AIC3104 brought up over I²C, documented register by register |

All audio is **48 kHz, stereo, 16-bit signed little-endian**.

## 2. Hardware

| Block | Part | Notes |
|---|---|---|
| MCU | RP2354B, QFN-80 | 2 MB stacked flash, 520 KB SRAM, 12 MHz oscillator |
| Cartridge bus | 2 × 74ALVC164245 + SN74LVC1T45 | 3.3 V ↔ 5 V, direction switchable |
| Connector | ED36BGFBK, 36-pin edge | Vectrex cartridge port |
| Data flash | 4 × W25Q256JV = 128 MB | shared QSPI, CS decoded by SN74LVC138A |
| Codec | TLV320AIC3104 | I²S + I²C, line outputs |
| Amplifiers | 2 × TPA2005D1 | one per channel, filterless class-D |

Complete pin table: **`../pins.xlsx`** — every RP2354B pin with its net,
direction, Vectrex connector pin, level-shifter channel, codec function and
flash function.

### 2.1 Pin groups

- **Cartridge bus: GPIO1–GPIO30, PB6 on GPIO31.** All inside the PIO window with
  `GPIOBASE = 0`. The signals are deliberately *not* contiguous — the pin map was
  chosen so the buses run crossing-free from the RP2354B through the level
  shifters to the connector, so `src/pins.rs` scatters bits with lookup tables.
  `DIR_D` = GPIO16, `SHIFT_OE` = GPIO34, `DIR_PB6` = GPIO32.
- **Data flash:** QSPI pins, chip select **GPIO0** (one of the four QMI-CS1
  capable pins, so the array is XIP-capable), bank select **GPIO37 = SEL0**,
  **GPIO36 = SEL1** into the '138.
- **Codec:** I²S on GPIO42 (DOUT) / 43 (DIN) / 44 (WCLK) / 45 (BCLK) / 46 (MCLK),
  I²C on GPIO40 (SDA) / 41 (SCL) = **I2C0**, reset on GPIO47.
- **Other:** GPIO33 amplifier shutdown, GPIO39 LED, GPIO35/38 test points J4/J3.

`src/pins.rs` is generated from the routed board by `tools/genpins.py`, so it
cannot drift from the hardware. Re-run it after any pin change.

## 3. Clocking

System clock is set to **153.6 MHz**, not the 150 MHz default, so that the I²S
divider is an integer:

```
BCLK      = 48 kHz × 16 bit × 2 ch = 1.536 MHz     (32 BCLK per frame)
PIO clock = 2 × BCLK               = 3.072 MHz
divider   = 153.6 MHz / 3.072 MHz  = 50.0         exact
```

The PIO program shifts 16 bits per channel, so a frame is 32 BCLK, not 64 — a
detail worth stating because it decides the codec's PLL divider below.

150 MHz would also give an exactly correct *average* rate, but a fractional
divider dithers between two cycle counts and puts jitter on every BCLK edge.
Since the codec's PLL is locked to BCLK and TI warn that DAC performance
degrades with clock jitter, the integer divider is worth the 2.4% clock bump.

Codec PLL, fed from BCLK (no MCLK needed — GPIO46 has no clock-output function
on this package anyway):

```
fsref = (PLLCLK_IN × K × R) / (2048 × P),   K = J.D
      = (1.536 MHz × 32 × 2) / (2048 × 1)
      = 48000.000 Hz        exactly     P=1, R=2, J=32, D=0
```

R is **2** because a frame is 32 BCLK. R=1 would be correct for a 64-BCLK
frame; getting this wrong yields silence with no error, because the PLL simply
fails to lock.

## 4. Host protocol

Binary, framed, CRC32-checked. One round trip per **block**, never per byte.

```
request   A5 5A | cmd:u8  | len:u32le | payload[len] | crc32:u32le
response  5A A5 | stat:u8 | len:u32le | payload[len] | crc32:u32le
```

The CRC is standard IEEE CRC-32, identical to Python's `zlib.crc32`, over the
command/status byte, the length field and the payload. Sync bytes differ per
direction so a host that loses framing can resynchronise by scanning.

| Cmd | Name | Payload | Response |
|---|---|---|---|
| 0x01 | Ping | — | `"VXPROG"` |
| 0x02 | Info | — | protocol, firmware, buffer size, cartridge size, flash size |
| 0x10 | CartId | — | manufacturer, device (expect `BF B7`) |
| 0x11 | CartEnable | on:u8 | — |
| 0x12 | CartBank | bank:u8 | — |
| 0x13 | CartEraseChip | — | — |
| 0x14 | CartEraseSector | addr:u32 | — |
| 0x15 | CartWrite | addr:u32, data | CRC32 of the data programmed |
| 0x16 | CartRead | addr:u32, len:u32 | data |
| 0x20 | FlashId | — | 4 × JEDEC ID |
| 0x21 | FlashErase | addr:u32, len:u32 | — |
| 0x22 | FlashWrite | addr:u32, data | CRC32 |
| 0x23 | FlashRead | addr:u32, len:u32 | data |
| 0x30 | AudioLoadSram | offset:u32, data | — |
| 0x31 | AudioPlaySram | len:u32 | — |
| 0x32 | AudioPlayFlash | addr:u32, len:u32 | — |
| 0x33 | AudioStop | — | — |
| 0x34 | AudioCodecInit | — | — |
| 0x35 | AudioVolume | atten:u8 (0.5 dB steps, 0 = 0 dB, 127 = −63.5 dB) | — |
| 0x36 | AudioCodecRead | reg:u8, count:u8 | register values |
| 0x37 | AudioCodecWrite | (reg:u8, val:u8)* | — |
| 0x40 | Bootsel | — | — (reboots into USB BOOTSEL) |

Status: 0 ok, 1 bad CRC, 2 unknown command, 3 bad length, 4 cartridge timeout,
5 verify failed, 6 wrong cartridge ID, 7 busy, 8 out of range, 9 flash error.

`Status::CartVerify` carries `addr:u32, wrote:u8, read:u8` — the first mismatch.

### Why this is faster than the PIC programmer

The old design sent ASCII hex with a one-byte XOR checksum and echoed every byte
twice, so a 256-byte block cost **1541 bytes on the wire**, and everything except
the block command took one serial round trip *per port write* — 40 round trips
per programmed byte on the slow path. Here a 128 KiB block crosses in one frame
and the per-byte bus work happens on the RP2350.

What remains is the flash itself: the SST39SF040 needs ~14 µs (20 µs max) per
byte, so a full 512 KB cartridge takes roughly 7–10 s of pure programming time.
USB CDC on the RP2350 is Full Speed only (~1 MB/s ceiling), which matters for the
128 MB array — filling it is bounded by the flash's page program time (~0.4 ms
per 256-byte page ≈ 3.5 min for 128 MB), not by USB.

## 5. Cartridge programming

**Chip:** SST39SF040, 512 KB, 5 V, ID `BF B7`, 4 KB sectors.

| Operation | Sequence (flash-internal addresses) |
|---|---|
| Software ID entry | `5555←AA`, `2AAA←55`, `5555←90` |
| Software ID exit | `5555←AA`, `2AAA←55`, `5555←F0` |
| Byte program | `5555←AA`, `2AAA←55`, `5555←A0`, `addr←data` |
| Sector erase | `5555←AA`, `2AAA←55`, `5555←80`, `5555←AA`, `2AAA←55`, `SA←30` |
| Chip erase | `5555←AA`, `2AAA←55`, `5555←80`, `5555←AA`, `2AAA←55`, `5555←10` |

Completion is detected by **DQ7 polling** with a timeout, not by the fixed 25 µs
delay the PIC firmware used. Flash DQ7 lands on bus bit 7 (the data scrambler
maps 7→7), so the comparison is direct.

### 5.1 Address and data scrambling — do not skip this

The cartridge PCB routes the Vectrex bus to the flash with permuted lines:

```
flash addr bit → bus bit:  0→0  1→12  2→13  3→14  4→10  5→2  6→3  7→11
                           8→8  9→6  10→1  11→7  12→4  13→5  14→9  15→15
flash data bit → bus bit:  0→3  1→4   2→2   3→5   4→1   5→6  6→0  7→7
```

Only the flash's own **command** addresses and **command** bytes are scrambled.
The ROM payload is written **raw** — the bits land permuted in the cells, but the
Vectrex reads them back through the same wiring, so the image is correct.
Getting this backwards corrupts every command sequence silently.

### 5.2 Bus cycles

Writes are **CE#-controlled**: `/WE` falls before `/CE` and `/CE` rises before
`/WE`, so address and data are latched on the **rising edge of HALT**. `/OE` must
stay high throughout. The original firmware relied on PIC instruction timing for
the pulse widths; here the delays are explicit (`delay_ns`) because the RP2350 is
far faster than the SST39SF040's 40 ns minimums.

### 5.3 PB6 and bank switching

PB6 is a one-wire, pulse-width-encoded link to the cartridge's PIC16F18323
(10 kΩ pull-up, drive low / release high). Frame: `'V'`, command, argument, MSB
first, after a ≥5 µs low start. Bit cell 30 µs: `1` = ~10 µs high then ~20 µs
low, `0` = ~5 µs high then ~25 µs low.

| Command | Value | Effect |
|---|---|---|
| `CMD_SET_BANK` | 5 | low 4 bits drive flash A15–A18 → 16 banks × 32 KB |
| `CMD_ENABLE_PROGRAMMER` | 6 | re-gates flash `/CE` so HALT can assert it |

The PIC understands other commands, but these two are all the programmer sends.

**`ENABLE_PROGRAMMER` is mandatory before writing.** Normally the cartridge's CLC
gates `/CE` from `/OE` alone, so the Vectrex can only ever read — that is the
cartridge's write protection. With programmer mode on, `/CE = (RA0 | /OE) & HALT`,
which is why pulling HALT low asserts `/CE` during a write.

The Vectrex bus only carries A0–A14, so each bank restarts at address 0.

## 6. Data flash array

Four W25Q256JV on one QSPI bus. The QMI's CS1 (GPIO0) goes to the '138's enable,
and GPIO37/GPIO36 select which of Y0–Y3 receives it, so asserting CS selects
exactly one device. Each device is 32 MB — more than 24 address bits — so all
four are put into **4-byte address mode** at init and only 4-byte opcodes are
used (`13` read, `12` page program, `21` sector erase, `DC` block erase).

Erase, program and read go through **QMI direct mode** (RP2350 datasheet
§12.14.5), which disconnects the XIP window and turns the QSPI bus into a plain
SPI port. The RP2354B's internal stacked flash, which the firmware executes
from, is CS0 on the same QMI, so while direct mode is on the firmware's own code
is unreachable. Every transaction therefore runs in `extflash::transact`, which
is placed in RAM (`.data`), runs with interrupts off, touches nothing in flash
(not even `.rodata` constants - the command header is passed by value) and
leaves direct mode before returning. Reads are split into 256-byte transactions
to bound the interrupt-off time.

GPIO0 must be muxed to `XIP_SS_N_1` and the two bank-select pins to SIO outputs;
`extflash::init` does both.

The direct-mode clock is **clk_sys / 30 ≈ 5 MHz** (`DIRECT_CLKDIV`), see §15.
That gives 135 KiB/s programming, and reads keep up with 48 kHz stereo streaming
(192 KB/s) - verified with a 30 s clip.

## 7. Codec bring-up

I²C address **0x18**, hardwired (no address strap pin on the AIC3104).

Order matters, and two of these are classic silent failures:

1. **Hardware reset is mandatory** — pulse GPIO47 low after the supplies are
   stable, or the codec may not answer register access at all.
2. **BCLK must already be running** before the PLL registers are written. I²C
   ACKs happily without a clock, so the writes appear to succeed and the PLL just
   never locks. The PIO stalls - clocks included - whenever its TX FIFO is empty,
   so DMA channel 1 streams zeros into it in RP2350 endless mode whenever
   nothing is playing (`silence_start`/`silence_stop` in `audio.rs`).
3. `reg 102 = 0xA2` — **both** CLKDIV_IN and PLLCLK_IN must be set to BCLK, and
   the low nibble must be written as `0010`. Setting only the PLL mux (0x22) is
   the usual "BCLK as PLL source doesn't work" bug.
4. Power-up order: DAC (reg 37) → routing (41) → drivers (86/93) → *then*
   unmute the digital volume (43/44), at the stored volume rather than 0 dB.
   Routing is **reg 41 = 0x50 (DAC_L3/R3 straight to the line drivers)**. The
   default DAC_L1/R1 path through the output mixer (reg 82/92 = 0x80) is silent
   on this board although every register reads back as written and the codec
   reports DACs and line outputs powered - see §15.
5. Mute polarity is inverted between registers: reg 43/44 D7 = 1 means muted,
   reg 86/93 D3 = 1 means **un**muted.
6. The amplifiers stay in shutdown (GPIO33 low) for the whole sequence and are
   released last — a filterless class-D amp reproduces every turn-on transient.

Two further points specific to this board: the PLL uses **R = 2** (reg 11 =
0x02) because the PIO frame is 32 BCLK, and the I²S program carries embassy's
side-set bits **swapped** (`side 0bBW`), because the board has WCLK on GPIO44
and BCLK on GPIO45 while the stock driver expects the opposite order.

The full sequence with a comment per register is the `INIT` table in
`src/audio.rs`. Runtime volume is regs 43/44 (0 to −63.5 dB in 0.5 dB steps,
soft-stepped, pop-free), set with `./upload.py audio volume <dB>`. It defaults
to **−30 dB** at power-on and survives every codec re-init, because 0 dB drives
the 2× amplifiers to their full ~1.4 W into the speakers.

## 8. Build and flash

```bash
rustup target add thumbv8m.main-none-eabihf     # not installed by default

./flash.sh              # build release and flash over SWD
./flash.sh --debug      # debug profile
./flash.sh some.elf     # flash an existing ELF
cargo run --release     # same thing: the cargo runner calls flash.sh
```

Flashing goes through a **SEGGER J-Link / J-Trace** on the Tag-Connect
footprint J1. That connector carries SWCLK, SWDIO and RESET only — the SWO pad
is used as a GPIO because the pin budget was tight — so the probe runs in **SWD
mode**. That costs nothing here: flashing needs no trace pin, and `defmt`
logging works over RTT, which is ordinary memory access over SWD rather than
SWO.

Overrides, if the defaults do not suit:

```bash
DEVICE=RP2350_M33_0 IFACE=SWD SPEED=4000 ./flash.sh
```

**The J-Link software must be new enough to know the RP2350.** V7.98f (Aug 2024)
does not — its device database stops at `RP2040` — and `flash.sh` then fails in
a way that looks like a dead board. V9.78 has `RP2350`, `RP2350_M33_0/1` and
`RP2350_RV32_0/1`; `RP2350_M33_0` is verified against it. If the name is
rejected, update the package rather than editing the script.

USB BOOTSEL still works as a fallback — `./upload.py bootsel` calls the bootrom
reboot, and a blank chip enters BOOTSEL by itself — but it is not needed when a
probe is attached.

The RP2350 bootrom refuses to run an image without a valid IMAGE_DEF in the
first 4 KB of flash. `embassy-rp` emits it automatically and `memory.x` provides
the `.start_block` section it lives in. There is no BOOT2 stage on RP2350.

### Toolchain choice

`embassy-rp` 0.10 (async) rather than `rp235x-hal`, because this firmware
services USB, a cartridge bus and I²S audio concurrently. Embassy gives an async
USB stack, DMA transfers as futures, a ready-made PIO I²S driver, and emits the
IMAGE_DEF for free. `rp235x-hal` would mean polled `usb-device` plus hand-rolled
ring buffers between IRQ and main context.

## 9. Sources

- Cartridge protocol, flash algorithm, scrambler and PB6 encoding: the working
  PIC programmer — `bloxorz/mplabx/programmer.X/{main,receiver}.c`,
  `bloxorz/mplabx/cartridge.X/main.c`, and the host tool in
  `bloxorz.new-pic/linux-programmer/`. The scrambler tables were re-verified
  against `receiver.c` directly.
- Cartridge wiring: `bloxorz/kicad/bloxorz.net`.
- RP2350 QMI direct mode, PIO dividers, IMAGE_DEF: RP2350 datasheet
  (`../datasheets/RP2354B_rp2350-datasheet.pdf`).
- Codec registers and PLL: TLV320AIC3104 datasheet (SLAS510G) plus the Linux
  ASoC driver `sound/soc/codecs/tlv320aic3x.c`.
- Amplifier gain and input network: TPA2005D1 datasheet.

## 10. Layout

```
firmware/
  README.md          this file
  Cargo.toml         embassy-rp 0.10, target thumbv8m.main-none-eabihf
  memory.x           RP2354B: 2 MB flash, 520 KB SRAM, .start_block for IMAGE_DEF
  build.rs           memory.x plumbing and link args
  .cargo/config.toml target, DEFMT_LOG, and flash.sh as the cargo runner
  upload.py          host tool
  flash.sh           build + flash over SWD with a J-Link / J-Trace
  tools/genpins.py   regenerates src/pins.rs from the routed board
  src/
    main.rs          USB CDC, command dispatch
    proto.rs         framing, CRC32, command and status codes
    pins.rs          GENERATED pin map and scatter tables
    cart.rs          cartridge bus, SST39SF040, scrambler, PB6 link
    extflash.rs      128 MB array over QMI direct mode
    audio.rs         codec init and 48 kHz playback
```

---

## 11. Bring-up, when the boards arrive

### 11.1 State of play

Verified:

| Thing | State |
|---|---|
| Board | DRC clean, 0 violations, 0 unconnected, 100 × 100 mm, 4 layers |
| Copper pours | GND on In1 only. In2 is named "PWR" but has **no** pour — it carries tracks, and +3V3 is distributed as tracks |
| BOM | `../jlcpcb-bom.xlsx`, 34 lines / 97 placements, every LCSC part in stock |
| CPL | `../jlcpcb-cpl.xlsx`, 97 placements, all top side |
| Firmware | builds with **0 warnings**; 1.57 MB ELF, most of it debuginfo |
| Toolchain | `thumbv8m.main-none-eabihf` installed; J-Link Commander V9.78 |
| Debug probe | J-Trace PRO V3 Cortex-M, attached and working; `RP2350_M33_0` accepted |
| Hardware test | Steps 1-3 and 5 of §11.2 pass: power, SWD, blink, USB enumeration, `info`, `flash id` (`EF 40 19` ×4), `flash banktest`, audio (1 kHz sine on both speakers). External flash direct mode needs a slow clock (`DIRECT_CLKDIV` = 30); at clkdiv 3 reads come back with bits smeared (`FF 60 1D`). The codec only outputs sound on the DAC_L3/R3 path (reg 41 = 0x50); the DAC_L1/R1 mixer path stays silent. Cartridge not yet tested |

Not installed, and not needed for the J-Link flow: `picotool`, `probe-rs`,
`elf2uf2-rs`.

### 11.2 Order of bring-up

Do these in order. Each step depends on the previous one working, and each has a
cheap way to tell whether it did.

**1. Power, before anything is plugged into USB.**
Check the three rails with a bench supply current-limited to ~100 mA:
3.3 V from the MIC5504 (U1), 1.1 V from the TLV74311 (U2) for the RP2354B's
DVDD, 1.8 V from the AMS1117 (U8) for the codec. A short on 1.1 V is the one
that will not be obvious — the RP2350 runs its core from it.

**2. SWD.** `JLinkExe -device RP2350_M33_0 -if SWD -speed 4000` then `connect`.
Check **`VTref`** in the banner first: it reads 0.000 V with no target and
should show ~3.3 V once the board is USB powered, which is the cheapest test of
"is the target alive at all". J1 is a Tag-Connect TC2030 with no latch, so it
must be held in place.

**3. Flash and enumerate.** `./flash.sh`. The board should appear as a USB CDC
device, VID `0x2e8a` PID `0x000a`, product string "Vectrex cartridge
programmer". Then `./upload.py info` — it prints the protocol version, buffer
size and flash geometry. If enumeration fails but SWD works, look at the USB
data pair (27 Ω series resistors R4/R5) and the 5.1 kΩ CC resistors.

**4. Logging.** `defmt` over RTT works through plain SWD — no SWO needed, which
matters because that pin is used as a GPIO here. Start `JLinkRTTClient`, or
`JLinkGDBServer -device RP2350_M33_0 -if SWD` and attach.

**5. External flash.** `./upload.py flash id` must return `EF 40 19` four times.
This exercises QMI direct mode and the GPIO0 chip select. Note that all four
banks answer with the *same* ID, so this alone does not prove bank selection
works — a stuck '138 would look identical. Follow it with
`./upload.py flash banktest`, which writes a distinct pattern to each 32 MB
bank and reads all four back (destroys the first sector of each).
If nothing answers, check that direct mode is actually entered (the XIP window
must not be touched while it is) and that the 27 Ω series resistors R14–R19 are
populated.

**6. Cartridge.** Insert a known-good cartridge, then `./upload.py cart id`,
which expects `BF B7` (SST39SF040).
Order of operations matters: the host sends `CartEnable(1)` first, because the
cartridge's CLC gates the flash `/CE` until the on-cart PIC is put into
programmer mode over PB6. If the ID reads as `FF FF` or garbage:
  * PB6 link — that is the most likely culprit, since its pulse timing is
    open-loop and nothing reads the PIC's reply. Scope GPIO31: a frame is
    `'V'`, command, argument, MSB first, 30 µs bit cells, after a ≥5 µs low.
  * `SHIFT_OE` (GPIO34) must be **low** to enable the level shifters.
  * `DIR_D` (GPIO16) direction versus the read/write phase.
  * The scrambler — if the ID comes back as a *permuted* version of `BF B7`,
    the address or data mapping in `cart.rs` is wrong; it was transcribed from
    `receiver.c` and re-verified once, but it is the kind of thing that hides.

**7. Cartridge programming.** `./upload.py cart write some.bin`. It erases,
programs bank by bank, then reads everything back. A `verify failed` reply
carries the first mismatching address plus what was written and what was read,
which distinguishes "nothing programmed" (reads `FF`) from "bus timing marginal"
(reads a near-miss) from "scrambler wrong" (reads a bit-permuted value).

**8. Codec.** `./upload.py audio sram song.wav` runs `AudioCodecInit` first.
Check in this order:
  * I²C: the codec must ACK at address **0x18**. If it does not, the reset pulse
    on GPIO47 is the first suspect — a hardware reset after power-up is
    mandatory on this part.
  * BCLK on GPIO45 should be **1.536 MHz** and WCLK on GPIO44 **48 kHz**. If
    they are absent, the PIO program never started; if they are present but at
    the wrong rate, check that `ClockConfig::system_freq(153_600_000)` actually
    took (a fallback warning is logged if it did not).
  * Only then look at audio. Silence with everything else healthy usually means
    the PLL did not lock — the classic cause is writing the PLL registers before
    BCLK runs, or writing `0x22` instead of `0xA2` to register 102. On this
    board it turned out to be the DAC routing (reg 41, see §7).
  * `./upload.py audio regs` dumps the codec registers and `audio regw reg val
    ...` writes them at runtime, without reflashing. Useful checks: reg 94
    (module power status), reg 36 bit 7 (PGA gain applied - it only gets there
    if the codec clock runs), and the analog bypass `regw 19 0x04 15 0x60 81
    0x80`, which sends the open LINE1LP input through the PGA to LEFT_LOP and
    proves the output stage without the DAC.
  * The amplifiers stay shut down (GPIO33 low) until the DAC is unmuted; if you
    hear a loud pop at start-up, that ordering has been broken.

**9. Flash audio.** `./upload.py audio flash --file song.wav` uploads to address
0 and then streams it back; `audio flash <addr> <length>` replays what is
already there, and `audio stop` halts either. Underruns are audible as periodic
clicks at the buffer rate (256 frames = 5.3 ms); if so the fill path is too
slow and `CHUNK` in `audio.rs` should go up.

### 11.3 Instrumentation points

Three test points are brought out and are already in the firmware's pin map:
**J2 = XOUT**, **J3 = GPIO38**, **J4 = GPIO35**. J3 and J4 are free GPIOs — use
them as scope triggers by toggling them around whatever you are debugging.
GPIO39 drives the status LED.

## 12. Known risks and unverified assumptions

Listed worst-first. None of these are known to be wrong; they are the places
where being wrong would be expensive. Power, USB, the external flash array and
audio run on hardware now (§11.1); the cartridge side has not.

1. **The cartridge path is untested** - PB6 link, level shifters, bus timing
   and the scrambler (§11.2 steps 6-7).
2. **The codec PLL divider depends on the frame length.** R=2 is right for a
   32-BCLK frame. If the PIO program is ever changed to 64 BCLK, register 11
   must become 0x01.
3. **Cartridge bus timing is open-loop.** The delays in `cart.rs` are generous
   against the SST39SF040's 40 ns minimums, but the level shifters add delay and
   nothing has been scoped.
4. **JLC rotations may not match KiCad's** for polarised parts: D1/D2, J5, U3,
   the four WSON flash chips, the TPA2005D1s. Check the preview after uploading
   the CPL.
5. **RP2350-E9**: there is a documented GPIO erratum about pads used as
   high-impedance inputs holding a weak pull-down. It could matter for the
   cartridge bus when the shifters are in high-Z. Worth reading the errata
   against the silicon stepping actually received.

## 13. Regenerating what is generated

Never hand-edit these; regenerate them, or the copy in the repo will drift from
the board.

```bash
# src/pins.rs, from the routed board, so it cannot disagree with the hardware
python3 firmware/tools/genpins.py

# logo footprint, straight from vector art - no GUI, no bitmap tracing
inkscape "frank buss.eps" --export-type=svg --export-plain-svg \
         --export-filename=/tmp/logo.svg
tools/vec2fp.py /tmp/logo.svg logos.pretty/frank-buss-logo.kicad_mod \
        --name frank-buss-logo --width 19.7 --layer F.SilkS
```

Both commands are run from the KiCad project root (`..` from here). Use the
`.eps`, not the `.ai` — the `.ai` is a PDF wrapper that converts to an empty
SVG.

`../jlcpcb-bom.xlsx` and `../jlcpcb-cpl.xlsx` are the two files JLC actually
needs, and they are the versions of record. Rebuild them by exporting a BOM and
a position file from KiCad (the intermediate CSVs are gitignored, not kept),
then reshaping: the BOM keeps the real MPN in the Comment column where the
schematic value is `~`, and the CPL is `Designator, Mid X, Mid Y, Layer,
Rotation` with Y negated and the layer capitalised.

`../gerber.zip` is the fabrication archive and is committed; the loose
`../gerber/` directory it was zipped from is gitignored. The two are currently
byte-identical — re-zip after any board change.

## 14. Working with the KiCad project — hard-won notes

These cost real time during the design. A future session should know them.

1. **KiCad overwrites files it has open.** Editing `programmer.kicad_pro`,
   `.kicad_sch` or `.kicad_pcb` from a script while the editor is running means
   the editor's in-memory copy wins on its next save. Check for `*.lck` files
   first, and if the editor is open, either close it or use File → Revert before
   it saves anything.
2. **"Update PCB from Schematic" uses the editor's in-memory schematic**, not
   the file on disk. After a scripted schematic edit, revert in Eeschema *then*
   press F8, or the board silently gets the old netlist.
3. **Zones are not auto-filled.** `kicad-cli pcb drc` reports clearance errors
   with "actual 0.0000 mm" against an unfilled zone — 138 spurious violations at
   one point. Fill zones (`B` in pcbnew, or `ZONE_FILLER` in a script) before
   believing a DRC report.
4. **Footprints without a schematic symbol get pruned** by F8 unless they carry
   the `board_only` attribute ("Not in schematic"). That is why the logo kept
   disappearing. Both logos now have symbols in `../logos.kicad_sym`, which is
   the durable fix.
5. **`pcbnew`'s Python API differs from the PAC**: `SIO` GPIO access in
   `embassy-rp` is banked — `gpio_out(0)` for GPIO0-31, `gpio_out(1)` for 32-47,
   with `.value_set()` / `.value_clr()`, and the function select is
   `SIOB_PROC_0`.
6. **The `pio` crate version must match embassy's** (0.3, not 0.4), or
   `load_program` rejects the program with a `Program<32>` type mismatch.

## 15. Open work

- [ ] Bring-up per §11: steps 1-5, 8 and 9 pass; the cartridge (steps 6-7) is
      untested
- [ ] **External flash runs at ~5 MHz instead of ~50 MHz.** At `DIRECT_CLKDIV`
      = 3 (153.6 / 3 = 51.2 MHz SCK) every bit that follows a `1` reads back as
      `1` (JEDEC ID `FF 60 1D` instead of `EF 40 19`): the QMI samples before
      SO has fallen. Two things are wrong at that speed. The plain Read Data
      command (`13h`, like `03h`) is only specified to fR = 50 MHz, so 51.2 MHz
      is out of spec for it anyway - use Fast Read (`0Ch` with a dummy byte,
      133 MHz) for speed. But JEDEC ID (`9Fh`, rated to 133 MHz) failed too, so
      the sampling timing is also marginal: `DIRECT_CSR.RXDELAY` is 0, and SO
      is shared by four flash chips plus the internal stacked flash behind
      series resistors R14-R19, so its edges are slow. Next step: sweep
      `clkdiv` and `rxdelay` with `flash id` / `flash banktest`, then move reads
      to `0Ch`
- [ ] **Codec DAC_L1/R1 mixer path is silent** (reg 41 = 0x00, reg 82/92 =
      0x80). Unexplained; the direct DAC_L3/R3 path (reg 41 = 0x50) is used
      instead, which loses the per-path analog volume of regs 82/92 (the
      digital volume in 43/44 still works)
- [ ] Audio distortion after the codec: a two-tone chord recorded from the
      speakers carries odd-order products 17-22 dB down, while C31 on the scope
      shows a clean two-tone signal. Source is the TPA2005D1 stage or the
      speakers; not investigated
- [ ] Maximum loudness is modest: the amps run at a gain of 2 (150 kΩ input
      resistors R21-R24). Lower those if more level is needed
- [ ] The 4-byte length of `AudioPlaySram` is read into `buf[0..4]`, which
      overwrites the first stereo frame of the SRAM clip
- [ ] Once, a clip played correctly from SRAM right after a reflash, which
      should have cleared the buffer (`.bss`). Unexplained
- [ ] `cart::init` enables the level shifters (`SHIFT_OE` low) at boot, so the
      address and control lines drive the cartridge port even with no
      cartridge inserted. Consider keeping them high-Z until `CartEnable`
- [ ] Measure actual programming throughput and compare against the ~7-10 s
      estimate for a full 512 KB cartridge
- [ ] Through-hole headers J1-J4 and the speaker headers LS1/LS2 (1x02, 2.54 mm)
      carry no LCSC part number, so JLC will not fit them - solder them by hand
- [ ] Consider pouring +3V3 on In2 — currently it carries signals only, and the
      power distribution is tracks
