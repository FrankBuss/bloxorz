//! Bring-up blink test: status LED on GPIO39 at 1 Hz, nothing else.
//!
//! Test points J3 (GPIO38) and J4 (GPIO35) follow the LED, for a scope.
//! The level shifters are held in high-Z and the speaker amps in shutdown,
//! so no cartridge or speaker is driven. Default 150 MHz clock from the 12 MHz
//! oscillator, so a steady blink also proves XOSC and the PLL are running.
//!
//!   cargo run --release --example blink

#![no_std]
#![no_main]

use defmt::info;
use embassy_executor::Spawner;
use embassy_rp::gpio::{Level, Output};
use embassy_time::Timer;
use {defmt_rtt as _, panic_probe as _};

#[embassy_executor::main(executor = "embassy_rp::executor::Executor", entry = "cortex_m_rt::entry")]
async fn main(_spawner: Spawner) {
    let p = embassy_rp::init(Default::default());

    // SHIFT_OE is active low: high = shifters to high-Z.
    let _shift_oe = Output::new(p.PIN_34, Level::High);
    // TPA2005D1 SHUTDOWN is active low: low = amps off.
    let _spk_shutdown = Output::new(p.PIN_33, Level::Low);

    let mut led = Output::new(p.PIN_39, Level::Low);
    let mut tp3 = Output::new(p.PIN_38, Level::Low);
    let mut tp4 = Output::new(p.PIN_35, Level::Low);

    info!("blink test running");
    let mut n: u32 = 0;
    loop {
        led.toggle();
        tp3.toggle();
        tp4.toggle();
        if led.is_set_high() {
            info!("blink {}", n);
            n = n.wrapping_add(1);
        }
        Timer::after_millis(500).await;
    }
}
