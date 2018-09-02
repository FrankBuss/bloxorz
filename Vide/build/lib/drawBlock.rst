                              1                     .area    .text 
                              2 ; assumes intensity set
                              3 ; assumes dp = d0
                              4                     .setdp   0xd000,_DATA 
                              5                     .globl   _drawFieldAsmScale 
   2155                       6 _drawFieldAsmScale: 
   2155 34 60         [ 7]    7                     pshs     y, u                         ; this is not really needed 
   2157 C6 CC         [ 2]    8                     LDB      #0xCC                        ; do zero 
   2159 D7 0C         [ 4]    9                     STB      *0xD00c                      ;/BLANK low and /ZERO low 
   215B 8E 00 00      [ 3]   10                     ldx      #0                           ; init offset 
   215E B6 C8 F5      [ 5]   11                     lda      _moveScale                   ; load first known scale 
   2161 97 04         [ 4]   12                     STA      *0xD004                      ; to T1 - next round this will be done "in draw" 
   2163 FC C9 1D      [ 6]   13                     ldd      _moveTo                      ; load first move 
   2166 20 04         [ 3]   14                     bra      startLoop                    ; and jump into the loop 
                             15 
   2168                      16 SdrawFieldLoop: 
   2168 12            [ 2]   17                     nop                                   ; some delay necessary for correct zeroing! 
   2169 12            [ 2]   18                     nop      
   216A 1F 30         [ 6]   19                     tfr      u,d                          ; load prepared next move y,x 
   216C                      20 startLoop: 
   216C 97 01         [ 4]   21                     STA      *0xD001                      ; Store Y in D/A register 
   216E 0F 00         [ 6]   22                     CLR      *0xD000                      ; Enable mux 
   2170 12            [ 2]   23                     nop                                   ; short delay to "load" sh of y 
   2171 86 CE         [ 2]   24                     LDA      #0xCE                        ; Blank low, zero high -> disable zero mainly 
   2173 97 0C         [ 4]   25                     STA      *0xD00c 
                             26 ;                    CLR      *0xD00a                      ; Clear shift regigster, if it isn't cleafed already there is someting wrong...
   2175 0C 00         [ 6]   27                     INC      *0xD000                      ; Disable mux 
   2177 D7 01         [ 4]   28                     STB      *0xD001                      ; Store X in D/A register 
   2179 0F 05         [ 6]   29                     CLR      *0xD005                      ; timer 1 count high, start timer 
                             30 ; now we are moving - prepare stuff...
                             31 ;
                             32 ; first set t1 latch to next scale
   217B A6 89 C9 6D   [ 8]   33                     lda      _lineScale,x 
   217F 97 04         [ 4]   34                     STA      *0xD004                      ; t1 latch 
                             35 ; we prepare u, so all we need is to store "u" to Via_b (as y)
   2181 E6 89 CA 0D   [ 8]   36                     ldb      _lineY1,x 
   2185 E0 89 C9 BD   [ 8]   37                     subb     _lineY0,x                    ; this is our "y" delta for next vector 
   2189 81 7F         [ 2]   38                     cmpa     #0x7f                        ; see if we are at maximum scale 
   218B 24 06         [ 3]   39                     bhs      noDouble1                    ; if yes - leave it 
   218D 58            [ 2]   40                     aslb                                  ; otherwise smaller scale means we can double the strength 
   218E 81 3A         [ 2]   41                     cmpa     #0x3a                        ; on really small scale 
   2190 24 01         [ 3]   42                     bhs      noDouble1                    ; we can quadrupel 
   2192 58            [ 2]   43                     aslb     
   2193                      44 noDouble1: 
   2193 4F            [ 2]   45                     clra                                  ; this will set mux to enable - later 
   2194 1F 03         [ 6]   46                     tfr      d,u                          ; y value + portb = 0 
                             47 ; y part of next vector is prepared - now we prepare the y part
                             48 ; we prepare y, so all we need is to store "y" to Via_b (as x)
   2196 E6 89 C9 E5   [ 8]   49                     ldb      _lineX1,x 
   219A E0 89 C9 95   [ 8]   50                     subb     _lineX0,x                    ; this is our "x" delta for next vector 
   219E A6 89 C9 6D   [ 8]   51                     lda      _lineScale,x                 ; fetch the current scale to compare again 
   21A2 81 7F         [ 2]   52                     cmpa     #0x7f                        ; see if we are at maximum scale 
   21A4 24 06         [ 3]   53                     bhs      noDouble2                    ; if yes - leave it 
   21A6 58            [ 2]   54                     aslb                                  ; otherwise smaller scale means we can double the strength 
   21A7 81 3A         [ 2]   55                     cmpa     #0x3a                        ; on really small scale 
   21A9 24 01         [ 3]   56                     bhs      noDouble2                    ; we can quadrupel 
   21AB 58            [ 2]   57                     aslb     
   21AC                      58 noDouble2: 
   21AC 86 01         [ 2]   59                     lda      #1                           ; this will set mux to disable 
   21AE 1F 02         [ 6]   60                     tfr      d,y                          ; x value + portb = 1 
                             61 ; we check if all lines are drawn - if so this is the last we draw it - and exit
   21B0 30 01         [ 5]   62                     leax     1,x                          ; x=x+1 
   21B2 1F 10         [ 6]   63                     tfr      x,d                          ; this also leaves a = 0 
   21B4 F1 C8 88      [ 5]   64                     cmpb     _lineCount                   ; if we reached line count we will be done here 
   21B7 27 2F         [ 3]   65                     beq      SdoLastDraw                  ; branch to draw last line 
   21B9 C6 40         [ 2]   66                     LDB      #0x40                        ; otherwise wait for T1 to finish (moving) 
   21BB D5 0D         [ 4]   67 LF345_d1:           BITB     *0xD00D                      ;Wait for timer 1 
   21BD 27 FC         [ 3]   68                     BEQ      LF345_d1 
                             69 ; possibly some nops here!
                             70 ; for mega correct placements
                             71 ;   nop
                             72 ;   nop
                             73 ;   nop
                             74 ;   nop
                             75 ;   nop
                             76 ;   nop
                             77 ;   nop
                             78 ;   nop
                             79 ;   nop
                             80 ; Start draw 
   21BF DF 00         [ 5]   81                     stu      *0xD000                      ; store y pos to port a, enable mux (reg b) and set mux to y 
   21C1 C6 FF         [ 2]   82                     ldb      #0xff                        ; delay and in the while load value for shift reg 
   21C3 10 9F 00             83                     sty      *0xD000                      ; store x pos to port a, disable mux (reg b) 
   21C6 D7 0A         [ 4]   84                     stb      *0xD00a                      ; shiftreg = $ff > draw line , 4 cycles before timer -> white dot in the beginning 
   21C8 97 05         [ 4]   85                     STA      *0xD005                      ; a = 0; enable timer, cant be helped 
                             86 ; now we have at least 0x20 cycles to "waste"
                             87 ; make sure the cycles wasted are "constant" cycles, otherwise line
                             88 ; will "flicker" at the end!
                             89 ;
                             90 ; prepare movement scale of next line
   21CA A6 89 C8 F5   [ 8]   91                     lda      _moveScale,x                 ; timer for next move (scale) 
   21CE 97 04         [ 4]   92                     STa      *0xD004                      ; set t1 latch for next move 
                             93 ; prepare next moveTo's
   21D0 1F 10         [ 6]   94                     tfr      x,d                          ; get line counter 
   21D2 58            [ 2]   95                     aslb                                  ; times two (moveTos ate words, not bytes) 
   21D3 CE C9 1D      [ 3]   96                     ldu      #_moveTo                     ; get base address 
   21D6 EE C5         [ 6]   97                     ldu      b,u                          ; and load value at offset to u (u will be transfered to d) 
   21D8 C6 40         [ 2]   98                     LDB      #0x40                        ; wait for line tofinish 
   21DA D5 0D         [ 4]   99 SWaitDrawEnd:       BITB     *0xD00D                      ; check timer 1 flag 
   21DC 27 FC         [ 3]  100                     BEQ      SWaitDrawEnd                 ; 
   21DE 12            [ 2]  101                     nop                                   ; delay 6 cycles, so shiftreg comes to "rest" or ramp or whatever 
   21DF C6 CC         [ 2]  102                     LDB      #0xCC                        ; go zero 
   21E1 97 0A         [ 4]  103                     sta      *0xD00a                      ; a = 0; shiftreg = 0, drawing switched off 
                            104 ; End draw 
   21E3 D7 0C         [ 4]  105                     STB      *0xD00c                      ; /BLANK low and /ZERO low, go zero 
   21E5 7E 21 68      [ 4]  106                     jmp      SdrawFieldLoop               ; draw next line 
                            107 
                            108 ; draw the last line
                            109 ; no "prep" needed here...
   21E8                     110 SdoLastDraw: 
   21E8 C6 40         [ 2]  111                     LDB      #0x40                        ; wait for line tofinish 
   21EA D5 0D         [ 4]  112 SWaitMoveEnd2:      BITB     *0xD00D                      ; check timer 1 flag 
   21EC 27 FC         [ 3]  113                     BEQ      SWaitMoveEnd2                ; 
                            114 ; movement ist finished now
                            115 ; start drawing!
   21EE DF 00         [ 5]  116                     stu      *0xD000                      ; store y pos to a, enable mux (reg b) and set mux to y 
   21F0 C6 40         [ 2]  117                     LDB      #0x40                        ; delay and prepare bit compare
   21F2 10 9F 00            118                     sty      *0xD000                      ; store x pos to a, disable mux (reg b) 
   21F5 0A 0A         [ 6]  119                     dec      *0xD00a                      ; shift reg is 0, if we dec, than shiftreg = $ff > draw line 
   21F7 97 05         [ 4]  120                     STA      *0xD005                      ; a = 0; enable timer 
   21F9 D5 0D         [ 4]  121 SWaitDrawEnd2:      BITB     *0xD00D                      ; check timer 1 flag 
   21FB 27 FC         [ 3]  122                     BEQ      SWaitDrawEnd2                ; 
   21FD 12            [ 2]  123                     nop      
   21FE 12            [ 2]  124                     nop      
   21FF 97 0A         [ 4]  125                     sta      *0xD00a                      ; a = 0; 
   2201 35 60         [ 7]  126                     puls     y, u                         ; this is not really needed 
   2203 39            [ 5]  127                     rts      
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$drawBlock$10     0006 GR  |   2 A$drawBlock$10     0087 GR
  2 A$drawBlock$10     0089 GR  |   2 A$drawBlock$10     008A GR
  2 A$drawBlock$10     008C GR  |   2 A$drawBlock$10     008E GR
  2 A$drawBlock$10     0090 GR  |   2 A$drawBlock$11     0009 GR
  2 A$drawBlock$11     0093 GR  |   2 A$drawBlock$11     0095 GR
  2 A$drawBlock$11     0097 GR  |   2 A$drawBlock$11     0099 GR
  2 A$drawBlock$11     009B GR  |   2 A$drawBlock$11     009D GR
  2 A$drawBlock$11     00A0 GR  |   2 A$drawBlock$12     000C GR
  2 A$drawBlock$12     00A2 GR  |   2 A$drawBlock$12     00A4 GR
  2 A$drawBlock$12     00A6 GR  |   2 A$drawBlock$12     00A8 GR
  2 A$drawBlock$12     00A9 GR  |   2 A$drawBlock$12     00AA GR
  2 A$drawBlock$12     00AC GR  |   2 A$drawBlock$12     00AE GR
  2 A$drawBlock$13     000E GR  |   2 A$drawBlock$14     0011 GR
  2 A$drawBlock$17     0013 GR  |   2 A$drawBlock$18     0014 GR
  2 A$drawBlock$19     0015 GR  |   2 A$drawBlock$21     0017 GR
  2 A$drawBlock$22     0019 GR  |   2 A$drawBlock$23     001B GR
  2 A$drawBlock$24     001C GR  |   2 A$drawBlock$25     001E GR
  2 A$drawBlock$27     0020 GR  |   2 A$drawBlock$28     0022 GR
  2 A$drawBlock$29     0024 GR  |   2 A$drawBlock$33     0026 GR
  2 A$drawBlock$34     002A GR  |   2 A$drawBlock$36     002C GR
  2 A$drawBlock$37     0030 GR  |   2 A$drawBlock$38     0034 GR
  2 A$drawBlock$39     0036 GR  |   2 A$drawBlock$4      0000 GR
  2 A$drawBlock$40     0038 GR  |   2 A$drawBlock$41     0039 GR
  2 A$drawBlock$42     003B GR  |   2 A$drawBlock$43     003D GR
  2 A$drawBlock$45     003E GR  |   2 A$drawBlock$46     003F GR
  2 A$drawBlock$49     0041 GR  |   2 A$drawBlock$50     0045 GR
  2 A$drawBlock$51     0049 GR  |   2 A$drawBlock$52     004D GR
  2 A$drawBlock$53     004F GR  |   2 A$drawBlock$54     0051 GR
  2 A$drawBlock$55     0052 GR  |   2 A$drawBlock$56     0054 GR
  2 A$drawBlock$57     0056 GR  |   2 A$drawBlock$59     0057 GR
  2 A$drawBlock$60     0059 GR  |   2 A$drawBlock$62     005B GR
  2 A$drawBlock$63     005D GR  |   2 A$drawBlock$64     005F GR
  2 A$drawBlock$65     0062 GR  |   2 A$drawBlock$66     0064 GR
  2 A$drawBlock$67     0066 GR  |   2 A$drawBlock$68     0068 GR
  2 A$drawBlock$7      0000 GR  |   2 A$drawBlock$8      0002 GR
  2 A$drawBlock$81     006A GR  |   2 A$drawBlock$82     006C GR
  2 A$drawBlock$83     006E GR  |   2 A$drawBlock$84     0071 GR
  2 A$drawBlock$85     0073 GR  |   2 A$drawBlock$9      0004 GR
  2 A$drawBlock$91     0075 GR  |   2 A$drawBlock$92     0079 GR
  2 A$drawBlock$94     007B GR  |   2 A$drawBlock$95     007D GR
  2 A$drawBlock$96     007E GR  |   2 A$drawBlock$97     0081 GR
  2 A$drawBlock$98     0083 GR  |   2 A$drawBlock$99     0085 GR
  2 LF345_d1           0066 R   |   2 SWaitDrawEnd       0085 R
  2 SWaitDrawEnd2      00A4 R   |   2 SWaitMoveEnd2      0095 R
  2 SdoLastDraw        0093 R   |   2 SdrawFieldLoop     0013 R
  2 _drawFieldAsmS     0000 GR  |     _lineCount         **** GX
    _lineScale         **** GX  |     _lineX0            **** GX
    _lineX1            **** GX  |     _lineY0            **** GX
    _lineY1            **** GX  |     _moveScale         **** GX
    _moveTo            **** GX  |   2 noDouble1          003E R
  2 noDouble2          0057 R   |   2 startLoop          0017 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   AF   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

