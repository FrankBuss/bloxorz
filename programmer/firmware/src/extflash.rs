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
//! the XIP window must not be touched - on this board that is fine because the
//! firmware itself runs from the RP2354B's *internal* stacked flash, not from
//! this array.
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

fn direct_enable(on: bool) {
    pac::QMI.direct_csr().modify(|w| w.set_en(on));
    if on {
        while pac::QMI.direct_csr().read().busy() {}
    }
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

fn cs_assert() {
    pac::QMI.direct_csr().modify(|w| w.set_assert_cs1n(true));
}

fn cs_release() {
    while pac::QMI.direct_csr().read().busy() {}
    pac::QMI.direct_csr().modify(|w| w.set_assert_cs1n(false));
}

/// Push one byte, return the byte clocked back in.
fn xfer(b: u8) -> u8 {
    while !pac::QMI.direct_csr().read().txempty() {}
    pac::QMI.direct_tx().write(|w| {
        w.set_data(b as u16);
        w.set_dwidth(false);
    });
    while pac::QMI.direct_csr().read().busy() {}
    pac::QMI.direct_rx().read().0 as u8
}

fn cmd_only(bank: u8, cmd: u8) {
    select_bank(bank);
    cs_assert();
    xfer(cmd);
    cs_release();
}

fn write_enable(bank: u8) {
    cmd_only(bank, CMD_WRITE_ENABLE);
}

fn status(bank: u8) -> u8 {
    select_bank(bank);
    cs_assert();
    xfer(CMD_READ_STATUS1);
    let s = xfer(0);
    cs_release();
    s
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

fn send_addr4(addr: u32) {
    xfer((addr >> 24) as u8);
    xfer((addr >> 16) as u8);
    xfer((addr >> 8) as u8);
    xfer(addr as u8);
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
    select_bank(bank);
    cs_assert();
    xfer(CMD_JEDEC_ID);
    let id = [xfer(0), xfer(0), xfer(0)];
    cs_release();
    id
}

/// Put every device into 4-byte address mode and check that it answers.
pub fn init() -> Result<(), FlashError> {
    direct_enable(true);
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

pub fn read(addr: u64, buf: &mut [u8]) -> Result<(), FlashError> {
    let (bank, off) = split(addr)?;
    if off as u64 + buf.len() as u64 > CHIP_SIZE as u64 {
        // Keep reads inside one device; the caller splits at boundaries.
        return Err(FlashError::Range);
    }
    select_bank(bank);
    cs_assert();
    xfer(CMD_READ_4B);
    send_addr4(off);
    for b in buf.iter_mut() {
        *b = xfer(0);
    }
    cs_release();
    Ok(())
}

/// Program one page (<= 256 bytes, must not cross a page boundary).
pub async fn program_page(addr: u64, data: &[u8]) -> Result<(), FlashError> {
    let (bank, off) = split(addr)?;
    write_enable(bank);
    select_bank(bank);
    cs_assert();
    xfer(CMD_PAGE_PROGRAM_4B);
    send_addr4(off);
    for &b in data {
        xfer(b);
    }
    cs_release();
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
        select_bank(bank);
        cs_assert();
        xfer(CMD_BLOCK_ERASE_4B);
        send_addr4(off);
        cs_release();
        // W25Q256JV: 64 KiB block erase is typically 150 ms, 2 s worst case.
        wait_ready(bank, 2500).await?;
    }
    Ok(())
}
