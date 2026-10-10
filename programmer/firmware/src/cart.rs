//! Vectrex cartridge bus driver and SST39SF040 flash programming.
//!
//! Both the bus and the PB6 link run on PIO, so every edge is placed by the
//! PIO clock:
//!
//! * **PIO1, GPIO base 0: the bus.** Each word from the TX FIFO is a pin
//!   image for GPIO1..30 (bits 1..30), or a pin direction image when bit 0 is
//!   set. Bit 31 samples all 32 GPIOs into the RX FIFO 11 cycles after the
//!   image is applied. A word is held 16 cycles; at clock divider 8 that is
//!   573 ns to the sample and 833 ns per word.
//! * **PIO1 SM1: PB6 sampler.** Shifts in PB6 once per microsecond, 32 samples
//!   per word, for the PB6 trace.
//! * **PIO2, GPIO base 16: PB6.** Three words per frame: the number of bits
//!   minus 1, then `'V'`, `'X'`, command, argument, then the check byte. The
//!   state machine drives the start condition, the 40 pulse-width coded bits
//!   and the trailer at 0.5 us per cycle, releases the line, then measures the
//!   8 high pulses of the PIC's reply in 1 us steps and pushes each width.
//!
//! Direction changes never overlap: an RP2350 pin becomes an output only
//! after its level shifter has been turned towards the cartridge, and it
//! becomes an input before the shifter is turned back.
//!
//! # Address and data scrambling
//!
//! The cartridge PCB routes the Vectrex bus to the flash with permuted address
//! and data lines:
//!
//! ```text
//! flash addr bit -> bus bit: 0->0 1->12 2->13 3->14 4->10 5->2 6->3 7->11
//!                            8->8 9->6 10->1 11->7 12->4 13->5 14->9 15->15
//! flash data bit -> bus bit: 0->3 1->4 2->2 3->5 4->1 5->6 6->0 7->7
//! ```
//!
//! Only the flash's own *command* addresses (0x5555 / 0x2AAA / sector address)
//! and *command* bytes (AA/55/A0/80/10/30/90/F0) are scrambled, because the
//! flash decodes those internally. The ROM payload is written raw: the bits land
//! permuted in the cells, but the Vectrex reads them back through the very same
//! wiring, so the image is correct.
//!
//! # Bus cycles
//!
//! On the cartridge, flash `/OE` and `/WE` come straight from the Vectrex
//! `/OE` and `R/W` pins, but flash `/CE` is the on-cart PIC's CLC output, fed
//! by `HALT`, `/OE` and `CE`. `CE` must be low for the flash to be selected:
//!
//! * read: `CE` and `/OE` low together, `HALT` high
//! * write: `R/W` low with the address and data, then `HALT` and `CE` low
//!   (`/OE` high), then `HALT` and `CE` high, then `R/W` high
//!
//! Writes latch address and data on the rising edge of `HALT`/`CE`; the CLC
//! passes `HALT` through to flash `/CE` only in programmer mode.

use crate::pins::*;
use embassy_rp::interrupt::typelevel::Binding;
use embassy_rp::pac;
use embassy_rp::peripherals::{PIO1, PIO2};
use embassy_rp::pio::{
    Config, FifoJoin, Instance, InterruptHandler, LoadedProgram, Pio, ShiftConfig, ShiftDirection, StateMachine,
};
use embassy_rp::pio_programs::clock_divider::calculate_pio_clock_divider;
use embassy_rp::Peri;
use embassy_time::{Duration, Instant, Timer};

/// Flash command addresses, in flash-internal (unscrambled) space.
const UNLOCK_A: u16 = 0x5555;
const UNLOCK_B: u16 = 0x2AAA;

const CMD_UNLOCK1: u8 = 0xAA;
const CMD_UNLOCK2: u8 = 0x55;
const CMD_PROGRAM: u8 = 0xA0;
const CMD_ERASE: u8 = 0x80;
const CMD_CHIP_ERASE: u8 = 0x10;
const CMD_SECTOR_ERASE: u8 = 0x30;
const CMD_ID_ENTRY: u8 = 0x90;
const CMD_ID_EXIT: u8 = 0xF0;

/// SST39SF040: 512 KiB, 4 KiB sectors.
pub const FLASH_SIZE: u32 = 512 * 1024;
pub const SECTOR_SIZE: u32 = 4096;
pub const MFG_SST: u8 = 0xBF;
pub const DEV_39SF040: u8 = 0xB7;

/// PB6 trace sample rate.
const TRACE_HZ: u32 = 1_000_000;
/// Longest wait for the samples of one trace.
const TRACE_TIMEOUT: Duration = Duration::from_millis(100);

// PIO2 runs with GPIO base 16, so its pins must be 16..47.
const _: () = assert!(PB6 >= 16 && PB6 < 48 && DIR_PB6 >= 16 && DIR_PB6 < 48);
// Bus pins 1..30 are driven as one image on PIO1 with GPIO base 0.
const _: () = assert!(ADDR_CTRL_MASK | DATA_MASK | (1 << DIR_D) == 0x7fff_fffe);

/// One-wire control link to the cartridge's PIC16F18323.
/// A frame is `'V'`, `'X'`, command, argument and the check byte command ^ argument ^ PIC_CHECK.
const PIC_CHECK: u8 = 0xA5;
pub const PIC_CMD_SET_BANK: u8 = 5;
pub const PIC_CMD_ENABLE_PROGRAMMER: u8 = 6;

/// Bus word flags: bit 0 = pin direction image, bit 31 = sample the inputs.
const W_DIRS: u32 = 1;
const W_SAMPLE: u32 = 1 << 31;
/// Control lines, all inactive.
const CTRL_IDLE: u32 = (1 << HALT) | (1 << OE) | (1 << CE) | (1 << RW) | (1 << CART) | (1 << NMI);
/// Pins the RP2350 always drives: address, control and the data direction.
const DIRS_OUT: u32 = ADDR_CTRL_MASK | (1 << DIR_D);

/// PB6 state machine: `set pindirs, 2` (PB6 input, DIR output) and `set pins, 0`.
const PB6_SET_PINDIRS_IN: u16 = 0xE082;
const PB6_SET_PINS_LOW: u16 = 0xE000;

#[derive(Copy, Clone, PartialEq, Debug)]
pub enum CartError {
    /// DQ7 never settled - no flash, wrong part, or programmer mode not enabled.
    /// Carries the address and the last byte read there.
    ProgramTimeout { addr: u32, read: u8 },
    EraseTimeout,
    /// Read-back did not match. Carries the address and what was read.
    Verify { addr: u32, wrote: u8, read: u8 },
    WrongId { mfg: u8, dev: u8 },
}

// ---------------------------------------------------------------------------
// scrambling
// ---------------------------------------------------------------------------

const ADDR_MAP: [u8; 16] = [0, 12, 13, 14, 10, 2, 3, 11, 8, 6, 1, 7, 4, 5, 9, 15];
const DATA_MAP: [u8; 8] = [3, 4, 2, 5, 1, 6, 0, 7];

/// Flash-internal address -> address as it must appear on the Vectrex bus.
pub fn addr_to_bus(a: u16) -> u16 {
    let mut out = 0u16;
    for (bit, &dst) in ADDR_MAP.iter().enumerate() {
        if a >> bit & 1 != 0 {
            out |= 1 << dst;
        }
    }
    out
}

/// Flash command byte -> byte as it must appear on the Vectrex bus.
pub fn data_to_bus(v: u8) -> u8 {
    let mut out = 0u8;
    for (bit, &dst) in DATA_MAP.iter().enumerate() {
        if v >> bit & 1 != 0 {
            out |= 1 << dst;
        }
    }
    out
}

/// Byte read off the Vectrex bus -> flash-internal value (inverse of the above).
pub fn bus_to_data(v: u8) -> u8 {
    let mut out = 0u8;
    for (bit, &src) in DATA_MAP.iter().enumerate() {
        if v >> src & 1 != 0 {
            out |= 1 << bit;
        }
    }
    out
}

// ---------------------------------------------------------------------------
// pins
// ---------------------------------------------------------------------------

/// GPIO bits of A0..A14 for a bus address.
fn addr_bits(bus_addr: u16) -> u32 {
    ADDR_LO_LUT[(bus_addr & 0xff) as usize] | ADDR_HI_LUT[((bus_addr >> 8) & 0x7f) as usize]
}

/// Hand a pad to a PIO block, input buffer on, optional pull-up.
fn pio_pad(gpio: u8, funcsel: pac::io::vals::Gpio0ctrlFuncsel, pull_up: bool) {
    pio_pad_drive(gpio, funcsel, pull_up, pac::pads::vals::Drive::_2M_A);
}

fn pio_pad_drive(gpio: u8, funcsel: pac::io::vals::Gpio0ctrlFuncsel, pull_up: bool, drive: pac::pads::vals::Drive) {
    pac::PADS_BANK0.gpio(gpio as usize).write(|w| {
        w.set_ie(true);
        w.set_od(false);
        w.set_pue(pull_up);
        w.set_drive(drive);
    });
    pac::IO_BANK0
        .gpio(gpio as usize)
        .ctrl()
        .write(|w| w.set_funcsel(funcsel as u8));
}

/// Drive a bank-1 GPIO (32..47) from SIO.
fn sio_hi_output(gpio: u8, high: bool) {
    let m = 1u32 << (gpio - 32);
    if high {
        pac::SIO.gpio_out(1).value_set().write_value(m);
    } else {
        pac::SIO.gpio_out(1).value_clr().write_value(m);
    }
    pac::SIO.gpio_oe(1).value_set().write_value(m);
    pac::PADS_BANK0.gpio(gpio as usize).write(|w| {
        w.set_ie(true);
        w.set_od(false);
    });
    pac::IO_BANK0
        .gpio(gpio as usize)
        .ctrl()
        .write(|w| w.set_funcsel(pac::io::vals::Gpio0ctrlFuncsel::SIOB_PROC_0 as u8));
}

// ---------------------------------------------------------------------------
// driver
// ---------------------------------------------------------------------------

pub struct Cart<'d> {
    bus: StateMachine<'d, PIO1, 0>,
    trace: StateMachine<'d, PIO1, 1>,
    pb6: StateMachine<'d, PIO2, 0>,
    pb6_cfg: Config<'d, PIO2>,
    _bus_prg: LoadedProgram<'d, PIO1>,
    _trace_prg: LoadedProgram<'d, PIO1>,
    _pb6_prg: LoadedProgram<'d, PIO2>,
    /// Level shifters enabled and the bus driven.
    attached: bool,
    /// Data pins are RP2350 outputs and U6 points at the cartridge.
    data_out: bool,
}

impl<'d> Cart<'d> {
    pub fn new(
        pio1: Peri<'d, PIO1>,
        pio2: Peri<'d, PIO2>,
        irqs: impl Binding<<PIO1 as Instance>::Interrupt, InterruptHandler<PIO1>>
            + Binding<<PIO2 as Instance>::Interrupt, InterruptHandler<PIO2>>
            + Copy
            + 'd,
    ) -> Result<Self, &'static str> {
        // Shifters off until every pin has its state.
        sio_hi_output(SHIFT_OE, true);

        // ---- bus: one word per pin image ----
        let Pio {
            mut common,
            sm0: mut bus,
            sm1: mut trace,
            ..
        } = Pio::new(pio1, irqs);
        let prg = pio::pio_asm!(
            ".wrap_target",
            "top:",
            "    out x, 1",         // bit 0: direction image?
            "    jmp !x image",
            "    out pindirs, 30",
            "    jmp flag",
            "image:",
            "    out pins, 30",
            "flag:",
            "    out x, 1      [9]", // bit 31: sample? then hold
            "    jmp !x top",
            "    in pins, 32",
            ".wrap",
        );
        let bus_prg = common
            .try_load_program(&prg.program)
            .map_err(|_| "bus program does not fit into PIO1")?;
        let mut cfg = Config::default();
        cfg.use_program(&bus_prg, &[]);
        cfg.clock_divider = 8u8.into();
        cfg.shift_out = ShiftConfig {
            threshold: 32,
            direction: ShiftDirection::Right,
            auto_fill: true,
        };
        cfg.shift_in = ShiftConfig {
            threshold: 32,
            direction: ShiftDirection::Left,
            auto_fill: true,
        };
        let mut p = cfg.get_pins();
        p.out_base = 1;
        p.out_count = 30;
        p.in_base = 0;
        unsafe { cfg.set_pins(p) };
        bus.set_config(&cfg);
        bus.set_enable(true);

        // ---- PB6 sampler: one sample per cycle at 1 MHz, 32 per word, first sample in bit 0 ----
        let prg = pio::pio_asm!(".wrap_target", "    in pins, 1", ".wrap");
        let trace_prg = common
            .try_load_program(&prg.program)
            .map_err(|_| "trace program does not fit into PIO1")?;
        let mut cfg = Config::default();
        cfg.use_program(&trace_prg, &[]);
        cfg.clock_divider = calculate_pio_clock_divider(TRACE_HZ);
        cfg.fifo_join = FifoJoin::RxOnly;
        cfg.shift_in = ShiftConfig {
            threshold: 32,
            direction: ShiftDirection::Right,
            auto_fill: true,
        };
        let mut p = cfg.get_pins();
        p.in_base = PB6;
        unsafe { cfg.set_pins(p) };
        trace.set_config(&cfg);

        // ---- PB6: one word per frame ----
        let Pio {
            mut common,
            sm0: mut pb6,
            ..
        } = Pio::new(pio2, irqs);
        let prg = pio::pio_asm!(
            ".wrap_target",
            "    pull block",           // number of bits - 1
            "    mov y, osr",
            "    pull block",           // 'V', 'X', command, argument, MSB first
            "    set pins, 2",          // DIR high: RP -> cartridge, PB6 register low
            "    set pindirs, 3 [31]",  // PB6 drives low: start condition, 16 us
            "bit:",
            "    pull ifempty block",   // the check byte after 32 bits
            "    out x, 1",
            "    set pins, 3    [5]",
            "    jmp !x low",           // '0': high 3.5 us
            "    nop           [11]",   // '1': high 9.5 us
            "low:",
            "    set pins, 2   [15]",
            "    nop           [15]",
            "    jmp y-- bit",          // low 17.5 us
            "    nop           [31]",   // trailer low
            "    set pins, 3    [3]",   // PB6 high 2 us
            "    set pindirs, 2",       // PB6 input
            "    set pins, 0",          // DIR low: cartridge -> RP
            "    wait 0 pin 0",         // reply start
            "    set y, 7",
            "rbit:",
            "    wait 1 pin 0",
            "    mov x, ~null",
            "cnt:",
            "    jmp x-- high",
            "high:",
            "    jmp pin cnt",          // 2 cycles = 1 us per count
            "    mov isr, ~x",
            "    push block",
            "    jmp y-- rbit",
            "    wait 1 pin 0  [31]",   // PIC released the line, 16 us margin before the next frame
            ".wrap",
        );
        let pb6_prg = common
            .try_load_program(&prg.program)
            .map_err(|_| "PB6 program does not fit into PIO2")?;
        let mut pb6_cfg = Config::default();
        pb6_cfg.use_program(&pb6_prg, &[]);
        pb6_cfg.clock_divider = calculate_pio_clock_divider(2_000_000);
        pb6_cfg.shift_out = ShiftConfig {
            threshold: 32,
            direction: ShiftDirection::Left,
            auto_fill: false,
        };
        let mut p = pb6_cfg.get_pins();
        p.set_base = PB6; // SET bit 0 = PB6, bit 1 = DIR_PB6
        p.set_count = 2;
        p.in_base = PB6;
        unsafe { pb6_cfg.set_pins(p) };
        let mut e = pb6_cfg.get_exec();
        e.jmp_pin = PB6 - 16; // relative to GPIO base 16
        unsafe { pb6_cfg.set_exec(e) };
        pb6.set_config(&pb6_cfg);


        let mut this = Self {
            bus,
            trace,
            pb6,
            pb6_cfg,
            _bus_prg: bus_prg,
            _trace_prg: trace_prg,
            _pb6_prg: pb6_prg,
            attached: false,
            data_out: false,
        };

        // Pin states first, then the pads, then the shifters.
        this.pb6_park();
        this.pb6.set_enable(true);
        this.push(W_DIRS | DIRS_OUT);
        this.push(CTRL_IDLE);
        for gpio in 1..=30u8 {
            let is_data = (1u32 << gpio) & DATA_MASK != 0;
            pio_pad(gpio, pac::io::vals::Gpio0ctrlFuncsel::PIO1_0, is_data);
        }
        pio_pad(PB6, pac::io::vals::Gpio0ctrlFuncsel::PIO2_0, false);
        pio_pad(DIR_PB6, pac::io::vals::Gpio0ctrlFuncsel::PIO2_0, false);
        this.attach();
        Ok(this)
    }

    // ---- bus words ----

    fn push(&mut self, word: u32) {
        while self.bus.tx().full() {}
        self.bus.tx().push(word);
    }

    fn pull(&mut self) -> u32 {
        while self.bus.rx().empty() {}
        self.bus.rx().pull()
    }

    /// Enable the shifters with the bus idle and the data pins as inputs.
    fn attach(&mut self) {
        if self.attached {
            return;
        }
        self.push(W_DIRS | DIRS_OUT);
        self.push(CTRL_IDLE);
        self.data_out = false;
        sio_hi_output(SHIFT_OE, false);
        self.attached = true;
    }

    /// Park the bus so a cartridge can be inserted or removed safely.
    pub fn release(&mut self) {
        sio_hi_output(SHIFT_OE, true);
        self.push(W_DIRS);
        self.data_out = false;
        self.attached = false;
    }

    /// Data pins: RP2350 outputs behind U6 pointing at the cartridge, or inputs.
    fn set_data_out(&mut self, out: bool) {
        if self.data_out == out {
            return;
        }
        if out {
            self.push(CTRL_IDLE | (1 << DIR_D)); // shifter first
            self.push(W_DIRS | DIRS_OUT | DATA_MASK); // then the pins
        } else {
            self.push(W_DIRS | DIRS_OUT); // pins first
            self.push(CTRL_IDLE); // then the shifter
        }
        self.data_out = out;
    }

    /// One read cycle at a raw (already scrambled where required) bus address.
    pub fn bus_read(&mut self, bus_addr: u16) -> u8 {
        self.attach();
        self.set_data_out(false);
        let a = addr_bits(bus_addr);
        self.push((CTRL_IDLE & !((1 << OE) | (1 << CE))) | a | W_SAMPLE);
        self.push(CTRL_IDLE | a);
        gather_data(self.pull())
    }

    /// One write cycle. CE#-controlled: address and data are latched when HALT and CE rise.
    pub fn bus_write(&mut self, bus_addr: u16, bus_data: u8) {
        self.attach();
        self.set_data_out(true);
        let img = (CTRL_IDLE & !(1 << RW)) | (1 << DIR_D) | addr_bits(bus_addr) | DATA_LUT[bus_data as usize];
        self.push(img); // R/W low with address and data
        self.push(img & !((1 << HALT) | (1 << CE))); // flash /CE low (needs programmer mode)
        self.push(img); // rising /CE latches address + data
        self.push(img | (1 << RW));
    }

    /// Write a flash *command* (address and data both scrambled).
    fn cmd_write(&mut self, flash_addr: u16, value: u8) {
        self.bus_write(addr_to_bus(flash_addr), data_to_bus(value));
    }

    fn unlock(&mut self) {
        self.cmd_write(UNLOCK_A, CMD_UNLOCK1);
        self.cmd_write(UNLOCK_B, CMD_UNLOCK2);
    }

    // ---- SST39SF040 ----

    /// Read the software ID. Returns (manufacturer, device).
    pub fn read_id(&mut self) -> (u8, u8) {
        self.unlock();
        self.cmd_write(UNLOCK_A, CMD_ID_ENTRY);
        let mfg = bus_to_data(self.bus_read(addr_to_bus(0)));
        let dev = bus_to_data(self.bus_read(addr_to_bus(1)));
        self.unlock();
        self.cmd_write(UNLOCK_A, CMD_ID_EXIT);
        (mfg, dev)
    }

    pub fn check_id(&mut self) -> Result<(), CartError> {
        let (mfg, dev) = self.read_id();
        if mfg == MFG_SST && dev == DEV_39SF040 {
            Ok(())
        } else {
            Err(CartError::WrongId { mfg, dev })
        }
    }

    /// Poll DQ7 until it matches the written value's bit 7. Flash DQ7 sits on
    /// bus bit 7 (the data scrambler maps 7->7), so the comparison is direct.
    fn poll_dq7(&mut self, bus_addr: u16, expect_bus_data: u8) -> Result<(), u8> {
        let want = expect_bus_data & 0x80;
        let mut read = 0;
        for _ in 0..200 {
            read = self.bus_read(bus_addr);
            if read & 0x80 == want {
                return Ok(());
            }
        }
        Err(read)
    }

    /// Program one byte of ROM payload. `addr` is the raw cartridge address; the
    /// payload is deliberately *not* scrambled (see the module docs).
    pub fn program_byte(&mut self, addr: u16, value: u8) -> Result<(), CartError> {
        self.unlock();
        self.cmd_write(UNLOCK_A, CMD_PROGRAM);
        self.bus_write(addr, value);
        self.poll_dq7(addr, value)
            .map_err(|read| CartError::ProgramTimeout { addr: addr as u32, read })
    }

    /// Program a block and verify it by reading back. Returns the first mismatch.
    pub fn program_block(&mut self, base: u16, data: &[u8]) -> Result<(), CartError> {
        for (i, &b) in data.iter().enumerate() {
            self.program_byte(base.wrapping_add(i as u16), b)?;
        }
        for (i, &b) in data.iter().enumerate() {
            let a = base.wrapping_add(i as u16);
            let r = self.bus_read(a);
            if r != b {
                return Err(CartError::Verify {
                    addr: a as u32,
                    wrote: b,
                    read: r,
                });
            }
        }
        Ok(())
    }

    pub async fn sector_erase(&mut self, flash_addr: u32) -> Result<(), CartError> {
        let sa = ((flash_addr / SECTOR_SIZE) * SECTOR_SIZE) as u16;
        self.unlock();
        self.cmd_write(UNLOCK_A, CMD_ERASE);
        self.unlock();
        self.cmd_write(sa, CMD_SECTOR_ERASE);
        // Erase leaves 0xFF, so DQ7 reads 1 when done.
        for _ in 0..100 {
            Timer::after(Duration::from_millis(1)).await;
            if self.bus_read(addr_to_bus(sa)) & 0x80 != 0 {
                return Ok(());
            }
        }
        Err(CartError::EraseTimeout)
    }

    pub async fn chip_erase(&mut self) -> Result<(), CartError> {
        self.unlock();
        self.cmd_write(UNLOCK_A, CMD_ERASE);
        self.unlock();
        self.cmd_write(UNLOCK_A, CMD_CHIP_ERASE);
        for _ in 0..500 {
            Timer::after(Duration::from_millis(1)).await;
            if self.bus_read(0) & 0x80 != 0 {
                return Ok(());
            }
        }
        Err(CartError::EraseTimeout)
    }

    // ---- PB6 link ----

    /// PB6 input, DIR_PB6 output low: the cartridge drives the RP2350 side.
    fn pb6_park(&mut self) {
        unsafe {
            self.pb6.exec_instr(PB6_SET_PINDIRS_IN);
            self.pb6.exec_instr(PB6_SET_PINS_LOW);
        }
    }

    /// Restart the PB6 state machine after a missing reply.
    fn pb6_restart(&mut self) {
        self.pb6.set_enable(false);
        self.pb6.restart();
        self.pb6.clear_fifos();
        self.pb6.set_config(&self.pb6_cfg);
        self.pb6_park();
        self.pb6.set_enable(true);
    }

    /// Queue one frame for the PB6 state machine.
    fn pb6_frame(&mut self, cmd: u8, arg: u8) {
        self.pb6.tx().push(39);
        self.pb6.tx().push(u32::from_be_bytes([b'V', b'X', cmd, arg]));
        self.pb6.tx().push(((cmd ^ arg ^ PIC_CHECK) as u32) << 24);
    }

    /// Send one frame to the cartridge PIC and return the width of each of the
    /// 8 high pulses of its reply in us, 0 = none.
    pub async fn pic_command(&mut self, cmd: u8, arg: u8) -> [u16; 8] {
        self.attach();
        self.pb6_frame(cmd, arg);
        let mut widths = [0u16; 8];
        let t0 = Instant::now();
        for w in widths.iter_mut() {
            loop {
                if let Some(n) = self.pb6.rx().try_pull() {
                    *w = n.min(0xFFFF) as u16;
                    break;
                }
                // an EEPROM write stalls the PIC for about 5 ms before it answers
                if t0.elapsed() > Duration::from_millis(50) {
                    self.pb6_restart();
                    return widths;
                }
            }
        }
        widths
    }

    /// Send a frame and sample PB6 once per microsecond, 8 samples per byte LSB first.
    pub fn pic_trace(&mut self, cmd: u8, arg: u8, out: &mut [u8]) -> Result<(), &'static str> {
        self.attach();
        self.set_data_out(false);
        self.trace.set_enable(false);
        self.trace.restart();
        self.trace.clear_fifos();
        self.trace.rx().stalled();
        self.trace.set_enable(true);
        self.pb6_frame(cmd, arg);
        let t0 = Instant::now();
        let mut result = Ok(());
        'words: for word in out.chunks_mut(4) {
            let v = loop {
                if let Some(v) = self.trace.rx().try_pull() {
                    break v;
                }
                if t0.elapsed() > TRACE_TIMEOUT {
                    result = Err("PB6 sampler delivered no data");
                    break 'words;
                }
            };
            for (b, s) in word.iter_mut().zip(v.to_le_bytes()) {
                *b = s;
            }
        }
        self.trace.set_enable(false);
        // a full FIFO stops the sampler and leaves a gap in the samples
        if self.trace.rx().stalled() {
            result = Err("PB6 samples lost");
        }
        self.pb6_restart();
        result
    }

    /// Put the cartridge into programmer mode. Until this is done the cartridge's
    /// CLC gates flash /CE so that writes are impossible - this is the cartridge's
    /// write protection, not an optional step.
    pub async fn enable_programmer(&mut self, on: bool) -> [u16; 8] {
        self.pic_command(PIC_CMD_ENABLE_PROGRAMMER, on as u8).await
    }

    /// Select one of 16 banks of 32 KiB (flash A15..A18).
    pub async fn set_bank(&mut self, bank: u8) -> [u16; 8] {
        self.pic_command(PIC_CMD_SET_BANK, bank & 0x0f).await
    }
}
