                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	bloxorz.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
                             12 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             13 ;  -I/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/include
                             14 ;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c
                             15 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             16 ;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             17 ;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             18 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             19 ;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             20 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             21 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             22 ;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             23 ;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             24 ;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             25 ;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             26 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             27 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             28 ;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             29 ;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             30 ;  -fzero-initialized-in-bss
                             31 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             32 	.area .text
                             33 	.globl _runtimeError
   689F                      34 _runtimeError:
   689F 34 60         [ 7]   35 	pshs	y,u	; 
   68A1 32 7C         [ 5]   36 	leas	-4,s	; ,,
   68A3 31 84         [ 4]   37 	leay	,x	;  msg, msg
                             38 ;----- asm -----
                             39 ;  154 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             40 	; #ENR#[153]	while (1) {
                             41 ;  0 "" 2
                             42 ;--- end asm ---
   68A5                      43 L2:
                             44 ;----- asm -----
                             45 ;  156 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             46 	; #ENR#[154]		frwait();
                             47 ;  0 "" 2
                             48 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   68A5 BD F1 92      [ 8]   49 	jsr ___Wait_Recal; BIOS call
                             50 ;  0 "" 2
                             51 ;  158 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             52 	; #ENR#[155]         Intensity_a(0x5f);
                             53 ;  0 "" 2
                             54 ;--- end asm ---
   68A8 C6 5F         [ 2]   55 	ldb	#95	; ,
   68AA E7 63         [ 5]   56 	stb	3,s	; , a
                             57 ;----- asm -----
                             58 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   68AC A6 63         [ 5]   59 	lda 3,s	;  a
   68AE BD F2 AB      [ 8]   60 	jsr ___Intensity_a; BIOS call
                             61 ;  0 "" 2
                             62 ;  160 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             63 	; #ENR#[156]         Vec_Text_Width = 90;
                             64 ;  0 "" 2
                             65 ;--- end asm ---
   68B1 C6 5A         [ 2]   66 	ldb	#90	; ,
   68B3 F7 C8 2B      [ 5]   67 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             68 ;----- asm -----
                             69 ;  162 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             70 	; #ENR#[157]         Print_Str_d(-10, -110, msg);
                             71 ;  0 "" 2
                             72 ;--- end asm ---
   68B6 C6 F6         [ 2]   73 	ldb	#-10	; ,
   68B8 E7 63         [ 5]   74 	stb	3,s	; , a
   68BA C6 92         [ 2]   75 	ldb	#-110	; ,
   68BC E7 62         [ 5]   76 	stb	2,s	; , b
   68BE 10 AF E4      [ 6]   77 	sty	,s	;  msg, u
                             78 ;----- asm -----
                             79 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   68C1 A6 63         [ 5]   80 	lda 3,s	;  a
   68C3 E6 62         [ 5]   81 	ldb 2,s	;  b
   68C5 EE E4         [ 5]   82 	ldu ,s	;  u
   68C7 BD F3 7A      [ 8]   83 	jsr ___Print_Str_d; BIOS call
                             84 ;  0 "" 2
                             85 ;--- end asm ---
   68CA 7E 68 A5      [ 4]   86 	jmp	L2	; 
                             87 	.globl _sendCommand
   68CD                      88 _sendCommand:
                             89 ;----- asm -----
                             90 ;  169 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             91 	; #ENR#[163]return 0;
                             92 ;  0 "" 2
                             93 ;--- end asm ---
   68CD 5F            [ 2]   94 	clrb	; 
   68CE 39            [ 5]   95 	rts
                             96 	.globl _writeEeprom
   68CF                      97 _writeEeprom:
                             98 ;----- asm -----
                             99 ;  189 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            100 	; #ENR#[175]	if (picAvailable) {
                            101 ;  0 "" 2
                            102 ;--- end asm ---
   68CF 7D CA F5      [ 7]  103 	tst	_picAvailable	;  picAvailable
   68D2 27 12         [ 3]  104 	beq	L8	; 
                            105 ;----- asm -----
                            106 ;  191 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            107 	; #ENR#[176]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                            108 ;  0 "" 2
                            109 ;--- end asm ---
   68D4 34 04         [ 6]  110 	pshs	b	;  address
   68D6 C6 02         [ 2]  111 	ldb	#2	; ,
   68D8 BD 68 CD      [ 8]  112 	jsr	_sendCommand	; 
                            113 ;----- asm -----
                            114 ;  193 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            115 	; #ENR#[177]	    	sendCommand(CMD_EEPROM_WRITE, data);
                            116 ;  0 "" 2
                            117 ;--- end asm ---
   68DB E6 63         [ 5]  118 	ldb	3,s	; , data
   68DD E7 E2         [ 6]  119 	stb	,-s	; ,
   68DF C6 03         [ 2]  120 	ldb	#3	; ,
   68E1 BD 68 CD      [ 8]  121 	jsr	_sendCommand	; 
   68E4 32 62         [ 5]  122 	leas	2,s	; ,,
   68E6                     123 L8:
   68E6 39            [ 5]  124 	rts
                            125 	.globl _readEeprom
   68E7                     126 _readEeprom:
                            127 ;----- asm -----
                            128 ;  200 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            129 	; #ENR#[183]	if (picAvailable) {
                            130 ;  0 "" 2
                            131 ;--- end asm ---
   68E7 7D CA F5      [ 7]  132 	tst	_picAvailable	;  picAvailable
   68EA 27 0B         [ 3]  133 	beq	L10	; 
                            134 ;----- asm -----
                            135 ;  202 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            136 	; #ENR#[184]		return sendCommand(CMD_EEPROM_READ, address);
                            137 ;  0 "" 2
                            138 ;--- end asm ---
   68EC 34 04         [ 6]  139 	pshs	b	;  address
   68EE C6 04         [ 2]  140 	ldb	#4	; ,
   68F0 BD 68 CD      [ 8]  141 	jsr	_sendCommand	; 
   68F3 32 61         [ 5]  142 	leas	1,s	; ,,
   68F5 20 02         [ 3]  143 	bra	L11	; 
   68F7                     144 L10:
                            145 ;----- asm -----
                            146 ;  205 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            147 	; #ENR#[186]		return 0xff;
                            148 ;  0 "" 2
                            149 ;--- end asm ---
   68F7 C6 FF         [ 2]  150 	ldb	#-1	;  D.2258,
   68F9                     151 L11:
   68F9 39            [ 5]  152 	rts
                            153 	.globl _itoa
   68FA                     154 _itoa:
   68FA 34 60         [ 7]  155 	pshs	y,u	; 
   68FC 32 71         [ 5]  156 	leas	-15,s	; ,,
                            157 ;----- asm -----
                            158 ;  214 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            159 	; #ENR#[194]	uint16_t muls[] = { 100, 10, 1 };
                            160 ;  0 "" 2
                            161 ;--- end asm ---
   68FE CC 00 64      [ 3]  162 	ldd	#100	; ,
   6901 ED 69         [ 6]  163 	std	9,s	; , muls
   6903 CC 00 0A      [ 3]  164 	ldd	#10	; ,
   6906 ED 6B         [ 6]  165 	std	11,s	; , muls
   6908 CC 00 01      [ 3]  166 	ldd	#1	; ,
   690B ED 6D         [ 6]  167 	std	13,s	; , muls
                            168 ;----- asm -----
                            169 ;  216 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            170 	; #ENR#[195]	if (number > 999) number = 999;
                            171 ;  0 "" 2
                            172 ;--- end asm ---
   690D 31 84         [ 4]  173 	leay	,x	;  number.103, number
   690F 8C 03 E7      [ 4]  174 	cmpx	#999	;cmphi:	;  number.103,
   6912 23 04         [ 3]  175 	bls	L14	; 
   6914 10 8E 03 E7   [ 4]  176 	ldy	#999	;  number.103,
   6918                     177 L14:
                            178 ;----- asm -----
                            179 ;  218 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            180 	; #ENR#[196]	for (uint8_t i = 0; i < 3; i++) {
                            181 ;  0 "" 2
                            182 ;--- end asm ---
   6918 30 69         [ 5]  183 	leax	9,s	; ,,
   691A AF 65         [ 6]  184 	stx	5,s	; , ivtmp.99
   691C EC E8 15      [ 6]  185 	ldd	21,s	; , text
   691F ED 67         [ 6]  186 	std	7,s	; , ivtmp.101
   6921                     187 L18:
                            188 ;----- asm -----
                            189 ;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            190 	; #ENR#[197]		uint8_t d = 0;
                            191 ;  0 "" 2
                            192 ;  222 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            193 	; #ENR#[198]		while (number >= muls[i]) {
                            194 ;  0 "" 2
                            195 ;--- end asm ---
   6921 AE 65         [ 6]  196 	ldx	5,s	; , ivtmp.99
   6923 AE 84         [ 5]  197 	ldx	,x	; , muls
   6925 AF E4         [ 5]  198 	stx	,s	; , D.2274
   6927 34 20         [ 6]  199 	pshs	y	;cmphi: R:y with R:x	;  number.103,
   6929 AC E1         [ 9]  200 	cmpx	,s++	;cmphi:	; 
   692B 22 25         [ 3]  201 	bhi	L15	; 
   692D 1F 10         [ 6]  202 	tfr	x,d	; ,
   692F 40            [ 2]  203 	nega
   6930 50            [ 2]  204 	negb
   6931 82 00         [ 2]  205 	sbca	#0
   6933 ED 63         [ 6]  206 	std	3,s	; , ivtmp.91
   6935 1F 20         [ 6]  207 	tfr	y,d	;  number.103,
   6937 A3 E4         [ 6]  208 	subd	,s	;subhi: R:d -= ,s	; , D.2274
   6939 1F 02         [ 6]  209 	tfr	d,y	; , number.103
   693B 6F 62         [ 7]  210 	clr	2,s	;  d
   693D                     211 L17:
                            212 ;----- asm -----
                            213 ;  224 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            214 	; #ENR#[199]			d++;
                            215 ;  0 "" 2
                            216 ;--- end asm ---
   693D 6C 62         [ 7]  217 	inc	2,s	;  d
                            218 ;----- asm -----
                            219 ;  226 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            220 	; #ENR#[200]			number -= muls[i];
                            221 ;  0 "" 2
                            222 ;--- end asm ---
   693F EC 63         [ 6]  223 	ldd	3,s	; , ivtmp.91
   6941 33 AB         [ 8]  224 	leau	d,y	;  number.102,, number.103
   6943 EC E4         [ 5]  225 	ldd	,s	; , D.2274
   6945 30 CB         [ 8]  226 	leax	d,u	;  tmp85,, number.102
   6947 34 10         [ 6]  227 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   6949 10 A3 E1      [10]  228 	cmpd	,s++	;cmphi:	; 
   694C 22 06         [ 3]  229 	bhi	L16	; 
   694E 31 C4         [ 4]  230 	leay	,u	;  number.103, number.102
   6950 20 EB         [ 3]  231 	bra	L17	; 
   6952                     232 L15:
   6952 6F 62         [ 7]  233 	clr	2,s	;  d
   6954                     234 L16:
                            235 ;----- asm -----
                            236 ;  229 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            237 	; #ENR#[202]		text[i] = d + '0';
                            238 ;  0 "" 2
                            239 ;--- end asm ---
   6954 E6 62         [ 5]  240 	ldb	2,s	; , d
   6956 CB 30         [ 2]  241 	addb	#48	; ,
   6958 AE 67         [ 6]  242 	ldx	7,s	; , ivtmp.101
   695A 30 01         [ 5]  243 	leax	1,x	; ,,
   695C AF 67         [ 6]  244 	stx	7,s	; , ivtmp.101
   695E 30 1F         [ 5]  245 	leax	-1,x	; ,,
   6960 E7 80         [ 6]  246 	stb	,x+	; ,
   6962 AE 65         [ 6]  247 	ldx	5,s	; , ivtmp.99
   6964 30 02         [ 5]  248 	leax	2,x	; ,,
   6966 AF 65         [ 6]  249 	stx	5,s	; , ivtmp.99
   6968 1F 40         [ 6]  250 	tfr	s,d	; ,
   696A C3 00 0F      [ 4]  251 	addd	#15	; ,
   696D 34 06         [ 7]  252 	pshs	d	;cmphi: R:d with R:x	; ,
   696F AC E1         [ 9]  253 	cmpx	,s++	;cmphi:	; 
   6971 10 26 FF AC   [ 6]  254 	lbne	L18	; 
   6975 32 6F         [ 5]  255 	leas	15,s	; ,,
   6977 35 E0         [ 8]  256 	puls	y,u,pc	; 
                            257 	.globl _updateInfoText
   6979                     258 _updateInfoText:
                            259 ;----- asm -----
                            260 ;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            261 	; #ENR#[208]	itoa(moveCount, &infoText[0]);
                            262 ;  0 "" 2
                            263 ;--- end asm ---
   6979 8E CA E7      [ 3]  264 	ldx	#_infoText	; ,
   697C AF E3         [ 8]  265 	stx	,--s	; ,
   697E BE CA F1      [ 6]  266 	ldx	_moveCount	; , moveCount
   6981 BD 68 FA      [ 8]  267 	jsr	_itoa	; 
                            268 ;----- asm -----
                            269 ;  239 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            270 	; #ENR#[210]	itoa(levelNumber + 1, &infoText[6]);
                            271 ;  0 "" 2
                            272 ;--- end asm ---
   6984 F6 C8 83      [ 5]  273 	ldb	_levelNumber	;  tmp28, levelNumber
   6987 5C            [ 2]  274 	incb	;  tmp28
   6988 8E CA ED      [ 3]  275 	ldx	#_infoText+6	; ,
   698B AF E3         [ 8]  276 	stx	,--s	; ,
   698D 4F            [ 2]  277 	clra		;zero_extendqihi: R:b -> R:d	;  tmp28,
   698E 1F 01         [ 6]  278 	tfr	d,x	; ,
   6990 BD 68 FA      [ 8]  279 	jsr	_itoa	; 
   6993 32 64         [ 5]  280 	leas	4,s	; ,,
   6995 39            [ 5]  281 	rts
                            282 	.globl _changeMusic
   6996                     283 _changeMusic:
                            284 ;----- asm -----
                            285 ;  245 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            286 	; #ENR#[215]	tstat = 1;
                            287 ;  0 "" 2
                            288 ;--- end asm ---
   6996 C6 01         [ 2]  289 	ldb	#1	; ,
   6998 F7 C8 56      [ 5]  290 	stb	-14250	; ,
                            291 ;----- asm -----
                            292 ;  247 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            293 	; #ENR#[216]	currentMusic = music;
                            294 ;  0 "" 2
                            295 ;--- end asm ---
   699B BF C8 84      [ 6]  296 	stx	_currentMusic	;  music, currentMusic
   699E 39            [ 5]  297 	rts
                            298 	.globl _drawField
   699F                     299 _drawField:
   699F 32 7F         [ 5]  300 	leas	-1,s	; ,,
                            301 ;----- asm -----
                            302 ;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            303 	; #ENR#[258]	intens(0x35);
                            304 ;  0 "" 2
                            305 ;--- end asm ---
   69A1 C6 35         [ 2]  306 	ldb	#53	; ,
   69A3 E7 E4         [ 4]  307 	stb	,s	; , a
                            308 ;----- asm -----
                            309 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   69A5 A6 E4         [ 4]  310 	lda ,s	;  a
   69A7 BD F2 AB      [ 8]  311 	jsr ___Intensity_a; BIOS call
                            312 ;  0 "" 2
                            313 ;  326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69AA 34 5E         [10]  314 		pshs a, b, dp, x, u
                            315 ;  0 "" 2
                            316 ;  327 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69AC 86 D0         [ 2]  317 		lda #0xd0
                            318 ;  0 "" 2
                            319 ;  328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69AE 1F 8B         [ 6]  320 		tfr a, dp
                            321 ;  0 "" 2
                            322 ;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B0 8E 00 00      [ 3]  323 		ldx #0
                            324 ;  0 "" 2
                            325 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B3 F6 C8 80      [ 5]  326 		ldb _lineCount
                            327 ;  0 "" 2
                            328 ;  331 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B6                     329 	drawFieldLoop:
                            330 ;  0 "" 2
                            331 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B6 34 04         [ 6]  332 		pshs b
                            333 ;  0 "" 2
                            334 ;  333 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B8 34 10         [ 6]  335 		pshs x
                            336 ;  0 "" 2
                            337 ;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69BA BD F3 54      [ 8]  338 		jsr 0xf354
                            339 ;  0 "" 2
                            340 ;  335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69BD 35 10         [ 6]  341 		puls x
                            342 ;  0 "" 2
                            343 ;  336 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69BF A6 89 C9 7F   [ 8]  344 		lda _lineY0,x
                            345 ;  0 "" 2
                            346 ;  337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69C3 E6 89 C9 07   [ 8]  347 		ldb _lineX0,x
                            348 ;  0 "" 2
                            349 ;  338 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69C7 34 10         [ 6]  350 		pshs x
                            351 ;  0 "" 2
                            352 ;  339 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69C9 BD F2 FC      [ 8]  353 		jsr 0xf2fc
                            354 ;  0 "" 2
                            355 ;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69CC 35 10         [ 6]  356 		puls x
                            357 ;  0 "" 2
                            358 ;  341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69CE A6 89 CA 6F   [ 8]  359 		lda _lineY1,x
                            360 ;  0 "" 2
                            361 ;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69D2 E6 89 C9 F7   [ 8]  362 		ldb _lineX1,x
                            363 ;  0 "" 2
                            364 ;  343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69D6 A0 89 C9 7F   [ 8]  365 		suba _lineY0,x
                            366 ;  0 "" 2
                            367 ;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69DA E0 89 C9 07   [ 8]  368 		subb _lineX0,x
                            369 ;  0 "" 2
                            370 ;  345 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69DE 34 10         [ 6]  371 		pshs x
                            372 ;  0 "" 2
                            373 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E0 BD F3 DF      [ 8]  374 		jsr 0xf3df
                            375 ;  0 "" 2
                            376 ;  347 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E3 35 10         [ 6]  377 		puls x
                            378 ;  0 "" 2
                            379 ;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E5 A6 80         [ 6]  380 		lda ,x+
                            381 ;  0 "" 2
                            382 ;  349 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E7 35 04         [ 6]  383 		puls b
                            384 ;  0 "" 2
                            385 ;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E9 5A            [ 2]  386 		decb
                            387 ;  0 "" 2
                            388 ;  351 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69EA 26 CA         [ 3]  389 		bne drawFieldLoop
                            390 ;  0 "" 2
                            391 ;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69EC 35 5E         [10]  392 		puls a, b, dp, x, u
                            393 ;  0 "" 2
                            394 ;--- end asm ---
   69EE 32 61         [ 5]  395 	leas	1,s	; ,,
   69F0 39            [ 5]  396 	rts
   69F1                     397 LC0:
   69F1 43                  398 	.byte	0x43
   69F2 4C                  399 	.byte	0x4C
   69F3 45                  400 	.byte	0x45
   69F4 41                  401 	.byte	0x41
   69F5 52                  402 	.byte	0x52
   69F6 20                  403 	.byte	0x20
   69F7 53                  404 	.byte	0x53
   69F8 43                  405 	.byte	0x43
   69F9 4F                  406 	.byte	0x4F
   69FA 52                  407 	.byte	0x52
   69FB 45                  408 	.byte	0x45
   69FC 3F                  409 	.byte	0x3F
   69FD 80                  410 	.byte	0x80
   69FE 00                  411 	.byte	0x00
   69FF                     412 LC1:
   69FF 33                  413 	.byte	0x33
   6A00 20                  414 	.byte	0x20
   6A01 59                  415 	.byte	0x59
   6A02 45                  416 	.byte	0x45
   6A03 53                  417 	.byte	0x53
   6A04 80                  418 	.byte	0x80
   6A05 00                  419 	.byte	0x00
   6A06                     420 LC2:
   6A06 34                  421 	.byte	0x34
   6A07 20                  422 	.byte	0x20
   6A08 4E                  423 	.byte	0x4E
   6A09 4F                  424 	.byte	0x4F
   6A0A 80                  425 	.byte	0x80
   6A0B 00                  426 	.byte	0x00
                            427 	.globl _clearMenu
   6A0C                     428 _clearMenu:
   6A0C 34 40         [ 6]  429 	pshs	u	; 
   6A0E 32 7B         [ 5]  430 	leas	-5,s	; ,,
                            431 ;----- asm -----
                            432 ;  635 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            433 	; #ENR#[476]	Read_Btns();
                            434 ;  0 "" 2
                            435 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A10 BD F1 BA      [ 8]  436 	jsr ___Read_Btns; BIOS call
                            437 ;  0 "" 2
                            438 ;  637 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            439 	; #ENR#[477]    Intensity_a(0x5f);
                            440 ;  0 "" 2
                            441 ;--- end asm ---
   6A13 C6 5F         [ 2]  442 	ldb	#95	; ,
   6A15 E7 64         [ 5]  443 	stb	4,s	; , a
                            444 ;----- asm -----
                            445 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A17 A6 64         [ 5]  446 	lda 4,s	;  a
   6A19 BD F2 AB      [ 8]  447 	jsr ___Intensity_a; BIOS call
                            448 ;  0 "" 2
                            449 ;  639 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            450 	; #ENR#[478]    Vec_Text_Width = 90;
                            451 ;  0 "" 2
                            452 ;--- end asm ---
   6A1C C6 5A         [ 2]  453 	ldb	#90	; ,
   6A1E F7 C8 2B      [ 5]  454 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            455 ;----- asm -----
                            456 ;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            457 	; #ENR#[479]    Print_Str_d(100, -80, "CLEAR SCORE?�");
                            458 ;  0 "" 2
                            459 ;--- end asm ---
   6A21 CB 0A         [ 2]  460 	addb	#10	; ,
   6A23 E7 64         [ 5]  461 	stb	4,s	; , a
   6A25 C6 B0         [ 2]  462 	ldb	#-80	; ,
   6A27 E7 63         [ 5]  463 	stb	3,s	; , b
   6A29 8E 69 F1      [ 3]  464 	ldx	#LC0	; ,
   6A2C AF 61         [ 6]  465 	stx	1,s	; , u
                            466 ;----- asm -----
                            467 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A2E A6 64         [ 5]  468 	lda 4,s	;  a
   6A30 E6 63         [ 5]  469 	ldb 3,s	;  b
   6A32 EE 61         [ 6]  470 	ldu 1,s	;  u
   6A34 BD F3 7A      [ 8]  471 	jsr ___Print_Str_d; BIOS call
                            472 ;  0 "" 2
                            473 ;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            474 	; #ENR#[480]    Print_Str_d(50, -110, "3 YES�");
                            475 ;  0 "" 2
                            476 ;--- end asm ---
   6A37 C6 32         [ 2]  477 	ldb	#50	; ,
   6A39 E7 63         [ 5]  478 	stb	3,s	; , a
   6A3B C6 92         [ 2]  479 	ldb	#-110	; ,
   6A3D E7 64         [ 5]  480 	stb	4,s	; , b
   6A3F 8E 69 FF      [ 3]  481 	ldx	#LC1	; ,
   6A42 AF 61         [ 6]  482 	stx	1,s	; , u
                            483 ;----- asm -----
                            484 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A44 A6 63         [ 5]  485 	lda 3,s	;  a
   6A46 E6 64         [ 5]  486 	ldb 4,s	;  b
   6A48 EE 61         [ 6]  487 	ldu 1,s	;  u
   6A4A BD F3 7A      [ 8]  488 	jsr ___Print_Str_d; BIOS call
                            489 ;  0 "" 2
                            490 ;  645 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            491 	; #ENR#[481]    Print_Str_d(20, -110, "4 NO�");
                            492 ;  0 "" 2
                            493 ;--- end asm ---
   6A4D C6 14         [ 2]  494 	ldb	#20	; ,
   6A4F E7 64         [ 5]  495 	stb	4,s	; , a
   6A51 C6 92         [ 2]  496 	ldb	#-110	; ,
   6A53 E7 63         [ 5]  497 	stb	3,s	; , b
   6A55 8E 6A 06      [ 3]  498 	ldx	#LC2	; ,
   6A58 AF 61         [ 6]  499 	stx	1,s	; , u
                            500 ;----- asm -----
                            501 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A5A A6 64         [ 5]  502 	lda 4,s	;  a
   6A5C E6 63         [ 5]  503 	ldb 3,s	;  b
   6A5E EE 61         [ 6]  504 	ldu 1,s	;  u
   6A60 BD F3 7A      [ 8]  505 	jsr ___Print_Str_d; BIOS call
                            506 ;  0 "" 2
                            507 ;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            508 	; #ENR#[482]	if (Vec_Buttons & 4) {
                            509 ;  0 "" 2
                            510 ;--- end asm ---
   6A63 F6 C8 11      [ 5]  511 	ldb	_Vec_Buttons	; , Vec_Buttons
   6A66 C5 04         [ 2]  512 	bitb	#4	; ,
   6A68 27 18         [ 3]  513 	beq	L28	; 
                            514 ;----- asm -----
                            515 ;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            516 	; #ENR#[483]		for (uint8_t i = 0; i < 6; i++) {
                            517 ;  0 "" 2
                            518 ;--- end asm ---
   6A6A 6F E4         [ 6]  519 	clr	,s	;  i
   6A6C                     520 L29:
                            521 ;----- asm -----
                            522 ;  651 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            523 	; #ENR#[484]			writeEeprom(i, 0xff);
                            524 ;  0 "" 2
                            525 ;--- end asm ---
   6A6C C6 FF         [ 2]  526 	ldb	#-1	; ,
   6A6E E7 E2         [ 6]  527 	stb	,-s	; ,
   6A70 E6 61         [ 5]  528 	ldb	1,s	; , i
   6A72 BD 68 CF      [ 8]  529 	jsr	_writeEeprom	; 
   6A75 6C 61         [ 7]  530 	inc	1,s	;  i
   6A77 32 61         [ 5]  531 	leas	1,s	; ,,
   6A79 E6 E4         [ 4]  532 	ldb	,s	; , i
   6A7B C1 06         [ 2]  533 	cmpb	#6	;cmpqi:	; ,
   6A7D 26 ED         [ 3]  534 	bne	L29	; 
                            535 ;----- asm -----
                            536 ;  654 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            537 	; #ENR#[486]		gameState = MainMenu;
                            538 ;  0 "" 2
                            539 ;--- end asm ---
   6A7F 7F CA F6      [ 7]  540 	clr	_gameState	;  gameState
   6A82                     541 L28:
                            542 ;----- asm -----
                            543 ;  657 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            544 	; #ENR#[488]	if (Vec_Buttons & 8) {
                            545 ;  0 "" 2
                            546 ;--- end asm ---
   6A82 F6 C8 11      [ 5]  547 	ldb	_Vec_Buttons	; , Vec_Buttons
   6A85 C5 08         [ 2]  548 	bitb	#8	; ,
   6A87 27 03         [ 3]  549 	beq	L31	; 
                            550 ;----- asm -----
                            551 ;  659 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            552 	; #ENR#[489]		gameState = MainMenu;
                            553 ;  0 "" 2
                            554 ;--- end asm ---
   6A89 7F CA F6      [ 7]  555 	clr	_gameState	;  gameState
   6A8C                     556 L31:
   6A8C 32 65         [ 5]  557 	leas	5,s	; ,,
   6A8E 35 C0         [ 7]  558 	puls	u,pc	; 
                            559 	.globl _showInfo2
   6A90                     560 _showInfo2:
   6A90 34 20         [ 6]  561 	pshs	y	; 
   6A92 32 7D         [ 5]  562 	leas	-3,s	; ,,
                            563 ;----- asm -----
                            564 ;  677 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            565 	; #ENR#[506]	zergnd();
                            566 ;  0 "" 2
                            567 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A94 BD F3 54      [ 8]  568 	jsr ___Reset0Ref; BIOS call
                            569 ;  0 "" 2
                            570 ;  679 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            571 	; #ENR#[507]	intens(0x50);
                            572 ;  0 "" 2
                            573 ;--- end asm ---
   6A97 C6 50         [ 2]  574 	ldb	#80	; ,
   6A99 E7 E4         [ 4]  575 	stb	,s	; , a
                            576 ;----- asm -----
                            577 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A9B A6 E4         [ 4]  578 	lda ,s	;  a
   6A9D BD F2 AB      [ 8]  579 	jsr ___Intensity_a; BIOS call
                            580 ;  0 "" 2
                            581 ;  682 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            582 	; #ENR#[509]	zergnd();
                            583 ;  0 "" 2
                            584 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AA0 BD F3 54      [ 8]  585 	jsr ___Reset0Ref; BIOS call
                            586 ;  0 "" 2
                            587 ;  684 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            588 	; #ENR#[510]	positd(-50, 100);
                            589 ;  0 "" 2
                            590 ;--- end asm ---
   6AA3 C6 80         [ 2]  591 	ldb	#-128	; ,
   6AA5 D7 04         [ 4]  592 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6AA7 C6 64         [ 2]  593 	ldb	#100	; ,
   6AA9 E7 62         [ 5]  594 	stb	2,s	; , a
   6AAB C6 CE         [ 2]  595 	ldb	#-50	; ,
   6AAD E7 E4         [ 4]  596 	stb	,s	; , b
                            597 ;----- asm -----
                            598 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AAF A6 62         [ 5]  599 	lda 2,s	;  a
   6AB1 E6 E4         [ 4]  600 	ldb ,s	;  b
   6AB3 BD F3 12      [ 8]  601 	jsr ___Moveto_d; BIOS call
                            602 ;  0 "" 2
                            603 ;  686 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            604 	; #ENR#[511]	pack1x((void*)led8);
                            605 ;  0 "" 2
                            606 ;--- end asm ---
   6AB6 C6 80         [ 2]  607 	ldb	#-128	; ,
   6AB8 D7 04         [ 4]  608 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6ABA 10 8E 70 D7   [ 4]  609 	ldy	#_led8	;  tmp27,
   6ABE 10 AF E4      [ 6]  610 	sty	,s	;  tmp27, x
                            611 ;----- asm -----
                            612 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AC1 AE E4         [ 5]  613 	ldx ,s	;  x
   6AC3 BD F4 10      [ 8]  614 	jsr ___Draw_VLp; BIOS call
                            615 ;  0 "" 2
                            616 ;  689 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            617 	; #ENR#[513]	zergnd();
                            618 ;  0 "" 2
                            619 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AC6 BD F3 54      [ 8]  620 	jsr ___Reset0Ref; BIOS call
                            621 ;  0 "" 2
                            622 ;  691 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            623 	; #ENR#[514]	positd(-40, 110);
                            624 ;  0 "" 2
                            625 ;--- end asm ---
   6AC9 C6 80         [ 2]  626 	ldb	#-128	; ,
   6ACB D7 04         [ 4]  627 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6ACD C6 6E         [ 2]  628 	ldb	#110	; ,
   6ACF E7 E4         [ 4]  629 	stb	,s	; , a
   6AD1 C6 D8         [ 2]  630 	ldb	#-40	; ,
   6AD3 E7 62         [ 5]  631 	stb	2,s	; , b
                            632 ;----- asm -----
                            633 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AD5 A6 E4         [ 4]  634 	lda ,s	;  a
   6AD7 E6 62         [ 5]  635 	ldb 2,s	;  b
   6AD9 BD F3 12      [ 8]  636 	jsr ___Moveto_d; BIOS call
                            637 ;  0 "" 2
                            638 ;  693 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            639 	; #ENR#[515]	pack1x((void*)led8);
                            640 ;  0 "" 2
                            641 ;--- end asm ---
   6ADC C6 80         [ 2]  642 	ldb	#-128	; ,
   6ADE D7 04         [ 4]  643 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6AE0 10 AF E4      [ 6]  644 	sty	,s	;  tmp27, x
                            645 ;----- asm -----
                            646 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AE3 AE E4         [ 5]  647 	ldx ,s	;  x
   6AE5 BD F4 10      [ 8]  648 	jsr ___Draw_VLp; BIOS call
                            649 ;  0 "" 2
                            650 ;  696 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            651 	; #ENR#[517]	zergnd();
                            652 ;  0 "" 2
                            653 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AE8 BD F3 54      [ 8]  654 	jsr ___Reset0Ref; BIOS call
                            655 ;  0 "" 2
                            656 ;  698 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            657 	; #ENR#[518]	positd(-30, 120);
                            658 ;  0 "" 2
                            659 ;--- end asm ---
   6AEB C6 80         [ 2]  660 	ldb	#-128	; ,
   6AED D7 04         [ 4]  661 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6AEF C6 78         [ 2]  662 	ldb	#120	; ,
   6AF1 E7 62         [ 5]  663 	stb	2,s	; , a
   6AF3 C6 E2         [ 2]  664 	ldb	#-30	; ,
   6AF5 E7 E4         [ 4]  665 	stb	,s	; , b
                            666 ;----- asm -----
                            667 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AF7 A6 62         [ 5]  668 	lda 2,s	;  a
   6AF9 E6 E4         [ 4]  669 	ldb ,s	;  b
   6AFB BD F3 12      [ 8]  670 	jsr ___Moveto_d; BIOS call
                            671 ;  0 "" 2
                            672 ;  700 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            673 	; #ENR#[519]	pack1x((void*)led8);
                            674 ;  0 "" 2
                            675 ;--- end asm ---
   6AFE C6 80         [ 2]  676 	ldb	#-128	; ,
   6B00 D7 04         [ 4]  677 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B02 10 AF E4      [ 6]  678 	sty	,s	;  tmp27, x
                            679 ;----- asm -----
                            680 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B05 AE E4         [ 5]  681 	ldx ,s	;  x
   6B07 BD F4 10      [ 8]  682 	jsr ___Draw_VLp; BIOS call
                            683 ;  0 "" 2
                            684 ;  703 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            685 	; #ENR#[521]	zergnd();
                            686 ;  0 "" 2
                            687 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B0A BD F3 54      [ 8]  688 	jsr ___Reset0Ref; BIOS call
                            689 ;  0 "" 2
                            690 ;  705 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            691 	; #ENR#[522]	positd(0, 120);
                            692 ;  0 "" 2
                            693 ;--- end asm ---
   6B0D C6 80         [ 2]  694 	ldb	#-128	; ,
   6B0F D7 04         [ 4]  695 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B11 C6 78         [ 2]  696 	ldb	#120	; ,
   6B13 E7 E4         [ 4]  697 	stb	,s	; , a
   6B15 6F 62         [ 7]  698 	clr	2,s	;  b
                            699 ;----- asm -----
                            700 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B17 A6 E4         [ 4]  701 	lda ,s	;  a
   6B19 E6 62         [ 5]  702 	ldb 2,s	;  b
   6B1B BD F3 12      [ 8]  703 	jsr ___Moveto_d; BIOS call
                            704 ;  0 "" 2
                            705 ;  707 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            706 	; #ENR#[523]	pack1x((void*)led8);
                            707 ;  0 "" 2
                            708 ;--- end asm ---
   6B1E C6 80         [ 2]  709 	ldb	#-128	; ,
   6B20 D7 04         [ 4]  710 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B22 10 AF E4      [ 6]  711 	sty	,s	;  tmp27, x
                            712 ;----- asm -----
                            713 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B25 AE E4         [ 5]  714 	ldx ,s	;  x
   6B27 BD F4 10      [ 8]  715 	jsr ___Draw_VLp; BIOS call
                            716 ;  0 "" 2
                            717 ;  710 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            718 	; #ENR#[525]	zergnd();
                            719 ;  0 "" 2
                            720 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B2A BD F3 54      [ 8]  721 	jsr ___Reset0Ref; BIOS call
                            722 ;  0 "" 2
                            723 ;  712 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            724 	; #ENR#[526]	positd(10, 120);
                            725 ;  0 "" 2
                            726 ;--- end asm ---
   6B2D C6 80         [ 2]  727 	ldb	#-128	; ,
   6B2F D7 04         [ 4]  728 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B31 C6 78         [ 2]  729 	ldb	#120	; ,
   6B33 E7 62         [ 5]  730 	stb	2,s	; , a
   6B35 C6 0A         [ 2]  731 	ldb	#10	; ,
   6B37 E7 E4         [ 4]  732 	stb	,s	; , b
                            733 ;----- asm -----
                            734 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B39 A6 62         [ 5]  735 	lda 2,s	;  a
   6B3B E6 E4         [ 4]  736 	ldb ,s	;  b
   6B3D BD F3 12      [ 8]  737 	jsr ___Moveto_d; BIOS call
                            738 ;  0 "" 2
                            739 ;  714 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            740 	; #ENR#[527]	pack1x((void*)led8);
                            741 ;  0 "" 2
                            742 ;--- end asm ---
   6B40 C6 80         [ 2]  743 	ldb	#-128	; ,
   6B42 D7 04         [ 4]  744 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B44 10 AF E4      [ 6]  745 	sty	,s	;  tmp27, x
                            746 ;----- asm -----
                            747 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B47 AE E4         [ 5]  748 	ldx ,s	;  x
   6B49 BD F4 10      [ 8]  749 	jsr ___Draw_VLp; BIOS call
                            750 ;  0 "" 2
                            751 ;  717 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            752 	; #ENR#[529]	zergnd();
                            753 ;  0 "" 2
                            754 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B4C BD F3 54      [ 8]  755 	jsr ___Reset0Ref; BIOS call
                            756 ;  0 "" 2
                            757 ;  719 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            758 	; #ENR#[530]	positd(20, 120);
                            759 ;  0 "" 2
                            760 ;--- end asm ---
   6B4F C6 80         [ 2]  761 	ldb	#-128	; ,
   6B51 D7 04         [ 4]  762 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B53 C6 78         [ 2]  763 	ldb	#120	; ,
   6B55 E7 E4         [ 4]  764 	stb	,s	; , a
   6B57 C6 14         [ 2]  765 	ldb	#20	; ,
   6B59 E7 62         [ 5]  766 	stb	2,s	; , b
                            767 ;----- asm -----
                            768 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B5B A6 E4         [ 4]  769 	lda ,s	;  a
   6B5D E6 62         [ 5]  770 	ldb 2,s	;  b
   6B5F BD F3 12      [ 8]  771 	jsr ___Moveto_d; BIOS call
                            772 ;  0 "" 2
                            773 ;  721 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            774 	; #ENR#[531]	pack1x((void*)led8);
                            775 ;  0 "" 2
                            776 ;--- end asm ---
   6B62 C6 80         [ 2]  777 	ldb	#-128	; ,
   6B64 D7 04         [ 4]  778 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6B66 10 AF E4      [ 6]  779 	sty	,s	;  tmp27, x
                            780 ;----- asm -----
                            781 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B69 AE E4         [ 5]  782 	ldx ,s	;  x
   6B6B BD F4 10      [ 8]  783 	jsr ___Draw_VLp; BIOS call
                            784 ;  0 "" 2
                            785 ;--- end asm ---
   6B6E 32 63         [ 5]  786 	leas	3,s	; ,,
   6B70 35 A0         [ 7]  787 	puls	y,pc	; 
                            788 	.globl _showInfo
   6B72                     789 _showInfo:
   6B72 34 40         [ 6]  790 	pshs	u	; 
   6B74 32 7C         [ 5]  791 	leas	-4,s	; ,,
                            792 ;----- asm -----
                            793 ;  727 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            794 	; #ENR#[536]    Intensity_a(0x5f);
                            795 ;  0 "" 2
                            796 ;--- end asm ---
   6B76 C6 5F         [ 2]  797 	ldb	#95	; ,
   6B78 E7 63         [ 5]  798 	stb	3,s	; , a
                            799 ;----- asm -----
                            800 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B7A A6 63         [ 5]  801 	lda 3,s	;  a
   6B7C BD F2 AB      [ 8]  802 	jsr ___Intensity_a; BIOS call
                            803 ;  0 "" 2
                            804 ;  729 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            805 	; #ENR#[537]    Vec_Text_Width = 100;
                            806 ;  0 "" 2
                            807 ;--- end asm ---
   6B7F C6 64         [ 2]  808 	ldb	#100	; ,
   6B81 F7 C8 2B      [ 5]  809 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            810 ;----- asm -----
                            811 ;  731 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            812 	; #ENR#[538]    Print_Str_d(100, -70, infoText);
                            813 ;  0 "" 2
                            814 ;--- end asm ---
   6B84 E7 63         [ 5]  815 	stb	3,s	; , a
   6B86 C6 BA         [ 2]  816 	ldb	#-70	; ,
   6B88 E7 62         [ 5]  817 	stb	2,s	; , b
   6B8A 8E CA E7      [ 3]  818 	ldx	#_infoText	; ,
   6B8D AF E4         [ 5]  819 	stx	,s	; , u
                            820 ;----- asm -----
                            821 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B8F A6 63         [ 5]  822 	lda 3,s	;  a
   6B91 E6 62         [ 5]  823 	ldb 2,s	;  b
   6B93 EE E4         [ 5]  824 	ldu ,s	;  u
   6B95 BD F3 7A      [ 8]  825 	jsr ___Print_Str_d; BIOS call
                            826 ;  0 "" 2
                            827 ;--- end asm ---
   6B98 32 64         [ 5]  828 	leas	4,s	; ,,
   6B9A 35 C0         [ 7]  829 	puls	u,pc	; 
                            830 	.globl _blockMovingToStart
   6B9C                     831 _blockMovingToStart:
                            832 ;----- asm -----
                            833 ;  358 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            834 	; #ENR#[304]	drawField();
                            835 ;  0 "" 2
                            836 ;--- end asm ---
   6B9C BD 69 9F      [ 8]  837 	jsr	_drawField	; 
                            838 ;----- asm -----
                            839 ;  360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            840 	; #ENR#[305]	drawBlock(blockYOfs);
                            841 ;  0 "" 2
                            842 ;--- end asm ---
   6B9F F6 C8 89      [ 5]  843 	ldb	_blockYOfs	; , blockYOfs
   6BA2 BD 24 B4      [ 8]  844 	jsr	_drawBlock	; 
                            845 ;----- asm -----
                            846 ;  362 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            847 	; #ENR#[306]	blockYOfs++;
                            848 ;  0 "" 2
                            849 ;--- end asm ---
   6BA5 F6 C8 89      [ 5]  850 	ldb	_blockYOfs	;  blockYOfs.20, blockYOfs
   6BA8 5C            [ 2]  851 	incb	;  blockYOfs.20
   6BA9 F7 C8 89      [ 5]  852 	stb	_blockYOfs	;  blockYOfs.20, blockYOfs
                            853 ;----- asm -----
                            854 ;  364 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            855 	; #ENR#[307]	if (blockYOfs == 0) {
                            856 ;  0 "" 2
                            857 ;--- end asm ---
   6BAC 5D            [ 2]  858 	tstb	;  blockYOfs.20
   6BAD 26 05         [ 3]  859 	bne	L39	; 
                            860 ;----- asm -----
                            861 ;  366 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            862 	; #ENR#[308]		gameState = BlockWaiting;
                            863 ;  0 "" 2
                            864 ;--- end asm ---
   6BAF C6 03         [ 2]  865 	ldb	#3	; ,
   6BB1 F7 CA F6      [ 5]  866 	stb	_gameState	; , gameState
   6BB4                     867 L39:
   6BB4 39            [ 5]  868 	rts
                            869 	.globl _startLevel
   6BB5                     870 _startLevel:
   6BB5 32 7E         [ 5]  871 	leas	-2,s	; ,,
                            872 ;----- asm -----
                            873 ;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            874 	; #ENR#[237]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                            875 ;  0 "" 2
                            876 ;--- end asm ---
   6BB7 F6 C8 83      [ 5]  877 	ldb	_levelNumber	;  tmp30, levelNumber
   6BBA 58            [ 2]  878 	aslb	;  tmp30
   6BBB BD 68 E7      [ 8]  879 	jsr	_readEeprom	; 
   6BBE 4F            [ 2]  880 	clra		;zero_extendqihi: R:b -> R:d	;  D.2301, D.2301
   6BBF FD CA F3      [ 6]  881 	std	_levelHighscore	;  D.2301, levelHighscore
                            882 ;----- asm -----
                            883 ;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            884 	; #ENR#[238]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                            885 ;  0 "" 2
                            886 ;--- end asm ---
   6BC2 F6 C8 83      [ 5]  887 	ldb	_levelNumber	;  tmp32, levelNumber
   6BC5 58            [ 2]  888 	aslb	;  tmp32
   6BC6 5C            [ 2]  889 	incb	;  tmp33
   6BC7 BD 68 E7      [ 8]  890 	jsr	_readEeprom	; 
   6BCA 1F 98         [ 6]  891 	tfr	b,a	; ,
   6BCC 5F            [ 2]  892 	clrb	; 
   6BCD BA CA F3      [ 5]  893 	ora	_levelHighscore	; , levelHighscore
   6BD0 FA CA F4      [ 5]  894 	orb	_levelHighscore+1	; , levelHighscore
   6BD3 FD CA F3      [ 6]  895 	std	_levelHighscore	;  levelHighscore.14, levelHighscore
                            896 ;----- asm -----
                            897 ;  280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            898 	; #ENR#[239]	if (levelHighscore == 0) levelHighscore = 999;
                            899 ;  0 "" 2
                            900 ;--- end asm ---
   6BD6 10 83 00 00   [ 5]  901 	cmpd	#0	;  levelHighscore.14
   6BDA 26 06         [ 3]  902 	bne	L41	; 
   6BDC 8E 03 E7      [ 3]  903 	ldx	#999	; ,
   6BDF BF CA F3      [ 6]  904 	stx	_levelHighscore	; , levelHighscore
   6BE2                     905 L41:
                            906 ;----- asm -----
                            907 ;  282 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            908 	; #ENR#[240]    level = levels[levelNumber];
                            909 ;  0 "" 2
                            910 ;--- end asm ---
   6BE2 F6 C8 83      [ 5]  911 	ldb	_levelNumber	; , levelNumber
   6BE5 4F            [ 2]  912 	clra		;zero_extendqihi: R:b -> R:d	; ,
   6BE6 ED E4         [ 5]  913 	std	,s	; ,
   6BE8 58            [ 2]  914 	aslb	; 
   6BE9 49            [ 2]  915 	rola	; 
   6BEA 1F 01         [ 6]  916 	tfr	d,x	; , tmp39
   6BEC AE 89 89 D6   [ 9]  917 	ldx	_levels,x	; , levels
   6BF0 BF C8 F2      [ 6]  918 	stx	_level	; , level
                            919 ;----- asm -----
                            920 ;  284 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            921 	; #ENR#[241]	initSwatches();
                            922 ;  0 "" 2
                            923 ;--- end asm ---
   6BF3 BD 58 60      [ 8]  924 	jsr	_initSwatches	; 
                            925 ;----- asm -----
                            926 ;  286 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            927 	; #ENR#[242]	initLevel();
                            928 ;  0 "" 2
                            929 ;--- end asm ---
   6BF6 BD 5C 1D      [ 8]  930 	jsr	_initLevel	; 
                            931 ;----- asm -----
                            932 ;  288 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            933 	; #ENR#[243]	blockX = level->start.x;
                            934 ;  0 "" 2
                            935 ;--- end asm ---
   6BF9 BE C8 F2      [ 6]  936 	ldx	_level	;  level, level
   6BFC E6 02         [ 5]  937 	ldb	2,x	; , <variable>.start.x
   6BFE F7 C8 8D      [ 5]  938 	stb	_blockX	; , blockX
                            939 ;----- asm -----
                            940 ;  290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            941 	; #ENR#[244]	blockY = level->start.y;
                            942 ;  0 "" 2
                            943 ;--- end asm ---
   6C01 E6 03         [ 5]  944 	ldb	3,x	; , <variable>.start.y
   6C03 F7 C8 8E      [ 5]  945 	stb	_blockY	; , blockY
                            946 ;----- asm -----
                            947 ;  292 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            948 	; #ENR#[245]	blockStartLevel();
                            949 ;  0 "" 2
                            950 ;--- end asm ---
   6C06 BD 23 DB      [ 8]  951 	jsr	_blockStartLevel	; 
                            952 ;----- asm -----
                            953 ;  294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            954 	; #ENR#[246]	blockYOfs = -30;
                            955 ;  0 "" 2
                            956 ;--- end asm ---
   6C09 C6 E2         [ 2]  957 	ldb	#-30	; ,
   6C0B F7 C8 89      [ 5]  958 	stb	_blockYOfs	; , blockYOfs
                            959 ;----- asm -----
                            960 ;  296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            961 	; #ENR#[247]	gameState = BlockMovingToStart;
                            962 ;  0 "" 2
                            963 ;--- end asm ---
   6C0E C6 02         [ 2]  964 	ldb	#2	; ,
   6C10 F7 CA F6      [ 5]  965 	stb	_gameState	; , gameState
                            966 ;----- asm -----
                            967 ;  298 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            968 	; #ENR#[248]	changeMusic(startMusic);
                            969 ;  0 "" 2
                            970 ;--- end asm ---
   6C13 8E 70 75      [ 3]  971 	ldx	#_startMusic	; ,
   6C16 BD 69 96      [ 8]  972 	jsr	_changeMusic	; 
                            973 ;----- asm -----
                            974 ;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            975 	; #ENR#[250]	moveCount = 0;
                            976 ;  0 "" 2
                            977 ;--- end asm ---
   6C19 CC 00 00      [ 3]  978 	ldd	#0	; ,
   6C1C FD CA F1      [ 6]  979 	std	_moveCount	; , moveCount
                            980 ;----- asm -----
                            981 ;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            982 	; #ENR#[251]	updateInfoText();
                            983 ;  0 "" 2
                            984 ;--- end asm ---
   6C1F BD 69 79      [ 8]  985 	jsr	_updateInfoText	; 
   6C22 32 62         [ 5]  986 	leas	2,s	; ,,
   6C24 39            [ 5]  987 	rts
   6C25                     988 LC3:
   6C25 4D                  989 	.byte	0x4D
   6C26 41                  990 	.byte	0x41
   6C27 49                  991 	.byte	0x49
   6C28 4E                  992 	.byte	0x4E
   6C29 20                  993 	.byte	0x20
   6C2A 4D                  994 	.byte	0x4D
   6C2B 45                  995 	.byte	0x45
   6C2C 4E                  996 	.byte	0x4E
   6C2D 55                  997 	.byte	0x55
   6C2E 80                  998 	.byte	0x80
   6C2F 00                  999 	.byte	0x00
   6C30                    1000 LC4:
   6C30 31                 1001 	.byte	0x31
   6C31 20                 1002 	.byte	0x20
   6C32 53                 1003 	.byte	0x53
   6C33 54                 1004 	.byte	0x54
   6C34 41                 1005 	.byte	0x41
   6C35 52                 1006 	.byte	0x52
   6C36 54                 1007 	.byte	0x54
   6C37 20                 1008 	.byte	0x20
   6C38 47                 1009 	.byte	0x47
   6C39 41                 1010 	.byte	0x41
   6C3A 4D                 1011 	.byte	0x4D
   6C3B 45                 1012 	.byte	0x45
   6C3C 80                 1013 	.byte	0x80
   6C3D 00                 1014 	.byte	0x00
   6C3E                    1015 LC5:
   6C3E 32                 1016 	.byte	0x32
   6C3F 20                 1017 	.byte	0x20
   6C40 43                 1018 	.byte	0x43
   6C41 4C                 1019 	.byte	0x4C
   6C42 45                 1020 	.byte	0x45
   6C43 41                 1021 	.byte	0x41
   6C44 52                 1022 	.byte	0x52
   6C45 20                 1023 	.byte	0x20
   6C46 48                 1024 	.byte	0x48
   6C47 49                 1025 	.byte	0x49
   6C48 47                 1026 	.byte	0x47
   6C49 48                 1027 	.byte	0x48
   6C4A 53                 1028 	.byte	0x53
   6C4B 43                 1029 	.byte	0x43
   6C4C 4F                 1030 	.byte	0x4F
   6C4D 52                 1031 	.byte	0x52
   6C4E 45                 1032 	.byte	0x45
   6C4F 80                 1033 	.byte	0x80
   6C50 00                 1034 	.byte	0x00
   6C51                    1035 LC6:
   6C51 33                 1036 	.byte	0x33
   6C52 20                 1037 	.byte	0x20
   6C53 42                 1038 	.byte	0x42
   6C54 41                 1039 	.byte	0x41
   6C55 4E                 1040 	.byte	0x4E
   6C56 4B                 1041 	.byte	0x4B
   6C57 49                 1042 	.byte	0x49
   6C58 4E                 1043 	.byte	0x4E
   6C59 47                 1044 	.byte	0x47
   6C5A 20                 1045 	.byte	0x20
   6C5B 54                 1046 	.byte	0x54
   6C5C 45                 1047 	.byte	0x45
   6C5D 53                 1048 	.byte	0x53
   6C5E 54                 1049 	.byte	0x54
   6C5F 80                 1050 	.byte	0x80
   6C60 00                 1051 	.byte	0x00
                           1052 	.globl _mainMenu
   6C61                    1053 _mainMenu:
   6C61 34 40         [ 6] 1054 	pshs	u	; 
   6C63 32 7C         [ 5] 1055 	leas	-4,s	; ,,
                           1056 ;----- asm -----
                           1057 ;  601 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1058 	; #ENR#[455]	Read_Btns();
                           1059 ;  0 "" 2
                           1060 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C65 BD F1 BA      [ 8] 1061 	jsr ___Read_Btns; BIOS call
                           1062 ;  0 "" 2
                           1063 ;  603 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1064 	; #ENR#[456]    Intensity_a(0x5f);
                           1065 ;  0 "" 2
                           1066 ;--- end asm ---
   6C68 C6 5F         [ 2] 1067 	ldb	#95	; ,
   6C6A E7 62         [ 5] 1068 	stb	2,s	; , a
                           1069 ;----- asm -----
                           1070 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C6C A6 62         [ 5] 1071 	lda 2,s	;  a
   6C6E BD F2 AB      [ 8] 1072 	jsr ___Intensity_a; BIOS call
                           1073 ;  0 "" 2
                           1074 ;  605 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1075 	; #ENR#[457]    Vec_Text_Width = 90;
                           1076 ;  0 "" 2
                           1077 ;--- end asm ---
   6C71 C6 5A         [ 2] 1078 	ldb	#90	; ,
   6C73 F7 C8 2B      [ 5] 1079 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1080 ;----- asm -----
                           1081 ;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1082 	; #ENR#[458]    Print_Str_d(100, -70, "MAIN MENU�");
                           1083 ;  0 "" 2
                           1084 ;--- end asm ---
   6C76 CB 0A         [ 2] 1085 	addb	#10	; ,
   6C78 E7 62         [ 5] 1086 	stb	2,s	; , a
   6C7A C6 BA         [ 2] 1087 	ldb	#-70	; ,
   6C7C E7 63         [ 5] 1088 	stb	3,s	; , b
   6C7E 8E 6C 25      [ 3] 1089 	ldx	#LC3	; ,
   6C81 AF E4         [ 5] 1090 	stx	,s	; , u
                           1091 ;----- asm -----
                           1092 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C83 A6 62         [ 5] 1093 	lda 2,s	;  a
   6C85 E6 63         [ 5] 1094 	ldb 3,s	;  b
   6C87 EE E4         [ 5] 1095 	ldu ,s	;  u
   6C89 BD F3 7A      [ 8] 1096 	jsr ___Print_Str_d; BIOS call
                           1097 ;  0 "" 2
                           1098 ;  609 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1099 	; #ENR#[459]    Print_Str_d(50, -110, "1 START GAME�");
                           1100 ;  0 "" 2
                           1101 ;--- end asm ---
   6C8C C6 32         [ 2] 1102 	ldb	#50	; ,
   6C8E E7 63         [ 5] 1103 	stb	3,s	; , a
   6C90 C6 92         [ 2] 1104 	ldb	#-110	; ,
   6C92 E7 62         [ 5] 1105 	stb	2,s	; , b
   6C94 8E 6C 30      [ 3] 1106 	ldx	#LC4	; ,
   6C97 AF E4         [ 5] 1107 	stx	,s	; , u
                           1108 ;----- asm -----
                           1109 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C99 A6 63         [ 5] 1110 	lda 3,s	;  a
   6C9B E6 62         [ 5] 1111 	ldb 2,s	;  b
   6C9D EE E4         [ 5] 1112 	ldu ,s	;  u
   6C9F BD F3 7A      [ 8] 1113 	jsr ___Print_Str_d; BIOS call
                           1114 ;  0 "" 2
                           1115 ;  611 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1116 	; #ENR#[460]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
                           1117 ;  0 "" 2
                           1118 ;--- end asm ---
   6CA2 C6 14         [ 2] 1119 	ldb	#20	; ,
   6CA4 E7 62         [ 5] 1120 	stb	2,s	; , a
   6CA6 C6 92         [ 2] 1121 	ldb	#-110	; ,
   6CA8 E7 63         [ 5] 1122 	stb	3,s	; , b
   6CAA 8E 6C 3E      [ 3] 1123 	ldx	#LC5	; ,
   6CAD AF E4         [ 5] 1124 	stx	,s	; , u
                           1125 ;----- asm -----
                           1126 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6CAF A6 62         [ 5] 1127 	lda 2,s	;  a
   6CB1 E6 63         [ 5] 1128 	ldb 3,s	;  b
   6CB3 EE E4         [ 5] 1129 	ldu ,s	;  u
   6CB5 BD F3 7A      [ 8] 1130 	jsr ___Print_Str_d; BIOS call
                           1131 ;  0 "" 2
                           1132 ;  613 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1133 	; #ENR#[461]    Print_Str_d(-10, -110, "3 BANKING TEST�");
                           1134 ;  0 "" 2
                           1135 ;--- end asm ---
   6CB8 C6 F6         [ 2] 1136 	ldb	#-10	; ,
   6CBA E7 63         [ 5] 1137 	stb	3,s	; , a
   6CBC C6 92         [ 2] 1138 	ldb	#-110	; ,
   6CBE E7 62         [ 5] 1139 	stb	2,s	; , b
   6CC0 8E 6C 51      [ 3] 1140 	ldx	#LC6	; ,
   6CC3 AF E4         [ 5] 1141 	stx	,s	; , u
                           1142 ;----- asm -----
                           1143 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6CC5 A6 63         [ 5] 1144 	lda 3,s	;  a
   6CC7 E6 62         [ 5] 1145 	ldb 2,s	;  b
   6CC9 EE E4         [ 5] 1146 	ldu ,s	;  u
   6CCB BD F3 7A      [ 8] 1147 	jsr ___Print_Str_d; BIOS call
                           1148 ;  0 "" 2
                           1149 ;  615 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1150 	; #ENR#[462]	if (Vec_Buttons & 1) {
                           1151 ;  0 "" 2
                           1152 ;--- end asm ---
   6CCE F6 C8 11      [ 5] 1153 	ldb	_Vec_Buttons	; , Vec_Buttons
   6CD1 C5 01         [ 2] 1154 	bitb	#1	; ,
   6CD3 27 03         [ 3] 1155 	beq	L44	; 
                           1156 ;----- asm -----
                           1157 ;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1158 	; #ENR#[463]		startLevel();
                           1159 ;  0 "" 2
                           1160 ;--- end asm ---
   6CD5 BD 6B B5      [ 8] 1161 	jsr	_startLevel	; 
   6CD8                    1162 L44:
                           1163 ;----- asm -----
                           1164 ;  620 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1165 	; #ENR#[465]	if (Vec_Buttons & 2) {
                           1166 ;  0 "" 2
                           1167 ;--- end asm ---
   6CD8 F6 C8 11      [ 5] 1168 	ldb	_Vec_Buttons	; , Vec_Buttons
   6CDB C5 02         [ 2] 1169 	bitb	#2	; ,
   6CDD 27 05         [ 3] 1170 	beq	L45	; 
                           1171 ;----- asm -----
                           1172 ;  622 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1173 	; #ENR#[466]		gameState = ClearMenu;
                           1174 ;  0 "" 2
                           1175 ;--- end asm ---
   6CDF C6 01         [ 2] 1176 	ldb	#1	; ,
   6CE1 F7 CA F6      [ 5] 1177 	stb	_gameState	; , gameState
   6CE4                    1178 L45:
                           1179 ;----- asm -----
                           1180 ;  625 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1181 	; #ENR#[468]	if (Vec_Buttons & 4) {
                           1182 ;  0 "" 2
                           1183 ;--- end asm ---
   6CE4 F6 C8 11      [ 5] 1184 	ldb	_Vec_Buttons	; , Vec_Buttons
   6CE7 C5 04         [ 2] 1185 	bitb	#4	; ,
   6CE9 27 0E         [ 3] 1186 	beq	L47	; 
                           1187 ;----- asm -----
                           1188 ;  627 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1189 	; #ENR#[469]		sendCommand(CMD_SET_BANK, 1);
                           1190 ;  0 "" 2
                           1191 ;--- end asm ---
   6CEB C6 01         [ 2] 1192 	ldb	#1	; ,
   6CED E7 E2         [ 6] 1193 	stb	,-s	; ,
   6CEF C6 05         [ 2] 1194 	ldb	#5	; ,
   6CF1 BD 68 CD      [ 8] 1195 	jsr	_sendCommand	; 
                           1196 ;----- asm -----
                           1197 ;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   6CF4 7E F0 00      [ 4] 1198 		jmp 0xf000
                           1199 ;  0 "" 2
                           1200 ;--- end asm ---
   6CF7 32 61         [ 5] 1201 	leas	1,s	; ,,
   6CF9                    1202 L47:
   6CF9 32 64         [ 5] 1203 	leas	4,s	; ,,
   6CFB 35 C0         [ 7] 1204 	puls	u,pc	; 
                           1205 	.globl _blockMovingAtEnd
   6CFD                    1206 _blockMovingAtEnd:
   6CFD 32 7E         [ 5] 1207 	leas	-2,s	; ,,
                           1208 ;----- asm -----
                           1209 ;  575 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1210 	; #ENR#[439]	drawField();
                           1211 ;  0 "" 2
                           1212 ;--- end asm ---
   6CFF BD 69 9F      [ 8] 1213 	jsr	_drawField	; 
                           1214 ;----- asm -----
                           1215 ;  577 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1216 	; #ENR#[440]	drawBlock(blockYOfs);
                           1217 ;  0 "" 2
                           1218 ;--- end asm ---
   6D02 F6 C8 89      [ 5] 1219 	ldb	_blockYOfs	; , blockYOfs
   6D05 BD 24 B4      [ 8] 1220 	jsr	_drawBlock	; 
                           1221 ;----- asm -----
                           1222 ;  579 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1223 	; #ENR#[441]	blockYOfs++;
                           1224 ;  0 "" 2
                           1225 ;--- end asm ---
   6D08 F6 C8 89      [ 5] 1226 	ldb	_blockYOfs	;  blockYOfs.45, blockYOfs
   6D0B 5C            [ 2] 1227 	incb	;  blockYOfs.45
   6D0C F7 C8 89      [ 5] 1228 	stb	_blockYOfs	;  blockYOfs.45, blockYOfs
                           1229 ;----- asm -----
                           1230 ;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1231 	; #ENR#[442]	if (blockYOfs == 30) {
                           1232 ;  0 "" 2
                           1233 ;--- end asm ---
   6D0F C1 1E         [ 2] 1234 	cmpb	#30	;cmpqi:	;  blockYOfs.45,
   6D11 10 26 00 3F   [ 6] 1235 	lbne	L52	; 
                           1236 ;----- asm -----
                           1237 ;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1238 	; #ENR#[443]		if (moveCount < levelHighscore) {
                           1239 ;  0 "" 2
                           1240 ;--- end asm ---
   6D15 BE CA F1      [ 6] 1241 	ldx	_moveCount	;  moveCount.46, moveCount
   6D18 BC CA F3      [ 7] 1242 	cmpx	_levelHighscore	;cmphi:	;  moveCount.46, levelHighscore
   6D1B 24 25         [ 3] 1243 	bhs	L50	; 
                           1244 ;----- asm -----
                           1245 ;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1246 	; #ENR#[444]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           1247 ;  0 "" 2
                           1248 ;--- end asm ---
   6D1D F6 C8 83      [ 5] 1249 	ldb	_levelNumber	; , levelNumber
   6D20 58            [ 2] 1250 	aslb	; 
   6D21 E7 E4         [ 4] 1251 	stb	,s	; ,
   6D23 1F 10         [ 6] 1252 	tfr	x,d	;  moveCount.46,
   6D25 34 04         [ 6] 1253 	pshs	b	; 
   6D27 E6 61         [ 5] 1254 	ldb	1,s	; ,
   6D29 BD 68 CF      [ 8] 1255 	jsr	_writeEeprom	; 
                           1256 ;----- asm -----
                           1257 ;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1258 	; #ENR#[445]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           1259 ;  0 "" 2
                           1260 ;--- end asm ---
   6D2C F6 C8 83      [ 5] 1261 	ldb	_levelNumber	;  tmp31, levelNumber
   6D2F 58            [ 2] 1262 	aslb	;  tmp31
   6D30 5C            [ 2] 1263 	incb	;  tmp31
   6D31 E7 62         [ 5] 1264 	stb	2,s	;  tmp31,
   6D33 FC CA F1      [ 6] 1265 	ldd	_moveCount	;  tmp33, moveCount
   6D36 1F 89         [ 6] 1266 	tfr	a,b	; ,
   6D38 4F            [ 2] 1267 	clra		;zero_extendqihi: R:b -> R:d	; ,
   6D39 34 04         [ 6] 1268 	pshs	b	;  tmp33
   6D3B E6 63         [ 5] 1269 	ldb	3,s	; ,
   6D3D BD 68 CF      [ 8] 1270 	jsr	_writeEeprom	; 
   6D40 32 62         [ 5] 1271 	leas	2,s	; ,,
   6D42                    1272 L50:
                           1273 ;----- asm -----
                           1274 ;  590 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1275 	; #ENR#[447]		levelNumber++;
                           1276 ;  0 "" 2
                           1277 ;--- end asm ---
   6D42 F6 C8 83      [ 5] 1278 	ldb	_levelNumber	;  levelNumber.49, levelNumber
   6D45 5C            [ 2] 1279 	incb	;  levelNumber.49
   6D46 F7 C8 83      [ 5] 1280 	stb	_levelNumber	;  levelNumber.49, levelNumber
                           1281 ;----- asm -----
                           1282 ;  592 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1283 	; #ENR#[448]		if (levelNumber >= levelCount) levelNumber = 0;
                           1284 ;  0 "" 2
                           1285 ;--- end asm ---
   6D49 F1 71 5B      [ 5] 1286 	cmpb	_levelCount	;cmpqi:	;  levelNumber.49, levelCount
   6D4C 25 03         [ 3] 1287 	blo	L51	; 
   6D4E 7F C8 83      [ 7] 1288 	clr	_levelNumber	;  levelNumber
   6D51                    1289 L51:
                           1290 ;----- asm -----
                           1291 ;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1292 	; #ENR#[449]		startLevel();
                           1293 ;  0 "" 2
                           1294 ;--- end asm ---
   6D51 BD 6B B5      [ 8] 1295 	jsr	_startLevel	; 
   6D54                    1296 L52:
   6D54 32 62         [ 5] 1297 	leas	2,s	; ,,
   6D56 39            [ 5] 1298 	rts
                           1299 	.globl _blockFalling
   6D57                    1300 _blockFalling:
   6D57 32 7F         [ 5] 1301 	leas	-1,s	; ,,
                           1302 ;----- asm -----
                           1303 ;  555 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1304 	; #ENR#[426]	drawField();
                           1305 ;  0 "" 2
                           1306 ;--- end asm ---
   6D59 BD 69 9F      [ 8] 1307 	jsr	_drawField	; 
                           1308 ;----- asm -----
                           1309 ;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1310 	; #ENR#[427]	blockYOfs++;
                           1311 ;  0 "" 2
                           1312 ;--- end asm ---
   6D5C F6 C8 89      [ 5] 1313 	ldb	_blockYOfs	; , blockYOfs
   6D5F 5C            [ 2] 1314 	incb	; 
   6D60 E7 E4         [ 4] 1315 	stb	,s	; , blockYOfs.43
   6D62 F7 C8 89      [ 5] 1316 	stb	_blockYOfs	; , blockYOfs
                           1317 ;----- asm -----
                           1318 ;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1319 	; #ENR#[428]	if (blockYOfs < 12) {
                           1320 ;  0 "" 2
                           1321 ;--- end asm ---
   6D65 C1 0B         [ 2] 1322 	cmpb	#11	;cmpqi:	; ,
   6D67 2E 0A         [ 3] 1323 	bgt	L54	; 
                           1324 ;----- asm -----
                           1325 ;  561 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1326 	; #ENR#[429]		drawBlock(-blockYOfs*blockYOfs);
                           1327 ;  0 "" 2
                           1328 ;--- end asm ---
   6D69 50            [ 2] 1329 	negb	;  tmp28
   6D6A A6 E4         [ 4] 1330 	lda	,s	;mulqihi3	;  blockYOfs.43
   6D6C 3D            [11] 1331 	mul
                           1332 		;movlsbqihi: D->B
   6D6D BD 24 B4      [ 8] 1333 	jsr	_drawBlock	; 
                           1334 ;----- asm -----
                           1335 ;  563 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1336 	; #ENR#[430]		doBlockAnimation();
                           1337 ;  0 "" 2
                           1338 ;--- end asm ---
   6D70 BD 23 B2      [ 8] 1339 	jsr	_doBlockAnimation	; 
   6D73                    1340 L54:
                           1341 ;----- asm -----
                           1342 ;  566 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1343 	; #ENR#[432]	if (blockYOfs == 50) {
                           1344 ;  0 "" 2
                           1345 ;--- end asm ---
   6D73 F6 C8 89      [ 5] 1346 	ldb	_blockYOfs	; , blockYOfs
   6D76 C1 32         [ 2] 1347 	cmpb	#50	;cmpqi:	; ,
   6D78 26 03         [ 3] 1348 	bne	L56	; 
                           1349 ;----- asm -----
                           1350 ;  568 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1351 	; #ENR#[433]		startLevel();
                           1352 ;  0 "" 2
                           1353 ;--- end asm ---
   6D7A BD 6B B5      [ 8] 1354 	jsr	_startLevel	; 
   6D7D                    1355 L56:
   6D7D 32 61         [ 5] 1356 	leas	1,s	; ,,
   6D7F 39            [ 5] 1357 	rts
                           1358 	.globl _moveBlock
   6D80                    1359 _moveBlock:
                           1360 ;----- asm -----
                           1361 ;  253 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1362 	; #ENR#[221]	moveBlockImpl(move);
                           1363 ;  0 "" 2
                           1364 ;--- end asm ---
   6D80 BD 21 55      [ 8] 1365 	jsr	_moveBlockImpl	; 
                           1366 ;----- asm -----
                           1367 ;  255 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1368 	; #ENR#[222]	if (moveCount < 999) moveCount++;
                           1369 ;  0 "" 2
                           1370 ;--- end asm ---
   6D83 BE CA F1      [ 6] 1371 	ldx	_moveCount	;  moveCount.7, moveCount
   6D86 8C 03 E6      [ 4] 1372 	cmpx	#998	;cmphi:	;  moveCount.7,
   6D89 22 05         [ 3] 1373 	bhi	L58	; 
   6D8B 30 01         [ 5] 1374 	leax	1,x	; ,, moveCount.7
   6D8D BF CA F1      [ 6] 1375 	stx	_moveCount	; , moveCount
   6D90                    1376 L58:
                           1377 ;----- asm -----
                           1378 ;  257 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1379 	; #ENR#[223]	updateInfoText();
                           1380 ;  0 "" 2
                           1381 ;--- end asm ---
   6D90 BD 69 79      [ 8] 1382 	jsr	_updateInfoText	; 
   6D93 39            [ 5] 1383 	rts
                           1384 	.globl _blockWaiting
   6D94                    1385 _blockWaiting:
                           1386 ;----- asm -----
                           1387 ;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1388 	; #ENR#[314]	drawField();
                           1389 ;  0 "" 2
                           1390 ;--- end asm ---
   6D94 BD 69 9F      [ 8] 1391 	jsr	_drawField	; 
                           1392 ;----- asm -----
                           1393 ;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1394 	; #ENR#[315]	drawBlock(0);
                           1395 ;  0 "" 2
                           1396 ;--- end asm ---
   6D97 5F            [ 2] 1397 	clrb	; 
   6D98 BD 24 B4      [ 8] 1398 	jsr	_drawBlock	; 
                           1399 ;----- asm -----
                           1400 ;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1401 	; #ENR#[316]	joybit();
                           1402 ;  0 "" 2
                           1403 ;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6D9B BD F1 F8      [ 8] 1404 	jsr ___Joy_Digital; BIOS call
                           1405 ;  0 "" 2
                           1406 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1407 	; #ENR#[317]	if (pot0 < -10) {
                           1408 ;  0 "" 2
                           1409 ;--- end asm ---
   6D9E F6 C8 1B      [ 5] 1410 	ldb	-14309	;  D.2322,
   6DA1 C1 F6         [ 2] 1411 	cmpb	#-10	;cmpqi:	;  D.2322,
   6DA3 2C 0C         [ 3] 1412 	bge	L61	; 
                           1413 ;----- asm -----
                           1414 ;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1415 	; #ENR#[318]		moveBlock(Left);
                           1416 ;  0 "" 2
                           1417 ;--- end asm ---
   6DA5 5F            [ 2] 1418 	clrb	; 
   6DA6 BD 6D 80      [ 8] 1419 	jsr	_moveBlock	; 
                           1420 ;----- asm -----
                           1421 ;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1422 	; #ENR#[319]		gameState = BlockMoving;
                           1423 ;  0 "" 2
                           1424 ;--- end asm ---
   6DA9 C6 04         [ 2] 1425 	ldb	#4	; ,
   6DAB F7 CA F6      [ 5] 1426 	stb	_gameState	; , gameState
   6DAE 7E 6D E8      [ 4] 1427 	jmp	L62	; 
   6DB1                    1428 L61:
   6DB1 F6 C8 1B      [ 5] 1429 	ldb	-14309	;  D.2323,
   6DB4 C1 0A         [ 2] 1430 	cmpb	#10	;cmpqi:	;  D.2323,
   6DB6 2F 0C         [ 3] 1431 	ble	L63	; 
                           1432 ;----- asm -----
                           1433 ;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1434 	; #ENR#[321]		moveBlock(Right);
                           1435 ;  0 "" 2
                           1436 ;--- end asm ---
   6DB8 C6 02         [ 2] 1437 	ldb	#2	; ,
   6DBA BD 6D 80      [ 8] 1438 	jsr	_moveBlock	; 
                           1439 ;----- asm -----
                           1440 ;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1441 	; #ENR#[322]		gameState = BlockMoving;
                           1442 ;  0 "" 2
                           1443 ;--- end asm ---
   6DBD C6 04         [ 2] 1444 	ldb	#4	; ,
   6DBF F7 CA F6      [ 5] 1445 	stb	_gameState	; , gameState
   6DC2 20 24         [ 3] 1446 	bra	L62	; 
   6DC4                    1447 L63:
   6DC4 F6 C8 1C      [ 5] 1448 	ldb	-14308	;  D.2325,
   6DC7 C1 F6         [ 2] 1449 	cmpb	#-10	;cmpqi:	;  D.2325,
   6DC9 2C 0C         [ 3] 1450 	bge	L64	; 
                           1451 ;----- asm -----
                           1452 ;  391 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1453 	; #ENR#[324]		moveBlock(Down);
                           1454 ;  0 "" 2
                           1455 ;--- end asm ---
   6DCB C6 03         [ 2] 1456 	ldb	#3	; ,
   6DCD BD 6D 80      [ 8] 1457 	jsr	_moveBlock	; 
                           1458 ;----- asm -----
                           1459 ;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1460 	; #ENR#[325]		gameState = BlockMoving;
                           1461 ;  0 "" 2
                           1462 ;--- end asm ---
   6DD0 C6 04         [ 2] 1463 	ldb	#4	; ,
   6DD2 F7 CA F6      [ 5] 1464 	stb	_gameState	; , gameState
   6DD5 20 11         [ 3] 1465 	bra	L62	; 
   6DD7                    1466 L64:
   6DD7 F6 C8 1C      [ 5] 1467 	ldb	-14308	;  D.2326,
   6DDA C1 0A         [ 2] 1468 	cmpb	#10	;cmpqi:	;  D.2326,
   6DDC 2F 0A         [ 3] 1469 	ble	L62	; 
                           1470 ;----- asm -----
                           1471 ;  396 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1472 	; #ENR#[327]		moveBlock(Up);
                           1473 ;  0 "" 2
                           1474 ;--- end asm ---
   6DDE C6 01         [ 2] 1475 	ldb	#1	; ,
   6DE0 BD 6D 80      [ 8] 1476 	jsr	_moveBlock	; 
                           1477 ;----- asm -----
                           1478 ;  398 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1479 	; #ENR#[328]		gameState = BlockMoving;
                           1480 ;  0 "" 2
                           1481 ;--- end asm ---
   6DE3 C6 04         [ 2] 1482 	ldb	#4	; ,
   6DE5 F7 CA F6      [ 5] 1483 	stb	_gameState	; , gameState
   6DE8                    1484 L62:
                           1485 ;----- asm -----
                           1486 ;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1487 	; #ENR#[330]	if (gameState == BlockMoving) {
                           1488 ;  0 "" 2
                           1489 ;--- end asm ---
   6DE8 F6 CA F6      [ 5] 1490 	ldb	_gameState	; , gameState
   6DEB C1 04         [ 2] 1491 	cmpb	#4	;cmpqi:	; ,
   6DED 26 06         [ 3] 1492 	bne	L65	; 
                           1493 ;----- asm -----
                           1494 ;  403 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1495 	; #ENR#[331]		changeMusic(movingMusic);
                           1496 ;  0 "" 2
                           1497 ;--- end asm ---
   6DEF 8E 70 CF      [ 3] 1498 	ldx	#_movingMusic	; ,
   6DF2 BD 69 96      [ 8] 1499 	jsr	_changeMusic	; 
   6DF5                    1500 L65:
                           1501 ;----- asm -----
                           1502 ;  408 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1503 	; #ENR#[335]    	Read_Btns();
                           1504 ;  0 "" 2
                           1505 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6DF5 BD F1 BA      [ 8] 1506 	jsr ___Read_Btns; BIOS call
                           1507 ;  0 "" 2
                           1508 ;  410 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1509 	; #ENR#[336]    	if (Vec_Buttons & 1) {
                           1510 ;  0 "" 2
                           1511 ;--- end asm ---
   6DF8 F6 C8 11      [ 5] 1512 	ldb	_Vec_Buttons	; , Vec_Buttons
   6DFB C5 01         [ 2] 1513 	bitb	#1	; ,
   6DFD 27 12         [ 3] 1514 	beq	L66	; 
                           1515 ;----- asm -----
                           1516 ;  412 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1517 	; #ENR#[337]		levelNumber++;
                           1518 ;  0 "" 2
                           1519 ;--- end asm ---
   6DFF F6 C8 83      [ 5] 1520 	ldb	_levelNumber	;  levelNumber.25, levelNumber
   6E02 5C            [ 2] 1521 	incb	;  levelNumber.25
   6E03 F7 C8 83      [ 5] 1522 	stb	_levelNumber	;  levelNumber.25, levelNumber
                           1523 ;----- asm -----
                           1524 ;  414 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1525 	; #ENR#[338]		if (levelNumber >= levelCount) levelNumber = 0;
                           1526 ;  0 "" 2
                           1527 ;--- end asm ---
   6E06 F1 71 5B      [ 5] 1528 	cmpb	_levelCount	;cmpqi:	;  levelNumber.25, levelCount
   6E09 25 03         [ 3] 1529 	blo	L67	; 
   6E0B 7F C8 83      [ 7] 1530 	clr	_levelNumber	;  levelNumber
   6E0E                    1531 L67:
                           1532 ;----- asm -----
                           1533 ;  416 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1534 	; #ENR#[339]    		startLevel();
                           1535 ;  0 "" 2
                           1536 ;--- end asm ---
   6E0E BD 6B B5      [ 8] 1537 	jsr	_startLevel	; 
   6E11                    1538 L66:
                           1539 ;----- asm -----
                           1540 ;  419 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1541 	; #ENR#[341]    	if (Vec_Buttons & 2) {
                           1542 ;  0 "" 2
                           1543 ;--- end asm ---
   6E11 F6 C8 11      [ 5] 1544 	ldb	_Vec_Buttons	; , Vec_Buttons
   6E14 C5 02         [ 2] 1545 	bitb	#2	; ,
   6E16 27 08         [ 3] 1546 	beq	L69	; 
                           1547 ;----- asm -----
                           1548 ;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1549 	; #ENR#[342]		if (splitMode) {
                           1550 ;  0 "" 2
                           1551 ;--- end asm ---
   6E18 7D C8 8C      [ 7] 1552 	tst	_splitMode	;  splitMode
   6E1B 27 03         [ 3] 1553 	beq	L69	; 
                           1554 ;----- asm -----
                           1555 ;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1556 	; #ENR#[343]			swapSplit();
                           1557 ;  0 "" 2
                           1558 ;--- end asm ---
   6E1D BD 24 8F      [ 8] 1559 	jsr	_swapSplit	; 
   6E20                    1560 L69:
   6E20 39            [ 5] 1561 	rts
                           1562 	.globl _startBlockFalling
   6E21                    1563 _startBlockFalling:
                           1564 ;----- asm -----
                           1565 ;  263 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1566 	; #ENR#[228]	gameState = BlockFalling;
                           1567 ;  0 "" 2
                           1568 ;--- end asm ---
   6E21 C6 05         [ 2] 1569 	ldb	#5	; ,
   6E23 F7 CA F6      [ 5] 1570 	stb	_gameState	; , gameState
                           1571 ;----- asm -----
                           1572 ;  265 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1573 	; #ENR#[229]	blockYOfs = 0;
                           1574 ;  0 "" 2
                           1575 ;--- end asm ---
   6E26 7F C8 89      [ 7] 1576 	clr	_blockYOfs	;  blockYOfs
                           1577 ;----- asm -----
                           1578 ;  267 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1579 	; #ENR#[230]	moveBlock(lastBlockDirection);
                           1580 ;  0 "" 2
                           1581 ;--- end asm ---
   6E29 F6 C8 8A      [ 5] 1582 	ldb	_lastBlockDirection	; , lastBlockDirection
   6E2C BD 6D 80      [ 8] 1583 	jsr	_moveBlock	; 
                           1584 ;----- asm -----
                           1585 ;  269 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1586 	; #ENR#[231]	changeMusic(fallingMusic);
                           1587 ;  0 "" 2
                           1588 ;--- end asm ---
   6E2F 8E 70 AF      [ 3] 1589 	ldx	#_fallingMusic	; ,
   6E32 BD 69 96      [ 8] 1590 	jsr	_changeMusic	; 
   6E35 39            [ 5] 1591 	rts
                           1592 	.globl _blockMoving
   6E36                    1593 _blockMoving:
   6E36 32 79         [ 5] 1594 	leas	-7,s	; ,,
                           1595 ;----- asm -----
                           1596 ;  431 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1597 	; #ENR#[350]	drawField();
                           1598 ;  0 "" 2
                           1599 ;--- end asm ---
   6E38 BD 69 9F      [ 8] 1600 	jsr	_drawField	; 
                           1601 ;----- asm -----
                           1602 ;  433 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1603 	; #ENR#[351]	drawBlock(0);
                           1604 ;  0 "" 2
                           1605 ;--- end asm ---
   6E3B 5F            [ 2] 1606 	clrb	; 
   6E3C BD 24 B4      [ 8] 1607 	jsr	_drawBlock	; 
                           1608 ;----- asm -----
                           1609 ;  435 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1610 	; #ENR#[352]	doBlockAnimation();
                           1611 ;  0 "" 2
                           1612 ;--- end asm ---
   6E3F BD 23 B2      [ 8] 1613 	jsr	_doBlockAnimation	; 
                           1614 ;----- asm -----
                           1615 ;  437 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1616 	; #ENR#[353]	if (!blockAnimating) {
                           1617 ;  0 "" 2
                           1618 ;--- end asm ---
   6E42 7D C8 8B      [ 7] 1619 	tst	_blockAnimating	;  blockAnimating
   6E45 10 26 01 56   [ 6] 1620 	lbne	L96	; 
                           1621 ;----- asm -----
                           1622 ;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1623 	; #ENR#[355]		uint8_t c0 = isField(blockX, blockY);
                           1624 ;  0 "" 2
                           1625 ;--- end asm ---
   6E49 F6 C8 8E      [ 5] 1626 	ldb	_blockY	; , blockY
   6E4C E7 E2         [ 6] 1627 	stb	,-s	; ,
   6E4E F6 C8 8D      [ 5] 1628 	ldb	_blockX	; , blockX
   6E51 BD 56 A8      [ 8] 1629 	jsr	_isField	; 
   6E54 E7 62         [ 5] 1630 	stb	2,s	; , c0
                           1631 ;----- asm -----
                           1632 ;  442 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1633 	; #ENR#[356]		uint8_t c1 = isField(blockX + 1, blockY);
                           1634 ;  0 "" 2
                           1635 ;--- end asm ---
   6E56 F6 C8 8D      [ 5] 1636 	ldb	_blockX	; , blockX
   6E59 5C            [ 2] 1637 	incb	; 
   6E5A E7 61         [ 5] 1638 	stb	1,s	; ,
   6E5C F6 C8 8E      [ 5] 1639 	ldb	_blockY	; , blockY
   6E5F E7 E2         [ 6] 1640 	stb	,-s	; ,
   6E61 E6 62         [ 5] 1641 	ldb	2,s	; ,
   6E63 BD 56 A8      [ 8] 1642 	jsr	_isField	; 
   6E66 E7 64         [ 5] 1643 	stb	4,s	; , c1
                           1644 ;----- asm -----
                           1645 ;  444 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1646 	; #ENR#[357]		uint8_t c2 = isField(blockX, blockY + 1);
                           1647 ;  0 "" 2
                           1648 ;--- end asm ---
   6E68 F6 C8 8E      [ 5] 1649 	ldb	_blockY	; , blockY
   6E6B 5C            [ 2] 1650 	incb	; 
   6E6C 34 04         [ 6] 1651 	pshs	b	; 
   6E6E F6 C8 8D      [ 5] 1652 	ldb	_blockX	; , blockX
   6E71 BD 56 A8      [ 8] 1653 	jsr	_isField	; 
   6E74 E7 66         [ 5] 1654 	stb	6,s	; , c2
                           1655 ;----- asm -----
                           1656 ;  446 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1657 	; #ENR#[358]		char f0 = getField(blockX, blockY);
                           1658 ;  0 "" 2
                           1659 ;--- end asm ---
   6E76 F6 C8 8E      [ 5] 1660 	ldb	_blockY	; , blockY
   6E79 E7 E2         [ 6] 1661 	stb	,-s	; ,
   6E7B F6 C8 8D      [ 5] 1662 	ldb	_blockX	; , blockX
   6E7E BD 55 D6      [ 8] 1663 	jsr	_getField	; 
   6E81 E7 68         [ 5] 1664 	stb	8,s	; , f0
                           1665 ;----- asm -----
                           1666 ;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1667 	; #ENR#[359]		char f1 = getField(blockX + 1, blockY);
                           1668 ;  0 "" 2
                           1669 ;--- end asm ---
   6E83 F6 C8 8D      [ 5] 1670 	ldb	_blockX	; , blockX
   6E86 5C            [ 2] 1671 	incb	; 
   6E87 E7 64         [ 5] 1672 	stb	4,s	; ,
   6E89 F6 C8 8E      [ 5] 1673 	ldb	_blockY	; , blockY
   6E8C E7 E2         [ 6] 1674 	stb	,-s	; ,
   6E8E E6 65         [ 5] 1675 	ldb	5,s	; ,
   6E90 BD 55 D6      [ 8] 1676 	jsr	_getField	; 
   6E93 E7 6A         [ 5] 1677 	stb	10,s	; , f1
                           1678 ;----- asm -----
                           1679 ;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1680 	; #ENR#[360]		char f2 = getField(blockX, blockY + 1);
                           1681 ;  0 "" 2
                           1682 ;--- end asm ---
   6E95 F6 C8 8E      [ 5] 1683 	ldb	_blockY	; , blockY
   6E98 5C            [ 2] 1684 	incb	; 
   6E99 34 04         [ 6] 1685 	pshs	b	; 
   6E9B F6 C8 8D      [ 5] 1686 	ldb	_blockX	; , blockX
   6E9E BD 55 D6      [ 8] 1687 	jsr	_getField	; 
   6EA1 E7 6C         [ 5] 1688 	stb	12,s	; , f2
                           1689 ;----- asm -----
                           1690 ;  452 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1691 	; #ENR#[361]		switch (blockOrientation) {
                           1692 ;  0 "" 2
                           1693 ;--- end asm ---
   6EA3 32 66         [ 5] 1694 	leas	6,s	; ,,
   6EA5 F6 C8 88      [ 5] 1695 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   6EA8 C1 01         [ 2] 1696 	cmpb	#1	;cmpqi:	;  blockOrientation,
   6EAA 27 19         [ 3] 1697 	beq	L76	; 
   6EAC 25 08         [ 3] 1698 	blo	L75	; 
   6EAE C1 02         [ 2] 1699 	cmpb	#2	;cmpqi:	;  blockOrientation,
   6EB0 10 26 00 29   [ 6] 1700 	lbne	L74	; 
   6EB4 20 1C         [ 3] 1701 	bra	L97	; 
   6EB6                    1702 L75:
                           1703 ;----- asm -----
                           1704 ;  456 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1705 	; #ENR#[363]			if (!c0 || f0 == 'f') {
                           1706 ;  0 "" 2
                           1707 ;--- end asm ---
   6EB6 6D 61         [ 7] 1708 	tst	1,s	;  c0
   6EB8 27 06         [ 3] 1709 	beq	L78	; 
   6EBA E6 64         [ 5] 1710 	ldb	4,s	; , f0
   6EBC C1 66         [ 2] 1711 	cmpb	#102	;cmpqi:	; ,
   6EBE 26 03         [ 3] 1712 	bne	L79	; 
   6EC0                    1713 L78:
                           1714 ;----- asm -----
                           1715 ;  458 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1716 	; #ENR#[364]				startBlockFalling();
                           1717 ;  0 "" 2
                           1718 ;--- end asm ---
   6EC0 BD 6E 21      [ 8] 1719 	jsr	_startBlockFalling	; 
   6EC3                    1720 L79:
                           1721 ;----- asm -----
                           1722 ;  461 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1723 	; #ENR#[366]			break;
                           1724 ;  0 "" 2
                           1725 ;--- end asm ---
   6EC3 20 18         [ 3] 1726 	bra	L74	; 
   6EC5                    1727 L76:
                           1728 ;----- asm -----
                           1729 ;  465 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1730 	; #ENR#[368]			if (!c0 || !c2) {
                           1731 ;  0 "" 2
                           1732 ;--- end asm ---
   6EC5 6D 61         [ 7] 1733 	tst	1,s	;  c0
   6EC7 27 04         [ 3] 1734 	beq	L80	; 
   6EC9 6D 63         [ 7] 1735 	tst	3,s	;  c2
   6ECB 26 03         [ 3] 1736 	bne	L81	; 
   6ECD                    1737 L80:
                           1738 ;----- asm -----
                           1739 ;  467 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1740 	; #ENR#[369]				startBlockFalling();
                           1741 ;  0 "" 2
                           1742 ;--- end asm ---
   6ECD BD 6E 21      [ 8] 1743 	jsr	_startBlockFalling	; 
   6ED0                    1744 L81:
                           1745 ;----- asm -----
                           1746 ;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1747 	; #ENR#[371]			break;
                           1748 ;  0 "" 2
                           1749 ;--- end asm ---
   6ED0 20 0B         [ 3] 1750 	bra	L74	; 
   6ED2                    1751 L97:
                           1752 ;----- asm -----
                           1753 ;  474 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1754 	; #ENR#[373]			if (!c0 || ! c1) {
                           1755 ;  0 "" 2
                           1756 ;--- end asm ---
   6ED2 6D 61         [ 7] 1757 	tst	1,s	;  c0
   6ED4 27 04         [ 3] 1758 	beq	L82	; 
   6ED6 6D 62         [ 7] 1759 	tst	2,s	;  c1
   6ED8 26 03         [ 3] 1760 	bne	L83	; 
   6EDA                    1761 L82:
                           1762 ;----- asm -----
                           1763 ;  476 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1764 	; #ENR#[374]				startBlockFalling();
                           1765 ;  0 "" 2
                           1766 ;--- end asm ---
   6EDA BD 6E 21      [ 8] 1767 	jsr	_startBlockFalling	; 
   6EDD                    1768 L83:
                           1769 ;----- asm -----
                           1770 ;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1771 	; #ENR#[376]			break;
                           1772 ;  0 "" 2
                           1773 ;--- end asm ---
   6EDD                    1774 L74:
                           1775 ;----- asm -----
                           1776 ;  484 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1777 	; #ENR#[380]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1778 ;  0 "" 2
                           1779 ;--- end asm ---
   6EDD 7D C8 88      [ 7] 1780 	tst	_blockOrientation	;  blockOrientation
   6EE0 26 25         [ 3] 1781 	bne	L84	; 
   6EE2 F6 C8 8D      [ 5] 1782 	ldb	_blockX	; , blockX
   6EE5 F1 C8 81      [ 5] 1783 	cmpb	_endX	;cmpqi:	; , endX
   6EE8 26 1D         [ 3] 1784 	bne	L84	; 
   6EEA F6 C8 8E      [ 5] 1785 	ldb	_blockY	; , blockY
   6EED F1 C8 82      [ 5] 1786 	cmpb	_endY	;cmpqi:	; , endY
   6EF0 26 15         [ 3] 1787 	bne	L84	; 
   6EF2 7D C8 8C      [ 7] 1788 	tst	_splitMode	;  splitMode
   6EF5 26 10         [ 3] 1789 	bne	L84	; 
                           1790 ;----- asm -----
                           1791 ;  486 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1792 	; #ENR#[381]			blockYOfs = 0;
                           1793 ;  0 "" 2
                           1794 ;--- end asm ---
   6EF7 7F C8 89      [ 7] 1795 	clr	_blockYOfs	;  blockYOfs
                           1796 ;----- asm -----
                           1797 ;  488 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1798 	; #ENR#[382]			gameState = BlockMovingAtEnd;
                           1799 ;  0 "" 2
                           1800 ;--- end asm ---
   6EFA C6 06         [ 2] 1801 	ldb	#6	; ,
   6EFC F7 CA F6      [ 5] 1802 	stb	_gameState	; , gameState
                           1803 ;----- asm -----
                           1804 ;  490 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1805 	; #ENR#[383]			changeMusic(levelEndMusic);
                           1806 ;  0 "" 2
                           1807 ;--- end asm ---
   6EFF 8E 70 95      [ 3] 1808 	ldx	#_levelEndMusic	; ,
   6F02 BD 69 96      [ 8] 1809 	jsr	_changeMusic	; 
   6F05 20 0C         [ 3] 1810 	bra	L85	; 
   6F07                    1811 L84:
                           1812 ;----- asm -----
                           1813 ;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1814 	; #ENR#[387]			if (gameState != BlockFalling) {
                           1815 ;  0 "" 2
                           1816 ;--- end asm ---
   6F07 F6 CA F6      [ 5] 1817 	ldb	_gameState	; , gameState
   6F0A C1 05         [ 2] 1818 	cmpb	#5	;cmpqi:	; ,
   6F0C 27 05         [ 3] 1819 	beq	L85	; 
                           1820 ;----- asm -----
                           1821 ;  497 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1822 	; #ENR#[388]				gameState = BlockWaiting;
                           1823 ;  0 "" 2
                           1824 ;--- end asm ---
   6F0E C6 03         [ 2] 1825 	ldb	#3	; ,
   6F10 F7 CA F6      [ 5] 1826 	stb	_gameState	; , gameState
   6F13                    1827 L85:
                           1828 ;----- asm -----
                           1829 ;  503 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1830 	; #ENR#[393]		switch (blockOrientation) {
                           1831 ;  0 "" 2
                           1832 ;--- end asm ---
   6F13 F6 C8 88      [ 5] 1833 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   6F16 C1 01         [ 2] 1834 	cmpb	#1	;cmpqi:	;  blockOrientation,
   6F18 27 29         [ 3] 1835 	beq	L88	; 
   6F1A 25 09         [ 3] 1836 	blo	L87	; 
   6F1C C1 02         [ 2] 1837 	cmpb	#2	;cmpqi:	;  blockOrientation,
   6F1E 10 26 00 75   [ 6] 1838 	lbne	L86	; 
   6F22 7E 6F 6C      [ 4] 1839 	jmp	L98	; 
   6F25                    1840 L87:
                           1841 ;----- asm -----
                           1842 ;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1843 	; #ENR#[395]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1844 ;  0 "" 2
                           1845 ;--- end asm ---
   6F25 E6 64         [ 5] 1846 	ldb	4,s	; , f0
   6F27 C1 73         [ 2] 1847 	cmpb	#115	;cmpqi:	; ,
   6F29 27 08         [ 3] 1848 	beq	L90	; 
   6F2B C1 68         [ 2] 1849 	cmpb	#104	;cmpqi:	; ,
   6F2D 27 04         [ 3] 1850 	beq	L90	; 
   6F2F C1 76         [ 2] 1851 	cmpb	#118	;cmpqi:	; ,
   6F31 26 0D         [ 3] 1852 	bne	L91	; 
   6F33                    1853 L90:
                           1854 ;----- asm -----
                           1855 ;  509 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1856 	; #ENR#[396]				swatchSwitch(blockX, blockY);
                           1857 ;  0 "" 2
                           1858 ;--- end asm ---
   6F33 F6 C8 8E      [ 5] 1859 	ldb	_blockY	; , blockY
   6F36 E7 E2         [ 6] 1860 	stb	,-s	; ,
   6F38 F6 C8 8D      [ 5] 1861 	ldb	_blockX	; , blockX
   6F3B BD 5C 27      [ 8] 1862 	jsr	_swatchSwitch	; 
   6F3E 32 61         [ 5] 1863 	leas	1,s	; ,,
   6F40                    1864 L91:
                           1865 ;----- asm -----
                           1866 ;  512 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1867 	; #ENR#[398]			break;
                           1868 ;  0 "" 2
                           1869 ;--- end asm ---
   6F40 7E 6F 97      [ 4] 1870 	jmp	L86	; 
   6F43                    1871 L88:
                           1872 ;----- asm -----
                           1873 ;  516 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1874 	; #ENR#[400]			if (f0 == 's') {
                           1875 ;  0 "" 2
                           1876 ;--- end asm ---
   6F43 E6 64         [ 5] 1877 	ldb	4,s	; , f0
   6F45 C1 73         [ 2] 1878 	cmpb	#115	;cmpqi:	; ,
   6F47 26 0D         [ 3] 1879 	bne	L92	; 
                           1880 ;----- asm -----
                           1881 ;  518 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1882 	; #ENR#[401]				swatchSwitch(blockX, blockY);
                           1883 ;  0 "" 2
                           1884 ;--- end asm ---
   6F49 F6 C8 8E      [ 5] 1885 	ldb	_blockY	; , blockY
   6F4C E7 E2         [ 6] 1886 	stb	,-s	; ,
   6F4E F6 C8 8D      [ 5] 1887 	ldb	_blockX	; , blockX
   6F51 BD 5C 27      [ 8] 1888 	jsr	_swatchSwitch	; 
   6F54 32 61         [ 5] 1889 	leas	1,s	; ,,
   6F56                    1890 L92:
                           1891 ;----- asm -----
                           1892 ;  521 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1893 	; #ENR#[403]			if (f2 == 's') {
                           1894 ;  0 "" 2
                           1895 ;--- end asm ---
   6F56 E6 66         [ 5] 1896 	ldb	6,s	; , f2
   6F58 C1 73         [ 2] 1897 	cmpb	#115	;cmpqi:	; ,
   6F5A 26 0E         [ 3] 1898 	bne	L93	; 
                           1899 ;----- asm -----
                           1900 ;  523 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1901 	; #ENR#[404]				swatchSwitch(blockX, blockY + 1);
                           1902 ;  0 "" 2
                           1903 ;--- end asm ---
   6F5C F6 C8 8E      [ 5] 1904 	ldb	_blockY	; , blockY
   6F5F 5C            [ 2] 1905 	incb	; 
   6F60 34 04         [ 6] 1906 	pshs	b	; 
   6F62 F6 C8 8D      [ 5] 1907 	ldb	_blockX	; , blockX
   6F65 BD 5C 27      [ 8] 1908 	jsr	_swatchSwitch	; 
   6F68 32 61         [ 5] 1909 	leas	1,s	; ,,
   6F6A                    1910 L93:
                           1911 ;----- asm -----
                           1912 ;  526 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1913 	; #ENR#[406]			break;
                           1914 ;  0 "" 2
                           1915 ;--- end asm ---
   6F6A 20 2B         [ 3] 1916 	bra	L86	; 
   6F6C                    1917 L98:
                           1918 ;----- asm -----
                           1919 ;  530 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1920 	; #ENR#[408]			if (f0 == 's') {
                           1921 ;  0 "" 2
                           1922 ;--- end asm ---
   6F6C E6 64         [ 5] 1923 	ldb	4,s	; , f0
   6F6E C1 73         [ 2] 1924 	cmpb	#115	;cmpqi:	; ,
   6F70 26 0D         [ 3] 1925 	bne	L94	; 
                           1926 ;----- asm -----
                           1927 ;  532 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1928 	; #ENR#[409]				swatchSwitch(blockX, blockY);
                           1929 ;  0 "" 2
                           1930 ;--- end asm ---
   6F72 F6 C8 8E      [ 5] 1931 	ldb	_blockY	; , blockY
   6F75 E7 E2         [ 6] 1932 	stb	,-s	; ,
   6F77 F6 C8 8D      [ 5] 1933 	ldb	_blockX	; , blockX
   6F7A BD 5C 27      [ 8] 1934 	jsr	_swatchSwitch	; 
   6F7D 32 61         [ 5] 1935 	leas	1,s	; ,,
   6F7F                    1936 L94:
                           1937 ;----- asm -----
                           1938 ;  535 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1939 	; #ENR#[411]			if (f1 == 's') {
                           1940 ;  0 "" 2
                           1941 ;--- end asm ---
   6F7F E6 65         [ 5] 1942 	ldb	5,s	; , f1
   6F81 C1 73         [ 2] 1943 	cmpb	#115	;cmpqi:	; ,
   6F83 26 12         [ 3] 1944 	bne	L95	; 
                           1945 ;----- asm -----
                           1946 ;  537 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1947 	; #ENR#[412]				swatchSwitch(blockX + 1, blockY);
                           1948 ;  0 "" 2
                           1949 ;--- end asm ---
   6F85 F6 C8 8D      [ 5] 1950 	ldb	_blockX	; , blockX
   6F88 5C            [ 2] 1951 	incb	; 
   6F89 E7 E4         [ 4] 1952 	stb	,s	; ,
   6F8B F6 C8 8E      [ 5] 1953 	ldb	_blockY	; , blockY
   6F8E E7 E2         [ 6] 1954 	stb	,-s	; ,
   6F90 E6 61         [ 5] 1955 	ldb	1,s	; ,
   6F92 BD 5C 27      [ 8] 1956 	jsr	_swatchSwitch	; 
   6F95 32 61         [ 5] 1957 	leas	1,s	; ,,
   6F97                    1958 L95:
                           1959 ;----- asm -----
                           1960 ;  540 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1961 	; #ENR#[414]			break;
                           1962 ;  0 "" 2
                           1963 ;--- end asm ---
   6F97                    1964 L86:
                           1965 ;----- asm -----
                           1966 ;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1967 	; #ENR#[418]		if (splitMode) {
                           1968 ;  0 "" 2
                           1969 ;--- end asm ---
   6F97 7D C8 8C      [ 7] 1970 	tst	_splitMode	;  splitMode
   6F9A 27 03         [ 3] 1971 	beq	L96	; 
                           1972 ;----- asm -----
                           1973 ;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1974 	; #ENR#[419]			testMerge();
                           1975 ;  0 "" 2
                           1976 ;--- end asm ---
   6F9C BD 23 FD      [ 8] 1977 	jsr	_testMerge	; 
   6F9F                    1978 L96:
   6F9F 32 67         [ 5] 1979 	leas	7,s	; ,,
   6FA1 39            [ 5] 1980 	rts
                           1981 	.globl _main
   6FA2                    1982 _main:
   6FA2 34 60         [ 7] 1983 	pshs	y,u	; 
   6FA4 32 7C         [ 5] 1984 	leas	-4,s	; ,,
                           1985 ;----- asm -----
                           1986 ;  740 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1987 	; #ENR#[546]	picAvailable = 0;
                           1988 ;  0 "" 2
                           1989 ;--- end asm ---
   6FA6 7F CA F5      [ 7] 1990 	clr	_picAvailable	;  picAvailable
                           1991 ;----- asm -----
                           1992 ;  742 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1993 	; #ENR#[547]	sendCommand(CMD_VERSION, 0);
                           1994 ;  0 "" 2
                           1995 ;--- end asm ---
   6FA9 6F E2         [ 8] 1996 	clr	,-s	; 
   6FAB C6 01         [ 2] 1997 	ldb	#1	; ,
   6FAD BD 68 CD      [ 8] 1998 	jsr	_sendCommand	; 
                           1999 ;----- asm -----
                           2000 ;  744 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2001 	; #ENR#[548]	sendCommand(CMD_VERSION, 0);
                           2002 ;  0 "" 2
                           2003 ;--- end asm ---
   6FB0 6F E2         [ 8] 2004 	clr	,-s	; 
   6FB2 C6 01         [ 2] 2005 	ldb	#1	; ,
   6FB4 BD 68 CD      [ 8] 2006 	jsr	_sendCommand	; 
                           2007 ;----- asm -----
                           2008 ;  746 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2009 	; #ENR#[549]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           2010 ;  0 "" 2
                           2011 ;--- end asm ---
   6FB7 6F E2         [ 8] 2012 	clr	,-s	; 
   6FB9 C6 01         [ 2] 2013 	ldb	#1	; ,
   6FBB BD 68 CD      [ 8] 2014 	jsr	_sendCommand	; 
   6FBE 32 63         [ 5] 2015 	leas	3,s	; ,,
   6FC0 C1 04         [ 2] 2016 	cmpb	#4	;cmpqi:	;  D.2434,
   6FC2 26 05         [ 3] 2017 	bne	L100	; 
                           2018 ;----- asm -----
                           2019 ;  748 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2020 	; #ENR#[550]		picAvailable = 1;
                           2021 ;  0 "" 2
                           2022 ;--- end asm ---
   6FC4 C6 01         [ 2] 2023 	ldb	#1	; ,
   6FC6 F7 CA F5      [ 5] 2024 	stb	_picAvailable	; , picAvailable
   6FC9                    2025 L100:
                           2026 ;----- asm -----
                           2027 ;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2028 	; #ENR#[554]	memcpy(infoText, "001 - 999�", 10);
                           2029 ;  0 "" 2
                           2030 ;--- end asm ---
   6FC9 8E 30 30      [ 3] 2031 	ldx	#12336	; ,
   6FCC BF CA E7      [ 6] 2032 	stx	_infoText	; , infoText
   6FCF 8E 31 20      [ 3] 2033 	ldx	#12576	; ,
   6FD2 BF CA E9      [ 6] 2034 	stx	_infoText+2	; , infoText
   6FD5 8E 2D 20      [ 3] 2035 	ldx	#11552	; ,
   6FD8 BF CA EB      [ 6] 2036 	stx	_infoText+4	; , infoText
   6FDB 8E 39 39      [ 3] 2037 	ldx	#14649	; ,
   6FDE BF CA ED      [ 6] 2038 	stx	_infoText+6	; , infoText
   6FE1 8E 39 80      [ 3] 2039 	ldx	#14720	; ,
   6FE4 BF CA EF      [ 6] 2040 	stx	_infoText+8	; , infoText
                           2041 ;----- asm -----
                           2042 ;  757 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2043 	; #ENR#[557]	epot0 = 1;
                           2044 ;  0 "" 2
                           2045 ;--- end asm ---
   6FE7 C6 01         [ 2] 2046 	ldb	#1	; ,
   6FE9 F7 C8 1F      [ 5] 2047 	stb	-14305	; ,
                           2048 ;----- asm -----
                           2049 ;  759 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2050 	; #ENR#[558]	epot1 = 3;
                           2051 ;  0 "" 2
                           2052 ;--- end asm ---
   6FEC C6 03         [ 2] 2053 	ldb	#3	; ,
   6FEE F7 C8 20      [ 5] 2054 	stb	-14304	; ,
                           2055 ;----- asm -----
                           2056 ;  761 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2057 	; #ENR#[559]	epot2 = 0;
                           2058 ;  0 "" 2
                           2059 ;--- end asm ---
   6FF1 7F C8 21      [ 7] 2060 	clr	-14303	; 
                           2061 ;----- asm -----
                           2062 ;  763 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2063 	; #ENR#[560]	epot3 = 0;
                           2064 ;  0 "" 2
                           2065 ;--- end asm ---
   6FF4 7F C8 22      [ 7] 2066 	clr	-14302	; 
                           2067 ;----- asm -----
                           2068 ;  766 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2069 	; #ENR#[562]	gameState = MainMenu;
                           2070 ;  0 "" 2
                           2071 ;--- end asm ---
   6FF7 7F CA F6      [ 7] 2072 	clr	_gameState	;  gameState
                           2073 ;----- asm -----
                           2074 ;  768 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2075 	; #ENR#[563]	startLevel();
                           2076 ;  0 "" 2
                           2077 ;--- end asm ---
   6FFA BD 6B B5      [ 8] 2078 	jsr	_startLevel	; 
                           2079 ;----- asm -----
                           2080 ;  772 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2081 	; #ENR#[566]	while (1) {
                           2082 ;  0 "" 2
                           2083 ;--- end asm ---
   6FFD                    2084 L112:
                           2085 ;----- asm -----
                           2086 ;  775 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2087 	; #ENR#[568]		frwait();
                           2088 ;  0 "" 2
                           2089 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6FFD BD F1 92      [ 8] 2090 	jsr ___Wait_Recal; BIOS call
                           2091 ;  0 "" 2
                           2092 ;  778 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2093 	; #ENR#[570]		switch (gameState) {
                           2094 ;  0 "" 2
                           2095 ;--- end asm ---
   7000 F6 CA F6      [ 5] 2096 	ldb	_gameState	; , gameState
   7003 C1 06         [ 2] 2097 	cmpb	#6	;cmpqi:	; ,
   7005 10 22 00 4D   [ 6] 2098 	lbhi	L101	; 
   7009 4F            [ 2] 2099 	clra		;zero_extendqihi: R:b -> R:d	; ,
   700A ED E4         [ 5] 2100 	std	,s	; ,
   700C 58            [ 2] 2101 	aslb	; 
   700D 49            [ 2] 2102 	rola	; 
   700E 1F 01         [ 6] 2103 	tfr	d,x	; , tmp42
   7010 6E 99 70 14   [10] 2104 	jmp	[L109,x]	; , tmp42
   7014                    2105 L109:
   7014 70 22              2106 	.word L102
   7016 70 28              2107 	.word L103
   7018 70 2E              2108 	.word L104
   701A 70 37              2109 	.word L105
   701C 70 40              2110 	.word L106
   701E 70 48              2111 	.word L107
   7020 70 50              2112 	.word L108
   7022                    2113 L102:
                           2114 ;----- asm -----
                           2115 ;  782 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2116 	; #ENR#[572]        			mainMenu();
                           2117 ;  0 "" 2
                           2118 ;--- end asm ---
   7022 BD 6C 61      [ 8] 2119 	jsr	_mainMenu	; 
                           2120 ;----- asm -----
                           2121 ;  785 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2122 	; #ENR#[574]        			break;
                           2123 ;  0 "" 2
                           2124 ;--- end asm ---
   7025 7E 70 56      [ 4] 2125 	jmp	L101	; 
   7028                    2126 L103:
                           2127 ;----- asm -----
                           2128 ;  789 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2129 	; #ENR#[576]				clearMenu();
                           2130 ;  0 "" 2
                           2131 ;--- end asm ---
   7028 BD 6A 0C      [ 8] 2132 	jsr	_clearMenu	; 
                           2133 ;----- asm -----
                           2134 ;  792 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2135 	; #ENR#[578]				break;
                           2136 ;  0 "" 2
                           2137 ;--- end asm ---
   702B 7E 70 56      [ 4] 2138 	jmp	L101	; 
   702E                    2139 L104:
                           2140 ;----- asm -----
                           2141 ;  796 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2142 	; #ENR#[580]				showInfo();
                           2143 ;  0 "" 2
                           2144 ;--- end asm ---
   702E BD 6B 72      [ 8] 2145 	jsr	_showInfo	; 
                           2146 ;----- asm -----
                           2147 ;  798 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2148 	; #ENR#[581]        			blockMovingToStart();
                           2149 ;  0 "" 2
                           2150 ;--- end asm ---
   7031 BD 6B 9C      [ 8] 2151 	jsr	_blockMovingToStart	; 
                           2152 ;----- asm -----
                           2153 ;  800 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2154 	; #ENR#[582]        			break;
                           2155 ;  0 "" 2
                           2156 ;--- end asm ---
   7034 7E 70 56      [ 4] 2157 	jmp	L101	; 
   7037                    2158 L105:
                           2159 ;----- asm -----
                           2160 ;  804 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2161 	; #ENR#[584]				showInfo();
                           2162 ;  0 "" 2
                           2163 ;--- end asm ---
   7037 BD 6B 72      [ 8] 2164 	jsr	_showInfo	; 
                           2165 ;----- asm -----
                           2166 ;  806 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2167 	; #ENR#[585]        			blockWaiting();
                           2168 ;  0 "" 2
                           2169 ;--- end asm ---
   703A BD 6D 94      [ 8] 2170 	jsr	_blockWaiting	; 
                           2171 ;----- asm -----
                           2172 ;  808 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2173 	; #ENR#[586]        			break;
                           2174 ;  0 "" 2
                           2175 ;--- end asm ---
   703D 7E 70 56      [ 4] 2176 	jmp	L101	; 
   7040                    2177 L106:
                           2178 ;----- asm -----
                           2179 ;  812 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2180 	; #ENR#[588]				showInfo();
                           2181 ;  0 "" 2
                           2182 ;--- end asm ---
   7040 BD 6B 72      [ 8] 2183 	jsr	_showInfo	; 
                           2184 ;----- asm -----
                           2185 ;  814 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2186 	; #ENR#[589]        			blockMoving();
                           2187 ;  0 "" 2
                           2188 ;--- end asm ---
   7043 BD 6E 36      [ 8] 2189 	jsr	_blockMoving	; 
                           2190 ;----- asm -----
                           2191 ;  816 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2192 	; #ENR#[590]        			break;
                           2193 ;  0 "" 2
                           2194 ;--- end asm ---
   7046 20 0E         [ 3] 2195 	bra	L101	; 
   7048                    2196 L107:
                           2197 ;----- asm -----
                           2198 ;  820 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2199 	; #ENR#[592]				showInfo();
                           2200 ;  0 "" 2
                           2201 ;--- end asm ---
   7048 BD 6B 72      [ 8] 2202 	jsr	_showInfo	; 
                           2203 ;----- asm -----
                           2204 ;  822 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2205 	; #ENR#[593]        			blockFalling();
                           2206 ;  0 "" 2
                           2207 ;--- end asm ---
   704B BD 6D 57      [ 8] 2208 	jsr	_blockFalling	; 
                           2209 ;----- asm -----
                           2210 ;  824 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2211 	; #ENR#[594]        			break;
                           2212 ;  0 "" 2
                           2213 ;--- end asm ---
   704E 20 06         [ 3] 2214 	bra	L101	; 
   7050                    2215 L108:
                           2216 ;----- asm -----
                           2217 ;  828 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2218 	; #ENR#[596]				showInfo();
                           2219 ;  0 "" 2
                           2220 ;--- end asm ---
   7050 BD 6B 72      [ 8] 2221 	jsr	_showInfo	; 
                           2222 ;----- asm -----
                           2223 ;  830 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2224 	; #ENR#[597]        			blockMovingAtEnd();
                           2225 ;  0 "" 2
                           2226 ;--- end asm ---
   7053 BD 6C FD      [ 8] 2227 	jsr	_blockMovingAtEnd	; 
                           2228 ;----- asm -----
                           2229 ;  832 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2230 	; #ENR#[598]        			break;
                           2231 ;  0 "" 2
                           2232 ;--- end asm ---
   7056                    2233 L101:
                           2234 ;----- asm -----
                           2235 ;  837 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2236 	; #ENR#[602]		if (gameState > ClearMenu) {
                           2237 ;  0 "" 2
                           2238 ;--- end asm ---
   7056 F6 CA F6      [ 5] 2239 	ldb	_gameState	; , gameState
   7059 C1 01         [ 2] 2240 	cmpb	#1	;cmpqi:	; ,
   705B 10 23 FF 9E   [ 6] 2241 	lbls	L112	; 
                           2242 ;----- asm -----
                           2243 ;  839 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2244 	; #ENR#[603]    			DP_to_C8();
                           2245 ;  0 "" 2
                           2246 ;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   705F BD F1 AF      [ 8] 2247 	jsr ___DP_to_C8; BIOS call
                           2248 ;  0 "" 2
                           2249 ;  841 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2250 	; #ENR#[604]    			replay(currentMusic);
                           2251 ;  0 "" 2
                           2252 ;--- end asm ---
   7062 BE C8 84      [ 6] 2253 	ldx	_currentMusic	; , currentMusic
   7065 AF 62         [ 6] 2254 	stx	2,s	; , u
                           2255 ;----- asm -----
                           2256 ;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   7067 EE 62         [ 6] 2257 	ldu 2,s	;  u
   7069 BD F6 87      [ 8] 2258 	jsr ___Init_Music_chk; BIOS call
                           2259 ;  0 "" 2
                           2260 ;  843 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2261 	; #ENR#[605]    			DP_to_D0();
                           2262 ;  0 "" 2
                           2263 ;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   706C BD F1 AA      [ 8] 2264 	jsr ___DP_to_D0; BIOS call
                           2265 ;  0 "" 2
                           2266 ;  845 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2267 	; #ENR#[606]    			reqout();
                           2268 ;  0 "" 2
                           2269 ;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   706F BD F2 89      [ 8] 2270 	jsr ___Do_Sound; BIOS call
                           2271 ;  0 "" 2
                           2272 ;--- end asm ---
   7072 7E 6F FD      [ 4] 2273 	jmp	L112	; 
                           2274 	.globl _startMusic
   7075                    2275 _startMusic:
   7075 FE                 2276 	.byte	-2
   7076 E8                 2277 	.byte	-24
   7077 FE                 2278 	.byte	-2
   7078 B6                 2279 	.byte	-74
   7079 01                 2280 	.byte	1
   707A 01                 2281 	.byte	1
   707B 02                 2282 	.byte	2
   707C 01                 2283 	.byte	1
   707D 03                 2284 	.byte	3
   707E 01                 2285 	.byte	1
   707F 04                 2286 	.byte	4
   7080 01                 2287 	.byte	1
   7081 05                 2288 	.byte	5
   7082 01                 2289 	.byte	1
   7083 06                 2290 	.byte	6
   7084 01                 2291 	.byte	1
   7085 07                 2292 	.byte	7
   7086 01                 2293 	.byte	1
   7087 08                 2294 	.byte	8
   7088 01                 2295 	.byte	1
   7089 09                 2296 	.byte	9
   708A 01                 2297 	.byte	1
   708B 0A                 2298 	.byte	10
   708C 01                 2299 	.byte	1
   708D 0B                 2300 	.byte	11
   708E 01                 2301 	.byte	1
   708F 0C                 2302 	.byte	12
   7090 01                 2303 	.byte	1
   7091 0D                 2304 	.byte	13
   7092 01                 2305 	.byte	1
   7093 00                 2306 	.byte	0
   7094 80                 2307 	.byte	-128
                           2308 	.globl _levelEndMusic
   7095                    2309 _levelEndMusic:
   7095 FE                 2310 	.byte	-2
   7096 E8                 2311 	.byte	-24
   7097 FE                 2312 	.byte	-2
   7098 B6                 2313 	.byte	-74
   7099 0D                 2314 	.byte	13
   709A 01                 2315 	.byte	1
   709B 0E                 2316 	.byte	14
   709C 01                 2317 	.byte	1
   709D 0F                 2318 	.byte	15
   709E 01                 2319 	.byte	1
   709F 10                 2320 	.byte	16
   70A0 01                 2321 	.byte	1
   70A1 11                 2322 	.byte	17
   70A2 01                 2323 	.byte	1
   70A3 12                 2324 	.byte	18
   70A4 01                 2325 	.byte	1
   70A5 13                 2326 	.byte	19
   70A6 01                 2327 	.byte	1
   70A7 14                 2328 	.byte	20
   70A8 01                 2329 	.byte	1
   70A9 15                 2330 	.byte	21
   70AA 01                 2331 	.byte	1
   70AB 16                 2332 	.byte	22
   70AC 01                 2333 	.byte	1
   70AD 00                 2334 	.byte	0
   70AE 80                 2335 	.byte	-128
                           2336 	.globl _fallingMusic
   70AF                    2337 _fallingMusic:
   70AF FE                 2338 	.byte	-2
   70B0 E8                 2339 	.byte	-24
   70B1 FE                 2340 	.byte	-2
   70B2 B6                 2341 	.byte	-74
   70B3 0D                 2342 	.byte	13
   70B4 02                 2343 	.byte	2
   70B5 0C                 2344 	.byte	12
   70B6 02                 2345 	.byte	2
   70B7 0B                 2346 	.byte	11
   70B8 02                 2347 	.byte	2
   70B9 0A                 2348 	.byte	10
   70BA 02                 2349 	.byte	2
   70BB 09                 2350 	.byte	9
   70BC 02                 2351 	.byte	2
   70BD 08                 2352 	.byte	8
   70BE 02                 2353 	.byte	2
   70BF 07                 2354 	.byte	7
   70C0 02                 2355 	.byte	2
   70C1 06                 2356 	.byte	6
   70C2 02                 2357 	.byte	2
   70C3 05                 2358 	.byte	5
   70C4 02                 2359 	.byte	2
   70C5 04                 2360 	.byte	4
   70C6 02                 2361 	.byte	2
   70C7 03                 2362 	.byte	3
   70C8 02                 2363 	.byte	2
   70C9 02                 2364 	.byte	2
   70CA 02                 2365 	.byte	2
   70CB 01                 2366 	.byte	1
   70CC 02                 2367 	.byte	2
   70CD 00                 2368 	.byte	0
   70CE 80                 2369 	.byte	-128
                           2370 	.globl _movingMusic
   70CF                    2371 _movingMusic:
   70CF FD                 2372 	.byte	-3
   70D0 C3                 2373 	.byte	-61
   70D1 FE                 2374 	.byte	-2
   70D2 B6                 2375 	.byte	-74
   70D3 01                 2376 	.byte	1
   70D4 05                 2377 	.byte	5
   70D5 00                 2378 	.byte	0
   70D6 80                 2379 	.byte	-128
                           2380 	.globl _currentMusic
                           2381 	.area .data
   C884                    2382 _currentMusic:
   C884 70 75              2383 	.word	_startMusic
                           2384 	.globl _vecx
   C886                    2385 _vecx:
   C886 80 00              2386 	.word	-32768
                           2387 	.globl _led8
                           2388 	.area .text
   70D7                    2389 _led8:
   70D7 FF                 2390 	.byte	-1
   70D8 00                 2391 	.byte	0
   70D9 05                 2392 	.byte	5
   70DA FF                 2393 	.byte	-1
   70DB FB                 2394 	.byte	-5
   70DC 00                 2395 	.byte	0
   70DD FF                 2396 	.byte	-1
   70DE 00                 2397 	.byte	0
   70DF FB                 2398 	.byte	-5
   70E0 FF                 2399 	.byte	-1
   70E1 05                 2400 	.byte	5
   70E2 00                 2401 	.byte	0
   70E3 FF                 2402 	.byte	-1
   70E4 05                 2403 	.byte	5
   70E5 00                 2404 	.byte	0
   70E6 FF                 2405 	.byte	-1
   70E7 00                 2406 	.byte	0
   70E8 05                 2407 	.byte	5
   70E9 FF                 2408 	.byte	-1
   70EA FB                 2409 	.byte	-5
   70EB 00                 2410 	.byte	0
   70EC 01                 2411 	.byte	1
                           2412 	.area .bss
                           2413 	.globl	_infoText
   CAE7                    2414 _infoText:	.blkb	10
                           2415 	.globl	_moveCount
   CAF1                    2416 _moveCount:	.blkb	2
                           2417 	.globl	_levelHighscore
   CAF3                    2418 _levelHighscore:	.blkb	2
                           2419 	.globl	_picAvailable
   CAF5                    2420 _picAvailable:	.blkb	1
                           2421 	.globl	_gameState
   CAF6                    2422 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$103      0030 GR  |   2 A$bloxorz$104      0033 GR
  2 A$bloxorz$1054     03C2 GR  |   2 A$bloxorz$1055     03C4 GR
  2 A$bloxorz$1061     03C6 GR  |   2 A$bloxorz$1067     03C9 GR
  2 A$bloxorz$1068     03CB GR  |   2 A$bloxorz$1071     03CD GR
  2 A$bloxorz$1072     03CF GR  |   2 A$bloxorz$1078     03D2 GR
  2 A$bloxorz$1079     03D4 GR  |   2 A$bloxorz$1085     03D7 GR
  2 A$bloxorz$1086     03D9 GR  |   2 A$bloxorz$1087     03DB GR
  2 A$bloxorz$1088     03DD GR  |   2 A$bloxorz$1089     03DF GR
  2 A$bloxorz$1090     03E2 GR  |   2 A$bloxorz$1093     03E4 GR
  2 A$bloxorz$1094     03E6 GR  |   2 A$bloxorz$1095     03E8 GR
  2 A$bloxorz$1096     03EA GR  |   2 A$bloxorz$110      0035 GR
  2 A$bloxorz$1102     03ED GR  |   2 A$bloxorz$1103     03EF GR
  2 A$bloxorz$1104     03F1 GR  |   2 A$bloxorz$1105     03F3 GR
  2 A$bloxorz$1106     03F5 GR  |   2 A$bloxorz$1107     03F8 GR
  2 A$bloxorz$111      0037 GR  |   2 A$bloxorz$1110     03FA GR
  2 A$bloxorz$1111     03FC GR  |   2 A$bloxorz$1112     03FE GR
  2 A$bloxorz$1113     0400 GR  |   2 A$bloxorz$1119     0403 GR
  2 A$bloxorz$112      0039 GR  |   2 A$bloxorz$1120     0405 GR
  2 A$bloxorz$1121     0407 GR  |   2 A$bloxorz$1122     0409 GR
  2 A$bloxorz$1123     040B GR  |   2 A$bloxorz$1124     040E GR
  2 A$bloxorz$1127     0410 GR  |   2 A$bloxorz$1128     0412 GR
  2 A$bloxorz$1129     0414 GR  |   2 A$bloxorz$1130     0416 GR
  2 A$bloxorz$1136     0419 GR  |   2 A$bloxorz$1137     041B GR
  2 A$bloxorz$1138     041D GR  |   2 A$bloxorz$1139     041F GR
  2 A$bloxorz$1140     0421 GR  |   2 A$bloxorz$1141     0424 GR
  2 A$bloxorz$1144     0426 GR  |   2 A$bloxorz$1145     0428 GR
  2 A$bloxorz$1146     042A GR  |   2 A$bloxorz$1147     042C GR
  2 A$bloxorz$1153     042F GR  |   2 A$bloxorz$1154     0432 GR
  2 A$bloxorz$1155     0434 GR  |   2 A$bloxorz$1161     0436 GR
  2 A$bloxorz$1168     0439 GR  |   2 A$bloxorz$1169     043C GR
  2 A$bloxorz$1170     043E GR  |   2 A$bloxorz$1176     0440 GR
  2 A$bloxorz$1177     0442 GR  |   2 A$bloxorz$118      003C GR
  2 A$bloxorz$1184     0445 GR  |   2 A$bloxorz$1185     0448 GR
  2 A$bloxorz$1186     044A GR  |   2 A$bloxorz$119      003E GR
  2 A$bloxorz$1192     044C GR  |   2 A$bloxorz$1193     044E GR
  2 A$bloxorz$1194     0450 GR  |   2 A$bloxorz$1195     0452 GR
  2 A$bloxorz$1198     0455 GR  |   2 A$bloxorz$120      0040 GR
  2 A$bloxorz$1201     0458 GR  |   2 A$bloxorz$1203     045A GR
  2 A$bloxorz$1204     045C GR  |   2 A$bloxorz$1207     045E GR
  2 A$bloxorz$121      0042 GR  |   2 A$bloxorz$1213     0460 GR
  2 A$bloxorz$1219     0463 GR  |   2 A$bloxorz$122      0045 GR
  2 A$bloxorz$1220     0466 GR  |   2 A$bloxorz$1226     0469 GR
  2 A$bloxorz$1227     046C GR  |   2 A$bloxorz$1228     046D GR
  2 A$bloxorz$1234     0470 GR  |   2 A$bloxorz$1235     0472 GR
  2 A$bloxorz$124      0047 GR  |   2 A$bloxorz$1241     0476 GR
  2 A$bloxorz$1242     0479 GR  |   2 A$bloxorz$1243     047C GR
  2 A$bloxorz$1249     047E GR  |   2 A$bloxorz$1250     0481 GR
  2 A$bloxorz$1251     0482 GR  |   2 A$bloxorz$1252     0484 GR
  2 A$bloxorz$1253     0486 GR  |   2 A$bloxorz$1254     0488 GR
  2 A$bloxorz$1255     048A GR  |   2 A$bloxorz$1261     048D GR
  2 A$bloxorz$1262     0490 GR  |   2 A$bloxorz$1263     0491 GR
  2 A$bloxorz$1264     0492 GR  |   2 A$bloxorz$1265     0494 GR
  2 A$bloxorz$1266     0497 GR  |   2 A$bloxorz$1267     0499 GR
  2 A$bloxorz$1268     049A GR  |   2 A$bloxorz$1269     049C GR
  2 A$bloxorz$1270     049E GR  |   2 A$bloxorz$1271     04A1 GR
  2 A$bloxorz$1278     04A3 GR  |   2 A$bloxorz$1279     04A6 GR
  2 A$bloxorz$1280     04A7 GR  |   2 A$bloxorz$1286     04AA GR
  2 A$bloxorz$1287     04AD GR  |   2 A$bloxorz$1288     04AF GR
  2 A$bloxorz$1295     04B2 GR  |   2 A$bloxorz$1297     04B5 GR
  2 A$bloxorz$1298     04B7 GR  |   2 A$bloxorz$1301     04B8 GR
  2 A$bloxorz$1307     04BA GR  |   2 A$bloxorz$1313     04BD GR
  2 A$bloxorz$1314     04C0 GR  |   2 A$bloxorz$1315     04C1 GR
  2 A$bloxorz$1316     04C3 GR  |   2 A$bloxorz$132      0048 GR
  2 A$bloxorz$1322     04C6 GR  |   2 A$bloxorz$1323     04C8 GR
  2 A$bloxorz$1329     04CA GR  |   2 A$bloxorz$133      004B GR
  2 A$bloxorz$1330     04CB GR  |   2 A$bloxorz$1331     04CD GR
  2 A$bloxorz$1333     04CE GR  |   2 A$bloxorz$1339     04D1 GR
  2 A$bloxorz$1346     04D4 GR  |   2 A$bloxorz$1347     04D7 GR
  2 A$bloxorz$1348     04D9 GR  |   2 A$bloxorz$1354     04DB GR
  2 A$bloxorz$1356     04DE GR  |   2 A$bloxorz$1357     04E0 GR
  2 A$bloxorz$1365     04E1 GR  |   2 A$bloxorz$1371     04E4 GR
  2 A$bloxorz$1372     04E7 GR  |   2 A$bloxorz$1373     04EA GR
  2 A$bloxorz$1374     04EC GR  |   2 A$bloxorz$1375     04EE GR
  2 A$bloxorz$1382     04F1 GR  |   2 A$bloxorz$1383     04F4 GR
  2 A$bloxorz$139      004D GR  |   2 A$bloxorz$1391     04F5 GR
  2 A$bloxorz$1397     04F8 GR  |   2 A$bloxorz$1398     04F9 GR
  2 A$bloxorz$140      004F GR  |   2 A$bloxorz$1404     04FC GR
  2 A$bloxorz$141      0051 GR  |   2 A$bloxorz$1410     04FF GR
  2 A$bloxorz$1411     0502 GR  |   2 A$bloxorz$1412     0504 GR
  2 A$bloxorz$1418     0506 GR  |   2 A$bloxorz$1419     0507 GR
  2 A$bloxorz$142      0054 GR  |   2 A$bloxorz$1425     050A GR
  2 A$bloxorz$1426     050C GR  |   2 A$bloxorz$1427     050F GR
  2 A$bloxorz$1429     0512 GR  |   2 A$bloxorz$143      0056 GR
  2 A$bloxorz$1430     0515 GR  |   2 A$bloxorz$1431     0517 GR
  2 A$bloxorz$1437     0519 GR  |   2 A$bloxorz$1438     051B GR
  2 A$bloxorz$1444     051E GR  |   2 A$bloxorz$1445     0520 GR
  2 A$bloxorz$1446     0523 GR  |   2 A$bloxorz$1448     0525 GR
  2 A$bloxorz$1449     0528 GR  |   2 A$bloxorz$1450     052A GR
  2 A$bloxorz$1456     052C GR  |   2 A$bloxorz$1457     052E GR
  2 A$bloxorz$1463     0531 GR  |   2 A$bloxorz$1464     0533 GR
  2 A$bloxorz$1465     0536 GR  |   2 A$bloxorz$1467     0538 GR
  2 A$bloxorz$1468     053B GR  |   2 A$bloxorz$1469     053D GR
  2 A$bloxorz$1475     053F GR  |   2 A$bloxorz$1476     0541 GR
  2 A$bloxorz$1482     0544 GR  |   2 A$bloxorz$1483     0546 GR
  2 A$bloxorz$1490     0549 GR  |   2 A$bloxorz$1491     054C GR
  2 A$bloxorz$1492     054E GR  |   2 A$bloxorz$1498     0550 GR
  2 A$bloxorz$1499     0553 GR  |   2 A$bloxorz$150      0058 GR
  2 A$bloxorz$1506     0556 GR  |   2 A$bloxorz$1512     0559 GR
  2 A$bloxorz$1513     055C GR  |   2 A$bloxorz$1514     055E GR
  2 A$bloxorz$152      005A GR  |   2 A$bloxorz$1520     0560 GR
  2 A$bloxorz$1521     0563 GR  |   2 A$bloxorz$1522     0564 GR
  2 A$bloxorz$1528     0567 GR  |   2 A$bloxorz$1529     056A GR
  2 A$bloxorz$1530     056C GR  |   2 A$bloxorz$1537     056F GR
  2 A$bloxorz$1544     0572 GR  |   2 A$bloxorz$1545     0575 GR
  2 A$bloxorz$1546     0577 GR  |   2 A$bloxorz$155      005B GR
  2 A$bloxorz$1552     0579 GR  |   2 A$bloxorz$1553     057C GR
  2 A$bloxorz$1559     057E GR  |   2 A$bloxorz$156      005D GR
  2 A$bloxorz$1561     0581 GR  |   2 A$bloxorz$1569     0582 GR
  2 A$bloxorz$1570     0584 GR  |   2 A$bloxorz$1576     0587 GR
  2 A$bloxorz$1582     058A GR  |   2 A$bloxorz$1583     058D GR
  2 A$bloxorz$1589     0590 GR  |   2 A$bloxorz$1590     0593 GR
  2 A$bloxorz$1591     0596 GR  |   2 A$bloxorz$1594     0597 GR
  2 A$bloxorz$1600     0599 GR  |   2 A$bloxorz$1606     059C GR
  2 A$bloxorz$1607     059D GR  |   2 A$bloxorz$1613     05A0 GR
  2 A$bloxorz$1619     05A3 GR  |   2 A$bloxorz$162      005F GR
  2 A$bloxorz$1620     05A6 GR  |   2 A$bloxorz$1626     05AA GR
  2 A$bloxorz$1627     05AD GR  |   2 A$bloxorz$1628     05AF GR
  2 A$bloxorz$1629     05B2 GR  |   2 A$bloxorz$163      0062 GR
  2 A$bloxorz$1630     05B5 GR  |   2 A$bloxorz$1636     05B7 GR
  2 A$bloxorz$1637     05BA GR  |   2 A$bloxorz$1638     05BB GR
  2 A$bloxorz$1639     05BD GR  |   2 A$bloxorz$164      0064 GR
  2 A$bloxorz$1640     05C0 GR  |   2 A$bloxorz$1641     05C2 GR
  2 A$bloxorz$1642     05C4 GR  |   2 A$bloxorz$1643     05C7 GR
  2 A$bloxorz$1649     05C9 GR  |   2 A$bloxorz$165      0067 GR
  2 A$bloxorz$1650     05CC GR  |   2 A$bloxorz$1651     05CD GR
  2 A$bloxorz$1652     05CF GR  |   2 A$bloxorz$1653     05D2 GR
  2 A$bloxorz$1654     05D5 GR  |   2 A$bloxorz$166      0069 GR
  2 A$bloxorz$1660     05D7 GR  |   2 A$bloxorz$1661     05DA GR
  2 A$bloxorz$1662     05DC GR  |   2 A$bloxorz$1663     05DF GR
  2 A$bloxorz$1664     05E2 GR  |   2 A$bloxorz$167      006C GR
  2 A$bloxorz$1670     05E4 GR  |   2 A$bloxorz$1671     05E7 GR
  2 A$bloxorz$1672     05E8 GR  |   2 A$bloxorz$1673     05EA GR
  2 A$bloxorz$1674     05ED GR  |   2 A$bloxorz$1675     05EF GR
  2 A$bloxorz$1676     05F1 GR  |   2 A$bloxorz$1677     05F4 GR
  2 A$bloxorz$1683     05F6 GR  |   2 A$bloxorz$1684     05F9 GR
  2 A$bloxorz$1685     05FA GR  |   2 A$bloxorz$1686     05FC GR
  2 A$bloxorz$1687     05FF GR  |   2 A$bloxorz$1688     0602 GR
  2 A$bloxorz$1694     0604 GR  |   2 A$bloxorz$1695     0606 GR
  2 A$bloxorz$1696     0609 GR  |   2 A$bloxorz$1697     060B GR
  2 A$bloxorz$1698     060D GR  |   2 A$bloxorz$1699     060F GR
  2 A$bloxorz$1700     0611 GR  |   2 A$bloxorz$1701     0615 GR
  2 A$bloxorz$1708     0617 GR  |   2 A$bloxorz$1709     0619 GR
  2 A$bloxorz$1710     061B GR  |   2 A$bloxorz$1711     061D GR
  2 A$bloxorz$1712     061F GR  |   2 A$bloxorz$1719     0621 GR
  2 A$bloxorz$1726     0624 GR  |   2 A$bloxorz$173      006E GR
  2 A$bloxorz$1733     0626 GR  |   2 A$bloxorz$1734     0628 GR
  2 A$bloxorz$1735     062A GR  |   2 A$bloxorz$1736     062C GR
  2 A$bloxorz$174      0070 GR  |   2 A$bloxorz$1743     062E GR
  2 A$bloxorz$175      0073 GR  |   2 A$bloxorz$1750     0631 GR
  2 A$bloxorz$1757     0633 GR  |   2 A$bloxorz$1758     0635 GR
  2 A$bloxorz$1759     0637 GR  |   2 A$bloxorz$176      0075 GR
  2 A$bloxorz$1760     0639 GR  |   2 A$bloxorz$1767     063B GR
  2 A$bloxorz$1780     063E GR  |   2 A$bloxorz$1781     0641 GR
  2 A$bloxorz$1782     0643 GR  |   2 A$bloxorz$1783     0646 GR
  2 A$bloxorz$1784     0649 GR  |   2 A$bloxorz$1785     064B GR
  2 A$bloxorz$1786     064E GR  |   2 A$bloxorz$1787     0651 GR
  2 A$bloxorz$1788     0653 GR  |   2 A$bloxorz$1789     0656 GR
  2 A$bloxorz$1795     0658 GR  |   2 A$bloxorz$1801     065B GR
  2 A$bloxorz$1802     065D GR  |   2 A$bloxorz$1808     0660 GR
  2 A$bloxorz$1809     0663 GR  |   2 A$bloxorz$1810     0666 GR
  2 A$bloxorz$1817     0668 GR  |   2 A$bloxorz$1818     066B GR
  2 A$bloxorz$1819     066D GR  |   2 A$bloxorz$1825     066F GR
  2 A$bloxorz$1826     0671 GR  |   2 A$bloxorz$183      0079 GR
  2 A$bloxorz$1833     0674 GR  |   2 A$bloxorz$1834     0677 GR
  2 A$bloxorz$1835     0679 GR  |   2 A$bloxorz$1836     067B GR
  2 A$bloxorz$1837     067D GR  |   2 A$bloxorz$1838     067F GR
  2 A$bloxorz$1839     0683 GR  |   2 A$bloxorz$184      007B GR
  2 A$bloxorz$1846     0686 GR  |   2 A$bloxorz$1847     0688 GR
  2 A$bloxorz$1848     068A GR  |   2 A$bloxorz$1849     068C GR
  2 A$bloxorz$185      007D GR  |   2 A$bloxorz$1850     068E GR
  2 A$bloxorz$1851     0690 GR  |   2 A$bloxorz$1852     0692 GR
  2 A$bloxorz$1859     0694 GR  |   2 A$bloxorz$186      0080 GR
  2 A$bloxorz$1860     0697 GR  |   2 A$bloxorz$1861     0699 GR
  2 A$bloxorz$1862     069C GR  |   2 A$bloxorz$1863     069F GR
  2 A$bloxorz$1870     06A1 GR  |   2 A$bloxorz$1877     06A4 GR
  2 A$bloxorz$1878     06A6 GR  |   2 A$bloxorz$1879     06A8 GR
  2 A$bloxorz$1885     06AA GR  |   2 A$bloxorz$1886     06AD GR
  2 A$bloxorz$1887     06AF GR  |   2 A$bloxorz$1888     06B2 GR
  2 A$bloxorz$1889     06B5 GR  |   2 A$bloxorz$1896     06B7 GR
  2 A$bloxorz$1897     06B9 GR  |   2 A$bloxorz$1898     06BB GR
  2 A$bloxorz$1904     06BD GR  |   2 A$bloxorz$1905     06C0 GR
  2 A$bloxorz$1906     06C1 GR  |   2 A$bloxorz$1907     06C3 GR
  2 A$bloxorz$1908     06C6 GR  |   2 A$bloxorz$1909     06C9 GR
  2 A$bloxorz$1916     06CB GR  |   2 A$bloxorz$1923     06CD GR
  2 A$bloxorz$1924     06CF GR  |   2 A$bloxorz$1925     06D1 GR
  2 A$bloxorz$1931     06D3 GR  |   2 A$bloxorz$1932     06D6 GR
  2 A$bloxorz$1933     06D8 GR  |   2 A$bloxorz$1934     06DB GR
  2 A$bloxorz$1935     06DE GR  |   2 A$bloxorz$1942     06E0 GR
  2 A$bloxorz$1943     06E2 GR  |   2 A$bloxorz$1944     06E4 GR
  2 A$bloxorz$1950     06E6 GR  |   2 A$bloxorz$1951     06E9 GR
  2 A$bloxorz$1952     06EA GR  |   2 A$bloxorz$1953     06EC GR
  2 A$bloxorz$1954     06EF GR  |   2 A$bloxorz$1955     06F1 GR
  2 A$bloxorz$1956     06F3 GR  |   2 A$bloxorz$1957     06F6 GR
  2 A$bloxorz$196      0082 GR  |   2 A$bloxorz$197      0084 GR
  2 A$bloxorz$1970     06F8 GR  |   2 A$bloxorz$1971     06FB GR
  2 A$bloxorz$1977     06FD GR  |   2 A$bloxorz$1979     0700 GR
  2 A$bloxorz$198      0086 GR  |   2 A$bloxorz$1980     0702 GR
  2 A$bloxorz$1983     0703 GR  |   2 A$bloxorz$1984     0705 GR
  2 A$bloxorz$199      0088 GR  |   2 A$bloxorz$1990     0707 GR
  2 A$bloxorz$1996     070A GR  |   2 A$bloxorz$1997     070C GR
  2 A$bloxorz$1998     070E GR  |   2 A$bloxorz$200      008A GR
  2 A$bloxorz$2004     0711 GR  |   2 A$bloxorz$2005     0713 GR
  2 A$bloxorz$2006     0715 GR  |   2 A$bloxorz$201      008C GR
  2 A$bloxorz$2012     0718 GR  |   2 A$bloxorz$2013     071A GR
  2 A$bloxorz$2014     071C GR  |   2 A$bloxorz$2015     071F GR
  2 A$bloxorz$2016     0721 GR  |   2 A$bloxorz$2017     0723 GR
  2 A$bloxorz$202      008E GR  |   2 A$bloxorz$2023     0725 GR
  2 A$bloxorz$2024     0727 GR  |   2 A$bloxorz$203      0090 GR
  2 A$bloxorz$2031     072A GR  |   2 A$bloxorz$2032     072D GR
  2 A$bloxorz$2033     0730 GR  |   2 A$bloxorz$2034     0733 GR
  2 A$bloxorz$2035     0736 GR  |   2 A$bloxorz$2036     0739 GR
  2 A$bloxorz$2037     073C GR  |   2 A$bloxorz$2038     073F GR
  2 A$bloxorz$2039     0742 GR  |   2 A$bloxorz$204      0091 GR
  2 A$bloxorz$2040     0745 GR  |   2 A$bloxorz$2046     0748 GR
  2 A$bloxorz$2047     074A GR  |   2 A$bloxorz$205      0092 GR
  2 A$bloxorz$2053     074D GR  |   2 A$bloxorz$2054     074F GR
  2 A$bloxorz$206      0094 GR  |   2 A$bloxorz$2060     0752 GR
  2 A$bloxorz$2066     0755 GR  |   2 A$bloxorz$207      0096 GR
  2 A$bloxorz$2072     0758 GR  |   2 A$bloxorz$2078     075B GR
  2 A$bloxorz$208      0098 GR  |   2 A$bloxorz$209      009A GR
  2 A$bloxorz$2090     075E GR  |   2 A$bloxorz$2096     0761 GR
  2 A$bloxorz$2097     0764 GR  |   2 A$bloxorz$2098     0766 GR
  2 A$bloxorz$2099     076A GR  |   2 A$bloxorz$210      009C GR
  2 A$bloxorz$2100     076B GR  |   2 A$bloxorz$2101     076D GR
  2 A$bloxorz$2102     076E GR  |   2 A$bloxorz$2103     076F GR
  2 A$bloxorz$2104     0771 GR  |   2 A$bloxorz$2119     0783 GR
  2 A$bloxorz$2125     0786 GR  |   2 A$bloxorz$2132     0789 GR
  2 A$bloxorz$2138     078C GR  |   2 A$bloxorz$2145     078F GR
  2 A$bloxorz$2151     0792 GR  |   2 A$bloxorz$2157     0795 GR
  2 A$bloxorz$2164     0798 GR  |   2 A$bloxorz$217      009E GR
  2 A$bloxorz$2170     079B GR  |   2 A$bloxorz$2176     079E GR
  2 A$bloxorz$2183     07A1 GR  |   2 A$bloxorz$2189     07A4 GR
  2 A$bloxorz$2195     07A7 GR  |   2 A$bloxorz$2202     07A9 GR
  2 A$bloxorz$2208     07AC GR  |   2 A$bloxorz$2214     07AF GR
  2 A$bloxorz$2221     07B1 GR  |   2 A$bloxorz$2227     07B4 GR
  2 A$bloxorz$223      00A0 GR  |   2 A$bloxorz$2239     07B7 GR
  2 A$bloxorz$224      00A2 GR  |   2 A$bloxorz$2240     07BA GR
  2 A$bloxorz$2241     07BC GR  |   2 A$bloxorz$2247     07C0 GR
  2 A$bloxorz$225      00A4 GR  |   2 A$bloxorz$2253     07C3 GR
  2 A$bloxorz$2254     07C6 GR  |   2 A$bloxorz$2257     07C8 GR
  2 A$bloxorz$2258     07CA GR  |   2 A$bloxorz$226      00A6 GR
  2 A$bloxorz$2264     07CD GR  |   2 A$bloxorz$227      00A8 GR
  2 A$bloxorz$2270     07D0 GR  |   2 A$bloxorz$2273     07D3 GR
  2 A$bloxorz$228      00AA GR  |   2 A$bloxorz$229      00AD GR
  2 A$bloxorz$230      00AF GR  |   2 A$bloxorz$231      00B1 GR
  2 A$bloxorz$233      00B3 GR  |   2 A$bloxorz$240      00B5 GR
  2 A$bloxorz$241      00B7 GR  |   2 A$bloxorz$242      00B9 GR
  2 A$bloxorz$243      00BB GR  |   2 A$bloxorz$244      00BD GR
  2 A$bloxorz$245      00BF GR  |   2 A$bloxorz$246      00C1 GR
  2 A$bloxorz$247      00C3 GR  |   2 A$bloxorz$248      00C5 GR
  2 A$bloxorz$249      00C7 GR  |   2 A$bloxorz$250      00C9 GR
  2 A$bloxorz$251      00CB GR  |   2 A$bloxorz$252      00CE GR
  2 A$bloxorz$253      00D0 GR  |   2 A$bloxorz$254      00D2 GR
  2 A$bloxorz$255      00D6 GR  |   2 A$bloxorz$256      00D8 GR
  2 A$bloxorz$264      00DA GR  |   2 A$bloxorz$265      00DD GR
  2 A$bloxorz$266      00DF GR  |   2 A$bloxorz$267      00E2 GR
  2 A$bloxorz$273      00E5 GR  |   2 A$bloxorz$274      00E8 GR
  2 A$bloxorz$275      00E9 GR  |   2 A$bloxorz$276      00EC GR
  2 A$bloxorz$277      00EE GR  |   2 A$bloxorz$278      00EF GR
  2 A$bloxorz$279      00F1 GR  |   2 A$bloxorz$280      00F4 GR
  2 A$bloxorz$281      00F6 GR  |   2 A$bloxorz$289      00F7 GR
  2 A$bloxorz$290      00F9 GR  |   2 A$bloxorz$296      00FC GR
  2 A$bloxorz$297      00FF GR  |   2 A$bloxorz$300      0100 GR
  2 A$bloxorz$306      0102 GR  |   2 A$bloxorz$307      0104 GR
  2 A$bloxorz$310      0106 GR  |   2 A$bloxorz$311      0108 GR
  2 A$bloxorz$314      010B GR  |   2 A$bloxorz$317      010D GR
  2 A$bloxorz$320      010F GR  |   2 A$bloxorz$323      0111 GR
  2 A$bloxorz$326      0114 GR  |   2 A$bloxorz$332      0117 GR
  2 A$bloxorz$335      0119 GR  |   2 A$bloxorz$338      011B GR
  2 A$bloxorz$341      011E GR  |   2 A$bloxorz$344      0120 GR
  2 A$bloxorz$347      0124 GR  |   2 A$bloxorz$35       0000 GR
  2 A$bloxorz$350      0128 GR  |   2 A$bloxorz$353      012A GR
  2 A$bloxorz$356      012D GR  |   2 A$bloxorz$359      012F GR
  2 A$bloxorz$36       0002 GR  |   2 A$bloxorz$362      0133 GR
  2 A$bloxorz$365      0137 GR  |   2 A$bloxorz$368      013B GR
  2 A$bloxorz$37       0004 GR  |   2 A$bloxorz$371      013F GR
  2 A$bloxorz$374      0141 GR  |   2 A$bloxorz$377      0144 GR
  2 A$bloxorz$380      0146 GR  |   2 A$bloxorz$383      0148 GR
  2 A$bloxorz$386      014A GR  |   2 A$bloxorz$389      014B GR
  2 A$bloxorz$392      014D GR  |   2 A$bloxorz$395      014F GR
  2 A$bloxorz$396      0151 GR  |   2 A$bloxorz$429      016D GR
  2 A$bloxorz$430      016F GR  |   2 A$bloxorz$436      0171 GR
  2 A$bloxorz$442      0174 GR  |   2 A$bloxorz$443      0176 GR
  2 A$bloxorz$446      0178 GR  |   2 A$bloxorz$447      017A GR
  2 A$bloxorz$453      017D GR  |   2 A$bloxorz$454      017F GR
  2 A$bloxorz$460      0182 GR  |   2 A$bloxorz$461      0184 GR
  2 A$bloxorz$462      0186 GR  |   2 A$bloxorz$463      0188 GR
  2 A$bloxorz$464      018A GR  |   2 A$bloxorz$465      018D GR
  2 A$bloxorz$468      018F GR  |   2 A$bloxorz$469      0191 GR
  2 A$bloxorz$470      0193 GR  |   2 A$bloxorz$471      0195 GR
  2 A$bloxorz$477      0198 GR  |   2 A$bloxorz$478      019A GR
  2 A$bloxorz$479      019C GR  |   2 A$bloxorz$480      019E GR
  2 A$bloxorz$481      01A0 GR  |   2 A$bloxorz$482      01A3 GR
  2 A$bloxorz$485      01A5 GR  |   2 A$bloxorz$486      01A7 GR
  2 A$bloxorz$487      01A9 GR  |   2 A$bloxorz$488      01AB GR
  2 A$bloxorz$49       0006 GR  |   2 A$bloxorz$494      01AE GR
  2 A$bloxorz$495      01B0 GR  |   2 A$bloxorz$496      01B2 GR
  2 A$bloxorz$497      01B4 GR  |   2 A$bloxorz$498      01B6 GR
  2 A$bloxorz$499      01B9 GR  |   2 A$bloxorz$502      01BB GR
  2 A$bloxorz$503      01BD GR  |   2 A$bloxorz$504      01BF GR
  2 A$bloxorz$505      01C1 GR  |   2 A$bloxorz$511      01C4 GR
  2 A$bloxorz$512      01C7 GR  |   2 A$bloxorz$513      01C9 GR
  2 A$bloxorz$519      01CB GR  |   2 A$bloxorz$526      01CD GR
  2 A$bloxorz$527      01CF GR  |   2 A$bloxorz$528      01D1 GR
  2 A$bloxorz$529      01D3 GR  |   2 A$bloxorz$530      01D6 GR
  2 A$bloxorz$531      01D8 GR  |   2 A$bloxorz$532      01DA GR
  2 A$bloxorz$533      01DC GR  |   2 A$bloxorz$534      01DE GR
  2 A$bloxorz$540      01E0 GR  |   2 A$bloxorz$547      01E3 GR
  2 A$bloxorz$548      01E6 GR  |   2 A$bloxorz$549      01E8 GR
  2 A$bloxorz$55       0009 GR  |   2 A$bloxorz$555      01EA GR
  2 A$bloxorz$557      01ED GR  |   2 A$bloxorz$558      01EF GR
  2 A$bloxorz$56       000B GR  |   2 A$bloxorz$561      01F1 GR
  2 A$bloxorz$562      01F3 GR  |   2 A$bloxorz$568      01F5 GR
  2 A$bloxorz$574      01F8 GR  |   2 A$bloxorz$575      01FA GR
  2 A$bloxorz$578      01FC GR  |   2 A$bloxorz$579      01FE GR
  2 A$bloxorz$585      0201 GR  |   2 A$bloxorz$59       000D GR
  2 A$bloxorz$591      0204 GR  |   2 A$bloxorz$592      0206 GR
  2 A$bloxorz$593      0208 GR  |   2 A$bloxorz$594      020A GR
  2 A$bloxorz$595      020C GR  |   2 A$bloxorz$596      020E GR
  2 A$bloxorz$599      0210 GR  |   2 A$bloxorz$60       000F GR
  2 A$bloxorz$600      0212 GR  |   2 A$bloxorz$601      0214 GR
  2 A$bloxorz$607      0217 GR  |   2 A$bloxorz$608      0219 GR
  2 A$bloxorz$609      021B GR  |   2 A$bloxorz$610      021F GR
  2 A$bloxorz$613      0222 GR  |   2 A$bloxorz$614      0224 GR
  2 A$bloxorz$620      0227 GR  |   2 A$bloxorz$626      022A GR
  2 A$bloxorz$627      022C GR  |   2 A$bloxorz$628      022E GR
  2 A$bloxorz$629      0230 GR  |   2 A$bloxorz$630      0232 GR
  2 A$bloxorz$631      0234 GR  |   2 A$bloxorz$634      0236 GR
  2 A$bloxorz$635      0238 GR  |   2 A$bloxorz$636      023A GR
  2 A$bloxorz$642      023D GR  |   2 A$bloxorz$643      023F GR
  2 A$bloxorz$644      0241 GR  |   2 A$bloxorz$647      0244 GR
  2 A$bloxorz$648      0246 GR  |   2 A$bloxorz$654      0249 GR
  2 A$bloxorz$66       0012 GR  |   2 A$bloxorz$660      024C GR
  2 A$bloxorz$661      024E GR  |   2 A$bloxorz$662      0250 GR
  2 A$bloxorz$663      0252 GR  |   2 A$bloxorz$664      0254 GR
  2 A$bloxorz$665      0256 GR  |   2 A$bloxorz$668      0258 GR
  2 A$bloxorz$669      025A GR  |   2 A$bloxorz$67       0014 GR
  2 A$bloxorz$670      025C GR  |   2 A$bloxorz$676      025F GR
  2 A$bloxorz$677      0261 GR  |   2 A$bloxorz$678      0263 GR
  2 A$bloxorz$681      0266 GR  |   2 A$bloxorz$682      0268 GR
  2 A$bloxorz$688      026B GR  |   2 A$bloxorz$694      026E GR
  2 A$bloxorz$695      0270 GR  |   2 A$bloxorz$696      0272 GR
  2 A$bloxorz$697      0274 GR  |   2 A$bloxorz$698      0276 GR
  2 A$bloxorz$701      0278 GR  |   2 A$bloxorz$702      027A GR
  2 A$bloxorz$703      027C GR  |   2 A$bloxorz$709      027F GR
  2 A$bloxorz$710      0281 GR  |   2 A$bloxorz$711      0283 GR
  2 A$bloxorz$714      0286 GR  |   2 A$bloxorz$715      0288 GR
  2 A$bloxorz$721      028B GR  |   2 A$bloxorz$727      028E GR
  2 A$bloxorz$728      0290 GR  |   2 A$bloxorz$729      0292 GR
  2 A$bloxorz$73       0017 GR  |   2 A$bloxorz$730      0294 GR
  2 A$bloxorz$731      0296 GR  |   2 A$bloxorz$732      0298 GR
  2 A$bloxorz$735      029A GR  |   2 A$bloxorz$736      029C GR
  2 A$bloxorz$737      029E GR  |   2 A$bloxorz$74       0019 GR
  2 A$bloxorz$743      02A1 GR  |   2 A$bloxorz$744      02A3 GR
  2 A$bloxorz$745      02A5 GR  |   2 A$bloxorz$748      02A8 GR
  2 A$bloxorz$749      02AA GR  |   2 A$bloxorz$75       001B GR
  2 A$bloxorz$755      02AD GR  |   2 A$bloxorz$76       001D GR
  2 A$bloxorz$761      02B0 GR  |   2 A$bloxorz$762      02B2 GR
  2 A$bloxorz$763      02B4 GR  |   2 A$bloxorz$764      02B6 GR
  2 A$bloxorz$765      02B8 GR  |   2 A$bloxorz$766      02BA GR
  2 A$bloxorz$769      02BC GR  |   2 A$bloxorz$77       001F GR
  2 A$bloxorz$770      02BE GR  |   2 A$bloxorz$771      02C0 GR
  2 A$bloxorz$777      02C3 GR  |   2 A$bloxorz$778      02C5 GR
  2 A$bloxorz$779      02C7 GR  |   2 A$bloxorz$782      02CA GR
  2 A$bloxorz$783      02CC GR  |   2 A$bloxorz$786      02CF GR
  2 A$bloxorz$787      02D1 GR  |   2 A$bloxorz$790      02D3 GR
  2 A$bloxorz$791      02D5 GR  |   2 A$bloxorz$797      02D7 GR
  2 A$bloxorz$798      02D9 GR  |   2 A$bloxorz$80       0022 GR
  2 A$bloxorz$801      02DB GR  |   2 A$bloxorz$802      02DD GR
  2 A$bloxorz$808      02E0 GR  |   2 A$bloxorz$809      02E2 GR
  2 A$bloxorz$81       0024 GR  |   2 A$bloxorz$815      02E5 GR
  2 A$bloxorz$816      02E7 GR  |   2 A$bloxorz$817      02E9 GR
  2 A$bloxorz$818      02EB GR  |   2 A$bloxorz$819      02EE GR
  2 A$bloxorz$82       0026 GR  |   2 A$bloxorz$822      02F0 GR
  2 A$bloxorz$823      02F2 GR  |   2 A$bloxorz$824      02F4 GR
  2 A$bloxorz$825      02F6 GR  |   2 A$bloxorz$828      02F9 GR
  2 A$bloxorz$829      02FB GR  |   2 A$bloxorz$83       0028 GR
  2 A$bloxorz$837      02FD GR  |   2 A$bloxorz$843      0300 GR
  2 A$bloxorz$844      0303 GR  |   2 A$bloxorz$850      0306 GR
  2 A$bloxorz$851      0309 GR  |   2 A$bloxorz$852      030A GR
  2 A$bloxorz$858      030D GR  |   2 A$bloxorz$859      030E GR
  2 A$bloxorz$86       002B GR  |   2 A$bloxorz$865      0310 GR
  2 A$bloxorz$866      0312 GR  |   2 A$bloxorz$868      0315 GR
  2 A$bloxorz$871      0316 GR  |   2 A$bloxorz$877      0318 GR
  2 A$bloxorz$878      031B GR  |   2 A$bloxorz$879      031C GR
  2 A$bloxorz$880      031F GR  |   2 A$bloxorz$881      0320 GR
  2 A$bloxorz$887      0323 GR  |   2 A$bloxorz$888      0326 GR
  2 A$bloxorz$889      0327 GR  |   2 A$bloxorz$890      0328 GR
  2 A$bloxorz$891      032B GR  |   2 A$bloxorz$892      032D GR
  2 A$bloxorz$893      032E GR  |   2 A$bloxorz$894      0331 GR
  2 A$bloxorz$895      0334 GR  |   2 A$bloxorz$901      0337 GR
  2 A$bloxorz$902      033B GR  |   2 A$bloxorz$903      033D GR
  2 A$bloxorz$904      0340 GR  |   2 A$bloxorz$911      0343 GR
  2 A$bloxorz$912      0346 GR  |   2 A$bloxorz$913      0347 GR
  2 A$bloxorz$914      0349 GR  |   2 A$bloxorz$915      034A GR
  2 A$bloxorz$916      034B GR  |   2 A$bloxorz$917      034D GR
  2 A$bloxorz$918      0351 GR  |   2 A$bloxorz$924      0354 GR
  2 A$bloxorz$930      0357 GR  |   2 A$bloxorz$936      035A GR
  2 A$bloxorz$937      035D GR  |   2 A$bloxorz$938      035F GR
  2 A$bloxorz$94       002E GR  |   2 A$bloxorz$944      0362 GR
  2 A$bloxorz$945      0364 GR  |   2 A$bloxorz$95       002F GR
  2 A$bloxorz$951      0367 GR  |   2 A$bloxorz$957      036A GR
  2 A$bloxorz$958      036C GR  |   2 A$bloxorz$964      036F GR
  2 A$bloxorz$965      0371 GR  |   2 A$bloxorz$971      0374 GR
  2 A$bloxorz$972      0377 GR  |   2 A$bloxorz$978      037A GR
  2 A$bloxorz$979      037D GR  |   2 A$bloxorz$985      0380 GR
  2 A$bloxorz$986      0383 GR  |   2 A$bloxorz$987      0385 GR
  2 L10                0058 R   |   2 L100               072A R
  2 L101               07B7 R   |   2 L102               0783 R
  2 L103               0789 R   |   2 L104               078F R
  2 L105               0798 R   |   2 L106               07A1 R
  2 L107               07A9 R   |   2 L108               07B1 R
  2 L109               0775 R   |   2 L11                005A R
  2 L112               075E R   |   2 L14                0079 R
  2 L15                00B3 R   |   2 L16                00B5 R
  2 L17                009E R   |   2 L18                0082 R
  2 L2                 0006 R   |   2 L28                01E3 R
  2 L29                01CD R   |   2 L31                01ED R
  2 L39                0315 R   |   2 L41                0343 R
  2 L44                0439 R   |   2 L45                0445 R
  2 L47                045A R   |   2 L50                04A3 R
  2 L51                04B2 R   |   2 L52                04B5 R
  2 L54                04D4 R   |   2 L56                04DE R
  2 L58                04F1 R   |   2 L61                0512 R
  2 L62                0549 R   |   2 L63                0525 R
  2 L64                0538 R   |   2 L65                0556 R
  2 L66                0572 R   |   2 L67                056F R
  2 L69                0581 R   |   2 L74                063E R
  2 L75                0617 R   |   2 L76                0626 R
  2 L78                0621 R   |   2 L79                0624 R
  2 L8                 0047 R   |   2 L80                062E R
  2 L81                0631 R   |   2 L82                063B R
  2 L83                063E R   |   2 L84                0668 R
  2 L85                0674 R   |   2 L86                06F8 R
  2 L87                0686 R   |   2 L88                06A4 R
  2 L90                0694 R   |   2 L91                06A1 R
  2 L92                06B7 R   |   2 L93                06CB R
  2 L94                06E0 R   |   2 L95                06F8 R
  2 L96                0700 R   |   2 L97                0633 R
  2 L98                06CD R   |   2 LC0                0152 R
  2 LC1                0160 R   |   2 LC2                0167 R
  2 LC3                0386 R   |   2 LC4                0391 R
  2 LC5                039F R   |   2 LC6                03B2 R
    _Vec_Buttons       **** GX  |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp        **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d        **** GX
    ___Print_Str_d     **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
    _blockAnimatin     **** GX  |   2 _blockFalling      04B8 GR
  2 _blockMoving       0597 GR  |   2 _blockMovingAt     045E GR
  2 _blockMovingTo     02FD GR  |     _blockOrientat     **** GX
    _blockStartLev     **** GX  |   2 _blockWaiting      04F5 GR
    _blockX            **** GX  |     _blockY            **** GX
    _blockYOfs         **** GX  |   2 _changeMusic       00F7 GR
  2 _clearMenu         016D GR  |   3 _currentMusic      0000 GR
    _doBlockAnimat     **** GX  |     _dp_VIA_t1_cnt     **** GX
    _drawBlock         **** GX  |   2 _drawField         0100 GR
    _endX              **** GX  |     _endY              **** GX
  2 _fallingMusic      0810 GR  |   4 _gameState         000F GR
    _getField          **** GX  |   4 _infoText          0000 GR
    _initLevel         **** GX  |     _initSwatches      **** GX
    _isField           **** GX  |   2 _itoa              005B GR
    _lastBlockDire     **** GX  |   2 _led8              0838 GR
    _level             **** GX  |     _levelCount        **** GX
  2 _levelEndMusic     07F6 GR  |   4 _levelHighscor     000C GR
    _levelNumber       **** GX  |     _levels            **** GX
    _lineCount         **** GX  |     _lineX0            **** GX
    _lineX1            **** GX  |     _lineY0            **** GX
    _lineY1            **** GX  |   2 _main              0703 GR
  2 _mainMenu          03C2 GR  |   2 _moveBlock         04E1 GR
    _moveBlockImpl     **** GX  |   4 _moveCount         000A GR
  2 _movingMusic       0830 GR  |   4 _picAvailable      000E GR
  2 _readEeprom        0048 GR  |   2 _runtimeError      0000 GR
  2 _sendCommand       002E GR  |   2 _showInfo          02D3 GR
  2 _showInfo2         01F1 GR  |     _splitMode         **** GX
  2 _startBlockFal     0582 GR  |   2 _startLevel        0316 GR
  2 _startMusic        07D6 GR  |     _swapSplit         **** GX
    _swatchSwitch      **** GX  |     _testMerge         **** GX
  2 _updateInfoTex     00DA GR  |   3 _vecx              0002 GR
  2 _writeEeprom       0030 GR  |   2 drawFieldLoop      0117 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  84E   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

