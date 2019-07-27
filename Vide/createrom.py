#!/usr/bin/python3

def loadFile(filename):
    # load ROM
    with open(filename, "rb") as file:
        data = bytearray(file.read())
    # pad to 32k
    while len(data) < 32768:
        data.append(0)
    return data

# load both banks
rom0 = loadFile('Bloxorz_rom0.bin')
rom1 = loadFile('Bloxorz_rom1.bin')
rom = rom0 + rom1

# save as one file
with open('bloxorz.bin', "wb") as file:
    file.write(rom)

print("bloxorz.bin written")
