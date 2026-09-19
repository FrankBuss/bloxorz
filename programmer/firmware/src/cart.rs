//! Vectrex cartridge bus driver and SST39SF040 flash programming.
//!
//! # Why this is not PIO
//!
//! The bus could be driven from PIO, but there is no point: the SST39SF040
//! needs ~14 us (20 us max) per programmed byte, which is three orders of
//! magnitude more than a bus cycle. The limit is the flash, not the CPU, so the
//! cycles are driven from SIO with explicit delays. PIO stays free for the I2S
//! output.
//!
//! # Address and data scrambling
//!
//! The cartridge PCB routes the Vectrex bus to the flash with permuted address
//! and data lines. Verified against the original `receiver.c`:
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
//! wiring, so the image is correct. Getting this backwards silently corrupts
//! every command sequence.
//!
//! # Write cycles are CE#-controlled
//!
//! `/WE` falls before `/CE` and `/CE` rises before `/WE`, so address and data are
//! latched on the **rising edge of HALT** (which is what asserts flash `/CE`
//! once the cartridge PIC has been put into programmer mode). `/OE` must stay
//! high for the whole write.

use crate::pins::*;
use embassy_rp::pac;
use embassy_time::{Duration, Timer};

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

/// One-wire control link to the cartridge's PIC16F18323.
const PIC_ID: u8 = b'V';
pub const PIC_CMD_SET_BANK: u8 = 5;
pub const PIC_CMD_ENABLE_PROGRAMMER: u8 = 6;

#[derive(Copy, Clone, PartialEq, Debug)]
pub enum CartError {
    /// DQ7 never settled - no flash, wrong part, or programmer mode not enabled.
    ProgramTimeout,
    EraseTimeout,
    /// Read-back did not match. Carries the address and what was read.
    Verify { addr: u32, wrote: u8, read: u8 },
    WrongId { mfg: u8, dev: u8 },
}

// ---------------------------------------------------------------------------
// raw pin access
// ---------------------------------------------------------------------------

#[inline(always)]
fn set_mask(m: u32) {
    pac::SIO.gpio_out(0).value_set().write_value(m);
}
#[inline(always)]
fn clr_mask(m: u32) {
    pac::SIO.gpio_out(0).value_clr().write_value(m);
}
#[inline(always)]
fn read_raw() -> u32 {
    pac::SIO.gpio_in(0).read()
}
#[inline(always)]
fn hi_set(gpio: u8) {
    pac::SIO.gpio_out(1).value_set().write_value(1 << (gpio - 32));
}
#[inline(always)]
fn hi_clr(gpio: u8) {
    pac::SIO.gpio_out(1).value_clr().write_value(1 << (gpio - 32));
}

/// ~n nanoseconds at 150 MHz, rounded up. Bus setup/hold times on the
/// SST39SF040 are 30-40 ns; the level shifters add ~4 ns.
#[inline(always)]
fn delay_ns(ns: u32) {
    cortex_m::asm::delay((ns * 150).div_ceil(1000).max(1));
}

/// Data bus direction. `true` = RP2350 drives (write), `false` = high-Z (read).
#[inline(always)]
fn data_out(enable: bool) {
    if enable {
        set_mask(1 << DIR_D);
        pac::SIO.gpio_oe(0).value_set().write_value(DATA_MASK);
    } else {
        pac::SIO.gpio_oe(0).value_clr().write_value(DATA_MASK);
        clr_mask(1 << DIR_D);
    }
    // 74ALVC164245 direction change plus bus turnaround.
    delay_ns(50);
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
// bus cycles
// ---------------------------------------------------------------------------

/// Drive A0..A14 (15 bits) using the scatter tables, leaving control bits alone.
#[inline(always)]
fn drive_addr(bus_addr: u16) {
    let m = ADDR_LO_LUT[(bus_addr & 0xff) as usize] | ADDR_HI_LUT[((bus_addr >> 8) & 0x7f) as usize];
    let all = ADDR_LO_LUT[0xff] | ADDR_HI_LUT[0x7f];
    clr_mask(all & !m);
    set_mask(m);
}

#[inline(always)]
fn drive_data(bus_data: u8) {
    let m = DATA_LUT[bus_data as usize];
    clr_mask(DATA_MASK & !m);
    set_mask(m);
}

/// Idle state: HALT, /OE, CE, R/W, CART, NMI all high (inactive).
#[inline(always)]
fn bus_idle() {
    set_mask((1 << HALT) | (1 << OE) | (1 << CE) | (1 << RW) | (1 << CART) | (1 << NMI));
}

/// One read cycle at a raw (already scrambled where required) bus address.
pub fn bus_read(bus_addr: u16) -> u8 {
    data_out(false);
    bus_idle();
    drive_addr(bus_addr);
    delay_ns(60); // address setup
    clr_mask(1 << OE); // /OE low -> cartridge CLC2 asserts flash /CE
    delay_ns(120); // tOE 40 ns + shifter delay, generous
    let raw = read_raw();
    set_mask(1 << OE);
    delay_ns(40);
    gather_data(raw)
}

/// One write cycle. CE#-controlled: data and address are latched when HALT rises.
pub fn bus_write(bus_addr: u16, bus_data: u8) {
    data_out(true);
    bus_idle();
    drive_addr(bus_addr);
    drive_data(bus_data);
    delay_ns(60); // address/data setup before /WE
    clr_mask(1 << RW); // R/W low = flash /WE low
    delay_ns(40);
    clr_mask(1 << HALT); // HALT low -> flash /CE low (needs programmer mode)
    delay_ns(80); // tWP >= 40 ns
    set_mask(1 << HALT); // rising /CE latches address + data
    delay_ns(40); // tCH / data hold
    set_mask(1 << RW);
    delay_ns(40);
}

/// Write a flash *command* (address and data both scrambled).
fn cmd_write(flash_addr: u16, value: u8) {
    bus_write(addr_to_bus(flash_addr), data_to_bus(value));
}

fn unlock() {
    cmd_write(UNLOCK_A, CMD_UNLOCK1);
    cmd_write(UNLOCK_B, CMD_UNLOCK2);
}

// ---------------------------------------------------------------------------
// SST39SF040 operations
// ---------------------------------------------------------------------------

/// Read the software ID. Returns (manufacturer, device).
pub fn read_id() -> (u8, u8) {
    unlock();
    cmd_write(UNLOCK_A, CMD_ID_ENTRY);
    delay_ns(1000);
    let mfg = bus_to_data(bus_read(addr_to_bus(0)));
    let dev = bus_to_data(bus_read(addr_to_bus(1)));
    unlock();
    cmd_write(UNLOCK_A, CMD_ID_EXIT);
    delay_ns(1000);
    (mfg, dev)
}

pub fn check_id() -> Result<(), CartError> {
    let (mfg, dev) = read_id();
    if mfg == MFG_SST && dev == DEV_39SF040 {
        Ok(())
    } else {
        Err(CartError::WrongId { mfg, dev })
    }
}

/// Poll DQ7 until it matches the written value's bit 7, or time out.
///
/// The old PIC firmware just waited a fixed 25 us per byte. DQ7 polling is both
/// faster (14 us typical) and an actual completion check. Flash DQ7 sits on bus
/// bit 7 (the data scrambler maps 7->7), so the comparison is direct.
fn poll_dq7(bus_addr: u16, expect_bus_data: u8, timeout_us: u32) -> bool {
    let want = expect_bus_data & 0x80;
    let mut waited = 0;
    loop {
        if bus_read(bus_addr) & 0x80 == want {
            return true;
        }
        delay_ns(1000);
        waited += 1;
        if waited > timeout_us {
            return false;
        }
    }
}

/// Program one byte of ROM payload. `addr` is the raw cartridge address; the
/// payload is deliberately *not* scrambled (see the module docs).
pub fn program_byte(addr: u16, value: u8) -> Result<(), CartError> {
    unlock();
    cmd_write(UNLOCK_A, CMD_PROGRAM);
    bus_write(addr, value);
    if !poll_dq7(addr, value, 100) {
        return Err(CartError::ProgramTimeout);
    }
    Ok(())
}

/// Program a block and verify it by reading back. Returns the first mismatch.
pub fn program_block(base: u16, data: &[u8]) -> Result<(), CartError> {
    for (i, &b) in data.iter().enumerate() {
        let a = base.wrapping_add(i as u16);
        program_byte(a, b)?;
    }
    for (i, &b) in data.iter().enumerate() {
        let a = base.wrapping_add(i as u16);
        let r = bus_read(a);
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

pub async fn sector_erase(flash_addr: u32) -> Result<(), CartError> {
    let sa = ((flash_addr / SECTOR_SIZE) * SECTOR_SIZE) as u16;
    unlock();
    cmd_write(UNLOCK_A, CMD_ERASE);
    unlock();
    cmd_write(sa, CMD_SECTOR_ERASE);
    // Erase leaves 0xFF, so DQ7 reads 1 when done.
    for _ in 0..100 {
        Timer::after(Duration::from_millis(1)).await;
        if bus_read(sa) & 0x80 != 0 {
            return Ok(());
        }
    }
    Err(CartError::EraseTimeout)
}

pub async fn chip_erase() -> Result<(), CartError> {
    unlock();
    cmd_write(UNLOCK_A, CMD_ERASE);
    unlock();
    cmd_write(UNLOCK_A, CMD_CHIP_ERASE);
    for _ in 0..500 {
        Timer::after(Duration::from_millis(1)).await;
        if bus_read(0) & 0x80 != 0 {
            return Ok(());
        }
    }
    Err(CartError::EraseTimeout)
}

// ---------------------------------------------------------------------------
// PB6 one-wire link to the cartridge PIC
// ---------------------------------------------------------------------------
//
// Open-drain style: drive low, release to let the 10k pull-up make it high.
// Bit cell 30 us: '1' = ~10 us high then ~20 us low, '0' = ~5 us high then
// ~25 us low. Frame = 'V', command, argument, MSB first, after a >=5 us low
// start condition. The cartridge replies on the same wire, but neither the old
// programmer nor this one reads it.

#[inline(always)]
fn pb6_drive_low() {
    hi_set(DIR_PB6); // shifter drives RP -> cartridge
    clr_mask(1 << PB6);
    pac::SIO.gpio_oe(0).value_set().write_value(1 << PB6);
}

#[inline(always)]
fn pb6_release() {
    set_mask(1 << PB6);
}

fn pb6_bit(one: bool) {
    pb6_release();
    delay_ns(if one { 10_000 } else { 5_000 });
    clr_mask(1 << PB6);
    delay_ns(if one { 20_000 } else { 25_000 });
}

/// Send one 3-byte frame to the cartridge PIC and give it time to act.
pub async fn pic_command(cmd: u8, arg: u8) {
    pb6_drive_low();
    delay_ns(21_000); // preamble / start condition
    for byte in [PIC_ID, cmd, arg] {
        for bit in (0..8).rev() {
            pb6_bit(byte >> bit & 1 != 0);
        }
    }
    pb6_release();
    delay_ns(100_000); // trailer
    pac::SIO.gpio_oe(0).value_clr().write_value(1 << PB6);
    hi_clr(DIR_PB6);
    // The PIC needs time to apply the command; it answers on the wire but the
    // reply is not read (the original host tool slept 100 ms here too).
    Timer::after(Duration::from_millis(100)).await;
}

/// Put the cartridge into programmer mode. Until this is done the cartridge's
/// CLC gates flash /CE so that writes are impossible - this is the cartridge's
/// write protection, not an optional step.
pub async fn enable_programmer(on: bool) {
    pic_command(PIC_CMD_ENABLE_PROGRAMMER, on as u8).await;
}

/// Select one of 16 banks of 32 KiB (flash A15..A18).
pub async fn set_bank(bank: u8) {
    pic_command(PIC_CMD_SET_BANK, bank & 0x0f).await;
}

// ---------------------------------------------------------------------------
// init
// ---------------------------------------------------------------------------

/// Claim every cartridge pin for SIO and put the bus in its idle state.
pub fn init() {
    for gpio in 0..=34u8 {
        let is_bus = (1u64 << gpio) & ((ADDR_CTRL_MASK as u64) | (DATA_MASK as u64) | (1 << PB6)) != 0;
        if is_bus || gpio == DIR_D || gpio == DIR_PB6 || gpio == SHIFT_OE {
            pac::IO_BANK0
                .gpio(gpio as usize)
                .ctrl()
                .write(|w| w.set_funcsel(pac::io::vals::Gpio0ctrlFuncsel::SIOB_PROC_0 as u8));
            pac::PADS_BANK0.gpio(gpio as usize).write(|w| {
                w.set_ie(true);
                w.set_od(false);
            });
        }
    }
    // Address/control out, data in, direction pins out.
    pac::SIO.gpio_oe(0).value_set().write_value(ADDR_CTRL_MASK | (1 << DIR_D));
    pac::SIO.gpio_oe(0).value_clr().write_value(DATA_MASK);
    pac::SIO.gpio_oe(1).value_set().write_value((1 << (DIR_PB6 - 32)) | (1 << (SHIFT_OE - 32)));
    bus_idle();
    clr_mask(1 << DIR_D);
    hi_clr(DIR_PB6);
    // SHIFT_OE is active low: low = shifters enabled.
    hi_clr(SHIFT_OE);
}

/// Park the bus so a cartridge can be inserted or removed safely.
pub fn release() {
    hi_set(SHIFT_OE); // shifters to high-Z
    pac::SIO.gpio_oe(0).value_clr().write_value(ADDR_CTRL_MASK | DATA_MASK);
}
