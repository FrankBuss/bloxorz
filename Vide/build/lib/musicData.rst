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
   4FD5                      13 aks_song:
   4FD5 06                   14  .db 0h06 ; 0h0009: default speed
   4FD6 00 C6                15  .dw 0h00C6 ; 0h000A: size of instrument table (without this word pointer)
   4FD8 4F EC                16  .dw instrument0Test ; 0h000C: [0h4020] pointer to instrument 0
   4FDA 4F F5                17  .dw instrument1Test ; 0h000E: [0h4029] pointer to instrument 1
   4FDC 4F FC                18  .dw instrument2Test ; 0h0010: [0h4030] pointer to instrument 2
   4FDE 50 04                19  .dw instrument3Test ; 0h0012: [0h4038] pointer to instrument 3
   4FE0 50 19                20  .dw instrument4Test ; 0h0014: [0h404D] pointer to instrument 4
   4FE2 50 29                21  .dw instrument5Test ; 0h0016: [0h405D] pointer to instrument 5
   4FE4 50 5E                22  .dw instrument6Test ; 0h0018: [0h4092] pointer to instrument 6
   4FE6 50 6E                23  .dw instrument7Test ; 0h001A: [0h40A2] pointer to instrument 7
   4FE8 50 7E                24  .dw instrument8Test ; 0h001C: [0h40B2] pointer to instrument 8
   4FEA 50 8E                25  .dw instrument9Test ; 0h001E: [0h40C2] pointer to instrument 9
   4FEC                      26 instrument0Test:
   4FEC 00                   27  .db 0h00 ; 0h0020: speed
   4FED 00                   28  .db 0h00 ; 0h0021: retrig
   4FEE                      29 instrument0loopTest:
   4FEE 00                   30  .db 0h00 ; 0h0022: dataColumn_0 (non hard), vol=0h0
   4FEF 00                   31  .db 0h00 ; 0h0023: dataColumn_0 (non hard), vol=0h0
   4FF0 00                   32  .db 0h00 ; 0h0024: dataColumn_0 (non hard), vol=0h0
   4FF1 00                   33  .db 0h00 ; 0h0025: dataColumn_0 (non hard), vol=0h0
   4FF2 0D                   34  .db 0h0D ; 0h0026: dataColumn_0 (hard)
   4FF3 4F EE                35  .dw instrument0loopTest ; 0h0027: [0h4022] loop
   4FF5                      36 instrument1Test:
   4FF5 01                   37  .db 0h01 ; 0h0029: speed
   4FF6 00                   38  .db 0h00 ; 0h002A: retrig
   4FF7 36                   39  .db 0h36 ; 0h002B: dataColumn_0 (non hard), vol=0hD
   4FF8 01                   40  .db 0h01 ; 0h002C: dataColumn_1, noise=0h01
   4FF9 0D                   41  .db 0h0D ; 0h002D: dataColumn_0 (hard)
   4FFA 4F EE                42  .dw instrument0loopTest ; 0h002E: [0h4022] loop
   4FFC                      43 instrument2Test:
   4FFC 06                   44  .db 0h06 ; 0h0030: speed
   4FFD 00                   45  .db 0h00 ; 0h0031: retrig
   4FFE 2C                   46  .db 0h2C ; 0h0032: dataColumn_0 (non hard), vol=0hB
   4FFF 24                   47  .db 0h24 ; 0h0033: dataColumn_0 (non hard), vol=0h9
   5000 14                   48  .db 0h14 ; 0h0034: dataColumn_0 (non hard), vol=0h5
   5001 0D                   49  .db 0h0D ; 0h0035: dataColumn_0 (hard)
   5002 4F EE                50  .dw instrument0loopTest ; 0h0036: [0h4022] loop
   5004                      51 instrument3Test:
   5004 01                   52  .db 0h01 ; 0h0038: speed
   5005 00                   53  .db 0h00 ; 0h0039: retrig
   5006 36                   54  .db 0h36 ; 0h003A: dataColumn_0 (non hard), vol=0hD
   5007 0B                   55  .db 0h0B ; 0h003B: dataColumn_1, noise=0h0B
   5008 7C                   56  .db 0h7C ; 0h003C: dataColumn_0 (non hard), vol=0hF
   5009 16                   57  .db 0h16 ; 0h003D: arpegio
   500A 7C                   58  .db 0h7C ; 0h003E: dataColumn_0 (non hard), vol=0hF
   500B 0C                   59  .db 0h0C ; 0h003F: arpegio
   500C 7C                   60  .db 0h7C ; 0h0040: dataColumn_0 (non hard), vol=0hF
   500D 0A                   61  .db 0h0A ; 0h0041: arpegio
   500E 7C                   62  .db 0h7C ; 0h0042: dataColumn_0 (non hard), vol=0hF
   500F 08                   63  .db 0h08 ; 0h0043: arpegio
   5010 7C                   64  .db 0h7C ; 0h0044: dataColumn_0 (non hard), vol=0hF
   5011 04                   65  .db 0h04 ; 0h0045: arpegio
   5012 78                   66  .db 0h78 ; 0h0046: dataColumn_0 (non hard), vol=0hE
   5013 03                   67  .db 0h03 ; 0h0047: arpegio
   5014 6C                   68  .db 0h6C ; 0h0048: dataColumn_0 (non hard), vol=0hB
   5015 01                   69  .db 0h01 ; 0h0049: arpegio
   5016 0D                   70  .db 0h0D ; 0h004A: dataColumn_0 (hard)
   5017 4F EE                71  .dw instrument0loopTest ; 0h004B: [0h4022] loop
   5019                      72 instrument4Test:
   5019 01                   73  .db 0h01 ; 0h004D: speed
   501A 00                   74  .db 0h00 ; 0h004E: retrig
   501B 3E                   75  .db 0h3E ; 0h004F: dataColumn_0 (non hard), vol=0hF
   501C 02                   76  .db 0h02 ; 0h0050: dataColumn_1, noise=0h02
   501D 3E                   77  .db 0h3E ; 0h0051: dataColumn_0 (non hard), vol=0hF
   501E 2A                   78  .db 0h2A ; 0h0052: dataColumn_1, noise=0h0A
   501F 7E                   79  .db 0h7E ; 0h0053: dataColumn_0 (non hard), vol=0hF
   5020 2A                   80  .db 0h2A ; 0h0054: dataColumn_1, noise=0h0A
   5021 02                   81  .db 0h02 ; 0h0055: arpegio
   5022 3E                   82  .db 0h3E ; 0h0056: dataColumn_0 (non hard), vol=0hF
   5023 0B                   83  .db 0h0B ; 0h0057: dataColumn_1, noise=0h0B
   5024 3E                   84  .db 0h3E ; 0h0058: dataColumn_0 (non hard), vol=0hF
   5025 0C                   85  .db 0h0C ; 0h0059: dataColumn_1, noise=0h0C
   5026 0D                   86  .db 0h0D ; 0h005A: dataColumn_0 (hard)
   5027 4F EE                87  .dw instrument0loopTest ; 0h005B: [0h4022] loop
   5029                      88 instrument5Test:
   5029 0C                   89  .db 0h0C ; 0h005D: speed
   502A FE                   90  .db 0hFE ; 0h005E: retrig
   502B 09                   91  .db 0h09 ; 0h005F: dataColumn_0 (hard)
   502C 28                   92  .db 0h28 ; 0h0060: Independent dependend 2. byte
   502D 24                   93  .db 0h24 ; 0h0061: independend hardware arpegio
   502E 09                   94  .db 0h09 ; 0h0062: dataColumn_0 (hard)
   502F 28                   95  .db 0h28 ; 0h0063: Independent dependend 2. byte
   5030 18                   96  .db 0h18 ; 0h0064: independend hardware arpegio
   5031 09                   97  .db 0h09 ; 0h0065: dataColumn_0 (hard)
   5032 28                   98  .db 0h28 ; 0h0066: Independent dependend 2. byte
   5033 24                   99  .db 0h24 ; 0h0067: independend hardware arpegio
   5034 09                  100  .db 0h09 ; 0h0068: dataColumn_0 (hard)
   5035 28                  101  .db 0h28 ; 0h0069: Independent dependend 2. byte
   5036 18                  102  .db 0h18 ; 0h006A: independend hardware arpegio
   5037 27                  103  .db 0h27 ; 0h006B: dataColumn_0 (hard)
   5038 28                  104  .db 0h28 ; 0h006C: software dependend 2. byte
   5039 E8                  105  .db 0hE8 ; 0h006D: arpegio
   503A 09                  106  .db 0h09 ; 0h006E: dataColumn_0 (hard)
   503B 28                  107  .db 0h28 ; 0h006F: Independent dependend 2. byte
   503C 18                  108  .db 0h18 ; 0h0070: independend hardware arpegio
   503D 0B                  109  .db 0h0B ; 0h0071: dataColumn_0 (hard)
   503E 28                  110  .db 0h28 ; 0h0072: Independent dependend 2. byte
   503F 24                  111  .db 0h24 ; 0h0073: independend hardware arpegio
   5040 09                  112  .db 0h09 ; 0h0074: dataColumn_0 (hard)
   5041 28                  113  .db 0h28 ; 0h0075: Independent dependend 2. byte
   5042 18                  114  .db 0h18 ; 0h0076: independend hardware arpegio
   5043 23                  115  .db 0h23 ; 0h0077: dataColumn_0 (hard)
   5044 28                  116  .db 0h28 ; 0h0078: hardware dependend 2. byte
   5045 24                  117  .db 0h24 ; 0h0079: arpegio
   5046 21                  118  .db 0h21 ; 0h007A: dataColumn_0 (hard)
   5047 38                  119  .db 0h38 ; 0h007B: hardware dependend 2. byte
   5048 18                  120  .db 0h18 ; 0h007C: arpegio
   5049 21                  121  .db 0h21 ; 0h007D: dataColumn_0 (hard)
   504A 28                  122  .db 0h28 ; 0h007E: hardware dependend 2. byte
   504B 24                  123  .db 0h24 ; 0h007F: arpegio
   504C 21                  124  .db 0h21 ; 0h0080: dataColumn_0 (hard)
   504D 38                  125  .db 0h38 ; 0h0081: hardware dependend 2. byte
   504E 18                  126  .db 0h18 ; 0h0082: arpegio
   504F 21                  127  .db 0h21 ; 0h0083: dataColumn_0 (hard)
   5050 28                  128  .db 0h28 ; 0h0084: hardware dependend 2. byte
   5051 24                  129  .db 0h24 ; 0h0085: arpegio
   5052 21                  130  .db 0h21 ; 0h0086: dataColumn_0 (hard)
   5053 38                  131  .db 0h38 ; 0h0087: hardware dependend 2. byte
   5054 18                  132  .db 0h18 ; 0h0088: arpegio
   5055 21                  133  .db 0h21 ; 0h0089: dataColumn_0 (hard)
   5056 28                  134  .db 0h28 ; 0h008A: hardware dependend 2. byte
   5057 24                  135  .db 0h24 ; 0h008B: arpegio
   5058 21                  136  .db 0h21 ; 0h008C: dataColumn_0 (hard)
   5059 38                  137  .db 0h38 ; 0h008D: hardware dependend 2. byte
   505A 18                  138  .db 0h18 ; 0h008E: arpegio
   505B 0D                  139  .db 0h0D ; 0h008F: dataColumn_0 (hard)
   505C 4F EE               140  .dw instrument0loopTest ; 0h0090: [0h4022] loop
   505E                     141 instrument6Test:
   505E 01                  142  .db 0h01 ; 0h0092: speed
   505F 00                  143  .db 0h00 ; 0h0093: retrig
   5060 3C                  144  .db 0h3C ; 0h0094: dataColumn_0 (non hard), vol=0hF
   5061 7C                  145  .db 0h7C ; 0h0095: dataColumn_0 (non hard), vol=0hF
   5062 03                  146  .db 0h03 ; 0h0096: arpegio
   5063 7C                  147  .db 0h7C ; 0h0097: dataColumn_0 (non hard), vol=0hF
   5064 07                  148  .db 0h07 ; 0h0098: arpegio
   5065 3C                  149  .db 0h3C ; 0h0099: dataColumn_0 (non hard), vol=0hF
   5066 7C                  150  .db 0h7C ; 0h009A: dataColumn_0 (non hard), vol=0hF
   5067 03                  151  .db 0h03 ; 0h009B: arpegio
   5068 7C                  152  .db 0h7C ; 0h009C: dataColumn_0 (non hard), vol=0hF
   5069 07                  153  .db 0h07 ; 0h009D: arpegio
   506A 00                  154  .db 0h00 ; 0h009E: dataColumn_0 (non hard), vol=0h0
   506B 0D                  155  .db 0h0D ; 0h009F: dataColumn_0 (hard)
   506C 4F EE               156  .dw instrument0loopTest ; 0h00A0: [0h4022] loop
   506E                     157 instrument7Test:
   506E 01                  158  .db 0h01 ; 0h00A2: speed
   506F 00                  159  .db 0h00 ; 0h00A3: retrig
   5070 3C                  160  .db 0h3C ; 0h00A4: dataColumn_0 (non hard), vol=0hF
   5071 7C                  161  .db 0h7C ; 0h00A5: dataColumn_0 (non hard), vol=0hF
   5072 04                  162  .db 0h04 ; 0h00A6: arpegio
   5073 7C                  163  .db 0h7C ; 0h00A7: dataColumn_0 (non hard), vol=0hF
   5074 07                  164  .db 0h07 ; 0h00A8: arpegio
   5075 3C                  165  .db 0h3C ; 0h00A9: dataColumn_0 (non hard), vol=0hF
   5076 7C                  166  .db 0h7C ; 0h00AA: dataColumn_0 (non hard), vol=0hF
   5077 04                  167  .db 0h04 ; 0h00AB: arpegio
   5078 7C                  168  .db 0h7C ; 0h00AC: dataColumn_0 (non hard), vol=0hF
   5079 07                  169  .db 0h07 ; 0h00AD: arpegio
   507A 00                  170  .db 0h00 ; 0h00AE: dataColumn_0 (non hard), vol=0h0
   507B 0D                  171  .db 0h0D ; 0h00AF: dataColumn_0 (hard)
   507C 4F EE               172  .dw instrument0loopTest ; 0h00B0: [0h4022] loop
   507E                     173 instrument8Test:
   507E 01                  174  .db 0h01 ; 0h00B2: speed
   507F 00                  175  .db 0h00 ; 0h00B3: retrig
   5080 3C                  176  .db 0h3C ; 0h00B4: dataColumn_0 (non hard), vol=0hF
   5081 7C                  177  .db 0h7C ; 0h00B5: dataColumn_0 (non hard), vol=0hF
   5082 05                  178  .db 0h05 ; 0h00B6: arpegio
   5083 7C                  179  .db 0h7C ; 0h00B7: dataColumn_0 (non hard), vol=0hF
   5084 09                  180  .db 0h09 ; 0h00B8: arpegio
   5085 3C                  181  .db 0h3C ; 0h00B9: dataColumn_0 (non hard), vol=0hF
   5086 7C                  182  .db 0h7C ; 0h00BA: dataColumn_0 (non hard), vol=0hF
   5087 05                  183  .db 0h05 ; 0h00BB: arpegio
   5088 7C                  184  .db 0h7C ; 0h00BC: dataColumn_0 (non hard), vol=0hF
   5089 09                  185  .db 0h09 ; 0h00BD: arpegio
   508A 00                  186  .db 0h00 ; 0h00BE: dataColumn_0 (non hard), vol=0h0
   508B 0D                  187  .db 0h0D ; 0h00BF: dataColumn_0 (hard)
   508C 4F EE               188  .dw instrument0loopTest ; 0h00C0: [0h4022] loop
   508E                     189 instrument9Test:
   508E 01                  190  .db 0h01 ; 0h00C2: speed
   508F 00                  191  .db 0h00 ; 0h00C3: retrig
   5090 3C                  192  .db 0h3C ; 0h00C4: dataColumn_0 (non hard), vol=0hF
   5091 7C                  193  .db 0h7C ; 0h00C5: dataColumn_0 (non hard), vol=0hF
   5092 05                  194  .db 0h05 ; 0h00C6: arpegio
   5093 7C                  195  .db 0h7C ; 0h00C7: dataColumn_0 (non hard), vol=0hF
   5094 07                  196  .db 0h07 ; 0h00C8: arpegio
   5095 3C                  197  .db 0h3C ; 0h00C9: dataColumn_0 (non hard), vol=0hF
   5096 7C                  198  .db 0h7C ; 0h00CA: dataColumn_0 (non hard), vol=0hF
   5097 05                  199  .db 0h05 ; 0h00CB: arpegio
   5098 7C                  200  .db 0h7C ; 0h00CC: dataColumn_0 (non hard), vol=0hF
   5099 07                  201  .db 0h07 ; 0h00CD: arpegio
   509A 00                  202  .db 0h00 ; 0h00CE: dataColumn_0 (non hard), vol=0h0
   509B 0D                  203  .db 0h0D ; 0h00CF: dataColumn_0 (hard)
   509C 4F EE               204  .dw instrument0loopTest ; 0h00D0: [0h4022] loop
                            205 ; start of linker definition
   509E                     206 linkerTest:
   509E 40                  207  .db 0h40 ; 0h00D2: first height
   509F 00                  208  .db 0h00 ; 0h00D3: transposition1
   50A0 00                  209  .db 0h00 ; 0h00D4: transposition2
   50A1 00                  210  .db 0h00 ; 0h00D5: transposition3
   50A2 51 33               211  .dw specialtrackDef0Test ; 0h00D6: [0h4167] specialTrack
   50A4                     212 pattern0DefinitionTest:
   50A4 00                  213  .db 0h00 ; 0h00D8: pattern 0 state
   50A5 51 3A               214  .dw trackDef0Test ; 0h00D9: [0h416E] pattern 0, track 1
   50A7 51 34               215  .dw trackDef1Test ; 0h00DB: [0h4168] pattern 0, track 2
   50A9 51 34               216  .dw trackDef1Test ; 0h00DD: [0h4168] pattern 0, track 3
   50AB                     217 pattern1DefinitionTest:
   50AB 00                  218  .db 0h00 ; 0h00DF: pattern 1 state
   50AC 51 3A               219  .dw trackDef0Test ; 0h00E0: [0h416E] pattern 1, track 1
   50AE 51 89               220  .dw trackDef3Test ; 0h00E2: [0h41BD] pattern 1, track 2
   50B0 51 EE               221  .dw trackDef4Test ; 0h00E4: [0h4222] pattern 1, track 3
   50B2                     222 pattern2DefinitionTest:
   50B2 00                  223  .db 0h00 ; 0h00E6: pattern 2 state
   50B3 51 3A               224  .dw trackDef0Test ; 0h00E7: [0h416E] pattern 2, track 1
   50B5 51 9B               225  .dw trackDef5Test ; 0h00E9: [0h41CF] pattern 2, track 2
   50B7 52 65               226  .dw trackDef6Test ; 0h00EB: [0h4299] pattern 2, track 3
   50B9                     227 pattern3DefinitionTest:
   50B9 00                  228  .db 0h00 ; 0h00ED: pattern 3 state
   50BA 52 80               229  .dw trackDef7Test ; 0h00EE: [0h42B4] pattern 3, track 1
   50BC 52 D8               230  .dw trackDef8Test ; 0h00F0: [0h430C] pattern 3, track 2
   50BE 53 36               231  .dw trackDef9Test ; 0h00F2: [0h436A] pattern 3, track 3
   50C0                     232 pattern4DefinitionTest:
   50C0 00                  233  .db 0h00 ; 0h00F4: pattern 4 state
   50C1 51 3A               234  .dw trackDef0Test ; 0h00F5: [0h416E] pattern 4, track 1
   50C3 53 DE               235  .dw trackDef10Test ; 0h00F7: [0h4412] pattern 4, track 2
   50C5 55 C9               236  .dw trackDef11Test ; 0h00F9: [0h45FD] pattern 4, track 3
   50C7                     237 pattern5DefinitionTest:
   50C7 00                  238  .db 0h00 ; 0h00FB: pattern 5 state
   50C8 52 80               239  .dw trackDef7Test ; 0h00FC: [0h42B4] pattern 5, track 1
   50CA 54 74               240  .dw trackDef12Test ; 0h00FE: [0h44A8] pattern 5, track 2
   50CC 56 4C               241  .dw trackDef13Test ; 0h0100: [0h4680] pattern 5, track 3
   50CE                     242 pattern6DefinitionTest:
   50CE 00                  243  .db 0h00 ; 0h0102: pattern 6 state
   50CF 53 5B               244  .dw trackDef14Test ; 0h0103: [0h438F] pattern 6, track 1
   50D1 55 07               245  .dw trackDef15Test ; 0h0105: [0h453B] pattern 6, track 2
   50D3 51 FE               246  .dw trackDef16Test ; 0h0107: [0h4232] pattern 6, track 3
   50D5                     247 pattern7DefinitionTest:
   50D5 00                  248  .db 0h00 ; 0h0109: pattern 7 state
   50D6 57 80               249  .dw trackDef17Test ; 0h010A: [0h47B4] pattern 7, track 1
   50D8 56 CF               250  .dw trackDef18Test ; 0h010C: [0h4703] pattern 7, track 2
   50DA 57 F9               251  .dw trackDef19Test ; 0h010E: [0h482D] pattern 7, track 3
   50DC                     252 pattern8DefinitionTest:
   50DC 00                  253  .db 0h00 ; 0h0110: pattern 8 state
   50DD 58 61               254  .dw trackDef20Test ; 0h0111: [0h4895] pattern 8, track 1
   50DF 58 E5               255  .dw trackDef21Test ; 0h0113: [0h4919] pattern 8, track 2
   50E1 51 FE               256  .dw trackDef16Test ; 0h0115: [0h4232] pattern 8, track 3
   50E3                     257 pattern9DefinitionTest:
   50E3 00                  258  .db 0h00 ; 0h0117: pattern 9 state
   50E4 58 61               259  .dw trackDef20Test ; 0h0118: [0h4895] pattern 9, track 1
   50E6 58 E5               260  .dw trackDef21Test ; 0h011A: [0h4919] pattern 9, track 2
   50E8 57 F9               261  .dw trackDef19Test ; 0h011C: [0h482D] pattern 9, track 3
   50EA                     262 pattern10DefinitionTest:
   50EA 00                  263  .db 0h00 ; 0h011E: pattern 10 state
   50EB 53 5B               264  .dw trackDef14Test ; 0h011F: [0h438F] pattern 10, track 1
   50ED 55 07               265  .dw trackDef15Test ; 0h0121: [0h453B] pattern 10, track 2
   50EF 59 92               266  .dw trackDef24Test ; 0h0123: [0h49C6] pattern 10, track 3
   50F1                     267 pattern11DefinitionTest:
   50F1 00                  268  .db 0h00 ; 0h0125: pattern 11 state
   50F2 57 80               269  .dw trackDef17Test ; 0h0126: [0h47B4] pattern 11, track 1
   50F4 56 CF               270  .dw trackDef18Test ; 0h0128: [0h4703] pattern 11, track 2
   50F6 59 F8               271  .dw trackDef26Test ; 0h012A: [0h4A2C] pattern 11, track 3
   50F8                     272 pattern12DefinitionTest:
   50F8 00                  273  .db 0h00 ; 0h012C: pattern 12 state
   50F9 51 34               274  .dw trackDef1Test ; 0h012D: [0h4168] pattern 12, track 1
   50FB 51 34               275  .dw trackDef1Test ; 0h012F: [0h4168] pattern 12, track 2
   50FD 5A 66               276  .dw trackDef27Test ; 0h0131: [0h4A9A] pattern 12, track 3
   50FF                     277 pattern13DefinitionTest:
   50FF 00                  278  .db 0h00 ; 0h0133: pattern 13 state
   5100 5A ED               279  .dw trackDef28Test ; 0h0134: [0h4B21] pattern 13, track 1
   5102 5A 99               280  .dw trackDef29Test ; 0h0136: [0h4ACD] pattern 13, track 2
   5104 5A 66               281  .dw trackDef27Test ; 0h0138: [0h4A9A] pattern 13, track 3
   5106                     282 pattern14DefinitionTest:
   5106 00                  283  .db 0h00 ; 0h013A: pattern 14 state
   5107 53 5B               284  .dw trackDef14Test ; 0h013B: [0h438F] pattern 14, track 1
   5109 55 07               285  .dw trackDef15Test ; 0h013D: [0h453B] pattern 14, track 2
   510B 51 FE               286  .dw trackDef16Test ; 0h013F: [0h4232] pattern 14, track 3
   510D                     287 pattern15DefinitionTest:
   510D 00                  288  .db 0h00 ; 0h0141: pattern 15 state
   510E 57 80               289  .dw trackDef17Test ; 0h0142: [0h47B4] pattern 15, track 1
   5110 56 CF               290  .dw trackDef18Test ; 0h0144: [0h4703] pattern 15, track 2
   5112 57 F9               291  .dw trackDef19Test ; 0h0146: [0h482D] pattern 15, track 3
   5114                     292 pattern16DefinitionTest:
   5114 00                  293  .db 0h00 ; 0h0148: pattern 16 state
   5115 58 61               294  .dw trackDef20Test ; 0h0149: [0h4895] pattern 16, track 1
   5117 58 E5               295  .dw trackDef21Test ; 0h014B: [0h4919] pattern 16, track 2
   5119 51 FE               296  .dw trackDef16Test ; 0h014D: [0h4232] pattern 16, track 3
   511B                     297 pattern17DefinitionTest:
   511B 00                  298  .db 0h00 ; 0h014F: pattern 17 state
   511C 58 61               299  .dw trackDef20Test ; 0h0150: [0h4895] pattern 17, track 1
   511E 58 E5               300  .dw trackDef21Test ; 0h0152: [0h4919] pattern 17, track 2
   5120 57 F9               301  .dw trackDef19Test ; 0h0154: [0h482D] pattern 17, track 3
   5122                     302 pattern18DefinitionTest:
   5122 00                  303  .db 0h00 ; 0h0156: pattern 18 state
   5123 53 5B               304  .dw trackDef14Test ; 0h0157: [0h438F] pattern 18, track 1
   5125 55 07               305  .dw trackDef15Test ; 0h0159: [0h453B] pattern 18, track 2
   5127 59 92               306  .dw trackDef24Test ; 0h015B: [0h49C6] pattern 18, track 3
   5129                     307 pattern19DefinitionTest:
   5129 00                  308  .db 0h00 ; 0h015D: pattern 19 state
   512A 57 80               309  .dw trackDef17Test ; 0h015E: [0h47B4] pattern 19, track 1
   512C 56 CF               310  .dw trackDef18Test ; 0h0160: [0h4703] pattern 19, track 2
   512E 59 F8               311  .dw trackDef26Test ; 0h0162: [0h4A2C] pattern 19, track 3
   5130                     312 pattern20DefinitionTest:
   5130 01                  313  .db 0h01 ; 0h0164: pattern 20 state
   5131 50 A4               314  .dw pattern0DefinitionTest ; 0h0165: [0h40D8] song restart address
   5133                     315 specialtrackDef0Test:
   5133 00                  316  .db 0h00 ; 0h0167: wait 128
   5134                     317 trackDef1Test:
   5134 7A                  318  .db 0h7A ; 0h0168: normal track data,  note: E2
   5135 FF                  319  .db 0hFF ; 0h0169: vol = 0h0 (inverted), no pitch, no note, no instrument
   5136 00 00               320  .dw 0h0000 ; 0h016A: pitch
   5138 01                  321  .db 0h01 ; 0h016C: instrument
   5139 00                  322  .db 0h00 ; 0h016D: track end signature found
   513A                     323 trackDef0Test:
   513A 92                  324  .db 0h92 ; 0h016E: normal track data
   513B E1                  325  .db 0hE1 ; 0h016F: vol = 0hF (inverted), no pitch, no note, no instrument
   513C 00 00               326  .dw 0h0000 ; 0h0170: pitch
   513E 02                  327  .db 0h02 ; 0h0172: instrument
   513F 02                  328  .db 0h02 ; 0h0173: normal track data,  wait 0
   5140 92                  329  .db 0h92 ; 0h0174: normal track data
   5141 40                  330  .db 0h40 ; 0h0175: vol off, no pitch, note, no instrument
   5142 02                  331  .db 0h02 ; 0h0176: normal track data,  wait 0
   5143 AA                  332  .db 0hAA ; 0h0177: normal track data
   5144 40                  333  .db 0h40 ; 0h0178: vol off, no pitch, note, no instrument
   5145 AC                  334  .db 0hAC ; 0h0179: normal track data
   5146 40                  335  .db 0h40 ; 0h017A: vol off, no pitch, note, no instrument
   5147 B0                  336  .db 0hB0 ; 0h017B: normal track data
   5148 40                  337  .db 0h40 ; 0h017C: vol off, no pitch, note, no instrument
   5149 B4                  338  .db 0hB4 ; 0h017D: normal track data
   514A 40                  339  .db 0h40 ; 0h017E: vol off, no pitch, note, no instrument
   514B 92                  340  .db 0h92 ; 0h017F: normal track data
   514C 40                  341  .db 0h40 ; 0h0180: vol off, no pitch, note, no instrument
   514D 02                  342  .db 0h02 ; 0h0181: normal track data,  wait 0
   514E 92                  343  .db 0h92 ; 0h0182: normal track data
   514F 40                  344  .db 0h40 ; 0h0183: vol off, no pitch, note, no instrument
   5150 0A                  345  .db 0h0A ; 0h0184: normal track data,  wait 4
   5151 92                  346  .db 0h92 ; 0h0185: normal track data
   5152 40                  347  .db 0h40 ; 0h0186: vol off, no pitch, note, no instrument
   5153 02                  348  .db 0h02 ; 0h0187: normal track data,  wait 0
   5154 92                  349  .db 0h92 ; 0h0188: normal track data
   5155 40                  350  .db 0h40 ; 0h0189: vol off, no pitch, note, no instrument
   5156 02                  351  .db 0h02 ; 0h018A: normal track data,  wait 0
   5157 94                  352  .db 0h94 ; 0h018B: normal track data
   5158 40                  353  .db 0h40 ; 0h018C: vol off, no pitch, note, no instrument
   5159 02                  354  .db 0h02 ; 0h018D: normal track data,  wait 0
   515A 94                  355  .db 0h94 ; 0h018E: normal track data
   515B 40                  356  .db 0h40 ; 0h018F: vol off, no pitch, note, no instrument
   515C 02                  357  .db 0h02 ; 0h0190: normal track data,  wait 0
   515D 92                  358  .db 0h92 ; 0h0191: normal track data
   515E 40                  359  .db 0h40 ; 0h0192: vol off, no pitch, note, no instrument
   515F 02                  360  .db 0h02 ; 0h0193: normal track data,  wait 0
   5160 92                  361  .db 0h92 ; 0h0194: normal track data
   5161 40                  362  .db 0h40 ; 0h0195: vol off, no pitch, note, no instrument
   5162 0A                  363  .db 0h0A ; 0h0196: normal track data,  wait 4
   5163 92                  364  .db 0h92 ; 0h0197: normal track data
   5164 40                  365  .db 0h40 ; 0h0198: vol off, no pitch, note, no instrument
   5165 02                  366  .db 0h02 ; 0h0199: normal track data,  wait 0
   5166 92                  367  .db 0h92 ; 0h019A: normal track data
   5167 40                  368  .db 0h40 ; 0h019B: vol off, no pitch, note, no instrument
   5168 02                  369  .db 0h02 ; 0h019C: normal track data,  wait 0
   5169 AA                  370  .db 0hAA ; 0h019D: normal track data
   516A 40                  371  .db 0h40 ; 0h019E: vol off, no pitch, note, no instrument
   516B AC                  372  .db 0hAC ; 0h019F: normal track data
   516C 40                  373  .db 0h40 ; 0h01A0: vol off, no pitch, note, no instrument
   516D B0                  374  .db 0hB0 ; 0h01A1: normal track data
   516E 40                  375  .db 0h40 ; 0h01A2: vol off, no pitch, note, no instrument
   516F B4                  376  .db 0hB4 ; 0h01A3: normal track data
   5170 40                  377  .db 0h40 ; 0h01A4: vol off, no pitch, note, no instrument
   5171 92                  378  .db 0h92 ; 0h01A5: normal track data
   5172 40                  379  .db 0h40 ; 0h01A6: vol off, no pitch, note, no instrument
   5173 02                  380  .db 0h02 ; 0h01A7: normal track data,  wait 0
   5174 92                  381  .db 0h92 ; 0h01A8: normal track data
   5175 40                  382  .db 0h40 ; 0h01A9: vol off, no pitch, note, no instrument
   5176 0A                  383  .db 0h0A ; 0h01AA: normal track data,  wait 4
   5177 92                  384  .db 0h92 ; 0h01AB: normal track data
   5178 40                  385  .db 0h40 ; 0h01AC: vol off, no pitch, note, no instrument
   5179 02                  386  .db 0h02 ; 0h01AD: normal track data,  wait 0
   517A 92                  387  .db 0h92 ; 0h01AE: normal track data
   517B 40                  388  .db 0h40 ; 0h01AF: vol off, no pitch, note, no instrument
   517C 02                  389  .db 0h02 ; 0h01B0: normal track data,  wait 0
   517D 94                  390  .db 0h94 ; 0h01B1: normal track data
   517E 40                  391  .db 0h40 ; 0h01B2: vol off, no pitch, note, no instrument
   517F 02                  392  .db 0h02 ; 0h01B3: normal track data,  wait 0
   5180 94                  393  .db 0h94 ; 0h01B4: normal track data
   5181 40                  394  .db 0h40 ; 0h01B5: vol off, no pitch, note, no instrument
   5182 02                  395  .db 0h02 ; 0h01B6: normal track data,  wait 0
   5183 92                  396  .db 0h92 ; 0h01B7: normal track data
   5184 40                  397  .db 0h40 ; 0h01B8: vol off, no pitch, note, no instrument
   5185 02                  398  .db 0h02 ; 0h01B9: normal track data,  wait 0
   5186 92                  399  .db 0h92 ; 0h01BA: normal track data
   5187 40                  400  .db 0h40 ; 0h01BB: vol off, no pitch, note, no instrument
   5188 00                  401  .db 0h00 ; 0h01BC: track end signature found
   5189                     402 trackDef3Test:
   5189 42                  403  .db 0h42 ; 0h01BD: normal track data
   518A 80                  404  .db 0h80 ; 0h01BE: vol off, pitch, no note, no instrument
   518B 00 00               405  .dw 0h0000 ; 0h01BF: pitch
   518D 3E                  406  .db 0h3E ; 0h01C1: normal track data,  wait 30
   518E 30                  407  .db 0h30 ; 0h01C2: normal track data,  wait 23
   518F 92                  408  .db 0h92 ; 0h01C3: normal track data
   5190 61                  409  .db 0h61 ; 0h01C4: vol = 0hF (inverted), no pitch, no note, no instrument
   5191 03                  410  .db 0h03 ; 0h01C5: instrument
   5192 02                  411  .db 0h02 ; 0h01C6: normal track data,  wait 0
   5193 92                  412  .db 0h92 ; 0h01C7: normal track data
   5194 60                  413  .db 0h60 ; 0h01C8: vol off, no pitch, note, instrument
   5195 04                  414  .db 0h04 ; 0h01C9: instrument
   5196 02                  415  .db 0h02 ; 0h01CA: normal track data,  wait 0
   5197 92                  416  .db 0h92 ; 0h01CB: normal track data
   5198 60                  417  .db 0h60 ; 0h01CC: vol off, no pitch, note, instrument
   5199 03                  418  .db 0h03 ; 0h01CD: instrument
   519A 00                  419  .db 0h00 ; 0h01CE: track end signature found
   519B                     420 trackDef5Test:
   519B 92                  421  .db 0h92 ; 0h01CF: normal track data
   519C E1                  422  .db 0hE1 ; 0h01D0: vol = 0hF (inverted), no pitch, no note, no instrument
   519D 00 00               423  .dw 0h0000 ; 0h01D1: pitch
   519F 03                  424  .db 0h03 ; 0h01D3: instrument
   51A0 02                  425  .db 0h02 ; 0h01D4: normal track data,  wait 0
   51A1 92                  426  .db 0h92 ; 0h01D5: normal track data
   51A2 40                  427  .db 0h40 ; 0h01D6: vol off, no pitch, note, no instrument
   51A3 02                  428  .db 0h02 ; 0h01D7: normal track data,  wait 0
   51A4 AA                  429  .db 0hAA ; 0h01D8: normal track data
   51A5 40                  430  .db 0h40 ; 0h01D9: vol off, no pitch, note, no instrument
   51A6 AA                  431  .db 0hAA ; 0h01DA: normal track data
   51A7 40                  432  .db 0h40 ; 0h01DB: vol off, no pitch, note, no instrument
   51A8 BA                  433  .db 0hBA ; 0h01DC: normal track data
   51A9 40                  434  .db 0h40 ; 0h01DD: vol off, no pitch, note, no instrument
   51AA BA                  435  .db 0hBA ; 0h01DE: normal track data
   51AB 40                  436  .db 0h40 ; 0h01DF: vol off, no pitch, note, no instrument
   51AC 92                  437  .db 0h92 ; 0h01E0: normal track data
   51AD 40                  438  .db 0h40 ; 0h01E1: vol off, no pitch, note, no instrument
   51AE 02                  439  .db 0h02 ; 0h01E2: normal track data,  wait 0
   51AF 92                  440  .db 0h92 ; 0h01E3: normal track data
   51B0 40                  441  .db 0h40 ; 0h01E4: vol off, no pitch, note, no instrument
   51B1 0A                  442  .db 0h0A ; 0h01E5: normal track data,  wait 4
   51B2 92                  443  .db 0h92 ; 0h01E6: normal track data
   51B3 40                  444  .db 0h40 ; 0h01E7: vol off, no pitch, note, no instrument
   51B4 02                  445  .db 0h02 ; 0h01E8: normal track data,  wait 0
   51B5 92                  446  .db 0h92 ; 0h01E9: normal track data
   51B6 40                  447  .db 0h40 ; 0h01EA: vol off, no pitch, note, no instrument
   51B7 02                  448  .db 0h02 ; 0h01EB: normal track data,  wait 0
   51B8 92                  449  .db 0h92 ; 0h01EC: normal track data
   51B9 60                  450  .db 0h60 ; 0h01ED: vol off, no pitch, note, instrument
   51BA 04                  451  .db 0h04 ; 0h01EE: instrument
   51BB 02                  452  .db 0h02 ; 0h01EF: normal track data,  wait 0
   51BC 92                  453  .db 0h92 ; 0h01F0: normal track data
   51BD 40                  454  .db 0h40 ; 0h01F1: vol off, no pitch, note, no instrument
   51BE 02                  455  .db 0h02 ; 0h01F2: normal track data,  wait 0
   51BF 92                  456  .db 0h92 ; 0h01F3: normal track data
   51C0 60                  457  .db 0h60 ; 0h01F4: vol off, no pitch, note, instrument
   51C1 03                  458  .db 0h03 ; 0h01F5: instrument
   51C2 02                  459  .db 0h02 ; 0h01F6: normal track data,  wait 0
   51C3 92                  460  .db 0h92 ; 0h01F7: normal track data
   51C4 40                  461  .db 0h40 ; 0h01F8: vol off, no pitch, note, no instrument
   51C5 0A                  462  .db 0h0A ; 0h01F9: normal track data,  wait 4
   51C6 92                  463  .db 0h92 ; 0h01FA: normal track data
   51C7 40                  464  .db 0h40 ; 0h01FB: vol off, no pitch, note, no instrument
   51C8 02                  465  .db 0h02 ; 0h01FC: normal track data,  wait 0
   51C9 92                  466  .db 0h92 ; 0h01FD: normal track data
   51CA 40                  467  .db 0h40 ; 0h01FE: vol off, no pitch, note, no instrument
   51CB 02                  468  .db 0h02 ; 0h01FF: normal track data,  wait 0
   51CC AA                  469  .db 0hAA ; 0h0200: normal track data
   51CD 40                  470  .db 0h40 ; 0h0201: vol off, no pitch, note, no instrument
   51CE AA                  471  .db 0hAA ; 0h0202: normal track data
   51CF 40                  472  .db 0h40 ; 0h0203: vol off, no pitch, note, no instrument
   51D0 BA                  473  .db 0hBA ; 0h0204: normal track data
   51D1 40                  474  .db 0h40 ; 0h0205: vol off, no pitch, note, no instrument
   51D2 BA                  475  .db 0hBA ; 0h0206: normal track data
   51D3 40                  476  .db 0h40 ; 0h0207: vol off, no pitch, note, no instrument
   51D4 92                  477  .db 0h92 ; 0h0208: normal track data
   51D5 40                  478  .db 0h40 ; 0h0209: vol off, no pitch, note, no instrument
   51D6 02                  479  .db 0h02 ; 0h020A: normal track data,  wait 0
   51D7 92                  480  .db 0h92 ; 0h020B: normal track data
   51D8 40                  481  .db 0h40 ; 0h020C: vol off, no pitch, note, no instrument
   51D9 0A                  482  .db 0h0A ; 0h020D: normal track data,  wait 4
   51DA 92                  483  .db 0h92 ; 0h020E: normal track data
   51DB 40                  484  .db 0h40 ; 0h020F: vol off, no pitch, note, no instrument
   51DC 02                  485  .db 0h02 ; 0h0210: normal track data,  wait 0
   51DD 92                  486  .db 0h92 ; 0h0211: normal track data
   51DE 40                  487  .db 0h40 ; 0h0212: vol off, no pitch, note, no instrument
   51DF 02                  488  .db 0h02 ; 0h0213: normal track data,  wait 0
   51E0 92                  489  .db 0h92 ; 0h0214: normal track data
   51E1 60                  490  .db 0h60 ; 0h0215: vol off, no pitch, note, instrument
   51E2 04                  491  .db 0h04 ; 0h0216: instrument
   51E3 02                  492  .db 0h02 ; 0h0217: normal track data,  wait 0
   51E4 92                  493  .db 0h92 ; 0h0218: normal track data
   51E5 40                  494  .db 0h40 ; 0h0219: vol off, no pitch, note, no instrument
   51E6 02                  495  .db 0h02 ; 0h021A: normal track data,  wait 0
   51E7 92                  496  .db 0h92 ; 0h021B: normal track data
   51E8 60                  497  .db 0h60 ; 0h021C: vol off, no pitch, note, instrument
   51E9 03                  498  .db 0h03 ; 0h021D: instrument
   51EA 02                  499  .db 0h02 ; 0h021E: normal track data,  wait 0
   51EB 92                  500  .db 0h92 ; 0h021F: normal track data
   51EC 40                  501  .db 0h40 ; 0h0220: vol off, no pitch, note, no instrument
   51ED 00                  502  .db 0h00 ; 0h0221: track end signature found
   51EE                     503 trackDef4Test:
   51EE 42                  504  .db 0h42 ; 0h0222: normal track data
   51EF 80                  505  .db 0h80 ; 0h0223: vol off, pitch, no note, no instrument
   51F0 00 00               506  .dw 0h0000 ; 0h0224: pitch
   51F2 3E                  507  .db 0h3E ; 0h0226: normal track data,  wait 30
   51F3 30                  508  .db 0h30 ; 0h0227: normal track data,  wait 23
   51F4 92                  509  .db 0h92 ; 0h0228: normal track data
   51F5 73                  510  .db 0h73 ; 0h0229: vol = 0h6 (inverted), no pitch, no note, no instrument
   51F6 05                  511  .db 0h05 ; 0h022A: instrument
   51F7 AA                  512  .db 0hAA ; 0h022B: normal track data
   51F8 40                  513  .db 0h40 ; 0h022C: vol off, no pitch, note, no instrument
   51F9 08                  514  .db 0h08 ; 0h022D: normal track data,  wait 3
   51FA AA                  515  .db 0hAA ; 0h022E: normal track data
   51FB 40                  516  .db 0h40 ; 0h022F: vol off, no pitch, note, no instrument
   51FC 92                  517  .db 0h92 ; 0h0230: normal track data
   51FD 40                  518  .db 0h40 ; 0h0231: vol off, no pitch, note, no instrument
   51FE                     519 trackDef16Test:
   51FE 92                  520  .db 0h92 ; 0h0232: normal track data
   51FF F3                  521  .db 0hF3 ; 0h0233: vol = 0h6 (inverted), no pitch, no note, no instrument
   5200 00 00               522  .dw 0h0000 ; 0h0234: pitch
   5202 05                  523  .db 0h05 ; 0h0236: instrument
   5203 AA                  524  .db 0hAA ; 0h0237: normal track data
   5204 40                  525  .db 0h40 ; 0h0238: vol off, no pitch, note, no instrument
   5205 AA                  526  .db 0hAA ; 0h0239: normal track data
   5206 40                  527  .db 0h40 ; 0h023A: vol off, no pitch, note, no instrument
   5207 92                  528  .db 0h92 ; 0h023B: normal track data
   5208 40                  529  .db 0h40 ; 0h023C: vol off, no pitch, note, no instrument
   5209 92                  530  .db 0h92 ; 0h023D: normal track data
   520A 40                  531  .db 0h40 ; 0h023E: vol off, no pitch, note, no instrument
   520B 94                  532  .db 0h94 ; 0h023F: normal track data
   520C 40                  533  .db 0h40 ; 0h0240: vol off, no pitch, note, no instrument
   520D 98                  534  .db 0h98 ; 0h0241: normal track data
   520E 40                  535  .db 0h40 ; 0h0242: vol off, no pitch, note, no instrument
   520F 9C                  536  .db 0h9C ; 0h0243: normal track data
   5210 40                  537  .db 0h40 ; 0h0244: vol off, no pitch, note, no instrument
   5211 92                  538  .db 0h92 ; 0h0245: normal track data
   5212 40                  539  .db 0h40 ; 0h0246: vol off, no pitch, note, no instrument
   5213 AA                  540  .db 0hAA ; 0h0247: normal track data
   5214 40                  541  .db 0h40 ; 0h0248: vol off, no pitch, note, no instrument
   5215 08                  542  .db 0h08 ; 0h0249: normal track data,  wait 3
   5216 AA                  543  .db 0hAA ; 0h024A: normal track data
   5217 40                  544  .db 0h40 ; 0h024B: vol off, no pitch, note, no instrument
   5218 92                  545  .db 0h92 ; 0h024C: normal track data
   5219 40                  546  .db 0h40 ; 0h024D: vol off, no pitch, note, no instrument
   521A 92                  547  .db 0h92 ; 0h024E: normal track data
   521B 40                  548  .db 0h40 ; 0h024F: vol off, no pitch, note, no instrument
   521C AA                  549  .db 0hAA ; 0h0250: normal track data
   521D 40                  550  .db 0h40 ; 0h0251: vol off, no pitch, note, no instrument
   521E AA                  551  .db 0hAA ; 0h0252: normal track data
   521F 40                  552  .db 0h40 ; 0h0253: vol off, no pitch, note, no instrument
   5220 92                  553  .db 0h92 ; 0h0254: normal track data
   5221 40                  554  .db 0h40 ; 0h0255: vol off, no pitch, note, no instrument
   5222 94                  555  .db 0h94 ; 0h0256: normal track data
   5223 40                  556  .db 0h40 ; 0h0257: vol off, no pitch, note, no instrument
   5224 AC                  557  .db 0hAC ; 0h0258: normal track data
   5225 40                  558  .db 0h40 ; 0h0259: vol off, no pitch, note, no instrument
   5226 AC                  559  .db 0hAC ; 0h025A: normal track data
   5227 40                  560  .db 0h40 ; 0h025B: vol off, no pitch, note, no instrument
   5228 94                  561  .db 0h94 ; 0h025C: normal track data
   5229 40                  562  .db 0h40 ; 0h025D: vol off, no pitch, note, no instrument
   522A 92                  563  .db 0h92 ; 0h025E: normal track data
   522B 40                  564  .db 0h40 ; 0h025F: vol off, no pitch, note, no instrument
   522C AA                  565  .db 0hAA ; 0h0260: normal track data
   522D 40                  566  .db 0h40 ; 0h0261: vol off, no pitch, note, no instrument
   522E 08                  567  .db 0h08 ; 0h0262: normal track data,  wait 3
   522F AA                  568  .db 0hAA ; 0h0263: normal track data
   5230 40                  569  .db 0h40 ; 0h0264: vol off, no pitch, note, no instrument
   5231 92                  570  .db 0h92 ; 0h0265: normal track data
   5232 40                  571  .db 0h40 ; 0h0266: vol off, no pitch, note, no instrument
   5233 92                  572  .db 0h92 ; 0h0267: normal track data
   5234 40                  573  .db 0h40 ; 0h0268: vol off, no pitch, note, no instrument
   5235 AA                  574  .db 0hAA ; 0h0269: normal track data
   5236 40                  575  .db 0h40 ; 0h026A: vol off, no pitch, note, no instrument
   5237 AA                  576  .db 0hAA ; 0h026B: normal track data
   5238 40                  577  .db 0h40 ; 0h026C: vol off, no pitch, note, no instrument
   5239 92                  578  .db 0h92 ; 0h026D: normal track data
   523A 40                  579  .db 0h40 ; 0h026E: vol off, no pitch, note, no instrument
   523B 92                  580  .db 0h92 ; 0h026F: normal track data
   523C 40                  581  .db 0h40 ; 0h0270: vol off, no pitch, note, no instrument
   523D 94                  582  .db 0h94 ; 0h0271: normal track data
   523E 40                  583  .db 0h40 ; 0h0272: vol off, no pitch, note, no instrument
   523F 98                  584  .db 0h98 ; 0h0273: normal track data
   5240 40                  585  .db 0h40 ; 0h0274: vol off, no pitch, note, no instrument
   5241 9C                  586  .db 0h9C ; 0h0275: normal track data
   5242 40                  587  .db 0h40 ; 0h0276: vol off, no pitch, note, no instrument
   5243 92                  588  .db 0h92 ; 0h0277: normal track data
   5244 40                  589  .db 0h40 ; 0h0278: vol off, no pitch, note, no instrument
   5245 AA                  590  .db 0hAA ; 0h0279: normal track data
   5246 40                  591  .db 0h40 ; 0h027A: vol off, no pitch, note, no instrument
   5247 08                  592  .db 0h08 ; 0h027B: normal track data,  wait 3
   5248 AA                  593  .db 0hAA ; 0h027C: normal track data
   5249 40                  594  .db 0h40 ; 0h027D: vol off, no pitch, note, no instrument
   524A 92                  595  .db 0h92 ; 0h027E: normal track data
   524B 40                  596  .db 0h40 ; 0h027F: vol off, no pitch, note, no instrument
   524C 92                  597  .db 0h92 ; 0h0280: normal track data
   524D 40                  598  .db 0h40 ; 0h0281: vol off, no pitch, note, no instrument
   524E AA                  599  .db 0hAA ; 0h0282: normal track data
   524F 40                  600  .db 0h40 ; 0h0283: vol off, no pitch, note, no instrument
   5250 AA                  601  .db 0hAA ; 0h0284: normal track data
   5251 40                  602  .db 0h40 ; 0h0285: vol off, no pitch, note, no instrument
   5252 92                  603  .db 0h92 ; 0h0286: normal track data
   5253 40                  604  .db 0h40 ; 0h0287: vol off, no pitch, note, no instrument
   5254 92                  605  .db 0h92 ; 0h0288: normal track data
   5255 40                  606  .db 0h40 ; 0h0289: vol off, no pitch, note, no instrument
   5256 94                  607  .db 0h94 ; 0h028A: normal track data
   5257 40                  608  .db 0h40 ; 0h028B: vol off, no pitch, note, no instrument
   5258 98                  609  .db 0h98 ; 0h028C: normal track data
   5259 40                  610  .db 0h40 ; 0h028D: vol off, no pitch, note, no instrument
   525A 9C                  611  .db 0h9C ; 0h028E: normal track data
   525B 40                  612  .db 0h40 ; 0h028F: vol off, no pitch, note, no instrument
   525C 92                  613  .db 0h92 ; 0h0290: normal track data
   525D 40                  614  .db 0h40 ; 0h0291: vol off, no pitch, note, no instrument
   525E AA                  615  .db 0hAA ; 0h0292: normal track data
   525F 40                  616  .db 0h40 ; 0h0293: vol off, no pitch, note, no instrument
   5260 08                  617  .db 0h08 ; 0h0294: normal track data,  wait 3
   5261 AA                  618  .db 0hAA ; 0h0295: normal track data
   5262 40                  619  .db 0h40 ; 0h0296: vol off, no pitch, note, no instrument
   5263 92                  620  .db 0h92 ; 0h0297: normal track data
   5264 40                  621  .db 0h40 ; 0h0298: vol off, no pitch, note, no instrument
   5265                     622 trackDef6Test:
   5265 92                  623  .db 0h92 ; 0h0299: normal track data
   5266 F3                  624  .db 0hF3 ; 0h029A: vol = 0h6 (inverted), no pitch, no note, no instrument
   5267 00 00               625  .dw 0h0000 ; 0h029B: pitch
   5269 05                  626  .db 0h05 ; 0h029D: instrument
   526A 0E                  627  .db 0h0E ; 0h029E: normal track data,  wait 6
   526B 92                  628  .db 0h92 ; 0h029F: normal track data
   526C 40                  629  .db 0h40 ; 0h02A0: vol off, no pitch, note, no instrument
   526D 0E                  630  .db 0h0E ; 0h02A1: normal track data,  wait 6
   526E 92                  631  .db 0h92 ; 0h02A2: normal track data
   526F 40                  632  .db 0h40 ; 0h02A3: vol off, no pitch, note, no instrument
   5270 0E                  633  .db 0h0E ; 0h02A4: normal track data,  wait 6
   5271 92                  634  .db 0h92 ; 0h02A5: normal track data
   5272 40                  635  .db 0h40 ; 0h02A6: vol off, no pitch, note, no instrument
   5273 0E                  636  .db 0h0E ; 0h02A7: normal track data,  wait 6
   5274 92                  637  .db 0h92 ; 0h02A8: normal track data
   5275 40                  638  .db 0h40 ; 0h02A9: vol off, no pitch, note, no instrument
   5276 0E                  639  .db 0h0E ; 0h02AA: normal track data,  wait 6
   5277 92                  640  .db 0h92 ; 0h02AB: normal track data
   5278 40                  641  .db 0h40 ; 0h02AC: vol off, no pitch, note, no instrument
   5279 0E                  642  .db 0h0E ; 0h02AD: normal track data,  wait 6
   527A 92                  643  .db 0h92 ; 0h02AE: normal track data
   527B 40                  644  .db 0h40 ; 0h02AF: vol off, no pitch, note, no instrument
   527C 0E                  645  .db 0h0E ; 0h02B0: normal track data,  wait 6
   527D 92                  646  .db 0h92 ; 0h02B1: normal track data
   527E 40                  647  .db 0h40 ; 0h02B2: vol off, no pitch, note, no instrument
   527F 00                  648  .db 0h00 ; 0h02B3: track end signature found
   5280                     649 trackDef7Test:
   5280 92                  650  .db 0h92 ; 0h02B4: normal track data
   5281 E1                  651  .db 0hE1 ; 0h02B5: vol = 0hF (inverted), no pitch, no note, no instrument
   5282 00 00               652  .dw 0h0000 ; 0h02B6: pitch
   5284 02                  653  .db 0h02 ; 0h02B8: instrument
   5285 02                  654  .db 0h02 ; 0h02B9: normal track data,  wait 0
   5286 92                  655  .db 0h92 ; 0h02BA: normal track data
   5287 40                  656  .db 0h40 ; 0h02BB: vol off, no pitch, note, no instrument
   5288 02                  657  .db 0h02 ; 0h02BC: normal track data,  wait 0
   5289 AA                  658  .db 0hAA ; 0h02BD: normal track data
   528A 40                  659  .db 0h40 ; 0h02BE: vol off, no pitch, note, no instrument
   528B AC                  660  .db 0hAC ; 0h02BF: normal track data
   528C 40                  661  .db 0h40 ; 0h02C0: vol off, no pitch, note, no instrument
   528D B0                  662  .db 0hB0 ; 0h02C1: normal track data
   528E 40                  663  .db 0h40 ; 0h02C2: vol off, no pitch, note, no instrument
   528F B4                  664  .db 0hB4 ; 0h02C3: normal track data
   5290 40                  665  .db 0h40 ; 0h02C4: vol off, no pitch, note, no instrument
   5291 92                  666  .db 0h92 ; 0h02C5: normal track data
   5292 40                  667  .db 0h40 ; 0h02C6: vol off, no pitch, note, no instrument
   5293 02                  668  .db 0h02 ; 0h02C7: normal track data,  wait 0
   5294 92                  669  .db 0h92 ; 0h02C8: normal track data
   5295 40                  670  .db 0h40 ; 0h02C9: vol off, no pitch, note, no instrument
   5296 0A                  671  .db 0h0A ; 0h02CA: normal track data,  wait 4
   5297 92                  672  .db 0h92 ; 0h02CB: normal track data
   5298 40                  673  .db 0h40 ; 0h02CC: vol off, no pitch, note, no instrument
   5299 02                  674  .db 0h02 ; 0h02CD: normal track data,  wait 0
   529A 92                  675  .db 0h92 ; 0h02CE: normal track data
   529B 40                  676  .db 0h40 ; 0h02CF: vol off, no pitch, note, no instrument
   529C 02                  677  .db 0h02 ; 0h02D0: normal track data,  wait 0
   529D 94                  678  .db 0h94 ; 0h02D1: normal track data
   529E 40                  679  .db 0h40 ; 0h02D2: vol off, no pitch, note, no instrument
   529F 02                  680  .db 0h02 ; 0h02D3: normal track data,  wait 0
   52A0 94                  681  .db 0h94 ; 0h02D4: normal track data
   52A1 40                  682  .db 0h40 ; 0h02D5: vol off, no pitch, note, no instrument
   52A2 02                  683  .db 0h02 ; 0h02D6: normal track data,  wait 0
   52A3 92                  684  .db 0h92 ; 0h02D7: normal track data
   52A4 40                  685  .db 0h40 ; 0h02D8: vol off, no pitch, note, no instrument
   52A5 02                  686  .db 0h02 ; 0h02D9: normal track data,  wait 0
   52A6 92                  687  .db 0h92 ; 0h02DA: normal track data
   52A7 40                  688  .db 0h40 ; 0h02DB: vol off, no pitch, note, no instrument
   52A8 0A                  689  .db 0h0A ; 0h02DC: normal track data,  wait 4
   52A9 92                  690  .db 0h92 ; 0h02DD: normal track data
   52AA 40                  691  .db 0h40 ; 0h02DE: vol off, no pitch, note, no instrument
   52AB 02                  692  .db 0h02 ; 0h02DF: normal track data,  wait 0
   52AC 92                  693  .db 0h92 ; 0h02E0: normal track data
   52AD 40                  694  .db 0h40 ; 0h02E1: vol off, no pitch, note, no instrument
   52AE 02                  695  .db 0h02 ; 0h02E2: normal track data,  wait 0
   52AF AA                  696  .db 0hAA ; 0h02E3: normal track data
   52B0 40                  697  .db 0h40 ; 0h02E4: vol off, no pitch, note, no instrument
   52B1 AC                  698  .db 0hAC ; 0h02E5: normal track data
   52B2 40                  699  .db 0h40 ; 0h02E6: vol off, no pitch, note, no instrument
   52B3 B0                  700  .db 0hB0 ; 0h02E7: normal track data
   52B4 40                  701  .db 0h40 ; 0h02E8: vol off, no pitch, note, no instrument
   52B5 B4                  702  .db 0hB4 ; 0h02E9: normal track data
   52B6 40                  703  .db 0h40 ; 0h02EA: vol off, no pitch, note, no instrument
   52B7 92                  704  .db 0h92 ; 0h02EB: normal track data
   52B8 40                  705  .db 0h40 ; 0h02EC: vol off, no pitch, note, no instrument
   52B9 02                  706  .db 0h02 ; 0h02ED: normal track data,  wait 0
   52BA 92                  707  .db 0h92 ; 0h02EE: normal track data
   52BB 40                  708  .db 0h40 ; 0h02EF: vol off, no pitch, note, no instrument
   52BC 0A                  709  .db 0h0A ; 0h02F0: normal track data,  wait 4
   52BD 92                  710  .db 0h92 ; 0h02F1: normal track data
   52BE 40                  711  .db 0h40 ; 0h02F2: vol off, no pitch, note, no instrument
   52BF 02                  712  .db 0h02 ; 0h02F3: normal track data,  wait 0
   52C0 92                  713  .db 0h92 ; 0h02F4: normal track data
   52C1 40                  714  .db 0h40 ; 0h02F5: vol off, no pitch, note, no instrument
   52C2 02                  715  .db 0h02 ; 0h02F6: normal track data,  wait 0
   52C3 94                  716  .db 0h94 ; 0h02F7: normal track data
   52C4 40                  717  .db 0h40 ; 0h02F8: vol off, no pitch, note, no instrument
   52C5 02                  718  .db 0h02 ; 0h02F9: normal track data,  wait 0
   52C6 94                  719  .db 0h94 ; 0h02FA: normal track data
   52C7 40                  720  .db 0h40 ; 0h02FB: vol off, no pitch, note, no instrument
   52C8 02                  721  .db 0h02 ; 0h02FC: normal track data,  wait 0
   52C9 92                  722  .db 0h92 ; 0h02FD: normal track data
   52CA 40                  723  .db 0h40 ; 0h02FE: vol off, no pitch, note, no instrument
   52CB 02                  724  .db 0h02 ; 0h02FF: normal track data,  wait 0
   52CC 92                  725  .db 0h92 ; 0h0300: normal track data
   52CD 40                  726  .db 0h40 ; 0h0301: vol off, no pitch, note, no instrument
   52CE B4                  727  .db 0hB4 ; 0h0302: normal track data
   52CF 40                  728  .db 0h40 ; 0h0303: vol off, no pitch, note, no instrument
   52D0 A0                  729  .db 0hA0 ; 0h0304: normal track data
   52D1 40                  730  .db 0h40 ; 0h0305: vol off, no pitch, note, no instrument
   52D2 9C                  731  .db 0h9C ; 0h0306: normal track data
   52D3 40                  732  .db 0h40 ; 0h0307: vol off, no pitch, note, no instrument
   52D4 98                  733  .db 0h98 ; 0h0308: normal track data
   52D5 40                  734  .db 0h40 ; 0h0309: vol off, no pitch, note, no instrument
   52D6 94                  735  .db 0h94 ; 0h030A: normal track data
   52D7 40                  736  .db 0h40 ; 0h030B: vol off, no pitch, note, no instrument
   52D8                     737 trackDef8Test:
   52D8 92                  738  .db 0h92 ; 0h030C: normal track data
   52D9 E1                  739  .db 0hE1 ; 0h030D: vol = 0hF (inverted), no pitch, no note, no instrument
   52DA 00 00               740  .dw 0h0000 ; 0h030E: pitch
   52DC 03                  741  .db 0h03 ; 0h0310: instrument
   52DD 02                  742  .db 0h02 ; 0h0311: normal track data,  wait 0
   52DE 92                  743  .db 0h92 ; 0h0312: normal track data
   52DF 40                  744  .db 0h40 ; 0h0313: vol off, no pitch, note, no instrument
   52E0 02                  745  .db 0h02 ; 0h0314: normal track data,  wait 0
   52E1 AA                  746  .db 0hAA ; 0h0315: normal track data
   52E2 40                  747  .db 0h40 ; 0h0316: vol off, no pitch, note, no instrument
   52E3 AA                  748  .db 0hAA ; 0h0317: normal track data
   52E4 40                  749  .db 0h40 ; 0h0318: vol off, no pitch, note, no instrument
   52E5 BA                  750  .db 0hBA ; 0h0319: normal track data
   52E6 40                  751  .db 0h40 ; 0h031A: vol off, no pitch, note, no instrument
   52E7 BA                  752  .db 0hBA ; 0h031B: normal track data
   52E8 40                  753  .db 0h40 ; 0h031C: vol off, no pitch, note, no instrument
   52E9 92                  754  .db 0h92 ; 0h031D: normal track data
   52EA 40                  755  .db 0h40 ; 0h031E: vol off, no pitch, note, no instrument
   52EB 02                  756  .db 0h02 ; 0h031F: normal track data,  wait 0
   52EC 92                  757  .db 0h92 ; 0h0320: normal track data
   52ED 40                  758  .db 0h40 ; 0h0321: vol off, no pitch, note, no instrument
   52EE 0A                  759  .db 0h0A ; 0h0322: normal track data,  wait 4
   52EF 92                  760  .db 0h92 ; 0h0323: normal track data
   52F0 40                  761  .db 0h40 ; 0h0324: vol off, no pitch, note, no instrument
   52F1 02                  762  .db 0h02 ; 0h0325: normal track data,  wait 0
   52F2 92                  763  .db 0h92 ; 0h0326: normal track data
   52F3 40                  764  .db 0h40 ; 0h0327: vol off, no pitch, note, no instrument
   52F4 02                  765  .db 0h02 ; 0h0328: normal track data,  wait 0
   52F5 92                  766  .db 0h92 ; 0h0329: normal track data
   52F6 60                  767  .db 0h60 ; 0h032A: vol off, no pitch, note, instrument
   52F7 04                  768  .db 0h04 ; 0h032B: instrument
   52F8 02                  769  .db 0h02 ; 0h032C: normal track data,  wait 0
   52F9 92                  770  .db 0h92 ; 0h032D: normal track data
   52FA 40                  771  .db 0h40 ; 0h032E: vol off, no pitch, note, no instrument
   52FB 02                  772  .db 0h02 ; 0h032F: normal track data,  wait 0
   52FC 92                  773  .db 0h92 ; 0h0330: normal track data
   52FD 60                  774  .db 0h60 ; 0h0331: vol off, no pitch, note, instrument
   52FE 03                  775  .db 0h03 ; 0h0332: instrument
   52FF 02                  776  .db 0h02 ; 0h0333: normal track data,  wait 0
   5300 92                  777  .db 0h92 ; 0h0334: normal track data
   5301 40                  778  .db 0h40 ; 0h0335: vol off, no pitch, note, no instrument
   5302 0A                  779  .db 0h0A ; 0h0336: normal track data,  wait 4
   5303 92                  780  .db 0h92 ; 0h0337: normal track data
   5304 40                  781  .db 0h40 ; 0h0338: vol off, no pitch, note, no instrument
   5305 02                  782  .db 0h02 ; 0h0339: normal track data,  wait 0
   5306 92                  783  .db 0h92 ; 0h033A: normal track data
   5307 40                  784  .db 0h40 ; 0h033B: vol off, no pitch, note, no instrument
   5308 02                  785  .db 0h02 ; 0h033C: normal track data,  wait 0
   5309 AA                  786  .db 0hAA ; 0h033D: normal track data
   530A 40                  787  .db 0h40 ; 0h033E: vol off, no pitch, note, no instrument
   530B AA                  788  .db 0hAA ; 0h033F: normal track data
   530C 40                  789  .db 0h40 ; 0h0340: vol off, no pitch, note, no instrument
   530D BA                  790  .db 0hBA ; 0h0341: normal track data
   530E 40                  791  .db 0h40 ; 0h0342: vol off, no pitch, note, no instrument
   530F BA                  792  .db 0hBA ; 0h0343: normal track data
   5310 40                  793  .db 0h40 ; 0h0344: vol off, no pitch, note, no instrument
   5311 92                  794  .db 0h92 ; 0h0345: normal track data
   5312 40                  795  .db 0h40 ; 0h0346: vol off, no pitch, note, no instrument
   5313 02                  796  .db 0h02 ; 0h0347: normal track data,  wait 0
   5314 92                  797  .db 0h92 ; 0h0348: normal track data
   5315 40                  798  .db 0h40 ; 0h0349: vol off, no pitch, note, no instrument
   5316 0A                  799  .db 0h0A ; 0h034A: normal track data,  wait 4
   5317 92                  800  .db 0h92 ; 0h034B: normal track data
   5318 40                  801  .db 0h40 ; 0h034C: vol off, no pitch, note, no instrument
   5319 02                  802  .db 0h02 ; 0h034D: normal track data,  wait 0
   531A 92                  803  .db 0h92 ; 0h034E: normal track data
   531B 40                  804  .db 0h40 ; 0h034F: vol off, no pitch, note, no instrument
   531C 02                  805  .db 0h02 ; 0h0350: normal track data,  wait 0
   531D 92                  806  .db 0h92 ; 0h0351: normal track data
   531E 60                  807  .db 0h60 ; 0h0352: vol off, no pitch, note, instrument
   531F 04                  808  .db 0h04 ; 0h0353: instrument
   5320 02                  809  .db 0h02 ; 0h0354: normal track data,  wait 0
   5321 92                  810  .db 0h92 ; 0h0355: normal track data
   5322 40                  811  .db 0h40 ; 0h0356: vol off, no pitch, note, no instrument
   5323 02                  812  .db 0h02 ; 0h0357: normal track data,  wait 0
   5324 92                  813  .db 0h92 ; 0h0358: normal track data
   5325 60                  814  .db 0h60 ; 0h0359: vol off, no pitch, note, instrument
   5326 03                  815  .db 0h03 ; 0h035A: instrument
   5327 02                  816  .db 0h02 ; 0h035B: normal track data,  wait 0
   5328 92                  817  .db 0h92 ; 0h035C: normal track data
   5329 40                  818  .db 0h40 ; 0h035D: vol off, no pitch, note, no instrument
   532A 92                  819  .db 0h92 ; 0h035E: normal track data
   532B 40                  820  .db 0h40 ; 0h035F: vol off, no pitch, note, no instrument
   532C 92                  821  .db 0h92 ; 0h0360: normal track data
   532D 40                  822  .db 0h40 ; 0h0361: vol off, no pitch, note, no instrument
   532E AA                  823  .db 0hAA ; 0h0362: normal track data
   532F 60                  824  .db 0h60 ; 0h0363: vol off, no pitch, note, instrument
   5330 04                  825  .db 0h04 ; 0h0364: instrument
   5331 AA                  826  .db 0hAA ; 0h0365: normal track data
   5332 40                  827  .db 0h40 ; 0h0366: vol off, no pitch, note, no instrument
   5333 92                  828  .db 0h92 ; 0h0367: normal track data
   5334 60                  829  .db 0h60 ; 0h0368: vol off, no pitch, note, instrument
   5335 03                  830  .db 0h03 ; 0h0369: instrument
   5336                     831 trackDef9Test:
   5336 92                  832  .db 0h92 ; 0h036A: normal track data
   5337 F3                  833  .db 0hF3 ; 0h036B: vol = 0h6 (inverted), no pitch, no note, no instrument
   5338 00 00               834  .dw 0h0000 ; 0h036C: pitch
   533A 05                  835  .db 0h05 ; 0h036E: instrument
   533B 0E                  836  .db 0h0E ; 0h036F: normal track data,  wait 6
   533C 92                  837  .db 0h92 ; 0h0370: normal track data
   533D 40                  838  .db 0h40 ; 0h0371: vol off, no pitch, note, no instrument
   533E 0E                  839  .db 0h0E ; 0h0372: normal track data,  wait 6
   533F 92                  840  .db 0h92 ; 0h0373: normal track data
   5340 40                  841  .db 0h40 ; 0h0374: vol off, no pitch, note, no instrument
   5341 0E                  842  .db 0h0E ; 0h0375: normal track data,  wait 6
   5342 92                  843  .db 0h92 ; 0h0376: normal track data
   5343 40                  844  .db 0h40 ; 0h0377: vol off, no pitch, note, no instrument
   5344 0E                  845  .db 0h0E ; 0h0378: normal track data,  wait 6
   5345 92                  846  .db 0h92 ; 0h0379: normal track data
   5346 40                  847  .db 0h40 ; 0h037A: vol off, no pitch, note, no instrument
   5347 0E                  848  .db 0h0E ; 0h037B: normal track data,  wait 6
   5348 92                  849  .db 0h92 ; 0h037C: normal track data
   5349 40                  850  .db 0h40 ; 0h037D: vol off, no pitch, note, no instrument
   534A 0E                  851  .db 0h0E ; 0h037E: normal track data,  wait 6
   534B 92                  852  .db 0h92 ; 0h037F: normal track data
   534C 40                  853  .db 0h40 ; 0h0380: vol off, no pitch, note, no instrument
   534D 0E                  854  .db 0h0E ; 0h0381: normal track data,  wait 6
   534E 92                  855  .db 0h92 ; 0h0382: normal track data
   534F 40                  856  .db 0h40 ; 0h0383: vol off, no pitch, note, no instrument
   5350 04                  857  .db 0h04 ; 0h0384: normal track data,  wait 1
   5351 B4                  858  .db 0hB4 ; 0h0385: normal track data
   5352 40                  859  .db 0h40 ; 0h0386: vol off, no pitch, note, no instrument
   5353 A0                  860  .db 0hA0 ; 0h0387: normal track data
   5354 40                  861  .db 0h40 ; 0h0388: vol off, no pitch, note, no instrument
   5355 9C                  862  .db 0h9C ; 0h0389: normal track data
   5356 40                  863  .db 0h40 ; 0h038A: vol off, no pitch, note, no instrument
   5357 98                  864  .db 0h98 ; 0h038B: normal track data
   5358 40                  865  .db 0h40 ; 0h038C: vol off, no pitch, note, no instrument
   5359 94                  866  .db 0h94 ; 0h038D: normal track data
   535A 40                  867  .db 0h40 ; 0h038E: vol off, no pitch, note, no instrument
   535B                     868 trackDef14Test:
   535B 92                  869  .db 0h92 ; 0h038F: normal track data
   535C E1                  870  .db 0hE1 ; 0h0390: vol = 0hF (inverted), no pitch, no note, no instrument
   535D 00 00               871  .dw 0h0000 ; 0h0391: pitch
   535F 02                  872  .db 0h02 ; 0h0393: instrument
   5360 C2                  873  .db 0hC2 ; 0h0394: normal track data
   5361 49                  874  .db 0h49 ; 0h0395: vol = 0hB (inverted), no pitch, no note, no instrument
   5362 92                  875  .db 0h92 ; 0h0396: normal track data
   5363 41                  876  .db 0h41 ; 0h0397: vol = 0hF (inverted), no pitch, no note, no instrument
   5364 C2                  877  .db 0hC2 ; 0h0398: normal track data
   5365 49                  878  .db 0h49 ; 0h0399: vol = 0hB (inverted), no pitch, no note, no instrument
   5366 AA                  879  .db 0hAA ; 0h039A: normal track data
   5367 41                  880  .db 0h41 ; 0h039B: vol = 0hF (inverted), no pitch, no note, no instrument
   5368 AC                  881  .db 0hAC ; 0h039C: normal track data
   5369 40                  882  .db 0h40 ; 0h039D: vol off, no pitch, note, no instrument
   536A B0                  883  .db 0hB0 ; 0h039E: normal track data
   536B 40                  884  .db 0h40 ; 0h039F: vol off, no pitch, note, no instrument
   536C B4                  885  .db 0hB4 ; 0h03A0: normal track data
   536D 40                  886  .db 0h40 ; 0h03A1: vol off, no pitch, note, no instrument
   536E 92                  887  .db 0h92 ; 0h03A2: normal track data
   536F 40                  888  .db 0h40 ; 0h03A3: vol off, no pitch, note, no instrument
   5370 C2                  889  .db 0hC2 ; 0h03A4: normal track data
   5371 49                  890  .db 0h49 ; 0h03A5: vol = 0hB (inverted), no pitch, no note, no instrument
   5372 92                  891  .db 0h92 ; 0h03A6: normal track data
   5373 41                  892  .db 0h41 ; 0h03A7: vol = 0hF (inverted), no pitch, no note, no instrument
   5374 C2                  893  .db 0hC2 ; 0h03A8: normal track data
   5375 49                  894  .db 0h49 ; 0h03A9: vol = 0hB (inverted), no pitch, no note, no instrument
   5376 AA                  895  .db 0hAA ; 0h03AA: normal track data
   5377 41                  896  .db 0h41 ; 0h03AB: vol = 0hF (inverted), no pitch, no note, no instrument
   5378 C2                  897  .db 0hC2 ; 0h03AC: normal track data
   5379 49                  898  .db 0h49 ; 0h03AD: vol = 0hB (inverted), no pitch, no note, no instrument
   537A AA                  899  .db 0hAA ; 0h03AE: normal track data
   537B 41                  900  .db 0h41 ; 0h03AF: vol = 0hF (inverted), no pitch, no note, no instrument
   537C C2                  901  .db 0hC2 ; 0h03B0: normal track data
   537D 49                  902  .db 0h49 ; 0h03B1: vol = 0hB (inverted), no pitch, no note, no instrument
   537E 92                  903  .db 0h92 ; 0h03B2: normal track data
   537F 41                  904  .db 0h41 ; 0h03B3: vol = 0hF (inverted), no pitch, no note, no instrument
   5380 C2                  905  .db 0hC2 ; 0h03B4: normal track data
   5381 49                  906  .db 0h49 ; 0h03B5: vol = 0hB (inverted), no pitch, no note, no instrument
   5382 92                  907  .db 0h92 ; 0h03B6: normal track data
   5383 41                  908  .db 0h41 ; 0h03B7: vol = 0hF (inverted), no pitch, no note, no instrument
   5384 C2                  909  .db 0hC2 ; 0h03B8: normal track data
   5385 49                  910  .db 0h49 ; 0h03B9: vol = 0hB (inverted), no pitch, no note, no instrument
   5386 94                  911  .db 0h94 ; 0h03BA: normal track data
   5387 41                  912  .db 0h41 ; 0h03BB: vol = 0hF (inverted), no pitch, no note, no instrument
   5388 C4                  913  .db 0hC4 ; 0h03BC: normal track data
   5389 49                  914  .db 0h49 ; 0h03BD: vol = 0hB (inverted), no pitch, no note, no instrument
   538A 94                  915  .db 0h94 ; 0h03BE: normal track data
   538B 41                  916  .db 0h41 ; 0h03BF: vol = 0hF (inverted), no pitch, no note, no instrument
   538C C4                  917  .db 0hC4 ; 0h03C0: normal track data
   538D 49                  918  .db 0h49 ; 0h03C1: vol = 0hB (inverted), no pitch, no note, no instrument
   538E 92                  919  .db 0h92 ; 0h03C2: normal track data
   538F 41                  920  .db 0h41 ; 0h03C3: vol = 0hF (inverted), no pitch, no note, no instrument
   5390 C2                  921  .db 0hC2 ; 0h03C4: normal track data
   5391 49                  922  .db 0h49 ; 0h03C5: vol = 0hB (inverted), no pitch, no note, no instrument
   5392 92                  923  .db 0h92 ; 0h03C6: normal track data
   5393 41                  924  .db 0h41 ; 0h03C7: vol = 0hF (inverted), no pitch, no note, no instrument
   5394 C2                  925  .db 0hC2 ; 0h03C8: normal track data
   5395 49                  926  .db 0h49 ; 0h03C9: vol = 0hB (inverted), no pitch, no note, no instrument
   5396 AA                  927  .db 0hAA ; 0h03CA: normal track data
   5397 41                  928  .db 0h41 ; 0h03CB: vol = 0hF (inverted), no pitch, no note, no instrument
   5398 C2                  929  .db 0hC2 ; 0h03CC: normal track data
   5399 49                  930  .db 0h49 ; 0h03CD: vol = 0hB (inverted), no pitch, no note, no instrument
   539A AA                  931  .db 0hAA ; 0h03CE: normal track data
   539B 41                  932  .db 0h41 ; 0h03CF: vol = 0hF (inverted), no pitch, no note, no instrument
   539C C2                  933  .db 0hC2 ; 0h03D0: normal track data
   539D 49                  934  .db 0h49 ; 0h03D1: vol = 0hB (inverted), no pitch, no note, no instrument
   539E 92                  935  .db 0h92 ; 0h03D2: normal track data
   539F 41                  936  .db 0h41 ; 0h03D3: vol = 0hF (inverted), no pitch, no note, no instrument
   53A0 C2                  937  .db 0hC2 ; 0h03D4: normal track data
   53A1 49                  938  .db 0h49 ; 0h03D5: vol = 0hB (inverted), no pitch, no note, no instrument
   53A2 92                  939  .db 0h92 ; 0h03D6: normal track data
   53A3 41                  940  .db 0h41 ; 0h03D7: vol = 0hF (inverted), no pitch, no note, no instrument
   53A4 C2                  941  .db 0hC2 ; 0h03D8: normal track data
   53A5 49                  942  .db 0h49 ; 0h03D9: vol = 0hB (inverted), no pitch, no note, no instrument
   53A6 AA                  943  .db 0hAA ; 0h03DA: normal track data
   53A7 41                  944  .db 0h41 ; 0h03DB: vol = 0hF (inverted), no pitch, no note, no instrument
   53A8 AC                  945  .db 0hAC ; 0h03DC: normal track data
   53A9 40                  946  .db 0h40 ; 0h03DD: vol off, no pitch, note, no instrument
   53AA B0                  947  .db 0hB0 ; 0h03DE: normal track data
   53AB 40                  948  .db 0h40 ; 0h03DF: vol off, no pitch, note, no instrument
   53AC B4                  949  .db 0hB4 ; 0h03E0: normal track data
   53AD 40                  950  .db 0h40 ; 0h03E1: vol off, no pitch, note, no instrument
   53AE 92                  951  .db 0h92 ; 0h03E2: normal track data
   53AF 40                  952  .db 0h40 ; 0h03E3: vol off, no pitch, note, no instrument
   53B0 C2                  953  .db 0hC2 ; 0h03E4: normal track data
   53B1 49                  954  .db 0h49 ; 0h03E5: vol = 0hB (inverted), no pitch, no note, no instrument
   53B2 92                  955  .db 0h92 ; 0h03E6: normal track data
   53B3 41                  956  .db 0h41 ; 0h03E7: vol = 0hF (inverted), no pitch, no note, no instrument
   53B4 C2                  957  .db 0hC2 ; 0h03E8: normal track data
   53B5 49                  958  .db 0h49 ; 0h03E9: vol = 0hB (inverted), no pitch, no note, no instrument
   53B6 AA                  959  .db 0hAA ; 0h03EA: normal track data
   53B7 41                  960  .db 0h41 ; 0h03EB: vol = 0hF (inverted), no pitch, no note, no instrument
   53B8 C2                  961  .db 0hC2 ; 0h03EC: normal track data
   53B9 49                  962  .db 0h49 ; 0h03ED: vol = 0hB (inverted), no pitch, no note, no instrument
   53BA AA                  963  .db 0hAA ; 0h03EE: normal track data
   53BB 41                  964  .db 0h41 ; 0h03EF: vol = 0hF (inverted), no pitch, no note, no instrument
   53BC C2                  965  .db 0hC2 ; 0h03F0: normal track data
   53BD 49                  966  .db 0h49 ; 0h03F1: vol = 0hB (inverted), no pitch, no note, no instrument
   53BE 92                  967  .db 0h92 ; 0h03F2: normal track data
   53BF 41                  968  .db 0h41 ; 0h03F3: vol = 0hF (inverted), no pitch, no note, no instrument
   53C0 C2                  969  .db 0hC2 ; 0h03F4: normal track data
   53C1 49                  970  .db 0h49 ; 0h03F5: vol = 0hB (inverted), no pitch, no note, no instrument
   53C2 92                  971  .db 0h92 ; 0h03F6: normal track data
   53C3 41                  972  .db 0h41 ; 0h03F7: vol = 0hF (inverted), no pitch, no note, no instrument
   53C4 C2                  973  .db 0hC2 ; 0h03F8: normal track data
   53C5 49                  974  .db 0h49 ; 0h03F9: vol = 0hB (inverted), no pitch, no note, no instrument
   53C6 94                  975  .db 0h94 ; 0h03FA: normal track data
   53C7 41                  976  .db 0h41 ; 0h03FB: vol = 0hF (inverted), no pitch, no note, no instrument
   53C8 C4                  977  .db 0hC4 ; 0h03FC: normal track data
   53C9 49                  978  .db 0h49 ; 0h03FD: vol = 0hB (inverted), no pitch, no note, no instrument
   53CA 94                  979  .db 0h94 ; 0h03FE: normal track data
   53CB 41                  980  .db 0h41 ; 0h03FF: vol = 0hF (inverted), no pitch, no note, no instrument
   53CC C4                  981  .db 0hC4 ; 0h0400: normal track data
   53CD 49                  982  .db 0h49 ; 0h0401: vol = 0hB (inverted), no pitch, no note, no instrument
   53CE 92                  983  .db 0h92 ; 0h0402: normal track data
   53CF 41                  984  .db 0h41 ; 0h0403: vol = 0hF (inverted), no pitch, no note, no instrument
   53D0 C2                  985  .db 0hC2 ; 0h0404: normal track data
   53D1 49                  986  .db 0h49 ; 0h0405: vol = 0hB (inverted), no pitch, no note, no instrument
   53D2 92                  987  .db 0h92 ; 0h0406: normal track data
   53D3 41                  988  .db 0h41 ; 0h0407: vol = 0hF (inverted), no pitch, no note, no instrument
   53D4 C2                  989  .db 0hC2 ; 0h0408: normal track data
   53D5 40                  990  .db 0h40 ; 0h0409: vol off, no pitch, note, no instrument
   53D6 AA                  991  .db 0hAA ; 0h040A: normal track data
   53D7 49                  992  .db 0h49 ; 0h040B: vol = 0hB (inverted), no pitch, no note, no instrument
   53D8 C2                  993  .db 0hC2 ; 0h040C: normal track data
   53D9 41                  994  .db 0h41 ; 0h040D: vol = 0hF (inverted), no pitch, no note, no instrument
   53DA AA                  995  .db 0hAA ; 0h040E: normal track data
   53DB 49                  996  .db 0h49 ; 0h040F: vol = 0hB (inverted), no pitch, no note, no instrument
   53DC C2                  997  .db 0hC2 ; 0h0410: normal track data
   53DD 41                  998  .db 0h41 ; 0h0411: vol = 0hF (inverted), no pitch, no note, no instrument
   53DE                     999 trackDef10Test:
   53DE 92                 1000  .db 0h92 ; 0h0412: normal track data
   53DF E1                 1001  .db 0hE1 ; 0h0413: vol = 0hF (inverted), no pitch, no note, no instrument
   53E0 00 00              1002  .dw 0h0000 ; 0h0414: pitch
   53E2 03                 1003  .db 0h03 ; 0h0416: instrument
   53E3 42                 1004  .db 0h42 ; 0h0417: normal track data
   53E4 00                 1005  .db 0h00 ; 0h0418: vol off, no pitch, no note, no instrument
   53E5 92                 1006  .db 0h92 ; 0h0419: normal track data
   53E6 40                 1007  .db 0h40 ; 0h041A: vol off, no pitch, note, no instrument
   53E7 42                 1008  .db 0h42 ; 0h041B: normal track data
   53E8 00                 1009  .db 0h00 ; 0h041C: vol off, no pitch, no note, no instrument
   53E9 92                 1010  .db 0h92 ; 0h041D: normal track data
   53EA 6B                 1011  .db 0h6B ; 0h041E: vol = 0hA (inverted), no pitch, no note, no instrument
   53EB 01                 1012  .db 0h01 ; 0h041F: instrument
   53EC AA                 1013  .db 0hAA ; 0h0420: normal track data
   53ED 49                 1014  .db 0h49 ; 0h0421: vol = 0hB (inverted), no pitch, no note, no instrument
   53EE C2                 1015  .db 0hC2 ; 0h0422: normal track data,  note: E5
   53EF 47                 1016  .db 0h47 ; 0h0423: vol = 0hC (inverted), no pitch, no note, no instrument
   53F0 AA                 1017  .db 0hAA ; 0h0424: normal track data
   53F1 49                 1018  .db 0h49 ; 0h0425: vol = 0hB (inverted), no pitch, no note, no instrument
   53F2 92                 1019  .db 0h92 ; 0h0426: normal track data
   53F3 61                 1020  .db 0h61 ; 0h0427: vol = 0hF (inverted), no pitch, no note, no instrument
   53F4 04                 1021  .db 0h04 ; 0h0428: instrument
   53F5 42                 1022  .db 0h42 ; 0h0429: normal track data
   53F6 00                 1023  .db 0h00 ; 0h042A: vol off, no pitch, no note, no instrument
   53F7 92                 1024  .db 0h92 ; 0h042B: normal track data
   53F8 60                 1025  .db 0h60 ; 0h042C: vol off, no pitch, note, instrument
   53F9 03                 1026  .db 0h03 ; 0h042D: instrument
   53FA 42                 1027  .db 0h42 ; 0h042E: normal track data
   53FB 00                 1028  .db 0h00 ; 0h042F: vol off, no pitch, no note, no instrument
   53FC 92                 1029  .db 0h92 ; 0h0430: normal track data
   53FD 6B                 1030  .db 0h6B ; 0h0431: vol = 0hA (inverted), no pitch, no note, no instrument
   53FE 01                 1031  .db 0h01 ; 0h0432: instrument
   53FF AA                 1032  .db 0hAA ; 0h0433: normal track data
   5400 49                 1033  .db 0h49 ; 0h0434: vol = 0hB (inverted), no pitch, no note, no instrument
   5401 C2                 1034  .db 0hC2 ; 0h0435: normal track data,  note: E5
   5402 47                 1035  .db 0h47 ; 0h0436: vol = 0hC (inverted), no pitch, no note, no instrument
   5403 AA                 1036  .db 0hAA ; 0h0437: normal track data
   5404 49                 1037  .db 0h49 ; 0h0438: vol = 0hB (inverted), no pitch, no note, no instrument
   5405 92                 1038  .db 0h92 ; 0h0439: normal track data
   5406 61                 1039  .db 0h61 ; 0h043A: vol = 0hF (inverted), no pitch, no note, no instrument
   5407 03                 1040  .db 0h03 ; 0h043B: instrument
   5408 42                 1041  .db 0h42 ; 0h043C: normal track data
   5409 00                 1042  .db 0h00 ; 0h043D: vol off, no pitch, no note, no instrument
   540A 92                 1043  .db 0h92 ; 0h043E: normal track data
   540B 40                 1044  .db 0h40 ; 0h043F: vol off, no pitch, note, no instrument
   540C 42                 1045  .db 0h42 ; 0h0440: normal track data
   540D 00                 1046  .db 0h00 ; 0h0441: vol off, no pitch, no note, no instrument
   540E 92                 1047  .db 0h92 ; 0h0442: normal track data
   540F 6B                 1048  .db 0h6B ; 0h0443: vol = 0hA (inverted), no pitch, no note, no instrument
   5410 01                 1049  .db 0h01 ; 0h0444: instrument
   5411 AA                 1050  .db 0hAA ; 0h0445: normal track data
   5412 49                 1051  .db 0h49 ; 0h0446: vol = 0hB (inverted), no pitch, no note, no instrument
   5413 C2                 1052  .db 0hC2 ; 0h0447: normal track data,  note: E5
   5414 47                 1053  .db 0h47 ; 0h0448: vol = 0hC (inverted), no pitch, no note, no instrument
   5415 AA                 1054  .db 0hAA ; 0h0449: normal track data
   5416 49                 1055  .db 0h49 ; 0h044A: vol = 0hB (inverted), no pitch, no note, no instrument
   5417 92                 1056  .db 0h92 ; 0h044B: normal track data
   5418 61                 1057  .db 0h61 ; 0h044C: vol = 0hF (inverted), no pitch, no note, no instrument
   5419 04                 1058  .db 0h04 ; 0h044D: instrument
   541A 42                 1059  .db 0h42 ; 0h044E: normal track data
   541B 00                 1060  .db 0h00 ; 0h044F: vol off, no pitch, no note, no instrument
   541C 92                 1061  .db 0h92 ; 0h0450: normal track data
   541D 60                 1062  .db 0h60 ; 0h0451: vol off, no pitch, note, instrument
   541E 03                 1063  .db 0h03 ; 0h0452: instrument
   541F 42                 1064  .db 0h42 ; 0h0453: normal track data
   5420 00                 1065  .db 0h00 ; 0h0454: vol off, no pitch, no note, no instrument
   5421 92                 1066  .db 0h92 ; 0h0455: normal track data
   5422 6B                 1067  .db 0h6B ; 0h0456: vol = 0hA (inverted), no pitch, no note, no instrument
   5423 01                 1068  .db 0h01 ; 0h0457: instrument
   5424 AA                 1069  .db 0hAA ; 0h0458: normal track data
   5425 49                 1070  .db 0h49 ; 0h0459: vol = 0hB (inverted), no pitch, no note, no instrument
   5426 C2                 1071  .db 0hC2 ; 0h045A: normal track data,  note: E5
   5427 47                 1072  .db 0h47 ; 0h045B: vol = 0hC (inverted), no pitch, no note, no instrument
   5428 AA                 1073  .db 0hAA ; 0h045C: normal track data
   5429 49                 1074  .db 0h49 ; 0h045D: vol = 0hB (inverted), no pitch, no note, no instrument
   542A 92                 1075  .db 0h92 ; 0h045E: normal track data
   542B 61                 1076  .db 0h61 ; 0h045F: vol = 0hF (inverted), no pitch, no note, no instrument
   542C 03                 1077  .db 0h03 ; 0h0460: instrument
   542D 42                 1078  .db 0h42 ; 0h0461: normal track data
   542E 00                 1079  .db 0h00 ; 0h0462: vol off, no pitch, no note, no instrument
   542F 92                 1080  .db 0h92 ; 0h0463: normal track data
   5430 40                 1081  .db 0h40 ; 0h0464: vol off, no pitch, note, no instrument
   5431 42                 1082  .db 0h42 ; 0h0465: normal track data
   5432 00                 1083  .db 0h00 ; 0h0466: vol off, no pitch, no note, no instrument
   5433 92                 1084  .db 0h92 ; 0h0467: normal track data
   5434 6B                 1085  .db 0h6B ; 0h0468: vol = 0hA (inverted), no pitch, no note, no instrument
   5435 01                 1086  .db 0h01 ; 0h0469: instrument
   5436 AA                 1087  .db 0hAA ; 0h046A: normal track data
   5437 49                 1088  .db 0h49 ; 0h046B: vol = 0hB (inverted), no pitch, no note, no instrument
   5438 C2                 1089  .db 0hC2 ; 0h046C: normal track data,  note: E5
   5439 47                 1090  .db 0h47 ; 0h046D: vol = 0hC (inverted), no pitch, no note, no instrument
   543A AA                 1091  .db 0hAA ; 0h046E: normal track data
   543B 49                 1092  .db 0h49 ; 0h046F: vol = 0hB (inverted), no pitch, no note, no instrument
   543C 92                 1093  .db 0h92 ; 0h0470: normal track data
   543D 61                 1094  .db 0h61 ; 0h0471: vol = 0hF (inverted), no pitch, no note, no instrument
   543E 04                 1095  .db 0h04 ; 0h0472: instrument
   543F 42                 1096  .db 0h42 ; 0h0473: normal track data
   5440 00                 1097  .db 0h00 ; 0h0474: vol off, no pitch, no note, no instrument
   5441 92                 1098  .db 0h92 ; 0h0475: normal track data
   5442 60                 1099  .db 0h60 ; 0h0476: vol off, no pitch, note, instrument
   5443 03                 1100  .db 0h03 ; 0h0477: instrument
   5444 42                 1101  .db 0h42 ; 0h0478: normal track data
   5445 00                 1102  .db 0h00 ; 0h0479: vol off, no pitch, no note, no instrument
   5446 92                 1103  .db 0h92 ; 0h047A: normal track data
   5447 6B                 1104  .db 0h6B ; 0h047B: vol = 0hA (inverted), no pitch, no note, no instrument
   5448 01                 1105  .db 0h01 ; 0h047C: instrument
   5449 AA                 1106  .db 0hAA ; 0h047D: normal track data
   544A 49                 1107  .db 0h49 ; 0h047E: vol = 0hB (inverted), no pitch, no note, no instrument
   544B C2                 1108  .db 0hC2 ; 0h047F: normal track data,  note: E5
   544C 47                 1109  .db 0h47 ; 0h0480: vol = 0hC (inverted), no pitch, no note, no instrument
   544D AA                 1110  .db 0hAA ; 0h0481: normal track data
   544E 49                 1111  .db 0h49 ; 0h0482: vol = 0hB (inverted), no pitch, no note, no instrument
   544F 92                 1112  .db 0h92 ; 0h0483: normal track data
   5450 61                 1113  .db 0h61 ; 0h0484: vol = 0hF (inverted), no pitch, no note, no instrument
   5451 03                 1114  .db 0h03 ; 0h0485: instrument
   5452 42                 1115  .db 0h42 ; 0h0486: normal track data
   5453 00                 1116  .db 0h00 ; 0h0487: vol off, no pitch, no note, no instrument
   5454 92                 1117  .db 0h92 ; 0h0488: normal track data
   5455 40                 1118  .db 0h40 ; 0h0489: vol off, no pitch, note, no instrument
   5456 42                 1119  .db 0h42 ; 0h048A: normal track data
   5457 00                 1120  .db 0h00 ; 0h048B: vol off, no pitch, no note, no instrument
   5458 92                 1121  .db 0h92 ; 0h048C: normal track data
   5459 6B                 1122  .db 0h6B ; 0h048D: vol = 0hA (inverted), no pitch, no note, no instrument
   545A 01                 1123  .db 0h01 ; 0h048E: instrument
   545B AA                 1124  .db 0hAA ; 0h048F: normal track data
   545C 49                 1125  .db 0h49 ; 0h0490: vol = 0hB (inverted), no pitch, no note, no instrument
   545D C2                 1126  .db 0hC2 ; 0h0491: normal track data,  note: E5
   545E 47                 1127  .db 0h47 ; 0h0492: vol = 0hC (inverted), no pitch, no note, no instrument
   545F AA                 1128  .db 0hAA ; 0h0493: normal track data
   5460 49                 1129  .db 0h49 ; 0h0494: vol = 0hB (inverted), no pitch, no note, no instrument
   5461 92                 1130  .db 0h92 ; 0h0495: normal track data
   5462 61                 1131  .db 0h61 ; 0h0496: vol = 0hF (inverted), no pitch, no note, no instrument
   5463 04                 1132  .db 0h04 ; 0h0497: instrument
   5464 42                 1133  .db 0h42 ; 0h0498: normal track data
   5465 00                 1134  .db 0h00 ; 0h0499: vol off, no pitch, no note, no instrument
   5466 92                 1135  .db 0h92 ; 0h049A: normal track data
   5467 60                 1136  .db 0h60 ; 0h049B: vol off, no pitch, note, instrument
   5468 03                 1137  .db 0h03 ; 0h049C: instrument
   5469 42                 1138  .db 0h42 ; 0h049D: normal track data
   546A 00                 1139  .db 0h00 ; 0h049E: vol off, no pitch, no note, no instrument
   546B 92                 1140  .db 0h92 ; 0h049F: normal track data
   546C 6B                 1141  .db 0h6B ; 0h04A0: vol = 0hA (inverted), no pitch, no note, no instrument
   546D 01                 1142  .db 0h01 ; 0h04A1: instrument
   546E AA                 1143  .db 0hAA ; 0h04A2: normal track data
   546F 49                 1144  .db 0h49 ; 0h04A3: vol = 0hB (inverted), no pitch, no note, no instrument
   5470 C2                 1145  .db 0hC2 ; 0h04A4: normal track data,  note: E5
   5471 47                 1146  .db 0h47 ; 0h04A5: vol = 0hC (inverted), no pitch, no note, no instrument
   5472 AA                 1147  .db 0hAA ; 0h04A6: normal track data
   5473 49                 1148  .db 0h49 ; 0h04A7: vol = 0hB (inverted), no pitch, no note, no instrument
   5474                    1149 trackDef12Test:
   5474 92                 1150  .db 0h92 ; 0h04A8: normal track data
   5475 E1                 1151  .db 0hE1 ; 0h04A9: vol = 0hF (inverted), no pitch, no note, no instrument
   5476 00 00              1152  .dw 0h0000 ; 0h04AA: pitch
   5478 03                 1153  .db 0h03 ; 0h04AC: instrument
   5479 42                 1154  .db 0h42 ; 0h04AD: normal track data
   547A 00                 1155  .db 0h00 ; 0h04AE: vol off, no pitch, no note, no instrument
   547B 92                 1156  .db 0h92 ; 0h04AF: normal track data
   547C 40                 1157  .db 0h40 ; 0h04B0: vol off, no pitch, note, no instrument
   547D 42                 1158  .db 0h42 ; 0h04B1: normal track data
   547E 00                 1159  .db 0h00 ; 0h04B2: vol off, no pitch, no note, no instrument
   547F 92                 1160  .db 0h92 ; 0h04B3: normal track data
   5480 6B                 1161  .db 0h6B ; 0h04B4: vol = 0hA (inverted), no pitch, no note, no instrument
   5481 01                 1162  .db 0h01 ; 0h04B5: instrument
   5482 AA                 1163  .db 0hAA ; 0h04B6: normal track data
   5483 49                 1164  .db 0h49 ; 0h04B7: vol = 0hB (inverted), no pitch, no note, no instrument
   5484 C2                 1165  .db 0hC2 ; 0h04B8: normal track data,  note: E5
   5485 47                 1166  .db 0h47 ; 0h04B9: vol = 0hC (inverted), no pitch, no note, no instrument
   5486 AA                 1167  .db 0hAA ; 0h04BA: normal track data
   5487 49                 1168  .db 0h49 ; 0h04BB: vol = 0hB (inverted), no pitch, no note, no instrument
   5488 92                 1169  .db 0h92 ; 0h04BC: normal track data
   5489 61                 1170  .db 0h61 ; 0h04BD: vol = 0hF (inverted), no pitch, no note, no instrument
   548A 04                 1171  .db 0h04 ; 0h04BE: instrument
   548B 42                 1172  .db 0h42 ; 0h04BF: normal track data
   548C 00                 1173  .db 0h00 ; 0h04C0: vol off, no pitch, no note, no instrument
   548D 92                 1174  .db 0h92 ; 0h04C1: normal track data
   548E 60                 1175  .db 0h60 ; 0h04C2: vol off, no pitch, note, instrument
   548F 03                 1176  .db 0h03 ; 0h04C3: instrument
   5490 42                 1177  .db 0h42 ; 0h04C4: normal track data
   5491 00                 1178  .db 0h00 ; 0h04C5: vol off, no pitch, no note, no instrument
   5492 92                 1179  .db 0h92 ; 0h04C6: normal track data
   5493 6B                 1180  .db 0h6B ; 0h04C7: vol = 0hA (inverted), no pitch, no note, no instrument
   5494 01                 1181  .db 0h01 ; 0h04C8: instrument
   5495 AA                 1182  .db 0hAA ; 0h04C9: normal track data
   5496 49                 1183  .db 0h49 ; 0h04CA: vol = 0hB (inverted), no pitch, no note, no instrument
   5497 C2                 1184  .db 0hC2 ; 0h04CB: normal track data,  note: E5
   5498 47                 1185  .db 0h47 ; 0h04CC: vol = 0hC (inverted), no pitch, no note, no instrument
   5499 AA                 1186  .db 0hAA ; 0h04CD: normal track data
   549A 49                 1187  .db 0h49 ; 0h04CE: vol = 0hB (inverted), no pitch, no note, no instrument
   549B 92                 1188  .db 0h92 ; 0h04CF: normal track data
   549C 61                 1189  .db 0h61 ; 0h04D0: vol = 0hF (inverted), no pitch, no note, no instrument
   549D 03                 1190  .db 0h03 ; 0h04D1: instrument
   549E 42                 1191  .db 0h42 ; 0h04D2: normal track data
   549F 00                 1192  .db 0h00 ; 0h04D3: vol off, no pitch, no note, no instrument
   54A0 92                 1193  .db 0h92 ; 0h04D4: normal track data
   54A1 40                 1194  .db 0h40 ; 0h04D5: vol off, no pitch, note, no instrument
   54A2 42                 1195  .db 0h42 ; 0h04D6: normal track data
   54A3 00                 1196  .db 0h00 ; 0h04D7: vol off, no pitch, no note, no instrument
   54A4 92                 1197  .db 0h92 ; 0h04D8: normal track data
   54A5 6B                 1198  .db 0h6B ; 0h04D9: vol = 0hA (inverted), no pitch, no note, no instrument
   54A6 01                 1199  .db 0h01 ; 0h04DA: instrument
   54A7 AA                 1200  .db 0hAA ; 0h04DB: normal track data
   54A8 49                 1201  .db 0h49 ; 0h04DC: vol = 0hB (inverted), no pitch, no note, no instrument
   54A9 C2                 1202  .db 0hC2 ; 0h04DD: normal track data,  note: E5
   54AA 47                 1203  .db 0h47 ; 0h04DE: vol = 0hC (inverted), no pitch, no note, no instrument
   54AB AA                 1204  .db 0hAA ; 0h04DF: normal track data
   54AC 49                 1205  .db 0h49 ; 0h04E0: vol = 0hB (inverted), no pitch, no note, no instrument
   54AD 92                 1206  .db 0h92 ; 0h04E1: normal track data
   54AE 61                 1207  .db 0h61 ; 0h04E2: vol = 0hF (inverted), no pitch, no note, no instrument
   54AF 04                 1208  .db 0h04 ; 0h04E3: instrument
   54B0 42                 1209  .db 0h42 ; 0h04E4: normal track data
   54B1 00                 1210  .db 0h00 ; 0h04E5: vol off, no pitch, no note, no instrument
   54B2 92                 1211  .db 0h92 ; 0h04E6: normal track data
   54B3 60                 1212  .db 0h60 ; 0h04E7: vol off, no pitch, note, instrument
   54B4 03                 1213  .db 0h03 ; 0h04E8: instrument
   54B5 42                 1214  .db 0h42 ; 0h04E9: normal track data
   54B6 00                 1215  .db 0h00 ; 0h04EA: vol off, no pitch, no note, no instrument
   54B7 92                 1216  .db 0h92 ; 0h04EB: normal track data
   54B8 6B                 1217  .db 0h6B ; 0h04EC: vol = 0hA (inverted), no pitch, no note, no instrument
   54B9 01                 1218  .db 0h01 ; 0h04ED: instrument
   54BA AA                 1219  .db 0hAA ; 0h04EE: normal track data
   54BB 49                 1220  .db 0h49 ; 0h04EF: vol = 0hB (inverted), no pitch, no note, no instrument
   54BC C2                 1221  .db 0hC2 ; 0h04F0: normal track data,  note: E5
   54BD 47                 1222  .db 0h47 ; 0h04F1: vol = 0hC (inverted), no pitch, no note, no instrument
   54BE AA                 1223  .db 0hAA ; 0h04F2: normal track data
   54BF 49                 1224  .db 0h49 ; 0h04F3: vol = 0hB (inverted), no pitch, no note, no instrument
   54C0 92                 1225  .db 0h92 ; 0h04F4: normal track data
   54C1 61                 1226  .db 0h61 ; 0h04F5: vol = 0hF (inverted), no pitch, no note, no instrument
   54C2 03                 1227  .db 0h03 ; 0h04F6: instrument
   54C3 42                 1228  .db 0h42 ; 0h04F7: normal track data
   54C4 00                 1229  .db 0h00 ; 0h04F8: vol off, no pitch, no note, no instrument
   54C5 92                 1230  .db 0h92 ; 0h04F9: normal track data
   54C6 40                 1231  .db 0h40 ; 0h04FA: vol off, no pitch, note, no instrument
   54C7 42                 1232  .db 0h42 ; 0h04FB: normal track data
   54C8 00                 1233  .db 0h00 ; 0h04FC: vol off, no pitch, no note, no instrument
   54C9 92                 1234  .db 0h92 ; 0h04FD: normal track data
   54CA 6B                 1235  .db 0h6B ; 0h04FE: vol = 0hA (inverted), no pitch, no note, no instrument
   54CB 01                 1236  .db 0h01 ; 0h04FF: instrument
   54CC AA                 1237  .db 0hAA ; 0h0500: normal track data
   54CD 49                 1238  .db 0h49 ; 0h0501: vol = 0hB (inverted), no pitch, no note, no instrument
   54CE C2                 1239  .db 0hC2 ; 0h0502: normal track data,  note: E5
   54CF 47                 1240  .db 0h47 ; 0h0503: vol = 0hC (inverted), no pitch, no note, no instrument
   54D0 AA                 1241  .db 0hAA ; 0h0504: normal track data
   54D1 49                 1242  .db 0h49 ; 0h0505: vol = 0hB (inverted), no pitch, no note, no instrument
   54D2 92                 1243  .db 0h92 ; 0h0506: normal track data
   54D3 61                 1244  .db 0h61 ; 0h0507: vol = 0hF (inverted), no pitch, no note, no instrument
   54D4 04                 1245  .db 0h04 ; 0h0508: instrument
   54D5 42                 1246  .db 0h42 ; 0h0509: normal track data
   54D6 00                 1247  .db 0h00 ; 0h050A: vol off, no pitch, no note, no instrument
   54D7 92                 1248  .db 0h92 ; 0h050B: normal track data
   54D8 60                 1249  .db 0h60 ; 0h050C: vol off, no pitch, note, instrument
   54D9 03                 1250  .db 0h03 ; 0h050D: instrument
   54DA 42                 1251  .db 0h42 ; 0h050E: normal track data
   54DB 00                 1252  .db 0h00 ; 0h050F: vol off, no pitch, no note, no instrument
   54DC 92                 1253  .db 0h92 ; 0h0510: normal track data
   54DD 6B                 1254  .db 0h6B ; 0h0511: vol = 0hA (inverted), no pitch, no note, no instrument
   54DE 01                 1255  .db 0h01 ; 0h0512: instrument
   54DF AA                 1256  .db 0hAA ; 0h0513: normal track data
   54E0 49                 1257  .db 0h49 ; 0h0514: vol = 0hB (inverted), no pitch, no note, no instrument
   54E1 C2                 1258  .db 0hC2 ; 0h0515: normal track data,  note: E5
   54E2 47                 1259  .db 0h47 ; 0h0516: vol = 0hC (inverted), no pitch, no note, no instrument
   54E3 AA                 1260  .db 0hAA ; 0h0517: normal track data
   54E4 49                 1261  .db 0h49 ; 0h0518: vol = 0hB (inverted), no pitch, no note, no instrument
   54E5 92                 1262  .db 0h92 ; 0h0519: normal track data
   54E6 61                 1263  .db 0h61 ; 0h051A: vol = 0hF (inverted), no pitch, no note, no instrument
   54E7 03                 1264  .db 0h03 ; 0h051B: instrument
   54E8 42                 1265  .db 0h42 ; 0h051C: normal track data
   54E9 00                 1266  .db 0h00 ; 0h051D: vol off, no pitch, no note, no instrument
   54EA 92                 1267  .db 0h92 ; 0h051E: normal track data
   54EB 40                 1268  .db 0h40 ; 0h051F: vol off, no pitch, note, no instrument
   54EC 42                 1269  .db 0h42 ; 0h0520: normal track data
   54ED 00                 1270  .db 0h00 ; 0h0521: vol off, no pitch, no note, no instrument
   54EE 92                 1271  .db 0h92 ; 0h0522: normal track data
   54EF 6B                 1272  .db 0h6B ; 0h0523: vol = 0hA (inverted), no pitch, no note, no instrument
   54F0 01                 1273  .db 0h01 ; 0h0524: instrument
   54F1 AA                 1274  .db 0hAA ; 0h0525: normal track data
   54F2 49                 1275  .db 0h49 ; 0h0526: vol = 0hB (inverted), no pitch, no note, no instrument
   54F3 C2                 1276  .db 0hC2 ; 0h0527: normal track data,  note: E5
   54F4 47                 1277  .db 0h47 ; 0h0528: vol = 0hC (inverted), no pitch, no note, no instrument
   54F5 AA                 1278  .db 0hAA ; 0h0529: normal track data
   54F6 49                 1279  .db 0h49 ; 0h052A: vol = 0hB (inverted), no pitch, no note, no instrument
   54F7 92                 1280  .db 0h92 ; 0h052B: normal track data
   54F8 61                 1281  .db 0h61 ; 0h052C: vol = 0hF (inverted), no pitch, no note, no instrument
   54F9 03                 1282  .db 0h03 ; 0h052D: instrument
   54FA 53                 1283  .db 0h53 ; 0h052E: full optimization, no escape: E3
   54FB AA                 1284  .db 0hAA ; 0h052F: normal track data
   54FC 40                 1285  .db 0h40 ; 0h0530: vol off, no pitch, note, no instrument
   54FD 6B                 1286  .db 0h6B ; 0h0531: full optimization, no escape: E4
   54FE 92                 1287  .db 0h92 ; 0h0532: normal track data
   54FF 4B                 1288  .db 0h4B ; 0h0533: vol = 0hA (inverted), no pitch, no note, no instrument
   5500 92                 1289  .db 0h92 ; 0h0534: normal track data
   5501 49                 1290  .db 0h49 ; 0h0535: vol = 0hB (inverted), no pitch, no note, no instrument
   5502 92                 1291  .db 0h92 ; 0h0536: normal track data,  note: E3
   5503 67                 1292  .db 0h67 ; 0h0537: vol = 0hC (inverted), no pitch, no note, no instrument
   5504 04                 1293  .db 0h04 ; 0h0538: instrument
   5505 92                 1294  .db 0h92 ; 0h0539: normal track data
   5506 49                 1295  .db 0h49 ; 0h053A: vol = 0hB (inverted), no pitch, no note, no instrument
   5507                    1296 trackDef15Test:
   5507 72                 1297  .db 0h72 ; 0h053B: normal track data
   5508 E1                 1298  .db 0hE1 ; 0h053C: vol = 0hF (inverted), no pitch, no note, no instrument
   5509 00 00              1299  .dw 0h0000 ; 0h053D: pitch
   550B 03                 1300  .db 0h03 ; 0h053F: instrument
   550C 5A                 1301  .db 0h5A ; 0h0540: normal track data
   550D 60                 1302  .db 0h60 ; 0h0541: vol off, no pitch, note, instrument
   550E 01                 1303  .db 0h01 ; 0h0542: instrument
   550F B2                 1304  .db 0hB2 ; 0h0543: normal track data,  note: G#4
   5510 7F                 1305  .db 0h7F ; 0h0544: vol = 0h0 (inverted), no pitch, no note, no instrument
   5511 06                 1306  .db 0h06 ; 0h0545: instrument
   5512 5A                 1307  .db 0h5A ; 0h0546: normal track data
   5513 61                 1308  .db 0h61 ; 0h0547: vol = 0hF (inverted), no pitch, no note, no instrument
   5514 01                 1309  .db 0h01 ; 0h0548: instrument
   5515 72                 1310  .db 0h72 ; 0h0549: normal track data
   5516 60                 1311  .db 0h60 ; 0h054A: vol off, no pitch, note, instrument
   5517 04                 1312  .db 0h04 ; 0h054B: instrument
   5518 B2                 1313  .db 0hB2 ; 0h054C: normal track data,  note: G#4
   5519 7F                 1314  .db 0h7F ; 0h054D: vol = 0h0 (inverted), no pitch, no note, no instrument
   551A 06                 1315  .db 0h06 ; 0h054E: instrument
   551B 5A                 1316  .db 0h5A ; 0h054F: normal track data
   551C 61                 1317  .db 0h61 ; 0h0550: vol = 0hF (inverted), no pitch, no note, no instrument
   551D 01                 1318  .db 0h01 ; 0h0551: instrument
   551E 72                 1319  .db 0h72 ; 0h0552: normal track data
   551F 60                 1320  .db 0h60 ; 0h0553: vol off, no pitch, note, instrument
   5520 03                 1321  .db 0h03 ; 0h0554: instrument
   5521 B2                 1322  .db 0hB2 ; 0h0555: normal track data,  note: G#4
   5522 7F                 1323  .db 0h7F ; 0h0556: vol = 0h0 (inverted), no pitch, no note, no instrument
   5523 06                 1324  .db 0h06 ; 0h0557: instrument
   5524 5A                 1325  .db 0h5A ; 0h0558: normal track data
   5525 61                 1326  .db 0h61 ; 0h0559: vol = 0hF (inverted), no pitch, no note, no instrument
   5526 01                 1327  .db 0h01 ; 0h055A: instrument
   5527 72                 1328  .db 0h72 ; 0h055B: normal track data
   5528 60                 1329  .db 0h60 ; 0h055C: vol off, no pitch, note, instrument
   5529 03                 1330  .db 0h03 ; 0h055D: instrument
   552A AE                 1331  .db 0hAE ; 0h055E: normal track data,  note: F#4
   552B 7F                 1332  .db 0h7F ; 0h055F: vol = 0h0 (inverted), no pitch, no note, no instrument
   552C 07                 1333  .db 0h07 ; 0h0560: instrument
   552D 72                 1334  .db 0h72 ; 0h0561: normal track data
   552E 61                 1335  .db 0h61 ; 0h0562: vol = 0hF (inverted), no pitch, no note, no instrument
   552F 04                 1336  .db 0h04 ; 0h0563: instrument
   5530 5A                 1337  .db 0h5A ; 0h0564: normal track data
   5531 60                 1338  .db 0h60 ; 0h0565: vol off, no pitch, note, instrument
   5532 01                 1339  .db 0h01 ; 0h0566: instrument
   5533 AE                 1340  .db 0hAE ; 0h0567: normal track data,  note: F#4
   5534 7F                 1341  .db 0h7F ; 0h0568: vol = 0h0 (inverted), no pitch, no note, no instrument
   5535 07                 1342  .db 0h07 ; 0h0569: instrument
   5536 5A                 1343  .db 0h5A ; 0h056A: normal track data
   5537 61                 1344  .db 0h61 ; 0h056B: vol = 0hF (inverted), no pitch, no note, no instrument
   5538 01                 1345  .db 0h01 ; 0h056C: instrument
   5539 72                 1346  .db 0h72 ; 0h056D: normal track data
   553A 60                 1347  .db 0h60 ; 0h056E: vol off, no pitch, note, instrument
   553B 03                 1348  .db 0h03 ; 0h056F: instrument
   553C 5A                 1349  .db 0h5A ; 0h0570: normal track data
   553D 60                 1350  .db 0h60 ; 0h0571: vol off, no pitch, note, instrument
   553E 01                 1351  .db 0h01 ; 0h0572: instrument
   553F B2                 1352  .db 0hB2 ; 0h0573: normal track data,  note: G#4
   5540 7F                 1353  .db 0h7F ; 0h0574: vol = 0h0 (inverted), no pitch, no note, no instrument
   5541 08                 1354  .db 0h08 ; 0h0575: instrument
   5542 5A                 1355  .db 0h5A ; 0h0576: normal track data
   5543 61                 1356  .db 0h61 ; 0h0577: vol = 0hF (inverted), no pitch, no note, no instrument
   5544 01                 1357  .db 0h01 ; 0h0578: instrument
   5545 72                 1358  .db 0h72 ; 0h0579: normal track data
   5546 60                 1359  .db 0h60 ; 0h057A: vol off, no pitch, note, instrument
   5547 04                 1360  .db 0h04 ; 0h057B: instrument
   5548 B2                 1361  .db 0hB2 ; 0h057C: normal track data,  note: G#4
   5549 7F                 1362  .db 0h7F ; 0h057D: vol = 0h0 (inverted), no pitch, no note, no instrument
   554A 08                 1363  .db 0h08 ; 0h057E: instrument
   554B 5A                 1364  .db 0h5A ; 0h057F: normal track data
   554C 61                 1365  .db 0h61 ; 0h0580: vol = 0hF (inverted), no pitch, no note, no instrument
   554D 01                 1366  .db 0h01 ; 0h0581: instrument
   554E 72                 1367  .db 0h72 ; 0h0582: normal track data
   554F 60                 1368  .db 0h60 ; 0h0583: vol off, no pitch, note, instrument
   5550 03                 1369  .db 0h03 ; 0h0584: instrument
   5551 B8                 1370  .db 0hB8 ; 0h0585: normal track data,  note: B4
   5552 7F                 1371  .db 0h7F ; 0h0586: vol = 0h0 (inverted), no pitch, no note, no instrument
   5553 07                 1372  .db 0h07 ; 0h0587: instrument
   5554 5A                 1373  .db 0h5A ; 0h0588: normal track data
   5555 61                 1374  .db 0h61 ; 0h0589: vol = 0hF (inverted), no pitch, no note, no instrument
   5556 01                 1375  .db 0h01 ; 0h058A: instrument
   5557 72                 1376  .db 0h72 ; 0h058B: normal track data
   5558 60                 1377  .db 0h60 ; 0h058C: vol off, no pitch, note, instrument
   5559 03                 1378  .db 0h03 ; 0h058D: instrument
   555A B8                 1379  .db 0hB8 ; 0h058E: normal track data,  note: B4
   555B 7F                 1380  .db 0h7F ; 0h058F: vol = 0h0 (inverted), no pitch, no note, no instrument
   555C 07                 1381  .db 0h07 ; 0h0590: instrument
   555D 72                 1382  .db 0h72 ; 0h0591: normal track data
   555E 61                 1383  .db 0h61 ; 0h0592: vol = 0hF (inverted), no pitch, no note, no instrument
   555F 04                 1384  .db 0h04 ; 0h0593: instrument
   5560 5A                 1385  .db 0h5A ; 0h0594: normal track data
   5561 60                 1386  .db 0h60 ; 0h0595: vol off, no pitch, note, instrument
   5562 01                 1387  .db 0h01 ; 0h0596: instrument
   5563 B2                 1388  .db 0hB2 ; 0h0597: normal track data,  note: G#4
   5564 7F                 1389  .db 0h7F ; 0h0598: vol = 0h0 (inverted), no pitch, no note, no instrument
   5565 08                 1390  .db 0h08 ; 0h0599: instrument
   5566 5A                 1391  .db 0h5A ; 0h059A: normal track data
   5567 61                 1392  .db 0h61 ; 0h059B: vol = 0hF (inverted), no pitch, no note, no instrument
   5568 01                 1393  .db 0h01 ; 0h059C: instrument
   5569 72                 1394  .db 0h72 ; 0h059D: normal track data
   556A 60                 1395  .db 0h60 ; 0h059E: vol off, no pitch, note, instrument
   556B 03                 1396  .db 0h03 ; 0h059F: instrument
   556C 5A                 1397  .db 0h5A ; 0h05A0: normal track data
   556D 60                 1398  .db 0h60 ; 0h05A1: vol off, no pitch, note, instrument
   556E 01                 1399  .db 0h01 ; 0h05A2: instrument
   556F B2                 1400  .db 0hB2 ; 0h05A3: normal track data,  note: G#4
   5570 7F                 1401  .db 0h7F ; 0h05A4: vol = 0h0 (inverted), no pitch, no note, no instrument
   5571 06                 1402  .db 0h06 ; 0h05A5: instrument
   5572 5A                 1403  .db 0h5A ; 0h05A6: normal track data
   5573 61                 1404  .db 0h61 ; 0h05A7: vol = 0hF (inverted), no pitch, no note, no instrument
   5574 01                 1405  .db 0h01 ; 0h05A8: instrument
   5575 72                 1406  .db 0h72 ; 0h05A9: normal track data
   5576 60                 1407  .db 0h60 ; 0h05AA: vol off, no pitch, note, instrument
   5577 04                 1408  .db 0h04 ; 0h05AB: instrument
   5578 B2                 1409  .db 0hB2 ; 0h05AC: normal track data,  note: G#4
   5579 7F                 1410  .db 0h7F ; 0h05AD: vol = 0h0 (inverted), no pitch, no note, no instrument
   557A 06                 1411  .db 0h06 ; 0h05AE: instrument
   557B 5A                 1412  .db 0h5A ; 0h05AF: normal track data
   557C 61                 1413  .db 0h61 ; 0h05B0: vol = 0hF (inverted), no pitch, no note, no instrument
   557D 01                 1414  .db 0h01 ; 0h05B1: instrument
   557E 72                 1415  .db 0h72 ; 0h05B2: normal track data
   557F 60                 1416  .db 0h60 ; 0h05B3: vol off, no pitch, note, instrument
   5580 03                 1417  .db 0h03 ; 0h05B4: instrument
   5581 B2                 1418  .db 0hB2 ; 0h05B5: normal track data,  note: G#4
   5582 7F                 1419  .db 0h7F ; 0h05B6: vol = 0h0 (inverted), no pitch, no note, no instrument
   5583 06                 1420  .db 0h06 ; 0h05B7: instrument
   5584 5A                 1421  .db 0h5A ; 0h05B8: normal track data
   5585 61                 1422  .db 0h61 ; 0h05B9: vol = 0hF (inverted), no pitch, no note, no instrument
   5586 01                 1423  .db 0h01 ; 0h05BA: instrument
   5587 72                 1424  .db 0h72 ; 0h05BB: normal track data
   5588 60                 1425  .db 0h60 ; 0h05BC: vol off, no pitch, note, instrument
   5589 03                 1426  .db 0h03 ; 0h05BD: instrument
   558A AE                 1427  .db 0hAE ; 0h05BE: normal track data,  note: F#4
   558B 7F                 1428  .db 0h7F ; 0h05BF: vol = 0h0 (inverted), no pitch, no note, no instrument
   558C 07                 1429  .db 0h07 ; 0h05C0: instrument
   558D 72                 1430  .db 0h72 ; 0h05C1: normal track data
   558E 61                 1431  .db 0h61 ; 0h05C2: vol = 0hF (inverted), no pitch, no note, no instrument
   558F 04                 1432  .db 0h04 ; 0h05C3: instrument
   5590 5A                 1433  .db 0h5A ; 0h05C4: normal track data
   5591 60                 1434  .db 0h60 ; 0h05C5: vol off, no pitch, note, instrument
   5592 01                 1435  .db 0h01 ; 0h05C6: instrument
   5593 AE                 1436  .db 0hAE ; 0h05C7: normal track data,  note: F#4
   5594 7F                 1437  .db 0h7F ; 0h05C8: vol = 0h0 (inverted), no pitch, no note, no instrument
   5595 07                 1438  .db 0h07 ; 0h05C9: instrument
   5596 5A                 1439  .db 0h5A ; 0h05CA: normal track data
   5597 61                 1440  .db 0h61 ; 0h05CB: vol = 0hF (inverted), no pitch, no note, no instrument
   5598 01                 1441  .db 0h01 ; 0h05CC: instrument
   5599 72                 1442  .db 0h72 ; 0h05CD: normal track data
   559A 60                 1443  .db 0h60 ; 0h05CE: vol off, no pitch, note, instrument
   559B 03                 1444  .db 0h03 ; 0h05CF: instrument
   559C 5A                 1445  .db 0h5A ; 0h05D0: normal track data
   559D 60                 1446  .db 0h60 ; 0h05D1: vol off, no pitch, note, instrument
   559E 01                 1447  .db 0h01 ; 0h05D2: instrument
   559F B2                 1448  .db 0hB2 ; 0h05D3: normal track data,  note: G#4
   55A0 7F                 1449  .db 0h7F ; 0h05D4: vol = 0h0 (inverted), no pitch, no note, no instrument
   55A1 08                 1450  .db 0h08 ; 0h05D5: instrument
   55A2 5A                 1451  .db 0h5A ; 0h05D6: normal track data
   55A3 61                 1452  .db 0h61 ; 0h05D7: vol = 0hF (inverted), no pitch, no note, no instrument
   55A4 01                 1453  .db 0h01 ; 0h05D8: instrument
   55A5 72                 1454  .db 0h72 ; 0h05D9: normal track data
   55A6 60                 1455  .db 0h60 ; 0h05DA: vol off, no pitch, note, instrument
   55A7 04                 1456  .db 0h04 ; 0h05DB: instrument
   55A8 B2                 1457  .db 0hB2 ; 0h05DC: normal track data,  note: G#4
   55A9 7F                 1458  .db 0h7F ; 0h05DD: vol = 0h0 (inverted), no pitch, no note, no instrument
   55AA 08                 1459  .db 0h08 ; 0h05DE: instrument
   55AB 5A                 1460  .db 0h5A ; 0h05DF: normal track data
   55AC 61                 1461  .db 0h61 ; 0h05E0: vol = 0hF (inverted), no pitch, no note, no instrument
   55AD 01                 1462  .db 0h01 ; 0h05E1: instrument
   55AE 72                 1463  .db 0h72 ; 0h05E2: normal track data
   55AF 60                 1464  .db 0h60 ; 0h05E3: vol off, no pitch, note, instrument
   55B0 03                 1465  .db 0h03 ; 0h05E4: instrument
   55B1 B8                 1466  .db 0hB8 ; 0h05E5: normal track data,  note: B4
   55B2 7F                 1467  .db 0h7F ; 0h05E6: vol = 0h0 (inverted), no pitch, no note, no instrument
   55B3 07                 1468  .db 0h07 ; 0h05E7: instrument
   55B4 5A                 1469  .db 0h5A ; 0h05E8: normal track data
   55B5 61                 1470  .db 0h61 ; 0h05E9: vol = 0hF (inverted), no pitch, no note, no instrument
   55B6 01                 1471  .db 0h01 ; 0h05EA: instrument
   55B7 72                 1472  .db 0h72 ; 0h05EB: normal track data
   55B8 60                 1473  .db 0h60 ; 0h05EC: vol off, no pitch, note, instrument
   55B9 03                 1474  .db 0h03 ; 0h05ED: instrument
   55BA B8                 1475  .db 0hB8 ; 0h05EE: normal track data,  note: B4
   55BB 7F                 1476  .db 0h7F ; 0h05EF: vol = 0h0 (inverted), no pitch, no note, no instrument
   55BC 07                 1477  .db 0h07 ; 0h05F0: instrument
   55BD 72                 1478  .db 0h72 ; 0h05F1: normal track data
   55BE 61                 1479  .db 0h61 ; 0h05F2: vol = 0hF (inverted), no pitch, no note, no instrument
   55BF 04                 1480  .db 0h04 ; 0h05F3: instrument
   55C0 5A                 1481  .db 0h5A ; 0h05F4: normal track data
   55C1 60                 1482  .db 0h60 ; 0h05F5: vol off, no pitch, note, instrument
   55C2 01                 1483  .db 0h01 ; 0h05F6: instrument
   55C3 B2                 1484  .db 0hB2 ; 0h05F7: normal track data,  note: G#4
   55C4 7F                 1485  .db 0h7F ; 0h05F8: vol = 0h0 (inverted), no pitch, no note, no instrument
   55C5 08                 1486  .db 0h08 ; 0h05F9: instrument
   55C6 5A                 1487  .db 0h5A ; 0h05FA: normal track data
   55C7 61                 1488  .db 0h61 ; 0h05FB: vol = 0hF (inverted), no pitch, no note, no instrument
   55C8 01                 1489  .db 0h01 ; 0h05FC: instrument
   55C9                    1490 trackDef11Test:
   55C9 C2                 1491  .db 0hC2 ; 0h05FD: normal track data
   55CA F3                 1492  .db 0hF3 ; 0h05FE: vol = 0h6 (inverted), no pitch, no note, no instrument
   55CB 00 00              1493  .dw 0h0000 ; 0h05FF: pitch
   55CD 05                 1494  .db 0h05 ; 0h0601: instrument
   55CE DA                 1495  .db 0hDA ; 0h0602: normal track data
   55CF 40                 1496  .db 0h40 ; 0h0603: vol off, no pitch, note, no instrument
   55D0 C2                 1497  .db 0hC2 ; 0h0604: normal track data
   55D1 40                 1498  .db 0h40 ; 0h0605: vol off, no pitch, note, no instrument
   55D2 AA                 1499  .db 0hAA ; 0h0606: normal track data
   55D3 40                 1500  .db 0h40 ; 0h0607: vol off, no pitch, note, no instrument
   55D4 92                 1501  .db 0h92 ; 0h0608: normal track data
   55D5 40                 1502  .db 0h40 ; 0h0609: vol off, no pitch, note, no instrument
   55D6 7A                 1503  .db 0h7A ; 0h060A: normal track data
   55D7 40                 1504  .db 0h40 ; 0h060B: vol off, no pitch, note, no instrument
   55D8 92                 1505  .db 0h92 ; 0h060C: normal track data
   55D9 40                 1506  .db 0h40 ; 0h060D: vol off, no pitch, note, no instrument
   55DA AA                 1507  .db 0hAA ; 0h060E: normal track data
   55DB 40                 1508  .db 0h40 ; 0h060F: vol off, no pitch, note, no instrument
   55DC C2                 1509  .db 0hC2 ; 0h0610: normal track data
   55DD 40                 1510  .db 0h40 ; 0h0611: vol off, no pitch, note, no instrument
   55DE DA                 1511  .db 0hDA ; 0h0612: normal track data
   55DF 40                 1512  .db 0h40 ; 0h0613: vol off, no pitch, note, no instrument
   55E0 C2                 1513  .db 0hC2 ; 0h0614: normal track data
   55E1 40                 1514  .db 0h40 ; 0h0615: vol off, no pitch, note, no instrument
   55E2 AA                 1515  .db 0hAA ; 0h0616: normal track data
   55E3 40                 1516  .db 0h40 ; 0h0617: vol off, no pitch, note, no instrument
   55E4 92                 1517  .db 0h92 ; 0h0618: normal track data
   55E5 40                 1518  .db 0h40 ; 0h0619: vol off, no pitch, note, no instrument
   55E6 7A                 1519  .db 0h7A ; 0h061A: normal track data
   55E7 40                 1520  .db 0h40 ; 0h061B: vol off, no pitch, note, no instrument
   55E8 92                 1521  .db 0h92 ; 0h061C: normal track data
   55E9 40                 1522  .db 0h40 ; 0h061D: vol off, no pitch, note, no instrument
   55EA AA                 1523  .db 0hAA ; 0h061E: normal track data
   55EB 40                 1524  .db 0h40 ; 0h061F: vol off, no pitch, note, no instrument
   55EC C2                 1525  .db 0hC2 ; 0h0620: normal track data
   55ED 40                 1526  .db 0h40 ; 0h0621: vol off, no pitch, note, no instrument
   55EE DA                 1527  .db 0hDA ; 0h0622: normal track data
   55EF 40                 1528  .db 0h40 ; 0h0623: vol off, no pitch, note, no instrument
   55F0 C2                 1529  .db 0hC2 ; 0h0624: normal track data
   55F1 40                 1530  .db 0h40 ; 0h0625: vol off, no pitch, note, no instrument
   55F2 AA                 1531  .db 0hAA ; 0h0626: normal track data
   55F3 40                 1532  .db 0h40 ; 0h0627: vol off, no pitch, note, no instrument
   55F4 92                 1533  .db 0h92 ; 0h0628: normal track data
   55F5 40                 1534  .db 0h40 ; 0h0629: vol off, no pitch, note, no instrument
   55F6 7A                 1535  .db 0h7A ; 0h062A: normal track data
   55F7 40                 1536  .db 0h40 ; 0h062B: vol off, no pitch, note, no instrument
   55F8 92                 1537  .db 0h92 ; 0h062C: normal track data
   55F9 40                 1538  .db 0h40 ; 0h062D: vol off, no pitch, note, no instrument
   55FA AA                 1539  .db 0hAA ; 0h062E: normal track data
   55FB 40                 1540  .db 0h40 ; 0h062F: vol off, no pitch, note, no instrument
   55FC C2                 1541  .db 0hC2 ; 0h0630: normal track data
   55FD 40                 1542  .db 0h40 ; 0h0631: vol off, no pitch, note, no instrument
   55FE DA                 1543  .db 0hDA ; 0h0632: normal track data
   55FF 40                 1544  .db 0h40 ; 0h0633: vol off, no pitch, note, no instrument
   5600 C2                 1545  .db 0hC2 ; 0h0634: normal track data
   5601 40                 1546  .db 0h40 ; 0h0635: vol off, no pitch, note, no instrument
   5602 AA                 1547  .db 0hAA ; 0h0636: normal track data
   5603 40                 1548  .db 0h40 ; 0h0637: vol off, no pitch, note, no instrument
   5604 92                 1549  .db 0h92 ; 0h0638: normal track data
   5605 40                 1550  .db 0h40 ; 0h0639: vol off, no pitch, note, no instrument
   5606 7A                 1551  .db 0h7A ; 0h063A: normal track data
   5607 40                 1552  .db 0h40 ; 0h063B: vol off, no pitch, note, no instrument
   5608 92                 1553  .db 0h92 ; 0h063C: normal track data
   5609 40                 1554  .db 0h40 ; 0h063D: vol off, no pitch, note, no instrument
   560A AA                 1555  .db 0hAA ; 0h063E: normal track data
   560B 40                 1556  .db 0h40 ; 0h063F: vol off, no pitch, note, no instrument
   560C C2                 1557  .db 0hC2 ; 0h0640: normal track data
   560D 40                 1558  .db 0h40 ; 0h0641: vol off, no pitch, note, no instrument
   560E DA                 1559  .db 0hDA ; 0h0642: normal track data
   560F 40                 1560  .db 0h40 ; 0h0643: vol off, no pitch, note, no instrument
   5610 C2                 1561  .db 0hC2 ; 0h0644: normal track data
   5611 40                 1562  .db 0h40 ; 0h0645: vol off, no pitch, note, no instrument
   5612 AA                 1563  .db 0hAA ; 0h0646: normal track data
   5613 40                 1564  .db 0h40 ; 0h0647: vol off, no pitch, note, no instrument
   5614 92                 1565  .db 0h92 ; 0h0648: normal track data
   5615 40                 1566  .db 0h40 ; 0h0649: vol off, no pitch, note, no instrument
   5616 7A                 1567  .db 0h7A ; 0h064A: normal track data
   5617 40                 1568  .db 0h40 ; 0h064B: vol off, no pitch, note, no instrument
   5618 92                 1569  .db 0h92 ; 0h064C: normal track data
   5619 40                 1570  .db 0h40 ; 0h064D: vol off, no pitch, note, no instrument
   561A AA                 1571  .db 0hAA ; 0h064E: normal track data
   561B 40                 1572  .db 0h40 ; 0h064F: vol off, no pitch, note, no instrument
   561C C2                 1573  .db 0hC2 ; 0h0650: normal track data
   561D 40                 1574  .db 0h40 ; 0h0651: vol off, no pitch, note, no instrument
   561E DA                 1575  .db 0hDA ; 0h0652: normal track data
   561F 40                 1576  .db 0h40 ; 0h0653: vol off, no pitch, note, no instrument
   5620 C2                 1577  .db 0hC2 ; 0h0654: normal track data
   5621 40                 1578  .db 0h40 ; 0h0655: vol off, no pitch, note, no instrument
   5622 AA                 1579  .db 0hAA ; 0h0656: normal track data
   5623 40                 1580  .db 0h40 ; 0h0657: vol off, no pitch, note, no instrument
   5624 92                 1581  .db 0h92 ; 0h0658: normal track data
   5625 40                 1582  .db 0h40 ; 0h0659: vol off, no pitch, note, no instrument
   5626 7A                 1583  .db 0h7A ; 0h065A: normal track data
   5627 40                 1584  .db 0h40 ; 0h065B: vol off, no pitch, note, no instrument
   5628 92                 1585  .db 0h92 ; 0h065C: normal track data
   5629 40                 1586  .db 0h40 ; 0h065D: vol off, no pitch, note, no instrument
   562A AA                 1587  .db 0hAA ; 0h065E: normal track data
   562B 40                 1588  .db 0h40 ; 0h065F: vol off, no pitch, note, no instrument
   562C C2                 1589  .db 0hC2 ; 0h0660: normal track data
   562D 40                 1590  .db 0h40 ; 0h0661: vol off, no pitch, note, no instrument
   562E DA                 1591  .db 0hDA ; 0h0662: normal track data
   562F 40                 1592  .db 0h40 ; 0h0663: vol off, no pitch, note, no instrument
   5630 C2                 1593  .db 0hC2 ; 0h0664: normal track data
   5631 40                 1594  .db 0h40 ; 0h0665: vol off, no pitch, note, no instrument
   5632 AA                 1595  .db 0hAA ; 0h0666: normal track data
   5633 40                 1596  .db 0h40 ; 0h0667: vol off, no pitch, note, no instrument
   5634 92                 1597  .db 0h92 ; 0h0668: normal track data
   5635 40                 1598  .db 0h40 ; 0h0669: vol off, no pitch, note, no instrument
   5636 7A                 1599  .db 0h7A ; 0h066A: normal track data
   5637 40                 1600  .db 0h40 ; 0h066B: vol off, no pitch, note, no instrument
   5638 92                 1601  .db 0h92 ; 0h066C: normal track data
   5639 40                 1602  .db 0h40 ; 0h066D: vol off, no pitch, note, no instrument
   563A AA                 1603  .db 0hAA ; 0h066E: normal track data
   563B 40                 1604  .db 0h40 ; 0h066F: vol off, no pitch, note, no instrument
   563C C2                 1605  .db 0hC2 ; 0h0670: normal track data
   563D 40                 1606  .db 0h40 ; 0h0671: vol off, no pitch, note, no instrument
   563E DA                 1607  .db 0hDA ; 0h0672: normal track data
   563F 40                 1608  .db 0h40 ; 0h0673: vol off, no pitch, note, no instrument
   5640 C2                 1609  .db 0hC2 ; 0h0674: normal track data
   5641 40                 1610  .db 0h40 ; 0h0675: vol off, no pitch, note, no instrument
   5642 AA                 1611  .db 0hAA ; 0h0676: normal track data
   5643 40                 1612  .db 0h40 ; 0h0677: vol off, no pitch, note, no instrument
   5644 92                 1613  .db 0h92 ; 0h0678: normal track data
   5645 40                 1614  .db 0h40 ; 0h0679: vol off, no pitch, note, no instrument
   5646 7A                 1615  .db 0h7A ; 0h067A: normal track data
   5647 40                 1616  .db 0h40 ; 0h067B: vol off, no pitch, note, no instrument
   5648 92                 1617  .db 0h92 ; 0h067C: normal track data
   5649 40                 1618  .db 0h40 ; 0h067D: vol off, no pitch, note, no instrument
   564A AA                 1619  .db 0hAA ; 0h067E: normal track data
   564B 40                 1620  .db 0h40 ; 0h067F: vol off, no pitch, note, no instrument
   564C                    1621 trackDef13Test:
   564C C2                 1622  .db 0hC2 ; 0h0680: normal track data
   564D F3                 1623  .db 0hF3 ; 0h0681: vol = 0h6 (inverted), no pitch, no note, no instrument
   564E 00 00              1624  .dw 0h0000 ; 0h0682: pitch
   5650 05                 1625  .db 0h05 ; 0h0684: instrument
   5651 DA                 1626  .db 0hDA ; 0h0685: normal track data
   5652 40                 1627  .db 0h40 ; 0h0686: vol off, no pitch, note, no instrument
   5653 C2                 1628  .db 0hC2 ; 0h0687: normal track data
   5654 40                 1629  .db 0h40 ; 0h0688: vol off, no pitch, note, no instrument
   5655 AA                 1630  .db 0hAA ; 0h0689: normal track data
   5656 40                 1631  .db 0h40 ; 0h068A: vol off, no pitch, note, no instrument
   5657 92                 1632  .db 0h92 ; 0h068B: normal track data
   5658 40                 1633  .db 0h40 ; 0h068C: vol off, no pitch, note, no instrument
   5659 7A                 1634  .db 0h7A ; 0h068D: normal track data
   565A 40                 1635  .db 0h40 ; 0h068E: vol off, no pitch, note, no instrument
   565B 92                 1636  .db 0h92 ; 0h068F: normal track data
   565C 40                 1637  .db 0h40 ; 0h0690: vol off, no pitch, note, no instrument
   565D AA                 1638  .db 0hAA ; 0h0691: normal track data
   565E 40                 1639  .db 0h40 ; 0h0692: vol off, no pitch, note, no instrument
   565F C2                 1640  .db 0hC2 ; 0h0693: normal track data
   5660 40                 1641  .db 0h40 ; 0h0694: vol off, no pitch, note, no instrument
   5661 DA                 1642  .db 0hDA ; 0h0695: normal track data
   5662 40                 1643  .db 0h40 ; 0h0696: vol off, no pitch, note, no instrument
   5663 C2                 1644  .db 0hC2 ; 0h0697: normal track data
   5664 40                 1645  .db 0h40 ; 0h0698: vol off, no pitch, note, no instrument
   5665 AA                 1646  .db 0hAA ; 0h0699: normal track data
   5666 40                 1647  .db 0h40 ; 0h069A: vol off, no pitch, note, no instrument
   5667 92                 1648  .db 0h92 ; 0h069B: normal track data
   5668 40                 1649  .db 0h40 ; 0h069C: vol off, no pitch, note, no instrument
   5669 7A                 1650  .db 0h7A ; 0h069D: normal track data
   566A 40                 1651  .db 0h40 ; 0h069E: vol off, no pitch, note, no instrument
   566B 92                 1652  .db 0h92 ; 0h069F: normal track data
   566C 40                 1653  .db 0h40 ; 0h06A0: vol off, no pitch, note, no instrument
   566D AA                 1654  .db 0hAA ; 0h06A1: normal track data
   566E 40                 1655  .db 0h40 ; 0h06A2: vol off, no pitch, note, no instrument
   566F C2                 1656  .db 0hC2 ; 0h06A3: normal track data
   5670 40                 1657  .db 0h40 ; 0h06A4: vol off, no pitch, note, no instrument
   5671 DA                 1658  .db 0hDA ; 0h06A5: normal track data
   5672 40                 1659  .db 0h40 ; 0h06A6: vol off, no pitch, note, no instrument
   5673 C2                 1660  .db 0hC2 ; 0h06A7: normal track data
   5674 40                 1661  .db 0h40 ; 0h06A8: vol off, no pitch, note, no instrument
   5675 AA                 1662  .db 0hAA ; 0h06A9: normal track data
   5676 40                 1663  .db 0h40 ; 0h06AA: vol off, no pitch, note, no instrument
   5677 92                 1664  .db 0h92 ; 0h06AB: normal track data
   5678 40                 1665  .db 0h40 ; 0h06AC: vol off, no pitch, note, no instrument
   5679 7A                 1666  .db 0h7A ; 0h06AD: normal track data
   567A 40                 1667  .db 0h40 ; 0h06AE: vol off, no pitch, note, no instrument
   567B 92                 1668  .db 0h92 ; 0h06AF: normal track data
   567C 40                 1669  .db 0h40 ; 0h06B0: vol off, no pitch, note, no instrument
   567D AA                 1670  .db 0hAA ; 0h06B1: normal track data
   567E 40                 1671  .db 0h40 ; 0h06B2: vol off, no pitch, note, no instrument
   567F C2                 1672  .db 0hC2 ; 0h06B3: normal track data
   5680 40                 1673  .db 0h40 ; 0h06B4: vol off, no pitch, note, no instrument
   5681 DA                 1674  .db 0hDA ; 0h06B5: normal track data
   5682 40                 1675  .db 0h40 ; 0h06B6: vol off, no pitch, note, no instrument
   5683 C2                 1676  .db 0hC2 ; 0h06B7: normal track data
   5684 40                 1677  .db 0h40 ; 0h06B8: vol off, no pitch, note, no instrument
   5685 AA                 1678  .db 0hAA ; 0h06B9: normal track data
   5686 40                 1679  .db 0h40 ; 0h06BA: vol off, no pitch, note, no instrument
   5687 92                 1680  .db 0h92 ; 0h06BB: normal track data
   5688 40                 1681  .db 0h40 ; 0h06BC: vol off, no pitch, note, no instrument
   5689 7A                 1682  .db 0h7A ; 0h06BD: normal track data
   568A 40                 1683  .db 0h40 ; 0h06BE: vol off, no pitch, note, no instrument
   568B 92                 1684  .db 0h92 ; 0h06BF: normal track data
   568C 40                 1685  .db 0h40 ; 0h06C0: vol off, no pitch, note, no instrument
   568D AA                 1686  .db 0hAA ; 0h06C1: normal track data
   568E 40                 1687  .db 0h40 ; 0h06C2: vol off, no pitch, note, no instrument
   568F C2                 1688  .db 0hC2 ; 0h06C3: normal track data
   5690 40                 1689  .db 0h40 ; 0h06C4: vol off, no pitch, note, no instrument
   5691 DA                 1690  .db 0hDA ; 0h06C5: normal track data
   5692 40                 1691  .db 0h40 ; 0h06C6: vol off, no pitch, note, no instrument
   5693 C2                 1692  .db 0hC2 ; 0h06C7: normal track data
   5694 40                 1693  .db 0h40 ; 0h06C8: vol off, no pitch, note, no instrument
   5695 AA                 1694  .db 0hAA ; 0h06C9: normal track data
   5696 40                 1695  .db 0h40 ; 0h06CA: vol off, no pitch, note, no instrument
   5697 92                 1696  .db 0h92 ; 0h06CB: normal track data
   5698 40                 1697  .db 0h40 ; 0h06CC: vol off, no pitch, note, no instrument
   5699 7A                 1698  .db 0h7A ; 0h06CD: normal track data
   569A 40                 1699  .db 0h40 ; 0h06CE: vol off, no pitch, note, no instrument
   569B 92                 1700  .db 0h92 ; 0h06CF: normal track data
   569C 40                 1701  .db 0h40 ; 0h06D0: vol off, no pitch, note, no instrument
   569D AA                 1702  .db 0hAA ; 0h06D1: normal track data
   569E 40                 1703  .db 0h40 ; 0h06D2: vol off, no pitch, note, no instrument
   569F C2                 1704  .db 0hC2 ; 0h06D3: normal track data
   56A0 40                 1705  .db 0h40 ; 0h06D4: vol off, no pitch, note, no instrument
   56A1 DA                 1706  .db 0hDA ; 0h06D5: normal track data
   56A2 40                 1707  .db 0h40 ; 0h06D6: vol off, no pitch, note, no instrument
   56A3 C2                 1708  .db 0hC2 ; 0h06D7: normal track data
   56A4 40                 1709  .db 0h40 ; 0h06D8: vol off, no pitch, note, no instrument
   56A5 AA                 1710  .db 0hAA ; 0h06D9: normal track data
   56A6 40                 1711  .db 0h40 ; 0h06DA: vol off, no pitch, note, no instrument
   56A7 92                 1712  .db 0h92 ; 0h06DB: normal track data
   56A8 40                 1713  .db 0h40 ; 0h06DC: vol off, no pitch, note, no instrument
   56A9 7A                 1714  .db 0h7A ; 0h06DD: normal track data
   56AA 40                 1715  .db 0h40 ; 0h06DE: vol off, no pitch, note, no instrument
   56AB 92                 1716  .db 0h92 ; 0h06DF: normal track data
   56AC 40                 1717  .db 0h40 ; 0h06E0: vol off, no pitch, note, no instrument
   56AD AA                 1718  .db 0hAA ; 0h06E1: normal track data
   56AE 40                 1719  .db 0h40 ; 0h06E2: vol off, no pitch, note, no instrument
   56AF 7A                 1720  .db 0h7A ; 0h06E3: normal track data
   56B0 40                 1721  .db 0h40 ; 0h06E4: vol off, no pitch, note, no instrument
   56B1 92                 1722  .db 0h92 ; 0h06E5: normal track data
   56B2 40                 1723  .db 0h40 ; 0h06E6: vol off, no pitch, note, no instrument
   56B3 7A                 1724  .db 0h7A ; 0h06E7: normal track data
   56B4 40                 1725  .db 0h40 ; 0h06E8: vol off, no pitch, note, no instrument
   56B5 92                 1726  .db 0h92 ; 0h06E9: normal track data
   56B6 40                 1727  .db 0h40 ; 0h06EA: vol off, no pitch, note, no instrument
   56B7 7C                 1728  .db 0h7C ; 0h06EB: normal track data
   56B8 40                 1729  .db 0h40 ; 0h06EC: vol off, no pitch, note, no instrument
   56B9 94                 1730  .db 0h94 ; 0h06ED: normal track data
   56BA 40                 1731  .db 0h40 ; 0h06EE: vol off, no pitch, note, no instrument
   56BB 7C                 1732  .db 0h7C ; 0h06EF: normal track data
   56BC 40                 1733  .db 0h40 ; 0h06F0: vol off, no pitch, note, no instrument
   56BD 94                 1734  .db 0h94 ; 0h06F1: normal track data
   56BE 40                 1735  .db 0h40 ; 0h06F2: vol off, no pitch, note, no instrument
   56BF 7A                 1736  .db 0h7A ; 0h06F3: normal track data
   56C0 40                 1737  .db 0h40 ; 0h06F4: vol off, no pitch, note, no instrument
   56C1 92                 1738  .db 0h92 ; 0h06F5: normal track data
   56C2 40                 1739  .db 0h40 ; 0h06F6: vol off, no pitch, note, no instrument
   56C3 7A                 1740  .db 0h7A ; 0h06F7: normal track data
   56C4 40                 1741  .db 0h40 ; 0h06F8: vol off, no pitch, note, no instrument
   56C5 84                 1742  .db 0h84 ; 0h06F9: normal track data
   56C6 40                 1743  .db 0h40 ; 0h06FA: vol off, no pitch, note, no instrument
   56C7 88                 1744  .db 0h88 ; 0h06FB: normal track data
   56C8 40                 1745  .db 0h40 ; 0h06FC: vol off, no pitch, note, no instrument
   56C9 84                 1746  .db 0h84 ; 0h06FD: normal track data
   56CA 40                 1747  .db 0h40 ; 0h06FE: vol off, no pitch, note, no instrument
   56CB 80                 1748  .db 0h80 ; 0h06FF: normal track data
   56CC 40                 1749  .db 0h40 ; 0h0700: vol off, no pitch, note, no instrument
   56CD 7C                 1750  .db 0h7C ; 0h0701: normal track data
   56CE 40                 1751  .db 0h40 ; 0h0702: vol off, no pitch, note, no instrument
   56CF                    1752 trackDef18Test:
   56CF 72                 1753  .db 0h72 ; 0h0703: normal track data
   56D0 E1                 1754  .db 0hE1 ; 0h0704: vol = 0hF (inverted), no pitch, no note, no instrument
   56D1 00 00              1755  .dw 0h0000 ; 0h0705: pitch
   56D3 03                 1756  .db 0h03 ; 0h0707: instrument
   56D4 5A                 1757  .db 0h5A ; 0h0708: normal track data
   56D5 60                 1758  .db 0h60 ; 0h0709: vol off, no pitch, note, instrument
   56D6 01                 1759  .db 0h01 ; 0h070A: instrument
   56D7 B2                 1760  .db 0hB2 ; 0h070B: normal track data,  note: G#4
   56D8 7F                 1761  .db 0h7F ; 0h070C: vol = 0h0 (inverted), no pitch, no note, no instrument
   56D9 06                 1762  .db 0h06 ; 0h070D: instrument
   56DA 5A                 1763  .db 0h5A ; 0h070E: normal track data
   56DB 61                 1764  .db 0h61 ; 0h070F: vol = 0hF (inverted), no pitch, no note, no instrument
   56DC 01                 1765  .db 0h01 ; 0h0710: instrument
   56DD 72                 1766  .db 0h72 ; 0h0711: normal track data
   56DE 60                 1767  .db 0h60 ; 0h0712: vol off, no pitch, note, instrument
   56DF 04                 1768  .db 0h04 ; 0h0713: instrument
   56E0 B2                 1769  .db 0hB2 ; 0h0714: normal track data,  note: G#4
   56E1 7F                 1770  .db 0h7F ; 0h0715: vol = 0h0 (inverted), no pitch, no note, no instrument
   56E2 06                 1771  .db 0h06 ; 0h0716: instrument
   56E3 5A                 1772  .db 0h5A ; 0h0717: normal track data
   56E4 61                 1773  .db 0h61 ; 0h0718: vol = 0hF (inverted), no pitch, no note, no instrument
   56E5 01                 1774  .db 0h01 ; 0h0719: instrument
   56E6 72                 1775  .db 0h72 ; 0h071A: normal track data
   56E7 60                 1776  .db 0h60 ; 0h071B: vol off, no pitch, note, instrument
   56E8 03                 1777  .db 0h03 ; 0h071C: instrument
   56E9 B2                 1778  .db 0hB2 ; 0h071D: normal track data,  note: G#4
   56EA 7F                 1779  .db 0h7F ; 0h071E: vol = 0h0 (inverted), no pitch, no note, no instrument
   56EB 06                 1780  .db 0h06 ; 0h071F: instrument
   56EC 5A                 1781  .db 0h5A ; 0h0720: normal track data
   56ED 61                 1782  .db 0h61 ; 0h0721: vol = 0hF (inverted), no pitch, no note, no instrument
   56EE 01                 1783  .db 0h01 ; 0h0722: instrument
   56EF 72                 1784  .db 0h72 ; 0h0723: normal track data
   56F0 60                 1785  .db 0h60 ; 0h0724: vol off, no pitch, note, instrument
   56F1 03                 1786  .db 0h03 ; 0h0725: instrument
   56F2 AE                 1787  .db 0hAE ; 0h0726: normal track data,  note: F#4
   56F3 7F                 1788  .db 0h7F ; 0h0727: vol = 0h0 (inverted), no pitch, no note, no instrument
   56F4 07                 1789  .db 0h07 ; 0h0728: instrument
   56F5 72                 1790  .db 0h72 ; 0h0729: normal track data
   56F6 61                 1791  .db 0h61 ; 0h072A: vol = 0hF (inverted), no pitch, no note, no instrument
   56F7 04                 1792  .db 0h04 ; 0h072B: instrument
   56F8 5A                 1793  .db 0h5A ; 0h072C: normal track data
   56F9 60                 1794  .db 0h60 ; 0h072D: vol off, no pitch, note, instrument
   56FA 01                 1795  .db 0h01 ; 0h072E: instrument
   56FB AE                 1796  .db 0hAE ; 0h072F: normal track data,  note: F#4
   56FC 7F                 1797  .db 0h7F ; 0h0730: vol = 0h0 (inverted), no pitch, no note, no instrument
   56FD 07                 1798  .db 0h07 ; 0h0731: instrument
   56FE 5A                 1799  .db 0h5A ; 0h0732: normal track data
   56FF 61                 1800  .db 0h61 ; 0h0733: vol = 0hF (inverted), no pitch, no note, no instrument
   5700 01                 1801  .db 0h01 ; 0h0734: instrument
   5701 72                 1802  .db 0h72 ; 0h0735: normal track data
   5702 60                 1803  .db 0h60 ; 0h0736: vol off, no pitch, note, instrument
   5703 03                 1804  .db 0h03 ; 0h0737: instrument
   5704 5A                 1805  .db 0h5A ; 0h0738: normal track data
   5705 60                 1806  .db 0h60 ; 0h0739: vol off, no pitch, note, instrument
   5706 01                 1807  .db 0h01 ; 0h073A: instrument
   5707 B2                 1808  .db 0hB2 ; 0h073B: normal track data,  note: G#4
   5708 7F                 1809  .db 0h7F ; 0h073C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5709 08                 1810  .db 0h08 ; 0h073D: instrument
   570A 5A                 1811  .db 0h5A ; 0h073E: normal track data
   570B 61                 1812  .db 0h61 ; 0h073F: vol = 0hF (inverted), no pitch, no note, no instrument
   570C 01                 1813  .db 0h01 ; 0h0740: instrument
   570D 72                 1814  .db 0h72 ; 0h0741: normal track data
   570E 60                 1815  .db 0h60 ; 0h0742: vol off, no pitch, note, instrument
   570F 04                 1816  .db 0h04 ; 0h0743: instrument
   5710 B2                 1817  .db 0hB2 ; 0h0744: normal track data,  note: G#4
   5711 7F                 1818  .db 0h7F ; 0h0745: vol = 0h0 (inverted), no pitch, no note, no instrument
   5712 08                 1819  .db 0h08 ; 0h0746: instrument
   5713 5A                 1820  .db 0h5A ; 0h0747: normal track data
   5714 61                 1821  .db 0h61 ; 0h0748: vol = 0hF (inverted), no pitch, no note, no instrument
   5715 01                 1822  .db 0h01 ; 0h0749: instrument
   5716 72                 1823  .db 0h72 ; 0h074A: normal track data
   5717 60                 1824  .db 0h60 ; 0h074B: vol off, no pitch, note, instrument
   5718 03                 1825  .db 0h03 ; 0h074C: instrument
   5719 B8                 1826  .db 0hB8 ; 0h074D: normal track data,  note: B4
   571A 7F                 1827  .db 0h7F ; 0h074E: vol = 0h0 (inverted), no pitch, no note, no instrument
   571B 07                 1828  .db 0h07 ; 0h074F: instrument
   571C 5A                 1829  .db 0h5A ; 0h0750: normal track data
   571D 61                 1830  .db 0h61 ; 0h0751: vol = 0hF (inverted), no pitch, no note, no instrument
   571E 01                 1831  .db 0h01 ; 0h0752: instrument
   571F 72                 1832  .db 0h72 ; 0h0753: normal track data
   5720 60                 1833  .db 0h60 ; 0h0754: vol off, no pitch, note, instrument
   5721 03                 1834  .db 0h03 ; 0h0755: instrument
   5722 B8                 1835  .db 0hB8 ; 0h0756: normal track data,  note: B4
   5723 7F                 1836  .db 0h7F ; 0h0757: vol = 0h0 (inverted), no pitch, no note, no instrument
   5724 07                 1837  .db 0h07 ; 0h0758: instrument
   5725 72                 1838  .db 0h72 ; 0h0759: normal track data
   5726 61                 1839  .db 0h61 ; 0h075A: vol = 0hF (inverted), no pitch, no note, no instrument
   5727 04                 1840  .db 0h04 ; 0h075B: instrument
   5728 5A                 1841  .db 0h5A ; 0h075C: normal track data
   5729 60                 1842  .db 0h60 ; 0h075D: vol off, no pitch, note, instrument
   572A 01                 1843  .db 0h01 ; 0h075E: instrument
   572B B2                 1844  .db 0hB2 ; 0h075F: normal track data,  note: G#4
   572C 7F                 1845  .db 0h7F ; 0h0760: vol = 0h0 (inverted), no pitch, no note, no instrument
   572D 08                 1846  .db 0h08 ; 0h0761: instrument
   572E 5A                 1847  .db 0h5A ; 0h0762: normal track data
   572F 61                 1848  .db 0h61 ; 0h0763: vol = 0hF (inverted), no pitch, no note, no instrument
   5730 01                 1849  .db 0h01 ; 0h0764: instrument
   5731 72                 1850  .db 0h72 ; 0h0765: normal track data
   5732 60                 1851  .db 0h60 ; 0h0766: vol off, no pitch, note, instrument
   5733 03                 1852  .db 0h03 ; 0h0767: instrument
   5734 5A                 1853  .db 0h5A ; 0h0768: normal track data
   5735 60                 1854  .db 0h60 ; 0h0769: vol off, no pitch, note, instrument
   5736 01                 1855  .db 0h01 ; 0h076A: instrument
   5737 B8                 1856  .db 0hB8 ; 0h076B: normal track data,  note: B4
   5738 7F                 1857  .db 0h7F ; 0h076C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5739 08                 1858  .db 0h08 ; 0h076D: instrument
   573A 5A                 1859  .db 0h5A ; 0h076E: normal track data
   573B 61                 1860  .db 0h61 ; 0h076F: vol = 0hF (inverted), no pitch, no note, no instrument
   573C 01                 1861  .db 0h01 ; 0h0770: instrument
   573D 72                 1862  .db 0h72 ; 0h0771: normal track data
   573E 60                 1863  .db 0h60 ; 0h0772: vol off, no pitch, note, instrument
   573F 04                 1864  .db 0h04 ; 0h0773: instrument
   5740 B8                 1865  .db 0hB8 ; 0h0774: normal track data,  note: B4
   5741 7F                 1866  .db 0h7F ; 0h0775: vol = 0h0 (inverted), no pitch, no note, no instrument
   5742 08                 1867  .db 0h08 ; 0h0776: instrument
   5743 5A                 1868  .db 0h5A ; 0h0777: normal track data
   5744 61                 1869  .db 0h61 ; 0h0778: vol = 0hF (inverted), no pitch, no note, no instrument
   5745 01                 1870  .db 0h01 ; 0h0779: instrument
   5746 72                 1871  .db 0h72 ; 0h077A: normal track data
   5747 60                 1872  .db 0h60 ; 0h077B: vol off, no pitch, note, instrument
   5748 03                 1873  .db 0h03 ; 0h077C: instrument
   5749 B8                 1874  .db 0hB8 ; 0h077D: normal track data,  note: B4
   574A 7F                 1875  .db 0h7F ; 0h077E: vol = 0h0 (inverted), no pitch, no note, no instrument
   574B 08                 1876  .db 0h08 ; 0h077F: instrument
   574C 5A                 1877  .db 0h5A ; 0h0780: normal track data
   574D 61                 1878  .db 0h61 ; 0h0781: vol = 0hF (inverted), no pitch, no note, no instrument
   574E 01                 1879  .db 0h01 ; 0h0782: instrument
   574F 72                 1880  .db 0h72 ; 0h0783: normal track data
   5750 60                 1881  .db 0h60 ; 0h0784: vol off, no pitch, note, instrument
   5751 03                 1882  .db 0h03 ; 0h0785: instrument
   5752 B8                 1883  .db 0hB8 ; 0h0786: normal track data,  note: B4
   5753 7F                 1884  .db 0h7F ; 0h0787: vol = 0h0 (inverted), no pitch, no note, no instrument
   5754 09                 1885  .db 0h09 ; 0h0788: instrument
   5755 72                 1886  .db 0h72 ; 0h0789: normal track data
   5756 61                 1887  .db 0h61 ; 0h078A: vol = 0hF (inverted), no pitch, no note, no instrument
   5757 04                 1888  .db 0h04 ; 0h078B: instrument
   5758 5A                 1889  .db 0h5A ; 0h078C: normal track data
   5759 60                 1890  .db 0h60 ; 0h078D: vol off, no pitch, note, instrument
   575A 01                 1891  .db 0h01 ; 0h078E: instrument
   575B B8                 1892  .db 0hB8 ; 0h078F: normal track data,  note: B4
   575C 7F                 1893  .db 0h7F ; 0h0790: vol = 0h0 (inverted), no pitch, no note, no instrument
   575D 09                 1894  .db 0h09 ; 0h0791: instrument
   575E 5A                 1895  .db 0h5A ; 0h0792: normal track data
   575F 61                 1896  .db 0h61 ; 0h0793: vol = 0hF (inverted), no pitch, no note, no instrument
   5760 01                 1897  .db 0h01 ; 0h0794: instrument
   5761 72                 1898  .db 0h72 ; 0h0795: normal track data
   5762 60                 1899  .db 0h60 ; 0h0796: vol off, no pitch, note, instrument
   5763 03                 1900  .db 0h03 ; 0h0797: instrument
   5764 5A                 1901  .db 0h5A ; 0h0798: normal track data
   5765 60                 1902  .db 0h60 ; 0h0799: vol off, no pitch, note, instrument
   5766 01                 1903  .db 0h01 ; 0h079A: instrument
   5767 B8                 1904  .db 0hB8 ; 0h079B: normal track data,  note: B4
   5768 7F                 1905  .db 0h7F ; 0h079C: vol = 0h0 (inverted), no pitch, no note, no instrument
   5769 07                 1906  .db 0h07 ; 0h079D: instrument
   576A 5A                 1907  .db 0h5A ; 0h079E: normal track data
   576B 61                 1908  .db 0h61 ; 0h079F: vol = 0hF (inverted), no pitch, no note, no instrument
   576C 01                 1909  .db 0h01 ; 0h07A0: instrument
   576D 72                 1910  .db 0h72 ; 0h07A1: normal track data
   576E 60                 1911  .db 0h60 ; 0h07A2: vol off, no pitch, note, instrument
   576F 04                 1912  .db 0h04 ; 0h07A3: instrument
   5770 B8                 1913  .db 0hB8 ; 0h07A4: normal track data,  note: B4
   5771 7F                 1914  .db 0h7F ; 0h07A5: vol = 0h0 (inverted), no pitch, no note, no instrument
   5772 07                 1915  .db 0h07 ; 0h07A6: instrument
   5773 5A                 1916  .db 0h5A ; 0h07A7: normal track data
   5774 61                 1917  .db 0h61 ; 0h07A8: vol = 0hF (inverted), no pitch, no note, no instrument
   5775 01                 1918  .db 0h01 ; 0h07A9: instrument
   5776 72                 1919  .db 0h72 ; 0h07AA: normal track data
   5777 60                 1920  .db 0h60 ; 0h07AB: vol off, no pitch, note, instrument
   5778 03                 1921  .db 0h03 ; 0h07AC: instrument
   5779 B8                 1922  .db 0hB8 ; 0h07AD: normal track data,  note: B4
   577A 7F                 1923  .db 0h7F ; 0h07AE: vol = 0h0 (inverted), no pitch, no note, no instrument
   577B 07                 1924  .db 0h07 ; 0h07AF: instrument
   577C 5A                 1925  .db 0h5A ; 0h07B0: normal track data
   577D 61                 1926  .db 0h61 ; 0h07B1: vol = 0hF (inverted), no pitch, no note, no instrument
   577E 01                 1927  .db 0h01 ; 0h07B2: instrument
   577F 00                 1928  .db 0h00 ; 0h07B3: track end signature found
   5780                    1929 trackDef17Test:
   5780 92                 1930  .db 0h92 ; 0h07B4: normal track data
   5781 E1                 1931  .db 0hE1 ; 0h07B5: vol = 0hF (inverted), no pitch, no note, no instrument
   5782 00 00              1932  .dw 0h0000 ; 0h07B6: pitch
   5784 02                 1933  .db 0h02 ; 0h07B8: instrument
   5785 C2                 1934  .db 0hC2 ; 0h07B9: normal track data
   5786 49                 1935  .db 0h49 ; 0h07BA: vol = 0hB (inverted), no pitch, no note, no instrument
   5787 92                 1936  .db 0h92 ; 0h07BB: normal track data
   5788 41                 1937  .db 0h41 ; 0h07BC: vol = 0hF (inverted), no pitch, no note, no instrument
   5789 C2                 1938  .db 0hC2 ; 0h07BD: normal track data
   578A 49                 1939  .db 0h49 ; 0h07BE: vol = 0hB (inverted), no pitch, no note, no instrument
   578B AA                 1940  .db 0hAA ; 0h07BF: normal track data
   578C 41                 1941  .db 0h41 ; 0h07C0: vol = 0hF (inverted), no pitch, no note, no instrument
   578D AC                 1942  .db 0hAC ; 0h07C1: normal track data
   578E 40                 1943  .db 0h40 ; 0h07C2: vol off, no pitch, note, no instrument
   578F B0                 1944  .db 0hB0 ; 0h07C3: normal track data
   5790 40                 1945  .db 0h40 ; 0h07C4: vol off, no pitch, note, no instrument
   5791 B4                 1946  .db 0hB4 ; 0h07C5: normal track data
   5792 40                 1947  .db 0h40 ; 0h07C6: vol off, no pitch, note, no instrument
   5793 92                 1948  .db 0h92 ; 0h07C7: normal track data
   5794 40                 1949  .db 0h40 ; 0h07C8: vol off, no pitch, note, no instrument
   5795 C2                 1950  .db 0hC2 ; 0h07C9: normal track data
   5796 49                 1951  .db 0h49 ; 0h07CA: vol = 0hB (inverted), no pitch, no note, no instrument
   5797 92                 1952  .db 0h92 ; 0h07CB: normal track data
   5798 41                 1953  .db 0h41 ; 0h07CC: vol = 0hF (inverted), no pitch, no note, no instrument
   5799 C2                 1954  .db 0hC2 ; 0h07CD: normal track data
   579A 49                 1955  .db 0h49 ; 0h07CE: vol = 0hB (inverted), no pitch, no note, no instrument
   579B AA                 1956  .db 0hAA ; 0h07CF: normal track data
   579C 41                 1957  .db 0h41 ; 0h07D0: vol = 0hF (inverted), no pitch, no note, no instrument
   579D C2                 1958  .db 0hC2 ; 0h07D1: normal track data
   579E 49                 1959  .db 0h49 ; 0h07D2: vol = 0hB (inverted), no pitch, no note, no instrument
   579F AA                 1960  .db 0hAA ; 0h07D3: normal track data
   57A0 41                 1961  .db 0h41 ; 0h07D4: vol = 0hF (inverted), no pitch, no note, no instrument
   57A1 C2                 1962  .db 0hC2 ; 0h07D5: normal track data
   57A2 49                 1963  .db 0h49 ; 0h07D6: vol = 0hB (inverted), no pitch, no note, no instrument
   57A3 92                 1964  .db 0h92 ; 0h07D7: normal track data
   57A4 41                 1965  .db 0h41 ; 0h07D8: vol = 0hF (inverted), no pitch, no note, no instrument
   57A5 C2                 1966  .db 0hC2 ; 0h07D9: normal track data
   57A6 49                 1967  .db 0h49 ; 0h07DA: vol = 0hB (inverted), no pitch, no note, no instrument
   57A7 92                 1968  .db 0h92 ; 0h07DB: normal track data
   57A8 41                 1969  .db 0h41 ; 0h07DC: vol = 0hF (inverted), no pitch, no note, no instrument
   57A9 C2                 1970  .db 0hC2 ; 0h07DD: normal track data
   57AA 49                 1971  .db 0h49 ; 0h07DE: vol = 0hB (inverted), no pitch, no note, no instrument
   57AB 94                 1972  .db 0h94 ; 0h07DF: normal track data
   57AC 41                 1973  .db 0h41 ; 0h07E0: vol = 0hF (inverted), no pitch, no note, no instrument
   57AD C4                 1974  .db 0hC4 ; 0h07E1: normal track data
   57AE 49                 1975  .db 0h49 ; 0h07E2: vol = 0hB (inverted), no pitch, no note, no instrument
   57AF 94                 1976  .db 0h94 ; 0h07E3: normal track data
   57B0 41                 1977  .db 0h41 ; 0h07E4: vol = 0hF (inverted), no pitch, no note, no instrument
   57B1 C4                 1978  .db 0hC4 ; 0h07E5: normal track data
   57B2 49                 1979  .db 0h49 ; 0h07E6: vol = 0hB (inverted), no pitch, no note, no instrument
   57B3 92                 1980  .db 0h92 ; 0h07E7: normal track data
   57B4 41                 1981  .db 0h41 ; 0h07E8: vol = 0hF (inverted), no pitch, no note, no instrument
   57B5 C2                 1982  .db 0hC2 ; 0h07E9: normal track data
   57B6 49                 1983  .db 0h49 ; 0h07EA: vol = 0hB (inverted), no pitch, no note, no instrument
   57B7 92                 1984  .db 0h92 ; 0h07EB: normal track data
   57B8 41                 1985  .db 0h41 ; 0h07EC: vol = 0hF (inverted), no pitch, no note, no instrument
   57B9 C2                 1986  .db 0hC2 ; 0h07ED: normal track data
   57BA 49                 1987  .db 0h49 ; 0h07EE: vol = 0hB (inverted), no pitch, no note, no instrument
   57BB AA                 1988  .db 0hAA ; 0h07EF: normal track data
   57BC 41                 1989  .db 0h41 ; 0h07F0: vol = 0hF (inverted), no pitch, no note, no instrument
   57BD C2                 1990  .db 0hC2 ; 0h07F1: normal track data
   57BE 49                 1991  .db 0h49 ; 0h07F2: vol = 0hB (inverted), no pitch, no note, no instrument
   57BF AA                 1992  .db 0hAA ; 0h07F3: normal track data
   57C0 41                 1993  .db 0h41 ; 0h07F4: vol = 0hF (inverted), no pitch, no note, no instrument
   57C1 C2                 1994  .db 0hC2 ; 0h07F5: normal track data
   57C2 49                 1995  .db 0h49 ; 0h07F6: vol = 0hB (inverted), no pitch, no note, no instrument
   57C3 92                 1996  .db 0h92 ; 0h07F7: normal track data
   57C4 41                 1997  .db 0h41 ; 0h07F8: vol = 0hF (inverted), no pitch, no note, no instrument
   57C5 C2                 1998  .db 0hC2 ; 0h07F9: normal track data
   57C6 49                 1999  .db 0h49 ; 0h07FA: vol = 0hB (inverted), no pitch, no note, no instrument
   57C7 92                 2000  .db 0h92 ; 0h07FB: normal track data
   57C8 41                 2001  .db 0h41 ; 0h07FC: vol = 0hF (inverted), no pitch, no note, no instrument
   57C9 C2                 2002  .db 0hC2 ; 0h07FD: normal track data
   57CA 49                 2003  .db 0h49 ; 0h07FE: vol = 0hB (inverted), no pitch, no note, no instrument
   57CB AA                 2004  .db 0hAA ; 0h07FF: normal track data
   57CC 41                 2005  .db 0h41 ; 0h0800: vol = 0hF (inverted), no pitch, no note, no instrument
   57CD AC                 2006  .db 0hAC ; 0h0801: normal track data
   57CE 40                 2007  .db 0h40 ; 0h0802: vol off, no pitch, note, no instrument
   57CF B0                 2008  .db 0hB0 ; 0h0803: normal track data
   57D0 40                 2009  .db 0h40 ; 0h0804: vol off, no pitch, note, no instrument
   57D1 B4                 2010  .db 0hB4 ; 0h0805: normal track data
   57D2 40                 2011  .db 0h40 ; 0h0806: vol off, no pitch, note, no instrument
   57D3 92                 2012  .db 0h92 ; 0h0807: normal track data
   57D4 40                 2013  .db 0h40 ; 0h0808: vol off, no pitch, note, no instrument
   57D5 C2                 2014  .db 0hC2 ; 0h0809: normal track data
   57D6 49                 2015  .db 0h49 ; 0h080A: vol = 0hB (inverted), no pitch, no note, no instrument
   57D7 92                 2016  .db 0h92 ; 0h080B: normal track data
   57D8 41                 2017  .db 0h41 ; 0h080C: vol = 0hF (inverted), no pitch, no note, no instrument
   57D9 C2                 2018  .db 0hC2 ; 0h080D: normal track data
   57DA 49                 2019  .db 0h49 ; 0h080E: vol = 0hB (inverted), no pitch, no note, no instrument
   57DB AA                 2020  .db 0hAA ; 0h080F: normal track data
   57DC 41                 2021  .db 0h41 ; 0h0810: vol = 0hF (inverted), no pitch, no note, no instrument
   57DD C2                 2022  .db 0hC2 ; 0h0811: normal track data
   57DE 49                 2023  .db 0h49 ; 0h0812: vol = 0hB (inverted), no pitch, no note, no instrument
   57DF AA                 2024  .db 0hAA ; 0h0813: normal track data
   57E0 41                 2025  .db 0h41 ; 0h0814: vol = 0hF (inverted), no pitch, no note, no instrument
   57E1 C2                 2026  .db 0hC2 ; 0h0815: normal track data
   57E2 49                 2027  .db 0h49 ; 0h0816: vol = 0hB (inverted), no pitch, no note, no instrument
   57E3 92                 2028  .db 0h92 ; 0h0817: normal track data
   57E4 41                 2029  .db 0h41 ; 0h0818: vol = 0hF (inverted), no pitch, no note, no instrument
   57E5 C2                 2030  .db 0hC2 ; 0h0819: normal track data
   57E6 49                 2031  .db 0h49 ; 0h081A: vol = 0hB (inverted), no pitch, no note, no instrument
   57E7 92                 2032  .db 0h92 ; 0h081B: normal track data
   57E8 41                 2033  .db 0h41 ; 0h081C: vol = 0hF (inverted), no pitch, no note, no instrument
   57E9 C2                 2034  .db 0hC2 ; 0h081D: normal track data
   57EA 49                 2035  .db 0h49 ; 0h081E: vol = 0hB (inverted), no pitch, no note, no instrument
   57EB 94                 2036  .db 0h94 ; 0h081F: normal track data
   57EC 41                 2037  .db 0h41 ; 0h0820: vol = 0hF (inverted), no pitch, no note, no instrument
   57ED C4                 2038  .db 0hC4 ; 0h0821: normal track data
   57EE 49                 2039  .db 0h49 ; 0h0822: vol = 0hB (inverted), no pitch, no note, no instrument
   57EF 94                 2040  .db 0h94 ; 0h0823: normal track data
   57F0 41                 2041  .db 0h41 ; 0h0824: vol = 0hF (inverted), no pitch, no note, no instrument
   57F1 C4                 2042  .db 0hC4 ; 0h0825: normal track data
   57F2 49                 2043  .db 0h49 ; 0h0826: vol = 0hB (inverted), no pitch, no note, no instrument
   57F3 92                 2044  .db 0h92 ; 0h0827: normal track data
   57F4 41                 2045  .db 0h41 ; 0h0828: vol = 0hF (inverted), no pitch, no note, no instrument
   57F5 5A                 2046  .db 0h5A ; 0h0829: normal track data
   57F6 60                 2047  .db 0h60 ; 0h082A: vol off, no pitch, note, instrument
   57F7 01                 2048  .db 0h01 ; 0h082B: instrument
   57F8 00                 2049  .db 0h00 ; 0h082C: track end signature found
   57F9                    2050 trackDef19Test:
   57F9 92                 2051  .db 0h92 ; 0h082D: normal track data
   57FA F3                 2052  .db 0hF3 ; 0h082E: vol = 0h6 (inverted), no pitch, no note, no instrument
   57FB 00 00              2053  .dw 0h0000 ; 0h082F: pitch
   57FD 05                 2054  .db 0h05 ; 0h0831: instrument
   57FE AA                 2055  .db 0hAA ; 0h0832: normal track data
   57FF 40                 2056  .db 0h40 ; 0h0833: vol off, no pitch, note, no instrument
   5800 AA                 2057  .db 0hAA ; 0h0834: normal track data
   5801 40                 2058  .db 0h40 ; 0h0835: vol off, no pitch, note, no instrument
   5802 92                 2059  .db 0h92 ; 0h0836: normal track data
   5803 40                 2060  .db 0h40 ; 0h0837: vol off, no pitch, note, no instrument
   5804 92                 2061  .db 0h92 ; 0h0838: normal track data
   5805 40                 2062  .db 0h40 ; 0h0839: vol off, no pitch, note, no instrument
   5806 94                 2063  .db 0h94 ; 0h083A: normal track data
   5807 40                 2064  .db 0h40 ; 0h083B: vol off, no pitch, note, no instrument
   5808 98                 2065  .db 0h98 ; 0h083C: normal track data
   5809 40                 2066  .db 0h40 ; 0h083D: vol off, no pitch, note, no instrument
   580A 9C                 2067  .db 0h9C ; 0h083E: normal track data
   580B 40                 2068  .db 0h40 ; 0h083F: vol off, no pitch, note, no instrument
   580C 92                 2069  .db 0h92 ; 0h0840: normal track data
   580D 40                 2070  .db 0h40 ; 0h0841: vol off, no pitch, note, no instrument
   580E AA                 2071  .db 0hAA ; 0h0842: normal track data
   580F 40                 2072  .db 0h40 ; 0h0843: vol off, no pitch, note, no instrument
   5810 08                 2073  .db 0h08 ; 0h0844: normal track data,  wait 3
   5811 AA                 2074  .db 0hAA ; 0h0845: normal track data
   5812 40                 2075  .db 0h40 ; 0h0846: vol off, no pitch, note, no instrument
   5813 92                 2076  .db 0h92 ; 0h0847: normal track data
   5814 40                 2077  .db 0h40 ; 0h0848: vol off, no pitch, note, no instrument
   5815 92                 2078  .db 0h92 ; 0h0849: normal track data
   5816 40                 2079  .db 0h40 ; 0h084A: vol off, no pitch, note, no instrument
   5817 AA                 2080  .db 0hAA ; 0h084B: normal track data
   5818 40                 2081  .db 0h40 ; 0h084C: vol off, no pitch, note, no instrument
   5819 AA                 2082  .db 0hAA ; 0h084D: normal track data
   581A 40                 2083  .db 0h40 ; 0h084E: vol off, no pitch, note, no instrument
   581B 92                 2084  .db 0h92 ; 0h084F: normal track data
   581C 40                 2085  .db 0h40 ; 0h0850: vol off, no pitch, note, no instrument
   581D 94                 2086  .db 0h94 ; 0h0851: normal track data
   581E 40                 2087  .db 0h40 ; 0h0852: vol off, no pitch, note, no instrument
   581F AC                 2088  .db 0hAC ; 0h0853: normal track data
   5820 40                 2089  .db 0h40 ; 0h0854: vol off, no pitch, note, no instrument
   5821 AC                 2090  .db 0hAC ; 0h0855: normal track data
   5822 40                 2091  .db 0h40 ; 0h0856: vol off, no pitch, note, no instrument
   5823 94                 2092  .db 0h94 ; 0h0857: normal track data
   5824 40                 2093  .db 0h40 ; 0h0858: vol off, no pitch, note, no instrument
   5825 92                 2094  .db 0h92 ; 0h0859: normal track data
   5826 40                 2095  .db 0h40 ; 0h085A: vol off, no pitch, note, no instrument
   5827 AA                 2096  .db 0hAA ; 0h085B: normal track data
   5828 40                 2097  .db 0h40 ; 0h085C: vol off, no pitch, note, no instrument
   5829 08                 2098  .db 0h08 ; 0h085D: normal track data,  wait 3
   582A AA                 2099  .db 0hAA ; 0h085E: normal track data
   582B 40                 2100  .db 0h40 ; 0h085F: vol off, no pitch, note, no instrument
   582C 92                 2101  .db 0h92 ; 0h0860: normal track data
   582D 40                 2102  .db 0h40 ; 0h0861: vol off, no pitch, note, no instrument
   582E 92                 2103  .db 0h92 ; 0h0862: normal track data
   582F 40                 2104  .db 0h40 ; 0h0863: vol off, no pitch, note, no instrument
   5830 AA                 2105  .db 0hAA ; 0h0864: normal track data
   5831 40                 2106  .db 0h40 ; 0h0865: vol off, no pitch, note, no instrument
   5832 AA                 2107  .db 0hAA ; 0h0866: normal track data
   5833 40                 2108  .db 0h40 ; 0h0867: vol off, no pitch, note, no instrument
   5834 92                 2109  .db 0h92 ; 0h0868: normal track data
   5835 40                 2110  .db 0h40 ; 0h0869: vol off, no pitch, note, no instrument
   5836 92                 2111  .db 0h92 ; 0h086A: normal track data
   5837 40                 2112  .db 0h40 ; 0h086B: vol off, no pitch, note, no instrument
   5838 94                 2113  .db 0h94 ; 0h086C: normal track data
   5839 40                 2114  .db 0h40 ; 0h086D: vol off, no pitch, note, no instrument
   583A 98                 2115  .db 0h98 ; 0h086E: normal track data
   583B 40                 2116  .db 0h40 ; 0h086F: vol off, no pitch, note, no instrument
   583C 9C                 2117  .db 0h9C ; 0h0870: normal track data
   583D 40                 2118  .db 0h40 ; 0h0871: vol off, no pitch, note, no instrument
   583E 92                 2119  .db 0h92 ; 0h0872: normal track data
   583F 40                 2120  .db 0h40 ; 0h0873: vol off, no pitch, note, no instrument
   5840 AA                 2121  .db 0hAA ; 0h0874: normal track data
   5841 40                 2122  .db 0h40 ; 0h0875: vol off, no pitch, note, no instrument
   5842 08                 2123  .db 0h08 ; 0h0876: normal track data,  wait 3
   5843 AA                 2124  .db 0hAA ; 0h0877: normal track data
   5844 40                 2125  .db 0h40 ; 0h0878: vol off, no pitch, note, no instrument
   5845 92                 2126  .db 0h92 ; 0h0879: normal track data
   5846 40                 2127  .db 0h40 ; 0h087A: vol off, no pitch, note, no instrument
   5847 92                 2128  .db 0h92 ; 0h087B: normal track data
   5848 40                 2129  .db 0h40 ; 0h087C: vol off, no pitch, note, no instrument
   5849 AA                 2130  .db 0hAA ; 0h087D: normal track data
   584A 40                 2131  .db 0h40 ; 0h087E: vol off, no pitch, note, no instrument
   584B AA                 2132  .db 0hAA ; 0h087F: normal track data
   584C 40                 2133  .db 0h40 ; 0h0880: vol off, no pitch, note, no instrument
   584D 92                 2134  .db 0h92 ; 0h0881: normal track data
   584E 40                 2135  .db 0h40 ; 0h0882: vol off, no pitch, note, no instrument
   584F 94                 2136  .db 0h94 ; 0h0883: normal track data
   5850 40                 2137  .db 0h40 ; 0h0884: vol off, no pitch, note, no instrument
   5851 AC                 2138  .db 0hAC ; 0h0885: normal track data
   5852 40                 2139  .db 0h40 ; 0h0886: vol off, no pitch, note, no instrument
   5853 AC                 2140  .db 0hAC ; 0h0887: normal track data
   5854 40                 2141  .db 0h40 ; 0h0888: vol off, no pitch, note, no instrument
   5855 94                 2142  .db 0h94 ; 0h0889: normal track data
   5856 40                 2143  .db 0h40 ; 0h088A: vol off, no pitch, note, no instrument
   5857 92                 2144  .db 0h92 ; 0h088B: normal track data
   5858 40                 2145  .db 0h40 ; 0h088C: vol off, no pitch, note, no instrument
   5859 5A                 2146  .db 0h5A ; 0h088D: normal track data
   585A 61                 2147  .db 0h61 ; 0h088E: vol = 0hF (inverted), no pitch, no note, no instrument
   585B 01                 2148  .db 0h01 ; 0h088F: instrument
   585C 08                 2149  .db 0h08 ; 0h0890: normal track data,  wait 3
   585D 42                 2150  .db 0h42 ; 0h0891: normal track data
   585E 00                 2151  .db 0h00 ; 0h0892: vol off, no pitch, no note, no instrument
   585F 42                 2152  .db 0h42 ; 0h0893: normal track data
   5860 00                 2153  .db 0h00 ; 0h0894: vol off, no pitch, no note, no instrument
   5861                    2154 trackDef20Test:
   5861 AA                 2155  .db 0hAA ; 0h0895: normal track data
   5862 E1                 2156  .db 0hE1 ; 0h0896: vol = 0hF (inverted), no pitch, no note, no instrument
   5863 00 00              2157  .dw 0h0000 ; 0h0897: pitch
   5865 02                 2158  .db 0h02 ; 0h0899: instrument
   5866 DA                 2159  .db 0hDA ; 0h089A: normal track data
   5867 49                 2160  .db 0h49 ; 0h089B: vol = 0hB (inverted), no pitch, no note, no instrument
   5868 AA                 2161  .db 0hAA ; 0h089C: normal track data
   5869 41                 2162  .db 0h41 ; 0h089D: vol = 0hF (inverted), no pitch, no note, no instrument
   586A DA                 2163  .db 0hDA ; 0h089E: normal track data
   586B 49                 2164  .db 0h49 ; 0h089F: vol = 0hB (inverted), no pitch, no note, no instrument
   586C C2                 2165  .db 0hC2 ; 0h08A0: normal track data
   586D 41                 2166  .db 0h41 ; 0h08A1: vol = 0hF (inverted), no pitch, no note, no instrument
   586E C4                 2167  .db 0hC4 ; 0h08A2: normal track data
   586F 40                 2168  .db 0h40 ; 0h08A3: vol off, no pitch, note, no instrument
   5870 C8                 2169  .db 0hC8 ; 0h08A4: normal track data
   5871 40                 2170  .db 0h40 ; 0h08A5: vol off, no pitch, note, no instrument
   5872 CC                 2171  .db 0hCC ; 0h08A6: normal track data
   5873 40                 2172  .db 0h40 ; 0h08A7: vol off, no pitch, note, no instrument
   5874 AA                 2173  .db 0hAA ; 0h08A8: normal track data
   5875 40                 2174  .db 0h40 ; 0h08A9: vol off, no pitch, note, no instrument
   5876 DA                 2175  .db 0hDA ; 0h08AA: normal track data
   5877 49                 2176  .db 0h49 ; 0h08AB: vol = 0hB (inverted), no pitch, no note, no instrument
   5878 AA                 2177  .db 0hAA ; 0h08AC: normal track data
   5879 41                 2178  .db 0h41 ; 0h08AD: vol = 0hF (inverted), no pitch, no note, no instrument
   587A DA                 2179  .db 0hDA ; 0h08AE: normal track data
   587B 49                 2180  .db 0h49 ; 0h08AF: vol = 0hB (inverted), no pitch, no note, no instrument
   587C C2                 2181  .db 0hC2 ; 0h08B0: normal track data
   587D 41                 2182  .db 0h41 ; 0h08B1: vol = 0hF (inverted), no pitch, no note, no instrument
   587E DA                 2183  .db 0hDA ; 0h08B2: normal track data
   587F 49                 2184  .db 0h49 ; 0h08B3: vol = 0hB (inverted), no pitch, no note, no instrument
   5880 C2                 2185  .db 0hC2 ; 0h08B4: normal track data
   5881 41                 2186  .db 0h41 ; 0h08B5: vol = 0hF (inverted), no pitch, no note, no instrument
   5882 DA                 2187  .db 0hDA ; 0h08B6: normal track data
   5883 49                 2188  .db 0h49 ; 0h08B7: vol = 0hB (inverted), no pitch, no note, no instrument
   5884 AA                 2189  .db 0hAA ; 0h08B8: normal track data
   5885 41                 2190  .db 0h41 ; 0h08B9: vol = 0hF (inverted), no pitch, no note, no instrument
   5886 DA                 2191  .db 0hDA ; 0h08BA: normal track data
   5887 49                 2192  .db 0h49 ; 0h08BB: vol = 0hB (inverted), no pitch, no note, no instrument
   5888 AA                 2193  .db 0hAA ; 0h08BC: normal track data
   5889 41                 2194  .db 0h41 ; 0h08BD: vol = 0hF (inverted), no pitch, no note, no instrument
   588A DA                 2195  .db 0hDA ; 0h08BE: normal track data
   588B 49                 2196  .db 0h49 ; 0h08BF: vol = 0hB (inverted), no pitch, no note, no instrument
   588C AC                 2197  .db 0hAC ; 0h08C0: normal track data
   588D 41                 2198  .db 0h41 ; 0h08C1: vol = 0hF (inverted), no pitch, no note, no instrument
   588E DC                 2199  .db 0hDC ; 0h08C2: normal track data
   588F 49                 2200  .db 0h49 ; 0h08C3: vol = 0hB (inverted), no pitch, no note, no instrument
   5890 AC                 2201  .db 0hAC ; 0h08C4: normal track data
   5891 41                 2202  .db 0h41 ; 0h08C5: vol = 0hF (inverted), no pitch, no note, no instrument
   5892 DC                 2203  .db 0hDC ; 0h08C6: normal track data
   5893 49                 2204  .db 0h49 ; 0h08C7: vol = 0hB (inverted), no pitch, no note, no instrument
   5894 AA                 2205  .db 0hAA ; 0h08C8: normal track data
   5895 41                 2206  .db 0h41 ; 0h08C9: vol = 0hF (inverted), no pitch, no note, no instrument
   5896 DA                 2207  .db 0hDA ; 0h08CA: normal track data
   5897 49                 2208  .db 0h49 ; 0h08CB: vol = 0hB (inverted), no pitch, no note, no instrument
   5898 AA                 2209  .db 0hAA ; 0h08CC: normal track data
   5899 41                 2210  .db 0h41 ; 0h08CD: vol = 0hF (inverted), no pitch, no note, no instrument
   589A DA                 2211  .db 0hDA ; 0h08CE: normal track data
   589B 49                 2212  .db 0h49 ; 0h08CF: vol = 0hB (inverted), no pitch, no note, no instrument
   589C C2                 2213  .db 0hC2 ; 0h08D0: normal track data
   589D 41                 2214  .db 0h41 ; 0h08D1: vol = 0hF (inverted), no pitch, no note, no instrument
   589E DA                 2215  .db 0hDA ; 0h08D2: normal track data
   589F 49                 2216  .db 0h49 ; 0h08D3: vol = 0hB (inverted), no pitch, no note, no instrument
   58A0 C2                 2217  .db 0hC2 ; 0h08D4: normal track data
   58A1 41                 2218  .db 0h41 ; 0h08D5: vol = 0hF (inverted), no pitch, no note, no instrument
   58A2 DA                 2219  .db 0hDA ; 0h08D6: normal track data
   58A3 49                 2220  .db 0h49 ; 0h08D7: vol = 0hB (inverted), no pitch, no note, no instrument
   58A4 AA                 2221  .db 0hAA ; 0h08D8: normal track data
   58A5 41                 2222  .db 0h41 ; 0h08D9: vol = 0hF (inverted), no pitch, no note, no instrument
   58A6 DA                 2223  .db 0hDA ; 0h08DA: normal track data
   58A7 49                 2224  .db 0h49 ; 0h08DB: vol = 0hB (inverted), no pitch, no note, no instrument
   58A8 AA                 2225  .db 0hAA ; 0h08DC: normal track data
   58A9 41                 2226  .db 0h41 ; 0h08DD: vol = 0hF (inverted), no pitch, no note, no instrument
   58AA DA                 2227  .db 0hDA ; 0h08DE: normal track data
   58AB 49                 2228  .db 0h49 ; 0h08DF: vol = 0hB (inverted), no pitch, no note, no instrument
   58AC C2                 2229  .db 0hC2 ; 0h08E0: normal track data
   58AD 41                 2230  .db 0h41 ; 0h08E1: vol = 0hF (inverted), no pitch, no note, no instrument
   58AE C4                 2231  .db 0hC4 ; 0h08E2: normal track data
   58AF 40                 2232  .db 0h40 ; 0h08E3: vol off, no pitch, note, no instrument
   58B0 C8                 2233  .db 0hC8 ; 0h08E4: normal track data
   58B1 40                 2234  .db 0h40 ; 0h08E5: vol off, no pitch, note, no instrument
   58B2 CC                 2235  .db 0hCC ; 0h08E6: normal track data
   58B3 40                 2236  .db 0h40 ; 0h08E7: vol off, no pitch, note, no instrument
   58B4 AA                 2237  .db 0hAA ; 0h08E8: normal track data
   58B5 40                 2238  .db 0h40 ; 0h08E9: vol off, no pitch, note, no instrument
   58B6 DA                 2239  .db 0hDA ; 0h08EA: normal track data
   58B7 49                 2240  .db 0h49 ; 0h08EB: vol = 0hB (inverted), no pitch, no note, no instrument
   58B8 AA                 2241  .db 0hAA ; 0h08EC: normal track data
   58B9 41                 2242  .db 0h41 ; 0h08ED: vol = 0hF (inverted), no pitch, no note, no instrument
   58BA DA                 2243  .db 0hDA ; 0h08EE: normal track data
   58BB 49                 2244  .db 0h49 ; 0h08EF: vol = 0hB (inverted), no pitch, no note, no instrument
   58BC C2                 2245  .db 0hC2 ; 0h08F0: normal track data
   58BD 41                 2246  .db 0h41 ; 0h08F1: vol = 0hF (inverted), no pitch, no note, no instrument
   58BE DA                 2247  .db 0hDA ; 0h08F2: normal track data
   58BF 49                 2248  .db 0h49 ; 0h08F3: vol = 0hB (inverted), no pitch, no note, no instrument
   58C0 C2                 2249  .db 0hC2 ; 0h08F4: normal track data
   58C1 41                 2250  .db 0h41 ; 0h08F5: vol = 0hF (inverted), no pitch, no note, no instrument
   58C2 DA                 2251  .db 0hDA ; 0h08F6: normal track data
   58C3 49                 2252  .db 0h49 ; 0h08F7: vol = 0hB (inverted), no pitch, no note, no instrument
   58C4 AA                 2253  .db 0hAA ; 0h08F8: normal track data
   58C5 41                 2254  .db 0h41 ; 0h08F9: vol = 0hF (inverted), no pitch, no note, no instrument
   58C6 DA                 2255  .db 0hDA ; 0h08FA: normal track data
   58C7 49                 2256  .db 0h49 ; 0h08FB: vol = 0hB (inverted), no pitch, no note, no instrument
   58C8 AA                 2257  .db 0hAA ; 0h08FC: normal track data
   58C9 41                 2258  .db 0h41 ; 0h08FD: vol = 0hF (inverted), no pitch, no note, no instrument
   58CA 02                 2259  .db 0h02 ; 0h08FE: normal track data,  wait 0
   58CB AC                 2260  .db 0hAC ; 0h08FF: normal track data
   58CC 40                 2261  .db 0h40 ; 0h0900: vol off, no pitch, note, no instrument
   58CD DC                 2262  .db 0hDC ; 0h0901: normal track data
   58CE 49                 2263  .db 0h49 ; 0h0902: vol = 0hB (inverted), no pitch, no note, no instrument
   58CF AC                 2264  .db 0hAC ; 0h0903: normal track data
   58D0 41                 2265  .db 0h41 ; 0h0904: vol = 0hF (inverted), no pitch, no note, no instrument
   58D1 02                 2266  .db 0h02 ; 0h0905: normal track data,  wait 0
   58D2 AA                 2267  .db 0hAA ; 0h0906: normal track data
   58D3 C0                 2268  .db 0hC0 ; 0h0907: vol off, pitch, note, no instrument
   58D4 00 20              2269  .dw 0h0020 ; 0h0908: pitch
   58D6 DA                 2270  .db 0hDA ; 0h090A: normal track data
   58D7 49                 2271  .db 0h49 ; 0h090B: vol = 0hB (inverted), no pitch, no note, no instrument
   58D8 AA                 2272  .db 0hAA ; 0h090C: normal track data
   58D9 41                 2273  .db 0h41 ; 0h090D: vol = 0hF (inverted), no pitch, no note, no instrument
   58DA 42                 2274  .db 0h42 ; 0h090E: normal track data
   58DB 00                 2275  .db 0h00 ; 0h090F: vol off, no pitch, no note, no instrument
   58DC C2                 2276  .db 0hC2 ; 0h0910: normal track data
   58DD C9                 2277  .db 0hC9 ; 0h0911: vol = 0hB (inverted), no pitch, no note, no instrument
   58DE 00 00              2278  .dw 0h0000 ; 0h0912: pitch
   58E0 DA                 2279  .db 0hDA ; 0h0914: normal track data
   58E1 41                 2280  .db 0h41 ; 0h0915: vol = 0hF (inverted), no pitch, no note, no instrument
   58E2 C2                 2281  .db 0hC2 ; 0h0916: normal track data
   58E3 49                 2282  .db 0h49 ; 0h0917: vol = 0hB (inverted), no pitch, no note, no instrument
   58E4 00                 2283  .db 0h00 ; 0h0918: track end signature found
   58E5                    2284 trackDef21Test:
   58E5 72                 2285  .db 0h72 ; 0h0919: normal track data
   58E6 E1                 2286  .db 0hE1 ; 0h091A: vol = 0hF (inverted), no pitch, no note, no instrument
   58E7 00 00              2287  .dw 0h0000 ; 0h091B: pitch
   58E9 03                 2288  .db 0h03 ; 0h091D: instrument
   58EA 72                 2289  .db 0h72 ; 0h091E: normal track data
   58EB 40                 2290  .db 0h40 ; 0h091F: vol off, no pitch, note, no instrument
   58EC 72                 2291  .db 0h72 ; 0h0920: normal track data
   58ED 40                 2292  .db 0h40 ; 0h0921: vol off, no pitch, note, no instrument
   58EE 98                 2293  .db 0h98 ; 0h0922: normal track data
   58EF 60                 2294  .db 0h60 ; 0h0923: vol off, no pitch, note, instrument
   58F0 01                 2295  .db 0h01 ; 0h0924: instrument
   58F1 72                 2296  .db 0h72 ; 0h0925: normal track data
   58F2 60                 2297  .db 0h60 ; 0h0926: vol off, no pitch, note, instrument
   58F3 04                 2298  .db 0h04 ; 0h0927: instrument
   58F4 98                 2299  .db 0h98 ; 0h0928: normal track data
   58F5 60                 2300  .db 0h60 ; 0h0929: vol off, no pitch, note, instrument
   58F6 01                 2301  .db 0h01 ; 0h092A: instrument
   58F7 72                 2302  .db 0h72 ; 0h092B: normal track data
   58F8 60                 2303  .db 0h60 ; 0h092C: vol off, no pitch, note, instrument
   58F9 03                 2304  .db 0h03 ; 0h092D: instrument
   58FA 98                 2305  .db 0h98 ; 0h092E: normal track data
   58FB 60                 2306  .db 0h60 ; 0h092F: vol off, no pitch, note, instrument
   58FC 01                 2307  .db 0h01 ; 0h0930: instrument
   58FD 72                 2308  .db 0h72 ; 0h0931: normal track data
   58FE 60                 2309  .db 0h60 ; 0h0932: vol off, no pitch, note, instrument
   58FF 04                 2310  .db 0h04 ; 0h0933: instrument
   5900 98                 2311  .db 0h98 ; 0h0934: normal track data
   5901 60                 2312  .db 0h60 ; 0h0935: vol off, no pitch, note, instrument
   5902 01                 2313  .db 0h01 ; 0h0936: instrument
   5903 72                 2314  .db 0h72 ; 0h0937: normal track data
   5904 60                 2315  .db 0h60 ; 0h0938: vol off, no pitch, note, instrument
   5905 03                 2316  .db 0h03 ; 0h0939: instrument
   5906 98                 2317  .db 0h98 ; 0h093A: normal track data
   5907 60                 2318  .db 0h60 ; 0h093B: vol off, no pitch, note, instrument
   5908 01                 2319  .db 0h01 ; 0h093C: instrument
   5909 72                 2320  .db 0h72 ; 0h093D: normal track data
   590A 60                 2321  .db 0h60 ; 0h093E: vol off, no pitch, note, instrument
   590B 04                 2322  .db 0h04 ; 0h093F: instrument
   590C 98                 2323  .db 0h98 ; 0h0940: normal track data
   590D 60                 2324  .db 0h60 ; 0h0941: vol off, no pitch, note, instrument
   590E 01                 2325  .db 0h01 ; 0h0942: instrument
   590F 72                 2326  .db 0h72 ; 0h0943: normal track data
   5910 60                 2327  .db 0h60 ; 0h0944: vol off, no pitch, note, instrument
   5911 03                 2328  .db 0h03 ; 0h0945: instrument
   5912 98                 2329  .db 0h98 ; 0h0946: normal track data
   5913 60                 2330  .db 0h60 ; 0h0947: vol off, no pitch, note, instrument
   5914 01                 2331  .db 0h01 ; 0h0948: instrument
   5915 72                 2332  .db 0h72 ; 0h0949: normal track data
   5916 60                 2333  .db 0h60 ; 0h094A: vol off, no pitch, note, instrument
   5917 03                 2334  .db 0h03 ; 0h094B: instrument
   5918 72                 2335  .db 0h72 ; 0h094C: normal track data
   5919 40                 2336  .db 0h40 ; 0h094D: vol off, no pitch, note, no instrument
   591A 72                 2337  .db 0h72 ; 0h094E: normal track data
   591B 40                 2338  .db 0h40 ; 0h094F: vol off, no pitch, note, no instrument
   591C 98                 2339  .db 0h98 ; 0h0950: normal track data
   591D 60                 2340  .db 0h60 ; 0h0951: vol off, no pitch, note, instrument
   591E 01                 2341  .db 0h01 ; 0h0952: instrument
   591F 72                 2342  .db 0h72 ; 0h0953: normal track data
   5920 60                 2343  .db 0h60 ; 0h0954: vol off, no pitch, note, instrument
   5921 04                 2344  .db 0h04 ; 0h0955: instrument
   5922 98                 2345  .db 0h98 ; 0h0956: normal track data
   5923 60                 2346  .db 0h60 ; 0h0957: vol off, no pitch, note, instrument
   5924 01                 2347  .db 0h01 ; 0h0958: instrument
   5925 72                 2348  .db 0h72 ; 0h0959: normal track data
   5926 60                 2349  .db 0h60 ; 0h095A: vol off, no pitch, note, instrument
   5927 03                 2350  .db 0h03 ; 0h095B: instrument
   5928 98                 2351  .db 0h98 ; 0h095C: normal track data
   5929 60                 2352  .db 0h60 ; 0h095D: vol off, no pitch, note, instrument
   592A 01                 2353  .db 0h01 ; 0h095E: instrument
   592B 72                 2354  .db 0h72 ; 0h095F: normal track data
   592C 60                 2355  .db 0h60 ; 0h0960: vol off, no pitch, note, instrument
   592D 04                 2356  .db 0h04 ; 0h0961: instrument
   592E 98                 2357  .db 0h98 ; 0h0962: normal track data
   592F 60                 2358  .db 0h60 ; 0h0963: vol off, no pitch, note, instrument
   5930 01                 2359  .db 0h01 ; 0h0964: instrument
   5931 72                 2360  .db 0h72 ; 0h0965: normal track data
   5932 60                 2361  .db 0h60 ; 0h0966: vol off, no pitch, note, instrument
   5933 03                 2362  .db 0h03 ; 0h0967: instrument
   5934 98                 2363  .db 0h98 ; 0h0968: normal track data
   5935 60                 2364  .db 0h60 ; 0h0969: vol off, no pitch, note, instrument
   5936 01                 2365  .db 0h01 ; 0h096A: instrument
   5937 72                 2366  .db 0h72 ; 0h096B: normal track data
   5938 60                 2367  .db 0h60 ; 0h096C: vol off, no pitch, note, instrument
   5939 04                 2368  .db 0h04 ; 0h096D: instrument
   593A 98                 2369  .db 0h98 ; 0h096E: normal track data
   593B 60                 2370  .db 0h60 ; 0h096F: vol off, no pitch, note, instrument
   593C 01                 2371  .db 0h01 ; 0h0970: instrument
   593D 72                 2372  .db 0h72 ; 0h0971: normal track data
   593E 60                 2373  .db 0h60 ; 0h0972: vol off, no pitch, note, instrument
   593F 03                 2374  .db 0h03 ; 0h0973: instrument
   5940 98                 2375  .db 0h98 ; 0h0974: normal track data
   5941 60                 2376  .db 0h60 ; 0h0975: vol off, no pitch, note, instrument
   5942 01                 2377  .db 0h01 ; 0h0976: instrument
   5943 72                 2378  .db 0h72 ; 0h0977: normal track data
   5944 60                 2379  .db 0h60 ; 0h0978: vol off, no pitch, note, instrument
   5945 03                 2380  .db 0h03 ; 0h0979: instrument
   5946 72                 2381  .db 0h72 ; 0h097A: normal track data
   5947 40                 2382  .db 0h40 ; 0h097B: vol off, no pitch, note, no instrument
   5948 72                 2383  .db 0h72 ; 0h097C: normal track data
   5949 40                 2384  .db 0h40 ; 0h097D: vol off, no pitch, note, no instrument
   594A 98                 2385  .db 0h98 ; 0h097E: normal track data
   594B 60                 2386  .db 0h60 ; 0h097F: vol off, no pitch, note, instrument
   594C 01                 2387  .db 0h01 ; 0h0980: instrument
   594D 72                 2388  .db 0h72 ; 0h0981: normal track data
   594E 60                 2389  .db 0h60 ; 0h0982: vol off, no pitch, note, instrument
   594F 04                 2390  .db 0h04 ; 0h0983: instrument
   5950 98                 2391  .db 0h98 ; 0h0984: normal track data
   5951 60                 2392  .db 0h60 ; 0h0985: vol off, no pitch, note, instrument
   5952 01                 2393  .db 0h01 ; 0h0986: instrument
   5953 72                 2394  .db 0h72 ; 0h0987: normal track data
   5954 60                 2395  .db 0h60 ; 0h0988: vol off, no pitch, note, instrument
   5955 03                 2396  .db 0h03 ; 0h0989: instrument
   5956 98                 2397  .db 0h98 ; 0h098A: normal track data
   5957 60                 2398  .db 0h60 ; 0h098B: vol off, no pitch, note, instrument
   5958 01                 2399  .db 0h01 ; 0h098C: instrument
   5959 72                 2400  .db 0h72 ; 0h098D: normal track data
   595A 60                 2401  .db 0h60 ; 0h098E: vol off, no pitch, note, instrument
   595B 04                 2402  .db 0h04 ; 0h098F: instrument
   595C 98                 2403  .db 0h98 ; 0h0990: normal track data
   595D 60                 2404  .db 0h60 ; 0h0991: vol off, no pitch, note, instrument
   595E 01                 2405  .db 0h01 ; 0h0992: instrument
   595F 72                 2406  .db 0h72 ; 0h0993: normal track data
   5960 60                 2407  .db 0h60 ; 0h0994: vol off, no pitch, note, instrument
   5961 03                 2408  .db 0h03 ; 0h0995: instrument
   5962 98                 2409  .db 0h98 ; 0h0996: normal track data
   5963 60                 2410  .db 0h60 ; 0h0997: vol off, no pitch, note, instrument
   5964 01                 2411  .db 0h01 ; 0h0998: instrument
   5965 72                 2412  .db 0h72 ; 0h0999: normal track data
   5966 60                 2413  .db 0h60 ; 0h099A: vol off, no pitch, note, instrument
   5967 04                 2414  .db 0h04 ; 0h099B: instrument
   5968 98                 2415  .db 0h98 ; 0h099C: normal track data
   5969 60                 2416  .db 0h60 ; 0h099D: vol off, no pitch, note, instrument
   596A 01                 2417  .db 0h01 ; 0h099E: instrument
   596B 72                 2418  .db 0h72 ; 0h099F: normal track data
   596C 60                 2419  .db 0h60 ; 0h09A0: vol off, no pitch, note, instrument
   596D 03                 2420  .db 0h03 ; 0h09A1: instrument
   596E 98                 2421  .db 0h98 ; 0h09A2: normal track data
   596F 60                 2422  .db 0h60 ; 0h09A3: vol off, no pitch, note, instrument
   5970 01                 2423  .db 0h01 ; 0h09A4: instrument
   5971 72                 2424  .db 0h72 ; 0h09A5: normal track data
   5972 60                 2425  .db 0h60 ; 0h09A6: vol off, no pitch, note, instrument
   5973 03                 2426  .db 0h03 ; 0h09A7: instrument
   5974 72                 2427  .db 0h72 ; 0h09A8: normal track data
   5975 40                 2428  .db 0h40 ; 0h09A9: vol off, no pitch, note, no instrument
   5976 72                 2429  .db 0h72 ; 0h09AA: normal track data
   5977 40                 2430  .db 0h40 ; 0h09AB: vol off, no pitch, note, no instrument
   5978 42                 2431  .db 0h42 ; 0h09AC: normal track data
   5979 00                 2432  .db 0h00 ; 0h09AD: vol off, no pitch, no note, no instrument
   597A 72                 2433  .db 0h72 ; 0h09AE: normal track data
   597B 40                 2434  .db 0h40 ; 0h09AF: vol off, no pitch, note, no instrument
   597C 72                 2435  .db 0h72 ; 0h09B0: normal track data
   597D 40                 2436  .db 0h40 ; 0h09B1: vol off, no pitch, note, no instrument
   597E 72                 2437  .db 0h72 ; 0h09B2: normal track data
   597F 40                 2438  .db 0h40 ; 0h09B3: vol off, no pitch, note, no instrument
   5980 42                 2439  .db 0h42 ; 0h09B4: normal track data
   5981 00                 2440  .db 0h00 ; 0h09B5: vol off, no pitch, no note, no instrument
   5982 72                 2441  .db 0h72 ; 0h09B6: normal track data
   5983 40                 2442  .db 0h40 ; 0h09B7: vol off, no pitch, note, no instrument
   5984 72                 2443  .db 0h72 ; 0h09B8: normal track data
   5985 40                 2444  .db 0h40 ; 0h09B9: vol off, no pitch, note, no instrument
   5986 72                 2445  .db 0h72 ; 0h09BA: normal track data
   5987 40                 2446  .db 0h40 ; 0h09BB: vol off, no pitch, note, no instrument
   5988 42                 2447  .db 0h42 ; 0h09BC: normal track data
   5989 00                 2448  .db 0h00 ; 0h09BD: vol off, no pitch, no note, no instrument
   598A 72                 2449  .db 0h72 ; 0h09BE: normal track data
   598B 40                 2450  .db 0h40 ; 0h09BF: vol off, no pitch, note, no instrument
   598C 72                 2451  .db 0h72 ; 0h09C0: normal track data
   598D 40                 2452  .db 0h40 ; 0h09C1: vol off, no pitch, note, no instrument
   598E 72                 2453  .db 0h72 ; 0h09C2: normal track data
   598F 40                 2454  .db 0h40 ; 0h09C3: vol off, no pitch, note, no instrument
   5990 42                 2455  .db 0h42 ; 0h09C4: normal track data
   5991 00                 2456  .db 0h00 ; 0h09C5: vol off, no pitch, no note, no instrument
   5992                    2457 trackDef24Test:
   5992 92                 2458  .db 0h92 ; 0h09C6: normal track data
   5993 F3                 2459  .db 0hF3 ; 0h09C7: vol = 0h6 (inverted), no pitch, no note, no instrument
   5994 00 00              2460  .dw 0h0000 ; 0h09C8: pitch
   5996 05                 2461  .db 0h05 ; 0h09CA: instrument
   5997 AA                 2462  .db 0hAA ; 0h09CB: normal track data
   5998 40                 2463  .db 0h40 ; 0h09CC: vol off, no pitch, note, no instrument
   5999 AA                 2464  .db 0hAA ; 0h09CD: normal track data
   599A 40                 2465  .db 0h40 ; 0h09CE: vol off, no pitch, note, no instrument
   599B 92                 2466  .db 0h92 ; 0h09CF: normal track data
   599C 40                 2467  .db 0h40 ; 0h09D0: vol off, no pitch, note, no instrument
   599D 92                 2468  .db 0h92 ; 0h09D1: normal track data
   599E 40                 2469  .db 0h40 ; 0h09D2: vol off, no pitch, note, no instrument
   599F 94                 2470  .db 0h94 ; 0h09D3: normal track data
   59A0 40                 2471  .db 0h40 ; 0h09D4: vol off, no pitch, note, no instrument
   59A1 98                 2472  .db 0h98 ; 0h09D5: normal track data
   59A2 40                 2473  .db 0h40 ; 0h09D6: vol off, no pitch, note, no instrument
   59A3 9C                 2474  .db 0h9C ; 0h09D7: normal track data
   59A4 40                 2475  .db 0h40 ; 0h09D8: vol off, no pitch, note, no instrument
   59A5 92                 2476  .db 0h92 ; 0h09D9: normal track data
   59A6 40                 2477  .db 0h40 ; 0h09DA: vol off, no pitch, note, no instrument
   59A7 AA                 2478  .db 0hAA ; 0h09DB: normal track data
   59A8 40                 2479  .db 0h40 ; 0h09DC: vol off, no pitch, note, no instrument
   59A9 08                 2480  .db 0h08 ; 0h09DD: normal track data,  wait 3
   59AA AA                 2481  .db 0hAA ; 0h09DE: normal track data
   59AB 40                 2482  .db 0h40 ; 0h09DF: vol off, no pitch, note, no instrument
   59AC 92                 2483  .db 0h92 ; 0h09E0: normal track data
   59AD 40                 2484  .db 0h40 ; 0h09E1: vol off, no pitch, note, no instrument
   59AE 92                 2485  .db 0h92 ; 0h09E2: normal track data
   59AF 40                 2486  .db 0h40 ; 0h09E3: vol off, no pitch, note, no instrument
   59B0 AA                 2487  .db 0hAA ; 0h09E4: normal track data
   59B1 40                 2488  .db 0h40 ; 0h09E5: vol off, no pitch, note, no instrument
   59B2 AA                 2489  .db 0hAA ; 0h09E6: normal track data
   59B3 40                 2490  .db 0h40 ; 0h09E7: vol off, no pitch, note, no instrument
   59B4 92                 2491  .db 0h92 ; 0h09E8: normal track data
   59B5 40                 2492  .db 0h40 ; 0h09E9: vol off, no pitch, note, no instrument
   59B6 94                 2493  .db 0h94 ; 0h09EA: normal track data
   59B7 40                 2494  .db 0h40 ; 0h09EB: vol off, no pitch, note, no instrument
   59B8 AC                 2495  .db 0hAC ; 0h09EC: normal track data
   59B9 40                 2496  .db 0h40 ; 0h09ED: vol off, no pitch, note, no instrument
   59BA AC                 2497  .db 0hAC ; 0h09EE: normal track data
   59BB 40                 2498  .db 0h40 ; 0h09EF: vol off, no pitch, note, no instrument
   59BC 94                 2499  .db 0h94 ; 0h09F0: normal track data
   59BD 40                 2500  .db 0h40 ; 0h09F1: vol off, no pitch, note, no instrument
   59BE 92                 2501  .db 0h92 ; 0h09F2: normal track data
   59BF 40                 2502  .db 0h40 ; 0h09F3: vol off, no pitch, note, no instrument
   59C0 AA                 2503  .db 0hAA ; 0h09F4: normal track data
   59C1 40                 2504  .db 0h40 ; 0h09F5: vol off, no pitch, note, no instrument
   59C2 08                 2505  .db 0h08 ; 0h09F6: normal track data,  wait 3
   59C3 AA                 2506  .db 0hAA ; 0h09F7: normal track data
   59C4 40                 2507  .db 0h40 ; 0h09F8: vol off, no pitch, note, no instrument
   59C5 92                 2508  .db 0h92 ; 0h09F9: normal track data
   59C6 40                 2509  .db 0h40 ; 0h09FA: vol off, no pitch, note, no instrument
   59C7 92                 2510  .db 0h92 ; 0h09FB: normal track data
   59C8 40                 2511  .db 0h40 ; 0h09FC: vol off, no pitch, note, no instrument
   59C9 AA                 2512  .db 0hAA ; 0h09FD: normal track data
   59CA 40                 2513  .db 0h40 ; 0h09FE: vol off, no pitch, note, no instrument
   59CB AA                 2514  .db 0hAA ; 0h09FF: normal track data
   59CC 40                 2515  .db 0h40 ; 0h0A00: vol off, no pitch, note, no instrument
   59CD 92                 2516  .db 0h92 ; 0h0A01: normal track data
   59CE 40                 2517  .db 0h40 ; 0h0A02: vol off, no pitch, note, no instrument
   59CF 92                 2518  .db 0h92 ; 0h0A03: normal track data
   59D0 40                 2519  .db 0h40 ; 0h0A04: vol off, no pitch, note, no instrument
   59D1 94                 2520  .db 0h94 ; 0h0A05: normal track data
   59D2 40                 2521  .db 0h40 ; 0h0A06: vol off, no pitch, note, no instrument
   59D3 98                 2522  .db 0h98 ; 0h0A07: normal track data
   59D4 40                 2523  .db 0h40 ; 0h0A08: vol off, no pitch, note, no instrument
   59D5 9C                 2524  .db 0h9C ; 0h0A09: normal track data
   59D6 40                 2525  .db 0h40 ; 0h0A0A: vol off, no pitch, note, no instrument
   59D7 92                 2526  .db 0h92 ; 0h0A0B: normal track data
   59D8 40                 2527  .db 0h40 ; 0h0A0C: vol off, no pitch, note, no instrument
   59D9 AA                 2528  .db 0hAA ; 0h0A0D: normal track data
   59DA 40                 2529  .db 0h40 ; 0h0A0E: vol off, no pitch, note, no instrument
   59DB 08                 2530  .db 0h08 ; 0h0A0F: normal track data,  wait 3
   59DC AA                 2531  .db 0hAA ; 0h0A10: normal track data
   59DD 40                 2532  .db 0h40 ; 0h0A11: vol off, no pitch, note, no instrument
   59DE 92                 2533  .db 0h92 ; 0h0A12: normal track data
   59DF 40                 2534  .db 0h40 ; 0h0A13: vol off, no pitch, note, no instrument
   59E0 92                 2535  .db 0h92 ; 0h0A14: normal track data
   59E1 40                 2536  .db 0h40 ; 0h0A15: vol off, no pitch, note, no instrument
   59E2 AA                 2537  .db 0hAA ; 0h0A16: normal track data
   59E3 40                 2538  .db 0h40 ; 0h0A17: vol off, no pitch, note, no instrument
   59E4 AA                 2539  .db 0hAA ; 0h0A18: normal track data
   59E5 40                 2540  .db 0h40 ; 0h0A19: vol off, no pitch, note, no instrument
   59E6 42                 2541  .db 0h42 ; 0h0A1A: normal track data
   59E7 00                 2542  .db 0h00 ; 0h0A1B: vol off, no pitch, no note, no instrument
   59E8 94                 2543  .db 0h94 ; 0h0A1C: normal track data
   59E9 40                 2544  .db 0h40 ; 0h0A1D: vol off, no pitch, note, no instrument
   59EA AC                 2545  .db 0hAC ; 0h0A1E: normal track data
   59EB 40                 2546  .db 0h40 ; 0h0A1F: vol off, no pitch, note, no instrument
   59EC AC                 2547  .db 0hAC ; 0h0A20: normal track data
   59ED 40                 2548  .db 0h40 ; 0h0A21: vol off, no pitch, note, no instrument
   59EE 42                 2549  .db 0h42 ; 0h0A22: normal track data
   59EF 00                 2550  .db 0h00 ; 0h0A23: vol off, no pitch, no note, no instrument
   59F0 92                 2551  .db 0h92 ; 0h0A24: normal track data
   59F1 40                 2552  .db 0h40 ; 0h0A25: vol off, no pitch, note, no instrument
   59F2 AA                 2553  .db 0hAA ; 0h0A26: normal track data
   59F3 40                 2554  .db 0h40 ; 0h0A27: vol off, no pitch, note, no instrument
   59F4 08                 2555  .db 0h08 ; 0h0A28: normal track data,  wait 3
   59F5 AA                 2556  .db 0hAA ; 0h0A29: normal track data
   59F6 40                 2557  .db 0h40 ; 0h0A2A: vol off, no pitch, note, no instrument
   59F7 00                 2558  .db 0h00 ; 0h0A2B: track end signature found
   59F8                    2559 trackDef26Test:
   59F8 92                 2560  .db 0h92 ; 0h0A2C: normal track data
   59F9 F3                 2561  .db 0hF3 ; 0h0A2D: vol = 0h6 (inverted), no pitch, no note, no instrument
   59FA 00 00              2562  .dw 0h0000 ; 0h0A2E: pitch
   59FC 05                 2563  .db 0h05 ; 0h0A30: instrument
   59FD AA                 2564  .db 0hAA ; 0h0A31: normal track data
   59FE 40                 2565  .db 0h40 ; 0h0A32: vol off, no pitch, note, no instrument
   59FF AA                 2566  .db 0hAA ; 0h0A33: normal track data
   5A00 40                 2567  .db 0h40 ; 0h0A34: vol off, no pitch, note, no instrument
   5A01 92                 2568  .db 0h92 ; 0h0A35: normal track data
   5A02 40                 2569  .db 0h40 ; 0h0A36: vol off, no pitch, note, no instrument
   5A03 92                 2570  .db 0h92 ; 0h0A37: normal track data
   5A04 40                 2571  .db 0h40 ; 0h0A38: vol off, no pitch, note, no instrument
   5A05 94                 2572  .db 0h94 ; 0h0A39: normal track data
   5A06 40                 2573  .db 0h40 ; 0h0A3A: vol off, no pitch, note, no instrument
   5A07 98                 2574  .db 0h98 ; 0h0A3B: normal track data
   5A08 40                 2575  .db 0h40 ; 0h0A3C: vol off, no pitch, note, no instrument
   5A09 9C                 2576  .db 0h9C ; 0h0A3D: normal track data
   5A0A 40                 2577  .db 0h40 ; 0h0A3E: vol off, no pitch, note, no instrument
   5A0B 92                 2578  .db 0h92 ; 0h0A3F: normal track data
   5A0C 40                 2579  .db 0h40 ; 0h0A40: vol off, no pitch, note, no instrument
   5A0D AA                 2580  .db 0hAA ; 0h0A41: normal track data
   5A0E 40                 2581  .db 0h40 ; 0h0A42: vol off, no pitch, note, no instrument
   5A0F 08                 2582  .db 0h08 ; 0h0A43: normal track data,  wait 3
   5A10 AA                 2583  .db 0hAA ; 0h0A44: normal track data
   5A11 40                 2584  .db 0h40 ; 0h0A45: vol off, no pitch, note, no instrument
   5A12 92                 2585  .db 0h92 ; 0h0A46: normal track data
   5A13 40                 2586  .db 0h40 ; 0h0A47: vol off, no pitch, note, no instrument
   5A14 92                 2587  .db 0h92 ; 0h0A48: normal track data
   5A15 40                 2588  .db 0h40 ; 0h0A49: vol off, no pitch, note, no instrument
   5A16 AA                 2589  .db 0hAA ; 0h0A4A: normal track data
   5A17 40                 2590  .db 0h40 ; 0h0A4B: vol off, no pitch, note, no instrument
   5A18 AA                 2591  .db 0hAA ; 0h0A4C: normal track data
   5A19 40                 2592  .db 0h40 ; 0h0A4D: vol off, no pitch, note, no instrument
   5A1A 92                 2593  .db 0h92 ; 0h0A4E: normal track data
   5A1B 40                 2594  .db 0h40 ; 0h0A4F: vol off, no pitch, note, no instrument
   5A1C 94                 2595  .db 0h94 ; 0h0A50: normal track data
   5A1D 40                 2596  .db 0h40 ; 0h0A51: vol off, no pitch, note, no instrument
   5A1E AC                 2597  .db 0hAC ; 0h0A52: normal track data
   5A1F 40                 2598  .db 0h40 ; 0h0A53: vol off, no pitch, note, no instrument
   5A20 AC                 2599  .db 0hAC ; 0h0A54: normal track data
   5A21 40                 2600  .db 0h40 ; 0h0A55: vol off, no pitch, note, no instrument
   5A22 94                 2601  .db 0h94 ; 0h0A56: normal track data
   5A23 40                 2602  .db 0h40 ; 0h0A57: vol off, no pitch, note, no instrument
   5A24 92                 2603  .db 0h92 ; 0h0A58: normal track data
   5A25 40                 2604  .db 0h40 ; 0h0A59: vol off, no pitch, note, no instrument
   5A26 AA                 2605  .db 0hAA ; 0h0A5A: normal track data
   5A27 40                 2606  .db 0h40 ; 0h0A5B: vol off, no pitch, note, no instrument
   5A28 08                 2607  .db 0h08 ; 0h0A5C: normal track data,  wait 3
   5A29 AA                 2608  .db 0hAA ; 0h0A5D: normal track data
   5A2A 40                 2609  .db 0h40 ; 0h0A5E: vol off, no pitch, note, no instrument
   5A2B 92                 2610  .db 0h92 ; 0h0A5F: normal track data
   5A2C 40                 2611  .db 0h40 ; 0h0A60: vol off, no pitch, note, no instrument
   5A2D 92                 2612  .db 0h92 ; 0h0A61: normal track data
   5A2E 40                 2613  .db 0h40 ; 0h0A62: vol off, no pitch, note, no instrument
   5A2F AA                 2614  .db 0hAA ; 0h0A63: normal track data
   5A30 40                 2615  .db 0h40 ; 0h0A64: vol off, no pitch, note, no instrument
   5A31 AA                 2616  .db 0hAA ; 0h0A65: normal track data
   5A32 40                 2617  .db 0h40 ; 0h0A66: vol off, no pitch, note, no instrument
   5A33 92                 2618  .db 0h92 ; 0h0A67: normal track data
   5A34 40                 2619  .db 0h40 ; 0h0A68: vol off, no pitch, note, no instrument
   5A35 92                 2620  .db 0h92 ; 0h0A69: normal track data
   5A36 40                 2621  .db 0h40 ; 0h0A6A: vol off, no pitch, note, no instrument
   5A37 94                 2622  .db 0h94 ; 0h0A6B: normal track data
   5A38 40                 2623  .db 0h40 ; 0h0A6C: vol off, no pitch, note, no instrument
   5A39 98                 2624  .db 0h98 ; 0h0A6D: normal track data
   5A3A 40                 2625  .db 0h40 ; 0h0A6E: vol off, no pitch, note, no instrument
   5A3B 9C                 2626  .db 0h9C ; 0h0A6F: normal track data
   5A3C 40                 2627  .db 0h40 ; 0h0A70: vol off, no pitch, note, no instrument
   5A3D 92                 2628  .db 0h92 ; 0h0A71: normal track data
   5A3E 40                 2629  .db 0h40 ; 0h0A72: vol off, no pitch, note, no instrument
   5A3F AA                 2630  .db 0hAA ; 0h0A73: normal track data
   5A40 40                 2631  .db 0h40 ; 0h0A74: vol off, no pitch, note, no instrument
   5A41 08                 2632  .db 0h08 ; 0h0A75: normal track data,  wait 3
   5A42 AA                 2633  .db 0hAA ; 0h0A76: normal track data
   5A43 40                 2634  .db 0h40 ; 0h0A77: vol off, no pitch, note, no instrument
   5A44 92                 2635  .db 0h92 ; 0h0A78: normal track data
   5A45 40                 2636  .db 0h40 ; 0h0A79: vol off, no pitch, note, no instrument
   5A46 92                 2637  .db 0h92 ; 0h0A7A: normal track data
   5A47 40                 2638  .db 0h40 ; 0h0A7B: vol off, no pitch, note, no instrument
   5A48 AA                 2639  .db 0hAA ; 0h0A7C: normal track data
   5A49 40                 2640  .db 0h40 ; 0h0A7D: vol off, no pitch, note, no instrument
   5A4A AA                 2641  .db 0hAA ; 0h0A7E: normal track data
   5A4B 40                 2642  .db 0h40 ; 0h0A7F: vol off, no pitch, note, no instrument
   5A4C 42                 2643  .db 0h42 ; 0h0A80: normal track data
   5A4D 00                 2644  .db 0h00 ; 0h0A81: vol off, no pitch, no note, no instrument
   5A4E 94                 2645  .db 0h94 ; 0h0A82: normal track data
   5A4F 40                 2646  .db 0h40 ; 0h0A83: vol off, no pitch, note, no instrument
   5A50 AC                 2647  .db 0hAC ; 0h0A84: normal track data
   5A51 40                 2648  .db 0h40 ; 0h0A85: vol off, no pitch, note, no instrument
   5A52 AC                 2649  .db 0hAC ; 0h0A86: normal track data
   5A53 40                 2650  .db 0h40 ; 0h0A87: vol off, no pitch, note, no instrument
   5A54 42                 2651  .db 0h42 ; 0h0A88: normal track data
   5A55 00                 2652  .db 0h00 ; 0h0A89: vol off, no pitch, no note, no instrument
   5A56 92                 2653  .db 0h92 ; 0h0A8A: normal track data
   5A57 40                 2654  .db 0h40 ; 0h0A8B: vol off, no pitch, note, no instrument
   5A58 7A                 2655  .db 0h7A ; 0h0A8C: normal track data
   5A59 40                 2656  .db 0h40 ; 0h0A8D: vol off, no pitch, note, no instrument
   5A5A 8E                 2657  .db 0h8E ; 0h0A8E: normal track data,  note: D3
   5A5B 55                 2658  .db 0h55 ; 0h0A8F: vol = 0h5 (inverted), no pitch, no note, no instrument
   5A5C 8A                 2659  .db 0h8A ; 0h0A90: normal track data,  note: C3
   5A5D 57                 2660  .db 0h57 ; 0h0A91: vol = 0h4 (inverted), no pitch, no note, no instrument
   5A5E 88                 2661  .db 0h88 ; 0h0A92: normal track data
   5A5F 59                 2662  .db 0h59 ; 0h0A93: vol = 0h3 (inverted), no pitch, no note, no instrument
   5A60 84                 2663  .db 0h84 ; 0h0A94: normal track data
   5A61 5B                 2664  .db 0h5B ; 0h0A95: vol = 0h2 (inverted), no pitch, no note, no instrument
   5A62 80                 2665  .db 0h80 ; 0h0A96: normal track data,  note: G2
   5A63 5D                 2666  .db 0h5D ; 0h0A97: vol = 0h1 (inverted), no pitch, no note, no instrument
   5A64 7C                 2667  .db 0h7C ; 0h0A98: normal track data
   5A65 40                 2668  .db 0h40 ; 0h0A99: vol off, no pitch, note, no instrument
   5A66                    2669 trackDef27Test:
   5A66 7A                 2670  .db 0h7A ; 0h0A9A: normal track data
   5A67 F3                 2671  .db 0hF3 ; 0h0A9B: vol = 0h6 (inverted), no pitch, no note, no instrument
   5A68 00 00              2672  .dw 0h0000 ; 0h0A9C: pitch
   5A6A 05                 2673  .db 0h05 ; 0h0A9E: instrument
   5A6B 0A                 2674  .db 0h0A ; 0h0A9F: normal track data,  wait 4
   5A6C 92                 2675  .db 0h92 ; 0h0AA0: normal track data
   5A6D 40                 2676  .db 0h40 ; 0h0AA1: vol off, no pitch, note, no instrument
   5A6E 02                 2677  .db 0h02 ; 0h0AA2: normal track data,  wait 0
   5A6F 7A                 2678  .db 0h7A ; 0h0AA3: normal track data
   5A70 40                 2679  .db 0h40 ; 0h0AA4: vol off, no pitch, note, no instrument
   5A71 0A                 2680  .db 0h0A ; 0h0AA5: normal track data,  wait 4
   5A72 92                 2681  .db 0h92 ; 0h0AA6: normal track data
   5A73 40                 2682  .db 0h40 ; 0h0AA7: vol off, no pitch, note, no instrument
   5A74 02                 2683  .db 0h02 ; 0h0AA8: normal track data,  wait 0
   5A75 7C                 2684  .db 0h7C ; 0h0AA9: normal track data
   5A76 40                 2685  .db 0h40 ; 0h0AAA: vol off, no pitch, note, no instrument
   5A77 0A                 2686  .db 0h0A ; 0h0AAB: normal track data,  wait 4
   5A78 94                 2687  .db 0h94 ; 0h0AAC: normal track data
   5A79 40                 2688  .db 0h40 ; 0h0AAD: vol off, no pitch, note, no instrument
   5A7A 02                 2689  .db 0h02 ; 0h0AAE: normal track data,  wait 0
   5A7B 80                 2690  .db 0h80 ; 0h0AAF: normal track data
   5A7C 40                 2691  .db 0h40 ; 0h0AB0: vol off, no pitch, note, no instrument
   5A7D 0A                 2692  .db 0h0A ; 0h0AB1: normal track data,  wait 4
   5A7E 98                 2693  .db 0h98 ; 0h0AB2: normal track data
   5A7F 40                 2694  .db 0h40 ; 0h0AB3: vol off, no pitch, note, no instrument
   5A80 02                 2695  .db 0h02 ; 0h0AB4: normal track data,  wait 0
   5A81 7A                 2696  .db 0h7A ; 0h0AB5: normal track data
   5A82 40                 2697  .db 0h40 ; 0h0AB6: vol off, no pitch, note, no instrument
   5A83 0A                 2698  .db 0h0A ; 0h0AB7: normal track data,  wait 4
   5A84 92                 2699  .db 0h92 ; 0h0AB8: normal track data
   5A85 40                 2700  .db 0h40 ; 0h0AB9: vol off, no pitch, note, no instrument
   5A86 02                 2701  .db 0h02 ; 0h0ABA: normal track data,  wait 0
   5A87 7A                 2702  .db 0h7A ; 0h0ABB: normal track data
   5A88 40                 2703  .db 0h40 ; 0h0ABC: vol off, no pitch, note, no instrument
   5A89 0A                 2704  .db 0h0A ; 0h0ABD: normal track data,  wait 4
   5A8A 92                 2705  .db 0h92 ; 0h0ABE: normal track data
   5A8B 40                 2706  .db 0h40 ; 0h0ABF: vol off, no pitch, note, no instrument
   5A8C 02                 2707  .db 0h02 ; 0h0AC0: normal track data,  wait 0
   5A8D 7C                 2708  .db 0h7C ; 0h0AC1: normal track data
   5A8E 40                 2709  .db 0h40 ; 0h0AC2: vol off, no pitch, note, no instrument
   5A8F 0A                 2710  .db 0h0A ; 0h0AC3: normal track data,  wait 4
   5A90 94                 2711  .db 0h94 ; 0h0AC4: normal track data
   5A91 40                 2712  .db 0h40 ; 0h0AC5: vol off, no pitch, note, no instrument
   5A92 02                 2713  .db 0h02 ; 0h0AC6: normal track data,  wait 0
   5A93 80                 2714  .db 0h80 ; 0h0AC7: normal track data
   5A94 40                 2715  .db 0h40 ; 0h0AC8: vol off, no pitch, note, no instrument
   5A95 0A                 2716  .db 0h0A ; 0h0AC9: normal track data,  wait 4
   5A96 98                 2717  .db 0h98 ; 0h0ACA: normal track data
   5A97 40                 2718  .db 0h40 ; 0h0ACB: vol off, no pitch, note, no instrument
   5A98 00                 2719  .db 0h00 ; 0h0ACC: track end signature found
   5A99                    2720 trackDef29Test:
   5A99 72                 2721  .db 0h72 ; 0h0ACD: normal track data
   5A9A E0                 2722  .db 0hE0 ; 0h0ACE: vol off, pitch, note, instrument
   5A9B 00 00              2723  .dw 0h0000 ; 0h0ACF: pitch
   5A9D 01                 2724  .db 0h01 ; 0h0AD1: instrument
   5A9E 02                 2725  .db 0h02 ; 0h0AD2: normal track data,  wait 0
   5A9F 42                 2726  .db 0h42 ; 0h0AD3: normal track data
   5AA0 00                 2727  .db 0h00 ; 0h0AD4: vol off, no pitch, no note, no instrument
   5AA1 02                 2728  .db 0h02 ; 0h0AD5: normal track data,  wait 0
   5AA2 42                 2729  .db 0h42 ; 0h0AD6: normal track data
   5AA3 00                 2730  .db 0h00 ; 0h0AD7: vol off, no pitch, no note, no instrument
   5AA4 02                 2731  .db 0h02 ; 0h0AD8: normal track data,  wait 0
   5AA5 33                 2732  .db 0h33 ; 0h0AD9: full optimization, no escape: C2
   5AA6 02                 2733  .db 0h02 ; 0h0ADA: normal track data,  wait 0
   5AA7 33                 2734  .db 0h33 ; 0h0ADB: full optimization, no escape: C2
   5AA8 02                 2735  .db 0h02 ; 0h0ADC: normal track data,  wait 0
   5AA9 42                 2736  .db 0h42 ; 0h0ADD: normal track data
   5AAA 00                 2737  .db 0h00 ; 0h0ADE: vol off, no pitch, no note, no instrument
   5AAB 02                 2738  .db 0h02 ; 0h0ADF: normal track data,  wait 0
   5AAC 42                 2739  .db 0h42 ; 0h0AE0: normal track data
   5AAD 00                 2740  .db 0h00 ; 0h0AE1: vol off, no pitch, no note, no instrument
   5AAE 02                 2741  .db 0h02 ; 0h0AE2: normal track data,  wait 0
   5AAF 33                 2742  .db 0h33 ; 0h0AE3: full optimization, no escape: C2
   5AB0 02                 2743  .db 0h02 ; 0h0AE4: normal track data,  wait 0
   5AB1 33                 2744  .db 0h33 ; 0h0AE5: full optimization, no escape: C2
   5AB2 02                 2745  .db 0h02 ; 0h0AE6: normal track data,  wait 0
   5AB3 42                 2746  .db 0h42 ; 0h0AE7: normal track data
   5AB4 00                 2747  .db 0h00 ; 0h0AE8: vol off, no pitch, no note, no instrument
   5AB5 02                 2748  .db 0h02 ; 0h0AE9: normal track data,  wait 0
   5AB6 42                 2749  .db 0h42 ; 0h0AEA: normal track data
   5AB7 00                 2750  .db 0h00 ; 0h0AEB: vol off, no pitch, no note, no instrument
   5AB8 02                 2751  .db 0h02 ; 0h0AEC: normal track data,  wait 0
   5AB9 33                 2752  .db 0h33 ; 0h0AED: full optimization, no escape: C2
   5ABA 02                 2753  .db 0h02 ; 0h0AEE: normal track data,  wait 0
   5ABB 33                 2754  .db 0h33 ; 0h0AEF: full optimization, no escape: C2
   5ABC 02                 2755  .db 0h02 ; 0h0AF0: normal track data,  wait 0
   5ABD 42                 2756  .db 0h42 ; 0h0AF1: normal track data
   5ABE 00                 2757  .db 0h00 ; 0h0AF2: vol off, no pitch, no note, no instrument
   5ABF 02                 2758  .db 0h02 ; 0h0AF3: normal track data,  wait 0
   5AC0 42                 2759  .db 0h42 ; 0h0AF4: normal track data
   5AC1 00                 2760  .db 0h00 ; 0h0AF5: vol off, no pitch, no note, no instrument
   5AC2 02                 2761  .db 0h02 ; 0h0AF6: normal track data,  wait 0
   5AC3 33                 2762  .db 0h33 ; 0h0AF7: full optimization, no escape: C2
   5AC4 02                 2763  .db 0h02 ; 0h0AF8: normal track data,  wait 0
   5AC5 33                 2764  .db 0h33 ; 0h0AF9: full optimization, no escape: C2
   5AC6 02                 2765  .db 0h02 ; 0h0AFA: normal track data,  wait 0
   5AC7 42                 2766  .db 0h42 ; 0h0AFB: normal track data
   5AC8 00                 2767  .db 0h00 ; 0h0AFC: vol off, no pitch, no note, no instrument
   5AC9 02                 2768  .db 0h02 ; 0h0AFD: normal track data,  wait 0
   5ACA 42                 2769  .db 0h42 ; 0h0AFE: normal track data
   5ACB 00                 2770  .db 0h00 ; 0h0AFF: vol off, no pitch, no note, no instrument
   5ACC 02                 2771  .db 0h02 ; 0h0B00: normal track data,  wait 0
   5ACD 33                 2772  .db 0h33 ; 0h0B01: full optimization, no escape: C2
   5ACE 53                 2773  .db 0h53 ; 0h0B02: full optimization, no escape: E3
   5ACF 33                 2774  .db 0h33 ; 0h0B03: full optimization, no escape: C2
   5AD0 53                 2775  .db 0h53 ; 0h0B04: full optimization, no escape: E3
   5AD1 53                 2776  .db 0h53 ; 0h0B05: full optimization, no escape: E3
   5AD2 02                 2777  .db 0h02 ; 0h0B06: normal track data,  wait 0
   5AD3 42                 2778  .db 0h42 ; 0h0B07: normal track data
   5AD4 00                 2779  .db 0h00 ; 0h0B08: vol off, no pitch, no note, no instrument
   5AD5 02                 2780  .db 0h02 ; 0h0B09: normal track data,  wait 0
   5AD6 33                 2781  .db 0h33 ; 0h0B0A: full optimization, no escape: C2
   5AD7 53                 2782  .db 0h53 ; 0h0B0B: full optimization, no escape: E3
   5AD8 33                 2783  .db 0h33 ; 0h0B0C: full optimization, no escape: C2
   5AD9 53                 2784  .db 0h53 ; 0h0B0D: full optimization, no escape: E3
   5ADA 53                 2785  .db 0h53 ; 0h0B0E: full optimization, no escape: E3
   5ADB 02                 2786  .db 0h02 ; 0h0B0F: normal track data,  wait 0
   5ADC 42                 2787  .db 0h42 ; 0h0B10: normal track data
   5ADD 00                 2788  .db 0h00 ; 0h0B11: vol off, no pitch, no note, no instrument
   5ADE 02                 2789  .db 0h02 ; 0h0B12: normal track data,  wait 0
   5ADF 33                 2790  .db 0h33 ; 0h0B13: full optimization, no escape: C2
   5AE0 53                 2791  .db 0h53 ; 0h0B14: full optimization, no escape: E3
   5AE1 33                 2792  .db 0h33 ; 0h0B15: full optimization, no escape: C2
   5AE2 53                 2793  .db 0h53 ; 0h0B16: full optimization, no escape: E3
   5AE3 53                 2794  .db 0h53 ; 0h0B17: full optimization, no escape: E3
   5AE4 42                 2795  .db 0h42 ; 0h0B18: normal track data
   5AE5 00                 2796  .db 0h00 ; 0h0B19: vol off, no pitch, no note, no instrument
   5AE6 42                 2797  .db 0h42 ; 0h0B1A: normal track data
   5AE7 00                 2798  .db 0h00 ; 0h0B1B: vol off, no pitch, no note, no instrument
   5AE8 72                 2799  .db 0h72 ; 0h0B1C: normal track data
   5AE9 60                 2800  .db 0h60 ; 0h0B1D: vol off, no pitch, note, instrument
   5AEA 04                 2801  .db 0h04 ; 0h0B1E: instrument
   5AEB 33                 2802  .db 0h33 ; 0h0B1F: full optimization, no escape: C2
   5AEC 00                 2803  .db 0h00 ; 0h0B20: track end signature found
   5AED                    2804 trackDef28Test:
   5AED 42                 2805  .db 0h42 ; 0h0B21: normal track data
   5AEE 80                 2806  .db 0h80 ; 0h0B22: vol off, pitch, no note, no instrument
   5AEF 00 00              2807  .dw 0h0000 ; 0h0B23: pitch
   5AF1 02                 2808  .db 0h02 ; 0h0B25: normal track data,  wait 0
   5AF2 42                 2809  .db 0h42 ; 0h0B26: normal track data
   5AF3 00                 2810  .db 0h00 ; 0h0B27: vol off, no pitch, no note, no instrument
   5AF4 02                 2811  .db 0h02 ; 0h0B28: normal track data,  wait 0
   5AF5 42                 2812  .db 0h42 ; 0h0B29: normal track data
   5AF6 00                 2813  .db 0h00 ; 0h0B2A: vol off, no pitch, no note, no instrument
   5AF7 02                 2814  .db 0h02 ; 0h0B2B: normal track data,  wait 0
   5AF8 42                 2815  .db 0h42 ; 0h0B2C: normal track data
   5AF9 00                 2816  .db 0h00 ; 0h0B2D: vol off, no pitch, no note, no instrument
   5AFA 02                 2817  .db 0h02 ; 0h0B2E: normal track data,  wait 0
   5AFB 42                 2818  .db 0h42 ; 0h0B2F: normal track data
   5AFC 00                 2819  .db 0h00 ; 0h0B30: vol off, no pitch, no note, no instrument
   5AFD 02                 2820  .db 0h02 ; 0h0B31: normal track data,  wait 0
   5AFE 42                 2821  .db 0h42 ; 0h0B32: normal track data
   5AFF 00                 2822  .db 0h00 ; 0h0B33: vol off, no pitch, no note, no instrument
   5B00 42                 2823  .db 0h42 ; 0h0B34: normal track data
   5B01 00                 2824  .db 0h00 ; 0h0B35: vol off, no pitch, no note, no instrument
   5B02 42                 2825  .db 0h42 ; 0h0B36: normal track data
   5B03 00                 2826  .db 0h00 ; 0h0B37: vol off, no pitch, no note, no instrument
   5B04 42                 2827  .db 0h42 ; 0h0B38: normal track data
   5B05 00                 2828  .db 0h00 ; 0h0B39: vol off, no pitch, no note, no instrument
   5B06 42                 2829  .db 0h42 ; 0h0B3A: normal track data
   5B07 00                 2830  .db 0h00 ; 0h0B3B: vol off, no pitch, no note, no instrument
   5B08 02                 2831  .db 0h02 ; 0h0B3C: normal track data,  wait 0
   5B09 42                 2832  .db 0h42 ; 0h0B3D: normal track data
   5B0A 00                 2833  .db 0h00 ; 0h0B3E: vol off, no pitch, no note, no instrument
   5B0B 02                 2834  .db 0h02 ; 0h0B3F: normal track data,  wait 0
   5B0C 42                 2835  .db 0h42 ; 0h0B40: normal track data
   5B0D 00                 2836  .db 0h00 ; 0h0B41: vol off, no pitch, no note, no instrument
   5B0E 42                 2837  .db 0h42 ; 0h0B42: normal track data
   5B0F 00                 2838  .db 0h00 ; 0h0B43: vol off, no pitch, no note, no instrument
   5B10 42                 2839  .db 0h42 ; 0h0B44: normal track data
   5B11 00                 2840  .db 0h00 ; 0h0B45: vol off, no pitch, no note, no instrument
   5B12 02                 2841  .db 0h02 ; 0h0B46: normal track data,  wait 0
   5B13 42                 2842  .db 0h42 ; 0h0B47: normal track data
   5B14 00                 2843  .db 0h00 ; 0h0B48: vol off, no pitch, no note, no instrument
   5B15 02                 2844  .db 0h02 ; 0h0B49: normal track data,  wait 0
   5B16 42                 2845  .db 0h42 ; 0h0B4A: normal track data
   5B17 00                 2846  .db 0h00 ; 0h0B4B: vol off, no pitch, no note, no instrument
   5B18 02                 2847  .db 0h02 ; 0h0B4C: normal track data,  wait 0
   5B19 42                 2848  .db 0h42 ; 0h0B4D: normal track data
   5B1A 00                 2849  .db 0h00 ; 0h0B4E: vol off, no pitch, no note, no instrument
   5B1B 42                 2850  .db 0h42 ; 0h0B4F: normal track data
   5B1C 00                 2851  .db 0h00 ; 0h0B50: vol off, no pitch, no note, no instrument
   5B1D 42                 2852  .db 0h42 ; 0h0B51: normal track data
   5B1E 00                 2853  .db 0h00 ; 0h0B52: vol off, no pitch, no note, no instrument
   5B1F 42                 2854  .db 0h42 ; 0h0B53: normal track data
   5B20 00                 2855  .db 0h00 ; 0h0B54: vol off, no pitch, no note, no instrument
   5B21 42                 2856  .db 0h42 ; 0h0B55: normal track data
   5B22 00                 2857  .db 0h00 ; 0h0B56: vol off, no pitch, no note, no instrument
   5B23 02                 2858  .db 0h02 ; 0h0B57: normal track data,  wait 0
   5B24 42                 2859  .db 0h42 ; 0h0B58: normal track data
   5B25 00                 2860  .db 0h00 ; 0h0B59: vol off, no pitch, no note, no instrument
   5B26 02                 2861  .db 0h02 ; 0h0B5A: normal track data,  wait 0
   5B27 42                 2862  .db 0h42 ; 0h0B5B: normal track data
   5B28 00                 2863  .db 0h00 ; 0h0B5C: vol off, no pitch, no note, no instrument
   5B29 02                 2864  .db 0h02 ; 0h0B5D: normal track data,  wait 0
   5B2A 42                 2865  .db 0h42 ; 0h0B5E: normal track data
   5B2B 00                 2866  .db 0h00 ; 0h0B5F: vol off, no pitch, no note, no instrument
   5B2C 02                 2867  .db 0h02 ; 0h0B60: normal track data,  wait 0
   5B2D 42                 2868  .db 0h42 ; 0h0B61: normal track data
   5B2E 00                 2869  .db 0h00 ; 0h0B62: vol off, no pitch, no note, no instrument
   5B2F 02                 2870  .db 0h02 ; 0h0B63: normal track data,  wait 0
   5B30 42                 2871  .db 0h42 ; 0h0B64: normal track data
   5B31 00                 2872  .db 0h00 ; 0h0B65: vol off, no pitch, no note, no instrument
   5B32 02                 2873  .db 0h02 ; 0h0B66: normal track data,  wait 0
   5B33 42                 2874  .db 0h42 ; 0h0B67: normal track data
   5B34 00                 2875  .db 0h00 ; 0h0B68: vol off, no pitch, no note, no instrument
   5B35 42                 2876  .db 0h42 ; 0h0B69: normal track data
   5B36 00                 2877  .db 0h00 ; 0h0B6A: vol off, no pitch, no note, no instrument
   5B37 42                 2878  .db 0h42 ; 0h0B6B: normal track data
   5B38 00                 2879  .db 0h00 ; 0h0B6C: vol off, no pitch, no note, no instrument
   5B39 42                 2880  .db 0h42 ; 0h0B6D: normal track data
   5B3A 00                 2881  .db 0h00 ; 0h0B6E: vol off, no pitch, no note, no instrument
   5B3B 42                 2882  .db 0h42 ; 0h0B6F: normal track data
   5B3C 00                 2883  .db 0h00 ; 0h0B70: vol off, no pitch, no note, no instrument
   5B3D 02                 2884  .db 0h02 ; 0h0B71: normal track data,  wait 0
   5B3E 42                 2885  .db 0h42 ; 0h0B72: normal track data
   5B3F 00                 2886  .db 0h00 ; 0h0B73: vol off, no pitch, no note, no instrument
   5B40 02                 2887  .db 0h02 ; 0h0B74: normal track data,  wait 0
   5B41 42                 2888  .db 0h42 ; 0h0B75: normal track data
   5B42 00                 2889  .db 0h00 ; 0h0B76: vol off, no pitch, no note, no instrument
   5B43 42                 2890  .db 0h42 ; 0h0B77: normal track data
   5B44 00                 2891  .db 0h00 ; 0h0B78: vol off, no pitch, no note, no instrument
   5B45 42                 2892  .db 0h42 ; 0h0B79: normal track data
   5B46 00                 2893  .db 0h00 ; 0h0B7A: vol off, no pitch, no note, no instrument
   5B47 02                 2894  .db 0h02 ; 0h0B7B: normal track data,  wait 0
   5B48 42                 2895  .db 0h42 ; 0h0B7C: normal track data
   5B49 00                 2896  .db 0h00 ; 0h0B7D: vol off, no pitch, no note, no instrument
   5B4A 02                 2897  .db 0h02 ; 0h0B7E: normal track data,  wait 0
   5B4B 76                 2898  .db 0h76 ; 0h0B7F: normal track data
   5B4C 73                 2899  .db 0h73 ; 0h0B80: vol = 0h6 (inverted), no pitch, no note, no instrument
   5B4D 05                 2900  .db 0h05 ; 0h0B81: instrument
   5B4E 7A                 2901  .db 0h7A ; 0h0B82: normal track data
   5B4F 40                 2902  .db 0h40 ; 0h0B83: vol off, no pitch, note, no instrument
   5B50 7C                 2903  .db 0h7C ; 0h0B84: normal track data
   5B51 40                 2904  .db 0h40 ; 0h0B85: vol off, no pitch, note, no instrument
   5B52 80                 2905  .db 0h80 ; 0h0B86: normal track data
   5B53 40                 2906  .db 0h40 ; 0h0B87: vol off, no pitch, note, no instrument
   5B54 84                 2907  .db 0h84 ; 0h0B88: normal track data
   5B55 40                 2908  .db 0h40 ; 0h0B89: vol off, no pitch, note, no instrument
   5B56 88                 2909  .db 0h88 ; 0h0B8A: normal track data
   5B57 40                 2910  .db 0h40 ; 0h0B8B: vol off, no pitch, note, no instrument
   5B58 8A                 2911  .db 0h8A ; 0h0B8C: normal track data
   5B59 40                 2912  .db 0h40 ; 0h0B8D: vol off, no pitch, note, no instrument
   5B5A 8E                 2913  .db 0h8E ; 0h0B8E: normal track data
   5B5B 40                 2914  .db 0h40 ; 0h0B8F: vol off, no pitch, note, no instrument
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

