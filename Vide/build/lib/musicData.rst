                              1 	.area .text
                              2 
                              3 ; This file was build using VIDE - Vectrex Integrated Development Environment
                              4 ; Original bin file was: C:\Users\Der Luchs\Desktop\Test\trackerTest\Test.bin
                              5 ; 
                              6 ; offset for AKS file assumed: 0h4000 guessed by accessing byte data[13] * 256)
                              7 ; not used by vectrex player and therefor omitted:
                              8 ;  DB "AT10" ; Signature of Arkos Tracker files
                              9 ;  DB 0h01 ; sample channel
                             10 ;  DB 0h40, 42, 0f ; YM custom frequence - little endian
                             11 ;  DB 0h02 ; Replay frequency (0=13hz,1=25hz,2=50hz,3=100hz,4=150hz,5=300hz)
                             12 	.globl aks_song
   5327                      13 aks_song:
   5327 06                   14  .db 0h06 ; 0h0009: default speed
   5328 00 C6                15  .dw 0h00C6 ; 0h000A: size of instrument table (without this word pointer)
   532A 53 3E                16  .dw instrument0Test ; 0h000C: [0h4020] pointer to instrument 0
   532C 53 47                17  .dw instrument1Test ; 0h000E: [0h4029] pointer to instrument 1
   532E 53 4E                18  .dw instrument2Test ; 0h0010: [0h4030] pointer to instrument 2
   5330 53 56                19  .dw instrument3Test ; 0h0012: [0h4038] pointer to instrument 3
   5332 53 6B                20  .dw instrument4Test ; 0h0014: [0h404D] pointer to instrument 4
   5334 53 7B                21  .dw instrument5Test ; 0h0016: [0h405D] pointer to instrument 5
   5336 53 B0                22  .dw instrument6Test ; 0h0018: [0h4092] pointer to instrument 6
   5338 53 C0                23  .dw instrument7Test ; 0h001A: [0h40A2] pointer to instrument 7
   533A 53 D0                24  .dw instrument8Test ; 0h001C: [0h40B2] pointer to instrument 8
   533C 53 E0                25  .dw instrument9Test ; 0h001E: [0h40C2] pointer to instrument 9
   533E                      26 instrument0Test:
   533E 00                   27  .db 0h00 ; 0h0020: speed
   533F 00                   28  .db 0h00 ; 0h0021: retrig
   5340                      29 instrument0loopTest:
   5340 00                   30  .db 0h00 ; 0h0022: dataColumn_0 (non hard), vol=0h0
   5341 00                   31  .db 0h00 ; 0h0023: dataColumn_0 (non hard), vol=0h0
   5342 00                   32  .db 0h00 ; 0h0024: dataColumn_0 (non hard), vol=0h0
   5343 00                   33  .db 0h00 ; 0h0025: dataColumn_0 (non hard), vol=0h0
   5344 0D                   34  .db 0h0D ; 0h0026: dataColumn_0 (hard)
   5345 53 40                35  .dw instrument0loopTest ; 0h0027: [0h4022] loop
   5347                      36 instrument1Test:
   5347 01                   37  .db 0h01 ; 0h0029: speed
   5348 00                   38  .db 0h00 ; 0h002A: retrig
   5349 36                   39  .db 0h36 ; 0h002B: dataColumn_0 (non hard), vol=0hD
   534A 01                   40  .db 0h01 ; 0h002C: dataColumn_1, noise=0h01
   534B 0D                   41  .db 0h0D ; 0h002D: dataColumn_0 (hard)
   534C 53 40                42  .dw instrument0loopTest ; 0h002E: [0h4022] loop
   534E                      43 instrument2Test:
   534E 06                   44  .db 0h06 ; 0h0030: speed
   534F 00                   45  .db 0h00 ; 0h0031: retrig
   5350 2C                   46  .db 0h2C ; 0h0032: dataColumn_0 (non hard), vol=0hB
   5351 24                   47  .db 0h24 ; 0h0033: dataColumn_0 (non hard), vol=0h9
   5352 14                   48  .db 0h14 ; 0h0034: dataColumn_0 (non hard), vol=0h5
   5353 0D                   49  .db 0h0D ; 0h0035: dataColumn_0 (hard)
   5354 53 40                50  .dw instrument0loopTest ; 0h0036: [0h4022] loop
   5356                      51 instrument3Test:
   5356 01                   52  .db 0h01 ; 0h0038: speed
   5357 00                   53  .db 0h00 ; 0h0039: retrig
   5358 36                   54  .db 0h36 ; 0h003A: dataColumn_0 (non hard), vol=0hD
   5359 0B                   55  .db 0h0B ; 0h003B: dataColumn_1, noise=0h0B
   535A 7C                   56  .db 0h7C ; 0h003C: dataColumn_0 (non hard), vol=0hF
   535B 16                   57  .db 0h16 ; 0h003D: arpegio
   535C 7C                   58  .db 0h7C ; 0h003E: dataColumn_0 (non hard), vol=0hF
   535D 0C                   59  .db 0h0C ; 0h003F: arpegio
   535E 7C                   60  .db 0h7C ; 0h0040: dataColumn_0 (non hard), vol=0hF
   535F 0A                   61  .db 0h0A ; 0h0041: arpegio
   5360 7C                   62  .db 0h7C ; 0h0042: dataColumn_0 (non hard), vol=0hF
   5361 08                   63  .db 0h08 ; 0h0043: arpegio
   5362 7C                   64  .db 0h7C ; 0h0044: dataColumn_0 (non hard), vol=0hF
   5363 04                   65  .db 0h04 ; 0h0045: arpegio
   5364 78                   66  .db 0h78 ; 0h0046: dataColumn_0 (non hard), vol=0hE
   5365 03                   67  .db 0h03 ; 0h0047: arpegio
   5366 6C                   68  .db 0h6C ; 0h0048: dataColumn_0 (non hard), vol=0hB
   5367 01                   69  .db 0h01 ; 0h0049: arpegio
   5368 0D                   70  .db 0h0D ; 0h004A: dataColumn_0 (hard)
   5369 53 40                71  .dw instrument0loopTest ; 0h004B: [0h4022] loop
   536B                      72 instrument4Test:
   536B 01                   73  .db 0h01 ; 0h004D: speed
   536C 00                   74  .db 0h00 ; 0h004E: retrig
   536D 3E                   75  .db 0h3E ; 0h004F: dataColumn_0 (non hard), vol=0hF
   536E 02                   76  .db 0h02 ; 0h0050: dataColumn_1, noise=0h02
   536F 3E                   77  .db 0h3E ; 0h0051: dataColumn_0 (non hard), vol=0hF
   5370 2A                   78  .db 0h2A ; 0h0052: dataColumn_1, noise=0h0A
   5371 7E                   79  .db 0h7E ; 0h0053: dataColumn_0 (non hard), vol=0hF
   5372 2A                   80  .db 0h2A ; 0h0054: dataColumn_1, noise=0h0A
   5373 02                   81  .db 0h02 ; 0h0055: arpegio
   5374 3E                   82  .db 0h3E ; 0h0056: dataColumn_0 (non hard), vol=0hF
   5375 0B                   83  .db 0h0B ; 0h0057: dataColumn_1, noise=0h0B
   5376 3E                   84  .db 0h3E ; 0h0058: dataColumn_0 (non hard), vol=0hF
   5377 0C                   85  .db 0h0C ; 0h0059: dataColumn_1, noise=0h0C
   5378 0D                   86  .db 0h0D ; 0h005A: dataColumn_0 (hard)
   5379 53 40                87  .dw instrument0loopTest ; 0h005B: [0h4022] loop
   537B                      88 instrument5Test:
   537B 0C                   89  .db 0h0C ; 0h005D: speed
   537C FE                   90  .db 0hFE ; 0h005E: retrig
   537D 09                   91  .db 0h09 ; 0h005F: dataColumn_0 (hard)
   537E 28                   92  .db 0h28 ; 0h0060: Independent dependend 2. byte
   537F 24                   93  .db 0h24 ; 0h0061: independend hardware arpegio
   5380 09                   94  .db 0h09 ; 0h0062: dataColumn_0 (hard)
   5381 28                   95  .db 0h28 ; 0h0063: Independent dependend 2. byte
   5382 18                   96  .db 0h18 ; 0h0064: independend hardware arpegio
   5383 09                   97  .db 0h09 ; 0h0065: dataColumn_0 (hard)
   5384 28                   98  .db 0h28 ; 0h0066: Independent dependend 2. byte
   5385 24                   99  .db 0h24 ; 0h0067: independend hardware arpegio
   5386 09                  100  .db 0h09 ; 0h0068: dataColumn_0 (hard)
   5387 28                  101  .db 0h28 ; 0h0069: Independent dependend 2. byte
   5388 18                  102  .db 0h18 ; 0h006A: independend hardware arpegio
   5389 27                  103  .db 0h27 ; 0h006B: dataColumn_0 (hard)
   538A 28                  104  .db 0h28 ; 0h006C: software dependend 2. byte
   538B E8                  105  .db 0hE8 ; 0h006D: arpegio
   538C 09                  106  .db 0h09 ; 0h006E: dataColumn_0 (hard)
   538D 28                  107  .db 0h28 ; 0h006F: Independent dependend 2. byte
   538E 18                  108  .db 0h18 ; 0h0070: independend hardware arpegio
   538F 0B                  109  .db 0h0B ; 0h0071: dataColumn_0 (hard)
   5390 28                  110  .db 0h28 ; 0h0072: Independent dependend 2. byte
   5391 24                  111  .db 0h24 ; 0h0073: independend hardware arpegio
   5392 09                  112  .db 0h09 ; 0h0074: dataColumn_0 (hard)
   5393 28                  113  .db 0h28 ; 0h0075: Independent dependend 2. byte
   5394 18                  114  .db 0h18 ; 0h0076: independend hardware arpegio
   5395 23                  115  .db 0h23 ; 0h0077: dataColumn_0 (hard)
   5396 28                  116  .db 0h28 ; 0h0078: hardware dependend 2. byte
   5397 24                  117  .db 0h24 ; 0h0079: arpegio
   5398 21                  118  .db 0h21 ; 0h007A: dataColumn_0 (hard)
   5399 38                  119  .db 0h38 ; 0h007B: hardware dependend 2. byte
   539A 18                  120  .db 0h18 ; 0h007C: arpegio
   539B 21                  121  .db 0h21 ; 0h007D: dataColumn_0 (hard)
   539C 28                  122  .db 0h28 ; 0h007E: hardware dependend 2. byte
   539D 24                  123  .db 0h24 ; 0h007F: arpegio
   539E 21                  124  .db 0h21 ; 0h0080: dataColumn_0 (hard)
   539F 38                  125  .db 0h38 ; 0h0081: hardware dependend 2. byte
   53A0 18                  126  .db 0h18 ; 0h0082: arpegio
   53A1 21                  127  .db 0h21 ; 0h0083: dataColumn_0 (hard)
   53A2 28                  128  .db 0h28 ; 0h0084: hardware dependend 2. byte
   53A3 24                  129  .db 0h24 ; 0h0085: arpegio
   53A4 21                  130  .db 0h21 ; 0h0086: dataColumn_0 (hard)
   53A5 38                  131  .db 0h38 ; 0h0087: hardware dependend 2. byte
   53A6 18                  132  .db 0h18 ; 0h0088: arpegio
   53A7 21                  133  .db 0h21 ; 0h0089: dataColumn_0 (hard)
   53A8 28                  134  .db 0h28 ; 0h008A: hardware dependend 2. byte
   53A9 24                  135  .db 0h24 ; 0h008B: arpegio
   53AA 21                  136  .db 0h21 ; 0h008C: dataColumn_0 (hard)
   53AB 38                  137  .db 0h38 ; 0h008D: hardware dependend 2. byte
   53AC 18                  138  .db 0h18 ; 0h008E: arpegio
   53AD 0D                  139  .db 0h0D ; 0h008F: dataColumn_0 (hard)
   53AE 53 40               140  .dw instrument0loopTest ; 0h0090: [0h4022] loop
   53B0                     141 instrument6Test:
   53B0 01                  142  .db 0h01 ; 0h0092: speed
   53B1 00                  143  .db 0h00 ; 0h0093: retrig
   53B2 3C                  144  .db 0h3C ; 0h0094: dataColumn_0 (non hard), vol=0hF
   53B3 7C                  145  .db 0h7C ; 0h0095: dataColumn_0 (non hard), vol=0hF
   53B4 03                  146  .db 0h03 ; 0h0096: arpegio
   53B5 7C                  147  .db 0h7C ; 0h0097: dataColumn_0 (non hard), vol=0hF
   53B6 07                  148  .db 0h07 ; 0h0098: arpegio
   53B7 3C                  149  .db 0h3C ; 0h0099: dataColumn_0 (non hard), vol=0hF
   53B8 7C                  150  .db 0h7C ; 0h009A: dataColumn_0 (non hard), vol=0hF
   53B9 03                  151  .db 0h03 ; 0h009B: arpegio
   53BA 7C                  152  .db 0h7C ; 0h009C: dataColumn_0 (non hard), vol=0hF
   53BB 07                  153  .db 0h07 ; 0h009D: arpegio
   53BC 00                  154  .db 0h00 ; 0h009E: dataColumn_0 (non hard), vol=0h0
   53BD 0D                  155  .db 0h0D ; 0h009F: dataColumn_0 (hard)
   53BE 53 40               156  .dw instrument0loopTest ; 0h00A0: [0h4022] loop
   53C0                     157 instrument7Test:
   53C0 01                  158  .db 0h01 ; 0h00A2: speed
   53C1 00                  159  .db 0h00 ; 0h00A3: retrig
   53C2 3C                  160  .db 0h3C ; 0h00A4: dataColumn_0 (non hard), vol=0hF
   53C3 7C                  161  .db 0h7C ; 0h00A5: dataColumn_0 (non hard), vol=0hF
   53C4 04                  162  .db 0h04 ; 0h00A6: arpegio
   53C5 7C                  163  .db 0h7C ; 0h00A7: dataColumn_0 (non hard), vol=0hF
   53C6 07                  164  .db 0h07 ; 0h00A8: arpegio
   53C7 3C                  165  .db 0h3C ; 0h00A9: dataColumn_0 (non hard), vol=0hF
   53C8 7C                  166  .db 0h7C ; 0h00AA: dataColumn_0 (non hard), vol=0hF
   53C9 04                  167  .db 0h04 ; 0h00AB: arpegio
   53CA 7C                  168  .db 0h7C ; 0h00AC: dataColumn_0 (non hard), vol=0hF
   53CB 07                  169  .db 0h07 ; 0h00AD: arpegio
   53CC 00                  170  .db 0h00 ; 0h00AE: dataColumn_0 (non hard), vol=0h0
   53CD 0D                  171  .db 0h0D ; 0h00AF: dataColumn_0 (hard)
   53CE 53 40               172  .dw instrument0loopTest ; 0h00B0: [0h4022] loop
   53D0                     173 instrument8Test:
   53D0 01                  174  .db 0h01 ; 0h00B2: speed
   53D1 00                  175  .db 0h00 ; 0h00B3: retrig
   53D2 3C                  176  .db 0h3C ; 0h00B4: dataColumn_0 (non hard), vol=0hF
   53D3 7C                  177  .db 0h7C ; 0h00B5: dataColumn_0 (non hard), vol=0hF
   53D4 05                  178  .db 0h05 ; 0h00B6: arpegio
   53D5 7C                  179  .db 0h7C ; 0h00B7: dataColumn_0 (non hard), vol=0hF
   53D6 09                  180  .db 0h09 ; 0h00B8: arpegio
   53D7 3C                  181  .db 0h3C ; 0h00B9: dataColumn_0 (non hard), vol=0hF
   53D8 7C                  182  .db 0h7C ; 0h00BA: dataColumn_0 (non hard), vol=0hF
   53D9 05                  183  .db 0h05 ; 0h00BB: arpegio
   53DA 7C                  184  .db 0h7C ; 0h00BC: dataColumn_0 (non hard), vol=0hF
   53DB 09                  185  .db 0h09 ; 0h00BD: arpegio
   53DC 00                  186  .db 0h00 ; 0h00BE: dataColumn_0 (non hard), vol=0h0
   53DD 0D                  187  .db 0h0D ; 0h00BF: dataColumn_0 (hard)
   53DE 53 40               188  .dw instrument0loopTest ; 0h00C0: [0h4022] loop
   53E0                     189 instrument9Test:
   53E0 01                  190  .db 0h01 ; 0h00C2: speed
   53E1 00                  191  .db 0h00 ; 0h00C3: retrig
   53E2 3C                  192  .db 0h3C ; 0h00C4: dataColumn_0 (non hard), vol=0hF
   53E3 7C                  193  .db 0h7C ; 0h00C5: dataColumn_0 (non hard), vol=0hF
   53E4 05                  194  .db 0h05 ; 0h00C6: arpegio
   53E5 7C                  195  .db 0h7C ; 0h00C7: dataColumn_0 (non hard), vol=0hF
   53E6 07                  196  .db 0h07 ; 0h00C8: arpegio
   53E7 3C                  197  .db 0h3C ; 0h00C9: dataColumn_0 (non hard), vol=0hF
   53E8 7C                  198  .db 0h7C ; 0h00CA: dataColumn_0 (non hard), vol=0hF
   53E9 05                  199  .db 0h05 ; 0h00CB: arpegio
   53EA 7C                  200  .db 0h7C ; 0h00CC: dataColumn_0 (non hard), vol=0hF
   53EB 07                  201  .db 0h07 ; 0h00CD: arpegio
   53EC 00                  202  .db 0h00 ; 0h00CE: dataColumn_0 (non hard), vol=0h0
   53ED 0D                  203  .db 0h0D ; 0h00CF: dataColumn_0 (hard)
   53EE 53 40               204  .dw instrument0loopTest ; 0h00D0: [0h4022] loop
                            205 ; start of linker definition
   53F0                     206 linkerTest:
   53F0 40                  207  .db 0h40 ; 0h00D2: first height
   53F1 00                  208  .db 0h00 ; 0h00D3: transposition1
   53F2 00                  209  .db 0h00 ; 0h00D4: transposition2
   53F3 00                  210  .db 0h00 ; 0h00D5: transposition3
   53F4 54 85               211  .dw specialtrackDef0Test ; 0h00D6: [0h4167] specialTrack
   53F6                     212 pattern0DefinitionTest:
   53F6 00                  213  .db 0h00 ; 0h00D8: pattern 0 state
   53F7 54 8C               214  .dw trackDef0Test ; 0h00D9: [0h416E] pattern 0, track 1
   53F9 54 86               215  .dw trackDef1Test ; 0h00DB: [0h4168] pattern 0, track 2
   53FB 54 86               216  .dw trackDef1Test ; 0h00DD: [0h4168] pattern 0, track 3
   53FD                     217 pattern1DefinitionTest:
   53FD 00                  218  .db 0h00 ; 0h00DF: pattern 1 state
   53FE 54 8C               219  .dw trackDef0Test ; 0h00E0: [0h416E] pattern 1, track 1
   5400 54 DB               220  .dw trackDef3Test ; 0h00E2: [0h41BD] pattern 1, track 2
   5402 55 40               221  .dw trackDef4Test ; 0h00E4: [0h4222] pattern 1, track 3
   5404                     222 pattern2DefinitionTest:
   5404 00                  223  .db 0h00 ; 0h00E6: pattern 2 state
   5405 54 8C               224  .dw trackDef0Test ; 0h00E7: [0h416E] pattern 2, track 1
   5407 54 ED               225  .dw trackDef5Test ; 0h00E9: [0h41CF] pattern 2, track 2
   5409 55 B7               226  .dw trackDef6Test ; 0h00EB: [0h4299] pattern 2, track 3
   540B                     227 pattern3DefinitionTest:
   540B 00                  228  .db 0h00 ; 0h00ED: pattern 3 state
   540C 55 D2               229  .dw trackDef7Test ; 0h00EE: [0h42B4] pattern 3, track 1
   540E 56 2A               230  .dw trackDef8Test ; 0h00F0: [0h430C] pattern 3, track 2
   5410 56 88               231  .dw trackDef9Test ; 0h00F2: [0h436A] pattern 3, track 3
   5412                     232 pattern4DefinitionTest:
   5412 00                  233  .db 0h00 ; 0h00F4: pattern 4 state
   5413 54 8C               234  .dw trackDef0Test ; 0h00F5: [0h416E] pattern 4, track 1
   5415 57 30               235  .dw trackDef10Test ; 0h00F7: [0h4412] pattern 4, track 2
   5417 59 1B               236  .dw trackDef11Test ; 0h00F9: [0h45FD] pattern 4, track 3
   5419                     237 pattern5DefinitionTest:
   5419 00                  238  .db 0h00 ; 0h00FB: pattern 5 state
   541A 55 D2               239  .dw trackDef7Test ; 0h00FC: [0h42B4] pattern 5, track 1
   541C 57 C6               240  .dw trackDef12Test ; 0h00FE: [0h44A8] pattern 5, track 2
   541E 59 9E               241  .dw trackDef13Test ; 0h0100: [0h4680] pattern 5, track 3
   5420                     242 pattern6DefinitionTest:
   5420 00                  243  .db 0h00 ; 0h0102: pattern 6 state
   5421 56 AD               244  .dw trackDef14Test ; 0h0103: [0h438F] pattern 6, track 1
   5423 58 59               245  .dw trackDef15Test ; 0h0105: [0h453B] pattern 6, track 2
   5425 55 50               246  .dw trackDef16Test ; 0h0107: [0h4232] pattern 6, track 3
   5427                     247 pattern7DefinitionTest:
   5427 00                  248  .db 0h00 ; 0h0109: pattern 7 state
   5428 5A D2               249  .dw trackDef17Test ; 0h010A: [0h47B4] pattern 7, track 1
   542A 5A 21               250  .dw trackDef18Test ; 0h010C: [0h4703] pattern 7, track 2
   542C 5B 4B               251  .dw trackDef19Test ; 0h010E: [0h482D] pattern 7, track 3
   542E                     252 pattern8DefinitionTest:
   542E 00                  253  .db 0h00 ; 0h0110: pattern 8 state
   542F 5B B3               254  .dw trackDef20Test ; 0h0111: [0h4895] pattern 8, track 1
   5431 5C 37               255  .dw trackDef21Test ; 0h0113: [0h4919] pattern 8, track 2
   5433 55 50               256  .dw trackDef16Test ; 0h0115: [0h4232] pattern 8, track 3
   5435                     257 pattern9DefinitionTest:
   5435 00                  258  .db 0h00 ; 0h0117: pattern 9 state
   5436 5B B3               259  .dw trackDef20Test ; 0h0118: [0h4895] pattern 9, track 1
   5438 5C 37               260  .dw trackDef21Test ; 0h011A: [0h4919] pattern 9, track 2
   543A 5B 4B               261  .dw trackDef19Test ; 0h011C: [0h482D] pattern 9, track 3
   543C                     262 pattern10DefinitionTest:
   543C 00                  263  .db 0h00 ; 0h011E: pattern 10 state
   543D 56 AD               264  .dw trackDef14Test ; 0h011F: [0h438F] pattern 10, track 1
   543F 58 59               265  .dw trackDef15Test ; 0h0121: [0h453B] pattern 10, track 2
   5441 5C E4               266  .dw trackDef24Test ; 0h0123: [0h49C6] pattern 10, track 3
   5443                     267 pattern11DefinitionTest:
   5443 00                  268  .db 0h00 ; 0h0125: pattern 11 state
   5444 5A D2               269  .dw trackDef17Test ; 0h0126: [0h47B4] pattern 11, track 1
   5446 5A 21               270  .dw trackDef18Test ; 0h0128: [0h4703] pattern 11, track 2
   5448 5D 4A               271  .dw trackDef26Test ; 0h012A: [0h4A2C] pattern 11, track 3
   544A                     272 pattern12DefinitionTest:
   544A 00                  273  .db 0h00 ; 0h012C: pattern 12 state
   544B 54 86               274  .dw trackDef1Test ; 0h012D: [0h4168] pattern 12, track 1
   544D 54 86               275  .dw trackDef1Test ; 0h012F: [0h4168] pattern 12, track 2
   544F 5D B8               276  .dw trackDef27Test ; 0h0131: [0h4A9A] pattern 12, track 3
   5451                     277 pattern13DefinitionTest:
   5451 00                  278  .db 0h00 ; 0h0133: pattern 13 state
   5452 5E 3F               279  .dw trackDef28Test ; 0h0134: [0h4B21] pattern 13, track 1
   5454 5D EB               280  .dw trackDef29Test ; 0h0136: [0h4ACD] pattern 13, track 2
   5456 5D B8               281  .dw trackDef27Test ; 0h0138: [0h4A9A] pattern 13, track 3
   5458                     282 pattern14DefinitionTest:
   5458 00                  283  .db 0h00 ; 0h013A: pattern 14 state
   5459 56 AD               284  .dw trackDef14Test ; 0h013B: [0h438F] pattern 14, track 1
   545B 58 59               285  .dw trackDef15Test ; 0h013D: [0h453B] pattern 14, track 2
   545D 55 50               286  .dw trackDef16Test ; 0h013F: [0h4232] pattern 14, track 3
   545F                     287 pattern15DefinitionTest:
   545F 00                  288  .db 0h00 ; 0h0141: pattern 15 state
   5460 5A D2               289  .dw trackDef17Test ; 0h0142: [0h47B4] pattern 15, track 1
   5462 5A 21               290  .dw trackDef18Test ; 0h0144: [0h4703] pattern 15, track 2
   5464 5B 4B               291  .dw trackDef19Test ; 0h0146: [0h482D] pattern 15, track 3
   5466                     292 pattern16DefinitionTest:
   5466 00                  293  .db 0h00 ; 0h0148: pattern 16 state
   5467 5B B3               294  .dw trackDef20Test ; 0h0149: [0h4895] pattern 16, track 1
   5469 5C 37               295  .dw trackDef21Test ; 0h014B: [0h4919] pattern 16, track 2
   546B 55 50               296  .dw trackDef16Test ; 0h014D: [0h4232] pattern 16, track 3
   546D                     297 pattern17DefinitionTest:
   546D 00                  298  .db 0h00 ; 0h014F: pattern 17 state
   546E 5B B3               299  .dw trackDef20Test ; 0h0150: [0h4895] pattern 17, track 1
   5470 5C 37               300  .dw trackDef21Test ; 0h0152: [0h4919] pattern 17, track 2
   5472 5B 4B               301  .dw trackDef19Test ; 0h0154: [0h482D] pattern 17, track 3
   5474                     302 pattern18DefinitionTest:
   5474 00                  303  .db 0h00 ; 0h0156: pattern 18 state
   5475 56 AD               304  .dw trackDef14Test ; 0h0157: [0h438F] pattern 18, track 1
   5477 58 59               305  .dw trackDef15Test ; 0h0159: [0h453B] pattern 18, track 2
   5479 5C E4               306  .dw trackDef24Test ; 0h015B: [0h49C6] pattern 18, track 3
   547B                     307 pattern19DefinitionTest:
   547B 00                  308  .db 0h00 ; 0h015D: pattern 19 state
   547C 5A D2               309  .dw trackDef17Test ; 0h015E: [0h47B4] pattern 19, track 1
   547E 5A 21               310  .dw trackDef18Test ; 0h0160: [0h4703] pattern 19, track 2
   5480 5D 4A               311  .dw trackDef26Test ; 0h0162: [0h4A2C] pattern 19, track 3
   5482                     312 pattern20DefinitionTest:
   5482 01                  313  .db 0h01 ; 0h0164: pattern 20 state
   5483 53 F6               314  .dw pattern0DefinitionTest ; 0h0165: [0h40D8] song restart address
   5485                     315 specialtrackDef0Test:
   5485 00                  316  .db 0h00 ; 0h0167: wait 128
   5486                     317 trackDef1Test:
   5486 7A                  318  .db 0h7A ; 0h0168: normal track data,  note: E2
   5487 FF                  319  .db 0hFF ; 0h0169: vol = 0h0 (inverted), no pitch, no note, no instrument
   5488 00 00               320  .dw 0h0000 ; 0h016A: pitch
   548A 01                  321  .db 0h01 ; 0h016C: instrument
   548B 00                  322  .db 0h00 ; 0h016D: track end signature found
   548C                     323 trackDef0Test:
   548C 92                  324  .db 0h92 ; 0h016E: normal track data
   548D E1                  325  .db 0hE1 ; 0h016F: vol = 0hF (inverted), no pitch, no note, no instrument
   548E 00 00               326  .dw 0h0000 ; 0h0170: pitch
   5490 02                  327  .db 0h02 ; 0h0172: instrument
   5491 02                  328  .db 0h02 ; 0h0173: normal track data,  wait 0
   5492 92                  329  .db 0h92 ; 0h0174: normal track data
   5493 40                  330  .db 0h40 ; 0h0175: vol off, no pitch, note, no instrument
   5494 02                  331  .db 0h02 ; 0h0176: normal track data,  wait 0
   5495 AA                  332  .db 0hAA ; 0h0177: normal track data
   5496 40                  333  .db 0h40 ; 0h0178: vol off, no pitch, note, no instrument
   5497 AC                  334  .db 0hAC ; 0h0179: normal track data
   5498 40                  335  .db 0h40 ; 0h017A: vol off, no pitch, note, no instrument
   5499 B0                  336  .db 0hB0 ; 0h017B: normal track data
   549A 40                  337  .db 0h40 ; 0h017C: vol off, no pitch, note, no instrument
   549B B4                  338  .db 0hB4 ; 0h017D: normal track data
   549C 40                  339  .db 0h40 ; 0h017E: vol off, no pitch, note, no instrument
   549D 92                  340  .db 0h92 ; 0h017F: normal track data
   549E 40                  341  .db 0h40 ; 0h0180: vol off, no pitch, note, no instrument
   549F 02                  342  .db 0h02 ; 0h0181: normal track data,  wait 0
   54A0 92                  343  .db 0h92 ; 0h0182: normal track data
   54A1 40                  344  .db 0h40 ; 0h0183: vol off, no pitch, note, no instrument
   54A2 0A                  345  .db 0h0A ; 0h0184: normal track data,  wait 4
   54A3 92                  346  .db 0h92 ; 0h0185: normal track data
   54A4 40                  347  .db 0h40 ; 0h0186: vol off, no pitch, note, no instrument
   54A5 02                  348  .db 0h02 ; 0h0187: normal track data,  wait 0
   54A6 92                  349  .db 0h92 ; 0h0188: normal track data
   54A7 40                  350  .db 0h40 ; 0h0189: vol off, no pitch, note, no instrument
   54A8 02                  351  .db 0h02 ; 0h018A: normal track data,  wait 0
   54A9 94                  352  .db 0h94 ; 0h018B: normal track data
   54AA 40                  353  .db 0h40 ; 0h018C: vol off, no pitch, note, no instrument
   54AB 02                  354  .db 0h02 ; 0h018D: normal track data,  wait 0
   54AC 94                  355  .db 0h94 ; 0h018E: normal track data
   54AD 40                  356  .db 0h40 ; 0h018F: vol off, no pitch, note, no instrument
   54AE 02                  357  .db 0h02 ; 0h0190: normal track data,  wait 0
   54AF 92                  358  .db 0h92 ; 0h0191: normal track data
   54B0 40                  359  .db 0h40 ; 0h0192: vol off, no pitch, note, no instrument
   54B1 02                  360  .db 0h02 ; 0h0193: normal track data,  wait 0
   54B2 92                  361  .db 0h92 ; 0h0194: normal track data
   54B3 40                  362  .db 0h40 ; 0h0195: vol off, no pitch, note, no instrument
   54B4 0A                  363  .db 0h0A ; 0h0196: normal track data,  wait 4
   54B5 92                  364  .db 0h92 ; 0h0197: normal track data
   54B6 40                  365  .db 0h40 ; 0h0198: vol off, no pitch, note, no instrument
   54B7 02                  366  .db 0h02 ; 0h0199: normal track data,  wait 0
   54B8 92                  367  .db 0h92 ; 0h019A: normal track data
   54B9 40                  368  .db 0h40 ; 0h019B: vol off, no pitch, note, no instrument
   54BA 02                  369  .db 0h02 ; 0h019C: normal track data,  wait 0
   54BB AA                  370  .db 0hAA ; 0h019D: normal track data
   54BC 40                  371  .db 0h40 ; 0h019E: vol off, no pitch, note, no instrument
   54BD AC                  372  .db 0hAC ; 0h019F: normal track data
   54BE 40                  373  .db 0h40 ; 0h01A0: vol off, no pitch, note, no instrument
   54BF B0                  374  .db 0hB0 ; 0h01A1: normal track data
   54C0 40                  375  .db 0h40 ; 0h01A2: vol off, no pitch, note, no instrument
   54C1 B4                  376  .db 0hB4 ; 0h01A3: normal track data
   54C2 40                  377  .db 0h40 ; 0h01A4: vol off, no pitch, note, no instrument
   54C3 92                  378  .db 0h92 ; 0h01A5: normal track data
   54C4 40                  379  .db 0h40 ; 0h01A6: vol off, no pitch, note, no instrument
   54C5 02                  380  .db 0h02 ; 0h01A7: normal track data,  wait 0
   54C6 92                  381  .db 0h92 ; 0h01A8: normal track data
   54C7 40                  382  .db 0h40 ; 0h01A9: vol off, no pitch, note, no instrument
   54C8 0A                  383  .db 0h0A ; 0h01AA: normal track data,  wait 4
   54C9 92                  384  .db 0h92 ; 0h01AB: normal track data
   54CA 40                  385  .db 0h40 ; 0h01AC: vol off, no pitch, note, no instrument
   54CB 02                  386  .db 0h02 ; 0h01AD: normal track data,  wait 0
   54CC 92                  387  .db 0h92 ; 0h01AE: normal track data
   54CD 40                  388  .db 0h40 ; 0h01AF: vol off, no pitch, note, no instrument
   54CE 02                  389  .db 0h02 ; 0h01B0: normal track data,  wait 0
   54CF 94                  390  .db 0h94 ; 0h01B1: normal track data
   54D0 40                  391  .db 0h40 ; 0h01B2: vol off, no pitch, note, no instrument
   54D1 02                  392  .db 0h02 ; 0h01B3: normal track data,  wait 0
   54D2 94                  393  .db 0h94 ; 0h01B4: normal track data
   54D3 40                  394  .db 0h40 ; 0h01B5: vol off, no pitch, note, no instrument
   54D4 02                  395  .db 0h02 ; 0h01B6: normal track data,  wait 0
   54D5 92                  396  .db 0h92 ; 0h01B7: normal track data
   54D6 40                  397  .db 0h40 ; 0h01B8: vol off, no pitch, note, no instrument
   54D7 02                  398  .db 0h02 ; 0h01B9: normal track data,  wait 0
   54D8 92                  399  .db 0h92 ; 0h01BA: normal track data
   54D9 40                  400  .db 0h40 ; 0h01BB: vol off, no pitch, note, no instrument
   54DA 00                  401  .db 0h00 ; 0h01BC: track end signature found
   54DB                     402 trackDef3Test:
   54DB 42                  403  .db 0h42 ; 0h01BD: normal track data
   54DC 80                  404  .db 0h80 ; 0h01BE: vol off, pitch, no note, no instrument
   54DD 00 00               405  .dw 0h0000 ; 0h01BF: pitch
   54DF 3E                  406  .db 0h3E ; 0h01C1: normal track data,  wait 30
   54E0 30                  407  .db 0h30 ; 0h01C2: normal track data,  wait 23
   54E1 92                  408  .db 0h92 ; 0h01C3: normal track data
   54E2 61                  409  .db 0h61 ; 0h01C4: vol = 0hF (inverted), no pitch, no note, no instrument
   54E3 03                  410  .db 0h03 ; 0h01C5: instrument
   54E4 02                  411  .db 0h02 ; 0h01C6: normal track data,  wait 0
   54E5 92                  412  .db 0h92 ; 0h01C7: normal track data
   54E6 60                  413  .db 0h60 ; 0h01C8: vol off, no pitch, note, instrument
   54E7 04                  414  .db 0h04 ; 0h01C9: instrument
   54E8 02                  415  .db 0h02 ; 0h01CA: normal track data,  wait 0
   54E9 92                  416  .db 0h92 ; 0h01CB: normal track data
   54EA 60                  417  .db 0h60 ; 0h01CC: vol off, no pitch, note, instrument
   54EB 03                  418  .db 0h03 ; 0h01CD: instrument
   54EC 00                  419  .db 0h00 ; 0h01CE: track end signature found
   54ED                     420 trackDef5Test:
   54ED 92                  421  .db 0h92 ; 0h01CF: normal track data
   54EE E1                  422  .db 0hE1 ; 0h01D0: vol = 0hF (inverted), no pitch, no note, no instrument
   54EF 00 00               423  .dw 0h0000 ; 0h01D1: pitch
   54F1 03                  424  .db 0h03 ; 0h01D3: instrument
   54F2 02                  425  .db 0h02 ; 0h01D4: normal track data,  wait 0
   54F3 92                  426  .db 0h92 ; 0h01D5: normal track data
   54F4 40                  427  .db 0h40 ; 0h01D6: vol off, no pitch, note, no instrument
   54F5 02                  428  .db 0h02 ; 0h01D7: normal track data,  wait 0
   54F6 AA                  429  .db 0hAA ; 0h01D8: normal track data
   54F7 40                  430  .db 0h40 ; 0h01D9: vol off, no pitch, note, no instrument
   54F8 AA                  431  .db 0hAA ; 0h01DA: normal track data
   54F9 40                  432  .db 0h40 ; 0h01DB: vol off, no pitch, note, no instrument
   54FA BA                  433  .db 0hBA ; 0h01DC: normal track data
   54FB 40                  434  .db 0h40 ; 0h01DD: vol off, no pitch, note, no instrument
   54FC BA                  435  .db 0hBA ; 0h01DE: normal track data
   54FD 40                  436  .db 0h40 ; 0h01DF: vol off, no pitch, note, no instrument
   54FE 92                  437  .db 0h92 ; 0h01E0: normal track data
   54FF 40                  438  .db 0h40 ; 0h01E1: vol off, no pitch, note, no instrument
   5500 02                  439  .db 0h02 ; 0h01E2: normal track data,  wait 0
   5501 92                  440  .db 0h92 ; 0h01E3: normal track data
   5502 40                  441  .db 0h40 ; 0h01E4: vol off, no pitch, note, no instrument
   5503 0A                  442  .db 0h0A ; 0h01E5: normal track data,  wait 4
   5504 92                  443  .db 0h92 ; 0h01E6: normal track data
   5505 40                  444  .db 0h40 ; 0h01E7: vol off, no pitch, note, no instrument
   5506 02                  445  .db 0h02 ; 0h01E8: normal track data,  wait 0
   5507 92                  446  .db 0h92 ; 0h01E9: normal track data
   5508 40                  447  .db 0h40 ; 0h01EA: vol off, no pitch, note, no instrument
   5509 02                  448  .db 0h02 ; 0h01EB: normal track data,  wait 0
   550A 92                  449  .db 0h92 ; 0h01EC: normal track data
   550B 60                  450  .db 0h60 ; 0h01ED: vol off, no pitch, note, instrument
   550C 04                  451  .db 0h04 ; 0h01EE: instrument
   550D 02                  452  .db 0h02 ; 0h01EF: normal track data,  wait 0
   550E 92                  453  .db 0h92 ; 0h01F0: normal track data
   550F 40                  454  .db 0h40 ; 0h01F1: vol off, no pitch, note, no instrument
   5510 02                  455  .db 0h02 ; 0h01F2: normal track data,  wait 0
   5511 92                  456  .db 0h92 ; 0h01F3: normal track data
   5512 60                  457  .db 0h60 ; 0h01F4: vol off, no pitch, note, instrument
   5513 03                  458  .db 0h03 ; 0h01F5: instrument
   5514 02                  459  .db 0h02 ; 0h01F6: normal track data,  wait 0
   5515 92                  460  .db 0h92 ; 0h01F7: normal track data
   5516 40                  461  .db 0h40 ; 0h01F8: vol off, no pitch, note, no instrument
   5517 0A                  462  .db 0h0A ; 0h01F9: normal track data,  wait 4
   5518 92                  463  .db 0h92 ; 0h01FA: normal track data
   5519 40                  464  .db 0h40 ; 0h01FB: vol off, no pitch, note, no instrument
   551A 02                  465  .db 0h02 ; 0h01FC: normal track data,  wait 0
   551B 92                  466  .db 0h92 ; 0h01FD: normal track data
   551C 40                  467  .db 0h40 ; 0h01FE: vol off, no pitch, note, no instrument
   551D 02                  468  .db 0h02 ; 0h01FF: normal track data,  wait 0
   551E AA                  469  .db 0hAA ; 0h0200: normal track data
   551F 40                  470  .db 0h40 ; 0h0201: vol off, no pitch, note, no instrument
   5520 AA                  471  .db 0hAA ; 0h0202: normal track data
   5521 40                  472  .db 0h40 ; 0h0203: vol off, no pitch, note, no instrument
   5522 BA                  473  .db 0hBA ; 0h0204: normal track data
   5523 40                  474  .db 0h40 ; 0h0205: vol off, no pitch, note, no instrument
   5524 BA                  475  .db 0hBA ; 0h0206: normal track data
   5525 40                  476  .db 0h40 ; 0h0207: vol off, no pitch, note, no instrument
   5526 92                  477  .db 0h92 ; 0h0208: normal track data
   5527 40                  478  .db 0h40 ; 0h0209: vol off, no pitch, note, no instrument
   5528 02                  479  .db 0h02 ; 0h020A: normal track data,  wait 0
   5529 92                  480  .db 0h92 ; 0h020B: normal track data
   552A 40                  481  .db 0h40 ; 0h020C: vol off, no pitch, note, no instrument
   552B 0A                  482  .db 0h0A ; 0h020D: normal track data,  wait 4
   552C 92                  483  .db 0h92 ; 0h020E: normal track data
   552D 40                  484  .db 0h40 ; 0h020F: vol off, no pitch, note, no instrument
   552E 02                  485  .db 0h02 ; 0h0210: normal track data,  wait 0
   552F 92                  486  .db 0h92 ; 0h0211: normal track data
   5530 40                  487  .db 0h40 ; 0h0212: vol off, no pitch, note, no instrument
   5531 02                  488  .db 0h02 ; 0h0213: normal track data,  wait 0
   5532 92                  489  .db 0h92 ; 0h0214: normal track data
   5533 60                  490  .db 0h60 ; 0h0215: vol off, no pitch, note, instrument
   5534 04                  491  .db 0h04 ; 0h0216: instrument
   5535 02                  492  .db 0h02 ; 0h0217: normal track data,  wait 0
   5536 92                  493  .db 0h92 ; 0h0218: normal track data
   5537 40                  494  .db 0h40 ; 0h0219: vol off, no pitch, note, no instrument
   5538 02                  495  .db 0h02 ; 0h021A: normal track data,  wait 0
   5539 92                  496  .db 0h92 ; 0h021B: normal track data
   553A 60                  497  .db 0h60 ; 0h021C: vol off, no pitch, note, instrument
   553B 03                  498  .db 0h03 ; 0h021D: instrument
   553C 02                  499  .db 0h02 ; 0h021E: normal track data,  wait 0
   553D 92                  500  .db 0h92 ; 0h021F: normal track data
   553E 40                  501  .db 0h40 ; 0h0220: vol off, no pitch, note, no instrument
   553F 00                  502  .db 0h00 ; 0h0221: track end signature found
   5540                     503 trackDef4Test:
   5540 42                  504  .db 0h42 ; 0h0222: normal track data
   5541 80                  505  .db 0h80 ; 0h0223: vol off, pitch, no note, no instrument
   5542 00 00               506  .dw 0h0000 ; 0h0224: pitch
   5544 3E                  507  .db 0h3E ; 0h0226: normal track data,  wait 30
   5545 30                  508  .db 0h30 ; 0h0227: normal track data,  wait 23
   5546 92                  509  .db 0h92 ; 0h0228: normal track data
   5547 73                  510  .db 0h73 ; 0h0229: vol = 0h6 (inverted), no pitch, no note, no instrument
   5548 05                  511  .db 0h05 ; 0h022A: instrument
   5549 AA                  512  .db 0hAA ; 0h022B: normal track data
   554A 40                  513  .db 0h40 ; 0h022C: vol off, no pitch, note, no instrument
   554B 08                  514  .db 0h08 ; 0h022D: normal track data,  wait 3
   554C AA                  515  .db 0hAA ; 0h022E: normal track data
   554D 40                  516  .db 0h40 ; 0h022F: vol off, no pitch, note, no instrument
   554E 92                  517  .db 0h92 ; 0h0230: normal track data
   554F 40                  518  .db 0h40 ; 0h0231: vol off, no pitch, note, no instrument
   5550                     519 trackDef16Test:
   5550 92                  520  .db 0h92 ; 0h0232: normal track data
   5551 F3                  521  .db 0hF3 ; 0h0233: vol = 0h6 (inverted), no pitch, no note, no instrument
   5552 00 00               522  .dw 0h0000 ; 0h0234: pitch
   5554 05                  523  .db 0h05 ; 0h0236: instrument
   5555 AA                  524  .db 0hAA ; 0h0237: normal track data
   5556 40                  525  .db 0h40 ; 0h0238: vol off, no pitch, note, no instrument
   5557 AA                  526  .db 0hAA ; 0h0239: normal track data
   5558 40                  527  .db 0h40 ; 0h023A: vol off, no pitch, note, no instrument
   5559 92                  528  .db 0h92 ; 0h023B: normal track data
   555A 40                  529  .db 0h40 ; 0h023C: vol off, no pitch, note, no instrument
   555B 92                  530  .db 0h92 ; 0h023D: normal track data
   555C 40                  531  .db 0h40 ; 0h023E: vol off, no pitch, note, no instrument
   555D 94                  532  .db 0h94 ; 0h023F: normal track data
   555E 40                  533  .db 0h40 ; 0h0240: vol off, no pitch, note, no instrument
   555F 98                  534  .db 0h98 ; 0h0241: normal track data
   5560 40                  535  .db 0h40 ; 0h0242: vol off, no pitch, note, no instrument
   5561 9C                  536  .db 0h9C ; 0h0243: normal track data
   5562 40                  537  .db 0h40 ; 0h0244: vol off, no pitch, note, no instrument
   5563 92                  538  .db 0h92 ; 0h0245: normal track data
   5564 40                  539  .db 0h40 ; 0h0246: vol off, no pitch, note, no instrument
   5565 AA                  540  .db 0hAA ; 0h0247: normal track data
   5566 40                  541  .db 0h40 ; 0h0248: vol off, no pitch, note, no instrument
   5567 08                  542  .db 0h08 ; 0h0249: normal track data,  wait 3
   5568 AA                  543  .db 0hAA ; 0h024A: normal track data
   5569 40                  544  .db 0h40 ; 0h024B: vol off, no pitch, note, no instrument
   556A 92                  545  .db 0h92 ; 0h024C: normal track data
   556B 40                  546  .db 0h40 ; 0h024D: vol off, no pitch, note, no instrument
   556C 92                  547  .db 0h92 ; 0h024E: normal track data
   556D 40                  548  .db 0h40 ; 0h024F: vol off, no pitch, note, no instrument
   556E AA                  549  .db 0hAA ; 0h0250: normal track data
   556F 40                  550  .db 0h40 ; 0h0251: vol off, no pitch, note, no instrument
   5570 AA                  551  .db 0hAA ; 0h0252: normal track data
   5571 40                  552  .db 0h40 ; 0h0253: vol off, no pitch, note, no instrument
   5572 92                  553  .db 0h92 ; 0h0254: normal track data
   5573 40                  554  .db 0h40 ; 0h0255: vol off, no pitch, note, no instrument
   5574 94                  555  .db 0h94 ; 0h0256: normal track data
   5575 40                  556  .db 0h40 ; 0h0257: vol off, no pitch, note, no instrument
   5576 AC                  557  .db 0hAC ; 0h0258: normal track data
   5577 40                  558  .db 0h40 ; 0h0259: vol off, no pitch, note, no instrument
   5578 AC                  559  .db 0hAC ; 0h025A: normal track data
   5579 40                  560  .db 0h40 ; 0h025B: vol off, no pitch, note, no instrument
   557A 94                  561  .db 0h94 ; 0h025C: normal track data
   557B 40                  562  .db 0h40 ; 0h025D: vol off, no pitch, note, no instrument
   557C 92                  563  .db 0h92 ; 0h025E: normal track data
   557D 40                  564  .db 0h40 ; 0h025F: vol off, no pitch, note, no instrument
   557E AA                  565  .db 0hAA ; 0h0260: normal track data
   557F 40                  566  .db 0h40 ; 0h0261: vol off, no pitch, note, no instrument
   5580 08                  567  .db 0h08 ; 0h0262: normal track data,  wait 3
   5581 AA                  568  .db 0hAA ; 0h0263: normal track data
   5582 40                  569  .db 0h40 ; 0h0264: vol off, no pitch, note, no instrument
   5583 92                  570  .db 0h92 ; 0h0265: normal track data
   5584 40                  571  .db 0h40 ; 0h0266: vol off, no pitch, note, no instrument
   5585 92                  572  .db 0h92 ; 0h0267: normal track data
   5586 40                  573  .db 0h40 ; 0h0268: vol off, no pitch, note, no instrument
   5587 AA                  574  .db 0hAA ; 0h0269: normal track data
   5588 40                  575  .db 0h40 ; 0h026A: vol off, no pitch, note, no instrument
   5589 AA                  576  .db 0hAA ; 0h026B: normal track data
   558A 40                  577  .db 0h40 ; 0h026C: vol off, no pitch, note, no instrument
   558B 92                  578  .db 0h92 ; 0h026D: normal track data
   558C 40                  579  .db 0h40 ; 0h026E: vol off, no pitch, note, no instrument
   558D 92                  580  .db 0h92 ; 0h026F: normal track data
   558E 40                  581  .db 0h40 ; 0h0270: vol off, no pitch, note, no instrument
   558F 94                  582  .db 0h94 ; 0h0271: normal track data
   5590 40                  583  .db 0h40 ; 0h0272: vol off, no pitch, note, no instrument
   5591 98                  584  .db 0h98 ; 0h0273: normal track data
   5592 40                  585  .db 0h40 ; 0h0274: vol off, no pitch, note, no instrument
   5593 9C                  586  .db 0h9C ; 0h0275: normal track data
   5594 40                  587  .db 0h40 ; 0h0276: vol off, no pitch, note, no instrument
   5595 92                  588  .db 0h92 ; 0h0277: normal track data
   5596 40                  589  .db 0h40 ; 0h0278: vol off, no pitch, note, no instrument
   5597 AA                  590  .db 0hAA ; 0h0279: normal track data
   5598 40                  591  .db 0h40 ; 0h027A: vol off, no pitch, note, no instrument
   5599 08                  592  .db 0h08 ; 0h027B: normal track data,  wait 3
   559A AA                  593  .db 0hAA ; 0h027C: normal track data
   559B 40                  594  .db 0h40 ; 0h027D: vol off, no pitch, note, no instrument
   559C 92                  595  .db 0h92 ; 0h027E: normal track data
   559D 40                  596  .db 0h40 ; 0h027F: vol off, no pitch, note, no instrument
   559E 92                  597  .db 0h92 ; 0h0280: normal track data
   559F 40                  598  .db 0h40 ; 0h0281: vol off, no pitch, note, no instrument
   55A0 AA                  599  .db 0hAA ; 0h0282: normal track data
   55A1 40                  600  .db 0h40 ; 0h0283: vol off, no pitch, note, no instrument
   55A2 AA                  601  .db 0hAA ; 0h0284: normal track data
   55A3 40                  602  .db 0h40 ; 0h0285: vol off, no pitch, note, no instrument
   55A4 92                  603  .db 0h92 ; 0h0286: normal track data
   55A5 40                  604  .db 0h40 ; 0h0287: vol off, no pitch, note, no instrument
   55A6 92                  605  .db 0h92 ; 0h0288: normal track data
   55A7 40                  606  .db 0h40 ; 0h0289: vol off, no pitch, note, no instrument
   55A8 94                  607  .db 0h94 ; 0h028A: normal track data
   55A9 40                  608  .db 0h40 ; 0h028B: vol off, no pitch, note, no instrument
   55AA 98                  609  .db 0h98 ; 0h028C: normal track data
   55AB 40                  610  .db 0h40 ; 0h028D: vol off, no pitch, note, no instrument
   55AC 9C                  611  .db 0h9C ; 0h028E: normal track data
   55AD 40                  612  .db 0h40 ; 0h028F: vol off, no pitch, note, no instrument
   55AE 92                  613  .db 0h92 ; 0h0290: normal track data
   55AF 40                  614  .db 0h40 ; 0h0291: vol off, no pitch, note, no instrument
   55B0 AA                  615  .db 0hAA ; 0h0292: normal track data
   55B1 40                  616  .db 0h40 ; 0h0293: vol off, no pitch, note, no instrument
   55B2 08                  617  .db 0h08 ; 0h0294: normal track data,  wait 3
   55B3 AA                  618  .db 0hAA ; 0h0295: normal track data
   55B4 40                  619  .db 0h40 ; 0h0296: vol off, no pitch, note, no instrument
   55B5 92                  620  .db 0h92 ; 0h0297: normal track data
   55B6 40                  621  .db 0h40 ; 0h0298: vol off, no pitch, note, no instrument
   55B7                     622 trackDef6Test:
   55B7 92                  623  .db 0h92 ; 0h0299: normal track data
   55B8 F3                  624  .db 0hF3 ; 0h029A: vol = 0h6 (inverted), no pitch, no note, no instrument
   55B9 00 00               625  .dw 0h0000 ; 0h029B: pitch
   55BB 05                  626  .db 0h05 ; 0h029D: instrument
   55BC 0E                  627  .db 0h0E ; 0h029E: normal track data,  wait 6
   55BD 92                  628  .db 0h92 ; 0h029F: normal track data
   55BE 40                  629  .db 0h40 ; 0h02A0: vol off, no pitch, note, no instrument
   55BF 0E                  630  .db 0h0E ; 0h02A1: normal track data,  wait 6
   55C0 92                  631  .db 0h92 ; 0h02A2: normal track data
   55C1 40                  632  .db 0h40 ; 0h02A3: vol off, no pitch, note, no instrument
   55C2 0E                  633  .db 0h0E ; 0h02A4: normal track data,  wait 6
   55C3 92                  634  .db 0h92 ; 0h02A5: normal track data
   55C4 40                  635  .db 0h40 ; 0h02A6: vol off, no pitch, note, no instrument
   55C5 0E                  636  .db 0h0E ; 0h02A7: normal track data,  wait 6
   55C6 92                  637  .db 0h92 ; 0h02A8: normal track data
   55C7 40                  638  .db 0h40 ; 0h02A9: vol off, no pitch, note, no instrument
   55C8 0E                  639  .db 0h0E ; 0h02AA: normal track data,  wait 6
   55C9 92                  640  .db 0h92 ; 0h02AB: normal track data
   55CA 40                  641  .db 0h40 ; 0h02AC: vol off, no pitch, note, no instrument
   55CB 0E                  642  .db 0h0E ; 0h02AD: normal track data,  wait 6
   55CC 92                  643  .db 0h92 ; 0h02AE: normal track data
   55CD 40                  644  .db 0h40 ; 0h02AF: vol off, no pitch, note, no instrument
   55CE 0E                  645  .db 0h0E ; 0h02B0: normal track data,  wait 6
   55CF 92                  646  .db 0h92 ; 0h02B1: normal track data
   55D0 40                  647  .db 0h40 ; 0h02B2: vol off, no pitch, note, no instrument
   55D1 00                  648  .db 0h00 ; 0h02B3: track end signature found
   55D2                     649 trackDef7Test:
   55D2 92                  650  .db 0h92 ; 0h02B4: normal track data
   55D3 E1                  651  .db 0hE1 ; 0h02B5: vol = 0hF (inverted), no pitch, no note, no instrument
   55D4 00 00               652  .dw 0h0000 ; 0h02B6: pitch
   55D6 02                  653  .db 0h02 ; 0h02B8: instrument
   55D7 02                  654  .db 0h02 ; 0h02B9: normal track data,  wait 0
   55D8 92                  655  .db 0h92 ; 0h02BA: normal track data
   55D9 40                  656  .db 0h40 ; 0h02BB: vol off, no pitch, note, no instrument
   55DA 02                  657  .db 0h02 ; 0h02BC: normal track data,  wait 0
   55DB AA                  658  .db 0hAA ; 0h02BD: normal track data
   55DC 40                  659  .db 0h40 ; 0h02BE: vol off, no pitch, note, no instrument
   55DD AC                  660  .db 0hAC ; 0h02BF: normal track data
   55DE 40                  661  .db 0h40 ; 0h02C0: vol off, no pitch, note, no instrument
   55DF B0                  662  .db 0hB0 ; 0h02C1: normal track data
   55E0 40                  663  .db 0h40 ; 0h02C2: vol off, no pitch, note, no instrument
   55E1 B4                  664  .db 0hB4 ; 0h02C3: normal track data
   55E2 40                  665  .db 0h40 ; 0h02C4: vol off, no pitch, note, no instrument
   55E3 92                  666  .db 0h92 ; 0h02C5: normal track data
   55E4 40                  667  .db 0h40 ; 0h02C6: vol off, no pitch, note, no instrument
   55E5 02                  668  .db 0h02 ; 0h02C7: normal track data,  wait 0
   55E6 92                  669  .db 0h92 ; 0h02C8: normal track data
   55E7 40                  670  .db 0h40 ; 0h02C9: vol off, no pitch, note, no instrument
   55E8 0A                  671  .db 0h0A ; 0h02CA: normal track data,  wait 4
   55E9 92                  672  .db 0h92 ; 0h02CB: normal track data
   55EA 40                  673  .db 0h40 ; 0h02CC: vol off, no pitch, note, no instrument
   55EB 02                  674  .db 0h02 ; 0h02CD: normal track data,  wait 0
   55EC 92                  675  .db 0h92 ; 0h02CE: normal track data
   55ED 40                  676  .db 0h40 ; 0h02CF: vol off, no pitch, note, no instrument
   55EE 02                  677  .db 0h02 ; 0h02D0: normal track data,  wait 0
   55EF 94                  678  .db 0h94 ; 0h02D1: normal track data
   55F0 40                  679  .db 0h40 ; 0h02D2: vol off, no pitch, note, no instrument
   55F1 02                  680  .db 0h02 ; 0h02D3: normal track data,  wait 0
   55F2 94                  681  .db 0h94 ; 0h02D4: normal track data
   55F3 40                  682  .db 0h40 ; 0h02D5: vol off, no pitch, note, no instrument
   55F4 02                  683  .db 0h02 ; 0h02D6: normal track data,  wait 0
   55F5 92                  684  .db 0h92 ; 0h02D7: normal track data
   55F6 40                  685  .db 0h40 ; 0h02D8: vol off, no pitch, note, no instrument
   55F7 02                  686  .db 0h02 ; 0h02D9: normal track data,  wait 0
   55F8 92                  687  .db 0h92 ; 0h02DA: normal track data
   55F9 40                  688  .db 0h40 ; 0h02DB: vol off, no pitch, note, no instrument
   55FA 0A                  689  .db 0h0A ; 0h02DC: normal track data,  wait 4
   55FB 92                  690  .db 0h92 ; 0h02DD: normal track data
   55FC 40                  691  .db 0h40 ; 0h02DE: vol off, no pitch, note, no instrument
   55FD 02                  692  .db 0h02 ; 0h02DF: normal track data,  wait 0
   55FE 92                  693  .db 0h92 ; 0h02E0: normal track data
   55FF 40                  694  .db 0h40 ; 0h02E1: vol off, no pitch, note, no instrument
   5600 02                  695  .db 0h02 ; 0h02E2: normal track data,  wait 0
   5601 AA                  696  .db 0hAA ; 0h02E3: normal track data
   5602 40                  697  .db 0h40 ; 0h02E4: vol off, no pitch, note, no instrument
   5603 AC                  698  .db 0hAC ; 0h02E5: normal track data
   5604 40                  699  .db 0h40 ; 0h02E6: vol off, no pitch, note, no instrument
   5605 B0                  700  .db 0hB0 ; 0h02E7: normal track data
   5606 40                  701  .db 0h40 ; 0h02E8: vol off, no pitch, note, no instrument
   5607 B4                  702  .db 0hB4 ; 0h02E9: normal track data
   5608 40                  703  .db 0h40 ; 0h02EA: vol off, no pitch, note, no instrument
   5609 92                  704  .db 0h92 ; 0h02EB: normal track data
   560A 40                  705  .db 0h40 ; 0h02EC: vol off, no pitch, note, no instrument
   560B 02                  706  .db 0h02 ; 0h02ED: normal track data,  wait 0
   560C 92                  707  .db 0h92 ; 0h02EE: normal track data
   560D 40                  708  .db 0h40 ; 0h02EF: vol off, no pitch, note, no instrument
   560E 0A                  709  .db 0h0A ; 0h02F0: normal track data,  wait 4
   560F 92                  710  .db 0h92 ; 0h02F1: normal track data
   5610 40                  711  .db 0h40 ; 0h02F2: vol off, no pitch, note, no instrument
   5611 02                  712  .db 0h02 ; 0h02F3: normal track data,  wait 0
   5612 92                  713  .db 0h92 ; 0h02F4: normal track data
   5613 40                  714  .db 0h40 ; 0h02F5: vol off, no pitch, note, no instrument
   5614 02                  715  .db 0h02 ; 0h02F6: normal track data,  wait 0
   5615 94                  716  .db 0h94 ; 0h02F7: normal track data
   5616 40                  717  .db 0h40 ; 0h02F8: vol off, no pitch, note, no instrument
   5617 02                  718  .db 0h02 ; 0h02F9: normal track data,  wait 0
   5618 94                  719  .db 0h94 ; 0h02FA: normal track data
   5619 40                  720  .db 0h40 ; 0h02FB: vol off, no pitch, note, no instrument
   561A 02                  721  .db 0h02 ; 0h02FC: normal track data,  wait 0
   561B 92                  722  .db 0h92 ; 0h02FD: normal track data
   561C 40                  723  .db 0h40 ; 0h02FE: vol off, no pitch, note, no instrument
   561D 02                  724  .db 0h02 ; 0h02FF: normal track data,  wait 0
   561E 92                  725  .db 0h92 ; 0h0300: normal track data
   561F 40                  726  .db 0h40 ; 0h0301: vol off, no pitch, note, no instrument
   5620 B4                  727  .db 0hB4 ; 0h0302: normal track data
   5621 40                  728  .db 0h40 ; 0h0303: vol off, no pitch, note, no instrument
   5622 A0                  729  .db 0hA0 ; 0h0304: normal track data
   5623 40                  730  .db 0h40 ; 0h0305: vol off, no pitch, note, no instrument
   5624 9C                  731  .db 0h9C ; 0h0306: normal track data
   5625 40                  732  .db 0h40 ; 0h0307: vol off, no pitch, note, no instrument
   5626 98                  733  .db 0h98 ; 0h0308: normal track data
   5627 40                  734  .db 0h40 ; 0h0309: vol off, no pitch, note, no instrument
   5628 94                  735  .db 0h94 ; 0h030A: normal track data
   5629 40                  736  .db 0h40 ; 0h030B: vol off, no pitch, note, no instrument
   562A                     737 trackDef8Test:
   562A 92                  738  .db 0h92 ; 0h030C: normal track data
   562B E1                  739  .db 0hE1 ; 0h030D: vol = 0hF (inverted), no pitch, no note, no instrument
   562C 00 00               740  .dw 0h0000 ; 0h030E: pitch
   562E 03                  741  .db 0h03 ; 0h0310: instrument
   562F 02                  742  .db 0h02 ; 0h0311: normal track data,  wait 0
   5630 92                  743  .db 0h92 ; 0h0312: normal track data
   5631 40                  744  .db 0h40 ; 0h0313: vol off, no pitch, note, no instrument
   5632 02                  745  .db 0h02 ; 0h0314: normal track data,  wait 0
   5633 AA                  746  .db 0hAA ; 0h0315: normal track data
   5634 40                  747  .db 0h40 ; 0h0316: vol off, no pitch, note, no instrument
   5635 AA                  748  .db 0hAA ; 0h0317: normal track data
   5636 40                  749  .db 0h40 ; 0h0318: vol off, no pitch, note, no instrument
   5637 BA                  750  .db 0hBA ; 0h0319: normal track data
   5638 40                  751  .db 0h40 ; 0h031A: vol off, no pitch, note, no instrument
   5639 BA                  752  .db 0hBA ; 0h031B: normal track data
   563A 40                  753  .db 0h40 ; 0h031C: vol off, no pitch, note, no instrument
   563B 92                  754  .db 0h92 ; 0h031D: normal track data
   563C 40                  755  .db 0h40 ; 0h031E: vol off, no pitch, note, no instrument
   563D 02                  756  .db 0h02 ; 0h031F: normal track data,  wait 0
   563E 92                  757  .db 0h92 ; 0h0320: normal track data
   563F 40                  758  .db 0h40 ; 0h0321: vol off, no pitch, note, no instrument
   5640 0A                  759  .db 0h0A ; 0h0322: normal track data,  wait 4
   5641 92                  760  .db 0h92 ; 0h0323: normal track data
   5642 40                  761  .db 0h40 ; 0h0324: vol off, no pitch, note, no instrument
   5643 02                  762  .db 0h02 ; 0h0325: normal track data,  wait 0
   5644 92                  763  .db 0h92 ; 0h0326: normal track data
   5645 40                  764  .db 0h40 ; 0h0327: vol off, no pitch, note, no instrument
   5646 02                  765  .db 0h02 ; 0h0328: normal track data,  wait 0
   5647 92                  766  .db 0h92 ; 0h0329: normal track data
   5648 60                  767  .db 0h60 ; 0h032A: vol off, no pitch, note, instrument
   5649 04                  768  .db 0h04 ; 0h032B: instrument
   564A 02                  769  .db 0h02 ; 0h032C: normal track data,  wait 0
   564B 92                  770  .db 0h92 ; 0h032D: normal track data
   564C 40                  771  .db 0h40 ; 0h032E: vol off, no pitch, note, no instrument
   564D 02                  772  .db 0h02 ; 0h032F: normal track data,  wait 0
   564E 92                  773  .db 0h92 ; 0h0330: normal track data
   564F 60                  774  .db 0h60 ; 0h0331: vol off, no pitch, note, instrument
   5650 03                  775  .db 0h03 ; 0h0332: instrument
   5651 02                  776  .db 0h02 ; 0h0333: normal track data,  wait 0
   5652 92                  777  .db 0h92 ; 0h0334: normal track data
   5653 40                  778  .db 0h40 ; 0h0335: vol off, no pitch, note, no instrument
   5654 0A                  779  .db 0h0A ; 0h0336: normal track data,  wait 4
   5655 92                  780  .db 0h92 ; 0h0337: normal track data
   5656 40                  781  .db 0h40 ; 0h0338: vol off, no pitch, note, no instrument
   5657 02                  782  .db 0h02 ; 0h0339: normal track data,  wait 0
   5658 92                  783  .db 0h92 ; 0h033A: normal track data
   5659 40                  784  .db 0h40 ; 0h033B: vol off, no pitch, note, no instrument
   565A 02                  785  .db 0h02 ; 0h033C: normal track data,  wait 0
   565B AA                  786  .db 0hAA ; 0h033D: normal track data
   565C 40                  787  .db 0h40 ; 0h033E: vol off, no pitch, note, no instrument
   565D AA                  788  .db 0hAA ; 0h033F: normal track data
   565E 40                  789  .db 0h40 ; 0h0340: vol off, no pitch, note, no instrument
   565F BA                  790  .db 0hBA ; 0h0341: normal track data
   5660 40                  791  .db 0h40 ; 0h0342: vol off, no pitch, note, no instrument
   5661 BA                  792  .db 0hBA ; 0h0343: normal track data
   5662 40                  793  .db 0h40 ; 0h0344: vol off, no pitch, note, no instrument
   5663 92                  794  .db 0h92 ; 0h0345: normal track data
   5664 40                  795  .db 0h40 ; 0h0346: vol off, no pitch, note, no instrument
   5665 02                  796  .db 0h02 ; 0h0347: normal track data,  wait 0
   5666 92                  797  .db 0h92 ; 0h0348: normal track data
   5667 40                  798  .db 0h40 ; 0h0349: vol off, no pitch, note, no instrument
   5668 0A                  799  .db 0h0A ; 0h034A: normal track data,  wait 4
   5669 92                  800  .db 0h92 ; 0h034B: normal track data
   566A 40                  801  .db 0h40 ; 0h034C: vol off, no pitch, note, no instrument
   566B 02                  802  .db 0h02 ; 0h034D: normal track data,  wait 0
   566C 92                  803  .db 0h92 ; 0h034E: normal track data
   566D 40                  804  .db 0h40 ; 0h034F: vol off, no pitch, note, no instrument
   566E 02                  805  .db 0h02 ; 0h0350: normal track data,  wait 0
   566F 92                  806  .db 0h92 ; 0h0351: normal track data
   5670 60                  807  .db 0h60 ; 0h0352: vol off, no pitch, note, instrument
   5671 04                  808  .db 0h04 ; 0h0353: instrument
   5672 02                  809  .db 0h02 ; 0h0354: normal track data,  wait 0
   5673 92                  810  .db 0h92 ; 0h0355: normal track data
   5674 40                  811  .db 0h40 ; 0h0356: vol off, no pitch, note, no instrument
   5675 02                  812  .db 0h02 ; 0h0357: normal track data,  wait 0
   5676 92                  813  .db 0h92 ; 0h0358: normal track data
   5677 60                  814  .db 0h60 ; 0h0359: vol off, no pitch, note, instrument
   5678 03                  815  .db 0h03 ; 0h035A: instrument
   5679 02                  816  .db 0h02 ; 0h035B: normal track data,  wait 0
   567A 92                  817  .db 0h92 ; 0h035C: normal track data
   567B 40                  818  .db 0h40 ; 0h035D: vol off, no pitch, note, no instrument
   567C 92                  819  .db 0h92 ; 0h035E: normal track data
   567D 40                  820  .db 0h40 ; 0h035F: vol off, no pitch, note, no instrument
   567E 92                  821  .db 0h92 ; 0h0360: normal track data
   567F 40                  822  .db 0h40 ; 0h0361: vol off, no pitch, note, no instrument
   5680 AA                  823  .db 0hAA ; 0h0362: normal track data
   5681 60                  824  .db 0h60 ; 0h0363: vol off, no pitch, note, instrument
   5682 04                  825  .db 0h04 ; 0h0364: instrument
   5683 AA                  826  .db 0hAA ; 0h0365: normal track data
   5684 40                  827  .db 0h40 ; 0h0366: vol off, no pitch, note, no instrument
   5685 92                  828  .db 0h92 ; 0h0367: normal track data
   5686 60                  829  .db 0h60 ; 0h0368: vol off, no pitch, note, instrument
   5687 03                  830  .db 0h03 ; 0h0369: instrument
   5688                     831 trackDef9Test:
   5688 92                  832  .db 0h92 ; 0h036A: normal track data
   5689 F3                  833  .db 0hF3 ; 0h036B: vol = 0h6 (inverted), no pitch, no note, no instrument
   568A 00 00               834  .dw 0h0000 ; 0h036C: pitch
   568C 05                  835  .db 0h05 ; 0h036E: instrument
   568D 0E                  836  .db 0h0E ; 0h036F: normal track data,  wait 6
   568E 92                  837  .db 0h92 ; 0h0370: normal track data
   568F 40                  838  .db 0h40 ; 0h0371: vol off, no pitch, note, no instrument
   5690 0E                  839  .db 0h0E ; 0h0372: normal track data,  wait 6
   5691 92                  840  .db 0h92 ; 0h0373: normal track data
   5692 40                  841  .db 0h40 ; 0h0374: vol off, no pitch, note, no instrument
   5693 0E                  842  .db 0h0E ; 0h0375: normal track data,  wait 6
   5694 92                  843  .db 0h92 ; 0h0376: normal track data
   5695 40                  844  .db 0h40 ; 0h0377: vol off, no pitch, note, no instrument
   5696 0E                  845  .db 0h0E ; 0h0378: normal track data,  wait 6
   5697 92                  846  .db 0h92 ; 0h0379: normal track data
   5698 40                  847  .db 0h40 ; 0h037A: vol off, no pitch, note, no instrument
   5699 0E                  848  .db 0h0E ; 0h037B: normal track data,  wait 6
   569A 92                  849  .db 0h92 ; 0h037C: normal track data
   569B 40                  850  .db 0h40 ; 0h037D: vol off, no pitch, note, no instrument
   569C 0E                  851  .db 0h0E ; 0h037E: normal track data,  wait 6
   569D 92                  852  .db 0h92 ; 0h037F: normal track data
   569E 40                  853  .db 0h40 ; 0h0380: vol off, no pitch, note, no instrument
   569F 0E                  854  .db 0h0E ; 0h0381: normal track data,  wait 6
   56A0 92                  855  .db 0h92 ; 0h0382: normal track data
   56A1 40                  856  .db 0h40 ; 0h0383: vol off, no pitch, note, no instrument
   56A2 04                  857  .db 0h04 ; 0h0384: normal track data,  wait 1
   56A3 B4                  858  .db 0hB4 ; 0h0385: normal track data
   56A4 40                  859  .db 0h40 ; 0h0386: vol off, no pitch, note, no instrument
   56A5 A0                  860  .db 0hA0 ; 0h0387: normal track data
   56A6 40                  861  .db 0h40 ; 0h0388: vol off, no pitch, note, no instrument
   56A7 9C                  862  .db 0h9C ; 0h0389: normal track data
   56A8 40                  863  .db 0h40 ; 0h038A: vol off, no pitch, note, no instrument
   56A9 98                  864  .db 0h98 ; 0h038B: normal track data
   56AA 40                  865  .db 0h40 ; 0h038C: vol off, no pitch, note, no instrument
   56AB 94                  866  .db 0h94 ; 0h038D: normal track data
   56AC 40                  867  .db 0h40 ; 0h038E: vol off, no pitch, note, no instrument
   56AD                     868 trackDef14Test:
   56AD 92                  869  .db 0h92 ; 0h038F: normal track data
   56AE E1                  870  .db 0hE1 ; 0h0390: vol = 0hF (inverted), no pitch, no note, no instrument
   56AF 00 00               871  .dw 0h0000 ; 0h0391: pitch
   56B1 02                  872  .db 0h02 ; 0h0393: instrument
   56B2 C2                  873  .db 0hC2 ; 0h0394: normal track data
   56B3 49                  874  .db 0h49 ; 0h0395: vol = 0hB (inverted), no pitch, no note, no instrument
   56B4 92                  875  .db 0h92 ; 0h0396: normal track data
   56B5 41                  876  .db 0h41 ; 0h0397: vol = 0hF (inverted), no pitch, no note, no instrument
   56B6 C2                  877  .db 0hC2 ; 0h0398: normal track data
   56B7 49                  878  .db 0h49 ; 0h0399: vol = 0hB (inverted), no pitch, no note, no instrument
   56B8 AA                  879  .db 0hAA ; 0h039A: normal track data
   56B9 41                  880  .db 0h41 ; 0h039B: vol = 0hF (inverted), no pitch, no note, no instrument
   56BA AC                  881  .db 0hAC ; 0h039C: normal track data
   56BB 40                  882  .db 0h40 ; 0h039D: vol off, no pitch, note, no instrument
   56BC B0                  883  .db 0hB0 ; 0h039E: normal track data
   56BD 40                  884  .db 0h40 ; 0h039F: vol off, no pitch, note, no instrument
   56BE B4                  885  .db 0hB4 ; 0h03A0: normal track data
   56BF 40                  886  .db 0h40 ; 0h03A1: vol off, no pitch, note, no instrument
   56C0 92                  887  .db 0h92 ; 0h03A2: normal track data
   56C1 40                  888  .db 0h40 ; 0h03A3: vol off, no pitch, note, no instrument
   56C2 C2                  889  .db 0hC2 ; 0h03A4: normal track data
   56C3 49                  890  .db 0h49 ; 0h03A5: vol = 0hB (inverted), no pitch, no note, no instrument
   56C4 92                  891  .db 0h92 ; 0h03A6: normal track data
   56C5 41                  892  .db 0h41 ; 0h03A7: vol = 0hF (inverted), no pitch, no note, no instrument
   56C6 C2                  893  .db 0hC2 ; 0h03A8: normal track data
   56C7 49                  894  .db 0h49 ; 0h03A9: vol = 0hB (inverted), no pitch, no note, no instrument
   56C8 AA                  895  .db 0hAA ; 0h03AA: normal track data
   56C9 41                  896  .db 0h41 ; 0h03AB: vol = 0hF (inverted), no pitch, no note, no instrument
   56CA C2                  897  .db 0hC2 ; 0h03AC: normal track data
   56CB 49                  898  .db 0h49 ; 0h03AD: vol = 0hB (inverted), no pitch, no note, no instrument
   56CC AA                  899  .db 0hAA ; 0h03AE: normal track data
   56CD 41                  900  .db 0h41 ; 0h03AF: vol = 0hF (inverted), no pitch, no note, no instrument
   56CE C2                  901  .db 0hC2 ; 0h03B0: normal track data
   56CF 49                  902  .db 0h49 ; 0h03B1: vol = 0hB (inverted), no pitch, no note, no instrument
   56D0 92                  903  .db 0h92 ; 0h03B2: normal track data
   56D1 41                  904  .db 0h41 ; 0h03B3: vol = 0hF (inverted), no pitch, no note, no instrument
   56D2 C2                  905  .db 0hC2 ; 0h03B4: normal track data
   56D3 49                  906  .db 0h49 ; 0h03B5: vol = 0hB (inverted), no pitch, no note, no instrument
   56D4 92                  907  .db 0h92 ; 0h03B6: normal track data
   56D5 41                  908  .db 0h41 ; 0h03B7: vol = 0hF (inverted), no pitch, no note, no instrument
   56D6 C2                  909  .db 0hC2 ; 0h03B8: normal track data
   56D7 49                  910  .db 0h49 ; 0h03B9: vol = 0hB (inverted), no pitch, no note, no instrument
   56D8 94                  911  .db 0h94 ; 0h03BA: normal track data
   56D9 41                  912  .db 0h41 ; 0h03BB: vol = 0hF (inverted), no pitch, no note, no instrument
   56DA C4                  913  .db 0hC4 ; 0h03BC: normal track data
   56DB 49                  914  .db 0h49 ; 0h03BD: vol = 0hB (inverted), no pitch, no note, no instrument
   56DC 94                  915  .db 0h94 ; 0h03BE: normal track data
   56DD 41                  916  .db 0h41 ; 0h03BF: vol = 0hF (inverted), no pitch, no note, no instrument
   56DE C4                  917  .db 0hC4 ; 0h03C0: normal track data
   56DF 49                  918  .db 0h49 ; 0h03C1: vol = 0hB (inverted), no pitch, no note, no instrument
   56E0 92                  919  .db 0h92 ; 0h03C2: normal track data
   56E1 41                  920  .db 0h41 ; 0h03C3: vol = 0hF (inverted), no pitch, no note, no instrument
   56E2 C2                  921  .db 0hC2 ; 0h03C4: normal track data
   56E3 49                  922  .db 0h49 ; 0h03C5: vol = 0hB (inverted), no pitch, no note, no instrument
   56E4 92                  923  .db 0h92 ; 0h03C6: normal track data
   56E5 41                  924  .db 0h41 ; 0h03C7: vol = 0hF (inverted), no pitch, no note, no instrument
   56E6 C2                  925  .db 0hC2 ; 0h03C8: normal track data
   56E7 49                  926  .db 0h49 ; 0h03C9: vol = 0hB (inverted), no pitch, no note, no instrument
   56E8 AA                  927  .db 0hAA ; 0h03CA: normal track data
   56E9 41                  928  .db 0h41 ; 0h03CB: vol = 0hF (inverted), no pitch, no note, no instrument
   56EA C2                  929  .db 0hC2 ; 0h03CC: normal track data
   56EB 49                  930  .db 0h49 ; 0h03CD: vol = 0hB (inverted), no pitch, no note, no instrument
   56EC AA                  931  .db 0hAA ; 0h03CE: normal track data
   56ED 41                  932  .db 0h41 ; 0h03CF: vol = 0hF (inverted), no pitch, no note, no instrument
   56EE C2                  933  .db 0hC2 ; 0h03D0: normal track data
   56EF 49                  934  .db 0h49 ; 0h03D1: vol = 0hB (inverted), no pitch, no note, no instrument
   56F0 92                  935  .db 0h92 ; 0h03D2: normal track data
   56F1 41                  936  .db 0h41 ; 0h03D3: vol = 0hF (inverted), no pitch, no note, no instrument
   56F2 C2                  937  .db 0hC2 ; 0h03D4: normal track data
   56F3 49                  938  .db 0h49 ; 0h03D5: vol = 0hB (inverted), no pitch, no note, no instrument
   56F4 92                  939  .db 0h92 ; 0h03D6: normal track data
   56F5 41                  940  .db 0h41 ; 0h03D7: vol = 0hF (inverted), no pitch, no note, no instrument
   56F6 C2                  941  .db 0hC2 ; 0h03D8: normal track data
   56F7 49                  942  .db 0h49 ; 0h03D9: vol = 0hB (inverted), no pitch, no note, no instrument
   56F8 AA                  943  .db 0hAA ; 0h03DA: normal track data
   56F9 41                  944  .db 0h41 ; 0h03DB: vol = 0hF (inverted), no pitch, no note, no instrument
   56FA AC                  945  .db 0hAC ; 0h03DC: normal track data
   56FB 40                  946  .db 0h40 ; 0h03DD: vol off, no pitch, note, no instrument
   56FC B0                  947  .db 0hB0 ; 0h03DE: normal track data
   56FD 40                  948  .db 0h40 ; 0h03DF: vol off, no pitch, note, no instrument
   56FE B4                  949  .db 0hB4 ; 0h03E0: normal track data
   56FF 40                  950  .db 0h40 ; 0h03E1: vol off, no pitch, note, no instrument
   5700 92                  951  .db 0h92 ; 0h03E2: normal track data
   5701 40                  952  .db 0h40 ; 0h03E3: vol off, no pitch, note, no instrument
   5702 C2                  953  .db 0hC2 ; 0h03E4: normal track data
   5703 49                  954  .db 0h49 ; 0h03E5: vol = 0hB (inverted), no pitch, no note, no instrument
   5704 92                  955  .db 0h92 ; 0h03E6: normal track data
   5705 41                  956  .db 0h41 ; 0h03E7: vol = 0hF (inverted), no pitch, no note, no instrument
   5706 C2                  957  .db 0hC2 ; 0h03E8: normal track data
   5707 49                  958  .db 0h49 ; 0h03E9: vol = 0hB (inverted), no pitch, no note, no instrument
   5708 AA                  959  .db 0hAA ; 0h03EA: normal track data
   5709 41                  960  .db 0h41 ; 0h03EB: vol = 0hF (inverted), no pitch, no note, no instrument
   570A C2                  961  .db 0hC2 ; 0h03EC: normal track data
   570B 49                  962  .db 0h49 ; 0h03ED: vol = 0hB (inverted), no pitch, no note, no instrument
   570C AA                  963  .db 0hAA ; 0h03EE: normal track data
   570D 41                  964  .db 0h41 ; 0h03EF: vol = 0hF (inverted), no pitch, no note, no instrument
   570E C2                  965  .db 0hC2 ; 0h03F0: normal track data
   570F 49                  966  .db 0h49 ; 0h03F1: vol = 0hB (inverted), no pitch, no note, no instrument
   5710 92                  967  .db 0h92 ; 0h03F2: normal track data
   5711 41                  968  .db 0h41 ; 0h03F3: vol = 0hF (inverted), no pitch, no note, no instrument
   5712 C2                  969  .db 0hC2 ; 0h03F4: normal track data
   5713 49                  970  .db 0h49 ; 0h03F5: vol = 0hB (inverted), no pitch, no note, no instrument
   5714 92                  971  .db 0h92 ; 0h03F6: normal track data
   5715 41                  972  .db 0h41 ; 0h03F7: vol = 0hF (inverted), no pitch, no note, no instrument
   5716 C2                  973  .db 0hC2 ; 0h03F8: normal track data
   5717 49                  974  .db 0h49 ; 0h03F9: vol = 0hB (inverted), no pitch, no note, no instrument
   5718 94                  975  .db 0h94 ; 0h03FA: normal track data
   5719 41                  976  .db 0h41 ; 0h03FB: vol = 0hF (inverted), no pitch, no note, no instrument
   571A C4                  977  .db 0hC4 ; 0h03FC: normal track data
   571B 49                  978  .db 0h49 ; 0h03FD: vol = 0hB (inverted), no pitch, no note, no instrument
   571C 94                  979  .db 0h94 ; 0h03FE: normal track data
   571D 41                  980  .db 0h41 ; 0h03FF: vol = 0hF (inverted), no pitch, no note, no instrument
   571E C4                  981  .db 0hC4 ; 0h0400: normal track data
   571F 49                  982  .db 0h49 ; 0h0401: vol = 0hB (inverted), no pitch, no note, no instrument
   5720 92                  983  .db 0h92 ; 0h0402: normal track data
   5721 41                  984  .db 0h41 ; 0h0403: vol = 0hF (inverted), no pitch, no note, no instrument
   5722 C2                  985  .db 0hC2 ; 0h0404: normal track data
   5723 49                  986  .db 0h49 ; 0h0405: vol = 0hB (inverted), no pitch, no note, no instrument
   5724 92                  987  .db 0h92 ; 0h0406: normal track data
   5725 41                  988  .db 0h41 ; 0h0407: vol = 0hF (inverted), no pitch, no note, no instrument
   5726 C2                  989  .db 0hC2 ; 0h0408: normal track data
   5727 40                  990  .db 0h40 ; 0h0409: vol off, no pitch, note, no instrument
   5728 AA                  991  .db 0hAA ; 0h040A: normal track data
   5729 49                  992  .db 0h49 ; 0h040B: vol = 0hB (inverted), no pitch, no note, no instrument
   572A C2                  993  .db 0hC2 ; 0h040C: normal track data
   572B 41                  994  .db 0h41 ; 0h040D: vol = 0hF (inverted), no pitch, no note, no instrument
   572C AA                  995  .db 0hAA ; 0h040E: normal track data
   572D 49                  996  .db 0h49 ; 0h040F: vol = 0hB (inverted), no pitch, no note, no instrument
   572E C2                  997  .db 0hC2 ; 0h0410: normal track data
   572F 41                  998  .db 0h41 ; 0h0411: vol = 0hF (inverted), no pitch, no note, no instrument
   5730                     999 trackDef10Test:
   5730 92                 1000  .db 0h92 ; 0h0412: normal track data
   5731 E1                 1001  .db 0hE1 ; 0h0413: vol = 0hF (inverted), no pitch, no note, no instrument
   5732 00 00              1002  .dw 0h0000 ; 0h0414: pitch
   5734 03                 1003  .db 0h03 ; 0h0416: instrument
   5735 42                 1004  .db 0h42 ; 0h0417: normal track data
   5736 00                 1005  .db 0h00 ; 0h0418: vol off, no pitch, no note, no instrument
   5737 92                 1006  .db 0h92 ; 0h0419: normal track data
   5738 40                 1007  .db 0h40 ; 0h041A: vol off, no pitch, note, no instrument
   5739 42                 1008  .db 0h42 ; 0h041B: normal track data
   573A 00                 1009  .db 0h00 ; 0h041C: vol off, no pitch, no note, no instrument
   573B 92                 1010  .db 0h92 ; 0h041D: normal track data
   573C 6B                 1011  .db 0h6B ; 0h041E: vol = 0hA (inverted), no pitch, no note, no instrument
   573D 01                 1012  .db 0h01 ; 0h041F: instrument
   573E AA                 1013  .db 0hAA ; 0h0420: normal track data
   573F 49                 1014  .db 0h49 ; 0h0421: vol = 0hB (inverted), no pitch, no note, no instrument
   5740 C2                 1015  .db 0hC2 ; 0h0422: normal track data,  note: E5
   5741 47                 1016  .db 0h47 ; 0h0423: vol = 0hC (inverted), no pitch, no note, no instrument
   5742 AA                 1017  .db 0hAA ; 0h0424: normal track data
   5743 49                 1018  .db 0h49 ; 0h0425: vol = 0hB (inverted), no pitch, no note, no instrument
   5744 92                 1019  .db 0h92 ; 0h0426: normal track data
   5745 61                 1020  .db 0h61 ; 0h0427: vol = 0hF (inverted), no pitch, no note, no instrument
   5746 04                 1021  .db 0h04 ; 0h0428: instrument
   5747 42                 1022  .db 0h42 ; 0h0429: normal track data
   5748 00                 1023  .db 0h00 ; 0h042A: vol off, no pitch, no note, no instrument
   5749 92                 1024  .db 0h92 ; 0h042B: normal track data
   574A 60                 1025  .db 0h60 ; 0h042C: vol off, no pitch, note, instrument
   574B 03                 1026  .db 0h03 ; 0h042D: instrument
   574C 42                 1027  .db 0h42 ; 0h042E: normal track data
   574D 00                 1028  .db 0h00 ; 0h042F: vol off, no pitch, no note, no instrument
   574E 92                 1029  .db 0h92 ; 0h0430: normal track data
   574F 6B                 1030  .db 0h6B ; 0h0431: vol = 0hA (inverted), no pitch, no note, no instrument
   5750 01                 1031  .db 0h01 ; 0h0432: instrument
   5751 AA                 1032  .db 0hAA ; 0h0433: normal track data
   5752 49                 1033  .db 0h49 ; 0h0434: vol = 0hB (inverted), no pitch, no note, no instrument
   5753 C2                 1034  .db 0hC2 ; 0h0435: normal track data,  note: E5
   5754 47                 1035  .db 0h47 ; 0h0436: vol = 0hC (inverted), no pitch, no note, no instrument
   5755 AA                 1036  .db 0hAA ; 0h0437: normal track data
   5756 49                 1037  .db 0h49 ; 0h0438: vol = 0hB (inverted), no pitch, no note, no instrument
   5757 92                 1038  .db 0h92 ; 0h0439: normal track data
   5758 61                 1039  .db 0h61 ; 0h043A: vol = 0hF (inverted), no pitch, no note, no instrument
   5759 03                 1040  .db 0h03 ; 0h043B: instrument
   575A 42                 1041  .db 0h42 ; 0h043C: normal track data
   575B 00                 1042  .db 0h00 ; 0h043D: vol off, no pitch, no note, no instrument
   575C 92                 1043  .db 0h92 ; 0h043E: normal track data
   575D 40                 1044  .db 0h40 ; 0h043F: vol off, no pitch, note, no instrument
   575E 42                 1045  .db 0h42 ; 0h0440: normal track data
   575F 00                 1046  .db 0h00 ; 0h0441: vol off, no pitch, no note, no instrument
   5760 92                 1047  .db 0h92 ; 0h0442: normal track data
   5761 6B                 1048  .db 0h6B ; 0h0443: vol = 0hA (inverted), no pitch, no note, no instrument
   5762 01                 1049  .db 0h01 ; 0h0444: instrument
   5763 AA                 1050  .db 0hAA ; 0h0445: normal track data
   5764 49                 1051  .db 0h49 ; 0h0446: vol = 0hB (inverted), no pitch, no note, no instrument
   5765 C2                 1052  .db 0hC2 ; 0h0447: normal track data,  note: E5
   5766 47                 1053  .db 0h47 ; 0h0448: vol = 0hC (inverted), no pitch, no note, no instrument
   5767 AA                 1054  .db 0hAA ; 0h0449: normal track data
   5768 49                 1055  .db 0h49 ; 0h044A: vol = 0hB (inverted), no pitch, no note, no instrument
   5769 92                 1056  .db 0h92 ; 0h044B: normal track data
   576A 61                 1057  .db 0h61 ; 0h044C: vol = 0hF (inverted), no pitch, no note, no instrument
   576B 04                 1058  .db 0h04 ; 0h044D: instrument
   576C 42                 1059  .db 0h42 ; 0h044E: normal track data
   576D 00                 1060  .db 0h00 ; 0h044F: vol off, no pitch, no note, no instrument
   576E 92                 1061  .db 0h92 ; 0h0450: normal track data
   576F 60                 1062  .db 0h60 ; 0h0451: vol off, no pitch, note, instrument
   5770 03                 1063  .db 0h03 ; 0h0452: instrument
   5771 42                 1064  .db 0h42 ; 0h0453: normal track data
   5772 00                 1065  .db 0h00 ; 0h0454: vol off, no pitch, no note, no instrument
   5773 92                 1066  .db 0h92 ; 0h0455: normal track data
   5774 6B                 1067  .db 0h6B ; 0h0456: vol = 0hA (inverted), no pitch, no note, no instrument
   5775 01                 1068  .db 0h01 ; 0h0457: instrument
   5776 AA                 1069  .db 0hAA ; 0h0458: normal track data
   5777 49                 1070  .db 0h49 ; 0h0459: vol = 0hB (inverted), no pitch, no note, no instrument
   5778 C2                 1071  .db 0hC2 ; 0h045A: normal track data,  note: E5
   5779 47                 1072  .db 0h47 ; 0h045B: vol = 0hC (inverted), no pitch, no note, no instrument
   577A AA                 1073  .db 0hAA ; 0h045C: normal track data
   577B 49                 1074  .db 0h49 ; 0h045D: vol = 0hB (inverted), no pitch, no note, no instrument
   577C 92                 1075  .db 0h92 ; 0h045E: normal track data
   577D 61                 1076  .db 0h61 ; 0h045F: vol = 0hF (inverted), no pitch, no note, no instrument
   577E 03                 1077  .db 0h03 ; 0h0460: instrument
   577F 42                 1078  .db 0h42 ; 0h0461: normal track data
   5780 00                 1079  .db 0h00 ; 0h0462: vol off, no pitch, no note, no instrument
   5781 92                 1080  .db 0h92 ; 0h0463: normal track data
   5782 40                 1081  .db 0h40 ; 0h0464: vol off, no pitch, note, no instrument
   5783 42                 1082  .db 0h42 ; 0h0465: normal track data
   5784 00                 1083  .db 0h00 ; 0h0466: vol off, no pitch, no note, no instrument
   5785 92                 1084  .db 0h92 ; 0h0467: normal track data
   5786 6B                 1085  .db 0h6B ; 0h0468: vol = 0hA (inverted), no pitch, no note, no instrument
   5787 01                 1086  .db 0h01 ; 0h0469: instrument
   5788 AA                 1087  .db 0hAA ; 0h046A: normal track data
   5789 49                 1088  .db 0h49 ; 0h046B: vol = 0hB (inverted), no pitch, no note, no instrument
   578A C2                 1089  .db 0hC2 ; 0h046C: normal track data,  note: E5
   578B 47                 1090  .db 0h47 ; 0h046D: vol = 0hC (inverted), no pitch, no note, no instrument
   578C AA                 1091  .db 0hAA ; 0h046E: normal track data
   578D 49                 1092  .db 0h49 ; 0h046F: vol = 0hB (inverted), no pitch, no note, no instrument
   578E 92                 1093  .db 0h92 ; 0h0470: normal track data
   578F 61                 1094  .db 0h61 ; 0h0471: vol = 0hF (inverted), no pitch, no note, no instrument
   5790 04                 1095  .db 0h04 ; 0h0472: instrument
   5791 42                 1096  .db 0h42 ; 0h0473: normal track data
   5792 00                 1097  .db 0h00 ; 0h0474: vol off, no pitch, no note, no instrument
   5793 92                 1098  .db 0h92 ; 0h0475: normal track data
   5794 60                 1099  .db 0h60 ; 0h0476: vol off, no pitch, note, instrument
   5795 03                 1100  .db 0h03 ; 0h0477: instrument
   5796 42                 1101  .db 0h42 ; 0h0478: normal track data
   5797 00                 1102  .db 0h00 ; 0h0479: vol off, no pitch, no note, no instrument
   5798 92                 1103  .db 0h92 ; 0h047A: normal track data
   5799 6B                 1104  .db 0h6B ; 0h047B: vol = 0hA (inverted), no pitch, no note, no instrument
   579A 01                 1105  .db 0h01 ; 0h047C: instrument
   579B AA                 1106  .db 0hAA ; 0h047D: normal track data
   579C 49                 1107  .db 0h49 ; 0h047E: vol = 0hB (inverted), no pitch, no note, no instrument
   579D C2                 1108  .db 0hC2 ; 0h047F: normal track data,  note: E5
   579E 47                 1109  .db 0h47 ; 0h0480: vol = 0hC (inverted), no pitch, no note, no instrument
   579F AA                 1110  .db 0hAA ; 0h0481: normal track data
   57A0 49                 1111  .db 0h49 ; 0h0482: vol = 0hB (inverted), no pitch, no note, no instrument
   57A1 92                 1112  .db 0h92 ; 0h0483: normal track data
   57A2 61                 1113  .db 0h61 ; 0h0484: vol = 0hF (inverted), no pitch, no note, no instrument
   57A3 03                 1114  .db 0h03 ; 0h0485: instrument
   57A4 42                 1115  .db 0h42 ; 0h0486: normal track data
   57A5 00                 1116  .db 0h00 ; 0h0487: vol off, no pitch, no note, no instrument
   57A6 92                 1117  .db 0h92 ; 0h0488: normal track data
   57A7 40                 1118  .db 0h40 ; 0h0489: vol off, no pitch, note, no instrument
   57A8 42                 1119  .db 0h42 ; 0h048A: normal track data
   57A9 00                 1120  .db 0h00 ; 0h048B: vol off, no pitch, no note, no instrument
   57AA 92                 1121  .db 0h92 ; 0h048C: normal track data
   57AB 6B                 1122  .db 0h6B ; 0h048D: vol = 0hA (inverted), no pitch, no note, no instrument
   57AC 01                 1123  .db 0h01 ; 0h048E: instrument
   57AD AA                 1124  .db 0hAA ; 0h048F: normal track data
   57AE 49                 1125  .db 0h49 ; 0h0490: vol = 0hB (inverted), no pitch, no note, no instrument
   57AF C2                 1126  .db 0hC2 ; 0h0491: normal track data,  note: E5
   57B0 47                 1127  .db 0h47 ; 0h0492: vol = 0hC (inverted), no pitch, no note, no instrument
   57B1 AA                 1128  .db 0hAA ; 0h0493: normal track data
   57B2 49                 1129  .db 0h49 ; 0h0494: vol = 0hB (inverted), no pitch, no note, no instrument
   57B3 92                 1130  .db 0h92 ; 0h0495: normal track data
   57B4 61                 1131  .db 0h61 ; 0h0496: vol = 0hF (inverted), no pitch, no note, no instrument
   57B5 04                 1132  .db 0h04 ; 0h0497: instrument
   57B6 42                 1133  .db 0h42 ; 0h0498: normal track data
   57B7 00                 1134  .db 0h00 ; 0h0499: vol off, no pitch, no note, no instrument
   57B8 92                 1135  .db 0h92 ; 0h049A: normal track data
   57B9 60                 1136  .db 0h60 ; 0h049B: vol off, no pitch, note, instrument
   57BA 03                 1137  .db 0h03 ; 0h049C: instrument
   57BB 42                 1138  .db 0h42 ; 0h049D: normal track data
   57BC 00                 1139  .db 0h00 ; 0h049E: vol off, no pitch, no note, no instrument
   57BD 92                 1140  .db 0h92 ; 0h049F: normal track data
   57BE 6B                 1141  .db 0h6B ; 0h04A0: vol = 0hA (inverted), no pitch, no note, no instrument
   57BF 01                 1142  .db 0h01 ; 0h04A1: instrument
   57C0 AA                 1143  .db 0hAA ; 0h04A2: normal track data
   57C1 49                 1144  .db 0h49 ; 0h04A3: vol = 0hB (inverted), no pitch, no note, no instrument
   57C2 C2                 1145  .db 0hC2 ; 0h04A4: normal track data,  note: E5
   57C3 47                 1146  .db 0h47 ; 0h04A5: vol = 0hC (inverted), no pitch, no note, no instrument
   57C4 AA                 1147  .db 0hAA ; 0h04A6: normal track data
   57C5 49                 1148  .db 0h49 ; 0h04A7: vol = 0hB (inverted), no pitch, no note, no instrument
   57C6                    1149 trackDef12Test:
   57C6 92                 1150  .db 0h92 ; 0h04A8: normal track data
   57C7 E1                 1151  .db 0hE1 ; 0h04A9: vol = 0hF (inverted), no pitch, no note, no instrument
   57C8 00 00              1152  .dw 0h0000 ; 0h04AA: pitch
   57CA 03                 1153  .db 0h03 ; 0h04AC: instrument
   57CB 42                 1154  .db 0h42 ; 0h04AD: normal track data
   57CC 00                 1155  .db 0h00 ; 0h04AE: vol off, no pitch, no note, no instrument
   57CD 92                 1156  .db 0h92 ; 0h04AF: normal track data
   57CE 40                 1157  .db 0h40 ; 0h04B0: vol off, no pitch, note, no instrument
   57CF 42                 1158  .db 0h42 ; 0h04B1: normal track data
   57D0 00                 1159  .db 0h00 ; 0h04B2: vol off, no pitch, no note, no instrument
   57D1 92                 1160  .db 0h92 ; 0h04B3: normal track data
   57D2 6B                 1161  .db 0h6B ; 0h04B4: vol = 0hA (inverted), no pitch, no note, no instrument
   57D3 01                 1162  .db 0h01 ; 0h04B5: instrument
   57D4 AA                 1163  .db 0hAA ; 0h04B6: normal track data
   57D5 49                 1164  .db 0h49 ; 0h04B7: vol = 0hB (inverted), no pitch, no note, no instrument
   57D6 C2                 1165  .db 0hC2 ; 0h04B8: normal track data,  note: E5
   57D7 47                 1166  .db 0h47 ; 0h04B9: vol = 0hC (inverted), no pitch, no note, no instrument
   57D8 AA                 1167  .db 0hAA ; 0h04BA: normal track data
   57D9 49                 1168  .db 0h49 ; 0h04BB: vol = 0hB (inverted), no pitch, no note, no instrument
   57DA 92                 1169  .db 0h92 ; 0h04BC: normal track data
   57DB 61                 1170  .db 0h61 ; 0h04BD: vol = 0hF (inverted), no pitch, no note, no instrument
   57DC 04                 1171  .db 0h04 ; 0h04BE: instrument
   57DD 42                 1172  .db 0h42 ; 0h04BF: normal track data
   57DE 00                 1173  .db 0h00 ; 0h04C0: vol off, no pitch, no note, no instrument
   57DF 92                 1174  .db 0h92 ; 0h04C1: normal track data
   57E0 60                 1175  .db 0h60 ; 0h04C2: vol off, no pitch, note, instrument
   57E1 03                 1176  .db 0h03 ; 0h04C3: instrument
   57E2 42                 1177  .db 0h42 ; 0h04C4: normal track data
   57E3 00                 1178  .db 0h00 ; 0h04C5: vol off, no pitch, no note, no instrument
   57E4 92                 1179  .db 0h92 ; 0h04C6: normal track data
   57E5 6B                 1180  .db 0h6B ; 0h04C7: vol = 0hA (inverted), no pitch, no note, no instrument
   57E6 01                 1181  .db 0h01 ; 0h04C8: instrument
   57E7 AA                 1182  .db 0hAA ; 0h04C9: normal track data
   57E8 49                 1183  .db 0h49 ; 0h04CA: vol = 0hB (inverted), no pitch, no note, no instrument
   57E9 C2                 1184  .db 0hC2 ; 0h04CB: normal track data,  note: E5
   57EA 47                 1185  .db 0h47 ; 0h04CC: vol = 0hC (inverted), no pitch, no note, no instrument
   57EB AA                 1186  .db 0hAA ; 0h04CD: normal track data
   57EC 49                 1187  .db 0h49 ; 0h04CE: vol = 0hB (inverted), no pitch, no note, no instrument
   57ED 92                 1188  .db 0h92 ; 0h04CF: normal track data
   57EE 61                 1189  .db 0h61 ; 0h04D0: vol = 0hF (inverted), no pitch, no note, no instrument
   57EF 03                 1190  .db 0h03 ; 0h04D1: instrument
   57F0 42                 1191  .db 0h42 ; 0h04D2: normal track data
   57F1 00                 1192  .db 0h00 ; 0h04D3: vol off, no pitch, no note, no instrument
   57F2 92                 1193  .db 0h92 ; 0h04D4: normal track data
   57F3 40                 1194  .db 0h40 ; 0h04D5: vol off, no pitch, note, no instrument
   57F4 42                 1195  .db 0h42 ; 0h04D6: normal track data
   57F5 00                 1196  .db 0h00 ; 0h04D7: vol off, no pitch, no note, no instrument
   57F6 92                 1197  .db 0h92 ; 0h04D8: normal track data
   57F7 6B                 1198  .db 0h6B ; 0h04D9: vol = 0hA (inverted), no pitch, no note, no instrument
   57F8 01                 1199  .db 0h01 ; 0h04DA: instrument
   57F9 AA                 1200  .db 0hAA ; 0h04DB: normal track data
   57FA 49                 1201  .db 0h49 ; 0h04DC: vol = 0hB (inverted), no pitch, no note, no instrument
   57FB C2                 1202  .db 0hC2 ; 0h04DD: normal track data,  note: E5
   57FC 47                 1203  .db 0h47 ; 0h04DE: vol = 0hC (inverted), no pitch, no note, no instrument
   57FD AA                 1204  .db 0hAA ; 0h04DF: normal track data
   57FE 49                 1205  .db 0h49 ; 0h04E0: vol = 0hB (inverted), no pitch, no note, no instrument
   57FF 92                 1206  .db 0h92 ; 0h04E1: normal track data
   5800 61                 1207  .db 0h61 ; 0h04E2: vol = 0hF (inverted), no pitch, no note, no instrument
   5801 04                 1208  .db 0h04 ; 0h04E3: instrument
   5802 42                 1209  .db 0h42 ; 0h04E4: normal track data
   5803 00                 1210  .db 0h00 ; 0h04E5: vol off, no pitch, no note, no instrument
   5804 92                 1211  .db 0h92 ; 0h04E6: normal track data
   5805 60                 1212  .db 0h60 ; 0h04E7: vol off, no pitch, note, instrument
   5806 03                 1213  .db 0h03 ; 0h04E8: instrument
   5807 42                 1214  .db 0h42 ; 0h04E9: normal track data
   5808 00                 1215  .db 0h00 ; 0h04EA: vol off, no pitch, no note, no instrument
   5809 92                 1216  .db 0h92 ; 0h04EB: normal track data
   580A 6B                 1217  .db 0h6B ; 0h04EC: vol = 0hA (inverted), no pitch, no note, no instrument
   580B 01                 1218  .db 0h01 ; 0h04ED: instrument
   580C AA                 1219  .db 0hAA ; 0h04EE: normal track data
   580D 49                 1220  .db 0h49 ; 0h04EF: vol = 0hB (inverted), no pitch, no note, no instrument
   580E C2                 1221  .db 0hC2 ; 0h04F0: normal track data,  note: E5
   580F 47                 1222  .db 0h47 ; 0h04F1: vol = 0hC (inverted), no pitch, no note, no instrument
   5810 AA                 1223  .db 0hAA ; 0h04F2: normal track data
   5811 49                 1224  .db 0h49 ; 0h04F3: vol = 0hB (inverted), no pitch, no note, no instrument
   5812 92                 1225  .db 0h92 ; 0h04F4: normal track data
   5813 61                 1226  .db 0h61 ; 0h04F5: vol = 0hF (inverted), no pitch, no note, no instrument
   5814 03                 1227  .db 0h03 ; 0h04F6: instrument
   5815 42                 1228  .db 0h42 ; 0h04F7: normal track data
   5816 00                 1229  .db 0h00 ; 0h04F8: vol off, no pitch, no note, no instrument
   5817 92                 1230  .db 0h92 ; 0h04F9: normal track data
   5818 40                 1231  .db 0h40 ; 0h04FA: vol off, no pitch, note, no instrument
   5819 42                 1232  .db 0h42 ; 0h04FB: normal track data
   581A 00                 1233  .db 0h00 ; 0h04FC: vol off, no pitch, no note, no instrument
   581B 92                 1234  .db 0h92 ; 0h04FD: normal track data
   581C 6B                 1235  .db 0h6B ; 0h04FE: vol = 0hA (inverted), no pitch, no note, no instrument
   581D 01                 1236  .db 0h01 ; 0h04FF: instrument
   581E AA                 1237  .db 0hAA ; 0h0500: normal track data
   581F 49                 1238  .db 0h49 ; 0h0501: vol = 0hB (inverted), no pitch, no note, no instrument
   5820 C2                 1239  .db 0hC2 ; 0h0502: normal track data,  note: E5
   5821 47                 1240  .db 0h47 ; 0h0503: vol = 0hC (inverted), no pitch, no note, no instrument
   5822 AA                 1241  .db 0hAA ; 0h0504: normal track data
   5823 49                 1242  .db 0h49 ; 0h0505: vol = 0hB (inverted), no pitch, no note, no instrument
   5824 92                 1243  .db 0h92 ; 0h0506: normal track data
   5825 61                 1244  .db 0h61 ; 0h0507: vol = 0hF (inverted), no pitch, no note, no instrument
   5826 04                 1245  .db 0h04 ; 0h0508: instrument
   5827 42                 1246  .db 0h42 ; 0h0509: normal track data
   5828 00                 1247  .db 0h00 ; 0h050A: vol off, no pitch, no note, no instrument
   5829 92                 1248  .db 0h92 ; 0h050B: normal track data
   582A 60                 1249  .db 0h60 ; 0h050C: vol off, no pitch, note, instrument
   582B 03                 1250  .db 0h03 ; 0h050D: instrument
   582C 42                 1251  .db 0h42 ; 0h050E: normal track data
   582D 00                 1252  .db 0h00 ; 0h050F: vol off, no pitch, no note, no instrument
   582E 92                 1253  .db 0h92 ; 0h0510: normal track data
   582F 6B                 1254  .db 0h6B ; 0h0511: vol = 0hA (inverted), no pitch, no note, no instrument
   5830 01                 1255  .db 0h01 ; 0h0512: instrument
   5831 AA                 1256  .db 0hAA ; 0h0513: normal track data
   5832 49                 1257  .db 0h49 ; 0h0514: vol = 0hB (inverted), no pitch, no note, no instrument
   5833 C2                 1258  .db 0hC2 ; 0h0515: normal track data,  note: E5
   5834 47                 1259  .db 0h47 ; 0h0516: vol = 0hC (inverted), no pitch, no note, no instrument
   5835 AA                 1260  .db 0hAA ; 0h0517: normal track data
   5836 49                 1261  .db 0h49 ; 0h0518: vol = 0hB (inverted), no pitch, no note, no instrument
   5837 92                 1262  .db 0h92 ; 0h0519: normal track data
   5838 61                 1263  .db 0h61 ; 0h051A: vol = 0hF (inverted), no pitch, no note, no instrument
   5839 03                 1264  .db 0h03 ; 0h051B: instrument
   583A 42                 1265  .db 0h42 ; 0h051C: normal track data
   583B 00                 1266  .db 0h00 ; 0h051D: vol off, no pitch, no note, no instrument
   583C 92                 1267  .db 0h92 ; 0h051E: normal track data
   583D 40                 1268  .db 0h40 ; 0h051F: vol off, no pitch, note, no instrument
   583E 42                 1269  .db 0h42 ; 0h0520: normal track data
   583F 00                 1270  .db 0h00 ; 0h0521: vol off, no pitch, no note, no instrument
   5840 92                 1271  .db 0h92 ; 0h0522: normal track data
   5841 6B                 1272  .db 0h6B ; 0h0523: vol = 0hA (inverted), no pitch, no note, no instrument
   5842 01                 1273  .db 0h01 ; 0h0524: instrument
   5843 AA                 1274  .db 0hAA ; 0h0525: normal track data
   5844 49                 1275  .db 0h49 ; 0h0526: vol = 0hB (inverted), no pitch, no note, no instrument
   5845 C2                 1276  .db 0hC2 ; 0h0527: normal track data,  note: E5
   5846 47                 1277  .db 0h47 ; 0h0528: vol = 0hC (inverted), no pitch, no note, no instrument
   5847 AA                 1278  .db 0hAA ; 0h0529: normal track data
   5848 49                 1279  .db 0h49 ; 0h052A: vol = 0hB (inverted), no pitch, no note, no instrument
   5849 92                 1280  .db 0h92 ; 0h052B: normal track data
   584A 61                 1281  .db 0h61 ; 0h052C: vol = 0hF (inverted), no pitch, no note, no instrument
   584B 03                 1282  .db 0h03 ; 0h052D: instrument
   584C 53                 1283  .db 0h53 ; 0h052E: full optimization, no escape: E3
   584D AA                 1284  .db 0hAA ; 0h052F: normal track data
   584E 40                 1285  .db 0h40 ; 0h0530: vol off, no pitch, note, no instrument
   584F 6B                 1286  .db 0h6B ; 0h0531: full optimization, no escape: E4
   5850 92                 1287  .db 0h92 ; 0h0532: normal track data
   5851 4B                 1288  .db 0h4B ; 0h0533: vol = 0hA (inverted), no pitch, no note, no instrument
   5852 92                 1289  .db 0h92 ; 0h0534: normal track data
   5853 49                 1290  .db 0h49 ; 0h0535: vol = 0hB (inverted), no pitch, no note, no instrument
   5854 92                 1291  .db 0h92 ; 0h0536: normal track data,  note: E3
   5855 67                 1292  .db 0h67 ; 0h0537: vol = 0hC (inverted), no pitch, no note, no instrument
   5856 04                 1293  .db 0h04 ; 0h0538: instrument
   5857 92                 1294  .db 0h92 ; 0h0539: normal track data
   5858 49                 1295  .db 0h49 ; 0h053A: vol = 0hB (inverted), no pitch, no note, no instrument
   5859                    1296 trackDef15Test:
   5859 72                 1297  .db 0h72 ; 0h053B: normal track data
   585A E1                 1298  .db 0hE1 ; 0h053C: vol = 0hF (inverted), no pitch, no note, no instrument
   585B 00 00              1299  .dw 0h0000 ; 0h053D: pitch
   585D 03                 1300  .db 0h03 ; 0h053F: instrument
   585E 5A                 1301  .db 0h5A ; 0h0540: normal track data
   585F 60                 1302  .db 0h60 ; 0h0541: vol off, no pitch, note, instrument
   5860 01                 1303  .db 0h01 ; 0h0542: instrument
   5861 B2                 1304  .db 0hB2 ; 0h0543: normal track data,  note: G#4
   5862 7F                 1305  .db 0h7F ; 0h0544: vol = 0h0 (inverted), no pitch, no note, no instrument
   5863 06                 1306  .db 0h06 ; 0h0545: instrument
   5864 5A                 1307  .db 0h5A ; 0h0546: normal track data
   5865 61                 1308  .db 0h61 ; 0h0547: vol = 0hF (inverted), no pitch, no note, no instrument
   5866 01                 1309  .db 0h01 ; 0h0548: instrument
   5867 72                 1310  .db 0h72 ; 0h0549: normal track data
   5868 60                 1311  .db 0h60 ; 0h054A: vol off, no pitch, note, instrument
   5869 04                 1312  .db 0h04 ; 0h054B: instrument
   586A B2                 1313  .db 0hB2 ; 0h054C: normal track data,  note: G#4
   586B 7F                 1314  .db 0h7F ; 0h054D: vol = 0h0 (inverted), no pitch, no note, no instrument
   586C 06                 1315  .db 0h06 ; 0h054E: instrument
   586D 5A                 1316  .db 0h5A ; 0h054F: normal track data
   586E 61                 1317  .db 0h61 ; 0h0550: vol = 0hF (inverted), no pitch, no note, no instrument
   586F 01                 1318  .db 0h01 ; 0h0551: instrument
   5870 72                 1319  .db 0h72 ; 0h0552: normal track data
   5871 60                 1320  .db 0h60 ; 0h0553: vol off, no pitch, note, instrument
   5872 03                 1321  .db 0h03 ; 0h0554: instrument
   5873 B2                 1322  .db 0hB2 ; 0h0555: normal track data,  note: G#4
   5874 7F                 1323  .db 0h7F ; 0h0556: vol = 0h0 (inverted), no pitch, no note, no instrument
   5875 06                 1324  .db 0h06 ; 0h0557: instrument
   5876 5A                 1325  .db 0h5A ; 0h0558: normal track data
   5877 61                 1326  .db 0h61 ; 0h0559: vol = 0hF (inverted), no pitch, no note, no instrument
   5878 01                 1327  .db 0h01 ; 0h055A: instrument
   5879 72                 1328  .db 0h72 ; 0h055B: normal track data
   587A 60                 1329  .db 0h60 ; 0h055C: vol off, no pitch, note, instrument
   587B 03                 1330  .db 0h03 ; 0h055D: instrument
   587C AE                 1331  .db 0hAE ; 0h055E: normal track data,  note: F#4
   587D 7F                 1332  .db 0h7F ; 0h055F: vol = 0h0 (inverted), no pitch, no note, no instrument
   587E 07                 1333  .db 0h07 ; 0h0560: instrument
   587F 72                 1334  .db 0h72 ; 0h0561: normal track data
   5880 61                 1335  .db 0h61 ; 0h0562: vol = 0hF (inverted), no pitch, no note, no instrument
   5881 04                 1336  .db 0h04 ; 0h0563: instrument
   5882 5A                 1337  .db 0h5A ; 0h0564: normal track data
   5883 60                 1338  .db 0h60 ; 0h0565: vol off, no pitch, note, instrument
   5884 01                 1339  .db 0h01 ; 0h0566: instrument
   5885 AE                 1340  .db 0hAE ; 0h0567: normal track data,  note: F#4
   5886 7F                 1341  .db 0h7F ; 0h0568: vol = 0h0 (inverted), no pitch, no note, no instrument
   5887 07                 1342  .db 0h07 ; 0h0569: instrument
   5888 5A                 1343  .db 0h5A ; 0h056A: normal track data
   5889 61                 1344  .db 0h61 ; 0h056B: vol = 0hF (inverted), no pitch, no note, no instrument
   588A 01                 1345  .db 0h01 ; 0h056C: instrument
   588B 72                 1346  .db 0h72 ; 0h056D: normal track data
   588C 60                 1347  .db 0h60 ; 0h056E: vol off, no pitch, note, instrument
   588D 03                 1348  .db 0h03 ; 0h056F: instrument
   588E 5A                 1349  .db 0h5A ; 0h0570: normal track data
   588F 60                 1350  .db 0h60 ; 0h0571: vol off, no pitch, note, instrument
   5890 01                 1351  .db 0h01 ; 0h0572: instrument
   5891 B2                 1352  .db 0hB2 ; 0h0573: normal track data,  note: G#4
   5892 7F                 1353  .db 0h7F ; 0h0574: vol = 0h0 (inverted), no pitch, no note, no instrument
   5893 08                 1354  .db 0h08 ; 0h0575: instrument
   5894 5A                 1355  .db 0h5A ; 0h0576: normal track data
   5895 61                 1356  .db 0h61 ; 0h0577: vol = 0hF (inverted), no pitch, no note, no instrument
   5896 01                 1357  .db 0h01 ; 0h0578: instrument
   5897 72                 1358  .db 0h72 ; 0h0579: normal track data
   5898 60                 1359  .db 0h60 ; 0h057A: vol off, no pitch, note, instrument
   5899 04                 1360  .db 0h04 ; 0h057B: instrument
   589A B2                 1361  .db 0hB2 ; 0h057C: normal track data,  note: G#4
   589B 7F                 1362  .db 0h7F ; 0h057D: vol = 0h0 (inverted), no pitch, no note, no instrument
   589C 08                 1363  .db 0h08 ; 0h057E: instrument
   589D 5A                 1364  .db 0h5A ; 0h057F: normal track data
   589E 61                 1365  .db 0h61 ; 0h0580: vol = 0hF (inverted), no pitch, no note, no instrument
   589F 01                 1366  .db 0h01 ; 0h0581: instrument
   58A0 72                 1367  .db 0h72 ; 0h0582: normal track data
   58A1 60                 1368  .db 0h60 ; 0h0583: vol off, no pitch, note, instrument
   58A2 03                 1369  .db 0h03 ; 0h0584: instrument
   58A3 B8                 1370  .db 0hB8 ; 0h0585: normal track data,  note: B4
   58A4 7F                 1371  .db 0h7F ; 0h0586: vol = 0h0 (inverted), no pitch, no note, no instrument
   58A5 07                 1372  .db 0h07 ; 0h0587: instrument
   58A6 5A                 1373  .db 0h5A ; 0h0588: normal track data
   58A7 61                 1374  .db 0h61 ; 0h0589: vol = 0hF (inverted), no pitch, no note, no instrument
   58A8 01                 1375  .db 0h01 ; 0h058A: instrument
   58A9 72                 1376  .db 0h72 ; 0h058B: normal track data
   58AA 60                 1377  .db 0h60 ; 0h058C: vol off, no pitch, note, instrument
   58AB 03                 1378  .db 0h03 ; 0h058D: instrument
   58AC B8                 1379  .db 0hB8 ; 0h058E: normal track data,  note: B4
   58AD 7F                 1380  .db 0h7F ; 0h058F: vol = 0h0 (inverted), no pitch, no note, no instrument
   58AE 07                 1381  .db 0h07 ; 0h0590: instrument
   58AF 72                 1382  .db 0h72 ; 0h0591: normal track data
   58B0 61                 1383  .db 0h61 ; 0h0592: vol = 0hF (inverted), no pitch, no note, no instrument
   58B1 04                 1384  .db 0h04 ; 0h0593: instrument
   58B2 5A                 1385  .db 0h5A ; 0h0594: normal track data
   58B3 60                 1386  .db 0h60 ; 0h0595: vol off, no pitch, note, instrument
   58B4 01                 1387  .db 0h01 ; 0h0596: instrument
   58B5 B2                 1388  .db 0hB2 ; 0h0597: normal track data,  note: G#4
   58B6 7F                 1389  .db 0h7F ; 0h0598: vol = 0h0 (inverted), no pitch, no note, no instrument
   58B7 08                 1390  .db 0h08 ; 0h0599: instrument
   58B8 5A                 1391  .db 0h5A ; 0h059A: normal track data
   58B9 61                 1392  .db 0h61 ; 0h059B: vol = 0hF (inverted), no pitch, no note, no instrument
   58BA 01                 1393  .db 0h01 ; 0h059C: instrument
   58BB 72                 1394  .db 0h72 ; 0h059D: normal track data
   58BC 60                 1395  .db 0h60 ; 0h059E: vol off, no pitch, note, instrument
   58BD 03                 1396  .db 0h03 ; 0h059F: instrument
   58BE 5A                 1397  .db 0h5A ; 0h05A0: normal track data
   58BF 60                 1398  .db 0h60 ; 0h05A1: vol off, no pitch, note, instrument
   58C0 01                 1399  .db 0h01 ; 0h05A2: instrument
   58C1 B2                 1400  .db 0hB2 ; 0h05A3: normal track data,  note: G#4
   58C2 7F                 1401  .db 0h7F ; 0h05A4: vol = 0h0 (inverted), no pitch, no note, no instrument
   58C3 06                 1402  .db 0h06 ; 0h05A5: instrument
   58C4 5A                 1403  .db 0h5A ; 0h05A6: normal track data
   58C5 61                 1404  .db 0h61 ; 0h05A7: vol = 0hF (inverted), no pitch, no note, no instrument
   58C6 01                 1405  .db 0h01 ; 0h05A8: instrument
   58C7 72                 1406  .db 0h72 ; 0h05A9: normal track data
   58C8 60                 1407  .db 0h60 ; 0h05AA: vol off, no pitch, note, instrument
   58C9 04                 1408  .db 0h04 ; 0h05AB: instrument
   58CA B2                 1409  .db 0hB2 ; 0h05AC: normal track data,  note: G#4
   58CB 7F                 1410  .db 0h7F ; 0h05AD: vol = 0h0 (inverted), no pitch, no note, no instrument
   58CC 06                 1411  .db 0h06 ; 0h05AE: instrument
   58CD 5A                 1412  .db 0h5A ; 0h05AF: normal track data
   58CE 61                 1413  .db 0h61 ; 0h05B0: vol = 0hF (inverted), no pitch, no note, no instrument
   58CF 01                 1414  .db 0h01 ; 0h05B1: instrument
   58D0 72                 1415  .db 0h72 ; 0h05B2: normal track data
   58D1 60                 1416  .db 0h60 ; 0h05B3: vol off, no pitch, note, instrument
   58D2 03                 1417  .db 0h03 ; 0h05B4: instrument
   58D3 B2                 1418  .db 0hB2 ; 0h05B5: normal track data,  note: G#4
   58D4 7F                 1419  .db 0h7F ; 0h05B6: vol = 0h0 (inverted), no pitch, no note, no instrument
   58D5 06                 1420  .db 0h06 ; 0h05B7: instrument
   58D6 5A                 1421  .db 0h5A ; 0h05B8: normal track data
   58D7 61                 1422  .db 0h61 ; 0h05B9: vol = 0hF (inverted), no pitch, no note, no instrument
   58D8 01                 1423  .db 0h01 ; 0h05BA: instrument
   58D9 72                 1424  .db 0h72 ; 0h05BB: normal track data
   58DA 60                 1425  .db 0h60 ; 0h05BC: vol off, no pitch, note, instrument
   58DB 03                 1426  .db 0h03 ; 0h05BD: instrument
   58DC AE                 1427  .db 0hAE ; 0h05BE: normal track data,  note: F#4
   58DD 7F                 1428  .db 0h7F ; 0h05BF: vol = 0h0 (inverted), no pitch, no note, no instrument
   58DE 07                 1429  .db 0h07 ; 0h05C0: instrument
   58DF 72                 1430  .db 0h72 ; 0h05C1: normal track data
   58E0 61                 1431  .db 0h61 ; 0h05C2: vol = 0hF (inverted), no pitch, no note, no instrument
   58E1 04                 1432  .db 0h04 ; 0h05C3: instrument
   58E2 5A                 1433  .db 0h5A ; 0h05C4: normal track data
   58E3 60                 1434  .db 0h60 ; 0h05C5: vol off, no pitch, note, instrument
   58E4 01                 1435  .db 0h01 ; 0h05C6: instrument
   58E5 AE                 1436  .db 0hAE ; 0h05C7: normal track data,  note: F#4
   58E6 7F                 1437  .db 0h7F ; 0h05C8: vol = 0h0 (inverted), no pitch, no note, no instrument
   58E7 07                 1438  .db 0h07 ; 0h05C9: instrument
   58E8 5A                 1439  .db 0h5A ; 0h05CA: normal track data
   58E9 61                 1440  .db 0h61 ; 0h05CB: vol = 0hF (inverted), no pitch, no note, no instrument
   58EA 01                 1441  .db 0h01 ; 0h05CC: instrument
   58EB 72                 1442  .db 0h72 ; 0h05CD: normal track data
   58EC 60                 1443  .db 0h60 ; 0h05CE: vol off, no pitch, note, instrument
   58ED 03                 1444  .db 0h03 ; 0h05CF: instrument
   58EE 5A                 1445  .db 0h5A ; 0h05D0: normal track data
   58EF 60                 1446  .db 0h60 ; 0h05D1: vol off, no pitch, note, instrument
   58F0 01                 1447  .db 0h01 ; 0h05D2: instrument
   58F1 B2                 1448  .db 0hB2 ; 0h05D3: normal track data,  note: G#4
   58F2 7F                 1449  .db 0h7F ; 0h05D4: vol = 0h0 (inverted), no pitch, no note, no instrument
   58F3 08                 1450  .db 0h08 ; 0h05D5: instrument
   58F4 5A                 1451  .db 0h5A ; 0h05D6: normal track data
   58F5 61                 1452  .db 0h61 ; 0h05D7: vol = 0hF (inverted), no pitch, no note, no instrument
   58F6 01                 1453  .db 0h01 ; 0h05D8: instrument
   58F7 72                 1454  .db 0h72 ; 0h05D9: normal track data
   58F8 60                 1455  .db 0h60 ; 0h05DA: vol off, no pitch, note, instrument
   58F9 04                 1456  .db 0h04 ; 0h05DB: instrument
   58FA B2                 1457  .db 0hB2 ; 0h05DC: normal track data,  note: G#4
   58FB 7F                 1458  .db 0h7F ; 0h05DD: vol = 0h0 (inverted), no pitch, no note, no instrument
   58FC 08                 1459  .db 0h08 ; 0h05DE: instrument
   58FD 5A                 1460  .db 0h5A ; 0h05DF: normal track data
   58FE 61                 1461  .db 0h61 ; 0h05E0: vol = 0hF (inverted), no pitch, no note, no instrument
   58FF 01                 1462  .db 0h01 ; 0h05E1: instrument
   5900 72                 1463  .db 0h72 ; 0h05E2: normal track data
   5901 60                 1464  .db 0h60 ; 0h05E3: vol off, no pitch, note, instrument
   5902 03                 1465  .db 0h03 ; 0h05E4: instrument
   5903 B8                 1466  .db 0hB8 ; 0h05E5: normal track data,  note: B4
   5904 7F                 1467  .db 0h7F ; 0h05E6: vol = 0h0 (inverted), no pitch, no note, no instrument
   5905 07                 1468  .db 0h07 ; 0h05E7: instrument
   5906 5A                 1469  .db 0h5A ; 0h05E8: normal track data
   5907 61                 1470  .db 0h61 ; 0h05E9: vol = 0hF (inverted), no pitch, no note, no instrument
   5908 01                 1471  .db 0h01 ; 0h05EA: instrument
   5909 72                 1472  .db 0h72 ; 0h05EB: normal track data
   590A 60                 1473  .db 0h60 ; 0h05EC: vol off, no pitch, note, instrument
   590B 03                 1474  .db 0h03 ; 0h05ED: instrument
   590C B8                 1475  .db 0hB8 ; 0h05EE: normal track data,  note: B4
   590D 7F                 1476  .db 0h7F ; 0h05EF: vol = 0h0 (inverted), no pitch, no note, no instrument
   590E 07                 1477  .db 0h07 ; 0h05F0: instrument
   590F 72                 1478  .db 0h72 ; 0h05F1: normal track data
   5910 61                 1479  .db 0h61 ; 0h05F2: vol = 0hF (inverted), no pitch, no note, no instrument
   5911 04                 1480  .db 0h04 ; 0h05F3: instrument
   5912 5A                 1481  .db 0h5A ; 0h05F4: normal track data
   5913 60                 1482  .db 0h60 ; 0h05F5: vol off, no pitch, note, instrument
   5914 01                 1483  .db 0h01 ; 0h05F6: instrument
   5915 B2                 1484  .db 0hB2 ; 0h05F7: normal track data,  note: G#4
   5916 7F                 1485  .db 0h7F ; 0h05F8: vol = 0h0 (inverted), no pitch, no note, no instrument
   5917 08                 1486  .db 0h08 ; 0h05F9: instrument
   5918 5A                 1487  .db 0h5A ; 0h05FA: normal track data
   5919 61                 1488  .db 0h61 ; 0h05FB: vol = 0hF (inverted), no pitch, no note, no instrument
   591A 01                 1489  .db 0h01 ; 0h05FC: instrument
   591B                    1490 trackDef11Test:
   591B C2                 1491  .db 0hC2 ; 0h05FD: normal track data
   591C F3                 1492  .db 0hF3 ; 0h05FE: vol = 0h6 (inverted), no pitch, no note, no instrument
   591D 00 00              1493  .dw 0h0000 ; 0h05FF: pitch
   591F 05                 1494  .db 0h05 ; 0h0601: instrument
   5920 DA                 1495  .db 0hDA ; 0h0602: normal track data
   5921 40                 1496  .db 0h40 ; 0h0603: vol off, no pitch, note, no instrument
   5922 C2                 1497  .db 0hC2 ; 0h0604: normal track data
   5923 40                 1498  .db 0h40 ; 0h0605: vol off, no pitch, note, no instrument
   5924 AA                 1499  .db 0hAA ; 0h0606: normal track data
   5925 40                 1500  .db 0h40 ; 0h0607: vol off, no pitch, note, no instrument
   5926 92                 1501  .db 0h92 ; 0h0608: normal track data
   5927 40                 1502  .db 0h40 ; 0h0609: vol off, no pitch, note, no instrument
   5928 7A                 1503  .db 0h7A ; 0h060A: normal track data
   5929 40                 1504  .db 0h40 ; 0h060B: vol off, no pitch, note, no instrument
   592A 92                 1505  .db 0h92 ; 0h060C: normal track data
   592B 40                 1506  .db 0h40 ; 0h060D: vol off, no pitch, note, no instrument
   592C AA                 1507  .db 0hAA ; 0h060E: normal track data
   592D 40                 1508  .db 0h40 ; 0h060F: vol off, no pitch, note, no instrument
   592E C2                 1509  .db 0hC2 ; 0h0610: normal track data
   592F 40                 1510  .db 0h40 ; 0h0611: vol off, no pitch, note, no instrument
   5930 DA                 1511  .db 0hDA ; 0h0612: normal track data
   5931 40                 1512  .db 0h40 ; 0h0613: vol off, no pitch, note, no instrument
   5932 C2                 1513  .db 0hC2 ; 0h0614: normal track data
   5933 40                 1514  .db 0h40 ; 0h0615: vol off, no pitch, note, no instrument
   5934 AA                 1515  .db 0hAA ; 0h0616: normal track data
   5935 40                 1516  .db 0h40 ; 0h0617: vol off, no pitch, note, no instrument
   5936 92                 1517  .db 0h92 ; 0h0618: normal track data
   5937 40                 1518  .db 0h40 ; 0h0619: vol off, no pitch, note, no instrument
   5938 7A                 1519  .db 0h7A ; 0h061A: normal track data
   5939 40                 1520  .db 0h40 ; 0h061B: vol off, no pitch, note, no instrument
   593A 92                 1521  .db 0h92 ; 0h061C: normal track data
   593B 40                 1522  .db 0h40 ; 0h061D: vol off, no pitch, note, no instrument
   593C AA                 1523  .db 0hAA ; 0h061E: normal track data
   593D 40                 1524  .db 0h40 ; 0h061F: vol off, no pitch, note, no instrument
   593E C2                 1525  .db 0hC2 ; 0h0620: normal track data
   593F 40                 1526  .db 0h40 ; 0h0621: vol off, no pitch, note, no instrument
   5940 DA                 1527  .db 0hDA ; 0h0622: normal track data
   5941 40                 1528  .db 0h40 ; 0h0623: vol off, no pitch, note, no instrument
   5942 C2                 1529  .db 0hC2 ; 0h0624: normal track data
   5943 40                 1530  .db 0h40 ; 0h0625: vol off, no pitch, note, no instrument
   5944 AA                 1531  .db 0hAA ; 0h0626: normal track data
   5945 40                 1532  .db 0h40 ; 0h0627: vol off, no pitch, note, no instrument
   5946 92                 1533  .db 0h92 ; 0h0628: normal track data
   5947 40                 1534  .db 0h40 ; 0h0629: vol off, no pitch, note, no instrument
   5948 7A                 1535  .db 0h7A ; 0h062A: normal track data
   5949 40                 1536  .db 0h40 ; 0h062B: vol off, no pitch, note, no instrument
   594A 92                 1537  .db 0h92 ; 0h062C: normal track data
   594B 40                 1538  .db 0h40 ; 0h062D: vol off, no pitch, note, no instrument
   594C AA                 1539  .db 0hAA ; 0h062E: normal track data
   594D 40                 1540  .db 0h40 ; 0h062F: vol off, no pitch, note, no instrument
   594E C2                 1541  .db 0hC2 ; 0h0630: normal track data
   594F 40                 1542  .db 0h40 ; 0h0631: vol off, no pitch, note, no instrument
   5950 DA                 1543  .db 0hDA ; 0h0632: normal track data
   5951 40                 1544  .db 0h40 ; 0h0633: vol off, no pitch, note, no instrument
   5952 C2                 1545  .db 0hC2 ; 0h0634: normal track data
   5953 40                 1546  .db 0h40 ; 0h0635: vol off, no pitch, note, no instrument
   5954 AA                 1547  .db 0hAA ; 0h0636: normal track data
   5955 40                 1548  .db 0h40 ; 0h0637: vol off, no pitch, note, no instrument
   5956 92                 1549  .db 0h92 ; 0h0638: normal track data
   5957 40                 1550  .db 0h40 ; 0h0639: vol off, no pitch, note, no instrument
   5958 7A                 1551  .db 0h7A ; 0h063A: normal track data
   5959 40                 1552  .db 0h40 ; 0h063B: vol off, no pitch, note, no instrument
   595A 92                 1553  .db 0h92 ; 0h063C: normal track data
   595B 40                 1554  .db 0h40 ; 0h063D: vol off, no pitch, note, no instrument
   595C AA                 1555  .db 0hAA ; 0h063E: normal track data
   595D 40                 1556  .db 0h40 ; 0h063F: vol off, no pitch, note, no instrument
   595E C2                 1557  .db 0hC2 ; 0h0640: normal track data
   595F 40                 1558  .db 0h40 ; 0h0641: vol off, no pitch, note, no instrument
   5960 DA                 1559  .db 0hDA ; 0h0642: normal track data
   5961 40                 1560  .db 0h40 ; 0h0643: vol off, no pitch, note, no instrument
   5962 C2                 1561  .db 0hC2 ; 0h0644: normal track data
   5963 40                 1562  .db 0h40 ; 0h0645: vol off, no pitch, note, no instrument
   5964 AA                 1563  .db 0hAA ; 0h0646: normal track data
   5965 40                 1564  .db 0h40 ; 0h0647: vol off, no pitch, note, no instrument
   5966 92                 1565  .db 0h92 ; 0h0648: normal track data
   5967 40                 1566  .db 0h40 ; 0h0649: vol off, no pitch, note, no instrument
   5968 7A                 1567  .db 0h7A ; 0h064A: normal track data
   5969 40                 1568  .db 0h40 ; 0h064B: vol off, no pitch, note, no instrument
   596A 92                 1569  .db 0h92 ; 0h064C: normal track data
   596B 40                 1570  .db 0h40 ; 0h064D: vol off, no pitch, note, no instrument
   596C AA                 1571  .db 0hAA ; 0h064E: normal track data
   596D 40                 1572  .db 0h40 ; 0h064F: vol off, no pitch, note, no instrument
   596E C2                 1573  .db 0hC2 ; 0h0650: normal track data
   596F 40                 1574  .db 0h40 ; 0h0651: vol off, no pitch, note, no instrument
   5970 DA                 1575  .db 0hDA ; 0h0652: normal track data
   5971 40                 1576  .db 0h40 ; 0h0653: vol off, no pitch, note, no instrument
   5972 C2                 1577  .db 0hC2 ; 0h0654: normal track data
   5973 40                 1578  .db 0h40 ; 0h0655: vol off, no pitch, note, no instrument
   5974 AA                 1579  .db 0hAA ; 0h0656: normal track data
   5975 40                 1580  .db 0h40 ; 0h0657: vol off, no pitch, note, no instrument
   5976 92                 1581  .db 0h92 ; 0h0658: normal track data
   5977 40                 1582  .db 0h40 ; 0h0659: vol off, no pitch, note, no instrument
   5978 7A                 1583  .db 0h7A ; 0h065A: normal track data
   5979 40                 1584  .db 0h40 ; 0h065B: vol off, no pitch, note, no instrument
   597A 92                 1585  .db 0h92 ; 0h065C: normal track data
   597B 40                 1586  .db 0h40 ; 0h065D: vol off, no pitch, note, no instrument
   597C AA                 1587  .db 0hAA ; 0h065E: normal track data
   597D 40                 1588  .db 0h40 ; 0h065F: vol off, no pitch, note, no instrument
   597E C2                 1589  .db 0hC2 ; 0h0660: normal track data
   597F 40                 1590  .db 0h40 ; 0h0661: vol off, no pitch, note, no instrument
   5980 DA                 1591  .db 0hDA ; 0h0662: normal track data
   5981 40                 1592  .db 0h40 ; 0h0663: vol off, no pitch, note, no instrument
   5982 C2                 1593  .db 0hC2 ; 0h0664: normal track data
   5983 40                 1594  .db 0h40 ; 0h0665: vol off, no pitch, note, no instrument
   5984 AA                 1595  .db 0hAA ; 0h0666: normal track data
   5985 40                 1596  .db 0h40 ; 0h0667: vol off, no pitch, note, no instrument
   5986 92                 1597  .db 0h92 ; 0h0668: normal track data
   5987 40                 1598  .db 0h40 ; 0h0669: vol off, no pitch, note, no instrument
   5988 7A                 1599  .db 0h7A ; 0h066A: normal track data
   5989 40                 1600  .db 0h40 ; 0h066B: vol off, no pitch, note, no instrument
   598A 92                 1601  .db 0h92 ; 0h066C: normal track data
   598B 40                 1602  .db 0h40 ; 0h066D: vol off, no pitch, note, no instrument
   598C AA                 1603  .db 0hAA ; 0h066E: normal track data
   598D 40                 1604  .db 0h40 ; 0h066F: vol off, no pitch, note, no instrument
   598E C2                 1605  .db 0hC2 ; 0h0670: normal track data
   598F 40                 1606  .db 0h40 ; 0h0671: vol off, no pitch, note, no instrument
   5990 DA                 1607  .db 0hDA ; 0h0672: normal track data
   5991 40                 1608  .db 0h40 ; 0h0673: vol off, no pitch, note, no instrument
   5992 C2                 1609  .db 0hC2 ; 0h0674: normal track data
   5993 40                 1610  .db 0h40 ; 0h0675: vol off, no pitch, note, no instrument
   5994 AA                 1611  .db 0hAA ; 0h0676: normal track data
   5995 40                 1612  .db 0h40 ; 0h0677: vol off, no pitch, note, no instrument
   5996 92                 1613  .db 0h92 ; 0h0678: normal track data
   5997 40                 1614  .db 0h40 ; 0h0679: vol off, no pitch, note, no instrument
   5998 7A                 1615  .db 0h7A ; 0h067A: normal track data
   5999 40                 1616  .db 0h40 ; 0h067B: vol off, no pitch, note, no instrument
   599A 92                 1617  .db 0h92 ; 0h067C: normal track data
   599B 40                 1618  .db 0h40 ; 0h067D: vol off, no pitch, note, no instrument
   599C AA                 1619  .db 0hAA ; 0h067E: normal track data
   599D 40                 1620  .db 0h40 ; 0h067F: vol off, no pitch, note, no instrument
   599E                    1621 trackDef13Test:
   599E C2                 1622  .db 0hC2 ; 0h0680: normal track data
   599F F3                 1623  .db 0hF3 ; 0h0681: vol = 0h6 (inverted), no pitch, no note, no instrument
   59A0 00 00              1624  .dw 0h0000 ; 0h0682: pitch
   59A2 05                 1625  .db 0h05 ; 0h0684: instrument
   59A3 DA                 1626  .db 0hDA ; 0h0685: normal track data
   59A4 40                 1627  .db 0h40 ; 0h0686: vol off, no pitch, note, no instrument
   59A5 C2                 1628  .db 0hC2 ; 0h0687: normal track data
   59A6 40                 1629  .db 0h40 ; 0h0688: vol off, no pitch, note, no instrument
   59A7 AA                 1630  .db 0hAA ; 0h0689: normal track data
   59A8 40                 1631  .db 0h40 ; 0h068A: vol off, no pitch, note, no instrument
   59A9 92                 1632  .db 0h92 ; 0h068B: normal track data
   59AA 40                 1633  .db 0h40 ; 0h068C: vol off, no pitch, note, no instrument
   59AB 7A                 1634  .db 0h7A ; 0h068D: normal track data
   59AC 40                 1635  .db 0h40 ; 0h068E: vol off, no pitch, note, no instrument
   59AD 92                 1636  .db 0h92 ; 0h068F: normal track data
   59AE 40                 1637  .db 0h40 ; 0h0690: vol off, no pitch, note, no instrument
   59AF AA                 1638  .db 0hAA ; 0h0691: normal track data
   59B0 40                 1639  .db 0h40 ; 0h0692: vol off, no pitch, note, no instrument
   59B1 C2                 1640  .db 0hC2 ; 0h0693: normal track data
   59B2 40                 1641  .db 0h40 ; 0h0694: vol off, no pitch, note, no instrument
   59B3 DA                 1642  .db 0hDA ; 0h0695: normal track data
   59B4 40                 1643  .db 0h40 ; 0h0696: vol off, no pitch, note, no instrument
   59B5 C2                 1644  .db 0hC2 ; 0h0697: normal track data
   59B6 40                 1645  .db 0h40 ; 0h0698: vol off, no pitch, note, no instrument
   59B7 AA                 1646  .db 0hAA ; 0h0699: normal track data
   59B8 40                 1647  .db 0h40 ; 0h069A: vol off, no pitch, note, no instrument
   59B9 92                 1648  .db 0h92 ; 0h069B: normal track data
   59BA 40                 1649  .db 0h40 ; 0h069C: vol off, no pitch, note, no instrument
   59BB 7A                 1650  .db 0h7A ; 0h069D: normal track data
   59BC 40                 1651  .db 0h40 ; 0h069E: vol off, no pitch, note, no instrument
   59BD 92                 1652  .db 0h92 ; 0h069F: normal track data
   59BE 40                 1653  .db 0h40 ; 0h06A0: vol off, no pitch, note, no instrument
   59BF AA                 1654  .db 0hAA ; 0h06A1: normal track data
   59C0 40                 1655  .db 0h40 ; 0h06A2: vol off, no pitch, note, no instrument
   59C1 C2                 1656  .db 0hC2 ; 0h06A3: normal track data
   59C2 40                 1657  .db 0h40 ; 0h06A4: vol off, no pitch, note, no instrument
   59C3 DA                 1658  .db 0hDA ; 0h06A5: normal track data
   59C4 40                 1659  .db 0h40 ; 0h06A6: vol off, no pitch, note, no instrument
   59C5 C2                 1660  .db 0hC2 ; 0h06A7: normal track data
   59C6 40                 1661  .db 0h40 ; 0h06A8: vol off, no pitch, note, no instrument
   59C7 AA                 1662  .db 0hAA ; 0h06A9: normal track data
   59C8 40                 1663  .db 0h40 ; 0h06AA: vol off, no pitch, note, no instrument
   59C9 92                 1664  .db 0h92 ; 0h06AB: normal track data
   59CA 40                 1665  .db 0h40 ; 0h06AC: vol off, no pitch, note, no instrument
   59CB 7A                 1666  .db 0h7A ; 0h06AD: normal track data
   59CC 40                 1667  .db 0h40 ; 0h06AE: vol off, no pitch, note, no instrument
   59CD 92                 1668  .db 0h92 ; 0h06AF: normal track data
   59CE 40                 1669  .db 0h40 ; 0h06B0: vol off, no pitch, note, no instrument
   59CF AA                 1670  .db 0hAA ; 0h06B1: normal track data
   59D0 40                 1671  .db 0h40 ; 0h06B2: vol off, no pitch, note, no instrument
   59D1 C2                 1672  .db 0hC2 ; 0h06B3: normal track data
   59D2 40                 1673  .db 0h40 ; 0h06B4: vol off, no pitch, note, no instrument
   59D3 DA                 1674  .db 0hDA ; 0h06B5: normal track data
   59D4 40                 1675  .db 0h40 ; 0h06B6: vol off, no pitch, note, no instrument
   59D5 C2                 1676  .db 0hC2 ; 0h06B7: normal track data
   59D6 40                 1677  .db 0h40 ; 0h06B8: vol off, no pitch, note, no instrument
   59D7 AA                 1678  .db 0hAA ; 0h06B9: normal track data
   59D8 40                 1679  .db 0h40 ; 0h06BA: vol off, no pitch, note, no instrument
   59D9 92                 1680  .db 0h92 ; 0h06BB: normal track data
   59DA 40                 1681  .db 0h40 ; 0h06BC: vol off, no pitch, note, no instrument
   59DB 7A                 1682  .db 0h7A ; 0h06BD: normal track data
   59DC 40                 1683  .db 0h40 ; 0h06BE: vol off, no pitch, note, no instrument
   59DD 92                 1684  .db 0h92 ; 0h06BF: normal track data
   59DE 40                 1685  .db 0h40 ; 0h06C0: vol off, no pitch, note, no instrument
   59DF AA                 1686  .db 0hAA ; 0h06C1: normal track data
   59E0 40                 1687  .db 0h40 ; 0h06C2: vol off, no pitch, note, no instrument
   59E1 C2                 1688  .db 0hC2 ; 0h06C3: normal track data
   59E2 40                 1689  .db 0h40 ; 0h06C4: vol off, no pitch, note, no instrument
   59E3 DA                 1690  .db 0hDA ; 0h06C5: normal track data
   59E4 40                 1691  .db 0h40 ; 0h06C6: vol off, no pitch, note, no instrument
   59E5 C2                 1692  .db 0hC2 ; 0h06C7: normal track data
   59E6 40                 1693  .db 0h40 ; 0h06C8: vol off, no pitch, note, no instrument
   59E7 AA                 1694  .db 0hAA ; 0h06C9: normal track data
   59E8 40                 1695  .db 0h40 ; 0h06CA: vol off, no pitch, note, no instrument
   59E9 92                 1696  .db 0h92 ; 0h06CB: normal track data
   59EA 40                 1697  .db 0h40 ; 0h06CC: vol off, no pitch, note, no instrument
   59EB 7A                 1698  .db 0h7A ; 0h06CD: normal track data
   59EC 40                 1699  .db 0h40 ; 0h06CE: vol off, no pitch, note, no instrument
   59ED 92                 1700  .db 0h92 ; 0h06CF: normal track data
   59EE 40                 1701  .db 0h40 ; 0h06D0: vol off, no pitch, note, no instrument
   59EF AA                 1702  .db 0hAA ; 0h06D1: normal track data
   59F0 40                 1703  .db 0h40 ; 0h06D2: vol off, no pitch, note, no instrument
   59F1 C2                 1704  .db 0hC2 ; 0h06D3: normal track data
   59F2 40                 1705  .db 0h40 ; 0h06D4: vol off, no pitch, note, no instrument
   59F3 DA                 1706  .db 0hDA ; 0h06D5: normal track data
   59F4 40                 1707  .db 0h40 ; 0h06D6: vol off, no pitch, note, no instrument
   59F5 C2                 1708  .db 0hC2 ; 0h06D7: normal track data
   59F6 40                 1709  .db 0h40 ; 0h06D8: vol off, no pitch, note, no instrument
   59F7 AA                 1710  .db 0hAA ; 0h06D9: normal track data
   59F8 40                 1711  .db 0h40 ; 0h06DA: vol off, no pitch, note, no instrument
   59F9 92                 1712  .db 0h92 ; 0h06DB: normal track data
   59FA 40                 1713  .db 0h40 ; 0h06DC: vol off, no pitch, note, no instrument
   59FB 7A                 1714  .db 0h7A ; 0h06DD: normal track data
   59FC 40                 1715  .db 0h40 ; 0h06DE: vol off, no pitch, note, no instrument
   59FD 92                 1716  .db 0h92 ; 0h06DF: normal track data
   59FE 40                 1717  .db 0h40 ; 0h06E0: vol off, no pitch, note, no instrument
   59FF AA                 1718  .db 0hAA ; 0h06E1: normal track data
   5A00 40                 1719  .db 0h40 ; 0h06E2: vol off, no pitch, note, no instrument
   5A01 7A                 1720  .db 0h7A ; 0h06E3: normal track data
   5A02 40                 1721  .db 0h40 ; 0h06E4: vol off, no pitch, note, no instrument
   5A03 92                 1722  .db 0h92 ; 0h06E5: normal track data
   5A04 40                 1723  .db 0h40 ; 0h06E6: vol off, no pitch, note, no instrument
   5A05 7A                 1724  .db 0h7A ; 0h06E7: normal track data
   5A06 40                 1725  .db 0h40 ; 0h06E8: vol off, no pitch, note, no instrument
   5A07 92                 1726  .db 0h92 ; 0h06E9: normal track data
   5A08 40                 1727  .db 0h40 ; 0h06EA: vol off, no pitch, note, no instrument
   5A09 7C                 1728  .db 0h7C ; 0h06EB: normal track data
   5A0A 40                 1729  .db 0h40 ; 0h06EC: vol off, no pitch, note, no instrument
   5A0B 94                 1730  .db 0h94 ; 0h06ED: normal track data
   5A0C 40                 1731  .db 0h40 ; 0h06EE: vol off, no pitch, note, no instrument
   5A0D 7C                 1732  .db 0h7C ; 0h06EF: normal track data
   5A0E 40                 1733  .db 0h40 ; 0h06F0: vol off, no pitch, note, no instrument
   5A0F 94                 1734  .db 0h94 ; 0h06F1: normal track data
   5A10 40                 1735  .db 0h40 ; 0h06F2: vol off, no pitch, note, no instrument
   5A11 7A                 1736  .db 0h7A ; 0h06F3: normal track data
   5A12 40                 1737  .db 0h40 ; 0h06F4: vol off, no pitch, note, no instrument
   5A13 92                 1738  .db 0h92 ; 0h06F5: normal track data
   5A14 40                 1739  .db 0h40 ; 0h06F6: vol off, no pitch, note, no instrument
   5A15 7A                 1740  .db 0h7A ; 0h06F7: normal track data
   5A16 40                 1741  .db 0h40 ; 0h06F8: vol off, no pitch, note, no instrument
   5A17 84                 1742  .db 0h84 ; 0h06F9: normal track data
   5A18 40                 1743  .db 0h40 ; 0h06FA: vol off, no pitch, note, no instrument
   5A19 88                 1744  .db 0h88 ; 0h06FB: normal track data
   5A1A 40                 1745  .db 0h40 ; 0h06FC: vol off, no pitch, note, no instrument
   5A1B 84                 1746  .db 0h84 ; 0h06FD: normal track data
   5A1C 40                 1747  .db 0h40 ; 0h06FE: vol off, no pitch, note, no instrument
   5A1D 80                 1748  .db 0h80 ; 0h06FF: normal track data
   5A1E 40                 1749  .db 0h40 ; 0h0700: vol off, no pitch, note, no instrument
   5A1F 7C                 1750  .db 0h7C ; 0h0701: normal track data
   5A20 40                 1751  .db 0h40 ; 0h0702: vol off, no pitch, note, no instrument
   5A21                    1752 trackDef18Test:
   5A21 72                 1753  .db 0h72 ; 0h0703: normal track data
   5A22 E1                 1754  .db 0hE1 ; 0h0704: vol = 0hF (inverted), no pitch, no note, no instrument
   5A23 00 00              1755  .dw 0h0000 ; 0h0705: pitch
   5A25 03                 1756  .db 0h03 ; 0h0707: instrument
   5A26 5A                 1757  .db 0h5A ; 0h0708: normal track data
   5A27 60                 1758  .db 0h60 ; 0h0709: vol off, no pitch, note, instrument
   5A28 01                 1759  .db 0h01 ; 0h070A: instrument
   5A29 B2                 1760  .db 0hB2 ; 0h070B: normal track data,  note: G#4
   5A2A 7F                 1761  .db 0h7F ; 0h070C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A2B 06                 1762  .db 0h06 ; 0h070D: instrument
   5A2C 5A                 1763  .db 0h5A ; 0h070E: normal track data
   5A2D 61                 1764  .db 0h61 ; 0h070F: vol = 0hF (inverted), no pitch, no note, no instrument
   5A2E 01                 1765  .db 0h01 ; 0h0710: instrument
   5A2F 72                 1766  .db 0h72 ; 0h0711: normal track data
   5A30 60                 1767  .db 0h60 ; 0h0712: vol off, no pitch, note, instrument
   5A31 04                 1768  .db 0h04 ; 0h0713: instrument
   5A32 B2                 1769  .db 0hB2 ; 0h0714: normal track data,  note: G#4
   5A33 7F                 1770  .db 0h7F ; 0h0715: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A34 06                 1771  .db 0h06 ; 0h0716: instrument
   5A35 5A                 1772  .db 0h5A ; 0h0717: normal track data
   5A36 61                 1773  .db 0h61 ; 0h0718: vol = 0hF (inverted), no pitch, no note, no instrument
   5A37 01                 1774  .db 0h01 ; 0h0719: instrument
   5A38 72                 1775  .db 0h72 ; 0h071A: normal track data
   5A39 60                 1776  .db 0h60 ; 0h071B: vol off, no pitch, note, instrument
   5A3A 03                 1777  .db 0h03 ; 0h071C: instrument
   5A3B B2                 1778  .db 0hB2 ; 0h071D: normal track data,  note: G#4
   5A3C 7F                 1779  .db 0h7F ; 0h071E: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A3D 06                 1780  .db 0h06 ; 0h071F: instrument
   5A3E 5A                 1781  .db 0h5A ; 0h0720: normal track data
   5A3F 61                 1782  .db 0h61 ; 0h0721: vol = 0hF (inverted), no pitch, no note, no instrument
   5A40 01                 1783  .db 0h01 ; 0h0722: instrument
   5A41 72                 1784  .db 0h72 ; 0h0723: normal track data
   5A42 60                 1785  .db 0h60 ; 0h0724: vol off, no pitch, note, instrument
   5A43 03                 1786  .db 0h03 ; 0h0725: instrument
   5A44 AE                 1787  .db 0hAE ; 0h0726: normal track data,  note: F#4
   5A45 7F                 1788  .db 0h7F ; 0h0727: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A46 07                 1789  .db 0h07 ; 0h0728: instrument
   5A47 72                 1790  .db 0h72 ; 0h0729: normal track data
   5A48 61                 1791  .db 0h61 ; 0h072A: vol = 0hF (inverted), no pitch, no note, no instrument
   5A49 04                 1792  .db 0h04 ; 0h072B: instrument
   5A4A 5A                 1793  .db 0h5A ; 0h072C: normal track data
   5A4B 60                 1794  .db 0h60 ; 0h072D: vol off, no pitch, note, instrument
   5A4C 01                 1795  .db 0h01 ; 0h072E: instrument
   5A4D AE                 1796  .db 0hAE ; 0h072F: normal track data,  note: F#4
   5A4E 7F                 1797  .db 0h7F ; 0h0730: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A4F 07                 1798  .db 0h07 ; 0h0731: instrument
   5A50 5A                 1799  .db 0h5A ; 0h0732: normal track data
   5A51 61                 1800  .db 0h61 ; 0h0733: vol = 0hF (inverted), no pitch, no note, no instrument
   5A52 01                 1801  .db 0h01 ; 0h0734: instrument
   5A53 72                 1802  .db 0h72 ; 0h0735: normal track data
   5A54 60                 1803  .db 0h60 ; 0h0736: vol off, no pitch, note, instrument
   5A55 03                 1804  .db 0h03 ; 0h0737: instrument
   5A56 5A                 1805  .db 0h5A ; 0h0738: normal track data
   5A57 60                 1806  .db 0h60 ; 0h0739: vol off, no pitch, note, instrument
   5A58 01                 1807  .db 0h01 ; 0h073A: instrument
   5A59 B2                 1808  .db 0hB2 ; 0h073B: normal track data,  note: G#4
   5A5A 7F                 1809  .db 0h7F ; 0h073C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A5B 08                 1810  .db 0h08 ; 0h073D: instrument
   5A5C 5A                 1811  .db 0h5A ; 0h073E: normal track data
   5A5D 61                 1812  .db 0h61 ; 0h073F: vol = 0hF (inverted), no pitch, no note, no instrument
   5A5E 01                 1813  .db 0h01 ; 0h0740: instrument
   5A5F 72                 1814  .db 0h72 ; 0h0741: normal track data
   5A60 60                 1815  .db 0h60 ; 0h0742: vol off, no pitch, note, instrument
   5A61 04                 1816  .db 0h04 ; 0h0743: instrument
   5A62 B2                 1817  .db 0hB2 ; 0h0744: normal track data,  note: G#4
   5A63 7F                 1818  .db 0h7F ; 0h0745: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A64 08                 1819  .db 0h08 ; 0h0746: instrument
   5A65 5A                 1820  .db 0h5A ; 0h0747: normal track data
   5A66 61                 1821  .db 0h61 ; 0h0748: vol = 0hF (inverted), no pitch, no note, no instrument
   5A67 01                 1822  .db 0h01 ; 0h0749: instrument
   5A68 72                 1823  .db 0h72 ; 0h074A: normal track data
   5A69 60                 1824  .db 0h60 ; 0h074B: vol off, no pitch, note, instrument
   5A6A 03                 1825  .db 0h03 ; 0h074C: instrument
   5A6B B8                 1826  .db 0hB8 ; 0h074D: normal track data,  note: B4
   5A6C 7F                 1827  .db 0h7F ; 0h074E: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A6D 07                 1828  .db 0h07 ; 0h074F: instrument
   5A6E 5A                 1829  .db 0h5A ; 0h0750: normal track data
   5A6F 61                 1830  .db 0h61 ; 0h0751: vol = 0hF (inverted), no pitch, no note, no instrument
   5A70 01                 1831  .db 0h01 ; 0h0752: instrument
   5A71 72                 1832  .db 0h72 ; 0h0753: normal track data
   5A72 60                 1833  .db 0h60 ; 0h0754: vol off, no pitch, note, instrument
   5A73 03                 1834  .db 0h03 ; 0h0755: instrument
   5A74 B8                 1835  .db 0hB8 ; 0h0756: normal track data,  note: B4
   5A75 7F                 1836  .db 0h7F ; 0h0757: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A76 07                 1837  .db 0h07 ; 0h0758: instrument
   5A77 72                 1838  .db 0h72 ; 0h0759: normal track data
   5A78 61                 1839  .db 0h61 ; 0h075A: vol = 0hF (inverted), no pitch, no note, no instrument
   5A79 04                 1840  .db 0h04 ; 0h075B: instrument
   5A7A 5A                 1841  .db 0h5A ; 0h075C: normal track data
   5A7B 60                 1842  .db 0h60 ; 0h075D: vol off, no pitch, note, instrument
   5A7C 01                 1843  .db 0h01 ; 0h075E: instrument
   5A7D B2                 1844  .db 0hB2 ; 0h075F: normal track data,  note: G#4
   5A7E 7F                 1845  .db 0h7F ; 0h0760: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A7F 08                 1846  .db 0h08 ; 0h0761: instrument
   5A80 5A                 1847  .db 0h5A ; 0h0762: normal track data
   5A81 61                 1848  .db 0h61 ; 0h0763: vol = 0hF (inverted), no pitch, no note, no instrument
   5A82 01                 1849  .db 0h01 ; 0h0764: instrument
   5A83 72                 1850  .db 0h72 ; 0h0765: normal track data
   5A84 60                 1851  .db 0h60 ; 0h0766: vol off, no pitch, note, instrument
   5A85 03                 1852  .db 0h03 ; 0h0767: instrument
   5A86 5A                 1853  .db 0h5A ; 0h0768: normal track data
   5A87 60                 1854  .db 0h60 ; 0h0769: vol off, no pitch, note, instrument
   5A88 01                 1855  .db 0h01 ; 0h076A: instrument
   5A89 B8                 1856  .db 0hB8 ; 0h076B: normal track data,  note: B4
   5A8A 7F                 1857  .db 0h7F ; 0h076C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A8B 08                 1858  .db 0h08 ; 0h076D: instrument
   5A8C 5A                 1859  .db 0h5A ; 0h076E: normal track data
   5A8D 61                 1860  .db 0h61 ; 0h076F: vol = 0hF (inverted), no pitch, no note, no instrument
   5A8E 01                 1861  .db 0h01 ; 0h0770: instrument
   5A8F 72                 1862  .db 0h72 ; 0h0771: normal track data
   5A90 60                 1863  .db 0h60 ; 0h0772: vol off, no pitch, note, instrument
   5A91 04                 1864  .db 0h04 ; 0h0773: instrument
   5A92 B8                 1865  .db 0hB8 ; 0h0774: normal track data,  note: B4
   5A93 7F                 1866  .db 0h7F ; 0h0775: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A94 08                 1867  .db 0h08 ; 0h0776: instrument
   5A95 5A                 1868  .db 0h5A ; 0h0777: normal track data
   5A96 61                 1869  .db 0h61 ; 0h0778: vol = 0hF (inverted), no pitch, no note, no instrument
   5A97 01                 1870  .db 0h01 ; 0h0779: instrument
   5A98 72                 1871  .db 0h72 ; 0h077A: normal track data
   5A99 60                 1872  .db 0h60 ; 0h077B: vol off, no pitch, note, instrument
   5A9A 03                 1873  .db 0h03 ; 0h077C: instrument
   5A9B B8                 1874  .db 0hB8 ; 0h077D: normal track data,  note: B4
   5A9C 7F                 1875  .db 0h7F ; 0h077E: vol = 0h0 (inverted), no pitch, no note, no instrument
   5A9D 08                 1876  .db 0h08 ; 0h077F: instrument
   5A9E 5A                 1877  .db 0h5A ; 0h0780: normal track data
   5A9F 61                 1878  .db 0h61 ; 0h0781: vol = 0hF (inverted), no pitch, no note, no instrument
   5AA0 01                 1879  .db 0h01 ; 0h0782: instrument
   5AA1 72                 1880  .db 0h72 ; 0h0783: normal track data
   5AA2 60                 1881  .db 0h60 ; 0h0784: vol off, no pitch, note, instrument
   5AA3 03                 1882  .db 0h03 ; 0h0785: instrument
   5AA4 B8                 1883  .db 0hB8 ; 0h0786: normal track data,  note: B4
   5AA5 7F                 1884  .db 0h7F ; 0h0787: vol = 0h0 (inverted), no pitch, no note, no instrument
   5AA6 09                 1885  .db 0h09 ; 0h0788: instrument
   5AA7 72                 1886  .db 0h72 ; 0h0789: normal track data
   5AA8 61                 1887  .db 0h61 ; 0h078A: vol = 0hF (inverted), no pitch, no note, no instrument
   5AA9 04                 1888  .db 0h04 ; 0h078B: instrument
   5AAA 5A                 1889  .db 0h5A ; 0h078C: normal track data
   5AAB 60                 1890  .db 0h60 ; 0h078D: vol off, no pitch, note, instrument
   5AAC 01                 1891  .db 0h01 ; 0h078E: instrument
   5AAD B8                 1892  .db 0hB8 ; 0h078F: normal track data,  note: B4
   5AAE 7F                 1893  .db 0h7F ; 0h0790: vol = 0h0 (inverted), no pitch, no note, no instrument
   5AAF 09                 1894  .db 0h09 ; 0h0791: instrument
   5AB0 5A                 1895  .db 0h5A ; 0h0792: normal track data
   5AB1 61                 1896  .db 0h61 ; 0h0793: vol = 0hF (inverted), no pitch, no note, no instrument
   5AB2 01                 1897  .db 0h01 ; 0h0794: instrument
   5AB3 72                 1898  .db 0h72 ; 0h0795: normal track data
   5AB4 60                 1899  .db 0h60 ; 0h0796: vol off, no pitch, note, instrument
   5AB5 03                 1900  .db 0h03 ; 0h0797: instrument
   5AB6 5A                 1901  .db 0h5A ; 0h0798: normal track data
   5AB7 60                 1902  .db 0h60 ; 0h0799: vol off, no pitch, note, instrument
   5AB8 01                 1903  .db 0h01 ; 0h079A: instrument
   5AB9 B8                 1904  .db 0hB8 ; 0h079B: normal track data,  note: B4
   5ABA 7F                 1905  .db 0h7F ; 0h079C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5ABB 07                 1906  .db 0h07 ; 0h079D: instrument
   5ABC 5A                 1907  .db 0h5A ; 0h079E: normal track data
   5ABD 61                 1908  .db 0h61 ; 0h079F: vol = 0hF (inverted), no pitch, no note, no instrument
   5ABE 01                 1909  .db 0h01 ; 0h07A0: instrument
   5ABF 72                 1910  .db 0h72 ; 0h07A1: normal track data
   5AC0 60                 1911  .db 0h60 ; 0h07A2: vol off, no pitch, note, instrument
   5AC1 04                 1912  .db 0h04 ; 0h07A3: instrument
   5AC2 B8                 1913  .db 0hB8 ; 0h07A4: normal track data,  note: B4
   5AC3 7F                 1914  .db 0h7F ; 0h07A5: vol = 0h0 (inverted), no pitch, no note, no instrument
   5AC4 07                 1915  .db 0h07 ; 0h07A6: instrument
   5AC5 5A                 1916  .db 0h5A ; 0h07A7: normal track data
   5AC6 61                 1917  .db 0h61 ; 0h07A8: vol = 0hF (inverted), no pitch, no note, no instrument
   5AC7 01                 1918  .db 0h01 ; 0h07A9: instrument
   5AC8 72                 1919  .db 0h72 ; 0h07AA: normal track data
   5AC9 60                 1920  .db 0h60 ; 0h07AB: vol off, no pitch, note, instrument
   5ACA 03                 1921  .db 0h03 ; 0h07AC: instrument
   5ACB B8                 1922  .db 0hB8 ; 0h07AD: normal track data,  note: B4
   5ACC 7F                 1923  .db 0h7F ; 0h07AE: vol = 0h0 (inverted), no pitch, no note, no instrument
   5ACD 07                 1924  .db 0h07 ; 0h07AF: instrument
   5ACE 5A                 1925  .db 0h5A ; 0h07B0: normal track data
   5ACF 61                 1926  .db 0h61 ; 0h07B1: vol = 0hF (inverted), no pitch, no note, no instrument
   5AD0 01                 1927  .db 0h01 ; 0h07B2: instrument
   5AD1 00                 1928  .db 0h00 ; 0h07B3: track end signature found
   5AD2                    1929 trackDef17Test:
   5AD2 92                 1930  .db 0h92 ; 0h07B4: normal track data
   5AD3 E1                 1931  .db 0hE1 ; 0h07B5: vol = 0hF (inverted), no pitch, no note, no instrument
   5AD4 00 00              1932  .dw 0h0000 ; 0h07B6: pitch
   5AD6 02                 1933  .db 0h02 ; 0h07B8: instrument
   5AD7 C2                 1934  .db 0hC2 ; 0h07B9: normal track data
   5AD8 49                 1935  .db 0h49 ; 0h07BA: vol = 0hB (inverted), no pitch, no note, no instrument
   5AD9 92                 1936  .db 0h92 ; 0h07BB: normal track data
   5ADA 41                 1937  .db 0h41 ; 0h07BC: vol = 0hF (inverted), no pitch, no note, no instrument
   5ADB C2                 1938  .db 0hC2 ; 0h07BD: normal track data
   5ADC 49                 1939  .db 0h49 ; 0h07BE: vol = 0hB (inverted), no pitch, no note, no instrument
   5ADD AA                 1940  .db 0hAA ; 0h07BF: normal track data
   5ADE 41                 1941  .db 0h41 ; 0h07C0: vol = 0hF (inverted), no pitch, no note, no instrument
   5ADF AC                 1942  .db 0hAC ; 0h07C1: normal track data
   5AE0 40                 1943  .db 0h40 ; 0h07C2: vol off, no pitch, note, no instrument
   5AE1 B0                 1944  .db 0hB0 ; 0h07C3: normal track data
   5AE2 40                 1945  .db 0h40 ; 0h07C4: vol off, no pitch, note, no instrument
   5AE3 B4                 1946  .db 0hB4 ; 0h07C5: normal track data
   5AE4 40                 1947  .db 0h40 ; 0h07C6: vol off, no pitch, note, no instrument
   5AE5 92                 1948  .db 0h92 ; 0h07C7: normal track data
   5AE6 40                 1949  .db 0h40 ; 0h07C8: vol off, no pitch, note, no instrument
   5AE7 C2                 1950  .db 0hC2 ; 0h07C9: normal track data
   5AE8 49                 1951  .db 0h49 ; 0h07CA: vol = 0hB (inverted), no pitch, no note, no instrument
   5AE9 92                 1952  .db 0h92 ; 0h07CB: normal track data
   5AEA 41                 1953  .db 0h41 ; 0h07CC: vol = 0hF (inverted), no pitch, no note, no instrument
   5AEB C2                 1954  .db 0hC2 ; 0h07CD: normal track data
   5AEC 49                 1955  .db 0h49 ; 0h07CE: vol = 0hB (inverted), no pitch, no note, no instrument
   5AED AA                 1956  .db 0hAA ; 0h07CF: normal track data
   5AEE 41                 1957  .db 0h41 ; 0h07D0: vol = 0hF (inverted), no pitch, no note, no instrument
   5AEF C2                 1958  .db 0hC2 ; 0h07D1: normal track data
   5AF0 49                 1959  .db 0h49 ; 0h07D2: vol = 0hB (inverted), no pitch, no note, no instrument
   5AF1 AA                 1960  .db 0hAA ; 0h07D3: normal track data
   5AF2 41                 1961  .db 0h41 ; 0h07D4: vol = 0hF (inverted), no pitch, no note, no instrument
   5AF3 C2                 1962  .db 0hC2 ; 0h07D5: normal track data
   5AF4 49                 1963  .db 0h49 ; 0h07D6: vol = 0hB (inverted), no pitch, no note, no instrument
   5AF5 92                 1964  .db 0h92 ; 0h07D7: normal track data
   5AF6 41                 1965  .db 0h41 ; 0h07D8: vol = 0hF (inverted), no pitch, no note, no instrument
   5AF7 C2                 1966  .db 0hC2 ; 0h07D9: normal track data
   5AF8 49                 1967  .db 0h49 ; 0h07DA: vol = 0hB (inverted), no pitch, no note, no instrument
   5AF9 92                 1968  .db 0h92 ; 0h07DB: normal track data
   5AFA 41                 1969  .db 0h41 ; 0h07DC: vol = 0hF (inverted), no pitch, no note, no instrument
   5AFB C2                 1970  .db 0hC2 ; 0h07DD: normal track data
   5AFC 49                 1971  .db 0h49 ; 0h07DE: vol = 0hB (inverted), no pitch, no note, no instrument
   5AFD 94                 1972  .db 0h94 ; 0h07DF: normal track data
   5AFE 41                 1973  .db 0h41 ; 0h07E0: vol = 0hF (inverted), no pitch, no note, no instrument
   5AFF C4                 1974  .db 0hC4 ; 0h07E1: normal track data
   5B00 49                 1975  .db 0h49 ; 0h07E2: vol = 0hB (inverted), no pitch, no note, no instrument
   5B01 94                 1976  .db 0h94 ; 0h07E3: normal track data
   5B02 41                 1977  .db 0h41 ; 0h07E4: vol = 0hF (inverted), no pitch, no note, no instrument
   5B03 C4                 1978  .db 0hC4 ; 0h07E5: normal track data
   5B04 49                 1979  .db 0h49 ; 0h07E6: vol = 0hB (inverted), no pitch, no note, no instrument
   5B05 92                 1980  .db 0h92 ; 0h07E7: normal track data
   5B06 41                 1981  .db 0h41 ; 0h07E8: vol = 0hF (inverted), no pitch, no note, no instrument
   5B07 C2                 1982  .db 0hC2 ; 0h07E9: normal track data
   5B08 49                 1983  .db 0h49 ; 0h07EA: vol = 0hB (inverted), no pitch, no note, no instrument
   5B09 92                 1984  .db 0h92 ; 0h07EB: normal track data
   5B0A 41                 1985  .db 0h41 ; 0h07EC: vol = 0hF (inverted), no pitch, no note, no instrument
   5B0B C2                 1986  .db 0hC2 ; 0h07ED: normal track data
   5B0C 49                 1987  .db 0h49 ; 0h07EE: vol = 0hB (inverted), no pitch, no note, no instrument
   5B0D AA                 1988  .db 0hAA ; 0h07EF: normal track data
   5B0E 41                 1989  .db 0h41 ; 0h07F0: vol = 0hF (inverted), no pitch, no note, no instrument
   5B0F C2                 1990  .db 0hC2 ; 0h07F1: normal track data
   5B10 49                 1991  .db 0h49 ; 0h07F2: vol = 0hB (inverted), no pitch, no note, no instrument
   5B11 AA                 1992  .db 0hAA ; 0h07F3: normal track data
   5B12 41                 1993  .db 0h41 ; 0h07F4: vol = 0hF (inverted), no pitch, no note, no instrument
   5B13 C2                 1994  .db 0hC2 ; 0h07F5: normal track data
   5B14 49                 1995  .db 0h49 ; 0h07F6: vol = 0hB (inverted), no pitch, no note, no instrument
   5B15 92                 1996  .db 0h92 ; 0h07F7: normal track data
   5B16 41                 1997  .db 0h41 ; 0h07F8: vol = 0hF (inverted), no pitch, no note, no instrument
   5B17 C2                 1998  .db 0hC2 ; 0h07F9: normal track data
   5B18 49                 1999  .db 0h49 ; 0h07FA: vol = 0hB (inverted), no pitch, no note, no instrument
   5B19 92                 2000  .db 0h92 ; 0h07FB: normal track data
   5B1A 41                 2001  .db 0h41 ; 0h07FC: vol = 0hF (inverted), no pitch, no note, no instrument
   5B1B C2                 2002  .db 0hC2 ; 0h07FD: normal track data
   5B1C 49                 2003  .db 0h49 ; 0h07FE: vol = 0hB (inverted), no pitch, no note, no instrument
   5B1D AA                 2004  .db 0hAA ; 0h07FF: normal track data
   5B1E 41                 2005  .db 0h41 ; 0h0800: vol = 0hF (inverted), no pitch, no note, no instrument
   5B1F AC                 2006  .db 0hAC ; 0h0801: normal track data
   5B20 40                 2007  .db 0h40 ; 0h0802: vol off, no pitch, note, no instrument
   5B21 B0                 2008  .db 0hB0 ; 0h0803: normal track data
   5B22 40                 2009  .db 0h40 ; 0h0804: vol off, no pitch, note, no instrument
   5B23 B4                 2010  .db 0hB4 ; 0h0805: normal track data
   5B24 40                 2011  .db 0h40 ; 0h0806: vol off, no pitch, note, no instrument
   5B25 92                 2012  .db 0h92 ; 0h0807: normal track data
   5B26 40                 2013  .db 0h40 ; 0h0808: vol off, no pitch, note, no instrument
   5B27 C2                 2014  .db 0hC2 ; 0h0809: normal track data
   5B28 49                 2015  .db 0h49 ; 0h080A: vol = 0hB (inverted), no pitch, no note, no instrument
   5B29 92                 2016  .db 0h92 ; 0h080B: normal track data
   5B2A 41                 2017  .db 0h41 ; 0h080C: vol = 0hF (inverted), no pitch, no note, no instrument
   5B2B C2                 2018  .db 0hC2 ; 0h080D: normal track data
   5B2C 49                 2019  .db 0h49 ; 0h080E: vol = 0hB (inverted), no pitch, no note, no instrument
   5B2D AA                 2020  .db 0hAA ; 0h080F: normal track data
   5B2E 41                 2021  .db 0h41 ; 0h0810: vol = 0hF (inverted), no pitch, no note, no instrument
   5B2F C2                 2022  .db 0hC2 ; 0h0811: normal track data
   5B30 49                 2023  .db 0h49 ; 0h0812: vol = 0hB (inverted), no pitch, no note, no instrument
   5B31 AA                 2024  .db 0hAA ; 0h0813: normal track data
   5B32 41                 2025  .db 0h41 ; 0h0814: vol = 0hF (inverted), no pitch, no note, no instrument
   5B33 C2                 2026  .db 0hC2 ; 0h0815: normal track data
   5B34 49                 2027  .db 0h49 ; 0h0816: vol = 0hB (inverted), no pitch, no note, no instrument
   5B35 92                 2028  .db 0h92 ; 0h0817: normal track data
   5B36 41                 2029  .db 0h41 ; 0h0818: vol = 0hF (inverted), no pitch, no note, no instrument
   5B37 C2                 2030  .db 0hC2 ; 0h0819: normal track data
   5B38 49                 2031  .db 0h49 ; 0h081A: vol = 0hB (inverted), no pitch, no note, no instrument
   5B39 92                 2032  .db 0h92 ; 0h081B: normal track data
   5B3A 41                 2033  .db 0h41 ; 0h081C: vol = 0hF (inverted), no pitch, no note, no instrument
   5B3B C2                 2034  .db 0hC2 ; 0h081D: normal track data
   5B3C 49                 2035  .db 0h49 ; 0h081E: vol = 0hB (inverted), no pitch, no note, no instrument
   5B3D 94                 2036  .db 0h94 ; 0h081F: normal track data
   5B3E 41                 2037  .db 0h41 ; 0h0820: vol = 0hF (inverted), no pitch, no note, no instrument
   5B3F C4                 2038  .db 0hC4 ; 0h0821: normal track data
   5B40 49                 2039  .db 0h49 ; 0h0822: vol = 0hB (inverted), no pitch, no note, no instrument
   5B41 94                 2040  .db 0h94 ; 0h0823: normal track data
   5B42 41                 2041  .db 0h41 ; 0h0824: vol = 0hF (inverted), no pitch, no note, no instrument
   5B43 C4                 2042  .db 0hC4 ; 0h0825: normal track data
   5B44 49                 2043  .db 0h49 ; 0h0826: vol = 0hB (inverted), no pitch, no note, no instrument
   5B45 92                 2044  .db 0h92 ; 0h0827: normal track data
   5B46 41                 2045  .db 0h41 ; 0h0828: vol = 0hF (inverted), no pitch, no note, no instrument
   5B47 5A                 2046  .db 0h5A ; 0h0829: normal track data
   5B48 60                 2047  .db 0h60 ; 0h082A: vol off, no pitch, note, instrument
   5B49 01                 2048  .db 0h01 ; 0h082B: instrument
   5B4A 00                 2049  .db 0h00 ; 0h082C: track end signature found
   5B4B                    2050 trackDef19Test:
   5B4B 92                 2051  .db 0h92 ; 0h082D: normal track data
   5B4C F3                 2052  .db 0hF3 ; 0h082E: vol = 0h6 (inverted), no pitch, no note, no instrument
   5B4D 00 00              2053  .dw 0h0000 ; 0h082F: pitch
   5B4F 05                 2054  .db 0h05 ; 0h0831: instrument
   5B50 AA                 2055  .db 0hAA ; 0h0832: normal track data
   5B51 40                 2056  .db 0h40 ; 0h0833: vol off, no pitch, note, no instrument
   5B52 AA                 2057  .db 0hAA ; 0h0834: normal track data
   5B53 40                 2058  .db 0h40 ; 0h0835: vol off, no pitch, note, no instrument
   5B54 92                 2059  .db 0h92 ; 0h0836: normal track data
   5B55 40                 2060  .db 0h40 ; 0h0837: vol off, no pitch, note, no instrument
   5B56 92                 2061  .db 0h92 ; 0h0838: normal track data
   5B57 40                 2062  .db 0h40 ; 0h0839: vol off, no pitch, note, no instrument
   5B58 94                 2063  .db 0h94 ; 0h083A: normal track data
   5B59 40                 2064  .db 0h40 ; 0h083B: vol off, no pitch, note, no instrument
   5B5A 98                 2065  .db 0h98 ; 0h083C: normal track data
   5B5B 40                 2066  .db 0h40 ; 0h083D: vol off, no pitch, note, no instrument
   5B5C 9C                 2067  .db 0h9C ; 0h083E: normal track data
   5B5D 40                 2068  .db 0h40 ; 0h083F: vol off, no pitch, note, no instrument
   5B5E 92                 2069  .db 0h92 ; 0h0840: normal track data
   5B5F 40                 2070  .db 0h40 ; 0h0841: vol off, no pitch, note, no instrument
   5B60 AA                 2071  .db 0hAA ; 0h0842: normal track data
   5B61 40                 2072  .db 0h40 ; 0h0843: vol off, no pitch, note, no instrument
   5B62 08                 2073  .db 0h08 ; 0h0844: normal track data,  wait 3
   5B63 AA                 2074  .db 0hAA ; 0h0845: normal track data
   5B64 40                 2075  .db 0h40 ; 0h0846: vol off, no pitch, note, no instrument
   5B65 92                 2076  .db 0h92 ; 0h0847: normal track data
   5B66 40                 2077  .db 0h40 ; 0h0848: vol off, no pitch, note, no instrument
   5B67 92                 2078  .db 0h92 ; 0h0849: normal track data
   5B68 40                 2079  .db 0h40 ; 0h084A: vol off, no pitch, note, no instrument
   5B69 AA                 2080  .db 0hAA ; 0h084B: normal track data
   5B6A 40                 2081  .db 0h40 ; 0h084C: vol off, no pitch, note, no instrument
   5B6B AA                 2082  .db 0hAA ; 0h084D: normal track data
   5B6C 40                 2083  .db 0h40 ; 0h084E: vol off, no pitch, note, no instrument
   5B6D 92                 2084  .db 0h92 ; 0h084F: normal track data
   5B6E 40                 2085  .db 0h40 ; 0h0850: vol off, no pitch, note, no instrument
   5B6F 94                 2086  .db 0h94 ; 0h0851: normal track data
   5B70 40                 2087  .db 0h40 ; 0h0852: vol off, no pitch, note, no instrument
   5B71 AC                 2088  .db 0hAC ; 0h0853: normal track data
   5B72 40                 2089  .db 0h40 ; 0h0854: vol off, no pitch, note, no instrument
   5B73 AC                 2090  .db 0hAC ; 0h0855: normal track data
   5B74 40                 2091  .db 0h40 ; 0h0856: vol off, no pitch, note, no instrument
   5B75 94                 2092  .db 0h94 ; 0h0857: normal track data
   5B76 40                 2093  .db 0h40 ; 0h0858: vol off, no pitch, note, no instrument
   5B77 92                 2094  .db 0h92 ; 0h0859: normal track data
   5B78 40                 2095  .db 0h40 ; 0h085A: vol off, no pitch, note, no instrument
   5B79 AA                 2096  .db 0hAA ; 0h085B: normal track data
   5B7A 40                 2097  .db 0h40 ; 0h085C: vol off, no pitch, note, no instrument
   5B7B 08                 2098  .db 0h08 ; 0h085D: normal track data,  wait 3
   5B7C AA                 2099  .db 0hAA ; 0h085E: normal track data
   5B7D 40                 2100  .db 0h40 ; 0h085F: vol off, no pitch, note, no instrument
   5B7E 92                 2101  .db 0h92 ; 0h0860: normal track data
   5B7F 40                 2102  .db 0h40 ; 0h0861: vol off, no pitch, note, no instrument
   5B80 92                 2103  .db 0h92 ; 0h0862: normal track data
   5B81 40                 2104  .db 0h40 ; 0h0863: vol off, no pitch, note, no instrument
   5B82 AA                 2105  .db 0hAA ; 0h0864: normal track data
   5B83 40                 2106  .db 0h40 ; 0h0865: vol off, no pitch, note, no instrument
   5B84 AA                 2107  .db 0hAA ; 0h0866: normal track data
   5B85 40                 2108  .db 0h40 ; 0h0867: vol off, no pitch, note, no instrument
   5B86 92                 2109  .db 0h92 ; 0h0868: normal track data
   5B87 40                 2110  .db 0h40 ; 0h0869: vol off, no pitch, note, no instrument
   5B88 92                 2111  .db 0h92 ; 0h086A: normal track data
   5B89 40                 2112  .db 0h40 ; 0h086B: vol off, no pitch, note, no instrument
   5B8A 94                 2113  .db 0h94 ; 0h086C: normal track data
   5B8B 40                 2114  .db 0h40 ; 0h086D: vol off, no pitch, note, no instrument
   5B8C 98                 2115  .db 0h98 ; 0h086E: normal track data
   5B8D 40                 2116  .db 0h40 ; 0h086F: vol off, no pitch, note, no instrument
   5B8E 9C                 2117  .db 0h9C ; 0h0870: normal track data
   5B8F 40                 2118  .db 0h40 ; 0h0871: vol off, no pitch, note, no instrument
   5B90 92                 2119  .db 0h92 ; 0h0872: normal track data
   5B91 40                 2120  .db 0h40 ; 0h0873: vol off, no pitch, note, no instrument
   5B92 AA                 2121  .db 0hAA ; 0h0874: normal track data
   5B93 40                 2122  .db 0h40 ; 0h0875: vol off, no pitch, note, no instrument
   5B94 08                 2123  .db 0h08 ; 0h0876: normal track data,  wait 3
   5B95 AA                 2124  .db 0hAA ; 0h0877: normal track data
   5B96 40                 2125  .db 0h40 ; 0h0878: vol off, no pitch, note, no instrument
   5B97 92                 2126  .db 0h92 ; 0h0879: normal track data
   5B98 40                 2127  .db 0h40 ; 0h087A: vol off, no pitch, note, no instrument
   5B99 92                 2128  .db 0h92 ; 0h087B: normal track data
   5B9A 40                 2129  .db 0h40 ; 0h087C: vol off, no pitch, note, no instrument
   5B9B AA                 2130  .db 0hAA ; 0h087D: normal track data
   5B9C 40                 2131  .db 0h40 ; 0h087E: vol off, no pitch, note, no instrument
   5B9D AA                 2132  .db 0hAA ; 0h087F: normal track data
   5B9E 40                 2133  .db 0h40 ; 0h0880: vol off, no pitch, note, no instrument
   5B9F 92                 2134  .db 0h92 ; 0h0881: normal track data
   5BA0 40                 2135  .db 0h40 ; 0h0882: vol off, no pitch, note, no instrument
   5BA1 94                 2136  .db 0h94 ; 0h0883: normal track data
   5BA2 40                 2137  .db 0h40 ; 0h0884: vol off, no pitch, note, no instrument
   5BA3 AC                 2138  .db 0hAC ; 0h0885: normal track data
   5BA4 40                 2139  .db 0h40 ; 0h0886: vol off, no pitch, note, no instrument
   5BA5 AC                 2140  .db 0hAC ; 0h0887: normal track data
   5BA6 40                 2141  .db 0h40 ; 0h0888: vol off, no pitch, note, no instrument
   5BA7 94                 2142  .db 0h94 ; 0h0889: normal track data
   5BA8 40                 2143  .db 0h40 ; 0h088A: vol off, no pitch, note, no instrument
   5BA9 92                 2144  .db 0h92 ; 0h088B: normal track data
   5BAA 40                 2145  .db 0h40 ; 0h088C: vol off, no pitch, note, no instrument
   5BAB 5A                 2146  .db 0h5A ; 0h088D: normal track data
   5BAC 61                 2147  .db 0h61 ; 0h088E: vol = 0hF (inverted), no pitch, no note, no instrument
   5BAD 01                 2148  .db 0h01 ; 0h088F: instrument
   5BAE 08                 2149  .db 0h08 ; 0h0890: normal track data,  wait 3
   5BAF 42                 2150  .db 0h42 ; 0h0891: normal track data
   5BB0 00                 2151  .db 0h00 ; 0h0892: vol off, no pitch, no note, no instrument
   5BB1 42                 2152  .db 0h42 ; 0h0893: normal track data
   5BB2 00                 2153  .db 0h00 ; 0h0894: vol off, no pitch, no note, no instrument
   5BB3                    2154 trackDef20Test:
   5BB3 AA                 2155  .db 0hAA ; 0h0895: normal track data
   5BB4 E1                 2156  .db 0hE1 ; 0h0896: vol = 0hF (inverted), no pitch, no note, no instrument
   5BB5 00 00              2157  .dw 0h0000 ; 0h0897: pitch
   5BB7 02                 2158  .db 0h02 ; 0h0899: instrument
   5BB8 DA                 2159  .db 0hDA ; 0h089A: normal track data
   5BB9 49                 2160  .db 0h49 ; 0h089B: vol = 0hB (inverted), no pitch, no note, no instrument
   5BBA AA                 2161  .db 0hAA ; 0h089C: normal track data
   5BBB 41                 2162  .db 0h41 ; 0h089D: vol = 0hF (inverted), no pitch, no note, no instrument
   5BBC DA                 2163  .db 0hDA ; 0h089E: normal track data
   5BBD 49                 2164  .db 0h49 ; 0h089F: vol = 0hB (inverted), no pitch, no note, no instrument
   5BBE C2                 2165  .db 0hC2 ; 0h08A0: normal track data
   5BBF 41                 2166  .db 0h41 ; 0h08A1: vol = 0hF (inverted), no pitch, no note, no instrument
   5BC0 C4                 2167  .db 0hC4 ; 0h08A2: normal track data
   5BC1 40                 2168  .db 0h40 ; 0h08A3: vol off, no pitch, note, no instrument
   5BC2 C8                 2169  .db 0hC8 ; 0h08A4: normal track data
   5BC3 40                 2170  .db 0h40 ; 0h08A5: vol off, no pitch, note, no instrument
   5BC4 CC                 2171  .db 0hCC ; 0h08A6: normal track data
   5BC5 40                 2172  .db 0h40 ; 0h08A7: vol off, no pitch, note, no instrument
   5BC6 AA                 2173  .db 0hAA ; 0h08A8: normal track data
   5BC7 40                 2174  .db 0h40 ; 0h08A9: vol off, no pitch, note, no instrument
   5BC8 DA                 2175  .db 0hDA ; 0h08AA: normal track data
   5BC9 49                 2176  .db 0h49 ; 0h08AB: vol = 0hB (inverted), no pitch, no note, no instrument
   5BCA AA                 2177  .db 0hAA ; 0h08AC: normal track data
   5BCB 41                 2178  .db 0h41 ; 0h08AD: vol = 0hF (inverted), no pitch, no note, no instrument
   5BCC DA                 2179  .db 0hDA ; 0h08AE: normal track data
   5BCD 49                 2180  .db 0h49 ; 0h08AF: vol = 0hB (inverted), no pitch, no note, no instrument
   5BCE C2                 2181  .db 0hC2 ; 0h08B0: normal track data
   5BCF 41                 2182  .db 0h41 ; 0h08B1: vol = 0hF (inverted), no pitch, no note, no instrument
   5BD0 DA                 2183  .db 0hDA ; 0h08B2: normal track data
   5BD1 49                 2184  .db 0h49 ; 0h08B3: vol = 0hB (inverted), no pitch, no note, no instrument
   5BD2 C2                 2185  .db 0hC2 ; 0h08B4: normal track data
   5BD3 41                 2186  .db 0h41 ; 0h08B5: vol = 0hF (inverted), no pitch, no note, no instrument
   5BD4 DA                 2187  .db 0hDA ; 0h08B6: normal track data
   5BD5 49                 2188  .db 0h49 ; 0h08B7: vol = 0hB (inverted), no pitch, no note, no instrument
   5BD6 AA                 2189  .db 0hAA ; 0h08B8: normal track data
   5BD7 41                 2190  .db 0h41 ; 0h08B9: vol = 0hF (inverted), no pitch, no note, no instrument
   5BD8 DA                 2191  .db 0hDA ; 0h08BA: normal track data
   5BD9 49                 2192  .db 0h49 ; 0h08BB: vol = 0hB (inverted), no pitch, no note, no instrument
   5BDA AA                 2193  .db 0hAA ; 0h08BC: normal track data
   5BDB 41                 2194  .db 0h41 ; 0h08BD: vol = 0hF (inverted), no pitch, no note, no instrument
   5BDC DA                 2195  .db 0hDA ; 0h08BE: normal track data
   5BDD 49                 2196  .db 0h49 ; 0h08BF: vol = 0hB (inverted), no pitch, no note, no instrument
   5BDE AC                 2197  .db 0hAC ; 0h08C0: normal track data
   5BDF 41                 2198  .db 0h41 ; 0h08C1: vol = 0hF (inverted), no pitch, no note, no instrument
   5BE0 DC                 2199  .db 0hDC ; 0h08C2: normal track data
   5BE1 49                 2200  .db 0h49 ; 0h08C3: vol = 0hB (inverted), no pitch, no note, no instrument
   5BE2 AC                 2201  .db 0hAC ; 0h08C4: normal track data
   5BE3 41                 2202  .db 0h41 ; 0h08C5: vol = 0hF (inverted), no pitch, no note, no instrument
   5BE4 DC                 2203  .db 0hDC ; 0h08C6: normal track data
   5BE5 49                 2204  .db 0h49 ; 0h08C7: vol = 0hB (inverted), no pitch, no note, no instrument
   5BE6 AA                 2205  .db 0hAA ; 0h08C8: normal track data
   5BE7 41                 2206  .db 0h41 ; 0h08C9: vol = 0hF (inverted), no pitch, no note, no instrument
   5BE8 DA                 2207  .db 0hDA ; 0h08CA: normal track data
   5BE9 49                 2208  .db 0h49 ; 0h08CB: vol = 0hB (inverted), no pitch, no note, no instrument
   5BEA AA                 2209  .db 0hAA ; 0h08CC: normal track data
   5BEB 41                 2210  .db 0h41 ; 0h08CD: vol = 0hF (inverted), no pitch, no note, no instrument
   5BEC DA                 2211  .db 0hDA ; 0h08CE: normal track data
   5BED 49                 2212  .db 0h49 ; 0h08CF: vol = 0hB (inverted), no pitch, no note, no instrument
   5BEE C2                 2213  .db 0hC2 ; 0h08D0: normal track data
   5BEF 41                 2214  .db 0h41 ; 0h08D1: vol = 0hF (inverted), no pitch, no note, no instrument
   5BF0 DA                 2215  .db 0hDA ; 0h08D2: normal track data
   5BF1 49                 2216  .db 0h49 ; 0h08D3: vol = 0hB (inverted), no pitch, no note, no instrument
   5BF2 C2                 2217  .db 0hC2 ; 0h08D4: normal track data
   5BF3 41                 2218  .db 0h41 ; 0h08D5: vol = 0hF (inverted), no pitch, no note, no instrument
   5BF4 DA                 2219  .db 0hDA ; 0h08D6: normal track data
   5BF5 49                 2220  .db 0h49 ; 0h08D7: vol = 0hB (inverted), no pitch, no note, no instrument
   5BF6 AA                 2221  .db 0hAA ; 0h08D8: normal track data
   5BF7 41                 2222  .db 0h41 ; 0h08D9: vol = 0hF (inverted), no pitch, no note, no instrument
   5BF8 DA                 2223  .db 0hDA ; 0h08DA: normal track data
   5BF9 49                 2224  .db 0h49 ; 0h08DB: vol = 0hB (inverted), no pitch, no note, no instrument
   5BFA AA                 2225  .db 0hAA ; 0h08DC: normal track data
   5BFB 41                 2226  .db 0h41 ; 0h08DD: vol = 0hF (inverted), no pitch, no note, no instrument
   5BFC DA                 2227  .db 0hDA ; 0h08DE: normal track data
   5BFD 49                 2228  .db 0h49 ; 0h08DF: vol = 0hB (inverted), no pitch, no note, no instrument
   5BFE C2                 2229  .db 0hC2 ; 0h08E0: normal track data
   5BFF 41                 2230  .db 0h41 ; 0h08E1: vol = 0hF (inverted), no pitch, no note, no instrument
   5C00 C4                 2231  .db 0hC4 ; 0h08E2: normal track data
   5C01 40                 2232  .db 0h40 ; 0h08E3: vol off, no pitch, note, no instrument
   5C02 C8                 2233  .db 0hC8 ; 0h08E4: normal track data
   5C03 40                 2234  .db 0h40 ; 0h08E5: vol off, no pitch, note, no instrument
   5C04 CC                 2235  .db 0hCC ; 0h08E6: normal track data
   5C05 40                 2236  .db 0h40 ; 0h08E7: vol off, no pitch, note, no instrument
   5C06 AA                 2237  .db 0hAA ; 0h08E8: normal track data
   5C07 40                 2238  .db 0h40 ; 0h08E9: vol off, no pitch, note, no instrument
   5C08 DA                 2239  .db 0hDA ; 0h08EA: normal track data
   5C09 49                 2240  .db 0h49 ; 0h08EB: vol = 0hB (inverted), no pitch, no note, no instrument
   5C0A AA                 2241  .db 0hAA ; 0h08EC: normal track data
   5C0B 41                 2242  .db 0h41 ; 0h08ED: vol = 0hF (inverted), no pitch, no note, no instrument
   5C0C DA                 2243  .db 0hDA ; 0h08EE: normal track data
   5C0D 49                 2244  .db 0h49 ; 0h08EF: vol = 0hB (inverted), no pitch, no note, no instrument
   5C0E C2                 2245  .db 0hC2 ; 0h08F0: normal track data
   5C0F 41                 2246  .db 0h41 ; 0h08F1: vol = 0hF (inverted), no pitch, no note, no instrument
   5C10 DA                 2247  .db 0hDA ; 0h08F2: normal track data
   5C11 49                 2248  .db 0h49 ; 0h08F3: vol = 0hB (inverted), no pitch, no note, no instrument
   5C12 C2                 2249  .db 0hC2 ; 0h08F4: normal track data
   5C13 41                 2250  .db 0h41 ; 0h08F5: vol = 0hF (inverted), no pitch, no note, no instrument
   5C14 DA                 2251  .db 0hDA ; 0h08F6: normal track data
   5C15 49                 2252  .db 0h49 ; 0h08F7: vol = 0hB (inverted), no pitch, no note, no instrument
   5C16 AA                 2253  .db 0hAA ; 0h08F8: normal track data
   5C17 41                 2254  .db 0h41 ; 0h08F9: vol = 0hF (inverted), no pitch, no note, no instrument
   5C18 DA                 2255  .db 0hDA ; 0h08FA: normal track data
   5C19 49                 2256  .db 0h49 ; 0h08FB: vol = 0hB (inverted), no pitch, no note, no instrument
   5C1A AA                 2257  .db 0hAA ; 0h08FC: normal track data
   5C1B 41                 2258  .db 0h41 ; 0h08FD: vol = 0hF (inverted), no pitch, no note, no instrument
   5C1C 02                 2259  .db 0h02 ; 0h08FE: normal track data,  wait 0
   5C1D AC                 2260  .db 0hAC ; 0h08FF: normal track data
   5C1E 40                 2261  .db 0h40 ; 0h0900: vol off, no pitch, note, no instrument
   5C1F DC                 2262  .db 0hDC ; 0h0901: normal track data
   5C20 49                 2263  .db 0h49 ; 0h0902: vol = 0hB (inverted), no pitch, no note, no instrument
   5C21 AC                 2264  .db 0hAC ; 0h0903: normal track data
   5C22 41                 2265  .db 0h41 ; 0h0904: vol = 0hF (inverted), no pitch, no note, no instrument
   5C23 02                 2266  .db 0h02 ; 0h0905: normal track data,  wait 0
   5C24 AA                 2267  .db 0hAA ; 0h0906: normal track data
   5C25 C0                 2268  .db 0hC0 ; 0h0907: vol off, pitch, note, no instrument
   5C26 00 20              2269  .dw 0h0020 ; 0h0908: pitch
   5C28 DA                 2270  .db 0hDA ; 0h090A: normal track data
   5C29 49                 2271  .db 0h49 ; 0h090B: vol = 0hB (inverted), no pitch, no note, no instrument
   5C2A AA                 2272  .db 0hAA ; 0h090C: normal track data
   5C2B 41                 2273  .db 0h41 ; 0h090D: vol = 0hF (inverted), no pitch, no note, no instrument
   5C2C 42                 2274  .db 0h42 ; 0h090E: normal track data
   5C2D 00                 2275  .db 0h00 ; 0h090F: vol off, no pitch, no note, no instrument
   5C2E C2                 2276  .db 0hC2 ; 0h0910: normal track data
   5C2F C9                 2277  .db 0hC9 ; 0h0911: vol = 0hB (inverted), no pitch, no note, no instrument
   5C30 00 00              2278  .dw 0h0000 ; 0h0912: pitch
   5C32 DA                 2279  .db 0hDA ; 0h0914: normal track data
   5C33 41                 2280  .db 0h41 ; 0h0915: vol = 0hF (inverted), no pitch, no note, no instrument
   5C34 C2                 2281  .db 0hC2 ; 0h0916: normal track data
   5C35 49                 2282  .db 0h49 ; 0h0917: vol = 0hB (inverted), no pitch, no note, no instrument
   5C36 00                 2283  .db 0h00 ; 0h0918: track end signature found
   5C37                    2284 trackDef21Test:
   5C37 72                 2285  .db 0h72 ; 0h0919: normal track data
   5C38 E1                 2286  .db 0hE1 ; 0h091A: vol = 0hF (inverted), no pitch, no note, no instrument
   5C39 00 00              2287  .dw 0h0000 ; 0h091B: pitch
   5C3B 03                 2288  .db 0h03 ; 0h091D: instrument
   5C3C 72                 2289  .db 0h72 ; 0h091E: normal track data
   5C3D 40                 2290  .db 0h40 ; 0h091F: vol off, no pitch, note, no instrument
   5C3E 72                 2291  .db 0h72 ; 0h0920: normal track data
   5C3F 40                 2292  .db 0h40 ; 0h0921: vol off, no pitch, note, no instrument
   5C40 98                 2293  .db 0h98 ; 0h0922: normal track data
   5C41 60                 2294  .db 0h60 ; 0h0923: vol off, no pitch, note, instrument
   5C42 01                 2295  .db 0h01 ; 0h0924: instrument
   5C43 72                 2296  .db 0h72 ; 0h0925: normal track data
   5C44 60                 2297  .db 0h60 ; 0h0926: vol off, no pitch, note, instrument
   5C45 04                 2298  .db 0h04 ; 0h0927: instrument
   5C46 98                 2299  .db 0h98 ; 0h0928: normal track data
   5C47 60                 2300  .db 0h60 ; 0h0929: vol off, no pitch, note, instrument
   5C48 01                 2301  .db 0h01 ; 0h092A: instrument
   5C49 72                 2302  .db 0h72 ; 0h092B: normal track data
   5C4A 60                 2303  .db 0h60 ; 0h092C: vol off, no pitch, note, instrument
   5C4B 03                 2304  .db 0h03 ; 0h092D: instrument
   5C4C 98                 2305  .db 0h98 ; 0h092E: normal track data
   5C4D 60                 2306  .db 0h60 ; 0h092F: vol off, no pitch, note, instrument
   5C4E 01                 2307  .db 0h01 ; 0h0930: instrument
   5C4F 72                 2308  .db 0h72 ; 0h0931: normal track data
   5C50 60                 2309  .db 0h60 ; 0h0932: vol off, no pitch, note, instrument
   5C51 04                 2310  .db 0h04 ; 0h0933: instrument
   5C52 98                 2311  .db 0h98 ; 0h0934: normal track data
   5C53 60                 2312  .db 0h60 ; 0h0935: vol off, no pitch, note, instrument
   5C54 01                 2313  .db 0h01 ; 0h0936: instrument
   5C55 72                 2314  .db 0h72 ; 0h0937: normal track data
   5C56 60                 2315  .db 0h60 ; 0h0938: vol off, no pitch, note, instrument
   5C57 03                 2316  .db 0h03 ; 0h0939: instrument
   5C58 98                 2317  .db 0h98 ; 0h093A: normal track data
   5C59 60                 2318  .db 0h60 ; 0h093B: vol off, no pitch, note, instrument
   5C5A 01                 2319  .db 0h01 ; 0h093C: instrument
   5C5B 72                 2320  .db 0h72 ; 0h093D: normal track data
   5C5C 60                 2321  .db 0h60 ; 0h093E: vol off, no pitch, note, instrument
   5C5D 04                 2322  .db 0h04 ; 0h093F: instrument
   5C5E 98                 2323  .db 0h98 ; 0h0940: normal track data
   5C5F 60                 2324  .db 0h60 ; 0h0941: vol off, no pitch, note, instrument
   5C60 01                 2325  .db 0h01 ; 0h0942: instrument
   5C61 72                 2326  .db 0h72 ; 0h0943: normal track data
   5C62 60                 2327  .db 0h60 ; 0h0944: vol off, no pitch, note, instrument
   5C63 03                 2328  .db 0h03 ; 0h0945: instrument
   5C64 98                 2329  .db 0h98 ; 0h0946: normal track data
   5C65 60                 2330  .db 0h60 ; 0h0947: vol off, no pitch, note, instrument
   5C66 01                 2331  .db 0h01 ; 0h0948: instrument
   5C67 72                 2332  .db 0h72 ; 0h0949: normal track data
   5C68 60                 2333  .db 0h60 ; 0h094A: vol off, no pitch, note, instrument
   5C69 03                 2334  .db 0h03 ; 0h094B: instrument
   5C6A 72                 2335  .db 0h72 ; 0h094C: normal track data
   5C6B 40                 2336  .db 0h40 ; 0h094D: vol off, no pitch, note, no instrument
   5C6C 72                 2337  .db 0h72 ; 0h094E: normal track data
   5C6D 40                 2338  .db 0h40 ; 0h094F: vol off, no pitch, note, no instrument
   5C6E 98                 2339  .db 0h98 ; 0h0950: normal track data
   5C6F 60                 2340  .db 0h60 ; 0h0951: vol off, no pitch, note, instrument
   5C70 01                 2341  .db 0h01 ; 0h0952: instrument
   5C71 72                 2342  .db 0h72 ; 0h0953: normal track data
   5C72 60                 2343  .db 0h60 ; 0h0954: vol off, no pitch, note, instrument
   5C73 04                 2344  .db 0h04 ; 0h0955: instrument
   5C74 98                 2345  .db 0h98 ; 0h0956: normal track data
   5C75 60                 2346  .db 0h60 ; 0h0957: vol off, no pitch, note, instrument
   5C76 01                 2347  .db 0h01 ; 0h0958: instrument
   5C77 72                 2348  .db 0h72 ; 0h0959: normal track data
   5C78 60                 2349  .db 0h60 ; 0h095A: vol off, no pitch, note, instrument
   5C79 03                 2350  .db 0h03 ; 0h095B: instrument
   5C7A 98                 2351  .db 0h98 ; 0h095C: normal track data
   5C7B 60                 2352  .db 0h60 ; 0h095D: vol off, no pitch, note, instrument
   5C7C 01                 2353  .db 0h01 ; 0h095E: instrument
   5C7D 72                 2354  .db 0h72 ; 0h095F: normal track data
   5C7E 60                 2355  .db 0h60 ; 0h0960: vol off, no pitch, note, instrument
   5C7F 04                 2356  .db 0h04 ; 0h0961: instrument
   5C80 98                 2357  .db 0h98 ; 0h0962: normal track data
   5C81 60                 2358  .db 0h60 ; 0h0963: vol off, no pitch, note, instrument
   5C82 01                 2359  .db 0h01 ; 0h0964: instrument
   5C83 72                 2360  .db 0h72 ; 0h0965: normal track data
   5C84 60                 2361  .db 0h60 ; 0h0966: vol off, no pitch, note, instrument
   5C85 03                 2362  .db 0h03 ; 0h0967: instrument
   5C86 98                 2363  .db 0h98 ; 0h0968: normal track data
   5C87 60                 2364  .db 0h60 ; 0h0969: vol off, no pitch, note, instrument
   5C88 01                 2365  .db 0h01 ; 0h096A: instrument
   5C89 72                 2366  .db 0h72 ; 0h096B: normal track data
   5C8A 60                 2367  .db 0h60 ; 0h096C: vol off, no pitch, note, instrument
   5C8B 04                 2368  .db 0h04 ; 0h096D: instrument
   5C8C 98                 2369  .db 0h98 ; 0h096E: normal track data
   5C8D 60                 2370  .db 0h60 ; 0h096F: vol off, no pitch, note, instrument
   5C8E 01                 2371  .db 0h01 ; 0h0970: instrument
   5C8F 72                 2372  .db 0h72 ; 0h0971: normal track data
   5C90 60                 2373  .db 0h60 ; 0h0972: vol off, no pitch, note, instrument
   5C91 03                 2374  .db 0h03 ; 0h0973: instrument
   5C92 98                 2375  .db 0h98 ; 0h0974: normal track data
   5C93 60                 2376  .db 0h60 ; 0h0975: vol off, no pitch, note, instrument
   5C94 01                 2377  .db 0h01 ; 0h0976: instrument
   5C95 72                 2378  .db 0h72 ; 0h0977: normal track data
   5C96 60                 2379  .db 0h60 ; 0h0978: vol off, no pitch, note, instrument
   5C97 03                 2380  .db 0h03 ; 0h0979: instrument
   5C98 72                 2381  .db 0h72 ; 0h097A: normal track data
   5C99 40                 2382  .db 0h40 ; 0h097B: vol off, no pitch, note, no instrument
   5C9A 72                 2383  .db 0h72 ; 0h097C: normal track data
   5C9B 40                 2384  .db 0h40 ; 0h097D: vol off, no pitch, note, no instrument
   5C9C 98                 2385  .db 0h98 ; 0h097E: normal track data
   5C9D 60                 2386  .db 0h60 ; 0h097F: vol off, no pitch, note, instrument
   5C9E 01                 2387  .db 0h01 ; 0h0980: instrument
   5C9F 72                 2388  .db 0h72 ; 0h0981: normal track data
   5CA0 60                 2389  .db 0h60 ; 0h0982: vol off, no pitch, note, instrument
   5CA1 04                 2390  .db 0h04 ; 0h0983: instrument
   5CA2 98                 2391  .db 0h98 ; 0h0984: normal track data
   5CA3 60                 2392  .db 0h60 ; 0h0985: vol off, no pitch, note, instrument
   5CA4 01                 2393  .db 0h01 ; 0h0986: instrument
   5CA5 72                 2394  .db 0h72 ; 0h0987: normal track data
   5CA6 60                 2395  .db 0h60 ; 0h0988: vol off, no pitch, note, instrument
   5CA7 03                 2396  .db 0h03 ; 0h0989: instrument
   5CA8 98                 2397  .db 0h98 ; 0h098A: normal track data
   5CA9 60                 2398  .db 0h60 ; 0h098B: vol off, no pitch, note, instrument
   5CAA 01                 2399  .db 0h01 ; 0h098C: instrument
   5CAB 72                 2400  .db 0h72 ; 0h098D: normal track data
   5CAC 60                 2401  .db 0h60 ; 0h098E: vol off, no pitch, note, instrument
   5CAD 04                 2402  .db 0h04 ; 0h098F: instrument
   5CAE 98                 2403  .db 0h98 ; 0h0990: normal track data
   5CAF 60                 2404  .db 0h60 ; 0h0991: vol off, no pitch, note, instrument
   5CB0 01                 2405  .db 0h01 ; 0h0992: instrument
   5CB1 72                 2406  .db 0h72 ; 0h0993: normal track data
   5CB2 60                 2407  .db 0h60 ; 0h0994: vol off, no pitch, note, instrument
   5CB3 03                 2408  .db 0h03 ; 0h0995: instrument
   5CB4 98                 2409  .db 0h98 ; 0h0996: normal track data
   5CB5 60                 2410  .db 0h60 ; 0h0997: vol off, no pitch, note, instrument
   5CB6 01                 2411  .db 0h01 ; 0h0998: instrument
   5CB7 72                 2412  .db 0h72 ; 0h0999: normal track data
   5CB8 60                 2413  .db 0h60 ; 0h099A: vol off, no pitch, note, instrument
   5CB9 04                 2414  .db 0h04 ; 0h099B: instrument
   5CBA 98                 2415  .db 0h98 ; 0h099C: normal track data
   5CBB 60                 2416  .db 0h60 ; 0h099D: vol off, no pitch, note, instrument
   5CBC 01                 2417  .db 0h01 ; 0h099E: instrument
   5CBD 72                 2418  .db 0h72 ; 0h099F: normal track data
   5CBE 60                 2419  .db 0h60 ; 0h09A0: vol off, no pitch, note, instrument
   5CBF 03                 2420  .db 0h03 ; 0h09A1: instrument
   5CC0 98                 2421  .db 0h98 ; 0h09A2: normal track data
   5CC1 60                 2422  .db 0h60 ; 0h09A3: vol off, no pitch, note, instrument
   5CC2 01                 2423  .db 0h01 ; 0h09A4: instrument
   5CC3 72                 2424  .db 0h72 ; 0h09A5: normal track data
   5CC4 60                 2425  .db 0h60 ; 0h09A6: vol off, no pitch, note, instrument
   5CC5 03                 2426  .db 0h03 ; 0h09A7: instrument
   5CC6 72                 2427  .db 0h72 ; 0h09A8: normal track data
   5CC7 40                 2428  .db 0h40 ; 0h09A9: vol off, no pitch, note, no instrument
   5CC8 72                 2429  .db 0h72 ; 0h09AA: normal track data
   5CC9 40                 2430  .db 0h40 ; 0h09AB: vol off, no pitch, note, no instrument
   5CCA 42                 2431  .db 0h42 ; 0h09AC: normal track data
   5CCB 00                 2432  .db 0h00 ; 0h09AD: vol off, no pitch, no note, no instrument
   5CCC 72                 2433  .db 0h72 ; 0h09AE: normal track data
   5CCD 40                 2434  .db 0h40 ; 0h09AF: vol off, no pitch, note, no instrument
   5CCE 72                 2435  .db 0h72 ; 0h09B0: normal track data
   5CCF 40                 2436  .db 0h40 ; 0h09B1: vol off, no pitch, note, no instrument
   5CD0 72                 2437  .db 0h72 ; 0h09B2: normal track data
   5CD1 40                 2438  .db 0h40 ; 0h09B3: vol off, no pitch, note, no instrument
   5CD2 42                 2439  .db 0h42 ; 0h09B4: normal track data
   5CD3 00                 2440  .db 0h00 ; 0h09B5: vol off, no pitch, no note, no instrument
   5CD4 72                 2441  .db 0h72 ; 0h09B6: normal track data
   5CD5 40                 2442  .db 0h40 ; 0h09B7: vol off, no pitch, note, no instrument
   5CD6 72                 2443  .db 0h72 ; 0h09B8: normal track data
   5CD7 40                 2444  .db 0h40 ; 0h09B9: vol off, no pitch, note, no instrument
   5CD8 72                 2445  .db 0h72 ; 0h09BA: normal track data
   5CD9 40                 2446  .db 0h40 ; 0h09BB: vol off, no pitch, note, no instrument
   5CDA 42                 2447  .db 0h42 ; 0h09BC: normal track data
   5CDB 00                 2448  .db 0h00 ; 0h09BD: vol off, no pitch, no note, no instrument
   5CDC 72                 2449  .db 0h72 ; 0h09BE: normal track data
   5CDD 40                 2450  .db 0h40 ; 0h09BF: vol off, no pitch, note, no instrument
   5CDE 72                 2451  .db 0h72 ; 0h09C0: normal track data
   5CDF 40                 2452  .db 0h40 ; 0h09C1: vol off, no pitch, note, no instrument
   5CE0 72                 2453  .db 0h72 ; 0h09C2: normal track data
   5CE1 40                 2454  .db 0h40 ; 0h09C3: vol off, no pitch, note, no instrument
   5CE2 42                 2455  .db 0h42 ; 0h09C4: normal track data
   5CE3 00                 2456  .db 0h00 ; 0h09C5: vol off, no pitch, no note, no instrument
   5CE4                    2457 trackDef24Test:
   5CE4 92                 2458  .db 0h92 ; 0h09C6: normal track data
   5CE5 F3                 2459  .db 0hF3 ; 0h09C7: vol = 0h6 (inverted), no pitch, no note, no instrument
   5CE6 00 00              2460  .dw 0h0000 ; 0h09C8: pitch
   5CE8 05                 2461  .db 0h05 ; 0h09CA: instrument
   5CE9 AA                 2462  .db 0hAA ; 0h09CB: normal track data
   5CEA 40                 2463  .db 0h40 ; 0h09CC: vol off, no pitch, note, no instrument
   5CEB AA                 2464  .db 0hAA ; 0h09CD: normal track data
   5CEC 40                 2465  .db 0h40 ; 0h09CE: vol off, no pitch, note, no instrument
   5CED 92                 2466  .db 0h92 ; 0h09CF: normal track data
   5CEE 40                 2467  .db 0h40 ; 0h09D0: vol off, no pitch, note, no instrument
   5CEF 92                 2468  .db 0h92 ; 0h09D1: normal track data
   5CF0 40                 2469  .db 0h40 ; 0h09D2: vol off, no pitch, note, no instrument
   5CF1 94                 2470  .db 0h94 ; 0h09D3: normal track data
   5CF2 40                 2471  .db 0h40 ; 0h09D4: vol off, no pitch, note, no instrument
   5CF3 98                 2472  .db 0h98 ; 0h09D5: normal track data
   5CF4 40                 2473  .db 0h40 ; 0h09D6: vol off, no pitch, note, no instrument
   5CF5 9C                 2474  .db 0h9C ; 0h09D7: normal track data
   5CF6 40                 2475  .db 0h40 ; 0h09D8: vol off, no pitch, note, no instrument
   5CF7 92                 2476  .db 0h92 ; 0h09D9: normal track data
   5CF8 40                 2477  .db 0h40 ; 0h09DA: vol off, no pitch, note, no instrument
   5CF9 AA                 2478  .db 0hAA ; 0h09DB: normal track data
   5CFA 40                 2479  .db 0h40 ; 0h09DC: vol off, no pitch, note, no instrument
   5CFB 08                 2480  .db 0h08 ; 0h09DD: normal track data,  wait 3
   5CFC AA                 2481  .db 0hAA ; 0h09DE: normal track data
   5CFD 40                 2482  .db 0h40 ; 0h09DF: vol off, no pitch, note, no instrument
   5CFE 92                 2483  .db 0h92 ; 0h09E0: normal track data
   5CFF 40                 2484  .db 0h40 ; 0h09E1: vol off, no pitch, note, no instrument
   5D00 92                 2485  .db 0h92 ; 0h09E2: normal track data
   5D01 40                 2486  .db 0h40 ; 0h09E3: vol off, no pitch, note, no instrument
   5D02 AA                 2487  .db 0hAA ; 0h09E4: normal track data
   5D03 40                 2488  .db 0h40 ; 0h09E5: vol off, no pitch, note, no instrument
   5D04 AA                 2489  .db 0hAA ; 0h09E6: normal track data
   5D05 40                 2490  .db 0h40 ; 0h09E7: vol off, no pitch, note, no instrument
   5D06 92                 2491  .db 0h92 ; 0h09E8: normal track data
   5D07 40                 2492  .db 0h40 ; 0h09E9: vol off, no pitch, note, no instrument
   5D08 94                 2493  .db 0h94 ; 0h09EA: normal track data
   5D09 40                 2494  .db 0h40 ; 0h09EB: vol off, no pitch, note, no instrument
   5D0A AC                 2495  .db 0hAC ; 0h09EC: normal track data
   5D0B 40                 2496  .db 0h40 ; 0h09ED: vol off, no pitch, note, no instrument
   5D0C AC                 2497  .db 0hAC ; 0h09EE: normal track data
   5D0D 40                 2498  .db 0h40 ; 0h09EF: vol off, no pitch, note, no instrument
   5D0E 94                 2499  .db 0h94 ; 0h09F0: normal track data
   5D0F 40                 2500  .db 0h40 ; 0h09F1: vol off, no pitch, note, no instrument
   5D10 92                 2501  .db 0h92 ; 0h09F2: normal track data
   5D11 40                 2502  .db 0h40 ; 0h09F3: vol off, no pitch, note, no instrument
   5D12 AA                 2503  .db 0hAA ; 0h09F4: normal track data
   5D13 40                 2504  .db 0h40 ; 0h09F5: vol off, no pitch, note, no instrument
   5D14 08                 2505  .db 0h08 ; 0h09F6: normal track data,  wait 3
   5D15 AA                 2506  .db 0hAA ; 0h09F7: normal track data
   5D16 40                 2507  .db 0h40 ; 0h09F8: vol off, no pitch, note, no instrument
   5D17 92                 2508  .db 0h92 ; 0h09F9: normal track data
   5D18 40                 2509  .db 0h40 ; 0h09FA: vol off, no pitch, note, no instrument
   5D19 92                 2510  .db 0h92 ; 0h09FB: normal track data
   5D1A 40                 2511  .db 0h40 ; 0h09FC: vol off, no pitch, note, no instrument
   5D1B AA                 2512  .db 0hAA ; 0h09FD: normal track data
   5D1C 40                 2513  .db 0h40 ; 0h09FE: vol off, no pitch, note, no instrument
   5D1D AA                 2514  .db 0hAA ; 0h09FF: normal track data
   5D1E 40                 2515  .db 0h40 ; 0h0A00: vol off, no pitch, note, no instrument
   5D1F 92                 2516  .db 0h92 ; 0h0A01: normal track data
   5D20 40                 2517  .db 0h40 ; 0h0A02: vol off, no pitch, note, no instrument
   5D21 92                 2518  .db 0h92 ; 0h0A03: normal track data
   5D22 40                 2519  .db 0h40 ; 0h0A04: vol off, no pitch, note, no instrument
   5D23 94                 2520  .db 0h94 ; 0h0A05: normal track data
   5D24 40                 2521  .db 0h40 ; 0h0A06: vol off, no pitch, note, no instrument
   5D25 98                 2522  .db 0h98 ; 0h0A07: normal track data
   5D26 40                 2523  .db 0h40 ; 0h0A08: vol off, no pitch, note, no instrument
   5D27 9C                 2524  .db 0h9C ; 0h0A09: normal track data
   5D28 40                 2525  .db 0h40 ; 0h0A0A: vol off, no pitch, note, no instrument
   5D29 92                 2526  .db 0h92 ; 0h0A0B: normal track data
   5D2A 40                 2527  .db 0h40 ; 0h0A0C: vol off, no pitch, note, no instrument
   5D2B AA                 2528  .db 0hAA ; 0h0A0D: normal track data
   5D2C 40                 2529  .db 0h40 ; 0h0A0E: vol off, no pitch, note, no instrument
   5D2D 08                 2530  .db 0h08 ; 0h0A0F: normal track data,  wait 3
   5D2E AA                 2531  .db 0hAA ; 0h0A10: normal track data
   5D2F 40                 2532  .db 0h40 ; 0h0A11: vol off, no pitch, note, no instrument
   5D30 92                 2533  .db 0h92 ; 0h0A12: normal track data
   5D31 40                 2534  .db 0h40 ; 0h0A13: vol off, no pitch, note, no instrument
   5D32 92                 2535  .db 0h92 ; 0h0A14: normal track data
   5D33 40                 2536  .db 0h40 ; 0h0A15: vol off, no pitch, note, no instrument
   5D34 AA                 2537  .db 0hAA ; 0h0A16: normal track data
   5D35 40                 2538  .db 0h40 ; 0h0A17: vol off, no pitch, note, no instrument
   5D36 AA                 2539  .db 0hAA ; 0h0A18: normal track data
   5D37 40                 2540  .db 0h40 ; 0h0A19: vol off, no pitch, note, no instrument
   5D38 42                 2541  .db 0h42 ; 0h0A1A: normal track data
   5D39 00                 2542  .db 0h00 ; 0h0A1B: vol off, no pitch, no note, no instrument
   5D3A 94                 2543  .db 0h94 ; 0h0A1C: normal track data
   5D3B 40                 2544  .db 0h40 ; 0h0A1D: vol off, no pitch, note, no instrument
   5D3C AC                 2545  .db 0hAC ; 0h0A1E: normal track data
   5D3D 40                 2546  .db 0h40 ; 0h0A1F: vol off, no pitch, note, no instrument
   5D3E AC                 2547  .db 0hAC ; 0h0A20: normal track data
   5D3F 40                 2548  .db 0h40 ; 0h0A21: vol off, no pitch, note, no instrument
   5D40 42                 2549  .db 0h42 ; 0h0A22: normal track data
   5D41 00                 2550  .db 0h00 ; 0h0A23: vol off, no pitch, no note, no instrument
   5D42 92                 2551  .db 0h92 ; 0h0A24: normal track data
   5D43 40                 2552  .db 0h40 ; 0h0A25: vol off, no pitch, note, no instrument
   5D44 AA                 2553  .db 0hAA ; 0h0A26: normal track data
   5D45 40                 2554  .db 0h40 ; 0h0A27: vol off, no pitch, note, no instrument
   5D46 08                 2555  .db 0h08 ; 0h0A28: normal track data,  wait 3
   5D47 AA                 2556  .db 0hAA ; 0h0A29: normal track data
   5D48 40                 2557  .db 0h40 ; 0h0A2A: vol off, no pitch, note, no instrument
   5D49 00                 2558  .db 0h00 ; 0h0A2B: track end signature found
   5D4A                    2559 trackDef26Test:
   5D4A 92                 2560  .db 0h92 ; 0h0A2C: normal track data
   5D4B F3                 2561  .db 0hF3 ; 0h0A2D: vol = 0h6 (inverted), no pitch, no note, no instrument
   5D4C 00 00              2562  .dw 0h0000 ; 0h0A2E: pitch
   5D4E 05                 2563  .db 0h05 ; 0h0A30: instrument
   5D4F AA                 2564  .db 0hAA ; 0h0A31: normal track data
   5D50 40                 2565  .db 0h40 ; 0h0A32: vol off, no pitch, note, no instrument
   5D51 AA                 2566  .db 0hAA ; 0h0A33: normal track data
   5D52 40                 2567  .db 0h40 ; 0h0A34: vol off, no pitch, note, no instrument
   5D53 92                 2568  .db 0h92 ; 0h0A35: normal track data
   5D54 40                 2569  .db 0h40 ; 0h0A36: vol off, no pitch, note, no instrument
   5D55 92                 2570  .db 0h92 ; 0h0A37: normal track data
   5D56 40                 2571  .db 0h40 ; 0h0A38: vol off, no pitch, note, no instrument
   5D57 94                 2572  .db 0h94 ; 0h0A39: normal track data
   5D58 40                 2573  .db 0h40 ; 0h0A3A: vol off, no pitch, note, no instrument
   5D59 98                 2574  .db 0h98 ; 0h0A3B: normal track data
   5D5A 40                 2575  .db 0h40 ; 0h0A3C: vol off, no pitch, note, no instrument
   5D5B 9C                 2576  .db 0h9C ; 0h0A3D: normal track data
   5D5C 40                 2577  .db 0h40 ; 0h0A3E: vol off, no pitch, note, no instrument
   5D5D 92                 2578  .db 0h92 ; 0h0A3F: normal track data
   5D5E 40                 2579  .db 0h40 ; 0h0A40: vol off, no pitch, note, no instrument
   5D5F AA                 2580  .db 0hAA ; 0h0A41: normal track data
   5D60 40                 2581  .db 0h40 ; 0h0A42: vol off, no pitch, note, no instrument
   5D61 08                 2582  .db 0h08 ; 0h0A43: normal track data,  wait 3
   5D62 AA                 2583  .db 0hAA ; 0h0A44: normal track data
   5D63 40                 2584  .db 0h40 ; 0h0A45: vol off, no pitch, note, no instrument
   5D64 92                 2585  .db 0h92 ; 0h0A46: normal track data
   5D65 40                 2586  .db 0h40 ; 0h0A47: vol off, no pitch, note, no instrument
   5D66 92                 2587  .db 0h92 ; 0h0A48: normal track data
   5D67 40                 2588  .db 0h40 ; 0h0A49: vol off, no pitch, note, no instrument
   5D68 AA                 2589  .db 0hAA ; 0h0A4A: normal track data
   5D69 40                 2590  .db 0h40 ; 0h0A4B: vol off, no pitch, note, no instrument
   5D6A AA                 2591  .db 0hAA ; 0h0A4C: normal track data
   5D6B 40                 2592  .db 0h40 ; 0h0A4D: vol off, no pitch, note, no instrument
   5D6C 92                 2593  .db 0h92 ; 0h0A4E: normal track data
   5D6D 40                 2594  .db 0h40 ; 0h0A4F: vol off, no pitch, note, no instrument
   5D6E 94                 2595  .db 0h94 ; 0h0A50: normal track data
   5D6F 40                 2596  .db 0h40 ; 0h0A51: vol off, no pitch, note, no instrument
   5D70 AC                 2597  .db 0hAC ; 0h0A52: normal track data
   5D71 40                 2598  .db 0h40 ; 0h0A53: vol off, no pitch, note, no instrument
   5D72 AC                 2599  .db 0hAC ; 0h0A54: normal track data
   5D73 40                 2600  .db 0h40 ; 0h0A55: vol off, no pitch, note, no instrument
   5D74 94                 2601  .db 0h94 ; 0h0A56: normal track data
   5D75 40                 2602  .db 0h40 ; 0h0A57: vol off, no pitch, note, no instrument
   5D76 92                 2603  .db 0h92 ; 0h0A58: normal track data
   5D77 40                 2604  .db 0h40 ; 0h0A59: vol off, no pitch, note, no instrument
   5D78 AA                 2605  .db 0hAA ; 0h0A5A: normal track data
   5D79 40                 2606  .db 0h40 ; 0h0A5B: vol off, no pitch, note, no instrument
   5D7A 08                 2607  .db 0h08 ; 0h0A5C: normal track data,  wait 3
   5D7B AA                 2608  .db 0hAA ; 0h0A5D: normal track data
   5D7C 40                 2609  .db 0h40 ; 0h0A5E: vol off, no pitch, note, no instrument
   5D7D 92                 2610  .db 0h92 ; 0h0A5F: normal track data
   5D7E 40                 2611  .db 0h40 ; 0h0A60: vol off, no pitch, note, no instrument
   5D7F 92                 2612  .db 0h92 ; 0h0A61: normal track data
   5D80 40                 2613  .db 0h40 ; 0h0A62: vol off, no pitch, note, no instrument
   5D81 AA                 2614  .db 0hAA ; 0h0A63: normal track data
   5D82 40                 2615  .db 0h40 ; 0h0A64: vol off, no pitch, note, no instrument
   5D83 AA                 2616  .db 0hAA ; 0h0A65: normal track data
   5D84 40                 2617  .db 0h40 ; 0h0A66: vol off, no pitch, note, no instrument
   5D85 92                 2618  .db 0h92 ; 0h0A67: normal track data
   5D86 40                 2619  .db 0h40 ; 0h0A68: vol off, no pitch, note, no instrument
   5D87 92                 2620  .db 0h92 ; 0h0A69: normal track data
   5D88 40                 2621  .db 0h40 ; 0h0A6A: vol off, no pitch, note, no instrument
   5D89 94                 2622  .db 0h94 ; 0h0A6B: normal track data
   5D8A 40                 2623  .db 0h40 ; 0h0A6C: vol off, no pitch, note, no instrument
   5D8B 98                 2624  .db 0h98 ; 0h0A6D: normal track data
   5D8C 40                 2625  .db 0h40 ; 0h0A6E: vol off, no pitch, note, no instrument
   5D8D 9C                 2626  .db 0h9C ; 0h0A6F: normal track data
   5D8E 40                 2627  .db 0h40 ; 0h0A70: vol off, no pitch, note, no instrument
   5D8F 92                 2628  .db 0h92 ; 0h0A71: normal track data
   5D90 40                 2629  .db 0h40 ; 0h0A72: vol off, no pitch, note, no instrument
   5D91 AA                 2630  .db 0hAA ; 0h0A73: normal track data
   5D92 40                 2631  .db 0h40 ; 0h0A74: vol off, no pitch, note, no instrument
   5D93 08                 2632  .db 0h08 ; 0h0A75: normal track data,  wait 3
   5D94 AA                 2633  .db 0hAA ; 0h0A76: normal track data
   5D95 40                 2634  .db 0h40 ; 0h0A77: vol off, no pitch, note, no instrument
   5D96 92                 2635  .db 0h92 ; 0h0A78: normal track data
   5D97 40                 2636  .db 0h40 ; 0h0A79: vol off, no pitch, note, no instrument
   5D98 92                 2637  .db 0h92 ; 0h0A7A: normal track data
   5D99 40                 2638  .db 0h40 ; 0h0A7B: vol off, no pitch, note, no instrument
   5D9A AA                 2639  .db 0hAA ; 0h0A7C: normal track data
   5D9B 40                 2640  .db 0h40 ; 0h0A7D: vol off, no pitch, note, no instrument
   5D9C AA                 2641  .db 0hAA ; 0h0A7E: normal track data
   5D9D 40                 2642  .db 0h40 ; 0h0A7F: vol off, no pitch, note, no instrument
   5D9E 42                 2643  .db 0h42 ; 0h0A80: normal track data
   5D9F 00                 2644  .db 0h00 ; 0h0A81: vol off, no pitch, no note, no instrument
   5DA0 94                 2645  .db 0h94 ; 0h0A82: normal track data
   5DA1 40                 2646  .db 0h40 ; 0h0A83: vol off, no pitch, note, no instrument
   5DA2 AC                 2647  .db 0hAC ; 0h0A84: normal track data
   5DA3 40                 2648  .db 0h40 ; 0h0A85: vol off, no pitch, note, no instrument
   5DA4 AC                 2649  .db 0hAC ; 0h0A86: normal track data
   5DA5 40                 2650  .db 0h40 ; 0h0A87: vol off, no pitch, note, no instrument
   5DA6 42                 2651  .db 0h42 ; 0h0A88: normal track data
   5DA7 00                 2652  .db 0h00 ; 0h0A89: vol off, no pitch, no note, no instrument
   5DA8 92                 2653  .db 0h92 ; 0h0A8A: normal track data
   5DA9 40                 2654  .db 0h40 ; 0h0A8B: vol off, no pitch, note, no instrument
   5DAA 7A                 2655  .db 0h7A ; 0h0A8C: normal track data
   5DAB 40                 2656  .db 0h40 ; 0h0A8D: vol off, no pitch, note, no instrument
   5DAC 8E                 2657  .db 0h8E ; 0h0A8E: normal track data,  note: D3
   5DAD 55                 2658  .db 0h55 ; 0h0A8F: vol = 0h5 (inverted), no pitch, no note, no instrument
   5DAE 8A                 2659  .db 0h8A ; 0h0A90: normal track data,  note: C3
   5DAF 57                 2660  .db 0h57 ; 0h0A91: vol = 0h4 (inverted), no pitch, no note, no instrument
   5DB0 88                 2661  .db 0h88 ; 0h0A92: normal track data
   5DB1 59                 2662  .db 0h59 ; 0h0A93: vol = 0h3 (inverted), no pitch, no note, no instrument
   5DB2 84                 2663  .db 0h84 ; 0h0A94: normal track data
   5DB3 5B                 2664  .db 0h5B ; 0h0A95: vol = 0h2 (inverted), no pitch, no note, no instrument
   5DB4 80                 2665  .db 0h80 ; 0h0A96: normal track data,  note: G2
   5DB5 5D                 2666  .db 0h5D ; 0h0A97: vol = 0h1 (inverted), no pitch, no note, no instrument
   5DB6 7C                 2667  .db 0h7C ; 0h0A98: normal track data
   5DB7 40                 2668  .db 0h40 ; 0h0A99: vol off, no pitch, note, no instrument
   5DB8                    2669 trackDef27Test:
   5DB8 7A                 2670  .db 0h7A ; 0h0A9A: normal track data
   5DB9 F3                 2671  .db 0hF3 ; 0h0A9B: vol = 0h6 (inverted), no pitch, no note, no instrument
   5DBA 00 00              2672  .dw 0h0000 ; 0h0A9C: pitch
   5DBC 05                 2673  .db 0h05 ; 0h0A9E: instrument
   5DBD 0A                 2674  .db 0h0A ; 0h0A9F: normal track data,  wait 4
   5DBE 92                 2675  .db 0h92 ; 0h0AA0: normal track data
   5DBF 40                 2676  .db 0h40 ; 0h0AA1: vol off, no pitch, note, no instrument
   5DC0 02                 2677  .db 0h02 ; 0h0AA2: normal track data,  wait 0
   5DC1 7A                 2678  .db 0h7A ; 0h0AA3: normal track data
   5DC2 40                 2679  .db 0h40 ; 0h0AA4: vol off, no pitch, note, no instrument
   5DC3 0A                 2680  .db 0h0A ; 0h0AA5: normal track data,  wait 4
   5DC4 92                 2681  .db 0h92 ; 0h0AA6: normal track data
   5DC5 40                 2682  .db 0h40 ; 0h0AA7: vol off, no pitch, note, no instrument
   5DC6 02                 2683  .db 0h02 ; 0h0AA8: normal track data,  wait 0
   5DC7 7C                 2684  .db 0h7C ; 0h0AA9: normal track data
   5DC8 40                 2685  .db 0h40 ; 0h0AAA: vol off, no pitch, note, no instrument
   5DC9 0A                 2686  .db 0h0A ; 0h0AAB: normal track data,  wait 4
   5DCA 94                 2687  .db 0h94 ; 0h0AAC: normal track data
   5DCB 40                 2688  .db 0h40 ; 0h0AAD: vol off, no pitch, note, no instrument
   5DCC 02                 2689  .db 0h02 ; 0h0AAE: normal track data,  wait 0
   5DCD 80                 2690  .db 0h80 ; 0h0AAF: normal track data
   5DCE 40                 2691  .db 0h40 ; 0h0AB0: vol off, no pitch, note, no instrument
   5DCF 0A                 2692  .db 0h0A ; 0h0AB1: normal track data,  wait 4
   5DD0 98                 2693  .db 0h98 ; 0h0AB2: normal track data
   5DD1 40                 2694  .db 0h40 ; 0h0AB3: vol off, no pitch, note, no instrument
   5DD2 02                 2695  .db 0h02 ; 0h0AB4: normal track data,  wait 0
   5DD3 7A                 2696  .db 0h7A ; 0h0AB5: normal track data
   5DD4 40                 2697  .db 0h40 ; 0h0AB6: vol off, no pitch, note, no instrument
   5DD5 0A                 2698  .db 0h0A ; 0h0AB7: normal track data,  wait 4
   5DD6 92                 2699  .db 0h92 ; 0h0AB8: normal track data
   5DD7 40                 2700  .db 0h40 ; 0h0AB9: vol off, no pitch, note, no instrument
   5DD8 02                 2701  .db 0h02 ; 0h0ABA: normal track data,  wait 0
   5DD9 7A                 2702  .db 0h7A ; 0h0ABB: normal track data
   5DDA 40                 2703  .db 0h40 ; 0h0ABC: vol off, no pitch, note, no instrument
   5DDB 0A                 2704  .db 0h0A ; 0h0ABD: normal track data,  wait 4
   5DDC 92                 2705  .db 0h92 ; 0h0ABE: normal track data
   5DDD 40                 2706  .db 0h40 ; 0h0ABF: vol off, no pitch, note, no instrument
   5DDE 02                 2707  .db 0h02 ; 0h0AC0: normal track data,  wait 0
   5DDF 7C                 2708  .db 0h7C ; 0h0AC1: normal track data
   5DE0 40                 2709  .db 0h40 ; 0h0AC2: vol off, no pitch, note, no instrument
   5DE1 0A                 2710  .db 0h0A ; 0h0AC3: normal track data,  wait 4
   5DE2 94                 2711  .db 0h94 ; 0h0AC4: normal track data
   5DE3 40                 2712  .db 0h40 ; 0h0AC5: vol off, no pitch, note, no instrument
   5DE4 02                 2713  .db 0h02 ; 0h0AC6: normal track data,  wait 0
   5DE5 80                 2714  .db 0h80 ; 0h0AC7: normal track data
   5DE6 40                 2715  .db 0h40 ; 0h0AC8: vol off, no pitch, note, no instrument
   5DE7 0A                 2716  .db 0h0A ; 0h0AC9: normal track data,  wait 4
   5DE8 98                 2717  .db 0h98 ; 0h0ACA: normal track data
   5DE9 40                 2718  .db 0h40 ; 0h0ACB: vol off, no pitch, note, no instrument
   5DEA 00                 2719  .db 0h00 ; 0h0ACC: track end signature found
   5DEB                    2720 trackDef29Test:
   5DEB 72                 2721  .db 0h72 ; 0h0ACD: normal track data
   5DEC E0                 2722  .db 0hE0 ; 0h0ACE: vol off, pitch, note, instrument
   5DED 00 00              2723  .dw 0h0000 ; 0h0ACF: pitch
   5DEF 01                 2724  .db 0h01 ; 0h0AD1: instrument
   5DF0 02                 2725  .db 0h02 ; 0h0AD2: normal track data,  wait 0
   5DF1 42                 2726  .db 0h42 ; 0h0AD3: normal track data
   5DF2 00                 2727  .db 0h00 ; 0h0AD4: vol off, no pitch, no note, no instrument
   5DF3 02                 2728  .db 0h02 ; 0h0AD5: normal track data,  wait 0
   5DF4 42                 2729  .db 0h42 ; 0h0AD6: normal track data
   5DF5 00                 2730  .db 0h00 ; 0h0AD7: vol off, no pitch, no note, no instrument
   5DF6 02                 2731  .db 0h02 ; 0h0AD8: normal track data,  wait 0
   5DF7 33                 2732  .db 0h33 ; 0h0AD9: full optimization, no escape: C2
   5DF8 02                 2733  .db 0h02 ; 0h0ADA: normal track data,  wait 0
   5DF9 33                 2734  .db 0h33 ; 0h0ADB: full optimization, no escape: C2
   5DFA 02                 2735  .db 0h02 ; 0h0ADC: normal track data,  wait 0
   5DFB 42                 2736  .db 0h42 ; 0h0ADD: normal track data
   5DFC 00                 2737  .db 0h00 ; 0h0ADE: vol off, no pitch, no note, no instrument
   5DFD 02                 2738  .db 0h02 ; 0h0ADF: normal track data,  wait 0
   5DFE 42                 2739  .db 0h42 ; 0h0AE0: normal track data
   5DFF 00                 2740  .db 0h00 ; 0h0AE1: vol off, no pitch, no note, no instrument
   5E00 02                 2741  .db 0h02 ; 0h0AE2: normal track data,  wait 0
   5E01 33                 2742  .db 0h33 ; 0h0AE3: full optimization, no escape: C2
   5E02 02                 2743  .db 0h02 ; 0h0AE4: normal track data,  wait 0
   5E03 33                 2744  .db 0h33 ; 0h0AE5: full optimization, no escape: C2
   5E04 02                 2745  .db 0h02 ; 0h0AE6: normal track data,  wait 0
   5E05 42                 2746  .db 0h42 ; 0h0AE7: normal track data
   5E06 00                 2747  .db 0h00 ; 0h0AE8: vol off, no pitch, no note, no instrument
   5E07 02                 2748  .db 0h02 ; 0h0AE9: normal track data,  wait 0
   5E08 42                 2749  .db 0h42 ; 0h0AEA: normal track data
   5E09 00                 2750  .db 0h00 ; 0h0AEB: vol off, no pitch, no note, no instrument
   5E0A 02                 2751  .db 0h02 ; 0h0AEC: normal track data,  wait 0
   5E0B 33                 2752  .db 0h33 ; 0h0AED: full optimization, no escape: C2
   5E0C 02                 2753  .db 0h02 ; 0h0AEE: normal track data,  wait 0
   5E0D 33                 2754  .db 0h33 ; 0h0AEF: full optimization, no escape: C2
   5E0E 02                 2755  .db 0h02 ; 0h0AF0: normal track data,  wait 0
   5E0F 42                 2756  .db 0h42 ; 0h0AF1: normal track data
   5E10 00                 2757  .db 0h00 ; 0h0AF2: vol off, no pitch, no note, no instrument
   5E11 02                 2758  .db 0h02 ; 0h0AF3: normal track data,  wait 0
   5E12 42                 2759  .db 0h42 ; 0h0AF4: normal track data
   5E13 00                 2760  .db 0h00 ; 0h0AF5: vol off, no pitch, no note, no instrument
   5E14 02                 2761  .db 0h02 ; 0h0AF6: normal track data,  wait 0
   5E15 33                 2762  .db 0h33 ; 0h0AF7: full optimization, no escape: C2
   5E16 02                 2763  .db 0h02 ; 0h0AF8: normal track data,  wait 0
   5E17 33                 2764  .db 0h33 ; 0h0AF9: full optimization, no escape: C2
   5E18 02                 2765  .db 0h02 ; 0h0AFA: normal track data,  wait 0
   5E19 42                 2766  .db 0h42 ; 0h0AFB: normal track data
   5E1A 00                 2767  .db 0h00 ; 0h0AFC: vol off, no pitch, no note, no instrument
   5E1B 02                 2768  .db 0h02 ; 0h0AFD: normal track data,  wait 0
   5E1C 42                 2769  .db 0h42 ; 0h0AFE: normal track data
   5E1D 00                 2770  .db 0h00 ; 0h0AFF: vol off, no pitch, no note, no instrument
   5E1E 02                 2771  .db 0h02 ; 0h0B00: normal track data,  wait 0
   5E1F 33                 2772  .db 0h33 ; 0h0B01: full optimization, no escape: C2
   5E20 53                 2773  .db 0h53 ; 0h0B02: full optimization, no escape: E3
   5E21 33                 2774  .db 0h33 ; 0h0B03: full optimization, no escape: C2
   5E22 53                 2775  .db 0h53 ; 0h0B04: full optimization, no escape: E3
   5E23 53                 2776  .db 0h53 ; 0h0B05: full optimization, no escape: E3
   5E24 02                 2777  .db 0h02 ; 0h0B06: normal track data,  wait 0
   5E25 42                 2778  .db 0h42 ; 0h0B07: normal track data
   5E26 00                 2779  .db 0h00 ; 0h0B08: vol off, no pitch, no note, no instrument
   5E27 02                 2780  .db 0h02 ; 0h0B09: normal track data,  wait 0
   5E28 33                 2781  .db 0h33 ; 0h0B0A: full optimization, no escape: C2
   5E29 53                 2782  .db 0h53 ; 0h0B0B: full optimization, no escape: E3
   5E2A 33                 2783  .db 0h33 ; 0h0B0C: full optimization, no escape: C2
   5E2B 53                 2784  .db 0h53 ; 0h0B0D: full optimization, no escape: E3
   5E2C 53                 2785  .db 0h53 ; 0h0B0E: full optimization, no escape: E3
   5E2D 02                 2786  .db 0h02 ; 0h0B0F: normal track data,  wait 0
   5E2E 42                 2787  .db 0h42 ; 0h0B10: normal track data
   5E2F 00                 2788  .db 0h00 ; 0h0B11: vol off, no pitch, no note, no instrument
   5E30 02                 2789  .db 0h02 ; 0h0B12: normal track data,  wait 0
   5E31 33                 2790  .db 0h33 ; 0h0B13: full optimization, no escape: C2
   5E32 53                 2791  .db 0h53 ; 0h0B14: full optimization, no escape: E3
   5E33 33                 2792  .db 0h33 ; 0h0B15: full optimization, no escape: C2
   5E34 53                 2793  .db 0h53 ; 0h0B16: full optimization, no escape: E3
   5E35 53                 2794  .db 0h53 ; 0h0B17: full optimization, no escape: E3
   5E36 42                 2795  .db 0h42 ; 0h0B18: normal track data
   5E37 00                 2796  .db 0h00 ; 0h0B19: vol off, no pitch, no note, no instrument
   5E38 42                 2797  .db 0h42 ; 0h0B1A: normal track data
   5E39 00                 2798  .db 0h00 ; 0h0B1B: vol off, no pitch, no note, no instrument
   5E3A 72                 2799  .db 0h72 ; 0h0B1C: normal track data
   5E3B 60                 2800  .db 0h60 ; 0h0B1D: vol off, no pitch, note, instrument
   5E3C 04                 2801  .db 0h04 ; 0h0B1E: instrument
   5E3D 33                 2802  .db 0h33 ; 0h0B1F: full optimization, no escape: C2
   5E3E 00                 2803  .db 0h00 ; 0h0B20: track end signature found
   5E3F                    2804 trackDef28Test:
   5E3F 42                 2805  .db 0h42 ; 0h0B21: normal track data
   5E40 80                 2806  .db 0h80 ; 0h0B22: vol off, pitch, no note, no instrument
   5E41 00 00              2807  .dw 0h0000 ; 0h0B23: pitch
   5E43 02                 2808  .db 0h02 ; 0h0B25: normal track data,  wait 0
   5E44 42                 2809  .db 0h42 ; 0h0B26: normal track data
   5E45 00                 2810  .db 0h00 ; 0h0B27: vol off, no pitch, no note, no instrument
   5E46 02                 2811  .db 0h02 ; 0h0B28: normal track data,  wait 0
   5E47 42                 2812  .db 0h42 ; 0h0B29: normal track data
   5E48 00                 2813  .db 0h00 ; 0h0B2A: vol off, no pitch, no note, no instrument
   5E49 02                 2814  .db 0h02 ; 0h0B2B: normal track data,  wait 0
   5E4A 42                 2815  .db 0h42 ; 0h0B2C: normal track data
   5E4B 00                 2816  .db 0h00 ; 0h0B2D: vol off, no pitch, no note, no instrument
   5E4C 02                 2817  .db 0h02 ; 0h0B2E: normal track data,  wait 0
   5E4D 42                 2818  .db 0h42 ; 0h0B2F: normal track data
   5E4E 00                 2819  .db 0h00 ; 0h0B30: vol off, no pitch, no note, no instrument
   5E4F 02                 2820  .db 0h02 ; 0h0B31: normal track data,  wait 0
   5E50 42                 2821  .db 0h42 ; 0h0B32: normal track data
   5E51 00                 2822  .db 0h00 ; 0h0B33: vol off, no pitch, no note, no instrument
   5E52 42                 2823  .db 0h42 ; 0h0B34: normal track data
   5E53 00                 2824  .db 0h00 ; 0h0B35: vol off, no pitch, no note, no instrument
   5E54 42                 2825  .db 0h42 ; 0h0B36: normal track data
   5E55 00                 2826  .db 0h00 ; 0h0B37: vol off, no pitch, no note, no instrument
   5E56 42                 2827  .db 0h42 ; 0h0B38: normal track data
   5E57 00                 2828  .db 0h00 ; 0h0B39: vol off, no pitch, no note, no instrument
   5E58 42                 2829  .db 0h42 ; 0h0B3A: normal track data
   5E59 00                 2830  .db 0h00 ; 0h0B3B: vol off, no pitch, no note, no instrument
   5E5A 02                 2831  .db 0h02 ; 0h0B3C: normal track data,  wait 0
   5E5B 42                 2832  .db 0h42 ; 0h0B3D: normal track data
   5E5C 00                 2833  .db 0h00 ; 0h0B3E: vol off, no pitch, no note, no instrument
   5E5D 02                 2834  .db 0h02 ; 0h0B3F: normal track data,  wait 0
   5E5E 42                 2835  .db 0h42 ; 0h0B40: normal track data
   5E5F 00                 2836  .db 0h00 ; 0h0B41: vol off, no pitch, no note, no instrument
   5E60 42                 2837  .db 0h42 ; 0h0B42: normal track data
   5E61 00                 2838  .db 0h00 ; 0h0B43: vol off, no pitch, no note, no instrument
   5E62 42                 2839  .db 0h42 ; 0h0B44: normal track data
   5E63 00                 2840  .db 0h00 ; 0h0B45: vol off, no pitch, no note, no instrument
   5E64 02                 2841  .db 0h02 ; 0h0B46: normal track data,  wait 0
   5E65 42                 2842  .db 0h42 ; 0h0B47: normal track data
   5E66 00                 2843  .db 0h00 ; 0h0B48: vol off, no pitch, no note, no instrument
   5E67 02                 2844  .db 0h02 ; 0h0B49: normal track data,  wait 0
   5E68 42                 2845  .db 0h42 ; 0h0B4A: normal track data
   5E69 00                 2846  .db 0h00 ; 0h0B4B: vol off, no pitch, no note, no instrument
   5E6A 02                 2847  .db 0h02 ; 0h0B4C: normal track data,  wait 0
   5E6B 42                 2848  .db 0h42 ; 0h0B4D: normal track data
   5E6C 00                 2849  .db 0h00 ; 0h0B4E: vol off, no pitch, no note, no instrument
   5E6D 42                 2850  .db 0h42 ; 0h0B4F: normal track data
   5E6E 00                 2851  .db 0h00 ; 0h0B50: vol off, no pitch, no note, no instrument
   5E6F 42                 2852  .db 0h42 ; 0h0B51: normal track data
   5E70 00                 2853  .db 0h00 ; 0h0B52: vol off, no pitch, no note, no instrument
   5E71 42                 2854  .db 0h42 ; 0h0B53: normal track data
   5E72 00                 2855  .db 0h00 ; 0h0B54: vol off, no pitch, no note, no instrument
   5E73 42                 2856  .db 0h42 ; 0h0B55: normal track data
   5E74 00                 2857  .db 0h00 ; 0h0B56: vol off, no pitch, no note, no instrument
   5E75 02                 2858  .db 0h02 ; 0h0B57: normal track data,  wait 0
   5E76 42                 2859  .db 0h42 ; 0h0B58: normal track data
   5E77 00                 2860  .db 0h00 ; 0h0B59: vol off, no pitch, no note, no instrument
   5E78 02                 2861  .db 0h02 ; 0h0B5A: normal track data,  wait 0
   5E79 42                 2862  .db 0h42 ; 0h0B5B: normal track data
   5E7A 00                 2863  .db 0h00 ; 0h0B5C: vol off, no pitch, no note, no instrument
   5E7B 02                 2864  .db 0h02 ; 0h0B5D: normal track data,  wait 0
   5E7C 42                 2865  .db 0h42 ; 0h0B5E: normal track data
   5E7D 00                 2866  .db 0h00 ; 0h0B5F: vol off, no pitch, no note, no instrument
   5E7E 02                 2867  .db 0h02 ; 0h0B60: normal track data,  wait 0
   5E7F 42                 2868  .db 0h42 ; 0h0B61: normal track data
   5E80 00                 2869  .db 0h00 ; 0h0B62: vol off, no pitch, no note, no instrument
   5E81 02                 2870  .db 0h02 ; 0h0B63: normal track data,  wait 0
   5E82 42                 2871  .db 0h42 ; 0h0B64: normal track data
   5E83 00                 2872  .db 0h00 ; 0h0B65: vol off, no pitch, no note, no instrument
   5E84 02                 2873  .db 0h02 ; 0h0B66: normal track data,  wait 0
   5E85 42                 2874  .db 0h42 ; 0h0B67: normal track data
   5E86 00                 2875  .db 0h00 ; 0h0B68: vol off, no pitch, no note, no instrument
   5E87 42                 2876  .db 0h42 ; 0h0B69: normal track data
   5E88 00                 2877  .db 0h00 ; 0h0B6A: vol off, no pitch, no note, no instrument
   5E89 42                 2878  .db 0h42 ; 0h0B6B: normal track data
   5E8A 00                 2879  .db 0h00 ; 0h0B6C: vol off, no pitch, no note, no instrument
   5E8B 42                 2880  .db 0h42 ; 0h0B6D: normal track data
   5E8C 00                 2881  .db 0h00 ; 0h0B6E: vol off, no pitch, no note, no instrument
   5E8D 42                 2882  .db 0h42 ; 0h0B6F: normal track data
   5E8E 00                 2883  .db 0h00 ; 0h0B70: vol off, no pitch, no note, no instrument
   5E8F 02                 2884  .db 0h02 ; 0h0B71: normal track data,  wait 0
   5E90 42                 2885  .db 0h42 ; 0h0B72: normal track data
   5E91 00                 2886  .db 0h00 ; 0h0B73: vol off, no pitch, no note, no instrument
   5E92 02                 2887  .db 0h02 ; 0h0B74: normal track data,  wait 0
   5E93 42                 2888  .db 0h42 ; 0h0B75: normal track data
   5E94 00                 2889  .db 0h00 ; 0h0B76: vol off, no pitch, no note, no instrument
   5E95 42                 2890  .db 0h42 ; 0h0B77: normal track data
   5E96 00                 2891  .db 0h00 ; 0h0B78: vol off, no pitch, no note, no instrument
   5E97 42                 2892  .db 0h42 ; 0h0B79: normal track data
   5E98 00                 2893  .db 0h00 ; 0h0B7A: vol off, no pitch, no note, no instrument
   5E99 02                 2894  .db 0h02 ; 0h0B7B: normal track data,  wait 0
   5E9A 42                 2895  .db 0h42 ; 0h0B7C: normal track data
   5E9B 00                 2896  .db 0h00 ; 0h0B7D: vol off, no pitch, no note, no instrument
   5E9C 02                 2897  .db 0h02 ; 0h0B7E: normal track data,  wait 0
   5E9D 76                 2898  .db 0h76 ; 0h0B7F: normal track data
   5E9E 73                 2899  .db 0h73 ; 0h0B80: vol = 0h6 (inverted), no pitch, no note, no instrument
   5E9F 05                 2900  .db 0h05 ; 0h0B81: instrument
   5EA0 7A                 2901  .db 0h7A ; 0h0B82: normal track data
   5EA1 40                 2902  .db 0h40 ; 0h0B83: vol off, no pitch, note, no instrument
   5EA2 7C                 2903  .db 0h7C ; 0h0B84: normal track data
   5EA3 40                 2904  .db 0h40 ; 0h0B85: vol off, no pitch, note, no instrument
   5EA4 80                 2905  .db 0h80 ; 0h0B86: normal track data
   5EA5 40                 2906  .db 0h40 ; 0h0B87: vol off, no pitch, note, no instrument
   5EA6 84                 2907  .db 0h84 ; 0h0B88: normal track data
   5EA7 40                 2908  .db 0h40 ; 0h0B89: vol off, no pitch, note, no instrument
   5EA8 88                 2909  .db 0h88 ; 0h0B8A: normal track data
   5EA9 40                 2910  .db 0h40 ; 0h0B8B: vol off, no pitch, note, no instrument
   5EAA 8A                 2911  .db 0h8A ; 0h0B8C: normal track data
   5EAB 40                 2912  .db 0h40 ; 0h0B8D: vol off, no pitch, note, no instrument
   5EAC 8E                 2913  .db 0h8E ; 0h0B8E: normal track data
   5EAD 40                 2914  .db 0h40 ; 0h0B8F: vol off, no pitch, note, no instrument
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 aks_song           0000 GR  |   2 instrument0Tes     0017 R
  2 instrument0loo     0019 R   |   2 instrument1Tes     0020 R
  2 instrument2Tes     0027 R   |   2 instrument3Tes     002F R
  2 instrument4Tes     0044 R   |   2 instrument5Tes     0054 R
  2 instrument6Tes     0089 R   |   2 instrument7Tes     0099 R
  2 instrument8Tes     00A9 R   |   2 instrument9Tes     00B9 R
  2 linkerTest         00C9 R   |   2 pattern0Defini     00CF R
  2 pattern10Defin     0115 R   |   2 pattern11Defin     011C R
  2 pattern12Defin     0123 R   |   2 pattern13Defin     012A R
  2 pattern14Defin     0131 R   |   2 pattern15Defin     0138 R
  2 pattern16Defin     013F R   |   2 pattern17Defin     0146 R
  2 pattern18Defin     014D R   |   2 pattern19Defin     0154 R
  2 pattern1Defini     00D6 R   |   2 pattern20Defin     015B R
  2 pattern2Defini     00DD R   |   2 pattern3Defini     00E4 R
  2 pattern4Defini     00EB R   |   2 pattern5Defini     00F2 R
  2 pattern6Defini     00F9 R   |   2 pattern7Defini     0100 R
  2 pattern8Defini     0107 R   |   2 pattern9Defini     010E R
  2 specialtrackDe     015E R   |   2 trackDef0Test      0165 R
  2 trackDef10Test     0409 R   |   2 trackDef11Test     05F4 R
  2 trackDef12Test     049F R   |   2 trackDef13Test     0677 R
  2 trackDef14Test     0386 R   |   2 trackDef15Test     0532 R
  2 trackDef16Test     0229 R   |   2 trackDef17Test     07AB R
  2 trackDef18Test     06FA R   |   2 trackDef19Test     0824 R
  2 trackDef1Test      015F R   |   2 trackDef20Test     088C R
  2 trackDef21Test     0910 R   |   2 trackDef24Test     09BD R
  2 trackDef26Test     0A23 R   |   2 trackDef27Test     0A91 R
  2 trackDef28Test     0B18 R   |   2 trackDef29Test     0AC4 R
  2 trackDef3Test      01B4 R   |   2 trackDef4Test      0219 R
  2 trackDef5Test      01C6 R   |   2 trackDef6Test      0290 R
  2 trackDef7Test      02AB R   |   2 trackDef8Test      0303 R
  2 trackDef9Test      0361 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  B87   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

