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
   2799                      13 aks_song:
   2799 06                   14  .db 0h06 ; 0h0009: default speed
   279A 00 C6                15  .dw 0h00C6 ; 0h000A: size of instrument table (without this word pointer)
   279C 27 B0                16  .dw instrument0Test ; 0h000C: [0h4020] pointer to instrument 0
   279E 27 B9                17  .dw instrument1Test ; 0h000E: [0h4029] pointer to instrument 1
   27A0 27 C0                18  .dw instrument2Test ; 0h0010: [0h4030] pointer to instrument 2
   27A2 27 C8                19  .dw instrument3Test ; 0h0012: [0h4038] pointer to instrument 3
   27A4 27 DD                20  .dw instrument4Test ; 0h0014: [0h404D] pointer to instrument 4
   27A6 27 ED                21  .dw instrument5Test ; 0h0016: [0h405D] pointer to instrument 5
   27A8 28 22                22  .dw instrument6Test ; 0h0018: [0h4092] pointer to instrument 6
   27AA 28 32                23  .dw instrument7Test ; 0h001A: [0h40A2] pointer to instrument 7
   27AC 28 42                24  .dw instrument8Test ; 0h001C: [0h40B2] pointer to instrument 8
   27AE 28 52                25  .dw instrument9Test ; 0h001E: [0h40C2] pointer to instrument 9
   27B0                      26 instrument0Test:
   27B0 00                   27  .db 0h00 ; 0h0020: speed
   27B1 00                   28  .db 0h00 ; 0h0021: retrig
   27B2                      29 instrument0loopTest:
   27B2 00                   30  .db 0h00 ; 0h0022: dataColumn_0 (non hard), vol=0h0
   27B3 00                   31  .db 0h00 ; 0h0023: dataColumn_0 (non hard), vol=0h0
   27B4 00                   32  .db 0h00 ; 0h0024: dataColumn_0 (non hard), vol=0h0
   27B5 00                   33  .db 0h00 ; 0h0025: dataColumn_0 (non hard), vol=0h0
   27B6 0D                   34  .db 0h0D ; 0h0026: dataColumn_0 (hard)
   27B7 27 B2                35  .dw instrument0loopTest ; 0h0027: [0h4022] loop
   27B9                      36 instrument1Test:
   27B9 01                   37  .db 0h01 ; 0h0029: speed
   27BA 00                   38  .db 0h00 ; 0h002A: retrig
   27BB 36                   39  .db 0h36 ; 0h002B: dataColumn_0 (non hard), vol=0hD
   27BC 01                   40  .db 0h01 ; 0h002C: dataColumn_1, noise=0h01
   27BD 0D                   41  .db 0h0D ; 0h002D: dataColumn_0 (hard)
   27BE 27 B2                42  .dw instrument0loopTest ; 0h002E: [0h4022] loop
   27C0                      43 instrument2Test:
   27C0 06                   44  .db 0h06 ; 0h0030: speed
   27C1 00                   45  .db 0h00 ; 0h0031: retrig
   27C2 2C                   46  .db 0h2C ; 0h0032: dataColumn_0 (non hard), vol=0hB
   27C3 24                   47  .db 0h24 ; 0h0033: dataColumn_0 (non hard), vol=0h9
   27C4 14                   48  .db 0h14 ; 0h0034: dataColumn_0 (non hard), vol=0h5
   27C5 0D                   49  .db 0h0D ; 0h0035: dataColumn_0 (hard)
   27C6 27 B2                50  .dw instrument0loopTest ; 0h0036: [0h4022] loop
   27C8                      51 instrument3Test:
   27C8 01                   52  .db 0h01 ; 0h0038: speed
   27C9 00                   53  .db 0h00 ; 0h0039: retrig
   27CA 36                   54  .db 0h36 ; 0h003A: dataColumn_0 (non hard), vol=0hD
   27CB 0B                   55  .db 0h0B ; 0h003B: dataColumn_1, noise=0h0B
   27CC 7C                   56  .db 0h7C ; 0h003C: dataColumn_0 (non hard), vol=0hF
   27CD 16                   57  .db 0h16 ; 0h003D: arpegio
   27CE 7C                   58  .db 0h7C ; 0h003E: dataColumn_0 (non hard), vol=0hF
   27CF 0C                   59  .db 0h0C ; 0h003F: arpegio
   27D0 7C                   60  .db 0h7C ; 0h0040: dataColumn_0 (non hard), vol=0hF
   27D1 0A                   61  .db 0h0A ; 0h0041: arpegio
   27D2 7C                   62  .db 0h7C ; 0h0042: dataColumn_0 (non hard), vol=0hF
   27D3 08                   63  .db 0h08 ; 0h0043: arpegio
   27D4 7C                   64  .db 0h7C ; 0h0044: dataColumn_0 (non hard), vol=0hF
   27D5 04                   65  .db 0h04 ; 0h0045: arpegio
   27D6 78                   66  .db 0h78 ; 0h0046: dataColumn_0 (non hard), vol=0hE
   27D7 03                   67  .db 0h03 ; 0h0047: arpegio
   27D8 6C                   68  .db 0h6C ; 0h0048: dataColumn_0 (non hard), vol=0hB
   27D9 01                   69  .db 0h01 ; 0h0049: arpegio
   27DA 0D                   70  .db 0h0D ; 0h004A: dataColumn_0 (hard)
   27DB 27 B2                71  .dw instrument0loopTest ; 0h004B: [0h4022] loop
   27DD                      72 instrument4Test:
   27DD 01                   73  .db 0h01 ; 0h004D: speed
   27DE 00                   74  .db 0h00 ; 0h004E: retrig
   27DF 3E                   75  .db 0h3E ; 0h004F: dataColumn_0 (non hard), vol=0hF
   27E0 02                   76  .db 0h02 ; 0h0050: dataColumn_1, noise=0h02
   27E1 3E                   77  .db 0h3E ; 0h0051: dataColumn_0 (non hard), vol=0hF
   27E2 2A                   78  .db 0h2A ; 0h0052: dataColumn_1, noise=0h0A
   27E3 7E                   79  .db 0h7E ; 0h0053: dataColumn_0 (non hard), vol=0hF
   27E4 2A                   80  .db 0h2A ; 0h0054: dataColumn_1, noise=0h0A
   27E5 02                   81  .db 0h02 ; 0h0055: arpegio
   27E6 3E                   82  .db 0h3E ; 0h0056: dataColumn_0 (non hard), vol=0hF
   27E7 0B                   83  .db 0h0B ; 0h0057: dataColumn_1, noise=0h0B
   27E8 3E                   84  .db 0h3E ; 0h0058: dataColumn_0 (non hard), vol=0hF
   27E9 0C                   85  .db 0h0C ; 0h0059: dataColumn_1, noise=0h0C
   27EA 0D                   86  .db 0h0D ; 0h005A: dataColumn_0 (hard)
   27EB 27 B2                87  .dw instrument0loopTest ; 0h005B: [0h4022] loop
   27ED                      88 instrument5Test:
   27ED 0C                   89  .db 0h0C ; 0h005D: speed
   27EE FE                   90  .db 0hFE ; 0h005E: retrig
   27EF 09                   91  .db 0h09 ; 0h005F: dataColumn_0 (hard)
   27F0 28                   92  .db 0h28 ; 0h0060: Independent dependend 2. byte
   27F1 24                   93  .db 0h24 ; 0h0061: independend hardware arpegio
   27F2 09                   94  .db 0h09 ; 0h0062: dataColumn_0 (hard)
   27F3 28                   95  .db 0h28 ; 0h0063: Independent dependend 2. byte
   27F4 18                   96  .db 0h18 ; 0h0064: independend hardware arpegio
   27F5 09                   97  .db 0h09 ; 0h0065: dataColumn_0 (hard)
   27F6 28                   98  .db 0h28 ; 0h0066: Independent dependend 2. byte
   27F7 24                   99  .db 0h24 ; 0h0067: independend hardware arpegio
   27F8 09                  100  .db 0h09 ; 0h0068: dataColumn_0 (hard)
   27F9 28                  101  .db 0h28 ; 0h0069: Independent dependend 2. byte
   27FA 18                  102  .db 0h18 ; 0h006A: independend hardware arpegio
   27FB 27                  103  .db 0h27 ; 0h006B: dataColumn_0 (hard)
   27FC 28                  104  .db 0h28 ; 0h006C: software dependend 2. byte
   27FD E8                  105  .db 0hE8 ; 0h006D: arpegio
   27FE 09                  106  .db 0h09 ; 0h006E: dataColumn_0 (hard)
   27FF 28                  107  .db 0h28 ; 0h006F: Independent dependend 2. byte
   2800 18                  108  .db 0h18 ; 0h0070: independend hardware arpegio
   2801 0B                  109  .db 0h0B ; 0h0071: dataColumn_0 (hard)
   2802 28                  110  .db 0h28 ; 0h0072: Independent dependend 2. byte
   2803 24                  111  .db 0h24 ; 0h0073: independend hardware arpegio
   2804 09                  112  .db 0h09 ; 0h0074: dataColumn_0 (hard)
   2805 28                  113  .db 0h28 ; 0h0075: Independent dependend 2. byte
   2806 18                  114  .db 0h18 ; 0h0076: independend hardware arpegio
   2807 23                  115  .db 0h23 ; 0h0077: dataColumn_0 (hard)
   2808 28                  116  .db 0h28 ; 0h0078: hardware dependend 2. byte
   2809 24                  117  .db 0h24 ; 0h0079: arpegio
   280A 21                  118  .db 0h21 ; 0h007A: dataColumn_0 (hard)
   280B 38                  119  .db 0h38 ; 0h007B: hardware dependend 2. byte
   280C 18                  120  .db 0h18 ; 0h007C: arpegio
   280D 21                  121  .db 0h21 ; 0h007D: dataColumn_0 (hard)
   280E 28                  122  .db 0h28 ; 0h007E: hardware dependend 2. byte
   280F 24                  123  .db 0h24 ; 0h007F: arpegio
   2810 21                  124  .db 0h21 ; 0h0080: dataColumn_0 (hard)
   2811 38                  125  .db 0h38 ; 0h0081: hardware dependend 2. byte
   2812 18                  126  .db 0h18 ; 0h0082: arpegio
   2813 21                  127  .db 0h21 ; 0h0083: dataColumn_0 (hard)
   2814 28                  128  .db 0h28 ; 0h0084: hardware dependend 2. byte
   2815 24                  129  .db 0h24 ; 0h0085: arpegio
   2816 21                  130  .db 0h21 ; 0h0086: dataColumn_0 (hard)
   2817 38                  131  .db 0h38 ; 0h0087: hardware dependend 2. byte
   2818 18                  132  .db 0h18 ; 0h0088: arpegio
   2819 21                  133  .db 0h21 ; 0h0089: dataColumn_0 (hard)
   281A 28                  134  .db 0h28 ; 0h008A: hardware dependend 2. byte
   281B 24                  135  .db 0h24 ; 0h008B: arpegio
   281C 21                  136  .db 0h21 ; 0h008C: dataColumn_0 (hard)
   281D 38                  137  .db 0h38 ; 0h008D: hardware dependend 2. byte
   281E 18                  138  .db 0h18 ; 0h008E: arpegio
   281F 0D                  139  .db 0h0D ; 0h008F: dataColumn_0 (hard)
   2820 27 B2               140  .dw instrument0loopTest ; 0h0090: [0h4022] loop
   2822                     141 instrument6Test:
   2822 01                  142  .db 0h01 ; 0h0092: speed
   2823 00                  143  .db 0h00 ; 0h0093: retrig
   2824 3C                  144  .db 0h3C ; 0h0094: dataColumn_0 (non hard), vol=0hF
   2825 7C                  145  .db 0h7C ; 0h0095: dataColumn_0 (non hard), vol=0hF
   2826 03                  146  .db 0h03 ; 0h0096: arpegio
   2827 7C                  147  .db 0h7C ; 0h0097: dataColumn_0 (non hard), vol=0hF
   2828 07                  148  .db 0h07 ; 0h0098: arpegio
   2829 3C                  149  .db 0h3C ; 0h0099: dataColumn_0 (non hard), vol=0hF
   282A 7C                  150  .db 0h7C ; 0h009A: dataColumn_0 (non hard), vol=0hF
   282B 03                  151  .db 0h03 ; 0h009B: arpegio
   282C 7C                  152  .db 0h7C ; 0h009C: dataColumn_0 (non hard), vol=0hF
   282D 07                  153  .db 0h07 ; 0h009D: arpegio
   282E 00                  154  .db 0h00 ; 0h009E: dataColumn_0 (non hard), vol=0h0
   282F 0D                  155  .db 0h0D ; 0h009F: dataColumn_0 (hard)
   2830 27 B2               156  .dw instrument0loopTest ; 0h00A0: [0h4022] loop
   2832                     157 instrument7Test:
   2832 01                  158  .db 0h01 ; 0h00A2: speed
   2833 00                  159  .db 0h00 ; 0h00A3: retrig
   2834 3C                  160  .db 0h3C ; 0h00A4: dataColumn_0 (non hard), vol=0hF
   2835 7C                  161  .db 0h7C ; 0h00A5: dataColumn_0 (non hard), vol=0hF
   2836 04                  162  .db 0h04 ; 0h00A6: arpegio
   2837 7C                  163  .db 0h7C ; 0h00A7: dataColumn_0 (non hard), vol=0hF
   2838 07                  164  .db 0h07 ; 0h00A8: arpegio
   2839 3C                  165  .db 0h3C ; 0h00A9: dataColumn_0 (non hard), vol=0hF
   283A 7C                  166  .db 0h7C ; 0h00AA: dataColumn_0 (non hard), vol=0hF
   283B 04                  167  .db 0h04 ; 0h00AB: arpegio
   283C 7C                  168  .db 0h7C ; 0h00AC: dataColumn_0 (non hard), vol=0hF
   283D 07                  169  .db 0h07 ; 0h00AD: arpegio
   283E 00                  170  .db 0h00 ; 0h00AE: dataColumn_0 (non hard), vol=0h0
   283F 0D                  171  .db 0h0D ; 0h00AF: dataColumn_0 (hard)
   2840 27 B2               172  .dw instrument0loopTest ; 0h00B0: [0h4022] loop
   2842                     173 instrument8Test:
   2842 01                  174  .db 0h01 ; 0h00B2: speed
   2843 00                  175  .db 0h00 ; 0h00B3: retrig
   2844 3C                  176  .db 0h3C ; 0h00B4: dataColumn_0 (non hard), vol=0hF
   2845 7C                  177  .db 0h7C ; 0h00B5: dataColumn_0 (non hard), vol=0hF
   2846 05                  178  .db 0h05 ; 0h00B6: arpegio
   2847 7C                  179  .db 0h7C ; 0h00B7: dataColumn_0 (non hard), vol=0hF
   2848 09                  180  .db 0h09 ; 0h00B8: arpegio
   2849 3C                  181  .db 0h3C ; 0h00B9: dataColumn_0 (non hard), vol=0hF
   284A 7C                  182  .db 0h7C ; 0h00BA: dataColumn_0 (non hard), vol=0hF
   284B 05                  183  .db 0h05 ; 0h00BB: arpegio
   284C 7C                  184  .db 0h7C ; 0h00BC: dataColumn_0 (non hard), vol=0hF
   284D 09                  185  .db 0h09 ; 0h00BD: arpegio
   284E 00                  186  .db 0h00 ; 0h00BE: dataColumn_0 (non hard), vol=0h0
   284F 0D                  187  .db 0h0D ; 0h00BF: dataColumn_0 (hard)
   2850 27 B2               188  .dw instrument0loopTest ; 0h00C0: [0h4022] loop
   2852                     189 instrument9Test:
   2852 01                  190  .db 0h01 ; 0h00C2: speed
   2853 00                  191  .db 0h00 ; 0h00C3: retrig
   2854 3C                  192  .db 0h3C ; 0h00C4: dataColumn_0 (non hard), vol=0hF
   2855 7C                  193  .db 0h7C ; 0h00C5: dataColumn_0 (non hard), vol=0hF
   2856 05                  194  .db 0h05 ; 0h00C6: arpegio
   2857 7C                  195  .db 0h7C ; 0h00C7: dataColumn_0 (non hard), vol=0hF
   2858 07                  196  .db 0h07 ; 0h00C8: arpegio
   2859 3C                  197  .db 0h3C ; 0h00C9: dataColumn_0 (non hard), vol=0hF
   285A 7C                  198  .db 0h7C ; 0h00CA: dataColumn_0 (non hard), vol=0hF
   285B 05                  199  .db 0h05 ; 0h00CB: arpegio
   285C 7C                  200  .db 0h7C ; 0h00CC: dataColumn_0 (non hard), vol=0hF
   285D 07                  201  .db 0h07 ; 0h00CD: arpegio
   285E 00                  202  .db 0h00 ; 0h00CE: dataColumn_0 (non hard), vol=0h0
   285F 0D                  203  .db 0h0D ; 0h00CF: dataColumn_0 (hard)
   2860 27 B2               204  .dw instrument0loopTest ; 0h00D0: [0h4022] loop
                            205 ; start of linker definition
   2862                     206 linkerTest:
   2862 40                  207  .db 0h40 ; 0h00D2: first height
   2863 00                  208  .db 0h00 ; 0h00D3: transposition1
   2864 00                  209  .db 0h00 ; 0h00D4: transposition2
   2865 00                  210  .db 0h00 ; 0h00D5: transposition3
   2866 28 F7               211  .dw specialtrackDef0Test ; 0h00D6: [0h4167] specialTrack
   2868                     212 pattern0DefinitionTest:
   2868 00                  213  .db 0h00 ; 0h00D8: pattern 0 state
   2869 28 FE               214  .dw trackDef0Test ; 0h00D9: [0h416E] pattern 0, track 1
   286B 28 F8               215  .dw trackDef1Test ; 0h00DB: [0h4168] pattern 0, track 2
   286D 28 F8               216  .dw trackDef1Test ; 0h00DD: [0h4168] pattern 0, track 3
   286F                     217 pattern1DefinitionTest:
   286F 00                  218  .db 0h00 ; 0h00DF: pattern 1 state
   2870 28 FE               219  .dw trackDef0Test ; 0h00E0: [0h416E] pattern 1, track 1
   2872 29 4D               220  .dw trackDef3Test ; 0h00E2: [0h41BD] pattern 1, track 2
   2874 29 B2               221  .dw trackDef4Test ; 0h00E4: [0h4222] pattern 1, track 3
   2876                     222 pattern2DefinitionTest:
   2876 00                  223  .db 0h00 ; 0h00E6: pattern 2 state
   2877 28 FE               224  .dw trackDef0Test ; 0h00E7: [0h416E] pattern 2, track 1
   2879 29 5F               225  .dw trackDef5Test ; 0h00E9: [0h41CF] pattern 2, track 2
   287B 2A 29               226  .dw trackDef6Test ; 0h00EB: [0h4299] pattern 2, track 3
   287D                     227 pattern3DefinitionTest:
   287D 00                  228  .db 0h00 ; 0h00ED: pattern 3 state
   287E 2A 44               229  .dw trackDef7Test ; 0h00EE: [0h42B4] pattern 3, track 1
   2880 2A 9C               230  .dw trackDef8Test ; 0h00F0: [0h430C] pattern 3, track 2
   2882 2A FA               231  .dw trackDef9Test ; 0h00F2: [0h436A] pattern 3, track 3
   2884                     232 pattern4DefinitionTest:
   2884 00                  233  .db 0h00 ; 0h00F4: pattern 4 state
   2885 28 FE               234  .dw trackDef0Test ; 0h00F5: [0h416E] pattern 4, track 1
   2887 2B A2               235  .dw trackDef10Test ; 0h00F7: [0h4412] pattern 4, track 2
   2889 2D 8D               236  .dw trackDef11Test ; 0h00F9: [0h45FD] pattern 4, track 3
   288B                     237 pattern5DefinitionTest:
   288B 00                  238  .db 0h00 ; 0h00FB: pattern 5 state
   288C 2A 44               239  .dw trackDef7Test ; 0h00FC: [0h42B4] pattern 5, track 1
   288E 2C 38               240  .dw trackDef12Test ; 0h00FE: [0h44A8] pattern 5, track 2
   2890 2E 10               241  .dw trackDef13Test ; 0h0100: [0h4680] pattern 5, track 3
   2892                     242 pattern6DefinitionTest:
   2892 00                  243  .db 0h00 ; 0h0102: pattern 6 state
   2893 2B 1F               244  .dw trackDef14Test ; 0h0103: [0h438F] pattern 6, track 1
   2895 2C CB               245  .dw trackDef15Test ; 0h0105: [0h453B] pattern 6, track 2
   2897 29 C2               246  .dw trackDef16Test ; 0h0107: [0h4232] pattern 6, track 3
   2899                     247 pattern7DefinitionTest:
   2899 00                  248  .db 0h00 ; 0h0109: pattern 7 state
   289A 2F 44               249  .dw trackDef17Test ; 0h010A: [0h47B4] pattern 7, track 1
   289C 2E 93               250  .dw trackDef18Test ; 0h010C: [0h4703] pattern 7, track 2
   289E 2F BD               251  .dw trackDef19Test ; 0h010E: [0h482D] pattern 7, track 3
   28A0                     252 pattern8DefinitionTest:
   28A0 00                  253  .db 0h00 ; 0h0110: pattern 8 state
   28A1 30 25               254  .dw trackDef20Test ; 0h0111: [0h4895] pattern 8, track 1
   28A3 30 A9               255  .dw trackDef21Test ; 0h0113: [0h4919] pattern 8, track 2
   28A5 29 C2               256  .dw trackDef16Test ; 0h0115: [0h4232] pattern 8, track 3
   28A7                     257 pattern9DefinitionTest:
   28A7 00                  258  .db 0h00 ; 0h0117: pattern 9 state
   28A8 30 25               259  .dw trackDef20Test ; 0h0118: [0h4895] pattern 9, track 1
   28AA 30 A9               260  .dw trackDef21Test ; 0h011A: [0h4919] pattern 9, track 2
   28AC 2F BD               261  .dw trackDef19Test ; 0h011C: [0h482D] pattern 9, track 3
   28AE                     262 pattern10DefinitionTest:
   28AE 00                  263  .db 0h00 ; 0h011E: pattern 10 state
   28AF 2B 1F               264  .dw trackDef14Test ; 0h011F: [0h438F] pattern 10, track 1
   28B1 2C CB               265  .dw trackDef15Test ; 0h0121: [0h453B] pattern 10, track 2
   28B3 31 56               266  .dw trackDef24Test ; 0h0123: [0h49C6] pattern 10, track 3
   28B5                     267 pattern11DefinitionTest:
   28B5 00                  268  .db 0h00 ; 0h0125: pattern 11 state
   28B6 2F 44               269  .dw trackDef17Test ; 0h0126: [0h47B4] pattern 11, track 1
   28B8 2E 93               270  .dw trackDef18Test ; 0h0128: [0h4703] pattern 11, track 2
   28BA 31 BC               271  .dw trackDef26Test ; 0h012A: [0h4A2C] pattern 11, track 3
   28BC                     272 pattern12DefinitionTest:
   28BC 00                  273  .db 0h00 ; 0h012C: pattern 12 state
   28BD 28 F8               274  .dw trackDef1Test ; 0h012D: [0h4168] pattern 12, track 1
   28BF 28 F8               275  .dw trackDef1Test ; 0h012F: [0h4168] pattern 12, track 2
   28C1 32 2A               276  .dw trackDef27Test ; 0h0131: [0h4A9A] pattern 12, track 3
   28C3                     277 pattern13DefinitionTest:
   28C3 00                  278  .db 0h00 ; 0h0133: pattern 13 state
   28C4 32 B1               279  .dw trackDef28Test ; 0h0134: [0h4B21] pattern 13, track 1
   28C6 32 5D               280  .dw trackDef29Test ; 0h0136: [0h4ACD] pattern 13, track 2
   28C8 32 2A               281  .dw trackDef27Test ; 0h0138: [0h4A9A] pattern 13, track 3
   28CA                     282 pattern14DefinitionTest:
   28CA 00                  283  .db 0h00 ; 0h013A: pattern 14 state
   28CB 2B 1F               284  .dw trackDef14Test ; 0h013B: [0h438F] pattern 14, track 1
   28CD 2C CB               285  .dw trackDef15Test ; 0h013D: [0h453B] pattern 14, track 2
   28CF 29 C2               286  .dw trackDef16Test ; 0h013F: [0h4232] pattern 14, track 3
   28D1                     287 pattern15DefinitionTest:
   28D1 00                  288  .db 0h00 ; 0h0141: pattern 15 state
   28D2 2F 44               289  .dw trackDef17Test ; 0h0142: [0h47B4] pattern 15, track 1
   28D4 2E 93               290  .dw trackDef18Test ; 0h0144: [0h4703] pattern 15, track 2
   28D6 2F BD               291  .dw trackDef19Test ; 0h0146: [0h482D] pattern 15, track 3
   28D8                     292 pattern16DefinitionTest:
   28D8 00                  293  .db 0h00 ; 0h0148: pattern 16 state
   28D9 30 25               294  .dw trackDef20Test ; 0h0149: [0h4895] pattern 16, track 1
   28DB 30 A9               295  .dw trackDef21Test ; 0h014B: [0h4919] pattern 16, track 2
   28DD 29 C2               296  .dw trackDef16Test ; 0h014D: [0h4232] pattern 16, track 3
   28DF                     297 pattern17DefinitionTest:
   28DF 00                  298  .db 0h00 ; 0h014F: pattern 17 state
   28E0 30 25               299  .dw trackDef20Test ; 0h0150: [0h4895] pattern 17, track 1
   28E2 30 A9               300  .dw trackDef21Test ; 0h0152: [0h4919] pattern 17, track 2
   28E4 2F BD               301  .dw trackDef19Test ; 0h0154: [0h482D] pattern 17, track 3
   28E6                     302 pattern18DefinitionTest:
   28E6 00                  303  .db 0h00 ; 0h0156: pattern 18 state
   28E7 2B 1F               304  .dw trackDef14Test ; 0h0157: [0h438F] pattern 18, track 1
   28E9 2C CB               305  .dw trackDef15Test ; 0h0159: [0h453B] pattern 18, track 2
   28EB 31 56               306  .dw trackDef24Test ; 0h015B: [0h49C6] pattern 18, track 3
   28ED                     307 pattern19DefinitionTest:
   28ED 00                  308  .db 0h00 ; 0h015D: pattern 19 state
   28EE 2F 44               309  .dw trackDef17Test ; 0h015E: [0h47B4] pattern 19, track 1
   28F0 2E 93               310  .dw trackDef18Test ; 0h0160: [0h4703] pattern 19, track 2
   28F2 31 BC               311  .dw trackDef26Test ; 0h0162: [0h4A2C] pattern 19, track 3
   28F4                     312 pattern20DefinitionTest:
   28F4 01                  313  .db 0h01 ; 0h0164: pattern 20 state
   28F5 28 68               314  .dw pattern0DefinitionTest ; 0h0165: [0h40D8] song restart address
   28F7                     315 specialtrackDef0Test:
   28F7 00                  316  .db 0h00 ; 0h0167: wait 128
   28F8                     317 trackDef1Test:
   28F8 7A                  318  .db 0h7A ; 0h0168: normal track data,  note: E2
   28F9 FF                  319  .db 0hFF ; 0h0169: vol = 0h0 (inverted), no pitch, no note, no instrument
   28FA 00 00               320  .dw 0h0000 ; 0h016A: pitch
   28FC 01                  321  .db 0h01 ; 0h016C: instrument
   28FD 00                  322  .db 0h00 ; 0h016D: track end signature found
   28FE                     323 trackDef0Test:
   28FE 92                  324  .db 0h92 ; 0h016E: normal track data
   28FF E1                  325  .db 0hE1 ; 0h016F: vol = 0hF (inverted), no pitch, no note, no instrument
   2900 00 00               326  .dw 0h0000 ; 0h0170: pitch
   2902 02                  327  .db 0h02 ; 0h0172: instrument
   2903 02                  328  .db 0h02 ; 0h0173: normal track data,  wait 0
   2904 92                  329  .db 0h92 ; 0h0174: normal track data
   2905 40                  330  .db 0h40 ; 0h0175: vol off, no pitch, note, no instrument
   2906 02                  331  .db 0h02 ; 0h0176: normal track data,  wait 0
   2907 AA                  332  .db 0hAA ; 0h0177: normal track data
   2908 40                  333  .db 0h40 ; 0h0178: vol off, no pitch, note, no instrument
   2909 AC                  334  .db 0hAC ; 0h0179: normal track data
   290A 40                  335  .db 0h40 ; 0h017A: vol off, no pitch, note, no instrument
   290B B0                  336  .db 0hB0 ; 0h017B: normal track data
   290C 40                  337  .db 0h40 ; 0h017C: vol off, no pitch, note, no instrument
   290D B4                  338  .db 0hB4 ; 0h017D: normal track data
   290E 40                  339  .db 0h40 ; 0h017E: vol off, no pitch, note, no instrument
   290F 92                  340  .db 0h92 ; 0h017F: normal track data
   2910 40                  341  .db 0h40 ; 0h0180: vol off, no pitch, note, no instrument
   2911 02                  342  .db 0h02 ; 0h0181: normal track data,  wait 0
   2912 92                  343  .db 0h92 ; 0h0182: normal track data
   2913 40                  344  .db 0h40 ; 0h0183: vol off, no pitch, note, no instrument
   2914 0A                  345  .db 0h0A ; 0h0184: normal track data,  wait 4
   2915 92                  346  .db 0h92 ; 0h0185: normal track data
   2916 40                  347  .db 0h40 ; 0h0186: vol off, no pitch, note, no instrument
   2917 02                  348  .db 0h02 ; 0h0187: normal track data,  wait 0
   2918 92                  349  .db 0h92 ; 0h0188: normal track data
   2919 40                  350  .db 0h40 ; 0h0189: vol off, no pitch, note, no instrument
   291A 02                  351  .db 0h02 ; 0h018A: normal track data,  wait 0
   291B 94                  352  .db 0h94 ; 0h018B: normal track data
   291C 40                  353  .db 0h40 ; 0h018C: vol off, no pitch, note, no instrument
   291D 02                  354  .db 0h02 ; 0h018D: normal track data,  wait 0
   291E 94                  355  .db 0h94 ; 0h018E: normal track data
   291F 40                  356  .db 0h40 ; 0h018F: vol off, no pitch, note, no instrument
   2920 02                  357  .db 0h02 ; 0h0190: normal track data,  wait 0
   2921 92                  358  .db 0h92 ; 0h0191: normal track data
   2922 40                  359  .db 0h40 ; 0h0192: vol off, no pitch, note, no instrument
   2923 02                  360  .db 0h02 ; 0h0193: normal track data,  wait 0
   2924 92                  361  .db 0h92 ; 0h0194: normal track data
   2925 40                  362  .db 0h40 ; 0h0195: vol off, no pitch, note, no instrument
   2926 0A                  363  .db 0h0A ; 0h0196: normal track data,  wait 4
   2927 92                  364  .db 0h92 ; 0h0197: normal track data
   2928 40                  365  .db 0h40 ; 0h0198: vol off, no pitch, note, no instrument
   2929 02                  366  .db 0h02 ; 0h0199: normal track data,  wait 0
   292A 92                  367  .db 0h92 ; 0h019A: normal track data
   292B 40                  368  .db 0h40 ; 0h019B: vol off, no pitch, note, no instrument
   292C 02                  369  .db 0h02 ; 0h019C: normal track data,  wait 0
   292D AA                  370  .db 0hAA ; 0h019D: normal track data
   292E 40                  371  .db 0h40 ; 0h019E: vol off, no pitch, note, no instrument
   292F AC                  372  .db 0hAC ; 0h019F: normal track data
   2930 40                  373  .db 0h40 ; 0h01A0: vol off, no pitch, note, no instrument
   2931 B0                  374  .db 0hB0 ; 0h01A1: normal track data
   2932 40                  375  .db 0h40 ; 0h01A2: vol off, no pitch, note, no instrument
   2933 B4                  376  .db 0hB4 ; 0h01A3: normal track data
   2934 40                  377  .db 0h40 ; 0h01A4: vol off, no pitch, note, no instrument
   2935 92                  378  .db 0h92 ; 0h01A5: normal track data
   2936 40                  379  .db 0h40 ; 0h01A6: vol off, no pitch, note, no instrument
   2937 02                  380  .db 0h02 ; 0h01A7: normal track data,  wait 0
   2938 92                  381  .db 0h92 ; 0h01A8: normal track data
   2939 40                  382  .db 0h40 ; 0h01A9: vol off, no pitch, note, no instrument
   293A 0A                  383  .db 0h0A ; 0h01AA: normal track data,  wait 4
   293B 92                  384  .db 0h92 ; 0h01AB: normal track data
   293C 40                  385  .db 0h40 ; 0h01AC: vol off, no pitch, note, no instrument
   293D 02                  386  .db 0h02 ; 0h01AD: normal track data,  wait 0
   293E 92                  387  .db 0h92 ; 0h01AE: normal track data
   293F 40                  388  .db 0h40 ; 0h01AF: vol off, no pitch, note, no instrument
   2940 02                  389  .db 0h02 ; 0h01B0: normal track data,  wait 0
   2941 94                  390  .db 0h94 ; 0h01B1: normal track data
   2942 40                  391  .db 0h40 ; 0h01B2: vol off, no pitch, note, no instrument
   2943 02                  392  .db 0h02 ; 0h01B3: normal track data,  wait 0
   2944 94                  393  .db 0h94 ; 0h01B4: normal track data
   2945 40                  394  .db 0h40 ; 0h01B5: vol off, no pitch, note, no instrument
   2946 02                  395  .db 0h02 ; 0h01B6: normal track data,  wait 0
   2947 92                  396  .db 0h92 ; 0h01B7: normal track data
   2948 40                  397  .db 0h40 ; 0h01B8: vol off, no pitch, note, no instrument
   2949 02                  398  .db 0h02 ; 0h01B9: normal track data,  wait 0
   294A 92                  399  .db 0h92 ; 0h01BA: normal track data
   294B 40                  400  .db 0h40 ; 0h01BB: vol off, no pitch, note, no instrument
   294C 00                  401  .db 0h00 ; 0h01BC: track end signature found
   294D                     402 trackDef3Test:
   294D 42                  403  .db 0h42 ; 0h01BD: normal track data
   294E 80                  404  .db 0h80 ; 0h01BE: vol off, pitch, no note, no instrument
   294F 00 00               405  .dw 0h0000 ; 0h01BF: pitch
   2951 3E                  406  .db 0h3E ; 0h01C1: normal track data,  wait 30
   2952 30                  407  .db 0h30 ; 0h01C2: normal track data,  wait 23
   2953 92                  408  .db 0h92 ; 0h01C3: normal track data
   2954 61                  409  .db 0h61 ; 0h01C4: vol = 0hF (inverted), no pitch, no note, no instrument
   2955 03                  410  .db 0h03 ; 0h01C5: instrument
   2956 02                  411  .db 0h02 ; 0h01C6: normal track data,  wait 0
   2957 92                  412  .db 0h92 ; 0h01C7: normal track data
   2958 60                  413  .db 0h60 ; 0h01C8: vol off, no pitch, note, instrument
   2959 04                  414  .db 0h04 ; 0h01C9: instrument
   295A 02                  415  .db 0h02 ; 0h01CA: normal track data,  wait 0
   295B 92                  416  .db 0h92 ; 0h01CB: normal track data
   295C 60                  417  .db 0h60 ; 0h01CC: vol off, no pitch, note, instrument
   295D 03                  418  .db 0h03 ; 0h01CD: instrument
   295E 00                  419  .db 0h00 ; 0h01CE: track end signature found
   295F                     420 trackDef5Test:
   295F 92                  421  .db 0h92 ; 0h01CF: normal track data
   2960 E1                  422  .db 0hE1 ; 0h01D0: vol = 0hF (inverted), no pitch, no note, no instrument
   2961 00 00               423  .dw 0h0000 ; 0h01D1: pitch
   2963 03                  424  .db 0h03 ; 0h01D3: instrument
   2964 02                  425  .db 0h02 ; 0h01D4: normal track data,  wait 0
   2965 92                  426  .db 0h92 ; 0h01D5: normal track data
   2966 40                  427  .db 0h40 ; 0h01D6: vol off, no pitch, note, no instrument
   2967 02                  428  .db 0h02 ; 0h01D7: normal track data,  wait 0
   2968 AA                  429  .db 0hAA ; 0h01D8: normal track data
   2969 40                  430  .db 0h40 ; 0h01D9: vol off, no pitch, note, no instrument
   296A AA                  431  .db 0hAA ; 0h01DA: normal track data
   296B 40                  432  .db 0h40 ; 0h01DB: vol off, no pitch, note, no instrument
   296C BA                  433  .db 0hBA ; 0h01DC: normal track data
   296D 40                  434  .db 0h40 ; 0h01DD: vol off, no pitch, note, no instrument
   296E BA                  435  .db 0hBA ; 0h01DE: normal track data
   296F 40                  436  .db 0h40 ; 0h01DF: vol off, no pitch, note, no instrument
   2970 92                  437  .db 0h92 ; 0h01E0: normal track data
   2971 40                  438  .db 0h40 ; 0h01E1: vol off, no pitch, note, no instrument
   2972 02                  439  .db 0h02 ; 0h01E2: normal track data,  wait 0
   2973 92                  440  .db 0h92 ; 0h01E3: normal track data
   2974 40                  441  .db 0h40 ; 0h01E4: vol off, no pitch, note, no instrument
   2975 0A                  442  .db 0h0A ; 0h01E5: normal track data,  wait 4
   2976 92                  443  .db 0h92 ; 0h01E6: normal track data
   2977 40                  444  .db 0h40 ; 0h01E7: vol off, no pitch, note, no instrument
   2978 02                  445  .db 0h02 ; 0h01E8: normal track data,  wait 0
   2979 92                  446  .db 0h92 ; 0h01E9: normal track data
   297A 40                  447  .db 0h40 ; 0h01EA: vol off, no pitch, note, no instrument
   297B 02                  448  .db 0h02 ; 0h01EB: normal track data,  wait 0
   297C 92                  449  .db 0h92 ; 0h01EC: normal track data
   297D 60                  450  .db 0h60 ; 0h01ED: vol off, no pitch, note, instrument
   297E 04                  451  .db 0h04 ; 0h01EE: instrument
   297F 02                  452  .db 0h02 ; 0h01EF: normal track data,  wait 0
   2980 92                  453  .db 0h92 ; 0h01F0: normal track data
   2981 40                  454  .db 0h40 ; 0h01F1: vol off, no pitch, note, no instrument
   2982 02                  455  .db 0h02 ; 0h01F2: normal track data,  wait 0
   2983 92                  456  .db 0h92 ; 0h01F3: normal track data
   2984 60                  457  .db 0h60 ; 0h01F4: vol off, no pitch, note, instrument
   2985 03                  458  .db 0h03 ; 0h01F5: instrument
   2986 02                  459  .db 0h02 ; 0h01F6: normal track data,  wait 0
   2987 92                  460  .db 0h92 ; 0h01F7: normal track data
   2988 40                  461  .db 0h40 ; 0h01F8: vol off, no pitch, note, no instrument
   2989 0A                  462  .db 0h0A ; 0h01F9: normal track data,  wait 4
   298A 92                  463  .db 0h92 ; 0h01FA: normal track data
   298B 40                  464  .db 0h40 ; 0h01FB: vol off, no pitch, note, no instrument
   298C 02                  465  .db 0h02 ; 0h01FC: normal track data,  wait 0
   298D 92                  466  .db 0h92 ; 0h01FD: normal track data
   298E 40                  467  .db 0h40 ; 0h01FE: vol off, no pitch, note, no instrument
   298F 02                  468  .db 0h02 ; 0h01FF: normal track data,  wait 0
   2990 AA                  469  .db 0hAA ; 0h0200: normal track data
   2991 40                  470  .db 0h40 ; 0h0201: vol off, no pitch, note, no instrument
   2992 AA                  471  .db 0hAA ; 0h0202: normal track data
   2993 40                  472  .db 0h40 ; 0h0203: vol off, no pitch, note, no instrument
   2994 BA                  473  .db 0hBA ; 0h0204: normal track data
   2995 40                  474  .db 0h40 ; 0h0205: vol off, no pitch, note, no instrument
   2996 BA                  475  .db 0hBA ; 0h0206: normal track data
   2997 40                  476  .db 0h40 ; 0h0207: vol off, no pitch, note, no instrument
   2998 92                  477  .db 0h92 ; 0h0208: normal track data
   2999 40                  478  .db 0h40 ; 0h0209: vol off, no pitch, note, no instrument
   299A 02                  479  .db 0h02 ; 0h020A: normal track data,  wait 0
   299B 92                  480  .db 0h92 ; 0h020B: normal track data
   299C 40                  481  .db 0h40 ; 0h020C: vol off, no pitch, note, no instrument
   299D 0A                  482  .db 0h0A ; 0h020D: normal track data,  wait 4
   299E 92                  483  .db 0h92 ; 0h020E: normal track data
   299F 40                  484  .db 0h40 ; 0h020F: vol off, no pitch, note, no instrument
   29A0 02                  485  .db 0h02 ; 0h0210: normal track data,  wait 0
   29A1 92                  486  .db 0h92 ; 0h0211: normal track data
   29A2 40                  487  .db 0h40 ; 0h0212: vol off, no pitch, note, no instrument
   29A3 02                  488  .db 0h02 ; 0h0213: normal track data,  wait 0
   29A4 92                  489  .db 0h92 ; 0h0214: normal track data
   29A5 60                  490  .db 0h60 ; 0h0215: vol off, no pitch, note, instrument
   29A6 04                  491  .db 0h04 ; 0h0216: instrument
   29A7 02                  492  .db 0h02 ; 0h0217: normal track data,  wait 0
   29A8 92                  493  .db 0h92 ; 0h0218: normal track data
   29A9 40                  494  .db 0h40 ; 0h0219: vol off, no pitch, note, no instrument
   29AA 02                  495  .db 0h02 ; 0h021A: normal track data,  wait 0
   29AB 92                  496  .db 0h92 ; 0h021B: normal track data
   29AC 60                  497  .db 0h60 ; 0h021C: vol off, no pitch, note, instrument
   29AD 03                  498  .db 0h03 ; 0h021D: instrument
   29AE 02                  499  .db 0h02 ; 0h021E: normal track data,  wait 0
   29AF 92                  500  .db 0h92 ; 0h021F: normal track data
   29B0 40                  501  .db 0h40 ; 0h0220: vol off, no pitch, note, no instrument
   29B1 00                  502  .db 0h00 ; 0h0221: track end signature found
   29B2                     503 trackDef4Test:
   29B2 42                  504  .db 0h42 ; 0h0222: normal track data
   29B3 80                  505  .db 0h80 ; 0h0223: vol off, pitch, no note, no instrument
   29B4 00 00               506  .dw 0h0000 ; 0h0224: pitch
   29B6 3E                  507  .db 0h3E ; 0h0226: normal track data,  wait 30
   29B7 30                  508  .db 0h30 ; 0h0227: normal track data,  wait 23
   29B8 92                  509  .db 0h92 ; 0h0228: normal track data
   29B9 73                  510  .db 0h73 ; 0h0229: vol = 0h6 (inverted), no pitch, no note, no instrument
   29BA 05                  511  .db 0h05 ; 0h022A: instrument
   29BB AA                  512  .db 0hAA ; 0h022B: normal track data
   29BC 40                  513  .db 0h40 ; 0h022C: vol off, no pitch, note, no instrument
   29BD 08                  514  .db 0h08 ; 0h022D: normal track data,  wait 3
   29BE AA                  515  .db 0hAA ; 0h022E: normal track data
   29BF 40                  516  .db 0h40 ; 0h022F: vol off, no pitch, note, no instrument
   29C0 92                  517  .db 0h92 ; 0h0230: normal track data
   29C1 40                  518  .db 0h40 ; 0h0231: vol off, no pitch, note, no instrument
   29C2                     519 trackDef16Test:
   29C2 92                  520  .db 0h92 ; 0h0232: normal track data
   29C3 F3                  521  .db 0hF3 ; 0h0233: vol = 0h6 (inverted), no pitch, no note, no instrument
   29C4 00 00               522  .dw 0h0000 ; 0h0234: pitch
   29C6 05                  523  .db 0h05 ; 0h0236: instrument
   29C7 AA                  524  .db 0hAA ; 0h0237: normal track data
   29C8 40                  525  .db 0h40 ; 0h0238: vol off, no pitch, note, no instrument
   29C9 AA                  526  .db 0hAA ; 0h0239: normal track data
   29CA 40                  527  .db 0h40 ; 0h023A: vol off, no pitch, note, no instrument
   29CB 92                  528  .db 0h92 ; 0h023B: normal track data
   29CC 40                  529  .db 0h40 ; 0h023C: vol off, no pitch, note, no instrument
   29CD 92                  530  .db 0h92 ; 0h023D: normal track data
   29CE 40                  531  .db 0h40 ; 0h023E: vol off, no pitch, note, no instrument
   29CF 94                  532  .db 0h94 ; 0h023F: normal track data
   29D0 40                  533  .db 0h40 ; 0h0240: vol off, no pitch, note, no instrument
   29D1 98                  534  .db 0h98 ; 0h0241: normal track data
   29D2 40                  535  .db 0h40 ; 0h0242: vol off, no pitch, note, no instrument
   29D3 9C                  536  .db 0h9C ; 0h0243: normal track data
   29D4 40                  537  .db 0h40 ; 0h0244: vol off, no pitch, note, no instrument
   29D5 92                  538  .db 0h92 ; 0h0245: normal track data
   29D6 40                  539  .db 0h40 ; 0h0246: vol off, no pitch, note, no instrument
   29D7 AA                  540  .db 0hAA ; 0h0247: normal track data
   29D8 40                  541  .db 0h40 ; 0h0248: vol off, no pitch, note, no instrument
   29D9 08                  542  .db 0h08 ; 0h0249: normal track data,  wait 3
   29DA AA                  543  .db 0hAA ; 0h024A: normal track data
   29DB 40                  544  .db 0h40 ; 0h024B: vol off, no pitch, note, no instrument
   29DC 92                  545  .db 0h92 ; 0h024C: normal track data
   29DD 40                  546  .db 0h40 ; 0h024D: vol off, no pitch, note, no instrument
   29DE 92                  547  .db 0h92 ; 0h024E: normal track data
   29DF 40                  548  .db 0h40 ; 0h024F: vol off, no pitch, note, no instrument
   29E0 AA                  549  .db 0hAA ; 0h0250: normal track data
   29E1 40                  550  .db 0h40 ; 0h0251: vol off, no pitch, note, no instrument
   29E2 AA                  551  .db 0hAA ; 0h0252: normal track data
   29E3 40                  552  .db 0h40 ; 0h0253: vol off, no pitch, note, no instrument
   29E4 92                  553  .db 0h92 ; 0h0254: normal track data
   29E5 40                  554  .db 0h40 ; 0h0255: vol off, no pitch, note, no instrument
   29E6 94                  555  .db 0h94 ; 0h0256: normal track data
   29E7 40                  556  .db 0h40 ; 0h0257: vol off, no pitch, note, no instrument
   29E8 AC                  557  .db 0hAC ; 0h0258: normal track data
   29E9 40                  558  .db 0h40 ; 0h0259: vol off, no pitch, note, no instrument
   29EA AC                  559  .db 0hAC ; 0h025A: normal track data
   29EB 40                  560  .db 0h40 ; 0h025B: vol off, no pitch, note, no instrument
   29EC 94                  561  .db 0h94 ; 0h025C: normal track data
   29ED 40                  562  .db 0h40 ; 0h025D: vol off, no pitch, note, no instrument
   29EE 92                  563  .db 0h92 ; 0h025E: normal track data
   29EF 40                  564  .db 0h40 ; 0h025F: vol off, no pitch, note, no instrument
   29F0 AA                  565  .db 0hAA ; 0h0260: normal track data
   29F1 40                  566  .db 0h40 ; 0h0261: vol off, no pitch, note, no instrument
   29F2 08                  567  .db 0h08 ; 0h0262: normal track data,  wait 3
   29F3 AA                  568  .db 0hAA ; 0h0263: normal track data
   29F4 40                  569  .db 0h40 ; 0h0264: vol off, no pitch, note, no instrument
   29F5 92                  570  .db 0h92 ; 0h0265: normal track data
   29F6 40                  571  .db 0h40 ; 0h0266: vol off, no pitch, note, no instrument
   29F7 92                  572  .db 0h92 ; 0h0267: normal track data
   29F8 40                  573  .db 0h40 ; 0h0268: vol off, no pitch, note, no instrument
   29F9 AA                  574  .db 0hAA ; 0h0269: normal track data
   29FA 40                  575  .db 0h40 ; 0h026A: vol off, no pitch, note, no instrument
   29FB AA                  576  .db 0hAA ; 0h026B: normal track data
   29FC 40                  577  .db 0h40 ; 0h026C: vol off, no pitch, note, no instrument
   29FD 92                  578  .db 0h92 ; 0h026D: normal track data
   29FE 40                  579  .db 0h40 ; 0h026E: vol off, no pitch, note, no instrument
   29FF 92                  580  .db 0h92 ; 0h026F: normal track data
   2A00 40                  581  .db 0h40 ; 0h0270: vol off, no pitch, note, no instrument
   2A01 94                  582  .db 0h94 ; 0h0271: normal track data
   2A02 40                  583  .db 0h40 ; 0h0272: vol off, no pitch, note, no instrument
   2A03 98                  584  .db 0h98 ; 0h0273: normal track data
   2A04 40                  585  .db 0h40 ; 0h0274: vol off, no pitch, note, no instrument
   2A05 9C                  586  .db 0h9C ; 0h0275: normal track data
   2A06 40                  587  .db 0h40 ; 0h0276: vol off, no pitch, note, no instrument
   2A07 92                  588  .db 0h92 ; 0h0277: normal track data
   2A08 40                  589  .db 0h40 ; 0h0278: vol off, no pitch, note, no instrument
   2A09 AA                  590  .db 0hAA ; 0h0279: normal track data
   2A0A 40                  591  .db 0h40 ; 0h027A: vol off, no pitch, note, no instrument
   2A0B 08                  592  .db 0h08 ; 0h027B: normal track data,  wait 3
   2A0C AA                  593  .db 0hAA ; 0h027C: normal track data
   2A0D 40                  594  .db 0h40 ; 0h027D: vol off, no pitch, note, no instrument
   2A0E 92                  595  .db 0h92 ; 0h027E: normal track data
   2A0F 40                  596  .db 0h40 ; 0h027F: vol off, no pitch, note, no instrument
   2A10 92                  597  .db 0h92 ; 0h0280: normal track data
   2A11 40                  598  .db 0h40 ; 0h0281: vol off, no pitch, note, no instrument
   2A12 AA                  599  .db 0hAA ; 0h0282: normal track data
   2A13 40                  600  .db 0h40 ; 0h0283: vol off, no pitch, note, no instrument
   2A14 AA                  601  .db 0hAA ; 0h0284: normal track data
   2A15 40                  602  .db 0h40 ; 0h0285: vol off, no pitch, note, no instrument
   2A16 92                  603  .db 0h92 ; 0h0286: normal track data
   2A17 40                  604  .db 0h40 ; 0h0287: vol off, no pitch, note, no instrument
   2A18 92                  605  .db 0h92 ; 0h0288: normal track data
   2A19 40                  606  .db 0h40 ; 0h0289: vol off, no pitch, note, no instrument
   2A1A 94                  607  .db 0h94 ; 0h028A: normal track data
   2A1B 40                  608  .db 0h40 ; 0h028B: vol off, no pitch, note, no instrument
   2A1C 98                  609  .db 0h98 ; 0h028C: normal track data
   2A1D 40                  610  .db 0h40 ; 0h028D: vol off, no pitch, note, no instrument
   2A1E 9C                  611  .db 0h9C ; 0h028E: normal track data
   2A1F 40                  612  .db 0h40 ; 0h028F: vol off, no pitch, note, no instrument
   2A20 92                  613  .db 0h92 ; 0h0290: normal track data
   2A21 40                  614  .db 0h40 ; 0h0291: vol off, no pitch, note, no instrument
   2A22 AA                  615  .db 0hAA ; 0h0292: normal track data
   2A23 40                  616  .db 0h40 ; 0h0293: vol off, no pitch, note, no instrument
   2A24 08                  617  .db 0h08 ; 0h0294: normal track data,  wait 3
   2A25 AA                  618  .db 0hAA ; 0h0295: normal track data
   2A26 40                  619  .db 0h40 ; 0h0296: vol off, no pitch, note, no instrument
   2A27 92                  620  .db 0h92 ; 0h0297: normal track data
   2A28 40                  621  .db 0h40 ; 0h0298: vol off, no pitch, note, no instrument
   2A29                     622 trackDef6Test:
   2A29 92                  623  .db 0h92 ; 0h0299: normal track data
   2A2A F3                  624  .db 0hF3 ; 0h029A: vol = 0h6 (inverted), no pitch, no note, no instrument
   2A2B 00 00               625  .dw 0h0000 ; 0h029B: pitch
   2A2D 05                  626  .db 0h05 ; 0h029D: instrument
   2A2E 0E                  627  .db 0h0E ; 0h029E: normal track data,  wait 6
   2A2F 92                  628  .db 0h92 ; 0h029F: normal track data
   2A30 40                  629  .db 0h40 ; 0h02A0: vol off, no pitch, note, no instrument
   2A31 0E                  630  .db 0h0E ; 0h02A1: normal track data,  wait 6
   2A32 92                  631  .db 0h92 ; 0h02A2: normal track data
   2A33 40                  632  .db 0h40 ; 0h02A3: vol off, no pitch, note, no instrument
   2A34 0E                  633  .db 0h0E ; 0h02A4: normal track data,  wait 6
   2A35 92                  634  .db 0h92 ; 0h02A5: normal track data
   2A36 40                  635  .db 0h40 ; 0h02A6: vol off, no pitch, note, no instrument
   2A37 0E                  636  .db 0h0E ; 0h02A7: normal track data,  wait 6
   2A38 92                  637  .db 0h92 ; 0h02A8: normal track data
   2A39 40                  638  .db 0h40 ; 0h02A9: vol off, no pitch, note, no instrument
   2A3A 0E                  639  .db 0h0E ; 0h02AA: normal track data,  wait 6
   2A3B 92                  640  .db 0h92 ; 0h02AB: normal track data
   2A3C 40                  641  .db 0h40 ; 0h02AC: vol off, no pitch, note, no instrument
   2A3D 0E                  642  .db 0h0E ; 0h02AD: normal track data,  wait 6
   2A3E 92                  643  .db 0h92 ; 0h02AE: normal track data
   2A3F 40                  644  .db 0h40 ; 0h02AF: vol off, no pitch, note, no instrument
   2A40 0E                  645  .db 0h0E ; 0h02B0: normal track data,  wait 6
   2A41 92                  646  .db 0h92 ; 0h02B1: normal track data
   2A42 40                  647  .db 0h40 ; 0h02B2: vol off, no pitch, note, no instrument
   2A43 00                  648  .db 0h00 ; 0h02B3: track end signature found
   2A44                     649 trackDef7Test:
   2A44 92                  650  .db 0h92 ; 0h02B4: normal track data
   2A45 E1                  651  .db 0hE1 ; 0h02B5: vol = 0hF (inverted), no pitch, no note, no instrument
   2A46 00 00               652  .dw 0h0000 ; 0h02B6: pitch
   2A48 02                  653  .db 0h02 ; 0h02B8: instrument
   2A49 02                  654  .db 0h02 ; 0h02B9: normal track data,  wait 0
   2A4A 92                  655  .db 0h92 ; 0h02BA: normal track data
   2A4B 40                  656  .db 0h40 ; 0h02BB: vol off, no pitch, note, no instrument
   2A4C 02                  657  .db 0h02 ; 0h02BC: normal track data,  wait 0
   2A4D AA                  658  .db 0hAA ; 0h02BD: normal track data
   2A4E 40                  659  .db 0h40 ; 0h02BE: vol off, no pitch, note, no instrument
   2A4F AC                  660  .db 0hAC ; 0h02BF: normal track data
   2A50 40                  661  .db 0h40 ; 0h02C0: vol off, no pitch, note, no instrument
   2A51 B0                  662  .db 0hB0 ; 0h02C1: normal track data
   2A52 40                  663  .db 0h40 ; 0h02C2: vol off, no pitch, note, no instrument
   2A53 B4                  664  .db 0hB4 ; 0h02C3: normal track data
   2A54 40                  665  .db 0h40 ; 0h02C4: vol off, no pitch, note, no instrument
   2A55 92                  666  .db 0h92 ; 0h02C5: normal track data
   2A56 40                  667  .db 0h40 ; 0h02C6: vol off, no pitch, note, no instrument
   2A57 02                  668  .db 0h02 ; 0h02C7: normal track data,  wait 0
   2A58 92                  669  .db 0h92 ; 0h02C8: normal track data
   2A59 40                  670  .db 0h40 ; 0h02C9: vol off, no pitch, note, no instrument
   2A5A 0A                  671  .db 0h0A ; 0h02CA: normal track data,  wait 4
   2A5B 92                  672  .db 0h92 ; 0h02CB: normal track data
   2A5C 40                  673  .db 0h40 ; 0h02CC: vol off, no pitch, note, no instrument
   2A5D 02                  674  .db 0h02 ; 0h02CD: normal track data,  wait 0
   2A5E 92                  675  .db 0h92 ; 0h02CE: normal track data
   2A5F 40                  676  .db 0h40 ; 0h02CF: vol off, no pitch, note, no instrument
   2A60 02                  677  .db 0h02 ; 0h02D0: normal track data,  wait 0
   2A61 94                  678  .db 0h94 ; 0h02D1: normal track data
   2A62 40                  679  .db 0h40 ; 0h02D2: vol off, no pitch, note, no instrument
   2A63 02                  680  .db 0h02 ; 0h02D3: normal track data,  wait 0
   2A64 94                  681  .db 0h94 ; 0h02D4: normal track data
   2A65 40                  682  .db 0h40 ; 0h02D5: vol off, no pitch, note, no instrument
   2A66 02                  683  .db 0h02 ; 0h02D6: normal track data,  wait 0
   2A67 92                  684  .db 0h92 ; 0h02D7: normal track data
   2A68 40                  685  .db 0h40 ; 0h02D8: vol off, no pitch, note, no instrument
   2A69 02                  686  .db 0h02 ; 0h02D9: normal track data,  wait 0
   2A6A 92                  687  .db 0h92 ; 0h02DA: normal track data
   2A6B 40                  688  .db 0h40 ; 0h02DB: vol off, no pitch, note, no instrument
   2A6C 0A                  689  .db 0h0A ; 0h02DC: normal track data,  wait 4
   2A6D 92                  690  .db 0h92 ; 0h02DD: normal track data
   2A6E 40                  691  .db 0h40 ; 0h02DE: vol off, no pitch, note, no instrument
   2A6F 02                  692  .db 0h02 ; 0h02DF: normal track data,  wait 0
   2A70 92                  693  .db 0h92 ; 0h02E0: normal track data
   2A71 40                  694  .db 0h40 ; 0h02E1: vol off, no pitch, note, no instrument
   2A72 02                  695  .db 0h02 ; 0h02E2: normal track data,  wait 0
   2A73 AA                  696  .db 0hAA ; 0h02E3: normal track data
   2A74 40                  697  .db 0h40 ; 0h02E4: vol off, no pitch, note, no instrument
   2A75 AC                  698  .db 0hAC ; 0h02E5: normal track data
   2A76 40                  699  .db 0h40 ; 0h02E6: vol off, no pitch, note, no instrument
   2A77 B0                  700  .db 0hB0 ; 0h02E7: normal track data
   2A78 40                  701  .db 0h40 ; 0h02E8: vol off, no pitch, note, no instrument
   2A79 B4                  702  .db 0hB4 ; 0h02E9: normal track data
   2A7A 40                  703  .db 0h40 ; 0h02EA: vol off, no pitch, note, no instrument
   2A7B 92                  704  .db 0h92 ; 0h02EB: normal track data
   2A7C 40                  705  .db 0h40 ; 0h02EC: vol off, no pitch, note, no instrument
   2A7D 02                  706  .db 0h02 ; 0h02ED: normal track data,  wait 0
   2A7E 92                  707  .db 0h92 ; 0h02EE: normal track data
   2A7F 40                  708  .db 0h40 ; 0h02EF: vol off, no pitch, note, no instrument
   2A80 0A                  709  .db 0h0A ; 0h02F0: normal track data,  wait 4
   2A81 92                  710  .db 0h92 ; 0h02F1: normal track data
   2A82 40                  711  .db 0h40 ; 0h02F2: vol off, no pitch, note, no instrument
   2A83 02                  712  .db 0h02 ; 0h02F3: normal track data,  wait 0
   2A84 92                  713  .db 0h92 ; 0h02F4: normal track data
   2A85 40                  714  .db 0h40 ; 0h02F5: vol off, no pitch, note, no instrument
   2A86 02                  715  .db 0h02 ; 0h02F6: normal track data,  wait 0
   2A87 94                  716  .db 0h94 ; 0h02F7: normal track data
   2A88 40                  717  .db 0h40 ; 0h02F8: vol off, no pitch, note, no instrument
   2A89 02                  718  .db 0h02 ; 0h02F9: normal track data,  wait 0
   2A8A 94                  719  .db 0h94 ; 0h02FA: normal track data
   2A8B 40                  720  .db 0h40 ; 0h02FB: vol off, no pitch, note, no instrument
   2A8C 02                  721  .db 0h02 ; 0h02FC: normal track data,  wait 0
   2A8D 92                  722  .db 0h92 ; 0h02FD: normal track data
   2A8E 40                  723  .db 0h40 ; 0h02FE: vol off, no pitch, note, no instrument
   2A8F 02                  724  .db 0h02 ; 0h02FF: normal track data,  wait 0
   2A90 92                  725  .db 0h92 ; 0h0300: normal track data
   2A91 40                  726  .db 0h40 ; 0h0301: vol off, no pitch, note, no instrument
   2A92 B4                  727  .db 0hB4 ; 0h0302: normal track data
   2A93 40                  728  .db 0h40 ; 0h0303: vol off, no pitch, note, no instrument
   2A94 A0                  729  .db 0hA0 ; 0h0304: normal track data
   2A95 40                  730  .db 0h40 ; 0h0305: vol off, no pitch, note, no instrument
   2A96 9C                  731  .db 0h9C ; 0h0306: normal track data
   2A97 40                  732  .db 0h40 ; 0h0307: vol off, no pitch, note, no instrument
   2A98 98                  733  .db 0h98 ; 0h0308: normal track data
   2A99 40                  734  .db 0h40 ; 0h0309: vol off, no pitch, note, no instrument
   2A9A 94                  735  .db 0h94 ; 0h030A: normal track data
   2A9B 40                  736  .db 0h40 ; 0h030B: vol off, no pitch, note, no instrument
   2A9C                     737 trackDef8Test:
   2A9C 92                  738  .db 0h92 ; 0h030C: normal track data
   2A9D E1                  739  .db 0hE1 ; 0h030D: vol = 0hF (inverted), no pitch, no note, no instrument
   2A9E 00 00               740  .dw 0h0000 ; 0h030E: pitch
   2AA0 03                  741  .db 0h03 ; 0h0310: instrument
   2AA1 02                  742  .db 0h02 ; 0h0311: normal track data,  wait 0
   2AA2 92                  743  .db 0h92 ; 0h0312: normal track data
   2AA3 40                  744  .db 0h40 ; 0h0313: vol off, no pitch, note, no instrument
   2AA4 02                  745  .db 0h02 ; 0h0314: normal track data,  wait 0
   2AA5 AA                  746  .db 0hAA ; 0h0315: normal track data
   2AA6 40                  747  .db 0h40 ; 0h0316: vol off, no pitch, note, no instrument
   2AA7 AA                  748  .db 0hAA ; 0h0317: normal track data
   2AA8 40                  749  .db 0h40 ; 0h0318: vol off, no pitch, note, no instrument
   2AA9 BA                  750  .db 0hBA ; 0h0319: normal track data
   2AAA 40                  751  .db 0h40 ; 0h031A: vol off, no pitch, note, no instrument
   2AAB BA                  752  .db 0hBA ; 0h031B: normal track data
   2AAC 40                  753  .db 0h40 ; 0h031C: vol off, no pitch, note, no instrument
   2AAD 92                  754  .db 0h92 ; 0h031D: normal track data
   2AAE 40                  755  .db 0h40 ; 0h031E: vol off, no pitch, note, no instrument
   2AAF 02                  756  .db 0h02 ; 0h031F: normal track data,  wait 0
   2AB0 92                  757  .db 0h92 ; 0h0320: normal track data
   2AB1 40                  758  .db 0h40 ; 0h0321: vol off, no pitch, note, no instrument
   2AB2 0A                  759  .db 0h0A ; 0h0322: normal track data,  wait 4
   2AB3 92                  760  .db 0h92 ; 0h0323: normal track data
   2AB4 40                  761  .db 0h40 ; 0h0324: vol off, no pitch, note, no instrument
   2AB5 02                  762  .db 0h02 ; 0h0325: normal track data,  wait 0
   2AB6 92                  763  .db 0h92 ; 0h0326: normal track data
   2AB7 40                  764  .db 0h40 ; 0h0327: vol off, no pitch, note, no instrument
   2AB8 02                  765  .db 0h02 ; 0h0328: normal track data,  wait 0
   2AB9 92                  766  .db 0h92 ; 0h0329: normal track data
   2ABA 60                  767  .db 0h60 ; 0h032A: vol off, no pitch, note, instrument
   2ABB 04                  768  .db 0h04 ; 0h032B: instrument
   2ABC 02                  769  .db 0h02 ; 0h032C: normal track data,  wait 0
   2ABD 92                  770  .db 0h92 ; 0h032D: normal track data
   2ABE 40                  771  .db 0h40 ; 0h032E: vol off, no pitch, note, no instrument
   2ABF 02                  772  .db 0h02 ; 0h032F: normal track data,  wait 0
   2AC0 92                  773  .db 0h92 ; 0h0330: normal track data
   2AC1 60                  774  .db 0h60 ; 0h0331: vol off, no pitch, note, instrument
   2AC2 03                  775  .db 0h03 ; 0h0332: instrument
   2AC3 02                  776  .db 0h02 ; 0h0333: normal track data,  wait 0
   2AC4 92                  777  .db 0h92 ; 0h0334: normal track data
   2AC5 40                  778  .db 0h40 ; 0h0335: vol off, no pitch, note, no instrument
   2AC6 0A                  779  .db 0h0A ; 0h0336: normal track data,  wait 4
   2AC7 92                  780  .db 0h92 ; 0h0337: normal track data
   2AC8 40                  781  .db 0h40 ; 0h0338: vol off, no pitch, note, no instrument
   2AC9 02                  782  .db 0h02 ; 0h0339: normal track data,  wait 0
   2ACA 92                  783  .db 0h92 ; 0h033A: normal track data
   2ACB 40                  784  .db 0h40 ; 0h033B: vol off, no pitch, note, no instrument
   2ACC 02                  785  .db 0h02 ; 0h033C: normal track data,  wait 0
   2ACD AA                  786  .db 0hAA ; 0h033D: normal track data
   2ACE 40                  787  .db 0h40 ; 0h033E: vol off, no pitch, note, no instrument
   2ACF AA                  788  .db 0hAA ; 0h033F: normal track data
   2AD0 40                  789  .db 0h40 ; 0h0340: vol off, no pitch, note, no instrument
   2AD1 BA                  790  .db 0hBA ; 0h0341: normal track data
   2AD2 40                  791  .db 0h40 ; 0h0342: vol off, no pitch, note, no instrument
   2AD3 BA                  792  .db 0hBA ; 0h0343: normal track data
   2AD4 40                  793  .db 0h40 ; 0h0344: vol off, no pitch, note, no instrument
   2AD5 92                  794  .db 0h92 ; 0h0345: normal track data
   2AD6 40                  795  .db 0h40 ; 0h0346: vol off, no pitch, note, no instrument
   2AD7 02                  796  .db 0h02 ; 0h0347: normal track data,  wait 0
   2AD8 92                  797  .db 0h92 ; 0h0348: normal track data
   2AD9 40                  798  .db 0h40 ; 0h0349: vol off, no pitch, note, no instrument
   2ADA 0A                  799  .db 0h0A ; 0h034A: normal track data,  wait 4
   2ADB 92                  800  .db 0h92 ; 0h034B: normal track data
   2ADC 40                  801  .db 0h40 ; 0h034C: vol off, no pitch, note, no instrument
   2ADD 02                  802  .db 0h02 ; 0h034D: normal track data,  wait 0
   2ADE 92                  803  .db 0h92 ; 0h034E: normal track data
   2ADF 40                  804  .db 0h40 ; 0h034F: vol off, no pitch, note, no instrument
   2AE0 02                  805  .db 0h02 ; 0h0350: normal track data,  wait 0
   2AE1 92                  806  .db 0h92 ; 0h0351: normal track data
   2AE2 60                  807  .db 0h60 ; 0h0352: vol off, no pitch, note, instrument
   2AE3 04                  808  .db 0h04 ; 0h0353: instrument
   2AE4 02                  809  .db 0h02 ; 0h0354: normal track data,  wait 0
   2AE5 92                  810  .db 0h92 ; 0h0355: normal track data
   2AE6 40                  811  .db 0h40 ; 0h0356: vol off, no pitch, note, no instrument
   2AE7 02                  812  .db 0h02 ; 0h0357: normal track data,  wait 0
   2AE8 92                  813  .db 0h92 ; 0h0358: normal track data
   2AE9 60                  814  .db 0h60 ; 0h0359: vol off, no pitch, note, instrument
   2AEA 03                  815  .db 0h03 ; 0h035A: instrument
   2AEB 02                  816  .db 0h02 ; 0h035B: normal track data,  wait 0
   2AEC 92                  817  .db 0h92 ; 0h035C: normal track data
   2AED 40                  818  .db 0h40 ; 0h035D: vol off, no pitch, note, no instrument
   2AEE 92                  819  .db 0h92 ; 0h035E: normal track data
   2AEF 40                  820  .db 0h40 ; 0h035F: vol off, no pitch, note, no instrument
   2AF0 92                  821  .db 0h92 ; 0h0360: normal track data
   2AF1 40                  822  .db 0h40 ; 0h0361: vol off, no pitch, note, no instrument
   2AF2 AA                  823  .db 0hAA ; 0h0362: normal track data
   2AF3 60                  824  .db 0h60 ; 0h0363: vol off, no pitch, note, instrument
   2AF4 04                  825  .db 0h04 ; 0h0364: instrument
   2AF5 AA                  826  .db 0hAA ; 0h0365: normal track data
   2AF6 40                  827  .db 0h40 ; 0h0366: vol off, no pitch, note, no instrument
   2AF7 92                  828  .db 0h92 ; 0h0367: normal track data
   2AF8 60                  829  .db 0h60 ; 0h0368: vol off, no pitch, note, instrument
   2AF9 03                  830  .db 0h03 ; 0h0369: instrument
   2AFA                     831 trackDef9Test:
   2AFA 92                  832  .db 0h92 ; 0h036A: normal track data
   2AFB F3                  833  .db 0hF3 ; 0h036B: vol = 0h6 (inverted), no pitch, no note, no instrument
   2AFC 00 00               834  .dw 0h0000 ; 0h036C: pitch
   2AFE 05                  835  .db 0h05 ; 0h036E: instrument
   2AFF 0E                  836  .db 0h0E ; 0h036F: normal track data,  wait 6
   2B00 92                  837  .db 0h92 ; 0h0370: normal track data
   2B01 40                  838  .db 0h40 ; 0h0371: vol off, no pitch, note, no instrument
   2B02 0E                  839  .db 0h0E ; 0h0372: normal track data,  wait 6
   2B03 92                  840  .db 0h92 ; 0h0373: normal track data
   2B04 40                  841  .db 0h40 ; 0h0374: vol off, no pitch, note, no instrument
   2B05 0E                  842  .db 0h0E ; 0h0375: normal track data,  wait 6
   2B06 92                  843  .db 0h92 ; 0h0376: normal track data
   2B07 40                  844  .db 0h40 ; 0h0377: vol off, no pitch, note, no instrument
   2B08 0E                  845  .db 0h0E ; 0h0378: normal track data,  wait 6
   2B09 92                  846  .db 0h92 ; 0h0379: normal track data
   2B0A 40                  847  .db 0h40 ; 0h037A: vol off, no pitch, note, no instrument
   2B0B 0E                  848  .db 0h0E ; 0h037B: normal track data,  wait 6
   2B0C 92                  849  .db 0h92 ; 0h037C: normal track data
   2B0D 40                  850  .db 0h40 ; 0h037D: vol off, no pitch, note, no instrument
   2B0E 0E                  851  .db 0h0E ; 0h037E: normal track data,  wait 6
   2B0F 92                  852  .db 0h92 ; 0h037F: normal track data
   2B10 40                  853  .db 0h40 ; 0h0380: vol off, no pitch, note, no instrument
   2B11 0E                  854  .db 0h0E ; 0h0381: normal track data,  wait 6
   2B12 92                  855  .db 0h92 ; 0h0382: normal track data
   2B13 40                  856  .db 0h40 ; 0h0383: vol off, no pitch, note, no instrument
   2B14 04                  857  .db 0h04 ; 0h0384: normal track data,  wait 1
   2B15 B4                  858  .db 0hB4 ; 0h0385: normal track data
   2B16 40                  859  .db 0h40 ; 0h0386: vol off, no pitch, note, no instrument
   2B17 A0                  860  .db 0hA0 ; 0h0387: normal track data
   2B18 40                  861  .db 0h40 ; 0h0388: vol off, no pitch, note, no instrument
   2B19 9C                  862  .db 0h9C ; 0h0389: normal track data
   2B1A 40                  863  .db 0h40 ; 0h038A: vol off, no pitch, note, no instrument
   2B1B 98                  864  .db 0h98 ; 0h038B: normal track data
   2B1C 40                  865  .db 0h40 ; 0h038C: vol off, no pitch, note, no instrument
   2B1D 94                  866  .db 0h94 ; 0h038D: normal track data
   2B1E 40                  867  .db 0h40 ; 0h038E: vol off, no pitch, note, no instrument
   2B1F                     868 trackDef14Test:
   2B1F 92                  869  .db 0h92 ; 0h038F: normal track data
   2B20 E1                  870  .db 0hE1 ; 0h0390: vol = 0hF (inverted), no pitch, no note, no instrument
   2B21 00 00               871  .dw 0h0000 ; 0h0391: pitch
   2B23 02                  872  .db 0h02 ; 0h0393: instrument
   2B24 C2                  873  .db 0hC2 ; 0h0394: normal track data
   2B25 49                  874  .db 0h49 ; 0h0395: vol = 0hB (inverted), no pitch, no note, no instrument
   2B26 92                  875  .db 0h92 ; 0h0396: normal track data
   2B27 41                  876  .db 0h41 ; 0h0397: vol = 0hF (inverted), no pitch, no note, no instrument
   2B28 C2                  877  .db 0hC2 ; 0h0398: normal track data
   2B29 49                  878  .db 0h49 ; 0h0399: vol = 0hB (inverted), no pitch, no note, no instrument
   2B2A AA                  879  .db 0hAA ; 0h039A: normal track data
   2B2B 41                  880  .db 0h41 ; 0h039B: vol = 0hF (inverted), no pitch, no note, no instrument
   2B2C AC                  881  .db 0hAC ; 0h039C: normal track data
   2B2D 40                  882  .db 0h40 ; 0h039D: vol off, no pitch, note, no instrument
   2B2E B0                  883  .db 0hB0 ; 0h039E: normal track data
   2B2F 40                  884  .db 0h40 ; 0h039F: vol off, no pitch, note, no instrument
   2B30 B4                  885  .db 0hB4 ; 0h03A0: normal track data
   2B31 40                  886  .db 0h40 ; 0h03A1: vol off, no pitch, note, no instrument
   2B32 92                  887  .db 0h92 ; 0h03A2: normal track data
   2B33 40                  888  .db 0h40 ; 0h03A3: vol off, no pitch, note, no instrument
   2B34 C2                  889  .db 0hC2 ; 0h03A4: normal track data
   2B35 49                  890  .db 0h49 ; 0h03A5: vol = 0hB (inverted), no pitch, no note, no instrument
   2B36 92                  891  .db 0h92 ; 0h03A6: normal track data
   2B37 41                  892  .db 0h41 ; 0h03A7: vol = 0hF (inverted), no pitch, no note, no instrument
   2B38 C2                  893  .db 0hC2 ; 0h03A8: normal track data
   2B39 49                  894  .db 0h49 ; 0h03A9: vol = 0hB (inverted), no pitch, no note, no instrument
   2B3A AA                  895  .db 0hAA ; 0h03AA: normal track data
   2B3B 41                  896  .db 0h41 ; 0h03AB: vol = 0hF (inverted), no pitch, no note, no instrument
   2B3C C2                  897  .db 0hC2 ; 0h03AC: normal track data
   2B3D 49                  898  .db 0h49 ; 0h03AD: vol = 0hB (inverted), no pitch, no note, no instrument
   2B3E AA                  899  .db 0hAA ; 0h03AE: normal track data
   2B3F 41                  900  .db 0h41 ; 0h03AF: vol = 0hF (inverted), no pitch, no note, no instrument
   2B40 C2                  901  .db 0hC2 ; 0h03B0: normal track data
   2B41 49                  902  .db 0h49 ; 0h03B1: vol = 0hB (inverted), no pitch, no note, no instrument
   2B42 92                  903  .db 0h92 ; 0h03B2: normal track data
   2B43 41                  904  .db 0h41 ; 0h03B3: vol = 0hF (inverted), no pitch, no note, no instrument
   2B44 C2                  905  .db 0hC2 ; 0h03B4: normal track data
   2B45 49                  906  .db 0h49 ; 0h03B5: vol = 0hB (inverted), no pitch, no note, no instrument
   2B46 92                  907  .db 0h92 ; 0h03B6: normal track data
   2B47 41                  908  .db 0h41 ; 0h03B7: vol = 0hF (inverted), no pitch, no note, no instrument
   2B48 C2                  909  .db 0hC2 ; 0h03B8: normal track data
   2B49 49                  910  .db 0h49 ; 0h03B9: vol = 0hB (inverted), no pitch, no note, no instrument
   2B4A 94                  911  .db 0h94 ; 0h03BA: normal track data
   2B4B 41                  912  .db 0h41 ; 0h03BB: vol = 0hF (inverted), no pitch, no note, no instrument
   2B4C C4                  913  .db 0hC4 ; 0h03BC: normal track data
   2B4D 49                  914  .db 0h49 ; 0h03BD: vol = 0hB (inverted), no pitch, no note, no instrument
   2B4E 94                  915  .db 0h94 ; 0h03BE: normal track data
   2B4F 41                  916  .db 0h41 ; 0h03BF: vol = 0hF (inverted), no pitch, no note, no instrument
   2B50 C4                  917  .db 0hC4 ; 0h03C0: normal track data
   2B51 49                  918  .db 0h49 ; 0h03C1: vol = 0hB (inverted), no pitch, no note, no instrument
   2B52 92                  919  .db 0h92 ; 0h03C2: normal track data
   2B53 41                  920  .db 0h41 ; 0h03C3: vol = 0hF (inverted), no pitch, no note, no instrument
   2B54 C2                  921  .db 0hC2 ; 0h03C4: normal track data
   2B55 49                  922  .db 0h49 ; 0h03C5: vol = 0hB (inverted), no pitch, no note, no instrument
   2B56 92                  923  .db 0h92 ; 0h03C6: normal track data
   2B57 41                  924  .db 0h41 ; 0h03C7: vol = 0hF (inverted), no pitch, no note, no instrument
   2B58 C2                  925  .db 0hC2 ; 0h03C8: normal track data
   2B59 49                  926  .db 0h49 ; 0h03C9: vol = 0hB (inverted), no pitch, no note, no instrument
   2B5A AA                  927  .db 0hAA ; 0h03CA: normal track data
   2B5B 41                  928  .db 0h41 ; 0h03CB: vol = 0hF (inverted), no pitch, no note, no instrument
   2B5C C2                  929  .db 0hC2 ; 0h03CC: normal track data
   2B5D 49                  930  .db 0h49 ; 0h03CD: vol = 0hB (inverted), no pitch, no note, no instrument
   2B5E AA                  931  .db 0hAA ; 0h03CE: normal track data
   2B5F 41                  932  .db 0h41 ; 0h03CF: vol = 0hF (inverted), no pitch, no note, no instrument
   2B60 C2                  933  .db 0hC2 ; 0h03D0: normal track data
   2B61 49                  934  .db 0h49 ; 0h03D1: vol = 0hB (inverted), no pitch, no note, no instrument
   2B62 92                  935  .db 0h92 ; 0h03D2: normal track data
   2B63 41                  936  .db 0h41 ; 0h03D3: vol = 0hF (inverted), no pitch, no note, no instrument
   2B64 C2                  937  .db 0hC2 ; 0h03D4: normal track data
   2B65 49                  938  .db 0h49 ; 0h03D5: vol = 0hB (inverted), no pitch, no note, no instrument
   2B66 92                  939  .db 0h92 ; 0h03D6: normal track data
   2B67 41                  940  .db 0h41 ; 0h03D7: vol = 0hF (inverted), no pitch, no note, no instrument
   2B68 C2                  941  .db 0hC2 ; 0h03D8: normal track data
   2B69 49                  942  .db 0h49 ; 0h03D9: vol = 0hB (inverted), no pitch, no note, no instrument
   2B6A AA                  943  .db 0hAA ; 0h03DA: normal track data
   2B6B 41                  944  .db 0h41 ; 0h03DB: vol = 0hF (inverted), no pitch, no note, no instrument
   2B6C AC                  945  .db 0hAC ; 0h03DC: normal track data
   2B6D 40                  946  .db 0h40 ; 0h03DD: vol off, no pitch, note, no instrument
   2B6E B0                  947  .db 0hB0 ; 0h03DE: normal track data
   2B6F 40                  948  .db 0h40 ; 0h03DF: vol off, no pitch, note, no instrument
   2B70 B4                  949  .db 0hB4 ; 0h03E0: normal track data
   2B71 40                  950  .db 0h40 ; 0h03E1: vol off, no pitch, note, no instrument
   2B72 92                  951  .db 0h92 ; 0h03E2: normal track data
   2B73 40                  952  .db 0h40 ; 0h03E3: vol off, no pitch, note, no instrument
   2B74 C2                  953  .db 0hC2 ; 0h03E4: normal track data
   2B75 49                  954  .db 0h49 ; 0h03E5: vol = 0hB (inverted), no pitch, no note, no instrument
   2B76 92                  955  .db 0h92 ; 0h03E6: normal track data
   2B77 41                  956  .db 0h41 ; 0h03E7: vol = 0hF (inverted), no pitch, no note, no instrument
   2B78 C2                  957  .db 0hC2 ; 0h03E8: normal track data
   2B79 49                  958  .db 0h49 ; 0h03E9: vol = 0hB (inverted), no pitch, no note, no instrument
   2B7A AA                  959  .db 0hAA ; 0h03EA: normal track data
   2B7B 41                  960  .db 0h41 ; 0h03EB: vol = 0hF (inverted), no pitch, no note, no instrument
   2B7C C2                  961  .db 0hC2 ; 0h03EC: normal track data
   2B7D 49                  962  .db 0h49 ; 0h03ED: vol = 0hB (inverted), no pitch, no note, no instrument
   2B7E AA                  963  .db 0hAA ; 0h03EE: normal track data
   2B7F 41                  964  .db 0h41 ; 0h03EF: vol = 0hF (inverted), no pitch, no note, no instrument
   2B80 C2                  965  .db 0hC2 ; 0h03F0: normal track data
   2B81 49                  966  .db 0h49 ; 0h03F1: vol = 0hB (inverted), no pitch, no note, no instrument
   2B82 92                  967  .db 0h92 ; 0h03F2: normal track data
   2B83 41                  968  .db 0h41 ; 0h03F3: vol = 0hF (inverted), no pitch, no note, no instrument
   2B84 C2                  969  .db 0hC2 ; 0h03F4: normal track data
   2B85 49                  970  .db 0h49 ; 0h03F5: vol = 0hB (inverted), no pitch, no note, no instrument
   2B86 92                  971  .db 0h92 ; 0h03F6: normal track data
   2B87 41                  972  .db 0h41 ; 0h03F7: vol = 0hF (inverted), no pitch, no note, no instrument
   2B88 C2                  973  .db 0hC2 ; 0h03F8: normal track data
   2B89 49                  974  .db 0h49 ; 0h03F9: vol = 0hB (inverted), no pitch, no note, no instrument
   2B8A 94                  975  .db 0h94 ; 0h03FA: normal track data
   2B8B 41                  976  .db 0h41 ; 0h03FB: vol = 0hF (inverted), no pitch, no note, no instrument
   2B8C C4                  977  .db 0hC4 ; 0h03FC: normal track data
   2B8D 49                  978  .db 0h49 ; 0h03FD: vol = 0hB (inverted), no pitch, no note, no instrument
   2B8E 94                  979  .db 0h94 ; 0h03FE: normal track data
   2B8F 41                  980  .db 0h41 ; 0h03FF: vol = 0hF (inverted), no pitch, no note, no instrument
   2B90 C4                  981  .db 0hC4 ; 0h0400: normal track data
   2B91 49                  982  .db 0h49 ; 0h0401: vol = 0hB (inverted), no pitch, no note, no instrument
   2B92 92                  983  .db 0h92 ; 0h0402: normal track data
   2B93 41                  984  .db 0h41 ; 0h0403: vol = 0hF (inverted), no pitch, no note, no instrument
   2B94 C2                  985  .db 0hC2 ; 0h0404: normal track data
   2B95 49                  986  .db 0h49 ; 0h0405: vol = 0hB (inverted), no pitch, no note, no instrument
   2B96 92                  987  .db 0h92 ; 0h0406: normal track data
   2B97 41                  988  .db 0h41 ; 0h0407: vol = 0hF (inverted), no pitch, no note, no instrument
   2B98 C2                  989  .db 0hC2 ; 0h0408: normal track data
   2B99 40                  990  .db 0h40 ; 0h0409: vol off, no pitch, note, no instrument
   2B9A AA                  991  .db 0hAA ; 0h040A: normal track data
   2B9B 49                  992  .db 0h49 ; 0h040B: vol = 0hB (inverted), no pitch, no note, no instrument
   2B9C C2                  993  .db 0hC2 ; 0h040C: normal track data
   2B9D 41                  994  .db 0h41 ; 0h040D: vol = 0hF (inverted), no pitch, no note, no instrument
   2B9E AA                  995  .db 0hAA ; 0h040E: normal track data
   2B9F 49                  996  .db 0h49 ; 0h040F: vol = 0hB (inverted), no pitch, no note, no instrument
   2BA0 C2                  997  .db 0hC2 ; 0h0410: normal track data
   2BA1 41                  998  .db 0h41 ; 0h0411: vol = 0hF (inverted), no pitch, no note, no instrument
   2BA2                     999 trackDef10Test:
   2BA2 92                 1000  .db 0h92 ; 0h0412: normal track data
   2BA3 E1                 1001  .db 0hE1 ; 0h0413: vol = 0hF (inverted), no pitch, no note, no instrument
   2BA4 00 00              1002  .dw 0h0000 ; 0h0414: pitch
   2BA6 03                 1003  .db 0h03 ; 0h0416: instrument
   2BA7 42                 1004  .db 0h42 ; 0h0417: normal track data
   2BA8 00                 1005  .db 0h00 ; 0h0418: vol off, no pitch, no note, no instrument
   2BA9 92                 1006  .db 0h92 ; 0h0419: normal track data
   2BAA 40                 1007  .db 0h40 ; 0h041A: vol off, no pitch, note, no instrument
   2BAB 42                 1008  .db 0h42 ; 0h041B: normal track data
   2BAC 00                 1009  .db 0h00 ; 0h041C: vol off, no pitch, no note, no instrument
   2BAD 92                 1010  .db 0h92 ; 0h041D: normal track data
   2BAE 6B                 1011  .db 0h6B ; 0h041E: vol = 0hA (inverted), no pitch, no note, no instrument
   2BAF 01                 1012  .db 0h01 ; 0h041F: instrument
   2BB0 AA                 1013  .db 0hAA ; 0h0420: normal track data
   2BB1 49                 1014  .db 0h49 ; 0h0421: vol = 0hB (inverted), no pitch, no note, no instrument
   2BB2 C2                 1015  .db 0hC2 ; 0h0422: normal track data,  note: E5
   2BB3 47                 1016  .db 0h47 ; 0h0423: vol = 0hC (inverted), no pitch, no note, no instrument
   2BB4 AA                 1017  .db 0hAA ; 0h0424: normal track data
   2BB5 49                 1018  .db 0h49 ; 0h0425: vol = 0hB (inverted), no pitch, no note, no instrument
   2BB6 92                 1019  .db 0h92 ; 0h0426: normal track data
   2BB7 61                 1020  .db 0h61 ; 0h0427: vol = 0hF (inverted), no pitch, no note, no instrument
   2BB8 04                 1021  .db 0h04 ; 0h0428: instrument
   2BB9 42                 1022  .db 0h42 ; 0h0429: normal track data
   2BBA 00                 1023  .db 0h00 ; 0h042A: vol off, no pitch, no note, no instrument
   2BBB 92                 1024  .db 0h92 ; 0h042B: normal track data
   2BBC 60                 1025  .db 0h60 ; 0h042C: vol off, no pitch, note, instrument
   2BBD 03                 1026  .db 0h03 ; 0h042D: instrument
   2BBE 42                 1027  .db 0h42 ; 0h042E: normal track data
   2BBF 00                 1028  .db 0h00 ; 0h042F: vol off, no pitch, no note, no instrument
   2BC0 92                 1029  .db 0h92 ; 0h0430: normal track data
   2BC1 6B                 1030  .db 0h6B ; 0h0431: vol = 0hA (inverted), no pitch, no note, no instrument
   2BC2 01                 1031  .db 0h01 ; 0h0432: instrument
   2BC3 AA                 1032  .db 0hAA ; 0h0433: normal track data
   2BC4 49                 1033  .db 0h49 ; 0h0434: vol = 0hB (inverted), no pitch, no note, no instrument
   2BC5 C2                 1034  .db 0hC2 ; 0h0435: normal track data,  note: E5
   2BC6 47                 1035  .db 0h47 ; 0h0436: vol = 0hC (inverted), no pitch, no note, no instrument
   2BC7 AA                 1036  .db 0hAA ; 0h0437: normal track data
   2BC8 49                 1037  .db 0h49 ; 0h0438: vol = 0hB (inverted), no pitch, no note, no instrument
   2BC9 92                 1038  .db 0h92 ; 0h0439: normal track data
   2BCA 61                 1039  .db 0h61 ; 0h043A: vol = 0hF (inverted), no pitch, no note, no instrument
   2BCB 03                 1040  .db 0h03 ; 0h043B: instrument
   2BCC 42                 1041  .db 0h42 ; 0h043C: normal track data
   2BCD 00                 1042  .db 0h00 ; 0h043D: vol off, no pitch, no note, no instrument
   2BCE 92                 1043  .db 0h92 ; 0h043E: normal track data
   2BCF 40                 1044  .db 0h40 ; 0h043F: vol off, no pitch, note, no instrument
   2BD0 42                 1045  .db 0h42 ; 0h0440: normal track data
   2BD1 00                 1046  .db 0h00 ; 0h0441: vol off, no pitch, no note, no instrument
   2BD2 92                 1047  .db 0h92 ; 0h0442: normal track data
   2BD3 6B                 1048  .db 0h6B ; 0h0443: vol = 0hA (inverted), no pitch, no note, no instrument
   2BD4 01                 1049  .db 0h01 ; 0h0444: instrument
   2BD5 AA                 1050  .db 0hAA ; 0h0445: normal track data
   2BD6 49                 1051  .db 0h49 ; 0h0446: vol = 0hB (inverted), no pitch, no note, no instrument
   2BD7 C2                 1052  .db 0hC2 ; 0h0447: normal track data,  note: E5
   2BD8 47                 1053  .db 0h47 ; 0h0448: vol = 0hC (inverted), no pitch, no note, no instrument
   2BD9 AA                 1054  .db 0hAA ; 0h0449: normal track data
   2BDA 49                 1055  .db 0h49 ; 0h044A: vol = 0hB (inverted), no pitch, no note, no instrument
   2BDB 92                 1056  .db 0h92 ; 0h044B: normal track data
   2BDC 61                 1057  .db 0h61 ; 0h044C: vol = 0hF (inverted), no pitch, no note, no instrument
   2BDD 04                 1058  .db 0h04 ; 0h044D: instrument
   2BDE 42                 1059  .db 0h42 ; 0h044E: normal track data
   2BDF 00                 1060  .db 0h00 ; 0h044F: vol off, no pitch, no note, no instrument
   2BE0 92                 1061  .db 0h92 ; 0h0450: normal track data
   2BE1 60                 1062  .db 0h60 ; 0h0451: vol off, no pitch, note, instrument
   2BE2 03                 1063  .db 0h03 ; 0h0452: instrument
   2BE3 42                 1064  .db 0h42 ; 0h0453: normal track data
   2BE4 00                 1065  .db 0h00 ; 0h0454: vol off, no pitch, no note, no instrument
   2BE5 92                 1066  .db 0h92 ; 0h0455: normal track data
   2BE6 6B                 1067  .db 0h6B ; 0h0456: vol = 0hA (inverted), no pitch, no note, no instrument
   2BE7 01                 1068  .db 0h01 ; 0h0457: instrument
   2BE8 AA                 1069  .db 0hAA ; 0h0458: normal track data
   2BE9 49                 1070  .db 0h49 ; 0h0459: vol = 0hB (inverted), no pitch, no note, no instrument
   2BEA C2                 1071  .db 0hC2 ; 0h045A: normal track data,  note: E5
   2BEB 47                 1072  .db 0h47 ; 0h045B: vol = 0hC (inverted), no pitch, no note, no instrument
   2BEC AA                 1073  .db 0hAA ; 0h045C: normal track data
   2BED 49                 1074  .db 0h49 ; 0h045D: vol = 0hB (inverted), no pitch, no note, no instrument
   2BEE 92                 1075  .db 0h92 ; 0h045E: normal track data
   2BEF 61                 1076  .db 0h61 ; 0h045F: vol = 0hF (inverted), no pitch, no note, no instrument
   2BF0 03                 1077  .db 0h03 ; 0h0460: instrument
   2BF1 42                 1078  .db 0h42 ; 0h0461: normal track data
   2BF2 00                 1079  .db 0h00 ; 0h0462: vol off, no pitch, no note, no instrument
   2BF3 92                 1080  .db 0h92 ; 0h0463: normal track data
   2BF4 40                 1081  .db 0h40 ; 0h0464: vol off, no pitch, note, no instrument
   2BF5 42                 1082  .db 0h42 ; 0h0465: normal track data
   2BF6 00                 1083  .db 0h00 ; 0h0466: vol off, no pitch, no note, no instrument
   2BF7 92                 1084  .db 0h92 ; 0h0467: normal track data
   2BF8 6B                 1085  .db 0h6B ; 0h0468: vol = 0hA (inverted), no pitch, no note, no instrument
   2BF9 01                 1086  .db 0h01 ; 0h0469: instrument
   2BFA AA                 1087  .db 0hAA ; 0h046A: normal track data
   2BFB 49                 1088  .db 0h49 ; 0h046B: vol = 0hB (inverted), no pitch, no note, no instrument
   2BFC C2                 1089  .db 0hC2 ; 0h046C: normal track data,  note: E5
   2BFD 47                 1090  .db 0h47 ; 0h046D: vol = 0hC (inverted), no pitch, no note, no instrument
   2BFE AA                 1091  .db 0hAA ; 0h046E: normal track data
   2BFF 49                 1092  .db 0h49 ; 0h046F: vol = 0hB (inverted), no pitch, no note, no instrument
   2C00 92                 1093  .db 0h92 ; 0h0470: normal track data
   2C01 61                 1094  .db 0h61 ; 0h0471: vol = 0hF (inverted), no pitch, no note, no instrument
   2C02 04                 1095  .db 0h04 ; 0h0472: instrument
   2C03 42                 1096  .db 0h42 ; 0h0473: normal track data
   2C04 00                 1097  .db 0h00 ; 0h0474: vol off, no pitch, no note, no instrument
   2C05 92                 1098  .db 0h92 ; 0h0475: normal track data
   2C06 60                 1099  .db 0h60 ; 0h0476: vol off, no pitch, note, instrument
   2C07 03                 1100  .db 0h03 ; 0h0477: instrument
   2C08 42                 1101  .db 0h42 ; 0h0478: normal track data
   2C09 00                 1102  .db 0h00 ; 0h0479: vol off, no pitch, no note, no instrument
   2C0A 92                 1103  .db 0h92 ; 0h047A: normal track data
   2C0B 6B                 1104  .db 0h6B ; 0h047B: vol = 0hA (inverted), no pitch, no note, no instrument
   2C0C 01                 1105  .db 0h01 ; 0h047C: instrument
   2C0D AA                 1106  .db 0hAA ; 0h047D: normal track data
   2C0E 49                 1107  .db 0h49 ; 0h047E: vol = 0hB (inverted), no pitch, no note, no instrument
   2C0F C2                 1108  .db 0hC2 ; 0h047F: normal track data,  note: E5
   2C10 47                 1109  .db 0h47 ; 0h0480: vol = 0hC (inverted), no pitch, no note, no instrument
   2C11 AA                 1110  .db 0hAA ; 0h0481: normal track data
   2C12 49                 1111  .db 0h49 ; 0h0482: vol = 0hB (inverted), no pitch, no note, no instrument
   2C13 92                 1112  .db 0h92 ; 0h0483: normal track data
   2C14 61                 1113  .db 0h61 ; 0h0484: vol = 0hF (inverted), no pitch, no note, no instrument
   2C15 03                 1114  .db 0h03 ; 0h0485: instrument
   2C16 42                 1115  .db 0h42 ; 0h0486: normal track data
   2C17 00                 1116  .db 0h00 ; 0h0487: vol off, no pitch, no note, no instrument
   2C18 92                 1117  .db 0h92 ; 0h0488: normal track data
   2C19 40                 1118  .db 0h40 ; 0h0489: vol off, no pitch, note, no instrument
   2C1A 42                 1119  .db 0h42 ; 0h048A: normal track data
   2C1B 00                 1120  .db 0h00 ; 0h048B: vol off, no pitch, no note, no instrument
   2C1C 92                 1121  .db 0h92 ; 0h048C: normal track data
   2C1D 6B                 1122  .db 0h6B ; 0h048D: vol = 0hA (inverted), no pitch, no note, no instrument
   2C1E 01                 1123  .db 0h01 ; 0h048E: instrument
   2C1F AA                 1124  .db 0hAA ; 0h048F: normal track data
   2C20 49                 1125  .db 0h49 ; 0h0490: vol = 0hB (inverted), no pitch, no note, no instrument
   2C21 C2                 1126  .db 0hC2 ; 0h0491: normal track data,  note: E5
   2C22 47                 1127  .db 0h47 ; 0h0492: vol = 0hC (inverted), no pitch, no note, no instrument
   2C23 AA                 1128  .db 0hAA ; 0h0493: normal track data
   2C24 49                 1129  .db 0h49 ; 0h0494: vol = 0hB (inverted), no pitch, no note, no instrument
   2C25 92                 1130  .db 0h92 ; 0h0495: normal track data
   2C26 61                 1131  .db 0h61 ; 0h0496: vol = 0hF (inverted), no pitch, no note, no instrument
   2C27 04                 1132  .db 0h04 ; 0h0497: instrument
   2C28 42                 1133  .db 0h42 ; 0h0498: normal track data
   2C29 00                 1134  .db 0h00 ; 0h0499: vol off, no pitch, no note, no instrument
   2C2A 92                 1135  .db 0h92 ; 0h049A: normal track data
   2C2B 60                 1136  .db 0h60 ; 0h049B: vol off, no pitch, note, instrument
   2C2C 03                 1137  .db 0h03 ; 0h049C: instrument
   2C2D 42                 1138  .db 0h42 ; 0h049D: normal track data
   2C2E 00                 1139  .db 0h00 ; 0h049E: vol off, no pitch, no note, no instrument
   2C2F 92                 1140  .db 0h92 ; 0h049F: normal track data
   2C30 6B                 1141  .db 0h6B ; 0h04A0: vol = 0hA (inverted), no pitch, no note, no instrument
   2C31 01                 1142  .db 0h01 ; 0h04A1: instrument
   2C32 AA                 1143  .db 0hAA ; 0h04A2: normal track data
   2C33 49                 1144  .db 0h49 ; 0h04A3: vol = 0hB (inverted), no pitch, no note, no instrument
   2C34 C2                 1145  .db 0hC2 ; 0h04A4: normal track data,  note: E5
   2C35 47                 1146  .db 0h47 ; 0h04A5: vol = 0hC (inverted), no pitch, no note, no instrument
   2C36 AA                 1147  .db 0hAA ; 0h04A6: normal track data
   2C37 49                 1148  .db 0h49 ; 0h04A7: vol = 0hB (inverted), no pitch, no note, no instrument
   2C38                    1149 trackDef12Test:
   2C38 92                 1150  .db 0h92 ; 0h04A8: normal track data
   2C39 E1                 1151  .db 0hE1 ; 0h04A9: vol = 0hF (inverted), no pitch, no note, no instrument
   2C3A 00 00              1152  .dw 0h0000 ; 0h04AA: pitch
   2C3C 03                 1153  .db 0h03 ; 0h04AC: instrument
   2C3D 42                 1154  .db 0h42 ; 0h04AD: normal track data
   2C3E 00                 1155  .db 0h00 ; 0h04AE: vol off, no pitch, no note, no instrument
   2C3F 92                 1156  .db 0h92 ; 0h04AF: normal track data
   2C40 40                 1157  .db 0h40 ; 0h04B0: vol off, no pitch, note, no instrument
   2C41 42                 1158  .db 0h42 ; 0h04B1: normal track data
   2C42 00                 1159  .db 0h00 ; 0h04B2: vol off, no pitch, no note, no instrument
   2C43 92                 1160  .db 0h92 ; 0h04B3: normal track data
   2C44 6B                 1161  .db 0h6B ; 0h04B4: vol = 0hA (inverted), no pitch, no note, no instrument
   2C45 01                 1162  .db 0h01 ; 0h04B5: instrument
   2C46 AA                 1163  .db 0hAA ; 0h04B6: normal track data
   2C47 49                 1164  .db 0h49 ; 0h04B7: vol = 0hB (inverted), no pitch, no note, no instrument
   2C48 C2                 1165  .db 0hC2 ; 0h04B8: normal track data,  note: E5
   2C49 47                 1166  .db 0h47 ; 0h04B9: vol = 0hC (inverted), no pitch, no note, no instrument
   2C4A AA                 1167  .db 0hAA ; 0h04BA: normal track data
   2C4B 49                 1168  .db 0h49 ; 0h04BB: vol = 0hB (inverted), no pitch, no note, no instrument
   2C4C 92                 1169  .db 0h92 ; 0h04BC: normal track data
   2C4D 61                 1170  .db 0h61 ; 0h04BD: vol = 0hF (inverted), no pitch, no note, no instrument
   2C4E 04                 1171  .db 0h04 ; 0h04BE: instrument
   2C4F 42                 1172  .db 0h42 ; 0h04BF: normal track data
   2C50 00                 1173  .db 0h00 ; 0h04C0: vol off, no pitch, no note, no instrument
   2C51 92                 1174  .db 0h92 ; 0h04C1: normal track data
   2C52 60                 1175  .db 0h60 ; 0h04C2: vol off, no pitch, note, instrument
   2C53 03                 1176  .db 0h03 ; 0h04C3: instrument
   2C54 42                 1177  .db 0h42 ; 0h04C4: normal track data
   2C55 00                 1178  .db 0h00 ; 0h04C5: vol off, no pitch, no note, no instrument
   2C56 92                 1179  .db 0h92 ; 0h04C6: normal track data
   2C57 6B                 1180  .db 0h6B ; 0h04C7: vol = 0hA (inverted), no pitch, no note, no instrument
   2C58 01                 1181  .db 0h01 ; 0h04C8: instrument
   2C59 AA                 1182  .db 0hAA ; 0h04C9: normal track data
   2C5A 49                 1183  .db 0h49 ; 0h04CA: vol = 0hB (inverted), no pitch, no note, no instrument
   2C5B C2                 1184  .db 0hC2 ; 0h04CB: normal track data,  note: E5
   2C5C 47                 1185  .db 0h47 ; 0h04CC: vol = 0hC (inverted), no pitch, no note, no instrument
   2C5D AA                 1186  .db 0hAA ; 0h04CD: normal track data
   2C5E 49                 1187  .db 0h49 ; 0h04CE: vol = 0hB (inverted), no pitch, no note, no instrument
   2C5F 92                 1188  .db 0h92 ; 0h04CF: normal track data
   2C60 61                 1189  .db 0h61 ; 0h04D0: vol = 0hF (inverted), no pitch, no note, no instrument
   2C61 03                 1190  .db 0h03 ; 0h04D1: instrument
   2C62 42                 1191  .db 0h42 ; 0h04D2: normal track data
   2C63 00                 1192  .db 0h00 ; 0h04D3: vol off, no pitch, no note, no instrument
   2C64 92                 1193  .db 0h92 ; 0h04D4: normal track data
   2C65 40                 1194  .db 0h40 ; 0h04D5: vol off, no pitch, note, no instrument
   2C66 42                 1195  .db 0h42 ; 0h04D6: normal track data
   2C67 00                 1196  .db 0h00 ; 0h04D7: vol off, no pitch, no note, no instrument
   2C68 92                 1197  .db 0h92 ; 0h04D8: normal track data
   2C69 6B                 1198  .db 0h6B ; 0h04D9: vol = 0hA (inverted), no pitch, no note, no instrument
   2C6A 01                 1199  .db 0h01 ; 0h04DA: instrument
   2C6B AA                 1200  .db 0hAA ; 0h04DB: normal track data
   2C6C 49                 1201  .db 0h49 ; 0h04DC: vol = 0hB (inverted), no pitch, no note, no instrument
   2C6D C2                 1202  .db 0hC2 ; 0h04DD: normal track data,  note: E5
   2C6E 47                 1203  .db 0h47 ; 0h04DE: vol = 0hC (inverted), no pitch, no note, no instrument
   2C6F AA                 1204  .db 0hAA ; 0h04DF: normal track data
   2C70 49                 1205  .db 0h49 ; 0h04E0: vol = 0hB (inverted), no pitch, no note, no instrument
   2C71 92                 1206  .db 0h92 ; 0h04E1: normal track data
   2C72 61                 1207  .db 0h61 ; 0h04E2: vol = 0hF (inverted), no pitch, no note, no instrument
   2C73 04                 1208  .db 0h04 ; 0h04E3: instrument
   2C74 42                 1209  .db 0h42 ; 0h04E4: normal track data
   2C75 00                 1210  .db 0h00 ; 0h04E5: vol off, no pitch, no note, no instrument
   2C76 92                 1211  .db 0h92 ; 0h04E6: normal track data
   2C77 60                 1212  .db 0h60 ; 0h04E7: vol off, no pitch, note, instrument
   2C78 03                 1213  .db 0h03 ; 0h04E8: instrument
   2C79 42                 1214  .db 0h42 ; 0h04E9: normal track data
   2C7A 00                 1215  .db 0h00 ; 0h04EA: vol off, no pitch, no note, no instrument
   2C7B 92                 1216  .db 0h92 ; 0h04EB: normal track data
   2C7C 6B                 1217  .db 0h6B ; 0h04EC: vol = 0hA (inverted), no pitch, no note, no instrument
   2C7D 01                 1218  .db 0h01 ; 0h04ED: instrument
   2C7E AA                 1219  .db 0hAA ; 0h04EE: normal track data
   2C7F 49                 1220  .db 0h49 ; 0h04EF: vol = 0hB (inverted), no pitch, no note, no instrument
   2C80 C2                 1221  .db 0hC2 ; 0h04F0: normal track data,  note: E5
   2C81 47                 1222  .db 0h47 ; 0h04F1: vol = 0hC (inverted), no pitch, no note, no instrument
   2C82 AA                 1223  .db 0hAA ; 0h04F2: normal track data
   2C83 49                 1224  .db 0h49 ; 0h04F3: vol = 0hB (inverted), no pitch, no note, no instrument
   2C84 92                 1225  .db 0h92 ; 0h04F4: normal track data
   2C85 61                 1226  .db 0h61 ; 0h04F5: vol = 0hF (inverted), no pitch, no note, no instrument
   2C86 03                 1227  .db 0h03 ; 0h04F6: instrument
   2C87 42                 1228  .db 0h42 ; 0h04F7: normal track data
   2C88 00                 1229  .db 0h00 ; 0h04F8: vol off, no pitch, no note, no instrument
   2C89 92                 1230  .db 0h92 ; 0h04F9: normal track data
   2C8A 40                 1231  .db 0h40 ; 0h04FA: vol off, no pitch, note, no instrument
   2C8B 42                 1232  .db 0h42 ; 0h04FB: normal track data
   2C8C 00                 1233  .db 0h00 ; 0h04FC: vol off, no pitch, no note, no instrument
   2C8D 92                 1234  .db 0h92 ; 0h04FD: normal track data
   2C8E 6B                 1235  .db 0h6B ; 0h04FE: vol = 0hA (inverted), no pitch, no note, no instrument
   2C8F 01                 1236  .db 0h01 ; 0h04FF: instrument
   2C90 AA                 1237  .db 0hAA ; 0h0500: normal track data
   2C91 49                 1238  .db 0h49 ; 0h0501: vol = 0hB (inverted), no pitch, no note, no instrument
   2C92 C2                 1239  .db 0hC2 ; 0h0502: normal track data,  note: E5
   2C93 47                 1240  .db 0h47 ; 0h0503: vol = 0hC (inverted), no pitch, no note, no instrument
   2C94 AA                 1241  .db 0hAA ; 0h0504: normal track data
   2C95 49                 1242  .db 0h49 ; 0h0505: vol = 0hB (inverted), no pitch, no note, no instrument
   2C96 92                 1243  .db 0h92 ; 0h0506: normal track data
   2C97 61                 1244  .db 0h61 ; 0h0507: vol = 0hF (inverted), no pitch, no note, no instrument
   2C98 04                 1245  .db 0h04 ; 0h0508: instrument
   2C99 42                 1246  .db 0h42 ; 0h0509: normal track data
   2C9A 00                 1247  .db 0h00 ; 0h050A: vol off, no pitch, no note, no instrument
   2C9B 92                 1248  .db 0h92 ; 0h050B: normal track data
   2C9C 60                 1249  .db 0h60 ; 0h050C: vol off, no pitch, note, instrument
   2C9D 03                 1250  .db 0h03 ; 0h050D: instrument
   2C9E 42                 1251  .db 0h42 ; 0h050E: normal track data
   2C9F 00                 1252  .db 0h00 ; 0h050F: vol off, no pitch, no note, no instrument
   2CA0 92                 1253  .db 0h92 ; 0h0510: normal track data
   2CA1 6B                 1254  .db 0h6B ; 0h0511: vol = 0hA (inverted), no pitch, no note, no instrument
   2CA2 01                 1255  .db 0h01 ; 0h0512: instrument
   2CA3 AA                 1256  .db 0hAA ; 0h0513: normal track data
   2CA4 49                 1257  .db 0h49 ; 0h0514: vol = 0hB (inverted), no pitch, no note, no instrument
   2CA5 C2                 1258  .db 0hC2 ; 0h0515: normal track data,  note: E5
   2CA6 47                 1259  .db 0h47 ; 0h0516: vol = 0hC (inverted), no pitch, no note, no instrument
   2CA7 AA                 1260  .db 0hAA ; 0h0517: normal track data
   2CA8 49                 1261  .db 0h49 ; 0h0518: vol = 0hB (inverted), no pitch, no note, no instrument
   2CA9 92                 1262  .db 0h92 ; 0h0519: normal track data
   2CAA 61                 1263  .db 0h61 ; 0h051A: vol = 0hF (inverted), no pitch, no note, no instrument
   2CAB 03                 1264  .db 0h03 ; 0h051B: instrument
   2CAC 42                 1265  .db 0h42 ; 0h051C: normal track data
   2CAD 00                 1266  .db 0h00 ; 0h051D: vol off, no pitch, no note, no instrument
   2CAE 92                 1267  .db 0h92 ; 0h051E: normal track data
   2CAF 40                 1268  .db 0h40 ; 0h051F: vol off, no pitch, note, no instrument
   2CB0 42                 1269  .db 0h42 ; 0h0520: normal track data
   2CB1 00                 1270  .db 0h00 ; 0h0521: vol off, no pitch, no note, no instrument
   2CB2 92                 1271  .db 0h92 ; 0h0522: normal track data
   2CB3 6B                 1272  .db 0h6B ; 0h0523: vol = 0hA (inverted), no pitch, no note, no instrument
   2CB4 01                 1273  .db 0h01 ; 0h0524: instrument
   2CB5 AA                 1274  .db 0hAA ; 0h0525: normal track data
   2CB6 49                 1275  .db 0h49 ; 0h0526: vol = 0hB (inverted), no pitch, no note, no instrument
   2CB7 C2                 1276  .db 0hC2 ; 0h0527: normal track data,  note: E5
   2CB8 47                 1277  .db 0h47 ; 0h0528: vol = 0hC (inverted), no pitch, no note, no instrument
   2CB9 AA                 1278  .db 0hAA ; 0h0529: normal track data
   2CBA 49                 1279  .db 0h49 ; 0h052A: vol = 0hB (inverted), no pitch, no note, no instrument
   2CBB 92                 1280  .db 0h92 ; 0h052B: normal track data
   2CBC 61                 1281  .db 0h61 ; 0h052C: vol = 0hF (inverted), no pitch, no note, no instrument
   2CBD 03                 1282  .db 0h03 ; 0h052D: instrument
   2CBE 53                 1283  .db 0h53 ; 0h052E: full optimization, no escape: E3
   2CBF AA                 1284  .db 0hAA ; 0h052F: normal track data
   2CC0 40                 1285  .db 0h40 ; 0h0530: vol off, no pitch, note, no instrument
   2CC1 6B                 1286  .db 0h6B ; 0h0531: full optimization, no escape: E4
   2CC2 92                 1287  .db 0h92 ; 0h0532: normal track data
   2CC3 4B                 1288  .db 0h4B ; 0h0533: vol = 0hA (inverted), no pitch, no note, no instrument
   2CC4 92                 1289  .db 0h92 ; 0h0534: normal track data
   2CC5 49                 1290  .db 0h49 ; 0h0535: vol = 0hB (inverted), no pitch, no note, no instrument
   2CC6 92                 1291  .db 0h92 ; 0h0536: normal track data,  note: E3
   2CC7 67                 1292  .db 0h67 ; 0h0537: vol = 0hC (inverted), no pitch, no note, no instrument
   2CC8 04                 1293  .db 0h04 ; 0h0538: instrument
   2CC9 92                 1294  .db 0h92 ; 0h0539: normal track data
   2CCA 49                 1295  .db 0h49 ; 0h053A: vol = 0hB (inverted), no pitch, no note, no instrument
   2CCB                    1296 trackDef15Test:
   2CCB 72                 1297  .db 0h72 ; 0h053B: normal track data
   2CCC E1                 1298  .db 0hE1 ; 0h053C: vol = 0hF (inverted), no pitch, no note, no instrument
   2CCD 00 00              1299  .dw 0h0000 ; 0h053D: pitch
   2CCF 03                 1300  .db 0h03 ; 0h053F: instrument
   2CD0 5A                 1301  .db 0h5A ; 0h0540: normal track data
   2CD1 60                 1302  .db 0h60 ; 0h0541: vol off, no pitch, note, instrument
   2CD2 01                 1303  .db 0h01 ; 0h0542: instrument
   2CD3 B2                 1304  .db 0hB2 ; 0h0543: normal track data,  note: G#4
   2CD4 7F                 1305  .db 0h7F ; 0h0544: vol = 0h0 (inverted), no pitch, no note, no instrument
   2CD5 06                 1306  .db 0h06 ; 0h0545: instrument
   2CD6 5A                 1307  .db 0h5A ; 0h0546: normal track data
   2CD7 61                 1308  .db 0h61 ; 0h0547: vol = 0hF (inverted), no pitch, no note, no instrument
   2CD8 01                 1309  .db 0h01 ; 0h0548: instrument
   2CD9 72                 1310  .db 0h72 ; 0h0549: normal track data
   2CDA 60                 1311  .db 0h60 ; 0h054A: vol off, no pitch, note, instrument
   2CDB 04                 1312  .db 0h04 ; 0h054B: instrument
   2CDC B2                 1313  .db 0hB2 ; 0h054C: normal track data,  note: G#4
   2CDD 7F                 1314  .db 0h7F ; 0h054D: vol = 0h0 (inverted), no pitch, no note, no instrument
   2CDE 06                 1315  .db 0h06 ; 0h054E: instrument
   2CDF 5A                 1316  .db 0h5A ; 0h054F: normal track data
   2CE0 61                 1317  .db 0h61 ; 0h0550: vol = 0hF (inverted), no pitch, no note, no instrument
   2CE1 01                 1318  .db 0h01 ; 0h0551: instrument
   2CE2 72                 1319  .db 0h72 ; 0h0552: normal track data
   2CE3 60                 1320  .db 0h60 ; 0h0553: vol off, no pitch, note, instrument
   2CE4 03                 1321  .db 0h03 ; 0h0554: instrument
   2CE5 B2                 1322  .db 0hB2 ; 0h0555: normal track data,  note: G#4
   2CE6 7F                 1323  .db 0h7F ; 0h0556: vol = 0h0 (inverted), no pitch, no note, no instrument
   2CE7 06                 1324  .db 0h06 ; 0h0557: instrument
   2CE8 5A                 1325  .db 0h5A ; 0h0558: normal track data
   2CE9 61                 1326  .db 0h61 ; 0h0559: vol = 0hF (inverted), no pitch, no note, no instrument
   2CEA 01                 1327  .db 0h01 ; 0h055A: instrument
   2CEB 72                 1328  .db 0h72 ; 0h055B: normal track data
   2CEC 60                 1329  .db 0h60 ; 0h055C: vol off, no pitch, note, instrument
   2CED 03                 1330  .db 0h03 ; 0h055D: instrument
   2CEE AE                 1331  .db 0hAE ; 0h055E: normal track data,  note: F#4
   2CEF 7F                 1332  .db 0h7F ; 0h055F: vol = 0h0 (inverted), no pitch, no note, no instrument
   2CF0 07                 1333  .db 0h07 ; 0h0560: instrument
   2CF1 72                 1334  .db 0h72 ; 0h0561: normal track data
   2CF2 61                 1335  .db 0h61 ; 0h0562: vol = 0hF (inverted), no pitch, no note, no instrument
   2CF3 04                 1336  .db 0h04 ; 0h0563: instrument
   2CF4 5A                 1337  .db 0h5A ; 0h0564: normal track data
   2CF5 60                 1338  .db 0h60 ; 0h0565: vol off, no pitch, note, instrument
   2CF6 01                 1339  .db 0h01 ; 0h0566: instrument
   2CF7 AE                 1340  .db 0hAE ; 0h0567: normal track data,  note: F#4
   2CF8 7F                 1341  .db 0h7F ; 0h0568: vol = 0h0 (inverted), no pitch, no note, no instrument
   2CF9 07                 1342  .db 0h07 ; 0h0569: instrument
   2CFA 5A                 1343  .db 0h5A ; 0h056A: normal track data
   2CFB 61                 1344  .db 0h61 ; 0h056B: vol = 0hF (inverted), no pitch, no note, no instrument
   2CFC 01                 1345  .db 0h01 ; 0h056C: instrument
   2CFD 72                 1346  .db 0h72 ; 0h056D: normal track data
   2CFE 60                 1347  .db 0h60 ; 0h056E: vol off, no pitch, note, instrument
   2CFF 03                 1348  .db 0h03 ; 0h056F: instrument
   2D00 5A                 1349  .db 0h5A ; 0h0570: normal track data
   2D01 60                 1350  .db 0h60 ; 0h0571: vol off, no pitch, note, instrument
   2D02 01                 1351  .db 0h01 ; 0h0572: instrument
   2D03 B2                 1352  .db 0hB2 ; 0h0573: normal track data,  note: G#4
   2D04 7F                 1353  .db 0h7F ; 0h0574: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D05 08                 1354  .db 0h08 ; 0h0575: instrument
   2D06 5A                 1355  .db 0h5A ; 0h0576: normal track data
   2D07 61                 1356  .db 0h61 ; 0h0577: vol = 0hF (inverted), no pitch, no note, no instrument
   2D08 01                 1357  .db 0h01 ; 0h0578: instrument
   2D09 72                 1358  .db 0h72 ; 0h0579: normal track data
   2D0A 60                 1359  .db 0h60 ; 0h057A: vol off, no pitch, note, instrument
   2D0B 04                 1360  .db 0h04 ; 0h057B: instrument
   2D0C B2                 1361  .db 0hB2 ; 0h057C: normal track data,  note: G#4
   2D0D 7F                 1362  .db 0h7F ; 0h057D: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D0E 08                 1363  .db 0h08 ; 0h057E: instrument
   2D0F 5A                 1364  .db 0h5A ; 0h057F: normal track data
   2D10 61                 1365  .db 0h61 ; 0h0580: vol = 0hF (inverted), no pitch, no note, no instrument
   2D11 01                 1366  .db 0h01 ; 0h0581: instrument
   2D12 72                 1367  .db 0h72 ; 0h0582: normal track data
   2D13 60                 1368  .db 0h60 ; 0h0583: vol off, no pitch, note, instrument
   2D14 03                 1369  .db 0h03 ; 0h0584: instrument
   2D15 B8                 1370  .db 0hB8 ; 0h0585: normal track data,  note: B4
   2D16 7F                 1371  .db 0h7F ; 0h0586: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D17 07                 1372  .db 0h07 ; 0h0587: instrument
   2D18 5A                 1373  .db 0h5A ; 0h0588: normal track data
   2D19 61                 1374  .db 0h61 ; 0h0589: vol = 0hF (inverted), no pitch, no note, no instrument
   2D1A 01                 1375  .db 0h01 ; 0h058A: instrument
   2D1B 72                 1376  .db 0h72 ; 0h058B: normal track data
   2D1C 60                 1377  .db 0h60 ; 0h058C: vol off, no pitch, note, instrument
   2D1D 03                 1378  .db 0h03 ; 0h058D: instrument
   2D1E B8                 1379  .db 0hB8 ; 0h058E: normal track data,  note: B4
   2D1F 7F                 1380  .db 0h7F ; 0h058F: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D20 07                 1381  .db 0h07 ; 0h0590: instrument
   2D21 72                 1382  .db 0h72 ; 0h0591: normal track data
   2D22 61                 1383  .db 0h61 ; 0h0592: vol = 0hF (inverted), no pitch, no note, no instrument
   2D23 04                 1384  .db 0h04 ; 0h0593: instrument
   2D24 5A                 1385  .db 0h5A ; 0h0594: normal track data
   2D25 60                 1386  .db 0h60 ; 0h0595: vol off, no pitch, note, instrument
   2D26 01                 1387  .db 0h01 ; 0h0596: instrument
   2D27 B2                 1388  .db 0hB2 ; 0h0597: normal track data,  note: G#4
   2D28 7F                 1389  .db 0h7F ; 0h0598: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D29 08                 1390  .db 0h08 ; 0h0599: instrument
   2D2A 5A                 1391  .db 0h5A ; 0h059A: normal track data
   2D2B 61                 1392  .db 0h61 ; 0h059B: vol = 0hF (inverted), no pitch, no note, no instrument
   2D2C 01                 1393  .db 0h01 ; 0h059C: instrument
   2D2D 72                 1394  .db 0h72 ; 0h059D: normal track data
   2D2E 60                 1395  .db 0h60 ; 0h059E: vol off, no pitch, note, instrument
   2D2F 03                 1396  .db 0h03 ; 0h059F: instrument
   2D30 5A                 1397  .db 0h5A ; 0h05A0: normal track data
   2D31 60                 1398  .db 0h60 ; 0h05A1: vol off, no pitch, note, instrument
   2D32 01                 1399  .db 0h01 ; 0h05A2: instrument
   2D33 B2                 1400  .db 0hB2 ; 0h05A3: normal track data,  note: G#4
   2D34 7F                 1401  .db 0h7F ; 0h05A4: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D35 06                 1402  .db 0h06 ; 0h05A5: instrument
   2D36 5A                 1403  .db 0h5A ; 0h05A6: normal track data
   2D37 61                 1404  .db 0h61 ; 0h05A7: vol = 0hF (inverted), no pitch, no note, no instrument
   2D38 01                 1405  .db 0h01 ; 0h05A8: instrument
   2D39 72                 1406  .db 0h72 ; 0h05A9: normal track data
   2D3A 60                 1407  .db 0h60 ; 0h05AA: vol off, no pitch, note, instrument
   2D3B 04                 1408  .db 0h04 ; 0h05AB: instrument
   2D3C B2                 1409  .db 0hB2 ; 0h05AC: normal track data,  note: G#4
   2D3D 7F                 1410  .db 0h7F ; 0h05AD: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D3E 06                 1411  .db 0h06 ; 0h05AE: instrument
   2D3F 5A                 1412  .db 0h5A ; 0h05AF: normal track data
   2D40 61                 1413  .db 0h61 ; 0h05B0: vol = 0hF (inverted), no pitch, no note, no instrument
   2D41 01                 1414  .db 0h01 ; 0h05B1: instrument
   2D42 72                 1415  .db 0h72 ; 0h05B2: normal track data
   2D43 60                 1416  .db 0h60 ; 0h05B3: vol off, no pitch, note, instrument
   2D44 03                 1417  .db 0h03 ; 0h05B4: instrument
   2D45 B2                 1418  .db 0hB2 ; 0h05B5: normal track data,  note: G#4
   2D46 7F                 1419  .db 0h7F ; 0h05B6: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D47 06                 1420  .db 0h06 ; 0h05B7: instrument
   2D48 5A                 1421  .db 0h5A ; 0h05B8: normal track data
   2D49 61                 1422  .db 0h61 ; 0h05B9: vol = 0hF (inverted), no pitch, no note, no instrument
   2D4A 01                 1423  .db 0h01 ; 0h05BA: instrument
   2D4B 72                 1424  .db 0h72 ; 0h05BB: normal track data
   2D4C 60                 1425  .db 0h60 ; 0h05BC: vol off, no pitch, note, instrument
   2D4D 03                 1426  .db 0h03 ; 0h05BD: instrument
   2D4E AE                 1427  .db 0hAE ; 0h05BE: normal track data,  note: F#4
   2D4F 7F                 1428  .db 0h7F ; 0h05BF: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D50 07                 1429  .db 0h07 ; 0h05C0: instrument
   2D51 72                 1430  .db 0h72 ; 0h05C1: normal track data
   2D52 61                 1431  .db 0h61 ; 0h05C2: vol = 0hF (inverted), no pitch, no note, no instrument
   2D53 04                 1432  .db 0h04 ; 0h05C3: instrument
   2D54 5A                 1433  .db 0h5A ; 0h05C4: normal track data
   2D55 60                 1434  .db 0h60 ; 0h05C5: vol off, no pitch, note, instrument
   2D56 01                 1435  .db 0h01 ; 0h05C6: instrument
   2D57 AE                 1436  .db 0hAE ; 0h05C7: normal track data,  note: F#4
   2D58 7F                 1437  .db 0h7F ; 0h05C8: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D59 07                 1438  .db 0h07 ; 0h05C9: instrument
   2D5A 5A                 1439  .db 0h5A ; 0h05CA: normal track data
   2D5B 61                 1440  .db 0h61 ; 0h05CB: vol = 0hF (inverted), no pitch, no note, no instrument
   2D5C 01                 1441  .db 0h01 ; 0h05CC: instrument
   2D5D 72                 1442  .db 0h72 ; 0h05CD: normal track data
   2D5E 60                 1443  .db 0h60 ; 0h05CE: vol off, no pitch, note, instrument
   2D5F 03                 1444  .db 0h03 ; 0h05CF: instrument
   2D60 5A                 1445  .db 0h5A ; 0h05D0: normal track data
   2D61 60                 1446  .db 0h60 ; 0h05D1: vol off, no pitch, note, instrument
   2D62 01                 1447  .db 0h01 ; 0h05D2: instrument
   2D63 B2                 1448  .db 0hB2 ; 0h05D3: normal track data,  note: G#4
   2D64 7F                 1449  .db 0h7F ; 0h05D4: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D65 08                 1450  .db 0h08 ; 0h05D5: instrument
   2D66 5A                 1451  .db 0h5A ; 0h05D6: normal track data
   2D67 61                 1452  .db 0h61 ; 0h05D7: vol = 0hF (inverted), no pitch, no note, no instrument
   2D68 01                 1453  .db 0h01 ; 0h05D8: instrument
   2D69 72                 1454  .db 0h72 ; 0h05D9: normal track data
   2D6A 60                 1455  .db 0h60 ; 0h05DA: vol off, no pitch, note, instrument
   2D6B 04                 1456  .db 0h04 ; 0h05DB: instrument
   2D6C B2                 1457  .db 0hB2 ; 0h05DC: normal track data,  note: G#4
   2D6D 7F                 1458  .db 0h7F ; 0h05DD: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D6E 08                 1459  .db 0h08 ; 0h05DE: instrument
   2D6F 5A                 1460  .db 0h5A ; 0h05DF: normal track data
   2D70 61                 1461  .db 0h61 ; 0h05E0: vol = 0hF (inverted), no pitch, no note, no instrument
   2D71 01                 1462  .db 0h01 ; 0h05E1: instrument
   2D72 72                 1463  .db 0h72 ; 0h05E2: normal track data
   2D73 60                 1464  .db 0h60 ; 0h05E3: vol off, no pitch, note, instrument
   2D74 03                 1465  .db 0h03 ; 0h05E4: instrument
   2D75 B8                 1466  .db 0hB8 ; 0h05E5: normal track data,  note: B4
   2D76 7F                 1467  .db 0h7F ; 0h05E6: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D77 07                 1468  .db 0h07 ; 0h05E7: instrument
   2D78 5A                 1469  .db 0h5A ; 0h05E8: normal track data
   2D79 61                 1470  .db 0h61 ; 0h05E9: vol = 0hF (inverted), no pitch, no note, no instrument
   2D7A 01                 1471  .db 0h01 ; 0h05EA: instrument
   2D7B 72                 1472  .db 0h72 ; 0h05EB: normal track data
   2D7C 60                 1473  .db 0h60 ; 0h05EC: vol off, no pitch, note, instrument
   2D7D 03                 1474  .db 0h03 ; 0h05ED: instrument
   2D7E B8                 1475  .db 0hB8 ; 0h05EE: normal track data,  note: B4
   2D7F 7F                 1476  .db 0h7F ; 0h05EF: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D80 07                 1477  .db 0h07 ; 0h05F0: instrument
   2D81 72                 1478  .db 0h72 ; 0h05F1: normal track data
   2D82 61                 1479  .db 0h61 ; 0h05F2: vol = 0hF (inverted), no pitch, no note, no instrument
   2D83 04                 1480  .db 0h04 ; 0h05F3: instrument
   2D84 5A                 1481  .db 0h5A ; 0h05F4: normal track data
   2D85 60                 1482  .db 0h60 ; 0h05F5: vol off, no pitch, note, instrument
   2D86 01                 1483  .db 0h01 ; 0h05F6: instrument
   2D87 B2                 1484  .db 0hB2 ; 0h05F7: normal track data,  note: G#4
   2D88 7F                 1485  .db 0h7F ; 0h05F8: vol = 0h0 (inverted), no pitch, no note, no instrument
   2D89 08                 1486  .db 0h08 ; 0h05F9: instrument
   2D8A 5A                 1487  .db 0h5A ; 0h05FA: normal track data
   2D8B 61                 1488  .db 0h61 ; 0h05FB: vol = 0hF (inverted), no pitch, no note, no instrument
   2D8C 01                 1489  .db 0h01 ; 0h05FC: instrument
   2D8D                    1490 trackDef11Test:
   2D8D C2                 1491  .db 0hC2 ; 0h05FD: normal track data
   2D8E F3                 1492  .db 0hF3 ; 0h05FE: vol = 0h6 (inverted), no pitch, no note, no instrument
   2D8F 00 00              1493  .dw 0h0000 ; 0h05FF: pitch
   2D91 05                 1494  .db 0h05 ; 0h0601: instrument
   2D92 DA                 1495  .db 0hDA ; 0h0602: normal track data
   2D93 40                 1496  .db 0h40 ; 0h0603: vol off, no pitch, note, no instrument
   2D94 C2                 1497  .db 0hC2 ; 0h0604: normal track data
   2D95 40                 1498  .db 0h40 ; 0h0605: vol off, no pitch, note, no instrument
   2D96 AA                 1499  .db 0hAA ; 0h0606: normal track data
   2D97 40                 1500  .db 0h40 ; 0h0607: vol off, no pitch, note, no instrument
   2D98 92                 1501  .db 0h92 ; 0h0608: normal track data
   2D99 40                 1502  .db 0h40 ; 0h0609: vol off, no pitch, note, no instrument
   2D9A 7A                 1503  .db 0h7A ; 0h060A: normal track data
   2D9B 40                 1504  .db 0h40 ; 0h060B: vol off, no pitch, note, no instrument
   2D9C 92                 1505  .db 0h92 ; 0h060C: normal track data
   2D9D 40                 1506  .db 0h40 ; 0h060D: vol off, no pitch, note, no instrument
   2D9E AA                 1507  .db 0hAA ; 0h060E: normal track data
   2D9F 40                 1508  .db 0h40 ; 0h060F: vol off, no pitch, note, no instrument
   2DA0 C2                 1509  .db 0hC2 ; 0h0610: normal track data
   2DA1 40                 1510  .db 0h40 ; 0h0611: vol off, no pitch, note, no instrument
   2DA2 DA                 1511  .db 0hDA ; 0h0612: normal track data
   2DA3 40                 1512  .db 0h40 ; 0h0613: vol off, no pitch, note, no instrument
   2DA4 C2                 1513  .db 0hC2 ; 0h0614: normal track data
   2DA5 40                 1514  .db 0h40 ; 0h0615: vol off, no pitch, note, no instrument
   2DA6 AA                 1515  .db 0hAA ; 0h0616: normal track data
   2DA7 40                 1516  .db 0h40 ; 0h0617: vol off, no pitch, note, no instrument
   2DA8 92                 1517  .db 0h92 ; 0h0618: normal track data
   2DA9 40                 1518  .db 0h40 ; 0h0619: vol off, no pitch, note, no instrument
   2DAA 7A                 1519  .db 0h7A ; 0h061A: normal track data
   2DAB 40                 1520  .db 0h40 ; 0h061B: vol off, no pitch, note, no instrument
   2DAC 92                 1521  .db 0h92 ; 0h061C: normal track data
   2DAD 40                 1522  .db 0h40 ; 0h061D: vol off, no pitch, note, no instrument
   2DAE AA                 1523  .db 0hAA ; 0h061E: normal track data
   2DAF 40                 1524  .db 0h40 ; 0h061F: vol off, no pitch, note, no instrument
   2DB0 C2                 1525  .db 0hC2 ; 0h0620: normal track data
   2DB1 40                 1526  .db 0h40 ; 0h0621: vol off, no pitch, note, no instrument
   2DB2 DA                 1527  .db 0hDA ; 0h0622: normal track data
   2DB3 40                 1528  .db 0h40 ; 0h0623: vol off, no pitch, note, no instrument
   2DB4 C2                 1529  .db 0hC2 ; 0h0624: normal track data
   2DB5 40                 1530  .db 0h40 ; 0h0625: vol off, no pitch, note, no instrument
   2DB6 AA                 1531  .db 0hAA ; 0h0626: normal track data
   2DB7 40                 1532  .db 0h40 ; 0h0627: vol off, no pitch, note, no instrument
   2DB8 92                 1533  .db 0h92 ; 0h0628: normal track data
   2DB9 40                 1534  .db 0h40 ; 0h0629: vol off, no pitch, note, no instrument
   2DBA 7A                 1535  .db 0h7A ; 0h062A: normal track data
   2DBB 40                 1536  .db 0h40 ; 0h062B: vol off, no pitch, note, no instrument
   2DBC 92                 1537  .db 0h92 ; 0h062C: normal track data
   2DBD 40                 1538  .db 0h40 ; 0h062D: vol off, no pitch, note, no instrument
   2DBE AA                 1539  .db 0hAA ; 0h062E: normal track data
   2DBF 40                 1540  .db 0h40 ; 0h062F: vol off, no pitch, note, no instrument
   2DC0 C2                 1541  .db 0hC2 ; 0h0630: normal track data
   2DC1 40                 1542  .db 0h40 ; 0h0631: vol off, no pitch, note, no instrument
   2DC2 DA                 1543  .db 0hDA ; 0h0632: normal track data
   2DC3 40                 1544  .db 0h40 ; 0h0633: vol off, no pitch, note, no instrument
   2DC4 C2                 1545  .db 0hC2 ; 0h0634: normal track data
   2DC5 40                 1546  .db 0h40 ; 0h0635: vol off, no pitch, note, no instrument
   2DC6 AA                 1547  .db 0hAA ; 0h0636: normal track data
   2DC7 40                 1548  .db 0h40 ; 0h0637: vol off, no pitch, note, no instrument
   2DC8 92                 1549  .db 0h92 ; 0h0638: normal track data
   2DC9 40                 1550  .db 0h40 ; 0h0639: vol off, no pitch, note, no instrument
   2DCA 7A                 1551  .db 0h7A ; 0h063A: normal track data
   2DCB 40                 1552  .db 0h40 ; 0h063B: vol off, no pitch, note, no instrument
   2DCC 92                 1553  .db 0h92 ; 0h063C: normal track data
   2DCD 40                 1554  .db 0h40 ; 0h063D: vol off, no pitch, note, no instrument
   2DCE AA                 1555  .db 0hAA ; 0h063E: normal track data
   2DCF 40                 1556  .db 0h40 ; 0h063F: vol off, no pitch, note, no instrument
   2DD0 C2                 1557  .db 0hC2 ; 0h0640: normal track data
   2DD1 40                 1558  .db 0h40 ; 0h0641: vol off, no pitch, note, no instrument
   2DD2 DA                 1559  .db 0hDA ; 0h0642: normal track data
   2DD3 40                 1560  .db 0h40 ; 0h0643: vol off, no pitch, note, no instrument
   2DD4 C2                 1561  .db 0hC2 ; 0h0644: normal track data
   2DD5 40                 1562  .db 0h40 ; 0h0645: vol off, no pitch, note, no instrument
   2DD6 AA                 1563  .db 0hAA ; 0h0646: normal track data
   2DD7 40                 1564  .db 0h40 ; 0h0647: vol off, no pitch, note, no instrument
   2DD8 92                 1565  .db 0h92 ; 0h0648: normal track data
   2DD9 40                 1566  .db 0h40 ; 0h0649: vol off, no pitch, note, no instrument
   2DDA 7A                 1567  .db 0h7A ; 0h064A: normal track data
   2DDB 40                 1568  .db 0h40 ; 0h064B: vol off, no pitch, note, no instrument
   2DDC 92                 1569  .db 0h92 ; 0h064C: normal track data
   2DDD 40                 1570  .db 0h40 ; 0h064D: vol off, no pitch, note, no instrument
   2DDE AA                 1571  .db 0hAA ; 0h064E: normal track data
   2DDF 40                 1572  .db 0h40 ; 0h064F: vol off, no pitch, note, no instrument
   2DE0 C2                 1573  .db 0hC2 ; 0h0650: normal track data
   2DE1 40                 1574  .db 0h40 ; 0h0651: vol off, no pitch, note, no instrument
   2DE2 DA                 1575  .db 0hDA ; 0h0652: normal track data
   2DE3 40                 1576  .db 0h40 ; 0h0653: vol off, no pitch, note, no instrument
   2DE4 C2                 1577  .db 0hC2 ; 0h0654: normal track data
   2DE5 40                 1578  .db 0h40 ; 0h0655: vol off, no pitch, note, no instrument
   2DE6 AA                 1579  .db 0hAA ; 0h0656: normal track data
   2DE7 40                 1580  .db 0h40 ; 0h0657: vol off, no pitch, note, no instrument
   2DE8 92                 1581  .db 0h92 ; 0h0658: normal track data
   2DE9 40                 1582  .db 0h40 ; 0h0659: vol off, no pitch, note, no instrument
   2DEA 7A                 1583  .db 0h7A ; 0h065A: normal track data
   2DEB 40                 1584  .db 0h40 ; 0h065B: vol off, no pitch, note, no instrument
   2DEC 92                 1585  .db 0h92 ; 0h065C: normal track data
   2DED 40                 1586  .db 0h40 ; 0h065D: vol off, no pitch, note, no instrument
   2DEE AA                 1587  .db 0hAA ; 0h065E: normal track data
   2DEF 40                 1588  .db 0h40 ; 0h065F: vol off, no pitch, note, no instrument
   2DF0 C2                 1589  .db 0hC2 ; 0h0660: normal track data
   2DF1 40                 1590  .db 0h40 ; 0h0661: vol off, no pitch, note, no instrument
   2DF2 DA                 1591  .db 0hDA ; 0h0662: normal track data
   2DF3 40                 1592  .db 0h40 ; 0h0663: vol off, no pitch, note, no instrument
   2DF4 C2                 1593  .db 0hC2 ; 0h0664: normal track data
   2DF5 40                 1594  .db 0h40 ; 0h0665: vol off, no pitch, note, no instrument
   2DF6 AA                 1595  .db 0hAA ; 0h0666: normal track data
   2DF7 40                 1596  .db 0h40 ; 0h0667: vol off, no pitch, note, no instrument
   2DF8 92                 1597  .db 0h92 ; 0h0668: normal track data
   2DF9 40                 1598  .db 0h40 ; 0h0669: vol off, no pitch, note, no instrument
   2DFA 7A                 1599  .db 0h7A ; 0h066A: normal track data
   2DFB 40                 1600  .db 0h40 ; 0h066B: vol off, no pitch, note, no instrument
   2DFC 92                 1601  .db 0h92 ; 0h066C: normal track data
   2DFD 40                 1602  .db 0h40 ; 0h066D: vol off, no pitch, note, no instrument
   2DFE AA                 1603  .db 0hAA ; 0h066E: normal track data
   2DFF 40                 1604  .db 0h40 ; 0h066F: vol off, no pitch, note, no instrument
   2E00 C2                 1605  .db 0hC2 ; 0h0670: normal track data
   2E01 40                 1606  .db 0h40 ; 0h0671: vol off, no pitch, note, no instrument
   2E02 DA                 1607  .db 0hDA ; 0h0672: normal track data
   2E03 40                 1608  .db 0h40 ; 0h0673: vol off, no pitch, note, no instrument
   2E04 C2                 1609  .db 0hC2 ; 0h0674: normal track data
   2E05 40                 1610  .db 0h40 ; 0h0675: vol off, no pitch, note, no instrument
   2E06 AA                 1611  .db 0hAA ; 0h0676: normal track data
   2E07 40                 1612  .db 0h40 ; 0h0677: vol off, no pitch, note, no instrument
   2E08 92                 1613  .db 0h92 ; 0h0678: normal track data
   2E09 40                 1614  .db 0h40 ; 0h0679: vol off, no pitch, note, no instrument
   2E0A 7A                 1615  .db 0h7A ; 0h067A: normal track data
   2E0B 40                 1616  .db 0h40 ; 0h067B: vol off, no pitch, note, no instrument
   2E0C 92                 1617  .db 0h92 ; 0h067C: normal track data
   2E0D 40                 1618  .db 0h40 ; 0h067D: vol off, no pitch, note, no instrument
   2E0E AA                 1619  .db 0hAA ; 0h067E: normal track data
   2E0F 40                 1620  .db 0h40 ; 0h067F: vol off, no pitch, note, no instrument
   2E10                    1621 trackDef13Test:
   2E10 C2                 1622  .db 0hC2 ; 0h0680: normal track data
   2E11 F3                 1623  .db 0hF3 ; 0h0681: vol = 0h6 (inverted), no pitch, no note, no instrument
   2E12 00 00              1624  .dw 0h0000 ; 0h0682: pitch
   2E14 05                 1625  .db 0h05 ; 0h0684: instrument
   2E15 DA                 1626  .db 0hDA ; 0h0685: normal track data
   2E16 40                 1627  .db 0h40 ; 0h0686: vol off, no pitch, note, no instrument
   2E17 C2                 1628  .db 0hC2 ; 0h0687: normal track data
   2E18 40                 1629  .db 0h40 ; 0h0688: vol off, no pitch, note, no instrument
   2E19 AA                 1630  .db 0hAA ; 0h0689: normal track data
   2E1A 40                 1631  .db 0h40 ; 0h068A: vol off, no pitch, note, no instrument
   2E1B 92                 1632  .db 0h92 ; 0h068B: normal track data
   2E1C 40                 1633  .db 0h40 ; 0h068C: vol off, no pitch, note, no instrument
   2E1D 7A                 1634  .db 0h7A ; 0h068D: normal track data
   2E1E 40                 1635  .db 0h40 ; 0h068E: vol off, no pitch, note, no instrument
   2E1F 92                 1636  .db 0h92 ; 0h068F: normal track data
   2E20 40                 1637  .db 0h40 ; 0h0690: vol off, no pitch, note, no instrument
   2E21 AA                 1638  .db 0hAA ; 0h0691: normal track data
   2E22 40                 1639  .db 0h40 ; 0h0692: vol off, no pitch, note, no instrument
   2E23 C2                 1640  .db 0hC2 ; 0h0693: normal track data
   2E24 40                 1641  .db 0h40 ; 0h0694: vol off, no pitch, note, no instrument
   2E25 DA                 1642  .db 0hDA ; 0h0695: normal track data
   2E26 40                 1643  .db 0h40 ; 0h0696: vol off, no pitch, note, no instrument
   2E27 C2                 1644  .db 0hC2 ; 0h0697: normal track data
   2E28 40                 1645  .db 0h40 ; 0h0698: vol off, no pitch, note, no instrument
   2E29 AA                 1646  .db 0hAA ; 0h0699: normal track data
   2E2A 40                 1647  .db 0h40 ; 0h069A: vol off, no pitch, note, no instrument
   2E2B 92                 1648  .db 0h92 ; 0h069B: normal track data
   2E2C 40                 1649  .db 0h40 ; 0h069C: vol off, no pitch, note, no instrument
   2E2D 7A                 1650  .db 0h7A ; 0h069D: normal track data
   2E2E 40                 1651  .db 0h40 ; 0h069E: vol off, no pitch, note, no instrument
   2E2F 92                 1652  .db 0h92 ; 0h069F: normal track data
   2E30 40                 1653  .db 0h40 ; 0h06A0: vol off, no pitch, note, no instrument
   2E31 AA                 1654  .db 0hAA ; 0h06A1: normal track data
   2E32 40                 1655  .db 0h40 ; 0h06A2: vol off, no pitch, note, no instrument
   2E33 C2                 1656  .db 0hC2 ; 0h06A3: normal track data
   2E34 40                 1657  .db 0h40 ; 0h06A4: vol off, no pitch, note, no instrument
   2E35 DA                 1658  .db 0hDA ; 0h06A5: normal track data
   2E36 40                 1659  .db 0h40 ; 0h06A6: vol off, no pitch, note, no instrument
   2E37 C2                 1660  .db 0hC2 ; 0h06A7: normal track data
   2E38 40                 1661  .db 0h40 ; 0h06A8: vol off, no pitch, note, no instrument
   2E39 AA                 1662  .db 0hAA ; 0h06A9: normal track data
   2E3A 40                 1663  .db 0h40 ; 0h06AA: vol off, no pitch, note, no instrument
   2E3B 92                 1664  .db 0h92 ; 0h06AB: normal track data
   2E3C 40                 1665  .db 0h40 ; 0h06AC: vol off, no pitch, note, no instrument
   2E3D 7A                 1666  .db 0h7A ; 0h06AD: normal track data
   2E3E 40                 1667  .db 0h40 ; 0h06AE: vol off, no pitch, note, no instrument
   2E3F 92                 1668  .db 0h92 ; 0h06AF: normal track data
   2E40 40                 1669  .db 0h40 ; 0h06B0: vol off, no pitch, note, no instrument
   2E41 AA                 1670  .db 0hAA ; 0h06B1: normal track data
   2E42 40                 1671  .db 0h40 ; 0h06B2: vol off, no pitch, note, no instrument
   2E43 C2                 1672  .db 0hC2 ; 0h06B3: normal track data
   2E44 40                 1673  .db 0h40 ; 0h06B4: vol off, no pitch, note, no instrument
   2E45 DA                 1674  .db 0hDA ; 0h06B5: normal track data
   2E46 40                 1675  .db 0h40 ; 0h06B6: vol off, no pitch, note, no instrument
   2E47 C2                 1676  .db 0hC2 ; 0h06B7: normal track data
   2E48 40                 1677  .db 0h40 ; 0h06B8: vol off, no pitch, note, no instrument
   2E49 AA                 1678  .db 0hAA ; 0h06B9: normal track data
   2E4A 40                 1679  .db 0h40 ; 0h06BA: vol off, no pitch, note, no instrument
   2E4B 92                 1680  .db 0h92 ; 0h06BB: normal track data
   2E4C 40                 1681  .db 0h40 ; 0h06BC: vol off, no pitch, note, no instrument
   2E4D 7A                 1682  .db 0h7A ; 0h06BD: normal track data
   2E4E 40                 1683  .db 0h40 ; 0h06BE: vol off, no pitch, note, no instrument
   2E4F 92                 1684  .db 0h92 ; 0h06BF: normal track data
   2E50 40                 1685  .db 0h40 ; 0h06C0: vol off, no pitch, note, no instrument
   2E51 AA                 1686  .db 0hAA ; 0h06C1: normal track data
   2E52 40                 1687  .db 0h40 ; 0h06C2: vol off, no pitch, note, no instrument
   2E53 C2                 1688  .db 0hC2 ; 0h06C3: normal track data
   2E54 40                 1689  .db 0h40 ; 0h06C4: vol off, no pitch, note, no instrument
   2E55 DA                 1690  .db 0hDA ; 0h06C5: normal track data
   2E56 40                 1691  .db 0h40 ; 0h06C6: vol off, no pitch, note, no instrument
   2E57 C2                 1692  .db 0hC2 ; 0h06C7: normal track data
   2E58 40                 1693  .db 0h40 ; 0h06C8: vol off, no pitch, note, no instrument
   2E59 AA                 1694  .db 0hAA ; 0h06C9: normal track data
   2E5A 40                 1695  .db 0h40 ; 0h06CA: vol off, no pitch, note, no instrument
   2E5B 92                 1696  .db 0h92 ; 0h06CB: normal track data
   2E5C 40                 1697  .db 0h40 ; 0h06CC: vol off, no pitch, note, no instrument
   2E5D 7A                 1698  .db 0h7A ; 0h06CD: normal track data
   2E5E 40                 1699  .db 0h40 ; 0h06CE: vol off, no pitch, note, no instrument
   2E5F 92                 1700  .db 0h92 ; 0h06CF: normal track data
   2E60 40                 1701  .db 0h40 ; 0h06D0: vol off, no pitch, note, no instrument
   2E61 AA                 1702  .db 0hAA ; 0h06D1: normal track data
   2E62 40                 1703  .db 0h40 ; 0h06D2: vol off, no pitch, note, no instrument
   2E63 C2                 1704  .db 0hC2 ; 0h06D3: normal track data
   2E64 40                 1705  .db 0h40 ; 0h06D4: vol off, no pitch, note, no instrument
   2E65 DA                 1706  .db 0hDA ; 0h06D5: normal track data
   2E66 40                 1707  .db 0h40 ; 0h06D6: vol off, no pitch, note, no instrument
   2E67 C2                 1708  .db 0hC2 ; 0h06D7: normal track data
   2E68 40                 1709  .db 0h40 ; 0h06D8: vol off, no pitch, note, no instrument
   2E69 AA                 1710  .db 0hAA ; 0h06D9: normal track data
   2E6A 40                 1711  .db 0h40 ; 0h06DA: vol off, no pitch, note, no instrument
   2E6B 92                 1712  .db 0h92 ; 0h06DB: normal track data
   2E6C 40                 1713  .db 0h40 ; 0h06DC: vol off, no pitch, note, no instrument
   2E6D 7A                 1714  .db 0h7A ; 0h06DD: normal track data
   2E6E 40                 1715  .db 0h40 ; 0h06DE: vol off, no pitch, note, no instrument
   2E6F 92                 1716  .db 0h92 ; 0h06DF: normal track data
   2E70 40                 1717  .db 0h40 ; 0h06E0: vol off, no pitch, note, no instrument
   2E71 AA                 1718  .db 0hAA ; 0h06E1: normal track data
   2E72 40                 1719  .db 0h40 ; 0h06E2: vol off, no pitch, note, no instrument
   2E73 7A                 1720  .db 0h7A ; 0h06E3: normal track data
   2E74 40                 1721  .db 0h40 ; 0h06E4: vol off, no pitch, note, no instrument
   2E75 92                 1722  .db 0h92 ; 0h06E5: normal track data
   2E76 40                 1723  .db 0h40 ; 0h06E6: vol off, no pitch, note, no instrument
   2E77 7A                 1724  .db 0h7A ; 0h06E7: normal track data
   2E78 40                 1725  .db 0h40 ; 0h06E8: vol off, no pitch, note, no instrument
   2E79 92                 1726  .db 0h92 ; 0h06E9: normal track data
   2E7A 40                 1727  .db 0h40 ; 0h06EA: vol off, no pitch, note, no instrument
   2E7B 7C                 1728  .db 0h7C ; 0h06EB: normal track data
   2E7C 40                 1729  .db 0h40 ; 0h06EC: vol off, no pitch, note, no instrument
   2E7D 94                 1730  .db 0h94 ; 0h06ED: normal track data
   2E7E 40                 1731  .db 0h40 ; 0h06EE: vol off, no pitch, note, no instrument
   2E7F 7C                 1732  .db 0h7C ; 0h06EF: normal track data
   2E80 40                 1733  .db 0h40 ; 0h06F0: vol off, no pitch, note, no instrument
   2E81 94                 1734  .db 0h94 ; 0h06F1: normal track data
   2E82 40                 1735  .db 0h40 ; 0h06F2: vol off, no pitch, note, no instrument
   2E83 7A                 1736  .db 0h7A ; 0h06F3: normal track data
   2E84 40                 1737  .db 0h40 ; 0h06F4: vol off, no pitch, note, no instrument
   2E85 92                 1738  .db 0h92 ; 0h06F5: normal track data
   2E86 40                 1739  .db 0h40 ; 0h06F6: vol off, no pitch, note, no instrument
   2E87 7A                 1740  .db 0h7A ; 0h06F7: normal track data
   2E88 40                 1741  .db 0h40 ; 0h06F8: vol off, no pitch, note, no instrument
   2E89 84                 1742  .db 0h84 ; 0h06F9: normal track data
   2E8A 40                 1743  .db 0h40 ; 0h06FA: vol off, no pitch, note, no instrument
   2E8B 88                 1744  .db 0h88 ; 0h06FB: normal track data
   2E8C 40                 1745  .db 0h40 ; 0h06FC: vol off, no pitch, note, no instrument
   2E8D 84                 1746  .db 0h84 ; 0h06FD: normal track data
   2E8E 40                 1747  .db 0h40 ; 0h06FE: vol off, no pitch, note, no instrument
   2E8F 80                 1748  .db 0h80 ; 0h06FF: normal track data
   2E90 40                 1749  .db 0h40 ; 0h0700: vol off, no pitch, note, no instrument
   2E91 7C                 1750  .db 0h7C ; 0h0701: normal track data
   2E92 40                 1751  .db 0h40 ; 0h0702: vol off, no pitch, note, no instrument
   2E93                    1752 trackDef18Test:
   2E93 72                 1753  .db 0h72 ; 0h0703: normal track data
   2E94 E1                 1754  .db 0hE1 ; 0h0704: vol = 0hF (inverted), no pitch, no note, no instrument
   2E95 00 00              1755  .dw 0h0000 ; 0h0705: pitch
   2E97 03                 1756  .db 0h03 ; 0h0707: instrument
   2E98 5A                 1757  .db 0h5A ; 0h0708: normal track data
   2E99 60                 1758  .db 0h60 ; 0h0709: vol off, no pitch, note, instrument
   2E9A 01                 1759  .db 0h01 ; 0h070A: instrument
   2E9B B2                 1760  .db 0hB2 ; 0h070B: normal track data,  note: G#4
   2E9C 7F                 1761  .db 0h7F ; 0h070C: vol = 0h0 (inverted), no pitch, no note, no instrument
   2E9D 06                 1762  .db 0h06 ; 0h070D: instrument
   2E9E 5A                 1763  .db 0h5A ; 0h070E: normal track data
   2E9F 61                 1764  .db 0h61 ; 0h070F: vol = 0hF (inverted), no pitch, no note, no instrument
   2EA0 01                 1765  .db 0h01 ; 0h0710: instrument
   2EA1 72                 1766  .db 0h72 ; 0h0711: normal track data
   2EA2 60                 1767  .db 0h60 ; 0h0712: vol off, no pitch, note, instrument
   2EA3 04                 1768  .db 0h04 ; 0h0713: instrument
   2EA4 B2                 1769  .db 0hB2 ; 0h0714: normal track data,  note: G#4
   2EA5 7F                 1770  .db 0h7F ; 0h0715: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EA6 06                 1771  .db 0h06 ; 0h0716: instrument
   2EA7 5A                 1772  .db 0h5A ; 0h0717: normal track data
   2EA8 61                 1773  .db 0h61 ; 0h0718: vol = 0hF (inverted), no pitch, no note, no instrument
   2EA9 01                 1774  .db 0h01 ; 0h0719: instrument
   2EAA 72                 1775  .db 0h72 ; 0h071A: normal track data
   2EAB 60                 1776  .db 0h60 ; 0h071B: vol off, no pitch, note, instrument
   2EAC 03                 1777  .db 0h03 ; 0h071C: instrument
   2EAD B2                 1778  .db 0hB2 ; 0h071D: normal track data,  note: G#4
   2EAE 7F                 1779  .db 0h7F ; 0h071E: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EAF 06                 1780  .db 0h06 ; 0h071F: instrument
   2EB0 5A                 1781  .db 0h5A ; 0h0720: normal track data
   2EB1 61                 1782  .db 0h61 ; 0h0721: vol = 0hF (inverted), no pitch, no note, no instrument
   2EB2 01                 1783  .db 0h01 ; 0h0722: instrument
   2EB3 72                 1784  .db 0h72 ; 0h0723: normal track data
   2EB4 60                 1785  .db 0h60 ; 0h0724: vol off, no pitch, note, instrument
   2EB5 03                 1786  .db 0h03 ; 0h0725: instrument
   2EB6 AE                 1787  .db 0hAE ; 0h0726: normal track data,  note: F#4
   2EB7 7F                 1788  .db 0h7F ; 0h0727: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EB8 07                 1789  .db 0h07 ; 0h0728: instrument
   2EB9 72                 1790  .db 0h72 ; 0h0729: normal track data
   2EBA 61                 1791  .db 0h61 ; 0h072A: vol = 0hF (inverted), no pitch, no note, no instrument
   2EBB 04                 1792  .db 0h04 ; 0h072B: instrument
   2EBC 5A                 1793  .db 0h5A ; 0h072C: normal track data
   2EBD 60                 1794  .db 0h60 ; 0h072D: vol off, no pitch, note, instrument
   2EBE 01                 1795  .db 0h01 ; 0h072E: instrument
   2EBF AE                 1796  .db 0hAE ; 0h072F: normal track data,  note: F#4
   2EC0 7F                 1797  .db 0h7F ; 0h0730: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EC1 07                 1798  .db 0h07 ; 0h0731: instrument
   2EC2 5A                 1799  .db 0h5A ; 0h0732: normal track data
   2EC3 61                 1800  .db 0h61 ; 0h0733: vol = 0hF (inverted), no pitch, no note, no instrument
   2EC4 01                 1801  .db 0h01 ; 0h0734: instrument
   2EC5 72                 1802  .db 0h72 ; 0h0735: normal track data
   2EC6 60                 1803  .db 0h60 ; 0h0736: vol off, no pitch, note, instrument
   2EC7 03                 1804  .db 0h03 ; 0h0737: instrument
   2EC8 5A                 1805  .db 0h5A ; 0h0738: normal track data
   2EC9 60                 1806  .db 0h60 ; 0h0739: vol off, no pitch, note, instrument
   2ECA 01                 1807  .db 0h01 ; 0h073A: instrument
   2ECB B2                 1808  .db 0hB2 ; 0h073B: normal track data,  note: G#4
   2ECC 7F                 1809  .db 0h7F ; 0h073C: vol = 0h0 (inverted), no pitch, no note, no instrument
   2ECD 08                 1810  .db 0h08 ; 0h073D: instrument
   2ECE 5A                 1811  .db 0h5A ; 0h073E: normal track data
   2ECF 61                 1812  .db 0h61 ; 0h073F: vol = 0hF (inverted), no pitch, no note, no instrument
   2ED0 01                 1813  .db 0h01 ; 0h0740: instrument
   2ED1 72                 1814  .db 0h72 ; 0h0741: normal track data
   2ED2 60                 1815  .db 0h60 ; 0h0742: vol off, no pitch, note, instrument
   2ED3 04                 1816  .db 0h04 ; 0h0743: instrument
   2ED4 B2                 1817  .db 0hB2 ; 0h0744: normal track data,  note: G#4
   2ED5 7F                 1818  .db 0h7F ; 0h0745: vol = 0h0 (inverted), no pitch, no note, no instrument
   2ED6 08                 1819  .db 0h08 ; 0h0746: instrument
   2ED7 5A                 1820  .db 0h5A ; 0h0747: normal track data
   2ED8 61                 1821  .db 0h61 ; 0h0748: vol = 0hF (inverted), no pitch, no note, no instrument
   2ED9 01                 1822  .db 0h01 ; 0h0749: instrument
   2EDA 72                 1823  .db 0h72 ; 0h074A: normal track data
   2EDB 60                 1824  .db 0h60 ; 0h074B: vol off, no pitch, note, instrument
   2EDC 03                 1825  .db 0h03 ; 0h074C: instrument
   2EDD B8                 1826  .db 0hB8 ; 0h074D: normal track data,  note: B4
   2EDE 7F                 1827  .db 0h7F ; 0h074E: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EDF 07                 1828  .db 0h07 ; 0h074F: instrument
   2EE0 5A                 1829  .db 0h5A ; 0h0750: normal track data
   2EE1 61                 1830  .db 0h61 ; 0h0751: vol = 0hF (inverted), no pitch, no note, no instrument
   2EE2 01                 1831  .db 0h01 ; 0h0752: instrument
   2EE3 72                 1832  .db 0h72 ; 0h0753: normal track data
   2EE4 60                 1833  .db 0h60 ; 0h0754: vol off, no pitch, note, instrument
   2EE5 03                 1834  .db 0h03 ; 0h0755: instrument
   2EE6 B8                 1835  .db 0hB8 ; 0h0756: normal track data,  note: B4
   2EE7 7F                 1836  .db 0h7F ; 0h0757: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EE8 07                 1837  .db 0h07 ; 0h0758: instrument
   2EE9 72                 1838  .db 0h72 ; 0h0759: normal track data
   2EEA 61                 1839  .db 0h61 ; 0h075A: vol = 0hF (inverted), no pitch, no note, no instrument
   2EEB 04                 1840  .db 0h04 ; 0h075B: instrument
   2EEC 5A                 1841  .db 0h5A ; 0h075C: normal track data
   2EED 60                 1842  .db 0h60 ; 0h075D: vol off, no pitch, note, instrument
   2EEE 01                 1843  .db 0h01 ; 0h075E: instrument
   2EEF B2                 1844  .db 0hB2 ; 0h075F: normal track data,  note: G#4
   2EF0 7F                 1845  .db 0h7F ; 0h0760: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EF1 08                 1846  .db 0h08 ; 0h0761: instrument
   2EF2 5A                 1847  .db 0h5A ; 0h0762: normal track data
   2EF3 61                 1848  .db 0h61 ; 0h0763: vol = 0hF (inverted), no pitch, no note, no instrument
   2EF4 01                 1849  .db 0h01 ; 0h0764: instrument
   2EF5 72                 1850  .db 0h72 ; 0h0765: normal track data
   2EF6 60                 1851  .db 0h60 ; 0h0766: vol off, no pitch, note, instrument
   2EF7 03                 1852  .db 0h03 ; 0h0767: instrument
   2EF8 5A                 1853  .db 0h5A ; 0h0768: normal track data
   2EF9 60                 1854  .db 0h60 ; 0h0769: vol off, no pitch, note, instrument
   2EFA 01                 1855  .db 0h01 ; 0h076A: instrument
   2EFB B8                 1856  .db 0hB8 ; 0h076B: normal track data,  note: B4
   2EFC 7F                 1857  .db 0h7F ; 0h076C: vol = 0h0 (inverted), no pitch, no note, no instrument
   2EFD 08                 1858  .db 0h08 ; 0h076D: instrument
   2EFE 5A                 1859  .db 0h5A ; 0h076E: normal track data
   2EFF 61                 1860  .db 0h61 ; 0h076F: vol = 0hF (inverted), no pitch, no note, no instrument
   2F00 01                 1861  .db 0h01 ; 0h0770: instrument
   2F01 72                 1862  .db 0h72 ; 0h0771: normal track data
   2F02 60                 1863  .db 0h60 ; 0h0772: vol off, no pitch, note, instrument
   2F03 04                 1864  .db 0h04 ; 0h0773: instrument
   2F04 B8                 1865  .db 0hB8 ; 0h0774: normal track data,  note: B4
   2F05 7F                 1866  .db 0h7F ; 0h0775: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F06 08                 1867  .db 0h08 ; 0h0776: instrument
   2F07 5A                 1868  .db 0h5A ; 0h0777: normal track data
   2F08 61                 1869  .db 0h61 ; 0h0778: vol = 0hF (inverted), no pitch, no note, no instrument
   2F09 01                 1870  .db 0h01 ; 0h0779: instrument
   2F0A 72                 1871  .db 0h72 ; 0h077A: normal track data
   2F0B 60                 1872  .db 0h60 ; 0h077B: vol off, no pitch, note, instrument
   2F0C 03                 1873  .db 0h03 ; 0h077C: instrument
   2F0D B8                 1874  .db 0hB8 ; 0h077D: normal track data,  note: B4
   2F0E 7F                 1875  .db 0h7F ; 0h077E: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F0F 08                 1876  .db 0h08 ; 0h077F: instrument
   2F10 5A                 1877  .db 0h5A ; 0h0780: normal track data
   2F11 61                 1878  .db 0h61 ; 0h0781: vol = 0hF (inverted), no pitch, no note, no instrument
   2F12 01                 1879  .db 0h01 ; 0h0782: instrument
   2F13 72                 1880  .db 0h72 ; 0h0783: normal track data
   2F14 60                 1881  .db 0h60 ; 0h0784: vol off, no pitch, note, instrument
   2F15 03                 1882  .db 0h03 ; 0h0785: instrument
   2F16 B8                 1883  .db 0hB8 ; 0h0786: normal track data,  note: B4
   2F17 7F                 1884  .db 0h7F ; 0h0787: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F18 09                 1885  .db 0h09 ; 0h0788: instrument
   2F19 72                 1886  .db 0h72 ; 0h0789: normal track data
   2F1A 61                 1887  .db 0h61 ; 0h078A: vol = 0hF (inverted), no pitch, no note, no instrument
   2F1B 04                 1888  .db 0h04 ; 0h078B: instrument
   2F1C 5A                 1889  .db 0h5A ; 0h078C: normal track data
   2F1D 60                 1890  .db 0h60 ; 0h078D: vol off, no pitch, note, instrument
   2F1E 01                 1891  .db 0h01 ; 0h078E: instrument
   2F1F B8                 1892  .db 0hB8 ; 0h078F: normal track data,  note: B4
   2F20 7F                 1893  .db 0h7F ; 0h0790: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F21 09                 1894  .db 0h09 ; 0h0791: instrument
   2F22 5A                 1895  .db 0h5A ; 0h0792: normal track data
   2F23 61                 1896  .db 0h61 ; 0h0793: vol = 0hF (inverted), no pitch, no note, no instrument
   2F24 01                 1897  .db 0h01 ; 0h0794: instrument
   2F25 72                 1898  .db 0h72 ; 0h0795: normal track data
   2F26 60                 1899  .db 0h60 ; 0h0796: vol off, no pitch, note, instrument
   2F27 03                 1900  .db 0h03 ; 0h0797: instrument
   2F28 5A                 1901  .db 0h5A ; 0h0798: normal track data
   2F29 60                 1902  .db 0h60 ; 0h0799: vol off, no pitch, note, instrument
   2F2A 01                 1903  .db 0h01 ; 0h079A: instrument
   2F2B B8                 1904  .db 0hB8 ; 0h079B: normal track data,  note: B4
   2F2C 7F                 1905  .db 0h7F ; 0h079C: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F2D 07                 1906  .db 0h07 ; 0h079D: instrument
   2F2E 5A                 1907  .db 0h5A ; 0h079E: normal track data
   2F2F 61                 1908  .db 0h61 ; 0h079F: vol = 0hF (inverted), no pitch, no note, no instrument
   2F30 01                 1909  .db 0h01 ; 0h07A0: instrument
   2F31 72                 1910  .db 0h72 ; 0h07A1: normal track data
   2F32 60                 1911  .db 0h60 ; 0h07A2: vol off, no pitch, note, instrument
   2F33 04                 1912  .db 0h04 ; 0h07A3: instrument
   2F34 B8                 1913  .db 0hB8 ; 0h07A4: normal track data,  note: B4
   2F35 7F                 1914  .db 0h7F ; 0h07A5: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F36 07                 1915  .db 0h07 ; 0h07A6: instrument
   2F37 5A                 1916  .db 0h5A ; 0h07A7: normal track data
   2F38 61                 1917  .db 0h61 ; 0h07A8: vol = 0hF (inverted), no pitch, no note, no instrument
   2F39 01                 1918  .db 0h01 ; 0h07A9: instrument
   2F3A 72                 1919  .db 0h72 ; 0h07AA: normal track data
   2F3B 60                 1920  .db 0h60 ; 0h07AB: vol off, no pitch, note, instrument
   2F3C 03                 1921  .db 0h03 ; 0h07AC: instrument
   2F3D B8                 1922  .db 0hB8 ; 0h07AD: normal track data,  note: B4
   2F3E 7F                 1923  .db 0h7F ; 0h07AE: vol = 0h0 (inverted), no pitch, no note, no instrument
   2F3F 07                 1924  .db 0h07 ; 0h07AF: instrument
   2F40 5A                 1925  .db 0h5A ; 0h07B0: normal track data
   2F41 61                 1926  .db 0h61 ; 0h07B1: vol = 0hF (inverted), no pitch, no note, no instrument
   2F42 01                 1927  .db 0h01 ; 0h07B2: instrument
   2F43 00                 1928  .db 0h00 ; 0h07B3: track end signature found
   2F44                    1929 trackDef17Test:
   2F44 92                 1930  .db 0h92 ; 0h07B4: normal track data
   2F45 E1                 1931  .db 0hE1 ; 0h07B5: vol = 0hF (inverted), no pitch, no note, no instrument
   2F46 00 00              1932  .dw 0h0000 ; 0h07B6: pitch
   2F48 02                 1933  .db 0h02 ; 0h07B8: instrument
   2F49 C2                 1934  .db 0hC2 ; 0h07B9: normal track data
   2F4A 49                 1935  .db 0h49 ; 0h07BA: vol = 0hB (inverted), no pitch, no note, no instrument
   2F4B 92                 1936  .db 0h92 ; 0h07BB: normal track data
   2F4C 41                 1937  .db 0h41 ; 0h07BC: vol = 0hF (inverted), no pitch, no note, no instrument
   2F4D C2                 1938  .db 0hC2 ; 0h07BD: normal track data
   2F4E 49                 1939  .db 0h49 ; 0h07BE: vol = 0hB (inverted), no pitch, no note, no instrument
   2F4F AA                 1940  .db 0hAA ; 0h07BF: normal track data
   2F50 41                 1941  .db 0h41 ; 0h07C0: vol = 0hF (inverted), no pitch, no note, no instrument
   2F51 AC                 1942  .db 0hAC ; 0h07C1: normal track data
   2F52 40                 1943  .db 0h40 ; 0h07C2: vol off, no pitch, note, no instrument
   2F53 B0                 1944  .db 0hB0 ; 0h07C3: normal track data
   2F54 40                 1945  .db 0h40 ; 0h07C4: vol off, no pitch, note, no instrument
   2F55 B4                 1946  .db 0hB4 ; 0h07C5: normal track data
   2F56 40                 1947  .db 0h40 ; 0h07C6: vol off, no pitch, note, no instrument
   2F57 92                 1948  .db 0h92 ; 0h07C7: normal track data
   2F58 40                 1949  .db 0h40 ; 0h07C8: vol off, no pitch, note, no instrument
   2F59 C2                 1950  .db 0hC2 ; 0h07C9: normal track data
   2F5A 49                 1951  .db 0h49 ; 0h07CA: vol = 0hB (inverted), no pitch, no note, no instrument
   2F5B 92                 1952  .db 0h92 ; 0h07CB: normal track data
   2F5C 41                 1953  .db 0h41 ; 0h07CC: vol = 0hF (inverted), no pitch, no note, no instrument
   2F5D C2                 1954  .db 0hC2 ; 0h07CD: normal track data
   2F5E 49                 1955  .db 0h49 ; 0h07CE: vol = 0hB (inverted), no pitch, no note, no instrument
   2F5F AA                 1956  .db 0hAA ; 0h07CF: normal track data
   2F60 41                 1957  .db 0h41 ; 0h07D0: vol = 0hF (inverted), no pitch, no note, no instrument
   2F61 C2                 1958  .db 0hC2 ; 0h07D1: normal track data
   2F62 49                 1959  .db 0h49 ; 0h07D2: vol = 0hB (inverted), no pitch, no note, no instrument
   2F63 AA                 1960  .db 0hAA ; 0h07D3: normal track data
   2F64 41                 1961  .db 0h41 ; 0h07D4: vol = 0hF (inverted), no pitch, no note, no instrument
   2F65 C2                 1962  .db 0hC2 ; 0h07D5: normal track data
   2F66 49                 1963  .db 0h49 ; 0h07D6: vol = 0hB (inverted), no pitch, no note, no instrument
   2F67 92                 1964  .db 0h92 ; 0h07D7: normal track data
   2F68 41                 1965  .db 0h41 ; 0h07D8: vol = 0hF (inverted), no pitch, no note, no instrument
   2F69 C2                 1966  .db 0hC2 ; 0h07D9: normal track data
   2F6A 49                 1967  .db 0h49 ; 0h07DA: vol = 0hB (inverted), no pitch, no note, no instrument
   2F6B 92                 1968  .db 0h92 ; 0h07DB: normal track data
   2F6C 41                 1969  .db 0h41 ; 0h07DC: vol = 0hF (inverted), no pitch, no note, no instrument
   2F6D C2                 1970  .db 0hC2 ; 0h07DD: normal track data
   2F6E 49                 1971  .db 0h49 ; 0h07DE: vol = 0hB (inverted), no pitch, no note, no instrument
   2F6F 94                 1972  .db 0h94 ; 0h07DF: normal track data
   2F70 41                 1973  .db 0h41 ; 0h07E0: vol = 0hF (inverted), no pitch, no note, no instrument
   2F71 C4                 1974  .db 0hC4 ; 0h07E1: normal track data
   2F72 49                 1975  .db 0h49 ; 0h07E2: vol = 0hB (inverted), no pitch, no note, no instrument
   2F73 94                 1976  .db 0h94 ; 0h07E3: normal track data
   2F74 41                 1977  .db 0h41 ; 0h07E4: vol = 0hF (inverted), no pitch, no note, no instrument
   2F75 C4                 1978  .db 0hC4 ; 0h07E5: normal track data
   2F76 49                 1979  .db 0h49 ; 0h07E6: vol = 0hB (inverted), no pitch, no note, no instrument
   2F77 92                 1980  .db 0h92 ; 0h07E7: normal track data
   2F78 41                 1981  .db 0h41 ; 0h07E8: vol = 0hF (inverted), no pitch, no note, no instrument
   2F79 C2                 1982  .db 0hC2 ; 0h07E9: normal track data
   2F7A 49                 1983  .db 0h49 ; 0h07EA: vol = 0hB (inverted), no pitch, no note, no instrument
   2F7B 92                 1984  .db 0h92 ; 0h07EB: normal track data
   2F7C 41                 1985  .db 0h41 ; 0h07EC: vol = 0hF (inverted), no pitch, no note, no instrument
   2F7D C2                 1986  .db 0hC2 ; 0h07ED: normal track data
   2F7E 49                 1987  .db 0h49 ; 0h07EE: vol = 0hB (inverted), no pitch, no note, no instrument
   2F7F AA                 1988  .db 0hAA ; 0h07EF: normal track data
   2F80 41                 1989  .db 0h41 ; 0h07F0: vol = 0hF (inverted), no pitch, no note, no instrument
   2F81 C2                 1990  .db 0hC2 ; 0h07F1: normal track data
   2F82 49                 1991  .db 0h49 ; 0h07F2: vol = 0hB (inverted), no pitch, no note, no instrument
   2F83 AA                 1992  .db 0hAA ; 0h07F3: normal track data
   2F84 41                 1993  .db 0h41 ; 0h07F4: vol = 0hF (inverted), no pitch, no note, no instrument
   2F85 C2                 1994  .db 0hC2 ; 0h07F5: normal track data
   2F86 49                 1995  .db 0h49 ; 0h07F6: vol = 0hB (inverted), no pitch, no note, no instrument
   2F87 92                 1996  .db 0h92 ; 0h07F7: normal track data
   2F88 41                 1997  .db 0h41 ; 0h07F8: vol = 0hF (inverted), no pitch, no note, no instrument
   2F89 C2                 1998  .db 0hC2 ; 0h07F9: normal track data
   2F8A 49                 1999  .db 0h49 ; 0h07FA: vol = 0hB (inverted), no pitch, no note, no instrument
   2F8B 92                 2000  .db 0h92 ; 0h07FB: normal track data
   2F8C 41                 2001  .db 0h41 ; 0h07FC: vol = 0hF (inverted), no pitch, no note, no instrument
   2F8D C2                 2002  .db 0hC2 ; 0h07FD: normal track data
   2F8E 49                 2003  .db 0h49 ; 0h07FE: vol = 0hB (inverted), no pitch, no note, no instrument
   2F8F AA                 2004  .db 0hAA ; 0h07FF: normal track data
   2F90 41                 2005  .db 0h41 ; 0h0800: vol = 0hF (inverted), no pitch, no note, no instrument
   2F91 AC                 2006  .db 0hAC ; 0h0801: normal track data
   2F92 40                 2007  .db 0h40 ; 0h0802: vol off, no pitch, note, no instrument
   2F93 B0                 2008  .db 0hB0 ; 0h0803: normal track data
   2F94 40                 2009  .db 0h40 ; 0h0804: vol off, no pitch, note, no instrument
   2F95 B4                 2010  .db 0hB4 ; 0h0805: normal track data
   2F96 40                 2011  .db 0h40 ; 0h0806: vol off, no pitch, note, no instrument
   2F97 92                 2012  .db 0h92 ; 0h0807: normal track data
   2F98 40                 2013  .db 0h40 ; 0h0808: vol off, no pitch, note, no instrument
   2F99 C2                 2014  .db 0hC2 ; 0h0809: normal track data
   2F9A 49                 2015  .db 0h49 ; 0h080A: vol = 0hB (inverted), no pitch, no note, no instrument
   2F9B 92                 2016  .db 0h92 ; 0h080B: normal track data
   2F9C 41                 2017  .db 0h41 ; 0h080C: vol = 0hF (inverted), no pitch, no note, no instrument
   2F9D C2                 2018  .db 0hC2 ; 0h080D: normal track data
   2F9E 49                 2019  .db 0h49 ; 0h080E: vol = 0hB (inverted), no pitch, no note, no instrument
   2F9F AA                 2020  .db 0hAA ; 0h080F: normal track data
   2FA0 41                 2021  .db 0h41 ; 0h0810: vol = 0hF (inverted), no pitch, no note, no instrument
   2FA1 C2                 2022  .db 0hC2 ; 0h0811: normal track data
   2FA2 49                 2023  .db 0h49 ; 0h0812: vol = 0hB (inverted), no pitch, no note, no instrument
   2FA3 AA                 2024  .db 0hAA ; 0h0813: normal track data
   2FA4 41                 2025  .db 0h41 ; 0h0814: vol = 0hF (inverted), no pitch, no note, no instrument
   2FA5 C2                 2026  .db 0hC2 ; 0h0815: normal track data
   2FA6 49                 2027  .db 0h49 ; 0h0816: vol = 0hB (inverted), no pitch, no note, no instrument
   2FA7 92                 2028  .db 0h92 ; 0h0817: normal track data
   2FA8 41                 2029  .db 0h41 ; 0h0818: vol = 0hF (inverted), no pitch, no note, no instrument
   2FA9 C2                 2030  .db 0hC2 ; 0h0819: normal track data
   2FAA 49                 2031  .db 0h49 ; 0h081A: vol = 0hB (inverted), no pitch, no note, no instrument
   2FAB 92                 2032  .db 0h92 ; 0h081B: normal track data
   2FAC 41                 2033  .db 0h41 ; 0h081C: vol = 0hF (inverted), no pitch, no note, no instrument
   2FAD C2                 2034  .db 0hC2 ; 0h081D: normal track data
   2FAE 49                 2035  .db 0h49 ; 0h081E: vol = 0hB (inverted), no pitch, no note, no instrument
   2FAF 94                 2036  .db 0h94 ; 0h081F: normal track data
   2FB0 41                 2037  .db 0h41 ; 0h0820: vol = 0hF (inverted), no pitch, no note, no instrument
   2FB1 C4                 2038  .db 0hC4 ; 0h0821: normal track data
   2FB2 49                 2039  .db 0h49 ; 0h0822: vol = 0hB (inverted), no pitch, no note, no instrument
   2FB3 94                 2040  .db 0h94 ; 0h0823: normal track data
   2FB4 41                 2041  .db 0h41 ; 0h0824: vol = 0hF (inverted), no pitch, no note, no instrument
   2FB5 C4                 2042  .db 0hC4 ; 0h0825: normal track data
   2FB6 49                 2043  .db 0h49 ; 0h0826: vol = 0hB (inverted), no pitch, no note, no instrument
   2FB7 92                 2044  .db 0h92 ; 0h0827: normal track data
   2FB8 41                 2045  .db 0h41 ; 0h0828: vol = 0hF (inverted), no pitch, no note, no instrument
   2FB9 5A                 2046  .db 0h5A ; 0h0829: normal track data
   2FBA 60                 2047  .db 0h60 ; 0h082A: vol off, no pitch, note, instrument
   2FBB 01                 2048  .db 0h01 ; 0h082B: instrument
   2FBC 00                 2049  .db 0h00 ; 0h082C: track end signature found
   2FBD                    2050 trackDef19Test:
   2FBD 92                 2051  .db 0h92 ; 0h082D: normal track data
   2FBE F3                 2052  .db 0hF3 ; 0h082E: vol = 0h6 (inverted), no pitch, no note, no instrument
   2FBF 00 00              2053  .dw 0h0000 ; 0h082F: pitch
   2FC1 05                 2054  .db 0h05 ; 0h0831: instrument
   2FC2 AA                 2055  .db 0hAA ; 0h0832: normal track data
   2FC3 40                 2056  .db 0h40 ; 0h0833: vol off, no pitch, note, no instrument
   2FC4 AA                 2057  .db 0hAA ; 0h0834: normal track data
   2FC5 40                 2058  .db 0h40 ; 0h0835: vol off, no pitch, note, no instrument
   2FC6 92                 2059  .db 0h92 ; 0h0836: normal track data
   2FC7 40                 2060  .db 0h40 ; 0h0837: vol off, no pitch, note, no instrument
   2FC8 92                 2061  .db 0h92 ; 0h0838: normal track data
   2FC9 40                 2062  .db 0h40 ; 0h0839: vol off, no pitch, note, no instrument
   2FCA 94                 2063  .db 0h94 ; 0h083A: normal track data
   2FCB 40                 2064  .db 0h40 ; 0h083B: vol off, no pitch, note, no instrument
   2FCC 98                 2065  .db 0h98 ; 0h083C: normal track data
   2FCD 40                 2066  .db 0h40 ; 0h083D: vol off, no pitch, note, no instrument
   2FCE 9C                 2067  .db 0h9C ; 0h083E: normal track data
   2FCF 40                 2068  .db 0h40 ; 0h083F: vol off, no pitch, note, no instrument
   2FD0 92                 2069  .db 0h92 ; 0h0840: normal track data
   2FD1 40                 2070  .db 0h40 ; 0h0841: vol off, no pitch, note, no instrument
   2FD2 AA                 2071  .db 0hAA ; 0h0842: normal track data
   2FD3 40                 2072  .db 0h40 ; 0h0843: vol off, no pitch, note, no instrument
   2FD4 08                 2073  .db 0h08 ; 0h0844: normal track data,  wait 3
   2FD5 AA                 2074  .db 0hAA ; 0h0845: normal track data
   2FD6 40                 2075  .db 0h40 ; 0h0846: vol off, no pitch, note, no instrument
   2FD7 92                 2076  .db 0h92 ; 0h0847: normal track data
   2FD8 40                 2077  .db 0h40 ; 0h0848: vol off, no pitch, note, no instrument
   2FD9 92                 2078  .db 0h92 ; 0h0849: normal track data
   2FDA 40                 2079  .db 0h40 ; 0h084A: vol off, no pitch, note, no instrument
   2FDB AA                 2080  .db 0hAA ; 0h084B: normal track data
   2FDC 40                 2081  .db 0h40 ; 0h084C: vol off, no pitch, note, no instrument
   2FDD AA                 2082  .db 0hAA ; 0h084D: normal track data
   2FDE 40                 2083  .db 0h40 ; 0h084E: vol off, no pitch, note, no instrument
   2FDF 92                 2084  .db 0h92 ; 0h084F: normal track data
   2FE0 40                 2085  .db 0h40 ; 0h0850: vol off, no pitch, note, no instrument
   2FE1 94                 2086  .db 0h94 ; 0h0851: normal track data
   2FE2 40                 2087  .db 0h40 ; 0h0852: vol off, no pitch, note, no instrument
   2FE3 AC                 2088  .db 0hAC ; 0h0853: normal track data
   2FE4 40                 2089  .db 0h40 ; 0h0854: vol off, no pitch, note, no instrument
   2FE5 AC                 2090  .db 0hAC ; 0h0855: normal track data
   2FE6 40                 2091  .db 0h40 ; 0h0856: vol off, no pitch, note, no instrument
   2FE7 94                 2092  .db 0h94 ; 0h0857: normal track data
   2FE8 40                 2093  .db 0h40 ; 0h0858: vol off, no pitch, note, no instrument
   2FE9 92                 2094  .db 0h92 ; 0h0859: normal track data
   2FEA 40                 2095  .db 0h40 ; 0h085A: vol off, no pitch, note, no instrument
   2FEB AA                 2096  .db 0hAA ; 0h085B: normal track data
   2FEC 40                 2097  .db 0h40 ; 0h085C: vol off, no pitch, note, no instrument
   2FED 08                 2098  .db 0h08 ; 0h085D: normal track data,  wait 3
   2FEE AA                 2099  .db 0hAA ; 0h085E: normal track data
   2FEF 40                 2100  .db 0h40 ; 0h085F: vol off, no pitch, note, no instrument
   2FF0 92                 2101  .db 0h92 ; 0h0860: normal track data
   2FF1 40                 2102  .db 0h40 ; 0h0861: vol off, no pitch, note, no instrument
   2FF2 92                 2103  .db 0h92 ; 0h0862: normal track data
   2FF3 40                 2104  .db 0h40 ; 0h0863: vol off, no pitch, note, no instrument
   2FF4 AA                 2105  .db 0hAA ; 0h0864: normal track data
   2FF5 40                 2106  .db 0h40 ; 0h0865: vol off, no pitch, note, no instrument
   2FF6 AA                 2107  .db 0hAA ; 0h0866: normal track data
   2FF7 40                 2108  .db 0h40 ; 0h0867: vol off, no pitch, note, no instrument
   2FF8 92                 2109  .db 0h92 ; 0h0868: normal track data
   2FF9 40                 2110  .db 0h40 ; 0h0869: vol off, no pitch, note, no instrument
   2FFA 92                 2111  .db 0h92 ; 0h086A: normal track data
   2FFB 40                 2112  .db 0h40 ; 0h086B: vol off, no pitch, note, no instrument
   2FFC 94                 2113  .db 0h94 ; 0h086C: normal track data
   2FFD 40                 2114  .db 0h40 ; 0h086D: vol off, no pitch, note, no instrument
   2FFE 98                 2115  .db 0h98 ; 0h086E: normal track data
   2FFF 40                 2116  .db 0h40 ; 0h086F: vol off, no pitch, note, no instrument
   3000 9C                 2117  .db 0h9C ; 0h0870: normal track data
   3001 40                 2118  .db 0h40 ; 0h0871: vol off, no pitch, note, no instrument
   3002 92                 2119  .db 0h92 ; 0h0872: normal track data
   3003 40                 2120  .db 0h40 ; 0h0873: vol off, no pitch, note, no instrument
   3004 AA                 2121  .db 0hAA ; 0h0874: normal track data
   3005 40                 2122  .db 0h40 ; 0h0875: vol off, no pitch, note, no instrument
   3006 08                 2123  .db 0h08 ; 0h0876: normal track data,  wait 3
   3007 AA                 2124  .db 0hAA ; 0h0877: normal track data
   3008 40                 2125  .db 0h40 ; 0h0878: vol off, no pitch, note, no instrument
   3009 92                 2126  .db 0h92 ; 0h0879: normal track data
   300A 40                 2127  .db 0h40 ; 0h087A: vol off, no pitch, note, no instrument
   300B 92                 2128  .db 0h92 ; 0h087B: normal track data
   300C 40                 2129  .db 0h40 ; 0h087C: vol off, no pitch, note, no instrument
   300D AA                 2130  .db 0hAA ; 0h087D: normal track data
   300E 40                 2131  .db 0h40 ; 0h087E: vol off, no pitch, note, no instrument
   300F AA                 2132  .db 0hAA ; 0h087F: normal track data
   3010 40                 2133  .db 0h40 ; 0h0880: vol off, no pitch, note, no instrument
   3011 92                 2134  .db 0h92 ; 0h0881: normal track data
   3012 40                 2135  .db 0h40 ; 0h0882: vol off, no pitch, note, no instrument
   3013 94                 2136  .db 0h94 ; 0h0883: normal track data
   3014 40                 2137  .db 0h40 ; 0h0884: vol off, no pitch, note, no instrument
   3015 AC                 2138  .db 0hAC ; 0h0885: normal track data
   3016 40                 2139  .db 0h40 ; 0h0886: vol off, no pitch, note, no instrument
   3017 AC                 2140  .db 0hAC ; 0h0887: normal track data
   3018 40                 2141  .db 0h40 ; 0h0888: vol off, no pitch, note, no instrument
   3019 94                 2142  .db 0h94 ; 0h0889: normal track data
   301A 40                 2143  .db 0h40 ; 0h088A: vol off, no pitch, note, no instrument
   301B 92                 2144  .db 0h92 ; 0h088B: normal track data
   301C 40                 2145  .db 0h40 ; 0h088C: vol off, no pitch, note, no instrument
   301D 5A                 2146  .db 0h5A ; 0h088D: normal track data
   301E 61                 2147  .db 0h61 ; 0h088E: vol = 0hF (inverted), no pitch, no note, no instrument
   301F 01                 2148  .db 0h01 ; 0h088F: instrument
   3020 08                 2149  .db 0h08 ; 0h0890: normal track data,  wait 3
   3021 42                 2150  .db 0h42 ; 0h0891: normal track data
   3022 00                 2151  .db 0h00 ; 0h0892: vol off, no pitch, no note, no instrument
   3023 42                 2152  .db 0h42 ; 0h0893: normal track data
   3024 00                 2153  .db 0h00 ; 0h0894: vol off, no pitch, no note, no instrument
   3025                    2154 trackDef20Test:
   3025 AA                 2155  .db 0hAA ; 0h0895: normal track data
   3026 E1                 2156  .db 0hE1 ; 0h0896: vol = 0hF (inverted), no pitch, no note, no instrument
   3027 00 00              2157  .dw 0h0000 ; 0h0897: pitch
   3029 02                 2158  .db 0h02 ; 0h0899: instrument
   302A DA                 2159  .db 0hDA ; 0h089A: normal track data
   302B 49                 2160  .db 0h49 ; 0h089B: vol = 0hB (inverted), no pitch, no note, no instrument
   302C AA                 2161  .db 0hAA ; 0h089C: normal track data
   302D 41                 2162  .db 0h41 ; 0h089D: vol = 0hF (inverted), no pitch, no note, no instrument
   302E DA                 2163  .db 0hDA ; 0h089E: normal track data
   302F 49                 2164  .db 0h49 ; 0h089F: vol = 0hB (inverted), no pitch, no note, no instrument
   3030 C2                 2165  .db 0hC2 ; 0h08A0: normal track data
   3031 41                 2166  .db 0h41 ; 0h08A1: vol = 0hF (inverted), no pitch, no note, no instrument
   3032 C4                 2167  .db 0hC4 ; 0h08A2: normal track data
   3033 40                 2168  .db 0h40 ; 0h08A3: vol off, no pitch, note, no instrument
   3034 C8                 2169  .db 0hC8 ; 0h08A4: normal track data
   3035 40                 2170  .db 0h40 ; 0h08A5: vol off, no pitch, note, no instrument
   3036 CC                 2171  .db 0hCC ; 0h08A6: normal track data
   3037 40                 2172  .db 0h40 ; 0h08A7: vol off, no pitch, note, no instrument
   3038 AA                 2173  .db 0hAA ; 0h08A8: normal track data
   3039 40                 2174  .db 0h40 ; 0h08A9: vol off, no pitch, note, no instrument
   303A DA                 2175  .db 0hDA ; 0h08AA: normal track data
   303B 49                 2176  .db 0h49 ; 0h08AB: vol = 0hB (inverted), no pitch, no note, no instrument
   303C AA                 2177  .db 0hAA ; 0h08AC: normal track data
   303D 41                 2178  .db 0h41 ; 0h08AD: vol = 0hF (inverted), no pitch, no note, no instrument
   303E DA                 2179  .db 0hDA ; 0h08AE: normal track data
   303F 49                 2180  .db 0h49 ; 0h08AF: vol = 0hB (inverted), no pitch, no note, no instrument
   3040 C2                 2181  .db 0hC2 ; 0h08B0: normal track data
   3041 41                 2182  .db 0h41 ; 0h08B1: vol = 0hF (inverted), no pitch, no note, no instrument
   3042 DA                 2183  .db 0hDA ; 0h08B2: normal track data
   3043 49                 2184  .db 0h49 ; 0h08B3: vol = 0hB (inverted), no pitch, no note, no instrument
   3044 C2                 2185  .db 0hC2 ; 0h08B4: normal track data
   3045 41                 2186  .db 0h41 ; 0h08B5: vol = 0hF (inverted), no pitch, no note, no instrument
   3046 DA                 2187  .db 0hDA ; 0h08B6: normal track data
   3047 49                 2188  .db 0h49 ; 0h08B7: vol = 0hB (inverted), no pitch, no note, no instrument
   3048 AA                 2189  .db 0hAA ; 0h08B8: normal track data
   3049 41                 2190  .db 0h41 ; 0h08B9: vol = 0hF (inverted), no pitch, no note, no instrument
   304A DA                 2191  .db 0hDA ; 0h08BA: normal track data
   304B 49                 2192  .db 0h49 ; 0h08BB: vol = 0hB (inverted), no pitch, no note, no instrument
   304C AA                 2193  .db 0hAA ; 0h08BC: normal track data
   304D 41                 2194  .db 0h41 ; 0h08BD: vol = 0hF (inverted), no pitch, no note, no instrument
   304E DA                 2195  .db 0hDA ; 0h08BE: normal track data
   304F 49                 2196  .db 0h49 ; 0h08BF: vol = 0hB (inverted), no pitch, no note, no instrument
   3050 AC                 2197  .db 0hAC ; 0h08C0: normal track data
   3051 41                 2198  .db 0h41 ; 0h08C1: vol = 0hF (inverted), no pitch, no note, no instrument
   3052 DC                 2199  .db 0hDC ; 0h08C2: normal track data
   3053 49                 2200  .db 0h49 ; 0h08C3: vol = 0hB (inverted), no pitch, no note, no instrument
   3054 AC                 2201  .db 0hAC ; 0h08C4: normal track data
   3055 41                 2202  .db 0h41 ; 0h08C5: vol = 0hF (inverted), no pitch, no note, no instrument
   3056 DC                 2203  .db 0hDC ; 0h08C6: normal track data
   3057 49                 2204  .db 0h49 ; 0h08C7: vol = 0hB (inverted), no pitch, no note, no instrument
   3058 AA                 2205  .db 0hAA ; 0h08C8: normal track data
   3059 41                 2206  .db 0h41 ; 0h08C9: vol = 0hF (inverted), no pitch, no note, no instrument
   305A DA                 2207  .db 0hDA ; 0h08CA: normal track data
   305B 49                 2208  .db 0h49 ; 0h08CB: vol = 0hB (inverted), no pitch, no note, no instrument
   305C AA                 2209  .db 0hAA ; 0h08CC: normal track data
   305D 41                 2210  .db 0h41 ; 0h08CD: vol = 0hF (inverted), no pitch, no note, no instrument
   305E DA                 2211  .db 0hDA ; 0h08CE: normal track data
   305F 49                 2212  .db 0h49 ; 0h08CF: vol = 0hB (inverted), no pitch, no note, no instrument
   3060 C2                 2213  .db 0hC2 ; 0h08D0: normal track data
   3061 41                 2214  .db 0h41 ; 0h08D1: vol = 0hF (inverted), no pitch, no note, no instrument
   3062 DA                 2215  .db 0hDA ; 0h08D2: normal track data
   3063 49                 2216  .db 0h49 ; 0h08D3: vol = 0hB (inverted), no pitch, no note, no instrument
   3064 C2                 2217  .db 0hC2 ; 0h08D4: normal track data
   3065 41                 2218  .db 0h41 ; 0h08D5: vol = 0hF (inverted), no pitch, no note, no instrument
   3066 DA                 2219  .db 0hDA ; 0h08D6: normal track data
   3067 49                 2220  .db 0h49 ; 0h08D7: vol = 0hB (inverted), no pitch, no note, no instrument
   3068 AA                 2221  .db 0hAA ; 0h08D8: normal track data
   3069 41                 2222  .db 0h41 ; 0h08D9: vol = 0hF (inverted), no pitch, no note, no instrument
   306A DA                 2223  .db 0hDA ; 0h08DA: normal track data
   306B 49                 2224  .db 0h49 ; 0h08DB: vol = 0hB (inverted), no pitch, no note, no instrument
   306C AA                 2225  .db 0hAA ; 0h08DC: normal track data
   306D 41                 2226  .db 0h41 ; 0h08DD: vol = 0hF (inverted), no pitch, no note, no instrument
   306E DA                 2227  .db 0hDA ; 0h08DE: normal track data
   306F 49                 2228  .db 0h49 ; 0h08DF: vol = 0hB (inverted), no pitch, no note, no instrument
   3070 C2                 2229  .db 0hC2 ; 0h08E0: normal track data
   3071 41                 2230  .db 0h41 ; 0h08E1: vol = 0hF (inverted), no pitch, no note, no instrument
   3072 C4                 2231  .db 0hC4 ; 0h08E2: normal track data
   3073 40                 2232  .db 0h40 ; 0h08E3: vol off, no pitch, note, no instrument
   3074 C8                 2233  .db 0hC8 ; 0h08E4: normal track data
   3075 40                 2234  .db 0h40 ; 0h08E5: vol off, no pitch, note, no instrument
   3076 CC                 2235  .db 0hCC ; 0h08E6: normal track data
   3077 40                 2236  .db 0h40 ; 0h08E7: vol off, no pitch, note, no instrument
   3078 AA                 2237  .db 0hAA ; 0h08E8: normal track data
   3079 40                 2238  .db 0h40 ; 0h08E9: vol off, no pitch, note, no instrument
   307A DA                 2239  .db 0hDA ; 0h08EA: normal track data
   307B 49                 2240  .db 0h49 ; 0h08EB: vol = 0hB (inverted), no pitch, no note, no instrument
   307C AA                 2241  .db 0hAA ; 0h08EC: normal track data
   307D 41                 2242  .db 0h41 ; 0h08ED: vol = 0hF (inverted), no pitch, no note, no instrument
   307E DA                 2243  .db 0hDA ; 0h08EE: normal track data
   307F 49                 2244  .db 0h49 ; 0h08EF: vol = 0hB (inverted), no pitch, no note, no instrument
   3080 C2                 2245  .db 0hC2 ; 0h08F0: normal track data
   3081 41                 2246  .db 0h41 ; 0h08F1: vol = 0hF (inverted), no pitch, no note, no instrument
   3082 DA                 2247  .db 0hDA ; 0h08F2: normal track data
   3083 49                 2248  .db 0h49 ; 0h08F3: vol = 0hB (inverted), no pitch, no note, no instrument
   3084 C2                 2249  .db 0hC2 ; 0h08F4: normal track data
   3085 41                 2250  .db 0h41 ; 0h08F5: vol = 0hF (inverted), no pitch, no note, no instrument
   3086 DA                 2251  .db 0hDA ; 0h08F6: normal track data
   3087 49                 2252  .db 0h49 ; 0h08F7: vol = 0hB (inverted), no pitch, no note, no instrument
   3088 AA                 2253  .db 0hAA ; 0h08F8: normal track data
   3089 41                 2254  .db 0h41 ; 0h08F9: vol = 0hF (inverted), no pitch, no note, no instrument
   308A DA                 2255  .db 0hDA ; 0h08FA: normal track data
   308B 49                 2256  .db 0h49 ; 0h08FB: vol = 0hB (inverted), no pitch, no note, no instrument
   308C AA                 2257  .db 0hAA ; 0h08FC: normal track data
   308D 41                 2258  .db 0h41 ; 0h08FD: vol = 0hF (inverted), no pitch, no note, no instrument
   308E 02                 2259  .db 0h02 ; 0h08FE: normal track data,  wait 0
   308F AC                 2260  .db 0hAC ; 0h08FF: normal track data
   3090 40                 2261  .db 0h40 ; 0h0900: vol off, no pitch, note, no instrument
   3091 DC                 2262  .db 0hDC ; 0h0901: normal track data
   3092 49                 2263  .db 0h49 ; 0h0902: vol = 0hB (inverted), no pitch, no note, no instrument
   3093 AC                 2264  .db 0hAC ; 0h0903: normal track data
   3094 41                 2265  .db 0h41 ; 0h0904: vol = 0hF (inverted), no pitch, no note, no instrument
   3095 02                 2266  .db 0h02 ; 0h0905: normal track data,  wait 0
   3096 AA                 2267  .db 0hAA ; 0h0906: normal track data
   3097 C0                 2268  .db 0hC0 ; 0h0907: vol off, pitch, note, no instrument
   3098 00 20              2269  .dw 0h0020 ; 0h0908: pitch
   309A DA                 2270  .db 0hDA ; 0h090A: normal track data
   309B 49                 2271  .db 0h49 ; 0h090B: vol = 0hB (inverted), no pitch, no note, no instrument
   309C AA                 2272  .db 0hAA ; 0h090C: normal track data
   309D 41                 2273  .db 0h41 ; 0h090D: vol = 0hF (inverted), no pitch, no note, no instrument
   309E 42                 2274  .db 0h42 ; 0h090E: normal track data
   309F 00                 2275  .db 0h00 ; 0h090F: vol off, no pitch, no note, no instrument
   30A0 C2                 2276  .db 0hC2 ; 0h0910: normal track data
   30A1 C9                 2277  .db 0hC9 ; 0h0911: vol = 0hB (inverted), no pitch, no note, no instrument
   30A2 00 00              2278  .dw 0h0000 ; 0h0912: pitch
   30A4 DA                 2279  .db 0hDA ; 0h0914: normal track data
   30A5 41                 2280  .db 0h41 ; 0h0915: vol = 0hF (inverted), no pitch, no note, no instrument
   30A6 C2                 2281  .db 0hC2 ; 0h0916: normal track data
   30A7 49                 2282  .db 0h49 ; 0h0917: vol = 0hB (inverted), no pitch, no note, no instrument
   30A8 00                 2283  .db 0h00 ; 0h0918: track end signature found
   30A9                    2284 trackDef21Test:
   30A9 72                 2285  .db 0h72 ; 0h0919: normal track data
   30AA E1                 2286  .db 0hE1 ; 0h091A: vol = 0hF (inverted), no pitch, no note, no instrument
   30AB 00 00              2287  .dw 0h0000 ; 0h091B: pitch
   30AD 03                 2288  .db 0h03 ; 0h091D: instrument
   30AE 72                 2289  .db 0h72 ; 0h091E: normal track data
   30AF 40                 2290  .db 0h40 ; 0h091F: vol off, no pitch, note, no instrument
   30B0 72                 2291  .db 0h72 ; 0h0920: normal track data
   30B1 40                 2292  .db 0h40 ; 0h0921: vol off, no pitch, note, no instrument
   30B2 98                 2293  .db 0h98 ; 0h0922: normal track data
   30B3 60                 2294  .db 0h60 ; 0h0923: vol off, no pitch, note, instrument
   30B4 01                 2295  .db 0h01 ; 0h0924: instrument
   30B5 72                 2296  .db 0h72 ; 0h0925: normal track data
   30B6 60                 2297  .db 0h60 ; 0h0926: vol off, no pitch, note, instrument
   30B7 04                 2298  .db 0h04 ; 0h0927: instrument
   30B8 98                 2299  .db 0h98 ; 0h0928: normal track data
   30B9 60                 2300  .db 0h60 ; 0h0929: vol off, no pitch, note, instrument
   30BA 01                 2301  .db 0h01 ; 0h092A: instrument
   30BB 72                 2302  .db 0h72 ; 0h092B: normal track data
   30BC 60                 2303  .db 0h60 ; 0h092C: vol off, no pitch, note, instrument
   30BD 03                 2304  .db 0h03 ; 0h092D: instrument
   30BE 98                 2305  .db 0h98 ; 0h092E: normal track data
   30BF 60                 2306  .db 0h60 ; 0h092F: vol off, no pitch, note, instrument
   30C0 01                 2307  .db 0h01 ; 0h0930: instrument
   30C1 72                 2308  .db 0h72 ; 0h0931: normal track data
   30C2 60                 2309  .db 0h60 ; 0h0932: vol off, no pitch, note, instrument
   30C3 04                 2310  .db 0h04 ; 0h0933: instrument
   30C4 98                 2311  .db 0h98 ; 0h0934: normal track data
   30C5 60                 2312  .db 0h60 ; 0h0935: vol off, no pitch, note, instrument
   30C6 01                 2313  .db 0h01 ; 0h0936: instrument
   30C7 72                 2314  .db 0h72 ; 0h0937: normal track data
   30C8 60                 2315  .db 0h60 ; 0h0938: vol off, no pitch, note, instrument
   30C9 03                 2316  .db 0h03 ; 0h0939: instrument
   30CA 98                 2317  .db 0h98 ; 0h093A: normal track data
   30CB 60                 2318  .db 0h60 ; 0h093B: vol off, no pitch, note, instrument
   30CC 01                 2319  .db 0h01 ; 0h093C: instrument
   30CD 72                 2320  .db 0h72 ; 0h093D: normal track data
   30CE 60                 2321  .db 0h60 ; 0h093E: vol off, no pitch, note, instrument
   30CF 04                 2322  .db 0h04 ; 0h093F: instrument
   30D0 98                 2323  .db 0h98 ; 0h0940: normal track data
   30D1 60                 2324  .db 0h60 ; 0h0941: vol off, no pitch, note, instrument
   30D2 01                 2325  .db 0h01 ; 0h0942: instrument
   30D3 72                 2326  .db 0h72 ; 0h0943: normal track data
   30D4 60                 2327  .db 0h60 ; 0h0944: vol off, no pitch, note, instrument
   30D5 03                 2328  .db 0h03 ; 0h0945: instrument
   30D6 98                 2329  .db 0h98 ; 0h0946: normal track data
   30D7 60                 2330  .db 0h60 ; 0h0947: vol off, no pitch, note, instrument
   30D8 01                 2331  .db 0h01 ; 0h0948: instrument
   30D9 72                 2332  .db 0h72 ; 0h0949: normal track data
   30DA 60                 2333  .db 0h60 ; 0h094A: vol off, no pitch, note, instrument
   30DB 03                 2334  .db 0h03 ; 0h094B: instrument
   30DC 72                 2335  .db 0h72 ; 0h094C: normal track data
   30DD 40                 2336  .db 0h40 ; 0h094D: vol off, no pitch, note, no instrument
   30DE 72                 2337  .db 0h72 ; 0h094E: normal track data
   30DF 40                 2338  .db 0h40 ; 0h094F: vol off, no pitch, note, no instrument
   30E0 98                 2339  .db 0h98 ; 0h0950: normal track data
   30E1 60                 2340  .db 0h60 ; 0h0951: vol off, no pitch, note, instrument
   30E2 01                 2341  .db 0h01 ; 0h0952: instrument
   30E3 72                 2342  .db 0h72 ; 0h0953: normal track data
   30E4 60                 2343  .db 0h60 ; 0h0954: vol off, no pitch, note, instrument
   30E5 04                 2344  .db 0h04 ; 0h0955: instrument
   30E6 98                 2345  .db 0h98 ; 0h0956: normal track data
   30E7 60                 2346  .db 0h60 ; 0h0957: vol off, no pitch, note, instrument
   30E8 01                 2347  .db 0h01 ; 0h0958: instrument
   30E9 72                 2348  .db 0h72 ; 0h0959: normal track data
   30EA 60                 2349  .db 0h60 ; 0h095A: vol off, no pitch, note, instrument
   30EB 03                 2350  .db 0h03 ; 0h095B: instrument
   30EC 98                 2351  .db 0h98 ; 0h095C: normal track data
   30ED 60                 2352  .db 0h60 ; 0h095D: vol off, no pitch, note, instrument
   30EE 01                 2353  .db 0h01 ; 0h095E: instrument
   30EF 72                 2354  .db 0h72 ; 0h095F: normal track data
   30F0 60                 2355  .db 0h60 ; 0h0960: vol off, no pitch, note, instrument
   30F1 04                 2356  .db 0h04 ; 0h0961: instrument
   30F2 98                 2357  .db 0h98 ; 0h0962: normal track data
   30F3 60                 2358  .db 0h60 ; 0h0963: vol off, no pitch, note, instrument
   30F4 01                 2359  .db 0h01 ; 0h0964: instrument
   30F5 72                 2360  .db 0h72 ; 0h0965: normal track data
   30F6 60                 2361  .db 0h60 ; 0h0966: vol off, no pitch, note, instrument
   30F7 03                 2362  .db 0h03 ; 0h0967: instrument
   30F8 98                 2363  .db 0h98 ; 0h0968: normal track data
   30F9 60                 2364  .db 0h60 ; 0h0969: vol off, no pitch, note, instrument
   30FA 01                 2365  .db 0h01 ; 0h096A: instrument
   30FB 72                 2366  .db 0h72 ; 0h096B: normal track data
   30FC 60                 2367  .db 0h60 ; 0h096C: vol off, no pitch, note, instrument
   30FD 04                 2368  .db 0h04 ; 0h096D: instrument
   30FE 98                 2369  .db 0h98 ; 0h096E: normal track data
   30FF 60                 2370  .db 0h60 ; 0h096F: vol off, no pitch, note, instrument
   3100 01                 2371  .db 0h01 ; 0h0970: instrument
   3101 72                 2372  .db 0h72 ; 0h0971: normal track data
   3102 60                 2373  .db 0h60 ; 0h0972: vol off, no pitch, note, instrument
   3103 03                 2374  .db 0h03 ; 0h0973: instrument
   3104 98                 2375  .db 0h98 ; 0h0974: normal track data
   3105 60                 2376  .db 0h60 ; 0h0975: vol off, no pitch, note, instrument
   3106 01                 2377  .db 0h01 ; 0h0976: instrument
   3107 72                 2378  .db 0h72 ; 0h0977: normal track data
   3108 60                 2379  .db 0h60 ; 0h0978: vol off, no pitch, note, instrument
   3109 03                 2380  .db 0h03 ; 0h0979: instrument
   310A 72                 2381  .db 0h72 ; 0h097A: normal track data
   310B 40                 2382  .db 0h40 ; 0h097B: vol off, no pitch, note, no instrument
   310C 72                 2383  .db 0h72 ; 0h097C: normal track data
   310D 40                 2384  .db 0h40 ; 0h097D: vol off, no pitch, note, no instrument
   310E 98                 2385  .db 0h98 ; 0h097E: normal track data
   310F 60                 2386  .db 0h60 ; 0h097F: vol off, no pitch, note, instrument
   3110 01                 2387  .db 0h01 ; 0h0980: instrument
   3111 72                 2388  .db 0h72 ; 0h0981: normal track data
   3112 60                 2389  .db 0h60 ; 0h0982: vol off, no pitch, note, instrument
   3113 04                 2390  .db 0h04 ; 0h0983: instrument
   3114 98                 2391  .db 0h98 ; 0h0984: normal track data
   3115 60                 2392  .db 0h60 ; 0h0985: vol off, no pitch, note, instrument
   3116 01                 2393  .db 0h01 ; 0h0986: instrument
   3117 72                 2394  .db 0h72 ; 0h0987: normal track data
   3118 60                 2395  .db 0h60 ; 0h0988: vol off, no pitch, note, instrument
   3119 03                 2396  .db 0h03 ; 0h0989: instrument
   311A 98                 2397  .db 0h98 ; 0h098A: normal track data
   311B 60                 2398  .db 0h60 ; 0h098B: vol off, no pitch, note, instrument
   311C 01                 2399  .db 0h01 ; 0h098C: instrument
   311D 72                 2400  .db 0h72 ; 0h098D: normal track data
   311E 60                 2401  .db 0h60 ; 0h098E: vol off, no pitch, note, instrument
   311F 04                 2402  .db 0h04 ; 0h098F: instrument
   3120 98                 2403  .db 0h98 ; 0h0990: normal track data
   3121 60                 2404  .db 0h60 ; 0h0991: vol off, no pitch, note, instrument
   3122 01                 2405  .db 0h01 ; 0h0992: instrument
   3123 72                 2406  .db 0h72 ; 0h0993: normal track data
   3124 60                 2407  .db 0h60 ; 0h0994: vol off, no pitch, note, instrument
   3125 03                 2408  .db 0h03 ; 0h0995: instrument
   3126 98                 2409  .db 0h98 ; 0h0996: normal track data
   3127 60                 2410  .db 0h60 ; 0h0997: vol off, no pitch, note, instrument
   3128 01                 2411  .db 0h01 ; 0h0998: instrument
   3129 72                 2412  .db 0h72 ; 0h0999: normal track data
   312A 60                 2413  .db 0h60 ; 0h099A: vol off, no pitch, note, instrument
   312B 04                 2414  .db 0h04 ; 0h099B: instrument
   312C 98                 2415  .db 0h98 ; 0h099C: normal track data
   312D 60                 2416  .db 0h60 ; 0h099D: vol off, no pitch, note, instrument
   312E 01                 2417  .db 0h01 ; 0h099E: instrument
   312F 72                 2418  .db 0h72 ; 0h099F: normal track data
   3130 60                 2419  .db 0h60 ; 0h09A0: vol off, no pitch, note, instrument
   3131 03                 2420  .db 0h03 ; 0h09A1: instrument
   3132 98                 2421  .db 0h98 ; 0h09A2: normal track data
   3133 60                 2422  .db 0h60 ; 0h09A3: vol off, no pitch, note, instrument
   3134 01                 2423  .db 0h01 ; 0h09A4: instrument
   3135 72                 2424  .db 0h72 ; 0h09A5: normal track data
   3136 60                 2425  .db 0h60 ; 0h09A6: vol off, no pitch, note, instrument
   3137 03                 2426  .db 0h03 ; 0h09A7: instrument
   3138 72                 2427  .db 0h72 ; 0h09A8: normal track data
   3139 40                 2428  .db 0h40 ; 0h09A9: vol off, no pitch, note, no instrument
   313A 72                 2429  .db 0h72 ; 0h09AA: normal track data
   313B 40                 2430  .db 0h40 ; 0h09AB: vol off, no pitch, note, no instrument
   313C 42                 2431  .db 0h42 ; 0h09AC: normal track data
   313D 00                 2432  .db 0h00 ; 0h09AD: vol off, no pitch, no note, no instrument
   313E 72                 2433  .db 0h72 ; 0h09AE: normal track data
   313F 40                 2434  .db 0h40 ; 0h09AF: vol off, no pitch, note, no instrument
   3140 72                 2435  .db 0h72 ; 0h09B0: normal track data
   3141 40                 2436  .db 0h40 ; 0h09B1: vol off, no pitch, note, no instrument
   3142 72                 2437  .db 0h72 ; 0h09B2: normal track data
   3143 40                 2438  .db 0h40 ; 0h09B3: vol off, no pitch, note, no instrument
   3144 42                 2439  .db 0h42 ; 0h09B4: normal track data
   3145 00                 2440  .db 0h00 ; 0h09B5: vol off, no pitch, no note, no instrument
   3146 72                 2441  .db 0h72 ; 0h09B6: normal track data
   3147 40                 2442  .db 0h40 ; 0h09B7: vol off, no pitch, note, no instrument
   3148 72                 2443  .db 0h72 ; 0h09B8: normal track data
   3149 40                 2444  .db 0h40 ; 0h09B9: vol off, no pitch, note, no instrument
   314A 72                 2445  .db 0h72 ; 0h09BA: normal track data
   314B 40                 2446  .db 0h40 ; 0h09BB: vol off, no pitch, note, no instrument
   314C 42                 2447  .db 0h42 ; 0h09BC: normal track data
   314D 00                 2448  .db 0h00 ; 0h09BD: vol off, no pitch, no note, no instrument
   314E 72                 2449  .db 0h72 ; 0h09BE: normal track data
   314F 40                 2450  .db 0h40 ; 0h09BF: vol off, no pitch, note, no instrument
   3150 72                 2451  .db 0h72 ; 0h09C0: normal track data
   3151 40                 2452  .db 0h40 ; 0h09C1: vol off, no pitch, note, no instrument
   3152 72                 2453  .db 0h72 ; 0h09C2: normal track data
   3153 40                 2454  .db 0h40 ; 0h09C3: vol off, no pitch, note, no instrument
   3154 42                 2455  .db 0h42 ; 0h09C4: normal track data
   3155 00                 2456  .db 0h00 ; 0h09C5: vol off, no pitch, no note, no instrument
   3156                    2457 trackDef24Test:
   3156 92                 2458  .db 0h92 ; 0h09C6: normal track data
   3157 F3                 2459  .db 0hF3 ; 0h09C7: vol = 0h6 (inverted), no pitch, no note, no instrument
   3158 00 00              2460  .dw 0h0000 ; 0h09C8: pitch
   315A 05                 2461  .db 0h05 ; 0h09CA: instrument
   315B AA                 2462  .db 0hAA ; 0h09CB: normal track data
   315C 40                 2463  .db 0h40 ; 0h09CC: vol off, no pitch, note, no instrument
   315D AA                 2464  .db 0hAA ; 0h09CD: normal track data
   315E 40                 2465  .db 0h40 ; 0h09CE: vol off, no pitch, note, no instrument
   315F 92                 2466  .db 0h92 ; 0h09CF: normal track data
   3160 40                 2467  .db 0h40 ; 0h09D0: vol off, no pitch, note, no instrument
   3161 92                 2468  .db 0h92 ; 0h09D1: normal track data
   3162 40                 2469  .db 0h40 ; 0h09D2: vol off, no pitch, note, no instrument
   3163 94                 2470  .db 0h94 ; 0h09D3: normal track data
   3164 40                 2471  .db 0h40 ; 0h09D4: vol off, no pitch, note, no instrument
   3165 98                 2472  .db 0h98 ; 0h09D5: normal track data
   3166 40                 2473  .db 0h40 ; 0h09D6: vol off, no pitch, note, no instrument
   3167 9C                 2474  .db 0h9C ; 0h09D7: normal track data
   3168 40                 2475  .db 0h40 ; 0h09D8: vol off, no pitch, note, no instrument
   3169 92                 2476  .db 0h92 ; 0h09D9: normal track data
   316A 40                 2477  .db 0h40 ; 0h09DA: vol off, no pitch, note, no instrument
   316B AA                 2478  .db 0hAA ; 0h09DB: normal track data
   316C 40                 2479  .db 0h40 ; 0h09DC: vol off, no pitch, note, no instrument
   316D 08                 2480  .db 0h08 ; 0h09DD: normal track data,  wait 3
   316E AA                 2481  .db 0hAA ; 0h09DE: normal track data
   316F 40                 2482  .db 0h40 ; 0h09DF: vol off, no pitch, note, no instrument
   3170 92                 2483  .db 0h92 ; 0h09E0: normal track data
   3171 40                 2484  .db 0h40 ; 0h09E1: vol off, no pitch, note, no instrument
   3172 92                 2485  .db 0h92 ; 0h09E2: normal track data
   3173 40                 2486  .db 0h40 ; 0h09E3: vol off, no pitch, note, no instrument
   3174 AA                 2487  .db 0hAA ; 0h09E4: normal track data
   3175 40                 2488  .db 0h40 ; 0h09E5: vol off, no pitch, note, no instrument
   3176 AA                 2489  .db 0hAA ; 0h09E6: normal track data
   3177 40                 2490  .db 0h40 ; 0h09E7: vol off, no pitch, note, no instrument
   3178 92                 2491  .db 0h92 ; 0h09E8: normal track data
   3179 40                 2492  .db 0h40 ; 0h09E9: vol off, no pitch, note, no instrument
   317A 94                 2493  .db 0h94 ; 0h09EA: normal track data
   317B 40                 2494  .db 0h40 ; 0h09EB: vol off, no pitch, note, no instrument
   317C AC                 2495  .db 0hAC ; 0h09EC: normal track data
   317D 40                 2496  .db 0h40 ; 0h09ED: vol off, no pitch, note, no instrument
   317E AC                 2497  .db 0hAC ; 0h09EE: normal track data
   317F 40                 2498  .db 0h40 ; 0h09EF: vol off, no pitch, note, no instrument
   3180 94                 2499  .db 0h94 ; 0h09F0: normal track data
   3181 40                 2500  .db 0h40 ; 0h09F1: vol off, no pitch, note, no instrument
   3182 92                 2501  .db 0h92 ; 0h09F2: normal track data
   3183 40                 2502  .db 0h40 ; 0h09F3: vol off, no pitch, note, no instrument
   3184 AA                 2503  .db 0hAA ; 0h09F4: normal track data
   3185 40                 2504  .db 0h40 ; 0h09F5: vol off, no pitch, note, no instrument
   3186 08                 2505  .db 0h08 ; 0h09F6: normal track data,  wait 3
   3187 AA                 2506  .db 0hAA ; 0h09F7: normal track data
   3188 40                 2507  .db 0h40 ; 0h09F8: vol off, no pitch, note, no instrument
   3189 92                 2508  .db 0h92 ; 0h09F9: normal track data
   318A 40                 2509  .db 0h40 ; 0h09FA: vol off, no pitch, note, no instrument
   318B 92                 2510  .db 0h92 ; 0h09FB: normal track data
   318C 40                 2511  .db 0h40 ; 0h09FC: vol off, no pitch, note, no instrument
   318D AA                 2512  .db 0hAA ; 0h09FD: normal track data
   318E 40                 2513  .db 0h40 ; 0h09FE: vol off, no pitch, note, no instrument
   318F AA                 2514  .db 0hAA ; 0h09FF: normal track data
   3190 40                 2515  .db 0h40 ; 0h0A00: vol off, no pitch, note, no instrument
   3191 92                 2516  .db 0h92 ; 0h0A01: normal track data
   3192 40                 2517  .db 0h40 ; 0h0A02: vol off, no pitch, note, no instrument
   3193 92                 2518  .db 0h92 ; 0h0A03: normal track data
   3194 40                 2519  .db 0h40 ; 0h0A04: vol off, no pitch, note, no instrument
   3195 94                 2520  .db 0h94 ; 0h0A05: normal track data
   3196 40                 2521  .db 0h40 ; 0h0A06: vol off, no pitch, note, no instrument
   3197 98                 2522  .db 0h98 ; 0h0A07: normal track data
   3198 40                 2523  .db 0h40 ; 0h0A08: vol off, no pitch, note, no instrument
   3199 9C                 2524  .db 0h9C ; 0h0A09: normal track data
   319A 40                 2525  .db 0h40 ; 0h0A0A: vol off, no pitch, note, no instrument
   319B 92                 2526  .db 0h92 ; 0h0A0B: normal track data
   319C 40                 2527  .db 0h40 ; 0h0A0C: vol off, no pitch, note, no instrument
   319D AA                 2528  .db 0hAA ; 0h0A0D: normal track data
   319E 40                 2529  .db 0h40 ; 0h0A0E: vol off, no pitch, note, no instrument
   319F 08                 2530  .db 0h08 ; 0h0A0F: normal track data,  wait 3
   31A0 AA                 2531  .db 0hAA ; 0h0A10: normal track data
   31A1 40                 2532  .db 0h40 ; 0h0A11: vol off, no pitch, note, no instrument
   31A2 92                 2533  .db 0h92 ; 0h0A12: normal track data
   31A3 40                 2534  .db 0h40 ; 0h0A13: vol off, no pitch, note, no instrument
   31A4 92                 2535  .db 0h92 ; 0h0A14: normal track data
   31A5 40                 2536  .db 0h40 ; 0h0A15: vol off, no pitch, note, no instrument
   31A6 AA                 2537  .db 0hAA ; 0h0A16: normal track data
   31A7 40                 2538  .db 0h40 ; 0h0A17: vol off, no pitch, note, no instrument
   31A8 AA                 2539  .db 0hAA ; 0h0A18: normal track data
   31A9 40                 2540  .db 0h40 ; 0h0A19: vol off, no pitch, note, no instrument
   31AA 42                 2541  .db 0h42 ; 0h0A1A: normal track data
   31AB 00                 2542  .db 0h00 ; 0h0A1B: vol off, no pitch, no note, no instrument
   31AC 94                 2543  .db 0h94 ; 0h0A1C: normal track data
   31AD 40                 2544  .db 0h40 ; 0h0A1D: vol off, no pitch, note, no instrument
   31AE AC                 2545  .db 0hAC ; 0h0A1E: normal track data
   31AF 40                 2546  .db 0h40 ; 0h0A1F: vol off, no pitch, note, no instrument
   31B0 AC                 2547  .db 0hAC ; 0h0A20: normal track data
   31B1 40                 2548  .db 0h40 ; 0h0A21: vol off, no pitch, note, no instrument
   31B2 42                 2549  .db 0h42 ; 0h0A22: normal track data
   31B3 00                 2550  .db 0h00 ; 0h0A23: vol off, no pitch, no note, no instrument
   31B4 92                 2551  .db 0h92 ; 0h0A24: normal track data
   31B5 40                 2552  .db 0h40 ; 0h0A25: vol off, no pitch, note, no instrument
   31B6 AA                 2553  .db 0hAA ; 0h0A26: normal track data
   31B7 40                 2554  .db 0h40 ; 0h0A27: vol off, no pitch, note, no instrument
   31B8 08                 2555  .db 0h08 ; 0h0A28: normal track data,  wait 3
   31B9 AA                 2556  .db 0hAA ; 0h0A29: normal track data
   31BA 40                 2557  .db 0h40 ; 0h0A2A: vol off, no pitch, note, no instrument
   31BB 00                 2558  .db 0h00 ; 0h0A2B: track end signature found
   31BC                    2559 trackDef26Test:
   31BC 92                 2560  .db 0h92 ; 0h0A2C: normal track data
   31BD F3                 2561  .db 0hF3 ; 0h0A2D: vol = 0h6 (inverted), no pitch, no note, no instrument
   31BE 00 00              2562  .dw 0h0000 ; 0h0A2E: pitch
   31C0 05                 2563  .db 0h05 ; 0h0A30: instrument
   31C1 AA                 2564  .db 0hAA ; 0h0A31: normal track data
   31C2 40                 2565  .db 0h40 ; 0h0A32: vol off, no pitch, note, no instrument
   31C3 AA                 2566  .db 0hAA ; 0h0A33: normal track data
   31C4 40                 2567  .db 0h40 ; 0h0A34: vol off, no pitch, note, no instrument
   31C5 92                 2568  .db 0h92 ; 0h0A35: normal track data
   31C6 40                 2569  .db 0h40 ; 0h0A36: vol off, no pitch, note, no instrument
   31C7 92                 2570  .db 0h92 ; 0h0A37: normal track data
   31C8 40                 2571  .db 0h40 ; 0h0A38: vol off, no pitch, note, no instrument
   31C9 94                 2572  .db 0h94 ; 0h0A39: normal track data
   31CA 40                 2573  .db 0h40 ; 0h0A3A: vol off, no pitch, note, no instrument
   31CB 98                 2574  .db 0h98 ; 0h0A3B: normal track data
   31CC 40                 2575  .db 0h40 ; 0h0A3C: vol off, no pitch, note, no instrument
   31CD 9C                 2576  .db 0h9C ; 0h0A3D: normal track data
   31CE 40                 2577  .db 0h40 ; 0h0A3E: vol off, no pitch, note, no instrument
   31CF 92                 2578  .db 0h92 ; 0h0A3F: normal track data
   31D0 40                 2579  .db 0h40 ; 0h0A40: vol off, no pitch, note, no instrument
   31D1 AA                 2580  .db 0hAA ; 0h0A41: normal track data
   31D2 40                 2581  .db 0h40 ; 0h0A42: vol off, no pitch, note, no instrument
   31D3 08                 2582  .db 0h08 ; 0h0A43: normal track data,  wait 3
   31D4 AA                 2583  .db 0hAA ; 0h0A44: normal track data
   31D5 40                 2584  .db 0h40 ; 0h0A45: vol off, no pitch, note, no instrument
   31D6 92                 2585  .db 0h92 ; 0h0A46: normal track data
   31D7 40                 2586  .db 0h40 ; 0h0A47: vol off, no pitch, note, no instrument
   31D8 92                 2587  .db 0h92 ; 0h0A48: normal track data
   31D9 40                 2588  .db 0h40 ; 0h0A49: vol off, no pitch, note, no instrument
   31DA AA                 2589  .db 0hAA ; 0h0A4A: normal track data
   31DB 40                 2590  .db 0h40 ; 0h0A4B: vol off, no pitch, note, no instrument
   31DC AA                 2591  .db 0hAA ; 0h0A4C: normal track data
   31DD 40                 2592  .db 0h40 ; 0h0A4D: vol off, no pitch, note, no instrument
   31DE 92                 2593  .db 0h92 ; 0h0A4E: normal track data
   31DF 40                 2594  .db 0h40 ; 0h0A4F: vol off, no pitch, note, no instrument
   31E0 94                 2595  .db 0h94 ; 0h0A50: normal track data
   31E1 40                 2596  .db 0h40 ; 0h0A51: vol off, no pitch, note, no instrument
   31E2 AC                 2597  .db 0hAC ; 0h0A52: normal track data
   31E3 40                 2598  .db 0h40 ; 0h0A53: vol off, no pitch, note, no instrument
   31E4 AC                 2599  .db 0hAC ; 0h0A54: normal track data
   31E5 40                 2600  .db 0h40 ; 0h0A55: vol off, no pitch, note, no instrument
   31E6 94                 2601  .db 0h94 ; 0h0A56: normal track data
   31E7 40                 2602  .db 0h40 ; 0h0A57: vol off, no pitch, note, no instrument
   31E8 92                 2603  .db 0h92 ; 0h0A58: normal track data
   31E9 40                 2604  .db 0h40 ; 0h0A59: vol off, no pitch, note, no instrument
   31EA AA                 2605  .db 0hAA ; 0h0A5A: normal track data
   31EB 40                 2606  .db 0h40 ; 0h0A5B: vol off, no pitch, note, no instrument
   31EC 08                 2607  .db 0h08 ; 0h0A5C: normal track data,  wait 3
   31ED AA                 2608  .db 0hAA ; 0h0A5D: normal track data
   31EE 40                 2609  .db 0h40 ; 0h0A5E: vol off, no pitch, note, no instrument
   31EF 92                 2610  .db 0h92 ; 0h0A5F: normal track data
   31F0 40                 2611  .db 0h40 ; 0h0A60: vol off, no pitch, note, no instrument
   31F1 92                 2612  .db 0h92 ; 0h0A61: normal track data
   31F2 40                 2613  .db 0h40 ; 0h0A62: vol off, no pitch, note, no instrument
   31F3 AA                 2614  .db 0hAA ; 0h0A63: normal track data
   31F4 40                 2615  .db 0h40 ; 0h0A64: vol off, no pitch, note, no instrument
   31F5 AA                 2616  .db 0hAA ; 0h0A65: normal track data
   31F6 40                 2617  .db 0h40 ; 0h0A66: vol off, no pitch, note, no instrument
   31F7 92                 2618  .db 0h92 ; 0h0A67: normal track data
   31F8 40                 2619  .db 0h40 ; 0h0A68: vol off, no pitch, note, no instrument
   31F9 92                 2620  .db 0h92 ; 0h0A69: normal track data
   31FA 40                 2621  .db 0h40 ; 0h0A6A: vol off, no pitch, note, no instrument
   31FB 94                 2622  .db 0h94 ; 0h0A6B: normal track data
   31FC 40                 2623  .db 0h40 ; 0h0A6C: vol off, no pitch, note, no instrument
   31FD 98                 2624  .db 0h98 ; 0h0A6D: normal track data
   31FE 40                 2625  .db 0h40 ; 0h0A6E: vol off, no pitch, note, no instrument
   31FF 9C                 2626  .db 0h9C ; 0h0A6F: normal track data
   3200 40                 2627  .db 0h40 ; 0h0A70: vol off, no pitch, note, no instrument
   3201 92                 2628  .db 0h92 ; 0h0A71: normal track data
   3202 40                 2629  .db 0h40 ; 0h0A72: vol off, no pitch, note, no instrument
   3203 AA                 2630  .db 0hAA ; 0h0A73: normal track data
   3204 40                 2631  .db 0h40 ; 0h0A74: vol off, no pitch, note, no instrument
   3205 08                 2632  .db 0h08 ; 0h0A75: normal track data,  wait 3
   3206 AA                 2633  .db 0hAA ; 0h0A76: normal track data
   3207 40                 2634  .db 0h40 ; 0h0A77: vol off, no pitch, note, no instrument
   3208 92                 2635  .db 0h92 ; 0h0A78: normal track data
   3209 40                 2636  .db 0h40 ; 0h0A79: vol off, no pitch, note, no instrument
   320A 92                 2637  .db 0h92 ; 0h0A7A: normal track data
   320B 40                 2638  .db 0h40 ; 0h0A7B: vol off, no pitch, note, no instrument
   320C AA                 2639  .db 0hAA ; 0h0A7C: normal track data
   320D 40                 2640  .db 0h40 ; 0h0A7D: vol off, no pitch, note, no instrument
   320E AA                 2641  .db 0hAA ; 0h0A7E: normal track data
   320F 40                 2642  .db 0h40 ; 0h0A7F: vol off, no pitch, note, no instrument
   3210 42                 2643  .db 0h42 ; 0h0A80: normal track data
   3211 00                 2644  .db 0h00 ; 0h0A81: vol off, no pitch, no note, no instrument
   3212 94                 2645  .db 0h94 ; 0h0A82: normal track data
   3213 40                 2646  .db 0h40 ; 0h0A83: vol off, no pitch, note, no instrument
   3214 AC                 2647  .db 0hAC ; 0h0A84: normal track data
   3215 40                 2648  .db 0h40 ; 0h0A85: vol off, no pitch, note, no instrument
   3216 AC                 2649  .db 0hAC ; 0h0A86: normal track data
   3217 40                 2650  .db 0h40 ; 0h0A87: vol off, no pitch, note, no instrument
   3218 42                 2651  .db 0h42 ; 0h0A88: normal track data
   3219 00                 2652  .db 0h00 ; 0h0A89: vol off, no pitch, no note, no instrument
   321A 92                 2653  .db 0h92 ; 0h0A8A: normal track data
   321B 40                 2654  .db 0h40 ; 0h0A8B: vol off, no pitch, note, no instrument
   321C 7A                 2655  .db 0h7A ; 0h0A8C: normal track data
   321D 40                 2656  .db 0h40 ; 0h0A8D: vol off, no pitch, note, no instrument
   321E 8E                 2657  .db 0h8E ; 0h0A8E: normal track data,  note: D3
   321F 55                 2658  .db 0h55 ; 0h0A8F: vol = 0h5 (inverted), no pitch, no note, no instrument
   3220 8A                 2659  .db 0h8A ; 0h0A90: normal track data,  note: C3
   3221 57                 2660  .db 0h57 ; 0h0A91: vol = 0h4 (inverted), no pitch, no note, no instrument
   3222 88                 2661  .db 0h88 ; 0h0A92: normal track data
   3223 59                 2662  .db 0h59 ; 0h0A93: vol = 0h3 (inverted), no pitch, no note, no instrument
   3224 84                 2663  .db 0h84 ; 0h0A94: normal track data
   3225 5B                 2664  .db 0h5B ; 0h0A95: vol = 0h2 (inverted), no pitch, no note, no instrument
   3226 80                 2665  .db 0h80 ; 0h0A96: normal track data,  note: G2
   3227 5D                 2666  .db 0h5D ; 0h0A97: vol = 0h1 (inverted), no pitch, no note, no instrument
   3228 7C                 2667  .db 0h7C ; 0h0A98: normal track data
   3229 40                 2668  .db 0h40 ; 0h0A99: vol off, no pitch, note, no instrument
   322A                    2669 trackDef27Test:
   322A 7A                 2670  .db 0h7A ; 0h0A9A: normal track data
   322B F3                 2671  .db 0hF3 ; 0h0A9B: vol = 0h6 (inverted), no pitch, no note, no instrument
   322C 00 00              2672  .dw 0h0000 ; 0h0A9C: pitch
   322E 05                 2673  .db 0h05 ; 0h0A9E: instrument
   322F 0A                 2674  .db 0h0A ; 0h0A9F: normal track data,  wait 4
   3230 92                 2675  .db 0h92 ; 0h0AA0: normal track data
   3231 40                 2676  .db 0h40 ; 0h0AA1: vol off, no pitch, note, no instrument
   3232 02                 2677  .db 0h02 ; 0h0AA2: normal track data,  wait 0
   3233 7A                 2678  .db 0h7A ; 0h0AA3: normal track data
   3234 40                 2679  .db 0h40 ; 0h0AA4: vol off, no pitch, note, no instrument
   3235 0A                 2680  .db 0h0A ; 0h0AA5: normal track data,  wait 4
   3236 92                 2681  .db 0h92 ; 0h0AA6: normal track data
   3237 40                 2682  .db 0h40 ; 0h0AA7: vol off, no pitch, note, no instrument
   3238 02                 2683  .db 0h02 ; 0h0AA8: normal track data,  wait 0
   3239 7C                 2684  .db 0h7C ; 0h0AA9: normal track data
   323A 40                 2685  .db 0h40 ; 0h0AAA: vol off, no pitch, note, no instrument
   323B 0A                 2686  .db 0h0A ; 0h0AAB: normal track data,  wait 4
   323C 94                 2687  .db 0h94 ; 0h0AAC: normal track data
   323D 40                 2688  .db 0h40 ; 0h0AAD: vol off, no pitch, note, no instrument
   323E 02                 2689  .db 0h02 ; 0h0AAE: normal track data,  wait 0
   323F 80                 2690  .db 0h80 ; 0h0AAF: normal track data
   3240 40                 2691  .db 0h40 ; 0h0AB0: vol off, no pitch, note, no instrument
   3241 0A                 2692  .db 0h0A ; 0h0AB1: normal track data,  wait 4
   3242 98                 2693  .db 0h98 ; 0h0AB2: normal track data
   3243 40                 2694  .db 0h40 ; 0h0AB3: vol off, no pitch, note, no instrument
   3244 02                 2695  .db 0h02 ; 0h0AB4: normal track data,  wait 0
   3245 7A                 2696  .db 0h7A ; 0h0AB5: normal track data
   3246 40                 2697  .db 0h40 ; 0h0AB6: vol off, no pitch, note, no instrument
   3247 0A                 2698  .db 0h0A ; 0h0AB7: normal track data,  wait 4
   3248 92                 2699  .db 0h92 ; 0h0AB8: normal track data
   3249 40                 2700  .db 0h40 ; 0h0AB9: vol off, no pitch, note, no instrument
   324A 02                 2701  .db 0h02 ; 0h0ABA: normal track data,  wait 0
   324B 7A                 2702  .db 0h7A ; 0h0ABB: normal track data
   324C 40                 2703  .db 0h40 ; 0h0ABC: vol off, no pitch, note, no instrument
   324D 0A                 2704  .db 0h0A ; 0h0ABD: normal track data,  wait 4
   324E 92                 2705  .db 0h92 ; 0h0ABE: normal track data
   324F 40                 2706  .db 0h40 ; 0h0ABF: vol off, no pitch, note, no instrument
   3250 02                 2707  .db 0h02 ; 0h0AC0: normal track data,  wait 0
   3251 7C                 2708  .db 0h7C ; 0h0AC1: normal track data
   3252 40                 2709  .db 0h40 ; 0h0AC2: vol off, no pitch, note, no instrument
   3253 0A                 2710  .db 0h0A ; 0h0AC3: normal track data,  wait 4
   3254 94                 2711  .db 0h94 ; 0h0AC4: normal track data
   3255 40                 2712  .db 0h40 ; 0h0AC5: vol off, no pitch, note, no instrument
   3256 02                 2713  .db 0h02 ; 0h0AC6: normal track data,  wait 0
   3257 80                 2714  .db 0h80 ; 0h0AC7: normal track data
   3258 40                 2715  .db 0h40 ; 0h0AC8: vol off, no pitch, note, no instrument
   3259 0A                 2716  .db 0h0A ; 0h0AC9: normal track data,  wait 4
   325A 98                 2717  .db 0h98 ; 0h0ACA: normal track data
   325B 40                 2718  .db 0h40 ; 0h0ACB: vol off, no pitch, note, no instrument
   325C 00                 2719  .db 0h00 ; 0h0ACC: track end signature found
   325D                    2720 trackDef29Test:
   325D 72                 2721  .db 0h72 ; 0h0ACD: normal track data
   325E E0                 2722  .db 0hE0 ; 0h0ACE: vol off, pitch, note, instrument
   325F 00 00              2723  .dw 0h0000 ; 0h0ACF: pitch
   3261 01                 2724  .db 0h01 ; 0h0AD1: instrument
   3262 02                 2725  .db 0h02 ; 0h0AD2: normal track data,  wait 0
   3263 42                 2726  .db 0h42 ; 0h0AD3: normal track data
   3264 00                 2727  .db 0h00 ; 0h0AD4: vol off, no pitch, no note, no instrument
   3265 02                 2728  .db 0h02 ; 0h0AD5: normal track data,  wait 0
   3266 42                 2729  .db 0h42 ; 0h0AD6: normal track data
   3267 00                 2730  .db 0h00 ; 0h0AD7: vol off, no pitch, no note, no instrument
   3268 02                 2731  .db 0h02 ; 0h0AD8: normal track data,  wait 0
   3269 33                 2732  .db 0h33 ; 0h0AD9: full optimization, no escape: C2
   326A 02                 2733  .db 0h02 ; 0h0ADA: normal track data,  wait 0
   326B 33                 2734  .db 0h33 ; 0h0ADB: full optimization, no escape: C2
   326C 02                 2735  .db 0h02 ; 0h0ADC: normal track data,  wait 0
   326D 42                 2736  .db 0h42 ; 0h0ADD: normal track data
   326E 00                 2737  .db 0h00 ; 0h0ADE: vol off, no pitch, no note, no instrument
   326F 02                 2738  .db 0h02 ; 0h0ADF: normal track data,  wait 0
   3270 42                 2739  .db 0h42 ; 0h0AE0: normal track data
   3271 00                 2740  .db 0h00 ; 0h0AE1: vol off, no pitch, no note, no instrument
   3272 02                 2741  .db 0h02 ; 0h0AE2: normal track data,  wait 0
   3273 33                 2742  .db 0h33 ; 0h0AE3: full optimization, no escape: C2
   3274 02                 2743  .db 0h02 ; 0h0AE4: normal track data,  wait 0
   3275 33                 2744  .db 0h33 ; 0h0AE5: full optimization, no escape: C2
   3276 02                 2745  .db 0h02 ; 0h0AE6: normal track data,  wait 0
   3277 42                 2746  .db 0h42 ; 0h0AE7: normal track data
   3278 00                 2747  .db 0h00 ; 0h0AE8: vol off, no pitch, no note, no instrument
   3279 02                 2748  .db 0h02 ; 0h0AE9: normal track data,  wait 0
   327A 42                 2749  .db 0h42 ; 0h0AEA: normal track data
   327B 00                 2750  .db 0h00 ; 0h0AEB: vol off, no pitch, no note, no instrument
   327C 02                 2751  .db 0h02 ; 0h0AEC: normal track data,  wait 0
   327D 33                 2752  .db 0h33 ; 0h0AED: full optimization, no escape: C2
   327E 02                 2753  .db 0h02 ; 0h0AEE: normal track data,  wait 0
   327F 33                 2754  .db 0h33 ; 0h0AEF: full optimization, no escape: C2
   3280 02                 2755  .db 0h02 ; 0h0AF0: normal track data,  wait 0
   3281 42                 2756  .db 0h42 ; 0h0AF1: normal track data
   3282 00                 2757  .db 0h00 ; 0h0AF2: vol off, no pitch, no note, no instrument
   3283 02                 2758  .db 0h02 ; 0h0AF3: normal track data,  wait 0
   3284 42                 2759  .db 0h42 ; 0h0AF4: normal track data
   3285 00                 2760  .db 0h00 ; 0h0AF5: vol off, no pitch, no note, no instrument
   3286 02                 2761  .db 0h02 ; 0h0AF6: normal track data,  wait 0
   3287 33                 2762  .db 0h33 ; 0h0AF7: full optimization, no escape: C2
   3288 02                 2763  .db 0h02 ; 0h0AF8: normal track data,  wait 0
   3289 33                 2764  .db 0h33 ; 0h0AF9: full optimization, no escape: C2
   328A 02                 2765  .db 0h02 ; 0h0AFA: normal track data,  wait 0
   328B 42                 2766  .db 0h42 ; 0h0AFB: normal track data
   328C 00                 2767  .db 0h00 ; 0h0AFC: vol off, no pitch, no note, no instrument
   328D 02                 2768  .db 0h02 ; 0h0AFD: normal track data,  wait 0
   328E 42                 2769  .db 0h42 ; 0h0AFE: normal track data
   328F 00                 2770  .db 0h00 ; 0h0AFF: vol off, no pitch, no note, no instrument
   3290 02                 2771  .db 0h02 ; 0h0B00: normal track data,  wait 0
   3291 33                 2772  .db 0h33 ; 0h0B01: full optimization, no escape: C2
   3292 53                 2773  .db 0h53 ; 0h0B02: full optimization, no escape: E3
   3293 33                 2774  .db 0h33 ; 0h0B03: full optimization, no escape: C2
   3294 53                 2775  .db 0h53 ; 0h0B04: full optimization, no escape: E3
   3295 53                 2776  .db 0h53 ; 0h0B05: full optimization, no escape: E3
   3296 02                 2777  .db 0h02 ; 0h0B06: normal track data,  wait 0
   3297 42                 2778  .db 0h42 ; 0h0B07: normal track data
   3298 00                 2779  .db 0h00 ; 0h0B08: vol off, no pitch, no note, no instrument
   3299 02                 2780  .db 0h02 ; 0h0B09: normal track data,  wait 0
   329A 33                 2781  .db 0h33 ; 0h0B0A: full optimization, no escape: C2
   329B 53                 2782  .db 0h53 ; 0h0B0B: full optimization, no escape: E3
   329C 33                 2783  .db 0h33 ; 0h0B0C: full optimization, no escape: C2
   329D 53                 2784  .db 0h53 ; 0h0B0D: full optimization, no escape: E3
   329E 53                 2785  .db 0h53 ; 0h0B0E: full optimization, no escape: E3
   329F 02                 2786  .db 0h02 ; 0h0B0F: normal track data,  wait 0
   32A0 42                 2787  .db 0h42 ; 0h0B10: normal track data
   32A1 00                 2788  .db 0h00 ; 0h0B11: vol off, no pitch, no note, no instrument
   32A2 02                 2789  .db 0h02 ; 0h0B12: normal track data,  wait 0
   32A3 33                 2790  .db 0h33 ; 0h0B13: full optimization, no escape: C2
   32A4 53                 2791  .db 0h53 ; 0h0B14: full optimization, no escape: E3
   32A5 33                 2792  .db 0h33 ; 0h0B15: full optimization, no escape: C2
   32A6 53                 2793  .db 0h53 ; 0h0B16: full optimization, no escape: E3
   32A7 53                 2794  .db 0h53 ; 0h0B17: full optimization, no escape: E3
   32A8 42                 2795  .db 0h42 ; 0h0B18: normal track data
   32A9 00                 2796  .db 0h00 ; 0h0B19: vol off, no pitch, no note, no instrument
   32AA 42                 2797  .db 0h42 ; 0h0B1A: normal track data
   32AB 00                 2798  .db 0h00 ; 0h0B1B: vol off, no pitch, no note, no instrument
   32AC 72                 2799  .db 0h72 ; 0h0B1C: normal track data
   32AD 60                 2800  .db 0h60 ; 0h0B1D: vol off, no pitch, note, instrument
   32AE 04                 2801  .db 0h04 ; 0h0B1E: instrument
   32AF 33                 2802  .db 0h33 ; 0h0B1F: full optimization, no escape: C2
   32B0 00                 2803  .db 0h00 ; 0h0B20: track end signature found
   32B1                    2804 trackDef28Test:
   32B1 42                 2805  .db 0h42 ; 0h0B21: normal track data
   32B2 80                 2806  .db 0h80 ; 0h0B22: vol off, pitch, no note, no instrument
   32B3 00 00              2807  .dw 0h0000 ; 0h0B23: pitch
   32B5 02                 2808  .db 0h02 ; 0h0B25: normal track data,  wait 0
   32B6 42                 2809  .db 0h42 ; 0h0B26: normal track data
   32B7 00                 2810  .db 0h00 ; 0h0B27: vol off, no pitch, no note, no instrument
   32B8 02                 2811  .db 0h02 ; 0h0B28: normal track data,  wait 0
   32B9 42                 2812  .db 0h42 ; 0h0B29: normal track data
   32BA 00                 2813  .db 0h00 ; 0h0B2A: vol off, no pitch, no note, no instrument
   32BB 02                 2814  .db 0h02 ; 0h0B2B: normal track data,  wait 0
   32BC 42                 2815  .db 0h42 ; 0h0B2C: normal track data
   32BD 00                 2816  .db 0h00 ; 0h0B2D: vol off, no pitch, no note, no instrument
   32BE 02                 2817  .db 0h02 ; 0h0B2E: normal track data,  wait 0
   32BF 42                 2818  .db 0h42 ; 0h0B2F: normal track data
   32C0 00                 2819  .db 0h00 ; 0h0B30: vol off, no pitch, no note, no instrument
   32C1 02                 2820  .db 0h02 ; 0h0B31: normal track data,  wait 0
   32C2 42                 2821  .db 0h42 ; 0h0B32: normal track data
   32C3 00                 2822  .db 0h00 ; 0h0B33: vol off, no pitch, no note, no instrument
   32C4 42                 2823  .db 0h42 ; 0h0B34: normal track data
   32C5 00                 2824  .db 0h00 ; 0h0B35: vol off, no pitch, no note, no instrument
   32C6 42                 2825  .db 0h42 ; 0h0B36: normal track data
   32C7 00                 2826  .db 0h00 ; 0h0B37: vol off, no pitch, no note, no instrument
   32C8 42                 2827  .db 0h42 ; 0h0B38: normal track data
   32C9 00                 2828  .db 0h00 ; 0h0B39: vol off, no pitch, no note, no instrument
   32CA 42                 2829  .db 0h42 ; 0h0B3A: normal track data
   32CB 00                 2830  .db 0h00 ; 0h0B3B: vol off, no pitch, no note, no instrument
   32CC 02                 2831  .db 0h02 ; 0h0B3C: normal track data,  wait 0
   32CD 42                 2832  .db 0h42 ; 0h0B3D: normal track data
   32CE 00                 2833  .db 0h00 ; 0h0B3E: vol off, no pitch, no note, no instrument
   32CF 02                 2834  .db 0h02 ; 0h0B3F: normal track data,  wait 0
   32D0 42                 2835  .db 0h42 ; 0h0B40: normal track data
   32D1 00                 2836  .db 0h00 ; 0h0B41: vol off, no pitch, no note, no instrument
   32D2 42                 2837  .db 0h42 ; 0h0B42: normal track data
   32D3 00                 2838  .db 0h00 ; 0h0B43: vol off, no pitch, no note, no instrument
   32D4 42                 2839  .db 0h42 ; 0h0B44: normal track data
   32D5 00                 2840  .db 0h00 ; 0h0B45: vol off, no pitch, no note, no instrument
   32D6 02                 2841  .db 0h02 ; 0h0B46: normal track data,  wait 0
   32D7 42                 2842  .db 0h42 ; 0h0B47: normal track data
   32D8 00                 2843  .db 0h00 ; 0h0B48: vol off, no pitch, no note, no instrument
   32D9 02                 2844  .db 0h02 ; 0h0B49: normal track data,  wait 0
   32DA 42                 2845  .db 0h42 ; 0h0B4A: normal track data
   32DB 00                 2846  .db 0h00 ; 0h0B4B: vol off, no pitch, no note, no instrument
   32DC 02                 2847  .db 0h02 ; 0h0B4C: normal track data,  wait 0
   32DD 42                 2848  .db 0h42 ; 0h0B4D: normal track data
   32DE 00                 2849  .db 0h00 ; 0h0B4E: vol off, no pitch, no note, no instrument
   32DF 42                 2850  .db 0h42 ; 0h0B4F: normal track data
   32E0 00                 2851  .db 0h00 ; 0h0B50: vol off, no pitch, no note, no instrument
   32E1 42                 2852  .db 0h42 ; 0h0B51: normal track data
   32E2 00                 2853  .db 0h00 ; 0h0B52: vol off, no pitch, no note, no instrument
   32E3 42                 2854  .db 0h42 ; 0h0B53: normal track data
   32E4 00                 2855  .db 0h00 ; 0h0B54: vol off, no pitch, no note, no instrument
   32E5 42                 2856  .db 0h42 ; 0h0B55: normal track data
   32E6 00                 2857  .db 0h00 ; 0h0B56: vol off, no pitch, no note, no instrument
   32E7 02                 2858  .db 0h02 ; 0h0B57: normal track data,  wait 0
   32E8 42                 2859  .db 0h42 ; 0h0B58: normal track data
   32E9 00                 2860  .db 0h00 ; 0h0B59: vol off, no pitch, no note, no instrument
   32EA 02                 2861  .db 0h02 ; 0h0B5A: normal track data,  wait 0
   32EB 42                 2862  .db 0h42 ; 0h0B5B: normal track data
   32EC 00                 2863  .db 0h00 ; 0h0B5C: vol off, no pitch, no note, no instrument
   32ED 02                 2864  .db 0h02 ; 0h0B5D: normal track data,  wait 0
   32EE 42                 2865  .db 0h42 ; 0h0B5E: normal track data
   32EF 00                 2866  .db 0h00 ; 0h0B5F: vol off, no pitch, no note, no instrument
   32F0 02                 2867  .db 0h02 ; 0h0B60: normal track data,  wait 0
   32F1 42                 2868  .db 0h42 ; 0h0B61: normal track data
   32F2 00                 2869  .db 0h00 ; 0h0B62: vol off, no pitch, no note, no instrument
   32F3 02                 2870  .db 0h02 ; 0h0B63: normal track data,  wait 0
   32F4 42                 2871  .db 0h42 ; 0h0B64: normal track data
   32F5 00                 2872  .db 0h00 ; 0h0B65: vol off, no pitch, no note, no instrument
   32F6 02                 2873  .db 0h02 ; 0h0B66: normal track data,  wait 0
   32F7 42                 2874  .db 0h42 ; 0h0B67: normal track data
   32F8 00                 2875  .db 0h00 ; 0h0B68: vol off, no pitch, no note, no instrument
   32F9 42                 2876  .db 0h42 ; 0h0B69: normal track data
   32FA 00                 2877  .db 0h00 ; 0h0B6A: vol off, no pitch, no note, no instrument
   32FB 42                 2878  .db 0h42 ; 0h0B6B: normal track data
   32FC 00                 2879  .db 0h00 ; 0h0B6C: vol off, no pitch, no note, no instrument
   32FD 42                 2880  .db 0h42 ; 0h0B6D: normal track data
   32FE 00                 2881  .db 0h00 ; 0h0B6E: vol off, no pitch, no note, no instrument
   32FF 42                 2882  .db 0h42 ; 0h0B6F: normal track data
   3300 00                 2883  .db 0h00 ; 0h0B70: vol off, no pitch, no note, no instrument
   3301 02                 2884  .db 0h02 ; 0h0B71: normal track data,  wait 0
   3302 42                 2885  .db 0h42 ; 0h0B72: normal track data
   3303 00                 2886  .db 0h00 ; 0h0B73: vol off, no pitch, no note, no instrument
   3304 02                 2887  .db 0h02 ; 0h0B74: normal track data,  wait 0
   3305 42                 2888  .db 0h42 ; 0h0B75: normal track data
   3306 00                 2889  .db 0h00 ; 0h0B76: vol off, no pitch, no note, no instrument
   3307 42                 2890  .db 0h42 ; 0h0B77: normal track data
   3308 00                 2891  .db 0h00 ; 0h0B78: vol off, no pitch, no note, no instrument
   3309 42                 2892  .db 0h42 ; 0h0B79: normal track data
   330A 00                 2893  .db 0h00 ; 0h0B7A: vol off, no pitch, no note, no instrument
   330B 02                 2894  .db 0h02 ; 0h0B7B: normal track data,  wait 0
   330C 42                 2895  .db 0h42 ; 0h0B7C: normal track data
   330D 00                 2896  .db 0h00 ; 0h0B7D: vol off, no pitch, no note, no instrument
   330E 02                 2897  .db 0h02 ; 0h0B7E: normal track data,  wait 0
   330F 76                 2898  .db 0h76 ; 0h0B7F: normal track data
   3310 73                 2899  .db 0h73 ; 0h0B80: vol = 0h6 (inverted), no pitch, no note, no instrument
   3311 05                 2900  .db 0h05 ; 0h0B81: instrument
   3312 7A                 2901  .db 0h7A ; 0h0B82: normal track data
   3313 40                 2902  .db 0h40 ; 0h0B83: vol off, no pitch, note, no instrument
   3314 7C                 2903  .db 0h7C ; 0h0B84: normal track data
   3315 40                 2904  .db 0h40 ; 0h0B85: vol off, no pitch, note, no instrument
   3316 80                 2905  .db 0h80 ; 0h0B86: normal track data
   3317 40                 2906  .db 0h40 ; 0h0B87: vol off, no pitch, note, no instrument
   3318 84                 2907  .db 0h84 ; 0h0B88: normal track data
   3319 40                 2908  .db 0h40 ; 0h0B89: vol off, no pitch, note, no instrument
   331A 88                 2909  .db 0h88 ; 0h0B8A: normal track data
   331B 40                 2910  .db 0h40 ; 0h0B8B: vol off, no pitch, note, no instrument
   331C 8A                 2911  .db 0h8A ; 0h0B8C: normal track data
   331D 40                 2912  .db 0h40 ; 0h0B8D: vol off, no pitch, note, no instrument
   331E 8E                 2913  .db 0h8E ; 0h0B8E: normal track data
   331F 40                 2914  .db 0h40 ; 0h0B8F: vol off, no pitch, note, no instrument
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

