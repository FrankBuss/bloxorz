                              1 ; TODO: .include "vectrex.i" doesn't work
                     D001     2 VIA_port_a      =     0hD001   ;VIA port A data I/O register (handshaking)
                     D000     3 VIA_port_b      =     0hD000   ;VIA port B data I/O register
                     F192     4 Wait_Recal      =     0hF192   ;
                     F2A5     5 Intensity_5F    =     0hF2A5   ;
                     F37A     6 Print_Str_d     =     0hF37A   ;
                     C800     7 Vec_Snd_Shadow  =     0hC800   ;Shadow of sound chip registers (15 bytes)
                              8 
                              9 ;***************************************************************************
                             10 ; CODE SECTION
                             11 ;***************************************************************************
                             12 
                             13 	.area .text
                             14 
                             15                     .setdp   0xd000,_DATA 
                             16 	
   5411                      17 arkosPlayerString:
   5411 41 52 4B 4F 53 20    18                     .ascii       "ARKOS PLAYER"             ; some game information
        50 4C 41 59 45 52
   541D 80 00                19                     .db       0h80, 0                    ; end of game header 
                             20 	
                             21 	.globl  _musicInit
   541F                      22 _musicInit:
   541F 34 1E         [ 9]   23 	pshs    d,dp,x
   5421 CE 3D 18      [ 3]   24  ldu #aks_song
   5424 BD 35 60      [ 8]   25  jsr    PLY_INIT 
   5427 35 9E         [10]   26 	puls d,dp,x,pc       ; restore registers from stack and return
                             27  
                             28 	.globl  _musicPlay
   5429                      29 _musicPlay:
   5429 34 1E         [ 9]   30 	pshs    d,dp,x
   542B BD 30 F8      [ 8]   31  jsr    PLY_PLAY   
   542E 8D 21         [ 7]   32  bsr do_ym_sound2
                             33 
   5430 35 9E         [10]   34 	puls d,dp,x,pc       ; restore registers from stack and return
                             35 
                             36 	
                             37 
                             38 	.globl  _player_test
   5432                      39 _player_test:
                             40 
   5432 CE 3D 18      [ 3]   41  ldu #aks_song
   5435 BD 35 60      [ 8]   42  jsr    PLY_INIT 
   5438 20 00         [ 3]   43  bra main
   543A                      44 main: 
   543A BD F1 92      [ 8]   45                     JSR      Wait_Recal           ; Vectrex BIOS recalibration 
   543D BD F2 A5      [ 8]   46                     JSR      Intensity_5F         ; Sets the intensity of the 
                             47                                                   ; vector beam to 0h5f 
   5440 CE 54 11      [ 3]   48                     LDU      #arkosPlayerString  ; address of string 
   5443 86 10         [ 2]   49                     LDA      #0h10                 ; Text position relative Y 
   5445 C6 50         [ 2]   50                     LDB      #0h50                ; Text position relative X 
   5447 BD F3 7A      [ 8]   51                     JSR      Print_Str_d          ; Vectrex BIOS print routine 
                             52 
   544A BD 30 F8      [ 8]   53  jsr    PLY_PLAY   
   544D 8D 02         [ 7]   54  bsr do_ym_sound2
                             55 
   544F 20 E9         [ 3]   56                     BRA      main                 ; and repeat forever 
                             57 
                             58 ;***************************************************************************
                             59 
   5451                      60 do_ym_sound2:  
                             61                                              ;#isfunction  
   5451 86 D0         [ 2]   62 	lda #0hd0		; setup direct page to 0xd000
   5453 1F 8B         [ 6]   63 	tfr a, dp
                             64 
                             65 ; copy all shadows
   5455 86 0D         [ 2]   66                     lda      #13                          ; number of regs to copy (+1) 
   5457 8E C8 E4      [ 3]   67                     ldx      #PLY_PSGREG0                 ; music players write here 
   545A CE C8 00      [ 3]   68                     ldu      #Vec_Snd_Shadow              ; shadow of actual PSG 
   545D                      69 next_reg_dsy: 
   545D E6 86         [ 5]   70                     ldb      a, x 
   545F E1 C6         [ 5]   71                     cmpb     a, u 
   5461 27 18         [ 3]   72                     beq      inc_reg_dsy 
                             73 ; no put to psg
   5463 E7 C6         [ 5]   74                     stb      a,u                          ; ensure shadow has copy 
                             75 ; a = register
                             76 ; b = value
   5465 97 01         [ 4]   77                     STA      *VIA_port_a                  ;store register select byte 
   5467 86 19         [ 2]   78                     LDA      #0h19                         ;sound BDIR on, BC1 on, mux off _ LATCH 
   5469 97 00         [ 4]   79                     STA      *VIA_port_b 
   546B 86 01         [ 2]   80                     LDA      #0h01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
   546D 97 00         [ 4]   81                     STA      *VIA_port_b 
   546F 96 01         [ 4]   82                     LDA      *VIA_port_a                  ;read sound chip status (?) 
   5471 D7 01         [ 4]   83                     STB      *VIA_port_a                  ;store data byte 
   5473 C6 11         [ 2]   84                     LDB      #0h11                         ;sound BDIR on, BC1 off, mux off - WRITE 
   5475 D7 00         [ 4]   85                     STB      *VIA_port_b 
   5477 C6 01         [ 2]   86                     LDB      #0h01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
   5479 D7 00         [ 4]   87                     STB      *VIA_port_b 
   547B                      88 inc_reg_dsy: 
   547B 4A            [ 2]   89                     deca     
   547C 2A DF         [ 3]   90                     bpl      next_reg_dsy 
                             91 
   547E                      92 doneSound_2:
   547E 39            [ 5]   93                     rts      
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$music$15         0000 GR  |   2 A$music$23         000E GR
  2 A$music$24         0010 GR  |   2 A$music$25         0013 GR
  2 A$music$26         0016 GR  |   2 A$music$30         0018 GR
  2 A$music$31         001A GR  |   2 A$music$32         001D GR
  2 A$music$34         001F GR  |   2 A$music$41         0021 GR
  2 A$music$42         0024 GR  |   2 A$music$43         0027 GR
  2 A$music$45         0029 GR  |   2 A$music$46         002C GR
  2 A$music$48         002F GR  |   2 A$music$49         0032 GR
  2 A$music$50         0034 GR  |   2 A$music$51         0036 GR
  2 A$music$53         0039 GR  |   2 A$music$54         003C GR
  2 A$music$56         003E GR  |   2 A$music$62         0040 GR
  2 A$music$63         0042 GR  |   2 A$music$66         0044 GR
  2 A$music$67         0046 GR  |   2 A$music$68         0049 GR
  2 A$music$70         004C GR  |   2 A$music$71         004E GR
  2 A$music$72         0050 GR  |   2 A$music$74         0052 GR
  2 A$music$77         0054 GR  |   2 A$music$78         0056 GR
  2 A$music$79         0058 GR  |   2 A$music$80         005A GR
  2 A$music$81         005C GR  |   2 A$music$82         005E GR
  2 A$music$83         0060 GR  |   2 A$music$84         0062 GR
  2 A$music$85         0064 GR  |   2 A$music$86         0066 GR
  2 A$music$87         0068 GR  |   2 A$music$89         006A GR
  2 A$music$90         006B GR  |   2 A$music$93         006D GR
    Intensity_5F   =   F2A5     |     PLY_INIT           **** GX
    PLY_PLAY           **** GX  |     PLY_PSGREG0        **** GX
    Print_Str_d    =   F37A     |     VIA_port_a     =   D001 
    VIA_port_b     =   D000     |     Vec_Snd_Shadow =   C800 
    Wait_Recal     =   F192     |   2 _musicInit         000E GR
  2 _musicPlay         0018 GR  |   2 _player_test       0021 GR
    aks_song           **** GX  |   2 arkosPlayerStr     0000 R
  2 do_ym_sound2       0040 R   |   2 doneSound_2        006D R
  2 inc_reg_dsy        006A R   |   2 main               0029 R
  2 next_reg_dsy       004C R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   6E   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

