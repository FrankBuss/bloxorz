//! TLV320AIC3104 setup and 48 kHz stereo playback over PIO I2S.
//!
//! # Clocking
//!
//! The RP2350 is the I2S **master** and the codec is the slave; the codec's PLL
//! is fed from BCLK, so no MCLK is needed (just as well: GPIO46 has no
//! clock-output function on this package).
//!
//! The PIO program shifts 16 bits per channel, so a frame is 32 BCLK:
//!
//! ```text
//! BCLK      = 48 kHz x 16 bit x 2 ch  = 1.536 MHz
//! PIO clock = 2 x BCLK                = 3.072 MHz
//! divider   = 153.6 MHz / 3.072 MHz   = 50.0        exactly
//! ```
//!
//! The system clock is deliberately 153.6 MHz rather than the 150 MHz default
//! so that divider is an integer. At 150 MHz it would be 48 + 212/256 - exact
//! on average, but a fractional divider dithers between 48 and 49 cycles and
//! puts jitter on every BCLK edge. Since the codec's PLL is locked to BCLK and
//! TI warn that DAC performance degrades with clock jitter, the integer divider
//! is worth the 2.4% clock bump.
//!
//! Codec PLL, with PLLCLK_IN = BCLK = 1.536 MHz:
//!
//! ```text
//! fsref = (PLLCLK_IN x K x R) / (2048 x P),   K = J.D
//!       = (1.536e6 x 32 x 2) / (2048 x 1) = 48000.000 Hz    exact
//! ```
//!
//! so P=1, **R=2**, J=32, D=0. (R=1 would be right for a 64-BCLK frame; this
//! program emits 32.)
//!
//! # Side-set pin order
//!
//! Embassy's stock `PioI2sOut` expects BCLK at the side-set base and WCLK at
//! base+1. This board has **WCLK = GPIO44, BCLK = GPIO45**, i.e. the other way
//! round, so the program below uses the same structure with the two side-set
//! bits swapped (`side 0bBW`). That avoids changing the hardware for the sake
//! of a library convention.
//!
//! # Order matters
//!
//! BCLK must be running before the PLL registers are written - I2C ACKs happily
//! without a clock and the PLL then silently never locks. The amplifiers stay in
//! shutdown until the DAC is unmuted and settled, because a filterless class-D
//! amp reproduces every turn-on transient.

#![allow(dead_code)]

use crate::extflash;
use crate::pins;
use embassy_rp::dma;
use embassy_rp::i2c::{self, I2c};
use embassy_rp::interrupt;
use embassy_rp::peripherals::{DMA_CH0, I2C0, PIN_40, PIN_41, PIN_42, PIN_43, PIN_44, PIN_45, PIO0};
use embassy_rp::pio::{
    Common, Config, Direction, FifoJoin, LoadedProgram, Pio, ShiftConfig, ShiftDirection, StateMachine,
};
use embassy_rp::pio_programs::clock_divider::calculate_pio_clock_divider;
use embassy_rp::Peri;
use embassy_time::{Duration, Timer};

pub const SAMPLE_RATE: u32 = 48_000;
pub const BIT_DEPTH: u32 = 16;
pub const BYTES_PER_FRAME: usize = 4; // 2 channels x 16 bit

/// Frames per DMA buffer. 256 frames is 5.3 ms, short enough that a stall is
/// audible as a click rather than a gap, long enough that the fill loop has
/// plenty of slack.
const CHUNK: usize = 256;

/// 7-bit I2C address. Hardwired - the AIC3104 has no address strap pin.
const CODEC_ADDR: u8 = 0x18;

enum Step {
    W(u8, u8),
    Delay(u64),
}
use Step::{Delay, W};

/// The complete init, page 0 throughout. Page 1 holds only the biquad
/// coefficients, which are unused here.
static INIT: &[Step] = &[
    W(0, 0x00), // select page 0
    W(1, 0x80), // software reset
    Delay(2),
    // ---- clock tree: PLL from BCLK ------------------------------------
    // Both CLKDIV_IN and PLLCLK_IN must select BCLK, and the low nibble of
    // reg 102 must be written as 0010. Setting only the PLL mux (0x22) is the
    // classic "BCLK as PLL source doesn't work" bug.
    W(102, 0xA2),
    W(101, 0x00), // CODEC_CLKIN = PLLDIV_OUT
    W(11, 0x02),  // PLL R = 2   (32 BCLK per frame - see module docs)
    W(4, 0x80),   // PLL J = 32  (J occupies D7..D2)
    W(5, 0x00),   // PLL D MSB - registers 5 and 6 are always written together
    W(6, 0x00),   // PLL D LSB
    W(3, 0x91),   // PLL enable, Q = 2, P = 1
    Delay(15),    // lock
    // ---- sample rate and serial format --------------------------------
    W(2, 0x00),  // ADC fs = DAC fs = fsref = 48 kHz
    W(7, 0x0A),  // fsref 48 kHz, left DAC -> left channel, right -> right
    W(8, 0x00),  // BCLK and WCLK are inputs: the codec is the I2S slave
    W(9, 0x00),  // I2S format, 16-bit words
    W(10, 0x00), // data offset 0
    W(12, 0x00), // no digital filters
    // ---- ADC path off --------------------------------------------------
    W(19, 0x78),
    W(22, 0x78),
    W(15, 0x80),
    W(16, 0x80),
    W(17, 0xFF),
    W(18, 0xFF),
    W(25, 0x00), // MICBIAS off
    // ---- output stage, still silent ------------------------------------
    W(40, 0x80), // output common mode 1.65 V, soft-stepping on
    W(42, 0x6E), // pop reduction: 100 ms driver ramp, 4 ms steps, weak CM
    W(41, 0x00), // DAC_L1 / DAC_R1 routing
    W(43, 0x80), // left DAC digital volume: muted, 0 dB
    W(44, 0x80), // right DAC digital volume: muted, 0 dB
    // ---- route the DACs to the line outputs, kill every other path -----
    W(82, 0x80), // DAC_L1 -> LEFT_LOP, 0 dB
    W(92, 0x80), // DAC_R1 -> RIGHT_LOP, 0 dB
    W(85, 0x00),
    W(89, 0x00),
    W(81, 0x00),
    W(84, 0x00),
    W(88, 0x00),
    W(91, 0x00),
    // ---- power up, in this order ---------------------------------------
    W(37, 0xC0), // left and right DAC on
    W(86, 0x09), // LEFT_LOP:  0 dB, unmuted (D3=1), powered (D0=1)
    W(93, 0x09), // RIGHT_LOP: same. D3 polarity is inverted vs regs 43/44
    Delay(160),  // cover the 100 ms driver ramp configured in reg 42
    W(43, 0x00), // unmute left DAC
    W(44, 0x00), // unmute right DAC
    Delay(5),    // digital volume soft-steps ~2.7 ms at 48 kHz
];

/// I2S output program with the side-set bits in this board's pin order.
struct I2sProgram<'d> {
    prg: LoadedProgram<'d, PIO0>,
}

impl<'d> I2sProgram<'d> {
    fn new(common: &mut Common<'d, PIO0>) -> Self {
        // side 0bBW: bit0 = WCLK (side-set base, GPIO44), bit1 = BCLK (GPIO45).
        // Scratch Y holds bit_depth - 2 (14 for 16-bit).
        let prg = pio::pio_asm!(
            ".side_set 2",
            "    mov x, y           side 0b10",
            "left_data:",
            "    out pins, 1        side 0b00",
            "    jmp x-- left_data  side 0b10",
            "    out pins, 1        side 0b01",
            "    mov x, y           side 0b11",
            "right_data:",
            "    out pins, 1        side 0b01",
            "    jmp x-- right_data side 0b11",
            "    out pins, 1        side 0b00",
        );
        Self {
            prg: common.load_program(&prg.program),
        }
    }
}

pub struct Audio<'d> {
    i2c: I2c<'d, I2C0, i2c::Blocking>,
    sm: StateMachine<'d, PIO0, 0>,
    dma: dma::Channel<'d>,
    front: [u32; CHUNK],
    back: [u32; CHUNK],
    ready: bool,
}

impl<'d> Audio<'d> {
    #[allow(clippy::too_many_arguments)]
    pub fn new(
        i2c_periph: Peri<'d, I2C0>,
        sda: Peri<'d, PIN_40>,
        scl: Peri<'d, PIN_41>,
        pio: Peri<'d, PIO0>,
        dout: Peri<'d, PIN_43>, // codec DIN - data from us to the codec
        wclk: Peri<'d, PIN_44>,
        bclk: Peri<'d, PIN_45>,
        _din: Peri<'d, PIN_42>, // codec DOUT - unused, playback only
        dma_ch: Peri<'d, DMA_CH0>,
        irqs: impl interrupt::typelevel::Binding<
                <PIO0 as embassy_rp::pio::Instance>::Interrupt,
                embassy_rp::pio::InterruptHandler<PIO0>,
            > + interrupt::typelevel::Binding<
                <DMA_CH0 as dma::ChannelInstance>::Interrupt,
                dma::InterruptHandler<DMA_CH0>,
            > + Copy
            + 'd,
    ) -> Self {
        let mut cfg = i2c::Config::default();
        cfg.frequency = 400_000;
        let i2c = I2c::new_blocking(i2c_periph, scl, sda, cfg);

        let Pio {
            mut common, sm0: mut sm, ..
        } = Pio::new(pio, irqs);
        let program = I2sProgram::new(&mut common);

        let data_pin = common.make_pio_pin(dout);
        let wclk_pin = common.make_pio_pin(wclk);
        let bclk_pin = common.make_pio_pin(bclk);

        let mut c = Config::default();
        // Side-set base first: WCLK is bit 0, BCLK is bit 1.
        c.use_program(&program.prg, &[&wclk_pin, &bclk_pin]);
        c.set_out_pins(&[&data_pin]);
        let bclk_hz = SAMPLE_RATE * BIT_DEPTH * 2;
        c.clock_divider = calculate_pio_clock_divider(bclk_hz * 2);
        c.shift_out = ShiftConfig {
            threshold: 32,
            direction: ShiftDirection::Left,
            auto_fill: true,
        };
        c.fifo_join = FifoJoin::TxOnly;
        sm.set_config(&c);
        sm.set_pin_dirs(Direction::Out, &[&data_pin, &wclk_pin, &bclk_pin]);
        // The state machine counts down to zero and spends one cycle setting the
        // counter up, hence bit_depth - 2.
        unsafe { sm.set_y(BIT_DEPTH - 2) };

        Self {
            i2c,
            sm,
            dma: dma::Channel::new(dma_ch, irqs),
            front: [0; CHUNK],
            back: [0; CHUNK],
            ready: false,
        }
    }

    fn write_reg(&mut self, reg: u8, val: u8) -> Result<(), i2c::Error> {
        self.i2c.blocking_write(CODEC_ADDR, &[reg, val])
    }

    pub fn read_reg(&mut self, reg: u8) -> Result<u8, i2c::Error> {
        let mut b = [0u8; 1];
        self.i2c.blocking_write_read(CODEC_ADDR, &[reg], &mut b)?;
        Ok(b[0])
    }

    /// Hardware reset, start the clocks, then run the register sequence.
    ///
    /// The hardware reset is mandatory: without a low pulse on RESET after the
    /// supplies are stable the codec may not answer register access at all.
    pub async fn init_codec(&mut self) -> Result<(), i2c::Error> {
        amp_shutdown(true);
        codec_reset_pulse().await;

        // BCLK/WCLK must be running before the PLL registers are written, and
        // they free-run from here on: silence is sent as zero samples rather
        // than by stopping the clocks, because the codec PLL is locked to BCLK.
        self.sm.set_enable(true);
        Timer::after(Duration::from_millis(2)).await;

        for step in INIT {
            match step {
                W(r, v) => self.write_reg(*r, *v)?,
                Delay(ms) => Timer::after(Duration::from_millis(*ms)).await,
            }
        }
        amp_shutdown(false); // release the amplifiers last
        self.ready = true;
        Ok(())
    }

    async fn ensure_ready(&mut self) {
        if !self.ready {
            let _ = self.init_codec().await;
        }
    }

    /// Play PCM already sitting in RAM.
    pub async fn play_sram(&mut self, pcm: &[u8]) {
        self.ensure_ready().await;
        let Self {
            sm, dma, front, back, ..
        } = self;
        let mut cur: &mut [u32; CHUNK] = front;
        let mut nxt: &mut [u32; CHUNK] = back;

        let mut pos = fill_from_bytes(cur, pcm, 0);
        while pos > 0 {
            let words = ((pos.min(pcm.len()) - (pos - CHUNK.min(pos))) / BYTES_PER_FRAME).max(1);
            let transfer = sm.tx().dma_push(dma, &cur[..words.min(CHUNK)], false);
            let next_pos = fill_from_bytes(nxt, pcm, pos);
            transfer.await;
            core::mem::swap(&mut cur, &mut nxt);
            if next_pos == pos {
                break;
            }
            pos = next_pos;
        }
        silence(sm, dma).await;
    }

    /// Stream from the external flash array. At 48 kHz stereo 16-bit the feed
    /// rate is 192 KiB/s, which the QSPI array supplies with room to spare.
    pub async fn play_flash(&mut self, addr: u64, len: u64) {
        self.ensure_ready().await;
        let Self {
            sm, dma, front, back, ..
        } = self;
        let mut cur: &mut [u32; CHUNK] = front;
        let mut nxt: &mut [u32; CHUNK] = back;
        let mut raw = [0u8; CHUNK * BYTES_PER_FRAME];

        let mut pos = addr;
        let end = addr + len;
        let mut have = read_chunk(&mut raw, &mut pos, end);
        fill_from_bytes(cur, &raw[..have], 0);

        while have > 0 {
            let frames = have / BYTES_PER_FRAME;
            let transfer = sm.tx().dma_push(dma, &cur[..frames.max(1)], false);
            let got = read_chunk(&mut raw, &mut pos, end);
            if got > 0 {
                fill_from_bytes(nxt, &raw[..got], 0);
            }
            transfer.await;
            core::mem::swap(&mut cur, &mut nxt);
            have = got;
        }
        silence(sm, dma).await;
    }

    pub fn stop(&mut self) {
        amp_shutdown(true);
    }

    /// Runtime volume: 0 dB to -63.5 dB in 0.5 dB steps, soft-stepped by the
    /// codec so it does not click.
    pub fn set_volume_db(&mut self, db: f32) -> Result<(), i2c::Error> {
        let atten = ((-db) * 2.0).clamp(0.0, 127.0) as u8;
        self.write_reg(43, atten)?;
        self.write_reg(44, atten)
    }
}

/// Pack interleaved little-endian 16-bit stereo frames into I2S words
/// (left in the high half, right in the low half). Returns the new byte
/// position, unchanged when there is nothing left.
fn fill_from_bytes(buf: &mut [u32; CHUNK], pcm: &[u8], start: usize) -> usize {
    let mut pos = start;
    for slot in buf.iter_mut() {
        if pos + BYTES_PER_FRAME <= pcm.len() {
            let l = i16::from_le_bytes([pcm[pos], pcm[pos + 1]]) as u16 as u32;
            let r = i16::from_le_bytes([pcm[pos + 2], pcm[pos + 3]]) as u16 as u32;
            *slot = (l << 16) | r;
            pos += BYTES_PER_FRAME;
        } else {
            *slot = 0;
        }
    }
    pos
}

fn read_chunk(raw: &mut [u8], pos: &mut u64, end: u64) -> usize {
    if *pos >= end {
        return 0;
    }
    let n = core::cmp::min(raw.len() as u64, end - *pos) as usize;
    if extflash::read(*pos, &mut raw[..n]).is_err() {
        return 0;
    }
    *pos += n as u64;
    n
}

/// Push one buffer of zeros so the DAC settles on silence rather than on the
/// last sample, while leaving the clocks running for the codec PLL.
async fn silence(sm: &mut StateMachine<'_, PIO0, 0>, dma: &mut dma::Channel<'_>) {
    let quiet = [0u32; 64];
    sm.tx().dma_push(dma, &quiet, false).await;
}

/// `~SHDN` on both TPA2005D1s is active low: low shuts them down.
fn amp_shutdown(shutdown: bool) {
    use embassy_rp::pac;
    let m = 1u32 << (pins::SPK_SHUTDOWN - 32);
    pac::SIO.gpio_oe(1).value_set().write_value(m);
    if shutdown {
        pac::SIO.gpio_out(1).value_clr().write_value(m);
    } else {
        pac::SIO.gpio_out(1).value_set().write_value(m);
    }
}

async fn codec_reset_pulse() {
    use embassy_rp::pac;
    let m = 1u32 << (pins::CODEC_RESET - 32);
    pac::SIO.gpio_oe(1).value_set().write_value(m);
    pac::SIO.gpio_out(1).value_clr().write_value(m);
    Timer::after(Duration::from_millis(1)).await;
    pac::SIO.gpio_out(1).value_set().write_value(m);
    Timer::after(Duration::from_millis(1)).await;
}
