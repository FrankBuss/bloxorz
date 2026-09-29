//! The 128 MB external flash array: 4 x W25Q256JV on one shared QSPI bus.
//!
//! Chip select comes from the QMI's CS1 (GPIO0, one of the four QMI-CS1-capable
//! pins) and is routed by the SN74LVC138A decoder to one of the four devices;
//! GPIO37 = SEL0 and GPIO36 = SEL1 pick which. So asserting CS selects exactly
//! one chip, chosen by the two bank bits set beforehand.
//!
//! Erase and program are issued through QMI **direct mode** (datasheet 12.14.5):
//! direct mode disconnects the XIP window and turns the QSPI bus into a plain
//! SPI port driven through DIRECT_TX / DIRECT_RX. While direct mode is enabled,
//! the XIP window is dead - and the RP2354B's internal stacked flash, which the
//! firmware executes from, is QMI CS0 on the same controller. So every
//! transaction runs from RAM (`transact`, placed in `.data` and copied there by
//! cortex-m-rt at boot) with interrupts disabled, and leaves direct mode again
//! before returning. Nothing in between may call into flash.
//!
//! Each device is 32 MiB, which needs more than 24 address bits, so every device
//! is put into 4-byte address mode at init and only 4-byte opcodes are used.

#![allow(dead_code)]

use crate::pins;
use embassy_rp::pac;
use embassy_time::{Duration, Timer};

pub const CHIP_SIZE: u32 = 32 * 1024 * 1024;
pub const CHIP_COUNT: u32 = 4;
pub const TOTAL_SIZE: u64 = (CHIP_SIZE as u64) * (CHIP_COUNT as u64);
pub const PAGE_SIZE: u32 = 256;
pub const SECTOR_SIZE: u32 = 4096;
pub const BLOCK_SIZE: u32 = 64 * 1024;

const CMD_WRITE_ENABLE: u8 = 0x06;
const CMD_READ_STATUS1: u8 = 0x05;
const CMD_READ_4B: u8 = 0x13;
const CMD_PAGE_PROGRAM_4B: u8 = 0x12;
const CMD_SECTOR_ERASE_4B: u8 = 0x21;
const CMD_BLOCK_ERASE_4B: u8 = 0xDC;
const CMD_CHIP_ERASE: u8 = 0xC7;
const CMD_JEDEC_ID: u8 = 0x9F;
const CMD_ENTER_4B: u8 = 0xB7;

const STATUS_BUSY: u8 = 0x01;

/// Direct-mode SCK = clk_sys / DIRECT_CLKDIV.
const DIRECT_CLKDIV: u8 = 30;

#[derive(Copy, Clone, PartialEq, Debug)]
pub enum FlashError {
    Timeout,
    Range,
    /// JEDEC ID was not Winbond W25Q256 (EF 40 19).
    WrongId { bank: u8, id: [u8; 3] },
}

// ---------------------------------------------------------------------------
// QMI direct mode
// ---------------------------------------------------------------------------

/// Route GPIO0 to QMI CS1 and make the decoder's bank-select pins outputs.
fn pins_init() {
    pac::IO_BANK0
        .gpio(pins::FLASH_CS as usize)
        .ctrl()
        .write(|w| w.set_funcsel(pac::io::vals::Gpio0ctrlFuncsel::XIP_SS_N_1 as u8));
    for gpio in [pins::FLASH_CS, pins::FLASH_SEL0, pins::FLASH_SEL1] {
        pac::PADS_BANK0.gpio(gpio as usize).write(|w| {
            w.set_ie(true);
            w.set_od(false);
        });
    }
    for gpio in [pins::FLASH_SEL0, pins::FLASH_SEL1] {
        pac::IO_BANK0
            .gpio(gpio as usize)
            .ctrl()
            .write(|w| w.set_funcsel(pac::io::vals::Gpio0ctrlFuncsel::SIOB_PROC_0 as u8));
    }
    let sel = (1u32 << (pins::FLASH_SEL0 - 32)) | (1u32 << (pins::FLASH_SEL1 - 32));
    pac::SIO.gpio_out(1).value_clr().write_value(sel);
    pac::SIO.gpio_oe(1).value_set().write_value(sel);
}

/// Select which of the four devices the decoder will route CS to.
fn select_bank(bank: u8) {
    let sel0 = 1u32 << (pins::FLASH_SEL0 - 32);
    let sel1 = 1u32 << (pins::FLASH_SEL1 - 32);
    if bank & 1 != 0 {
        pac::SIO.gpio_out(1).value_set().write_value(sel0);
    } else {
        pac::SIO.gpio_out(1).value_clr().write_value(sel0);
    }
    if bank & 2 != 0 {
        pac::SIO.gpio_out(1).value_set().write_value(sel1);
    } else {
        pac::SIO.gpio_out(1).value_clr().write_value(sel1);
    }
    // Let the decoder settle before CS is asserted.
    cortex_m::asm::delay(150);
}

/// Push one byte, return the byte clocked back in.
#[inline(always)]
fn xfer(b: u8) -> u8 {
    pac::QMI.direct_tx().write(|w| {
        w.set_data(b as u16);
        w.set_dwidth(false);
    });
    while pac::QMI.direct_csr().read().busy() {}
    pac::QMI.direct_rx().read().0 as u8
}

/// Command byte plus optional 4-byte address, passed by value: a `&[u8]`
/// literal would live in flash `.rodata`, unreadable inside `transact`.
#[derive(Copy, Clone)]
struct Head {
    bytes: [u8; 5],
    len: usize,
}

fn cmd(cmd: u8) -> Head {
    Head { bytes: [cmd, 0, 0, 0, 0], len: 1 }
}

/// Command byte followed by a 4-byte address.
fn cmd_addr4(cmd: u8, addr: u32) -> Head {
    let a = addr.to_be_bytes();
    Head { bytes: [cmd, a[0], a[1], a[2], a[3]], len: 5 }
}

/// One SPI transaction on CS1 with the bank already selected: `head` and `out`
/// are clocked out, then `inp` is clocked in, CS asserted throughout.
///
/// Runs from RAM with interrupts off, because the firmware's own flash is
/// unreachable while direct mode is enabled. Everything it calls must inline,
/// and `out` must be in RAM too - every caller passes the USB transfer buffer.
#[inline(never)]
#[unsafe(link_section = ".data.ram_func")]
fn transact(head: Head, out: &[u8], inp: &mut [u8]) {
    let primask = cortex_m::register::primask::read();
    cortex_m::interrupt::disable();

    pac::QMI.direct_csr().modify(|w| {
        w.set_clkdiv(DIRECT_CLKDIV);
        w.set_en(true);
    });
    while pac::QMI.direct_csr().read().busy() {}
    pac::QMI.direct_csr().modify(|w| w.set_assert_cs1n(true));
    for &b in head.bytes.iter().take(head.len) {
        xfer(b);
    }
    for &b in out {
        xfer(b);
    }
    for b in inp.iter_mut() {
        *b = xfer(0);
    }
    while pac::QMI.direct_csr().read().busy() {}
    pac::QMI.direct_csr().modify(|w| w.set_assert_cs1n(false));
    pac::QMI.direct_csr().modify(|w| w.set_en(false));

    if primask.is_active() {
        unsafe { cortex_m::interrupt::enable() };
    }
}

fn cmd_only(bank: u8, cmd: u8) {
    select_bank(bank);
    transact(self::cmd(cmd), &[], &mut []);
}

fn write_enable(bank: u8) {
    cmd_only(bank, CMD_WRITE_ENABLE);
}

fn status(bank: u8) -> u8 {
    let mut s = [0u8; 1];
    select_bank(bank);
    transact(cmd(CMD_READ_STATUS1), &[], &mut s);
    s[0]
}

async fn wait_ready(bank: u8, timeout_ms: u64) -> Result<(), FlashError> {
    for _ in 0..timeout_ms {
        if status(bank) & STATUS_BUSY == 0 {
            return Ok(());
        }
        Timer::after(Duration::from_millis(1)).await;
    }
    Err(FlashError::Timeout)
}

// ---------------------------------------------------------------------------
// public API - addresses are flat across the whole 128 MB array
// ---------------------------------------------------------------------------

fn split(addr: u64) -> Result<(u8, u32), FlashError> {
    if addr >= TOTAL_SIZE {
        return Err(FlashError::Range);
    }
    Ok(((addr / CHIP_SIZE as u64) as u8, (addr % CHIP_SIZE as u64) as u32))
}

pub fn jedec_id(bank: u8) -> [u8; 3] {
    let mut id = [0u8; 3];
    select_bank(bank);
    transact(cmd(CMD_JEDEC_ID), &[], &mut id);
    id
}

/// Put every device into 4-byte address mode and check that it answers.
pub fn init() -> Result<(), FlashError> {
    pins_init();
    for bank in 0..CHIP_COUNT as u8 {
        let id = jedec_id(bank);
        // Winbond = 0xEF, W25Q256JV = 0x40 0x19.
        if id[0] != 0xEF {
            return Err(FlashError::WrongId { bank, id });
        }
        cmd_only(bank, CMD_ENTER_4B);
    }
    Ok(())
}

/// Longest stretch read in one transaction, to bound the time interrupts are off.
const READ_CHUNK: usize = 256;

pub fn read(addr: u64, buf: &mut [u8]) -> Result<(), FlashError> {
    let (bank, off) = split(addr)?;
    if off as u64 + buf.len() as u64 > CHIP_SIZE as u64 {
        // Keep reads inside one device; the caller splits at boundaries.
        return Err(FlashError::Range);
    }
    select_bank(bank);
    let mut a = off;
    for chunk in buf.chunks_mut(READ_CHUNK) {
        transact(cmd_addr4(CMD_READ_4B, a), &[], chunk);
        a += chunk.len() as u32;
    }
    Ok(())
}

/// Program one page (<= 256 bytes, must not cross a page boundary).
pub async fn program_page(addr: u64, data: &[u8]) -> Result<(), FlashError> {
    let (bank, off) = split(addr)?;
    write_enable(bank);
    transact(cmd_addr4(CMD_PAGE_PROGRAM_4B, off), data, &mut []);
    wait_ready(bank, 10).await
}

/// Program an arbitrary span, splitting at page and device boundaries.
pub async fn write(addr: u64, data: &[u8]) -> Result<(), FlashError> {
    let mut a = addr;
    let mut rest = data;
    while !rest.is_empty() {
        let page_left = PAGE_SIZE - (a % PAGE_SIZE as u64) as u32;
        let n = core::cmp::min(page_left as usize, rest.len());
        program_page(a, &rest[..n]).await?;
        a += n as u64;
        rest = &rest[n..];
    }
    Ok(())
}

/// Erase 64 KiB blocks covering `[addr, addr+len)`.
pub async fn erase(addr: u64, len: u64) -> Result<(), FlashError> {
    let first = addr / BLOCK_SIZE as u64;
    let last = (addr + len).div_ceil(BLOCK_SIZE as u64);
    for blk in first..last {
        let a = blk * BLOCK_SIZE as u64;
        let (bank, off) = split(a)?;
        write_enable(bank);
        transact(cmd_addr4(CMD_BLOCK_ERASE_4B, off), &[], &mut []);
        // W25Q256JV: 64 KiB block erase is typically 150 ms, 2 s worst case.
        wait_ready(bank, 2500).await?;
    }
    Ok(())
}
