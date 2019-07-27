                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	bloxorz.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report
                             12 ; -IC:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include
                             13 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             14 ; C:\data\bloxorz\Vide\source\bloxorz.enr.c
                             15 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             16 ; -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             17 ; -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             18 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             19 ; -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             20 ; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             21 ; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             22 ; -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             23 ; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             24 ; -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             25 ; -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             26 ; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             27 ; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             28 ; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             29 ; -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             30 ; -fzero-initialized-in-bss
                             31 ; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
                             32 	.area	.text
                             33 	.globl	_runtimeError
   351F                      34 _runtimeError:
   351F 34 60         [ 7]   35 	pshs	y,u	;
   3521 32 7C         [ 5]   36 	leas	-4,s	;,,
   3523 31 84         [ 4]   37 	leay	,x	; msg, msg
                             38 ;----- asm -----
                             39 ; 154 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             40 	; #ENR#[153]	while (1) {
                             41 ;--- end asm ---
   3525                      42 L2:
                             43 ;----- asm -----
                             44 ; 156 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             45 	; #ENR#[154]		frwait();
                             46 ; 97 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3525 BD F1 92      [ 8]   47 	jsr ___Wait_Recal; BIOS call
                             48 ; 158 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             49 	; #ENR#[155]         Intensity_a(0x5f);
                             50 ;--- end asm ---
   3528 C6 5F         [ 2]   51 	ldb	#95	;,
   352A E7 63         [ 5]   52 	stb	3,s	;, a
                             53 ;----- asm -----
                             54 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   352C A6 63         [ 5]   55 	lda 3,s	; a
   352E BD F2 AB      [ 8]   56 	jsr ___Intensity_a; BIOS call
                             57 ; 160 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             58 	; #ENR#[156]         Vec_Text_Width = 90;
                             59 ;--- end asm ---
   3531 C6 5A         [ 2]   60 	ldb	#90	;,
   3533 F7 C8 2B      [ 5]   61 	stb	_Vec_Text_Width	;, Vec_Text_Width
                             62 ;----- asm -----
                             63 ; 162 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             64 	; #ENR#[157]         Print_Str_d(-10, -110, msg);
                             65 ;--- end asm ---
   3536 C6 F6         [ 2]   66 	ldb	#-10	;,
   3538 E7 63         [ 5]   67 	stb	3,s	;, a
   353A C6 92         [ 2]   68 	ldb	#-110	;,
   353C E7 62         [ 5]   69 	stb	2,s	;, b
   353E 10 AF E4      [ 6]   70 	sty	,s	; msg, u
                             71 ;----- asm -----
                             72 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3541 A6 63         [ 5]   73 	lda 3,s	; a
   3543 E6 62         [ 5]   74 	ldb 2,s	; b
   3545 EE E4         [ 5]   75 	ldu ,s	; u
   3547 BD F3 7A      [ 8]   76 	jsr ___Print_Str_d; BIOS call
                             77 ;--- end asm ---
   354A 16 FF D8      [ 5]   78 	lbra	L2	;
                             79 	.globl	_sendCommand
   354D                      80 _sendCommand:
                             81 ;----- asm -----
                             82 ; 169 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             83 	; #ENR#[163]return 0;
                             84 ;--- end asm ---
   354D 5F            [ 2]   85 	clrb	;
   354E 39            [ 5]   86 	rts
                             87 	.globl	_writeEeprom
   354F                      88 _writeEeprom:
                             89 ;----- asm -----
                             90 ; 189 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             91 	; #ENR#[175]	if (picAvailable) {
                             92 ;--- end asm ---
   354F 7D C8 FD      [ 7]   93 	tst	_picAvailable	; picAvailable
   3552 27 12         [ 3]   94 	beq	L8	;
                             95 ;----- asm -----
                             96 ; 191 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                             97 	; #ENR#[176]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                             98 ;--- end asm ---
   3554 34 04         [ 6]   99 	pshs	b	; address
   3556 C6 02         [ 2]  100 	ldb	#2	;,
   3558 BD 35 4D      [ 8]  101 	jsr	_sendCommand
                            102 ;----- asm -----
                            103 ; 193 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            104 	; #ENR#[177]	    	sendCommand(CMD_EEPROM_WRITE, data);
                            105 ;--- end asm ---
   355B E6 63         [ 5]  106 	ldb	3,s	;, data
   355D E7 E2         [ 6]  107 	stb	,-s	;,
   355F C6 03         [ 2]  108 	ldb	#3	;,
   3561 BD 35 4D      [ 8]  109 	jsr	_sendCommand
   3564 32 62         [ 5]  110 	leas	2,s	;,,
   3566                     111 L8:
   3566 39            [ 5]  112 	rts
                            113 	.globl	_readEeprom
   3567                     114 _readEeprom:
                            115 ;----- asm -----
                            116 ; 200 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            117 	; #ENR#[183]	if (picAvailable) {
                            118 ;--- end asm ---
   3567 7D C8 FD      [ 7]  119 	tst	_picAvailable	; picAvailable
   356A 27 0B         [ 3]  120 	beq	L10	;
                            121 ;----- asm -----
                            122 ; 202 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            123 	; #ENR#[184]		return sendCommand(CMD_EEPROM_READ, address);
                            124 ;--- end asm ---
   356C 34 04         [ 6]  125 	pshs	b	; address
   356E C6 04         [ 2]  126 	ldb	#4	;,
   3570 BD 35 4D      [ 8]  127 	jsr	_sendCommand
   3573 32 61         [ 5]  128 	leas	1,s	;,,
   3575 20 02         [ 3]  129 	bra	L11	;
   3577                     130 L10:
                            131 ;----- asm -----
                            132 ; 205 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            133 	; #ENR#[186]		return 0xff;
                            134 ;--- end asm ---
   3577 C6 FF         [ 2]  135 	ldb	#-1	; D.2252,
   3579                     136 L11:
   3579 39            [ 5]  137 	rts
                            138 	.globl	_itoa
   357A                     139 _itoa:
   357A 34 60         [ 7]  140 	pshs	y,u	;
   357C 32 71         [ 5]  141 	leas	-15,s	;,,
                            142 ;----- asm -----
                            143 ; 214 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            144 	; #ENR#[194]	uint16_t muls[] = { 100, 10, 1 };
                            145 ;--- end asm ---
   357E CC 00 64      [ 3]  146 	ldd	#100	;,
   3581 ED 69         [ 6]  147 	std	9,s	;, muls
   3583 CC 00 0A      [ 3]  148 	ldd	#10	;,
   3586 ED 6B         [ 6]  149 	std	11,s	;, muls
   3588 CC 00 01      [ 3]  150 	ldd	#1	;,
   358B ED 6D         [ 6]  151 	std	13,s	;, muls
                            152 ;----- asm -----
                            153 ; 216 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            154 	; #ENR#[195]	if (number > 999) number = 999;
                            155 ;--- end asm ---
   358D 31 84         [ 4]  156 	leay	,x	; number.111, number
   358F 8C 03 E7      [ 4]  157 	cmpx	#999	;cmphi:	; number.111,
   3592 23 04         [ 3]  158 	bls	L14	;
   3594 10 8E 03 E7   [ 4]  159 	ldy	#999	; number.111,
   3598                     160 L14:
                            161 ;----- asm -----
                            162 ; 218 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            163 	; #ENR#[196]	for (uint8_t i = 0; i < 3; i++) {
                            164 ;--- end asm ---
   3598 30 69         [ 5]  165 	leax	9,s	;,,
   359A AF 65         [ 6]  166 	stx	5,s	;, ivtmp.107
   359C EC E8 15      [ 6]  167 	ldd	21,s	;, text
   359F ED 67         [ 6]  168 	std	7,s	;, ivtmp.109
   35A1                     169 L18:
                            170 ;----- asm -----
                            171 ; 220 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            172 	; #ENR#[197]		uint8_t d = 0;
                            173 ; 222 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            174 	; #ENR#[198]		while (number >= muls[i]) {
                            175 ;--- end asm ---
   35A1 AE 65         [ 6]  176 	ldx	5,s	;, ivtmp.107
   35A3 AE 84         [ 5]  177 	ldx	,x	;, muls
   35A5 AF E4         [ 5]  178 	stx	,s	;, D.2268
   35A7 34 20         [ 6]  179 	pshs	y	;cmphi: R:y with R:x	; number.111,
   35A9 AC E1         [ 9]  180 	cmpx	,s++	;cmphi:	;
   35AB 22 25         [ 3]  181 	bhi	L15	;
   35AD 1F 10         [ 6]  182 	tfr	x,d	;,
   35AF 40            [ 2]  183 	nega
   35B0 50            [ 2]  184 	negb
   35B1 82 00         [ 2]  185 	sbca	#0
   35B3 ED 63         [ 6]  186 	std	3,s	;, ivtmp.97
   35B5 1F 20         [ 6]  187 	tfr	y,d	; number.111,
   35B7 A3 E4         [ 6]  188 	subd	,s	;subhi: R:d -= ,s	;, D.2268
   35B9 1F 02         [ 6]  189 	tfr	d,y	;, number.111
   35BB 6F 62         [ 7]  190 	clr	2,s	; d
   35BD                     191 L17:
                            192 ;----- asm -----
                            193 ; 224 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            194 	; #ENR#[199]			d++;
                            195 ;--- end asm ---
   35BD 6C 62         [ 7]  196 	inc	2,s	; d
                            197 ;----- asm -----
                            198 ; 226 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            199 	; #ENR#[200]			number -= muls[i];
                            200 ;--- end asm ---
   35BF EC 63         [ 6]  201 	ldd	3,s	;, ivtmp.97
   35C1 33 AB         [ 8]  202 	leau	d,y	; number.110,, number.111
   35C3 EC E4         [ 5]  203 	ldd	,s	;, D.2268
   35C5 30 CB         [ 8]  204 	leax	d,u	; tmp85,, number.110
   35C7 34 10         [ 6]  205 	pshs	x	;cmphi: R:x with R:d	; tmp85,
   35C9 10 A3 E1      [10]  206 	cmpd	,s++	;cmphi:	;
   35CC 22 06         [ 3]  207 	bhi	L16	;
   35CE 31 C4         [ 4]  208 	leay	,u	; number.111, number.110
   35D0 20 EB         [ 3]  209 	bra	L17	;
   35D2                     210 L15:
   35D2 6F 62         [ 7]  211 	clr	2,s	; d
   35D4                     212 L16:
                            213 ;----- asm -----
                            214 ; 229 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            215 	; #ENR#[202]		text[i] = d + '0';
                            216 ;--- end asm ---
   35D4 E6 62         [ 5]  217 	ldb	2,s	;, d
   35D6 CB 30         [ 2]  218 	addb	#48	;,
   35D8 AE 67         [ 6]  219 	ldx	7,s	;, ivtmp.109
   35DA 30 01         [ 5]  220 	leax	1,x	;,,
   35DC AF 67         [ 6]  221 	stx	7,s	;, ivtmp.109
   35DE 30 1F         [ 5]  222 	leax	-1,x	;,,
   35E0 E7 80         [ 6]  223 	stb	,x+	;,
   35E2 AE 65         [ 6]  224 	ldx	5,s	;, ivtmp.107
   35E4 30 02         [ 5]  225 	leax	2,x	;,,
   35E6 AF 65         [ 6]  226 	stx	5,s	;, ivtmp.107
   35E8 1F 40         [ 6]  227 	tfr	s,d	;,
   35EA C3 00 0F      [ 4]  228 	addd	#15; addhi3,3	;,
   35ED 34 06         [ 7]  229 	pshs	d	;cmphi: R:d with R:x	;,
   35EF AC E1         [ 9]  230 	cmpx	,s++	;cmphi:	;
   35F1 10 26 FF AC   [ 6]  231 	lbne	L18	;
   35F5 32 6F         [ 5]  232 	leas	15,s	;,,
   35F7 35 E0         [ 8]  233 	puls	y,u,pc	;
                            234 	.globl	_updateInfoText
   35F9                     235 _updateInfoText:
                            236 ;----- asm -----
                            237 ; 236 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            238 	; #ENR#[208]	itoa(moveCount, &infoText[0]);
                            239 ;--- end asm ---
   35F9 8E C8 EF      [ 3]  240 	ldx	#_infoText	;,
   35FC AF E3         [ 8]  241 	stx	,--s	;,
   35FE BE C8 F9      [ 6]  242 	ldx	_moveCount	;, moveCount
   3601 BD 35 7A      [ 8]  243 	jsr	_itoa
                            244 ;----- asm -----
                            245 ; 239 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            246 	; #ENR#[210]	itoa(levelNumber + levelOffset, &infoText[6]);
                            247 ;--- end asm ---
   3604 F6 44 B4      [ 5]  248 	ldb	_levelOffset	; tmp28, levelOffset
   3607 FB C8 87      [ 5]  249 	addb	_levelNumber	; tmp28, levelNumber
   360A 8E C8 F5      [ 3]  250 	ldx	#_infoText+6	;,
   360D AF E3         [ 8]  251 	stx	,--s	;,
   360F 4F            [ 2]  252 	clra		;zero_extendqihi: R:b -> R:d	; tmp28,
   3610 1F 01         [ 6]  253 	tfr	d,x	;,
   3612 BD 35 7A      [ 8]  254 	jsr	_itoa
   3615 32 64         [ 5]  255 	leas	4,s	;,,
   3617 39            [ 5]  256 	rts
                            257 	.globl	_changeMusic
   3618                     258 _changeMusic:
                            259 ;----- asm -----
                            260 ; 245 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            261 	; #ENR#[215]	tstat = 1;
                            262 ;--- end asm ---
   3618 C6 01         [ 2]  263 	ldb	#1	;,
   361A F7 C8 56      [ 5]  264 	stb	-14250	;,
                            265 ;----- asm -----
                            266 ; 247 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            267 	; #ENR#[216]	currentMusic = music;
                            268 ;--- end asm ---
   361D BF C8 80      [ 6]  269 	stx	_currentMusic	; music, currentMusic
   3620 39            [ 5]  270 	rts
                            271 	.globl	_drawField
   3621                     272 _drawField:
   3621 32 7F         [ 5]  273 	leas	-1,s	;,,
                            274 ;----- asm -----
                            275 ; 313 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            276 	; #ENR#[258]	intens(0x35);
                            277 ;--- end asm ---
   3623 C6 35         [ 2]  278 	ldb	#53	;,
   3625 E7 E4         [ 4]  279 	stb	,s	;, a
                            280 ;----- asm -----
                            281 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3627 A6 E4         [ 4]  282 	lda ,s	; a
   3629 BD F2 AB      [ 8]  283 	jsr ___Intensity_a; BIOS call
                            284 ; 328 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   362C 34 5E         [10]  285 		pshs a, b, dp, x, u
                            286 ; 329 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   362E 86 D0         [ 2]  287 		lda #0xd0
                            288 ; 330 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3630 1F 8B         [ 6]  289 		tfr a, dp
                            290 ; 331 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3632 8E 00 00      [ 3]  291 		ldx #0
                            292 ; 332 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3635 F6 C8 84      [ 5]  293 		ldb _lineCount
                            294 ; 333 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3638                     295 	drawFieldLoop:
                            296 ; 334 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3638 34 04         [ 6]  297 		pshs b
                            298 ; 335 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   363A 34 10         [ 6]  299 		pshs x
                            300 ; 336 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   363C BD F3 54      [ 8]  301 		jsr 0xf354
                            302 ; 337 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   363F 35 10         [ 6]  303 		puls x
                            304 ; 338 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3641 A6 89 C9 8C   [ 8]  305 		lda _lineY0,x
                            306 ; 339 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3645 E6 89 C9 14   [ 8]  307 		ldb _lineX0,x
                            308 ; 340 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3649 34 10         [ 6]  309 		pshs x
                            310 ; 341 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   364B BD F2 FC      [ 8]  311 		jsr 0xf2fc
                            312 ; 342 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   364E 35 10         [ 6]  313 		puls x
                            314 ; 343 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3650 A6 89 CA 7C   [ 8]  315 		lda _lineY1,x
                            316 ; 344 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3654 E6 89 CA 04   [ 8]  317 		ldb _lineX1,x
                            318 ; 345 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3658 A0 89 C9 8C   [ 8]  319 		suba _lineY0,x
                            320 ; 346 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   365C E0 89 C9 14   [ 8]  321 		subb _lineX0,x
                            322 ; 347 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3660 34 10         [ 6]  323 		pshs x
                            324 ; 348 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3662 BD F3 DF      [ 8]  325 		jsr 0xf3df
                            326 ; 349 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3665 35 10         [ 6]  327 		puls x
                            328 ; 350 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3667 A6 80         [ 6]  329 		lda ,x+
                            330 ; 351 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   3669 35 04         [ 6]  331 		puls b
                            332 ; 352 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   366B 5A            [ 2]  333 		decb
                            334 ; 353 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   366C 26 CA         [ 3]  335 		bne drawFieldLoop
                            336 ; 354 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
   366E 35 5E         [10]  337 		puls a, b, dp, x, u
                            338 ;--- end asm ---
   3670 32 61         [ 5]  339 	leas	1,s	;,,
   3672 39            [ 5]  340 	rts
                            341 	.globl	_setBank
   3673                     342 _setBank:
   3673 32 7F         [ 5]  343 	leas	-1,s	;,,
   3675 E7 E4         [ 4]  344 	stb	,s	; bank, bank
                            345 ;----- asm -----
                            346 ; 375 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            347 	; #ENR#[314]	*vecx = 16 + bank;
                            348 ;--- end asm ---
   3677 CB 10         [ 2]  349 	addb	#16	; bank,
   3679 E7 9F C8 82   [ 9]  350 	stb	[_vecx]	; bank,* vecx
                            351 ;----- asm -----
                            352 ; 377 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            353 	; #ENR#[315]	sendCommand(CMD_SET_BANK, bank);
                            354 ;--- end asm ---
   367D E6 E4         [ 4]  355 	ldb	,s	;, bank
   367F 34 04         [ 6]  356 	pshs	b	;
   3681 C6 05         [ 2]  357 	ldb	#5	;,
   3683 BD 35 4D      [ 8]  358 	jsr	_sendCommand
   3686 32 62         [ 5]  359 	leas	2,s	;,,
   3688 39            [ 5]  360 	rts
   3689                     361 LC0:
   3689 43 4C 45 41 52 20   362 	.byte	67,76,69,65,82,32,83,67
        53 43
   3691 4F 52 45 3F 80 00   363 	.byte	79,82,69,63,-128,0
   3697                     364 LC1:
   3697 33 20 59 45 53 80   365 	.byte	51,32,89,69,83,-128,0
        00
   369E                     366 LC2:
   369E 34 20 4E 4F 80 00   367 	.byte	52,32,78,79,-128,0
                            368 	.globl	_clearMenu
   36A4                     369 _clearMenu:
   36A4 34 40         [ 6]  370 	pshs	u	;
   36A6 32 7B         [ 5]  371 	leas	-5,s	;,,
                            372 ;----- asm -----
                            373 ; 642 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            374 	; #ENR#[479]	Read_Btns();
                            375 ; 2286 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   36A8 BD F1 BA      [ 8]  376 	jsr ___Read_Btns; BIOS call
                            377 ; 644 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            378 	; #ENR#[480]    Intensity_a(0x5f);
                            379 ;--- end asm ---
   36AB C6 5F         [ 2]  380 	ldb	#95	;,
   36AD E7 64         [ 5]  381 	stb	4,s	;, a
                            382 ;----- asm -----
                            383 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   36AF A6 64         [ 5]  384 	lda 4,s	; a
   36B1 BD F2 AB      [ 8]  385 	jsr ___Intensity_a; BIOS call
                            386 ; 646 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            387 	; #ENR#[481]    Vec_Text_Width = 90;
                            388 ;--- end asm ---
   36B4 C6 5A         [ 2]  389 	ldb	#90	;,
   36B6 F7 C8 2B      [ 5]  390 	stb	_Vec_Text_Width	;, Vec_Text_Width
                            391 ;----- asm -----
                            392 ; 648 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            393 	; #ENR#[482]    Print_Str_d(100, -80, "CLEAR SCORE?€");
                            394 ;--- end asm ---
   36B9 CB 0A         [ 2]  395 	addb	#10	;,
   36BB E7 64         [ 5]  396 	stb	4,s	;, a
   36BD C6 B0         [ 2]  397 	ldb	#-80	;,
   36BF E7 63         [ 5]  398 	stb	3,s	;, b
   36C1 8E 36 89      [ 3]  399 	ldx	#LC0	;,
   36C4 AF 61         [ 6]  400 	stx	1,s	;, u
                            401 ;----- asm -----
                            402 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   36C6 A6 64         [ 5]  403 	lda 4,s	; a
   36C8 E6 63         [ 5]  404 	ldb 3,s	; b
   36CA EE 61         [ 6]  405 	ldu 1,s	; u
   36CC BD F3 7A      [ 8]  406 	jsr ___Print_Str_d; BIOS call
                            407 ; 650 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            408 	; #ENR#[483]    Print_Str_d(50, -110, "3 YES€");
                            409 ;--- end asm ---
   36CF C6 32         [ 2]  410 	ldb	#50	;,
   36D1 E7 63         [ 5]  411 	stb	3,s	;, a
   36D3 C6 92         [ 2]  412 	ldb	#-110	;,
   36D5 E7 64         [ 5]  413 	stb	4,s	;, b
   36D7 8E 36 97      [ 3]  414 	ldx	#LC1	;,
   36DA AF 61         [ 6]  415 	stx	1,s	;, u
                            416 ;----- asm -----
                            417 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   36DC A6 63         [ 5]  418 	lda 3,s	; a
   36DE E6 64         [ 5]  419 	ldb 4,s	; b
   36E0 EE 61         [ 6]  420 	ldu 1,s	; u
   36E2 BD F3 7A      [ 8]  421 	jsr ___Print_Str_d; BIOS call
                            422 ; 652 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            423 	; #ENR#[484]    Print_Str_d(20, -110, "4 NO€");
                            424 ;--- end asm ---
   36E5 C6 14         [ 2]  425 	ldb	#20	;,
   36E7 E7 64         [ 5]  426 	stb	4,s	;, a
   36E9 C6 92         [ 2]  427 	ldb	#-110	;,
   36EB E7 63         [ 5]  428 	stb	3,s	;, b
   36ED 8E 36 9E      [ 3]  429 	ldx	#LC2	;,
   36F0 AF 61         [ 6]  430 	stx	1,s	;, u
                            431 ;----- asm -----
                            432 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   36F2 A6 64         [ 5]  433 	lda 4,s	; a
   36F4 E6 63         [ 5]  434 	ldb 3,s	; b
   36F6 EE 61         [ 6]  435 	ldu 1,s	; u
   36F8 BD F3 7A      [ 8]  436 	jsr ___Print_Str_d; BIOS call
                            437 ; 654 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            438 	; #ENR#[485]	if (Vec_Buttons & 4) {
                            439 ;--- end asm ---
   36FB F6 C8 11      [ 5]  440 	ldb	_Vec_Buttons	;, Vec_Buttons
   36FE C5 04         [ 2]  441 	bitb	#4	;,
   3700 27 18         [ 3]  442 	beq	L30	;
                            443 ;----- asm -----
                            444 ; 656 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            445 	; #ENR#[486]		for (uint8_t i = 0; i < 6; i++) {
                            446 ;--- end asm ---
   3702 6F E4         [ 6]  447 	clr	,s	; i
   3704                     448 L31:
                            449 ;----- asm -----
                            450 ; 658 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            451 	; #ENR#[487]			writeEeprom(i, 0xff);
                            452 ;--- end asm ---
   3704 C6 FF         [ 2]  453 	ldb	#-1	;,
   3706 E7 E2         [ 6]  454 	stb	,-s	;,
   3708 E6 61         [ 5]  455 	ldb	1,s	;, i
   370A BD 35 4F      [ 8]  456 	jsr	_writeEeprom
   370D 6C 61         [ 7]  457 	inc	1,s	; i
   370F 32 61         [ 5]  458 	leas	1,s	;,,
   3711 E6 E4         [ 4]  459 	ldb	,s	;, i
   3713 C1 06         [ 2]  460 	cmpb	#6	;cmpqi:	;,
   3715 26 ED         [ 3]  461 	bne	L31	;
                            462 ;----- asm -----
                            463 ; 661 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            464 	; #ENR#[489]		gameState = MainMenu;
                            465 ;--- end asm ---
   3717 7F C8 FE      [ 7]  466 	clr	_gameState	; gameState
   371A                     467 L30:
                            468 ;----- asm -----
                            469 ; 664 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            470 	; #ENR#[491]	if (Vec_Buttons & 8) {
                            471 ;--- end asm ---
   371A F6 C8 11      [ 5]  472 	ldb	_Vec_Buttons	;, Vec_Buttons
   371D C5 08         [ 2]  473 	bitb	#8	;,
   371F 27 03         [ 3]  474 	beq	L33	;
                            475 ;----- asm -----
                            476 ; 666 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            477 	; #ENR#[492]		gameState = MainMenu;
                            478 ;--- end asm ---
   3721 7F C8 FE      [ 7]  479 	clr	_gameState	; gameState
   3724                     480 L33:
   3724 32 65         [ 5]  481 	leas	5,s	;,,
   3726 35 C0         [ 7]  482 	puls	u,pc	;
                            483 	.globl	_showInfo2
   3728                     484 _showInfo2:
   3728 34 20         [ 6]  485 	pshs	y	;
   372A 32 7D         [ 5]  486 	leas	-3,s	;,,
                            487 ;----- asm -----
                            488 ; 684 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            489 	; #ENR#[509]	zergnd();
                            490 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   372C BD F3 54      [ 8]  491 	jsr ___Reset0Ref; BIOS call
                            492 ; 686 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            493 	; #ENR#[510]	intens(0x50);
                            494 ;--- end asm ---
   372F C6 50         [ 2]  495 	ldb	#80	;,
   3731 E7 E4         [ 4]  496 	stb	,s	;, a
                            497 ;----- asm -----
                            498 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3733 A6 E4         [ 4]  499 	lda ,s	; a
   3735 BD F2 AB      [ 8]  500 	jsr ___Intensity_a; BIOS call
                            501 ; 689 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            502 	; #ENR#[512]	zergnd();
                            503 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3738 BD F3 54      [ 8]  504 	jsr ___Reset0Ref; BIOS call
                            505 ; 691 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            506 	; #ENR#[513]	positd(-50, 100);
                            507 ;--- end asm ---
   373B C6 80         [ 2]  508 	ldb	#-128	;,
   373D D7 04         [ 4]  509 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   373F C6 64         [ 2]  510 	ldb	#100	;,
   3741 E7 62         [ 5]  511 	stb	2,s	;, a
   3743 C6 CE         [ 2]  512 	ldb	#-50	;,
   3745 E7 E4         [ 4]  513 	stb	,s	;, b
                            514 ;----- asm -----
                            515 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3747 A6 62         [ 5]  516 	lda 2,s	; a
   3749 E6 E4         [ 4]  517 	ldb ,s	; b
   374B BD F3 12      [ 8]  518 	jsr ___Moveto_d; BIOS call
                            519 ; 693 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            520 	; #ENR#[514]	pack1x((void*)led8);
                            521 ;--- end asm ---
   374E C6 80         [ 2]  522 	ldb	#-128	;,
   3750 D7 04         [ 4]  523 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   3752 10 8E 3D 5A   [ 4]  524 	ldy	#_led8	; tmp27,
   3756 10 AF E4      [ 6]  525 	sty	,s	; tmp27, x
                            526 ;----- asm -----
                            527 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3759 AE E4         [ 5]  528 	ldx ,s	; x
   375B BD F4 10      [ 8]  529 	jsr ___Draw_VLp; BIOS call
                            530 ; 696 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            531 	; #ENR#[516]	zergnd();
                            532 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   375E BD F3 54      [ 8]  533 	jsr ___Reset0Ref; BIOS call
                            534 ; 698 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            535 	; #ENR#[517]	positd(-40, 110);
                            536 ;--- end asm ---
   3761 C6 80         [ 2]  537 	ldb	#-128	;,
   3763 D7 04         [ 4]  538 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   3765 C6 6E         [ 2]  539 	ldb	#110	;,
   3767 E7 E4         [ 4]  540 	stb	,s	;, a
   3769 C6 D8         [ 2]  541 	ldb	#-40	;,
   376B E7 62         [ 5]  542 	stb	2,s	;, b
                            543 ;----- asm -----
                            544 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   376D A6 E4         [ 4]  545 	lda ,s	; a
   376F E6 62         [ 5]  546 	ldb 2,s	; b
   3771 BD F3 12      [ 8]  547 	jsr ___Moveto_d; BIOS call
                            548 ; 700 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            549 	; #ENR#[518]	pack1x((void*)led8);
                            550 ;--- end asm ---
   3774 C6 80         [ 2]  551 	ldb	#-128	;,
   3776 D7 04         [ 4]  552 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   3778 10 AF E4      [ 6]  553 	sty	,s	; tmp27, x
                            554 ;----- asm -----
                            555 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   377B AE E4         [ 5]  556 	ldx ,s	; x
   377D BD F4 10      [ 8]  557 	jsr ___Draw_VLp; BIOS call
                            558 ; 703 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            559 	; #ENR#[520]	zergnd();
                            560 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3780 BD F3 54      [ 8]  561 	jsr ___Reset0Ref; BIOS call
                            562 ; 705 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            563 	; #ENR#[521]	positd(-30, 120);
                            564 ;--- end asm ---
   3783 C6 80         [ 2]  565 	ldb	#-128	;,
   3785 D7 04         [ 4]  566 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   3787 C6 78         [ 2]  567 	ldb	#120	;,
   3789 E7 62         [ 5]  568 	stb	2,s	;, a
   378B C6 E2         [ 2]  569 	ldb	#-30	;,
   378D E7 E4         [ 4]  570 	stb	,s	;, b
                            571 ;----- asm -----
                            572 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   378F A6 62         [ 5]  573 	lda 2,s	; a
   3791 E6 E4         [ 4]  574 	ldb ,s	; b
   3793 BD F3 12      [ 8]  575 	jsr ___Moveto_d; BIOS call
                            576 ; 707 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            577 	; #ENR#[522]	pack1x((void*)led8);
                            578 ;--- end asm ---
   3796 C6 80         [ 2]  579 	ldb	#-128	;,
   3798 D7 04         [ 4]  580 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   379A 10 AF E4      [ 6]  581 	sty	,s	; tmp27, x
                            582 ;----- asm -----
                            583 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   379D AE E4         [ 5]  584 	ldx ,s	; x
   379F BD F4 10      [ 8]  585 	jsr ___Draw_VLp; BIOS call
                            586 ; 710 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            587 	; #ENR#[524]	zergnd();
                            588 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37A2 BD F3 54      [ 8]  589 	jsr ___Reset0Ref; BIOS call
                            590 ; 712 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            591 	; #ENR#[525]	positd(0, 120);
                            592 ;--- end asm ---
   37A5 C6 80         [ 2]  593 	ldb	#-128	;,
   37A7 D7 04         [ 4]  594 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   37A9 C6 78         [ 2]  595 	ldb	#120	;,
   37AB E7 E4         [ 4]  596 	stb	,s	;, a
   37AD 6F 62         [ 7]  597 	clr	2,s	; b
                            598 ;----- asm -----
                            599 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37AF A6 E4         [ 4]  600 	lda ,s	; a
   37B1 E6 62         [ 5]  601 	ldb 2,s	; b
   37B3 BD F3 12      [ 8]  602 	jsr ___Moveto_d; BIOS call
                            603 ; 714 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            604 	; #ENR#[526]	pack1x((void*)led8);
                            605 ;--- end asm ---
   37B6 C6 80         [ 2]  606 	ldb	#-128	;,
   37B8 D7 04         [ 4]  607 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   37BA 10 AF E4      [ 6]  608 	sty	,s	; tmp27, x
                            609 ;----- asm -----
                            610 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37BD AE E4         [ 5]  611 	ldx ,s	; x
   37BF BD F4 10      [ 8]  612 	jsr ___Draw_VLp; BIOS call
                            613 ; 717 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            614 	; #ENR#[528]	zergnd();
                            615 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37C2 BD F3 54      [ 8]  616 	jsr ___Reset0Ref; BIOS call
                            617 ; 719 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            618 	; #ENR#[529]	positd(10, 120);
                            619 ;--- end asm ---
   37C5 C6 80         [ 2]  620 	ldb	#-128	;,
   37C7 D7 04         [ 4]  621 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   37C9 C6 78         [ 2]  622 	ldb	#120	;,
   37CB E7 62         [ 5]  623 	stb	2,s	;, a
   37CD C6 0A         [ 2]  624 	ldb	#10	;,
   37CF E7 E4         [ 4]  625 	stb	,s	;, b
                            626 ;----- asm -----
                            627 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37D1 A6 62         [ 5]  628 	lda 2,s	; a
   37D3 E6 E4         [ 4]  629 	ldb ,s	; b
   37D5 BD F3 12      [ 8]  630 	jsr ___Moveto_d; BIOS call
                            631 ; 721 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            632 	; #ENR#[530]	pack1x((void*)led8);
                            633 ;--- end asm ---
   37D8 C6 80         [ 2]  634 	ldb	#-128	;,
   37DA D7 04         [ 4]  635 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   37DC 10 AF E4      [ 6]  636 	sty	,s	; tmp27, x
                            637 ;----- asm -----
                            638 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37DF AE E4         [ 5]  639 	ldx ,s	; x
   37E1 BD F4 10      [ 8]  640 	jsr ___Draw_VLp; BIOS call
                            641 ; 724 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            642 	; #ENR#[532]	zergnd();
                            643 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37E4 BD F3 54      [ 8]  644 	jsr ___Reset0Ref; BIOS call
                            645 ; 726 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            646 	; #ENR#[533]	positd(20, 120);
                            647 ;--- end asm ---
   37E7 C6 80         [ 2]  648 	ldb	#-128	;,
   37E9 D7 04         [ 4]  649 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   37EB C6 78         [ 2]  650 	ldb	#120	;,
   37ED E7 E4         [ 4]  651 	stb	,s	;, a
   37EF C6 14         [ 2]  652 	ldb	#20	;,
   37F1 E7 62         [ 5]  653 	stb	2,s	;, b
                            654 ;----- asm -----
                            655 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37F3 A6 E4         [ 4]  656 	lda ,s	; a
   37F5 E6 62         [ 5]  657 	ldb 2,s	; b
   37F7 BD F3 12      [ 8]  658 	jsr ___Moveto_d; BIOS call
                            659 ; 728 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            660 	; #ENR#[534]	pack1x((void*)led8);
                            661 ;--- end asm ---
   37FA C6 80         [ 2]  662 	ldb	#-128	;,
   37FC D7 04         [ 4]  663 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   37FE 10 AF E4      [ 6]  664 	sty	,s	; tmp27, x
                            665 ;----- asm -----
                            666 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3801 AE E4         [ 5]  667 	ldx ,s	; x
   3803 BD F4 10      [ 8]  668 	jsr ___Draw_VLp; BIOS call
                            669 ;--- end asm ---
   3806 32 63         [ 5]  670 	leas	3,s	;,,
   3808 35 A0         [ 7]  671 	puls	y,pc	;
                            672 	.globl	_showInfo
   380A                     673 _showInfo:
   380A 34 40         [ 6]  674 	pshs	u	;
   380C 32 7C         [ 5]  675 	leas	-4,s	;,,
                            676 ;----- asm -----
                            677 ; 734 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            678 	; #ENR#[539]    Intensity_a(0x5f);
                            679 ;--- end asm ---
   380E C6 5F         [ 2]  680 	ldb	#95	;,
   3810 E7 63         [ 5]  681 	stb	3,s	;, a
                            682 ;----- asm -----
                            683 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3812 A6 63         [ 5]  684 	lda 3,s	; a
   3814 BD F2 AB      [ 8]  685 	jsr ___Intensity_a; BIOS call
                            686 ; 736 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            687 	; #ENR#[540]    Vec_Text_Width = 100;
                            688 ;--- end asm ---
   3817 C6 64         [ 2]  689 	ldb	#100	;,
   3819 F7 C8 2B      [ 5]  690 	stb	_Vec_Text_Width	;, Vec_Text_Width
                            691 ;----- asm -----
                            692 ; 738 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            693 	; #ENR#[541]    Print_Str_d(100, -70, infoText);
                            694 ;--- end asm ---
   381C E7 63         [ 5]  695 	stb	3,s	;, a
   381E C6 BA         [ 2]  696 	ldb	#-70	;,
   3820 E7 62         [ 5]  697 	stb	2,s	;, b
   3822 8E C8 EF      [ 3]  698 	ldx	#_infoText	;,
   3825 AF E4         [ 5]  699 	stx	,s	;, u
                            700 ;----- asm -----
                            701 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3827 A6 63         [ 5]  702 	lda 3,s	; a
   3829 E6 62         [ 5]  703 	ldb 2,s	; b
   382B EE E4         [ 5]  704 	ldu ,s	; u
   382D BD F3 7A      [ 8]  705 	jsr ___Print_Str_d; BIOS call
                            706 ;--- end asm ---
   3830 32 64         [ 5]  707 	leas	4,s	;,,
   3832 35 C0         [ 7]  708 	puls	u,pc	;
                            709 	.globl	_blockMovingToStart
   3834                     710 _blockMovingToStart:
                            711 ;----- asm -----
                            712 ; 360 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            713 	; #ENR#[304]	drawField();
                            714 ;--- end asm ---
   3834 BD 36 21      [ 8]  715 	jsr	_drawField
                            716 ;----- asm -----
                            717 ; 362 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            718 	; #ENR#[305]	drawBlock(blockYOfs);
                            719 ;--- end asm ---
   3837 F6 C8 E0      [ 5]  720 	ldb	_blockYOfs	;, blockYOfs
   383A BD 09 92      [ 8]  721 	jsr	_drawBlock
                            722 ;----- asm -----
                            723 ; 364 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            724 	; #ENR#[306]	blockYOfs++;
                            725 ;--- end asm ---
   383D F6 C8 E0      [ 5]  726 	ldb	_blockYOfs	; blockYOfs.23, blockYOfs
   3840 5C            [ 2]  727 	incb	; blockYOfs.23
   3841 F7 C8 E0      [ 5]  728 	stb	_blockYOfs	; blockYOfs.23, blockYOfs
                            729 ;----- asm -----
                            730 ; 366 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            731 	; #ENR#[307]	if (blockYOfs == 0) {
                            732 ;--- end asm ---
   3844 5D            [ 2]  733 	tstb	; blockYOfs.23
   3845 26 05         [ 3]  734 	bne	L41	;
                            735 ;----- asm -----
                            736 ; 368 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            737 	; #ENR#[308]		gameState = BlockWaiting;
                            738 ;--- end asm ---
   3847 C6 03         [ 2]  739 	ldb	#3	;,
   3849 F7 C8 FE      [ 5]  740 	stb	_gameState	;, gameState
   384C                     741 L41:
   384C 39            [ 5]  742 	rts
                            743 	.globl	_startLevel
   384D                     744 _startLevel:
   384D 32 7E         [ 5]  745 	leas	-2,s	;,,
                            746 ;----- asm -----
                            747 ; 277 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            748 	; #ENR#[237]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                            749 ;--- end asm ---
   384F F6 C8 87      [ 5]  750 	ldb	_levelNumber	; tmp30, levelNumber
   3852 58            [ 2]  751 	aslb	; tmp30
   3853 BD 35 67      [ 8]  752 	jsr	_readEeprom
   3856 4F            [ 2]  753 	clra		;zero_extendqihi: R:b -> R:d	; D.2297, D.2297
   3857 FD C8 FB      [ 6]  754 	std	_levelHighscore	; D.2297, levelHighscore
                            755 ;----- asm -----
                            756 ; 279 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            757 	; #ENR#[238]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                            758 ;--- end asm ---
   385A F6 C8 87      [ 5]  759 	ldb	_levelNumber	; tmp32, levelNumber
   385D 58            [ 2]  760 	aslb	; tmp32
   385E 5C            [ 2]  761 	incb	; tmp33
   385F BD 35 67      [ 8]  762 	jsr	_readEeprom
   3862 1F 98         [ 6]  763 	tfr	b,a	;,
   3864 5F            [ 2]  764 	clrb	;
   3865 BA C8 FB      [ 5]  765 	ora	_levelHighscore	;, levelHighscore
   3868 FA C8 FC      [ 5]  766 	orb	_levelHighscore+1	;, levelHighscore
   386B FD C8 FB      [ 6]  767 	std	_levelHighscore	; levelHighscore.16, levelHighscore
                            768 ;----- asm -----
                            769 ; 281 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            770 	; #ENR#[239]	if (levelHighscore == 0) levelHighscore = 999;
                            771 ;--- end asm ---
   386E 10 83 00 00   [ 5]  772 	cmpd	#0	; levelHighscore.16
   3872 26 06         [ 3]  773 	bne	L43	;
   3874 8E 03 E7      [ 3]  774 	ldx	#999	;,
   3877 BF C8 FB      [ 6]  775 	stx	_levelHighscore	;, levelHighscore
   387A                     776 L43:
                            777 ;----- asm -----
                            778 ; 283 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            779 	; #ENR#[240]    level = levels[levelNumber];
                            780 ;--- end asm ---
   387A F6 C8 87      [ 5]  781 	ldb	_levelNumber	;, levelNumber
   387D 4F            [ 2]  782 	clra		;zero_extendqihi: R:b -> R:d	;,
   387E ED E4         [ 5]  783 	std	,s	;,
   3880 58            [ 2]  784 	aslb	;
   3881 49            [ 2]  785 	rola	;
   3882 1F 01         [ 6]  786 	tfr	d,x	;, tmp39
   3884 AE 89 4E BC   [ 9]  787 	ldx	_levels,x	;, levels
   3888 BF C8 FF      [ 6]  788 	stx	_level	;, level
                            789 ;----- asm -----
                            790 ; 285 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            791 	; #ENR#[241]	initSwatches();
                            792 ;--- end asm ---
   388B BD 3F FB      [ 8]  793 	jsr	_initSwatches
                            794 ;----- asm -----
                            795 ; 287 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            796 	; #ENR#[242]	initLevel();
                            797 ;--- end asm ---
   388E BD 43 B8      [ 8]  798 	jsr	_initLevel
                            799 ;----- asm -----
                            800 ; 289 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            801 	; #ENR#[243]	blockX = level->start.x;
                            802 ;--- end asm ---
   3891 BE C8 FF      [ 6]  803 	ldx	_level	; level, level
   3894 E6 02         [ 5]  804 	ldb	2,x	;, <variable>.start.x
   3896 F7 C8 E4      [ 5]  805 	stb	_blockX	;, blockX
                            806 ;----- asm -----
                            807 ; 291 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            808 	; #ENR#[244]	blockY = level->start.y;
                            809 ;--- end asm ---
   3899 E6 03         [ 5]  810 	ldb	3,x	;, <variable>.start.y
   389B F7 C8 E5      [ 5]  811 	stb	_blockY	;, blockY
                            812 ;----- asm -----
                            813 ; 293 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            814 	; #ENR#[245]	blockStartLevel();
                            815 ;--- end asm ---
   389E BD 08 B9      [ 8]  816 	jsr	_blockStartLevel
                            817 ;----- asm -----
                            818 ; 295 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            819 	; #ENR#[246]	blockYOfs = -30;
                            820 ;--- end asm ---
   38A1 C6 E2         [ 2]  821 	ldb	#-30	;,
   38A3 F7 C8 E0      [ 5]  822 	stb	_blockYOfs	;, blockYOfs
                            823 ;----- asm -----
                            824 ; 297 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            825 	; #ENR#[247]	gameState = BlockMovingToStart;
                            826 ;--- end asm ---
   38A6 C6 02         [ 2]  827 	ldb	#2	;,
   38A8 F7 C8 FE      [ 5]  828 	stb	_gameState	;, gameState
                            829 ;----- asm -----
                            830 ; 299 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            831 	; #ENR#[248]	changeMusic(startMusic);
                            832 ;--- end asm ---
   38AB 8E 3C F8      [ 3]  833 	ldx	#_startMusic	;,
   38AE BD 36 18      [ 8]  834 	jsr	_changeMusic
                            835 ;----- asm -----
                            836 ; 301 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            837 	; #ENR#[249]	*vecx = 2;
                            838 ;--- end asm ---
   38B1 C6 02         [ 2]  839 	ldb	#2	;,
   38B3 E7 9F C8 82   [ 9]  840 	stb	[_vecx]	;,* vecx
                            841 ;----- asm -----
                            842 ; 303 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            843 	; #ENR#[250]	moveCount = 0;
                            844 ;--- end asm ---
   38B7 CC 00 00      [ 3]  845 	ldd	#0	;,
   38BA FD C8 F9      [ 6]  846 	std	_moveCount	;, moveCount
                            847 ;----- asm -----
                            848 ; 305 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            849 	; #ENR#[251]	updateInfoText();
                            850 ;--- end asm ---
   38BD BD 35 F9      [ 8]  851 	jsr	_updateInfoText
   38C0 32 62         [ 5]  852 	leas	2,s	;,,
   38C2 39            [ 5]  853 	rts
   38C3                     854 LC3:
   38C3 4D 41 49 4E 20 4D   855 	.byte	77,65,73,78,32,77,69,78
        45 4E
   38CB 55 80 00            856 	.byte	85,-128,0
   38CE                     857 LC4:
   38CE 31 20 53 54 41 52   858 	.byte	49,32,83,84,65,82,84,32
        54 20
   38D6 47 41 4D 45 80 00   859 	.byte	71,65,77,69,-128,0
   38DC                     860 LC5:
   38DC 32 20 43 4C 45 41   861 	.byte	50,32,67,76,69,65,82,32
        52 20
   38E4 48 49 47 48 53 43   862 	.byte	72,73,71,72,83,67,79,82
        4F 52
   38EC 45 80 00            863 	.byte	69,-128,0
                            864 	.globl	_mainMenu
   38EF                     865 _mainMenu:
   38EF 34 40         [ 6]  866 	pshs	u	;
   38F1 32 7C         [ 5]  867 	leas	-4,s	;,,
                            868 ;----- asm -----
                            869 ; 616 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            870 	; #ENR#[463]	Read_Btns();
                            871 ; 2286 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38F3 BD F1 BA      [ 8]  872 	jsr ___Read_Btns; BIOS call
                            873 ; 618 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            874 	; #ENR#[464]    Intensity_a(0x5f);
                            875 ;--- end asm ---
   38F6 C6 5F         [ 2]  876 	ldb	#95	;,
   38F8 E7 63         [ 5]  877 	stb	3,s	;, a
                            878 ;----- asm -----
                            879 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38FA A6 63         [ 5]  880 	lda 3,s	; a
   38FC BD F2 AB      [ 8]  881 	jsr ___Intensity_a; BIOS call
                            882 ; 620 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            883 	; #ENR#[465]    Vec_Text_Width = 90;
                            884 ;--- end asm ---
   38FF C6 5A         [ 2]  885 	ldb	#90	;,
   3901 F7 C8 2B      [ 5]  886 	stb	_Vec_Text_Width	;, Vec_Text_Width
                            887 ;----- asm -----
                            888 ; 622 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            889 	; #ENR#[466]    Print_Str_d(100, -70, "MAIN MENU€");
                            890 ;--- end asm ---
   3904 CB 0A         [ 2]  891 	addb	#10	;,
   3906 E7 63         [ 5]  892 	stb	3,s	;, a
   3908 C6 BA         [ 2]  893 	ldb	#-70	;,
   390A E7 62         [ 5]  894 	stb	2,s	;, b
   390C 8E 38 C3      [ 3]  895 	ldx	#LC3	;,
   390F AF E4         [ 5]  896 	stx	,s	;, u
                            897 ;----- asm -----
                            898 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3911 A6 63         [ 5]  899 	lda 3,s	; a
   3913 E6 62         [ 5]  900 	ldb 2,s	; b
   3915 EE E4         [ 5]  901 	ldu ,s	; u
   3917 BD F3 7A      [ 8]  902 	jsr ___Print_Str_d; BIOS call
                            903 ; 624 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            904 	; #ENR#[467]    Print_Str_d(50, -110, "1 START GAME€");
                            905 ;--- end asm ---
   391A C6 32         [ 2]  906 	ldb	#50	;,
   391C E7 62         [ 5]  907 	stb	2,s	;, a
   391E C6 92         [ 2]  908 	ldb	#-110	;,
   3920 E7 63         [ 5]  909 	stb	3,s	;, b
   3922 8E 38 CE      [ 3]  910 	ldx	#LC4	;,
   3925 AF E4         [ 5]  911 	stx	,s	;, u
                            912 ;----- asm -----
                            913 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3927 A6 62         [ 5]  914 	lda 2,s	; a
   3929 E6 63         [ 5]  915 	ldb 3,s	; b
   392B EE E4         [ 5]  916 	ldu ,s	; u
   392D BD F3 7A      [ 8]  917 	jsr ___Print_Str_d; BIOS call
                            918 ; 626 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            919 	; #ENR#[468]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE€");
                            920 ;--- end asm ---
   3930 C6 14         [ 2]  921 	ldb	#20	;,
   3932 E7 63         [ 5]  922 	stb	3,s	;, a
   3934 C6 92         [ 2]  923 	ldb	#-110	;,
   3936 E7 62         [ 5]  924 	stb	2,s	;, b
   3938 8E 38 DC      [ 3]  925 	ldx	#LC5	;,
   393B AF E4         [ 5]  926 	stx	,s	;, u
                            927 ;----- asm -----
                            928 ; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   393D A6 63         [ 5]  929 	lda 3,s	; a
   393F E6 62         [ 5]  930 	ldb 2,s	; b
   3941 EE E4         [ 5]  931 	ldu ,s	; u
   3943 BD F3 7A      [ 8]  932 	jsr ___Print_Str_d; BIOS call
                            933 ; 628 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            934 	; #ENR#[469]	if (Vec_Buttons & 1) {
                            935 ;--- end asm ---
   3946 F6 C8 11      [ 5]  936 	ldb	_Vec_Buttons	;, Vec_Buttons
   3949 C5 01         [ 2]  937 	bitb	#1	;,
   394B 27 03         [ 3]  938 	beq	L46	;
                            939 ;----- asm -----
                            940 ; 630 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            941 	; #ENR#[470]		startLevel();
                            942 ;--- end asm ---
   394D BD 38 4D      [ 8]  943 	jsr	_startLevel
   3950                     944 L46:
                            945 ;----- asm -----
                            946 ; 633 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            947 	; #ENR#[472]	if (Vec_Buttons & 2) {
                            948 ;--- end asm ---
   3950 F6 C8 11      [ 5]  949 	ldb	_Vec_Buttons	;, Vec_Buttons
   3953 C5 02         [ 2]  950 	bitb	#2	;,
   3955 27 05         [ 3]  951 	beq	L48	;
                            952 ;----- asm -----
                            953 ; 635 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            954 	; #ENR#[473]		gameState = ClearMenu;
                            955 ;--- end asm ---
   3957 C6 01         [ 2]  956 	ldb	#1	;,
   3959 F7 C8 FE      [ 5]  957 	stb	_gameState	;, gameState
   395C                     958 L48:
   395C 32 64         [ 5]  959 	leas	4,s	;,,
   395E 35 C0         [ 7]  960 	puls	u,pc	;
                            961 	.globl	_blockMovingAtEnd
   3960                     962 _blockMovingAtEnd:
   3960 32 7E         [ 5]  963 	leas	-2,s	;,,
                            964 ;----- asm -----
                            965 ; 590 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            966 	; #ENR#[447]	drawField();
                            967 ;--- end asm ---
   3962 BD 36 21      [ 8]  968 	jsr	_drawField
                            969 ;----- asm -----
                            970 ; 592 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            971 	; #ENR#[448]	drawBlock(blockYOfs);
                            972 ;--- end asm ---
   3965 F6 C8 E0      [ 5]  973 	ldb	_blockYOfs	;, blockYOfs
   3968 BD 09 92      [ 8]  974 	jsr	_drawBlock
                            975 ;----- asm -----
                            976 ; 594 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            977 	; #ENR#[449]	blockYOfs++;
                            978 ;--- end asm ---
   396B F6 C8 E0      [ 5]  979 	ldb	_blockYOfs	; blockYOfs.52, blockYOfs
   396E 5C            [ 2]  980 	incb	; blockYOfs.52
   396F F7 C8 E0      [ 5]  981 	stb	_blockYOfs	; blockYOfs.52, blockYOfs
                            982 ;----- asm -----
                            983 ; 596 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            984 	; #ENR#[450]	if (blockYOfs == 30) {
                            985 ;--- end asm ---
   3972 C1 1E         [ 2]  986 	cmpb	#30	;cmpqi:	; blockYOfs.52,
   3974 10 26 00 3F   [ 6]  987 	lbne	L53	;
                            988 ;----- asm -----
                            989 ; 598 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            990 	; #ENR#[451]		if (moveCount < levelHighscore) {
                            991 ;--- end asm ---
   3978 BE C8 F9      [ 6]  992 	ldx	_moveCount	; moveCount.53, moveCount
   397B BC C8 FB      [ 7]  993 	cmpx	_levelHighscore	;cmphi:	; moveCount.53, levelHighscore
   397E 24 25         [ 3]  994 	bhs	L51	;
                            995 ;----- asm -----
                            996 ; 600 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                            997 	; #ENR#[452]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                            998 ;--- end asm ---
   3980 F6 C8 87      [ 5]  999 	ldb	_levelNumber	;, levelNumber
   3983 58            [ 2] 1000 	aslb	;
   3984 E7 E4         [ 4] 1001 	stb	,s	;,
   3986 1F 10         [ 6] 1002 	tfr	x,d	; moveCount.53,
   3988 34 04         [ 6] 1003 	pshs	b	;
   398A E6 61         [ 5] 1004 	ldb	1,s	;,
   398C BD 35 4F      [ 8] 1005 	jsr	_writeEeprom
                           1006 ;----- asm -----
                           1007 ; 602 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1008 	; #ENR#[453]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           1009 ;--- end asm ---
   398F F6 C8 87      [ 5] 1010 	ldb	_levelNumber	; tmp31, levelNumber
   3992 58            [ 2] 1011 	aslb	; tmp31
   3993 5C            [ 2] 1012 	incb	; tmp31
   3994 E7 62         [ 5] 1013 	stb	2,s	; tmp31,
   3996 FC C8 F9      [ 6] 1014 	ldd	_moveCount	; tmp33, moveCount
   3999 1F 89         [ 6] 1015 	tfr	a,b	;,
   399B 4F            [ 2] 1016 	clra		;zero_extendqihi: R:b -> R:d	;,
   399C 34 04         [ 6] 1017 	pshs	b	; tmp33
   399E E6 63         [ 5] 1018 	ldb	3,s	;,
   39A0 BD 35 4F      [ 8] 1019 	jsr	_writeEeprom
   39A3 32 62         [ 5] 1020 	leas	2,s	;,,
   39A5                    1021 L51:
                           1022 ;----- asm -----
                           1023 ; 605 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1024 	; #ENR#[455]		levelNumber++;
                           1025 ;--- end asm ---
   39A5 F6 C8 87      [ 5] 1026 	ldb	_levelNumber	; levelNumber.56, levelNumber
   39A8 5C            [ 2] 1027 	incb	; levelNumber.56
   39A9 F7 C8 87      [ 5] 1028 	stb	_levelNumber	; levelNumber.56, levelNumber
                           1029 ;----- asm -----
                           1030 ; 607 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1031 	; #ENR#[456]		if (levelNumber >= levelCount) levelNumber = 0;
                           1032 ;--- end asm ---
   39AC F1 44 B3      [ 5] 1033 	cmpb	_levelCount	;cmpqi:	; levelNumber.56, levelCount
   39AF 25 03         [ 3] 1034 	blo	L52	;
   39B1 7F C8 87      [ 7] 1035 	clr	_levelNumber	; levelNumber
   39B4                    1036 L52:
                           1037 ;----- asm -----
                           1038 ; 609 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1039 	; #ENR#[457]		startLevel();
                           1040 ;--- end asm ---
   39B4 BD 38 4D      [ 8] 1041 	jsr	_startLevel
   39B7                    1042 L53:
   39B7 32 62         [ 5] 1043 	leas	2,s	;,,
   39B9 39            [ 5] 1044 	rts
                           1045 	.globl	_blockFalling
   39BA                    1046 _blockFalling:
   39BA 32 7F         [ 5] 1047 	leas	-1,s	;,,
                           1048 ;----- asm -----
                           1049 ; 570 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1050 	; #ENR#[434]	drawField();
                           1051 ;--- end asm ---
   39BC BD 36 21      [ 8] 1052 	jsr	_drawField
                           1053 ;----- asm -----
                           1054 ; 572 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1055 	; #ENR#[435]	blockYOfs++;
                           1056 ;--- end asm ---
   39BF F6 C8 E0      [ 5] 1057 	ldb	_blockYOfs	;, blockYOfs
   39C2 5C            [ 2] 1058 	incb	;
   39C3 E7 E4         [ 4] 1059 	stb	,s	;, blockYOfs.50
   39C5 F7 C8 E0      [ 5] 1060 	stb	_blockYOfs	;, blockYOfs
                           1061 ;----- asm -----
                           1062 ; 574 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1063 	; #ENR#[436]	if (blockYOfs < 12) {
                           1064 ;--- end asm ---
   39C8 C1 0B         [ 2] 1065 	cmpb	#11	;cmpqi:	;,
   39CA 2E 0A         [ 3] 1066 	bgt	L55	;
                           1067 ;----- asm -----
                           1068 ; 576 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1069 	; #ENR#[437]		drawBlock(-blockYOfs*blockYOfs);
                           1070 ;--- end asm ---
   39CC 50            [ 2] 1071 	negb	; tmp28
   39CD A6 E4         [ 4] 1072 	lda	,s	;mulqihi3	; blockYOfs.50
   39CF 3D            [11] 1073 	mul
                           1074 		;movlsbqihi: D->B
   39D0 BD 09 92      [ 8] 1075 	jsr	_drawBlock
                           1076 ;----- asm -----
                           1077 ; 578 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1078 	; #ENR#[438]		doBlockAnimation();
                           1079 ;--- end asm ---
   39D3 BD 08 90      [ 8] 1080 	jsr	_doBlockAnimation
   39D6                    1081 L55:
                           1082 ;----- asm -----
                           1083 ; 581 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1084 	; #ENR#[440]	if (blockYOfs == 50) {
                           1085 ;--- end asm ---
   39D6 F6 C8 E0      [ 5] 1086 	ldb	_blockYOfs	;, blockYOfs
   39D9 C1 32         [ 2] 1087 	cmpb	#50	;cmpqi:	;,
   39DB 26 03         [ 3] 1088 	bne	L57	;
                           1089 ;----- asm -----
                           1090 ; 583 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1091 	; #ENR#[441]		startLevel();
                           1092 ;--- end asm ---
   39DD BD 38 4D      [ 8] 1093 	jsr	_startLevel
   39E0                    1094 L57:
   39E0 32 61         [ 5] 1095 	leas	1,s	;,,
   39E2 39            [ 5] 1096 	rts
                           1097 	.globl	_moveBlock
   39E3                    1098 _moveBlock:
                           1099 ;----- asm -----
                           1100 ; 253 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1101 	; #ENR#[221]	moveBlockImpl(move);
                           1102 ;--- end asm ---
   39E3 BD 06 33      [ 8] 1103 	jsr	_moveBlockImpl
                           1104 ;----- asm -----
                           1105 ; 255 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1106 	; #ENR#[222]	if (moveCount < 999) moveCount++;
                           1107 ;--- end asm ---
   39E6 BE C8 F9      [ 6] 1108 	ldx	_moveCount	; moveCount.8, moveCount
   39E9 8C 03 E6      [ 4] 1109 	cmpx	#998	;cmphi:	; moveCount.8,
   39EC 22 05         [ 3] 1110 	bhi	L59	;
   39EE 30 01         [ 5] 1111 	leax	1,x	;,, moveCount.8
   39F0 BF C8 F9      [ 6] 1112 	stx	_moveCount	;, moveCount
   39F3                    1113 L59:
                           1114 ;----- asm -----
                           1115 ; 257 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1116 	; #ENR#[223]	updateInfoText();
                           1117 ;--- end asm ---
   39F3 BD 35 F9      [ 8] 1118 	jsr	_updateInfoText
   39F6 39            [ 5] 1119 	rts
                           1120 	.globl	_blockWaiting
   39F7                    1121 _blockWaiting:
                           1122 ;----- asm -----
                           1123 ; 384 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1124 	; #ENR#[321]	drawField();
                           1125 ;--- end asm ---
   39F7 BD 36 21      [ 8] 1126 	jsr	_drawField
                           1127 ;----- asm -----
                           1128 ; 386 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1129 	; #ENR#[322]	drawBlock(0);
                           1130 ;--- end asm ---
   39FA 5F            [ 2] 1131 	clrb	;
   39FB BD 09 92      [ 8] 1132 	jsr	_drawBlock
                           1133 ;----- asm -----
                           1134 ; 388 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1135 	; #ENR#[323]	joybit();
                           1136 ; 2354 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   39FE BD F1 F8      [ 8] 1137 	jsr ___Joy_Digital; BIOS call
                           1138 ; 390 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1139 	; #ENR#[324]	if (pot0 < -10) {
                           1140 ;--- end asm ---
   3A01 F6 C8 1B      [ 5] 1141 	ldb	-14309	; D.2324,
   3A04 C1 F6         [ 2] 1142 	cmpb	#-10	;cmpqi:	; D.2324,
   3A06 2C 0C         [ 3] 1143 	bge	L62	;
                           1144 ;----- asm -----
                           1145 ; 392 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1146 	; #ENR#[325]		moveBlock(Left);
                           1147 ;--- end asm ---
   3A08 5F            [ 2] 1148 	clrb	;
   3A09 BD 39 E3      [ 8] 1149 	jsr	_moveBlock
                           1150 ;----- asm -----
                           1151 ; 394 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1152 	; #ENR#[326]		gameState = BlockMoving;
                           1153 ;--- end asm ---
   3A0C C6 04         [ 2] 1154 	ldb	#4	;,
   3A0E F7 C8 FE      [ 5] 1155 	stb	_gameState	;, gameState
   3A11 16 00 37      [ 5] 1156 	lbra	L63	;
   3A14                    1157 L62:
   3A14 F6 C8 1B      [ 5] 1158 	ldb	-14309	; D.2325,
   3A17 C1 0A         [ 2] 1159 	cmpb	#10	;cmpqi:	; D.2325,
   3A19 2F 0C         [ 3] 1160 	ble	L64	;
                           1161 ;----- asm -----
                           1162 ; 397 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1163 	; #ENR#[328]		moveBlock(Right);
                           1164 ;--- end asm ---
   3A1B C6 02         [ 2] 1165 	ldb	#2	;,
   3A1D BD 39 E3      [ 8] 1166 	jsr	_moveBlock
                           1167 ;----- asm -----
                           1168 ; 399 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1169 	; #ENR#[329]		gameState = BlockMoving;
                           1170 ;--- end asm ---
   3A20 C6 04         [ 2] 1171 	ldb	#4	;,
   3A22 F7 C8 FE      [ 5] 1172 	stb	_gameState	;, gameState
   3A25 20 24         [ 3] 1173 	bra	L63	;
   3A27                    1174 L64:
   3A27 F6 C8 1C      [ 5] 1175 	ldb	-14308	; D.2327,
   3A2A C1 F6         [ 2] 1176 	cmpb	#-10	;cmpqi:	; D.2327,
   3A2C 2C 0C         [ 3] 1177 	bge	L65	;
                           1178 ;----- asm -----
                           1179 ; 402 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1180 	; #ENR#[331]		moveBlock(Down);
                           1181 ;--- end asm ---
   3A2E C6 03         [ 2] 1182 	ldb	#3	;,
   3A30 BD 39 E3      [ 8] 1183 	jsr	_moveBlock
                           1184 ;----- asm -----
                           1185 ; 404 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1186 	; #ENR#[332]		gameState = BlockMoving;
                           1187 ;--- end asm ---
   3A33 C6 04         [ 2] 1188 	ldb	#4	;,
   3A35 F7 C8 FE      [ 5] 1189 	stb	_gameState	;, gameState
   3A38 20 11         [ 3] 1190 	bra	L63	;
   3A3A                    1191 L65:
   3A3A F6 C8 1C      [ 5] 1192 	ldb	-14308	; D.2328,
   3A3D C1 0A         [ 2] 1193 	cmpb	#10	;cmpqi:	; D.2328,
   3A3F 2F 0A         [ 3] 1194 	ble	L63	;
                           1195 ;----- asm -----
                           1196 ; 407 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1197 	; #ENR#[334]		moveBlock(Up);
                           1198 ;--- end asm ---
   3A41 C6 01         [ 2] 1199 	ldb	#1	;,
   3A43 BD 39 E3      [ 8] 1200 	jsr	_moveBlock
                           1201 ;----- asm -----
                           1202 ; 409 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1203 	; #ENR#[335]		gameState = BlockMoving;
                           1204 ;--- end asm ---
   3A46 C6 04         [ 2] 1205 	ldb	#4	;,
   3A48 F7 C8 FE      [ 5] 1206 	stb	_gameState	;, gameState
   3A4B                    1207 L63:
                           1208 ;----- asm -----
                           1209 ; 412 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1210 	; #ENR#[337]	if (gameState == BlockMoving) {
                           1211 ;--- end asm ---
   3A4B F6 C8 FE      [ 5] 1212 	ldb	_gameState	;, gameState
   3A4E C1 04         [ 2] 1213 	cmpb	#4	;cmpqi:	;,
   3A50 26 0C         [ 3] 1214 	bne	L66	;
                           1215 ;----- asm -----
                           1216 ; 414 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1217 	; #ENR#[338]		changeMusic(movingMusic);
                           1218 ;--- end asm ---
   3A52 8E 3D 52      [ 3] 1219 	ldx	#_movingMusic	;,
   3A55 BD 36 18      [ 8] 1220 	jsr	_changeMusic
                           1221 ;----- asm -----
                           1222 ; 416 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1223 	; #ENR#[339]		*vecx = 3;
                           1224 ;--- end asm ---
   3A58 C6 03         [ 2] 1225 	ldb	#3	;,
   3A5A E7 9F C8 82   [ 9] 1226 	stb	[_vecx]	;,* vecx
   3A5E                    1227 L66:
                           1228 ;----- asm -----
                           1229 ; 420 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1230 	; #ENR#[342]    	Read_Btns();
                           1231 ; 2286 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3A5E BD F1 BA      [ 8] 1232 	jsr ___Read_Btns; BIOS call
                           1233 ; 422 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1234 	; #ENR#[343]    	if (Vec_Buttons & 1) {
                           1235 ;--- end asm ---
   3A61 F6 C8 11      [ 5] 1236 	ldb	_Vec_Buttons	;, Vec_Buttons
   3A64 C5 01         [ 2] 1237 	bitb	#1	;,
   3A66 27 18         [ 3] 1238 	beq	L67	;
                           1239 ;----- asm -----
                           1240 ; 424 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1241 	; #ENR#[344]		levelNumber++;
                           1242 ;--- end asm ---
   3A68 F6 C8 87      [ 5] 1243 	ldb	_levelNumber	; levelNumber.30, levelNumber
   3A6B 5C            [ 2] 1244 	incb	; levelNumber.30
   3A6C F7 C8 87      [ 5] 1245 	stb	_levelNumber	; levelNumber.30, levelNumber
                           1246 ;----- asm -----
                           1247 ; 426 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1248 	; #ENR#[345]		if (levelNumber >= levelCount) levelNumber = 0;
                           1249 ;--- end asm ---
   3A6F F1 44 B3      [ 5] 1250 	cmpb	_levelCount	;cmpqi:	; levelNumber.30, levelCount
   3A72 25 03         [ 3] 1251 	blo	L68	;
   3A74 7F C8 87      [ 7] 1252 	clr	_levelNumber	; levelNumber
   3A77                    1253 L68:
                           1254 ;----- asm -----
                           1255 ; 428 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1256 	; #ENR#[346]		setBank(nextBank);
                           1257 ;--- end asm ---
   3A77 F6 44 B5      [ 5] 1258 	ldb	_nextBank	;, nextBank
   3A7A BD 36 73      [ 8] 1259 	jsr	_setBank
                           1260 ;----- asm -----
                           1261 ; 430 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1262 	; #ENR#[347]    		startLevel();
                           1263 ;--- end asm ---
   3A7D BD 38 4D      [ 8] 1264 	jsr	_startLevel
   3A80                    1265 L67:
                           1266 ;----- asm -----
                           1267 ; 433 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1268 	; #ENR#[349]    	if (Vec_Buttons & 2) {
                           1269 ;--- end asm ---
   3A80 F6 C8 11      [ 5] 1270 	ldb	_Vec_Buttons	;, Vec_Buttons
   3A83 C5 02         [ 2] 1271 	bitb	#2	;,
   3A85 27 08         [ 3] 1272 	beq	L70	;
                           1273 ;----- asm -----
                           1274 ; 435 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1275 	; #ENR#[350]		if (splitMode) {
                           1276 ;--- end asm ---
   3A87 7D C8 E3      [ 7] 1277 	tst	_splitMode	; splitMode
   3A8A 27 03         [ 3] 1278 	beq	L70	;
                           1279 ;----- asm -----
                           1280 ; 437 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1281 	; #ENR#[351]			swapSplit();
                           1282 ;--- end asm ---
   3A8C BD 09 6D      [ 8] 1283 	jsr	_swapSplit
   3A8F                    1284 L70:
   3A8F 39            [ 5] 1285 	rts
                           1286 	.globl	_startBlockFalling
   3A90                    1287 _startBlockFalling:
                           1288 ;----- asm -----
                           1289 ; 263 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1290 	; #ENR#[228]	gameState = BlockFalling;
                           1291 ;--- end asm ---
   3A90 C6 05         [ 2] 1292 	ldb	#5	;,
   3A92 F7 C8 FE      [ 5] 1293 	stb	_gameState	;, gameState
                           1294 ;----- asm -----
                           1295 ; 265 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1296 	; #ENR#[229]	blockYOfs = 0;
                           1297 ;--- end asm ---
   3A95 7F C8 E0      [ 7] 1298 	clr	_blockYOfs	; blockYOfs
                           1299 ;----- asm -----
                           1300 ; 267 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1301 	; #ENR#[230]	moveBlock(lastBlockDirection);
                           1302 ;--- end asm ---
   3A98 F6 C8 E1      [ 5] 1303 	ldb	_lastBlockDirection	;, lastBlockDirection
   3A9B BD 39 E3      [ 8] 1304 	jsr	_moveBlock
                           1305 ;----- asm -----
                           1306 ; 269 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1307 	; #ENR#[231]	changeMusic(fallingMusic);
                           1308 ;--- end asm ---
   3A9E 8E 3D 32      [ 3] 1309 	ldx	#_fallingMusic	;,
   3AA1 BD 36 18      [ 8] 1310 	jsr	_changeMusic
                           1311 ;----- asm -----
                           1312 ; 271 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1313 	; #ENR#[232]	*vecx = 0;
                           1314 ;--- end asm ---
   3AA4 6F 9F C8 82   [11] 1315 	clr	[_vecx]	;* vecx
   3AA8 39            [ 5] 1316 	rts
                           1317 	.globl	_blockMoving
   3AA9                    1318 _blockMoving:
   3AA9 32 79         [ 5] 1319 	leas	-7,s	;,,
                           1320 ;----- asm -----
                           1321 ; 445 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1322 	; #ENR#[358]	drawField();
                           1323 ;--- end asm ---
   3AAB BD 36 21      [ 8] 1324 	jsr	_drawField
                           1325 ;----- asm -----
                           1326 ; 447 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1327 	; #ENR#[359]	drawBlock(0);
                           1328 ;--- end asm ---
   3AAE 5F            [ 2] 1329 	clrb	;
   3AAF BD 09 92      [ 8] 1330 	jsr	_drawBlock
                           1331 ;----- asm -----
                           1332 ; 449 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1333 	; #ENR#[360]	doBlockAnimation();
                           1334 ;--- end asm ---
   3AB2 BD 08 90      [ 8] 1335 	jsr	_doBlockAnimation
                           1336 ;----- asm -----
                           1337 ; 451 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1338 	; #ENR#[361]	if (!blockAnimating) {
                           1339 ;--- end asm ---
   3AB5 7D C8 E2      [ 7] 1340 	tst	_blockAnimating	; blockAnimating
   3AB8 10 26 01 5C   [ 6] 1341 	lbne	L97	;
                           1342 ;----- asm -----
                           1343 ; 454 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1344 	; #ENR#[363]		uint8_t c0 = isField(blockX, blockY);
                           1345 ;--- end asm ---
   3ABC F6 C8 E5      [ 5] 1346 	ldb	_blockY	;, blockY
   3ABF E7 E2         [ 6] 1347 	stb	,-s	;,
   3AC1 F6 C8 E4      [ 5] 1348 	ldb	_blockX	;, blockX
   3AC4 BD 3E 43      [ 8] 1349 	jsr	_isField
   3AC7 E7 62         [ 5] 1350 	stb	2,s	;, c0
                           1351 ;----- asm -----
                           1352 ; 456 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1353 	; #ENR#[364]		uint8_t c1 = isField(blockX + 1, blockY);
                           1354 ;--- end asm ---
   3AC9 F6 C8 E4      [ 5] 1355 	ldb	_blockX	;, blockX
   3ACC 5C            [ 2] 1356 	incb	;
   3ACD E7 61         [ 5] 1357 	stb	1,s	;,
   3ACF F6 C8 E5      [ 5] 1358 	ldb	_blockY	;, blockY
   3AD2 E7 E2         [ 6] 1359 	stb	,-s	;,
   3AD4 E6 62         [ 5] 1360 	ldb	2,s	;,
   3AD6 BD 3E 43      [ 8] 1361 	jsr	_isField
   3AD9 E7 64         [ 5] 1362 	stb	4,s	;, c1
                           1363 ;----- asm -----
                           1364 ; 458 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1365 	; #ENR#[365]		uint8_t c2 = isField(blockX, blockY + 1);
                           1366 ;--- end asm ---
   3ADB F6 C8 E5      [ 5] 1367 	ldb	_blockY	;, blockY
   3ADE 5C            [ 2] 1368 	incb	;
   3ADF 34 04         [ 6] 1369 	pshs	b	;
   3AE1 F6 C8 E4      [ 5] 1370 	ldb	_blockX	;, blockX
   3AE4 BD 3E 43      [ 8] 1371 	jsr	_isField
   3AE7 E7 66         [ 5] 1372 	stb	6,s	;, c2
                           1373 ;----- asm -----
                           1374 ; 460 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1375 	; #ENR#[366]		char f0 = getField(blockX, blockY);
                           1376 ;--- end asm ---
   3AE9 F6 C8 E5      [ 5] 1377 	ldb	_blockY	;, blockY
   3AEC E7 E2         [ 6] 1378 	stb	,-s	;,
   3AEE F6 C8 E4      [ 5] 1379 	ldb	_blockX	;, blockX
   3AF1 BD 3D 70      [ 8] 1380 	jsr	_getField
   3AF4 E7 68         [ 5] 1381 	stb	8,s	;, f0
                           1382 ;----- asm -----
                           1383 ; 462 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1384 	; #ENR#[367]		char f1 = getField(blockX + 1, blockY);
                           1385 ;--- end asm ---
   3AF6 F6 C8 E4      [ 5] 1386 	ldb	_blockX	;, blockX
   3AF9 5C            [ 2] 1387 	incb	;
   3AFA E7 64         [ 5] 1388 	stb	4,s	;,
   3AFC F6 C8 E5      [ 5] 1389 	ldb	_blockY	;, blockY
   3AFF E7 E2         [ 6] 1390 	stb	,-s	;,
   3B01 E6 65         [ 5] 1391 	ldb	5,s	;,
   3B03 BD 3D 70      [ 8] 1392 	jsr	_getField
   3B06 E7 6A         [ 5] 1393 	stb	10,s	;, f1
                           1394 ;----- asm -----
                           1395 ; 464 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1396 	; #ENR#[368]		char f2 = getField(blockX, blockY + 1);
                           1397 ;--- end asm ---
   3B08 F6 C8 E5      [ 5] 1398 	ldb	_blockY	;, blockY
   3B0B 5C            [ 2] 1399 	incb	;
   3B0C 34 04         [ 6] 1400 	pshs	b	;
   3B0E F6 C8 E4      [ 5] 1401 	ldb	_blockX	;, blockX
   3B11 BD 3D 70      [ 8] 1402 	jsr	_getField
   3B14 E7 6C         [ 5] 1403 	stb	12,s	;, f2
                           1404 ;----- asm -----
                           1405 ; 466 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1406 	; #ENR#[369]		switch (blockOrientation) {
                           1407 ;--- end asm ---
   3B16 32 66         [ 5] 1408 	leas	6,s	;,,
   3B18 F6 C8 DF      [ 5] 1409 	ldb	_blockOrientation	; blockOrientation, blockOrientation
   3B1B C1 01         [ 2] 1410 	cmpb	#1	;cmpqi:	; blockOrientation,
   3B1D 27 19         [ 3] 1411 	beq	L77	;
   3B1F 25 08         [ 3] 1412 	blo	L76	;
   3B21 C1 02         [ 2] 1413 	cmpb	#2	;cmpqi:	; blockOrientation,
   3B23 10 26 00 29   [ 6] 1414 	lbne	L75	;
   3B27 20 1C         [ 3] 1415 	bra	L98	;
   3B29                    1416 L76:
                           1417 ;----- asm -----
                           1418 ; 470 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1419 	; #ENR#[371]			if (!c0 || f0 == 'f') {
                           1420 ;--- end asm ---
   3B29 6D 61         [ 7] 1421 	tst	1,s	; c0
   3B2B 27 06         [ 3] 1422 	beq	L79	;
   3B2D E6 64         [ 5] 1423 	ldb	4,s	;, f0
   3B2F C1 66         [ 2] 1424 	cmpb	#102	;cmpqi:	;,
   3B31 26 03         [ 3] 1425 	bne	L80	;
   3B33                    1426 L79:
                           1427 ;----- asm -----
                           1428 ; 472 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1429 	; #ENR#[372]				startBlockFalling();
                           1430 ;--- end asm ---
   3B33 BD 3A 90      [ 8] 1431 	jsr	_startBlockFalling
   3B36                    1432 L80:
                           1433 ;----- asm -----
                           1434 ; 475 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1435 	; #ENR#[374]			break;
                           1436 ;--- end asm ---
   3B36 20 18         [ 3] 1437 	bra	L75	;
   3B38                    1438 L77:
                           1439 ;----- asm -----
                           1440 ; 479 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1441 	; #ENR#[376]			if (!c0 || !c2) {
                           1442 ;--- end asm ---
   3B38 6D 61         [ 7] 1443 	tst	1,s	; c0
   3B3A 27 04         [ 3] 1444 	beq	L81	;
   3B3C 6D 63         [ 7] 1445 	tst	3,s	; c2
   3B3E 26 03         [ 3] 1446 	bne	L82	;
   3B40                    1447 L81:
                           1448 ;----- asm -----
                           1449 ; 481 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1450 	; #ENR#[377]				startBlockFalling();
                           1451 ;--- end asm ---
   3B40 BD 3A 90      [ 8] 1452 	jsr	_startBlockFalling
   3B43                    1453 L82:
                           1454 ;----- asm -----
                           1455 ; 484 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1456 	; #ENR#[379]			break;
                           1457 ;--- end asm ---
   3B43 20 0B         [ 3] 1458 	bra	L75	;
   3B45                    1459 L98:
                           1460 ;----- asm -----
                           1461 ; 488 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1462 	; #ENR#[381]			if (!c0 || ! c1) {
                           1463 ;--- end asm ---
   3B45 6D 61         [ 7] 1464 	tst	1,s	; c0
   3B47 27 04         [ 3] 1465 	beq	L83	;
   3B49 6D 62         [ 7] 1466 	tst	2,s	; c1
   3B4B 26 03         [ 3] 1467 	bne	L84	;
   3B4D                    1468 L83:
                           1469 ;----- asm -----
                           1470 ; 490 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1471 	; #ENR#[382]				startBlockFalling();
                           1472 ;--- end asm ---
   3B4D BD 3A 90      [ 8] 1473 	jsr	_startBlockFalling
   3B50                    1474 L84:
                           1475 ;----- asm -----
                           1476 ; 493 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1477 	; #ENR#[384]			break;
                           1478 ;--- end asm ---
   3B50                    1479 L75:
                           1480 ;----- asm -----
                           1481 ; 498 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1482 	; #ENR#[388]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1483 ;--- end asm ---
   3B50 7D C8 DF      [ 7] 1484 	tst	_blockOrientation	; blockOrientation
   3B53 26 2B         [ 3] 1485 	bne	L85	;
   3B55 F6 C8 E4      [ 5] 1486 	ldb	_blockX	;, blockX
   3B58 F1 C8 85      [ 5] 1487 	cmpb	_endX	;cmpqi:	;, endX
   3B5B 26 23         [ 3] 1488 	bne	L85	;
   3B5D F6 C8 E5      [ 5] 1489 	ldb	_blockY	;, blockY
   3B60 F1 C8 86      [ 5] 1490 	cmpb	_endY	;cmpqi:	;, endY
   3B63 26 1B         [ 3] 1491 	bne	L85	;
   3B65 7D C8 E3      [ 7] 1492 	tst	_splitMode	; splitMode
   3B68 26 16         [ 3] 1493 	bne	L85	;
                           1494 ;----- asm -----
                           1495 ; 500 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1496 	; #ENR#[389]			blockYOfs = 0;
                           1497 ;--- end asm ---
   3B6A 7F C8 E0      [ 7] 1498 	clr	_blockYOfs	; blockYOfs
                           1499 ;----- asm -----
                           1500 ; 502 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1501 	; #ENR#[390]			gameState = BlockMovingAtEnd;
                           1502 ;--- end asm ---
   3B6D C6 06         [ 2] 1503 	ldb	#6	;,
   3B6F F7 C8 FE      [ 5] 1504 	stb	_gameState	;, gameState
                           1505 ;----- asm -----
                           1506 ; 504 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1507 	; #ENR#[391]			changeMusic(levelEndMusic);
                           1508 ;--- end asm ---
   3B72 8E 3D 18      [ 3] 1509 	ldx	#_levelEndMusic	;,
   3B75 BD 36 18      [ 8] 1510 	jsr	_changeMusic
                           1511 ;----- asm -----
                           1512 ; 506 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1513 	; #ENR#[392]			*vecx = 1;
                           1514 ;--- end asm ---
   3B78 C6 01         [ 2] 1515 	ldb	#1	;,
   3B7A E7 9F C8 82   [ 9] 1516 	stb	[_vecx]	;,* vecx
   3B7E 20 0C         [ 3] 1517 	bra	L86	;
   3B80                    1518 L85:
                           1519 ;----- asm -----
                           1520 ; 510 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1521 	; #ENR#[395]			if (gameState != BlockFalling) {
                           1522 ;--- end asm ---
   3B80 F6 C8 FE      [ 5] 1523 	ldb	_gameState	;, gameState
   3B83 C1 05         [ 2] 1524 	cmpb	#5	;cmpqi:	;,
   3B85 27 05         [ 3] 1525 	beq	L86	;
                           1526 ;----- asm -----
                           1527 ; 512 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1528 	; #ENR#[396]				gameState = BlockWaiting;
                           1529 ;--- end asm ---
   3B87 C6 03         [ 2] 1530 	ldb	#3	;,
   3B89 F7 C8 FE      [ 5] 1531 	stb	_gameState	;, gameState
   3B8C                    1532 L86:
                           1533 ;----- asm -----
                           1534 ; 518 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1535 	; #ENR#[401]		switch (blockOrientation) {
                           1536 ;--- end asm ---
   3B8C F6 C8 DF      [ 5] 1537 	ldb	_blockOrientation	; blockOrientation, blockOrientation
   3B8F C1 01         [ 2] 1538 	cmpb	#1	;cmpqi:	; blockOrientation,
   3B91 27 29         [ 3] 1539 	beq	L89	;
   3B93 25 09         [ 3] 1540 	blo	L88	;
   3B95 C1 02         [ 2] 1541 	cmpb	#2	;cmpqi:	; blockOrientation,
   3B97 10 26 00 75   [ 6] 1542 	lbne	L87	;
   3B9B 16 00 47      [ 5] 1543 	lbra	L99	;
   3B9E                    1544 L88:
                           1545 ;----- asm -----
                           1546 ; 522 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1547 	; #ENR#[403]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1548 ;--- end asm ---
   3B9E E6 64         [ 5] 1549 	ldb	4,s	;, f0
   3BA0 C1 73         [ 2] 1550 	cmpb	#115	;cmpqi:	;,
   3BA2 27 08         [ 3] 1551 	beq	L91	;
   3BA4 C1 68         [ 2] 1552 	cmpb	#104	;cmpqi:	;,
   3BA6 27 04         [ 3] 1553 	beq	L91	;
   3BA8 C1 76         [ 2] 1554 	cmpb	#118	;cmpqi:	;,
   3BAA 26 0D         [ 3] 1555 	bne	L92	;
   3BAC                    1556 L91:
                           1557 ;----- asm -----
                           1558 ; 524 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1559 	; #ENR#[404]				swatchSwitch(blockX, blockY);
                           1560 ;--- end asm ---
   3BAC F6 C8 E5      [ 5] 1561 	ldb	_blockY	;, blockY
   3BAF E7 E2         [ 6] 1562 	stb	,-s	;,
   3BB1 F6 C8 E4      [ 5] 1563 	ldb	_blockX	;, blockX
   3BB4 BD 43 C2      [ 8] 1564 	jsr	_swatchSwitch
   3BB7 32 61         [ 5] 1565 	leas	1,s	;,,
   3BB9                    1566 L92:
                           1567 ;----- asm -----
                           1568 ; 527 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1569 	; #ENR#[406]			break;
                           1570 ;--- end asm ---
   3BB9 16 00 54      [ 5] 1571 	lbra	L87	;
   3BBC                    1572 L89:
                           1573 ;----- asm -----
                           1574 ; 531 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1575 	; #ENR#[408]			if (f0 == 's') {
                           1576 ;--- end asm ---
   3BBC E6 64         [ 5] 1577 	ldb	4,s	;, f0
   3BBE C1 73         [ 2] 1578 	cmpb	#115	;cmpqi:	;,
   3BC0 26 0D         [ 3] 1579 	bne	L93	;
                           1580 ;----- asm -----
                           1581 ; 533 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1582 	; #ENR#[409]				swatchSwitch(blockX, blockY);
                           1583 ;--- end asm ---
   3BC2 F6 C8 E5      [ 5] 1584 	ldb	_blockY	;, blockY
   3BC5 E7 E2         [ 6] 1585 	stb	,-s	;,
   3BC7 F6 C8 E4      [ 5] 1586 	ldb	_blockX	;, blockX
   3BCA BD 43 C2      [ 8] 1587 	jsr	_swatchSwitch
   3BCD 32 61         [ 5] 1588 	leas	1,s	;,,
   3BCF                    1589 L93:
                           1590 ;----- asm -----
                           1591 ; 536 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1592 	; #ENR#[411]			if (f2 == 's') {
                           1593 ;--- end asm ---
   3BCF E6 66         [ 5] 1594 	ldb	6,s	;, f2
   3BD1 C1 73         [ 2] 1595 	cmpb	#115	;cmpqi:	;,
   3BD3 26 0E         [ 3] 1596 	bne	L94	;
                           1597 ;----- asm -----
                           1598 ; 538 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1599 	; #ENR#[412]				swatchSwitch(blockX, blockY + 1);
                           1600 ;--- end asm ---
   3BD5 F6 C8 E5      [ 5] 1601 	ldb	_blockY	;, blockY
   3BD8 5C            [ 2] 1602 	incb	;
   3BD9 34 04         [ 6] 1603 	pshs	b	;
   3BDB F6 C8 E4      [ 5] 1604 	ldb	_blockX	;, blockX
   3BDE BD 43 C2      [ 8] 1605 	jsr	_swatchSwitch
   3BE1 32 61         [ 5] 1606 	leas	1,s	;,,
   3BE3                    1607 L94:
                           1608 ;----- asm -----
                           1609 ; 541 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1610 	; #ENR#[414]			break;
                           1611 ;--- end asm ---
   3BE3 20 2B         [ 3] 1612 	bra	L87	;
   3BE5                    1613 L99:
                           1614 ;----- asm -----
                           1615 ; 545 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1616 	; #ENR#[416]			if (f0 == 's') {
                           1617 ;--- end asm ---
   3BE5 E6 64         [ 5] 1618 	ldb	4,s	;, f0
   3BE7 C1 73         [ 2] 1619 	cmpb	#115	;cmpqi:	;,
   3BE9 26 0D         [ 3] 1620 	bne	L95	;
                           1621 ;----- asm -----
                           1622 ; 547 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1623 	; #ENR#[417]				swatchSwitch(blockX, blockY);
                           1624 ;--- end asm ---
   3BEB F6 C8 E5      [ 5] 1625 	ldb	_blockY	;, blockY
   3BEE E7 E2         [ 6] 1626 	stb	,-s	;,
   3BF0 F6 C8 E4      [ 5] 1627 	ldb	_blockX	;, blockX
   3BF3 BD 43 C2      [ 8] 1628 	jsr	_swatchSwitch
   3BF6 32 61         [ 5] 1629 	leas	1,s	;,,
   3BF8                    1630 L95:
                           1631 ;----- asm -----
                           1632 ; 550 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1633 	; #ENR#[419]			if (f1 == 's') {
                           1634 ;--- end asm ---
   3BF8 E6 65         [ 5] 1635 	ldb	5,s	;, f1
   3BFA C1 73         [ 2] 1636 	cmpb	#115	;cmpqi:	;,
   3BFC 26 12         [ 3] 1637 	bne	L96	;
                           1638 ;----- asm -----
                           1639 ; 552 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1640 	; #ENR#[420]				swatchSwitch(blockX + 1, blockY);
                           1641 ;--- end asm ---
   3BFE F6 C8 E4      [ 5] 1642 	ldb	_blockX	;, blockX
   3C01 5C            [ 2] 1643 	incb	;
   3C02 E7 E4         [ 4] 1644 	stb	,s	;,
   3C04 F6 C8 E5      [ 5] 1645 	ldb	_blockY	;, blockY
   3C07 E7 E2         [ 6] 1646 	stb	,-s	;,
   3C09 E6 61         [ 5] 1647 	ldb	1,s	;,
   3C0B BD 43 C2      [ 8] 1648 	jsr	_swatchSwitch
   3C0E 32 61         [ 5] 1649 	leas	1,s	;,,
   3C10                    1650 L96:
                           1651 ;----- asm -----
                           1652 ; 555 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1653 	; #ENR#[422]			break;
                           1654 ;--- end asm ---
   3C10                    1655 L87:
                           1656 ;----- asm -----
                           1657 ; 560 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1658 	; #ENR#[426]		if (splitMode) {
                           1659 ;--- end asm ---
   3C10 7D C8 E3      [ 7] 1660 	tst	_splitMode	; splitMode
   3C13 27 03         [ 3] 1661 	beq	L97	;
                           1662 ;----- asm -----
                           1663 ; 562 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1664 	; #ENR#[427]			testMerge();
                           1665 ;--- end asm ---
   3C15 BD 08 DB      [ 8] 1666 	jsr	_testMerge
   3C18                    1667 L97:
   3C18 32 67         [ 5] 1668 	leas	7,s	;,,
   3C1A 39            [ 5] 1669 	rts
                           1670 	.globl	_main
   3C1B                    1671 _main:
   3C1B 34 60         [ 7] 1672 	pshs	y,u	;
   3C1D 32 7C         [ 5] 1673 	leas	-4,s	;,,
                           1674 ;----- asm -----
                           1675 ; 746 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1676 	; #ENR#[548]	setBank(0);
                           1677 ;--- end asm ---
   3C1F 5F            [ 2] 1678 	clrb	;
   3C20 BD 36 73      [ 8] 1679 	jsr	_setBank
                           1680 ;----- asm -----
                           1681 ; 750 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1682 	; #ENR#[551]	*vecx = 4;
                           1683 ;--- end asm ---
   3C23 C6 04         [ 2] 1684 	ldb	#4	;,
   3C25 E7 9F C8 82   [ 9] 1685 	stb	[_vecx]	;,* vecx
                           1686 ;----- asm -----
                           1687 ; 754 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1688 	; #ENR#[554]	picAvailable = 0;
                           1689 ;--- end asm ---
   3C29 7F C8 FD      [ 7] 1690 	clr	_picAvailable	; picAvailable
                           1691 ;----- asm -----
                           1692 ; 756 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1693 	; #ENR#[555]	sendCommand(CMD_VERSION, 0);
                           1694 ;--- end asm ---
   3C2C 6F E2         [ 8] 1695 	clr	,-s	;
   3C2E C6 01         [ 2] 1696 	ldb	#1	;,
   3C30 BD 35 4D      [ 8] 1697 	jsr	_sendCommand
                           1698 ;----- asm -----
                           1699 ; 758 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1700 	; #ENR#[556]	sendCommand(CMD_VERSION, 0);
                           1701 ;--- end asm ---
   3C33 6F E2         [ 8] 1702 	clr	,-s	;
   3C35 C6 01         [ 2] 1703 	ldb	#1	;,
   3C37 BD 35 4D      [ 8] 1704 	jsr	_sendCommand
                           1705 ;----- asm -----
                           1706 ; 760 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1707 	; #ENR#[557]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           1708 ;--- end asm ---
   3C3A 6F E2         [ 8] 1709 	clr	,-s	;
   3C3C C6 01         [ 2] 1710 	ldb	#1	;,
   3C3E BD 35 4D      [ 8] 1711 	jsr	_sendCommand
   3C41 32 63         [ 5] 1712 	leas	3,s	;,,
   3C43 C1 04         [ 2] 1713 	cmpb	#4	;cmpqi:	; D.2439,
   3C45 26 05         [ 3] 1714 	bne	L101	;
                           1715 ;----- asm -----
                           1716 ; 762 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1717 	; #ENR#[558]		picAvailable = 1;
                           1718 ;--- end asm ---
   3C47 C6 01         [ 2] 1719 	ldb	#1	;,
   3C49 F7 C8 FD      [ 5] 1720 	stb	_picAvailable	;, picAvailable
   3C4C                    1721 L101:
                           1722 ;----- asm -----
                           1723 ; 767 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1724 	; #ENR#[562]	memcpy(infoText, "001 - 999€", 10);
                           1725 ;--- end asm ---
   3C4C 8E 30 30      [ 3] 1726 	ldx	#12336	;,
   3C4F BF C8 EF      [ 6] 1727 	stx	_infoText	;, infoText
   3C52 8E 31 20      [ 3] 1728 	ldx	#12576	;,
   3C55 BF C8 F1      [ 6] 1729 	stx	_infoText+2	;, infoText
   3C58 8E 2D 20      [ 3] 1730 	ldx	#11552	;,
   3C5B BF C8 F3      [ 6] 1731 	stx	_infoText+4	;, infoText
   3C5E 8E 39 39      [ 3] 1732 	ldx	#14649	;,
   3C61 BF C8 F5      [ 6] 1733 	stx	_infoText+6	;, infoText
   3C64 8E 39 80      [ 3] 1734 	ldx	#14720	;,
   3C67 BF C8 F7      [ 6] 1735 	stx	_infoText+8	;, infoText
                           1736 ;----- asm -----
                           1737 ; 771 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1738 	; #ENR#[565]	epot0 = 1;
                           1739 ;--- end asm ---
   3C6A C6 01         [ 2] 1740 	ldb	#1	;,
   3C6C F7 C8 1F      [ 5] 1741 	stb	-14305	;,
                           1742 ;----- asm -----
                           1743 ; 773 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1744 	; #ENR#[566]	epot1 = 3;
                           1745 ;--- end asm ---
   3C6F C6 03         [ 2] 1746 	ldb	#3	;,
   3C71 F7 C8 20      [ 5] 1747 	stb	-14304	;,
                           1748 ;----- asm -----
                           1749 ; 775 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1750 	; #ENR#[567]	epot2 = 0;
                           1751 ;--- end asm ---
   3C74 7F C8 21      [ 7] 1752 	clr	-14303	;
                           1753 ;----- asm -----
                           1754 ; 777 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1755 	; #ENR#[568]	epot3 = 0;
                           1756 ;--- end asm ---
   3C77 7F C8 22      [ 7] 1757 	clr	-14302	;
                           1758 ;----- asm -----
                           1759 ; 780 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1760 	; #ENR#[570]	gameState = MainMenu;
                           1761 ;--- end asm ---
   3C7A 7F C8 FE      [ 7] 1762 	clr	_gameState	; gameState
                           1763 ;----- asm -----
                           1764 ; 782 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1765 	; #ENR#[571]	startLevel();
                           1766 ;--- end asm ---
   3C7D BD 38 4D      [ 8] 1767 	jsr	_startLevel
                           1768 ;----- asm -----
                           1769 ; 786 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1770 	; #ENR#[574]	while (1) {
                           1771 ;--- end asm ---
   3C80                    1772 L113:
                           1773 ;----- asm -----
                           1774 ; 789 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1775 	; #ENR#[576]		frwait();
                           1776 ; 97 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C80 BD F1 92      [ 8] 1777 	jsr ___Wait_Recal; BIOS call
                           1778 ; 792 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1779 	; #ENR#[578]		switch (gameState) {
                           1780 ;--- end asm ---
   3C83 F6 C8 FE      [ 5] 1781 	ldb	_gameState	;, gameState
   3C86 C1 06         [ 2] 1782 	cmpb	#6	;cmpqi:	;,
   3C88 10 22 00 4D   [ 6] 1783 	lbhi	L102	;
   3C8C 4F            [ 2] 1784 	clra		;zero_extendqihi: R:b -> R:d	;,
   3C8D ED E4         [ 5] 1785 	std	,s	;,
   3C8F 58            [ 2] 1786 	aslb	;
   3C90 49            [ 2] 1787 	rola	;
   3C91 1F 01         [ 6] 1788 	tfr	d,x	;, tmp43
   3C93 6E 99 3C 97   [10] 1789 	jmp	[L110,x]	;, tmp43
   3C97                    1790 L110:
   3C97 3C A5              1791 	.word	L103
   3C99 3C AB              1792 	.word	L104
   3C9B 3C B1              1793 	.word	L105
   3C9D 3C BA              1794 	.word	L106
   3C9F 3C C3              1795 	.word	L107
   3CA1 3C CB              1796 	.word	L108
   3CA3 3C D3              1797 	.word	L109
   3CA5                    1798 L103:
                           1799 ;----- asm -----
                           1800 ; 796 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1801 	; #ENR#[580]        			mainMenu();
                           1802 ;--- end asm ---
   3CA5 BD 38 EF      [ 8] 1803 	jsr	_mainMenu
                           1804 ;----- asm -----
                           1805 ; 799 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1806 	; #ENR#[582]        			break;
                           1807 ;--- end asm ---
   3CA8 16 00 2E      [ 5] 1808 	lbra	L102	;
   3CAB                    1809 L104:
                           1810 ;----- asm -----
                           1811 ; 803 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1812 	; #ENR#[584]				clearMenu();
                           1813 ;--- end asm ---
   3CAB BD 36 A4      [ 8] 1814 	jsr	_clearMenu
                           1815 ;----- asm -----
                           1816 ; 806 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1817 	; #ENR#[586]				break;
                           1818 ;--- end asm ---
   3CAE 16 00 28      [ 5] 1819 	lbra	L102	;
   3CB1                    1820 L105:
                           1821 ;----- asm -----
                           1822 ; 810 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1823 	; #ENR#[588]				showInfo();
                           1824 ;--- end asm ---
   3CB1 BD 38 0A      [ 8] 1825 	jsr	_showInfo
                           1826 ;----- asm -----
                           1827 ; 812 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1828 	; #ENR#[589]        			blockMovingToStart();
                           1829 ;--- end asm ---
   3CB4 BD 38 34      [ 8] 1830 	jsr	_blockMovingToStart
                           1831 ;----- asm -----
                           1832 ; 814 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1833 	; #ENR#[590]        			break;
                           1834 ;--- end asm ---
   3CB7 16 00 1F      [ 5] 1835 	lbra	L102	;
   3CBA                    1836 L106:
                           1837 ;----- asm -----
                           1838 ; 818 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1839 	; #ENR#[592]				showInfo();
                           1840 ;--- end asm ---
   3CBA BD 38 0A      [ 8] 1841 	jsr	_showInfo
                           1842 ;----- asm -----
                           1843 ; 820 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1844 	; #ENR#[593]        			blockWaiting();
                           1845 ;--- end asm ---
   3CBD BD 39 F7      [ 8] 1846 	jsr	_blockWaiting
                           1847 ;----- asm -----
                           1848 ; 822 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1849 	; #ENR#[594]        			break;
                           1850 ;--- end asm ---
   3CC0 16 00 16      [ 5] 1851 	lbra	L102	;
   3CC3                    1852 L107:
                           1853 ;----- asm -----
                           1854 ; 826 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1855 	; #ENR#[596]				showInfo();
                           1856 ;--- end asm ---
   3CC3 BD 38 0A      [ 8] 1857 	jsr	_showInfo
                           1858 ;----- asm -----
                           1859 ; 828 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1860 	; #ENR#[597]        			blockMoving();
                           1861 ;--- end asm ---
   3CC6 BD 3A A9      [ 8] 1862 	jsr	_blockMoving
                           1863 ;----- asm -----
                           1864 ; 830 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1865 	; #ENR#[598]        			break;
                           1866 ;--- end asm ---
   3CC9 20 0E         [ 3] 1867 	bra	L102	;
   3CCB                    1868 L108:
                           1869 ;----- asm -----
                           1870 ; 834 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1871 	; #ENR#[600]				showInfo();
                           1872 ;--- end asm ---
   3CCB BD 38 0A      [ 8] 1873 	jsr	_showInfo
                           1874 ;----- asm -----
                           1875 ; 836 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1876 	; #ENR#[601]        			blockFalling();
                           1877 ;--- end asm ---
   3CCE BD 39 BA      [ 8] 1878 	jsr	_blockFalling
                           1879 ;----- asm -----
                           1880 ; 838 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1881 	; #ENR#[602]        			break;
                           1882 ;--- end asm ---
   3CD1 20 06         [ 3] 1883 	bra	L102	;
   3CD3                    1884 L109:
                           1885 ;----- asm -----
                           1886 ; 842 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1887 	; #ENR#[604]				showInfo();
                           1888 ;--- end asm ---
   3CD3 BD 38 0A      [ 8] 1889 	jsr	_showInfo
                           1890 ;----- asm -----
                           1891 ; 844 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1892 	; #ENR#[605]        			blockMovingAtEnd();
                           1893 ;--- end asm ---
   3CD6 BD 39 60      [ 8] 1894 	jsr	_blockMovingAtEnd
                           1895 ;----- asm -----
                           1896 ; 846 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1897 	; #ENR#[606]        			break;
                           1898 ;--- end asm ---
   3CD9                    1899 L102:
                           1900 ;----- asm -----
                           1901 ; 851 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1902 	; #ENR#[610]		if (gameState > ClearMenu) {
                           1903 ;--- end asm ---
   3CD9 F6 C8 FE      [ 5] 1904 	ldb	_gameState	;, gameState
   3CDC C1 01         [ 2] 1905 	cmpb	#1	;cmpqi:	;,
   3CDE 10 23 FF 9E   [ 6] 1906 	lbls	L113	;
                           1907 ;----- asm -----
                           1908 ; 853 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1909 	; #ENR#[611]    			DP_to_C8();
                           1910 ; 316 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CE2 BD F1 AF      [ 8] 1911 	jsr ___DP_to_C8; BIOS call
                           1912 ; 855 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1913 	; #ENR#[612]    			replay(currentMusic);
                           1914 ;--- end asm ---
   3CE5 BE C8 80      [ 6] 1915 	ldx	_currentMusic	;, currentMusic
   3CE8 AF 62         [ 6] 1916 	stx	2,s	;, u
                           1917 ;----- asm -----
                           1918 ; 2917 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CEA EE 62         [ 6] 1919 	ldu 2,s	; u
   3CEC BD F6 87      [ 8] 1920 	jsr ___Init_Music_chk; BIOS call
                           1921 ; 857 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1922 	; #ENR#[613]    			DP_to_D0();
                           1923 ; 300 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CEF BD F1 AA      [ 8] 1924 	jsr ___DP_to_D0; BIOS call
                           1925 ; 859 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1926 	; #ENR#[614]    			reqout();
                           1927 ; 2880 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CF2 BD F2 89      [ 8] 1928 	jsr ___Do_Sound; BIOS call
                           1929 ;--- end asm ---
   3CF5 16 FF 88      [ 5] 1930 	lbra	L113	;
                           1931 	.globl	_startMusic
   3CF8                    1932 _startMusic:
   3CF8 FE                 1933 	.byte	-2
   3CF9 E8                 1934 	.byte	-24
   3CFA FE                 1935 	.byte	-2
   3CFB B6                 1936 	.byte	-74
   3CFC 01                 1937 	.byte	1
   3CFD 01                 1938 	.byte	1
   3CFE 02                 1939 	.byte	2
   3CFF 01                 1940 	.byte	1
   3D00 03                 1941 	.byte	3
   3D01 01                 1942 	.byte	1
   3D02 04                 1943 	.byte	4
   3D03 01                 1944 	.byte	1
   3D04 05                 1945 	.byte	5
   3D05 01                 1946 	.byte	1
   3D06 06                 1947 	.byte	6
   3D07 01                 1948 	.byte	1
   3D08 07                 1949 	.byte	7
   3D09 01                 1950 	.byte	1
   3D0A 08                 1951 	.byte	8
   3D0B 01                 1952 	.byte	1
   3D0C 09                 1953 	.byte	9
   3D0D 01                 1954 	.byte	1
   3D0E 0A                 1955 	.byte	10
   3D0F 01                 1956 	.byte	1
   3D10 0B                 1957 	.byte	11
   3D11 01                 1958 	.byte	1
   3D12 0C                 1959 	.byte	12
   3D13 01                 1960 	.byte	1
   3D14 0D                 1961 	.byte	13
   3D15 01                 1962 	.byte	1
   3D16 00                 1963 	.byte	0
   3D17 80                 1964 	.byte	-128
                           1965 	.globl	_levelEndMusic
   3D18                    1966 _levelEndMusic:
   3D18 FE                 1967 	.byte	-2
   3D19 E8                 1968 	.byte	-24
   3D1A FE                 1969 	.byte	-2
   3D1B B6                 1970 	.byte	-74
   3D1C 0D                 1971 	.byte	13
   3D1D 01                 1972 	.byte	1
   3D1E 0E                 1973 	.byte	14
   3D1F 01                 1974 	.byte	1
   3D20 0F                 1975 	.byte	15
   3D21 01                 1976 	.byte	1
   3D22 10                 1977 	.byte	16
   3D23 01                 1978 	.byte	1
   3D24 11                 1979 	.byte	17
   3D25 01                 1980 	.byte	1
   3D26 12                 1981 	.byte	18
   3D27 01                 1982 	.byte	1
   3D28 13                 1983 	.byte	19
   3D29 01                 1984 	.byte	1
   3D2A 14                 1985 	.byte	20
   3D2B 01                 1986 	.byte	1
   3D2C 15                 1987 	.byte	21
   3D2D 01                 1988 	.byte	1
   3D2E 16                 1989 	.byte	22
   3D2F 01                 1990 	.byte	1
   3D30 00                 1991 	.byte	0
   3D31 80                 1992 	.byte	-128
                           1993 	.globl	_fallingMusic
   3D32                    1994 _fallingMusic:
   3D32 FE                 1995 	.byte	-2
   3D33 E8                 1996 	.byte	-24
   3D34 FE                 1997 	.byte	-2
   3D35 B6                 1998 	.byte	-74
   3D36 0D                 1999 	.byte	13
   3D37 02                 2000 	.byte	2
   3D38 0C                 2001 	.byte	12
   3D39 02                 2002 	.byte	2
   3D3A 0B                 2003 	.byte	11
   3D3B 02                 2004 	.byte	2
   3D3C 0A                 2005 	.byte	10
   3D3D 02                 2006 	.byte	2
   3D3E 09                 2007 	.byte	9
   3D3F 02                 2008 	.byte	2
   3D40 08                 2009 	.byte	8
   3D41 02                 2010 	.byte	2
   3D42 07                 2011 	.byte	7
   3D43 02                 2012 	.byte	2
   3D44 06                 2013 	.byte	6
   3D45 02                 2014 	.byte	2
   3D46 05                 2015 	.byte	5
   3D47 02                 2016 	.byte	2
   3D48 04                 2017 	.byte	4
   3D49 02                 2018 	.byte	2
   3D4A 03                 2019 	.byte	3
   3D4B 02                 2020 	.byte	2
   3D4C 02                 2021 	.byte	2
   3D4D 02                 2022 	.byte	2
   3D4E 01                 2023 	.byte	1
   3D4F 02                 2024 	.byte	2
   3D50 00                 2025 	.byte	0
   3D51 80                 2026 	.byte	-128
                           2027 	.globl	_movingMusic
   3D52                    2028 _movingMusic:
   3D52 FD                 2029 	.byte	-3
   3D53 C3                 2030 	.byte	-61
   3D54 FE                 2031 	.byte	-2
   3D55 B6                 2032 	.byte	-74
   3D56 01                 2033 	.byte	1
   3D57 05                 2034 	.byte	5
   3D58 00                 2035 	.byte	0
   3D59 80                 2036 	.byte	-128
                           2037 	.globl	_currentMusic
                           2038 	.area	.data
   C880                    2039 _currentMusic:
   C880 3C F8              2040 	.word	_startMusic
                           2041 	.globl	_vecx
   C882                    2042 _vecx:
   C882 80 00              2043 	.word	-32768
                           2044 	.globl	_led8
                           2045 	.area	.text
   3D5A                    2046 _led8:
   3D5A FF                 2047 	.byte	-1
   3D5B 00                 2048 	.byte	0
   3D5C 05                 2049 	.byte	5
   3D5D FF                 2050 	.byte	-1
   3D5E FB                 2051 	.byte	-5
   3D5F 00                 2052 	.byte	0
   3D60 FF                 2053 	.byte	-1
   3D61 00                 2054 	.byte	0
   3D62 FB                 2055 	.byte	-5
   3D63 FF                 2056 	.byte	-1
   3D64 05                 2057 	.byte	5
   3D65 00                 2058 	.byte	0
   3D66 FF                 2059 	.byte	-1
   3D67 05                 2060 	.byte	5
   3D68 00                 2061 	.byte	0
   3D69 FF                 2062 	.byte	-1
   3D6A 00                 2063 	.byte	0
   3D6B 05                 2064 	.byte	5
   3D6C FF                 2065 	.byte	-1
   3D6D FB                 2066 	.byte	-5
   3D6E 00                 2067 	.byte	0
   3D6F 01                 2068 	.byte	1
                           2069 	.area	.bss
                           2070 	.globl	_infoText
   C8EF                    2071 _infoText:	.blkb	10
                           2072 	.globl	_moveCount
   C8F9                    2073 _moveCount:	.blkb	2
                           2074 	.globl	_levelHighscore
   C8FB                    2075 _levelHighscore:	.blkb	2
                           2076 	.globl	_picAvailable
   C8FD                    2077 _picAvailable:	.blkb	1
                           2078 	.globl	_gameState
   C8FE                    2079 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      0037 GR  |   2 A$bloxorz$1000     0464 GR
  2 A$bloxorz$1001     0465 GR  |   2 A$bloxorz$1002     0467 GR
  2 A$bloxorz$1003     0469 GR  |   2 A$bloxorz$1004     046B GR
  2 A$bloxorz$1005     046D GR  |   2 A$bloxorz$101      0039 GR
  2 A$bloxorz$1010     0470 GR  |   2 A$bloxorz$1011     0473 GR
  2 A$bloxorz$1012     0474 GR  |   2 A$bloxorz$1013     0475 GR
  2 A$bloxorz$1014     0477 GR  |   2 A$bloxorz$1015     047A GR
  2 A$bloxorz$1016     047C GR  |   2 A$bloxorz$1017     047D GR
  2 A$bloxorz$1018     047F GR  |   2 A$bloxorz$1019     0481 GR
  2 A$bloxorz$1020     0484 GR  |   2 A$bloxorz$1026     0486 GR
  2 A$bloxorz$1027     0489 GR  |   2 A$bloxorz$1028     048A GR
  2 A$bloxorz$1033     048D GR  |   2 A$bloxorz$1034     0490 GR
  2 A$bloxorz$1035     0492 GR  |   2 A$bloxorz$1041     0495 GR
  2 A$bloxorz$1043     0498 GR  |   2 A$bloxorz$1044     049A GR
  2 A$bloxorz$1047     049B GR  |   2 A$bloxorz$1052     049D GR
  2 A$bloxorz$1057     04A0 GR  |   2 A$bloxorz$1058     04A3 GR
  2 A$bloxorz$1059     04A4 GR  |   2 A$bloxorz$106      003C GR
  2 A$bloxorz$1060     04A6 GR  |   2 A$bloxorz$1065     04A9 GR
  2 A$bloxorz$1066     04AB GR  |   2 A$bloxorz$107      003E GR
  2 A$bloxorz$1071     04AD GR  |   2 A$bloxorz$1072     04AE GR
  2 A$bloxorz$1073     04B0 GR  |   2 A$bloxorz$1075     04B1 GR
  2 A$bloxorz$108      0040 GR  |   2 A$bloxorz$1080     04B4 GR
  2 A$bloxorz$1086     04B7 GR  |   2 A$bloxorz$1087     04BA GR
  2 A$bloxorz$1088     04BC GR  |   2 A$bloxorz$109      0042 GR
  2 A$bloxorz$1093     04BE GR  |   2 A$bloxorz$1095     04C1 GR
  2 A$bloxorz$1096     04C3 GR  |   2 A$bloxorz$110      0045 GR
  2 A$bloxorz$1103     04C4 GR  |   2 A$bloxorz$1108     04C7 GR
  2 A$bloxorz$1109     04CA GR  |   2 A$bloxorz$1110     04CD GR
  2 A$bloxorz$1111     04CF GR  |   2 A$bloxorz$1112     04D1 GR
  2 A$bloxorz$1118     04D4 GR  |   2 A$bloxorz$1119     04D7 GR
  2 A$bloxorz$112      0047 GR  |   2 A$bloxorz$1126     04D8 GR
  2 A$bloxorz$1131     04DB GR  |   2 A$bloxorz$1132     04DC GR
  2 A$bloxorz$1137     04DF GR  |   2 A$bloxorz$1141     04E2 GR
  2 A$bloxorz$1142     04E5 GR  |   2 A$bloxorz$1143     04E7 GR
  2 A$bloxorz$1148     04E9 GR  |   2 A$bloxorz$1149     04EA GR
  2 A$bloxorz$1154     04ED GR  |   2 A$bloxorz$1155     04EF GR
  2 A$bloxorz$1156     04F2 GR  |   2 A$bloxorz$1158     04F5 GR
  2 A$bloxorz$1159     04F8 GR  |   2 A$bloxorz$1160     04FA GR
  2 A$bloxorz$1165     04FC GR  |   2 A$bloxorz$1166     04FE GR
  2 A$bloxorz$1171     0501 GR  |   2 A$bloxorz$1172     0503 GR
  2 A$bloxorz$1173     0506 GR  |   2 A$bloxorz$1175     0508 GR
  2 A$bloxorz$1176     050B GR  |   2 A$bloxorz$1177     050D GR
  2 A$bloxorz$1182     050F GR  |   2 A$bloxorz$1183     0511 GR
  2 A$bloxorz$1188     0514 GR  |   2 A$bloxorz$1189     0516 GR
  2 A$bloxorz$119      0048 GR  |   2 A$bloxorz$1190     0519 GR
  2 A$bloxorz$1192     051B GR  |   2 A$bloxorz$1193     051E GR
  2 A$bloxorz$1194     0520 GR  |   2 A$bloxorz$1199     0522 GR
  2 A$bloxorz$120      004B GR  |   2 A$bloxorz$1200     0524 GR
  2 A$bloxorz$1205     0527 GR  |   2 A$bloxorz$1206     0529 GR
  2 A$bloxorz$1212     052C GR  |   2 A$bloxorz$1213     052F GR
  2 A$bloxorz$1214     0531 GR  |   2 A$bloxorz$1219     0533 GR
  2 A$bloxorz$1220     0536 GR  |   2 A$bloxorz$1225     0539 GR
  2 A$bloxorz$1226     053B GR  |   2 A$bloxorz$1232     053F GR
  2 A$bloxorz$1236     0542 GR  |   2 A$bloxorz$1237     0545 GR
  2 A$bloxorz$1238     0547 GR  |   2 A$bloxorz$1243     0549 GR
  2 A$bloxorz$1244     054C GR  |   2 A$bloxorz$1245     054D GR
  2 A$bloxorz$125      004D GR  |   2 A$bloxorz$1250     0550 GR
  2 A$bloxorz$1251     0553 GR  |   2 A$bloxorz$1252     0555 GR
  2 A$bloxorz$1258     0558 GR  |   2 A$bloxorz$1259     055B GR
  2 A$bloxorz$126      004F GR  |   2 A$bloxorz$1264     055E GR
  2 A$bloxorz$127      0051 GR  |   2 A$bloxorz$1270     0561 GR
  2 A$bloxorz$1271     0564 GR  |   2 A$bloxorz$1272     0566 GR
  2 A$bloxorz$1277     0568 GR  |   2 A$bloxorz$1278     056B GR
  2 A$bloxorz$128      0054 GR  |   2 A$bloxorz$1283     056D GR
  2 A$bloxorz$1285     0570 GR  |   2 A$bloxorz$129      0056 GR
  2 A$bloxorz$1292     0571 GR  |   2 A$bloxorz$1293     0573 GR
  2 A$bloxorz$1298     0576 GR  |   2 A$bloxorz$1303     0579 GR
  2 A$bloxorz$1304     057C GR  |   2 A$bloxorz$1309     057F GR
  2 A$bloxorz$1310     0582 GR  |   2 A$bloxorz$1315     0585 GR
  2 A$bloxorz$1316     0589 GR  |   2 A$bloxorz$1319     058A GR
  2 A$bloxorz$1324     058C GR  |   2 A$bloxorz$1329     058F GR
  2 A$bloxorz$1330     0590 GR  |   2 A$bloxorz$1335     0593 GR
  2 A$bloxorz$1340     0596 GR  |   2 A$bloxorz$1341     0599 GR
  2 A$bloxorz$1346     059D GR  |   2 A$bloxorz$1347     05A0 GR
  2 A$bloxorz$1348     05A2 GR  |   2 A$bloxorz$1349     05A5 GR
  2 A$bloxorz$135      0058 GR  |   2 A$bloxorz$1350     05A8 GR
  2 A$bloxorz$1355     05AA GR  |   2 A$bloxorz$1356     05AD GR
  2 A$bloxorz$1357     05AE GR  |   2 A$bloxorz$1358     05B0 GR
  2 A$bloxorz$1359     05B3 GR  |   2 A$bloxorz$1360     05B5 GR
  2 A$bloxorz$1361     05B7 GR  |   2 A$bloxorz$1362     05BA GR
  2 A$bloxorz$1367     05BC GR  |   2 A$bloxorz$1368     05BF GR
  2 A$bloxorz$1369     05C0 GR  |   2 A$bloxorz$137      005A GR
  2 A$bloxorz$1370     05C2 GR  |   2 A$bloxorz$1371     05C5 GR
  2 A$bloxorz$1372     05C8 GR  |   2 A$bloxorz$1377     05CA GR
  2 A$bloxorz$1378     05CD GR  |   2 A$bloxorz$1379     05CF GR
  2 A$bloxorz$1380     05D2 GR  |   2 A$bloxorz$1381     05D5 GR
  2 A$bloxorz$1386     05D7 GR  |   2 A$bloxorz$1387     05DA GR
  2 A$bloxorz$1388     05DB GR  |   2 A$bloxorz$1389     05DD GR
  2 A$bloxorz$1390     05E0 GR  |   2 A$bloxorz$1391     05E2 GR
  2 A$bloxorz$1392     05E4 GR  |   2 A$bloxorz$1393     05E7 GR
  2 A$bloxorz$1398     05E9 GR  |   2 A$bloxorz$1399     05EC GR
  2 A$bloxorz$140      005B GR  |   2 A$bloxorz$1400     05ED GR
  2 A$bloxorz$1401     05EF GR  |   2 A$bloxorz$1402     05F2 GR
  2 A$bloxorz$1403     05F5 GR  |   2 A$bloxorz$1408     05F7 GR
  2 A$bloxorz$1409     05F9 GR  |   2 A$bloxorz$141      005D GR
  2 A$bloxorz$1410     05FC GR  |   2 A$bloxorz$1411     05FE GR
  2 A$bloxorz$1412     0600 GR  |   2 A$bloxorz$1413     0602 GR
  2 A$bloxorz$1414     0604 GR  |   2 A$bloxorz$1415     0608 GR
  2 A$bloxorz$1421     060A GR  |   2 A$bloxorz$1422     060C GR
  2 A$bloxorz$1423     060E GR  |   2 A$bloxorz$1424     0610 GR
  2 A$bloxorz$1425     0612 GR  |   2 A$bloxorz$1431     0614 GR
  2 A$bloxorz$1437     0617 GR  |   2 A$bloxorz$1443     0619 GR
  2 A$bloxorz$1444     061B GR  |   2 A$bloxorz$1445     061D GR
  2 A$bloxorz$1446     061F GR  |   2 A$bloxorz$1452     0621 GR
  2 A$bloxorz$1458     0624 GR  |   2 A$bloxorz$146      005F GR
  2 A$bloxorz$1464     0626 GR  |   2 A$bloxorz$1465     0628 GR
  2 A$bloxorz$1466     062A GR  |   2 A$bloxorz$1467     062C GR
  2 A$bloxorz$147      0062 GR  |   2 A$bloxorz$1473     062E GR
  2 A$bloxorz$148      0064 GR  |   2 A$bloxorz$1484     0631 GR
  2 A$bloxorz$1485     0634 GR  |   2 A$bloxorz$1486     0636 GR
  2 A$bloxorz$1487     0639 GR  |   2 A$bloxorz$1488     063C GR
  2 A$bloxorz$1489     063E GR  |   2 A$bloxorz$149      0067 GR
  2 A$bloxorz$1490     0641 GR  |   2 A$bloxorz$1491     0644 GR
  2 A$bloxorz$1492     0646 GR  |   2 A$bloxorz$1493     0649 GR
  2 A$bloxorz$1498     064B GR  |   2 A$bloxorz$150      0069 GR
  2 A$bloxorz$1503     064E GR  |   2 A$bloxorz$1504     0650 GR
  2 A$bloxorz$1509     0653 GR  |   2 A$bloxorz$151      006C GR
  2 A$bloxorz$1510     0656 GR  |   2 A$bloxorz$1515     0659 GR
  2 A$bloxorz$1516     065B GR  |   2 A$bloxorz$1517     065F GR
  2 A$bloxorz$1523     0661 GR  |   2 A$bloxorz$1524     0664 GR
  2 A$bloxorz$1525     0666 GR  |   2 A$bloxorz$1530     0668 GR
  2 A$bloxorz$1531     066A GR  |   2 A$bloxorz$1537     066D GR
  2 A$bloxorz$1538     0670 GR  |   2 A$bloxorz$1539     0672 GR
  2 A$bloxorz$1540     0674 GR  |   2 A$bloxorz$1541     0676 GR
  2 A$bloxorz$1542     0678 GR  |   2 A$bloxorz$1543     067C GR
  2 A$bloxorz$1549     067F GR  |   2 A$bloxorz$1550     0681 GR
  2 A$bloxorz$1551     0683 GR  |   2 A$bloxorz$1552     0685 GR
  2 A$bloxorz$1553     0687 GR  |   2 A$bloxorz$1554     0689 GR
  2 A$bloxorz$1555     068B GR  |   2 A$bloxorz$156      006E GR
  2 A$bloxorz$1561     068D GR  |   2 A$bloxorz$1562     0690 GR
  2 A$bloxorz$1563     0692 GR  |   2 A$bloxorz$1564     0695 GR
  2 A$bloxorz$1565     0698 GR  |   2 A$bloxorz$157      0070 GR
  2 A$bloxorz$1571     069A GR  |   2 A$bloxorz$1577     069D GR
  2 A$bloxorz$1578     069F GR  |   2 A$bloxorz$1579     06A1 GR
  2 A$bloxorz$158      0073 GR  |   2 A$bloxorz$1584     06A3 GR
  2 A$bloxorz$1585     06A6 GR  |   2 A$bloxorz$1586     06A8 GR
  2 A$bloxorz$1587     06AB GR  |   2 A$bloxorz$1588     06AE GR
  2 A$bloxorz$159      0075 GR  |   2 A$bloxorz$1594     06B0 GR
  2 A$bloxorz$1595     06B2 GR  |   2 A$bloxorz$1596     06B4 GR
  2 A$bloxorz$1601     06B6 GR  |   2 A$bloxorz$1602     06B9 GR
  2 A$bloxorz$1603     06BA GR  |   2 A$bloxorz$1604     06BC GR
  2 A$bloxorz$1605     06BF GR  |   2 A$bloxorz$1606     06C2 GR
  2 A$bloxorz$1612     06C4 GR  |   2 A$bloxorz$1618     06C6 GR
  2 A$bloxorz$1619     06C8 GR  |   2 A$bloxorz$1620     06CA GR
  2 A$bloxorz$1625     06CC GR  |   2 A$bloxorz$1626     06CF GR
  2 A$bloxorz$1627     06D1 GR  |   2 A$bloxorz$1628     06D4 GR
  2 A$bloxorz$1629     06D7 GR  |   2 A$bloxorz$1635     06D9 GR
  2 A$bloxorz$1636     06DB GR  |   2 A$bloxorz$1637     06DD GR
  2 A$bloxorz$1642     06DF GR  |   2 A$bloxorz$1643     06E2 GR
  2 A$bloxorz$1644     06E3 GR  |   2 A$bloxorz$1645     06E5 GR
  2 A$bloxorz$1646     06E8 GR  |   2 A$bloxorz$1647     06EA GR
  2 A$bloxorz$1648     06EC GR  |   2 A$bloxorz$1649     06EF GR
  2 A$bloxorz$165      0079 GR  |   2 A$bloxorz$166      007B GR
  2 A$bloxorz$1660     06F1 GR  |   2 A$bloxorz$1661     06F4 GR
  2 A$bloxorz$1666     06F6 GR  |   2 A$bloxorz$1668     06F9 GR
  2 A$bloxorz$1669     06FB GR  |   2 A$bloxorz$167      007D GR
  2 A$bloxorz$1672     06FC GR  |   2 A$bloxorz$1673     06FE GR
  2 A$bloxorz$1678     0700 GR  |   2 A$bloxorz$1679     0701 GR
  2 A$bloxorz$168      0080 GR  |   2 A$bloxorz$1684     0704 GR
  2 A$bloxorz$1685     0706 GR  |   2 A$bloxorz$1690     070A GR
  2 A$bloxorz$1695     070D GR  |   2 A$bloxorz$1696     070F GR
  2 A$bloxorz$1697     0711 GR  |   2 A$bloxorz$1702     0714 GR
  2 A$bloxorz$1703     0716 GR  |   2 A$bloxorz$1704     0718 GR
  2 A$bloxorz$1709     071B GR  |   2 A$bloxorz$1710     071D GR
  2 A$bloxorz$1711     071F GR  |   2 A$bloxorz$1712     0722 GR
  2 A$bloxorz$1713     0724 GR  |   2 A$bloxorz$1714     0726 GR
  2 A$bloxorz$1719     0728 GR  |   2 A$bloxorz$1720     072A GR
  2 A$bloxorz$1726     072D GR  |   2 A$bloxorz$1727     0730 GR
  2 A$bloxorz$1728     0733 GR  |   2 A$bloxorz$1729     0736 GR
  2 A$bloxorz$1730     0739 GR  |   2 A$bloxorz$1731     073C GR
  2 A$bloxorz$1732     073F GR  |   2 A$bloxorz$1733     0742 GR
  2 A$bloxorz$1734     0745 GR  |   2 A$bloxorz$1735     0748 GR
  2 A$bloxorz$1740     074B GR  |   2 A$bloxorz$1741     074D GR
  2 A$bloxorz$1746     0750 GR  |   2 A$bloxorz$1747     0752 GR
  2 A$bloxorz$1752     0755 GR  |   2 A$bloxorz$1757     0758 GR
  2 A$bloxorz$176      0082 GR  |   2 A$bloxorz$1762     075B GR
  2 A$bloxorz$1767     075E GR  |   2 A$bloxorz$177      0084 GR
  2 A$bloxorz$1777     0761 GR  |   2 A$bloxorz$178      0086 GR
  2 A$bloxorz$1781     0764 GR  |   2 A$bloxorz$1782     0767 GR
  2 A$bloxorz$1783     0769 GR  |   2 A$bloxorz$1784     076D GR
  2 A$bloxorz$1785     076E GR  |   2 A$bloxorz$1786     0770 GR
  2 A$bloxorz$1787     0771 GR  |   2 A$bloxorz$1788     0772 GR
  2 A$bloxorz$1789     0774 GR  |   2 A$bloxorz$179      0088 GR
  2 A$bloxorz$180      008A GR  |   2 A$bloxorz$1803     0786 GR
  2 A$bloxorz$1808     0789 GR  |   2 A$bloxorz$181      008C GR
  2 A$bloxorz$1814     078C GR  |   2 A$bloxorz$1819     078F GR
  2 A$bloxorz$182      008E GR  |   2 A$bloxorz$1825     0792 GR
  2 A$bloxorz$183      0090 GR  |   2 A$bloxorz$1830     0795 GR
  2 A$bloxorz$1835     0798 GR  |   2 A$bloxorz$184      0091 GR
  2 A$bloxorz$1841     079B GR  |   2 A$bloxorz$1846     079E GR
  2 A$bloxorz$185      0092 GR  |   2 A$bloxorz$1851     07A1 GR
  2 A$bloxorz$1857     07A4 GR  |   2 A$bloxorz$186      0094 GR
  2 A$bloxorz$1862     07A7 GR  |   2 A$bloxorz$1867     07AA GR
  2 A$bloxorz$187      0096 GR  |   2 A$bloxorz$1873     07AC GR
  2 A$bloxorz$1878     07AF GR  |   2 A$bloxorz$188      0098 GR
  2 A$bloxorz$1883     07B2 GR  |   2 A$bloxorz$1889     07B4 GR
  2 A$bloxorz$189      009A GR  |   2 A$bloxorz$1894     07B7 GR
  2 A$bloxorz$190      009C GR  |   2 A$bloxorz$1904     07BA GR
  2 A$bloxorz$1905     07BD GR  |   2 A$bloxorz$1906     07BF GR
  2 A$bloxorz$1911     07C3 GR  |   2 A$bloxorz$1915     07C6 GR
  2 A$bloxorz$1916     07C9 GR  |   2 A$bloxorz$1919     07CB GR
  2 A$bloxorz$1920     07CD GR  |   2 A$bloxorz$1924     07D0 GR
  2 A$bloxorz$1928     07D3 GR  |   2 A$bloxorz$1930     07D6 GR
  2 A$bloxorz$196      009E GR  |   2 A$bloxorz$201      00A0 GR
  2 A$bloxorz$202      00A2 GR  |   2 A$bloxorz$203      00A4 GR
  2 A$bloxorz$204      00A6 GR  |   2 A$bloxorz$205      00A8 GR
  2 A$bloxorz$206      00AA GR  |   2 A$bloxorz$207      00AD GR
  2 A$bloxorz$208      00AF GR  |   2 A$bloxorz$209      00B1 GR
  2 A$bloxorz$211      00B3 GR  |   2 A$bloxorz$217      00B5 GR
  2 A$bloxorz$218      00B7 GR  |   2 A$bloxorz$219      00B9 GR
  2 A$bloxorz$220      00BB GR  |   2 A$bloxorz$221      00BD GR
  2 A$bloxorz$222      00BF GR  |   2 A$bloxorz$223      00C1 GR
  2 A$bloxorz$224      00C3 GR  |   2 A$bloxorz$225      00C5 GR
  2 A$bloxorz$226      00C7 GR  |   2 A$bloxorz$227      00C9 GR
  2 A$bloxorz$228      00CB GR  |   2 A$bloxorz$229      00CE GR
  2 A$bloxorz$230      00D0 GR  |   2 A$bloxorz$231      00D2 GR
  2 A$bloxorz$232      00D6 GR  |   2 A$bloxorz$233      00D8 GR
  2 A$bloxorz$240      00DA GR  |   2 A$bloxorz$241      00DD GR
  2 A$bloxorz$242      00DF GR  |   2 A$bloxorz$243      00E2 GR
  2 A$bloxorz$248      00E5 GR  |   2 A$bloxorz$249      00E8 GR
  2 A$bloxorz$250      00EB GR  |   2 A$bloxorz$251      00EE GR
  2 A$bloxorz$252      00F0 GR  |   2 A$bloxorz$253      00F1 GR
  2 A$bloxorz$254      00F3 GR  |   2 A$bloxorz$255      00F6 GR
  2 A$bloxorz$256      00F8 GR  |   2 A$bloxorz$263      00F9 GR
  2 A$bloxorz$264      00FB GR  |   2 A$bloxorz$269      00FE GR
  2 A$bloxorz$270      0101 GR  |   2 A$bloxorz$273      0102 GR
  2 A$bloxorz$278      0104 GR  |   2 A$bloxorz$279      0106 GR
  2 A$bloxorz$282      0108 GR  |   2 A$bloxorz$283      010A GR
  2 A$bloxorz$285      010D GR  |   2 A$bloxorz$287      010F GR
  2 A$bloxorz$289      0111 GR  |   2 A$bloxorz$291      0113 GR
  2 A$bloxorz$293      0116 GR  |   2 A$bloxorz$297      0119 GR
  2 A$bloxorz$299      011B GR  |   2 A$bloxorz$301      011D GR
  2 A$bloxorz$303      0120 GR  |   2 A$bloxorz$305      0122 GR
  2 A$bloxorz$307      0126 GR  |   2 A$bloxorz$309      012A GR
  2 A$bloxorz$311      012C GR  |   2 A$bloxorz$313      012F GR
  2 A$bloxorz$315      0131 GR  |   2 A$bloxorz$317      0135 GR
  2 A$bloxorz$319      0139 GR  |   2 A$bloxorz$321      013D GR
  2 A$bloxorz$323      0141 GR  |   2 A$bloxorz$325      0143 GR
  2 A$bloxorz$327      0146 GR  |   2 A$bloxorz$329      0148 GR
  2 A$bloxorz$331      014A GR  |   2 A$bloxorz$333      014C GR
  2 A$bloxorz$335      014D GR  |   2 A$bloxorz$337      014F GR
  2 A$bloxorz$339      0151 GR  |   2 A$bloxorz$340      0153 GR
  2 A$bloxorz$343      0154 GR  |   2 A$bloxorz$344      0156 GR
  2 A$bloxorz$349      0158 GR  |   2 A$bloxorz$35       0000 GR
  2 A$bloxorz$350      015A GR  |   2 A$bloxorz$355      015E GR
  2 A$bloxorz$356      0160 GR  |   2 A$bloxorz$357      0162 GR
  2 A$bloxorz$358      0164 GR  |   2 A$bloxorz$359      0167 GR
  2 A$bloxorz$36       0002 GR  |   2 A$bloxorz$360      0169 GR
  2 A$bloxorz$37       0004 GR  |   2 A$bloxorz$370      0185 GR
  2 A$bloxorz$371      0187 GR  |   2 A$bloxorz$376      0189 GR
  2 A$bloxorz$380      018C GR  |   2 A$bloxorz$381      018E GR
  2 A$bloxorz$384      0190 GR  |   2 A$bloxorz$385      0192 GR
  2 A$bloxorz$389      0195 GR  |   2 A$bloxorz$390      0197 GR
  2 A$bloxorz$395      019A GR  |   2 A$bloxorz$396      019C GR
  2 A$bloxorz$397      019E GR  |   2 A$bloxorz$398      01A0 GR
  2 A$bloxorz$399      01A2 GR  |   2 A$bloxorz$400      01A5 GR
  2 A$bloxorz$403      01A7 GR  |   2 A$bloxorz$404      01A9 GR
  2 A$bloxorz$405      01AB GR  |   2 A$bloxorz$406      01AD GR
  2 A$bloxorz$410      01B0 GR  |   2 A$bloxorz$411      01B2 GR
  2 A$bloxorz$412      01B4 GR  |   2 A$bloxorz$413      01B6 GR
  2 A$bloxorz$414      01B8 GR  |   2 A$bloxorz$415      01BB GR
  2 A$bloxorz$418      01BD GR  |   2 A$bloxorz$419      01BF GR
  2 A$bloxorz$420      01C1 GR  |   2 A$bloxorz$421      01C3 GR
  2 A$bloxorz$425      01C6 GR  |   2 A$bloxorz$426      01C8 GR
  2 A$bloxorz$427      01CA GR  |   2 A$bloxorz$428      01CC GR
  2 A$bloxorz$429      01CE GR  |   2 A$bloxorz$430      01D1 GR
  2 A$bloxorz$433      01D3 GR  |   2 A$bloxorz$434      01D5 GR
  2 A$bloxorz$435      01D7 GR  |   2 A$bloxorz$436      01D9 GR
  2 A$bloxorz$440      01DC GR  |   2 A$bloxorz$441      01DF GR
  2 A$bloxorz$442      01E1 GR  |   2 A$bloxorz$447      01E3 GR
  2 A$bloxorz$453      01E5 GR  |   2 A$bloxorz$454      01E7 GR
  2 A$bloxorz$455      01E9 GR  |   2 A$bloxorz$456      01EB GR
  2 A$bloxorz$457      01EE GR  |   2 A$bloxorz$458      01F0 GR
  2 A$bloxorz$459      01F2 GR  |   2 A$bloxorz$460      01F4 GR
  2 A$bloxorz$461      01F6 GR  |   2 A$bloxorz$466      01F8 GR
  2 A$bloxorz$47       0006 GR  |   2 A$bloxorz$472      01FB GR
  2 A$bloxorz$473      01FE GR  |   2 A$bloxorz$474      0200 GR
  2 A$bloxorz$479      0202 GR  |   2 A$bloxorz$481      0205 GR
  2 A$bloxorz$482      0207 GR  |   2 A$bloxorz$485      0209 GR
  2 A$bloxorz$486      020B GR  |   2 A$bloxorz$491      020D GR
  2 A$bloxorz$495      0210 GR  |   2 A$bloxorz$496      0212 GR
  2 A$bloxorz$499      0214 GR  |   2 A$bloxorz$500      0216 GR
  2 A$bloxorz$504      0219 GR  |   2 A$bloxorz$508      021C GR
  2 A$bloxorz$509      021E GR  |   2 A$bloxorz$51       0009 GR
  2 A$bloxorz$510      0220 GR  |   2 A$bloxorz$511      0222 GR
  2 A$bloxorz$512      0224 GR  |   2 A$bloxorz$513      0226 GR
  2 A$bloxorz$516      0228 GR  |   2 A$bloxorz$517      022A GR
  2 A$bloxorz$518      022C GR  |   2 A$bloxorz$52       000B GR
  2 A$bloxorz$522      022F GR  |   2 A$bloxorz$523      0231 GR
  2 A$bloxorz$524      0233 GR  |   2 A$bloxorz$525      0237 GR
  2 A$bloxorz$528      023A GR  |   2 A$bloxorz$529      023C GR
  2 A$bloxorz$533      023F GR  |   2 A$bloxorz$537      0242 GR
  2 A$bloxorz$538      0244 GR  |   2 A$bloxorz$539      0246 GR
  2 A$bloxorz$540      0248 GR  |   2 A$bloxorz$541      024A GR
  2 A$bloxorz$542      024C GR  |   2 A$bloxorz$545      024E GR
  2 A$bloxorz$546      0250 GR  |   2 A$bloxorz$547      0252 GR
  2 A$bloxorz$55       000D GR  |   2 A$bloxorz$551      0255 GR
  2 A$bloxorz$552      0257 GR  |   2 A$bloxorz$553      0259 GR
  2 A$bloxorz$556      025C GR  |   2 A$bloxorz$557      025E GR
  2 A$bloxorz$56       000F GR  |   2 A$bloxorz$561      0261 GR
  2 A$bloxorz$565      0264 GR  |   2 A$bloxorz$566      0266 GR
  2 A$bloxorz$567      0268 GR  |   2 A$bloxorz$568      026A GR
  2 A$bloxorz$569      026C GR  |   2 A$bloxorz$570      026E GR
  2 A$bloxorz$573      0270 GR  |   2 A$bloxorz$574      0272 GR
  2 A$bloxorz$575      0274 GR  |   2 A$bloxorz$579      0277 GR
  2 A$bloxorz$580      0279 GR  |   2 A$bloxorz$581      027B GR
  2 A$bloxorz$584      027E GR  |   2 A$bloxorz$585      0280 GR
  2 A$bloxorz$589      0283 GR  |   2 A$bloxorz$593      0286 GR
  2 A$bloxorz$594      0288 GR  |   2 A$bloxorz$595      028A GR
  2 A$bloxorz$596      028C GR  |   2 A$bloxorz$597      028E GR
  2 A$bloxorz$60       0012 GR  |   2 A$bloxorz$600      0290 GR
  2 A$bloxorz$601      0292 GR  |   2 A$bloxorz$602      0294 GR
  2 A$bloxorz$606      0297 GR  |   2 A$bloxorz$607      0299 GR
  2 A$bloxorz$608      029B GR  |   2 A$bloxorz$61       0014 GR
  2 A$bloxorz$611      029E GR  |   2 A$bloxorz$612      02A0 GR
  2 A$bloxorz$616      02A3 GR  |   2 A$bloxorz$620      02A6 GR
  2 A$bloxorz$621      02A8 GR  |   2 A$bloxorz$622      02AA GR
  2 A$bloxorz$623      02AC GR  |   2 A$bloxorz$624      02AE GR
  2 A$bloxorz$625      02B0 GR  |   2 A$bloxorz$628      02B2 GR
  2 A$bloxorz$629      02B4 GR  |   2 A$bloxorz$630      02B6 GR
  2 A$bloxorz$634      02B9 GR  |   2 A$bloxorz$635      02BB GR
  2 A$bloxorz$636      02BD GR  |   2 A$bloxorz$639      02C0 GR
  2 A$bloxorz$640      02C2 GR  |   2 A$bloxorz$644      02C5 GR
  2 A$bloxorz$648      02C8 GR  |   2 A$bloxorz$649      02CA GR
  2 A$bloxorz$650      02CC GR  |   2 A$bloxorz$651      02CE GR
  2 A$bloxorz$652      02D0 GR  |   2 A$bloxorz$653      02D2 GR
  2 A$bloxorz$656      02D4 GR  |   2 A$bloxorz$657      02D6 GR
  2 A$bloxorz$658      02D8 GR  |   2 A$bloxorz$66       0017 GR
  2 A$bloxorz$662      02DB GR  |   2 A$bloxorz$663      02DD GR
  2 A$bloxorz$664      02DF GR  |   2 A$bloxorz$667      02E2 GR
  2 A$bloxorz$668      02E4 GR  |   2 A$bloxorz$67       0019 GR
  2 A$bloxorz$670      02E7 GR  |   2 A$bloxorz$671      02E9 GR
  2 A$bloxorz$674      02EB GR  |   2 A$bloxorz$675      02ED GR
  2 A$bloxorz$68       001B GR  |   2 A$bloxorz$680      02EF GR
  2 A$bloxorz$681      02F1 GR  |   2 A$bloxorz$684      02F3 GR
  2 A$bloxorz$685      02F5 GR  |   2 A$bloxorz$689      02F8 GR
  2 A$bloxorz$69       001D GR  |   2 A$bloxorz$690      02FA GR
  2 A$bloxorz$695      02FD GR  |   2 A$bloxorz$696      02FF GR
  2 A$bloxorz$697      0301 GR  |   2 A$bloxorz$698      0303 GR
  2 A$bloxorz$699      0306 GR  |   2 A$bloxorz$70       001F GR
  2 A$bloxorz$702      0308 GR  |   2 A$bloxorz$703      030A GR
  2 A$bloxorz$704      030C GR  |   2 A$bloxorz$705      030E GR
  2 A$bloxorz$707      0311 GR  |   2 A$bloxorz$708      0313 GR
  2 A$bloxorz$715      0315 GR  |   2 A$bloxorz$720      0318 GR
  2 A$bloxorz$721      031B GR  |   2 A$bloxorz$726      031E GR
  2 A$bloxorz$727      0321 GR  |   2 A$bloxorz$728      0322 GR
  2 A$bloxorz$73       0022 GR  |   2 A$bloxorz$733      0325 GR
  2 A$bloxorz$734      0326 GR  |   2 A$bloxorz$739      0328 GR
  2 A$bloxorz$74       0024 GR  |   2 A$bloxorz$740      032A GR
  2 A$bloxorz$742      032D GR  |   2 A$bloxorz$745      032E GR
  2 A$bloxorz$75       0026 GR  |   2 A$bloxorz$750      0330 GR
  2 A$bloxorz$751      0333 GR  |   2 A$bloxorz$752      0334 GR
  2 A$bloxorz$753      0337 GR  |   2 A$bloxorz$754      0338 GR
  2 A$bloxorz$759      033B GR  |   2 A$bloxorz$76       0028 GR
  2 A$bloxorz$760      033E GR  |   2 A$bloxorz$761      033F GR
  2 A$bloxorz$762      0340 GR  |   2 A$bloxorz$763      0343 GR
  2 A$bloxorz$764      0345 GR  |   2 A$bloxorz$765      0346 GR
  2 A$bloxorz$766      0349 GR  |   2 A$bloxorz$767      034C GR
  2 A$bloxorz$772      034F GR  |   2 A$bloxorz$773      0353 GR
  2 A$bloxorz$774      0355 GR  |   2 A$bloxorz$775      0358 GR
  2 A$bloxorz$78       002B GR  |   2 A$bloxorz$781      035B GR
  2 A$bloxorz$782      035E GR  |   2 A$bloxorz$783      035F GR
  2 A$bloxorz$784      0361 GR  |   2 A$bloxorz$785      0362 GR
  2 A$bloxorz$786      0363 GR  |   2 A$bloxorz$787      0365 GR
  2 A$bloxorz$788      0369 GR  |   2 A$bloxorz$793      036C GR
  2 A$bloxorz$798      036F GR  |   2 A$bloxorz$803      0372 GR
  2 A$bloxorz$804      0375 GR  |   2 A$bloxorz$805      0377 GR
  2 A$bloxorz$810      037A GR  |   2 A$bloxorz$811      037C GR
  2 A$bloxorz$816      037F GR  |   2 A$bloxorz$821      0382 GR
  2 A$bloxorz$822      0384 GR  |   2 A$bloxorz$827      0387 GR
  2 A$bloxorz$828      0389 GR  |   2 A$bloxorz$833      038C GR
  2 A$bloxorz$834      038F GR  |   2 A$bloxorz$839      0392 GR
  2 A$bloxorz$840      0394 GR  |   2 A$bloxorz$845      0398 GR
  2 A$bloxorz$846      039B GR  |   2 A$bloxorz$85       002E GR
  2 A$bloxorz$851      039E GR  |   2 A$bloxorz$852      03A1 GR
  2 A$bloxorz$853      03A3 GR  |   2 A$bloxorz$86       002F GR
  2 A$bloxorz$866      03D0 GR  |   2 A$bloxorz$867      03D2 GR
  2 A$bloxorz$872      03D4 GR  |   2 A$bloxorz$876      03D7 GR
  2 A$bloxorz$877      03D9 GR  |   2 A$bloxorz$880      03DB GR
  2 A$bloxorz$881      03DD GR  |   2 A$bloxorz$885      03E0 GR
  2 A$bloxorz$886      03E2 GR  |   2 A$bloxorz$891      03E5 GR
  2 A$bloxorz$892      03E7 GR  |   2 A$bloxorz$893      03E9 GR
  2 A$bloxorz$894      03EB GR  |   2 A$bloxorz$895      03ED GR
  2 A$bloxorz$896      03F0 GR  |   2 A$bloxorz$899      03F2 GR
  2 A$bloxorz$900      03F4 GR  |   2 A$bloxorz$901      03F6 GR
  2 A$bloxorz$902      03F8 GR  |   2 A$bloxorz$906      03FB GR
  2 A$bloxorz$907      03FD GR  |   2 A$bloxorz$908      03FF GR
  2 A$bloxorz$909      0401 GR  |   2 A$bloxorz$910      0403 GR
  2 A$bloxorz$911      0406 GR  |   2 A$bloxorz$914      0408 GR
  2 A$bloxorz$915      040A GR  |   2 A$bloxorz$916      040C GR
  2 A$bloxorz$917      040E GR  |   2 A$bloxorz$921      0411 GR
  2 A$bloxorz$922      0413 GR  |   2 A$bloxorz$923      0415 GR
  2 A$bloxorz$924      0417 GR  |   2 A$bloxorz$925      0419 GR
  2 A$bloxorz$926      041C GR  |   2 A$bloxorz$929      041E GR
  2 A$bloxorz$93       0030 GR  |   2 A$bloxorz$930      0420 GR
  2 A$bloxorz$931      0422 GR  |   2 A$bloxorz$932      0424 GR
  2 A$bloxorz$936      0427 GR  |   2 A$bloxorz$937      042A GR
  2 A$bloxorz$938      042C GR  |   2 A$bloxorz$94       0033 GR
  2 A$bloxorz$943      042E GR  |   2 A$bloxorz$949      0431 GR
  2 A$bloxorz$950      0434 GR  |   2 A$bloxorz$951      0436 GR
  2 A$bloxorz$956      0438 GR  |   2 A$bloxorz$957      043A GR
  2 A$bloxorz$959      043D GR  |   2 A$bloxorz$960      043F GR
  2 A$bloxorz$963      0441 GR  |   2 A$bloxorz$968      0443 GR
  2 A$bloxorz$973      0446 GR  |   2 A$bloxorz$974      0449 GR
  2 A$bloxorz$979      044C GR  |   2 A$bloxorz$980      044F GR
  2 A$bloxorz$981      0450 GR  |   2 A$bloxorz$986      0453 GR
  2 A$bloxorz$987      0455 GR  |   2 A$bloxorz$99       0035 GR
  2 A$bloxorz$992      0459 GR  |   2 A$bloxorz$993      045C GR
  2 A$bloxorz$994      045F GR  |   2 A$bloxorz$999      0461 GR
  2 L10                0058 R   |   2 L101               072D R
  2 L102               07BA R   |   2 L103               0786 R
  2 L104               078C R   |   2 L105               0792 R
  2 L106               079B R   |   2 L107               07A4 R
  2 L108               07AC R   |   2 L109               07B4 R
  2 L11                005A R   |   2 L110               0778 R
  2 L113               0761 R   |   2 L14                0079 R
  2 L15                00B3 R   |   2 L16                00B5 R
  2 L17                009E R   |   2 L18                0082 R
  2 L2                 0006 R   |   2 L30                01FB R
  2 L31                01E5 R   |   2 L33                0205 R
  2 L41                032D R   |   2 L43                035B R
  2 L46                0431 R   |   2 L48                043D R
  2 L51                0486 R   |   2 L52                0495 R
  2 L53                0498 R   |   2 L55                04B7 R
  2 L57                04C1 R   |   2 L59                04D4 R
  2 L62                04F5 R   |   2 L63                052C R
  2 L64                0508 R   |   2 L65                051B R
  2 L66                053F R   |   2 L67                0561 R
  2 L68                0558 R   |   2 L70                0570 R
  2 L75                0631 R   |   2 L76                060A R
  2 L77                0619 R   |   2 L79                0614 R
  2 L8                 0047 R   |   2 L80                0617 R
  2 L81                0621 R   |   2 L82                0624 R
  2 L83                062E R   |   2 L84                0631 R
  2 L85                0661 R   |   2 L86                066D R
  2 L87                06F1 R   |   2 L88                067F R
  2 L89                069D R   |   2 L91                068D R
  2 L92                069A R   |   2 L93                06B0 R
  2 L94                06C4 R   |   2 L95                06D9 R
  2 L96                06F1 R   |   2 L97                06F9 R
  2 L98                0626 R   |   2 L99                06C6 R
  2 LC0                016A R   |   2 LC1                0178 R
  2 LC2                017F R   |   2 LC3                03A4 R
  2 LC4                03AF R   |   2 LC5                03BD R
    _Vec_Buttons       **** GX  |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp        **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d        **** GX
    ___Print_Str_d     **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
    _blockAnimatin     **** GX  |   2 _blockFalling      049B GR
  2 _blockMoving       058A GR  |   2 _blockMovingAt     0441 GR
  2 _blockMovingTo     0315 GR  |     _blockOrientat     **** GX
    _blockStartLev     **** GX  |   2 _blockWaiting      04D8 GR
    _blockX            **** GX  |     _blockY            **** GX
    _blockYOfs         **** GX  |   2 _changeMusic       00F9 GR
  2 _clearMenu         0185 GR  |   3 _currentMusic      0000 GR
    _doBlockAnimat     **** GX  |     _dp_VIA_t1_cnt     **** GX
    _drawBlock         **** GX  |   2 _drawField         0102 GR
    _endX              **** GX  |     _endY              **** GX
  2 _fallingMusic      0813 GR  |   4 _gameState         000F GR
    _getField          **** GX  |   4 _infoText          0000 GR
    _initLevel         **** GX  |     _initSwatches      **** GX
    _isField           **** GX  |   2 _itoa              005B GR
    _lastBlockDire     **** GX  |   2 _led8              083B GR
    _level             **** GX  |     _levelCount        **** GX
  2 _levelEndMusic     07F9 GR  |   4 _levelHighscor     000C GR
    _levelNumber       **** GX  |     _levelOffset       **** GX
    _levels            **** GX  |     _lineCount         **** GX
    _lineX0            **** GX  |     _lineX1            **** GX
    _lineY0            **** GX  |     _lineY1            **** GX
  2 _main              06FC GR  |   2 _mainMenu          03D0 GR
  2 _moveBlock         04C4 GR  |     _moveBlockImpl     **** GX
  4 _moveCount         000A GR  |   2 _movingMusic       0833 GR
    _nextBank          **** GX  |   4 _picAvailable      000E GR
  2 _readEeprom        0048 GR  |   2 _runtimeError      0000 GR
  2 _sendCommand       002E GR  |   2 _setBank           0154 GR
  2 _showInfo          02EB GR  |   2 _showInfo2         0209 GR
    _splitMode         **** GX  |   2 _startBlockFal     0571 GR
  2 _startLevel        032E GR  |   2 _startMusic        07D9 GR
    _swapSplit         **** GX  |     _swatchSwitch      **** GX
    _testMerge         **** GX  |   2 _updateInfoTex     00DA GR
  3 _vecx              0002 GR  |   2 _writeEeprom       0030 GR
  2 drawFieldLoop      0119 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  851   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

