#!/usr/bin/env python3
"""The first phrase of Ode to Joy on three channels for the Vectrex's MIDI player: the melody,
root and fifth chords under it and a C major triad at the end. Times are in quarter notes."""
import os
import sys
import time

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "../../programmer/firmware"))
import upload

QUARTER = 0.4
MELODY = [(76, 1), (76, 1), (77, 1), (79, 1), (79, 1), (77, 1), (76, 1), (74, 1),
          (72, 1), (72, 1), (74, 1), (76, 1), (76, 1.5), (74, 0.5), (74, 2)]
CHORDS = [((48, 55), 4), ((43, 50), 4), ((48, 55), 4), ((43, 50), 4)]
TRIAD = (48, 52, 55)


def events():
    """(time, order, message), note offs before note ons at the same time, so a channel is free again."""
    ev = []
    t = 0
    for note, length in MELODY:
        ev.append((t, 1, bytes([0x90, note, 127])))
        ev.append((t + length * 0.85, 0, bytes([0x80, note, 0])))
        t += length
    t = 0
    for notes, length in CHORDS:
        for n in notes:
            ev.append((t, 1, bytes([0x90, n, 96])))
            ev.append((t + length - 0.05, 0, bytes([0x80, n, 0])))
        t += length
    for n in TRIAD:
        ev.append((t, 1, bytes([0x90, n, 110])))
        ev.append((t + 4, 0, bytes([0x80, n, 0])))
    return sorted(ev, key=lambda e: (e[0], e[1]))


def main():
    out = upload.MidiOut(os.environ.get("MIDI"))
    t0 = time.perf_counter()
    for when, _, msg in events():
        delay = t0 + when * QUARTER - time.perf_counter()
        if delay > 0:
            time.sleep(delay)
        out.send(msg)


if __name__ == "__main__":
    main()
