//! Host protocol: binary, framed, CRC32-checked.
//!
//! The old programmer sent ASCII hex with a one-byte XOR checksum and echoed
//! every byte twice, so 256 payload bytes cost 1541 bytes on the wire and one
//! round trip. Here a frame carries up to 128 KiB and the round trip happens
//! once per block.
//!
//! ```text
//! request   A5 5A | cmd:u8  | len:u32le | payload[len] | crc32:u32le
//! response  5A A5 | stat:u8 | len:u32le | payload[len] | crc32:u32le
//! ```
//!
//! The CRC is the standard IEEE CRC-32 (identical to Python's `zlib.crc32`) over
//! the command/status byte, the length field and the payload. The two sync bytes
//! differ per direction so a host that loses framing can resynchronise by
//! scanning for them.

#![allow(dead_code)]

pub const SYNC_REQ: [u8; 2] = [0xA5, 0x5A];
pub const SYNC_RSP: [u8; 2] = [0x5A, 0xA5];

/// Largest payload in either direction: one cartridge block.
pub const MAX_PAYLOAD: usize = 128 * 1024;

#[derive(Copy, Clone, PartialEq, Debug)]
#[repr(u8)]
pub enum Cmd {
    Ping = 0x01,
    Info = 0x02,

    CartId = 0x10,
    CartEnable = 0x11,
    CartBank = 0x12,
    CartEraseChip = 0x13,
    CartEraseSector = 0x14,
    CartWrite = 0x15,
    CartRead = 0x16,
    CartPic = 0x17,

    FlashId = 0x20,
    FlashErase = 0x21,
    FlashWrite = 0x22,
    FlashRead = 0x23,

    AudioLoadSram = 0x30,
    AudioPlaySram = 0x31,
    AudioPlayFlash = 0x32,
    AudioStop = 0x33,
    AudioCodecInit = 0x34,
    AudioVolume = 0x35,
    AudioCodecRead = 0x36,
    AudioCodecWrite = 0x37,

    Bootsel = 0x40,

    MidiSend = 0x50,
}

impl Cmd {
    pub fn from_u8(v: u8) -> Option<Cmd> {
        use Cmd::*;
        Some(match v {
            0x01 => Ping,
            0x02 => Info,
            0x10 => CartId,
            0x11 => CartEnable,
            0x12 => CartBank,
            0x13 => CartEraseChip,
            0x14 => CartEraseSector,
            0x15 => CartWrite,
            0x16 => CartRead,
            0x17 => CartPic,
            0x20 => FlashId,
            0x21 => FlashErase,
            0x22 => FlashWrite,
            0x23 => FlashRead,
            0x30 => AudioLoadSram,
            0x31 => AudioPlaySram,
            0x32 => AudioPlayFlash,
            0x33 => AudioStop,
            0x34 => AudioCodecInit,
            0x35 => AudioVolume,
            0x36 => AudioCodecRead,
            0x37 => AudioCodecWrite,
            0x40 => Bootsel,
            0x50 => MidiSend,
            _ => return None,
        })
    }
}

#[derive(Copy, Clone, PartialEq, Debug)]
#[repr(u8)]
pub enum Status {
    Ok = 0,
    BadCrc = 1,
    BadCmd = 2,
    BadLen = 3,
    CartTimeout = 4,
    CartVerify = 5,
    CartWrongId = 6,
    Busy = 7,
    Range = 8,
    FlashError = 9,
    /// A hardware block did not initialise; the payload says which.
    InitFailed = 10,
}

// ---------------------------------------------------------------------------
// CRC-32 (IEEE 802.3, reflected, init 0xFFFFFFFF, final xor 0xFFFFFFFF)
// ---------------------------------------------------------------------------

/// Nibble-wise table: 64 bytes of table instead of 1 KiB, still ~4 bits/cycle.
static CRC_TABLE: [u32; 16] = [
    0x00000000, 0x1DB71064, 0x3B6E20C8, 0x26D930AC, 0x76DC4190, 0x6B6B51F4, 0x4DB26158, 0x5005713C,
    0xEDB88320, 0xF00F9344, 0xD6D6A3E8, 0xCB61B38C, 0x9B64C2B0, 0x86D3D2D4, 0xA00AE278, 0xBDBDF21C,
];

pub struct Crc32(u32);

impl Crc32 {
    pub fn new() -> Self {
        Crc32(0xFFFF_FFFF)
    }
    pub fn update(&mut self, data: &[u8]) {
        let mut c = self.0;
        for &b in data {
            c ^= b as u32;
            c = (c >> 4) ^ CRC_TABLE[(c & 0x0f) as usize];
            c = (c >> 4) ^ CRC_TABLE[(c & 0x0f) as usize];
        }
        self.0 = c;
    }
    pub fn finish(self) -> u32 {
        !self.0
    }
}

pub fn crc32(data: &[u8]) -> u32 {
    let mut c = Crc32::new();
    c.update(data);
    c.finish()
}

#[cfg(test)]
mod tests {
    use super::crc32;
    #[test]
    fn matches_zlib() {
        // zlib.crc32(b"123456789") == 0xCBF43926
        assert_eq!(crc32(b"123456789"), 0xCBF4_3926);
        assert_eq!(crc32(b""), 0);
    }
}
