                              1 ; TODO: .include "vectrex.i" doesn't work
                     F548     2 Clear_x_d       =     0hF548   ;
                     C800     3 Vec_Snd_Shadow  =     0hC800   ;Shadow of sound chip registers (15 bytes)
                              4 
                              5 ; Vec_Music_Work      =      0hC83F                        ;Music work buffer (14 bytes, backwards?) 
                              6 
                              7 ;STORE_PSG           macro    register 
                              8 ;                    sta      (Vec_Music_Work + register) 
                              9 ;                    endm     
                             10 ;
                             11 
                             12 ; 
                             13 ; start of some RAM Vars
                             14 ;
                             15 	.area .bss
                             16 
                             17 ;                    org      0hc900 
                             18 
                             19 ; below RAM usuage is 74 byte (without psh shadow/work registers, which are set to
                             20 ; vectrex default RAM locations)
   C88B                      21 tmp_track_param: .blkb   1
                     0000    22 arkosPlayerMemStart  = tmp_track_param
   C88C                      23 tmp_track_instrument: .blkb   1
   C88D                      24 tmp_instrument_second_byte: .blkb   1
                             25 ; following are player vars which are channel independend
   C88E                      26 PLY_HEIGHT: .blkb   1                            ; height of pattern 
   C88F                      27 PLY_SPEED: .blkb   1                            ; speed of pattern 
   C890                      28 PLY_SPEEDCPT: .blkb   1                            ; current speed position (count down to 0) 
   C891                      29 PLY_HEIGHTCPT: .blkb   1                            ; current height position (count down to 0) 
   C892                      30 PLY_TRACK_INSTRUMENTSTABLEPT: .blkb   2                       ; address of instrument table 
   C894                      31 PLY_LINKER_PT: .blkb   2                            ; current linker position 
   C896                      32 PLY_PSGREG13_RETRIG: .blkb   1                            ; retrigger "flag" - if same as PLY_PSGREG13, than not retriggered, otherewise - yes 
   C897                      33 PLY_SAVESPECIALTRACK: .blkb   2                            ; start position of current special track 
   C899                      34 PLY_SPECIALTRACK_PT: .blkb   2                            ; current position in special track 
   C89B                      35 PLY_SPECIALTRACK_WAITCOUNTER: .blkb   1                       ; wait counter for special track (count down to 0) 
                             36 ;
                             37 ; in general in belo player, y reg points to the start of
                             38 ; following structure (one for each channel)
                             39 ;                    struct   ArkosChannel 
                     0000    40                     PLY_TRANSPOSITION = 0 ;, 1 
                     0001    41                     PLY_TRACK_SAVEPTINSTRUMENT = 1
                     0003    42                     PLY_TRACK_INSTRUMENT = 3
                     0005    43                     PLY_TRACK_INSTRUMENTSPEED = 5
                     0006    44                     PLY_TRACK_INSTRUMENTSPEEDCPT = 6
                     0007    45                     PLY_TRACK_PT = 7
                     0009    46                     PLY_TRACK_WAITCOUNTER = 9
                     000A    47 					PLY_TRACK_NOTE = 10
                     000B    48                     PLY_TRACK_VOLUME = 11
                     000C    49                     PLY_TRACK_PITCH = 12
                     000E    50                     PLY_TRACK_PITCHADD = 14
                     0010    51                     PLY_TRACK_REG_7 = 16
                             52 ;                    end struct 
                     0011    53 ArkosChannel = 17
                             54 
                             55 ;
   C89C                      56 Channel1Data:        .blkb   17 ;ds       ArkosChannel 
   C8AD                      57 Channel2Data:        .blkb   17 ;ds       ArkosChannel 
   C8BE                      58 Channel3Data:        .blkb   17 ;ds       ArkosChannel 
                     0044    59 ChannelDataEnd      = Channel3Data + 17
                             60 ;
   C8CF                      61 PLY_PSGREG13:        .blkb   1 ; ds       1                            ; special - this is used for retrigger activities 
   C8D0                      62 PLY_VOL_REG:         .blkb   2 ; ds       2                            ; these two are used to stay "channel" independend 
   C8D2                      63 PLY_FREQ_REG:        .blkb   2 ; ds       2                            ; they are loaded befor the "work" routines with the corresponding regs of the current channel 
                             64 
                             65 ;	org      Vec_Music_Work 
                             66 ; simple redefines for source compatability (TODO: Vec_Music_Work is 0hc83f, so can't be redefines)
                             67 	.globl PLY_PSGREG0
   C8D4                      68 PLY_PSGREG0:         .blkb   1
   C8D5                      69 PLY_PSGREG1:         .blkb   1
   C8D6                      70 PLY_PSGREG2:         .blkb   1
   C8D7                      71 PLY_PSGREG3:         .blkb   1
   C8D8                      72 PLY_PSGREG4:         .blkb   1
   C8D9                      73 PLY_PSGREG5:         .blkb   1
   C8DA                      74 PLY_PSGREG6:         .blkb   2
   C8DC                      75 PLY_PSGREG8:         .blkb   1
   C8DD                      76 PLY_PSGREG9:         .blkb   1
   C8DE                      77 PLY_PSGREG10:        .blkb   1
   C8DF                      78 PLY_PSGREG11:        .blkb   1
   C8E0                      79 PLY_PSGREG12:        .blkb   2
                     0049    80 PLY_PSGREGISTERSARRAY = PLY_PSGREG0
                     0057    81 PLY_PSGREGISTERSARRAY_END = PLY_PSGREG12 + 2
                             82 
                     0057    83 arkosPlayerMemEnd = PLY_PSGREG12 + 2
                             84 
                             85 
                             86 	.area .text
                             87 
                     00FE    88 PLY_RETRIGVALUE     = 0hFE                         ; some value greater than 0x0f 
   0155                      89 PLAYER: 
                             90 	.globl PLY_PLAY
   0155                      91 PLY_PLAY: 
                             92 ;Manage Speed. If Speed counter is over, we have to read the Pattern further.
   0155 7A C8 90      [ 7]   93                     dec      PLY_SPEEDCPT 
   0158 10 26 01 29   [ 6]   94                     lbne     PLY_SPEEDEND 
                             95 ;Moving forward in the Pattern. Test if it is not over.
   015C 7A C8 91      [ 7]   96                     dec      PLY_HEIGHTCPT 
   015F 26 61         [ 3]   97                     BNE      PLY_HEIGHTEND 
                             98 ;Pattern Over. We have to read the Linker.
                             99 ;Get the Transpositions, if they have changed, or detect the Song Ending !
   0161 BE C8 94      [ 6]  100                     LDX      PLY_LINKER_PT 
   0164 A6 80         [ 6]  101                     LDA      ,X+ 
                            102 ; A = 
                            103 ;{DB PatternState :
                            104 ;
                            105 ;	b5 = New Special Track ?
                            106 ;	b4 = New Height ?
                            107 ;	b3 = New Transposition 3 ?
                            108 ;	b2 = New Transposition 2 ?
                            109 ;	b1 = New Transposition 1 ?
                            110 ;	b0 = Song over ? 1 = song over - no new bytes following -> loop possible...
   0166 46            [ 2]  111                     RORA     
   0167 24 05         [ 3]  112                     BCC      PLY_SONGNOTOVER 
                            113 ;Song over ! We read the address of the Loop point.
                            114 ;
                            115 ; if b0 == 1
                            116 ; dw Pointeur on Linker to loop. Restart reading.
                            117 ;
   0169 AE 84         [ 5]  118                     ldx      ,x 
                            119 ;We know the Song won't restart now, so we can skip the first bit.                                                                                      ;WE KNOW THE SONG WON'T RESTART NOW, SO WE CAN SKIP THE FIRST BIT.
   016B A6 80         [ 6]  120                     LDA      ,X+ 
                            121 ; now it looks like we just started a new pattern!
   016D 46            [ 2]  122                     RORA                                  ; skip the song over, when we just start a new pattern - cant be over yet, can it? 
   016E                     123 PLY_SONGNOTOVER: 
                            124 ;if b0 = 0 :
                            125 ;
                            126 ;DB Transposition 1 if Transposition1?
                            127 ;DB Transposition 2 if Transposition2?
                            128 ;DB Transposition 3 if Transposition3?
                            129 ;DW Track1
                            130 ;DW Track2
                            131 ;DW Track3
                            132 ;DB Height if New Height?.
                            133 ;DW Special Track if New Special Track?
                            134 ;
                            135 ;} * Length + 1		(+1 because the Loop item has to be added to the list).
   016E 46            [ 2]  136                     RORA                                  ; if b1 = 1 
   016F 24 05         [ 3]  137                     BCC      PLY_NONEWTRANSPOSITION1 
   0171 E6 80         [ 6]  138                     LDB      ,X+ 
   0173 F7 C8 9C      [ 5]  139                     STB      Channel1Data + PLY_TRANSPOSITION 
   0176                     140 PLY_NONEWTRANSPOSITION1: 
   0176 46            [ 2]  141                     RORA                                  ; if b2 = 1 
   0177 24 05         [ 3]  142                     BCC      PLY_NONEWTRANSPOSITION2 
   0179 E6 80         [ 6]  143                     LDB      ,X+ 
   017B F7 C8 AD      [ 5]  144                     STB      Channel2Data + PLY_TRANSPOSITION 
   017E                     145 PLY_NONEWTRANSPOSITION2: 
   017E 46            [ 2]  146                     RORA                                  ; if b3 = 1 
   017F 24 05         [ 3]  147                     BCC      PLY_NONEWTRANSPOSITION3 
   0181 E6 80         [ 6]  148                     LDB      ,X+ 
   0183 F7 C8 BE      [ 5]  149                     STB      Channel3Data + PLY_TRANSPOSITION 
   0186                     150 PLY_NONEWTRANSPOSITION3: 
   0186 EE 81         [ 8]  151                     LDu      ,X++ 
   0188 FF C8 A3      [ 6]  152                     STu      Channel1Data + PLY_TRACK_PT 
   018B EE 81         [ 8]  153                     LDu      ,X++ 
   018D FF C8 B4      [ 6]  154                     STu      Channel2Data + PLY_TRACK_PT 
   0190 EE 81         [ 8]  155                     LDu      ,X++ 
   0192 FF C8 C5      [ 6]  156                     STu      Channel3Data + PLY_TRACK_PT 
   0195 46            [ 2]  157                     RORA                                  ; if b4 = 1 
   0196 24 05         [ 3]  158                     BCC      PLY_NONEWHEIGHT 
   0198 E6 80         [ 6]  159                     LDB      ,X+ 
   019A F7 C8 8E      [ 5]  160                     STB      PLY_HEIGHT 
   019D                     161 PLY_NONEWHEIGHT: 
   019D 46            [ 2]  162                     RORA                                  ; if b5 = 1 
   019E 24 05         [ 3]  163                     BCC      PLY_NONEWSPECIALTRACK 
   01A0                     164 PLY_NEWSPECIALTRACK: 
   01A0 EE 81         [ 8]  165                     ldu      , x++ 
   01A2 FF C8 97      [ 6]  166                     STu      PLY_SAVESPECIALTRACK 
   01A5                     167 PLY_NONEWSPECIALTRACK: 
   01A5 BF C8 94      [ 6]  168                     STX      PLY_LINKER_PT                ; this pattern was read, whenever the tracks are playered - the next pattern will start here 
                            169 ; a new pattern allways resets the special track - whether an old one - or a just gotten one
   01A8 BE C8 97      [ 6]  170                     LDX      PLY_SAVESPECIALTRACK 
   01AB BF C8 99      [ 6]  171                     STX      PLY_SPECIALTRACK_PT 
                            172 ;Reset the SpecialTrack/Tracks line counter.
                            173 ;We can't rely on the song data, because the Pattern Height is not related to the Tracks Height.
                            174 ; countdowns allways test for dec->beq - so placing a one is a garantied "reset"
   01AE 86 01         [ 2]  175                     LDA      #0h1 
   01B0 B7 C8 9B      [ 5]  176                     sta      PLY_SPECIALTRACK_WAITCOUNTER 
   01B3 B7 C8 A5      [ 5]  177                     sta      Channel1Data + PLY_TRACK_WAITCOUNTER 
   01B6 B7 C8 B6      [ 5]  178                     sta      Channel2Data + PLY_TRACK_WAITCOUNTER 
   01B9 B7 C8 C7      [ 5]  179                     sta      Channel3Data + PLY_TRACK_WAITCOUNTER 
   01BC B6 C8 8E      [ 5]  180                     LDA      PLY_HEIGHT 
   01BF B7 C8 91      [ 5]  181                     STA      PLY_HEIGHTCPT 
   01C2                     182 PLY_HEIGHTEND: 
                            183 ;Read the Special Track/Tracks.
                            184 ;------------------------------
                            185 ;
                            186 ; note:
                            187 ; vectrex player does not support digidrums!
                            188 ;SpecialTracks
                            189 ;-------------
                            190 ;
                            191 ;DB Data
                            192 ;b0 = Data (1) or Wait (0)
                            193 ;If Wait :
                            194 ;b7-b1 = Wait b7-b1 lines. (1=1 line, 0=128 lines)
                            195 ;If Data :
                            196 ;b1 = Speed (0) or Digidrum (1) ?
                            197 ;b7-b2 = Value. If value = 0, escape code : read next byte to know value.
                            198 ;
                            199 ;If Escape Code :
                            200 ;{
                            201 ; DB Value
                            202 ;}
   01C2                     203 _read_special_track: 
                            204 ;Read the Special Track.
   01C2 7A C8 9B      [ 7]  205                     dec      PLY_SPECIALTRACK_WAITCOUNTER 
   01C5 26 1A         [ 3]  206                     BNE      PLY_SPECIALTRACK_DONE 
   01C7 BE C8 99      [ 6]  207                     LDX      PLY_SPECIALTRACK_PT 
   01CA A6 80         [ 6]  208                     LDA      ,X+ 
   01CC 44            [ 2]  209                     LSRA                                  ; if b0=0 -> carry will be clear -> jump to WAIT 
   01CD 24 0C         [ 3]  210                     BCC      PLY_SPECIALTRACK_NEWWAIT 
   01CF 44            [ 2]  211                     LSRA                                  ; regardless if speed or digidrum -> if a right shift results in 0 A, than we have an escape situation, if not -> jump 
   01D0 26 02         [ 3]  212                     BNE      PLY_SPECIALTRACK_NOESCAPECODE 
   01D2 A6 80         [ 6]  213                     LDA      ,X+                          ; load the escaped (additional) value 
   01D4                     214 PLY_SPECIALTRACK_NOESCAPECODE: 
                            215 ; if carry was set by the last right shift, the special track
                            216 ; denotes a digidrum, since it is not supported
                            217 ; we just ignore it and jump to the end
   01D4 25 03         [ 3]  218                     bcs      PLY_PT_SPECIALTRACK_ENDDATA 
   01D6                     219 PLY_SPECIALTRACK_SPEED: 
   01D6 B7 C8 8F      [ 5]  220                     STA      PLY_SPEED                    ; the data we got was the speed - store it 
   01D9                     221 PLY_PT_SPECIALTRACK_ENDDATA: 
   01D9 86 01         [ 2]  222                     LDA      #0h1                          ; reset wait counter, next round might be more waiting :-) 
   01DB                     223 PLY_SPECIALTRACK_NEWWAIT: 
   01DB BF C8 99      [ 6]  224                     STX      PLY_SPECIALTRACK_PT          ; is this used anywhere? 
   01DE B7 C8 9B      [ 5]  225                     STA      PLY_SPECIALTRACK_WAITCOUNTER 
   01E1                     226 PLY_SPECIALTRACK_DONE: 
   01E1 10 8E C8 9C   [ 4]  227                     ldy      #Channel1Data 
   01E5                     228 readnextchannel: 
   01E5                     229 _read_track: 
                            230 ;Read the Track 1.
                            231 ;-----------------
                            232 ;Store the parameters, because the player below is called every frame, but the Read Track isn't.
   01E5 6A 29         [ 7]  233                     dec      PLY_TRACK_WAITCOUNTER,y 
   01E7 10 26 00 89   [ 6]  234                     lBNE     PLY_TRACK_NEWINSTRUMENT_WAIT_CONT 
   01EB AE 27         [ 6]  235                     LDX      PLY_TRACK_PT, y 
   01ED                     236 PLY_READTRACK: 
   01ED E6 80         [ 6]  237                     LDb      ,X+ 
   01EF 54            [ 2]  238                     LSRb                                  ;Full Optimisation ? If yes = Note only, no Pitch, no Volume, Same Instrument. 
   01F0 25 2A         [ 3]  239                     BCS      PLY_READTRACK_FULLOPTIMISATION 
   01F2 C0 20         [ 2]  240                     SUBb     #32                          ;0-31 = Wait. 
   01F4 25 31         [ 3]  241                     BCS      PLY_READTRACK_WAIT 
   01F6 27 20         [ 3]  242                     BEQ      PLY_READTRACK_NOOPTIMISATION_ESCAPECODE 
   01F8 5A            [ 2]  243                     DECb                                  ;0 (32-32) = Escape Code for more Notes (parameters will be read) 
                            244 ;Note. Parameters are present. But the note is only present if Note? flag is 1.
                            245 ;Read Parameters
   01F9                     246 PLY_READTRACK_READPARAMETERS: 
   01F9 A6 80         [ 6]  247                     LDA      ,X+ 
   01FB B7 C8 8B      [ 5]  248                     sta      tmp_track_param              ;Save Parameters. 
   01FE 85 80         [ 2]  249                     bita     #0h80                         ; is pitch following? -> load it 
   0200 27 04         [ 3]  250                     beq      PLY_READTRACK_PITCH_END 
   0202 EE 81         [ 8]  251                     ldu      ,x++ 
   0204 EF 2E         [ 6]  252                     stu      PLY_TRACK_PITCHADD,y 
   0206                     253 PLY_READTRACK_PITCH_END: 
   0206 85 20         [ 2]  254                     bita     #0h20                         ; is instrument following? -> load it 
   0208 27 25         [ 3]  255                     beq      do_continue_p_vol 
                            256 ; in a original parameter
                            257 ; use it to correct volume, if any
                            258 ; befor "destroying" a with instrument data
   020A 46            [ 2]  259                     RORA                                  ;Volume ? If bit 4(0?) was 1, then volume exists on b3-b0 - inverted volume 
   020B 24 04         [ 3]  260                     BCC      PLY_TRACK_SAMEVOLUME_2 
   020D 84 0F         [ 2]  261                     ANDA     #15
   020F A7 2B         [ 5]  262                     STA      PLY_TRACK_VOLUME , y 
   0211                     263 PLY_TRACK_SAMEVOLUME_2: 
   0211 A6 80         [ 6]  264                     LDA      ,X+ 
   0213 B7 C8 8C      [ 5]  265                     sta      tmp_track_instrument 
   0216 20 1E         [ 3]  266                     bra      do_continue_p_vol_done 
                            267 
   0218                     268 PLY_READTRACK_NOOPTIMISATION_ESCAPECODE: 
   0218 E6 80         [ 6]  269                     LDb      ,X+                          ; load note to B 
   021A 20 DD         [ 3]  270                     BRA      PLY_READTRACK_READPARAMETERS 
                            271 
                            272 ;---------  
   021C                     273 PLY_READTRACK_FULLOPTIMISATION: 
   021C AF 27         [ 6]  274                     STX      PLY_TRACK_PT, y 
   021E 4F            [ 2]  275                     clra                                  ; is param now, no need to save - accessed directly in full opt 
   021F C0 01         [ 2]  276                     SUBb     #0h1 
   0221 24 1C         [ 3]  277                     BCC      full_opt_note_given 
   0223 E6 80         [ 6]  278                     LDb      ,X+ 
                            279 ;cc_out_save_note
                            280                                                           ; no pitch 
                            281                                                           ; no vol 
                            282                                                           ; but certainly note 
   0225 20 18         [ 3]  283                     bra      full_opt_note_given 
                            284 
                            285 ;---------  
   0227                     286 PLY_READTRACK_WAIT: 
   0227 CB 20         [ 2]  287                     ADDb     #32 
   0229 1A 01         [ 3]  288                     ORCC     #1
   022B AF 27         [ 6]  289                     STX      PLY_TRACK_PT, y 
   022D 20 43         [ 3]  290                     bra      PLY_TRACK_NEWINSTRUMENT_SETWAIT 
                            291 
   022F                     292 do_continue_p_vol: 
                            293 ; in b now note - if any
                            294 ; in a original parameter
   022F 46            [ 2]  295                     RORA                                  ;Volume ? If bit 4(0?) was 1, then volume exists on b3-b0 - inverted volume 
   0230 24 04         [ 3]  296                     BCC      PLY_TRACK_SAMEVOLUME_1 
   0232 84 0F         [ 2]  297                     ANDA     #15
   0234 A7 2B         [ 5]  298                     STA      PLY_TRACK_VOLUME , y 
   0236                     299 PLY_TRACK_SAMEVOLUME_1: 
   0236                     300 do_continue_p_vol_done: 
                            301 ; in b current note
                            302 ; in tmp_b_instrument the current instrument number
                            303 ; in tmp_d_param, the parameters of the last read track info
                            304 ;76543210
                            305 ;pnivvvvo
                            306 ;
                            307 ;DB Parameters
                            308 ;p = New Pitch ?
                            309 ;n = Note ?
                            310 ;i = New Instrument ? Only tested if Note? = 1.
                            311 ;v = Inverted Volume if Volume?=1. %0000 if Volume? is off.
                            312 ;o = Volume ?
                            313 ;No Wait command. Can be a Note and/or Effects.
   0236 B6 C8 8B      [ 5]  314                     lda      tmp_track_param 
   0239 AF 27         [ 6]  315                     STX      PLY_TRACK_PT, y 
   023B 85 40         [ 2]  316                     bita     #0h40                         ;Note ? If no Note, we don't have to test if a new Instrument is here. 
   023D 27 31         [ 3]  317                     beq      PLY_TRACK_NONOTEGIVEN 
   023F                     318 full_opt_note_given: 
   023F EB 20         [ 5]  319                     ADDb     PLY_TRANSPOSITION, y         ;Transpose Note according to the Transposition in the Linker. 
   0241 E7 2A         [ 5]  320                     STb      PLY_TRACK_NOTE, y 
   0243 8E 00 00      [ 3]  321                     LDX      #0h0                          ;Reset the TrackPitch. 
   0246 AF 2C         [ 6]  322                     STX      PLY_TRACK_PITCH , y 
   0248 85 20         [ 2]  323                     bita     #0h20                         ;New Instrument ?; 
   024A 26 08         [ 3]  324                     bne      PLY_TRACK_NEWINSTRUMENT 
   024C AE 21         [ 6]  325                     LDX      PLY_TRACK_SAVEPTINSTRUMENT, y ;Same Instrument. We recover its address to restart it. 
   024E A6 25         [ 5]  326                     LDA      PLY_TRACK_INSTRUMENTSPEED, y ;Reset the Instrument Speed Counter. Never seemed useful... 
   0250 A7 26         [ 5]  327                     STA      PLY_TRACK_INSTRUMENTSPEEDCPT , y 
   0252 20 13         [ 3]  328                     BRA      PLY_TRACK_INSTRUMENTRESETPT 
                            329 
   0254                     330 PLY_TRACK_NEWINSTRUMENT:                                   ;New  Instrument. We have to get its new address, and Speed. 
   0254 4F            [ 2]  331                     clra     
   0255 F6 C8 8C      [ 5]  332                     ldb      tmp_track_instrument 
   0258 58            [ 2]  333                     LSLB     
   0259 49            [ 2]  334                     ROLA     
   025A BE C8 92      [ 6]  335                     LDX      PLY_TRACK_INSTRUMENTSTABLEPT 
   025D AE 8B         [ 9]  336                     ldx      d,x 
   025F A6 80         [ 6]  337                     lda      ,x+ 
   0261 A7 25         [ 5]  338                     STA      PLY_TRACK_INSTRUMENTSPEED , y 
   0263 A7 26         [ 5]  339                     STA      PLY_TRACK_INSTRUMENTSPEEDCPT , y 
   0265 AF 21         [ 6]  340                     STX      PLY_TRACK_SAVEPTINSTRUMENT, y ;When using the Instrument again, no need to give the Speed, it is skipped. ;WHEN USING THE INSTRUMENT AGAIN, NO NEED TO GIVE THE SPEED, IT IS SKIPPED. 
   0267                     341 PLY_TRACK_INSTRUMENTRESETPT: 
   0267 A6 80         [ 6]  342                     LDA      ,X+ 
   0269 27 03         [ 3]  343                     BEQ      noIntrumentRetrigger 
   026B B7 C8 96      [ 5]  344                     STA      PLY_PSGREG13_RETRIG 
   026E                     345 noIntrumentRetrigger: 
   026E AF 23         [ 6]  346                     STX      PLY_TRACK_INSTRUMENT, y 
   0270                     347 PLY_TRACK_NONOTEGIVEN: 
   0270 C6 01         [ 2]  348                     LDb      #0h1             
   0272                     349 PLY_TRACK_NEWINSTRUMENT_SETWAIT: 
   0272 E7 29         [ 5]  350                     STb      PLY_TRACK_WAITCOUNTER , y   
   0274                     351 PLY_TRACK_NEWINSTRUMENT_WAIT_CONT: 
   0274 31 A8 11      [ 5]  352                     leay     ArkosChannel, y 
   0277 10 8C C8 CF   [ 5]  353                     cmpy     #ChannelDataEnd 
   027B 10 26 FF 66   [ 6]  354                     lbne     readnextchannel 
   027F B6 C8 8F      [ 5]  355                     LDA      PLY_SPEED 
   0282 B7 C8 90      [ 5]  356                     STA      PLY_SPEEDCPT 
                            357 
                            358 
                            359 
                            360 
   0285                     361 PLY_SPEEDEND: 
   0285 CC C8 D8      [ 3]  362                     LDD      #PLY_PSGREGISTERSARRAY + 4 
   0288 FD C8 D2      [ 6]  363                     std      PLY_FREQ_REG 
   028B CC C8 DE      [ 3]  364                     ldd      #PLY_PSGREGISTERSARRAY + 10 
   028E FD C8 D0      [ 6]  365                     std      PLY_VOL_REG 
   0291 10 8E C8 BE   [ 4]  366                     LDY      #Channel3Data 
   0295                     367 playnextchannel: 
   0295                     368 _play_sound_track:
                            369 ;Play the Sound on Track 
                            370 ;-------------------------
                            371 ;Plays the sound on each frame, but only save the forwarded Instrument pointer when Instrument Speed is reached.
                            372 ;This is needed because TrackPitch is involved in the Software Frequency/Hardware Frequency calculation, and is calculated every frame.
   0295 EC 2C         [ 6]  373                     LDD      PLY_TRACK_PITCH, y 
   0297 E3 2E         [ 7]  374                     ADDD     PLY_TRACK_PITCHADD , y 
   0299 ED 2C         [ 6]  375                     STD      PLY_TRACK_PITCH , y 
                            376 ; arithmetic shift right D (halfing and preserving sign)
                            377 ; slow down pitch by quartering the current pitch
                            378 ; (after the add)
   029B 47            [ 2]  379                     ASRA     
   029C 56            [ 2]  380                     RORB     
   029D 47            [ 2]  381                     ASRA     
   029E 56            [ 2]  382                     RORB     
   029F 1F 03         [ 6]  383                     TFR      D,U                          ; U = (PLY_TRACK_PITCH/4) 
   02A1 AE 23         [ 6]  384                     LDX      PLY_TRACK_INSTRUMENT, y 
                            385 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            386 ; PLAY SOUND
                            387 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            388 ;Plays a sound stream.
                            389 ;X Pointer to Instrument Data
                            390 ;Y Pointer to track data
                            391 ; U current track pitch
                            392 ;RET=
                            393 ;X =New Instrument pointer.
                            394 ; data in track record is set
   02A3                     395 PLY_PLAYSOUND: 
                            396 ;instrument 
                            397 ;DB FirstByte
                            398 ;if b0=0, NON-HARD sound. If b0=1, HARD Sound.
   02A3 E6 80         [ 6]  399                     LDB      ,X+ 
   02A5 56            [ 2]  400                     RORB     
   02A6 25 65         [ 3]  401                     BCS      PLY_PS_HARD 
                            402 ;************       
                            403 ;SOFTWARE SOUND, b0 = 0       
                            404 ;************    
                            405 ;76543210
                            406 ;pavvvvn0
                            407 ;
                            408 ;p = Pitch?
                            409 ;a = Arpeggio?
                            410 ;v = Volume
                            411 ;n = Second Byte needed? Needed when Noise, or Manual frequency, or noise with no sound.
   02A8 56            [ 2]  412                     RORB                                  ; is b1 (n) set 
   02A9 25 2B         [ 3]  413                     BCS      PLY_PS_S_SECONDBYTENEEDED    ; if yes jump to read second byte 
   02AB 1F 98         [ 6]  414                     TFR      B,A                          ; for volume check copy the first byte to a 
   02AD 84 0F         [ 2]  415                     ANDA     #15
   02AF 26 0C         [ 3]  416                     BNE      PLY_PS_S_SOUNDON             ; if is 0 than no sound at all 
                            417                                                           ;Null Volume. It means no Sound. We stop the Sound, the Noise, and it's over. 
   02B1 A7 9F C8 D0   [ 9]  418                     STA      [PLY_VOL_REG]                ;We have to make the volume to 0, because if a bass Hard was activated before, we have to stop it. 
   02B5 86 09         [ 2]  419                     lda      #9                           ; these are the register mask bits for this sound (or this no sound) 
   02B7 A7 A8 10      [ 5]  420                     sta      PLY_TRACK_REG_7,y 
   02BA 7E 04 1D      [ 4]  421                     jmp      out_sound 
                            422 
                            423 ; A = volume
   02BD                     424 PLY_PS_S_SOUNDON: 
                            425 ; Volume is here, no Second Byte needed. It means we have a simple Software sound (Sound = On, Noise = Off)
                            426 ; We have to test Arpeggio and Pitch, however.
   02BD A0 2B         [ 5]  427                     SUBA     PLY_TRACK_VOLUME,y           ; tmp_volumeN ;Code Volume. volume of instrument minus inverted volume 
   02BF 24 01         [ 3]  428                     BCC      vol_not_null_1 
   02C1 4F            [ 2]  429                     CLRA     
   02C2                     430 vol_not_null_1: 
   02C2 A7 9F C8 D0   [ 9]  431                     STA      [PLY_VOL_REG] 
   02C6 86 08         [ 2]  432                     LDA      #8
   02C8 A7 A8 10      [ 5]  433                     sta      PLY_TRACK_REG_7,y 
   02CB 56            [ 2]  434                     RORB                                  ;Needed for the subroutine to get the good flags. 
   02CC 17 01 A3      [ 9]  435                     LBSR     PLY_PS_CALCULATEFREQUENCY 
                            436 ; in u frequency + pitch, in little endian order, ready to be written to psg
   02CF EF 9F C8 D2   [10]  437                     stu      [PLY_FREQ_REG] 
   02D3 7E 04 1D      [ 4]  438                     jmp      out_sound 
                            439 
   02D6                     440 PLY_PS_S_SECONDBYTENEEDED: 
   02D6 86 08         [ 2]  441                     LDA      #8
   02D8 A7 A8 10      [ 5]  442                     sta      PLY_TRACK_REG_7,y 
                            443 ; A second byte of instrument data
   02DB A6 80         [ 6]  444                     LDA      ,X+ 
   02DD 84 0F         [ 2]  445                     ANDA     #15
   02DF 27 06         [ 3]  446                     BEQ      PLY_PS_S_SBN_NONOISE 
   02E1 B7 C8 DA      [ 5]  447                     STA      PLY_PSGREG6 
   02E4 6F A8 10      [ 7]  448                     clr      PLY_TRACK_REG_7,y 
   02E7                     449 PLY_PS_S_SBN_NONOISE: 
   02E7 1F 98         [ 6]  450                     TFR      B,A 
   02E9 84 0F         [ 2]  451                     ANDA     #15
   02EB A0 2B         [ 5]  452                     SUBA     PLY_TRACK_VOLUME,y 
                            453                                                           ;CODE VOLUME. 
   02ED 24 01         [ 3]  454                     BCC      no_vol_underflow_1 
   02EF 4F            [ 2]  455                     CLRA     
   02F0                     456 no_vol_underflow_1: 
   02F0 A7 9F C8 D0   [ 9]  457                     STA      [PLY_VOL_REG] 
   02F4 A6 1F         [ 5]  458                     lda      -1,x 
   02F6 85 20         [ 2]  459                     bita     #32
   02F8 26 06         [ 3]  460                     BNE      PLY_PS_S_SBN_SOUND 
   02FA 6C A8 10      [ 7]  461                     inc      PLY_TRACK_REG_7,y 
   02FD 7E 04 1D      [ 4]  462                     jmp      out_sound 
                            463 
   0300                     464 PLY_PS_S_SBN_SOUND: 
   0300 56            [ 2]  465                     RORB                                  ;Needed for the subroutine to get the good flags. 
   0301 85 40         [ 2]  466                     bita     #64
   0303 17 01 61      [ 9]  467                     LBSR     PLY_PS_CALCULATEFREQUENCY_TESTMANUALFREQUENCY 
   0306 EF 9F C8 D2   [10]  468                     stu      [PLY_FREQ_REG]               ; set frequency - u gotton from above jsr 
   030A 7E 04 1D      [ 4]  469                     jmp      out_sound 
                            470 
                            471 ; u current track pitch
                            472 ; X is pointer to instrument
                            473 ; B = first byte of instrument + one ror
                            474 ;**********          
                            475 ;HARD SOUND          
                            476 ;**********          
   030D                     477 PLY_PS_HARD: 
                            478                                                           ;We don't set the Volume to 16 now because we may have reached the end of the sound ! 
   030D 56            [ 2]  479                     RORB                                  ;Test Retrig here, it is common to every Hard sounds. 
   030E 24 0D         [ 3]  480                     BCC      PLY_PS_HARD_NORETRIG 
                            481 ;Retrig only if it is the first step in this line of Instrument !
   0310 B6 C8 A1      [ 5]  482                     LDA      Channel1Data + PLY_TRACK_INSTRUMENTSPEED ; forced first channel pointer 
   0313 B1 C8 A2      [ 5]  483                     CMPA     Channel1Data + PLY_TRACK_INSTRUMENTSPEEDCPT ; forced first channel pointer 
   0316 26 05         [ 3]  484                     BNE      PLY_PS_HARD_NORETRIG 
   0318 86 FE         [ 2]  485                     lda      #PLY_RETRIGVALUE 
   031A B7 C8 96      [ 5]  486                     STA      PLY_PSGREG13_RETRIG 
   031D                     487 PLY_PS_HARD_NORETRIG: 
                            488                                                           ; Test bit 1 of B Use BITB 
   031D C5 02         [ 2]  489                     bitb     #2                          ;WE DON'T SHIFT THE BITS, SO THAT WE CAN USE THE SAME CODE (FREQUENCY CALCULATION) SEVERAL TIMES. 
   031F 10 26 00 A2   [ 6]  490                     LBNE     PLY_PS_HARD_LOOPORINDEPENDENT 
   0323 86 10         [ 2]  491                     lda      #0h10 
   0325 A7 9F C8 D0   [ 9]  492                     STA      [PLY_VOL_REG] 
   0329 86 08         [ 2]  493                     lda      #8
   032B A7 A8 10      [ 5]  494                     sta      PLY_TRACK_REG_7,y 
   032E A6 80         [ 6]  495                     lda      ,x+ 
                            496 ;Second Byte :
                            497 ;76543210
                            498 ;nssscccc;
                            499 ;
                            500 ;n = Noise ?
                            501 ;s = Inverted Shift (7 - Editor Shift)
                            502 ;c = Hardware Enveloppe
   0330 B7 C8 8D      [ 5]  503                     sta      tmp_instrument_second_byte   ;Get the Hardware Envelope waveform. 
   0333 84 0F         [ 2]  504                     ANDA     #15
   0335 B7 C8 CF      [ 5]  505                     STA      PLY_PSGREG13 
                            506                                                           ; Test bit 0 of B Use BITA or BITB 
   0338 C5 01         [ 2]  507                     bitb     #1
   033A 27 4F         [ 3]  508                     BEQ      PLY_PS_HARDWAREDEPENDENT 
                            509 ;upon entry in  
                            510 ; x instrumentpointer after second byte of current data
                            511 ; a = second byte (also in tmp_instrument_second_byte)
                            512 ; b = first byte ror *2
                            513 ; y = pointer to current frequency register of channel 
                            514 ; u = current track pitch
                            515 ;************        
                            516 ;SOFTWARE DEP        
                            517 ;************        
                            518                                                           ;MANUAL FREQUENCY ? -2 BECAUSE THE BYTE HAS BEEN SHIFTED PREVIOUSLY. 
   033C C5 04         [ 2]  519                     bitb     #4
   033E BD 04 67      [ 8]  520                     JSR      PLY_PS_CALCULATEFREQUENCY_TESTMANUALFREQUENCY 
                            521                                                           ; in u current frequency in little endian format, ready to be written to PSG 
   0341 EF 9F C8 D2   [10]  522                     stu      [PLY_FREQ_REG] 
                            523                                                           ; check for HW pitch and remember 
   0345 C5 20         [ 2]  524                     BITB     #32
   0347 34 01         [ 6]  525                     pshs     cc 
   0349 F6 C8 8D      [ 5]  526                     LDb      tmp_instrument_second_byte   ;0 reload second byte of current instrument data 
                            527 ; encoded in bit 4 - 6 shift 3 times -> *2
                            528 ; shift is stored in inverse, 7 - shift
   034C 54            [ 2]  529                     LSRb     
   034D 54            [ 2]  530                     LSRb     
   034E 54            [ 2]  531                     LSRb     
   034F C4 0E         [ 2]  532                     ANDb     #14                         ; blend out all other data 
   0351 4F            [ 2]  533                     clra     
   0352 C3 03 5B      [ 4]  534                     addd     #PLY_PS_SD_SHIFT_ADREESS 
   0355 1E 30         [ 8]  535                     exg      u,d                          ; shifts only possible with u->D 
   0357 1E 89         [ 8]  536                     exg      a,b                          ; to big endian 
   0359 6E C4         [ 3]  537                     jmp      ,u 
                            538 
   035B                     539 PLY_PS_SD_SHIFT_ADREESS: 
   035B 44            [ 2]  540                     LSRA     
   035C 56            [ 2]  541                     RORB     
   035D 44            [ 2]  542                     LSRA     
   035E 56            [ 2]  543                     RORB     
   035F 44            [ 2]  544                     LSRA     
   0360 56            [ 2]  545                     RORB     
   0361 44            [ 2]  546                     LSRA     
   0362 56            [ 2]  547                     RORB     
   0363 44            [ 2]  548                     LSRA     
   0364 56            [ 2]  549                     RORB     
   0365 44            [ 2]  550                     LSRA     
   0366 56            [ 2]  551                     RORB     
   0367 44            [ 2]  552                     LSRA     
   0368 56            [ 2]  553                     RORB     
   0369 24 03         [ 3]  554                     BCC      no_shift_carry_sd 
   036B C3 00 01      [ 4]  555                     addd     #1 
   036E                     556 no_shift_carry_sd: 
                            557 ; in d now frequency software, shifted X times, in big endian order
                            558 ;Hardware Pitch ?
   036E 35 01         [ 6]  559                     puls     cc 
   0370 27 02         [ 3]  560                     BEQ      PLY_PS_SD_NOHARDWAREPITCH 
                            561 ;Get Pitch and add it to the just calculated Hardware Frequency.
   0372 E3 81         [ 9]  562                     addd     ,x++ 
   0374                     563 PLY_PS_SD_NOHARDWAREPITCH: 
   0374 1E 89         [ 8]  564                     exg      a,b                          ; correct endianness of calculated frequency to little endian for PSG poke 
   0376 FD C8 DF      [ 6]  565                     STD      PLY_PSGREG11 
   0379                     566 PLY_PS_SD_NOISE: 
   0379 B6 C8 8D      [ 5]  567                     lda      tmp_instrument_second_byte   ; second byte of instrument reloaded 
   037C 85 80         [ 2]  568                     BITA     #128                         ; any noise? 
   037E 27 08         [ 3]  569                     BEQ      ret_nla_here 
   0380 A6 80         [ 6]  570                     LDA      ,X+ 
   0382 B7 C8 DA      [ 5]  571                     STA      PLY_PSGREG6 
   0385 6F A8 10      [ 7]  572                     clr      PLY_TRACK_REG_7,y 
   0388                     573 ret_nla_here: 
                            574 ; NOTE:
                            575 ; y is not set to point to psg registers anymore - 
                            576 ; but at this point is not needed anymore
                            577 ;        RTS    
   0388 7E 04 1D      [ 4]  578                     jmp      out_sound 
                            579 
                            580 ;upon entry in  
                            581 ; x instrumentpointer after second byte of current data
                            582 ; a = second byte (also in tmp_instrument_second_byte)
                            583 ; b = first byte ror *2
                            584 ; y = pointer to current frequency register of channel 
                            585 ; u = current track pitch
                            586 ;************       
                            587 ;HARDWARE DEP       
                            588 ;************       
   038B                     589 PLY_PS_HARDWAREDEPENDENT: 
                            590                                                           ;MANUAL HARDWARE FREQUENCY ? -2 BECAUSE THE BYTE HAS BEEN SHIFTED PREVIOUSLY. 
   038B C5 04         [ 2]  591                     bitb     #4
   038D BD 04 67      [ 8]  592                     jsr      PLY_PS_CALCULATEFREQUENCY_TESTMANUALFREQUENCY 
                            593                                                           ; in u current frequency in little endian format, ready to be written to PSG 
   0390 FF C8 DF      [ 6]  594                     STU      PLY_PSGREG11                 ;CODE HARDWARE FREQUENCY. 
                            595 ; test for softwarepitch and remember result (we lose b below, an save a reload - save? puls push???)
   0393 C5 20         [ 2]  596                     BITB     #32
   0395 34 01         [ 6]  597                     pshs     cc 
   0397 F6 C8 8D      [ 5]  598                     ldb      tmp_instrument_second_byte   ;0 reload second byte of current instrument data 
                            599 ;Second Byte :
                            600 ;76543210
                            601 ;nssscccc
                            602 ;
                            603 ;n = Noise ?
                            604 ;s = Inverted Shift (7 - Editor Shift)
                            605 ;c = Hardware Enveloppe
                            606 ; encoded in bit 4 - 6 shift 3 times -> *2
                            607 ; shift is stored in inverse, 7 - shift
   039A 54            [ 2]  608                     LSRb     
   039B 54            [ 2]  609                     LSRb     
   039C 54            [ 2]  610                     LSRb     
   039D C4 0E         [ 2]  611                     ANDb     #14
   039F 4F            [ 2]  612                     clra     
   03A0 C3 03 A9      [ 4]  613                     addd     #PLY_PS_HD_SHIFT_ADREESS 
   03A3 1E 30         [ 8]  614                     exg      u,d                          ; shifts only possible with u->D 
   03A5 1E 89         [ 8]  615                     exg      a,b                          ; to big endian 
   03A7 6E C4         [ 3]  616                     jmp      ,u 
                            617 
   03A9                     618 PLY_PS_HD_SHIFT_ADREESS: 
   03A9 58            [ 2]  619                     ASLB     
   03AA 49            [ 2]  620                     ROLA     
   03AB 58            [ 2]  621                     ASLB     
   03AC 49            [ 2]  622                     ROLA     
   03AD 58            [ 2]  623                     ASLB     
   03AE 49            [ 2]  624                     ROLA     
   03AF 58            [ 2]  625                     ASLB     
   03B0 49            [ 2]  626                     ROLA     
   03B1 58            [ 2]  627                     ASLB     
   03B2 49            [ 2]  628                     ROLA     
   03B3 58            [ 2]  629                     ASLB     
   03B4 49            [ 2]  630                     ROLA     
   03B5 58            [ 2]  631                     ASLB     
   03B6 49            [ 2]  632                     ROLA     
                            633 ; in d the shifted frequency in big endian format
                            634 ; software pitch configured?
   03B7 35 01         [ 6]  635                     puls     cc 
   03B9 27 02         [ 3]  636                     BEQ      PLY_PS_HD_NOSOFTWAREPITCH 
                            637 ;Get Pitch and add it to the just calculated Hardware Frequency.
   03BB E3 81         [ 9]  638                     addd     ,x++ 
   03BD                     639 PLY_PS_HD_NOSOFTWAREPITCH: 
   03BD 1E 89         [ 8]  640                     exg      a,b                          ; correct endianness of calculated frequency to little endian for PSG poke 
   03BF ED 9F C8 D2   [10]  641                     std      [PLY_FREQ_REG] 
   03C3 20 B4         [ 3]  642                     bra      PLY_PS_SD_NOISE 
                            643 
   03C5                     644 PLY_PS_HARD_LOOPORINDEPENDENT: 
                            645                                                           ;Test bit 0 of B Use BITA or BITB 
   03C5 C5 01         [ 2]  646                     BITB     #1
   03C7 27 05         [ 3]  647                     BEQ      PLY_PS_INDEPENDENT 
   03C9 AE 84         [ 5]  648                     ldx      ,x 
   03CB 7E 02 A3      [ 4]  649                     jmp      PLY_PLAYSOUND 
                            650 
                            651 ; u current track pitch
                            652 ; X is pointer to instrument
                            653 ; B = first byte of instrument + 2 ror
                            654 ;***********        
                            655 ;INDEPENDENT        
                            656 ;***********        
                            657 ; in b shifted twice:
                            658 ;------------------
                            659 ;76543210
                            660 ;spam10r1
                            661 ;
                            662 ;After shifting (done twice):
                            663 ;76543210
                            664 ;--spam10		(spam, ahah).
                            665 ;
                            666 ;
                            667 ;s = Sound ? If Sound? = 0, no need to take care of Software Manual Frequency, Pitch and Arpeggio.
                            668 ;m = Manual Frequency? (if 1, Arpeggio and Pitch not read). Manual Frequency can only be present if Sound? = 1.
                            669 ;a = Arpeggio?
                            670 ;p = Pitch?
                            671 ;r = Retrig?
   03CE                     672 PLY_PS_INDEPENDENT: 
   03CE 86 10         [ 2]  673                     lda      #0h10 
   03D0 A7 9F C8 D0   [ 9]  674                     STA      [PLY_VOL_REG] 
                            675 ;        Test bit 7-2 of B  
   03D4 C5 20         [ 2]  676                     BITB     #32
   03D6 26 07         [ 3]  677                     BNE      PLY_PS_I_SOUNDON 
   03D8 86 09         [ 2]  678                     lda      #9
   03DA A7 A8 10      [ 5]  679                     sta      PLY_TRACK_REG_7,y 
   03DD 20 15         [ 3]  680                     BRA      PLY_PS_I_SKIPSOFTWAREFREQUENCYCALCULATION 
                            681 
   03DF                     682 PLY_PS_I_SOUNDON: 
   03DF 86 08         [ 2]  683                     lda      #8
   03E1 A7 A8 10      [ 5]  684                     sta      PLY_TRACK_REG_7,y 
                            685 ; hardare calculation expects one frequency calculation already being done -> u than is little endian!
   03E4 1E 03         [ 8]  686                     exg      d,u 
   03E6 1E 89         [ 8]  687                     exg      a,b 
   03E8 1E 03         [ 8]  688                     exg      d,u 
   03EA A6 2A         [ 5]  689                     LDA      PLY_TRACK_NOTE,y 
                            690 ;        Test bit 4-2 of B Use BITA or BITB   
   03EC C5 04         [ 2]  691                     BITB     #4
   03EE 8D 77         [ 7]  692                     bsr      PLY_PS_CALCULATEFREQUENCY_TESTMANUALFREQUENCY 
                            693                                                           ; in u current frequency in little endian format, ready to be written to PSG 
   03F0 EF 9F C8 D2   [10]  694                     stu      [PLY_FREQ_REG]               ; write software note with its frequency to PSG 
   03F4                     695 PLY_PS_I_SKIPSOFTWAREFREQUENCYCALCULATION: 
                            696 ; load second byte of independend instrument data
                            697 ; B after load = :
                            698 ;76543210
                            699 ;npamcccc
                            700 ;
                            701 ;n = Noise ?
                            702 ;p = Hardware Pitch?
                            703 ;a = Hardware Arpeggio?
                            704 ;m = Manual Hardware Frequency? (if 1, Arpeggio and Pitch not read).
                            705 ;c = Hardware Enveloppe
   03F4 E6 80         [ 6]  706                     LDB      ,X+ 
   03F6 1F 98         [ 6]  707                     TFR      B,A 
   03F8 84 0F         [ 2]  708                     ANDA     #15
   03FA B7 C8 CF      [ 5]  709                     STA      PLY_PSGREG13 
   03FD 56            [ 2]  710                     RORB     
   03FE 56            [ 2]  711                     RORB     
   03FF 1E 03         [ 8]  712                     exg      d,u 
   0401 1E 89         [ 8]  713                     exg      a,b 
   0403 1E 03         [ 8]  714                     exg      d,u 
                            715                                                           ;MANUAL HARDWARE FREQUENCY ? -2 BECAUSE THE BYTE HAS BEEN SHIFTED PREVIOUSLY. 
   0405 C5 04         [ 2]  716                     BITB     #4
   0407 8D 5E         [ 7]  717                     bsr      PLY_PS_CALCULATEFREQUENCY_TESTMANUALFREQUENCY 
                            718                                                           ; b stays the same during frequency test 
                            719                                                           ; in u current frequency in little endian format, ready to be written to PSG 
   0409 FF C8 DF      [ 6]  720                     STu      PLY_PSGREG11                 ;CODE HARDWARE FREQUENCY. 
   040C C5 20         [ 2]  721                     BITB     #32
   040E 27 0D         [ 3]  722                     BEQ      outahere_1 
   0410 A6 80         [ 6]  723                     LDA      ,X+ 
   0412 B7 C8 DA      [ 5]  724                     STA      PLY_PSGREG6 
   0415 A6 A8 10      [ 5]  725                     lda      PLY_TRACK_REG_7,y 
   0418 84 F7         [ 2]  726                     anda     #247 ; %11110111 
   041A A7 A8 10      [ 5]  727                     sta      PLY_TRACK_REG_7,y 
   041D                     728 outahere_1: 
   041D                     729 out_sound: 
                            730 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   041D 6A 26         [ 7]  731                     dec      PLY_TRACK_INSTRUMENTSPEEDCPT , y 
   041F 26 06         [ 3]  732                     BNE      PLY_TRACK_PLAYNOFORWARD 
   0421 AF 23         [ 6]  733                     STX      PLY_TRACK_INSTRUMENT , y 
   0423 A6 25         [ 5]  734                     LDA      PLY_TRACK_INSTRUMENTSPEED , y 
   0425 A7 26         [ 5]  735                     STA      PLY_TRACK_INSTRUMENTSPEEDCPT , y 
   0427                     736 PLY_TRACK_PLAYNOFORWARD: 
   0427 31 A8 EF      [ 5]  737                     leay     -ArkosChannel, y 
   042A 10 8C C8 8B   [ 5]  738                     cmpy     #Channel1Data-ArkosChannel 
   042E 27 15         [ 3]  739                     beq      doneplaying 
   0430 FC C8 D2      [ 6]  740                     ldd      PLY_FREQ_REG 
   0433 83 00 02      [ 4]  741                     subd     #2 
   0436 FD C8 D2      [ 6]  742                     std      PLY_FREQ_REG 
   0439 FC C8 D0      [ 6]  743                     ldd      PLY_VOL_REG 
   043C 83 00 01      [ 4]  744                     subd     #1 
   043F FD C8 D0      [ 6]  745                     std      PLY_VOL_REG 
   0442 7E 02 95      [ 4]  746                     jmp      playnextchannel 
                            747 
   0445                     748 doneplaying: 
   0445 B6 C8 CE      [ 5]  749                     lda      PLY_TRACK_REG_7 +Channel3Data 
   0448 48            [ 2]  750                     ASLA     
   0449 BA C8 BD      [ 5]  751                     ORA      PLY_TRACK_REG_7 +Channel2Data 
   044C 49            [ 2]  752                     ROLA     
   044D BA C8 AC      [ 5]  753                     ORA      PLY_TRACK_REG_7 +Channel1Data 
                            754 ;SEND THE REGISTERS TO PSG.
   0450                     755 PLY_SENDREGISTERS: 
                            756 ;A=REGISTER 7       
   0450 B7 C8 DB      [ 5]  757 					sta      PLY_PSGREG0 + 7
   0453 B6 C8 CF      [ 5]  758                     lda      PLY_PSGREG13 
   0456 B1 C8 96      [ 5]  759                     CMPA     PLY_PSGREG13_RETRIG          ;IF ISRETRIG?, FORCE THE R13 TO BE TRIGGERED. 
   0459 27 0B         [ 3]  760                     BEQ      backFromPlayer 
   045B B7 C8 96      [ 5]  761                     STA      PLY_PSGREG13_RETRIG 
   045E B7 C8 E1      [ 5]  762 					sta      PLY_PSGREG0 + 13
                            763 ; destroy shadow - otherwise 13 on same is not retriggered
   0461 86 FF         [ 2]  764                     lda      #0hff 
   0463 B7 C8 0D      [ 5]  765                     sta      Vec_Snd_Shadow+13 
   0466                     766 backFromPlayer: 
   0466 39            [ 5]  767                     RTS      
                            768 
                            769 ;Subroutine that =
                            770 ;If Manual Frequency? (Flag Z off), read frequency (Word) and adds the TrackPitch.
                            771 ;Else, Auto Frequency.
                            772 ;	if Arpeggio? = 1 (bit 3 from B), read it (Byte).
                            773 ;	if Pitch? = 1 (bit 4 from B), read it (Word).
                            774 ;	Calculate the frequency according to the Note + Arpeggio + TrackPitch.
                            775 ; U track pitch
                            776 ; X pointer to instrument data
                            777 ;
                            778 ;RET=
                            779 ;X = Instrument pointer.
                            780 ;u current frequency in little endian order, ready to be written to psg
                            781 ; y,b stays same
   0467                     782 PLY_PS_CALCULATEFREQUENCY_TESTMANUALFREQUENCY: 
   0467 27 09         [ 3]  783                     BEQ      PLY_PS_CALCULATEFREQUENCY 
                            784 ;Manual Frequency. We read it, no need to read Pitch and Arpeggio.
                            785 ;However, we add TrackPitch to the read Frequency, and that's all.
   0469 1E 30         [ 8]  786                     exg      u,d 
   046B E3 81         [ 9]  787                     addd     ,X++ 
   046D 1E 89         [ 8]  788                     exg      a,b                          ; switching endian anyway because PSG regs are sortof little endian 
   046F 1E 30         [ 8]  789                     exg      u,d 
   0471 39            [ 5]  790                     RTS      
                            791 
                            792 ; in tmp_de all pitches together
                            793 ; pitch is a frequency modifier
                            794 ; arepgio is also a frequency modifier but indirect thru a note change
                            795 ;X Pointer to Instrument Data
                            796 ;U current track pitch
                            797 ;B = first byte of instrument data (ROR *3) (when from SOFTWARE SOUND)
                            798 ;Note (tmp_noteVolumne)
                            799 ;Inverted Volume (tmp_noteVolumne)
                            800 ;RET=
                            801 ;X = Instrument pointer.
                            802 ;u current frequency in little endian order, ready to be written to psg
                            803 ; y,b stays same
   0472                     804 PLY_PS_CALCULATEFREQUENCY: 
                            805 ; test for arpegio for later use
   0472 C5 08         [ 2]  806                     bitb     #8 
   0474 34 05         [ 7]  807                     pshs     cc, b 
                            808 ; Pitch ?
                            809 ; Test bit 5-1 of B Use BITA or BITB  
   0476 C5 10         [ 2]  810                     bitb     #16
   0478 27 04         [ 3]  811                     BEQ      PLY_PS_S_SOUNDON_NOPITCH 
   047A EC 81         [ 8]  812                     LDD      ,X++ 
   047C 33 CB         [ 8]  813                     leau     d,u 
   047E                     814 PLY_PS_S_SOUNDON_NOPITCH: 
                            815 ;Arpeggio ?
   047E E6 2A         [ 5]  816                     LDb      PLY_TRACK_NOTE,y 
   0480 35 01         [ 6]  817                     puls     cc                           ; reuse arpegio test from above 
   0482 27 08         [ 3]  818                     BEQ      PLY_PS_S_SOUNDON_ARPEGGIOEND 
   0484 EB 80         [ 6]  819                     ADDb     ,X+                          ;ADD ARPEGGIO TO NOTE. 
   0486 C1 90         [ 2]  820                     CMPb     #144                         ; was max note reached? 
   0488 25 02         [ 3]  821                     BCS      no_max_appegio 
   048A C6 8F         [ 2]  822                     LDb      #143                         ; if so set max note 
   048C                     823 no_max_appegio:
   048C                     824 PLY_PS_S_SOUNDON_ARPEGGIOEND: 
   048C 4F            [ 2]  825                     clra     
                            826                                                           ; in d now the note inclusive the arpegio 
                            827                     
   048D 58            [ 2]  828                     LSLB                                  ; for pointer in table double it 
   048E 49            [ 2]  829                     ROLA     
   048F C3 04 9D      [ 4]  830                     addd     #PLY_FREQUENCYTABLE 
   0492 1E 30         [ 8]  831                     exg      u,d 
   0494 E3 C4         [ 6]  832                     addd     ,u 
   0496 1E 89         [ 8]  833                     exg      a,b                          ; switching en dian anyway because PSG regs are sortof little endian 
   0498 1F 03         [ 6]  834                     tfr      d,u 
   049A 35 84         [ 7]  835                     puls     b, pc 
   049C 39            [ 5]  836                     RTS      
                            837 
   049D                     838 PLY_FREQUENCYTABLE: 
                            839 ; Vectrex
                            840 ; generated by using a PSG divider 16 and 1500000 Hz
   049D 0F FF 0F FF 0F FF   841                     .dw       4095 ,4095 ,4095,4095,4095,4095,4054,3827,3612,3409,3218 ,3037 
        0F FF 0F FF 0F FF
        0F D6 0E F3 0E 1C
        0D 51 0C 92 0B DD
   04B5 0B 33 0A 92 09 FA   842                     .dw       2867 ,2706,2554,2411,2275,2148,2027,1913,1806,1705,1609,1519 
        09 6B 08 E3 08 64
        07 EB 07 79 07 0E
        06 A9 06 49 05 EF
   04CD 05 99 05 49 04 FD   843                     .dw       1433,1353,1277,1205,1138,1074,1014,957,903,852,804,759 
        04 B5 04 72 04 32
        03 F6 03 BD 03 87
        03 54 03 24 02 F7
   04E5 02 CD 02 A4 02 7E   844                     .dw       717,676,638,603,569,537,507,478,451,426,402,380 
        02 5B 02 39 02 19
        01 FB 01 DE 01 C3
        01 AA 01 92 01 7C
   04FD 01 66 01 52 01 3F   845                     .dw       358,338,319,301,284,268,253,239,226,213,201,190 
        01 2D 01 1C 01 0C
        00 FD 00 EF 00 E2
        00 D5 00 C9 00 BE
   0515 00 B3 00 A9 00 A0   846                     .dw       179,169,160,151,142,134,127,120,113,107,101,95 
        00 97 00 8E 00 86
        00 7F 00 78 00 71
        00 6B 00 65 00 5F
   052D 00 5A 00 55 00 50   847                     .dw       90,85,80,75,71,67,63,60,56,53,50,47 
        00 4B 00 47 00 43
        00 3F 00 3C 00 38
        00 35 00 32 00 2F
   0545 00 2D 00 2A 00 28   848                     .dw       45,42,40,38,36,34,32,30,28,27,25,24 
        00 26 00 24 00 22
        00 20 00 1E 00 1C
        00 1B 00 19 00 18
   055D 00 16 00 15 00 14   849                     .dw       22,21,20,19,18,17,16,15,14,13,13,12 
        00 13 00 12 00 11
        00 10 00 0F 00 0E
        00 0D 00 0D 00 0C
   0575 00 0B 00 0B 00 0A   850                     .dw       11,11,10,9,9,8,8,7,7,7,6,6 
        00 09 00 09 00 08
        00 08 00 07 00 07
        00 07 00 06 00 06
   058D 00 06 00 06 00 06   851                     .dw       6,6,6,5,5,5,4,4,4,4,4,3 
        00 05 00 05 00 05
        00 04 00 04 00 04
        00 04 00 04 00 03
   05A5 00 04 00 03 00 03   852                     .dw       4,3,3,3,3,3,2,2,2,2,2,2 
        00 03 00 03 00 03
        00 02 00 02 00 02
        00 02 00 02 00 02
                            853 ; use this to compare generated YM files with tracker
                            854 ; CPC
                            855 ;                    dw       3822,3608,3405,3214,3034,2863,2703,2551,2408,2273,2145,2025 
                            856 ;                    dw       1911,1804,1703,1607,1517,1432,1351,1276,1204,1136,1073,1012 
                            857 ;                    dw       956,902,851,804,758,716,676,638,602,568,536,506 
                            858 ;                    dw       478,451,426,402,379,358,338,319,301,284,268,253 
                            859 ;                    dw       239,225,213,201,190,179,169,159,150,142,134,127 
                            860 ;                    dw       119,113,106,100,95,89,84,80,75,71,67,63 
                            861 ;                    dw       60,56,53,50,47,45,42,40,38,36,34,32 
                            862 ;                    dw       30,28,27,25,24,22,21,20,19,18,17,16 
                            863 ;                    dw       15,14,13,13,12,11,11,10,9,9,8,8 
                            864 ;                    dw       7,7,7,6,6,6,5,5,5,4,4,4 
                            865 ;                    dw       4,4,3,3,3,3,3,2,2,2,2,2 
                            866 ;                    dw       2,2,2,2,1,1,1,1,1,1,1,1 
                            867 ;*******************
                            868 ; in u address of song 
                            869 	.globl  PLY_INIT
   05BD                     870 PLY_INIT: 
                            871 ;Header
                            872 ;------
                            873 ;DB "AT10"
                            874 ;DB SampleChannel (1,2,3)
                            875 ;DB*3 YM Clock (little endian. 1000000=CPC, 1750000=Pentagon 128K, 1773400=ZX Spectrum/MSX, 2000000=Atari ST, or any other in case of custom frequency).
                            876 ;DB ReplayFrequency(0=13hz,1=25hz,2=50hz,3=100hz,4=150hz,5=300hz)
                            877 ;DB Speed (>=1)
                            878 ;dw Instruments Chunk Size (not including this Word)
                            879 ;
                            880 ;{
                            881 ;    dw Pointers on Instruments
                            882 ;} * nbInstruments
                            883 ;
                            884 ;{
                            885 ;    ds InstrumentData (see the Instrument structure below)
                            886 ;} * nbInstruments
                            887 ; Linker...
                            888 ; vectrex conversion skips the 9 "header" bytes and we start of directly at SPEED
   05BD                     889 initCodeModifications: 
                            890 ; these inits are by the original player "inherent"
                            891 ; since it uses selfmodifying code and the
                            892 ; init values are present in the code itself
   05BD 8E C8 8B      [ 3]  893                     ldx      #arkosPlayerMemStart 
   05C0 CC 00 58      [ 3]  894                     ldd      #(arkosPlayerMemEnd-arkosPlayerMemStart+1) 
   05C3 BD F5 48      [ 8]  895                     jsr      Clear_x_d 
   05C6 CC 01 01      [ 3]  896                     ldd      #0h0101 
   05C9 FD C8 90      [ 6]  897                     std      PLY_SPEEDCPT 
   05CC FD C8 8E      [ 6]  898                     std      PLY_HEIGHT 
   05CF B7 C8 A2      [ 5]  899                     sta      Channel1Data+PLY_TRACK_INSTRUMENTSPEEDCPT 
   05D2 B7 C8 B3      [ 5]  900                     sta      Channel2Data+PLY_TRACK_INSTRUMENTSPEEDCPT 
   05D5 B7 C8 C4      [ 5]  901                     sta      Channel3Data+PLY_TRACK_INSTRUMENTSPEEDCPT 
   05D8 86 06         [ 2]  902                     lda      #6 
   05DA B7 C8 A1      [ 5]  903                     sta      Channel1Data+PLY_TRACK_INSTRUMENTSPEED 
   05DD B7 C8 B2      [ 5]  904                     sta      Channel2Data+PLY_TRACK_INSTRUMENTSPEED 
   05E0 B7 C8 C3      [ 5]  905                     sta      Channel3Data+PLY_TRACK_INSTRUMENTSPEED 
   05E3 86 FE         [ 2]  906                     lda      #PLY_RETRIGVALUE 
   05E5 B7 C8 96      [ 5]  907                     sta      PLY_PSGREG13_RETRIG 
                            908 ; no the player init
   05E8 A6 C0         [ 6]  909                     lda      ,u+ 
   05EA B7 C8 8F      [ 5]  910                     sta      PLY_SPEED                    ;Copy Speed. 
   05ED EC C1         [ 8]  911                     ldd      ,u++                         ;Get Instruments chunk size. 
   05EF FF C8 92      [ 6]  912                     stu      PLY_TRACK_INSTRUMENTSTABLEPT 
   05F2 33 CB         [ 8]  913                     leau     d,u                          ;Skip Instruments to go to the Linker address. 
                            914                                                           ;Get the pre-Linker information of the first pattern. 
                            915 ;Pre-Linker
                            916 ;----------
                            917 ;First comes a unique bloc, just before the real Linker, and only used at the initialisation of the song. It is used to optimise the Looping of the song.
                            918 ;
                            919 ;DB First Height
                            920 ;DB Transposition1
                            921 ;DB Transposition2
                            922 ;DB Transposition3
                            923 ;DW Special Track
                            924 ;after that the first pattern starts...
   05F4 EC C1         [ 8]  925                     ldd     ,u++
   05F6 B7 C8 8E      [ 5]  926                     sta      PLY_HEIGHT 
   05F9 F7 C8 9C      [ 5]  927                     stb      Channel1Data + PLY_TRANSPOSITION 
   05FC EC C1         [ 8]  928                     ldd      ,u++
   05FE B7 C8 AD      [ 5]  929                     sta      Channel2Data + PLY_TRANSPOSITION 
   0601 F7 C8 BE      [ 5]  930                     stb      Channel3Data + PLY_TRANSPOSITION 
   0604 EC C1         [ 8]  931                     ldd      ,u++ 
   0606 FD C8 97      [ 6]  932                     std      PLY_SAVESPECIALTRACK 
                            933 ;Store the Linker address.
   0609 FF C8 94      [ 6]  934                     STu      PLY_LINKER_PT 
   060C 86 FF         [ 2]  935                     lda      #0hff                         ; make sure the hardware envelope is in an "unkown" state 
   060E B7 C8 CF      [ 5]  936                     STA      PLY_PSGREG13 
                            937 ;Set the Instruments pointers to Instrument 0 data (Header has to be skipped).
   0611 BE C8 92      [ 6]  938                     LDX      PLY_TRACK_INSTRUMENTSTABLEPT 
   0614 AE 84         [ 5]  939                     ldx      ,x 
                            940                                                           ;Skip Instrument 0 Header. 
   0616 30 02         [ 5]  941                     leax     2,x 
   0618 BF C8 9F      [ 6]  942                     STX      Channel1Data + PLY_TRACK_INSTRUMENT 
   061B BF C8 B0      [ 6]  943                     STX      Channel2Data + PLY_TRACK_INSTRUMENT 
   061E BF C8 C1      [ 6]  944                     STX      Channel3Data + PLY_TRACK_INSTRUMENT 
   0621 39            [ 5]  945                     RTS      
                            946 
   0622                     947 PLY_STOP: 
   0622 CC 00 00      [ 3]  948                     ldd      #00 
   0625 FD C8 DC      [ 6]  949                     std      PLY_PSGREG8 
   0628 FD C8 DD      [ 6]  950                     std      PLY_PSGREG9 
   062B FD C8 DE      [ 6]  951                     std      PLY_PSGREG10 
   062E 86 3F         [ 2]  952                     lda      #63  ; %00111111 
   0630 7E 04 50      [ 4]  953                     jmp      PLY_SENDREGISTERS 
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$arkosPlayer$     000C GR  |   3 A$arkosPlayer$     000F GR
  3 A$arkosPlayer$     0011 GR  |   3 A$arkosPlayer$     0012 GR
  3 A$arkosPlayer$     0014 GR  |   3 A$arkosPlayer$     0016 GR
  3 A$arkosPlayer$     0018 GR  |   3 A$arkosPlayer$     0019 GR
  3 A$arkosPlayer$     001A GR  |   3 A$arkosPlayer$     001C GR
  3 A$arkosPlayer$     001E GR  |   3 A$arkosPlayer$     0021 GR
  3 A$arkosPlayer$     0022 GR  |   3 A$arkosPlayer$     0024 GR
  3 A$arkosPlayer$     0026 GR  |   3 A$arkosPlayer$     0029 GR
  3 A$arkosPlayer$     002A GR  |   3 A$arkosPlayer$     002C GR
  3 A$arkosPlayer$     002E GR  |   3 A$arkosPlayer$     0031 GR
  3 A$arkosPlayer$     0033 GR  |   3 A$arkosPlayer$     0036 GR
  3 A$arkosPlayer$     0038 GR  |   3 A$arkosPlayer$     003B GR
  3 A$arkosPlayer$     003D GR  |   3 A$arkosPlayer$     0040 GR
  3 A$arkosPlayer$     0041 GR  |   3 A$arkosPlayer$     0043 GR
  3 A$arkosPlayer$     0045 GR  |   3 A$arkosPlayer$     0048 GR
  3 A$arkosPlayer$     0049 GR  |   3 A$arkosPlayer$     004B GR
  3 A$arkosPlayer$     004D GR  |   3 A$arkosPlayer$     0050 GR
  3 A$arkosPlayer$     0053 GR  |   3 A$arkosPlayer$     0056 GR
  3 A$arkosPlayer$     0059 GR  |   3 A$arkosPlayer$     005B GR
  3 A$arkosPlayer$     005E GR  |   3 A$arkosPlayer$     0061 GR
  3 A$arkosPlayer$     0064 GR  |   3 A$arkosPlayer$     0067 GR
  3 A$arkosPlayer$     006A GR  |   3 A$arkosPlayer$     006D GR
  3 A$arkosPlayer$     0070 GR  |   3 A$arkosPlayer$     0072 GR
  3 A$arkosPlayer$     0075 GR  |   3 A$arkosPlayer$     0077 GR
  3 A$arkosPlayer$     0078 GR  |   3 A$arkosPlayer$     007A GR
  3 A$arkosPlayer$     007B GR  |   3 A$arkosPlayer$     007D GR
  3 A$arkosPlayer$     007F GR  |   3 A$arkosPlayer$     0081 GR
  3 A$arkosPlayer$     0084 GR  |   3 A$arkosPlayer$     0086 GR
  3 A$arkosPlayer$     0089 GR  |   3 A$arkosPlayer$     008C GR
  3 A$arkosPlayer$     0090 GR  |   3 A$arkosPlayer$     0092 GR
  3 A$arkosPlayer$     0096 GR  |   3 A$arkosPlayer$     0098 GR
  3 A$arkosPlayer$     009A GR  |   3 A$arkosPlayer$     009B GR
  3 A$arkosPlayer$     009D GR  |   3 A$arkosPlayer$     009F GR
  3 A$arkosPlayer$     00A1 GR  |   3 A$arkosPlayer$     00A3 GR
  3 A$arkosPlayer$     00A4 GR  |   3 A$arkosPlayer$     00A6 GR
  3 A$arkosPlayer$     00A9 GR  |   3 A$arkosPlayer$     00AB GR
  3 A$arkosPlayer$     00AD GR  |   3 A$arkosPlayer$     00AF GR
  3 A$arkosPlayer$     00B1 GR  |   3 A$arkosPlayer$     00B3 GR
  3 A$arkosPlayer$     00B5 GR  |   3 A$arkosPlayer$     00B6 GR
  3 A$arkosPlayer$     00B8 GR  |   3 A$arkosPlayer$     00BA GR
  3 A$arkosPlayer$     00BC GR  |   3 A$arkosPlayer$     00BE GR
  3 A$arkosPlayer$     00C1 GR  |   3 A$arkosPlayer$     00C3 GR
  3 A$arkosPlayer$     00C5 GR  |   3 A$arkosPlayer$     00C7 GR
  3 A$arkosPlayer$     00C9 GR  |   3 A$arkosPlayer$     00CA GR
  3 A$arkosPlayer$     00CC GR  |   3 A$arkosPlayer$     00CE GR
  3 A$arkosPlayer$     00D0 GR  |   3 A$arkosPlayer$     00D2 GR
  3 A$arkosPlayer$     00D4 GR  |   3 A$arkosPlayer$     00D6 GR
  3 A$arkosPlayer$     00D8 GR  |   3 A$arkosPlayer$     00DA GR
  3 A$arkosPlayer$     00DB GR  |   3 A$arkosPlayer$     00DD GR
  3 A$arkosPlayer$     00DF GR  |   3 A$arkosPlayer$     00E1 GR
  3 A$arkosPlayer$     00E4 GR  |   3 A$arkosPlayer$     00E6 GR
  3 A$arkosPlayer$     00E8 GR  |   3 A$arkosPlayer$     00EA GR
  3 A$arkosPlayer$     00EC GR  |   3 A$arkosPlayer$     00EE GR
  3 A$arkosPlayer$     00F1 GR  |   3 A$arkosPlayer$     00F3 GR
  3 A$arkosPlayer$     00F5 GR  |   3 A$arkosPlayer$     00F7 GR
  3 A$arkosPlayer$     00F9 GR  |   3 A$arkosPlayer$     00FB GR
  3 A$arkosPlayer$     00FD GR  |   3 A$arkosPlayer$     00FF GR
  3 A$arkosPlayer$     0100 GR  |   3 A$arkosPlayer$     0103 GR
  3 A$arkosPlayer$     0104 GR  |   3 A$arkosPlayer$     0105 GR
  3 A$arkosPlayer$     0108 GR  |   3 A$arkosPlayer$     010A GR
  3 A$arkosPlayer$     010C GR  |   3 A$arkosPlayer$     010E GR
  3 A$arkosPlayer$     0110 GR  |   3 A$arkosPlayer$     0112 GR
  3 A$arkosPlayer$     0114 GR  |   3 A$arkosPlayer$     0116 GR
  3 A$arkosPlayer$     0119 GR  |   3 A$arkosPlayer$     011B GR
  3 A$arkosPlayer$     011D GR  |   3 A$arkosPlayer$     011F GR
  3 A$arkosPlayer$     0122 GR  |   3 A$arkosPlayer$     0126 GR
  3 A$arkosPlayer$     012A GR  |   3 A$arkosPlayer$     012D GR
  3 A$arkosPlayer$     0130 GR  |   3 A$arkosPlayer$     0133 GR
  3 A$arkosPlayer$     0136 GR  |   3 A$arkosPlayer$     0139 GR
  3 A$arkosPlayer$     013C GR  |   3 A$arkosPlayer$     0140 GR
  3 A$arkosPlayer$     0142 GR  |   3 A$arkosPlayer$     0144 GR
  3 A$arkosPlayer$     0146 GR  |   3 A$arkosPlayer$     0147 GR
  3 A$arkosPlayer$     0148 GR  |   3 A$arkosPlayer$     0149 GR
  3 A$arkosPlayer$     014A GR  |   3 A$arkosPlayer$     014C GR
  3 A$arkosPlayer$     014E GR  |   3 A$arkosPlayer$     0150 GR
  3 A$arkosPlayer$     0151 GR  |   3 A$arkosPlayer$     0153 GR
  3 A$arkosPlayer$     0154 GR  |   3 A$arkosPlayer$     0156 GR
  3 A$arkosPlayer$     0158 GR  |   3 A$arkosPlayer$     015A GR
  3 A$arkosPlayer$     015C GR  |   3 A$arkosPlayer$     0160 GR
  3 A$arkosPlayer$     0162 GR  |   3 A$arkosPlayer$     0165 GR
  3 A$arkosPlayer$     0168 GR  |   3 A$arkosPlayer$     016A GR
  3 A$arkosPlayer$     016C GR  |   3 A$arkosPlayer$     016D GR
  3 A$arkosPlayer$     0171 GR  |   3 A$arkosPlayer$     0173 GR
  3 A$arkosPlayer$     0176 GR  |   3 A$arkosPlayer$     0177 GR
  3 A$arkosPlayer$     017A GR  |   3 A$arkosPlayer$     017E GR
  3 A$arkosPlayer$     0181 GR  |   3 A$arkosPlayer$     0183 GR
  3 A$arkosPlayer$     0186 GR  |   3 A$arkosPlayer$     0188 GR
  3 A$arkosPlayer$     018A GR  |   3 A$arkosPlayer$     018C GR
  3 A$arkosPlayer$     018F GR  |   3 A$arkosPlayer$     0192 GR
  3 A$arkosPlayer$     0194 GR  |   3 A$arkosPlayer$     0196 GR
  3 A$arkosPlayer$     0198 GR  |   3 A$arkosPlayer$     019A GR
  3 A$arkosPlayer$     019B GR  |   3 A$arkosPlayer$     019F GR
  3 A$arkosPlayer$     01A1 GR  |   3 A$arkosPlayer$     01A3 GR
  3 A$arkosPlayer$     01A5 GR  |   3 A$arkosPlayer$     01A8 GR
  3 A$arkosPlayer$     01AB GR  |   3 A$arkosPlayer$     01AC GR
  3 A$arkosPlayer$     01AE GR  |   3 A$arkosPlayer$     01B1 GR
  3 A$arkosPlayer$     01B5 GR  |   3 A$arkosPlayer$     01B8 GR
  3 A$arkosPlayer$     01B9 GR  |   3 A$arkosPlayer$     01BB GR
  3 A$arkosPlayer$     01BE GR  |   3 A$arkosPlayer$     01C1 GR
  3 A$arkosPlayer$     01C3 GR  |   3 A$arkosPlayer$     01C5 GR
  3 A$arkosPlayer$     01C8 GR  |   3 A$arkosPlayer$     01CA GR
  3 A$arkosPlayer$     01CE GR  |   3 A$arkosPlayer$     01D0 GR
  3 A$arkosPlayer$     01D4 GR  |   3 A$arkosPlayer$     01D6 GR
  3 A$arkosPlayer$     01D9 GR  |   3 A$arkosPlayer$     01DB GR
  3 A$arkosPlayer$     01DE GR  |   3 A$arkosPlayer$     01E0 GR
  3 A$arkosPlayer$     01E3 GR  |   3 A$arkosPlayer$     01E5 GR
  3 A$arkosPlayer$     01E7 GR  |   3 A$arkosPlayer$     01E9 GR
  3 A$arkosPlayer$     01EC GR  |   3 A$arkosPlayer$     01F0 GR
  3 A$arkosPlayer$     01F2 GR  |   3 A$arkosPlayer$     01F4 GR
  3 A$arkosPlayer$     01F7 GR  |   3 A$arkosPlayer$     01F8 GR
  3 A$arkosPlayer$     01F9 GR  |   3 A$arkosPlayer$     01FA GR
  3 A$arkosPlayer$     01FC GR  |   3 A$arkosPlayer$     01FD GR
  3 A$arkosPlayer$     0200 GR  |   3 A$arkosPlayer$     0202 GR
  3 A$arkosPlayer$     0204 GR  |   3 A$arkosPlayer$     0206 GR
  3 A$arkosPlayer$     0207 GR  |   3 A$arkosPlayer$     0208 GR
  3 A$arkosPlayer$     0209 GR  |   3 A$arkosPlayer$     020A GR
  3 A$arkosPlayer$     020B GR  |   3 A$arkosPlayer$     020C GR
  3 A$arkosPlayer$     020D GR  |   3 A$arkosPlayer$     020E GR
  3 A$arkosPlayer$     020F GR  |   3 A$arkosPlayer$     0210 GR
  3 A$arkosPlayer$     0211 GR  |   3 A$arkosPlayer$     0212 GR
  3 A$arkosPlayer$     0213 GR  |   3 A$arkosPlayer$     0214 GR
  3 A$arkosPlayer$     0216 GR  |   3 A$arkosPlayer$     0219 GR
  3 A$arkosPlayer$     021B GR  |   3 A$arkosPlayer$     021D GR
  3 A$arkosPlayer$     021F GR  |   3 A$arkosPlayer$     0221 GR
  3 A$arkosPlayer$     0224 GR  |   3 A$arkosPlayer$     0227 GR
  3 A$arkosPlayer$     0229 GR  |   3 A$arkosPlayer$     022B GR
  3 A$arkosPlayer$     022D GR  |   3 A$arkosPlayer$     0230 GR
  3 A$arkosPlayer$     0233 GR  |   3 A$arkosPlayer$     0236 GR
  3 A$arkosPlayer$     0238 GR  |   3 A$arkosPlayer$     023B GR
  3 A$arkosPlayer$     023E GR  |   3 A$arkosPlayer$     0240 GR
  3 A$arkosPlayer$     0242 GR  |   3 A$arkosPlayer$     0245 GR
  3 A$arkosPlayer$     0246 GR  |   3 A$arkosPlayer$     0247 GR
  3 A$arkosPlayer$     0248 GR  |   3 A$arkosPlayer$     024A GR
  3 A$arkosPlayer$     024B GR  |   3 A$arkosPlayer$     024E GR
  3 A$arkosPlayer$     0250 GR  |   3 A$arkosPlayer$     0252 GR
  3 A$arkosPlayer$     0254 GR  |   3 A$arkosPlayer$     0255 GR
  3 A$arkosPlayer$     0256 GR  |   3 A$arkosPlayer$     0257 GR
  3 A$arkosPlayer$     0258 GR  |   3 A$arkosPlayer$     0259 GR
  3 A$arkosPlayer$     025A GR  |   3 A$arkosPlayer$     025B GR
  3 A$arkosPlayer$     025C GR  |   3 A$arkosPlayer$     025D GR
  3 A$arkosPlayer$     025E GR  |   3 A$arkosPlayer$     025F GR
  3 A$arkosPlayer$     0260 GR  |   3 A$arkosPlayer$     0261 GR
  3 A$arkosPlayer$     0262 GR  |   3 A$arkosPlayer$     0264 GR
  3 A$arkosPlayer$     0266 GR  |   3 A$arkosPlayer$     0268 GR
  3 A$arkosPlayer$     026A GR  |   3 A$arkosPlayer$     026E GR
  3 A$arkosPlayer$     0270 GR  |   3 A$arkosPlayer$     0272 GR
  3 A$arkosPlayer$     0274 GR  |   3 A$arkosPlayer$     0276 GR
  3 A$arkosPlayer$     0279 GR  |   3 A$arkosPlayer$     027B GR
  3 A$arkosPlayer$     027F GR  |   3 A$arkosPlayer$     0281 GR
  3 A$arkosPlayer$     0283 GR  |   3 A$arkosPlayer$     0285 GR
  3 A$arkosPlayer$     0288 GR  |   3 A$arkosPlayer$     028A GR
  3 A$arkosPlayer$     028C GR  |   3 A$arkosPlayer$     028F GR
  3 A$arkosPlayer$     0291 GR  |   3 A$arkosPlayer$     0293 GR
  3 A$arkosPlayer$     0295 GR  |   3 A$arkosPlayer$     0297 GR
  3 A$arkosPlayer$     0299 GR  |   3 A$arkosPlayer$     029B GR
  3 A$arkosPlayer$     029F GR  |   3 A$arkosPlayer$     02A1 GR
  3 A$arkosPlayer$     02A3 GR  |   3 A$arkosPlayer$     02A5 GR
  3 A$arkosPlayer$     02A8 GR  |   3 A$arkosPlayer$     02A9 GR
  3 A$arkosPlayer$     02AA GR  |   3 A$arkosPlayer$     02AC GR
  3 A$arkosPlayer$     02AE GR  |   3 A$arkosPlayer$     02B0 GR
  3 A$arkosPlayer$     02B2 GR  |   3 A$arkosPlayer$     02B4 GR
  3 A$arkosPlayer$     02B7 GR  |   3 A$arkosPlayer$     02B9 GR
  3 A$arkosPlayer$     02BB GR  |   3 A$arkosPlayer$     02BD GR
  3 A$arkosPlayer$     02C0 GR  |   3 A$arkosPlayer$     02C3 GR
  3 A$arkosPlayer$     02C5 GR  |   3 A$arkosPlayer$     02C8 GR
  3 A$arkosPlayer$     02CA GR  |   3 A$arkosPlayer$     02CC GR
  3 A$arkosPlayer$     02CE GR  |   3 A$arkosPlayer$     02D0 GR
  3 A$arkosPlayer$     02D2 GR  |   3 A$arkosPlayer$     02D5 GR
  3 A$arkosPlayer$     02D9 GR  |   3 A$arkosPlayer$     02DB GR
  3 A$arkosPlayer$     02DE GR  |   3 A$arkosPlayer$     02E1 GR
  3 A$arkosPlayer$     02E4 GR  |   3 A$arkosPlayer$     02E7 GR
  3 A$arkosPlayer$     02EA GR  |   3 A$arkosPlayer$     02ED GR
  3 A$arkosPlayer$     02F0 GR  |   3 A$arkosPlayer$     02F3 GR
  3 A$arkosPlayer$     02F4 GR  |   3 A$arkosPlayer$     02F7 GR
  3 A$arkosPlayer$     02F8 GR  |   3 A$arkosPlayer$     02FB GR
  3 A$arkosPlayer$     02FE GR  |   3 A$arkosPlayer$     0301 GR
  3 A$arkosPlayer$     0304 GR  |   3 A$arkosPlayer$     0306 GR
  3 A$arkosPlayer$     0309 GR  |   3 A$arkosPlayer$     030C GR
  3 A$arkosPlayer$     030E GR  |   3 A$arkosPlayer$     0311 GR
  3 A$arkosPlayer$     0312 GR  |   3 A$arkosPlayer$     0314 GR
  3 A$arkosPlayer$     0316 GR  |   3 A$arkosPlayer$     0318 GR
  3 A$arkosPlayer$     031A GR  |   3 A$arkosPlayer$     031C GR
  3 A$arkosPlayer$     031D GR  |   3 A$arkosPlayer$     031F GR
  3 A$arkosPlayer$     0321 GR  |   3 A$arkosPlayer$     0323 GR
  3 A$arkosPlayer$     0325 GR  |   3 A$arkosPlayer$     0327 GR
  3 A$arkosPlayer$     0329 GR  |   3 A$arkosPlayer$     032B GR
  3 A$arkosPlayer$     032D GR  |   3 A$arkosPlayer$     032F GR
  3 A$arkosPlayer$     0331 GR  |   3 A$arkosPlayer$     0333 GR
  3 A$arkosPlayer$     0335 GR  |   3 A$arkosPlayer$     0337 GR
  3 A$arkosPlayer$     0338 GR  |   3 A$arkosPlayer$     0339 GR
  3 A$arkosPlayer$     033A GR  |   3 A$arkosPlayer$     033D GR
  3 A$arkosPlayer$     033F GR  |   3 A$arkosPlayer$     0341 GR
  3 A$arkosPlayer$     0343 GR  |   3 A$arkosPlayer$     0345 GR
  3 A$arkosPlayer$     0347 GR  |   3 A$arkosPlayer$     0468 GR
  3 A$arkosPlayer$     046B GR  |   3 A$arkosPlayer$     046E GR
  3 A$arkosPlayer$     0471 GR  |   3 A$arkosPlayer$     0474 GR
  3 A$arkosPlayer$     0477 GR  |   3 A$arkosPlayer$     047A GR
  3 A$arkosPlayer$     047D GR  |   3 A$arkosPlayer$     0480 GR
  3 A$arkosPlayer$     0483 GR  |   3 A$arkosPlayer$     0485 GR
  3 A$arkosPlayer$     0488 GR  |   3 A$arkosPlayer$     048B GR
  3 A$arkosPlayer$     048E GR  |   3 A$arkosPlayer$     0490 GR
  3 A$arkosPlayer$     0493 GR  |   3 A$arkosPlayer$     0495 GR
  3 A$arkosPlayer$     0498 GR  |   3 A$arkosPlayer$     049A GR
  3 A$arkosPlayer$     049D GR  |   3 A$arkosPlayer$     049F GR
  3 A$arkosPlayer$     04A1 GR  |   3 A$arkosPlayer$     04A4 GR
  3 A$arkosPlayer$     04A7 GR  |   3 A$arkosPlayer$     04A9 GR
  3 A$arkosPlayer$     0000 GR  |   3 A$arkosPlayer$     04AC GR
  3 A$arkosPlayer$     04AF GR  |   3 A$arkosPlayer$     04B1 GR
  3 A$arkosPlayer$     04B4 GR  |   3 A$arkosPlayer$     04B7 GR
  3 A$arkosPlayer$     04B9 GR  |   3 A$arkosPlayer$     04BC GR
  3 A$arkosPlayer$     04BF GR  |   3 A$arkosPlayer$     0003 GR
  3 A$arkosPlayer$     04C1 GR  |   3 A$arkosPlayer$     04C3 GR
  3 A$arkosPlayer$     04C6 GR  |   3 A$arkosPlayer$     04C9 GR
  3 A$arkosPlayer$     04CC GR  |   3 A$arkosPlayer$     04CD GR
  3 A$arkosPlayer$     04D0 GR  |   3 A$arkosPlayer$     04D3 GR
  3 A$arkosPlayer$     04D6 GR  |   3 A$arkosPlayer$     04D9 GR
  3 A$arkosPlayer$     04DB GR  |   3 A$arkosPlayer$     0007 GR
  3 A$arkosPlayer$     000A GR  |     ArkosChannel   =   0011 
  2 Channel1Data       0011 R   |   2 Channel2Data       0022 R
  2 Channel3Data       0033 R   |   2 ChannelDataEnd =   0044 R
    Clear_x_d      =   F548     |   3 PLAYER             0000 R
  3 PLY_FREQUENCYT     0348 R   |   2 PLY_FREQ_REG       0047 R
  2 PLY_HEIGHT         0003 R   |   2 PLY_HEIGHTCPT      0006 R
  3 PLY_HEIGHTEND      006D R   |   3 PLY_INIT           0468 GR
  2 PLY_LINKER_PT      0009 R   |   3 PLY_NEWSPECIAL     004B R
  3 PLY_NONEWHEIGH     0048 R   |   3 PLY_NONEWSPECI     0050 R
  3 PLY_NONEWTRANS     0021 R   |   3 PLY_NONEWTRANS     0029 R
  3 PLY_NONEWTRANS     0031 R   |   3 PLY_PLAY           0000 GR
  3 PLY_PLAYSOUND      014E R   |   2 PLY_PSGREG0        0049 GR
  2 PLY_PSGREG1        004A R   |   2 PLY_PSGREG10       0053 R
  2 PLY_PSGREG11       0054 R   |   2 PLY_PSGREG12       0055 R
  2 PLY_PSGREG13       0044 R   |   2 PLY_PSGREG13_R     000B R
  2 PLY_PSGREG2        004B R   |   2 PLY_PSGREG3        004C R
  2 PLY_PSGREG4        004D R   |   2 PLY_PSGREG5        004E R
  2 PLY_PSGREG6        004F R   |   2 PLY_PSGREG8        0051 R
  2 PLY_PSGREG9        0052 R   |   2 PLY_PSGREGISTE =   0049 R
  2 PLY_PSGREGISTE =   0057 R   |   3 PLY_PS_CALCULA     031D R
  3 PLY_PS_CALCULA     0312 R   |   3 PLY_PS_HARD        01B8 R
  3 PLY_PS_HARDWAR     0236 R   |   3 PLY_PS_HARD_LO     0270 R
  3 PLY_PS_HARD_NO     01C8 R   |   3 PLY_PS_HD_NOSO     0268 R
  3 PLY_PS_HD_SHIF     0254 R   |   3 PLY_PS_INDEPEN     0279 R
  3 PLY_PS_I_SKIPS     029F R   |   3 PLY_PS_I_SOUND     028A R
  3 PLY_PS_SD_NOHA     021F R   |   3 PLY_PS_SD_NOIS     0224 R
  3 PLY_PS_SD_SHIF     0206 R   |   3 PLY_PS_S_SBN_N     0192 R
  3 PLY_PS_S_SBN_S     01AB R   |   3 PLY_PS_S_SECON     0181 R
  3 PLY_PS_S_SOUND     0168 R   |   3 PLY_PS_S_SOUND     0337 R
  3 PLY_PS_S_SOUND     0329 R   |   3 PLY_PT_SPECIAL     0084 R
  3 PLY_READTRACK      0098 R   |   3 PLY_READTRACK_     00C7 R
  3 PLY_READTRACK_     00C3 R   |   3 PLY_READTRACK_     00B1 R
  3 PLY_READTRACK_     00A4 R   |   3 PLY_READTRACK_     00D2 R
    PLY_RETRIGVALU =   00FE     |   2 PLY_SAVESPECIA     000C R
  3 PLY_SENDREGIST     02FB R   |   3 PLY_SONGNOTOVE     0019 R
  3 PLY_SPECIALTRA     008C R   |   3 PLY_SPECIALTRA     0086 R
  3 PLY_SPECIALTRA     007F R   |   2 PLY_SPECIALTRA     000E R
  3 PLY_SPECIALTRA     0081 R   |   2 PLY_SPECIALTRA     0010 R
  2 PLY_SPEED          0004 R   |   2 PLY_SPEEDCPT       0005 R
  3 PLY_SPEEDEND       0130 R   |   3 PLY_STOP           04CD R
    PLY_TRACK_INST =   0003     |   3 PLY_TRACK_INST     0112 R
    PLY_TRACK_INST =   0005     |     PLY_TRACK_INST =   0006 
  2 PLY_TRACK_INST     0007 R   |   3 PLY_TRACK_NEWI     00FF R
  3 PLY_TRACK_NEWI     011D R   |   3 PLY_TRACK_NEWI     011F R
  3 PLY_TRACK_NONO     011B R   |     PLY_TRACK_NOTE =   000A 
    PLY_TRACK_PITC =   000C     |     PLY_TRACK_PITC =   000E 
  3 PLY_TRACK_PLAY     02D2 R   |     PLY_TRACK_PT   =   0007 
    PLY_TRACK_REG_ =   0010     |   3 PLY_TRACK_SAME     00E1 R
  3 PLY_TRACK_SAME     00BC R   |     PLY_TRACK_SAVE =   0001 
    PLY_TRACK_VOLU =   000B     |     PLY_TRACK_WAIT =   0009 
    PLY_TRANSPOSIT =   0000     |   2 PLY_VOL_REG        0045 R
    Vec_Snd_Shadow =   C800     |   3 _play_sound_tr     0140 R
  3 _read_special_     006D R   |   3 _read_track        0090 R
  2 arkosPlayerMem =   0057 R   |   2 arkosPlayerMem =   0000 R
  3 backFromPlayer     0311 R   |   3 do_continue_p_     00DA R
  3 do_continue_p_     00E1 R   |   3 doneplaying        02F0 R
  3 full_opt_note_     00EA R   |   3 initCodeModifi     0468 R
  3 noIntrumentRet     0119 R   |   3 no_max_appegio     0337 R
  3 no_shift_carry     0219 R   |   3 no_vol_underfl     019B R
  3 out_sound          02C8 R   |   3 outahere_1         02C8 R
  3 playnextchanne     0140 R   |   3 readnextchanne     0090 R
  3 ret_nla_here       0233 R   |   2 tmp_instrument     0002 R
  2 tmp_track_inst     0001 R   |   2 tmp_track_para     0000 R
  3 vol_not_null_1     016D R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size   57   flags    0
   3 .text            size  4DE   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

