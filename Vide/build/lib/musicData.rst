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
   3D18                      13 aks_song:
   3D18 06                   14  .db 0h06 ; 0h0009: default speed
   3D19 00 C6                15  .dw 0h00C6 ; 0h000A: size of instrument table (without this word pointer)
   3D1B 3D 2F                16  .dw instrument0Test ; 0h000C: [0h4020] pointer to instrument 0
   3D1D 3D 38                17  .dw instrument1Test ; 0h000E: [0h4029] pointer to instrument 1
   3D1F 3D 3F                18  .dw instrument2Test ; 0h0010: [0h4030] pointer to instrument 2
   3D21 3D 47                19  .dw instrument3Test ; 0h0012: [0h4038] pointer to instrument 3
   3D23 3D 5C                20  .dw instrument4Test ; 0h0014: [0h404D] pointer to instrument 4
   3D25 3D 6C                21  .dw instrument5Test ; 0h0016: [0h405D] pointer to instrument 5
   3D27 3D A1                22  .dw instrument6Test ; 0h0018: [0h4092] pointer to instrument 6
   3D29 3D B1                23  .dw instrument7Test ; 0h001A: [0h40A2] pointer to instrument 7
   3D2B 3D C1                24  .dw instrument8Test ; 0h001C: [0h40B2] pointer to instrument 8
   3D2D 3D D1                25  .dw instrument9Test ; 0h001E: [0h40C2] pointer to instrument 9
   3D2F                      26 instrument0Test:
   3D2F 00                   27  .db 0h00 ; 0h0020: speed
   3D30 00                   28  .db 0h00 ; 0h0021: retrig
   3D31                      29 instrument0loopTest:
   3D31 00                   30  .db 0h00 ; 0h0022: dataColumn_0 (non hard), vol=0h0
   3D32 00                   31  .db 0h00 ; 0h0023: dataColumn_0 (non hard), vol=0h0
   3D33 00                   32  .db 0h00 ; 0h0024: dataColumn_0 (non hard), vol=0h0
   3D34 00                   33  .db 0h00 ; 0h0025: dataColumn_0 (non hard), vol=0h0
   3D35 0D                   34  .db 0h0D ; 0h0026: dataColumn_0 (hard)
   3D36 3D 31                35  .dw instrument0loopTest ; 0h0027: [0h4022] loop
   3D38                      36 instrument1Test:
   3D38 01                   37  .db 0h01 ; 0h0029: speed
   3D39 00                   38  .db 0h00 ; 0h002A: retrig
   3D3A 36                   39  .db 0h36 ; 0h002B: dataColumn_0 (non hard), vol=0hD
   3D3B 01                   40  .db 0h01 ; 0h002C: dataColumn_1, noise=0h01
   3D3C 0D                   41  .db 0h0D ; 0h002D: dataColumn_0 (hard)
   3D3D 3D 31                42  .dw instrument0loopTest ; 0h002E: [0h4022] loop
   3D3F                      43 instrument2Test:
   3D3F 06                   44  .db 0h06 ; 0h0030: speed
   3D40 00                   45  .db 0h00 ; 0h0031: retrig
   3D41 2C                   46  .db 0h2C ; 0h0032: dataColumn_0 (non hard), vol=0hB
   3D42 24                   47  .db 0h24 ; 0h0033: dataColumn_0 (non hard), vol=0h9
   3D43 14                   48  .db 0h14 ; 0h0034: dataColumn_0 (non hard), vol=0h5
   3D44 0D                   49  .db 0h0D ; 0h0035: dataColumn_0 (hard)
   3D45 3D 31                50  .dw instrument0loopTest ; 0h0036: [0h4022] loop
   3D47                      51 instrument3Test:
   3D47 01                   52  .db 0h01 ; 0h0038: speed
   3D48 00                   53  .db 0h00 ; 0h0039: retrig
   3D49 36                   54  .db 0h36 ; 0h003A: dataColumn_0 (non hard), vol=0hD
   3D4A 0B                   55  .db 0h0B ; 0h003B: dataColumn_1, noise=0h0B
   3D4B 7C                   56  .db 0h7C ; 0h003C: dataColumn_0 (non hard), vol=0hF
   3D4C 16                   57  .db 0h16 ; 0h003D: arpegio
   3D4D 7C                   58  .db 0h7C ; 0h003E: dataColumn_0 (non hard), vol=0hF
   3D4E 0C                   59  .db 0h0C ; 0h003F: arpegio
   3D4F 7C                   60  .db 0h7C ; 0h0040: dataColumn_0 (non hard), vol=0hF
   3D50 0A                   61  .db 0h0A ; 0h0041: arpegio
   3D51 7C                   62  .db 0h7C ; 0h0042: dataColumn_0 (non hard), vol=0hF
   3D52 08                   63  .db 0h08 ; 0h0043: arpegio
   3D53 7C                   64  .db 0h7C ; 0h0044: dataColumn_0 (non hard), vol=0hF
   3D54 04                   65  .db 0h04 ; 0h0045: arpegio
   3D55 78                   66  .db 0h78 ; 0h0046: dataColumn_0 (non hard), vol=0hE
   3D56 03                   67  .db 0h03 ; 0h0047: arpegio
   3D57 6C                   68  .db 0h6C ; 0h0048: dataColumn_0 (non hard), vol=0hB
   3D58 01                   69  .db 0h01 ; 0h0049: arpegio
   3D59 0D                   70  .db 0h0D ; 0h004A: dataColumn_0 (hard)
   3D5A 3D 31                71  .dw instrument0loopTest ; 0h004B: [0h4022] loop
   3D5C                      72 instrument4Test:
   3D5C 01                   73  .db 0h01 ; 0h004D: speed
   3D5D 00                   74  .db 0h00 ; 0h004E: retrig
   3D5E 3E                   75  .db 0h3E ; 0h004F: dataColumn_0 (non hard), vol=0hF
   3D5F 02                   76  .db 0h02 ; 0h0050: dataColumn_1, noise=0h02
   3D60 3E                   77  .db 0h3E ; 0h0051: dataColumn_0 (non hard), vol=0hF
   3D61 2A                   78  .db 0h2A ; 0h0052: dataColumn_1, noise=0h0A
   3D62 7E                   79  .db 0h7E ; 0h0053: dataColumn_0 (non hard), vol=0hF
   3D63 2A                   80  .db 0h2A ; 0h0054: dataColumn_1, noise=0h0A
   3D64 02                   81  .db 0h02 ; 0h0055: arpegio
   3D65 3E                   82  .db 0h3E ; 0h0056: dataColumn_0 (non hard), vol=0hF
   3D66 0B                   83  .db 0h0B ; 0h0057: dataColumn_1, noise=0h0B
   3D67 3E                   84  .db 0h3E ; 0h0058: dataColumn_0 (non hard), vol=0hF
   3D68 0C                   85  .db 0h0C ; 0h0059: dataColumn_1, noise=0h0C
   3D69 0D                   86  .db 0h0D ; 0h005A: dataColumn_0 (hard)
   3D6A 3D 31                87  .dw instrument0loopTest ; 0h005B: [0h4022] loop
   3D6C                      88 instrument5Test:
   3D6C 0C                   89  .db 0h0C ; 0h005D: speed
   3D6D FE                   90  .db 0hFE ; 0h005E: retrig
   3D6E 09                   91  .db 0h09 ; 0h005F: dataColumn_0 (hard)
   3D6F 28                   92  .db 0h28 ; 0h0060: Independent dependend 2. byte
   3D70 24                   93  .db 0h24 ; 0h0061: independend hardware arpegio
   3D71 09                   94  .db 0h09 ; 0h0062: dataColumn_0 (hard)
   3D72 28                   95  .db 0h28 ; 0h0063: Independent dependend 2. byte
   3D73 18                   96  .db 0h18 ; 0h0064: independend hardware arpegio
   3D74 09                   97  .db 0h09 ; 0h0065: dataColumn_0 (hard)
   3D75 28                   98  .db 0h28 ; 0h0066: Independent dependend 2. byte
   3D76 24                   99  .db 0h24 ; 0h0067: independend hardware arpegio
   3D77 09                  100  .db 0h09 ; 0h0068: dataColumn_0 (hard)
   3D78 28                  101  .db 0h28 ; 0h0069: Independent dependend 2. byte
   3D79 18                  102  .db 0h18 ; 0h006A: independend hardware arpegio
   3D7A 27                  103  .db 0h27 ; 0h006B: dataColumn_0 (hard)
   3D7B 28                  104  .db 0h28 ; 0h006C: software dependend 2. byte
   3D7C E8                  105  .db 0hE8 ; 0h006D: arpegio
   3D7D 09                  106  .db 0h09 ; 0h006E: dataColumn_0 (hard)
   3D7E 28                  107  .db 0h28 ; 0h006F: Independent dependend 2. byte
   3D7F 18                  108  .db 0h18 ; 0h0070: independend hardware arpegio
   3D80 0B                  109  .db 0h0B ; 0h0071: dataColumn_0 (hard)
   3D81 28                  110  .db 0h28 ; 0h0072: Independent dependend 2. byte
   3D82 24                  111  .db 0h24 ; 0h0073: independend hardware arpegio
   3D83 09                  112  .db 0h09 ; 0h0074: dataColumn_0 (hard)
   3D84 28                  113  .db 0h28 ; 0h0075: Independent dependend 2. byte
   3D85 18                  114  .db 0h18 ; 0h0076: independend hardware arpegio
   3D86 23                  115  .db 0h23 ; 0h0077: dataColumn_0 (hard)
   3D87 28                  116  .db 0h28 ; 0h0078: hardware dependend 2. byte
   3D88 24                  117  .db 0h24 ; 0h0079: arpegio
   3D89 21                  118  .db 0h21 ; 0h007A: dataColumn_0 (hard)
   3D8A 38                  119  .db 0h38 ; 0h007B: hardware dependend 2. byte
   3D8B 18                  120  .db 0h18 ; 0h007C: arpegio
   3D8C 21                  121  .db 0h21 ; 0h007D: dataColumn_0 (hard)
   3D8D 28                  122  .db 0h28 ; 0h007E: hardware dependend 2. byte
   3D8E 24                  123  .db 0h24 ; 0h007F: arpegio
   3D8F 21                  124  .db 0h21 ; 0h0080: dataColumn_0 (hard)
   3D90 38                  125  .db 0h38 ; 0h0081: hardware dependend 2. byte
   3D91 18                  126  .db 0h18 ; 0h0082: arpegio
   3D92 21                  127  .db 0h21 ; 0h0083: dataColumn_0 (hard)
   3D93 28                  128  .db 0h28 ; 0h0084: hardware dependend 2. byte
   3D94 24                  129  .db 0h24 ; 0h0085: arpegio
   3D95 21                  130  .db 0h21 ; 0h0086: dataColumn_0 (hard)
   3D96 38                  131  .db 0h38 ; 0h0087: hardware dependend 2. byte
   3D97 18                  132  .db 0h18 ; 0h0088: arpegio
   3D98 21                  133  .db 0h21 ; 0h0089: dataColumn_0 (hard)
   3D99 28                  134  .db 0h28 ; 0h008A: hardware dependend 2. byte
   3D9A 24                  135  .db 0h24 ; 0h008B: arpegio
   3D9B 21                  136  .db 0h21 ; 0h008C: dataColumn_0 (hard)
   3D9C 38                  137  .db 0h38 ; 0h008D: hardware dependend 2. byte
   3D9D 18                  138  .db 0h18 ; 0h008E: arpegio
   3D9E 0D                  139  .db 0h0D ; 0h008F: dataColumn_0 (hard)
   3D9F 3D 31               140  .dw instrument0loopTest ; 0h0090: [0h4022] loop
   3DA1                     141 instrument6Test:
   3DA1 01                  142  .db 0h01 ; 0h0092: speed
   3DA2 00                  143  .db 0h00 ; 0h0093: retrig
   3DA3 3C                  144  .db 0h3C ; 0h0094: dataColumn_0 (non hard), vol=0hF
   3DA4 7C                  145  .db 0h7C ; 0h0095: dataColumn_0 (non hard), vol=0hF
   3DA5 03                  146  .db 0h03 ; 0h0096: arpegio
   3DA6 7C                  147  .db 0h7C ; 0h0097: dataColumn_0 (non hard), vol=0hF
   3DA7 07                  148  .db 0h07 ; 0h0098: arpegio
   3DA8 3C                  149  .db 0h3C ; 0h0099: dataColumn_0 (non hard), vol=0hF
   3DA9 7C                  150  .db 0h7C ; 0h009A: dataColumn_0 (non hard), vol=0hF
   3DAA 03                  151  .db 0h03 ; 0h009B: arpegio
   3DAB 7C                  152  .db 0h7C ; 0h009C: dataColumn_0 (non hard), vol=0hF
   3DAC 07                  153  .db 0h07 ; 0h009D: arpegio
   3DAD 00                  154  .db 0h00 ; 0h009E: dataColumn_0 (non hard), vol=0h0
   3DAE 0D                  155  .db 0h0D ; 0h009F: dataColumn_0 (hard)
   3DAF 3D 31               156  .dw instrument0loopTest ; 0h00A0: [0h4022] loop
   3DB1                     157 instrument7Test:
   3DB1 01                  158  .db 0h01 ; 0h00A2: speed
   3DB2 00                  159  .db 0h00 ; 0h00A3: retrig
   3DB3 3C                  160  .db 0h3C ; 0h00A4: dataColumn_0 (non hard), vol=0hF
   3DB4 7C                  161  .db 0h7C ; 0h00A5: dataColumn_0 (non hard), vol=0hF
   3DB5 04                  162  .db 0h04 ; 0h00A6: arpegio
   3DB6 7C                  163  .db 0h7C ; 0h00A7: dataColumn_0 (non hard), vol=0hF
   3DB7 07                  164  .db 0h07 ; 0h00A8: arpegio
   3DB8 3C                  165  .db 0h3C ; 0h00A9: dataColumn_0 (non hard), vol=0hF
   3DB9 7C                  166  .db 0h7C ; 0h00AA: dataColumn_0 (non hard), vol=0hF
   3DBA 04                  167  .db 0h04 ; 0h00AB: arpegio
   3DBB 7C                  168  .db 0h7C ; 0h00AC: dataColumn_0 (non hard), vol=0hF
   3DBC 07                  169  .db 0h07 ; 0h00AD: arpegio
   3DBD 00                  170  .db 0h00 ; 0h00AE: dataColumn_0 (non hard), vol=0h0
   3DBE 0D                  171  .db 0h0D ; 0h00AF: dataColumn_0 (hard)
   3DBF 3D 31               172  .dw instrument0loopTest ; 0h00B0: [0h4022] loop
   3DC1                     173 instrument8Test:
   3DC1 01                  174  .db 0h01 ; 0h00B2: speed
   3DC2 00                  175  .db 0h00 ; 0h00B3: retrig
   3DC3 3C                  176  .db 0h3C ; 0h00B4: dataColumn_0 (non hard), vol=0hF
   3DC4 7C                  177  .db 0h7C ; 0h00B5: dataColumn_0 (non hard), vol=0hF
   3DC5 05                  178  .db 0h05 ; 0h00B6: arpegio
   3DC6 7C                  179  .db 0h7C ; 0h00B7: dataColumn_0 (non hard), vol=0hF
   3DC7 09                  180  .db 0h09 ; 0h00B8: arpegio
   3DC8 3C                  181  .db 0h3C ; 0h00B9: dataColumn_0 (non hard), vol=0hF
   3DC9 7C                  182  .db 0h7C ; 0h00BA: dataColumn_0 (non hard), vol=0hF
   3DCA 05                  183  .db 0h05 ; 0h00BB: arpegio
   3DCB 7C                  184  .db 0h7C ; 0h00BC: dataColumn_0 (non hard), vol=0hF
   3DCC 09                  185  .db 0h09 ; 0h00BD: arpegio
   3DCD 00                  186  .db 0h00 ; 0h00BE: dataColumn_0 (non hard), vol=0h0
   3DCE 0D                  187  .db 0h0D ; 0h00BF: dataColumn_0 (hard)
   3DCF 3D 31               188  .dw instrument0loopTest ; 0h00C0: [0h4022] loop
   3DD1                     189 instrument9Test:
   3DD1 01                  190  .db 0h01 ; 0h00C2: speed
   3DD2 00                  191  .db 0h00 ; 0h00C3: retrig
   3DD3 3C                  192  .db 0h3C ; 0h00C4: dataColumn_0 (non hard), vol=0hF
   3DD4 7C                  193  .db 0h7C ; 0h00C5: dataColumn_0 (non hard), vol=0hF
   3DD5 05                  194  .db 0h05 ; 0h00C6: arpegio
   3DD6 7C                  195  .db 0h7C ; 0h00C7: dataColumn_0 (non hard), vol=0hF
   3DD7 07                  196  .db 0h07 ; 0h00C8: arpegio
   3DD8 3C                  197  .db 0h3C ; 0h00C9: dataColumn_0 (non hard), vol=0hF
   3DD9 7C                  198  .db 0h7C ; 0h00CA: dataColumn_0 (non hard), vol=0hF
   3DDA 05                  199  .db 0h05 ; 0h00CB: arpegio
   3DDB 7C                  200  .db 0h7C ; 0h00CC: dataColumn_0 (non hard), vol=0hF
   3DDC 07                  201  .db 0h07 ; 0h00CD: arpegio
   3DDD 00                  202  .db 0h00 ; 0h00CE: dataColumn_0 (non hard), vol=0h0
   3DDE 0D                  203  .db 0h0D ; 0h00CF: dataColumn_0 (hard)
   3DDF 3D 31               204  .dw instrument0loopTest ; 0h00D0: [0h4022] loop
                            205 ; start of linker definition
   3DE1                     206 linkerTest:
   3DE1 40                  207  .db 0h40 ; 0h00D2: first height
   3DE2 00                  208  .db 0h00 ; 0h00D3: transposition1
   3DE3 00                  209  .db 0h00 ; 0h00D4: transposition2
   3DE4 00                  210  .db 0h00 ; 0h00D5: transposition3
   3DE5 3E 76               211  .dw specialtrackDef0Test ; 0h00D6: [0h4167] specialTrack
   3DE7                     212 pattern0DefinitionTest:
   3DE7 00                  213  .db 0h00 ; 0h00D8: pattern 0 state
   3DE8 3E 7D               214  .dw trackDef0Test ; 0h00D9: [0h416E] pattern 0, track 1
   3DEA 3E 77               215  .dw trackDef1Test ; 0h00DB: [0h4168] pattern 0, track 2
   3DEC 3E 77               216  .dw trackDef1Test ; 0h00DD: [0h4168] pattern 0, track 3
   3DEE                     217 pattern1DefinitionTest:
   3DEE 00                  218  .db 0h00 ; 0h00DF: pattern 1 state
   3DEF 3E 7D               219  .dw trackDef0Test ; 0h00E0: [0h416E] pattern 1, track 1
   3DF1 3E CC               220  .dw trackDef3Test ; 0h00E2: [0h41BD] pattern 1, track 2
   3DF3 3F 31               221  .dw trackDef4Test ; 0h00E4: [0h4222] pattern 1, track 3
   3DF5                     222 pattern2DefinitionTest:
   3DF5 00                  223  .db 0h00 ; 0h00E6: pattern 2 state
   3DF6 3E 7D               224  .dw trackDef0Test ; 0h00E7: [0h416E] pattern 2, track 1
   3DF8 3E DE               225  .dw trackDef5Test ; 0h00E9: [0h41CF] pattern 2, track 2
   3DFA 3F A8               226  .dw trackDef6Test ; 0h00EB: [0h4299] pattern 2, track 3
   3DFC                     227 pattern3DefinitionTest:
   3DFC 00                  228  .db 0h00 ; 0h00ED: pattern 3 state
   3DFD 3F C3               229  .dw trackDef7Test ; 0h00EE: [0h42B4] pattern 3, track 1
   3DFF 40 1B               230  .dw trackDef8Test ; 0h00F0: [0h430C] pattern 3, track 2
   3E01 40 79               231  .dw trackDef9Test ; 0h00F2: [0h436A] pattern 3, track 3
   3E03                     232 pattern4DefinitionTest:
   3E03 00                  233  .db 0h00 ; 0h00F4: pattern 4 state
   3E04 3E 7D               234  .dw trackDef0Test ; 0h00F5: [0h416E] pattern 4, track 1
   3E06 41 21               235  .dw trackDef10Test ; 0h00F7: [0h4412] pattern 4, track 2
   3E08 43 0C               236  .dw trackDef11Test ; 0h00F9: [0h45FD] pattern 4, track 3
   3E0A                     237 pattern5DefinitionTest:
   3E0A 00                  238  .db 0h00 ; 0h00FB: pattern 5 state
   3E0B 3F C3               239  .dw trackDef7Test ; 0h00FC: [0h42B4] pattern 5, track 1
   3E0D 41 B7               240  .dw trackDef12Test ; 0h00FE: [0h44A8] pattern 5, track 2
   3E0F 43 8F               241  .dw trackDef13Test ; 0h0100: [0h4680] pattern 5, track 3
   3E11                     242 pattern6DefinitionTest:
   3E11 00                  243  .db 0h00 ; 0h0102: pattern 6 state
   3E12 40 9E               244  .dw trackDef14Test ; 0h0103: [0h438F] pattern 6, track 1
   3E14 42 4A               245  .dw trackDef15Test ; 0h0105: [0h453B] pattern 6, track 2
   3E16 3F 41               246  .dw trackDef16Test ; 0h0107: [0h4232] pattern 6, track 3
   3E18                     247 pattern7DefinitionTest:
   3E18 00                  248  .db 0h00 ; 0h0109: pattern 7 state
   3E19 44 C3               249  .dw trackDef17Test ; 0h010A: [0h47B4] pattern 7, track 1
   3E1B 44 12               250  .dw trackDef18Test ; 0h010C: [0h4703] pattern 7, track 2
   3E1D 45 3C               251  .dw trackDef19Test ; 0h010E: [0h482D] pattern 7, track 3
   3E1F                     252 pattern8DefinitionTest:
   3E1F 00                  253  .db 0h00 ; 0h0110: pattern 8 state
   3E20 45 A4               254  .dw trackDef20Test ; 0h0111: [0h4895] pattern 8, track 1
   3E22 46 28               255  .dw trackDef21Test ; 0h0113: [0h4919] pattern 8, track 2
   3E24 3F 41               256  .dw trackDef16Test ; 0h0115: [0h4232] pattern 8, track 3
   3E26                     257 pattern9DefinitionTest:
   3E26 00                  258  .db 0h00 ; 0h0117: pattern 9 state
   3E27 45 A4               259  .dw trackDef20Test ; 0h0118: [0h4895] pattern 9, track 1
   3E29 46 28               260  .dw trackDef21Test ; 0h011A: [0h4919] pattern 9, track 2
   3E2B 45 3C               261  .dw trackDef19Test ; 0h011C: [0h482D] pattern 9, track 3
   3E2D                     262 pattern10DefinitionTest:
   3E2D 00                  263  .db 0h00 ; 0h011E: pattern 10 state
   3E2E 40 9E               264  .dw trackDef14Test ; 0h011F: [0h438F] pattern 10, track 1
   3E30 42 4A               265  .dw trackDef15Test ; 0h0121: [0h453B] pattern 10, track 2
   3E32 46 D5               266  .dw trackDef24Test ; 0h0123: [0h49C6] pattern 10, track 3
   3E34                     267 pattern11DefinitionTest:
   3E34 00                  268  .db 0h00 ; 0h0125: pattern 11 state
   3E35 44 C3               269  .dw trackDef17Test ; 0h0126: [0h47B4] pattern 11, track 1
   3E37 44 12               270  .dw trackDef18Test ; 0h0128: [0h4703] pattern 11, track 2
   3E39 47 3B               271  .dw trackDef26Test ; 0h012A: [0h4A2C] pattern 11, track 3
   3E3B                     272 pattern12DefinitionTest:
   3E3B 00                  273  .db 0h00 ; 0h012C: pattern 12 state
   3E3C 3E 77               274  .dw trackDef1Test ; 0h012D: [0h4168] pattern 12, track 1
   3E3E 3E 77               275  .dw trackDef1Test ; 0h012F: [0h4168] pattern 12, track 2
   3E40 47 A9               276  .dw trackDef27Test ; 0h0131: [0h4A9A] pattern 12, track 3
   3E42                     277 pattern13DefinitionTest:
   3E42 00                  278  .db 0h00 ; 0h0133: pattern 13 state
   3E43 48 30               279  .dw trackDef28Test ; 0h0134: [0h4B21] pattern 13, track 1
   3E45 47 DC               280  .dw trackDef29Test ; 0h0136: [0h4ACD] pattern 13, track 2
   3E47 47 A9               281  .dw trackDef27Test ; 0h0138: [0h4A9A] pattern 13, track 3
   3E49                     282 pattern14DefinitionTest:
   3E49 00                  283  .db 0h00 ; 0h013A: pattern 14 state
   3E4A 40 9E               284  .dw trackDef14Test ; 0h013B: [0h438F] pattern 14, track 1
   3E4C 42 4A               285  .dw trackDef15Test ; 0h013D: [0h453B] pattern 14, track 2
   3E4E 3F 41               286  .dw trackDef16Test ; 0h013F: [0h4232] pattern 14, track 3
   3E50                     287 pattern15DefinitionTest:
   3E50 00                  288  .db 0h00 ; 0h0141: pattern 15 state
   3E51 44 C3               289  .dw trackDef17Test ; 0h0142: [0h47B4] pattern 15, track 1
   3E53 44 12               290  .dw trackDef18Test ; 0h0144: [0h4703] pattern 15, track 2
   3E55 45 3C               291  .dw trackDef19Test ; 0h0146: [0h482D] pattern 15, track 3
   3E57                     292 pattern16DefinitionTest:
   3E57 00                  293  .db 0h00 ; 0h0148: pattern 16 state
   3E58 45 A4               294  .dw trackDef20Test ; 0h0149: [0h4895] pattern 16, track 1
   3E5A 46 28               295  .dw trackDef21Test ; 0h014B: [0h4919] pattern 16, track 2
   3E5C 3F 41               296  .dw trackDef16Test ; 0h014D: [0h4232] pattern 16, track 3
   3E5E                     297 pattern17DefinitionTest:
   3E5E 00                  298  .db 0h00 ; 0h014F: pattern 17 state
   3E5F 45 A4               299  .dw trackDef20Test ; 0h0150: [0h4895] pattern 17, track 1
   3E61 46 28               300  .dw trackDef21Test ; 0h0152: [0h4919] pattern 17, track 2
   3E63 45 3C               301  .dw trackDef19Test ; 0h0154: [0h482D] pattern 17, track 3
   3E65                     302 pattern18DefinitionTest:
   3E65 00                  303  .db 0h00 ; 0h0156: pattern 18 state
   3E66 40 9E               304  .dw trackDef14Test ; 0h0157: [0h438F] pattern 18, track 1
   3E68 42 4A               305  .dw trackDef15Test ; 0h0159: [0h453B] pattern 18, track 2
   3E6A 46 D5               306  .dw trackDef24Test ; 0h015B: [0h49C6] pattern 18, track 3
   3E6C                     307 pattern19DefinitionTest:
   3E6C 00                  308  .db 0h00 ; 0h015D: pattern 19 state
   3E6D 44 C3               309  .dw trackDef17Test ; 0h015E: [0h47B4] pattern 19, track 1
   3E6F 44 12               310  .dw trackDef18Test ; 0h0160: [0h4703] pattern 19, track 2
   3E71 47 3B               311  .dw trackDef26Test ; 0h0162: [0h4A2C] pattern 19, track 3
   3E73                     312 pattern20DefinitionTest:
   3E73 01                  313  .db 0h01 ; 0h0164: pattern 20 state
   3E74 3D E7               314  .dw pattern0DefinitionTest ; 0h0165: [0h40D8] song restart address
   3E76                     315 specialtrackDef0Test:
   3E76 00                  316  .db 0h00 ; 0h0167: wait 128
   3E77                     317 trackDef1Test:
   3E77 7A                  318  .db 0h7A ; 0h0168: normal track data,  note: E2
   3E78 FF                  319  .db 0hFF ; 0h0169: vol = 0h0 (inverted), no pitch, no note, no instrument
   3E79 00 00               320  .dw 0h0000 ; 0h016A: pitch
   3E7B 01                  321  .db 0h01 ; 0h016C: instrument
   3E7C 00                  322  .db 0h00 ; 0h016D: track end signature found
   3E7D                     323 trackDef0Test:
   3E7D 92                  324  .db 0h92 ; 0h016E: normal track data
   3E7E E1                  325  .db 0hE1 ; 0h016F: vol = 0hF (inverted), no pitch, no note, no instrument
   3E7F 00 00               326  .dw 0h0000 ; 0h0170: pitch
   3E81 02                  327  .db 0h02 ; 0h0172: instrument
   3E82 02                  328  .db 0h02 ; 0h0173: normal track data,  wait 0
   3E83 92                  329  .db 0h92 ; 0h0174: normal track data
   3E84 40                  330  .db 0h40 ; 0h0175: vol off, no pitch, note, no instrument
   3E85 02                  331  .db 0h02 ; 0h0176: normal track data,  wait 0
   3E86 AA                  332  .db 0hAA ; 0h0177: normal track data
   3E87 40                  333  .db 0h40 ; 0h0178: vol off, no pitch, note, no instrument
   3E88 AC                  334  .db 0hAC ; 0h0179: normal track data
   3E89 40                  335  .db 0h40 ; 0h017A: vol off, no pitch, note, no instrument
   3E8A B0                  336  .db 0hB0 ; 0h017B: normal track data
   3E8B 40                  337  .db 0h40 ; 0h017C: vol off, no pitch, note, no instrument
   3E8C B4                  338  .db 0hB4 ; 0h017D: normal track data
   3E8D 40                  339  .db 0h40 ; 0h017E: vol off, no pitch, note, no instrument
   3E8E 92                  340  .db 0h92 ; 0h017F: normal track data
   3E8F 40                  341  .db 0h40 ; 0h0180: vol off, no pitch, note, no instrument
   3E90 02                  342  .db 0h02 ; 0h0181: normal track data,  wait 0
   3E91 92                  343  .db 0h92 ; 0h0182: normal track data
   3E92 40                  344  .db 0h40 ; 0h0183: vol off, no pitch, note, no instrument
   3E93 0A                  345  .db 0h0A ; 0h0184: normal track data,  wait 4
   3E94 92                  346  .db 0h92 ; 0h0185: normal track data
   3E95 40                  347  .db 0h40 ; 0h0186: vol off, no pitch, note, no instrument
   3E96 02                  348  .db 0h02 ; 0h0187: normal track data,  wait 0
   3E97 92                  349  .db 0h92 ; 0h0188: normal track data
   3E98 40                  350  .db 0h40 ; 0h0189: vol off, no pitch, note, no instrument
   3E99 02                  351  .db 0h02 ; 0h018A: normal track data,  wait 0
   3E9A 94                  352  .db 0h94 ; 0h018B: normal track data
   3E9B 40                  353  .db 0h40 ; 0h018C: vol off, no pitch, note, no instrument
   3E9C 02                  354  .db 0h02 ; 0h018D: normal track data,  wait 0
   3E9D 94                  355  .db 0h94 ; 0h018E: normal track data
   3E9E 40                  356  .db 0h40 ; 0h018F: vol off, no pitch, note, no instrument
   3E9F 02                  357  .db 0h02 ; 0h0190: normal track data,  wait 0
   3EA0 92                  358  .db 0h92 ; 0h0191: normal track data
   3EA1 40                  359  .db 0h40 ; 0h0192: vol off, no pitch, note, no instrument
   3EA2 02                  360  .db 0h02 ; 0h0193: normal track data,  wait 0
   3EA3 92                  361  .db 0h92 ; 0h0194: normal track data
   3EA4 40                  362  .db 0h40 ; 0h0195: vol off, no pitch, note, no instrument
   3EA5 0A                  363  .db 0h0A ; 0h0196: normal track data,  wait 4
   3EA6 92                  364  .db 0h92 ; 0h0197: normal track data
   3EA7 40                  365  .db 0h40 ; 0h0198: vol off, no pitch, note, no instrument
   3EA8 02                  366  .db 0h02 ; 0h0199: normal track data,  wait 0
   3EA9 92                  367  .db 0h92 ; 0h019A: normal track data
   3EAA 40                  368  .db 0h40 ; 0h019B: vol off, no pitch, note, no instrument
   3EAB 02                  369  .db 0h02 ; 0h019C: normal track data,  wait 0
   3EAC AA                  370  .db 0hAA ; 0h019D: normal track data
   3EAD 40                  371  .db 0h40 ; 0h019E: vol off, no pitch, note, no instrument
   3EAE AC                  372  .db 0hAC ; 0h019F: normal track data
   3EAF 40                  373  .db 0h40 ; 0h01A0: vol off, no pitch, note, no instrument
   3EB0 B0                  374  .db 0hB0 ; 0h01A1: normal track data
   3EB1 40                  375  .db 0h40 ; 0h01A2: vol off, no pitch, note, no instrument
   3EB2 B4                  376  .db 0hB4 ; 0h01A3: normal track data
   3EB3 40                  377  .db 0h40 ; 0h01A4: vol off, no pitch, note, no instrument
   3EB4 92                  378  .db 0h92 ; 0h01A5: normal track data
   3EB5 40                  379  .db 0h40 ; 0h01A6: vol off, no pitch, note, no instrument
   3EB6 02                  380  .db 0h02 ; 0h01A7: normal track data,  wait 0
   3EB7 92                  381  .db 0h92 ; 0h01A8: normal track data
   3EB8 40                  382  .db 0h40 ; 0h01A9: vol off, no pitch, note, no instrument
   3EB9 0A                  383  .db 0h0A ; 0h01AA: normal track data,  wait 4
   3EBA 92                  384  .db 0h92 ; 0h01AB: normal track data
   3EBB 40                  385  .db 0h40 ; 0h01AC: vol off, no pitch, note, no instrument
   3EBC 02                  386  .db 0h02 ; 0h01AD: normal track data,  wait 0
   3EBD 92                  387  .db 0h92 ; 0h01AE: normal track data
   3EBE 40                  388  .db 0h40 ; 0h01AF: vol off, no pitch, note, no instrument
   3EBF 02                  389  .db 0h02 ; 0h01B0: normal track data,  wait 0
   3EC0 94                  390  .db 0h94 ; 0h01B1: normal track data
   3EC1 40                  391  .db 0h40 ; 0h01B2: vol off, no pitch, note, no instrument
   3EC2 02                  392  .db 0h02 ; 0h01B3: normal track data,  wait 0
   3EC3 94                  393  .db 0h94 ; 0h01B4: normal track data
   3EC4 40                  394  .db 0h40 ; 0h01B5: vol off, no pitch, note, no instrument
   3EC5 02                  395  .db 0h02 ; 0h01B6: normal track data,  wait 0
   3EC6 92                  396  .db 0h92 ; 0h01B7: normal track data
   3EC7 40                  397  .db 0h40 ; 0h01B8: vol off, no pitch, note, no instrument
   3EC8 02                  398  .db 0h02 ; 0h01B9: normal track data,  wait 0
   3EC9 92                  399  .db 0h92 ; 0h01BA: normal track data
   3ECA 40                  400  .db 0h40 ; 0h01BB: vol off, no pitch, note, no instrument
   3ECB 00                  401  .db 0h00 ; 0h01BC: track end signature found
   3ECC                     402 trackDef3Test:
   3ECC 42                  403  .db 0h42 ; 0h01BD: normal track data
   3ECD 80                  404  .db 0h80 ; 0h01BE: vol off, pitch, no note, no instrument
   3ECE 00 00               405  .dw 0h0000 ; 0h01BF: pitch
   3ED0 3E                  406  .db 0h3E ; 0h01C1: normal track data,  wait 30
   3ED1 30                  407  .db 0h30 ; 0h01C2: normal track data,  wait 23
   3ED2 92                  408  .db 0h92 ; 0h01C3: normal track data
   3ED3 61                  409  .db 0h61 ; 0h01C4: vol = 0hF (inverted), no pitch, no note, no instrument
   3ED4 03                  410  .db 0h03 ; 0h01C5: instrument
   3ED5 02                  411  .db 0h02 ; 0h01C6: normal track data,  wait 0
   3ED6 92                  412  .db 0h92 ; 0h01C7: normal track data
   3ED7 60                  413  .db 0h60 ; 0h01C8: vol off, no pitch, note, instrument
   3ED8 04                  414  .db 0h04 ; 0h01C9: instrument
   3ED9 02                  415  .db 0h02 ; 0h01CA: normal track data,  wait 0
   3EDA 92                  416  .db 0h92 ; 0h01CB: normal track data
   3EDB 60                  417  .db 0h60 ; 0h01CC: vol off, no pitch, note, instrument
   3EDC 03                  418  .db 0h03 ; 0h01CD: instrument
   3EDD 00                  419  .db 0h00 ; 0h01CE: track end signature found
   3EDE                     420 trackDef5Test:
   3EDE 92                  421  .db 0h92 ; 0h01CF: normal track data
   3EDF E1                  422  .db 0hE1 ; 0h01D0: vol = 0hF (inverted), no pitch, no note, no instrument
   3EE0 00 00               423  .dw 0h0000 ; 0h01D1: pitch
   3EE2 03                  424  .db 0h03 ; 0h01D3: instrument
   3EE3 02                  425  .db 0h02 ; 0h01D4: normal track data,  wait 0
   3EE4 92                  426  .db 0h92 ; 0h01D5: normal track data
   3EE5 40                  427  .db 0h40 ; 0h01D6: vol off, no pitch, note, no instrument
   3EE6 02                  428  .db 0h02 ; 0h01D7: normal track data,  wait 0
   3EE7 AA                  429  .db 0hAA ; 0h01D8: normal track data
   3EE8 40                  430  .db 0h40 ; 0h01D9: vol off, no pitch, note, no instrument
   3EE9 AA                  431  .db 0hAA ; 0h01DA: normal track data
   3EEA 40                  432  .db 0h40 ; 0h01DB: vol off, no pitch, note, no instrument
   3EEB BA                  433  .db 0hBA ; 0h01DC: normal track data
   3EEC 40                  434  .db 0h40 ; 0h01DD: vol off, no pitch, note, no instrument
   3EED BA                  435  .db 0hBA ; 0h01DE: normal track data
   3EEE 40                  436  .db 0h40 ; 0h01DF: vol off, no pitch, note, no instrument
   3EEF 92                  437  .db 0h92 ; 0h01E0: normal track data
   3EF0 40                  438  .db 0h40 ; 0h01E1: vol off, no pitch, note, no instrument
   3EF1 02                  439  .db 0h02 ; 0h01E2: normal track data,  wait 0
   3EF2 92                  440  .db 0h92 ; 0h01E3: normal track data
   3EF3 40                  441  .db 0h40 ; 0h01E4: vol off, no pitch, note, no instrument
   3EF4 0A                  442  .db 0h0A ; 0h01E5: normal track data,  wait 4
   3EF5 92                  443  .db 0h92 ; 0h01E6: normal track data
   3EF6 40                  444  .db 0h40 ; 0h01E7: vol off, no pitch, note, no instrument
   3EF7 02                  445  .db 0h02 ; 0h01E8: normal track data,  wait 0
   3EF8 92                  446  .db 0h92 ; 0h01E9: normal track data
   3EF9 40                  447  .db 0h40 ; 0h01EA: vol off, no pitch, note, no instrument
   3EFA 02                  448  .db 0h02 ; 0h01EB: normal track data,  wait 0
   3EFB 92                  449  .db 0h92 ; 0h01EC: normal track data
   3EFC 60                  450  .db 0h60 ; 0h01ED: vol off, no pitch, note, instrument
   3EFD 04                  451  .db 0h04 ; 0h01EE: instrument
   3EFE 02                  452  .db 0h02 ; 0h01EF: normal track data,  wait 0
   3EFF 92                  453  .db 0h92 ; 0h01F0: normal track data
   3F00 40                  454  .db 0h40 ; 0h01F1: vol off, no pitch, note, no instrument
   3F01 02                  455  .db 0h02 ; 0h01F2: normal track data,  wait 0
   3F02 92                  456  .db 0h92 ; 0h01F3: normal track data
   3F03 60                  457  .db 0h60 ; 0h01F4: vol off, no pitch, note, instrument
   3F04 03                  458  .db 0h03 ; 0h01F5: instrument
   3F05 02                  459  .db 0h02 ; 0h01F6: normal track data,  wait 0
   3F06 92                  460  .db 0h92 ; 0h01F7: normal track data
   3F07 40                  461  .db 0h40 ; 0h01F8: vol off, no pitch, note, no instrument
   3F08 0A                  462  .db 0h0A ; 0h01F9: normal track data,  wait 4
   3F09 92                  463  .db 0h92 ; 0h01FA: normal track data
   3F0A 40                  464  .db 0h40 ; 0h01FB: vol off, no pitch, note, no instrument
   3F0B 02                  465  .db 0h02 ; 0h01FC: normal track data,  wait 0
   3F0C 92                  466  .db 0h92 ; 0h01FD: normal track data
   3F0D 40                  467  .db 0h40 ; 0h01FE: vol off, no pitch, note, no instrument
   3F0E 02                  468  .db 0h02 ; 0h01FF: normal track data,  wait 0
   3F0F AA                  469  .db 0hAA ; 0h0200: normal track data
   3F10 40                  470  .db 0h40 ; 0h0201: vol off, no pitch, note, no instrument
   3F11 AA                  471  .db 0hAA ; 0h0202: normal track data
   3F12 40                  472  .db 0h40 ; 0h0203: vol off, no pitch, note, no instrument
   3F13 BA                  473  .db 0hBA ; 0h0204: normal track data
   3F14 40                  474  .db 0h40 ; 0h0205: vol off, no pitch, note, no instrument
   3F15 BA                  475  .db 0hBA ; 0h0206: normal track data
   3F16 40                  476  .db 0h40 ; 0h0207: vol off, no pitch, note, no instrument
   3F17 92                  477  .db 0h92 ; 0h0208: normal track data
   3F18 40                  478  .db 0h40 ; 0h0209: vol off, no pitch, note, no instrument
   3F19 02                  479  .db 0h02 ; 0h020A: normal track data,  wait 0
   3F1A 92                  480  .db 0h92 ; 0h020B: normal track data
   3F1B 40                  481  .db 0h40 ; 0h020C: vol off, no pitch, note, no instrument
   3F1C 0A                  482  .db 0h0A ; 0h020D: normal track data,  wait 4
   3F1D 92                  483  .db 0h92 ; 0h020E: normal track data
   3F1E 40                  484  .db 0h40 ; 0h020F: vol off, no pitch, note, no instrument
   3F1F 02                  485  .db 0h02 ; 0h0210: normal track data,  wait 0
   3F20 92                  486  .db 0h92 ; 0h0211: normal track data
   3F21 40                  487  .db 0h40 ; 0h0212: vol off, no pitch, note, no instrument
   3F22 02                  488  .db 0h02 ; 0h0213: normal track data,  wait 0
   3F23 92                  489  .db 0h92 ; 0h0214: normal track data
   3F24 60                  490  .db 0h60 ; 0h0215: vol off, no pitch, note, instrument
   3F25 04                  491  .db 0h04 ; 0h0216: instrument
   3F26 02                  492  .db 0h02 ; 0h0217: normal track data,  wait 0
   3F27 92                  493  .db 0h92 ; 0h0218: normal track data
   3F28 40                  494  .db 0h40 ; 0h0219: vol off, no pitch, note, no instrument
   3F29 02                  495  .db 0h02 ; 0h021A: normal track data,  wait 0
   3F2A 92                  496  .db 0h92 ; 0h021B: normal track data
   3F2B 60                  497  .db 0h60 ; 0h021C: vol off, no pitch, note, instrument
   3F2C 03                  498  .db 0h03 ; 0h021D: instrument
   3F2D 02                  499  .db 0h02 ; 0h021E: normal track data,  wait 0
   3F2E 92                  500  .db 0h92 ; 0h021F: normal track data
   3F2F 40                  501  .db 0h40 ; 0h0220: vol off, no pitch, note, no instrument
   3F30 00                  502  .db 0h00 ; 0h0221: track end signature found
   3F31                     503 trackDef4Test:
   3F31 42                  504  .db 0h42 ; 0h0222: normal track data
   3F32 80                  505  .db 0h80 ; 0h0223: vol off, pitch, no note, no instrument
   3F33 00 00               506  .dw 0h0000 ; 0h0224: pitch
   3F35 3E                  507  .db 0h3E ; 0h0226: normal track data,  wait 30
   3F36 30                  508  .db 0h30 ; 0h0227: normal track data,  wait 23
   3F37 92                  509  .db 0h92 ; 0h0228: normal track data
   3F38 73                  510  .db 0h73 ; 0h0229: vol = 0h6 (inverted), no pitch, no note, no instrument
   3F39 05                  511  .db 0h05 ; 0h022A: instrument
   3F3A AA                  512  .db 0hAA ; 0h022B: normal track data
   3F3B 40                  513  .db 0h40 ; 0h022C: vol off, no pitch, note, no instrument
   3F3C 08                  514  .db 0h08 ; 0h022D: normal track data,  wait 3
   3F3D AA                  515  .db 0hAA ; 0h022E: normal track data
   3F3E 40                  516  .db 0h40 ; 0h022F: vol off, no pitch, note, no instrument
   3F3F 92                  517  .db 0h92 ; 0h0230: normal track data
   3F40 40                  518  .db 0h40 ; 0h0231: vol off, no pitch, note, no instrument
   3F41                     519 trackDef16Test:
   3F41 92                  520  .db 0h92 ; 0h0232: normal track data
   3F42 F3                  521  .db 0hF3 ; 0h0233: vol = 0h6 (inverted), no pitch, no note, no instrument
   3F43 00 00               522  .dw 0h0000 ; 0h0234: pitch
   3F45 05                  523  .db 0h05 ; 0h0236: instrument
   3F46 AA                  524  .db 0hAA ; 0h0237: normal track data
   3F47 40                  525  .db 0h40 ; 0h0238: vol off, no pitch, note, no instrument
   3F48 AA                  526  .db 0hAA ; 0h0239: normal track data
   3F49 40                  527  .db 0h40 ; 0h023A: vol off, no pitch, note, no instrument
   3F4A 92                  528  .db 0h92 ; 0h023B: normal track data
   3F4B 40                  529  .db 0h40 ; 0h023C: vol off, no pitch, note, no instrument
   3F4C 92                  530  .db 0h92 ; 0h023D: normal track data
   3F4D 40                  531  .db 0h40 ; 0h023E: vol off, no pitch, note, no instrument
   3F4E 94                  532  .db 0h94 ; 0h023F: normal track data
   3F4F 40                  533  .db 0h40 ; 0h0240: vol off, no pitch, note, no instrument
   3F50 98                  534  .db 0h98 ; 0h0241: normal track data
   3F51 40                  535  .db 0h40 ; 0h0242: vol off, no pitch, note, no instrument
   3F52 9C                  536  .db 0h9C ; 0h0243: normal track data
   3F53 40                  537  .db 0h40 ; 0h0244: vol off, no pitch, note, no instrument
   3F54 92                  538  .db 0h92 ; 0h0245: normal track data
   3F55 40                  539  .db 0h40 ; 0h0246: vol off, no pitch, note, no instrument
   3F56 AA                  540  .db 0hAA ; 0h0247: normal track data
   3F57 40                  541  .db 0h40 ; 0h0248: vol off, no pitch, note, no instrument
   3F58 08                  542  .db 0h08 ; 0h0249: normal track data,  wait 3
   3F59 AA                  543  .db 0hAA ; 0h024A: normal track data
   3F5A 40                  544  .db 0h40 ; 0h024B: vol off, no pitch, note, no instrument
   3F5B 92                  545  .db 0h92 ; 0h024C: normal track data
   3F5C 40                  546  .db 0h40 ; 0h024D: vol off, no pitch, note, no instrument
   3F5D 92                  547  .db 0h92 ; 0h024E: normal track data
   3F5E 40                  548  .db 0h40 ; 0h024F: vol off, no pitch, note, no instrument
   3F5F AA                  549  .db 0hAA ; 0h0250: normal track data
   3F60 40                  550  .db 0h40 ; 0h0251: vol off, no pitch, note, no instrument
   3F61 AA                  551  .db 0hAA ; 0h0252: normal track data
   3F62 40                  552  .db 0h40 ; 0h0253: vol off, no pitch, note, no instrument
   3F63 92                  553  .db 0h92 ; 0h0254: normal track data
   3F64 40                  554  .db 0h40 ; 0h0255: vol off, no pitch, note, no instrument
   3F65 94                  555  .db 0h94 ; 0h0256: normal track data
   3F66 40                  556  .db 0h40 ; 0h0257: vol off, no pitch, note, no instrument
   3F67 AC                  557  .db 0hAC ; 0h0258: normal track data
   3F68 40                  558  .db 0h40 ; 0h0259: vol off, no pitch, note, no instrument
   3F69 AC                  559  .db 0hAC ; 0h025A: normal track data
   3F6A 40                  560  .db 0h40 ; 0h025B: vol off, no pitch, note, no instrument
   3F6B 94                  561  .db 0h94 ; 0h025C: normal track data
   3F6C 40                  562  .db 0h40 ; 0h025D: vol off, no pitch, note, no instrument
   3F6D 92                  563  .db 0h92 ; 0h025E: normal track data
   3F6E 40                  564  .db 0h40 ; 0h025F: vol off, no pitch, note, no instrument
   3F6F AA                  565  .db 0hAA ; 0h0260: normal track data
   3F70 40                  566  .db 0h40 ; 0h0261: vol off, no pitch, note, no instrument
   3F71 08                  567  .db 0h08 ; 0h0262: normal track data,  wait 3
   3F72 AA                  568  .db 0hAA ; 0h0263: normal track data
   3F73 40                  569  .db 0h40 ; 0h0264: vol off, no pitch, note, no instrument
   3F74 92                  570  .db 0h92 ; 0h0265: normal track data
   3F75 40                  571  .db 0h40 ; 0h0266: vol off, no pitch, note, no instrument
   3F76 92                  572  .db 0h92 ; 0h0267: normal track data
   3F77 40                  573  .db 0h40 ; 0h0268: vol off, no pitch, note, no instrument
   3F78 AA                  574  .db 0hAA ; 0h0269: normal track data
   3F79 40                  575  .db 0h40 ; 0h026A: vol off, no pitch, note, no instrument
   3F7A AA                  576  .db 0hAA ; 0h026B: normal track data
   3F7B 40                  577  .db 0h40 ; 0h026C: vol off, no pitch, note, no instrument
   3F7C 92                  578  .db 0h92 ; 0h026D: normal track data
   3F7D 40                  579  .db 0h40 ; 0h026E: vol off, no pitch, note, no instrument
   3F7E 92                  580  .db 0h92 ; 0h026F: normal track data
   3F7F 40                  581  .db 0h40 ; 0h0270: vol off, no pitch, note, no instrument
   3F80 94                  582  .db 0h94 ; 0h0271: normal track data
   3F81 40                  583  .db 0h40 ; 0h0272: vol off, no pitch, note, no instrument
   3F82 98                  584  .db 0h98 ; 0h0273: normal track data
   3F83 40                  585  .db 0h40 ; 0h0274: vol off, no pitch, note, no instrument
   3F84 9C                  586  .db 0h9C ; 0h0275: normal track data
   3F85 40                  587  .db 0h40 ; 0h0276: vol off, no pitch, note, no instrument
   3F86 92                  588  .db 0h92 ; 0h0277: normal track data
   3F87 40                  589  .db 0h40 ; 0h0278: vol off, no pitch, note, no instrument
   3F88 AA                  590  .db 0hAA ; 0h0279: normal track data
   3F89 40                  591  .db 0h40 ; 0h027A: vol off, no pitch, note, no instrument
   3F8A 08                  592  .db 0h08 ; 0h027B: normal track data,  wait 3
   3F8B AA                  593  .db 0hAA ; 0h027C: normal track data
   3F8C 40                  594  .db 0h40 ; 0h027D: vol off, no pitch, note, no instrument
   3F8D 92                  595  .db 0h92 ; 0h027E: normal track data
   3F8E 40                  596  .db 0h40 ; 0h027F: vol off, no pitch, note, no instrument
   3F8F 92                  597  .db 0h92 ; 0h0280: normal track data
   3F90 40                  598  .db 0h40 ; 0h0281: vol off, no pitch, note, no instrument
   3F91 AA                  599  .db 0hAA ; 0h0282: normal track data
   3F92 40                  600  .db 0h40 ; 0h0283: vol off, no pitch, note, no instrument
   3F93 AA                  601  .db 0hAA ; 0h0284: normal track data
   3F94 40                  602  .db 0h40 ; 0h0285: vol off, no pitch, note, no instrument
   3F95 92                  603  .db 0h92 ; 0h0286: normal track data
   3F96 40                  604  .db 0h40 ; 0h0287: vol off, no pitch, note, no instrument
   3F97 92                  605  .db 0h92 ; 0h0288: normal track data
   3F98 40                  606  .db 0h40 ; 0h0289: vol off, no pitch, note, no instrument
   3F99 94                  607  .db 0h94 ; 0h028A: normal track data
   3F9A 40                  608  .db 0h40 ; 0h028B: vol off, no pitch, note, no instrument
   3F9B 98                  609  .db 0h98 ; 0h028C: normal track data
   3F9C 40                  610  .db 0h40 ; 0h028D: vol off, no pitch, note, no instrument
   3F9D 9C                  611  .db 0h9C ; 0h028E: normal track data
   3F9E 40                  612  .db 0h40 ; 0h028F: vol off, no pitch, note, no instrument
   3F9F 92                  613  .db 0h92 ; 0h0290: normal track data
   3FA0 40                  614  .db 0h40 ; 0h0291: vol off, no pitch, note, no instrument
   3FA1 AA                  615  .db 0hAA ; 0h0292: normal track data
   3FA2 40                  616  .db 0h40 ; 0h0293: vol off, no pitch, note, no instrument
   3FA3 08                  617  .db 0h08 ; 0h0294: normal track data,  wait 3
   3FA4 AA                  618  .db 0hAA ; 0h0295: normal track data
   3FA5 40                  619  .db 0h40 ; 0h0296: vol off, no pitch, note, no instrument
   3FA6 92                  620  .db 0h92 ; 0h0297: normal track data
   3FA7 40                  621  .db 0h40 ; 0h0298: vol off, no pitch, note, no instrument
   3FA8                     622 trackDef6Test:
   3FA8 92                  623  .db 0h92 ; 0h0299: normal track data
   3FA9 F3                  624  .db 0hF3 ; 0h029A: vol = 0h6 (inverted), no pitch, no note, no instrument
   3FAA 00 00               625  .dw 0h0000 ; 0h029B: pitch
   3FAC 05                  626  .db 0h05 ; 0h029D: instrument
   3FAD 0E                  627  .db 0h0E ; 0h029E: normal track data,  wait 6
   3FAE 92                  628  .db 0h92 ; 0h029F: normal track data
   3FAF 40                  629  .db 0h40 ; 0h02A0: vol off, no pitch, note, no instrument
   3FB0 0E                  630  .db 0h0E ; 0h02A1: normal track data,  wait 6
   3FB1 92                  631  .db 0h92 ; 0h02A2: normal track data
   3FB2 40                  632  .db 0h40 ; 0h02A3: vol off, no pitch, note, no instrument
   3FB3 0E                  633  .db 0h0E ; 0h02A4: normal track data,  wait 6
   3FB4 92                  634  .db 0h92 ; 0h02A5: normal track data
   3FB5 40                  635  .db 0h40 ; 0h02A6: vol off, no pitch, note, no instrument
   3FB6 0E                  636  .db 0h0E ; 0h02A7: normal track data,  wait 6
   3FB7 92                  637  .db 0h92 ; 0h02A8: normal track data
   3FB8 40                  638  .db 0h40 ; 0h02A9: vol off, no pitch, note, no instrument
   3FB9 0E                  639  .db 0h0E ; 0h02AA: normal track data,  wait 6
   3FBA 92                  640  .db 0h92 ; 0h02AB: normal track data
   3FBB 40                  641  .db 0h40 ; 0h02AC: vol off, no pitch, note, no instrument
   3FBC 0E                  642  .db 0h0E ; 0h02AD: normal track data,  wait 6
   3FBD 92                  643  .db 0h92 ; 0h02AE: normal track data
   3FBE 40                  644  .db 0h40 ; 0h02AF: vol off, no pitch, note, no instrument
   3FBF 0E                  645  .db 0h0E ; 0h02B0: normal track data,  wait 6
   3FC0 92                  646  .db 0h92 ; 0h02B1: normal track data
   3FC1 40                  647  .db 0h40 ; 0h02B2: vol off, no pitch, note, no instrument
   3FC2 00                  648  .db 0h00 ; 0h02B3: track end signature found
   3FC3                     649 trackDef7Test:
   3FC3 92                  650  .db 0h92 ; 0h02B4: normal track data
   3FC4 E1                  651  .db 0hE1 ; 0h02B5: vol = 0hF (inverted), no pitch, no note, no instrument
   3FC5 00 00               652  .dw 0h0000 ; 0h02B6: pitch
   3FC7 02                  653  .db 0h02 ; 0h02B8: instrument
   3FC8 02                  654  .db 0h02 ; 0h02B9: normal track data,  wait 0
   3FC9 92                  655  .db 0h92 ; 0h02BA: normal track data
   3FCA 40                  656  .db 0h40 ; 0h02BB: vol off, no pitch, note, no instrument
   3FCB 02                  657  .db 0h02 ; 0h02BC: normal track data,  wait 0
   3FCC AA                  658  .db 0hAA ; 0h02BD: normal track data
   3FCD 40                  659  .db 0h40 ; 0h02BE: vol off, no pitch, note, no instrument
   3FCE AC                  660  .db 0hAC ; 0h02BF: normal track data
   3FCF 40                  661  .db 0h40 ; 0h02C0: vol off, no pitch, note, no instrument
   3FD0 B0                  662  .db 0hB0 ; 0h02C1: normal track data
   3FD1 40                  663  .db 0h40 ; 0h02C2: vol off, no pitch, note, no instrument
   3FD2 B4                  664  .db 0hB4 ; 0h02C3: normal track data
   3FD3 40                  665  .db 0h40 ; 0h02C4: vol off, no pitch, note, no instrument
   3FD4 92                  666  .db 0h92 ; 0h02C5: normal track data
   3FD5 40                  667  .db 0h40 ; 0h02C6: vol off, no pitch, note, no instrument
   3FD6 02                  668  .db 0h02 ; 0h02C7: normal track data,  wait 0
   3FD7 92                  669  .db 0h92 ; 0h02C8: normal track data
   3FD8 40                  670  .db 0h40 ; 0h02C9: vol off, no pitch, note, no instrument
   3FD9 0A                  671  .db 0h0A ; 0h02CA: normal track data,  wait 4
   3FDA 92                  672  .db 0h92 ; 0h02CB: normal track data
   3FDB 40                  673  .db 0h40 ; 0h02CC: vol off, no pitch, note, no instrument
   3FDC 02                  674  .db 0h02 ; 0h02CD: normal track data,  wait 0
   3FDD 92                  675  .db 0h92 ; 0h02CE: normal track data
   3FDE 40                  676  .db 0h40 ; 0h02CF: vol off, no pitch, note, no instrument
   3FDF 02                  677  .db 0h02 ; 0h02D0: normal track data,  wait 0
   3FE0 94                  678  .db 0h94 ; 0h02D1: normal track data
   3FE1 40                  679  .db 0h40 ; 0h02D2: vol off, no pitch, note, no instrument
   3FE2 02                  680  .db 0h02 ; 0h02D3: normal track data,  wait 0
   3FE3 94                  681  .db 0h94 ; 0h02D4: normal track data
   3FE4 40                  682  .db 0h40 ; 0h02D5: vol off, no pitch, note, no instrument
   3FE5 02                  683  .db 0h02 ; 0h02D6: normal track data,  wait 0
   3FE6 92                  684  .db 0h92 ; 0h02D7: normal track data
   3FE7 40                  685  .db 0h40 ; 0h02D8: vol off, no pitch, note, no instrument
   3FE8 02                  686  .db 0h02 ; 0h02D9: normal track data,  wait 0
   3FE9 92                  687  .db 0h92 ; 0h02DA: normal track data
   3FEA 40                  688  .db 0h40 ; 0h02DB: vol off, no pitch, note, no instrument
   3FEB 0A                  689  .db 0h0A ; 0h02DC: normal track data,  wait 4
   3FEC 92                  690  .db 0h92 ; 0h02DD: normal track data
   3FED 40                  691  .db 0h40 ; 0h02DE: vol off, no pitch, note, no instrument
   3FEE 02                  692  .db 0h02 ; 0h02DF: normal track data,  wait 0
   3FEF 92                  693  .db 0h92 ; 0h02E0: normal track data
   3FF0 40                  694  .db 0h40 ; 0h02E1: vol off, no pitch, note, no instrument
   3FF1 02                  695  .db 0h02 ; 0h02E2: normal track data,  wait 0
   3FF2 AA                  696  .db 0hAA ; 0h02E3: normal track data
   3FF3 40                  697  .db 0h40 ; 0h02E4: vol off, no pitch, note, no instrument
   3FF4 AC                  698  .db 0hAC ; 0h02E5: normal track data
   3FF5 40                  699  .db 0h40 ; 0h02E6: vol off, no pitch, note, no instrument
   3FF6 B0                  700  .db 0hB0 ; 0h02E7: normal track data
   3FF7 40                  701  .db 0h40 ; 0h02E8: vol off, no pitch, note, no instrument
   3FF8 B4                  702  .db 0hB4 ; 0h02E9: normal track data
   3FF9 40                  703  .db 0h40 ; 0h02EA: vol off, no pitch, note, no instrument
   3FFA 92                  704  .db 0h92 ; 0h02EB: normal track data
   3FFB 40                  705  .db 0h40 ; 0h02EC: vol off, no pitch, note, no instrument
   3FFC 02                  706  .db 0h02 ; 0h02ED: normal track data,  wait 0
   3FFD 92                  707  .db 0h92 ; 0h02EE: normal track data
   3FFE 40                  708  .db 0h40 ; 0h02EF: vol off, no pitch, note, no instrument
   3FFF 0A                  709  .db 0h0A ; 0h02F0: normal track data,  wait 4
   4000 92                  710  .db 0h92 ; 0h02F1: normal track data
   4001 40                  711  .db 0h40 ; 0h02F2: vol off, no pitch, note, no instrument
   4002 02                  712  .db 0h02 ; 0h02F3: normal track data,  wait 0
   4003 92                  713  .db 0h92 ; 0h02F4: normal track data
   4004 40                  714  .db 0h40 ; 0h02F5: vol off, no pitch, note, no instrument
   4005 02                  715  .db 0h02 ; 0h02F6: normal track data,  wait 0
   4006 94                  716  .db 0h94 ; 0h02F7: normal track data
   4007 40                  717  .db 0h40 ; 0h02F8: vol off, no pitch, note, no instrument
   4008 02                  718  .db 0h02 ; 0h02F9: normal track data,  wait 0
   4009 94                  719  .db 0h94 ; 0h02FA: normal track data
   400A 40                  720  .db 0h40 ; 0h02FB: vol off, no pitch, note, no instrument
   400B 02                  721  .db 0h02 ; 0h02FC: normal track data,  wait 0
   400C 92                  722  .db 0h92 ; 0h02FD: normal track data
   400D 40                  723  .db 0h40 ; 0h02FE: vol off, no pitch, note, no instrument
   400E 02                  724  .db 0h02 ; 0h02FF: normal track data,  wait 0
   400F 92                  725  .db 0h92 ; 0h0300: normal track data
   4010 40                  726  .db 0h40 ; 0h0301: vol off, no pitch, note, no instrument
   4011 B4                  727  .db 0hB4 ; 0h0302: normal track data
   4012 40                  728  .db 0h40 ; 0h0303: vol off, no pitch, note, no instrument
   4013 A0                  729  .db 0hA0 ; 0h0304: normal track data
   4014 40                  730  .db 0h40 ; 0h0305: vol off, no pitch, note, no instrument
   4015 9C                  731  .db 0h9C ; 0h0306: normal track data
   4016 40                  732  .db 0h40 ; 0h0307: vol off, no pitch, note, no instrument
   4017 98                  733  .db 0h98 ; 0h0308: normal track data
   4018 40                  734  .db 0h40 ; 0h0309: vol off, no pitch, note, no instrument
   4019 94                  735  .db 0h94 ; 0h030A: normal track data
   401A 40                  736  .db 0h40 ; 0h030B: vol off, no pitch, note, no instrument
   401B                     737 trackDef8Test:
   401B 92                  738  .db 0h92 ; 0h030C: normal track data
   401C E1                  739  .db 0hE1 ; 0h030D: vol = 0hF (inverted), no pitch, no note, no instrument
   401D 00 00               740  .dw 0h0000 ; 0h030E: pitch
   401F 03                  741  .db 0h03 ; 0h0310: instrument
   4020 02                  742  .db 0h02 ; 0h0311: normal track data,  wait 0
   4021 92                  743  .db 0h92 ; 0h0312: normal track data
   4022 40                  744  .db 0h40 ; 0h0313: vol off, no pitch, note, no instrument
   4023 02                  745  .db 0h02 ; 0h0314: normal track data,  wait 0
   4024 AA                  746  .db 0hAA ; 0h0315: normal track data
   4025 40                  747  .db 0h40 ; 0h0316: vol off, no pitch, note, no instrument
   4026 AA                  748  .db 0hAA ; 0h0317: normal track data
   4027 40                  749  .db 0h40 ; 0h0318: vol off, no pitch, note, no instrument
   4028 BA                  750  .db 0hBA ; 0h0319: normal track data
   4029 40                  751  .db 0h40 ; 0h031A: vol off, no pitch, note, no instrument
   402A BA                  752  .db 0hBA ; 0h031B: normal track data
   402B 40                  753  .db 0h40 ; 0h031C: vol off, no pitch, note, no instrument
   402C 92                  754  .db 0h92 ; 0h031D: normal track data
   402D 40                  755  .db 0h40 ; 0h031E: vol off, no pitch, note, no instrument
   402E 02                  756  .db 0h02 ; 0h031F: normal track data,  wait 0
   402F 92                  757  .db 0h92 ; 0h0320: normal track data
   4030 40                  758  .db 0h40 ; 0h0321: vol off, no pitch, note, no instrument
   4031 0A                  759  .db 0h0A ; 0h0322: normal track data,  wait 4
   4032 92                  760  .db 0h92 ; 0h0323: normal track data
   4033 40                  761  .db 0h40 ; 0h0324: vol off, no pitch, note, no instrument
   4034 02                  762  .db 0h02 ; 0h0325: normal track data,  wait 0
   4035 92                  763  .db 0h92 ; 0h0326: normal track data
   4036 40                  764  .db 0h40 ; 0h0327: vol off, no pitch, note, no instrument
   4037 02                  765  .db 0h02 ; 0h0328: normal track data,  wait 0
   4038 92                  766  .db 0h92 ; 0h0329: normal track data
   4039 60                  767  .db 0h60 ; 0h032A: vol off, no pitch, note, instrument
   403A 04                  768  .db 0h04 ; 0h032B: instrument
   403B 02                  769  .db 0h02 ; 0h032C: normal track data,  wait 0
   403C 92                  770  .db 0h92 ; 0h032D: normal track data
   403D 40                  771  .db 0h40 ; 0h032E: vol off, no pitch, note, no instrument
   403E 02                  772  .db 0h02 ; 0h032F: normal track data,  wait 0
   403F 92                  773  .db 0h92 ; 0h0330: normal track data
   4040 60                  774  .db 0h60 ; 0h0331: vol off, no pitch, note, instrument
   4041 03                  775  .db 0h03 ; 0h0332: instrument
   4042 02                  776  .db 0h02 ; 0h0333: normal track data,  wait 0
   4043 92                  777  .db 0h92 ; 0h0334: normal track data
   4044 40                  778  .db 0h40 ; 0h0335: vol off, no pitch, note, no instrument
   4045 0A                  779  .db 0h0A ; 0h0336: normal track data,  wait 4
   4046 92                  780  .db 0h92 ; 0h0337: normal track data
   4047 40                  781  .db 0h40 ; 0h0338: vol off, no pitch, note, no instrument
   4048 02                  782  .db 0h02 ; 0h0339: normal track data,  wait 0
   4049 92                  783  .db 0h92 ; 0h033A: normal track data
   404A 40                  784  .db 0h40 ; 0h033B: vol off, no pitch, note, no instrument
   404B 02                  785  .db 0h02 ; 0h033C: normal track data,  wait 0
   404C AA                  786  .db 0hAA ; 0h033D: normal track data
   404D 40                  787  .db 0h40 ; 0h033E: vol off, no pitch, note, no instrument
   404E AA                  788  .db 0hAA ; 0h033F: normal track data
   404F 40                  789  .db 0h40 ; 0h0340: vol off, no pitch, note, no instrument
   4050 BA                  790  .db 0hBA ; 0h0341: normal track data
   4051 40                  791  .db 0h40 ; 0h0342: vol off, no pitch, note, no instrument
   4052 BA                  792  .db 0hBA ; 0h0343: normal track data
   4053 40                  793  .db 0h40 ; 0h0344: vol off, no pitch, note, no instrument
   4054 92                  794  .db 0h92 ; 0h0345: normal track data
   4055 40                  795  .db 0h40 ; 0h0346: vol off, no pitch, note, no instrument
   4056 02                  796  .db 0h02 ; 0h0347: normal track data,  wait 0
   4057 92                  797  .db 0h92 ; 0h0348: normal track data
   4058 40                  798  .db 0h40 ; 0h0349: vol off, no pitch, note, no instrument
   4059 0A                  799  .db 0h0A ; 0h034A: normal track data,  wait 4
   405A 92                  800  .db 0h92 ; 0h034B: normal track data
   405B 40                  801  .db 0h40 ; 0h034C: vol off, no pitch, note, no instrument
   405C 02                  802  .db 0h02 ; 0h034D: normal track data,  wait 0
   405D 92                  803  .db 0h92 ; 0h034E: normal track data
   405E 40                  804  .db 0h40 ; 0h034F: vol off, no pitch, note, no instrument
   405F 02                  805  .db 0h02 ; 0h0350: normal track data,  wait 0
   4060 92                  806  .db 0h92 ; 0h0351: normal track data
   4061 60                  807  .db 0h60 ; 0h0352: vol off, no pitch, note, instrument
   4062 04                  808  .db 0h04 ; 0h0353: instrument
   4063 02                  809  .db 0h02 ; 0h0354: normal track data,  wait 0
   4064 92                  810  .db 0h92 ; 0h0355: normal track data
   4065 40                  811  .db 0h40 ; 0h0356: vol off, no pitch, note, no instrument
   4066 02                  812  .db 0h02 ; 0h0357: normal track data,  wait 0
   4067 92                  813  .db 0h92 ; 0h0358: normal track data
   4068 60                  814  .db 0h60 ; 0h0359: vol off, no pitch, note, instrument
   4069 03                  815  .db 0h03 ; 0h035A: instrument
   406A 02                  816  .db 0h02 ; 0h035B: normal track data,  wait 0
   406B 92                  817  .db 0h92 ; 0h035C: normal track data
   406C 40                  818  .db 0h40 ; 0h035D: vol off, no pitch, note, no instrument
   406D 92                  819  .db 0h92 ; 0h035E: normal track data
   406E 40                  820  .db 0h40 ; 0h035F: vol off, no pitch, note, no instrument
   406F 92                  821  .db 0h92 ; 0h0360: normal track data
   4070 40                  822  .db 0h40 ; 0h0361: vol off, no pitch, note, no instrument
   4071 AA                  823  .db 0hAA ; 0h0362: normal track data
   4072 60                  824  .db 0h60 ; 0h0363: vol off, no pitch, note, instrument
   4073 04                  825  .db 0h04 ; 0h0364: instrument
   4074 AA                  826  .db 0hAA ; 0h0365: normal track data
   4075 40                  827  .db 0h40 ; 0h0366: vol off, no pitch, note, no instrument
   4076 92                  828  .db 0h92 ; 0h0367: normal track data
   4077 60                  829  .db 0h60 ; 0h0368: vol off, no pitch, note, instrument
   4078 03                  830  .db 0h03 ; 0h0369: instrument
   4079                     831 trackDef9Test:
   4079 92                  832  .db 0h92 ; 0h036A: normal track data
   407A F3                  833  .db 0hF3 ; 0h036B: vol = 0h6 (inverted), no pitch, no note, no instrument
   407B 00 00               834  .dw 0h0000 ; 0h036C: pitch
   407D 05                  835  .db 0h05 ; 0h036E: instrument
   407E 0E                  836  .db 0h0E ; 0h036F: normal track data,  wait 6
   407F 92                  837  .db 0h92 ; 0h0370: normal track data
   4080 40                  838  .db 0h40 ; 0h0371: vol off, no pitch, note, no instrument
   4081 0E                  839  .db 0h0E ; 0h0372: normal track data,  wait 6
   4082 92                  840  .db 0h92 ; 0h0373: normal track data
   4083 40                  841  .db 0h40 ; 0h0374: vol off, no pitch, note, no instrument
   4084 0E                  842  .db 0h0E ; 0h0375: normal track data,  wait 6
   4085 92                  843  .db 0h92 ; 0h0376: normal track data
   4086 40                  844  .db 0h40 ; 0h0377: vol off, no pitch, note, no instrument
   4087 0E                  845  .db 0h0E ; 0h0378: normal track data,  wait 6
   4088 92                  846  .db 0h92 ; 0h0379: normal track data
   4089 40                  847  .db 0h40 ; 0h037A: vol off, no pitch, note, no instrument
   408A 0E                  848  .db 0h0E ; 0h037B: normal track data,  wait 6
   408B 92                  849  .db 0h92 ; 0h037C: normal track data
   408C 40                  850  .db 0h40 ; 0h037D: vol off, no pitch, note, no instrument
   408D 0E                  851  .db 0h0E ; 0h037E: normal track data,  wait 6
   408E 92                  852  .db 0h92 ; 0h037F: normal track data
   408F 40                  853  .db 0h40 ; 0h0380: vol off, no pitch, note, no instrument
   4090 0E                  854  .db 0h0E ; 0h0381: normal track data,  wait 6
   4091 92                  855  .db 0h92 ; 0h0382: normal track data
   4092 40                  856  .db 0h40 ; 0h0383: vol off, no pitch, note, no instrument
   4093 04                  857  .db 0h04 ; 0h0384: normal track data,  wait 1
   4094 B4                  858  .db 0hB4 ; 0h0385: normal track data
   4095 40                  859  .db 0h40 ; 0h0386: vol off, no pitch, note, no instrument
   4096 A0                  860  .db 0hA0 ; 0h0387: normal track data
   4097 40                  861  .db 0h40 ; 0h0388: vol off, no pitch, note, no instrument
   4098 9C                  862  .db 0h9C ; 0h0389: normal track data
   4099 40                  863  .db 0h40 ; 0h038A: vol off, no pitch, note, no instrument
   409A 98                  864  .db 0h98 ; 0h038B: normal track data
   409B 40                  865  .db 0h40 ; 0h038C: vol off, no pitch, note, no instrument
   409C 94                  866  .db 0h94 ; 0h038D: normal track data
   409D 40                  867  .db 0h40 ; 0h038E: vol off, no pitch, note, no instrument
   409E                     868 trackDef14Test:
   409E 92                  869  .db 0h92 ; 0h038F: normal track data
   409F E1                  870  .db 0hE1 ; 0h0390: vol = 0hF (inverted), no pitch, no note, no instrument
   40A0 00 00               871  .dw 0h0000 ; 0h0391: pitch
   40A2 02                  872  .db 0h02 ; 0h0393: instrument
   40A3 C2                  873  .db 0hC2 ; 0h0394: normal track data
   40A4 49                  874  .db 0h49 ; 0h0395: vol = 0hB (inverted), no pitch, no note, no instrument
   40A5 92                  875  .db 0h92 ; 0h0396: normal track data
   40A6 41                  876  .db 0h41 ; 0h0397: vol = 0hF (inverted), no pitch, no note, no instrument
   40A7 C2                  877  .db 0hC2 ; 0h0398: normal track data
   40A8 49                  878  .db 0h49 ; 0h0399: vol = 0hB (inverted), no pitch, no note, no instrument
   40A9 AA                  879  .db 0hAA ; 0h039A: normal track data
   40AA 41                  880  .db 0h41 ; 0h039B: vol = 0hF (inverted), no pitch, no note, no instrument
   40AB AC                  881  .db 0hAC ; 0h039C: normal track data
   40AC 40                  882  .db 0h40 ; 0h039D: vol off, no pitch, note, no instrument
   40AD B0                  883  .db 0hB0 ; 0h039E: normal track data
   40AE 40                  884  .db 0h40 ; 0h039F: vol off, no pitch, note, no instrument
   40AF B4                  885  .db 0hB4 ; 0h03A0: normal track data
   40B0 40                  886  .db 0h40 ; 0h03A1: vol off, no pitch, note, no instrument
   40B1 92                  887  .db 0h92 ; 0h03A2: normal track data
   40B2 40                  888  .db 0h40 ; 0h03A3: vol off, no pitch, note, no instrument
   40B3 C2                  889  .db 0hC2 ; 0h03A4: normal track data
   40B4 49                  890  .db 0h49 ; 0h03A5: vol = 0hB (inverted), no pitch, no note, no instrument
   40B5 92                  891  .db 0h92 ; 0h03A6: normal track data
   40B6 41                  892  .db 0h41 ; 0h03A7: vol = 0hF (inverted), no pitch, no note, no instrument
   40B7 C2                  893  .db 0hC2 ; 0h03A8: normal track data
   40B8 49                  894  .db 0h49 ; 0h03A9: vol = 0hB (inverted), no pitch, no note, no instrument
   40B9 AA                  895  .db 0hAA ; 0h03AA: normal track data
   40BA 41                  896  .db 0h41 ; 0h03AB: vol = 0hF (inverted), no pitch, no note, no instrument
   40BB C2                  897  .db 0hC2 ; 0h03AC: normal track data
   40BC 49                  898  .db 0h49 ; 0h03AD: vol = 0hB (inverted), no pitch, no note, no instrument
   40BD AA                  899  .db 0hAA ; 0h03AE: normal track data
   40BE 41                  900  .db 0h41 ; 0h03AF: vol = 0hF (inverted), no pitch, no note, no instrument
   40BF C2                  901  .db 0hC2 ; 0h03B0: normal track data
   40C0 49                  902  .db 0h49 ; 0h03B1: vol = 0hB (inverted), no pitch, no note, no instrument
   40C1 92                  903  .db 0h92 ; 0h03B2: normal track data
   40C2 41                  904  .db 0h41 ; 0h03B3: vol = 0hF (inverted), no pitch, no note, no instrument
   40C3 C2                  905  .db 0hC2 ; 0h03B4: normal track data
   40C4 49                  906  .db 0h49 ; 0h03B5: vol = 0hB (inverted), no pitch, no note, no instrument
   40C5 92                  907  .db 0h92 ; 0h03B6: normal track data
   40C6 41                  908  .db 0h41 ; 0h03B7: vol = 0hF (inverted), no pitch, no note, no instrument
   40C7 C2                  909  .db 0hC2 ; 0h03B8: normal track data
   40C8 49                  910  .db 0h49 ; 0h03B9: vol = 0hB (inverted), no pitch, no note, no instrument
   40C9 94                  911  .db 0h94 ; 0h03BA: normal track data
   40CA 41                  912  .db 0h41 ; 0h03BB: vol = 0hF (inverted), no pitch, no note, no instrument
   40CB C4                  913  .db 0hC4 ; 0h03BC: normal track data
   40CC 49                  914  .db 0h49 ; 0h03BD: vol = 0hB (inverted), no pitch, no note, no instrument
   40CD 94                  915  .db 0h94 ; 0h03BE: normal track data
   40CE 41                  916  .db 0h41 ; 0h03BF: vol = 0hF (inverted), no pitch, no note, no instrument
   40CF C4                  917  .db 0hC4 ; 0h03C0: normal track data
   40D0 49                  918  .db 0h49 ; 0h03C1: vol = 0hB (inverted), no pitch, no note, no instrument
   40D1 92                  919  .db 0h92 ; 0h03C2: normal track data
   40D2 41                  920  .db 0h41 ; 0h03C3: vol = 0hF (inverted), no pitch, no note, no instrument
   40D3 C2                  921  .db 0hC2 ; 0h03C4: normal track data
   40D4 49                  922  .db 0h49 ; 0h03C5: vol = 0hB (inverted), no pitch, no note, no instrument
   40D5 92                  923  .db 0h92 ; 0h03C6: normal track data
   40D6 41                  924  .db 0h41 ; 0h03C7: vol = 0hF (inverted), no pitch, no note, no instrument
   40D7 C2                  925  .db 0hC2 ; 0h03C8: normal track data
   40D8 49                  926  .db 0h49 ; 0h03C9: vol = 0hB (inverted), no pitch, no note, no instrument
   40D9 AA                  927  .db 0hAA ; 0h03CA: normal track data
   40DA 41                  928  .db 0h41 ; 0h03CB: vol = 0hF (inverted), no pitch, no note, no instrument
   40DB C2                  929  .db 0hC2 ; 0h03CC: normal track data
   40DC 49                  930  .db 0h49 ; 0h03CD: vol = 0hB (inverted), no pitch, no note, no instrument
   40DD AA                  931  .db 0hAA ; 0h03CE: normal track data
   40DE 41                  932  .db 0h41 ; 0h03CF: vol = 0hF (inverted), no pitch, no note, no instrument
   40DF C2                  933  .db 0hC2 ; 0h03D0: normal track data
   40E0 49                  934  .db 0h49 ; 0h03D1: vol = 0hB (inverted), no pitch, no note, no instrument
   40E1 92                  935  .db 0h92 ; 0h03D2: normal track data
   40E2 41                  936  .db 0h41 ; 0h03D3: vol = 0hF (inverted), no pitch, no note, no instrument
   40E3 C2                  937  .db 0hC2 ; 0h03D4: normal track data
   40E4 49                  938  .db 0h49 ; 0h03D5: vol = 0hB (inverted), no pitch, no note, no instrument
   40E5 92                  939  .db 0h92 ; 0h03D6: normal track data
   40E6 41                  940  .db 0h41 ; 0h03D7: vol = 0hF (inverted), no pitch, no note, no instrument
   40E7 C2                  941  .db 0hC2 ; 0h03D8: normal track data
   40E8 49                  942  .db 0h49 ; 0h03D9: vol = 0hB (inverted), no pitch, no note, no instrument
   40E9 AA                  943  .db 0hAA ; 0h03DA: normal track data
   40EA 41                  944  .db 0h41 ; 0h03DB: vol = 0hF (inverted), no pitch, no note, no instrument
   40EB AC                  945  .db 0hAC ; 0h03DC: normal track data
   40EC 40                  946  .db 0h40 ; 0h03DD: vol off, no pitch, note, no instrument
   40ED B0                  947  .db 0hB0 ; 0h03DE: normal track data
   40EE 40                  948  .db 0h40 ; 0h03DF: vol off, no pitch, note, no instrument
   40EF B4                  949  .db 0hB4 ; 0h03E0: normal track data
   40F0 40                  950  .db 0h40 ; 0h03E1: vol off, no pitch, note, no instrument
   40F1 92                  951  .db 0h92 ; 0h03E2: normal track data
   40F2 40                  952  .db 0h40 ; 0h03E3: vol off, no pitch, note, no instrument
   40F3 C2                  953  .db 0hC2 ; 0h03E4: normal track data
   40F4 49                  954  .db 0h49 ; 0h03E5: vol = 0hB (inverted), no pitch, no note, no instrument
   40F5 92                  955  .db 0h92 ; 0h03E6: normal track data
   40F6 41                  956  .db 0h41 ; 0h03E7: vol = 0hF (inverted), no pitch, no note, no instrument
   40F7 C2                  957  .db 0hC2 ; 0h03E8: normal track data
   40F8 49                  958  .db 0h49 ; 0h03E9: vol = 0hB (inverted), no pitch, no note, no instrument
   40F9 AA                  959  .db 0hAA ; 0h03EA: normal track data
   40FA 41                  960  .db 0h41 ; 0h03EB: vol = 0hF (inverted), no pitch, no note, no instrument
   40FB C2                  961  .db 0hC2 ; 0h03EC: normal track data
   40FC 49                  962  .db 0h49 ; 0h03ED: vol = 0hB (inverted), no pitch, no note, no instrument
   40FD AA                  963  .db 0hAA ; 0h03EE: normal track data
   40FE 41                  964  .db 0h41 ; 0h03EF: vol = 0hF (inverted), no pitch, no note, no instrument
   40FF C2                  965  .db 0hC2 ; 0h03F0: normal track data
   4100 49                  966  .db 0h49 ; 0h03F1: vol = 0hB (inverted), no pitch, no note, no instrument
   4101 92                  967  .db 0h92 ; 0h03F2: normal track data
   4102 41                  968  .db 0h41 ; 0h03F3: vol = 0hF (inverted), no pitch, no note, no instrument
   4103 C2                  969  .db 0hC2 ; 0h03F4: normal track data
   4104 49                  970  .db 0h49 ; 0h03F5: vol = 0hB (inverted), no pitch, no note, no instrument
   4105 92                  971  .db 0h92 ; 0h03F6: normal track data
   4106 41                  972  .db 0h41 ; 0h03F7: vol = 0hF (inverted), no pitch, no note, no instrument
   4107 C2                  973  .db 0hC2 ; 0h03F8: normal track data
   4108 49                  974  .db 0h49 ; 0h03F9: vol = 0hB (inverted), no pitch, no note, no instrument
   4109 94                  975  .db 0h94 ; 0h03FA: normal track data
   410A 41                  976  .db 0h41 ; 0h03FB: vol = 0hF (inverted), no pitch, no note, no instrument
   410B C4                  977  .db 0hC4 ; 0h03FC: normal track data
   410C 49                  978  .db 0h49 ; 0h03FD: vol = 0hB (inverted), no pitch, no note, no instrument
   410D 94                  979  .db 0h94 ; 0h03FE: normal track data
   410E 41                  980  .db 0h41 ; 0h03FF: vol = 0hF (inverted), no pitch, no note, no instrument
   410F C4                  981  .db 0hC4 ; 0h0400: normal track data
   4110 49                  982  .db 0h49 ; 0h0401: vol = 0hB (inverted), no pitch, no note, no instrument
   4111 92                  983  .db 0h92 ; 0h0402: normal track data
   4112 41                  984  .db 0h41 ; 0h0403: vol = 0hF (inverted), no pitch, no note, no instrument
   4113 C2                  985  .db 0hC2 ; 0h0404: normal track data
   4114 49                  986  .db 0h49 ; 0h0405: vol = 0hB (inverted), no pitch, no note, no instrument
   4115 92                  987  .db 0h92 ; 0h0406: normal track data
   4116 41                  988  .db 0h41 ; 0h0407: vol = 0hF (inverted), no pitch, no note, no instrument
   4117 C2                  989  .db 0hC2 ; 0h0408: normal track data
   4118 40                  990  .db 0h40 ; 0h0409: vol off, no pitch, note, no instrument
   4119 AA                  991  .db 0hAA ; 0h040A: normal track data
   411A 49                  992  .db 0h49 ; 0h040B: vol = 0hB (inverted), no pitch, no note, no instrument
   411B C2                  993  .db 0hC2 ; 0h040C: normal track data
   411C 41                  994  .db 0h41 ; 0h040D: vol = 0hF (inverted), no pitch, no note, no instrument
   411D AA                  995  .db 0hAA ; 0h040E: normal track data
   411E 49                  996  .db 0h49 ; 0h040F: vol = 0hB (inverted), no pitch, no note, no instrument
   411F C2                  997  .db 0hC2 ; 0h0410: normal track data
   4120 41                  998  .db 0h41 ; 0h0411: vol = 0hF (inverted), no pitch, no note, no instrument
   4121                     999 trackDef10Test:
   4121 92                 1000  .db 0h92 ; 0h0412: normal track data
   4122 E1                 1001  .db 0hE1 ; 0h0413: vol = 0hF (inverted), no pitch, no note, no instrument
   4123 00 00              1002  .dw 0h0000 ; 0h0414: pitch
   4125 03                 1003  .db 0h03 ; 0h0416: instrument
   4126 42                 1004  .db 0h42 ; 0h0417: normal track data
   4127 00                 1005  .db 0h00 ; 0h0418: vol off, no pitch, no note, no instrument
   4128 92                 1006  .db 0h92 ; 0h0419: normal track data
   4129 40                 1007  .db 0h40 ; 0h041A: vol off, no pitch, note, no instrument
   412A 42                 1008  .db 0h42 ; 0h041B: normal track data
   412B 00                 1009  .db 0h00 ; 0h041C: vol off, no pitch, no note, no instrument
   412C 92                 1010  .db 0h92 ; 0h041D: normal track data
   412D 6B                 1011  .db 0h6B ; 0h041E: vol = 0hA (inverted), no pitch, no note, no instrument
   412E 01                 1012  .db 0h01 ; 0h041F: instrument
   412F AA                 1013  .db 0hAA ; 0h0420: normal track data
   4130 49                 1014  .db 0h49 ; 0h0421: vol = 0hB (inverted), no pitch, no note, no instrument
   4131 C2                 1015  .db 0hC2 ; 0h0422: normal track data,  note: E5
   4132 47                 1016  .db 0h47 ; 0h0423: vol = 0hC (inverted), no pitch, no note, no instrument
   4133 AA                 1017  .db 0hAA ; 0h0424: normal track data
   4134 49                 1018  .db 0h49 ; 0h0425: vol = 0hB (inverted), no pitch, no note, no instrument
   4135 92                 1019  .db 0h92 ; 0h0426: normal track data
   4136 61                 1020  .db 0h61 ; 0h0427: vol = 0hF (inverted), no pitch, no note, no instrument
   4137 04                 1021  .db 0h04 ; 0h0428: instrument
   4138 42                 1022  .db 0h42 ; 0h0429: normal track data
   4139 00                 1023  .db 0h00 ; 0h042A: vol off, no pitch, no note, no instrument
   413A 92                 1024  .db 0h92 ; 0h042B: normal track data
   413B 60                 1025  .db 0h60 ; 0h042C: vol off, no pitch, note, instrument
   413C 03                 1026  .db 0h03 ; 0h042D: instrument
   413D 42                 1027  .db 0h42 ; 0h042E: normal track data
   413E 00                 1028  .db 0h00 ; 0h042F: vol off, no pitch, no note, no instrument
   413F 92                 1029  .db 0h92 ; 0h0430: normal track data
   4140 6B                 1030  .db 0h6B ; 0h0431: vol = 0hA (inverted), no pitch, no note, no instrument
   4141 01                 1031  .db 0h01 ; 0h0432: instrument
   4142 AA                 1032  .db 0hAA ; 0h0433: normal track data
   4143 49                 1033  .db 0h49 ; 0h0434: vol = 0hB (inverted), no pitch, no note, no instrument
   4144 C2                 1034  .db 0hC2 ; 0h0435: normal track data,  note: E5
   4145 47                 1035  .db 0h47 ; 0h0436: vol = 0hC (inverted), no pitch, no note, no instrument
   4146 AA                 1036  .db 0hAA ; 0h0437: normal track data
   4147 49                 1037  .db 0h49 ; 0h0438: vol = 0hB (inverted), no pitch, no note, no instrument
   4148 92                 1038  .db 0h92 ; 0h0439: normal track data
   4149 61                 1039  .db 0h61 ; 0h043A: vol = 0hF (inverted), no pitch, no note, no instrument
   414A 03                 1040  .db 0h03 ; 0h043B: instrument
   414B 42                 1041  .db 0h42 ; 0h043C: normal track data
   414C 00                 1042  .db 0h00 ; 0h043D: vol off, no pitch, no note, no instrument
   414D 92                 1043  .db 0h92 ; 0h043E: normal track data
   414E 40                 1044  .db 0h40 ; 0h043F: vol off, no pitch, note, no instrument
   414F 42                 1045  .db 0h42 ; 0h0440: normal track data
   4150 00                 1046  .db 0h00 ; 0h0441: vol off, no pitch, no note, no instrument
   4151 92                 1047  .db 0h92 ; 0h0442: normal track data
   4152 6B                 1048  .db 0h6B ; 0h0443: vol = 0hA (inverted), no pitch, no note, no instrument
   4153 01                 1049  .db 0h01 ; 0h0444: instrument
   4154 AA                 1050  .db 0hAA ; 0h0445: normal track data
   4155 49                 1051  .db 0h49 ; 0h0446: vol = 0hB (inverted), no pitch, no note, no instrument
   4156 C2                 1052  .db 0hC2 ; 0h0447: normal track data,  note: E5
   4157 47                 1053  .db 0h47 ; 0h0448: vol = 0hC (inverted), no pitch, no note, no instrument
   4158 AA                 1054  .db 0hAA ; 0h0449: normal track data
   4159 49                 1055  .db 0h49 ; 0h044A: vol = 0hB (inverted), no pitch, no note, no instrument
   415A 92                 1056  .db 0h92 ; 0h044B: normal track data
   415B 61                 1057  .db 0h61 ; 0h044C: vol = 0hF (inverted), no pitch, no note, no instrument
   415C 04                 1058  .db 0h04 ; 0h044D: instrument
   415D 42                 1059  .db 0h42 ; 0h044E: normal track data
   415E 00                 1060  .db 0h00 ; 0h044F: vol off, no pitch, no note, no instrument
   415F 92                 1061  .db 0h92 ; 0h0450: normal track data
   4160 60                 1062  .db 0h60 ; 0h0451: vol off, no pitch, note, instrument
   4161 03                 1063  .db 0h03 ; 0h0452: instrument
   4162 42                 1064  .db 0h42 ; 0h0453: normal track data
   4163 00                 1065  .db 0h00 ; 0h0454: vol off, no pitch, no note, no instrument
   4164 92                 1066  .db 0h92 ; 0h0455: normal track data
   4165 6B                 1067  .db 0h6B ; 0h0456: vol = 0hA (inverted), no pitch, no note, no instrument
   4166 01                 1068  .db 0h01 ; 0h0457: instrument
   4167 AA                 1069  .db 0hAA ; 0h0458: normal track data
   4168 49                 1070  .db 0h49 ; 0h0459: vol = 0hB (inverted), no pitch, no note, no instrument
   4169 C2                 1071  .db 0hC2 ; 0h045A: normal track data,  note: E5
   416A 47                 1072  .db 0h47 ; 0h045B: vol = 0hC (inverted), no pitch, no note, no instrument
   416B AA                 1073  .db 0hAA ; 0h045C: normal track data
   416C 49                 1074  .db 0h49 ; 0h045D: vol = 0hB (inverted), no pitch, no note, no instrument
   416D 92                 1075  .db 0h92 ; 0h045E: normal track data
   416E 61                 1076  .db 0h61 ; 0h045F: vol = 0hF (inverted), no pitch, no note, no instrument
   416F 03                 1077  .db 0h03 ; 0h0460: instrument
   4170 42                 1078  .db 0h42 ; 0h0461: normal track data
   4171 00                 1079  .db 0h00 ; 0h0462: vol off, no pitch, no note, no instrument
   4172 92                 1080  .db 0h92 ; 0h0463: normal track data
   4173 40                 1081  .db 0h40 ; 0h0464: vol off, no pitch, note, no instrument
   4174 42                 1082  .db 0h42 ; 0h0465: normal track data
   4175 00                 1083  .db 0h00 ; 0h0466: vol off, no pitch, no note, no instrument
   4176 92                 1084  .db 0h92 ; 0h0467: normal track data
   4177 6B                 1085  .db 0h6B ; 0h0468: vol = 0hA (inverted), no pitch, no note, no instrument
   4178 01                 1086  .db 0h01 ; 0h0469: instrument
   4179 AA                 1087  .db 0hAA ; 0h046A: normal track data
   417A 49                 1088  .db 0h49 ; 0h046B: vol = 0hB (inverted), no pitch, no note, no instrument
   417B C2                 1089  .db 0hC2 ; 0h046C: normal track data,  note: E5
   417C 47                 1090  .db 0h47 ; 0h046D: vol = 0hC (inverted), no pitch, no note, no instrument
   417D AA                 1091  .db 0hAA ; 0h046E: normal track data
   417E 49                 1092  .db 0h49 ; 0h046F: vol = 0hB (inverted), no pitch, no note, no instrument
   417F 92                 1093  .db 0h92 ; 0h0470: normal track data
   4180 61                 1094  .db 0h61 ; 0h0471: vol = 0hF (inverted), no pitch, no note, no instrument
   4181 04                 1095  .db 0h04 ; 0h0472: instrument
   4182 42                 1096  .db 0h42 ; 0h0473: normal track data
   4183 00                 1097  .db 0h00 ; 0h0474: vol off, no pitch, no note, no instrument
   4184 92                 1098  .db 0h92 ; 0h0475: normal track data
   4185 60                 1099  .db 0h60 ; 0h0476: vol off, no pitch, note, instrument
   4186 03                 1100  .db 0h03 ; 0h0477: instrument
   4187 42                 1101  .db 0h42 ; 0h0478: normal track data
   4188 00                 1102  .db 0h00 ; 0h0479: vol off, no pitch, no note, no instrument
   4189 92                 1103  .db 0h92 ; 0h047A: normal track data
   418A 6B                 1104  .db 0h6B ; 0h047B: vol = 0hA (inverted), no pitch, no note, no instrument
   418B 01                 1105  .db 0h01 ; 0h047C: instrument
   418C AA                 1106  .db 0hAA ; 0h047D: normal track data
   418D 49                 1107  .db 0h49 ; 0h047E: vol = 0hB (inverted), no pitch, no note, no instrument
   418E C2                 1108  .db 0hC2 ; 0h047F: normal track data,  note: E5
   418F 47                 1109  .db 0h47 ; 0h0480: vol = 0hC (inverted), no pitch, no note, no instrument
   4190 AA                 1110  .db 0hAA ; 0h0481: normal track data
   4191 49                 1111  .db 0h49 ; 0h0482: vol = 0hB (inverted), no pitch, no note, no instrument
   4192 92                 1112  .db 0h92 ; 0h0483: normal track data
   4193 61                 1113  .db 0h61 ; 0h0484: vol = 0hF (inverted), no pitch, no note, no instrument
   4194 03                 1114  .db 0h03 ; 0h0485: instrument
   4195 42                 1115  .db 0h42 ; 0h0486: normal track data
   4196 00                 1116  .db 0h00 ; 0h0487: vol off, no pitch, no note, no instrument
   4197 92                 1117  .db 0h92 ; 0h0488: normal track data
   4198 40                 1118  .db 0h40 ; 0h0489: vol off, no pitch, note, no instrument
   4199 42                 1119  .db 0h42 ; 0h048A: normal track data
   419A 00                 1120  .db 0h00 ; 0h048B: vol off, no pitch, no note, no instrument
   419B 92                 1121  .db 0h92 ; 0h048C: normal track data
   419C 6B                 1122  .db 0h6B ; 0h048D: vol = 0hA (inverted), no pitch, no note, no instrument
   419D 01                 1123  .db 0h01 ; 0h048E: instrument
   419E AA                 1124  .db 0hAA ; 0h048F: normal track data
   419F 49                 1125  .db 0h49 ; 0h0490: vol = 0hB (inverted), no pitch, no note, no instrument
   41A0 C2                 1126  .db 0hC2 ; 0h0491: normal track data,  note: E5
   41A1 47                 1127  .db 0h47 ; 0h0492: vol = 0hC (inverted), no pitch, no note, no instrument
   41A2 AA                 1128  .db 0hAA ; 0h0493: normal track data
   41A3 49                 1129  .db 0h49 ; 0h0494: vol = 0hB (inverted), no pitch, no note, no instrument
   41A4 92                 1130  .db 0h92 ; 0h0495: normal track data
   41A5 61                 1131  .db 0h61 ; 0h0496: vol = 0hF (inverted), no pitch, no note, no instrument
   41A6 04                 1132  .db 0h04 ; 0h0497: instrument
   41A7 42                 1133  .db 0h42 ; 0h0498: normal track data
   41A8 00                 1134  .db 0h00 ; 0h0499: vol off, no pitch, no note, no instrument
   41A9 92                 1135  .db 0h92 ; 0h049A: normal track data
   41AA 60                 1136  .db 0h60 ; 0h049B: vol off, no pitch, note, instrument
   41AB 03                 1137  .db 0h03 ; 0h049C: instrument
   41AC 42                 1138  .db 0h42 ; 0h049D: normal track data
   41AD 00                 1139  .db 0h00 ; 0h049E: vol off, no pitch, no note, no instrument
   41AE 92                 1140  .db 0h92 ; 0h049F: normal track data
   41AF 6B                 1141  .db 0h6B ; 0h04A0: vol = 0hA (inverted), no pitch, no note, no instrument
   41B0 01                 1142  .db 0h01 ; 0h04A1: instrument
   41B1 AA                 1143  .db 0hAA ; 0h04A2: normal track data
   41B2 49                 1144  .db 0h49 ; 0h04A3: vol = 0hB (inverted), no pitch, no note, no instrument
   41B3 C2                 1145  .db 0hC2 ; 0h04A4: normal track data,  note: E5
   41B4 47                 1146  .db 0h47 ; 0h04A5: vol = 0hC (inverted), no pitch, no note, no instrument
   41B5 AA                 1147  .db 0hAA ; 0h04A6: normal track data
   41B6 49                 1148  .db 0h49 ; 0h04A7: vol = 0hB (inverted), no pitch, no note, no instrument
   41B7                    1149 trackDef12Test:
   41B7 92                 1150  .db 0h92 ; 0h04A8: normal track data
   41B8 E1                 1151  .db 0hE1 ; 0h04A9: vol = 0hF (inverted), no pitch, no note, no instrument
   41B9 00 00              1152  .dw 0h0000 ; 0h04AA: pitch
   41BB 03                 1153  .db 0h03 ; 0h04AC: instrument
   41BC 42                 1154  .db 0h42 ; 0h04AD: normal track data
   41BD 00                 1155  .db 0h00 ; 0h04AE: vol off, no pitch, no note, no instrument
   41BE 92                 1156  .db 0h92 ; 0h04AF: normal track data
   41BF 40                 1157  .db 0h40 ; 0h04B0: vol off, no pitch, note, no instrument
   41C0 42                 1158  .db 0h42 ; 0h04B1: normal track data
   41C1 00                 1159  .db 0h00 ; 0h04B2: vol off, no pitch, no note, no instrument
   41C2 92                 1160  .db 0h92 ; 0h04B3: normal track data
   41C3 6B                 1161  .db 0h6B ; 0h04B4: vol = 0hA (inverted), no pitch, no note, no instrument
   41C4 01                 1162  .db 0h01 ; 0h04B5: instrument
   41C5 AA                 1163  .db 0hAA ; 0h04B6: normal track data
   41C6 49                 1164  .db 0h49 ; 0h04B7: vol = 0hB (inverted), no pitch, no note, no instrument
   41C7 C2                 1165  .db 0hC2 ; 0h04B8: normal track data,  note: E5
   41C8 47                 1166  .db 0h47 ; 0h04B9: vol = 0hC (inverted), no pitch, no note, no instrument
   41C9 AA                 1167  .db 0hAA ; 0h04BA: normal track data
   41CA 49                 1168  .db 0h49 ; 0h04BB: vol = 0hB (inverted), no pitch, no note, no instrument
   41CB 92                 1169  .db 0h92 ; 0h04BC: normal track data
   41CC 61                 1170  .db 0h61 ; 0h04BD: vol = 0hF (inverted), no pitch, no note, no instrument
   41CD 04                 1171  .db 0h04 ; 0h04BE: instrument
   41CE 42                 1172  .db 0h42 ; 0h04BF: normal track data
   41CF 00                 1173  .db 0h00 ; 0h04C0: vol off, no pitch, no note, no instrument
   41D0 92                 1174  .db 0h92 ; 0h04C1: normal track data
   41D1 60                 1175  .db 0h60 ; 0h04C2: vol off, no pitch, note, instrument
   41D2 03                 1176  .db 0h03 ; 0h04C3: instrument
   41D3 42                 1177  .db 0h42 ; 0h04C4: normal track data
   41D4 00                 1178  .db 0h00 ; 0h04C5: vol off, no pitch, no note, no instrument
   41D5 92                 1179  .db 0h92 ; 0h04C6: normal track data
   41D6 6B                 1180  .db 0h6B ; 0h04C7: vol = 0hA (inverted), no pitch, no note, no instrument
   41D7 01                 1181  .db 0h01 ; 0h04C8: instrument
   41D8 AA                 1182  .db 0hAA ; 0h04C9: normal track data
   41D9 49                 1183  .db 0h49 ; 0h04CA: vol = 0hB (inverted), no pitch, no note, no instrument
   41DA C2                 1184  .db 0hC2 ; 0h04CB: normal track data,  note: E5
   41DB 47                 1185  .db 0h47 ; 0h04CC: vol = 0hC (inverted), no pitch, no note, no instrument
   41DC AA                 1186  .db 0hAA ; 0h04CD: normal track data
   41DD 49                 1187  .db 0h49 ; 0h04CE: vol = 0hB (inverted), no pitch, no note, no instrument
   41DE 92                 1188  .db 0h92 ; 0h04CF: normal track data
   41DF 61                 1189  .db 0h61 ; 0h04D0: vol = 0hF (inverted), no pitch, no note, no instrument
   41E0 03                 1190  .db 0h03 ; 0h04D1: instrument
   41E1 42                 1191  .db 0h42 ; 0h04D2: normal track data
   41E2 00                 1192  .db 0h00 ; 0h04D3: vol off, no pitch, no note, no instrument
   41E3 92                 1193  .db 0h92 ; 0h04D4: normal track data
   41E4 40                 1194  .db 0h40 ; 0h04D5: vol off, no pitch, note, no instrument
   41E5 42                 1195  .db 0h42 ; 0h04D6: normal track data
   41E6 00                 1196  .db 0h00 ; 0h04D7: vol off, no pitch, no note, no instrument
   41E7 92                 1197  .db 0h92 ; 0h04D8: normal track data
   41E8 6B                 1198  .db 0h6B ; 0h04D9: vol = 0hA (inverted), no pitch, no note, no instrument
   41E9 01                 1199  .db 0h01 ; 0h04DA: instrument
   41EA AA                 1200  .db 0hAA ; 0h04DB: normal track data
   41EB 49                 1201  .db 0h49 ; 0h04DC: vol = 0hB (inverted), no pitch, no note, no instrument
   41EC C2                 1202  .db 0hC2 ; 0h04DD: normal track data,  note: E5
   41ED 47                 1203  .db 0h47 ; 0h04DE: vol = 0hC (inverted), no pitch, no note, no instrument
   41EE AA                 1204  .db 0hAA ; 0h04DF: normal track data
   41EF 49                 1205  .db 0h49 ; 0h04E0: vol = 0hB (inverted), no pitch, no note, no instrument
   41F0 92                 1206  .db 0h92 ; 0h04E1: normal track data
   41F1 61                 1207  .db 0h61 ; 0h04E2: vol = 0hF (inverted), no pitch, no note, no instrument
   41F2 04                 1208  .db 0h04 ; 0h04E3: instrument
   41F3 42                 1209  .db 0h42 ; 0h04E4: normal track data
   41F4 00                 1210  .db 0h00 ; 0h04E5: vol off, no pitch, no note, no instrument
   41F5 92                 1211  .db 0h92 ; 0h04E6: normal track data
   41F6 60                 1212  .db 0h60 ; 0h04E7: vol off, no pitch, note, instrument
   41F7 03                 1213  .db 0h03 ; 0h04E8: instrument
   41F8 42                 1214  .db 0h42 ; 0h04E9: normal track data
   41F9 00                 1215  .db 0h00 ; 0h04EA: vol off, no pitch, no note, no instrument
   41FA 92                 1216  .db 0h92 ; 0h04EB: normal track data
   41FB 6B                 1217  .db 0h6B ; 0h04EC: vol = 0hA (inverted), no pitch, no note, no instrument
   41FC 01                 1218  .db 0h01 ; 0h04ED: instrument
   41FD AA                 1219  .db 0hAA ; 0h04EE: normal track data
   41FE 49                 1220  .db 0h49 ; 0h04EF: vol = 0hB (inverted), no pitch, no note, no instrument
   41FF C2                 1221  .db 0hC2 ; 0h04F0: normal track data,  note: E5
   4200 47                 1222  .db 0h47 ; 0h04F1: vol = 0hC (inverted), no pitch, no note, no instrument
   4201 AA                 1223  .db 0hAA ; 0h04F2: normal track data
   4202 49                 1224  .db 0h49 ; 0h04F3: vol = 0hB (inverted), no pitch, no note, no instrument
   4203 92                 1225  .db 0h92 ; 0h04F4: normal track data
   4204 61                 1226  .db 0h61 ; 0h04F5: vol = 0hF (inverted), no pitch, no note, no instrument
   4205 03                 1227  .db 0h03 ; 0h04F6: instrument
   4206 42                 1228  .db 0h42 ; 0h04F7: normal track data
   4207 00                 1229  .db 0h00 ; 0h04F8: vol off, no pitch, no note, no instrument
   4208 92                 1230  .db 0h92 ; 0h04F9: normal track data
   4209 40                 1231  .db 0h40 ; 0h04FA: vol off, no pitch, note, no instrument
   420A 42                 1232  .db 0h42 ; 0h04FB: normal track data
   420B 00                 1233  .db 0h00 ; 0h04FC: vol off, no pitch, no note, no instrument
   420C 92                 1234  .db 0h92 ; 0h04FD: normal track data
   420D 6B                 1235  .db 0h6B ; 0h04FE: vol = 0hA (inverted), no pitch, no note, no instrument
   420E 01                 1236  .db 0h01 ; 0h04FF: instrument
   420F AA                 1237  .db 0hAA ; 0h0500: normal track data
   4210 49                 1238  .db 0h49 ; 0h0501: vol = 0hB (inverted), no pitch, no note, no instrument
   4211 C2                 1239  .db 0hC2 ; 0h0502: normal track data,  note: E5
   4212 47                 1240  .db 0h47 ; 0h0503: vol = 0hC (inverted), no pitch, no note, no instrument
   4213 AA                 1241  .db 0hAA ; 0h0504: normal track data
   4214 49                 1242  .db 0h49 ; 0h0505: vol = 0hB (inverted), no pitch, no note, no instrument
   4215 92                 1243  .db 0h92 ; 0h0506: normal track data
   4216 61                 1244  .db 0h61 ; 0h0507: vol = 0hF (inverted), no pitch, no note, no instrument
   4217 04                 1245  .db 0h04 ; 0h0508: instrument
   4218 42                 1246  .db 0h42 ; 0h0509: normal track data
   4219 00                 1247  .db 0h00 ; 0h050A: vol off, no pitch, no note, no instrument
   421A 92                 1248  .db 0h92 ; 0h050B: normal track data
   421B 60                 1249  .db 0h60 ; 0h050C: vol off, no pitch, note, instrument
   421C 03                 1250  .db 0h03 ; 0h050D: instrument
   421D 42                 1251  .db 0h42 ; 0h050E: normal track data
   421E 00                 1252  .db 0h00 ; 0h050F: vol off, no pitch, no note, no instrument
   421F 92                 1253  .db 0h92 ; 0h0510: normal track data
   4220 6B                 1254  .db 0h6B ; 0h0511: vol = 0hA (inverted), no pitch, no note, no instrument
   4221 01                 1255  .db 0h01 ; 0h0512: instrument
   4222 AA                 1256  .db 0hAA ; 0h0513: normal track data
   4223 49                 1257  .db 0h49 ; 0h0514: vol = 0hB (inverted), no pitch, no note, no instrument
   4224 C2                 1258  .db 0hC2 ; 0h0515: normal track data,  note: E5
   4225 47                 1259  .db 0h47 ; 0h0516: vol = 0hC (inverted), no pitch, no note, no instrument
   4226 AA                 1260  .db 0hAA ; 0h0517: normal track data
   4227 49                 1261  .db 0h49 ; 0h0518: vol = 0hB (inverted), no pitch, no note, no instrument
   4228 92                 1262  .db 0h92 ; 0h0519: normal track data
   4229 61                 1263  .db 0h61 ; 0h051A: vol = 0hF (inverted), no pitch, no note, no instrument
   422A 03                 1264  .db 0h03 ; 0h051B: instrument
   422B 42                 1265  .db 0h42 ; 0h051C: normal track data
   422C 00                 1266  .db 0h00 ; 0h051D: vol off, no pitch, no note, no instrument
   422D 92                 1267  .db 0h92 ; 0h051E: normal track data
   422E 40                 1268  .db 0h40 ; 0h051F: vol off, no pitch, note, no instrument
   422F 42                 1269  .db 0h42 ; 0h0520: normal track data
   4230 00                 1270  .db 0h00 ; 0h0521: vol off, no pitch, no note, no instrument
   4231 92                 1271  .db 0h92 ; 0h0522: normal track data
   4232 6B                 1272  .db 0h6B ; 0h0523: vol = 0hA (inverted), no pitch, no note, no instrument
   4233 01                 1273  .db 0h01 ; 0h0524: instrument
   4234 AA                 1274  .db 0hAA ; 0h0525: normal track data
   4235 49                 1275  .db 0h49 ; 0h0526: vol = 0hB (inverted), no pitch, no note, no instrument
   4236 C2                 1276  .db 0hC2 ; 0h0527: normal track data,  note: E5
   4237 47                 1277  .db 0h47 ; 0h0528: vol = 0hC (inverted), no pitch, no note, no instrument
   4238 AA                 1278  .db 0hAA ; 0h0529: normal track data
   4239 49                 1279  .db 0h49 ; 0h052A: vol = 0hB (inverted), no pitch, no note, no instrument
   423A 92                 1280  .db 0h92 ; 0h052B: normal track data
   423B 61                 1281  .db 0h61 ; 0h052C: vol = 0hF (inverted), no pitch, no note, no instrument
   423C 03                 1282  .db 0h03 ; 0h052D: instrument
   423D 53                 1283  .db 0h53 ; 0h052E: full optimization, no escape: E3
   423E AA                 1284  .db 0hAA ; 0h052F: normal track data
   423F 40                 1285  .db 0h40 ; 0h0530: vol off, no pitch, note, no instrument
   4240 6B                 1286  .db 0h6B ; 0h0531: full optimization, no escape: E4
   4241 92                 1287  .db 0h92 ; 0h0532: normal track data
   4242 4B                 1288  .db 0h4B ; 0h0533: vol = 0hA (inverted), no pitch, no note, no instrument
   4243 92                 1289  .db 0h92 ; 0h0534: normal track data
   4244 49                 1290  .db 0h49 ; 0h0535: vol = 0hB (inverted), no pitch, no note, no instrument
   4245 92                 1291  .db 0h92 ; 0h0536: normal track data,  note: E3
   4246 67                 1292  .db 0h67 ; 0h0537: vol = 0hC (inverted), no pitch, no note, no instrument
   4247 04                 1293  .db 0h04 ; 0h0538: instrument
   4248 92                 1294  .db 0h92 ; 0h0539: normal track data
   4249 49                 1295  .db 0h49 ; 0h053A: vol = 0hB (inverted), no pitch, no note, no instrument
   424A                    1296 trackDef15Test:
   424A 72                 1297  .db 0h72 ; 0h053B: normal track data
   424B E1                 1298  .db 0hE1 ; 0h053C: vol = 0hF (inverted), no pitch, no note, no instrument
   424C 00 00              1299  .dw 0h0000 ; 0h053D: pitch
   424E 03                 1300  .db 0h03 ; 0h053F: instrument
   424F 5A                 1301  .db 0h5A ; 0h0540: normal track data
   4250 60                 1302  .db 0h60 ; 0h0541: vol off, no pitch, note, instrument
   4251 01                 1303  .db 0h01 ; 0h0542: instrument
   4252 B2                 1304  .db 0hB2 ; 0h0543: normal track data,  note: G#4
   4253 7F                 1305  .db 0h7F ; 0h0544: vol = 0h0 (inverted), no pitch, no note, no instrument
   4254 06                 1306  .db 0h06 ; 0h0545: instrument
   4255 5A                 1307  .db 0h5A ; 0h0546: normal track data
   4256 61                 1308  .db 0h61 ; 0h0547: vol = 0hF (inverted), no pitch, no note, no instrument
   4257 01                 1309  .db 0h01 ; 0h0548: instrument
   4258 72                 1310  .db 0h72 ; 0h0549: normal track data
   4259 60                 1311  .db 0h60 ; 0h054A: vol off, no pitch, note, instrument
   425A 04                 1312  .db 0h04 ; 0h054B: instrument
   425B B2                 1313  .db 0hB2 ; 0h054C: normal track data,  note: G#4
   425C 7F                 1314  .db 0h7F ; 0h054D: vol = 0h0 (inverted), no pitch, no note, no instrument
   425D 06                 1315  .db 0h06 ; 0h054E: instrument
   425E 5A                 1316  .db 0h5A ; 0h054F: normal track data
   425F 61                 1317  .db 0h61 ; 0h0550: vol = 0hF (inverted), no pitch, no note, no instrument
   4260 01                 1318  .db 0h01 ; 0h0551: instrument
   4261 72                 1319  .db 0h72 ; 0h0552: normal track data
   4262 60                 1320  .db 0h60 ; 0h0553: vol off, no pitch, note, instrument
   4263 03                 1321  .db 0h03 ; 0h0554: instrument
   4264 B2                 1322  .db 0hB2 ; 0h0555: normal track data,  note: G#4
   4265 7F                 1323  .db 0h7F ; 0h0556: vol = 0h0 (inverted), no pitch, no note, no instrument
   4266 06                 1324  .db 0h06 ; 0h0557: instrument
   4267 5A                 1325  .db 0h5A ; 0h0558: normal track data
   4268 61                 1326  .db 0h61 ; 0h0559: vol = 0hF (inverted), no pitch, no note, no instrument
   4269 01                 1327  .db 0h01 ; 0h055A: instrument
   426A 72                 1328  .db 0h72 ; 0h055B: normal track data
   426B 60                 1329  .db 0h60 ; 0h055C: vol off, no pitch, note, instrument
   426C 03                 1330  .db 0h03 ; 0h055D: instrument
   426D AE                 1331  .db 0hAE ; 0h055E: normal track data,  note: F#4
   426E 7F                 1332  .db 0h7F ; 0h055F: vol = 0h0 (inverted), no pitch, no note, no instrument
   426F 07                 1333  .db 0h07 ; 0h0560: instrument
   4270 72                 1334  .db 0h72 ; 0h0561: normal track data
   4271 61                 1335  .db 0h61 ; 0h0562: vol = 0hF (inverted), no pitch, no note, no instrument
   4272 04                 1336  .db 0h04 ; 0h0563: instrument
   4273 5A                 1337  .db 0h5A ; 0h0564: normal track data
   4274 60                 1338  .db 0h60 ; 0h0565: vol off, no pitch, note, instrument
   4275 01                 1339  .db 0h01 ; 0h0566: instrument
   4276 AE                 1340  .db 0hAE ; 0h0567: normal track data,  note: F#4
   4277 7F                 1341  .db 0h7F ; 0h0568: vol = 0h0 (inverted), no pitch, no note, no instrument
   4278 07                 1342  .db 0h07 ; 0h0569: instrument
   4279 5A                 1343  .db 0h5A ; 0h056A: normal track data
   427A 61                 1344  .db 0h61 ; 0h056B: vol = 0hF (inverted), no pitch, no note, no instrument
   427B 01                 1345  .db 0h01 ; 0h056C: instrument
   427C 72                 1346  .db 0h72 ; 0h056D: normal track data
   427D 60                 1347  .db 0h60 ; 0h056E: vol off, no pitch, note, instrument
   427E 03                 1348  .db 0h03 ; 0h056F: instrument
   427F 5A                 1349  .db 0h5A ; 0h0570: normal track data
   4280 60                 1350  .db 0h60 ; 0h0571: vol off, no pitch, note, instrument
   4281 01                 1351  .db 0h01 ; 0h0572: instrument
   4282 B2                 1352  .db 0hB2 ; 0h0573: normal track data,  note: G#4
   4283 7F                 1353  .db 0h7F ; 0h0574: vol = 0h0 (inverted), no pitch, no note, no instrument
   4284 08                 1354  .db 0h08 ; 0h0575: instrument
   4285 5A                 1355  .db 0h5A ; 0h0576: normal track data
   4286 61                 1356  .db 0h61 ; 0h0577: vol = 0hF (inverted), no pitch, no note, no instrument
   4287 01                 1357  .db 0h01 ; 0h0578: instrument
   4288 72                 1358  .db 0h72 ; 0h0579: normal track data
   4289 60                 1359  .db 0h60 ; 0h057A: vol off, no pitch, note, instrument
   428A 04                 1360  .db 0h04 ; 0h057B: instrument
   428B B2                 1361  .db 0hB2 ; 0h057C: normal track data,  note: G#4
   428C 7F                 1362  .db 0h7F ; 0h057D: vol = 0h0 (inverted), no pitch, no note, no instrument
   428D 08                 1363  .db 0h08 ; 0h057E: instrument
   428E 5A                 1364  .db 0h5A ; 0h057F: normal track data
   428F 61                 1365  .db 0h61 ; 0h0580: vol = 0hF (inverted), no pitch, no note, no instrument
   4290 01                 1366  .db 0h01 ; 0h0581: instrument
   4291 72                 1367  .db 0h72 ; 0h0582: normal track data
   4292 60                 1368  .db 0h60 ; 0h0583: vol off, no pitch, note, instrument
   4293 03                 1369  .db 0h03 ; 0h0584: instrument
   4294 B8                 1370  .db 0hB8 ; 0h0585: normal track data,  note: B4
   4295 7F                 1371  .db 0h7F ; 0h0586: vol = 0h0 (inverted), no pitch, no note, no instrument
   4296 07                 1372  .db 0h07 ; 0h0587: instrument
   4297 5A                 1373  .db 0h5A ; 0h0588: normal track data
   4298 61                 1374  .db 0h61 ; 0h0589: vol = 0hF (inverted), no pitch, no note, no instrument
   4299 01                 1375  .db 0h01 ; 0h058A: instrument
   429A 72                 1376  .db 0h72 ; 0h058B: normal track data
   429B 60                 1377  .db 0h60 ; 0h058C: vol off, no pitch, note, instrument
   429C 03                 1378  .db 0h03 ; 0h058D: instrument
   429D B8                 1379  .db 0hB8 ; 0h058E: normal track data,  note: B4
   429E 7F                 1380  .db 0h7F ; 0h058F: vol = 0h0 (inverted), no pitch, no note, no instrument
   429F 07                 1381  .db 0h07 ; 0h0590: instrument
   42A0 72                 1382  .db 0h72 ; 0h0591: normal track data
   42A1 61                 1383  .db 0h61 ; 0h0592: vol = 0hF (inverted), no pitch, no note, no instrument
   42A2 04                 1384  .db 0h04 ; 0h0593: instrument
   42A3 5A                 1385  .db 0h5A ; 0h0594: normal track data
   42A4 60                 1386  .db 0h60 ; 0h0595: vol off, no pitch, note, instrument
   42A5 01                 1387  .db 0h01 ; 0h0596: instrument
   42A6 B2                 1388  .db 0hB2 ; 0h0597: normal track data,  note: G#4
   42A7 7F                 1389  .db 0h7F ; 0h0598: vol = 0h0 (inverted), no pitch, no note, no instrument
   42A8 08                 1390  .db 0h08 ; 0h0599: instrument
   42A9 5A                 1391  .db 0h5A ; 0h059A: normal track data
   42AA 61                 1392  .db 0h61 ; 0h059B: vol = 0hF (inverted), no pitch, no note, no instrument
   42AB 01                 1393  .db 0h01 ; 0h059C: instrument
   42AC 72                 1394  .db 0h72 ; 0h059D: normal track data
   42AD 60                 1395  .db 0h60 ; 0h059E: vol off, no pitch, note, instrument
   42AE 03                 1396  .db 0h03 ; 0h059F: instrument
   42AF 5A                 1397  .db 0h5A ; 0h05A0: normal track data
   42B0 60                 1398  .db 0h60 ; 0h05A1: vol off, no pitch, note, instrument
   42B1 01                 1399  .db 0h01 ; 0h05A2: instrument
   42B2 B2                 1400  .db 0hB2 ; 0h05A3: normal track data,  note: G#4
   42B3 7F                 1401  .db 0h7F ; 0h05A4: vol = 0h0 (inverted), no pitch, no note, no instrument
   42B4 06                 1402  .db 0h06 ; 0h05A5: instrument
   42B5 5A                 1403  .db 0h5A ; 0h05A6: normal track data
   42B6 61                 1404  .db 0h61 ; 0h05A7: vol = 0hF (inverted), no pitch, no note, no instrument
   42B7 01                 1405  .db 0h01 ; 0h05A8: instrument
   42B8 72                 1406  .db 0h72 ; 0h05A9: normal track data
   42B9 60                 1407  .db 0h60 ; 0h05AA: vol off, no pitch, note, instrument
   42BA 04                 1408  .db 0h04 ; 0h05AB: instrument
   42BB B2                 1409  .db 0hB2 ; 0h05AC: normal track data,  note: G#4
   42BC 7F                 1410  .db 0h7F ; 0h05AD: vol = 0h0 (inverted), no pitch, no note, no instrument
   42BD 06                 1411  .db 0h06 ; 0h05AE: instrument
   42BE 5A                 1412  .db 0h5A ; 0h05AF: normal track data
   42BF 61                 1413  .db 0h61 ; 0h05B0: vol = 0hF (inverted), no pitch, no note, no instrument
   42C0 01                 1414  .db 0h01 ; 0h05B1: instrument
   42C1 72                 1415  .db 0h72 ; 0h05B2: normal track data
   42C2 60                 1416  .db 0h60 ; 0h05B3: vol off, no pitch, note, instrument
   42C3 03                 1417  .db 0h03 ; 0h05B4: instrument
   42C4 B2                 1418  .db 0hB2 ; 0h05B5: normal track data,  note: G#4
   42C5 7F                 1419  .db 0h7F ; 0h05B6: vol = 0h0 (inverted), no pitch, no note, no instrument
   42C6 06                 1420  .db 0h06 ; 0h05B7: instrument
   42C7 5A                 1421  .db 0h5A ; 0h05B8: normal track data
   42C8 61                 1422  .db 0h61 ; 0h05B9: vol = 0hF (inverted), no pitch, no note, no instrument
   42C9 01                 1423  .db 0h01 ; 0h05BA: instrument
   42CA 72                 1424  .db 0h72 ; 0h05BB: normal track data
   42CB 60                 1425  .db 0h60 ; 0h05BC: vol off, no pitch, note, instrument
   42CC 03                 1426  .db 0h03 ; 0h05BD: instrument
   42CD AE                 1427  .db 0hAE ; 0h05BE: normal track data,  note: F#4
   42CE 7F                 1428  .db 0h7F ; 0h05BF: vol = 0h0 (inverted), no pitch, no note, no instrument
   42CF 07                 1429  .db 0h07 ; 0h05C0: instrument
   42D0 72                 1430  .db 0h72 ; 0h05C1: normal track data
   42D1 61                 1431  .db 0h61 ; 0h05C2: vol = 0hF (inverted), no pitch, no note, no instrument
   42D2 04                 1432  .db 0h04 ; 0h05C3: instrument
   42D3 5A                 1433  .db 0h5A ; 0h05C4: normal track data
   42D4 60                 1434  .db 0h60 ; 0h05C5: vol off, no pitch, note, instrument
   42D5 01                 1435  .db 0h01 ; 0h05C6: instrument
   42D6 AE                 1436  .db 0hAE ; 0h05C7: normal track data,  note: F#4
   42D7 7F                 1437  .db 0h7F ; 0h05C8: vol = 0h0 (inverted), no pitch, no note, no instrument
   42D8 07                 1438  .db 0h07 ; 0h05C9: instrument
   42D9 5A                 1439  .db 0h5A ; 0h05CA: normal track data
   42DA 61                 1440  .db 0h61 ; 0h05CB: vol = 0hF (inverted), no pitch, no note, no instrument
   42DB 01                 1441  .db 0h01 ; 0h05CC: instrument
   42DC 72                 1442  .db 0h72 ; 0h05CD: normal track data
   42DD 60                 1443  .db 0h60 ; 0h05CE: vol off, no pitch, note, instrument
   42DE 03                 1444  .db 0h03 ; 0h05CF: instrument
   42DF 5A                 1445  .db 0h5A ; 0h05D0: normal track data
   42E0 60                 1446  .db 0h60 ; 0h05D1: vol off, no pitch, note, instrument
   42E1 01                 1447  .db 0h01 ; 0h05D2: instrument
   42E2 B2                 1448  .db 0hB2 ; 0h05D3: normal track data,  note: G#4
   42E3 7F                 1449  .db 0h7F ; 0h05D4: vol = 0h0 (inverted), no pitch, no note, no instrument
   42E4 08                 1450  .db 0h08 ; 0h05D5: instrument
   42E5 5A                 1451  .db 0h5A ; 0h05D6: normal track data
   42E6 61                 1452  .db 0h61 ; 0h05D7: vol = 0hF (inverted), no pitch, no note, no instrument
   42E7 01                 1453  .db 0h01 ; 0h05D8: instrument
   42E8 72                 1454  .db 0h72 ; 0h05D9: normal track data
   42E9 60                 1455  .db 0h60 ; 0h05DA: vol off, no pitch, note, instrument
   42EA 04                 1456  .db 0h04 ; 0h05DB: instrument
   42EB B2                 1457  .db 0hB2 ; 0h05DC: normal track data,  note: G#4
   42EC 7F                 1458  .db 0h7F ; 0h05DD: vol = 0h0 (inverted), no pitch, no note, no instrument
   42ED 08                 1459  .db 0h08 ; 0h05DE: instrument
   42EE 5A                 1460  .db 0h5A ; 0h05DF: normal track data
   42EF 61                 1461  .db 0h61 ; 0h05E0: vol = 0hF (inverted), no pitch, no note, no instrument
   42F0 01                 1462  .db 0h01 ; 0h05E1: instrument
   42F1 72                 1463  .db 0h72 ; 0h05E2: normal track data
   42F2 60                 1464  .db 0h60 ; 0h05E3: vol off, no pitch, note, instrument
   42F3 03                 1465  .db 0h03 ; 0h05E4: instrument
   42F4 B8                 1466  .db 0hB8 ; 0h05E5: normal track data,  note: B4
   42F5 7F                 1467  .db 0h7F ; 0h05E6: vol = 0h0 (inverted), no pitch, no note, no instrument
   42F6 07                 1468  .db 0h07 ; 0h05E7: instrument
   42F7 5A                 1469  .db 0h5A ; 0h05E8: normal track data
   42F8 61                 1470  .db 0h61 ; 0h05E9: vol = 0hF (inverted), no pitch, no note, no instrument
   42F9 01                 1471  .db 0h01 ; 0h05EA: instrument
   42FA 72                 1472  .db 0h72 ; 0h05EB: normal track data
   42FB 60                 1473  .db 0h60 ; 0h05EC: vol off, no pitch, note, instrument
   42FC 03                 1474  .db 0h03 ; 0h05ED: instrument
   42FD B8                 1475  .db 0hB8 ; 0h05EE: normal track data,  note: B4
   42FE 7F                 1476  .db 0h7F ; 0h05EF: vol = 0h0 (inverted), no pitch, no note, no instrument
   42FF 07                 1477  .db 0h07 ; 0h05F0: instrument
   4300 72                 1478  .db 0h72 ; 0h05F1: normal track data
   4301 61                 1479  .db 0h61 ; 0h05F2: vol = 0hF (inverted), no pitch, no note, no instrument
   4302 04                 1480  .db 0h04 ; 0h05F3: instrument
   4303 5A                 1481  .db 0h5A ; 0h05F4: normal track data
   4304 60                 1482  .db 0h60 ; 0h05F5: vol off, no pitch, note, instrument
   4305 01                 1483  .db 0h01 ; 0h05F6: instrument
   4306 B2                 1484  .db 0hB2 ; 0h05F7: normal track data,  note: G#4
   4307 7F                 1485  .db 0h7F ; 0h05F8: vol = 0h0 (inverted), no pitch, no note, no instrument
   4308 08                 1486  .db 0h08 ; 0h05F9: instrument
   4309 5A                 1487  .db 0h5A ; 0h05FA: normal track data
   430A 61                 1488  .db 0h61 ; 0h05FB: vol = 0hF (inverted), no pitch, no note, no instrument
   430B 01                 1489  .db 0h01 ; 0h05FC: instrument
   430C                    1490 trackDef11Test:
   430C C2                 1491  .db 0hC2 ; 0h05FD: normal track data
   430D F3                 1492  .db 0hF3 ; 0h05FE: vol = 0h6 (inverted), no pitch, no note, no instrument
   430E 00 00              1493  .dw 0h0000 ; 0h05FF: pitch
   4310 05                 1494  .db 0h05 ; 0h0601: instrument
   4311 DA                 1495  .db 0hDA ; 0h0602: normal track data
   4312 40                 1496  .db 0h40 ; 0h0603: vol off, no pitch, note, no instrument
   4313 C2                 1497  .db 0hC2 ; 0h0604: normal track data
   4314 40                 1498  .db 0h40 ; 0h0605: vol off, no pitch, note, no instrument
   4315 AA                 1499  .db 0hAA ; 0h0606: normal track data
   4316 40                 1500  .db 0h40 ; 0h0607: vol off, no pitch, note, no instrument
   4317 92                 1501  .db 0h92 ; 0h0608: normal track data
   4318 40                 1502  .db 0h40 ; 0h0609: vol off, no pitch, note, no instrument
   4319 7A                 1503  .db 0h7A ; 0h060A: normal track data
   431A 40                 1504  .db 0h40 ; 0h060B: vol off, no pitch, note, no instrument
   431B 92                 1505  .db 0h92 ; 0h060C: normal track data
   431C 40                 1506  .db 0h40 ; 0h060D: vol off, no pitch, note, no instrument
   431D AA                 1507  .db 0hAA ; 0h060E: normal track data
   431E 40                 1508  .db 0h40 ; 0h060F: vol off, no pitch, note, no instrument
   431F C2                 1509  .db 0hC2 ; 0h0610: normal track data
   4320 40                 1510  .db 0h40 ; 0h0611: vol off, no pitch, note, no instrument
   4321 DA                 1511  .db 0hDA ; 0h0612: normal track data
   4322 40                 1512  .db 0h40 ; 0h0613: vol off, no pitch, note, no instrument
   4323 C2                 1513  .db 0hC2 ; 0h0614: normal track data
   4324 40                 1514  .db 0h40 ; 0h0615: vol off, no pitch, note, no instrument
   4325 AA                 1515  .db 0hAA ; 0h0616: normal track data
   4326 40                 1516  .db 0h40 ; 0h0617: vol off, no pitch, note, no instrument
   4327 92                 1517  .db 0h92 ; 0h0618: normal track data
   4328 40                 1518  .db 0h40 ; 0h0619: vol off, no pitch, note, no instrument
   4329 7A                 1519  .db 0h7A ; 0h061A: normal track data
   432A 40                 1520  .db 0h40 ; 0h061B: vol off, no pitch, note, no instrument
   432B 92                 1521  .db 0h92 ; 0h061C: normal track data
   432C 40                 1522  .db 0h40 ; 0h061D: vol off, no pitch, note, no instrument
   432D AA                 1523  .db 0hAA ; 0h061E: normal track data
   432E 40                 1524  .db 0h40 ; 0h061F: vol off, no pitch, note, no instrument
   432F C2                 1525  .db 0hC2 ; 0h0620: normal track data
   4330 40                 1526  .db 0h40 ; 0h0621: vol off, no pitch, note, no instrument
   4331 DA                 1527  .db 0hDA ; 0h0622: normal track data
   4332 40                 1528  .db 0h40 ; 0h0623: vol off, no pitch, note, no instrument
   4333 C2                 1529  .db 0hC2 ; 0h0624: normal track data
   4334 40                 1530  .db 0h40 ; 0h0625: vol off, no pitch, note, no instrument
   4335 AA                 1531  .db 0hAA ; 0h0626: normal track data
   4336 40                 1532  .db 0h40 ; 0h0627: vol off, no pitch, note, no instrument
   4337 92                 1533  .db 0h92 ; 0h0628: normal track data
   4338 40                 1534  .db 0h40 ; 0h0629: vol off, no pitch, note, no instrument
   4339 7A                 1535  .db 0h7A ; 0h062A: normal track data
   433A 40                 1536  .db 0h40 ; 0h062B: vol off, no pitch, note, no instrument
   433B 92                 1537  .db 0h92 ; 0h062C: normal track data
   433C 40                 1538  .db 0h40 ; 0h062D: vol off, no pitch, note, no instrument
   433D AA                 1539  .db 0hAA ; 0h062E: normal track data
   433E 40                 1540  .db 0h40 ; 0h062F: vol off, no pitch, note, no instrument
   433F C2                 1541  .db 0hC2 ; 0h0630: normal track data
   4340 40                 1542  .db 0h40 ; 0h0631: vol off, no pitch, note, no instrument
   4341 DA                 1543  .db 0hDA ; 0h0632: normal track data
   4342 40                 1544  .db 0h40 ; 0h0633: vol off, no pitch, note, no instrument
   4343 C2                 1545  .db 0hC2 ; 0h0634: normal track data
   4344 40                 1546  .db 0h40 ; 0h0635: vol off, no pitch, note, no instrument
   4345 AA                 1547  .db 0hAA ; 0h0636: normal track data
   4346 40                 1548  .db 0h40 ; 0h0637: vol off, no pitch, note, no instrument
   4347 92                 1549  .db 0h92 ; 0h0638: normal track data
   4348 40                 1550  .db 0h40 ; 0h0639: vol off, no pitch, note, no instrument
   4349 7A                 1551  .db 0h7A ; 0h063A: normal track data
   434A 40                 1552  .db 0h40 ; 0h063B: vol off, no pitch, note, no instrument
   434B 92                 1553  .db 0h92 ; 0h063C: normal track data
   434C 40                 1554  .db 0h40 ; 0h063D: vol off, no pitch, note, no instrument
   434D AA                 1555  .db 0hAA ; 0h063E: normal track data
   434E 40                 1556  .db 0h40 ; 0h063F: vol off, no pitch, note, no instrument
   434F C2                 1557  .db 0hC2 ; 0h0640: normal track data
   4350 40                 1558  .db 0h40 ; 0h0641: vol off, no pitch, note, no instrument
   4351 DA                 1559  .db 0hDA ; 0h0642: normal track data
   4352 40                 1560  .db 0h40 ; 0h0643: vol off, no pitch, note, no instrument
   4353 C2                 1561  .db 0hC2 ; 0h0644: normal track data
   4354 40                 1562  .db 0h40 ; 0h0645: vol off, no pitch, note, no instrument
   4355 AA                 1563  .db 0hAA ; 0h0646: normal track data
   4356 40                 1564  .db 0h40 ; 0h0647: vol off, no pitch, note, no instrument
   4357 92                 1565  .db 0h92 ; 0h0648: normal track data
   4358 40                 1566  .db 0h40 ; 0h0649: vol off, no pitch, note, no instrument
   4359 7A                 1567  .db 0h7A ; 0h064A: normal track data
   435A 40                 1568  .db 0h40 ; 0h064B: vol off, no pitch, note, no instrument
   435B 92                 1569  .db 0h92 ; 0h064C: normal track data
   435C 40                 1570  .db 0h40 ; 0h064D: vol off, no pitch, note, no instrument
   435D AA                 1571  .db 0hAA ; 0h064E: normal track data
   435E 40                 1572  .db 0h40 ; 0h064F: vol off, no pitch, note, no instrument
   435F C2                 1573  .db 0hC2 ; 0h0650: normal track data
   4360 40                 1574  .db 0h40 ; 0h0651: vol off, no pitch, note, no instrument
   4361 DA                 1575  .db 0hDA ; 0h0652: normal track data
   4362 40                 1576  .db 0h40 ; 0h0653: vol off, no pitch, note, no instrument
   4363 C2                 1577  .db 0hC2 ; 0h0654: normal track data
   4364 40                 1578  .db 0h40 ; 0h0655: vol off, no pitch, note, no instrument
   4365 AA                 1579  .db 0hAA ; 0h0656: normal track data
   4366 40                 1580  .db 0h40 ; 0h0657: vol off, no pitch, note, no instrument
   4367 92                 1581  .db 0h92 ; 0h0658: normal track data
   4368 40                 1582  .db 0h40 ; 0h0659: vol off, no pitch, note, no instrument
   4369 7A                 1583  .db 0h7A ; 0h065A: normal track data
   436A 40                 1584  .db 0h40 ; 0h065B: vol off, no pitch, note, no instrument
   436B 92                 1585  .db 0h92 ; 0h065C: normal track data
   436C 40                 1586  .db 0h40 ; 0h065D: vol off, no pitch, note, no instrument
   436D AA                 1587  .db 0hAA ; 0h065E: normal track data
   436E 40                 1588  .db 0h40 ; 0h065F: vol off, no pitch, note, no instrument
   436F C2                 1589  .db 0hC2 ; 0h0660: normal track data
   4370 40                 1590  .db 0h40 ; 0h0661: vol off, no pitch, note, no instrument
   4371 DA                 1591  .db 0hDA ; 0h0662: normal track data
   4372 40                 1592  .db 0h40 ; 0h0663: vol off, no pitch, note, no instrument
   4373 C2                 1593  .db 0hC2 ; 0h0664: normal track data
   4374 40                 1594  .db 0h40 ; 0h0665: vol off, no pitch, note, no instrument
   4375 AA                 1595  .db 0hAA ; 0h0666: normal track data
   4376 40                 1596  .db 0h40 ; 0h0667: vol off, no pitch, note, no instrument
   4377 92                 1597  .db 0h92 ; 0h0668: normal track data
   4378 40                 1598  .db 0h40 ; 0h0669: vol off, no pitch, note, no instrument
   4379 7A                 1599  .db 0h7A ; 0h066A: normal track data
   437A 40                 1600  .db 0h40 ; 0h066B: vol off, no pitch, note, no instrument
   437B 92                 1601  .db 0h92 ; 0h066C: normal track data
   437C 40                 1602  .db 0h40 ; 0h066D: vol off, no pitch, note, no instrument
   437D AA                 1603  .db 0hAA ; 0h066E: normal track data
   437E 40                 1604  .db 0h40 ; 0h066F: vol off, no pitch, note, no instrument
   437F C2                 1605  .db 0hC2 ; 0h0670: normal track data
   4380 40                 1606  .db 0h40 ; 0h0671: vol off, no pitch, note, no instrument
   4381 DA                 1607  .db 0hDA ; 0h0672: normal track data
   4382 40                 1608  .db 0h40 ; 0h0673: vol off, no pitch, note, no instrument
   4383 C2                 1609  .db 0hC2 ; 0h0674: normal track data
   4384 40                 1610  .db 0h40 ; 0h0675: vol off, no pitch, note, no instrument
   4385 AA                 1611  .db 0hAA ; 0h0676: normal track data
   4386 40                 1612  .db 0h40 ; 0h0677: vol off, no pitch, note, no instrument
   4387 92                 1613  .db 0h92 ; 0h0678: normal track data
   4388 40                 1614  .db 0h40 ; 0h0679: vol off, no pitch, note, no instrument
   4389 7A                 1615  .db 0h7A ; 0h067A: normal track data
   438A 40                 1616  .db 0h40 ; 0h067B: vol off, no pitch, note, no instrument
   438B 92                 1617  .db 0h92 ; 0h067C: normal track data
   438C 40                 1618  .db 0h40 ; 0h067D: vol off, no pitch, note, no instrument
   438D AA                 1619  .db 0hAA ; 0h067E: normal track data
   438E 40                 1620  .db 0h40 ; 0h067F: vol off, no pitch, note, no instrument
   438F                    1621 trackDef13Test:
   438F C2                 1622  .db 0hC2 ; 0h0680: normal track data
   4390 F3                 1623  .db 0hF3 ; 0h0681: vol = 0h6 (inverted), no pitch, no note, no instrument
   4391 00 00              1624  .dw 0h0000 ; 0h0682: pitch
   4393 05                 1625  .db 0h05 ; 0h0684: instrument
   4394 DA                 1626  .db 0hDA ; 0h0685: normal track data
   4395 40                 1627  .db 0h40 ; 0h0686: vol off, no pitch, note, no instrument
   4396 C2                 1628  .db 0hC2 ; 0h0687: normal track data
   4397 40                 1629  .db 0h40 ; 0h0688: vol off, no pitch, note, no instrument
   4398 AA                 1630  .db 0hAA ; 0h0689: normal track data
   4399 40                 1631  .db 0h40 ; 0h068A: vol off, no pitch, note, no instrument
   439A 92                 1632  .db 0h92 ; 0h068B: normal track data
   439B 40                 1633  .db 0h40 ; 0h068C: vol off, no pitch, note, no instrument
   439C 7A                 1634  .db 0h7A ; 0h068D: normal track data
   439D 40                 1635  .db 0h40 ; 0h068E: vol off, no pitch, note, no instrument
   439E 92                 1636  .db 0h92 ; 0h068F: normal track data
   439F 40                 1637  .db 0h40 ; 0h0690: vol off, no pitch, note, no instrument
   43A0 AA                 1638  .db 0hAA ; 0h0691: normal track data
   43A1 40                 1639  .db 0h40 ; 0h0692: vol off, no pitch, note, no instrument
   43A2 C2                 1640  .db 0hC2 ; 0h0693: normal track data
   43A3 40                 1641  .db 0h40 ; 0h0694: vol off, no pitch, note, no instrument
   43A4 DA                 1642  .db 0hDA ; 0h0695: normal track data
   43A5 40                 1643  .db 0h40 ; 0h0696: vol off, no pitch, note, no instrument
   43A6 C2                 1644  .db 0hC2 ; 0h0697: normal track data
   43A7 40                 1645  .db 0h40 ; 0h0698: vol off, no pitch, note, no instrument
   43A8 AA                 1646  .db 0hAA ; 0h0699: normal track data
   43A9 40                 1647  .db 0h40 ; 0h069A: vol off, no pitch, note, no instrument
   43AA 92                 1648  .db 0h92 ; 0h069B: normal track data
   43AB 40                 1649  .db 0h40 ; 0h069C: vol off, no pitch, note, no instrument
   43AC 7A                 1650  .db 0h7A ; 0h069D: normal track data
   43AD 40                 1651  .db 0h40 ; 0h069E: vol off, no pitch, note, no instrument
   43AE 92                 1652  .db 0h92 ; 0h069F: normal track data
   43AF 40                 1653  .db 0h40 ; 0h06A0: vol off, no pitch, note, no instrument
   43B0 AA                 1654  .db 0hAA ; 0h06A1: normal track data
   43B1 40                 1655  .db 0h40 ; 0h06A2: vol off, no pitch, note, no instrument
   43B2 C2                 1656  .db 0hC2 ; 0h06A3: normal track data
   43B3 40                 1657  .db 0h40 ; 0h06A4: vol off, no pitch, note, no instrument
   43B4 DA                 1658  .db 0hDA ; 0h06A5: normal track data
   43B5 40                 1659  .db 0h40 ; 0h06A6: vol off, no pitch, note, no instrument
   43B6 C2                 1660  .db 0hC2 ; 0h06A7: normal track data
   43B7 40                 1661  .db 0h40 ; 0h06A8: vol off, no pitch, note, no instrument
   43B8 AA                 1662  .db 0hAA ; 0h06A9: normal track data
   43B9 40                 1663  .db 0h40 ; 0h06AA: vol off, no pitch, note, no instrument
   43BA 92                 1664  .db 0h92 ; 0h06AB: normal track data
   43BB 40                 1665  .db 0h40 ; 0h06AC: vol off, no pitch, note, no instrument
   43BC 7A                 1666  .db 0h7A ; 0h06AD: normal track data
   43BD 40                 1667  .db 0h40 ; 0h06AE: vol off, no pitch, note, no instrument
   43BE 92                 1668  .db 0h92 ; 0h06AF: normal track data
   43BF 40                 1669  .db 0h40 ; 0h06B0: vol off, no pitch, note, no instrument
   43C0 AA                 1670  .db 0hAA ; 0h06B1: normal track data
   43C1 40                 1671  .db 0h40 ; 0h06B2: vol off, no pitch, note, no instrument
   43C2 C2                 1672  .db 0hC2 ; 0h06B3: normal track data
   43C3 40                 1673  .db 0h40 ; 0h06B4: vol off, no pitch, note, no instrument
   43C4 DA                 1674  .db 0hDA ; 0h06B5: normal track data
   43C5 40                 1675  .db 0h40 ; 0h06B6: vol off, no pitch, note, no instrument
   43C6 C2                 1676  .db 0hC2 ; 0h06B7: normal track data
   43C7 40                 1677  .db 0h40 ; 0h06B8: vol off, no pitch, note, no instrument
   43C8 AA                 1678  .db 0hAA ; 0h06B9: normal track data
   43C9 40                 1679  .db 0h40 ; 0h06BA: vol off, no pitch, note, no instrument
   43CA 92                 1680  .db 0h92 ; 0h06BB: normal track data
   43CB 40                 1681  .db 0h40 ; 0h06BC: vol off, no pitch, note, no instrument
   43CC 7A                 1682  .db 0h7A ; 0h06BD: normal track data
   43CD 40                 1683  .db 0h40 ; 0h06BE: vol off, no pitch, note, no instrument
   43CE 92                 1684  .db 0h92 ; 0h06BF: normal track data
   43CF 40                 1685  .db 0h40 ; 0h06C0: vol off, no pitch, note, no instrument
   43D0 AA                 1686  .db 0hAA ; 0h06C1: normal track data
   43D1 40                 1687  .db 0h40 ; 0h06C2: vol off, no pitch, note, no instrument
   43D2 C2                 1688  .db 0hC2 ; 0h06C3: normal track data
   43D3 40                 1689  .db 0h40 ; 0h06C4: vol off, no pitch, note, no instrument
   43D4 DA                 1690  .db 0hDA ; 0h06C5: normal track data
   43D5 40                 1691  .db 0h40 ; 0h06C6: vol off, no pitch, note, no instrument
   43D6 C2                 1692  .db 0hC2 ; 0h06C7: normal track data
   43D7 40                 1693  .db 0h40 ; 0h06C8: vol off, no pitch, note, no instrument
   43D8 AA                 1694  .db 0hAA ; 0h06C9: normal track data
   43D9 40                 1695  .db 0h40 ; 0h06CA: vol off, no pitch, note, no instrument
   43DA 92                 1696  .db 0h92 ; 0h06CB: normal track data
   43DB 40                 1697  .db 0h40 ; 0h06CC: vol off, no pitch, note, no instrument
   43DC 7A                 1698  .db 0h7A ; 0h06CD: normal track data
   43DD 40                 1699  .db 0h40 ; 0h06CE: vol off, no pitch, note, no instrument
   43DE 92                 1700  .db 0h92 ; 0h06CF: normal track data
   43DF 40                 1701  .db 0h40 ; 0h06D0: vol off, no pitch, note, no instrument
   43E0 AA                 1702  .db 0hAA ; 0h06D1: normal track data
   43E1 40                 1703  .db 0h40 ; 0h06D2: vol off, no pitch, note, no instrument
   43E2 C2                 1704  .db 0hC2 ; 0h06D3: normal track data
   43E3 40                 1705  .db 0h40 ; 0h06D4: vol off, no pitch, note, no instrument
   43E4 DA                 1706  .db 0hDA ; 0h06D5: normal track data
   43E5 40                 1707  .db 0h40 ; 0h06D6: vol off, no pitch, note, no instrument
   43E6 C2                 1708  .db 0hC2 ; 0h06D7: normal track data
   43E7 40                 1709  .db 0h40 ; 0h06D8: vol off, no pitch, note, no instrument
   43E8 AA                 1710  .db 0hAA ; 0h06D9: normal track data
   43E9 40                 1711  .db 0h40 ; 0h06DA: vol off, no pitch, note, no instrument
   43EA 92                 1712  .db 0h92 ; 0h06DB: normal track data
   43EB 40                 1713  .db 0h40 ; 0h06DC: vol off, no pitch, note, no instrument
   43EC 7A                 1714  .db 0h7A ; 0h06DD: normal track data
   43ED 40                 1715  .db 0h40 ; 0h06DE: vol off, no pitch, note, no instrument
   43EE 92                 1716  .db 0h92 ; 0h06DF: normal track data
   43EF 40                 1717  .db 0h40 ; 0h06E0: vol off, no pitch, note, no instrument
   43F0 AA                 1718  .db 0hAA ; 0h06E1: normal track data
   43F1 40                 1719  .db 0h40 ; 0h06E2: vol off, no pitch, note, no instrument
   43F2 7A                 1720  .db 0h7A ; 0h06E3: normal track data
   43F3 40                 1721  .db 0h40 ; 0h06E4: vol off, no pitch, note, no instrument
   43F4 92                 1722  .db 0h92 ; 0h06E5: normal track data
   43F5 40                 1723  .db 0h40 ; 0h06E6: vol off, no pitch, note, no instrument
   43F6 7A                 1724  .db 0h7A ; 0h06E7: normal track data
   43F7 40                 1725  .db 0h40 ; 0h06E8: vol off, no pitch, note, no instrument
   43F8 92                 1726  .db 0h92 ; 0h06E9: normal track data
   43F9 40                 1727  .db 0h40 ; 0h06EA: vol off, no pitch, note, no instrument
   43FA 7C                 1728  .db 0h7C ; 0h06EB: normal track data
   43FB 40                 1729  .db 0h40 ; 0h06EC: vol off, no pitch, note, no instrument
   43FC 94                 1730  .db 0h94 ; 0h06ED: normal track data
   43FD 40                 1731  .db 0h40 ; 0h06EE: vol off, no pitch, note, no instrument
   43FE 7C                 1732  .db 0h7C ; 0h06EF: normal track data
   43FF 40                 1733  .db 0h40 ; 0h06F0: vol off, no pitch, note, no instrument
   4400 94                 1734  .db 0h94 ; 0h06F1: normal track data
   4401 40                 1735  .db 0h40 ; 0h06F2: vol off, no pitch, note, no instrument
   4402 7A                 1736  .db 0h7A ; 0h06F3: normal track data
   4403 40                 1737  .db 0h40 ; 0h06F4: vol off, no pitch, note, no instrument
   4404 92                 1738  .db 0h92 ; 0h06F5: normal track data
   4405 40                 1739  .db 0h40 ; 0h06F6: vol off, no pitch, note, no instrument
   4406 7A                 1740  .db 0h7A ; 0h06F7: normal track data
   4407 40                 1741  .db 0h40 ; 0h06F8: vol off, no pitch, note, no instrument
   4408 84                 1742  .db 0h84 ; 0h06F9: normal track data
   4409 40                 1743  .db 0h40 ; 0h06FA: vol off, no pitch, note, no instrument
   440A 88                 1744  .db 0h88 ; 0h06FB: normal track data
   440B 40                 1745  .db 0h40 ; 0h06FC: vol off, no pitch, note, no instrument
   440C 84                 1746  .db 0h84 ; 0h06FD: normal track data
   440D 40                 1747  .db 0h40 ; 0h06FE: vol off, no pitch, note, no instrument
   440E 80                 1748  .db 0h80 ; 0h06FF: normal track data
   440F 40                 1749  .db 0h40 ; 0h0700: vol off, no pitch, note, no instrument
   4410 7C                 1750  .db 0h7C ; 0h0701: normal track data
   4411 40                 1751  .db 0h40 ; 0h0702: vol off, no pitch, note, no instrument
   4412                    1752 trackDef18Test:
   4412 72                 1753  .db 0h72 ; 0h0703: normal track data
   4413 E1                 1754  .db 0hE1 ; 0h0704: vol = 0hF (inverted), no pitch, no note, no instrument
   4414 00 00              1755  .dw 0h0000 ; 0h0705: pitch
   4416 03                 1756  .db 0h03 ; 0h0707: instrument
   4417 5A                 1757  .db 0h5A ; 0h0708: normal track data
   4418 60                 1758  .db 0h60 ; 0h0709: vol off, no pitch, note, instrument
   4419 01                 1759  .db 0h01 ; 0h070A: instrument
   441A B2                 1760  .db 0hB2 ; 0h070B: normal track data,  note: G#4
   441B 7F                 1761  .db 0h7F ; 0h070C: vol = 0h0 (inverted), no pitch, no note, no instrument
   441C 06                 1762  .db 0h06 ; 0h070D: instrument
   441D 5A                 1763  .db 0h5A ; 0h070E: normal track data
   441E 61                 1764  .db 0h61 ; 0h070F: vol = 0hF (inverted), no pitch, no note, no instrument
   441F 01                 1765  .db 0h01 ; 0h0710: instrument
   4420 72                 1766  .db 0h72 ; 0h0711: normal track data
   4421 60                 1767  .db 0h60 ; 0h0712: vol off, no pitch, note, instrument
   4422 04                 1768  .db 0h04 ; 0h0713: instrument
   4423 B2                 1769  .db 0hB2 ; 0h0714: normal track data,  note: G#4
   4424 7F                 1770  .db 0h7F ; 0h0715: vol = 0h0 (inverted), no pitch, no note, no instrument
   4425 06                 1771  .db 0h06 ; 0h0716: instrument
   4426 5A                 1772  .db 0h5A ; 0h0717: normal track data
   4427 61                 1773  .db 0h61 ; 0h0718: vol = 0hF (inverted), no pitch, no note, no instrument
   4428 01                 1774  .db 0h01 ; 0h0719: instrument
   4429 72                 1775  .db 0h72 ; 0h071A: normal track data
   442A 60                 1776  .db 0h60 ; 0h071B: vol off, no pitch, note, instrument
   442B 03                 1777  .db 0h03 ; 0h071C: instrument
   442C B2                 1778  .db 0hB2 ; 0h071D: normal track data,  note: G#4
   442D 7F                 1779  .db 0h7F ; 0h071E: vol = 0h0 (inverted), no pitch, no note, no instrument
   442E 06                 1780  .db 0h06 ; 0h071F: instrument
   442F 5A                 1781  .db 0h5A ; 0h0720: normal track data
   4430 61                 1782  .db 0h61 ; 0h0721: vol = 0hF (inverted), no pitch, no note, no instrument
   4431 01                 1783  .db 0h01 ; 0h0722: instrument
   4432 72                 1784  .db 0h72 ; 0h0723: normal track data
   4433 60                 1785  .db 0h60 ; 0h0724: vol off, no pitch, note, instrument
   4434 03                 1786  .db 0h03 ; 0h0725: instrument
   4435 AE                 1787  .db 0hAE ; 0h0726: normal track data,  note: F#4
   4436 7F                 1788  .db 0h7F ; 0h0727: vol = 0h0 (inverted), no pitch, no note, no instrument
   4437 07                 1789  .db 0h07 ; 0h0728: instrument
   4438 72                 1790  .db 0h72 ; 0h0729: normal track data
   4439 61                 1791  .db 0h61 ; 0h072A: vol = 0hF (inverted), no pitch, no note, no instrument
   443A 04                 1792  .db 0h04 ; 0h072B: instrument
   443B 5A                 1793  .db 0h5A ; 0h072C: normal track data
   443C 60                 1794  .db 0h60 ; 0h072D: vol off, no pitch, note, instrument
   443D 01                 1795  .db 0h01 ; 0h072E: instrument
   443E AE                 1796  .db 0hAE ; 0h072F: normal track data,  note: F#4
   443F 7F                 1797  .db 0h7F ; 0h0730: vol = 0h0 (inverted), no pitch, no note, no instrument
   4440 07                 1798  .db 0h07 ; 0h0731: instrument
   4441 5A                 1799  .db 0h5A ; 0h0732: normal track data
   4442 61                 1800  .db 0h61 ; 0h0733: vol = 0hF (inverted), no pitch, no note, no instrument
   4443 01                 1801  .db 0h01 ; 0h0734: instrument
   4444 72                 1802  .db 0h72 ; 0h0735: normal track data
   4445 60                 1803  .db 0h60 ; 0h0736: vol off, no pitch, note, instrument
   4446 03                 1804  .db 0h03 ; 0h0737: instrument
   4447 5A                 1805  .db 0h5A ; 0h0738: normal track data
   4448 60                 1806  .db 0h60 ; 0h0739: vol off, no pitch, note, instrument
   4449 01                 1807  .db 0h01 ; 0h073A: instrument
   444A B2                 1808  .db 0hB2 ; 0h073B: normal track data,  note: G#4
   444B 7F                 1809  .db 0h7F ; 0h073C: vol = 0h0 (inverted), no pitch, no note, no instrument
   444C 08                 1810  .db 0h08 ; 0h073D: instrument
   444D 5A                 1811  .db 0h5A ; 0h073E: normal track data
   444E 61                 1812  .db 0h61 ; 0h073F: vol = 0hF (inverted), no pitch, no note, no instrument
   444F 01                 1813  .db 0h01 ; 0h0740: instrument
   4450 72                 1814  .db 0h72 ; 0h0741: normal track data
   4451 60                 1815  .db 0h60 ; 0h0742: vol off, no pitch, note, instrument
   4452 04                 1816  .db 0h04 ; 0h0743: instrument
   4453 B2                 1817  .db 0hB2 ; 0h0744: normal track data,  note: G#4
   4454 7F                 1818  .db 0h7F ; 0h0745: vol = 0h0 (inverted), no pitch, no note, no instrument
   4455 08                 1819  .db 0h08 ; 0h0746: instrument
   4456 5A                 1820  .db 0h5A ; 0h0747: normal track data
   4457 61                 1821  .db 0h61 ; 0h0748: vol = 0hF (inverted), no pitch, no note, no instrument
   4458 01                 1822  .db 0h01 ; 0h0749: instrument
   4459 72                 1823  .db 0h72 ; 0h074A: normal track data
   445A 60                 1824  .db 0h60 ; 0h074B: vol off, no pitch, note, instrument
   445B 03                 1825  .db 0h03 ; 0h074C: instrument
   445C B8                 1826  .db 0hB8 ; 0h074D: normal track data,  note: B4
   445D 7F                 1827  .db 0h7F ; 0h074E: vol = 0h0 (inverted), no pitch, no note, no instrument
   445E 07                 1828  .db 0h07 ; 0h074F: instrument
   445F 5A                 1829  .db 0h5A ; 0h0750: normal track data
   4460 61                 1830  .db 0h61 ; 0h0751: vol = 0hF (inverted), no pitch, no note, no instrument
   4461 01                 1831  .db 0h01 ; 0h0752: instrument
   4462 72                 1832  .db 0h72 ; 0h0753: normal track data
   4463 60                 1833  .db 0h60 ; 0h0754: vol off, no pitch, note, instrument
   4464 03                 1834  .db 0h03 ; 0h0755: instrument
   4465 B8                 1835  .db 0hB8 ; 0h0756: normal track data,  note: B4
   4466 7F                 1836  .db 0h7F ; 0h0757: vol = 0h0 (inverted), no pitch, no note, no instrument
   4467 07                 1837  .db 0h07 ; 0h0758: instrument
   4468 72                 1838  .db 0h72 ; 0h0759: normal track data
   4469 61                 1839  .db 0h61 ; 0h075A: vol = 0hF (inverted), no pitch, no note, no instrument
   446A 04                 1840  .db 0h04 ; 0h075B: instrument
   446B 5A                 1841  .db 0h5A ; 0h075C: normal track data
   446C 60                 1842  .db 0h60 ; 0h075D: vol off, no pitch, note, instrument
   446D 01                 1843  .db 0h01 ; 0h075E: instrument
   446E B2                 1844  .db 0hB2 ; 0h075F: normal track data,  note: G#4
   446F 7F                 1845  .db 0h7F ; 0h0760: vol = 0h0 (inverted), no pitch, no note, no instrument
   4470 08                 1846  .db 0h08 ; 0h0761: instrument
   4471 5A                 1847  .db 0h5A ; 0h0762: normal track data
   4472 61                 1848  .db 0h61 ; 0h0763: vol = 0hF (inverted), no pitch, no note, no instrument
   4473 01                 1849  .db 0h01 ; 0h0764: instrument
   4474 72                 1850  .db 0h72 ; 0h0765: normal track data
   4475 60                 1851  .db 0h60 ; 0h0766: vol off, no pitch, note, instrument
   4476 03                 1852  .db 0h03 ; 0h0767: instrument
   4477 5A                 1853  .db 0h5A ; 0h0768: normal track data
   4478 60                 1854  .db 0h60 ; 0h0769: vol off, no pitch, note, instrument
   4479 01                 1855  .db 0h01 ; 0h076A: instrument
   447A B8                 1856  .db 0hB8 ; 0h076B: normal track data,  note: B4
   447B 7F                 1857  .db 0h7F ; 0h076C: vol = 0h0 (inverted), no pitch, no note, no instrument
   447C 08                 1858  .db 0h08 ; 0h076D: instrument
   447D 5A                 1859  .db 0h5A ; 0h076E: normal track data
   447E 61                 1860  .db 0h61 ; 0h076F: vol = 0hF (inverted), no pitch, no note, no instrument
   447F 01                 1861  .db 0h01 ; 0h0770: instrument
   4480 72                 1862  .db 0h72 ; 0h0771: normal track data
   4481 60                 1863  .db 0h60 ; 0h0772: vol off, no pitch, note, instrument
   4482 04                 1864  .db 0h04 ; 0h0773: instrument
   4483 B8                 1865  .db 0hB8 ; 0h0774: normal track data,  note: B4
   4484 7F                 1866  .db 0h7F ; 0h0775: vol = 0h0 (inverted), no pitch, no note, no instrument
   4485 08                 1867  .db 0h08 ; 0h0776: instrument
   4486 5A                 1868  .db 0h5A ; 0h0777: normal track data
   4487 61                 1869  .db 0h61 ; 0h0778: vol = 0hF (inverted), no pitch, no note, no instrument
   4488 01                 1870  .db 0h01 ; 0h0779: instrument
   4489 72                 1871  .db 0h72 ; 0h077A: normal track data
   448A 60                 1872  .db 0h60 ; 0h077B: vol off, no pitch, note, instrument
   448B 03                 1873  .db 0h03 ; 0h077C: instrument
   448C B8                 1874  .db 0hB8 ; 0h077D: normal track data,  note: B4
   448D 7F                 1875  .db 0h7F ; 0h077E: vol = 0h0 (inverted), no pitch, no note, no instrument
   448E 08                 1876  .db 0h08 ; 0h077F: instrument
   448F 5A                 1877  .db 0h5A ; 0h0780: normal track data
   4490 61                 1878  .db 0h61 ; 0h0781: vol = 0hF (inverted), no pitch, no note, no instrument
   4491 01                 1879  .db 0h01 ; 0h0782: instrument
   4492 72                 1880  .db 0h72 ; 0h0783: normal track data
   4493 60                 1881  .db 0h60 ; 0h0784: vol off, no pitch, note, instrument
   4494 03                 1882  .db 0h03 ; 0h0785: instrument
   4495 B8                 1883  .db 0hB8 ; 0h0786: normal track data,  note: B4
   4496 7F                 1884  .db 0h7F ; 0h0787: vol = 0h0 (inverted), no pitch, no note, no instrument
   4497 09                 1885  .db 0h09 ; 0h0788: instrument
   4498 72                 1886  .db 0h72 ; 0h0789: normal track data
   4499 61                 1887  .db 0h61 ; 0h078A: vol = 0hF (inverted), no pitch, no note, no instrument
   449A 04                 1888  .db 0h04 ; 0h078B: instrument
   449B 5A                 1889  .db 0h5A ; 0h078C: normal track data
   449C 60                 1890  .db 0h60 ; 0h078D: vol off, no pitch, note, instrument
   449D 01                 1891  .db 0h01 ; 0h078E: instrument
   449E B8                 1892  .db 0hB8 ; 0h078F: normal track data,  note: B4
   449F 7F                 1893  .db 0h7F ; 0h0790: vol = 0h0 (inverted), no pitch, no note, no instrument
   44A0 09                 1894  .db 0h09 ; 0h0791: instrument
   44A1 5A                 1895  .db 0h5A ; 0h0792: normal track data
   44A2 61                 1896  .db 0h61 ; 0h0793: vol = 0hF (inverted), no pitch, no note, no instrument
   44A3 01                 1897  .db 0h01 ; 0h0794: instrument
   44A4 72                 1898  .db 0h72 ; 0h0795: normal track data
   44A5 60                 1899  .db 0h60 ; 0h0796: vol off, no pitch, note, instrument
   44A6 03                 1900  .db 0h03 ; 0h0797: instrument
   44A7 5A                 1901  .db 0h5A ; 0h0798: normal track data
   44A8 60                 1902  .db 0h60 ; 0h0799: vol off, no pitch, note, instrument
   44A9 01                 1903  .db 0h01 ; 0h079A: instrument
   44AA B8                 1904  .db 0hB8 ; 0h079B: normal track data,  note: B4
   44AB 7F                 1905  .db 0h7F ; 0h079C: vol = 0h0 (inverted), no pitch, no note, no instrument
   44AC 07                 1906  .db 0h07 ; 0h079D: instrument
   44AD 5A                 1907  .db 0h5A ; 0h079E: normal track data
   44AE 61                 1908  .db 0h61 ; 0h079F: vol = 0hF (inverted), no pitch, no note, no instrument
   44AF 01                 1909  .db 0h01 ; 0h07A0: instrument
   44B0 72                 1910  .db 0h72 ; 0h07A1: normal track data
   44B1 60                 1911  .db 0h60 ; 0h07A2: vol off, no pitch, note, instrument
   44B2 04                 1912  .db 0h04 ; 0h07A3: instrument
   44B3 B8                 1913  .db 0hB8 ; 0h07A4: normal track data,  note: B4
   44B4 7F                 1914  .db 0h7F ; 0h07A5: vol = 0h0 (inverted), no pitch, no note, no instrument
   44B5 07                 1915  .db 0h07 ; 0h07A6: instrument
   44B6 5A                 1916  .db 0h5A ; 0h07A7: normal track data
   44B7 61                 1917  .db 0h61 ; 0h07A8: vol = 0hF (inverted), no pitch, no note, no instrument
   44B8 01                 1918  .db 0h01 ; 0h07A9: instrument
   44B9 72                 1919  .db 0h72 ; 0h07AA: normal track data
   44BA 60                 1920  .db 0h60 ; 0h07AB: vol off, no pitch, note, instrument
   44BB 03                 1921  .db 0h03 ; 0h07AC: instrument
   44BC B8                 1922  .db 0hB8 ; 0h07AD: normal track data,  note: B4
   44BD 7F                 1923  .db 0h7F ; 0h07AE: vol = 0h0 (inverted), no pitch, no note, no instrument
   44BE 07                 1924  .db 0h07 ; 0h07AF: instrument
   44BF 5A                 1925  .db 0h5A ; 0h07B0: normal track data
   44C0 61                 1926  .db 0h61 ; 0h07B1: vol = 0hF (inverted), no pitch, no note, no instrument
   44C1 01                 1927  .db 0h01 ; 0h07B2: instrument
   44C2 00                 1928  .db 0h00 ; 0h07B3: track end signature found
   44C3                    1929 trackDef17Test:
   44C3 92                 1930  .db 0h92 ; 0h07B4: normal track data
   44C4 E1                 1931  .db 0hE1 ; 0h07B5: vol = 0hF (inverted), no pitch, no note, no instrument
   44C5 00 00              1932  .dw 0h0000 ; 0h07B6: pitch
   44C7 02                 1933  .db 0h02 ; 0h07B8: instrument
   44C8 C2                 1934  .db 0hC2 ; 0h07B9: normal track data
   44C9 49                 1935  .db 0h49 ; 0h07BA: vol = 0hB (inverted), no pitch, no note, no instrument
   44CA 92                 1936  .db 0h92 ; 0h07BB: normal track data
   44CB 41                 1937  .db 0h41 ; 0h07BC: vol = 0hF (inverted), no pitch, no note, no instrument
   44CC C2                 1938  .db 0hC2 ; 0h07BD: normal track data
   44CD 49                 1939  .db 0h49 ; 0h07BE: vol = 0hB (inverted), no pitch, no note, no instrument
   44CE AA                 1940  .db 0hAA ; 0h07BF: normal track data
   44CF 41                 1941  .db 0h41 ; 0h07C0: vol = 0hF (inverted), no pitch, no note, no instrument
   44D0 AC                 1942  .db 0hAC ; 0h07C1: normal track data
   44D1 40                 1943  .db 0h40 ; 0h07C2: vol off, no pitch, note, no instrument
   44D2 B0                 1944  .db 0hB0 ; 0h07C3: normal track data
   44D3 40                 1945  .db 0h40 ; 0h07C4: vol off, no pitch, note, no instrument
   44D4 B4                 1946  .db 0hB4 ; 0h07C5: normal track data
   44D5 40                 1947  .db 0h40 ; 0h07C6: vol off, no pitch, note, no instrument
   44D6 92                 1948  .db 0h92 ; 0h07C7: normal track data
   44D7 40                 1949  .db 0h40 ; 0h07C8: vol off, no pitch, note, no instrument
   44D8 C2                 1950  .db 0hC2 ; 0h07C9: normal track data
   44D9 49                 1951  .db 0h49 ; 0h07CA: vol = 0hB (inverted), no pitch, no note, no instrument
   44DA 92                 1952  .db 0h92 ; 0h07CB: normal track data
   44DB 41                 1953  .db 0h41 ; 0h07CC: vol = 0hF (inverted), no pitch, no note, no instrument
   44DC C2                 1954  .db 0hC2 ; 0h07CD: normal track data
   44DD 49                 1955  .db 0h49 ; 0h07CE: vol = 0hB (inverted), no pitch, no note, no instrument
   44DE AA                 1956  .db 0hAA ; 0h07CF: normal track data
   44DF 41                 1957  .db 0h41 ; 0h07D0: vol = 0hF (inverted), no pitch, no note, no instrument
   44E0 C2                 1958  .db 0hC2 ; 0h07D1: normal track data
   44E1 49                 1959  .db 0h49 ; 0h07D2: vol = 0hB (inverted), no pitch, no note, no instrument
   44E2 AA                 1960  .db 0hAA ; 0h07D3: normal track data
   44E3 41                 1961  .db 0h41 ; 0h07D4: vol = 0hF (inverted), no pitch, no note, no instrument
   44E4 C2                 1962  .db 0hC2 ; 0h07D5: normal track data
   44E5 49                 1963  .db 0h49 ; 0h07D6: vol = 0hB (inverted), no pitch, no note, no instrument
   44E6 92                 1964  .db 0h92 ; 0h07D7: normal track data
   44E7 41                 1965  .db 0h41 ; 0h07D8: vol = 0hF (inverted), no pitch, no note, no instrument
   44E8 C2                 1966  .db 0hC2 ; 0h07D9: normal track data
   44E9 49                 1967  .db 0h49 ; 0h07DA: vol = 0hB (inverted), no pitch, no note, no instrument
   44EA 92                 1968  .db 0h92 ; 0h07DB: normal track data
   44EB 41                 1969  .db 0h41 ; 0h07DC: vol = 0hF (inverted), no pitch, no note, no instrument
   44EC C2                 1970  .db 0hC2 ; 0h07DD: normal track data
   44ED 49                 1971  .db 0h49 ; 0h07DE: vol = 0hB (inverted), no pitch, no note, no instrument
   44EE 94                 1972  .db 0h94 ; 0h07DF: normal track data
   44EF 41                 1973  .db 0h41 ; 0h07E0: vol = 0hF (inverted), no pitch, no note, no instrument
   44F0 C4                 1974  .db 0hC4 ; 0h07E1: normal track data
   44F1 49                 1975  .db 0h49 ; 0h07E2: vol = 0hB (inverted), no pitch, no note, no instrument
   44F2 94                 1976  .db 0h94 ; 0h07E3: normal track data
   44F3 41                 1977  .db 0h41 ; 0h07E4: vol = 0hF (inverted), no pitch, no note, no instrument
   44F4 C4                 1978  .db 0hC4 ; 0h07E5: normal track data
   44F5 49                 1979  .db 0h49 ; 0h07E6: vol = 0hB (inverted), no pitch, no note, no instrument
   44F6 92                 1980  .db 0h92 ; 0h07E7: normal track data
   44F7 41                 1981  .db 0h41 ; 0h07E8: vol = 0hF (inverted), no pitch, no note, no instrument
   44F8 C2                 1982  .db 0hC2 ; 0h07E9: normal track data
   44F9 49                 1983  .db 0h49 ; 0h07EA: vol = 0hB (inverted), no pitch, no note, no instrument
   44FA 92                 1984  .db 0h92 ; 0h07EB: normal track data
   44FB 41                 1985  .db 0h41 ; 0h07EC: vol = 0hF (inverted), no pitch, no note, no instrument
   44FC C2                 1986  .db 0hC2 ; 0h07ED: normal track data
   44FD 49                 1987  .db 0h49 ; 0h07EE: vol = 0hB (inverted), no pitch, no note, no instrument
   44FE AA                 1988  .db 0hAA ; 0h07EF: normal track data
   44FF 41                 1989  .db 0h41 ; 0h07F0: vol = 0hF (inverted), no pitch, no note, no instrument
   4500 C2                 1990  .db 0hC2 ; 0h07F1: normal track data
   4501 49                 1991  .db 0h49 ; 0h07F2: vol = 0hB (inverted), no pitch, no note, no instrument
   4502 AA                 1992  .db 0hAA ; 0h07F3: normal track data
   4503 41                 1993  .db 0h41 ; 0h07F4: vol = 0hF (inverted), no pitch, no note, no instrument
   4504 C2                 1994  .db 0hC2 ; 0h07F5: normal track data
   4505 49                 1995  .db 0h49 ; 0h07F6: vol = 0hB (inverted), no pitch, no note, no instrument
   4506 92                 1996  .db 0h92 ; 0h07F7: normal track data
   4507 41                 1997  .db 0h41 ; 0h07F8: vol = 0hF (inverted), no pitch, no note, no instrument
   4508 C2                 1998  .db 0hC2 ; 0h07F9: normal track data
   4509 49                 1999  .db 0h49 ; 0h07FA: vol = 0hB (inverted), no pitch, no note, no instrument
   450A 92                 2000  .db 0h92 ; 0h07FB: normal track data
   450B 41                 2001  .db 0h41 ; 0h07FC: vol = 0hF (inverted), no pitch, no note, no instrument
   450C C2                 2002  .db 0hC2 ; 0h07FD: normal track data
   450D 49                 2003  .db 0h49 ; 0h07FE: vol = 0hB (inverted), no pitch, no note, no instrument
   450E AA                 2004  .db 0hAA ; 0h07FF: normal track data
   450F 41                 2005  .db 0h41 ; 0h0800: vol = 0hF (inverted), no pitch, no note, no instrument
   4510 AC                 2006  .db 0hAC ; 0h0801: normal track data
   4511 40                 2007  .db 0h40 ; 0h0802: vol off, no pitch, note, no instrument
   4512 B0                 2008  .db 0hB0 ; 0h0803: normal track data
   4513 40                 2009  .db 0h40 ; 0h0804: vol off, no pitch, note, no instrument
   4514 B4                 2010  .db 0hB4 ; 0h0805: normal track data
   4515 40                 2011  .db 0h40 ; 0h0806: vol off, no pitch, note, no instrument
   4516 92                 2012  .db 0h92 ; 0h0807: normal track data
   4517 40                 2013  .db 0h40 ; 0h0808: vol off, no pitch, note, no instrument
   4518 C2                 2014  .db 0hC2 ; 0h0809: normal track data
   4519 49                 2015  .db 0h49 ; 0h080A: vol = 0hB (inverted), no pitch, no note, no instrument
   451A 92                 2016  .db 0h92 ; 0h080B: normal track data
   451B 41                 2017  .db 0h41 ; 0h080C: vol = 0hF (inverted), no pitch, no note, no instrument
   451C C2                 2018  .db 0hC2 ; 0h080D: normal track data
   451D 49                 2019  .db 0h49 ; 0h080E: vol = 0hB (inverted), no pitch, no note, no instrument
   451E AA                 2020  .db 0hAA ; 0h080F: normal track data
   451F 41                 2021  .db 0h41 ; 0h0810: vol = 0hF (inverted), no pitch, no note, no instrument
   4520 C2                 2022  .db 0hC2 ; 0h0811: normal track data
   4521 49                 2023  .db 0h49 ; 0h0812: vol = 0hB (inverted), no pitch, no note, no instrument
   4522 AA                 2024  .db 0hAA ; 0h0813: normal track data
   4523 41                 2025  .db 0h41 ; 0h0814: vol = 0hF (inverted), no pitch, no note, no instrument
   4524 C2                 2026  .db 0hC2 ; 0h0815: normal track data
   4525 49                 2027  .db 0h49 ; 0h0816: vol = 0hB (inverted), no pitch, no note, no instrument
   4526 92                 2028  .db 0h92 ; 0h0817: normal track data
   4527 41                 2029  .db 0h41 ; 0h0818: vol = 0hF (inverted), no pitch, no note, no instrument
   4528 C2                 2030  .db 0hC2 ; 0h0819: normal track data
   4529 49                 2031  .db 0h49 ; 0h081A: vol = 0hB (inverted), no pitch, no note, no instrument
   452A 92                 2032  .db 0h92 ; 0h081B: normal track data
   452B 41                 2033  .db 0h41 ; 0h081C: vol = 0hF (inverted), no pitch, no note, no instrument
   452C C2                 2034  .db 0hC2 ; 0h081D: normal track data
   452D 49                 2035  .db 0h49 ; 0h081E: vol = 0hB (inverted), no pitch, no note, no instrument
   452E 94                 2036  .db 0h94 ; 0h081F: normal track data
   452F 41                 2037  .db 0h41 ; 0h0820: vol = 0hF (inverted), no pitch, no note, no instrument
   4530 C4                 2038  .db 0hC4 ; 0h0821: normal track data
   4531 49                 2039  .db 0h49 ; 0h0822: vol = 0hB (inverted), no pitch, no note, no instrument
   4532 94                 2040  .db 0h94 ; 0h0823: normal track data
   4533 41                 2041  .db 0h41 ; 0h0824: vol = 0hF (inverted), no pitch, no note, no instrument
   4534 C4                 2042  .db 0hC4 ; 0h0825: normal track data
   4535 49                 2043  .db 0h49 ; 0h0826: vol = 0hB (inverted), no pitch, no note, no instrument
   4536 92                 2044  .db 0h92 ; 0h0827: normal track data
   4537 41                 2045  .db 0h41 ; 0h0828: vol = 0hF (inverted), no pitch, no note, no instrument
   4538 5A                 2046  .db 0h5A ; 0h0829: normal track data
   4539 60                 2047  .db 0h60 ; 0h082A: vol off, no pitch, note, instrument
   453A 01                 2048  .db 0h01 ; 0h082B: instrument
   453B 00                 2049  .db 0h00 ; 0h082C: track end signature found
   453C                    2050 trackDef19Test:
   453C 92                 2051  .db 0h92 ; 0h082D: normal track data
   453D F3                 2052  .db 0hF3 ; 0h082E: vol = 0h6 (inverted), no pitch, no note, no instrument
   453E 00 00              2053  .dw 0h0000 ; 0h082F: pitch
   4540 05                 2054  .db 0h05 ; 0h0831: instrument
   4541 AA                 2055  .db 0hAA ; 0h0832: normal track data
   4542 40                 2056  .db 0h40 ; 0h0833: vol off, no pitch, note, no instrument
   4543 AA                 2057  .db 0hAA ; 0h0834: normal track data
   4544 40                 2058  .db 0h40 ; 0h0835: vol off, no pitch, note, no instrument
   4545 92                 2059  .db 0h92 ; 0h0836: normal track data
   4546 40                 2060  .db 0h40 ; 0h0837: vol off, no pitch, note, no instrument
   4547 92                 2061  .db 0h92 ; 0h0838: normal track data
   4548 40                 2062  .db 0h40 ; 0h0839: vol off, no pitch, note, no instrument
   4549 94                 2063  .db 0h94 ; 0h083A: normal track data
   454A 40                 2064  .db 0h40 ; 0h083B: vol off, no pitch, note, no instrument
   454B 98                 2065  .db 0h98 ; 0h083C: normal track data
   454C 40                 2066  .db 0h40 ; 0h083D: vol off, no pitch, note, no instrument
   454D 9C                 2067  .db 0h9C ; 0h083E: normal track data
   454E 40                 2068  .db 0h40 ; 0h083F: vol off, no pitch, note, no instrument
   454F 92                 2069  .db 0h92 ; 0h0840: normal track data
   4550 40                 2070  .db 0h40 ; 0h0841: vol off, no pitch, note, no instrument
   4551 AA                 2071  .db 0hAA ; 0h0842: normal track data
   4552 40                 2072  .db 0h40 ; 0h0843: vol off, no pitch, note, no instrument
   4553 08                 2073  .db 0h08 ; 0h0844: normal track data,  wait 3
   4554 AA                 2074  .db 0hAA ; 0h0845: normal track data
   4555 40                 2075  .db 0h40 ; 0h0846: vol off, no pitch, note, no instrument
   4556 92                 2076  .db 0h92 ; 0h0847: normal track data
   4557 40                 2077  .db 0h40 ; 0h0848: vol off, no pitch, note, no instrument
   4558 92                 2078  .db 0h92 ; 0h0849: normal track data
   4559 40                 2079  .db 0h40 ; 0h084A: vol off, no pitch, note, no instrument
   455A AA                 2080  .db 0hAA ; 0h084B: normal track data
   455B 40                 2081  .db 0h40 ; 0h084C: vol off, no pitch, note, no instrument
   455C AA                 2082  .db 0hAA ; 0h084D: normal track data
   455D 40                 2083  .db 0h40 ; 0h084E: vol off, no pitch, note, no instrument
   455E 92                 2084  .db 0h92 ; 0h084F: normal track data
   455F 40                 2085  .db 0h40 ; 0h0850: vol off, no pitch, note, no instrument
   4560 94                 2086  .db 0h94 ; 0h0851: normal track data
   4561 40                 2087  .db 0h40 ; 0h0852: vol off, no pitch, note, no instrument
   4562 AC                 2088  .db 0hAC ; 0h0853: normal track data
   4563 40                 2089  .db 0h40 ; 0h0854: vol off, no pitch, note, no instrument
   4564 AC                 2090  .db 0hAC ; 0h0855: normal track data
   4565 40                 2091  .db 0h40 ; 0h0856: vol off, no pitch, note, no instrument
   4566 94                 2092  .db 0h94 ; 0h0857: normal track data
   4567 40                 2093  .db 0h40 ; 0h0858: vol off, no pitch, note, no instrument
   4568 92                 2094  .db 0h92 ; 0h0859: normal track data
   4569 40                 2095  .db 0h40 ; 0h085A: vol off, no pitch, note, no instrument
   456A AA                 2096  .db 0hAA ; 0h085B: normal track data
   456B 40                 2097  .db 0h40 ; 0h085C: vol off, no pitch, note, no instrument
   456C 08                 2098  .db 0h08 ; 0h085D: normal track data,  wait 3
   456D AA                 2099  .db 0hAA ; 0h085E: normal track data
   456E 40                 2100  .db 0h40 ; 0h085F: vol off, no pitch, note, no instrument
   456F 92                 2101  .db 0h92 ; 0h0860: normal track data
   4570 40                 2102  .db 0h40 ; 0h0861: vol off, no pitch, note, no instrument
   4571 92                 2103  .db 0h92 ; 0h0862: normal track data
   4572 40                 2104  .db 0h40 ; 0h0863: vol off, no pitch, note, no instrument
   4573 AA                 2105  .db 0hAA ; 0h0864: normal track data
   4574 40                 2106  .db 0h40 ; 0h0865: vol off, no pitch, note, no instrument
   4575 AA                 2107  .db 0hAA ; 0h0866: normal track data
   4576 40                 2108  .db 0h40 ; 0h0867: vol off, no pitch, note, no instrument
   4577 92                 2109  .db 0h92 ; 0h0868: normal track data
   4578 40                 2110  .db 0h40 ; 0h0869: vol off, no pitch, note, no instrument
   4579 92                 2111  .db 0h92 ; 0h086A: normal track data
   457A 40                 2112  .db 0h40 ; 0h086B: vol off, no pitch, note, no instrument
   457B 94                 2113  .db 0h94 ; 0h086C: normal track data
   457C 40                 2114  .db 0h40 ; 0h086D: vol off, no pitch, note, no instrument
   457D 98                 2115  .db 0h98 ; 0h086E: normal track data
   457E 40                 2116  .db 0h40 ; 0h086F: vol off, no pitch, note, no instrument
   457F 9C                 2117  .db 0h9C ; 0h0870: normal track data
   4580 40                 2118  .db 0h40 ; 0h0871: vol off, no pitch, note, no instrument
   4581 92                 2119  .db 0h92 ; 0h0872: normal track data
   4582 40                 2120  .db 0h40 ; 0h0873: vol off, no pitch, note, no instrument
   4583 AA                 2121  .db 0hAA ; 0h0874: normal track data
   4584 40                 2122  .db 0h40 ; 0h0875: vol off, no pitch, note, no instrument
   4585 08                 2123  .db 0h08 ; 0h0876: normal track data,  wait 3
   4586 AA                 2124  .db 0hAA ; 0h0877: normal track data
   4587 40                 2125  .db 0h40 ; 0h0878: vol off, no pitch, note, no instrument
   4588 92                 2126  .db 0h92 ; 0h0879: normal track data
   4589 40                 2127  .db 0h40 ; 0h087A: vol off, no pitch, note, no instrument
   458A 92                 2128  .db 0h92 ; 0h087B: normal track data
   458B 40                 2129  .db 0h40 ; 0h087C: vol off, no pitch, note, no instrument
   458C AA                 2130  .db 0hAA ; 0h087D: normal track data
   458D 40                 2131  .db 0h40 ; 0h087E: vol off, no pitch, note, no instrument
   458E AA                 2132  .db 0hAA ; 0h087F: normal track data
   458F 40                 2133  .db 0h40 ; 0h0880: vol off, no pitch, note, no instrument
   4590 92                 2134  .db 0h92 ; 0h0881: normal track data
   4591 40                 2135  .db 0h40 ; 0h0882: vol off, no pitch, note, no instrument
   4592 94                 2136  .db 0h94 ; 0h0883: normal track data
   4593 40                 2137  .db 0h40 ; 0h0884: vol off, no pitch, note, no instrument
   4594 AC                 2138  .db 0hAC ; 0h0885: normal track data
   4595 40                 2139  .db 0h40 ; 0h0886: vol off, no pitch, note, no instrument
   4596 AC                 2140  .db 0hAC ; 0h0887: normal track data
   4597 40                 2141  .db 0h40 ; 0h0888: vol off, no pitch, note, no instrument
   4598 94                 2142  .db 0h94 ; 0h0889: normal track data
   4599 40                 2143  .db 0h40 ; 0h088A: vol off, no pitch, note, no instrument
   459A 92                 2144  .db 0h92 ; 0h088B: normal track data
   459B 40                 2145  .db 0h40 ; 0h088C: vol off, no pitch, note, no instrument
   459C 5A                 2146  .db 0h5A ; 0h088D: normal track data
   459D 61                 2147  .db 0h61 ; 0h088E: vol = 0hF (inverted), no pitch, no note, no instrument
   459E 01                 2148  .db 0h01 ; 0h088F: instrument
   459F 08                 2149  .db 0h08 ; 0h0890: normal track data,  wait 3
   45A0 42                 2150  .db 0h42 ; 0h0891: normal track data
   45A1 00                 2151  .db 0h00 ; 0h0892: vol off, no pitch, no note, no instrument
   45A2 42                 2152  .db 0h42 ; 0h0893: normal track data
   45A3 00                 2153  .db 0h00 ; 0h0894: vol off, no pitch, no note, no instrument
   45A4                    2154 trackDef20Test:
   45A4 AA                 2155  .db 0hAA ; 0h0895: normal track data
   45A5 E1                 2156  .db 0hE1 ; 0h0896: vol = 0hF (inverted), no pitch, no note, no instrument
   45A6 00 00              2157  .dw 0h0000 ; 0h0897: pitch
   45A8 02                 2158  .db 0h02 ; 0h0899: instrument
   45A9 DA                 2159  .db 0hDA ; 0h089A: normal track data
   45AA 49                 2160  .db 0h49 ; 0h089B: vol = 0hB (inverted), no pitch, no note, no instrument
   45AB AA                 2161  .db 0hAA ; 0h089C: normal track data
   45AC 41                 2162  .db 0h41 ; 0h089D: vol = 0hF (inverted), no pitch, no note, no instrument
   45AD DA                 2163  .db 0hDA ; 0h089E: normal track data
   45AE 49                 2164  .db 0h49 ; 0h089F: vol = 0hB (inverted), no pitch, no note, no instrument
   45AF C2                 2165  .db 0hC2 ; 0h08A0: normal track data
   45B0 41                 2166  .db 0h41 ; 0h08A1: vol = 0hF (inverted), no pitch, no note, no instrument
   45B1 C4                 2167  .db 0hC4 ; 0h08A2: normal track data
   45B2 40                 2168  .db 0h40 ; 0h08A3: vol off, no pitch, note, no instrument
   45B3 C8                 2169  .db 0hC8 ; 0h08A4: normal track data
   45B4 40                 2170  .db 0h40 ; 0h08A5: vol off, no pitch, note, no instrument
   45B5 CC                 2171  .db 0hCC ; 0h08A6: normal track data
   45B6 40                 2172  .db 0h40 ; 0h08A7: vol off, no pitch, note, no instrument
   45B7 AA                 2173  .db 0hAA ; 0h08A8: normal track data
   45B8 40                 2174  .db 0h40 ; 0h08A9: vol off, no pitch, note, no instrument
   45B9 DA                 2175  .db 0hDA ; 0h08AA: normal track data
   45BA 49                 2176  .db 0h49 ; 0h08AB: vol = 0hB (inverted), no pitch, no note, no instrument
   45BB AA                 2177  .db 0hAA ; 0h08AC: normal track data
   45BC 41                 2178  .db 0h41 ; 0h08AD: vol = 0hF (inverted), no pitch, no note, no instrument
   45BD DA                 2179  .db 0hDA ; 0h08AE: normal track data
   45BE 49                 2180  .db 0h49 ; 0h08AF: vol = 0hB (inverted), no pitch, no note, no instrument
   45BF C2                 2181  .db 0hC2 ; 0h08B0: normal track data
   45C0 41                 2182  .db 0h41 ; 0h08B1: vol = 0hF (inverted), no pitch, no note, no instrument
   45C1 DA                 2183  .db 0hDA ; 0h08B2: normal track data
   45C2 49                 2184  .db 0h49 ; 0h08B3: vol = 0hB (inverted), no pitch, no note, no instrument
   45C3 C2                 2185  .db 0hC2 ; 0h08B4: normal track data
   45C4 41                 2186  .db 0h41 ; 0h08B5: vol = 0hF (inverted), no pitch, no note, no instrument
   45C5 DA                 2187  .db 0hDA ; 0h08B6: normal track data
   45C6 49                 2188  .db 0h49 ; 0h08B7: vol = 0hB (inverted), no pitch, no note, no instrument
   45C7 AA                 2189  .db 0hAA ; 0h08B8: normal track data
   45C8 41                 2190  .db 0h41 ; 0h08B9: vol = 0hF (inverted), no pitch, no note, no instrument
   45C9 DA                 2191  .db 0hDA ; 0h08BA: normal track data
   45CA 49                 2192  .db 0h49 ; 0h08BB: vol = 0hB (inverted), no pitch, no note, no instrument
   45CB AA                 2193  .db 0hAA ; 0h08BC: normal track data
   45CC 41                 2194  .db 0h41 ; 0h08BD: vol = 0hF (inverted), no pitch, no note, no instrument
   45CD DA                 2195  .db 0hDA ; 0h08BE: normal track data
   45CE 49                 2196  .db 0h49 ; 0h08BF: vol = 0hB (inverted), no pitch, no note, no instrument
   45CF AC                 2197  .db 0hAC ; 0h08C0: normal track data
   45D0 41                 2198  .db 0h41 ; 0h08C1: vol = 0hF (inverted), no pitch, no note, no instrument
   45D1 DC                 2199  .db 0hDC ; 0h08C2: normal track data
   45D2 49                 2200  .db 0h49 ; 0h08C3: vol = 0hB (inverted), no pitch, no note, no instrument
   45D3 AC                 2201  .db 0hAC ; 0h08C4: normal track data
   45D4 41                 2202  .db 0h41 ; 0h08C5: vol = 0hF (inverted), no pitch, no note, no instrument
   45D5 DC                 2203  .db 0hDC ; 0h08C6: normal track data
   45D6 49                 2204  .db 0h49 ; 0h08C7: vol = 0hB (inverted), no pitch, no note, no instrument
   45D7 AA                 2205  .db 0hAA ; 0h08C8: normal track data
   45D8 41                 2206  .db 0h41 ; 0h08C9: vol = 0hF (inverted), no pitch, no note, no instrument
   45D9 DA                 2207  .db 0hDA ; 0h08CA: normal track data
   45DA 49                 2208  .db 0h49 ; 0h08CB: vol = 0hB (inverted), no pitch, no note, no instrument
   45DB AA                 2209  .db 0hAA ; 0h08CC: normal track data
   45DC 41                 2210  .db 0h41 ; 0h08CD: vol = 0hF (inverted), no pitch, no note, no instrument
   45DD DA                 2211  .db 0hDA ; 0h08CE: normal track data
   45DE 49                 2212  .db 0h49 ; 0h08CF: vol = 0hB (inverted), no pitch, no note, no instrument
   45DF C2                 2213  .db 0hC2 ; 0h08D0: normal track data
   45E0 41                 2214  .db 0h41 ; 0h08D1: vol = 0hF (inverted), no pitch, no note, no instrument
   45E1 DA                 2215  .db 0hDA ; 0h08D2: normal track data
   45E2 49                 2216  .db 0h49 ; 0h08D3: vol = 0hB (inverted), no pitch, no note, no instrument
   45E3 C2                 2217  .db 0hC2 ; 0h08D4: normal track data
   45E4 41                 2218  .db 0h41 ; 0h08D5: vol = 0hF (inverted), no pitch, no note, no instrument
   45E5 DA                 2219  .db 0hDA ; 0h08D6: normal track data
   45E6 49                 2220  .db 0h49 ; 0h08D7: vol = 0hB (inverted), no pitch, no note, no instrument
   45E7 AA                 2221  .db 0hAA ; 0h08D8: normal track data
   45E8 41                 2222  .db 0h41 ; 0h08D9: vol = 0hF (inverted), no pitch, no note, no instrument
   45E9 DA                 2223  .db 0hDA ; 0h08DA: normal track data
   45EA 49                 2224  .db 0h49 ; 0h08DB: vol = 0hB (inverted), no pitch, no note, no instrument
   45EB AA                 2225  .db 0hAA ; 0h08DC: normal track data
   45EC 41                 2226  .db 0h41 ; 0h08DD: vol = 0hF (inverted), no pitch, no note, no instrument
   45ED DA                 2227  .db 0hDA ; 0h08DE: normal track data
   45EE 49                 2228  .db 0h49 ; 0h08DF: vol = 0hB (inverted), no pitch, no note, no instrument
   45EF C2                 2229  .db 0hC2 ; 0h08E0: normal track data
   45F0 41                 2230  .db 0h41 ; 0h08E1: vol = 0hF (inverted), no pitch, no note, no instrument
   45F1 C4                 2231  .db 0hC4 ; 0h08E2: normal track data
   45F2 40                 2232  .db 0h40 ; 0h08E3: vol off, no pitch, note, no instrument
   45F3 C8                 2233  .db 0hC8 ; 0h08E4: normal track data
   45F4 40                 2234  .db 0h40 ; 0h08E5: vol off, no pitch, note, no instrument
   45F5 CC                 2235  .db 0hCC ; 0h08E6: normal track data
   45F6 40                 2236  .db 0h40 ; 0h08E7: vol off, no pitch, note, no instrument
   45F7 AA                 2237  .db 0hAA ; 0h08E8: normal track data
   45F8 40                 2238  .db 0h40 ; 0h08E9: vol off, no pitch, note, no instrument
   45F9 DA                 2239  .db 0hDA ; 0h08EA: normal track data
   45FA 49                 2240  .db 0h49 ; 0h08EB: vol = 0hB (inverted), no pitch, no note, no instrument
   45FB AA                 2241  .db 0hAA ; 0h08EC: normal track data
   45FC 41                 2242  .db 0h41 ; 0h08ED: vol = 0hF (inverted), no pitch, no note, no instrument
   45FD DA                 2243  .db 0hDA ; 0h08EE: normal track data
   45FE 49                 2244  .db 0h49 ; 0h08EF: vol = 0hB (inverted), no pitch, no note, no instrument
   45FF C2                 2245  .db 0hC2 ; 0h08F0: normal track data
   4600 41                 2246  .db 0h41 ; 0h08F1: vol = 0hF (inverted), no pitch, no note, no instrument
   4601 DA                 2247  .db 0hDA ; 0h08F2: normal track data
   4602 49                 2248  .db 0h49 ; 0h08F3: vol = 0hB (inverted), no pitch, no note, no instrument
   4603 C2                 2249  .db 0hC2 ; 0h08F4: normal track data
   4604 41                 2250  .db 0h41 ; 0h08F5: vol = 0hF (inverted), no pitch, no note, no instrument
   4605 DA                 2251  .db 0hDA ; 0h08F6: normal track data
   4606 49                 2252  .db 0h49 ; 0h08F7: vol = 0hB (inverted), no pitch, no note, no instrument
   4607 AA                 2253  .db 0hAA ; 0h08F8: normal track data
   4608 41                 2254  .db 0h41 ; 0h08F9: vol = 0hF (inverted), no pitch, no note, no instrument
   4609 DA                 2255  .db 0hDA ; 0h08FA: normal track data
   460A 49                 2256  .db 0h49 ; 0h08FB: vol = 0hB (inverted), no pitch, no note, no instrument
   460B AA                 2257  .db 0hAA ; 0h08FC: normal track data
   460C 41                 2258  .db 0h41 ; 0h08FD: vol = 0hF (inverted), no pitch, no note, no instrument
   460D 02                 2259  .db 0h02 ; 0h08FE: normal track data,  wait 0
   460E AC                 2260  .db 0hAC ; 0h08FF: normal track data
   460F 40                 2261  .db 0h40 ; 0h0900: vol off, no pitch, note, no instrument
   4610 DC                 2262  .db 0hDC ; 0h0901: normal track data
   4611 49                 2263  .db 0h49 ; 0h0902: vol = 0hB (inverted), no pitch, no note, no instrument
   4612 AC                 2264  .db 0hAC ; 0h0903: normal track data
   4613 41                 2265  .db 0h41 ; 0h0904: vol = 0hF (inverted), no pitch, no note, no instrument
   4614 02                 2266  .db 0h02 ; 0h0905: normal track data,  wait 0
   4615 AA                 2267  .db 0hAA ; 0h0906: normal track data
   4616 C0                 2268  .db 0hC0 ; 0h0907: vol off, pitch, note, no instrument
   4617 00 20              2269  .dw 0h0020 ; 0h0908: pitch
   4619 DA                 2270  .db 0hDA ; 0h090A: normal track data
   461A 49                 2271  .db 0h49 ; 0h090B: vol = 0hB (inverted), no pitch, no note, no instrument
   461B AA                 2272  .db 0hAA ; 0h090C: normal track data
   461C 41                 2273  .db 0h41 ; 0h090D: vol = 0hF (inverted), no pitch, no note, no instrument
   461D 42                 2274  .db 0h42 ; 0h090E: normal track data
   461E 00                 2275  .db 0h00 ; 0h090F: vol off, no pitch, no note, no instrument
   461F C2                 2276  .db 0hC2 ; 0h0910: normal track data
   4620 C9                 2277  .db 0hC9 ; 0h0911: vol = 0hB (inverted), no pitch, no note, no instrument
   4621 00 00              2278  .dw 0h0000 ; 0h0912: pitch
   4623 DA                 2279  .db 0hDA ; 0h0914: normal track data
   4624 41                 2280  .db 0h41 ; 0h0915: vol = 0hF (inverted), no pitch, no note, no instrument
   4625 C2                 2281  .db 0hC2 ; 0h0916: normal track data
   4626 49                 2282  .db 0h49 ; 0h0917: vol = 0hB (inverted), no pitch, no note, no instrument
   4627 00                 2283  .db 0h00 ; 0h0918: track end signature found
   4628                    2284 trackDef21Test:
   4628 72                 2285  .db 0h72 ; 0h0919: normal track data
   4629 E1                 2286  .db 0hE1 ; 0h091A: vol = 0hF (inverted), no pitch, no note, no instrument
   462A 00 00              2287  .dw 0h0000 ; 0h091B: pitch
   462C 03                 2288  .db 0h03 ; 0h091D: instrument
   462D 72                 2289  .db 0h72 ; 0h091E: normal track data
   462E 40                 2290  .db 0h40 ; 0h091F: vol off, no pitch, note, no instrument
   462F 72                 2291  .db 0h72 ; 0h0920: normal track data
   4630 40                 2292  .db 0h40 ; 0h0921: vol off, no pitch, note, no instrument
   4631 98                 2293  .db 0h98 ; 0h0922: normal track data
   4632 60                 2294  .db 0h60 ; 0h0923: vol off, no pitch, note, instrument
   4633 01                 2295  .db 0h01 ; 0h0924: instrument
   4634 72                 2296  .db 0h72 ; 0h0925: normal track data
   4635 60                 2297  .db 0h60 ; 0h0926: vol off, no pitch, note, instrument
   4636 04                 2298  .db 0h04 ; 0h0927: instrument
   4637 98                 2299  .db 0h98 ; 0h0928: normal track data
   4638 60                 2300  .db 0h60 ; 0h0929: vol off, no pitch, note, instrument
   4639 01                 2301  .db 0h01 ; 0h092A: instrument
   463A 72                 2302  .db 0h72 ; 0h092B: normal track data
   463B 60                 2303  .db 0h60 ; 0h092C: vol off, no pitch, note, instrument
   463C 03                 2304  .db 0h03 ; 0h092D: instrument
   463D 98                 2305  .db 0h98 ; 0h092E: normal track data
   463E 60                 2306  .db 0h60 ; 0h092F: vol off, no pitch, note, instrument
   463F 01                 2307  .db 0h01 ; 0h0930: instrument
   4640 72                 2308  .db 0h72 ; 0h0931: normal track data
   4641 60                 2309  .db 0h60 ; 0h0932: vol off, no pitch, note, instrument
   4642 04                 2310  .db 0h04 ; 0h0933: instrument
   4643 98                 2311  .db 0h98 ; 0h0934: normal track data
   4644 60                 2312  .db 0h60 ; 0h0935: vol off, no pitch, note, instrument
   4645 01                 2313  .db 0h01 ; 0h0936: instrument
   4646 72                 2314  .db 0h72 ; 0h0937: normal track data
   4647 60                 2315  .db 0h60 ; 0h0938: vol off, no pitch, note, instrument
   4648 03                 2316  .db 0h03 ; 0h0939: instrument
   4649 98                 2317  .db 0h98 ; 0h093A: normal track data
   464A 60                 2318  .db 0h60 ; 0h093B: vol off, no pitch, note, instrument
   464B 01                 2319  .db 0h01 ; 0h093C: instrument
   464C 72                 2320  .db 0h72 ; 0h093D: normal track data
   464D 60                 2321  .db 0h60 ; 0h093E: vol off, no pitch, note, instrument
   464E 04                 2322  .db 0h04 ; 0h093F: instrument
   464F 98                 2323  .db 0h98 ; 0h0940: normal track data
   4650 60                 2324  .db 0h60 ; 0h0941: vol off, no pitch, note, instrument
   4651 01                 2325  .db 0h01 ; 0h0942: instrument
   4652 72                 2326  .db 0h72 ; 0h0943: normal track data
   4653 60                 2327  .db 0h60 ; 0h0944: vol off, no pitch, note, instrument
   4654 03                 2328  .db 0h03 ; 0h0945: instrument
   4655 98                 2329  .db 0h98 ; 0h0946: normal track data
   4656 60                 2330  .db 0h60 ; 0h0947: vol off, no pitch, note, instrument
   4657 01                 2331  .db 0h01 ; 0h0948: instrument
   4658 72                 2332  .db 0h72 ; 0h0949: normal track data
   4659 60                 2333  .db 0h60 ; 0h094A: vol off, no pitch, note, instrument
   465A 03                 2334  .db 0h03 ; 0h094B: instrument
   465B 72                 2335  .db 0h72 ; 0h094C: normal track data
   465C 40                 2336  .db 0h40 ; 0h094D: vol off, no pitch, note, no instrument
   465D 72                 2337  .db 0h72 ; 0h094E: normal track data
   465E 40                 2338  .db 0h40 ; 0h094F: vol off, no pitch, note, no instrument
   465F 98                 2339  .db 0h98 ; 0h0950: normal track data
   4660 60                 2340  .db 0h60 ; 0h0951: vol off, no pitch, note, instrument
   4661 01                 2341  .db 0h01 ; 0h0952: instrument
   4662 72                 2342  .db 0h72 ; 0h0953: normal track data
   4663 60                 2343  .db 0h60 ; 0h0954: vol off, no pitch, note, instrument
   4664 04                 2344  .db 0h04 ; 0h0955: instrument
   4665 98                 2345  .db 0h98 ; 0h0956: normal track data
   4666 60                 2346  .db 0h60 ; 0h0957: vol off, no pitch, note, instrument
   4667 01                 2347  .db 0h01 ; 0h0958: instrument
   4668 72                 2348  .db 0h72 ; 0h0959: normal track data
   4669 60                 2349  .db 0h60 ; 0h095A: vol off, no pitch, note, instrument
   466A 03                 2350  .db 0h03 ; 0h095B: instrument
   466B 98                 2351  .db 0h98 ; 0h095C: normal track data
   466C 60                 2352  .db 0h60 ; 0h095D: vol off, no pitch, note, instrument
   466D 01                 2353  .db 0h01 ; 0h095E: instrument
   466E 72                 2354  .db 0h72 ; 0h095F: normal track data
   466F 60                 2355  .db 0h60 ; 0h0960: vol off, no pitch, note, instrument
   4670 04                 2356  .db 0h04 ; 0h0961: instrument
   4671 98                 2357  .db 0h98 ; 0h0962: normal track data
   4672 60                 2358  .db 0h60 ; 0h0963: vol off, no pitch, note, instrument
   4673 01                 2359  .db 0h01 ; 0h0964: instrument
   4674 72                 2360  .db 0h72 ; 0h0965: normal track data
   4675 60                 2361  .db 0h60 ; 0h0966: vol off, no pitch, note, instrument
   4676 03                 2362  .db 0h03 ; 0h0967: instrument
   4677 98                 2363  .db 0h98 ; 0h0968: normal track data
   4678 60                 2364  .db 0h60 ; 0h0969: vol off, no pitch, note, instrument
   4679 01                 2365  .db 0h01 ; 0h096A: instrument
   467A 72                 2366  .db 0h72 ; 0h096B: normal track data
   467B 60                 2367  .db 0h60 ; 0h096C: vol off, no pitch, note, instrument
   467C 04                 2368  .db 0h04 ; 0h096D: instrument
   467D 98                 2369  .db 0h98 ; 0h096E: normal track data
   467E 60                 2370  .db 0h60 ; 0h096F: vol off, no pitch, note, instrument
   467F 01                 2371  .db 0h01 ; 0h0970: instrument
   4680 72                 2372  .db 0h72 ; 0h0971: normal track data
   4681 60                 2373  .db 0h60 ; 0h0972: vol off, no pitch, note, instrument
   4682 03                 2374  .db 0h03 ; 0h0973: instrument
   4683 98                 2375  .db 0h98 ; 0h0974: normal track data
   4684 60                 2376  .db 0h60 ; 0h0975: vol off, no pitch, note, instrument
   4685 01                 2377  .db 0h01 ; 0h0976: instrument
   4686 72                 2378  .db 0h72 ; 0h0977: normal track data
   4687 60                 2379  .db 0h60 ; 0h0978: vol off, no pitch, note, instrument
   4688 03                 2380  .db 0h03 ; 0h0979: instrument
   4689 72                 2381  .db 0h72 ; 0h097A: normal track data
   468A 40                 2382  .db 0h40 ; 0h097B: vol off, no pitch, note, no instrument
   468B 72                 2383  .db 0h72 ; 0h097C: normal track data
   468C 40                 2384  .db 0h40 ; 0h097D: vol off, no pitch, note, no instrument
   468D 98                 2385  .db 0h98 ; 0h097E: normal track data
   468E 60                 2386  .db 0h60 ; 0h097F: vol off, no pitch, note, instrument
   468F 01                 2387  .db 0h01 ; 0h0980: instrument
   4690 72                 2388  .db 0h72 ; 0h0981: normal track data
   4691 60                 2389  .db 0h60 ; 0h0982: vol off, no pitch, note, instrument
   4692 04                 2390  .db 0h04 ; 0h0983: instrument
   4693 98                 2391  .db 0h98 ; 0h0984: normal track data
   4694 60                 2392  .db 0h60 ; 0h0985: vol off, no pitch, note, instrument
   4695 01                 2393  .db 0h01 ; 0h0986: instrument
   4696 72                 2394  .db 0h72 ; 0h0987: normal track data
   4697 60                 2395  .db 0h60 ; 0h0988: vol off, no pitch, note, instrument
   4698 03                 2396  .db 0h03 ; 0h0989: instrument
   4699 98                 2397  .db 0h98 ; 0h098A: normal track data
   469A 60                 2398  .db 0h60 ; 0h098B: vol off, no pitch, note, instrument
   469B 01                 2399  .db 0h01 ; 0h098C: instrument
   469C 72                 2400  .db 0h72 ; 0h098D: normal track data
   469D 60                 2401  .db 0h60 ; 0h098E: vol off, no pitch, note, instrument
   469E 04                 2402  .db 0h04 ; 0h098F: instrument
   469F 98                 2403  .db 0h98 ; 0h0990: normal track data
   46A0 60                 2404  .db 0h60 ; 0h0991: vol off, no pitch, note, instrument
   46A1 01                 2405  .db 0h01 ; 0h0992: instrument
   46A2 72                 2406  .db 0h72 ; 0h0993: normal track data
   46A3 60                 2407  .db 0h60 ; 0h0994: vol off, no pitch, note, instrument
   46A4 03                 2408  .db 0h03 ; 0h0995: instrument
   46A5 98                 2409  .db 0h98 ; 0h0996: normal track data
   46A6 60                 2410  .db 0h60 ; 0h0997: vol off, no pitch, note, instrument
   46A7 01                 2411  .db 0h01 ; 0h0998: instrument
   46A8 72                 2412  .db 0h72 ; 0h0999: normal track data
   46A9 60                 2413  .db 0h60 ; 0h099A: vol off, no pitch, note, instrument
   46AA 04                 2414  .db 0h04 ; 0h099B: instrument
   46AB 98                 2415  .db 0h98 ; 0h099C: normal track data
   46AC 60                 2416  .db 0h60 ; 0h099D: vol off, no pitch, note, instrument
   46AD 01                 2417  .db 0h01 ; 0h099E: instrument
   46AE 72                 2418  .db 0h72 ; 0h099F: normal track data
   46AF 60                 2419  .db 0h60 ; 0h09A0: vol off, no pitch, note, instrument
   46B0 03                 2420  .db 0h03 ; 0h09A1: instrument
   46B1 98                 2421  .db 0h98 ; 0h09A2: normal track data
   46B2 60                 2422  .db 0h60 ; 0h09A3: vol off, no pitch, note, instrument
   46B3 01                 2423  .db 0h01 ; 0h09A4: instrument
   46B4 72                 2424  .db 0h72 ; 0h09A5: normal track data
   46B5 60                 2425  .db 0h60 ; 0h09A6: vol off, no pitch, note, instrument
   46B6 03                 2426  .db 0h03 ; 0h09A7: instrument
   46B7 72                 2427  .db 0h72 ; 0h09A8: normal track data
   46B8 40                 2428  .db 0h40 ; 0h09A9: vol off, no pitch, note, no instrument
   46B9 72                 2429  .db 0h72 ; 0h09AA: normal track data
   46BA 40                 2430  .db 0h40 ; 0h09AB: vol off, no pitch, note, no instrument
   46BB 42                 2431  .db 0h42 ; 0h09AC: normal track data
   46BC 00                 2432  .db 0h00 ; 0h09AD: vol off, no pitch, no note, no instrument
   46BD 72                 2433  .db 0h72 ; 0h09AE: normal track data
   46BE 40                 2434  .db 0h40 ; 0h09AF: vol off, no pitch, note, no instrument
   46BF 72                 2435  .db 0h72 ; 0h09B0: normal track data
   46C0 40                 2436  .db 0h40 ; 0h09B1: vol off, no pitch, note, no instrument
   46C1 72                 2437  .db 0h72 ; 0h09B2: normal track data
   46C2 40                 2438  .db 0h40 ; 0h09B3: vol off, no pitch, note, no instrument
   46C3 42                 2439  .db 0h42 ; 0h09B4: normal track data
   46C4 00                 2440  .db 0h00 ; 0h09B5: vol off, no pitch, no note, no instrument
   46C5 72                 2441  .db 0h72 ; 0h09B6: normal track data
   46C6 40                 2442  .db 0h40 ; 0h09B7: vol off, no pitch, note, no instrument
   46C7 72                 2443  .db 0h72 ; 0h09B8: normal track data
   46C8 40                 2444  .db 0h40 ; 0h09B9: vol off, no pitch, note, no instrument
   46C9 72                 2445  .db 0h72 ; 0h09BA: normal track data
   46CA 40                 2446  .db 0h40 ; 0h09BB: vol off, no pitch, note, no instrument
   46CB 42                 2447  .db 0h42 ; 0h09BC: normal track data
   46CC 00                 2448  .db 0h00 ; 0h09BD: vol off, no pitch, no note, no instrument
   46CD 72                 2449  .db 0h72 ; 0h09BE: normal track data
   46CE 40                 2450  .db 0h40 ; 0h09BF: vol off, no pitch, note, no instrument
   46CF 72                 2451  .db 0h72 ; 0h09C0: normal track data
   46D0 40                 2452  .db 0h40 ; 0h09C1: vol off, no pitch, note, no instrument
   46D1 72                 2453  .db 0h72 ; 0h09C2: normal track data
   46D2 40                 2454  .db 0h40 ; 0h09C3: vol off, no pitch, note, no instrument
   46D3 42                 2455  .db 0h42 ; 0h09C4: normal track data
   46D4 00                 2456  .db 0h00 ; 0h09C5: vol off, no pitch, no note, no instrument
   46D5                    2457 trackDef24Test:
   46D5 92                 2458  .db 0h92 ; 0h09C6: normal track data
   46D6 F3                 2459  .db 0hF3 ; 0h09C7: vol = 0h6 (inverted), no pitch, no note, no instrument
   46D7 00 00              2460  .dw 0h0000 ; 0h09C8: pitch
   46D9 05                 2461  .db 0h05 ; 0h09CA: instrument
   46DA AA                 2462  .db 0hAA ; 0h09CB: normal track data
   46DB 40                 2463  .db 0h40 ; 0h09CC: vol off, no pitch, note, no instrument
   46DC AA                 2464  .db 0hAA ; 0h09CD: normal track data
   46DD 40                 2465  .db 0h40 ; 0h09CE: vol off, no pitch, note, no instrument
   46DE 92                 2466  .db 0h92 ; 0h09CF: normal track data
   46DF 40                 2467  .db 0h40 ; 0h09D0: vol off, no pitch, note, no instrument
   46E0 92                 2468  .db 0h92 ; 0h09D1: normal track data
   46E1 40                 2469  .db 0h40 ; 0h09D2: vol off, no pitch, note, no instrument
   46E2 94                 2470  .db 0h94 ; 0h09D3: normal track data
   46E3 40                 2471  .db 0h40 ; 0h09D4: vol off, no pitch, note, no instrument
   46E4 98                 2472  .db 0h98 ; 0h09D5: normal track data
   46E5 40                 2473  .db 0h40 ; 0h09D6: vol off, no pitch, note, no instrument
   46E6 9C                 2474  .db 0h9C ; 0h09D7: normal track data
   46E7 40                 2475  .db 0h40 ; 0h09D8: vol off, no pitch, note, no instrument
   46E8 92                 2476  .db 0h92 ; 0h09D9: normal track data
   46E9 40                 2477  .db 0h40 ; 0h09DA: vol off, no pitch, note, no instrument
   46EA AA                 2478  .db 0hAA ; 0h09DB: normal track data
   46EB 40                 2479  .db 0h40 ; 0h09DC: vol off, no pitch, note, no instrument
   46EC 08                 2480  .db 0h08 ; 0h09DD: normal track data,  wait 3
   46ED AA                 2481  .db 0hAA ; 0h09DE: normal track data
   46EE 40                 2482  .db 0h40 ; 0h09DF: vol off, no pitch, note, no instrument
   46EF 92                 2483  .db 0h92 ; 0h09E0: normal track data
   46F0 40                 2484  .db 0h40 ; 0h09E1: vol off, no pitch, note, no instrument
   46F1 92                 2485  .db 0h92 ; 0h09E2: normal track data
   46F2 40                 2486  .db 0h40 ; 0h09E3: vol off, no pitch, note, no instrument
   46F3 AA                 2487  .db 0hAA ; 0h09E4: normal track data
   46F4 40                 2488  .db 0h40 ; 0h09E5: vol off, no pitch, note, no instrument
   46F5 AA                 2489  .db 0hAA ; 0h09E6: normal track data
   46F6 40                 2490  .db 0h40 ; 0h09E7: vol off, no pitch, note, no instrument
   46F7 92                 2491  .db 0h92 ; 0h09E8: normal track data
   46F8 40                 2492  .db 0h40 ; 0h09E9: vol off, no pitch, note, no instrument
   46F9 94                 2493  .db 0h94 ; 0h09EA: normal track data
   46FA 40                 2494  .db 0h40 ; 0h09EB: vol off, no pitch, note, no instrument
   46FB AC                 2495  .db 0hAC ; 0h09EC: normal track data
   46FC 40                 2496  .db 0h40 ; 0h09ED: vol off, no pitch, note, no instrument
   46FD AC                 2497  .db 0hAC ; 0h09EE: normal track data
   46FE 40                 2498  .db 0h40 ; 0h09EF: vol off, no pitch, note, no instrument
   46FF 94                 2499  .db 0h94 ; 0h09F0: normal track data
   4700 40                 2500  .db 0h40 ; 0h09F1: vol off, no pitch, note, no instrument
   4701 92                 2501  .db 0h92 ; 0h09F2: normal track data
   4702 40                 2502  .db 0h40 ; 0h09F3: vol off, no pitch, note, no instrument
   4703 AA                 2503  .db 0hAA ; 0h09F4: normal track data
   4704 40                 2504  .db 0h40 ; 0h09F5: vol off, no pitch, note, no instrument
   4705 08                 2505  .db 0h08 ; 0h09F6: normal track data,  wait 3
   4706 AA                 2506  .db 0hAA ; 0h09F7: normal track data
   4707 40                 2507  .db 0h40 ; 0h09F8: vol off, no pitch, note, no instrument
   4708 92                 2508  .db 0h92 ; 0h09F9: normal track data
   4709 40                 2509  .db 0h40 ; 0h09FA: vol off, no pitch, note, no instrument
   470A 92                 2510  .db 0h92 ; 0h09FB: normal track data
   470B 40                 2511  .db 0h40 ; 0h09FC: vol off, no pitch, note, no instrument
   470C AA                 2512  .db 0hAA ; 0h09FD: normal track data
   470D 40                 2513  .db 0h40 ; 0h09FE: vol off, no pitch, note, no instrument
   470E AA                 2514  .db 0hAA ; 0h09FF: normal track data
   470F 40                 2515  .db 0h40 ; 0h0A00: vol off, no pitch, note, no instrument
   4710 92                 2516  .db 0h92 ; 0h0A01: normal track data
   4711 40                 2517  .db 0h40 ; 0h0A02: vol off, no pitch, note, no instrument
   4712 92                 2518  .db 0h92 ; 0h0A03: normal track data
   4713 40                 2519  .db 0h40 ; 0h0A04: vol off, no pitch, note, no instrument
   4714 94                 2520  .db 0h94 ; 0h0A05: normal track data
   4715 40                 2521  .db 0h40 ; 0h0A06: vol off, no pitch, note, no instrument
   4716 98                 2522  .db 0h98 ; 0h0A07: normal track data
   4717 40                 2523  .db 0h40 ; 0h0A08: vol off, no pitch, note, no instrument
   4718 9C                 2524  .db 0h9C ; 0h0A09: normal track data
   4719 40                 2525  .db 0h40 ; 0h0A0A: vol off, no pitch, note, no instrument
   471A 92                 2526  .db 0h92 ; 0h0A0B: normal track data
   471B 40                 2527  .db 0h40 ; 0h0A0C: vol off, no pitch, note, no instrument
   471C AA                 2528  .db 0hAA ; 0h0A0D: normal track data
   471D 40                 2529  .db 0h40 ; 0h0A0E: vol off, no pitch, note, no instrument
   471E 08                 2530  .db 0h08 ; 0h0A0F: normal track data,  wait 3
   471F AA                 2531  .db 0hAA ; 0h0A10: normal track data
   4720 40                 2532  .db 0h40 ; 0h0A11: vol off, no pitch, note, no instrument
   4721 92                 2533  .db 0h92 ; 0h0A12: normal track data
   4722 40                 2534  .db 0h40 ; 0h0A13: vol off, no pitch, note, no instrument
   4723 92                 2535  .db 0h92 ; 0h0A14: normal track data
   4724 40                 2536  .db 0h40 ; 0h0A15: vol off, no pitch, note, no instrument
   4725 AA                 2537  .db 0hAA ; 0h0A16: normal track data
   4726 40                 2538  .db 0h40 ; 0h0A17: vol off, no pitch, note, no instrument
   4727 AA                 2539  .db 0hAA ; 0h0A18: normal track data
   4728 40                 2540  .db 0h40 ; 0h0A19: vol off, no pitch, note, no instrument
   4729 42                 2541  .db 0h42 ; 0h0A1A: normal track data
   472A 00                 2542  .db 0h00 ; 0h0A1B: vol off, no pitch, no note, no instrument
   472B 94                 2543  .db 0h94 ; 0h0A1C: normal track data
   472C 40                 2544  .db 0h40 ; 0h0A1D: vol off, no pitch, note, no instrument
   472D AC                 2545  .db 0hAC ; 0h0A1E: normal track data
   472E 40                 2546  .db 0h40 ; 0h0A1F: vol off, no pitch, note, no instrument
   472F AC                 2547  .db 0hAC ; 0h0A20: normal track data
   4730 40                 2548  .db 0h40 ; 0h0A21: vol off, no pitch, note, no instrument
   4731 42                 2549  .db 0h42 ; 0h0A22: normal track data
   4732 00                 2550  .db 0h00 ; 0h0A23: vol off, no pitch, no note, no instrument
   4733 92                 2551  .db 0h92 ; 0h0A24: normal track data
   4734 40                 2552  .db 0h40 ; 0h0A25: vol off, no pitch, note, no instrument
   4735 AA                 2553  .db 0hAA ; 0h0A26: normal track data
   4736 40                 2554  .db 0h40 ; 0h0A27: vol off, no pitch, note, no instrument
   4737 08                 2555  .db 0h08 ; 0h0A28: normal track data,  wait 3
   4738 AA                 2556  .db 0hAA ; 0h0A29: normal track data
   4739 40                 2557  .db 0h40 ; 0h0A2A: vol off, no pitch, note, no instrument
   473A 00                 2558  .db 0h00 ; 0h0A2B: track end signature found
   473B                    2559 trackDef26Test:
   473B 92                 2560  .db 0h92 ; 0h0A2C: normal track data
   473C F3                 2561  .db 0hF3 ; 0h0A2D: vol = 0h6 (inverted), no pitch, no note, no instrument
   473D 00 00              2562  .dw 0h0000 ; 0h0A2E: pitch
   473F 05                 2563  .db 0h05 ; 0h0A30: instrument
   4740 AA                 2564  .db 0hAA ; 0h0A31: normal track data
   4741 40                 2565  .db 0h40 ; 0h0A32: vol off, no pitch, note, no instrument
   4742 AA                 2566  .db 0hAA ; 0h0A33: normal track data
   4743 40                 2567  .db 0h40 ; 0h0A34: vol off, no pitch, note, no instrument
   4744 92                 2568  .db 0h92 ; 0h0A35: normal track data
   4745 40                 2569  .db 0h40 ; 0h0A36: vol off, no pitch, note, no instrument
   4746 92                 2570  .db 0h92 ; 0h0A37: normal track data
   4747 40                 2571  .db 0h40 ; 0h0A38: vol off, no pitch, note, no instrument
   4748 94                 2572  .db 0h94 ; 0h0A39: normal track data
   4749 40                 2573  .db 0h40 ; 0h0A3A: vol off, no pitch, note, no instrument
   474A 98                 2574  .db 0h98 ; 0h0A3B: normal track data
   474B 40                 2575  .db 0h40 ; 0h0A3C: vol off, no pitch, note, no instrument
   474C 9C                 2576  .db 0h9C ; 0h0A3D: normal track data
   474D 40                 2577  .db 0h40 ; 0h0A3E: vol off, no pitch, note, no instrument
   474E 92                 2578  .db 0h92 ; 0h0A3F: normal track data
   474F 40                 2579  .db 0h40 ; 0h0A40: vol off, no pitch, note, no instrument
   4750 AA                 2580  .db 0hAA ; 0h0A41: normal track data
   4751 40                 2581  .db 0h40 ; 0h0A42: vol off, no pitch, note, no instrument
   4752 08                 2582  .db 0h08 ; 0h0A43: normal track data,  wait 3
   4753 AA                 2583  .db 0hAA ; 0h0A44: normal track data
   4754 40                 2584  .db 0h40 ; 0h0A45: vol off, no pitch, note, no instrument
   4755 92                 2585  .db 0h92 ; 0h0A46: normal track data
   4756 40                 2586  .db 0h40 ; 0h0A47: vol off, no pitch, note, no instrument
   4757 92                 2587  .db 0h92 ; 0h0A48: normal track data
   4758 40                 2588  .db 0h40 ; 0h0A49: vol off, no pitch, note, no instrument
   4759 AA                 2589  .db 0hAA ; 0h0A4A: normal track data
   475A 40                 2590  .db 0h40 ; 0h0A4B: vol off, no pitch, note, no instrument
   475B AA                 2591  .db 0hAA ; 0h0A4C: normal track data
   475C 40                 2592  .db 0h40 ; 0h0A4D: vol off, no pitch, note, no instrument
   475D 92                 2593  .db 0h92 ; 0h0A4E: normal track data
   475E 40                 2594  .db 0h40 ; 0h0A4F: vol off, no pitch, note, no instrument
   475F 94                 2595  .db 0h94 ; 0h0A50: normal track data
   4760 40                 2596  .db 0h40 ; 0h0A51: vol off, no pitch, note, no instrument
   4761 AC                 2597  .db 0hAC ; 0h0A52: normal track data
   4762 40                 2598  .db 0h40 ; 0h0A53: vol off, no pitch, note, no instrument
   4763 AC                 2599  .db 0hAC ; 0h0A54: normal track data
   4764 40                 2600  .db 0h40 ; 0h0A55: vol off, no pitch, note, no instrument
   4765 94                 2601  .db 0h94 ; 0h0A56: normal track data
   4766 40                 2602  .db 0h40 ; 0h0A57: vol off, no pitch, note, no instrument
   4767 92                 2603  .db 0h92 ; 0h0A58: normal track data
   4768 40                 2604  .db 0h40 ; 0h0A59: vol off, no pitch, note, no instrument
   4769 AA                 2605  .db 0hAA ; 0h0A5A: normal track data
   476A 40                 2606  .db 0h40 ; 0h0A5B: vol off, no pitch, note, no instrument
   476B 08                 2607  .db 0h08 ; 0h0A5C: normal track data,  wait 3
   476C AA                 2608  .db 0hAA ; 0h0A5D: normal track data
   476D 40                 2609  .db 0h40 ; 0h0A5E: vol off, no pitch, note, no instrument
   476E 92                 2610  .db 0h92 ; 0h0A5F: normal track data
   476F 40                 2611  .db 0h40 ; 0h0A60: vol off, no pitch, note, no instrument
   4770 92                 2612  .db 0h92 ; 0h0A61: normal track data
   4771 40                 2613  .db 0h40 ; 0h0A62: vol off, no pitch, note, no instrument
   4772 AA                 2614  .db 0hAA ; 0h0A63: normal track data
   4773 40                 2615  .db 0h40 ; 0h0A64: vol off, no pitch, note, no instrument
   4774 AA                 2616  .db 0hAA ; 0h0A65: normal track data
   4775 40                 2617  .db 0h40 ; 0h0A66: vol off, no pitch, note, no instrument
   4776 92                 2618  .db 0h92 ; 0h0A67: normal track data
   4777 40                 2619  .db 0h40 ; 0h0A68: vol off, no pitch, note, no instrument
   4778 92                 2620  .db 0h92 ; 0h0A69: normal track data
   4779 40                 2621  .db 0h40 ; 0h0A6A: vol off, no pitch, note, no instrument
   477A 94                 2622  .db 0h94 ; 0h0A6B: normal track data
   477B 40                 2623  .db 0h40 ; 0h0A6C: vol off, no pitch, note, no instrument
   477C 98                 2624  .db 0h98 ; 0h0A6D: normal track data
   477D 40                 2625  .db 0h40 ; 0h0A6E: vol off, no pitch, note, no instrument
   477E 9C                 2626  .db 0h9C ; 0h0A6F: normal track data
   477F 40                 2627  .db 0h40 ; 0h0A70: vol off, no pitch, note, no instrument
   4780 92                 2628  .db 0h92 ; 0h0A71: normal track data
   4781 40                 2629  .db 0h40 ; 0h0A72: vol off, no pitch, note, no instrument
   4782 AA                 2630  .db 0hAA ; 0h0A73: normal track data
   4783 40                 2631  .db 0h40 ; 0h0A74: vol off, no pitch, note, no instrument
   4784 08                 2632  .db 0h08 ; 0h0A75: normal track data,  wait 3
   4785 AA                 2633  .db 0hAA ; 0h0A76: normal track data
   4786 40                 2634  .db 0h40 ; 0h0A77: vol off, no pitch, note, no instrument
   4787 92                 2635  .db 0h92 ; 0h0A78: normal track data
   4788 40                 2636  .db 0h40 ; 0h0A79: vol off, no pitch, note, no instrument
   4789 92                 2637  .db 0h92 ; 0h0A7A: normal track data
   478A 40                 2638  .db 0h40 ; 0h0A7B: vol off, no pitch, note, no instrument
   478B AA                 2639  .db 0hAA ; 0h0A7C: normal track data
   478C 40                 2640  .db 0h40 ; 0h0A7D: vol off, no pitch, note, no instrument
   478D AA                 2641  .db 0hAA ; 0h0A7E: normal track data
   478E 40                 2642  .db 0h40 ; 0h0A7F: vol off, no pitch, note, no instrument
   478F 42                 2643  .db 0h42 ; 0h0A80: normal track data
   4790 00                 2644  .db 0h00 ; 0h0A81: vol off, no pitch, no note, no instrument
   4791 94                 2645  .db 0h94 ; 0h0A82: normal track data
   4792 40                 2646  .db 0h40 ; 0h0A83: vol off, no pitch, note, no instrument
   4793 AC                 2647  .db 0hAC ; 0h0A84: normal track data
   4794 40                 2648  .db 0h40 ; 0h0A85: vol off, no pitch, note, no instrument
   4795 AC                 2649  .db 0hAC ; 0h0A86: normal track data
   4796 40                 2650  .db 0h40 ; 0h0A87: vol off, no pitch, note, no instrument
   4797 42                 2651  .db 0h42 ; 0h0A88: normal track data
   4798 00                 2652  .db 0h00 ; 0h0A89: vol off, no pitch, no note, no instrument
   4799 92                 2653  .db 0h92 ; 0h0A8A: normal track data
   479A 40                 2654  .db 0h40 ; 0h0A8B: vol off, no pitch, note, no instrument
   479B 7A                 2655  .db 0h7A ; 0h0A8C: normal track data
   479C 40                 2656  .db 0h40 ; 0h0A8D: vol off, no pitch, note, no instrument
   479D 8E                 2657  .db 0h8E ; 0h0A8E: normal track data,  note: D3
   479E 55                 2658  .db 0h55 ; 0h0A8F: vol = 0h5 (inverted), no pitch, no note, no instrument
   479F 8A                 2659  .db 0h8A ; 0h0A90: normal track data,  note: C3
   47A0 57                 2660  .db 0h57 ; 0h0A91: vol = 0h4 (inverted), no pitch, no note, no instrument
   47A1 88                 2661  .db 0h88 ; 0h0A92: normal track data
   47A2 59                 2662  .db 0h59 ; 0h0A93: vol = 0h3 (inverted), no pitch, no note, no instrument
   47A3 84                 2663  .db 0h84 ; 0h0A94: normal track data
   47A4 5B                 2664  .db 0h5B ; 0h0A95: vol = 0h2 (inverted), no pitch, no note, no instrument
   47A5 80                 2665  .db 0h80 ; 0h0A96: normal track data,  note: G2
   47A6 5D                 2666  .db 0h5D ; 0h0A97: vol = 0h1 (inverted), no pitch, no note, no instrument
   47A7 7C                 2667  .db 0h7C ; 0h0A98: normal track data
   47A8 40                 2668  .db 0h40 ; 0h0A99: vol off, no pitch, note, no instrument
   47A9                    2669 trackDef27Test:
   47A9 7A                 2670  .db 0h7A ; 0h0A9A: normal track data
   47AA F3                 2671  .db 0hF3 ; 0h0A9B: vol = 0h6 (inverted), no pitch, no note, no instrument
   47AB 00 00              2672  .dw 0h0000 ; 0h0A9C: pitch
   47AD 05                 2673  .db 0h05 ; 0h0A9E: instrument
   47AE 0A                 2674  .db 0h0A ; 0h0A9F: normal track data,  wait 4
   47AF 92                 2675  .db 0h92 ; 0h0AA0: normal track data
   47B0 40                 2676  .db 0h40 ; 0h0AA1: vol off, no pitch, note, no instrument
   47B1 02                 2677  .db 0h02 ; 0h0AA2: normal track data,  wait 0
   47B2 7A                 2678  .db 0h7A ; 0h0AA3: normal track data
   47B3 40                 2679  .db 0h40 ; 0h0AA4: vol off, no pitch, note, no instrument
   47B4 0A                 2680  .db 0h0A ; 0h0AA5: normal track data,  wait 4
   47B5 92                 2681  .db 0h92 ; 0h0AA6: normal track data
   47B6 40                 2682  .db 0h40 ; 0h0AA7: vol off, no pitch, note, no instrument
   47B7 02                 2683  .db 0h02 ; 0h0AA8: normal track data,  wait 0
   47B8 7C                 2684  .db 0h7C ; 0h0AA9: normal track data
   47B9 40                 2685  .db 0h40 ; 0h0AAA: vol off, no pitch, note, no instrument
   47BA 0A                 2686  .db 0h0A ; 0h0AAB: normal track data,  wait 4
   47BB 94                 2687  .db 0h94 ; 0h0AAC: normal track data
   47BC 40                 2688  .db 0h40 ; 0h0AAD: vol off, no pitch, note, no instrument
   47BD 02                 2689  .db 0h02 ; 0h0AAE: normal track data,  wait 0
   47BE 80                 2690  .db 0h80 ; 0h0AAF: normal track data
   47BF 40                 2691  .db 0h40 ; 0h0AB0: vol off, no pitch, note, no instrument
   47C0 0A                 2692  .db 0h0A ; 0h0AB1: normal track data,  wait 4
   47C1 98                 2693  .db 0h98 ; 0h0AB2: normal track data
   47C2 40                 2694  .db 0h40 ; 0h0AB3: vol off, no pitch, note, no instrument
   47C3 02                 2695  .db 0h02 ; 0h0AB4: normal track data,  wait 0
   47C4 7A                 2696  .db 0h7A ; 0h0AB5: normal track data
   47C5 40                 2697  .db 0h40 ; 0h0AB6: vol off, no pitch, note, no instrument
   47C6 0A                 2698  .db 0h0A ; 0h0AB7: normal track data,  wait 4
   47C7 92                 2699  .db 0h92 ; 0h0AB8: normal track data
   47C8 40                 2700  .db 0h40 ; 0h0AB9: vol off, no pitch, note, no instrument
   47C9 02                 2701  .db 0h02 ; 0h0ABA: normal track data,  wait 0
   47CA 7A                 2702  .db 0h7A ; 0h0ABB: normal track data
   47CB 40                 2703  .db 0h40 ; 0h0ABC: vol off, no pitch, note, no instrument
   47CC 0A                 2704  .db 0h0A ; 0h0ABD: normal track data,  wait 4
   47CD 92                 2705  .db 0h92 ; 0h0ABE: normal track data
   47CE 40                 2706  .db 0h40 ; 0h0ABF: vol off, no pitch, note, no instrument
   47CF 02                 2707  .db 0h02 ; 0h0AC0: normal track data,  wait 0
   47D0 7C                 2708  .db 0h7C ; 0h0AC1: normal track data
   47D1 40                 2709  .db 0h40 ; 0h0AC2: vol off, no pitch, note, no instrument
   47D2 0A                 2710  .db 0h0A ; 0h0AC3: normal track data,  wait 4
   47D3 94                 2711  .db 0h94 ; 0h0AC4: normal track data
   47D4 40                 2712  .db 0h40 ; 0h0AC5: vol off, no pitch, note, no instrument
   47D5 02                 2713  .db 0h02 ; 0h0AC6: normal track data,  wait 0
   47D6 80                 2714  .db 0h80 ; 0h0AC7: normal track data
   47D7 40                 2715  .db 0h40 ; 0h0AC8: vol off, no pitch, note, no instrument
   47D8 0A                 2716  .db 0h0A ; 0h0AC9: normal track data,  wait 4
   47D9 98                 2717  .db 0h98 ; 0h0ACA: normal track data
   47DA 40                 2718  .db 0h40 ; 0h0ACB: vol off, no pitch, note, no instrument
   47DB 00                 2719  .db 0h00 ; 0h0ACC: track end signature found
   47DC                    2720 trackDef29Test:
   47DC 72                 2721  .db 0h72 ; 0h0ACD: normal track data
   47DD E0                 2722  .db 0hE0 ; 0h0ACE: vol off, pitch, note, instrument
   47DE 00 00              2723  .dw 0h0000 ; 0h0ACF: pitch
   47E0 01                 2724  .db 0h01 ; 0h0AD1: instrument
   47E1 02                 2725  .db 0h02 ; 0h0AD2: normal track data,  wait 0
   47E2 42                 2726  .db 0h42 ; 0h0AD3: normal track data
   47E3 00                 2727  .db 0h00 ; 0h0AD4: vol off, no pitch, no note, no instrument
   47E4 02                 2728  .db 0h02 ; 0h0AD5: normal track data,  wait 0
   47E5 42                 2729  .db 0h42 ; 0h0AD6: normal track data
   47E6 00                 2730  .db 0h00 ; 0h0AD7: vol off, no pitch, no note, no instrument
   47E7 02                 2731  .db 0h02 ; 0h0AD8: normal track data,  wait 0
   47E8 33                 2732  .db 0h33 ; 0h0AD9: full optimization, no escape: C2
   47E9 02                 2733  .db 0h02 ; 0h0ADA: normal track data,  wait 0
   47EA 33                 2734  .db 0h33 ; 0h0ADB: full optimization, no escape: C2
   47EB 02                 2735  .db 0h02 ; 0h0ADC: normal track data,  wait 0
   47EC 42                 2736  .db 0h42 ; 0h0ADD: normal track data
   47ED 00                 2737  .db 0h00 ; 0h0ADE: vol off, no pitch, no note, no instrument
   47EE 02                 2738  .db 0h02 ; 0h0ADF: normal track data,  wait 0
   47EF 42                 2739  .db 0h42 ; 0h0AE0: normal track data
   47F0 00                 2740  .db 0h00 ; 0h0AE1: vol off, no pitch, no note, no instrument
   47F1 02                 2741  .db 0h02 ; 0h0AE2: normal track data,  wait 0
   47F2 33                 2742  .db 0h33 ; 0h0AE3: full optimization, no escape: C2
   47F3 02                 2743  .db 0h02 ; 0h0AE4: normal track data,  wait 0
   47F4 33                 2744  .db 0h33 ; 0h0AE5: full optimization, no escape: C2
   47F5 02                 2745  .db 0h02 ; 0h0AE6: normal track data,  wait 0
   47F6 42                 2746  .db 0h42 ; 0h0AE7: normal track data
   47F7 00                 2747  .db 0h00 ; 0h0AE8: vol off, no pitch, no note, no instrument
   47F8 02                 2748  .db 0h02 ; 0h0AE9: normal track data,  wait 0
   47F9 42                 2749  .db 0h42 ; 0h0AEA: normal track data
   47FA 00                 2750  .db 0h00 ; 0h0AEB: vol off, no pitch, no note, no instrument
   47FB 02                 2751  .db 0h02 ; 0h0AEC: normal track data,  wait 0
   47FC 33                 2752  .db 0h33 ; 0h0AED: full optimization, no escape: C2
   47FD 02                 2753  .db 0h02 ; 0h0AEE: normal track data,  wait 0
   47FE 33                 2754  .db 0h33 ; 0h0AEF: full optimization, no escape: C2
   47FF 02                 2755  .db 0h02 ; 0h0AF0: normal track data,  wait 0
   4800 42                 2756  .db 0h42 ; 0h0AF1: normal track data
   4801 00                 2757  .db 0h00 ; 0h0AF2: vol off, no pitch, no note, no instrument
   4802 02                 2758  .db 0h02 ; 0h0AF3: normal track data,  wait 0
   4803 42                 2759  .db 0h42 ; 0h0AF4: normal track data
   4804 00                 2760  .db 0h00 ; 0h0AF5: vol off, no pitch, no note, no instrument
   4805 02                 2761  .db 0h02 ; 0h0AF6: normal track data,  wait 0
   4806 33                 2762  .db 0h33 ; 0h0AF7: full optimization, no escape: C2
   4807 02                 2763  .db 0h02 ; 0h0AF8: normal track data,  wait 0
   4808 33                 2764  .db 0h33 ; 0h0AF9: full optimization, no escape: C2
   4809 02                 2765  .db 0h02 ; 0h0AFA: normal track data,  wait 0
   480A 42                 2766  .db 0h42 ; 0h0AFB: normal track data
   480B 00                 2767  .db 0h00 ; 0h0AFC: vol off, no pitch, no note, no instrument
   480C 02                 2768  .db 0h02 ; 0h0AFD: normal track data,  wait 0
   480D 42                 2769  .db 0h42 ; 0h0AFE: normal track data
   480E 00                 2770  .db 0h00 ; 0h0AFF: vol off, no pitch, no note, no instrument
   480F 02                 2771  .db 0h02 ; 0h0B00: normal track data,  wait 0
   4810 33                 2772  .db 0h33 ; 0h0B01: full optimization, no escape: C2
   4811 53                 2773  .db 0h53 ; 0h0B02: full optimization, no escape: E3
   4812 33                 2774  .db 0h33 ; 0h0B03: full optimization, no escape: C2
   4813 53                 2775  .db 0h53 ; 0h0B04: full optimization, no escape: E3
   4814 53                 2776  .db 0h53 ; 0h0B05: full optimization, no escape: E3
   4815 02                 2777  .db 0h02 ; 0h0B06: normal track data,  wait 0
   4816 42                 2778  .db 0h42 ; 0h0B07: normal track data
   4817 00                 2779  .db 0h00 ; 0h0B08: vol off, no pitch, no note, no instrument
   4818 02                 2780  .db 0h02 ; 0h0B09: normal track data,  wait 0
   4819 33                 2781  .db 0h33 ; 0h0B0A: full optimization, no escape: C2
   481A 53                 2782  .db 0h53 ; 0h0B0B: full optimization, no escape: E3
   481B 33                 2783  .db 0h33 ; 0h0B0C: full optimization, no escape: C2
   481C 53                 2784  .db 0h53 ; 0h0B0D: full optimization, no escape: E3
   481D 53                 2785  .db 0h53 ; 0h0B0E: full optimization, no escape: E3
   481E 02                 2786  .db 0h02 ; 0h0B0F: normal track data,  wait 0
   481F 42                 2787  .db 0h42 ; 0h0B10: normal track data
   4820 00                 2788  .db 0h00 ; 0h0B11: vol off, no pitch, no note, no instrument
   4821 02                 2789  .db 0h02 ; 0h0B12: normal track data,  wait 0
   4822 33                 2790  .db 0h33 ; 0h0B13: full optimization, no escape: C2
   4823 53                 2791  .db 0h53 ; 0h0B14: full optimization, no escape: E3
   4824 33                 2792  .db 0h33 ; 0h0B15: full optimization, no escape: C2
   4825 53                 2793  .db 0h53 ; 0h0B16: full optimization, no escape: E3
   4826 53                 2794  .db 0h53 ; 0h0B17: full optimization, no escape: E3
   4827 42                 2795  .db 0h42 ; 0h0B18: normal track data
   4828 00                 2796  .db 0h00 ; 0h0B19: vol off, no pitch, no note, no instrument
   4829 42                 2797  .db 0h42 ; 0h0B1A: normal track data
   482A 00                 2798  .db 0h00 ; 0h0B1B: vol off, no pitch, no note, no instrument
   482B 72                 2799  .db 0h72 ; 0h0B1C: normal track data
   482C 60                 2800  .db 0h60 ; 0h0B1D: vol off, no pitch, note, instrument
   482D 04                 2801  .db 0h04 ; 0h0B1E: instrument
   482E 33                 2802  .db 0h33 ; 0h0B1F: full optimization, no escape: C2
   482F 00                 2803  .db 0h00 ; 0h0B20: track end signature found
   4830                    2804 trackDef28Test:
   4830 42                 2805  .db 0h42 ; 0h0B21: normal track data
   4831 80                 2806  .db 0h80 ; 0h0B22: vol off, pitch, no note, no instrument
   4832 00 00              2807  .dw 0h0000 ; 0h0B23: pitch
   4834 02                 2808  .db 0h02 ; 0h0B25: normal track data,  wait 0
   4835 42                 2809  .db 0h42 ; 0h0B26: normal track data
   4836 00                 2810  .db 0h00 ; 0h0B27: vol off, no pitch, no note, no instrument
   4837 02                 2811  .db 0h02 ; 0h0B28: normal track data,  wait 0
   4838 42                 2812  .db 0h42 ; 0h0B29: normal track data
   4839 00                 2813  .db 0h00 ; 0h0B2A: vol off, no pitch, no note, no instrument
   483A 02                 2814  .db 0h02 ; 0h0B2B: normal track data,  wait 0
   483B 42                 2815  .db 0h42 ; 0h0B2C: normal track data
   483C 00                 2816  .db 0h00 ; 0h0B2D: vol off, no pitch, no note, no instrument
   483D 02                 2817  .db 0h02 ; 0h0B2E: normal track data,  wait 0
   483E 42                 2818  .db 0h42 ; 0h0B2F: normal track data
   483F 00                 2819  .db 0h00 ; 0h0B30: vol off, no pitch, no note, no instrument
   4840 02                 2820  .db 0h02 ; 0h0B31: normal track data,  wait 0
   4841 42                 2821  .db 0h42 ; 0h0B32: normal track data
   4842 00                 2822  .db 0h00 ; 0h0B33: vol off, no pitch, no note, no instrument
   4843 42                 2823  .db 0h42 ; 0h0B34: normal track data
   4844 00                 2824  .db 0h00 ; 0h0B35: vol off, no pitch, no note, no instrument
   4845 42                 2825  .db 0h42 ; 0h0B36: normal track data
   4846 00                 2826  .db 0h00 ; 0h0B37: vol off, no pitch, no note, no instrument
   4847 42                 2827  .db 0h42 ; 0h0B38: normal track data
   4848 00                 2828  .db 0h00 ; 0h0B39: vol off, no pitch, no note, no instrument
   4849 42                 2829  .db 0h42 ; 0h0B3A: normal track data
   484A 00                 2830  .db 0h00 ; 0h0B3B: vol off, no pitch, no note, no instrument
   484B 02                 2831  .db 0h02 ; 0h0B3C: normal track data,  wait 0
   484C 42                 2832  .db 0h42 ; 0h0B3D: normal track data
   484D 00                 2833  .db 0h00 ; 0h0B3E: vol off, no pitch, no note, no instrument
   484E 02                 2834  .db 0h02 ; 0h0B3F: normal track data,  wait 0
   484F 42                 2835  .db 0h42 ; 0h0B40: normal track data
   4850 00                 2836  .db 0h00 ; 0h0B41: vol off, no pitch, no note, no instrument
   4851 42                 2837  .db 0h42 ; 0h0B42: normal track data
   4852 00                 2838  .db 0h00 ; 0h0B43: vol off, no pitch, no note, no instrument
   4853 42                 2839  .db 0h42 ; 0h0B44: normal track data
   4854 00                 2840  .db 0h00 ; 0h0B45: vol off, no pitch, no note, no instrument
   4855 02                 2841  .db 0h02 ; 0h0B46: normal track data,  wait 0
   4856 42                 2842  .db 0h42 ; 0h0B47: normal track data
   4857 00                 2843  .db 0h00 ; 0h0B48: vol off, no pitch, no note, no instrument
   4858 02                 2844  .db 0h02 ; 0h0B49: normal track data,  wait 0
   4859 42                 2845  .db 0h42 ; 0h0B4A: normal track data
   485A 00                 2846  .db 0h00 ; 0h0B4B: vol off, no pitch, no note, no instrument
   485B 02                 2847  .db 0h02 ; 0h0B4C: normal track data,  wait 0
   485C 42                 2848  .db 0h42 ; 0h0B4D: normal track data
   485D 00                 2849  .db 0h00 ; 0h0B4E: vol off, no pitch, no note, no instrument
   485E 42                 2850  .db 0h42 ; 0h0B4F: normal track data
   485F 00                 2851  .db 0h00 ; 0h0B50: vol off, no pitch, no note, no instrument
   4860 42                 2852  .db 0h42 ; 0h0B51: normal track data
   4861 00                 2853  .db 0h00 ; 0h0B52: vol off, no pitch, no note, no instrument
   4862 42                 2854  .db 0h42 ; 0h0B53: normal track data
   4863 00                 2855  .db 0h00 ; 0h0B54: vol off, no pitch, no note, no instrument
   4864 42                 2856  .db 0h42 ; 0h0B55: normal track data
   4865 00                 2857  .db 0h00 ; 0h0B56: vol off, no pitch, no note, no instrument
   4866 02                 2858  .db 0h02 ; 0h0B57: normal track data,  wait 0
   4867 42                 2859  .db 0h42 ; 0h0B58: normal track data
   4868 00                 2860  .db 0h00 ; 0h0B59: vol off, no pitch, no note, no instrument
   4869 02                 2861  .db 0h02 ; 0h0B5A: normal track data,  wait 0
   486A 42                 2862  .db 0h42 ; 0h0B5B: normal track data
   486B 00                 2863  .db 0h00 ; 0h0B5C: vol off, no pitch, no note, no instrument
   486C 02                 2864  .db 0h02 ; 0h0B5D: normal track data,  wait 0
   486D 42                 2865  .db 0h42 ; 0h0B5E: normal track data
   486E 00                 2866  .db 0h00 ; 0h0B5F: vol off, no pitch, no note, no instrument
   486F 02                 2867  .db 0h02 ; 0h0B60: normal track data,  wait 0
   4870 42                 2868  .db 0h42 ; 0h0B61: normal track data
   4871 00                 2869  .db 0h00 ; 0h0B62: vol off, no pitch, no note, no instrument
   4872 02                 2870  .db 0h02 ; 0h0B63: normal track data,  wait 0
   4873 42                 2871  .db 0h42 ; 0h0B64: normal track data
   4874 00                 2872  .db 0h00 ; 0h0B65: vol off, no pitch, no note, no instrument
   4875 02                 2873  .db 0h02 ; 0h0B66: normal track data,  wait 0
   4876 42                 2874  .db 0h42 ; 0h0B67: normal track data
   4877 00                 2875  .db 0h00 ; 0h0B68: vol off, no pitch, no note, no instrument
   4878 42                 2876  .db 0h42 ; 0h0B69: normal track data
   4879 00                 2877  .db 0h00 ; 0h0B6A: vol off, no pitch, no note, no instrument
   487A 42                 2878  .db 0h42 ; 0h0B6B: normal track data
   487B 00                 2879  .db 0h00 ; 0h0B6C: vol off, no pitch, no note, no instrument
   487C 42                 2880  .db 0h42 ; 0h0B6D: normal track data
   487D 00                 2881  .db 0h00 ; 0h0B6E: vol off, no pitch, no note, no instrument
   487E 42                 2882  .db 0h42 ; 0h0B6F: normal track data
   487F 00                 2883  .db 0h00 ; 0h0B70: vol off, no pitch, no note, no instrument
   4880 02                 2884  .db 0h02 ; 0h0B71: normal track data,  wait 0
   4881 42                 2885  .db 0h42 ; 0h0B72: normal track data
   4882 00                 2886  .db 0h00 ; 0h0B73: vol off, no pitch, no note, no instrument
   4883 02                 2887  .db 0h02 ; 0h0B74: normal track data,  wait 0
   4884 42                 2888  .db 0h42 ; 0h0B75: normal track data
   4885 00                 2889  .db 0h00 ; 0h0B76: vol off, no pitch, no note, no instrument
   4886 42                 2890  .db 0h42 ; 0h0B77: normal track data
   4887 00                 2891  .db 0h00 ; 0h0B78: vol off, no pitch, no note, no instrument
   4888 42                 2892  .db 0h42 ; 0h0B79: normal track data
   4889 00                 2893  .db 0h00 ; 0h0B7A: vol off, no pitch, no note, no instrument
   488A 02                 2894  .db 0h02 ; 0h0B7B: normal track data,  wait 0
   488B 42                 2895  .db 0h42 ; 0h0B7C: normal track data
   488C 00                 2896  .db 0h00 ; 0h0B7D: vol off, no pitch, no note, no instrument
   488D 02                 2897  .db 0h02 ; 0h0B7E: normal track data,  wait 0
   488E 76                 2898  .db 0h76 ; 0h0B7F: normal track data
   488F 73                 2899  .db 0h73 ; 0h0B80: vol = 0h6 (inverted), no pitch, no note, no instrument
   4890 05                 2900  .db 0h05 ; 0h0B81: instrument
   4891 7A                 2901  .db 0h7A ; 0h0B82: normal track data
   4892 40                 2902  .db 0h40 ; 0h0B83: vol off, no pitch, note, no instrument
   4893 7C                 2903  .db 0h7C ; 0h0B84: normal track data
   4894 40                 2904  .db 0h40 ; 0h0B85: vol off, no pitch, note, no instrument
   4895 80                 2905  .db 0h80 ; 0h0B86: normal track data
   4896 40                 2906  .db 0h40 ; 0h0B87: vol off, no pitch, note, no instrument
   4897 84                 2907  .db 0h84 ; 0h0B88: normal track data
   4898 40                 2908  .db 0h40 ; 0h0B89: vol off, no pitch, note, no instrument
   4899 88                 2909  .db 0h88 ; 0h0B8A: normal track data
   489A 40                 2910  .db 0h40 ; 0h0B8B: vol off, no pitch, note, no instrument
   489B 8A                 2911  .db 0h8A ; 0h0B8C: normal track data
   489C 40                 2912  .db 0h40 ; 0h0B8D: vol off, no pitch, note, no instrument
   489D 8E                 2913  .db 0h8E ; 0h0B8E: normal track data
   489E 40                 2914  .db 0h40 ; 0h0B8F: vol off, no pitch, note, no instrument
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

