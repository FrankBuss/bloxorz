//! Vectrex cartridge programmer - RP2354B firmware.
//!
//! One USB CDC-ACM serial port carries every function:
//!   * program and verify a Vectrex flash cartridge (SST39SF040) in 128 KiB blocks
//!   * fill the 128 MB external flash array and stream audio back out of it
//!   * load a 256 KiB PCM block into SRAM and play it
//!
//! All audio is 48 kHz, stereo, 16-bit signed little-endian.
//!
//! See README.md for the wire protocol and the hardware notes.

#![no_std]
#![no_main]

mod audio;
mod cart;
mod extflash;
mod pins;
mod proto;

use defmt::{info, warn};
use embassy_executor::Spawner;
use embassy_futures::join::join;
use embassy_rp::bind_interrupts;
use embassy_rp::peripherals::USB;
use embassy_rp::usb::{Driver, InterruptHandler};
use embassy_usb::class::cdc_acm::{CdcAcmClass, State};
use embassy_usb::driver::EndpointError;
use embassy_usb::{Builder, Config};
use proto::{Cmd, Status, MAX_PAYLOAD, SYNC_REQ, SYNC_RSP};
use static_cell::StaticCell;
use {defmt_rtt as _, panic_probe as _};

bind_interrupts!(struct Irqs {
    USBCTRL_IRQ => InterruptHandler<USB>;
    PIO0_IRQ_0  => embassy_rp::pio::InterruptHandler<embassy_rp::peripherals::PIO0>;
    DMA_IRQ_0   => embassy_rp::dma::InterruptHandler<embassy_rp::peripherals::DMA_CH0>;
});

/// One shared transfer buffer. 256 KiB covers the audio SRAM test; a cartridge
/// block uses the first 128 KiB of it. Sharing means you cannot program a
/// cartridge and hold an SRAM audio clip at the same time, which is fine - and
/// it keeps 264 KiB of the RP2354B's 520 KiB free for everything else.
const BUF_LEN: usize = 256 * 1024;
static BUFFER: StaticCell<[u8; BUF_LEN]> = StaticCell::new();

#[unsafe(link_section = ".bi_entries")]
#[used]
pub static PICOTOOL_ENTRIES: [embassy_rp::binary_info::EntryAddr; 3] = [
    embassy_rp::binary_info::rp_program_name!(c"Vectrex cartridge programmer"),
    embassy_rp::binary_info::rp_program_description!(c"USB CDC: cartridge flash, 128MB NOR, 48kHz audio"),
    embassy_rp::binary_info::rp_cargo_version!(),
];

#[embassy_executor::main(executor = "embassy_rp::executor::Executor", entry = "cortex_m_rt::entry")]
async fn main(_spawner: Spawner) {
    // 153.6 MHz rather than the 150 MHz default: it makes the I2S PIO divider
    // exactly 50, so BCLK has no dither for the codec's PLL to track.
    let mut cfg = embassy_rp::config::Config::default();
    if let Ok(clk) = embassy_rp::clocks::ClockConfig::system_freq(153_600_000) {
        cfg.clocks = clk;
    } else {
        warn!("153.6 MHz unavailable, falling back to the default clock");
    }
    let p = embassy_rp::init(cfg);
    let buf: &'static mut [u8; BUF_LEN] = BUFFER.init([0; BUF_LEN]);

    cart::init();
    if let Err(e) = extflash::init() {
        warn!("external flash init failed: {:?}", defmt::Debug2Format(&e));
    }
    let mut codec = audio::Audio::new(
        p.I2C0, p.PIN_40, p.PIN_41, p.PIO0, p.PIN_43, p.PIN_44, p.PIN_45, p.PIN_42, p.DMA_CH0, Irqs,
    );

    // ---- USB ----
    let driver = Driver::new(p.USB, Irqs);
    let mut config = Config::new(0x2e8a, 0x000a); // Raspberry Pi VID, CDC PID
    config.manufacturer = Some("frank-buss.de");
    config.product = Some("Vectrex cartridge programmer");
    config.serial_number = Some("1");
    config.max_power = 100;
    config.max_packet_size_0 = 64;

    static CONFIG_DESC: StaticCell<[u8; 256]> = StaticCell::new();
    static BOS_DESC: StaticCell<[u8; 256]> = StaticCell::new();
    static CONTROL_BUF: StaticCell<[u8; 64]> = StaticCell::new();
    static STATE: StaticCell<State> = StaticCell::new();

    let mut builder = Builder::new(
        driver,
        config,
        CONFIG_DESC.init([0; 256]),
        BOS_DESC.init([0; 256]),
        &mut [],
        CONTROL_BUF.init([0; 64]),
    );
    let mut class = CdcAcmClass::new(&mut builder, STATE.init(State::new()), 64);
    let mut usb = builder.build();

    let usb_fut = usb.run();
    let proto_fut = async {
        loop {
            class.wait_connection().await;
            info!("host connected");
            let _ = serve(&mut class, buf, &mut codec).await;
            info!("host gone");
        }
    };
    join(usb_fut, proto_fut).await;
}

type Cdc<'d> = CdcAcmClass<'d, Driver<'d, USB>>;

async fn read_exact<'d>(class: &mut Cdc<'d>, mut out: &mut [u8]) -> Result<(), EndpointError> {
    let mut pkt = [0u8; 64];
    while !out.is_empty() {
        let n = class.read_packet(&mut pkt).await?;
        let n = core::cmp::min(n, out.len());
        out[..n].copy_from_slice(&pkt[..n]);
        out = &mut out[n..];
    }
    Ok(())
}

async fn write_all<'d>(class: &mut Cdc<'d>, data: &[u8]) -> Result<(), EndpointError> {
    for chunk in data.chunks(64) {
        class.write_packet(chunk).await?;
    }
    // A transfer that is an exact multiple of the packet size needs a
    // zero-length packet to tell the host it has ended.
    if data.len() % 64 == 0 {
        class.write_packet(&[]).await?;
    }
    Ok(())
}

async fn respond<'d>(class: &mut Cdc<'d>, status: Status, payload: &[u8]) -> Result<(), EndpointError> {
    let mut head = [0u8; 7];
    head[..2].copy_from_slice(&SYNC_RSP);
    head[2] = status as u8;
    head[3..7].copy_from_slice(&(payload.len() as u32).to_le_bytes());
    let mut crc = proto::Crc32::new();
    crc.update(&head[2..7]);
    crc.update(payload);
    let crc = crc.finish().to_le_bytes();
    write_all(class, &head).await?;
    write_all(class, payload).await?;
    write_all(class, &crc).await
}

/// Read one request frame. Resynchronises by scanning for the sync bytes.
async fn read_frame<'d>(
    class: &mut Cdc<'d>,
    buf: &mut [u8],
) -> Result<(u8, usize, bool), EndpointError> {
    // sync
    let mut b = [0u8; 1];
    loop {
        read_exact(class, &mut b).await?;
        if b[0] != SYNC_REQ[0] {
            continue;
        }
        read_exact(class, &mut b).await?;
        if b[0] == SYNC_REQ[1] {
            break;
        }
    }
    let mut head = [0u8; 5];
    read_exact(class, &mut head).await?;
    let cmd = head[0];
    let len = u32::from_le_bytes([head[1], head[2], head[3], head[4]]) as usize;
    if len > buf.len() {
        return Ok((cmd, 0, false)); // caller answers BadLen
    }
    read_exact(class, &mut buf[..len]).await?;
    let mut crc_bytes = [0u8; 4];
    read_exact(class, &mut crc_bytes).await?;
    let mut crc = proto::Crc32::new();
    crc.update(&head);
    crc.update(&buf[..len]);
    let ok = crc.finish() == u32::from_le_bytes(crc_bytes);
    Ok((cmd, len, ok))
}

fn u32_at(b: &[u8], off: usize) -> u32 {
    u32::from_le_bytes([b[off], b[off + 1], b[off + 2], b[off + 3]])
}

async fn serve<'d>(
    class: &mut Cdc<'d>,
    buf: &mut [u8; BUF_LEN],
    codec: &mut audio::Audio<'_>,
) -> Result<(), EndpointError> {
    loop {
        let (cmd_byte, len, crc_ok) = read_frame(class, buf).await?;
        if !crc_ok {
            respond(class, Status::BadCrc, &[]).await?;
            continue;
        }
        let Some(cmd) = Cmd::from_u8(cmd_byte) else {
            respond(class, Status::BadCmd, &[]).await?;
            continue;
        };
        let payload_len = len;

        match cmd {
            Cmd::Ping => respond(class, Status::Ok, b"VXPROG").await?,

            Cmd::Info => {
                // firmware version, buffer size, cartridge size, flash size
                let mut out = [0u8; 16];
                out[0] = 1; // protocol version
                out[1] = 0; // firmware minor
                out[2..6].copy_from_slice(&(MAX_PAYLOAD.min(BUF_LEN) as u32).to_le_bytes());
                out[6..10].copy_from_slice(&cart::FLASH_SIZE.to_le_bytes());
                out[10..14].copy_from_slice(&((extflash::TOTAL_SIZE >> 10) as u32).to_le_bytes());
                respond(class, Status::Ok, &out).await?
            }

            Cmd::CartId => match cart::check_id() {
                Ok(()) => respond(class, Status::Ok, &[cart::MFG_SST, cart::DEV_39SF040]).await?,
                Err(cart::CartError::WrongId { mfg, dev }) => {
                    // Still report what was actually read - that is the useful
                    // part when a cartridge is missing or held in reset.
                    respond(class, Status::CartWrongId, &[mfg, dev]).await?
                }
                Err(_) => respond(class, Status::CartTimeout, &[]).await?,
            },

            Cmd::CartEnable => {
                let on = payload_len >= 1 && buf[0] != 0;
                cart::enable_programmer(on).await;
                if !on {
                    // Park the bus so a cartridge can be swapped safely.
                    cart::release();
                }
                respond(class, Status::Ok, &[]).await?
            }

            Cmd::CartBank => {
                if payload_len < 1 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    cart::set_bank(buf[0]).await;
                    respond(class, Status::Ok, &[]).await?;
                }
            }

            Cmd::CartEraseChip => match cart::chip_erase().await {
                Ok(()) => respond(class, Status::Ok, &[]).await?,
                Err(_) => respond(class, Status::CartTimeout, &[]).await?,
            },

            Cmd::CartEraseSector => {
                if payload_len < 4 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    match cart::sector_erase(u32_at(buf, 0)).await {
                        Ok(()) => respond(class, Status::Ok, &[]).await?,
                        Err(_) => respond(class, Status::CartTimeout, &[]).await?,
                    }
                }
            }

            // addr:u32 followed by the block. Programs, then verifies by
            // reading back, and reports the first mismatch if there is one.
            Cmd::CartWrite => {
                if payload_len < 4 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let addr = u32_at(buf, 0) as u16;
                    let (head, data) = buf[..payload_len].split_at(4);
                    let _ = head;
                    match cart::program_block(addr, data) {
                        Ok(()) => {
                            let crc = proto::crc32(data);
                            respond(class, Status::Ok, &crc.to_le_bytes()).await?
                        }
                        Err(cart::CartError::Verify { addr, wrote, read }) => {
                            let mut out = [0u8; 6];
                            out[..4].copy_from_slice(&addr.to_le_bytes());
                            out[4] = wrote;
                            out[5] = read;
                            respond(class, Status::CartVerify, &out).await?
                        }
                        Err(_) => respond(class, Status::CartTimeout, &[]).await?,
                    }
                }
            }

            // addr:u32, len:u32 -> raw bytes
            Cmd::CartRead => {
                if payload_len < 8 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let addr = u32_at(buf, 0) as u16;
                    let n = u32_at(buf, 4) as usize;
                    if n > buf.len() {
                        respond(class, Status::Range, &[]).await?;
                    } else {
                        for i in 0..n {
                            buf[i] = cart::bus_read(addr.wrapping_add(i as u16));
                        }
                        let (data, _) = buf.split_at(n);
                        // borrow ends before respond takes &mut class
                        let mut head = [0u8; 7];
                        head[..2].copy_from_slice(&SYNC_RSP);
                        head[2] = Status::Ok as u8;
                        head[3..7].copy_from_slice(&(n as u32).to_le_bytes());
                        let mut crc = proto::Crc32::new();
                        crc.update(&head[2..7]);
                        crc.update(data);
                        let crc = crc.finish().to_le_bytes();
                        write_all(class, &head).await?;
                        write_all(class, data).await?;
                        write_all(class, &crc).await?;
                    }
                }
            }

            Cmd::FlashId => {
                let mut out = [0u8; 12];
                for bank in 0..4u8 {
                    let id = extflash::jedec_id(bank);
                    out[bank as usize * 3..bank as usize * 3 + 3].copy_from_slice(&id);
                }
                respond(class, Status::Ok, &out).await?
            }

            // addr:u32, len:u32 (64 KiB blocks)
            Cmd::FlashErase => {
                if payload_len < 8 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let addr = u32_at(buf, 0) as u64;
                    let n = u32_at(buf, 4) as u64;
                    match extflash::erase(addr, n).await {
                        Ok(()) => respond(class, Status::Ok, &[]).await?,
                        Err(_) => respond(class, Status::FlashError, &[]).await?,
                    }
                }
            }

            // addr:u32 followed by data
            Cmd::FlashWrite => {
                if payload_len < 4 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let addr = u32_at(buf, 0) as u64;
                    let data = &buf[4..payload_len];
                    match extflash::write(addr, data).await {
                        Ok(()) => {
                            let crc = proto::crc32(data);
                            respond(class, Status::Ok, &crc.to_le_bytes()).await?
                        }
                        Err(_) => respond(class, Status::FlashError, &[]).await?,
                    }
                }
            }

            // addr:u32, len:u32
            Cmd::FlashRead => {
                if payload_len < 8 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let addr = u32_at(buf, 0) as u64;
                    let n = u32_at(buf, 4) as usize;
                    if n > buf.len() {
                        respond(class, Status::Range, &[]).await?;
                    } else {
                        match extflash::read(addr, &mut buf[..n]) {
                            Ok(()) => {
                                let mut head = [0u8; 7];
                                head[..2].copy_from_slice(&SYNC_RSP);
                                head[2] = Status::Ok as u8;
                                head[3..7].copy_from_slice(&(n as u32).to_le_bytes());
                                let mut crc = proto::Crc32::new();
                                crc.update(&head[2..7]);
                                crc.update(&buf[..n]);
                                let crc = crc.finish().to_le_bytes();
                                write_all(class, &head).await?;
                                write_all(class, &buf[..n]).await?;
                                write_all(class, &crc).await?;
                            }
                            Err(_) => respond(class, Status::FlashError, &[]).await?,
                        }
                    }
                }
            }

            // offset:u32 followed by PCM data, accumulated into the SRAM buffer
            Cmd::AudioLoadSram => {
                if payload_len < 4 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let off = u32_at(buf, 0) as usize;
                    let n = payload_len - 4;
                    if off + n > BUF_LEN {
                        respond(class, Status::Range, &[]).await?;
                    } else {
                        buf.copy_within(4..payload_len, off);
                        respond(class, Status::Ok, &[]).await?;
                    }
                }
            }

            // len:u32 - bytes of PCM already in the SRAM buffer
            Cmd::AudioPlaySram => {
                if payload_len < 4 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let n = u32_at(buf, 0) as usize;
                    codec.play_sram(&buf[..core::cmp::min(n, BUF_LEN)]).await;
                    respond(class, Status::Ok, &[]).await?;
                }
            }

            // addr:u32, len:u32 - stream straight out of the external flash
            Cmd::AudioPlayFlash => {
                if payload_len < 8 {
                    respond(class, Status::BadLen, &[]).await?;
                } else {
                    let addr = u32_at(buf, 0) as u64;
                    let n = u32_at(buf, 4) as u64;
                    codec.play_flash(addr, n).await;
                    respond(class, Status::Ok, &[]).await?;
                }
            }

            Cmd::AudioStop => {
                codec.stop();
                respond(class, Status::Ok, &[]).await?
            }

            Cmd::AudioCodecInit => match codec.init_codec().await {
                Ok(()) => respond(class, Status::Ok, &[]).await?,
                Err(_) => respond(class, Status::FlashError, &[]).await?,
            },

            Cmd::Bootsel => {
                respond(class, Status::Ok, &[]).await?;
                embassy_time::Timer::after(embassy_time::Duration::from_millis(50)).await;
                embassy_rp::rom_data::reboot(0x0002, 100, 0, 0); // BOOTSEL
            }
        }
    }
}
