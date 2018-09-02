	.area .text

; This file was build using VIDE - Vectrex Integrated Development Environment
; Original bin file was: C:\Users\Der Luchs\Desktop\Test\trackerTest\Test.bin
; 
; offset for AKS file assumed: 0h4000 guessed by accessing byte data[13] * 256)
; not used by vectrex player and therefor omitted:
;  DB "AT10" ; Signature of Arkos Tracker files
;  DB 0h01 ; sample channel
;  DB 0h40, 42, 0f ; YM custom frequence - little endian
;  DB 0h02 ; Replay frequency (0=13hz,1=25hz,2=50hz,3=100hz,4=150hz,5=300hz)
	.globl aks_song
aks_song:
 .db 0h06 ; 0h0009: default speed
 .dw 0h00C6 ; 0h000A: size of instrument table (without this word pointer)
 .dw instrument0Test ; 0h000C: [0h4020] pointer to instrument 0
 .dw instrument1Test ; 0h000E: [0h4029] pointer to instrument 1
 .dw instrument2Test ; 0h0010: [0h4030] pointer to instrument 2
 .dw instrument3Test ; 0h0012: [0h4038] pointer to instrument 3
 .dw instrument4Test ; 0h0014: [0h404D] pointer to instrument 4
 .dw instrument5Test ; 0h0016: [0h405D] pointer to instrument 5
 .dw instrument6Test ; 0h0018: [0h4092] pointer to instrument 6
 .dw instrument7Test ; 0h001A: [0h40A2] pointer to instrument 7
 .dw instrument8Test ; 0h001C: [0h40B2] pointer to instrument 8
 .dw instrument9Test ; 0h001E: [0h40C2] pointer to instrument 9
instrument0Test:
 .db 0h00 ; 0h0020: speed
 .db 0h00 ; 0h0021: retrig
instrument0loopTest:
 .db 0h00 ; 0h0022: dataColumn_0 (non hard), vol=0h0
 .db 0h00 ; 0h0023: dataColumn_0 (non hard), vol=0h0
 .db 0h00 ; 0h0024: dataColumn_0 (non hard), vol=0h0
 .db 0h00 ; 0h0025: dataColumn_0 (non hard), vol=0h0
 .db 0h0D ; 0h0026: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h0027: [0h4022] loop
instrument1Test:
 .db 0h01 ; 0h0029: speed
 .db 0h00 ; 0h002A: retrig
 .db 0h36 ; 0h002B: dataColumn_0 (non hard), vol=0hD
 .db 0h01 ; 0h002C: dataColumn_1, noise=0h01
 .db 0h0D ; 0h002D: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h002E: [0h4022] loop
instrument2Test:
 .db 0h06 ; 0h0030: speed
 .db 0h00 ; 0h0031: retrig
 .db 0h2C ; 0h0032: dataColumn_0 (non hard), vol=0hB
 .db 0h24 ; 0h0033: dataColumn_0 (non hard), vol=0h9
 .db 0h14 ; 0h0034: dataColumn_0 (non hard), vol=0h5
 .db 0h0D ; 0h0035: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h0036: [0h4022] loop
instrument3Test:
 .db 0h01 ; 0h0038: speed
 .db 0h00 ; 0h0039: retrig
 .db 0h36 ; 0h003A: dataColumn_0 (non hard), vol=0hD
 .db 0h0B ; 0h003B: dataColumn_1, noise=0h0B
 .db 0h7C ; 0h003C: dataColumn_0 (non hard), vol=0hF
 .db 0h16 ; 0h003D: arpegio
 .db 0h7C ; 0h003E: dataColumn_0 (non hard), vol=0hF
 .db 0h0C ; 0h003F: arpegio
 .db 0h7C ; 0h0040: dataColumn_0 (non hard), vol=0hF
 .db 0h0A ; 0h0041: arpegio
 .db 0h7C ; 0h0042: dataColumn_0 (non hard), vol=0hF
 .db 0h08 ; 0h0043: arpegio
 .db 0h7C ; 0h0044: dataColumn_0 (non hard), vol=0hF
 .db 0h04 ; 0h0045: arpegio
 .db 0h78 ; 0h0046: dataColumn_0 (non hard), vol=0hE
 .db 0h03 ; 0h0047: arpegio
 .db 0h6C ; 0h0048: dataColumn_0 (non hard), vol=0hB
 .db 0h01 ; 0h0049: arpegio
 .db 0h0D ; 0h004A: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h004B: [0h4022] loop
instrument4Test:
 .db 0h01 ; 0h004D: speed
 .db 0h00 ; 0h004E: retrig
 .db 0h3E ; 0h004F: dataColumn_0 (non hard), vol=0hF
 .db 0h02 ; 0h0050: dataColumn_1, noise=0h02
 .db 0h3E ; 0h0051: dataColumn_0 (non hard), vol=0hF
 .db 0h2A ; 0h0052: dataColumn_1, noise=0h0A
 .db 0h7E ; 0h0053: dataColumn_0 (non hard), vol=0hF
 .db 0h2A ; 0h0054: dataColumn_1, noise=0h0A
 .db 0h02 ; 0h0055: arpegio
 .db 0h3E ; 0h0056: dataColumn_0 (non hard), vol=0hF
 .db 0h0B ; 0h0057: dataColumn_1, noise=0h0B
 .db 0h3E ; 0h0058: dataColumn_0 (non hard), vol=0hF
 .db 0h0C ; 0h0059: dataColumn_1, noise=0h0C
 .db 0h0D ; 0h005A: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h005B: [0h4022] loop
instrument5Test:
 .db 0h0C ; 0h005D: speed
 .db 0hFE ; 0h005E: retrig
 .db 0h09 ; 0h005F: dataColumn_0 (hard)
 .db 0h28 ; 0h0060: Independent dependend 2. byte
 .db 0h24 ; 0h0061: independend hardware arpegio
 .db 0h09 ; 0h0062: dataColumn_0 (hard)
 .db 0h28 ; 0h0063: Independent dependend 2. byte
 .db 0h18 ; 0h0064: independend hardware arpegio
 .db 0h09 ; 0h0065: dataColumn_0 (hard)
 .db 0h28 ; 0h0066: Independent dependend 2. byte
 .db 0h24 ; 0h0067: independend hardware arpegio
 .db 0h09 ; 0h0068: dataColumn_0 (hard)
 .db 0h28 ; 0h0069: Independent dependend 2. byte
 .db 0h18 ; 0h006A: independend hardware arpegio
 .db 0h27 ; 0h006B: dataColumn_0 (hard)
 .db 0h28 ; 0h006C: software dependend 2. byte
 .db 0hE8 ; 0h006D: arpegio
 .db 0h09 ; 0h006E: dataColumn_0 (hard)
 .db 0h28 ; 0h006F: Independent dependend 2. byte
 .db 0h18 ; 0h0070: independend hardware arpegio
 .db 0h0B ; 0h0071: dataColumn_0 (hard)
 .db 0h28 ; 0h0072: Independent dependend 2. byte
 .db 0h24 ; 0h0073: independend hardware arpegio
 .db 0h09 ; 0h0074: dataColumn_0 (hard)
 .db 0h28 ; 0h0075: Independent dependend 2. byte
 .db 0h18 ; 0h0076: independend hardware arpegio
 .db 0h23 ; 0h0077: dataColumn_0 (hard)
 .db 0h28 ; 0h0078: hardware dependend 2. byte
 .db 0h24 ; 0h0079: arpegio
 .db 0h21 ; 0h007A: dataColumn_0 (hard)
 .db 0h38 ; 0h007B: hardware dependend 2. byte
 .db 0h18 ; 0h007C: arpegio
 .db 0h21 ; 0h007D: dataColumn_0 (hard)
 .db 0h28 ; 0h007E: hardware dependend 2. byte
 .db 0h24 ; 0h007F: arpegio
 .db 0h21 ; 0h0080: dataColumn_0 (hard)
 .db 0h38 ; 0h0081: hardware dependend 2. byte
 .db 0h18 ; 0h0082: arpegio
 .db 0h21 ; 0h0083: dataColumn_0 (hard)
 .db 0h28 ; 0h0084: hardware dependend 2. byte
 .db 0h24 ; 0h0085: arpegio
 .db 0h21 ; 0h0086: dataColumn_0 (hard)
 .db 0h38 ; 0h0087: hardware dependend 2. byte
 .db 0h18 ; 0h0088: arpegio
 .db 0h21 ; 0h0089: dataColumn_0 (hard)
 .db 0h28 ; 0h008A: hardware dependend 2. byte
 .db 0h24 ; 0h008B: arpegio
 .db 0h21 ; 0h008C: dataColumn_0 (hard)
 .db 0h38 ; 0h008D: hardware dependend 2. byte
 .db 0h18 ; 0h008E: arpegio
 .db 0h0D ; 0h008F: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h0090: [0h4022] loop
instrument6Test:
 .db 0h01 ; 0h0092: speed
 .db 0h00 ; 0h0093: retrig
 .db 0h3C ; 0h0094: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h0095: dataColumn_0 (non hard), vol=0hF
 .db 0h03 ; 0h0096: arpegio
 .db 0h7C ; 0h0097: dataColumn_0 (non hard), vol=0hF
 .db 0h07 ; 0h0098: arpegio
 .db 0h3C ; 0h0099: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h009A: dataColumn_0 (non hard), vol=0hF
 .db 0h03 ; 0h009B: arpegio
 .db 0h7C ; 0h009C: dataColumn_0 (non hard), vol=0hF
 .db 0h07 ; 0h009D: arpegio
 .db 0h00 ; 0h009E: dataColumn_0 (non hard), vol=0h0
 .db 0h0D ; 0h009F: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h00A0: [0h4022] loop
instrument7Test:
 .db 0h01 ; 0h00A2: speed
 .db 0h00 ; 0h00A3: retrig
 .db 0h3C ; 0h00A4: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h00A5: dataColumn_0 (non hard), vol=0hF
 .db 0h04 ; 0h00A6: arpegio
 .db 0h7C ; 0h00A7: dataColumn_0 (non hard), vol=0hF
 .db 0h07 ; 0h00A8: arpegio
 .db 0h3C ; 0h00A9: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h00AA: dataColumn_0 (non hard), vol=0hF
 .db 0h04 ; 0h00AB: arpegio
 .db 0h7C ; 0h00AC: dataColumn_0 (non hard), vol=0hF
 .db 0h07 ; 0h00AD: arpegio
 .db 0h00 ; 0h00AE: dataColumn_0 (non hard), vol=0h0
 .db 0h0D ; 0h00AF: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h00B0: [0h4022] loop
instrument8Test:
 .db 0h01 ; 0h00B2: speed
 .db 0h00 ; 0h00B3: retrig
 .db 0h3C ; 0h00B4: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h00B5: dataColumn_0 (non hard), vol=0hF
 .db 0h05 ; 0h00B6: arpegio
 .db 0h7C ; 0h00B7: dataColumn_0 (non hard), vol=0hF
 .db 0h09 ; 0h00B8: arpegio
 .db 0h3C ; 0h00B9: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h00BA: dataColumn_0 (non hard), vol=0hF
 .db 0h05 ; 0h00BB: arpegio
 .db 0h7C ; 0h00BC: dataColumn_0 (non hard), vol=0hF
 .db 0h09 ; 0h00BD: arpegio
 .db 0h00 ; 0h00BE: dataColumn_0 (non hard), vol=0h0
 .db 0h0D ; 0h00BF: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h00C0: [0h4022] loop
instrument9Test:
 .db 0h01 ; 0h00C2: speed
 .db 0h00 ; 0h00C3: retrig
 .db 0h3C ; 0h00C4: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h00C5: dataColumn_0 (non hard), vol=0hF
 .db 0h05 ; 0h00C6: arpegio
 .db 0h7C ; 0h00C7: dataColumn_0 (non hard), vol=0hF
 .db 0h07 ; 0h00C8: arpegio
 .db 0h3C ; 0h00C9: dataColumn_0 (non hard), vol=0hF
 .db 0h7C ; 0h00CA: dataColumn_0 (non hard), vol=0hF
 .db 0h05 ; 0h00CB: arpegio
 .db 0h7C ; 0h00CC: dataColumn_0 (non hard), vol=0hF
 .db 0h07 ; 0h00CD: arpegio
 .db 0h00 ; 0h00CE: dataColumn_0 (non hard), vol=0h0
 .db 0h0D ; 0h00CF: dataColumn_0 (hard)
 .dw instrument0loopTest ; 0h00D0: [0h4022] loop
; start of linker definition
linkerTest:
 .db 0h40 ; 0h00D2: first height
 .db 0h00 ; 0h00D3: transposition1
 .db 0h00 ; 0h00D4: transposition2
 .db 0h00 ; 0h00D5: transposition3
 .dw specialtrackDef0Test ; 0h00D6: [0h4167] specialTrack
pattern0DefinitionTest:
 .db 0h00 ; 0h00D8: pattern 0 state
 .dw trackDef0Test ; 0h00D9: [0h416E] pattern 0, track 1
 .dw trackDef1Test ; 0h00DB: [0h4168] pattern 0, track 2
 .dw trackDef1Test ; 0h00DD: [0h4168] pattern 0, track 3
pattern1DefinitionTest:
 .db 0h00 ; 0h00DF: pattern 1 state
 .dw trackDef0Test ; 0h00E0: [0h416E] pattern 1, track 1
 .dw trackDef3Test ; 0h00E2: [0h41BD] pattern 1, track 2
 .dw trackDef4Test ; 0h00E4: [0h4222] pattern 1, track 3
pattern2DefinitionTest:
 .db 0h00 ; 0h00E6: pattern 2 state
 .dw trackDef0Test ; 0h00E7: [0h416E] pattern 2, track 1
 .dw trackDef5Test ; 0h00E9: [0h41CF] pattern 2, track 2
 .dw trackDef6Test ; 0h00EB: [0h4299] pattern 2, track 3
pattern3DefinitionTest:
 .db 0h00 ; 0h00ED: pattern 3 state
 .dw trackDef7Test ; 0h00EE: [0h42B4] pattern 3, track 1
 .dw trackDef8Test ; 0h00F0: [0h430C] pattern 3, track 2
 .dw trackDef9Test ; 0h00F2: [0h436A] pattern 3, track 3
pattern4DefinitionTest:
 .db 0h00 ; 0h00F4: pattern 4 state
 .dw trackDef0Test ; 0h00F5: [0h416E] pattern 4, track 1
 .dw trackDef10Test ; 0h00F7: [0h4412] pattern 4, track 2
 .dw trackDef11Test ; 0h00F9: [0h45FD] pattern 4, track 3
pattern5DefinitionTest:
 .db 0h00 ; 0h00FB: pattern 5 state
 .dw trackDef7Test ; 0h00FC: [0h42B4] pattern 5, track 1
 .dw trackDef12Test ; 0h00FE: [0h44A8] pattern 5, track 2
 .dw trackDef13Test ; 0h0100: [0h4680] pattern 5, track 3
pattern6DefinitionTest:
 .db 0h00 ; 0h0102: pattern 6 state
 .dw trackDef14Test ; 0h0103: [0h438F] pattern 6, track 1
 .dw trackDef15Test ; 0h0105: [0h453B] pattern 6, track 2
 .dw trackDef16Test ; 0h0107: [0h4232] pattern 6, track 3
pattern7DefinitionTest:
 .db 0h00 ; 0h0109: pattern 7 state
 .dw trackDef17Test ; 0h010A: [0h47B4] pattern 7, track 1
 .dw trackDef18Test ; 0h010C: [0h4703] pattern 7, track 2
 .dw trackDef19Test ; 0h010E: [0h482D] pattern 7, track 3
pattern8DefinitionTest:
 .db 0h00 ; 0h0110: pattern 8 state
 .dw trackDef20Test ; 0h0111: [0h4895] pattern 8, track 1
 .dw trackDef21Test ; 0h0113: [0h4919] pattern 8, track 2
 .dw trackDef16Test ; 0h0115: [0h4232] pattern 8, track 3
pattern9DefinitionTest:
 .db 0h00 ; 0h0117: pattern 9 state
 .dw trackDef20Test ; 0h0118: [0h4895] pattern 9, track 1
 .dw trackDef21Test ; 0h011A: [0h4919] pattern 9, track 2
 .dw trackDef19Test ; 0h011C: [0h482D] pattern 9, track 3
pattern10DefinitionTest:
 .db 0h00 ; 0h011E: pattern 10 state
 .dw trackDef14Test ; 0h011F: [0h438F] pattern 10, track 1
 .dw trackDef15Test ; 0h0121: [0h453B] pattern 10, track 2
 .dw trackDef24Test ; 0h0123: [0h49C6] pattern 10, track 3
pattern11DefinitionTest:
 .db 0h00 ; 0h0125: pattern 11 state
 .dw trackDef17Test ; 0h0126: [0h47B4] pattern 11, track 1
 .dw trackDef18Test ; 0h0128: [0h4703] pattern 11, track 2
 .dw trackDef26Test ; 0h012A: [0h4A2C] pattern 11, track 3
pattern12DefinitionTest:
 .db 0h00 ; 0h012C: pattern 12 state
 .dw trackDef1Test ; 0h012D: [0h4168] pattern 12, track 1
 .dw trackDef1Test ; 0h012F: [0h4168] pattern 12, track 2
 .dw trackDef27Test ; 0h0131: [0h4A9A] pattern 12, track 3
pattern13DefinitionTest:
 .db 0h00 ; 0h0133: pattern 13 state
 .dw trackDef28Test ; 0h0134: [0h4B21] pattern 13, track 1
 .dw trackDef29Test ; 0h0136: [0h4ACD] pattern 13, track 2
 .dw trackDef27Test ; 0h0138: [0h4A9A] pattern 13, track 3
pattern14DefinitionTest:
 .db 0h00 ; 0h013A: pattern 14 state
 .dw trackDef14Test ; 0h013B: [0h438F] pattern 14, track 1
 .dw trackDef15Test ; 0h013D: [0h453B] pattern 14, track 2
 .dw trackDef16Test ; 0h013F: [0h4232] pattern 14, track 3
pattern15DefinitionTest:
 .db 0h00 ; 0h0141: pattern 15 state
 .dw trackDef17Test ; 0h0142: [0h47B4] pattern 15, track 1
 .dw trackDef18Test ; 0h0144: [0h4703] pattern 15, track 2
 .dw trackDef19Test ; 0h0146: [0h482D] pattern 15, track 3
pattern16DefinitionTest:
 .db 0h00 ; 0h0148: pattern 16 state
 .dw trackDef20Test ; 0h0149: [0h4895] pattern 16, track 1
 .dw trackDef21Test ; 0h014B: [0h4919] pattern 16, track 2
 .dw trackDef16Test ; 0h014D: [0h4232] pattern 16, track 3
pattern17DefinitionTest:
 .db 0h00 ; 0h014F: pattern 17 state
 .dw trackDef20Test ; 0h0150: [0h4895] pattern 17, track 1
 .dw trackDef21Test ; 0h0152: [0h4919] pattern 17, track 2
 .dw trackDef19Test ; 0h0154: [0h482D] pattern 17, track 3
pattern18DefinitionTest:
 .db 0h00 ; 0h0156: pattern 18 state
 .dw trackDef14Test ; 0h0157: [0h438F] pattern 18, track 1
 .dw trackDef15Test ; 0h0159: [0h453B] pattern 18, track 2
 .dw trackDef24Test ; 0h015B: [0h49C6] pattern 18, track 3
pattern19DefinitionTest:
 .db 0h00 ; 0h015D: pattern 19 state
 .dw trackDef17Test ; 0h015E: [0h47B4] pattern 19, track 1
 .dw trackDef18Test ; 0h0160: [0h4703] pattern 19, track 2
 .dw trackDef26Test ; 0h0162: [0h4A2C] pattern 19, track 3
pattern20DefinitionTest:
 .db 0h01 ; 0h0164: pattern 20 state
 .dw pattern0DefinitionTest ; 0h0165: [0h40D8] song restart address
specialtrackDef0Test:
 .db 0h00 ; 0h0167: wait 128
trackDef1Test:
 .db 0h7A ; 0h0168: normal track data,  note: E2
 .db 0hFF ; 0h0169: vol = 0h0 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h016A: pitch
 .db 0h01 ; 0h016C: instrument
 .db 0h00 ; 0h016D: track end signature found
trackDef0Test:
 .db 0h92 ; 0h016E: normal track data
 .db 0hE1 ; 0h016F: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0170: pitch
 .db 0h02 ; 0h0172: instrument
 .db 0h02 ; 0h0173: normal track data,  wait 0
 .db 0h92 ; 0h0174: normal track data
 .db 0h40 ; 0h0175: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0176: normal track data,  wait 0
 .db 0hAA ; 0h0177: normal track data
 .db 0h40 ; 0h0178: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0179: normal track data
 .db 0h40 ; 0h017A: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h017B: normal track data
 .db 0h40 ; 0h017C: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h017D: normal track data
 .db 0h40 ; 0h017E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h017F: normal track data
 .db 0h40 ; 0h0180: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0181: normal track data,  wait 0
 .db 0h92 ; 0h0182: normal track data
 .db 0h40 ; 0h0183: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0184: normal track data,  wait 4
 .db 0h92 ; 0h0185: normal track data
 .db 0h40 ; 0h0186: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0187: normal track data,  wait 0
 .db 0h92 ; 0h0188: normal track data
 .db 0h40 ; 0h0189: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h018A: normal track data,  wait 0
 .db 0h94 ; 0h018B: normal track data
 .db 0h40 ; 0h018C: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h018D: normal track data,  wait 0
 .db 0h94 ; 0h018E: normal track data
 .db 0h40 ; 0h018F: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0190: normal track data,  wait 0
 .db 0h92 ; 0h0191: normal track data
 .db 0h40 ; 0h0192: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0193: normal track data,  wait 0
 .db 0h92 ; 0h0194: normal track data
 .db 0h40 ; 0h0195: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0196: normal track data,  wait 4
 .db 0h92 ; 0h0197: normal track data
 .db 0h40 ; 0h0198: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0199: normal track data,  wait 0
 .db 0h92 ; 0h019A: normal track data
 .db 0h40 ; 0h019B: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h019C: normal track data,  wait 0
 .db 0hAA ; 0h019D: normal track data
 .db 0h40 ; 0h019E: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h019F: normal track data
 .db 0h40 ; 0h01A0: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h01A1: normal track data
 .db 0h40 ; 0h01A2: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h01A3: normal track data
 .db 0h40 ; 0h01A4: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h01A5: normal track data
 .db 0h40 ; 0h01A6: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01A7: normal track data,  wait 0
 .db 0h92 ; 0h01A8: normal track data
 .db 0h40 ; 0h01A9: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h01AA: normal track data,  wait 4
 .db 0h92 ; 0h01AB: normal track data
 .db 0h40 ; 0h01AC: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01AD: normal track data,  wait 0
 .db 0h92 ; 0h01AE: normal track data
 .db 0h40 ; 0h01AF: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01B0: normal track data,  wait 0
 .db 0h94 ; 0h01B1: normal track data
 .db 0h40 ; 0h01B2: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01B3: normal track data,  wait 0
 .db 0h94 ; 0h01B4: normal track data
 .db 0h40 ; 0h01B5: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01B6: normal track data,  wait 0
 .db 0h92 ; 0h01B7: normal track data
 .db 0h40 ; 0h01B8: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01B9: normal track data,  wait 0
 .db 0h92 ; 0h01BA: normal track data
 .db 0h40 ; 0h01BB: vol off, no pitch, note, no instrument
 .db 0h00 ; 0h01BC: track end signature found
trackDef3Test:
 .db 0h42 ; 0h01BD: normal track data
 .db 0h80 ; 0h01BE: vol off, pitch, no note, no instrument
 .dw 0h0000 ; 0h01BF: pitch
 .db 0h3E ; 0h01C1: normal track data,  wait 30
 .db 0h30 ; 0h01C2: normal track data,  wait 23
 .db 0h92 ; 0h01C3: normal track data
 .db 0h61 ; 0h01C4: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h01C5: instrument
 .db 0h02 ; 0h01C6: normal track data,  wait 0
 .db 0h92 ; 0h01C7: normal track data
 .db 0h60 ; 0h01C8: vol off, no pitch, note, instrument
 .db 0h04 ; 0h01C9: instrument
 .db 0h02 ; 0h01CA: normal track data,  wait 0
 .db 0h92 ; 0h01CB: normal track data
 .db 0h60 ; 0h01CC: vol off, no pitch, note, instrument
 .db 0h03 ; 0h01CD: instrument
 .db 0h00 ; 0h01CE: track end signature found
trackDef5Test:
 .db 0h92 ; 0h01CF: normal track data
 .db 0hE1 ; 0h01D0: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h01D1: pitch
 .db 0h03 ; 0h01D3: instrument
 .db 0h02 ; 0h01D4: normal track data,  wait 0
 .db 0h92 ; 0h01D5: normal track data
 .db 0h40 ; 0h01D6: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01D7: normal track data,  wait 0
 .db 0hAA ; 0h01D8: normal track data
 .db 0h40 ; 0h01D9: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h01DA: normal track data
 .db 0h40 ; 0h01DB: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h01DC: normal track data
 .db 0h40 ; 0h01DD: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h01DE: normal track data
 .db 0h40 ; 0h01DF: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h01E0: normal track data
 .db 0h40 ; 0h01E1: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01E2: normal track data,  wait 0
 .db 0h92 ; 0h01E3: normal track data
 .db 0h40 ; 0h01E4: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h01E5: normal track data,  wait 4
 .db 0h92 ; 0h01E6: normal track data
 .db 0h40 ; 0h01E7: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01E8: normal track data,  wait 0
 .db 0h92 ; 0h01E9: normal track data
 .db 0h40 ; 0h01EA: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01EB: normal track data,  wait 0
 .db 0h92 ; 0h01EC: normal track data
 .db 0h60 ; 0h01ED: vol off, no pitch, note, instrument
 .db 0h04 ; 0h01EE: instrument
 .db 0h02 ; 0h01EF: normal track data,  wait 0
 .db 0h92 ; 0h01F0: normal track data
 .db 0h40 ; 0h01F1: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01F2: normal track data,  wait 0
 .db 0h92 ; 0h01F3: normal track data
 .db 0h60 ; 0h01F4: vol off, no pitch, note, instrument
 .db 0h03 ; 0h01F5: instrument
 .db 0h02 ; 0h01F6: normal track data,  wait 0
 .db 0h92 ; 0h01F7: normal track data
 .db 0h40 ; 0h01F8: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h01F9: normal track data,  wait 4
 .db 0h92 ; 0h01FA: normal track data
 .db 0h40 ; 0h01FB: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01FC: normal track data,  wait 0
 .db 0h92 ; 0h01FD: normal track data
 .db 0h40 ; 0h01FE: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h01FF: normal track data,  wait 0
 .db 0hAA ; 0h0200: normal track data
 .db 0h40 ; 0h0201: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0202: normal track data
 .db 0h40 ; 0h0203: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h0204: normal track data
 .db 0h40 ; 0h0205: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h0206: normal track data
 .db 0h40 ; 0h0207: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0208: normal track data
 .db 0h40 ; 0h0209: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h020A: normal track data,  wait 0
 .db 0h92 ; 0h020B: normal track data
 .db 0h40 ; 0h020C: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h020D: normal track data,  wait 4
 .db 0h92 ; 0h020E: normal track data
 .db 0h40 ; 0h020F: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0210: normal track data,  wait 0
 .db 0h92 ; 0h0211: normal track data
 .db 0h40 ; 0h0212: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0213: normal track data,  wait 0
 .db 0h92 ; 0h0214: normal track data
 .db 0h60 ; 0h0215: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0216: instrument
 .db 0h02 ; 0h0217: normal track data,  wait 0
 .db 0h92 ; 0h0218: normal track data
 .db 0h40 ; 0h0219: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h021A: normal track data,  wait 0
 .db 0h92 ; 0h021B: normal track data
 .db 0h60 ; 0h021C: vol off, no pitch, note, instrument
 .db 0h03 ; 0h021D: instrument
 .db 0h02 ; 0h021E: normal track data,  wait 0
 .db 0h92 ; 0h021F: normal track data
 .db 0h40 ; 0h0220: vol off, no pitch, note, no instrument
 .db 0h00 ; 0h0221: track end signature found
trackDef4Test:
 .db 0h42 ; 0h0222: normal track data
 .db 0h80 ; 0h0223: vol off, pitch, no note, no instrument
 .dw 0h0000 ; 0h0224: pitch
 .db 0h3E ; 0h0226: normal track data,  wait 30
 .db 0h30 ; 0h0227: normal track data,  wait 23
 .db 0h92 ; 0h0228: normal track data
 .db 0h73 ; 0h0229: vol = 0h6 (inverted), no pitch, no note, no instrument
 .db 0h05 ; 0h022A: instrument
 .db 0hAA ; 0h022B: normal track data
 .db 0h40 ; 0h022C: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h022D: normal track data,  wait 3
 .db 0hAA ; 0h022E: normal track data
 .db 0h40 ; 0h022F: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0230: normal track data
 .db 0h40 ; 0h0231: vol off, no pitch, note, no instrument
trackDef16Test:
 .db 0h92 ; 0h0232: normal track data
 .db 0hF3 ; 0h0233: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0234: pitch
 .db 0h05 ; 0h0236: instrument
 .db 0hAA ; 0h0237: normal track data
 .db 0h40 ; 0h0238: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0239: normal track data
 .db 0h40 ; 0h023A: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h023B: normal track data
 .db 0h40 ; 0h023C: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h023D: normal track data
 .db 0h40 ; 0h023E: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h023F: normal track data
 .db 0h40 ; 0h0240: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0241: normal track data
 .db 0h40 ; 0h0242: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0243: normal track data
 .db 0h40 ; 0h0244: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0245: normal track data
 .db 0h40 ; 0h0246: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0247: normal track data
 .db 0h40 ; 0h0248: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0249: normal track data,  wait 3
 .db 0hAA ; 0h024A: normal track data
 .db 0h40 ; 0h024B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h024C: normal track data
 .db 0h40 ; 0h024D: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h024E: normal track data
 .db 0h40 ; 0h024F: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0250: normal track data
 .db 0h40 ; 0h0251: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0252: normal track data
 .db 0h40 ; 0h0253: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0254: normal track data
 .db 0h40 ; 0h0255: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0256: normal track data
 .db 0h40 ; 0h0257: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0258: normal track data
 .db 0h40 ; 0h0259: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h025A: normal track data
 .db 0h40 ; 0h025B: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h025C: normal track data
 .db 0h40 ; 0h025D: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h025E: normal track data
 .db 0h40 ; 0h025F: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0260: normal track data
 .db 0h40 ; 0h0261: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0262: normal track data,  wait 3
 .db 0hAA ; 0h0263: normal track data
 .db 0h40 ; 0h0264: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0265: normal track data
 .db 0h40 ; 0h0266: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0267: normal track data
 .db 0h40 ; 0h0268: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0269: normal track data
 .db 0h40 ; 0h026A: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h026B: normal track data
 .db 0h40 ; 0h026C: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h026D: normal track data
 .db 0h40 ; 0h026E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h026F: normal track data
 .db 0h40 ; 0h0270: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0271: normal track data
 .db 0h40 ; 0h0272: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0273: normal track data
 .db 0h40 ; 0h0274: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0275: normal track data
 .db 0h40 ; 0h0276: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0277: normal track data
 .db 0h40 ; 0h0278: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0279: normal track data
 .db 0h40 ; 0h027A: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h027B: normal track data,  wait 3
 .db 0hAA ; 0h027C: normal track data
 .db 0h40 ; 0h027D: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h027E: normal track data
 .db 0h40 ; 0h027F: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0280: normal track data
 .db 0h40 ; 0h0281: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0282: normal track data
 .db 0h40 ; 0h0283: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0284: normal track data
 .db 0h40 ; 0h0285: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0286: normal track data
 .db 0h40 ; 0h0287: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0288: normal track data
 .db 0h40 ; 0h0289: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h028A: normal track data
 .db 0h40 ; 0h028B: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h028C: normal track data
 .db 0h40 ; 0h028D: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h028E: normal track data
 .db 0h40 ; 0h028F: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0290: normal track data
 .db 0h40 ; 0h0291: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0292: normal track data
 .db 0h40 ; 0h0293: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0294: normal track data,  wait 3
 .db 0hAA ; 0h0295: normal track data
 .db 0h40 ; 0h0296: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0297: normal track data
 .db 0h40 ; 0h0298: vol off, no pitch, note, no instrument
trackDef6Test:
 .db 0h92 ; 0h0299: normal track data
 .db 0hF3 ; 0h029A: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h029B: pitch
 .db 0h05 ; 0h029D: instrument
 .db 0h0E ; 0h029E: normal track data,  wait 6
 .db 0h92 ; 0h029F: normal track data
 .db 0h40 ; 0h02A0: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h02A1: normal track data,  wait 6
 .db 0h92 ; 0h02A2: normal track data
 .db 0h40 ; 0h02A3: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h02A4: normal track data,  wait 6
 .db 0h92 ; 0h02A5: normal track data
 .db 0h40 ; 0h02A6: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h02A7: normal track data,  wait 6
 .db 0h92 ; 0h02A8: normal track data
 .db 0h40 ; 0h02A9: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h02AA: normal track data,  wait 6
 .db 0h92 ; 0h02AB: normal track data
 .db 0h40 ; 0h02AC: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h02AD: normal track data,  wait 6
 .db 0h92 ; 0h02AE: normal track data
 .db 0h40 ; 0h02AF: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h02B0: normal track data,  wait 6
 .db 0h92 ; 0h02B1: normal track data
 .db 0h40 ; 0h02B2: vol off, no pitch, note, no instrument
 .db 0h00 ; 0h02B3: track end signature found
trackDef7Test:
 .db 0h92 ; 0h02B4: normal track data
 .db 0hE1 ; 0h02B5: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h02B6: pitch
 .db 0h02 ; 0h02B8: instrument
 .db 0h02 ; 0h02B9: normal track data,  wait 0
 .db 0h92 ; 0h02BA: normal track data
 .db 0h40 ; 0h02BB: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02BC: normal track data,  wait 0
 .db 0hAA ; 0h02BD: normal track data
 .db 0h40 ; 0h02BE: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h02BF: normal track data
 .db 0h40 ; 0h02C0: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h02C1: normal track data
 .db 0h40 ; 0h02C2: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h02C3: normal track data
 .db 0h40 ; 0h02C4: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h02C5: normal track data
 .db 0h40 ; 0h02C6: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02C7: normal track data,  wait 0
 .db 0h92 ; 0h02C8: normal track data
 .db 0h40 ; 0h02C9: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h02CA: normal track data,  wait 4
 .db 0h92 ; 0h02CB: normal track data
 .db 0h40 ; 0h02CC: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02CD: normal track data,  wait 0
 .db 0h92 ; 0h02CE: normal track data
 .db 0h40 ; 0h02CF: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02D0: normal track data,  wait 0
 .db 0h94 ; 0h02D1: normal track data
 .db 0h40 ; 0h02D2: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02D3: normal track data,  wait 0
 .db 0h94 ; 0h02D4: normal track data
 .db 0h40 ; 0h02D5: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02D6: normal track data,  wait 0
 .db 0h92 ; 0h02D7: normal track data
 .db 0h40 ; 0h02D8: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02D9: normal track data,  wait 0
 .db 0h92 ; 0h02DA: normal track data
 .db 0h40 ; 0h02DB: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h02DC: normal track data,  wait 4
 .db 0h92 ; 0h02DD: normal track data
 .db 0h40 ; 0h02DE: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02DF: normal track data,  wait 0
 .db 0h92 ; 0h02E0: normal track data
 .db 0h40 ; 0h02E1: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02E2: normal track data,  wait 0
 .db 0hAA ; 0h02E3: normal track data
 .db 0h40 ; 0h02E4: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h02E5: normal track data
 .db 0h40 ; 0h02E6: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h02E7: normal track data
 .db 0h40 ; 0h02E8: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h02E9: normal track data
 .db 0h40 ; 0h02EA: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h02EB: normal track data
 .db 0h40 ; 0h02EC: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02ED: normal track data,  wait 0
 .db 0h92 ; 0h02EE: normal track data
 .db 0h40 ; 0h02EF: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h02F0: normal track data,  wait 4
 .db 0h92 ; 0h02F1: normal track data
 .db 0h40 ; 0h02F2: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02F3: normal track data,  wait 0
 .db 0h92 ; 0h02F4: normal track data
 .db 0h40 ; 0h02F5: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02F6: normal track data,  wait 0
 .db 0h94 ; 0h02F7: normal track data
 .db 0h40 ; 0h02F8: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02F9: normal track data,  wait 0
 .db 0h94 ; 0h02FA: normal track data
 .db 0h40 ; 0h02FB: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02FC: normal track data,  wait 0
 .db 0h92 ; 0h02FD: normal track data
 .db 0h40 ; 0h02FE: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h02FF: normal track data,  wait 0
 .db 0h92 ; 0h0300: normal track data
 .db 0h40 ; 0h0301: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h0302: normal track data
 .db 0h40 ; 0h0303: vol off, no pitch, note, no instrument
 .db 0hA0 ; 0h0304: normal track data
 .db 0h40 ; 0h0305: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0306: normal track data
 .db 0h40 ; 0h0307: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0308: normal track data
 .db 0h40 ; 0h0309: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h030A: normal track data
 .db 0h40 ; 0h030B: vol off, no pitch, note, no instrument
trackDef8Test:
 .db 0h92 ; 0h030C: normal track data
 .db 0hE1 ; 0h030D: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h030E: pitch
 .db 0h03 ; 0h0310: instrument
 .db 0h02 ; 0h0311: normal track data,  wait 0
 .db 0h92 ; 0h0312: normal track data
 .db 0h40 ; 0h0313: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0314: normal track data,  wait 0
 .db 0hAA ; 0h0315: normal track data
 .db 0h40 ; 0h0316: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0317: normal track data
 .db 0h40 ; 0h0318: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h0319: normal track data
 .db 0h40 ; 0h031A: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h031B: normal track data
 .db 0h40 ; 0h031C: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h031D: normal track data
 .db 0h40 ; 0h031E: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h031F: normal track data,  wait 0
 .db 0h92 ; 0h0320: normal track data
 .db 0h40 ; 0h0321: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0322: normal track data,  wait 4
 .db 0h92 ; 0h0323: normal track data
 .db 0h40 ; 0h0324: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0325: normal track data,  wait 0
 .db 0h92 ; 0h0326: normal track data
 .db 0h40 ; 0h0327: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0328: normal track data,  wait 0
 .db 0h92 ; 0h0329: normal track data
 .db 0h60 ; 0h032A: vol off, no pitch, note, instrument
 .db 0h04 ; 0h032B: instrument
 .db 0h02 ; 0h032C: normal track data,  wait 0
 .db 0h92 ; 0h032D: normal track data
 .db 0h40 ; 0h032E: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h032F: normal track data,  wait 0
 .db 0h92 ; 0h0330: normal track data
 .db 0h60 ; 0h0331: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0332: instrument
 .db 0h02 ; 0h0333: normal track data,  wait 0
 .db 0h92 ; 0h0334: normal track data
 .db 0h40 ; 0h0335: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0336: normal track data,  wait 4
 .db 0h92 ; 0h0337: normal track data
 .db 0h40 ; 0h0338: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0339: normal track data,  wait 0
 .db 0h92 ; 0h033A: normal track data
 .db 0h40 ; 0h033B: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h033C: normal track data,  wait 0
 .db 0hAA ; 0h033D: normal track data
 .db 0h40 ; 0h033E: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h033F: normal track data
 .db 0h40 ; 0h0340: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h0341: normal track data
 .db 0h40 ; 0h0342: vol off, no pitch, note, no instrument
 .db 0hBA ; 0h0343: normal track data
 .db 0h40 ; 0h0344: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0345: normal track data
 .db 0h40 ; 0h0346: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0347: normal track data,  wait 0
 .db 0h92 ; 0h0348: normal track data
 .db 0h40 ; 0h0349: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h034A: normal track data,  wait 4
 .db 0h92 ; 0h034B: normal track data
 .db 0h40 ; 0h034C: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h034D: normal track data,  wait 0
 .db 0h92 ; 0h034E: normal track data
 .db 0h40 ; 0h034F: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0350: normal track data,  wait 0
 .db 0h92 ; 0h0351: normal track data
 .db 0h60 ; 0h0352: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0353: instrument
 .db 0h02 ; 0h0354: normal track data,  wait 0
 .db 0h92 ; 0h0355: normal track data
 .db 0h40 ; 0h0356: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0357: normal track data,  wait 0
 .db 0h92 ; 0h0358: normal track data
 .db 0h60 ; 0h0359: vol off, no pitch, note, instrument
 .db 0h03 ; 0h035A: instrument
 .db 0h02 ; 0h035B: normal track data,  wait 0
 .db 0h92 ; 0h035C: normal track data
 .db 0h40 ; 0h035D: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h035E: normal track data
 .db 0h40 ; 0h035F: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0360: normal track data
 .db 0h40 ; 0h0361: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0362: normal track data
 .db 0h60 ; 0h0363: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0364: instrument
 .db 0hAA ; 0h0365: normal track data
 .db 0h40 ; 0h0366: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0367: normal track data
 .db 0h60 ; 0h0368: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0369: instrument
trackDef9Test:
 .db 0h92 ; 0h036A: normal track data
 .db 0hF3 ; 0h036B: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h036C: pitch
 .db 0h05 ; 0h036E: instrument
 .db 0h0E ; 0h036F: normal track data,  wait 6
 .db 0h92 ; 0h0370: normal track data
 .db 0h40 ; 0h0371: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h0372: normal track data,  wait 6
 .db 0h92 ; 0h0373: normal track data
 .db 0h40 ; 0h0374: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h0375: normal track data,  wait 6
 .db 0h92 ; 0h0376: normal track data
 .db 0h40 ; 0h0377: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h0378: normal track data,  wait 6
 .db 0h92 ; 0h0379: normal track data
 .db 0h40 ; 0h037A: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h037B: normal track data,  wait 6
 .db 0h92 ; 0h037C: normal track data
 .db 0h40 ; 0h037D: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h037E: normal track data,  wait 6
 .db 0h92 ; 0h037F: normal track data
 .db 0h40 ; 0h0380: vol off, no pitch, note, no instrument
 .db 0h0E ; 0h0381: normal track data,  wait 6
 .db 0h92 ; 0h0382: normal track data
 .db 0h40 ; 0h0383: vol off, no pitch, note, no instrument
 .db 0h04 ; 0h0384: normal track data,  wait 1
 .db 0hB4 ; 0h0385: normal track data
 .db 0h40 ; 0h0386: vol off, no pitch, note, no instrument
 .db 0hA0 ; 0h0387: normal track data
 .db 0h40 ; 0h0388: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0389: normal track data
 .db 0h40 ; 0h038A: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h038B: normal track data
 .db 0h40 ; 0h038C: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h038D: normal track data
 .db 0h40 ; 0h038E: vol off, no pitch, note, no instrument
trackDef14Test:
 .db 0h92 ; 0h038F: normal track data
 .db 0hE1 ; 0h0390: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0391: pitch
 .db 0h02 ; 0h0393: instrument
 .db 0hC2 ; 0h0394: normal track data
 .db 0h49 ; 0h0395: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0396: normal track data
 .db 0h41 ; 0h0397: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0398: normal track data
 .db 0h49 ; 0h0399: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h039A: normal track data
 .db 0h41 ; 0h039B: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h039C: normal track data
 .db 0h40 ; 0h039D: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h039E: normal track data
 .db 0h40 ; 0h039F: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h03A0: normal track data
 .db 0h40 ; 0h03A1: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h03A2: normal track data
 .db 0h40 ; 0h03A3: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h03A4: normal track data
 .db 0h49 ; 0h03A5: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03A6: normal track data
 .db 0h41 ; 0h03A7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03A8: normal track data
 .db 0h49 ; 0h03A9: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03AA: normal track data
 .db 0h41 ; 0h03AB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03AC: normal track data
 .db 0h49 ; 0h03AD: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03AE: normal track data
 .db 0h41 ; 0h03AF: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03B0: normal track data
 .db 0h49 ; 0h03B1: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03B2: normal track data
 .db 0h41 ; 0h03B3: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03B4: normal track data
 .db 0h49 ; 0h03B5: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03B6: normal track data
 .db 0h41 ; 0h03B7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03B8: normal track data
 .db 0h49 ; 0h03B9: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h03BA: normal track data
 .db 0h41 ; 0h03BB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h03BC: normal track data
 .db 0h49 ; 0h03BD: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h03BE: normal track data
 .db 0h41 ; 0h03BF: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h03C0: normal track data
 .db 0h49 ; 0h03C1: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03C2: normal track data
 .db 0h41 ; 0h03C3: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03C4: normal track data
 .db 0h49 ; 0h03C5: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03C6: normal track data
 .db 0h41 ; 0h03C7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03C8: normal track data
 .db 0h49 ; 0h03C9: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03CA: normal track data
 .db 0h41 ; 0h03CB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03CC: normal track data
 .db 0h49 ; 0h03CD: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03CE: normal track data
 .db 0h41 ; 0h03CF: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03D0: normal track data
 .db 0h49 ; 0h03D1: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03D2: normal track data
 .db 0h41 ; 0h03D3: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03D4: normal track data
 .db 0h49 ; 0h03D5: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03D6: normal track data
 .db 0h41 ; 0h03D7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03D8: normal track data
 .db 0h49 ; 0h03D9: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03DA: normal track data
 .db 0h41 ; 0h03DB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h03DC: normal track data
 .db 0h40 ; 0h03DD: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h03DE: normal track data
 .db 0h40 ; 0h03DF: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h03E0: normal track data
 .db 0h40 ; 0h03E1: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h03E2: normal track data
 .db 0h40 ; 0h03E3: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h03E4: normal track data
 .db 0h49 ; 0h03E5: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03E6: normal track data
 .db 0h41 ; 0h03E7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03E8: normal track data
 .db 0h49 ; 0h03E9: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03EA: normal track data
 .db 0h41 ; 0h03EB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03EC: normal track data
 .db 0h49 ; 0h03ED: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h03EE: normal track data
 .db 0h41 ; 0h03EF: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03F0: normal track data
 .db 0h49 ; 0h03F1: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03F2: normal track data
 .db 0h41 ; 0h03F3: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03F4: normal track data
 .db 0h49 ; 0h03F5: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h03F6: normal track data
 .db 0h41 ; 0h03F7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h03F8: normal track data
 .db 0h49 ; 0h03F9: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h03FA: normal track data
 .db 0h41 ; 0h03FB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h03FC: normal track data
 .db 0h49 ; 0h03FD: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h03FE: normal track data
 .db 0h41 ; 0h03FF: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h0400: normal track data
 .db 0h49 ; 0h0401: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0402: normal track data
 .db 0h41 ; 0h0403: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0404: normal track data
 .db 0h49 ; 0h0405: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0406: normal track data
 .db 0h41 ; 0h0407: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0408: normal track data
 .db 0h40 ; 0h0409: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h040A: normal track data
 .db 0h49 ; 0h040B: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h040C: normal track data
 .db 0h41 ; 0h040D: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h040E: normal track data
 .db 0h49 ; 0h040F: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0410: normal track data
 .db 0h41 ; 0h0411: vol = 0hF (inverted), no pitch, no note, no instrument
trackDef10Test:
 .db 0h92 ; 0h0412: normal track data
 .db 0hE1 ; 0h0413: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0414: pitch
 .db 0h03 ; 0h0416: instrument
 .db 0h42 ; 0h0417: normal track data
 .db 0h00 ; 0h0418: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0419: normal track data
 .db 0h40 ; 0h041A: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h041B: normal track data
 .db 0h00 ; 0h041C: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h041D: normal track data
 .db 0h6B ; 0h041E: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h041F: instrument
 .db 0hAA ; 0h0420: normal track data
 .db 0h49 ; 0h0421: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0422: normal track data,  note: E5
 .db 0h47 ; 0h0423: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0424: normal track data
 .db 0h49 ; 0h0425: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0426: normal track data
 .db 0h61 ; 0h0427: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0428: instrument
 .db 0h42 ; 0h0429: normal track data
 .db 0h00 ; 0h042A: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h042B: normal track data
 .db 0h60 ; 0h042C: vol off, no pitch, note, instrument
 .db 0h03 ; 0h042D: instrument
 .db 0h42 ; 0h042E: normal track data
 .db 0h00 ; 0h042F: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0430: normal track data
 .db 0h6B ; 0h0431: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0432: instrument
 .db 0hAA ; 0h0433: normal track data
 .db 0h49 ; 0h0434: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0435: normal track data,  note: E5
 .db 0h47 ; 0h0436: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0437: normal track data
 .db 0h49 ; 0h0438: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0439: normal track data
 .db 0h61 ; 0h043A: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h043B: instrument
 .db 0h42 ; 0h043C: normal track data
 .db 0h00 ; 0h043D: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h043E: normal track data
 .db 0h40 ; 0h043F: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0440: normal track data
 .db 0h00 ; 0h0441: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0442: normal track data
 .db 0h6B ; 0h0443: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0444: instrument
 .db 0hAA ; 0h0445: normal track data
 .db 0h49 ; 0h0446: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0447: normal track data,  note: E5
 .db 0h47 ; 0h0448: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0449: normal track data
 .db 0h49 ; 0h044A: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h044B: normal track data
 .db 0h61 ; 0h044C: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h044D: instrument
 .db 0h42 ; 0h044E: normal track data
 .db 0h00 ; 0h044F: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0450: normal track data
 .db 0h60 ; 0h0451: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0452: instrument
 .db 0h42 ; 0h0453: normal track data
 .db 0h00 ; 0h0454: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0455: normal track data
 .db 0h6B ; 0h0456: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0457: instrument
 .db 0hAA ; 0h0458: normal track data
 .db 0h49 ; 0h0459: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h045A: normal track data,  note: E5
 .db 0h47 ; 0h045B: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h045C: normal track data
 .db 0h49 ; 0h045D: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h045E: normal track data
 .db 0h61 ; 0h045F: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h0460: instrument
 .db 0h42 ; 0h0461: normal track data
 .db 0h00 ; 0h0462: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0463: normal track data
 .db 0h40 ; 0h0464: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0465: normal track data
 .db 0h00 ; 0h0466: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0467: normal track data
 .db 0h6B ; 0h0468: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0469: instrument
 .db 0hAA ; 0h046A: normal track data
 .db 0h49 ; 0h046B: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h046C: normal track data,  note: E5
 .db 0h47 ; 0h046D: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h046E: normal track data
 .db 0h49 ; 0h046F: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0470: normal track data
 .db 0h61 ; 0h0471: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0472: instrument
 .db 0h42 ; 0h0473: normal track data
 .db 0h00 ; 0h0474: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0475: normal track data
 .db 0h60 ; 0h0476: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0477: instrument
 .db 0h42 ; 0h0478: normal track data
 .db 0h00 ; 0h0479: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h047A: normal track data
 .db 0h6B ; 0h047B: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h047C: instrument
 .db 0hAA ; 0h047D: normal track data
 .db 0h49 ; 0h047E: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h047F: normal track data,  note: E5
 .db 0h47 ; 0h0480: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0481: normal track data
 .db 0h49 ; 0h0482: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0483: normal track data
 .db 0h61 ; 0h0484: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h0485: instrument
 .db 0h42 ; 0h0486: normal track data
 .db 0h00 ; 0h0487: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0488: normal track data
 .db 0h40 ; 0h0489: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h048A: normal track data
 .db 0h00 ; 0h048B: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h048C: normal track data
 .db 0h6B ; 0h048D: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h048E: instrument
 .db 0hAA ; 0h048F: normal track data
 .db 0h49 ; 0h0490: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0491: normal track data,  note: E5
 .db 0h47 ; 0h0492: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0493: normal track data
 .db 0h49 ; 0h0494: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0495: normal track data
 .db 0h61 ; 0h0496: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0497: instrument
 .db 0h42 ; 0h0498: normal track data
 .db 0h00 ; 0h0499: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h049A: normal track data
 .db 0h60 ; 0h049B: vol off, no pitch, note, instrument
 .db 0h03 ; 0h049C: instrument
 .db 0h42 ; 0h049D: normal track data
 .db 0h00 ; 0h049E: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h049F: normal track data
 .db 0h6B ; 0h04A0: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h04A1: instrument
 .db 0hAA ; 0h04A2: normal track data
 .db 0h49 ; 0h04A3: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h04A4: normal track data,  note: E5
 .db 0h47 ; 0h04A5: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h04A6: normal track data
 .db 0h49 ; 0h04A7: vol = 0hB (inverted), no pitch, no note, no instrument
trackDef12Test:
 .db 0h92 ; 0h04A8: normal track data
 .db 0hE1 ; 0h04A9: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h04AA: pitch
 .db 0h03 ; 0h04AC: instrument
 .db 0h42 ; 0h04AD: normal track data
 .db 0h00 ; 0h04AE: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04AF: normal track data
 .db 0h40 ; 0h04B0: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h04B1: normal track data
 .db 0h00 ; 0h04B2: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04B3: normal track data
 .db 0h6B ; 0h04B4: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h04B5: instrument
 .db 0hAA ; 0h04B6: normal track data
 .db 0h49 ; 0h04B7: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h04B8: normal track data,  note: E5
 .db 0h47 ; 0h04B9: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h04BA: normal track data
 .db 0h49 ; 0h04BB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h04BC: normal track data
 .db 0h61 ; 0h04BD: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h04BE: instrument
 .db 0h42 ; 0h04BF: normal track data
 .db 0h00 ; 0h04C0: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04C1: normal track data
 .db 0h60 ; 0h04C2: vol off, no pitch, note, instrument
 .db 0h03 ; 0h04C3: instrument
 .db 0h42 ; 0h04C4: normal track data
 .db 0h00 ; 0h04C5: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04C6: normal track data
 .db 0h6B ; 0h04C7: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h04C8: instrument
 .db 0hAA ; 0h04C9: normal track data
 .db 0h49 ; 0h04CA: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h04CB: normal track data,  note: E5
 .db 0h47 ; 0h04CC: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h04CD: normal track data
 .db 0h49 ; 0h04CE: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h04CF: normal track data
 .db 0h61 ; 0h04D0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h04D1: instrument
 .db 0h42 ; 0h04D2: normal track data
 .db 0h00 ; 0h04D3: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04D4: normal track data
 .db 0h40 ; 0h04D5: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h04D6: normal track data
 .db 0h00 ; 0h04D7: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04D8: normal track data
 .db 0h6B ; 0h04D9: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h04DA: instrument
 .db 0hAA ; 0h04DB: normal track data
 .db 0h49 ; 0h04DC: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h04DD: normal track data,  note: E5
 .db 0h47 ; 0h04DE: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h04DF: normal track data
 .db 0h49 ; 0h04E0: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h04E1: normal track data
 .db 0h61 ; 0h04E2: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h04E3: instrument
 .db 0h42 ; 0h04E4: normal track data
 .db 0h00 ; 0h04E5: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04E6: normal track data
 .db 0h60 ; 0h04E7: vol off, no pitch, note, instrument
 .db 0h03 ; 0h04E8: instrument
 .db 0h42 ; 0h04E9: normal track data
 .db 0h00 ; 0h04EA: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04EB: normal track data
 .db 0h6B ; 0h04EC: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h04ED: instrument
 .db 0hAA ; 0h04EE: normal track data
 .db 0h49 ; 0h04EF: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h04F0: normal track data,  note: E5
 .db 0h47 ; 0h04F1: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h04F2: normal track data
 .db 0h49 ; 0h04F3: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h04F4: normal track data
 .db 0h61 ; 0h04F5: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h04F6: instrument
 .db 0h42 ; 0h04F7: normal track data
 .db 0h00 ; 0h04F8: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04F9: normal track data
 .db 0h40 ; 0h04FA: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h04FB: normal track data
 .db 0h00 ; 0h04FC: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h04FD: normal track data
 .db 0h6B ; 0h04FE: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h04FF: instrument
 .db 0hAA ; 0h0500: normal track data
 .db 0h49 ; 0h0501: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0502: normal track data,  note: E5
 .db 0h47 ; 0h0503: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0504: normal track data
 .db 0h49 ; 0h0505: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0506: normal track data
 .db 0h61 ; 0h0507: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0508: instrument
 .db 0h42 ; 0h0509: normal track data
 .db 0h00 ; 0h050A: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h050B: normal track data
 .db 0h60 ; 0h050C: vol off, no pitch, note, instrument
 .db 0h03 ; 0h050D: instrument
 .db 0h42 ; 0h050E: normal track data
 .db 0h00 ; 0h050F: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0510: normal track data
 .db 0h6B ; 0h0511: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0512: instrument
 .db 0hAA ; 0h0513: normal track data
 .db 0h49 ; 0h0514: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0515: normal track data,  note: E5
 .db 0h47 ; 0h0516: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0517: normal track data
 .db 0h49 ; 0h0518: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0519: normal track data
 .db 0h61 ; 0h051A: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h051B: instrument
 .db 0h42 ; 0h051C: normal track data
 .db 0h00 ; 0h051D: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h051E: normal track data
 .db 0h40 ; 0h051F: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0520: normal track data
 .db 0h00 ; 0h0521: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0522: normal track data
 .db 0h6B ; 0h0523: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0524: instrument
 .db 0hAA ; 0h0525: normal track data
 .db 0h49 ; 0h0526: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0527: normal track data,  note: E5
 .db 0h47 ; 0h0528: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0529: normal track data
 .db 0h49 ; 0h052A: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h052B: normal track data
 .db 0h61 ; 0h052C: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h03 ; 0h052D: instrument
 .db 0h53 ; 0h052E: full optimization, no escape: E3
 .db 0hAA ; 0h052F: normal track data
 .db 0h40 ; 0h0530: vol off, no pitch, note, no instrument
 .db 0h6B ; 0h0531: full optimization, no escape: E4
 .db 0h92 ; 0h0532: normal track data
 .db 0h4B ; 0h0533: vol = 0hA (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0534: normal track data
 .db 0h49 ; 0h0535: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0536: normal track data,  note: E3
 .db 0h67 ; 0h0537: vol = 0hC (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0538: instrument
 .db 0h92 ; 0h0539: normal track data
 .db 0h49 ; 0h053A: vol = 0hB (inverted), no pitch, no note, no instrument
trackDef15Test:
 .db 0h72 ; 0h053B: normal track data
 .db 0hE1 ; 0h053C: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h053D: pitch
 .db 0h03 ; 0h053F: instrument
 .db 0h5A ; 0h0540: normal track data
 .db 0h60 ; 0h0541: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0542: instrument
 .db 0hB2 ; 0h0543: normal track data,  note: G#4
 .db 0h7F ; 0h0544: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h0545: instrument
 .db 0h5A ; 0h0546: normal track data
 .db 0h61 ; 0h0547: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0548: instrument
 .db 0h72 ; 0h0549: normal track data
 .db 0h60 ; 0h054A: vol off, no pitch, note, instrument
 .db 0h04 ; 0h054B: instrument
 .db 0hB2 ; 0h054C: normal track data,  note: G#4
 .db 0h7F ; 0h054D: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h054E: instrument
 .db 0h5A ; 0h054F: normal track data
 .db 0h61 ; 0h0550: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0551: instrument
 .db 0h72 ; 0h0552: normal track data
 .db 0h60 ; 0h0553: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0554: instrument
 .db 0hB2 ; 0h0555: normal track data,  note: G#4
 .db 0h7F ; 0h0556: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h0557: instrument
 .db 0h5A ; 0h0558: normal track data
 .db 0h61 ; 0h0559: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h055A: instrument
 .db 0h72 ; 0h055B: normal track data
 .db 0h60 ; 0h055C: vol off, no pitch, note, instrument
 .db 0h03 ; 0h055D: instrument
 .db 0hAE ; 0h055E: normal track data,  note: F#4
 .db 0h7F ; 0h055F: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0560: instrument
 .db 0h72 ; 0h0561: normal track data
 .db 0h61 ; 0h0562: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0563: instrument
 .db 0h5A ; 0h0564: normal track data
 .db 0h60 ; 0h0565: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0566: instrument
 .db 0hAE ; 0h0567: normal track data,  note: F#4
 .db 0h7F ; 0h0568: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0569: instrument
 .db 0h5A ; 0h056A: normal track data
 .db 0h61 ; 0h056B: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h056C: instrument
 .db 0h72 ; 0h056D: normal track data
 .db 0h60 ; 0h056E: vol off, no pitch, note, instrument
 .db 0h03 ; 0h056F: instrument
 .db 0h5A ; 0h0570: normal track data
 .db 0h60 ; 0h0571: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0572: instrument
 .db 0hB2 ; 0h0573: normal track data,  note: G#4
 .db 0h7F ; 0h0574: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h0575: instrument
 .db 0h5A ; 0h0576: normal track data
 .db 0h61 ; 0h0577: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0578: instrument
 .db 0h72 ; 0h0579: normal track data
 .db 0h60 ; 0h057A: vol off, no pitch, note, instrument
 .db 0h04 ; 0h057B: instrument
 .db 0hB2 ; 0h057C: normal track data,  note: G#4
 .db 0h7F ; 0h057D: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h057E: instrument
 .db 0h5A ; 0h057F: normal track data
 .db 0h61 ; 0h0580: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0581: instrument
 .db 0h72 ; 0h0582: normal track data
 .db 0h60 ; 0h0583: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0584: instrument
 .db 0hB8 ; 0h0585: normal track data,  note: B4
 .db 0h7F ; 0h0586: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0587: instrument
 .db 0h5A ; 0h0588: normal track data
 .db 0h61 ; 0h0589: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h058A: instrument
 .db 0h72 ; 0h058B: normal track data
 .db 0h60 ; 0h058C: vol off, no pitch, note, instrument
 .db 0h03 ; 0h058D: instrument
 .db 0hB8 ; 0h058E: normal track data,  note: B4
 .db 0h7F ; 0h058F: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0590: instrument
 .db 0h72 ; 0h0591: normal track data
 .db 0h61 ; 0h0592: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h0593: instrument
 .db 0h5A ; 0h0594: normal track data
 .db 0h60 ; 0h0595: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0596: instrument
 .db 0hB2 ; 0h0597: normal track data,  note: G#4
 .db 0h7F ; 0h0598: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h0599: instrument
 .db 0h5A ; 0h059A: normal track data
 .db 0h61 ; 0h059B: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h059C: instrument
 .db 0h72 ; 0h059D: normal track data
 .db 0h60 ; 0h059E: vol off, no pitch, note, instrument
 .db 0h03 ; 0h059F: instrument
 .db 0h5A ; 0h05A0: normal track data
 .db 0h60 ; 0h05A1: vol off, no pitch, note, instrument
 .db 0h01 ; 0h05A2: instrument
 .db 0hB2 ; 0h05A3: normal track data,  note: G#4
 .db 0h7F ; 0h05A4: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h05A5: instrument
 .db 0h5A ; 0h05A6: normal track data
 .db 0h61 ; 0h05A7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05A8: instrument
 .db 0h72 ; 0h05A9: normal track data
 .db 0h60 ; 0h05AA: vol off, no pitch, note, instrument
 .db 0h04 ; 0h05AB: instrument
 .db 0hB2 ; 0h05AC: normal track data,  note: G#4
 .db 0h7F ; 0h05AD: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h05AE: instrument
 .db 0h5A ; 0h05AF: normal track data
 .db 0h61 ; 0h05B0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05B1: instrument
 .db 0h72 ; 0h05B2: normal track data
 .db 0h60 ; 0h05B3: vol off, no pitch, note, instrument
 .db 0h03 ; 0h05B4: instrument
 .db 0hB2 ; 0h05B5: normal track data,  note: G#4
 .db 0h7F ; 0h05B6: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h05B7: instrument
 .db 0h5A ; 0h05B8: normal track data
 .db 0h61 ; 0h05B9: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05BA: instrument
 .db 0h72 ; 0h05BB: normal track data
 .db 0h60 ; 0h05BC: vol off, no pitch, note, instrument
 .db 0h03 ; 0h05BD: instrument
 .db 0hAE ; 0h05BE: normal track data,  note: F#4
 .db 0h7F ; 0h05BF: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h05C0: instrument
 .db 0h72 ; 0h05C1: normal track data
 .db 0h61 ; 0h05C2: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h05C3: instrument
 .db 0h5A ; 0h05C4: normal track data
 .db 0h60 ; 0h05C5: vol off, no pitch, note, instrument
 .db 0h01 ; 0h05C6: instrument
 .db 0hAE ; 0h05C7: normal track data,  note: F#4
 .db 0h7F ; 0h05C8: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h05C9: instrument
 .db 0h5A ; 0h05CA: normal track data
 .db 0h61 ; 0h05CB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05CC: instrument
 .db 0h72 ; 0h05CD: normal track data
 .db 0h60 ; 0h05CE: vol off, no pitch, note, instrument
 .db 0h03 ; 0h05CF: instrument
 .db 0h5A ; 0h05D0: normal track data
 .db 0h60 ; 0h05D1: vol off, no pitch, note, instrument
 .db 0h01 ; 0h05D2: instrument
 .db 0hB2 ; 0h05D3: normal track data,  note: G#4
 .db 0h7F ; 0h05D4: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h05D5: instrument
 .db 0h5A ; 0h05D6: normal track data
 .db 0h61 ; 0h05D7: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05D8: instrument
 .db 0h72 ; 0h05D9: normal track data
 .db 0h60 ; 0h05DA: vol off, no pitch, note, instrument
 .db 0h04 ; 0h05DB: instrument
 .db 0hB2 ; 0h05DC: normal track data,  note: G#4
 .db 0h7F ; 0h05DD: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h05DE: instrument
 .db 0h5A ; 0h05DF: normal track data
 .db 0h61 ; 0h05E0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05E1: instrument
 .db 0h72 ; 0h05E2: normal track data
 .db 0h60 ; 0h05E3: vol off, no pitch, note, instrument
 .db 0h03 ; 0h05E4: instrument
 .db 0hB8 ; 0h05E5: normal track data,  note: B4
 .db 0h7F ; 0h05E6: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h05E7: instrument
 .db 0h5A ; 0h05E8: normal track data
 .db 0h61 ; 0h05E9: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05EA: instrument
 .db 0h72 ; 0h05EB: normal track data
 .db 0h60 ; 0h05EC: vol off, no pitch, note, instrument
 .db 0h03 ; 0h05ED: instrument
 .db 0hB8 ; 0h05EE: normal track data,  note: B4
 .db 0h7F ; 0h05EF: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h05F0: instrument
 .db 0h72 ; 0h05F1: normal track data
 .db 0h61 ; 0h05F2: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h05F3: instrument
 .db 0h5A ; 0h05F4: normal track data
 .db 0h60 ; 0h05F5: vol off, no pitch, note, instrument
 .db 0h01 ; 0h05F6: instrument
 .db 0hB2 ; 0h05F7: normal track data,  note: G#4
 .db 0h7F ; 0h05F8: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h05F9: instrument
 .db 0h5A ; 0h05FA: normal track data
 .db 0h61 ; 0h05FB: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h05FC: instrument
trackDef11Test:
 .db 0hC2 ; 0h05FD: normal track data
 .db 0hF3 ; 0h05FE: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h05FF: pitch
 .db 0h05 ; 0h0601: instrument
 .db 0hDA ; 0h0602: normal track data
 .db 0h40 ; 0h0603: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0604: normal track data
 .db 0h40 ; 0h0605: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0606: normal track data
 .db 0h40 ; 0h0607: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0608: normal track data
 .db 0h40 ; 0h0609: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h060A: normal track data
 .db 0h40 ; 0h060B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h060C: normal track data
 .db 0h40 ; 0h060D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h060E: normal track data
 .db 0h40 ; 0h060F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0610: normal track data
 .db 0h40 ; 0h0611: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0612: normal track data
 .db 0h40 ; 0h0613: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0614: normal track data
 .db 0h40 ; 0h0615: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0616: normal track data
 .db 0h40 ; 0h0617: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0618: normal track data
 .db 0h40 ; 0h0619: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h061A: normal track data
 .db 0h40 ; 0h061B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h061C: normal track data
 .db 0h40 ; 0h061D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h061E: normal track data
 .db 0h40 ; 0h061F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0620: normal track data
 .db 0h40 ; 0h0621: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0622: normal track data
 .db 0h40 ; 0h0623: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0624: normal track data
 .db 0h40 ; 0h0625: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0626: normal track data
 .db 0h40 ; 0h0627: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0628: normal track data
 .db 0h40 ; 0h0629: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h062A: normal track data
 .db 0h40 ; 0h062B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h062C: normal track data
 .db 0h40 ; 0h062D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h062E: normal track data
 .db 0h40 ; 0h062F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0630: normal track data
 .db 0h40 ; 0h0631: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0632: normal track data
 .db 0h40 ; 0h0633: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0634: normal track data
 .db 0h40 ; 0h0635: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0636: normal track data
 .db 0h40 ; 0h0637: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0638: normal track data
 .db 0h40 ; 0h0639: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h063A: normal track data
 .db 0h40 ; 0h063B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h063C: normal track data
 .db 0h40 ; 0h063D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h063E: normal track data
 .db 0h40 ; 0h063F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0640: normal track data
 .db 0h40 ; 0h0641: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0642: normal track data
 .db 0h40 ; 0h0643: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0644: normal track data
 .db 0h40 ; 0h0645: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0646: normal track data
 .db 0h40 ; 0h0647: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0648: normal track data
 .db 0h40 ; 0h0649: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h064A: normal track data
 .db 0h40 ; 0h064B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h064C: normal track data
 .db 0h40 ; 0h064D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h064E: normal track data
 .db 0h40 ; 0h064F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0650: normal track data
 .db 0h40 ; 0h0651: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0652: normal track data
 .db 0h40 ; 0h0653: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0654: normal track data
 .db 0h40 ; 0h0655: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0656: normal track data
 .db 0h40 ; 0h0657: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0658: normal track data
 .db 0h40 ; 0h0659: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h065A: normal track data
 .db 0h40 ; 0h065B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h065C: normal track data
 .db 0h40 ; 0h065D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h065E: normal track data
 .db 0h40 ; 0h065F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0660: normal track data
 .db 0h40 ; 0h0661: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0662: normal track data
 .db 0h40 ; 0h0663: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0664: normal track data
 .db 0h40 ; 0h0665: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0666: normal track data
 .db 0h40 ; 0h0667: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0668: normal track data
 .db 0h40 ; 0h0669: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h066A: normal track data
 .db 0h40 ; 0h066B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h066C: normal track data
 .db 0h40 ; 0h066D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h066E: normal track data
 .db 0h40 ; 0h066F: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0670: normal track data
 .db 0h40 ; 0h0671: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0672: normal track data
 .db 0h40 ; 0h0673: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0674: normal track data
 .db 0h40 ; 0h0675: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0676: normal track data
 .db 0h40 ; 0h0677: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0678: normal track data
 .db 0h40 ; 0h0679: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h067A: normal track data
 .db 0h40 ; 0h067B: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h067C: normal track data
 .db 0h40 ; 0h067D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h067E: normal track data
 .db 0h40 ; 0h067F: vol off, no pitch, note, no instrument
trackDef13Test:
 .db 0hC2 ; 0h0680: normal track data
 .db 0hF3 ; 0h0681: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0682: pitch
 .db 0h05 ; 0h0684: instrument
 .db 0hDA ; 0h0685: normal track data
 .db 0h40 ; 0h0686: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0687: normal track data
 .db 0h40 ; 0h0688: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0689: normal track data
 .db 0h40 ; 0h068A: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h068B: normal track data
 .db 0h40 ; 0h068C: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h068D: normal track data
 .db 0h40 ; 0h068E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h068F: normal track data
 .db 0h40 ; 0h0690: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0691: normal track data
 .db 0h40 ; 0h0692: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0693: normal track data
 .db 0h40 ; 0h0694: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h0695: normal track data
 .db 0h40 ; 0h0696: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0697: normal track data
 .db 0h40 ; 0h0698: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0699: normal track data
 .db 0h40 ; 0h069A: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h069B: normal track data
 .db 0h40 ; 0h069C: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h069D: normal track data
 .db 0h40 ; 0h069E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h069F: normal track data
 .db 0h40 ; 0h06A0: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06A1: normal track data
 .db 0h40 ; 0h06A2: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06A3: normal track data
 .db 0h40 ; 0h06A4: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h06A5: normal track data
 .db 0h40 ; 0h06A6: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06A7: normal track data
 .db 0h40 ; 0h06A8: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06A9: normal track data
 .db 0h40 ; 0h06AA: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06AB: normal track data
 .db 0h40 ; 0h06AC: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06AD: normal track data
 .db 0h40 ; 0h06AE: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06AF: normal track data
 .db 0h40 ; 0h06B0: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06B1: normal track data
 .db 0h40 ; 0h06B2: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06B3: normal track data
 .db 0h40 ; 0h06B4: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h06B5: normal track data
 .db 0h40 ; 0h06B6: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06B7: normal track data
 .db 0h40 ; 0h06B8: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06B9: normal track data
 .db 0h40 ; 0h06BA: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06BB: normal track data
 .db 0h40 ; 0h06BC: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06BD: normal track data
 .db 0h40 ; 0h06BE: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06BF: normal track data
 .db 0h40 ; 0h06C0: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06C1: normal track data
 .db 0h40 ; 0h06C2: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06C3: normal track data
 .db 0h40 ; 0h06C4: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h06C5: normal track data
 .db 0h40 ; 0h06C6: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06C7: normal track data
 .db 0h40 ; 0h06C8: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06C9: normal track data
 .db 0h40 ; 0h06CA: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06CB: normal track data
 .db 0h40 ; 0h06CC: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06CD: normal track data
 .db 0h40 ; 0h06CE: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06CF: normal track data
 .db 0h40 ; 0h06D0: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06D1: normal track data
 .db 0h40 ; 0h06D2: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06D3: normal track data
 .db 0h40 ; 0h06D4: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h06D5: normal track data
 .db 0h40 ; 0h06D6: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h06D7: normal track data
 .db 0h40 ; 0h06D8: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06D9: normal track data
 .db 0h40 ; 0h06DA: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06DB: normal track data
 .db 0h40 ; 0h06DC: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06DD: normal track data
 .db 0h40 ; 0h06DE: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06DF: normal track data
 .db 0h40 ; 0h06E0: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h06E1: normal track data
 .db 0h40 ; 0h06E2: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06E3: normal track data
 .db 0h40 ; 0h06E4: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06E5: normal track data
 .db 0h40 ; 0h06E6: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06E7: normal track data
 .db 0h40 ; 0h06E8: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06E9: normal track data
 .db 0h40 ; 0h06EA: vol off, no pitch, note, no instrument
 .db 0h7C ; 0h06EB: normal track data
 .db 0h40 ; 0h06EC: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h06ED: normal track data
 .db 0h40 ; 0h06EE: vol off, no pitch, note, no instrument
 .db 0h7C ; 0h06EF: normal track data
 .db 0h40 ; 0h06F0: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h06F1: normal track data
 .db 0h40 ; 0h06F2: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06F3: normal track data
 .db 0h40 ; 0h06F4: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h06F5: normal track data
 .db 0h40 ; 0h06F6: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h06F7: normal track data
 .db 0h40 ; 0h06F8: vol off, no pitch, note, no instrument
 .db 0h84 ; 0h06F9: normal track data
 .db 0h40 ; 0h06FA: vol off, no pitch, note, no instrument
 .db 0h88 ; 0h06FB: normal track data
 .db 0h40 ; 0h06FC: vol off, no pitch, note, no instrument
 .db 0h84 ; 0h06FD: normal track data
 .db 0h40 ; 0h06FE: vol off, no pitch, note, no instrument
 .db 0h80 ; 0h06FF: normal track data
 .db 0h40 ; 0h0700: vol off, no pitch, note, no instrument
 .db 0h7C ; 0h0701: normal track data
 .db 0h40 ; 0h0702: vol off, no pitch, note, no instrument
trackDef18Test:
 .db 0h72 ; 0h0703: normal track data
 .db 0hE1 ; 0h0704: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0705: pitch
 .db 0h03 ; 0h0707: instrument
 .db 0h5A ; 0h0708: normal track data
 .db 0h60 ; 0h0709: vol off, no pitch, note, instrument
 .db 0h01 ; 0h070A: instrument
 .db 0hB2 ; 0h070B: normal track data,  note: G#4
 .db 0h7F ; 0h070C: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h070D: instrument
 .db 0h5A ; 0h070E: normal track data
 .db 0h61 ; 0h070F: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0710: instrument
 .db 0h72 ; 0h0711: normal track data
 .db 0h60 ; 0h0712: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0713: instrument
 .db 0hB2 ; 0h0714: normal track data,  note: G#4
 .db 0h7F ; 0h0715: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h0716: instrument
 .db 0h5A ; 0h0717: normal track data
 .db 0h61 ; 0h0718: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0719: instrument
 .db 0h72 ; 0h071A: normal track data
 .db 0h60 ; 0h071B: vol off, no pitch, note, instrument
 .db 0h03 ; 0h071C: instrument
 .db 0hB2 ; 0h071D: normal track data,  note: G#4
 .db 0h7F ; 0h071E: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h06 ; 0h071F: instrument
 .db 0h5A ; 0h0720: normal track data
 .db 0h61 ; 0h0721: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0722: instrument
 .db 0h72 ; 0h0723: normal track data
 .db 0h60 ; 0h0724: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0725: instrument
 .db 0hAE ; 0h0726: normal track data,  note: F#4
 .db 0h7F ; 0h0727: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0728: instrument
 .db 0h72 ; 0h0729: normal track data
 .db 0h61 ; 0h072A: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h072B: instrument
 .db 0h5A ; 0h072C: normal track data
 .db 0h60 ; 0h072D: vol off, no pitch, note, instrument
 .db 0h01 ; 0h072E: instrument
 .db 0hAE ; 0h072F: normal track data,  note: F#4
 .db 0h7F ; 0h0730: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0731: instrument
 .db 0h5A ; 0h0732: normal track data
 .db 0h61 ; 0h0733: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0734: instrument
 .db 0h72 ; 0h0735: normal track data
 .db 0h60 ; 0h0736: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0737: instrument
 .db 0h5A ; 0h0738: normal track data
 .db 0h60 ; 0h0739: vol off, no pitch, note, instrument
 .db 0h01 ; 0h073A: instrument
 .db 0hB2 ; 0h073B: normal track data,  note: G#4
 .db 0h7F ; 0h073C: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h073D: instrument
 .db 0h5A ; 0h073E: normal track data
 .db 0h61 ; 0h073F: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0740: instrument
 .db 0h72 ; 0h0741: normal track data
 .db 0h60 ; 0h0742: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0743: instrument
 .db 0hB2 ; 0h0744: normal track data,  note: G#4
 .db 0h7F ; 0h0745: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h0746: instrument
 .db 0h5A ; 0h0747: normal track data
 .db 0h61 ; 0h0748: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0749: instrument
 .db 0h72 ; 0h074A: normal track data
 .db 0h60 ; 0h074B: vol off, no pitch, note, instrument
 .db 0h03 ; 0h074C: instrument
 .db 0hB8 ; 0h074D: normal track data,  note: B4
 .db 0h7F ; 0h074E: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h074F: instrument
 .db 0h5A ; 0h0750: normal track data
 .db 0h61 ; 0h0751: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0752: instrument
 .db 0h72 ; 0h0753: normal track data
 .db 0h60 ; 0h0754: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0755: instrument
 .db 0hB8 ; 0h0756: normal track data,  note: B4
 .db 0h7F ; 0h0757: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h0758: instrument
 .db 0h72 ; 0h0759: normal track data
 .db 0h61 ; 0h075A: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h075B: instrument
 .db 0h5A ; 0h075C: normal track data
 .db 0h60 ; 0h075D: vol off, no pitch, note, instrument
 .db 0h01 ; 0h075E: instrument
 .db 0hB2 ; 0h075F: normal track data,  note: G#4
 .db 0h7F ; 0h0760: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h0761: instrument
 .db 0h5A ; 0h0762: normal track data
 .db 0h61 ; 0h0763: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0764: instrument
 .db 0h72 ; 0h0765: normal track data
 .db 0h60 ; 0h0766: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0767: instrument
 .db 0h5A ; 0h0768: normal track data
 .db 0h60 ; 0h0769: vol off, no pitch, note, instrument
 .db 0h01 ; 0h076A: instrument
 .db 0hB8 ; 0h076B: normal track data,  note: B4
 .db 0h7F ; 0h076C: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h076D: instrument
 .db 0h5A ; 0h076E: normal track data
 .db 0h61 ; 0h076F: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0770: instrument
 .db 0h72 ; 0h0771: normal track data
 .db 0h60 ; 0h0772: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0773: instrument
 .db 0hB8 ; 0h0774: normal track data,  note: B4
 .db 0h7F ; 0h0775: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h0776: instrument
 .db 0h5A ; 0h0777: normal track data
 .db 0h61 ; 0h0778: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0779: instrument
 .db 0h72 ; 0h077A: normal track data
 .db 0h60 ; 0h077B: vol off, no pitch, note, instrument
 .db 0h03 ; 0h077C: instrument
 .db 0hB8 ; 0h077D: normal track data,  note: B4
 .db 0h7F ; 0h077E: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h08 ; 0h077F: instrument
 .db 0h5A ; 0h0780: normal track data
 .db 0h61 ; 0h0781: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0782: instrument
 .db 0h72 ; 0h0783: normal track data
 .db 0h60 ; 0h0784: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0785: instrument
 .db 0hB8 ; 0h0786: normal track data,  note: B4
 .db 0h7F ; 0h0787: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h09 ; 0h0788: instrument
 .db 0h72 ; 0h0789: normal track data
 .db 0h61 ; 0h078A: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h04 ; 0h078B: instrument
 .db 0h5A ; 0h078C: normal track data
 .db 0h60 ; 0h078D: vol off, no pitch, note, instrument
 .db 0h01 ; 0h078E: instrument
 .db 0hB8 ; 0h078F: normal track data,  note: B4
 .db 0h7F ; 0h0790: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h09 ; 0h0791: instrument
 .db 0h5A ; 0h0792: normal track data
 .db 0h61 ; 0h0793: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h0794: instrument
 .db 0h72 ; 0h0795: normal track data
 .db 0h60 ; 0h0796: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0797: instrument
 .db 0h5A ; 0h0798: normal track data
 .db 0h60 ; 0h0799: vol off, no pitch, note, instrument
 .db 0h01 ; 0h079A: instrument
 .db 0hB8 ; 0h079B: normal track data,  note: B4
 .db 0h7F ; 0h079C: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h079D: instrument
 .db 0h5A ; 0h079E: normal track data
 .db 0h61 ; 0h079F: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h07A0: instrument
 .db 0h72 ; 0h07A1: normal track data
 .db 0h60 ; 0h07A2: vol off, no pitch, note, instrument
 .db 0h04 ; 0h07A3: instrument
 .db 0hB8 ; 0h07A4: normal track data,  note: B4
 .db 0h7F ; 0h07A5: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h07A6: instrument
 .db 0h5A ; 0h07A7: normal track data
 .db 0h61 ; 0h07A8: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h07A9: instrument
 .db 0h72 ; 0h07AA: normal track data
 .db 0h60 ; 0h07AB: vol off, no pitch, note, instrument
 .db 0h03 ; 0h07AC: instrument
 .db 0hB8 ; 0h07AD: normal track data,  note: B4
 .db 0h7F ; 0h07AE: vol = 0h0 (inverted), no pitch, no note, no instrument
 .db 0h07 ; 0h07AF: instrument
 .db 0h5A ; 0h07B0: normal track data
 .db 0h61 ; 0h07B1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h07B2: instrument
 .db 0h00 ; 0h07B3: track end signature found
trackDef17Test:
 .db 0h92 ; 0h07B4: normal track data
 .db 0hE1 ; 0h07B5: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h07B6: pitch
 .db 0h02 ; 0h07B8: instrument
 .db 0hC2 ; 0h07B9: normal track data
 .db 0h49 ; 0h07BA: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07BB: normal track data
 .db 0h41 ; 0h07BC: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07BD: normal track data
 .db 0h49 ; 0h07BE: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h07BF: normal track data
 .db 0h41 ; 0h07C0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h07C1: normal track data
 .db 0h40 ; 0h07C2: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h07C3: normal track data
 .db 0h40 ; 0h07C4: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h07C5: normal track data
 .db 0h40 ; 0h07C6: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h07C7: normal track data
 .db 0h40 ; 0h07C8: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h07C9: normal track data
 .db 0h49 ; 0h07CA: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07CB: normal track data
 .db 0h41 ; 0h07CC: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07CD: normal track data
 .db 0h49 ; 0h07CE: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h07CF: normal track data
 .db 0h41 ; 0h07D0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07D1: normal track data
 .db 0h49 ; 0h07D2: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h07D3: normal track data
 .db 0h41 ; 0h07D4: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07D5: normal track data
 .db 0h49 ; 0h07D6: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07D7: normal track data
 .db 0h41 ; 0h07D8: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07D9: normal track data
 .db 0h49 ; 0h07DA: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07DB: normal track data
 .db 0h41 ; 0h07DC: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07DD: normal track data
 .db 0h49 ; 0h07DE: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h07DF: normal track data
 .db 0h41 ; 0h07E0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h07E1: normal track data
 .db 0h49 ; 0h07E2: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h07E3: normal track data
 .db 0h41 ; 0h07E4: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h07E5: normal track data
 .db 0h49 ; 0h07E6: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07E7: normal track data
 .db 0h41 ; 0h07E8: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07E9: normal track data
 .db 0h49 ; 0h07EA: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07EB: normal track data
 .db 0h41 ; 0h07EC: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07ED: normal track data
 .db 0h49 ; 0h07EE: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h07EF: normal track data
 .db 0h41 ; 0h07F0: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07F1: normal track data
 .db 0h49 ; 0h07F2: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h07F3: normal track data
 .db 0h41 ; 0h07F4: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07F5: normal track data
 .db 0h49 ; 0h07F6: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07F7: normal track data
 .db 0h41 ; 0h07F8: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07F9: normal track data
 .db 0h49 ; 0h07FA: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h07FB: normal track data
 .db 0h41 ; 0h07FC: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h07FD: normal track data
 .db 0h49 ; 0h07FE: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h07FF: normal track data
 .db 0h41 ; 0h0800: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h0801: normal track data
 .db 0h40 ; 0h0802: vol off, no pitch, note, no instrument
 .db 0hB0 ; 0h0803: normal track data
 .db 0h40 ; 0h0804: vol off, no pitch, note, no instrument
 .db 0hB4 ; 0h0805: normal track data
 .db 0h40 ; 0h0806: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0807: normal track data
 .db 0h40 ; 0h0808: vol off, no pitch, note, no instrument
 .db 0hC2 ; 0h0809: normal track data
 .db 0h49 ; 0h080A: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h080B: normal track data
 .db 0h41 ; 0h080C: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h080D: normal track data
 .db 0h49 ; 0h080E: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h080F: normal track data
 .db 0h41 ; 0h0810: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0811: normal track data
 .db 0h49 ; 0h0812: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h0813: normal track data
 .db 0h41 ; 0h0814: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0815: normal track data
 .db 0h49 ; 0h0816: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0817: normal track data
 .db 0h41 ; 0h0818: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0819: normal track data
 .db 0h49 ; 0h081A: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h081B: normal track data
 .db 0h41 ; 0h081C: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h081D: normal track data
 .db 0h49 ; 0h081E: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h081F: normal track data
 .db 0h41 ; 0h0820: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h0821: normal track data
 .db 0h49 ; 0h0822: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h94 ; 0h0823: normal track data
 .db 0h41 ; 0h0824: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h0825: normal track data
 .db 0h49 ; 0h0826: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h92 ; 0h0827: normal track data
 .db 0h41 ; 0h0828: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h5A ; 0h0829: normal track data
 .db 0h60 ; 0h082A: vol off, no pitch, note, instrument
 .db 0h01 ; 0h082B: instrument
 .db 0h00 ; 0h082C: track end signature found
trackDef19Test:
 .db 0h92 ; 0h082D: normal track data
 .db 0hF3 ; 0h082E: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h082F: pitch
 .db 0h05 ; 0h0831: instrument
 .db 0hAA ; 0h0832: normal track data
 .db 0h40 ; 0h0833: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0834: normal track data
 .db 0h40 ; 0h0835: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0836: normal track data
 .db 0h40 ; 0h0837: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0838: normal track data
 .db 0h40 ; 0h0839: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h083A: normal track data
 .db 0h40 ; 0h083B: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h083C: normal track data
 .db 0h40 ; 0h083D: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h083E: normal track data
 .db 0h40 ; 0h083F: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0840: normal track data
 .db 0h40 ; 0h0841: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0842: normal track data
 .db 0h40 ; 0h0843: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0844: normal track data,  wait 3
 .db 0hAA ; 0h0845: normal track data
 .db 0h40 ; 0h0846: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0847: normal track data
 .db 0h40 ; 0h0848: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0849: normal track data
 .db 0h40 ; 0h084A: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h084B: normal track data
 .db 0h40 ; 0h084C: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h084D: normal track data
 .db 0h40 ; 0h084E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h084F: normal track data
 .db 0h40 ; 0h0850: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0851: normal track data
 .db 0h40 ; 0h0852: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0853: normal track data
 .db 0h40 ; 0h0854: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0855: normal track data
 .db 0h40 ; 0h0856: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0857: normal track data
 .db 0h40 ; 0h0858: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0859: normal track data
 .db 0h40 ; 0h085A: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h085B: normal track data
 .db 0h40 ; 0h085C: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h085D: normal track data,  wait 3
 .db 0hAA ; 0h085E: normal track data
 .db 0h40 ; 0h085F: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0860: normal track data
 .db 0h40 ; 0h0861: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0862: normal track data
 .db 0h40 ; 0h0863: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0864: normal track data
 .db 0h40 ; 0h0865: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0866: normal track data
 .db 0h40 ; 0h0867: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0868: normal track data
 .db 0h40 ; 0h0869: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h086A: normal track data
 .db 0h40 ; 0h086B: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h086C: normal track data
 .db 0h40 ; 0h086D: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h086E: normal track data
 .db 0h40 ; 0h086F: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0870: normal track data
 .db 0h40 ; 0h0871: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0872: normal track data
 .db 0h40 ; 0h0873: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0874: normal track data
 .db 0h40 ; 0h0875: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0876: normal track data,  wait 3
 .db 0hAA ; 0h0877: normal track data
 .db 0h40 ; 0h0878: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0879: normal track data
 .db 0h40 ; 0h087A: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h087B: normal track data
 .db 0h40 ; 0h087C: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h087D: normal track data
 .db 0h40 ; 0h087E: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h087F: normal track data
 .db 0h40 ; 0h0880: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0881: normal track data
 .db 0h40 ; 0h0882: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0883: normal track data
 .db 0h40 ; 0h0884: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0885: normal track data
 .db 0h40 ; 0h0886: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0887: normal track data
 .db 0h40 ; 0h0888: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0889: normal track data
 .db 0h40 ; 0h088A: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h088B: normal track data
 .db 0h40 ; 0h088C: vol off, no pitch, note, no instrument
 .db 0h5A ; 0h088D: normal track data
 .db 0h61 ; 0h088E: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h01 ; 0h088F: instrument
 .db 0h08 ; 0h0890: normal track data,  wait 3
 .db 0h42 ; 0h0891: normal track data
 .db 0h00 ; 0h0892: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0893: normal track data
 .db 0h00 ; 0h0894: vol off, no pitch, no note, no instrument
trackDef20Test:
 .db 0hAA ; 0h0895: normal track data
 .db 0hE1 ; 0h0896: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0897: pitch
 .db 0h02 ; 0h0899: instrument
 .db 0hDA ; 0h089A: normal track data
 .db 0h49 ; 0h089B: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h089C: normal track data
 .db 0h41 ; 0h089D: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h089E: normal track data
 .db 0h49 ; 0h089F: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08A0: normal track data
 .db 0h41 ; 0h08A1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h08A2: normal track data
 .db 0h40 ; 0h08A3: vol off, no pitch, note, no instrument
 .db 0hC8 ; 0h08A4: normal track data
 .db 0h40 ; 0h08A5: vol off, no pitch, note, no instrument
 .db 0hCC ; 0h08A6: normal track data
 .db 0h40 ; 0h08A7: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h08A8: normal track data
 .db 0h40 ; 0h08A9: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h08AA: normal track data
 .db 0h49 ; 0h08AB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08AC: normal track data
 .db 0h41 ; 0h08AD: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08AE: normal track data
 .db 0h49 ; 0h08AF: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08B0: normal track data
 .db 0h41 ; 0h08B1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08B2: normal track data
 .db 0h49 ; 0h08B3: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08B4: normal track data
 .db 0h41 ; 0h08B5: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08B6: normal track data
 .db 0h49 ; 0h08B7: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08B8: normal track data
 .db 0h41 ; 0h08B9: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08BA: normal track data
 .db 0h49 ; 0h08BB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08BC: normal track data
 .db 0h41 ; 0h08BD: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08BE: normal track data
 .db 0h49 ; 0h08BF: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h08C0: normal track data
 .db 0h41 ; 0h08C1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDC ; 0h08C2: normal track data
 .db 0h49 ; 0h08C3: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h08C4: normal track data
 .db 0h41 ; 0h08C5: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDC ; 0h08C6: normal track data
 .db 0h49 ; 0h08C7: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08C8: normal track data
 .db 0h41 ; 0h08C9: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08CA: normal track data
 .db 0h49 ; 0h08CB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08CC: normal track data
 .db 0h41 ; 0h08CD: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08CE: normal track data
 .db 0h49 ; 0h08CF: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08D0: normal track data
 .db 0h41 ; 0h08D1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08D2: normal track data
 .db 0h49 ; 0h08D3: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08D4: normal track data
 .db 0h41 ; 0h08D5: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08D6: normal track data
 .db 0h49 ; 0h08D7: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08D8: normal track data
 .db 0h41 ; 0h08D9: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08DA: normal track data
 .db 0h49 ; 0h08DB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08DC: normal track data
 .db 0h41 ; 0h08DD: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08DE: normal track data
 .db 0h49 ; 0h08DF: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08E0: normal track data
 .db 0h41 ; 0h08E1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC4 ; 0h08E2: normal track data
 .db 0h40 ; 0h08E3: vol off, no pitch, note, no instrument
 .db 0hC8 ; 0h08E4: normal track data
 .db 0h40 ; 0h08E5: vol off, no pitch, note, no instrument
 .db 0hCC ; 0h08E6: normal track data
 .db 0h40 ; 0h08E7: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h08E8: normal track data
 .db 0h40 ; 0h08E9: vol off, no pitch, note, no instrument
 .db 0hDA ; 0h08EA: normal track data
 .db 0h49 ; 0h08EB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08EC: normal track data
 .db 0h41 ; 0h08ED: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08EE: normal track data
 .db 0h49 ; 0h08EF: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08F0: normal track data
 .db 0h41 ; 0h08F1: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08F2: normal track data
 .db 0h49 ; 0h08F3: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h08F4: normal track data
 .db 0h41 ; 0h08F5: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08F6: normal track data
 .db 0h49 ; 0h08F7: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08F8: normal track data
 .db 0h41 ; 0h08F9: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hDA ; 0h08FA: normal track data
 .db 0h49 ; 0h08FB: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h08FC: normal track data
 .db 0h41 ; 0h08FD: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h02 ; 0h08FE: normal track data,  wait 0
 .db 0hAC ; 0h08FF: normal track data
 .db 0h40 ; 0h0900: vol off, no pitch, note, no instrument
 .db 0hDC ; 0h0901: normal track data
 .db 0h49 ; 0h0902: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAC ; 0h0903: normal track data
 .db 0h41 ; 0h0904: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h02 ; 0h0905: normal track data,  wait 0
 .db 0hAA ; 0h0906: normal track data
 .db 0hC0 ; 0h0907: vol off, pitch, note, no instrument
 .dw 0h0020 ; 0h0908: pitch
 .db 0hDA ; 0h090A: normal track data
 .db 0h49 ; 0h090B: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0hAA ; 0h090C: normal track data
 .db 0h41 ; 0h090D: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0h42 ; 0h090E: normal track data
 .db 0h00 ; 0h090F: vol off, no pitch, no note, no instrument
 .db 0hC2 ; 0h0910: normal track data
 .db 0hC9 ; 0h0911: vol = 0hB (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0912: pitch
 .db 0hDA ; 0h0914: normal track data
 .db 0h41 ; 0h0915: vol = 0hF (inverted), no pitch, no note, no instrument
 .db 0hC2 ; 0h0916: normal track data
 .db 0h49 ; 0h0917: vol = 0hB (inverted), no pitch, no note, no instrument
 .db 0h00 ; 0h0918: track end signature found
trackDef21Test:
 .db 0h72 ; 0h0919: normal track data
 .db 0hE1 ; 0h091A: vol = 0hF (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h091B: pitch
 .db 0h03 ; 0h091D: instrument
 .db 0h72 ; 0h091E: normal track data
 .db 0h40 ; 0h091F: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h0920: normal track data
 .db 0h40 ; 0h0921: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0922: normal track data
 .db 0h60 ; 0h0923: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0924: instrument
 .db 0h72 ; 0h0925: normal track data
 .db 0h60 ; 0h0926: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0927: instrument
 .db 0h98 ; 0h0928: normal track data
 .db 0h60 ; 0h0929: vol off, no pitch, note, instrument
 .db 0h01 ; 0h092A: instrument
 .db 0h72 ; 0h092B: normal track data
 .db 0h60 ; 0h092C: vol off, no pitch, note, instrument
 .db 0h03 ; 0h092D: instrument
 .db 0h98 ; 0h092E: normal track data
 .db 0h60 ; 0h092F: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0930: instrument
 .db 0h72 ; 0h0931: normal track data
 .db 0h60 ; 0h0932: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0933: instrument
 .db 0h98 ; 0h0934: normal track data
 .db 0h60 ; 0h0935: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0936: instrument
 .db 0h72 ; 0h0937: normal track data
 .db 0h60 ; 0h0938: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0939: instrument
 .db 0h98 ; 0h093A: normal track data
 .db 0h60 ; 0h093B: vol off, no pitch, note, instrument
 .db 0h01 ; 0h093C: instrument
 .db 0h72 ; 0h093D: normal track data
 .db 0h60 ; 0h093E: vol off, no pitch, note, instrument
 .db 0h04 ; 0h093F: instrument
 .db 0h98 ; 0h0940: normal track data
 .db 0h60 ; 0h0941: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0942: instrument
 .db 0h72 ; 0h0943: normal track data
 .db 0h60 ; 0h0944: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0945: instrument
 .db 0h98 ; 0h0946: normal track data
 .db 0h60 ; 0h0947: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0948: instrument
 .db 0h72 ; 0h0949: normal track data
 .db 0h60 ; 0h094A: vol off, no pitch, note, instrument
 .db 0h03 ; 0h094B: instrument
 .db 0h72 ; 0h094C: normal track data
 .db 0h40 ; 0h094D: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h094E: normal track data
 .db 0h40 ; 0h094F: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0950: normal track data
 .db 0h60 ; 0h0951: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0952: instrument
 .db 0h72 ; 0h0953: normal track data
 .db 0h60 ; 0h0954: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0955: instrument
 .db 0h98 ; 0h0956: normal track data
 .db 0h60 ; 0h0957: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0958: instrument
 .db 0h72 ; 0h0959: normal track data
 .db 0h60 ; 0h095A: vol off, no pitch, note, instrument
 .db 0h03 ; 0h095B: instrument
 .db 0h98 ; 0h095C: normal track data
 .db 0h60 ; 0h095D: vol off, no pitch, note, instrument
 .db 0h01 ; 0h095E: instrument
 .db 0h72 ; 0h095F: normal track data
 .db 0h60 ; 0h0960: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0961: instrument
 .db 0h98 ; 0h0962: normal track data
 .db 0h60 ; 0h0963: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0964: instrument
 .db 0h72 ; 0h0965: normal track data
 .db 0h60 ; 0h0966: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0967: instrument
 .db 0h98 ; 0h0968: normal track data
 .db 0h60 ; 0h0969: vol off, no pitch, note, instrument
 .db 0h01 ; 0h096A: instrument
 .db 0h72 ; 0h096B: normal track data
 .db 0h60 ; 0h096C: vol off, no pitch, note, instrument
 .db 0h04 ; 0h096D: instrument
 .db 0h98 ; 0h096E: normal track data
 .db 0h60 ; 0h096F: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0970: instrument
 .db 0h72 ; 0h0971: normal track data
 .db 0h60 ; 0h0972: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0973: instrument
 .db 0h98 ; 0h0974: normal track data
 .db 0h60 ; 0h0975: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0976: instrument
 .db 0h72 ; 0h0977: normal track data
 .db 0h60 ; 0h0978: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0979: instrument
 .db 0h72 ; 0h097A: normal track data
 .db 0h40 ; 0h097B: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h097C: normal track data
 .db 0h40 ; 0h097D: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h097E: normal track data
 .db 0h60 ; 0h097F: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0980: instrument
 .db 0h72 ; 0h0981: normal track data
 .db 0h60 ; 0h0982: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0983: instrument
 .db 0h98 ; 0h0984: normal track data
 .db 0h60 ; 0h0985: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0986: instrument
 .db 0h72 ; 0h0987: normal track data
 .db 0h60 ; 0h0988: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0989: instrument
 .db 0h98 ; 0h098A: normal track data
 .db 0h60 ; 0h098B: vol off, no pitch, note, instrument
 .db 0h01 ; 0h098C: instrument
 .db 0h72 ; 0h098D: normal track data
 .db 0h60 ; 0h098E: vol off, no pitch, note, instrument
 .db 0h04 ; 0h098F: instrument
 .db 0h98 ; 0h0990: normal track data
 .db 0h60 ; 0h0991: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0992: instrument
 .db 0h72 ; 0h0993: normal track data
 .db 0h60 ; 0h0994: vol off, no pitch, note, instrument
 .db 0h03 ; 0h0995: instrument
 .db 0h98 ; 0h0996: normal track data
 .db 0h60 ; 0h0997: vol off, no pitch, note, instrument
 .db 0h01 ; 0h0998: instrument
 .db 0h72 ; 0h0999: normal track data
 .db 0h60 ; 0h099A: vol off, no pitch, note, instrument
 .db 0h04 ; 0h099B: instrument
 .db 0h98 ; 0h099C: normal track data
 .db 0h60 ; 0h099D: vol off, no pitch, note, instrument
 .db 0h01 ; 0h099E: instrument
 .db 0h72 ; 0h099F: normal track data
 .db 0h60 ; 0h09A0: vol off, no pitch, note, instrument
 .db 0h03 ; 0h09A1: instrument
 .db 0h98 ; 0h09A2: normal track data
 .db 0h60 ; 0h09A3: vol off, no pitch, note, instrument
 .db 0h01 ; 0h09A4: instrument
 .db 0h72 ; 0h09A5: normal track data
 .db 0h60 ; 0h09A6: vol off, no pitch, note, instrument
 .db 0h03 ; 0h09A7: instrument
 .db 0h72 ; 0h09A8: normal track data
 .db 0h40 ; 0h09A9: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09AA: normal track data
 .db 0h40 ; 0h09AB: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h09AC: normal track data
 .db 0h00 ; 0h09AD: vol off, no pitch, no note, no instrument
 .db 0h72 ; 0h09AE: normal track data
 .db 0h40 ; 0h09AF: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09B0: normal track data
 .db 0h40 ; 0h09B1: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09B2: normal track data
 .db 0h40 ; 0h09B3: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h09B4: normal track data
 .db 0h00 ; 0h09B5: vol off, no pitch, no note, no instrument
 .db 0h72 ; 0h09B6: normal track data
 .db 0h40 ; 0h09B7: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09B8: normal track data
 .db 0h40 ; 0h09B9: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09BA: normal track data
 .db 0h40 ; 0h09BB: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h09BC: normal track data
 .db 0h00 ; 0h09BD: vol off, no pitch, no note, no instrument
 .db 0h72 ; 0h09BE: normal track data
 .db 0h40 ; 0h09BF: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09C0: normal track data
 .db 0h40 ; 0h09C1: vol off, no pitch, note, no instrument
 .db 0h72 ; 0h09C2: normal track data
 .db 0h40 ; 0h09C3: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h09C4: normal track data
 .db 0h00 ; 0h09C5: vol off, no pitch, no note, no instrument
trackDef24Test:
 .db 0h92 ; 0h09C6: normal track data
 .db 0hF3 ; 0h09C7: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h09C8: pitch
 .db 0h05 ; 0h09CA: instrument
 .db 0hAA ; 0h09CB: normal track data
 .db 0h40 ; 0h09CC: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09CD: normal track data
 .db 0h40 ; 0h09CE: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09CF: normal track data
 .db 0h40 ; 0h09D0: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09D1: normal track data
 .db 0h40 ; 0h09D2: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h09D3: normal track data
 .db 0h40 ; 0h09D4: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h09D5: normal track data
 .db 0h40 ; 0h09D6: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h09D7: normal track data
 .db 0h40 ; 0h09D8: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09D9: normal track data
 .db 0h40 ; 0h09DA: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09DB: normal track data
 .db 0h40 ; 0h09DC: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h09DD: normal track data,  wait 3
 .db 0hAA ; 0h09DE: normal track data
 .db 0h40 ; 0h09DF: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09E0: normal track data
 .db 0h40 ; 0h09E1: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09E2: normal track data
 .db 0h40 ; 0h09E3: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09E4: normal track data
 .db 0h40 ; 0h09E5: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09E6: normal track data
 .db 0h40 ; 0h09E7: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09E8: normal track data
 .db 0h40 ; 0h09E9: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h09EA: normal track data
 .db 0h40 ; 0h09EB: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h09EC: normal track data
 .db 0h40 ; 0h09ED: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h09EE: normal track data
 .db 0h40 ; 0h09EF: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h09F0: normal track data
 .db 0h40 ; 0h09F1: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09F2: normal track data
 .db 0h40 ; 0h09F3: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09F4: normal track data
 .db 0h40 ; 0h09F5: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h09F6: normal track data,  wait 3
 .db 0hAA ; 0h09F7: normal track data
 .db 0h40 ; 0h09F8: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09F9: normal track data
 .db 0h40 ; 0h09FA: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h09FB: normal track data
 .db 0h40 ; 0h09FC: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09FD: normal track data
 .db 0h40 ; 0h09FE: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h09FF: normal track data
 .db 0h40 ; 0h0A00: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A01: normal track data
 .db 0h40 ; 0h0A02: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A03: normal track data
 .db 0h40 ; 0h0A04: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0A05: normal track data
 .db 0h40 ; 0h0A06: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0A07: normal track data
 .db 0h40 ; 0h0A08: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0A09: normal track data
 .db 0h40 ; 0h0A0A: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A0B: normal track data
 .db 0h40 ; 0h0A0C: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A0D: normal track data
 .db 0h40 ; 0h0A0E: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0A0F: normal track data,  wait 3
 .db 0hAA ; 0h0A10: normal track data
 .db 0h40 ; 0h0A11: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A12: normal track data
 .db 0h40 ; 0h0A13: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A14: normal track data
 .db 0h40 ; 0h0A15: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A16: normal track data
 .db 0h40 ; 0h0A17: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A18: normal track data
 .db 0h40 ; 0h0A19: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0A1A: normal track data
 .db 0h00 ; 0h0A1B: vol off, no pitch, no note, no instrument
 .db 0h94 ; 0h0A1C: normal track data
 .db 0h40 ; 0h0A1D: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0A1E: normal track data
 .db 0h40 ; 0h0A1F: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0A20: normal track data
 .db 0h40 ; 0h0A21: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0A22: normal track data
 .db 0h00 ; 0h0A23: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0A24: normal track data
 .db 0h40 ; 0h0A25: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A26: normal track data
 .db 0h40 ; 0h0A27: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0A28: normal track data,  wait 3
 .db 0hAA ; 0h0A29: normal track data
 .db 0h40 ; 0h0A2A: vol off, no pitch, note, no instrument
 .db 0h00 ; 0h0A2B: track end signature found
trackDef26Test:
 .db 0h92 ; 0h0A2C: normal track data
 .db 0hF3 ; 0h0A2D: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0A2E: pitch
 .db 0h05 ; 0h0A30: instrument
 .db 0hAA ; 0h0A31: normal track data
 .db 0h40 ; 0h0A32: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A33: normal track data
 .db 0h40 ; 0h0A34: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A35: normal track data
 .db 0h40 ; 0h0A36: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A37: normal track data
 .db 0h40 ; 0h0A38: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0A39: normal track data
 .db 0h40 ; 0h0A3A: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0A3B: normal track data
 .db 0h40 ; 0h0A3C: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0A3D: normal track data
 .db 0h40 ; 0h0A3E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A3F: normal track data
 .db 0h40 ; 0h0A40: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A41: normal track data
 .db 0h40 ; 0h0A42: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0A43: normal track data,  wait 3
 .db 0hAA ; 0h0A44: normal track data
 .db 0h40 ; 0h0A45: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A46: normal track data
 .db 0h40 ; 0h0A47: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A48: normal track data
 .db 0h40 ; 0h0A49: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A4A: normal track data
 .db 0h40 ; 0h0A4B: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A4C: normal track data
 .db 0h40 ; 0h0A4D: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A4E: normal track data
 .db 0h40 ; 0h0A4F: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0A50: normal track data
 .db 0h40 ; 0h0A51: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0A52: normal track data
 .db 0h40 ; 0h0A53: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0A54: normal track data
 .db 0h40 ; 0h0A55: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0A56: normal track data
 .db 0h40 ; 0h0A57: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A58: normal track data
 .db 0h40 ; 0h0A59: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A5A: normal track data
 .db 0h40 ; 0h0A5B: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0A5C: normal track data,  wait 3
 .db 0hAA ; 0h0A5D: normal track data
 .db 0h40 ; 0h0A5E: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A5F: normal track data
 .db 0h40 ; 0h0A60: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A61: normal track data
 .db 0h40 ; 0h0A62: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A63: normal track data
 .db 0h40 ; 0h0A64: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A65: normal track data
 .db 0h40 ; 0h0A66: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A67: normal track data
 .db 0h40 ; 0h0A68: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A69: normal track data
 .db 0h40 ; 0h0A6A: vol off, no pitch, note, no instrument
 .db 0h94 ; 0h0A6B: normal track data
 .db 0h40 ; 0h0A6C: vol off, no pitch, note, no instrument
 .db 0h98 ; 0h0A6D: normal track data
 .db 0h40 ; 0h0A6E: vol off, no pitch, note, no instrument
 .db 0h9C ; 0h0A6F: normal track data
 .db 0h40 ; 0h0A70: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A71: normal track data
 .db 0h40 ; 0h0A72: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A73: normal track data
 .db 0h40 ; 0h0A74: vol off, no pitch, note, no instrument
 .db 0h08 ; 0h0A75: normal track data,  wait 3
 .db 0hAA ; 0h0A76: normal track data
 .db 0h40 ; 0h0A77: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A78: normal track data
 .db 0h40 ; 0h0A79: vol off, no pitch, note, no instrument
 .db 0h92 ; 0h0A7A: normal track data
 .db 0h40 ; 0h0A7B: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A7C: normal track data
 .db 0h40 ; 0h0A7D: vol off, no pitch, note, no instrument
 .db 0hAA ; 0h0A7E: normal track data
 .db 0h40 ; 0h0A7F: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0A80: normal track data
 .db 0h00 ; 0h0A81: vol off, no pitch, no note, no instrument
 .db 0h94 ; 0h0A82: normal track data
 .db 0h40 ; 0h0A83: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0A84: normal track data
 .db 0h40 ; 0h0A85: vol off, no pitch, note, no instrument
 .db 0hAC ; 0h0A86: normal track data
 .db 0h40 ; 0h0A87: vol off, no pitch, note, no instrument
 .db 0h42 ; 0h0A88: normal track data
 .db 0h00 ; 0h0A89: vol off, no pitch, no note, no instrument
 .db 0h92 ; 0h0A8A: normal track data
 .db 0h40 ; 0h0A8B: vol off, no pitch, note, no instrument
 .db 0h7A ; 0h0A8C: normal track data
 .db 0h40 ; 0h0A8D: vol off, no pitch, note, no instrument
 .db 0h8E ; 0h0A8E: normal track data,  note: D3
 .db 0h55 ; 0h0A8F: vol = 0h5 (inverted), no pitch, no note, no instrument
 .db 0h8A ; 0h0A90: normal track data,  note: C3
 .db 0h57 ; 0h0A91: vol = 0h4 (inverted), no pitch, no note, no instrument
 .db 0h88 ; 0h0A92: normal track data
 .db 0h59 ; 0h0A93: vol = 0h3 (inverted), no pitch, no note, no instrument
 .db 0h84 ; 0h0A94: normal track data
 .db 0h5B ; 0h0A95: vol = 0h2 (inverted), no pitch, no note, no instrument
 .db 0h80 ; 0h0A96: normal track data,  note: G2
 .db 0h5D ; 0h0A97: vol = 0h1 (inverted), no pitch, no note, no instrument
 .db 0h7C ; 0h0A98: normal track data
 .db 0h40 ; 0h0A99: vol off, no pitch, note, no instrument
trackDef27Test:
 .db 0h7A ; 0h0A9A: normal track data
 .db 0hF3 ; 0h0A9B: vol = 0h6 (inverted), no pitch, no note, no instrument
 .dw 0h0000 ; 0h0A9C: pitch
 .db 0h05 ; 0h0A9E: instrument
 .db 0h0A ; 0h0A9F: normal track data,  wait 4
 .db 0h92 ; 0h0AA0: normal track data
 .db 0h40 ; 0h0AA1: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0AA2: normal track data,  wait 0
 .db 0h7A ; 0h0AA3: normal track data
 .db 0h40 ; 0h0AA4: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0AA5: normal track data,  wait 4
 .db 0h92 ; 0h0AA6: normal track data
 .db 0h40 ; 0h0AA7: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0AA8: normal track data,  wait 0
 .db 0h7C ; 0h0AA9: normal track data
 .db 0h40 ; 0h0AAA: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0AAB: normal track data,  wait 4
 .db 0h94 ; 0h0AAC: normal track data
 .db 0h40 ; 0h0AAD: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0AAE: normal track data,  wait 0
 .db 0h80 ; 0h0AAF: normal track data
 .db 0h40 ; 0h0AB0: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0AB1: normal track data,  wait 4
 .db 0h98 ; 0h0AB2: normal track data
 .db 0h40 ; 0h0AB3: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0AB4: normal track data,  wait 0
 .db 0h7A ; 0h0AB5: normal track data
 .db 0h40 ; 0h0AB6: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0AB7: normal track data,  wait 4
 .db 0h92 ; 0h0AB8: normal track data
 .db 0h40 ; 0h0AB9: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0ABA: normal track data,  wait 0
 .db 0h7A ; 0h0ABB: normal track data
 .db 0h40 ; 0h0ABC: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0ABD: normal track data,  wait 4
 .db 0h92 ; 0h0ABE: normal track data
 .db 0h40 ; 0h0ABF: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0AC0: normal track data,  wait 0
 .db 0h7C ; 0h0AC1: normal track data
 .db 0h40 ; 0h0AC2: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0AC3: normal track data,  wait 4
 .db 0h94 ; 0h0AC4: normal track data
 .db 0h40 ; 0h0AC5: vol off, no pitch, note, no instrument
 .db 0h02 ; 0h0AC6: normal track data,  wait 0
 .db 0h80 ; 0h0AC7: normal track data
 .db 0h40 ; 0h0AC8: vol off, no pitch, note, no instrument
 .db 0h0A ; 0h0AC9: normal track data,  wait 4
 .db 0h98 ; 0h0ACA: normal track data
 .db 0h40 ; 0h0ACB: vol off, no pitch, note, no instrument
 .db 0h00 ; 0h0ACC: track end signature found
trackDef29Test:
 .db 0h72 ; 0h0ACD: normal track data
 .db 0hE0 ; 0h0ACE: vol off, pitch, note, instrument
 .dw 0h0000 ; 0h0ACF: pitch
 .db 0h01 ; 0h0AD1: instrument
 .db 0h02 ; 0h0AD2: normal track data,  wait 0
 .db 0h42 ; 0h0AD3: normal track data
 .db 0h00 ; 0h0AD4: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AD5: normal track data,  wait 0
 .db 0h42 ; 0h0AD6: normal track data
 .db 0h00 ; 0h0AD7: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AD8: normal track data,  wait 0
 .db 0h33 ; 0h0AD9: full optimization, no escape: C2
 .db 0h02 ; 0h0ADA: normal track data,  wait 0
 .db 0h33 ; 0h0ADB: full optimization, no escape: C2
 .db 0h02 ; 0h0ADC: normal track data,  wait 0
 .db 0h42 ; 0h0ADD: normal track data
 .db 0h00 ; 0h0ADE: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0ADF: normal track data,  wait 0
 .db 0h42 ; 0h0AE0: normal track data
 .db 0h00 ; 0h0AE1: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AE2: normal track data,  wait 0
 .db 0h33 ; 0h0AE3: full optimization, no escape: C2
 .db 0h02 ; 0h0AE4: normal track data,  wait 0
 .db 0h33 ; 0h0AE5: full optimization, no escape: C2
 .db 0h02 ; 0h0AE6: normal track data,  wait 0
 .db 0h42 ; 0h0AE7: normal track data
 .db 0h00 ; 0h0AE8: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AE9: normal track data,  wait 0
 .db 0h42 ; 0h0AEA: normal track data
 .db 0h00 ; 0h0AEB: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AEC: normal track data,  wait 0
 .db 0h33 ; 0h0AED: full optimization, no escape: C2
 .db 0h02 ; 0h0AEE: normal track data,  wait 0
 .db 0h33 ; 0h0AEF: full optimization, no escape: C2
 .db 0h02 ; 0h0AF0: normal track data,  wait 0
 .db 0h42 ; 0h0AF1: normal track data
 .db 0h00 ; 0h0AF2: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AF3: normal track data,  wait 0
 .db 0h42 ; 0h0AF4: normal track data
 .db 0h00 ; 0h0AF5: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AF6: normal track data,  wait 0
 .db 0h33 ; 0h0AF7: full optimization, no escape: C2
 .db 0h02 ; 0h0AF8: normal track data,  wait 0
 .db 0h33 ; 0h0AF9: full optimization, no escape: C2
 .db 0h02 ; 0h0AFA: normal track data,  wait 0
 .db 0h42 ; 0h0AFB: normal track data
 .db 0h00 ; 0h0AFC: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0AFD: normal track data,  wait 0
 .db 0h42 ; 0h0AFE: normal track data
 .db 0h00 ; 0h0AFF: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B00: normal track data,  wait 0
 .db 0h33 ; 0h0B01: full optimization, no escape: C2
 .db 0h53 ; 0h0B02: full optimization, no escape: E3
 .db 0h33 ; 0h0B03: full optimization, no escape: C2
 .db 0h53 ; 0h0B04: full optimization, no escape: E3
 .db 0h53 ; 0h0B05: full optimization, no escape: E3
 .db 0h02 ; 0h0B06: normal track data,  wait 0
 .db 0h42 ; 0h0B07: normal track data
 .db 0h00 ; 0h0B08: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B09: normal track data,  wait 0
 .db 0h33 ; 0h0B0A: full optimization, no escape: C2
 .db 0h53 ; 0h0B0B: full optimization, no escape: E3
 .db 0h33 ; 0h0B0C: full optimization, no escape: C2
 .db 0h53 ; 0h0B0D: full optimization, no escape: E3
 .db 0h53 ; 0h0B0E: full optimization, no escape: E3
 .db 0h02 ; 0h0B0F: normal track data,  wait 0
 .db 0h42 ; 0h0B10: normal track data
 .db 0h00 ; 0h0B11: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B12: normal track data,  wait 0
 .db 0h33 ; 0h0B13: full optimization, no escape: C2
 .db 0h53 ; 0h0B14: full optimization, no escape: E3
 .db 0h33 ; 0h0B15: full optimization, no escape: C2
 .db 0h53 ; 0h0B16: full optimization, no escape: E3
 .db 0h53 ; 0h0B17: full optimization, no escape: E3
 .db 0h42 ; 0h0B18: normal track data
 .db 0h00 ; 0h0B19: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B1A: normal track data
 .db 0h00 ; 0h0B1B: vol off, no pitch, no note, no instrument
 .db 0h72 ; 0h0B1C: normal track data
 .db 0h60 ; 0h0B1D: vol off, no pitch, note, instrument
 .db 0h04 ; 0h0B1E: instrument
 .db 0h33 ; 0h0B1F: full optimization, no escape: C2
 .db 0h00 ; 0h0B20: track end signature found
trackDef28Test:
 .db 0h42 ; 0h0B21: normal track data
 .db 0h80 ; 0h0B22: vol off, pitch, no note, no instrument
 .dw 0h0000 ; 0h0B23: pitch
 .db 0h02 ; 0h0B25: normal track data,  wait 0
 .db 0h42 ; 0h0B26: normal track data
 .db 0h00 ; 0h0B27: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B28: normal track data,  wait 0
 .db 0h42 ; 0h0B29: normal track data
 .db 0h00 ; 0h0B2A: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B2B: normal track data,  wait 0
 .db 0h42 ; 0h0B2C: normal track data
 .db 0h00 ; 0h0B2D: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B2E: normal track data,  wait 0
 .db 0h42 ; 0h0B2F: normal track data
 .db 0h00 ; 0h0B30: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B31: normal track data,  wait 0
 .db 0h42 ; 0h0B32: normal track data
 .db 0h00 ; 0h0B33: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B34: normal track data
 .db 0h00 ; 0h0B35: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B36: normal track data
 .db 0h00 ; 0h0B37: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B38: normal track data
 .db 0h00 ; 0h0B39: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B3A: normal track data
 .db 0h00 ; 0h0B3B: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B3C: normal track data,  wait 0
 .db 0h42 ; 0h0B3D: normal track data
 .db 0h00 ; 0h0B3E: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B3F: normal track data,  wait 0
 .db 0h42 ; 0h0B40: normal track data
 .db 0h00 ; 0h0B41: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B42: normal track data
 .db 0h00 ; 0h0B43: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B44: normal track data
 .db 0h00 ; 0h0B45: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B46: normal track data,  wait 0
 .db 0h42 ; 0h0B47: normal track data
 .db 0h00 ; 0h0B48: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B49: normal track data,  wait 0
 .db 0h42 ; 0h0B4A: normal track data
 .db 0h00 ; 0h0B4B: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B4C: normal track data,  wait 0
 .db 0h42 ; 0h0B4D: normal track data
 .db 0h00 ; 0h0B4E: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B4F: normal track data
 .db 0h00 ; 0h0B50: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B51: normal track data
 .db 0h00 ; 0h0B52: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B53: normal track data
 .db 0h00 ; 0h0B54: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B55: normal track data
 .db 0h00 ; 0h0B56: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B57: normal track data,  wait 0
 .db 0h42 ; 0h0B58: normal track data
 .db 0h00 ; 0h0B59: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B5A: normal track data,  wait 0
 .db 0h42 ; 0h0B5B: normal track data
 .db 0h00 ; 0h0B5C: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B5D: normal track data,  wait 0
 .db 0h42 ; 0h0B5E: normal track data
 .db 0h00 ; 0h0B5F: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B60: normal track data,  wait 0
 .db 0h42 ; 0h0B61: normal track data
 .db 0h00 ; 0h0B62: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B63: normal track data,  wait 0
 .db 0h42 ; 0h0B64: normal track data
 .db 0h00 ; 0h0B65: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B66: normal track data,  wait 0
 .db 0h42 ; 0h0B67: normal track data
 .db 0h00 ; 0h0B68: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B69: normal track data
 .db 0h00 ; 0h0B6A: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B6B: normal track data
 .db 0h00 ; 0h0B6C: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B6D: normal track data
 .db 0h00 ; 0h0B6E: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B6F: normal track data
 .db 0h00 ; 0h0B70: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B71: normal track data,  wait 0
 .db 0h42 ; 0h0B72: normal track data
 .db 0h00 ; 0h0B73: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B74: normal track data,  wait 0
 .db 0h42 ; 0h0B75: normal track data
 .db 0h00 ; 0h0B76: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B77: normal track data
 .db 0h00 ; 0h0B78: vol off, no pitch, no note, no instrument
 .db 0h42 ; 0h0B79: normal track data
 .db 0h00 ; 0h0B7A: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B7B: normal track data,  wait 0
 .db 0h42 ; 0h0B7C: normal track data
 .db 0h00 ; 0h0B7D: vol off, no pitch, no note, no instrument
 .db 0h02 ; 0h0B7E: normal track data,  wait 0
 .db 0h76 ; 0h0B7F: normal track data
 .db 0h73 ; 0h0B80: vol = 0h6 (inverted), no pitch, no note, no instrument
 .db 0h05 ; 0h0B81: instrument
 .db 0h7A ; 0h0B82: normal track data
 .db 0h40 ; 0h0B83: vol off, no pitch, note, no instrument
 .db 0h7C ; 0h0B84: normal track data
 .db 0h40 ; 0h0B85: vol off, no pitch, note, no instrument
 .db 0h80 ; 0h0B86: normal track data
 .db 0h40 ; 0h0B87: vol off, no pitch, note, no instrument
 .db 0h84 ; 0h0B88: normal track data
 .db 0h40 ; 0h0B89: vol off, no pitch, note, no instrument
 .db 0h88 ; 0h0B8A: normal track data
 .db 0h40 ; 0h0B8B: vol off, no pitch, note, no instrument
 .db 0h8A ; 0h0B8C: normal track data
 .db 0h40 ; 0h0B8D: vol off, no pitch, note, no instrument
 .db 0h8E ; 0h0B8E: normal track data
 .db 0h40 ; 0h0B8F: vol off, no pitch, note, no instrument
