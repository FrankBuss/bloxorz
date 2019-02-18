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
   690D 31 84         [ 4]  173 	leay	,x	;  number.108, number
   690F 8C 03 E7      [ 4]  174 	cmpx	#999	;cmphi:	;  number.108,
   6912 23 04         [ 3]  175 	bls	L14	; 
   6914 10 8E 03 E7   [ 4]  176 	ldy	#999	;  number.108,
   6918                     177 L14:
                            178 ;----- asm -----
                            179 ;  218 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            180 	; #ENR#[196]	for (uint8_t i = 0; i < 3; i++) {
                            181 ;  0 "" 2
                            182 ;--- end asm ---
   6918 30 69         [ 5]  183 	leax	9,s	; ,,
   691A AF 65         [ 6]  184 	stx	5,s	; , ivtmp.104
   691C EC E8 15      [ 6]  185 	ldd	21,s	; , text
   691F ED 67         [ 6]  186 	std	7,s	; , ivtmp.106
   6921                     187 L18:
                            188 ;----- asm -----
                            189 ;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            190 	; #ENR#[197]		uint8_t d = 0;
                            191 ;  0 "" 2
                            192 ;  222 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            193 	; #ENR#[198]		while (number >= muls[i]) {
                            194 ;  0 "" 2
                            195 ;--- end asm ---
   6921 AE 65         [ 6]  196 	ldx	5,s	; , ivtmp.104
   6923 AE 84         [ 5]  197 	ldx	,x	; , muls
   6925 AF E4         [ 5]  198 	stx	,s	; , D.2274
   6927 34 20         [ 6]  199 	pshs	y	;cmphi: R:y with R:x	;  number.108,
   6929 AC E1         [ 9]  200 	cmpx	,s++	;cmphi:	; 
   692B 22 25         [ 3]  201 	bhi	L15	; 
   692D 1F 10         [ 6]  202 	tfr	x,d	; ,
   692F 40            [ 2]  203 	nega
   6930 50            [ 2]  204 	negb
   6931 82 00         [ 2]  205 	sbca	#0
   6933 ED 63         [ 6]  206 	std	3,s	; , ivtmp.96
   6935 1F 20         [ 6]  207 	tfr	y,d	;  number.108,
   6937 A3 E4         [ 6]  208 	subd	,s	;subhi: R:d -= ,s	; , D.2274
   6939 1F 02         [ 6]  209 	tfr	d,y	; , number.108
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
   693F EC 63         [ 6]  223 	ldd	3,s	; , ivtmp.96
   6941 33 AB         [ 8]  224 	leau	d,y	;  number.107,, number.108
   6943 EC E4         [ 5]  225 	ldd	,s	; , D.2274
   6945 30 CB         [ 8]  226 	leax	d,u	;  tmp85,, number.107
   6947 34 10         [ 6]  227 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   6949 10 A3 E1      [10]  228 	cmpd	,s++	;cmphi:	; 
   694C 22 06         [ 3]  229 	bhi	L16	; 
   694E 31 C4         [ 4]  230 	leay	,u	;  number.108, number.107
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
   6958 AE 67         [ 6]  242 	ldx	7,s	; , ivtmp.106
   695A 30 01         [ 5]  243 	leax	1,x	; ,,
   695C AF 67         [ 6]  244 	stx	7,s	; , ivtmp.106
   695E 30 1F         [ 5]  245 	leax	-1,x	; ,,
   6960 E7 80         [ 6]  246 	stb	,x+	; ,
   6962 AE 65         [ 6]  247 	ldx	5,s	; , ivtmp.104
   6964 30 02         [ 5]  248 	leax	2,x	; ,,
   6966 AF 65         [ 6]  249 	stx	5,s	; , ivtmp.104
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
                            302 ;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            313 ;  328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69AA 34 5E         [10]  314 		pshs a, b, dp, x, u
                            315 ;  0 "" 2
                            316 ;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69AC 86 D0         [ 2]  317 		lda #0xd0
                            318 ;  0 "" 2
                            319 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69AE 1F 8B         [ 6]  320 		tfr a, dp
                            321 ;  0 "" 2
                            322 ;  331 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B0 8E 00 00      [ 3]  323 		ldx #0
                            324 ;  0 "" 2
                            325 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B3 F6 C8 80      [ 5]  326 		ldb _lineCount
                            327 ;  0 "" 2
                            328 ;  333 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B6                     329 	drawFieldLoop:
                            330 ;  0 "" 2
                            331 ;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B6 34 04         [ 6]  332 		pshs b
                            333 ;  0 "" 2
                            334 ;  335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69B8 34 10         [ 6]  335 		pshs x
                            336 ;  0 "" 2
                            337 ;  336 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69BA BD F3 54      [ 8]  338 		jsr 0xf354
                            339 ;  0 "" 2
                            340 ;  337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69BD 35 10         [ 6]  341 		puls x
                            342 ;  0 "" 2
                            343 ;  338 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69BF A6 89 C9 7F   [ 8]  344 		lda _lineY0,x
                            345 ;  0 "" 2
                            346 ;  339 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69C3 E6 89 C9 07   [ 8]  347 		ldb _lineX0,x
                            348 ;  0 "" 2
                            349 ;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69C7 34 10         [ 6]  350 		pshs x
                            351 ;  0 "" 2
                            352 ;  341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69C9 BD F2 FC      [ 8]  353 		jsr 0xf2fc
                            354 ;  0 "" 2
                            355 ;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69CC 35 10         [ 6]  356 		puls x
                            357 ;  0 "" 2
                            358 ;  343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69CE A6 89 CA 6F   [ 8]  359 		lda _lineY1,x
                            360 ;  0 "" 2
                            361 ;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69D2 E6 89 C9 F7   [ 8]  362 		ldb _lineX1,x
                            363 ;  0 "" 2
                            364 ;  345 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69D6 A0 89 C9 7F   [ 8]  365 		suba _lineY0,x
                            366 ;  0 "" 2
                            367 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69DA E0 89 C9 07   [ 8]  368 		subb _lineX0,x
                            369 ;  0 "" 2
                            370 ;  347 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69DE 34 10         [ 6]  371 		pshs x
                            372 ;  0 "" 2
                            373 ;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E0 BD F3 DF      [ 8]  374 		jsr 0xf3df
                            375 ;  0 "" 2
                            376 ;  349 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E3 35 10         [ 6]  377 		puls x
                            378 ;  0 "" 2
                            379 ;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E5 A6 80         [ 6]  380 		lda ,x+
                            381 ;  0 "" 2
                            382 ;  351 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E7 35 04         [ 6]  383 		puls b
                            384 ;  0 "" 2
                            385 ;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69E9 5A            [ 2]  386 		decb
                            387 ;  0 "" 2
                            388 ;  353 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   69EA 26 CA         [ 3]  389 		bne drawFieldLoop
                            390 ;  0 "" 2
                            391 ;  354 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            432 ;  639 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            433 	; #ENR#[476]	Read_Btns();
                            434 ;  0 "" 2
                            435 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A10 BD F1 BA      [ 8]  436 	jsr ___Read_Btns; BIOS call
                            437 ;  0 "" 2
                            438 ;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            449 ;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            450 	; #ENR#[478]    Vec_Text_Width = 90;
                            451 ;  0 "" 2
                            452 ;--- end asm ---
   6A1C C6 5A         [ 2]  453 	ldb	#90	; ,
   6A1E F7 C8 2B      [ 5]  454 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            455 ;----- asm -----
                            456 ;  645 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            473 ;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            490 ;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            507 ;  651 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            508 	; #ENR#[482]	if (Vec_Buttons & 4) {
                            509 ;  0 "" 2
                            510 ;--- end asm ---
   6A63 F6 C8 11      [ 5]  511 	ldb	_Vec_Buttons	; , Vec_Buttons
   6A66 C5 04         [ 2]  512 	bitb	#4	; ,
   6A68 27 18         [ 3]  513 	beq	L28	; 
                            514 ;----- asm -----
                            515 ;  653 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            516 	; #ENR#[483]		for (uint8_t i = 0; i < 6; i++) {
                            517 ;  0 "" 2
                            518 ;--- end asm ---
   6A6A 6F E4         [ 6]  519 	clr	,s	;  i
   6A6C                     520 L29:
                            521 ;----- asm -----
                            522 ;  655 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            536 ;  658 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            537 	; #ENR#[486]		gameState = MainMenu;
                            538 ;  0 "" 2
                            539 ;--- end asm ---
   6A7F 7F CA F6      [ 7]  540 	clr	_gameState	;  gameState
   6A82                     541 L28:
                            542 ;----- asm -----
                            543 ;  661 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            544 	; #ENR#[488]	if (Vec_Buttons & 8) {
                            545 ;  0 "" 2
                            546 ;--- end asm ---
   6A82 F6 C8 11      [ 5]  547 	ldb	_Vec_Buttons	; , Vec_Buttons
   6A85 C5 08         [ 2]  548 	bitb	#8	; ,
   6A87 27 03         [ 3]  549 	beq	L31	; 
                            550 ;----- asm -----
                            551 ;  663 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            564 ;  681 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            565 	; #ENR#[506]	zergnd();
                            566 ;  0 "" 2
                            567 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6A94 BD F3 54      [ 8]  568 	jsr ___Reset0Ref; BIOS call
                            569 ;  0 "" 2
                            570 ;  683 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            581 ;  686 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            582 	; #ENR#[509]	zergnd();
                            583 ;  0 "" 2
                            584 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AA0 BD F3 54      [ 8]  585 	jsr ___Reset0Ref; BIOS call
                            586 ;  0 "" 2
                            587 ;  688 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            603 ;  690 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            604 	; #ENR#[511]	pack1x((void*)led8);
                            605 ;  0 "" 2
                            606 ;--- end asm ---
   6AB6 C6 80         [ 2]  607 	ldb	#-128	; ,
   6AB8 D7 04         [ 4]  608 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   6ABA 10 8E 70 F3   [ 4]  609 	ldy	#_led8	;  tmp27,
   6ABE 10 AF E4      [ 6]  610 	sty	,s	;  tmp27, x
                            611 ;----- asm -----
                            612 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AC1 AE E4         [ 5]  613 	ldx ,s	;  x
   6AC3 BD F4 10      [ 8]  614 	jsr ___Draw_VLp; BIOS call
                            615 ;  0 "" 2
                            616 ;  693 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            617 	; #ENR#[513]	zergnd();
                            618 ;  0 "" 2
                            619 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AC6 BD F3 54      [ 8]  620 	jsr ___Reset0Ref; BIOS call
                            621 ;  0 "" 2
                            622 ;  695 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            638 ;  697 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            650 ;  700 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            651 	; #ENR#[517]	zergnd();
                            652 ;  0 "" 2
                            653 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6AE8 BD F3 54      [ 8]  654 	jsr ___Reset0Ref; BIOS call
                            655 ;  0 "" 2
                            656 ;  702 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            672 ;  704 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            684 ;  707 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            685 	; #ENR#[521]	zergnd();
                            686 ;  0 "" 2
                            687 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B0A BD F3 54      [ 8]  688 	jsr ___Reset0Ref; BIOS call
                            689 ;  0 "" 2
                            690 ;  709 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            705 ;  711 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            717 ;  714 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            718 	; #ENR#[525]	zergnd();
                            719 ;  0 "" 2
                            720 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B2A BD F3 54      [ 8]  721 	jsr ___Reset0Ref; BIOS call
                            722 ;  0 "" 2
                            723 ;  716 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            739 ;  718 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            751 ;  721 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            752 	; #ENR#[529]	zergnd();
                            753 ;  0 "" 2
                            754 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6B4C BD F3 54      [ 8]  755 	jsr ___Reset0Ref; BIOS call
                            756 ;  0 "" 2
                            757 ;  723 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            773 ;  725 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            793 ;  731 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            804 ;  733 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            805 	; #ENR#[537]    Vec_Text_Width = 100;
                            806 ;  0 "" 2
                            807 ;--- end asm ---
   6B7F C6 64         [ 2]  808 	ldb	#100	; ,
   6B81 F7 C8 2B      [ 5]  809 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            810 ;----- asm -----
                            811 ;  735 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            833 ;  360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            834 	; #ENR#[304]	drawField();
                            835 ;  0 "" 2
                            836 ;--- end asm ---
   6B9C BD 69 9F      [ 8]  837 	jsr	_drawField	; 
                            838 ;----- asm -----
                            839 ;  362 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            840 	; #ENR#[305]	drawBlock(blockYOfs);
                            841 ;  0 "" 2
                            842 ;--- end asm ---
   6B9F F6 C8 89      [ 5]  843 	ldb	_blockYOfs	; , blockYOfs
   6BA2 BD 24 B4      [ 8]  844 	jsr	_drawBlock	; 
                            845 ;----- asm -----
                            846 ;  364 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            847 	; #ENR#[306]	blockYOfs++;
                            848 ;  0 "" 2
                            849 ;--- end asm ---
   6BA5 F6 C8 89      [ 5]  850 	ldb	_blockYOfs	;  blockYOfs.22, blockYOfs
   6BA8 5C            [ 2]  851 	incb	;  blockYOfs.22
   6BA9 F7 C8 89      [ 5]  852 	stb	_blockYOfs	;  blockYOfs.22, blockYOfs
                            853 ;----- asm -----
                            854 ;  366 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            855 	; #ENR#[307]	if (blockYOfs == 0) {
                            856 ;  0 "" 2
                            857 ;--- end asm ---
   6BAC 5D            [ 2]  858 	tstb	;  blockYOfs.22
   6BAD 26 05         [ 3]  859 	bne	L39	; 
                            860 ;----- asm -----
                            861 ;  368 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
                            873 ;  277 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            874 	; #ENR#[237]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                            875 ;  0 "" 2
                            876 ;--- end asm ---
   6BB7 F6 C8 83      [ 5]  877 	ldb	_levelNumber	;  tmp30, levelNumber
   6BBA 58            [ 2]  878 	aslb	;  tmp30
   6BBB BD 68 E7      [ 8]  879 	jsr	_readEeprom	; 
   6BBE 4F            [ 2]  880 	clra		;zero_extendqihi: R:b -> R:d	;  D.2302, D.2302
   6BBF FD CA F3      [ 6]  881 	std	_levelHighscore	;  D.2302, levelHighscore
                            882 ;----- asm -----
                            883 ;  279 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
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
   6BD3 FD CA F3      [ 6]  895 	std	_levelHighscore	;  levelHighscore.15, levelHighscore
                            896 ;----- asm -----
                            897 ;  281 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            898 	; #ENR#[239]	if (levelHighscore == 0) levelHighscore = 999;
                            899 ;  0 "" 2
                            900 ;--- end asm ---
   6BD6 10 83 00 00   [ 5]  901 	cmpd	#0	;  levelHighscore.15
   6BDA 26 06         [ 3]  902 	bne	L41	; 
   6BDC 8E 03 E7      [ 3]  903 	ldx	#999	; ,
   6BDF BF CA F3      [ 6]  904 	stx	_levelHighscore	; , levelHighscore
   6BE2                     905 L41:
                            906 ;----- asm -----
                            907 ;  283 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            908 	; #ENR#[240]    level = levels[levelNumber];
                            909 ;  0 "" 2
                            910 ;--- end asm ---
   6BE2 F6 C8 83      [ 5]  911 	ldb	_levelNumber	; , levelNumber
   6BE5 4F            [ 2]  912 	clra		;zero_extendqihi: R:b -> R:d	; ,
   6BE6 ED E4         [ 5]  913 	std	,s	; ,
   6BE8 58            [ 2]  914 	aslb	; 
   6BE9 49            [ 2]  915 	rola	; 
   6BEA 1F 01         [ 6]  916 	tfr	d,x	; , tmp39
   6BEC AE 89 89 F2   [ 9]  917 	ldx	_levels,x	; , levels
   6BF0 BF C8 F2      [ 6]  918 	stx	_level	; , level
                            919 ;----- asm -----
                            920 ;  285 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            921 	; #ENR#[241]	initSwatches();
                            922 ;  0 "" 2
                            923 ;--- end asm ---
   6BF3 BD 58 60      [ 8]  924 	jsr	_initSwatches	; 
                            925 ;----- asm -----
                            926 ;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            927 	; #ENR#[242]	initLevel();
                            928 ;  0 "" 2
                            929 ;--- end asm ---
   6BF6 BD 5C 1D      [ 8]  930 	jsr	_initLevel	; 
                            931 ;----- asm -----
                            932 ;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            933 	; #ENR#[243]	blockX = level->start.x;
                            934 ;  0 "" 2
                            935 ;--- end asm ---
   6BF9 BE C8 F2      [ 6]  936 	ldx	_level	;  level, level
   6BFC E6 02         [ 5]  937 	ldb	2,x	; , <variable>.start.x
   6BFE F7 C8 8D      [ 5]  938 	stb	_blockX	; , blockX
                            939 ;----- asm -----
                            940 ;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            941 	; #ENR#[244]	blockY = level->start.y;
                            942 ;  0 "" 2
                            943 ;--- end asm ---
   6C01 E6 03         [ 5]  944 	ldb	3,x	; , <variable>.start.y
   6C03 F7 C8 8E      [ 5]  945 	stb	_blockY	; , blockY
                            946 ;----- asm -----
                            947 ;  293 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            948 	; #ENR#[245]	blockStartLevel();
                            949 ;  0 "" 2
                            950 ;--- end asm ---
   6C06 BD 23 DB      [ 8]  951 	jsr	_blockStartLevel	; 
                            952 ;----- asm -----
                            953 ;  295 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            954 	; #ENR#[246]	blockYOfs = -30;
                            955 ;  0 "" 2
                            956 ;--- end asm ---
   6C09 C6 E2         [ 2]  957 	ldb	#-30	; ,
   6C0B F7 C8 89      [ 5]  958 	stb	_blockYOfs	; , blockYOfs
                            959 ;----- asm -----
                            960 ;  297 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            961 	; #ENR#[247]	gameState = BlockMovingToStart;
                            962 ;  0 "" 2
                            963 ;--- end asm ---
   6C0E C6 02         [ 2]  964 	ldb	#2	; ,
   6C10 F7 CA F6      [ 5]  965 	stb	_gameState	; , gameState
                            966 ;----- asm -----
                            967 ;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            968 	; #ENR#[248]	changeMusic(startMusic);
                            969 ;  0 "" 2
                            970 ;--- end asm ---
   6C13 8E 70 91      [ 3]  971 	ldx	#_startMusic	; ,
   6C16 BD 69 96      [ 8]  972 	jsr	_changeMusic	; 
                            973 ;----- asm -----
                            974 ;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            975 	; #ENR#[249]	*vecx = 2;
                            976 ;  0 "" 2
                            977 ;--- end asm ---
   6C19 C6 02         [ 2]  978 	ldb	#2	; ,
   6C1B E7 9F C8 86   [ 9]  979 	stb	[_vecx]	; ,* vecx
                            980 ;----- asm -----
                            981 ;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            982 	; #ENR#[250]	moveCount = 0;
                            983 ;  0 "" 2
                            984 ;--- end asm ---
   6C1F CC 00 00      [ 3]  985 	ldd	#0	; ,
   6C22 FD CA F1      [ 6]  986 	std	_moveCount	; , moveCount
                            987 ;----- asm -----
                            988 ;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            989 	; #ENR#[251]	updateInfoText();
                            990 ;  0 "" 2
                            991 ;--- end asm ---
   6C25 BD 69 79      [ 8]  992 	jsr	_updateInfoText	; 
   6C28 32 62         [ 5]  993 	leas	2,s	; ,,
   6C2A 39            [ 5]  994 	rts
   6C2B                     995 LC3:
   6C2B 4D                  996 	.byte	0x4D
   6C2C 41                  997 	.byte	0x41
   6C2D 49                  998 	.byte	0x49
   6C2E 4E                  999 	.byte	0x4E
   6C2F 20                 1000 	.byte	0x20
   6C30 4D                 1001 	.byte	0x4D
   6C31 45                 1002 	.byte	0x45
   6C32 4E                 1003 	.byte	0x4E
   6C33 55                 1004 	.byte	0x55
   6C34 80                 1005 	.byte	0x80
   6C35 00                 1006 	.byte	0x00
   6C36                    1007 LC4:
   6C36 31                 1008 	.byte	0x31
   6C37 20                 1009 	.byte	0x20
   6C38 53                 1010 	.byte	0x53
   6C39 54                 1011 	.byte	0x54
   6C3A 41                 1012 	.byte	0x41
   6C3B 52                 1013 	.byte	0x52
   6C3C 54                 1014 	.byte	0x54
   6C3D 20                 1015 	.byte	0x20
   6C3E 47                 1016 	.byte	0x47
   6C3F 41                 1017 	.byte	0x41
   6C40 4D                 1018 	.byte	0x4D
   6C41 45                 1019 	.byte	0x45
   6C42 80                 1020 	.byte	0x80
   6C43 00                 1021 	.byte	0x00
   6C44                    1022 LC5:
   6C44 32                 1023 	.byte	0x32
   6C45 20                 1024 	.byte	0x20
   6C46 43                 1025 	.byte	0x43
   6C47 4C                 1026 	.byte	0x4C
   6C48 45                 1027 	.byte	0x45
   6C49 41                 1028 	.byte	0x41
   6C4A 52                 1029 	.byte	0x52
   6C4B 20                 1030 	.byte	0x20
   6C4C 48                 1031 	.byte	0x48
   6C4D 49                 1032 	.byte	0x49
   6C4E 47                 1033 	.byte	0x47
   6C4F 48                 1034 	.byte	0x48
   6C50 53                 1035 	.byte	0x53
   6C51 43                 1036 	.byte	0x43
   6C52 4F                 1037 	.byte	0x4F
   6C53 52                 1038 	.byte	0x52
   6C54 45                 1039 	.byte	0x45
   6C55 80                 1040 	.byte	0x80
   6C56 00                 1041 	.byte	0x00
   6C57                    1042 LC6:
   6C57 33                 1043 	.byte	0x33
   6C58 20                 1044 	.byte	0x20
   6C59 42                 1045 	.byte	0x42
   6C5A 41                 1046 	.byte	0x41
   6C5B 4E                 1047 	.byte	0x4E
   6C5C 4B                 1048 	.byte	0x4B
   6C5D 49                 1049 	.byte	0x49
   6C5E 4E                 1050 	.byte	0x4E
   6C5F 47                 1051 	.byte	0x47
   6C60 20                 1052 	.byte	0x20
   6C61 54                 1053 	.byte	0x54
   6C62 45                 1054 	.byte	0x45
   6C63 53                 1055 	.byte	0x53
   6C64 54                 1056 	.byte	0x54
   6C65 80                 1057 	.byte	0x80
   6C66 00                 1058 	.byte	0x00
                           1059 	.globl _mainMenu
   6C67                    1060 _mainMenu:
   6C67 34 40         [ 6] 1061 	pshs	u	; 
   6C69 32 7C         [ 5] 1062 	leas	-4,s	; ,,
                           1063 ;----- asm -----
                           1064 ;  605 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1065 	; #ENR#[455]	Read_Btns();
                           1066 ;  0 "" 2
                           1067 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C6B BD F1 BA      [ 8] 1068 	jsr ___Read_Btns; BIOS call
                           1069 ;  0 "" 2
                           1070 ;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1071 	; #ENR#[456]    Intensity_a(0x5f);
                           1072 ;  0 "" 2
                           1073 ;--- end asm ---
   6C6E C6 5F         [ 2] 1074 	ldb	#95	; ,
   6C70 E7 62         [ 5] 1075 	stb	2,s	; , a
                           1076 ;----- asm -----
                           1077 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C72 A6 62         [ 5] 1078 	lda 2,s	;  a
   6C74 BD F2 AB      [ 8] 1079 	jsr ___Intensity_a; BIOS call
                           1080 ;  0 "" 2
                           1081 ;  609 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1082 	; #ENR#[457]    Vec_Text_Width = 90;
                           1083 ;  0 "" 2
                           1084 ;--- end asm ---
   6C77 C6 5A         [ 2] 1085 	ldb	#90	; ,
   6C79 F7 C8 2B      [ 5] 1086 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1087 ;----- asm -----
                           1088 ;  611 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1089 	; #ENR#[458]    Print_Str_d(100, -70, "MAIN MENU�");
                           1090 ;  0 "" 2
                           1091 ;--- end asm ---
   6C7C CB 0A         [ 2] 1092 	addb	#10	; ,
   6C7E E7 62         [ 5] 1093 	stb	2,s	; , a
   6C80 C6 BA         [ 2] 1094 	ldb	#-70	; ,
   6C82 E7 63         [ 5] 1095 	stb	3,s	; , b
   6C84 8E 6C 2B      [ 3] 1096 	ldx	#LC3	; ,
   6C87 AF E4         [ 5] 1097 	stx	,s	; , u
                           1098 ;----- asm -----
                           1099 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C89 A6 62         [ 5] 1100 	lda 2,s	;  a
   6C8B E6 63         [ 5] 1101 	ldb 3,s	;  b
   6C8D EE E4         [ 5] 1102 	ldu ,s	;  u
   6C8F BD F3 7A      [ 8] 1103 	jsr ___Print_Str_d; BIOS call
                           1104 ;  0 "" 2
                           1105 ;  613 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1106 	; #ENR#[459]    Print_Str_d(50, -110, "1 START GAME�");
                           1107 ;  0 "" 2
                           1108 ;--- end asm ---
   6C92 C6 32         [ 2] 1109 	ldb	#50	; ,
   6C94 E7 63         [ 5] 1110 	stb	3,s	; , a
   6C96 C6 92         [ 2] 1111 	ldb	#-110	; ,
   6C98 E7 62         [ 5] 1112 	stb	2,s	; , b
   6C9A 8E 6C 36      [ 3] 1113 	ldx	#LC4	; ,
   6C9D AF E4         [ 5] 1114 	stx	,s	; , u
                           1115 ;----- asm -----
                           1116 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6C9F A6 63         [ 5] 1117 	lda 3,s	;  a
   6CA1 E6 62         [ 5] 1118 	ldb 2,s	;  b
   6CA3 EE E4         [ 5] 1119 	ldu ,s	;  u
   6CA5 BD F3 7A      [ 8] 1120 	jsr ___Print_Str_d; BIOS call
                           1121 ;  0 "" 2
                           1122 ;  615 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1123 	; #ENR#[460]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
                           1124 ;  0 "" 2
                           1125 ;--- end asm ---
   6CA8 C6 14         [ 2] 1126 	ldb	#20	; ,
   6CAA E7 62         [ 5] 1127 	stb	2,s	; , a
   6CAC C6 92         [ 2] 1128 	ldb	#-110	; ,
   6CAE E7 63         [ 5] 1129 	stb	3,s	; , b
   6CB0 8E 6C 44      [ 3] 1130 	ldx	#LC5	; ,
   6CB3 AF E4         [ 5] 1131 	stx	,s	; , u
                           1132 ;----- asm -----
                           1133 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6CB5 A6 62         [ 5] 1134 	lda 2,s	;  a
   6CB7 E6 63         [ 5] 1135 	ldb 3,s	;  b
   6CB9 EE E4         [ 5] 1136 	ldu ,s	;  u
   6CBB BD F3 7A      [ 8] 1137 	jsr ___Print_Str_d; BIOS call
                           1138 ;  0 "" 2
                           1139 ;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1140 	; #ENR#[461]    Print_Str_d(-10, -110, "3 BANKING TEST�");
                           1141 ;  0 "" 2
                           1142 ;--- end asm ---
   6CBE C6 F6         [ 2] 1143 	ldb	#-10	; ,
   6CC0 E7 63         [ 5] 1144 	stb	3,s	; , a
   6CC2 C6 92         [ 2] 1145 	ldb	#-110	; ,
   6CC4 E7 62         [ 5] 1146 	stb	2,s	; , b
   6CC6 8E 6C 57      [ 3] 1147 	ldx	#LC6	; ,
   6CC9 AF E4         [ 5] 1148 	stx	,s	; , u
                           1149 ;----- asm -----
                           1150 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6CCB A6 63         [ 5] 1151 	lda 3,s	;  a
   6CCD E6 62         [ 5] 1152 	ldb 2,s	;  b
   6CCF EE E4         [ 5] 1153 	ldu ,s	;  u
   6CD1 BD F3 7A      [ 8] 1154 	jsr ___Print_Str_d; BIOS call
                           1155 ;  0 "" 2
                           1156 ;  619 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1157 	; #ENR#[462]	if (Vec_Buttons & 1) {
                           1158 ;  0 "" 2
                           1159 ;--- end asm ---
   6CD4 F6 C8 11      [ 5] 1160 	ldb	_Vec_Buttons	; , Vec_Buttons
   6CD7 C5 01         [ 2] 1161 	bitb	#1	; ,
   6CD9 27 03         [ 3] 1162 	beq	L44	; 
                           1163 ;----- asm -----
                           1164 ;  621 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1165 	; #ENR#[463]		startLevel();
                           1166 ;  0 "" 2
                           1167 ;--- end asm ---
   6CDB BD 6B B5      [ 8] 1168 	jsr	_startLevel	; 
   6CDE                    1169 L44:
                           1170 ;----- asm -----
                           1171 ;  624 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1172 	; #ENR#[465]	if (Vec_Buttons & 2) {
                           1173 ;  0 "" 2
                           1174 ;--- end asm ---
   6CDE F6 C8 11      [ 5] 1175 	ldb	_Vec_Buttons	; , Vec_Buttons
   6CE1 C5 02         [ 2] 1176 	bitb	#2	; ,
   6CE3 27 05         [ 3] 1177 	beq	L45	; 
                           1178 ;----- asm -----
                           1179 ;  626 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1180 	; #ENR#[466]		gameState = ClearMenu;
                           1181 ;  0 "" 2
                           1182 ;--- end asm ---
   6CE5 C6 01         [ 2] 1183 	ldb	#1	; ,
   6CE7 F7 CA F6      [ 5] 1184 	stb	_gameState	; , gameState
   6CEA                    1185 L45:
                           1186 ;----- asm -----
                           1187 ;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1188 	; #ENR#[468]	if (Vec_Buttons & 4) {
                           1189 ;  0 "" 2
                           1190 ;--- end asm ---
   6CEA F6 C8 11      [ 5] 1191 	ldb	_Vec_Buttons	; , Vec_Buttons
   6CED C5 04         [ 2] 1192 	bitb	#4	; ,
   6CEF 27 0E         [ 3] 1193 	beq	L47	; 
                           1194 ;----- asm -----
                           1195 ;  631 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1196 	; #ENR#[469]		sendCommand(CMD_SET_BANK, 1);
                           1197 ;  0 "" 2
                           1198 ;--- end asm ---
   6CF1 C6 01         [ 2] 1199 	ldb	#1	; ,
   6CF3 E7 E2         [ 6] 1200 	stb	,-s	; ,
   6CF5 C6 05         [ 2] 1201 	ldb	#5	; ,
   6CF7 BD 68 CD      [ 8] 1202 	jsr	_sendCommand	; 
                           1203 ;----- asm -----
                           1204 ;  633 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   6CFA 7E F0 00      [ 4] 1205 		jmp 0xf000
                           1206 ;  0 "" 2
                           1207 ;--- end asm ---
   6CFD 32 61         [ 5] 1208 	leas	1,s	; ,,
   6CFF                    1209 L47:
   6CFF 32 64         [ 5] 1210 	leas	4,s	; ,,
   6D01 35 C0         [ 7] 1211 	puls	u,pc	; 
                           1212 	.globl _blockMovingAtEnd
   6D03                    1213 _blockMovingAtEnd:
   6D03 32 7E         [ 5] 1214 	leas	-2,s	; ,,
                           1215 ;----- asm -----
                           1216 ;  579 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1217 	; #ENR#[439]	drawField();
                           1218 ;  0 "" 2
                           1219 ;--- end asm ---
   6D05 BD 69 9F      [ 8] 1220 	jsr	_drawField	; 
                           1221 ;----- asm -----
                           1222 ;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1223 	; #ENR#[440]	drawBlock(blockYOfs);
                           1224 ;  0 "" 2
                           1225 ;--- end asm ---
   6D08 F6 C8 89      [ 5] 1226 	ldb	_blockYOfs	; , blockYOfs
   6D0B BD 24 B4      [ 8] 1227 	jsr	_drawBlock	; 
                           1228 ;----- asm -----
                           1229 ;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1230 	; #ENR#[441]	blockYOfs++;
                           1231 ;  0 "" 2
                           1232 ;--- end asm ---
   6D0E F6 C8 89      [ 5] 1233 	ldb	_blockYOfs	;  blockYOfs.49, blockYOfs
   6D11 5C            [ 2] 1234 	incb	;  blockYOfs.49
   6D12 F7 C8 89      [ 5] 1235 	stb	_blockYOfs	;  blockYOfs.49, blockYOfs
                           1236 ;----- asm -----
                           1237 ;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1238 	; #ENR#[442]	if (blockYOfs == 30) {
                           1239 ;  0 "" 2
                           1240 ;--- end asm ---
   6D15 C1 1E         [ 2] 1241 	cmpb	#30	;cmpqi:	;  blockYOfs.49,
   6D17 10 26 00 3F   [ 6] 1242 	lbne	L52	; 
                           1243 ;----- asm -----
                           1244 ;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1245 	; #ENR#[443]		if (moveCount < levelHighscore) {
                           1246 ;  0 "" 2
                           1247 ;--- end asm ---
   6D1B BE CA F1      [ 6] 1248 	ldx	_moveCount	;  moveCount.50, moveCount
   6D1E BC CA F3      [ 7] 1249 	cmpx	_levelHighscore	;cmphi:	;  moveCount.50, levelHighscore
   6D21 24 25         [ 3] 1250 	bhs	L50	; 
                           1251 ;----- asm -----
                           1252 ;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1253 	; #ENR#[444]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           1254 ;  0 "" 2
                           1255 ;--- end asm ---
   6D23 F6 C8 83      [ 5] 1256 	ldb	_levelNumber	; , levelNumber
   6D26 58            [ 2] 1257 	aslb	; 
   6D27 E7 E4         [ 4] 1258 	stb	,s	; ,
   6D29 1F 10         [ 6] 1259 	tfr	x,d	;  moveCount.50,
   6D2B 34 04         [ 6] 1260 	pshs	b	; 
   6D2D E6 61         [ 5] 1261 	ldb	1,s	; ,
   6D2F BD 68 CF      [ 8] 1262 	jsr	_writeEeprom	; 
                           1263 ;----- asm -----
                           1264 ;  591 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1265 	; #ENR#[445]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           1266 ;  0 "" 2
                           1267 ;--- end asm ---
   6D32 F6 C8 83      [ 5] 1268 	ldb	_levelNumber	;  tmp31, levelNumber
   6D35 58            [ 2] 1269 	aslb	;  tmp31
   6D36 5C            [ 2] 1270 	incb	;  tmp31
   6D37 E7 62         [ 5] 1271 	stb	2,s	;  tmp31,
   6D39 FC CA F1      [ 6] 1272 	ldd	_moveCount	;  tmp33, moveCount
   6D3C 1F 89         [ 6] 1273 	tfr	a,b	; ,
   6D3E 4F            [ 2] 1274 	clra		;zero_extendqihi: R:b -> R:d	; ,
   6D3F 34 04         [ 6] 1275 	pshs	b	;  tmp33
   6D41 E6 63         [ 5] 1276 	ldb	3,s	; ,
   6D43 BD 68 CF      [ 8] 1277 	jsr	_writeEeprom	; 
   6D46 32 62         [ 5] 1278 	leas	2,s	; ,,
   6D48                    1279 L50:
                           1280 ;----- asm -----
                           1281 ;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1282 	; #ENR#[447]		levelNumber++;
                           1283 ;  0 "" 2
                           1284 ;--- end asm ---
   6D48 F6 C8 83      [ 5] 1285 	ldb	_levelNumber	;  levelNumber.53, levelNumber
   6D4B 5C            [ 2] 1286 	incb	;  levelNumber.53
   6D4C F7 C8 83      [ 5] 1287 	stb	_levelNumber	;  levelNumber.53, levelNumber
                           1288 ;----- asm -----
                           1289 ;  596 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1290 	; #ENR#[448]		if (levelNumber >= levelCount) levelNumber = 0;
                           1291 ;  0 "" 2
                           1292 ;--- end asm ---
   6D4F F1 71 77      [ 5] 1293 	cmpb	_levelCount	;cmpqi:	;  levelNumber.53, levelCount
   6D52 25 03         [ 3] 1294 	blo	L51	; 
   6D54 7F C8 83      [ 7] 1295 	clr	_levelNumber	;  levelNumber
   6D57                    1296 L51:
                           1297 ;----- asm -----
                           1298 ;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1299 	; #ENR#[449]		startLevel();
                           1300 ;  0 "" 2
                           1301 ;--- end asm ---
   6D57 BD 6B B5      [ 8] 1302 	jsr	_startLevel	; 
   6D5A                    1303 L52:
   6D5A 32 62         [ 5] 1304 	leas	2,s	; ,,
   6D5C 39            [ 5] 1305 	rts
                           1306 	.globl _blockFalling
   6D5D                    1307 _blockFalling:
   6D5D 32 7F         [ 5] 1308 	leas	-1,s	; ,,
                           1309 ;----- asm -----
                           1310 ;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1311 	; #ENR#[426]	drawField();
                           1312 ;  0 "" 2
                           1313 ;--- end asm ---
   6D5F BD 69 9F      [ 8] 1314 	jsr	_drawField	; 
                           1315 ;----- asm -----
                           1316 ;  561 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1317 	; #ENR#[427]	blockYOfs++;
                           1318 ;  0 "" 2
                           1319 ;--- end asm ---
   6D62 F6 C8 89      [ 5] 1320 	ldb	_blockYOfs	; , blockYOfs
   6D65 5C            [ 2] 1321 	incb	; 
   6D66 E7 E4         [ 4] 1322 	stb	,s	; , blockYOfs.47
   6D68 F7 C8 89      [ 5] 1323 	stb	_blockYOfs	; , blockYOfs
                           1324 ;----- asm -----
                           1325 ;  563 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1326 	; #ENR#[428]	if (blockYOfs < 12) {
                           1327 ;  0 "" 2
                           1328 ;--- end asm ---
   6D6B C1 0B         [ 2] 1329 	cmpb	#11	;cmpqi:	; ,
   6D6D 2E 0A         [ 3] 1330 	bgt	L54	; 
                           1331 ;----- asm -----
                           1332 ;  565 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1333 	; #ENR#[429]		drawBlock(-blockYOfs*blockYOfs);
                           1334 ;  0 "" 2
                           1335 ;--- end asm ---
   6D6F 50            [ 2] 1336 	negb	;  tmp28
   6D70 A6 E4         [ 4] 1337 	lda	,s	;mulqihi3	;  blockYOfs.47
   6D72 3D            [11] 1338 	mul
                           1339 		;movlsbqihi: D->B
   6D73 BD 24 B4      [ 8] 1340 	jsr	_drawBlock	; 
                           1341 ;----- asm -----
                           1342 ;  567 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1343 	; #ENR#[430]		doBlockAnimation();
                           1344 ;  0 "" 2
                           1345 ;--- end asm ---
   6D76 BD 23 B2      [ 8] 1346 	jsr	_doBlockAnimation	; 
   6D79                    1347 L54:
                           1348 ;----- asm -----
                           1349 ;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1350 	; #ENR#[432]	if (blockYOfs == 50) {
                           1351 ;  0 "" 2
                           1352 ;--- end asm ---
   6D79 F6 C8 89      [ 5] 1353 	ldb	_blockYOfs	; , blockYOfs
   6D7C C1 32         [ 2] 1354 	cmpb	#50	;cmpqi:	; ,
   6D7E 26 03         [ 3] 1355 	bne	L56	; 
                           1356 ;----- asm -----
                           1357 ;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1358 	; #ENR#[433]		startLevel();
                           1359 ;  0 "" 2
                           1360 ;--- end asm ---
   6D80 BD 6B B5      [ 8] 1361 	jsr	_startLevel	; 
   6D83                    1362 L56:
   6D83 32 61         [ 5] 1363 	leas	1,s	; ,,
   6D85 39            [ 5] 1364 	rts
                           1365 	.globl _moveBlock
   6D86                    1366 _moveBlock:
                           1367 ;----- asm -----
                           1368 ;  253 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1369 	; #ENR#[221]	moveBlockImpl(move);
                           1370 ;  0 "" 2
                           1371 ;--- end asm ---
   6D86 BD 21 55      [ 8] 1372 	jsr	_moveBlockImpl	; 
                           1373 ;----- asm -----
                           1374 ;  255 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1375 	; #ENR#[222]	if (moveCount < 999) moveCount++;
                           1376 ;  0 "" 2
                           1377 ;--- end asm ---
   6D89 BE CA F1      [ 6] 1378 	ldx	_moveCount	;  moveCount.7, moveCount
   6D8C 8C 03 E6      [ 4] 1379 	cmpx	#998	;cmphi:	;  moveCount.7,
   6D8F 22 05         [ 3] 1380 	bhi	L58	; 
   6D91 30 01         [ 5] 1381 	leax	1,x	; ,, moveCount.7
   6D93 BF CA F1      [ 6] 1382 	stx	_moveCount	; , moveCount
   6D96                    1383 L58:
                           1384 ;----- asm -----
                           1385 ;  257 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1386 	; #ENR#[223]	updateInfoText();
                           1387 ;  0 "" 2
                           1388 ;--- end asm ---
   6D96 BD 69 79      [ 8] 1389 	jsr	_updateInfoText	; 
   6D99 39            [ 5] 1390 	rts
                           1391 	.globl _blockWaiting
   6D9A                    1392 _blockWaiting:
                           1393 ;----- asm -----
                           1394 ;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1395 	; #ENR#[314]	drawField();
                           1396 ;  0 "" 2
                           1397 ;--- end asm ---
   6D9A BD 69 9F      [ 8] 1398 	jsr	_drawField	; 
                           1399 ;----- asm -----
                           1400 ;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1401 	; #ENR#[315]	drawBlock(0);
                           1402 ;  0 "" 2
                           1403 ;--- end asm ---
   6D9D 5F            [ 2] 1404 	clrb	; 
   6D9E BD 24 B4      [ 8] 1405 	jsr	_drawBlock	; 
                           1406 ;----- asm -----
                           1407 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1408 	; #ENR#[316]	joybit();
                           1409 ;  0 "" 2
                           1410 ;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6DA1 BD F1 F8      [ 8] 1411 	jsr ___Joy_Digital; BIOS call
                           1412 ;  0 "" 2
                           1413 ;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1414 	; #ENR#[317]	if (pot0 < -10) {
                           1415 ;  0 "" 2
                           1416 ;--- end asm ---
   6DA4 F6 C8 1B      [ 5] 1417 	ldb	-14309	;  D.2324,
   6DA7 C1 F6         [ 2] 1418 	cmpb	#-10	;cmpqi:	;  D.2324,
   6DA9 2C 0C         [ 3] 1419 	bge	L61	; 
                           1420 ;----- asm -----
                           1421 ;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1422 	; #ENR#[318]		moveBlock(Left);
                           1423 ;  0 "" 2
                           1424 ;--- end asm ---
   6DAB 5F            [ 2] 1425 	clrb	; 
   6DAC BD 6D 86      [ 8] 1426 	jsr	_moveBlock	; 
                           1427 ;----- asm -----
                           1428 ;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1429 	; #ENR#[319]		gameState = BlockMoving;
                           1430 ;  0 "" 2
                           1431 ;--- end asm ---
   6DAF C6 04         [ 2] 1432 	ldb	#4	; ,
   6DB1 F7 CA F6      [ 5] 1433 	stb	_gameState	; , gameState
   6DB4 7E 6D EE      [ 4] 1434 	jmp	L62	; 
   6DB7                    1435 L61:
   6DB7 F6 C8 1B      [ 5] 1436 	ldb	-14309	;  D.2325,
   6DBA C1 0A         [ 2] 1437 	cmpb	#10	;cmpqi:	;  D.2325,
   6DBC 2F 0C         [ 3] 1438 	ble	L63	; 
                           1439 ;----- asm -----
                           1440 ;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1441 	; #ENR#[321]		moveBlock(Right);
                           1442 ;  0 "" 2
                           1443 ;--- end asm ---
   6DBE C6 02         [ 2] 1444 	ldb	#2	; ,
   6DC0 BD 6D 86      [ 8] 1445 	jsr	_moveBlock	; 
                           1446 ;----- asm -----
                           1447 ;  390 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1448 	; #ENR#[322]		gameState = BlockMoving;
                           1449 ;  0 "" 2
                           1450 ;--- end asm ---
   6DC3 C6 04         [ 2] 1451 	ldb	#4	; ,
   6DC5 F7 CA F6      [ 5] 1452 	stb	_gameState	; , gameState
   6DC8 20 24         [ 3] 1453 	bra	L62	; 
   6DCA                    1454 L63:
   6DCA F6 C8 1C      [ 5] 1455 	ldb	-14308	;  D.2327,
   6DCD C1 F6         [ 2] 1456 	cmpb	#-10	;cmpqi:	;  D.2327,
   6DCF 2C 0C         [ 3] 1457 	bge	L64	; 
                           1458 ;----- asm -----
                           1459 ;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1460 	; #ENR#[324]		moveBlock(Down);
                           1461 ;  0 "" 2
                           1462 ;--- end asm ---
   6DD1 C6 03         [ 2] 1463 	ldb	#3	; ,
   6DD3 BD 6D 86      [ 8] 1464 	jsr	_moveBlock	; 
                           1465 ;----- asm -----
                           1466 ;  395 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1467 	; #ENR#[325]		gameState = BlockMoving;
                           1468 ;  0 "" 2
                           1469 ;--- end asm ---
   6DD6 C6 04         [ 2] 1470 	ldb	#4	; ,
   6DD8 F7 CA F6      [ 5] 1471 	stb	_gameState	; , gameState
   6DDB 20 11         [ 3] 1472 	bra	L62	; 
   6DDD                    1473 L64:
   6DDD F6 C8 1C      [ 5] 1474 	ldb	-14308	;  D.2328,
   6DE0 C1 0A         [ 2] 1475 	cmpb	#10	;cmpqi:	;  D.2328,
   6DE2 2F 0A         [ 3] 1476 	ble	L62	; 
                           1477 ;----- asm -----
                           1478 ;  398 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1479 	; #ENR#[327]		moveBlock(Up);
                           1480 ;  0 "" 2
                           1481 ;--- end asm ---
   6DE4 C6 01         [ 2] 1482 	ldb	#1	; ,
   6DE6 BD 6D 86      [ 8] 1483 	jsr	_moveBlock	; 
                           1484 ;----- asm -----
                           1485 ;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1486 	; #ENR#[328]		gameState = BlockMoving;
                           1487 ;  0 "" 2
                           1488 ;--- end asm ---
   6DE9 C6 04         [ 2] 1489 	ldb	#4	; ,
   6DEB F7 CA F6      [ 5] 1490 	stb	_gameState	; , gameState
   6DEE                    1491 L62:
                           1492 ;----- asm -----
                           1493 ;  403 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1494 	; #ENR#[330]	if (gameState == BlockMoving) {
                           1495 ;  0 "" 2
                           1496 ;--- end asm ---
   6DEE F6 CA F6      [ 5] 1497 	ldb	_gameState	; , gameState
   6DF1 C1 04         [ 2] 1498 	cmpb	#4	;cmpqi:	; ,
   6DF3 26 0C         [ 3] 1499 	bne	L65	; 
                           1500 ;----- asm -----
                           1501 ;  405 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1502 	; #ENR#[331]		changeMusic(movingMusic);
                           1503 ;  0 "" 2
                           1504 ;--- end asm ---
   6DF5 8E 70 EB      [ 3] 1505 	ldx	#_movingMusic	; ,
   6DF8 BD 69 96      [ 8] 1506 	jsr	_changeMusic	; 
                           1507 ;----- asm -----
                           1508 ;  407 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1509 	; #ENR#[332]		*vecx = 3;
                           1510 ;  0 "" 2
                           1511 ;--- end asm ---
   6DFB C6 03         [ 2] 1512 	ldb	#3	; ,
   6DFD E7 9F C8 86   [ 9] 1513 	stb	[_vecx]	; ,* vecx
   6E01                    1514 L65:
                           1515 ;----- asm -----
                           1516 ;  411 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1517 	; #ENR#[335]    	Read_Btns();
                           1518 ;  0 "" 2
                           1519 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   6E01 BD F1 BA      [ 8] 1520 	jsr ___Read_Btns; BIOS call
                           1521 ;  0 "" 2
                           1522 ;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1523 	; #ENR#[336]    	if (Vec_Buttons & 1) {
                           1524 ;  0 "" 2
                           1525 ;--- end asm ---
   6E04 F6 C8 11      [ 5] 1526 	ldb	_Vec_Buttons	; , Vec_Buttons
   6E07 C5 01         [ 2] 1527 	bitb	#1	; ,
   6E09 27 12         [ 3] 1528 	beq	L66	; 
                           1529 ;----- asm -----
                           1530 ;  415 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1531 	; #ENR#[337]		levelNumber++;
                           1532 ;  0 "" 2
                           1533 ;--- end asm ---
   6E0B F6 C8 83      [ 5] 1534 	ldb	_levelNumber	;  levelNumber.28, levelNumber
   6E0E 5C            [ 2] 1535 	incb	;  levelNumber.28
   6E0F F7 C8 83      [ 5] 1536 	stb	_levelNumber	;  levelNumber.28, levelNumber
                           1537 ;----- asm -----
                           1538 ;  417 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1539 	; #ENR#[338]		if (levelNumber >= levelCount) levelNumber = 0;
                           1540 ;  0 "" 2
                           1541 ;--- end asm ---
   6E12 F1 71 77      [ 5] 1542 	cmpb	_levelCount	;cmpqi:	;  levelNumber.28, levelCount
   6E15 25 03         [ 3] 1543 	blo	L67	; 
   6E17 7F C8 83      [ 7] 1544 	clr	_levelNumber	;  levelNumber
   6E1A                    1545 L67:
                           1546 ;----- asm -----
                           1547 ;  419 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1548 	; #ENR#[339]    		startLevel();
                           1549 ;  0 "" 2
                           1550 ;--- end asm ---
   6E1A BD 6B B5      [ 8] 1551 	jsr	_startLevel	; 
   6E1D                    1552 L66:
                           1553 ;----- asm -----
                           1554 ;  422 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1555 	; #ENR#[341]    	if (Vec_Buttons & 2) {
                           1556 ;  0 "" 2
                           1557 ;--- end asm ---
   6E1D F6 C8 11      [ 5] 1558 	ldb	_Vec_Buttons	; , Vec_Buttons
   6E20 C5 02         [ 2] 1559 	bitb	#2	; ,
   6E22 27 08         [ 3] 1560 	beq	L69	; 
                           1561 ;----- asm -----
                           1562 ;  424 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1563 	; #ENR#[342]		if (splitMode) {
                           1564 ;  0 "" 2
                           1565 ;--- end asm ---
   6E24 7D C8 8C      [ 7] 1566 	tst	_splitMode	;  splitMode
   6E27 27 03         [ 3] 1567 	beq	L69	; 
                           1568 ;----- asm -----
                           1569 ;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1570 	; #ENR#[343]			swapSplit();
                           1571 ;  0 "" 2
                           1572 ;--- end asm ---
   6E29 BD 24 8F      [ 8] 1573 	jsr	_swapSplit	; 
   6E2C                    1574 L69:
   6E2C 39            [ 5] 1575 	rts
                           1576 	.globl _startBlockFalling
   6E2D                    1577 _startBlockFalling:
                           1578 ;----- asm -----
                           1579 ;  263 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1580 	; #ENR#[228]	gameState = BlockFalling;
                           1581 ;  0 "" 2
                           1582 ;--- end asm ---
   6E2D C6 05         [ 2] 1583 	ldb	#5	; ,
   6E2F F7 CA F6      [ 5] 1584 	stb	_gameState	; , gameState
                           1585 ;----- asm -----
                           1586 ;  265 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1587 	; #ENR#[229]	blockYOfs = 0;
                           1588 ;  0 "" 2
                           1589 ;--- end asm ---
   6E32 7F C8 89      [ 7] 1590 	clr	_blockYOfs	;  blockYOfs
                           1591 ;----- asm -----
                           1592 ;  267 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1593 	; #ENR#[230]	moveBlock(lastBlockDirection);
                           1594 ;  0 "" 2
                           1595 ;--- end asm ---
   6E35 F6 C8 8A      [ 5] 1596 	ldb	_lastBlockDirection	; , lastBlockDirection
   6E38 BD 6D 86      [ 8] 1597 	jsr	_moveBlock	; 
                           1598 ;----- asm -----
                           1599 ;  269 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1600 	; #ENR#[231]	changeMusic(fallingMusic);
                           1601 ;  0 "" 2
                           1602 ;--- end asm ---
   6E3B 8E 70 CB      [ 3] 1603 	ldx	#_fallingMusic	; ,
   6E3E BD 69 96      [ 8] 1604 	jsr	_changeMusic	; 
                           1605 ;----- asm -----
                           1606 ;  271 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1607 	; #ENR#[232]	*vecx = 0;
                           1608 ;  0 "" 2
                           1609 ;--- end asm ---
   6E41 6F 9F C8 86   [11] 1610 	clr	[_vecx]	; * vecx
   6E45 39            [ 5] 1611 	rts
                           1612 	.globl _blockMoving
   6E46                    1613 _blockMoving:
   6E46 32 79         [ 5] 1614 	leas	-7,s	; ,,
                           1615 ;----- asm -----
                           1616 ;  434 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1617 	; #ENR#[350]	drawField();
                           1618 ;  0 "" 2
                           1619 ;--- end asm ---
   6E48 BD 69 9F      [ 8] 1620 	jsr	_drawField	; 
                           1621 ;----- asm -----
                           1622 ;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1623 	; #ENR#[351]	drawBlock(0);
                           1624 ;  0 "" 2
                           1625 ;--- end asm ---
   6E4B 5F            [ 2] 1626 	clrb	; 
   6E4C BD 24 B4      [ 8] 1627 	jsr	_drawBlock	; 
                           1628 ;----- asm -----
                           1629 ;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1630 	; #ENR#[352]	doBlockAnimation();
                           1631 ;  0 "" 2
                           1632 ;--- end asm ---
   6E4F BD 23 B2      [ 8] 1633 	jsr	_doBlockAnimation	; 
                           1634 ;----- asm -----
                           1635 ;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1636 	; #ENR#[353]	if (!blockAnimating) {
                           1637 ;  0 "" 2
                           1638 ;--- end asm ---
   6E52 7D C8 8B      [ 7] 1639 	tst	_blockAnimating	;  blockAnimating
   6E55 10 26 01 5C   [ 6] 1640 	lbne	L96	; 
                           1641 ;----- asm -----
                           1642 ;  443 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1643 	; #ENR#[355]		uint8_t c0 = isField(blockX, blockY);
                           1644 ;  0 "" 2
                           1645 ;--- end asm ---
   6E59 F6 C8 8E      [ 5] 1646 	ldb	_blockY	; , blockY
   6E5C E7 E2         [ 6] 1647 	stb	,-s	; ,
   6E5E F6 C8 8D      [ 5] 1648 	ldb	_blockX	; , blockX
   6E61 BD 56 A8      [ 8] 1649 	jsr	_isField	; 
   6E64 E7 62         [ 5] 1650 	stb	2,s	; , c0
                           1651 ;----- asm -----
                           1652 ;  445 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1653 	; #ENR#[356]		uint8_t c1 = isField(blockX + 1, blockY);
                           1654 ;  0 "" 2
                           1655 ;--- end asm ---
   6E66 F6 C8 8D      [ 5] 1656 	ldb	_blockX	; , blockX
   6E69 5C            [ 2] 1657 	incb	; 
   6E6A E7 61         [ 5] 1658 	stb	1,s	; ,
   6E6C F6 C8 8E      [ 5] 1659 	ldb	_blockY	; , blockY
   6E6F E7 E2         [ 6] 1660 	stb	,-s	; ,
   6E71 E6 62         [ 5] 1661 	ldb	2,s	; ,
   6E73 BD 56 A8      [ 8] 1662 	jsr	_isField	; 
   6E76 E7 64         [ 5] 1663 	stb	4,s	; , c1
                           1664 ;----- asm -----
                           1665 ;  447 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1666 	; #ENR#[357]		uint8_t c2 = isField(blockX, blockY + 1);
                           1667 ;  0 "" 2
                           1668 ;--- end asm ---
   6E78 F6 C8 8E      [ 5] 1669 	ldb	_blockY	; , blockY
   6E7B 5C            [ 2] 1670 	incb	; 
   6E7C 34 04         [ 6] 1671 	pshs	b	; 
   6E7E F6 C8 8D      [ 5] 1672 	ldb	_blockX	; , blockX
   6E81 BD 56 A8      [ 8] 1673 	jsr	_isField	; 
   6E84 E7 66         [ 5] 1674 	stb	6,s	; , c2
                           1675 ;----- asm -----
                           1676 ;  449 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1677 	; #ENR#[358]		char f0 = getField(blockX, blockY);
                           1678 ;  0 "" 2
                           1679 ;--- end asm ---
   6E86 F6 C8 8E      [ 5] 1680 	ldb	_blockY	; , blockY
   6E89 E7 E2         [ 6] 1681 	stb	,-s	; ,
   6E8B F6 C8 8D      [ 5] 1682 	ldb	_blockX	; , blockX
   6E8E BD 55 D6      [ 8] 1683 	jsr	_getField	; 
   6E91 E7 68         [ 5] 1684 	stb	8,s	; , f0
                           1685 ;----- asm -----
                           1686 ;  451 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1687 	; #ENR#[359]		char f1 = getField(blockX + 1, blockY);
                           1688 ;  0 "" 2
                           1689 ;--- end asm ---
   6E93 F6 C8 8D      [ 5] 1690 	ldb	_blockX	; , blockX
   6E96 5C            [ 2] 1691 	incb	; 
   6E97 E7 64         [ 5] 1692 	stb	4,s	; ,
   6E99 F6 C8 8E      [ 5] 1693 	ldb	_blockY	; , blockY
   6E9C E7 E2         [ 6] 1694 	stb	,-s	; ,
   6E9E E6 65         [ 5] 1695 	ldb	5,s	; ,
   6EA0 BD 55 D6      [ 8] 1696 	jsr	_getField	; 
   6EA3 E7 6A         [ 5] 1697 	stb	10,s	; , f1
                           1698 ;----- asm -----
                           1699 ;  453 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1700 	; #ENR#[360]		char f2 = getField(blockX, blockY + 1);
                           1701 ;  0 "" 2
                           1702 ;--- end asm ---
   6EA5 F6 C8 8E      [ 5] 1703 	ldb	_blockY	; , blockY
   6EA8 5C            [ 2] 1704 	incb	; 
   6EA9 34 04         [ 6] 1705 	pshs	b	; 
   6EAB F6 C8 8D      [ 5] 1706 	ldb	_blockX	; , blockX
   6EAE BD 55 D6      [ 8] 1707 	jsr	_getField	; 
   6EB1 E7 6C         [ 5] 1708 	stb	12,s	; , f2
                           1709 ;----- asm -----
                           1710 ;  455 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1711 	; #ENR#[361]		switch (blockOrientation) {
                           1712 ;  0 "" 2
                           1713 ;--- end asm ---
   6EB3 32 66         [ 5] 1714 	leas	6,s	; ,,
   6EB5 F6 C8 88      [ 5] 1715 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   6EB8 C1 01         [ 2] 1716 	cmpb	#1	;cmpqi:	;  blockOrientation,
   6EBA 27 19         [ 3] 1717 	beq	L76	; 
   6EBC 25 08         [ 3] 1718 	blo	L75	; 
   6EBE C1 02         [ 2] 1719 	cmpb	#2	;cmpqi:	;  blockOrientation,
   6EC0 10 26 00 29   [ 6] 1720 	lbne	L74	; 
   6EC4 20 1C         [ 3] 1721 	bra	L97	; 
   6EC6                    1722 L75:
                           1723 ;----- asm -----
                           1724 ;  459 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1725 	; #ENR#[363]			if (!c0 || f0 == 'f') {
                           1726 ;  0 "" 2
                           1727 ;--- end asm ---
   6EC6 6D 61         [ 7] 1728 	tst	1,s	;  c0
   6EC8 27 06         [ 3] 1729 	beq	L78	; 
   6ECA E6 64         [ 5] 1730 	ldb	4,s	; , f0
   6ECC C1 66         [ 2] 1731 	cmpb	#102	;cmpqi:	; ,
   6ECE 26 03         [ 3] 1732 	bne	L79	; 
   6ED0                    1733 L78:
                           1734 ;----- asm -----
                           1735 ;  461 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1736 	; #ENR#[364]				startBlockFalling();
                           1737 ;  0 "" 2
                           1738 ;--- end asm ---
   6ED0 BD 6E 2D      [ 8] 1739 	jsr	_startBlockFalling	; 
   6ED3                    1740 L79:
                           1741 ;----- asm -----
                           1742 ;  464 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1743 	; #ENR#[366]			break;
                           1744 ;  0 "" 2
                           1745 ;--- end asm ---
   6ED3 20 18         [ 3] 1746 	bra	L74	; 
   6ED5                    1747 L76:
                           1748 ;----- asm -----
                           1749 ;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1750 	; #ENR#[368]			if (!c0 || !c2) {
                           1751 ;  0 "" 2
                           1752 ;--- end asm ---
   6ED5 6D 61         [ 7] 1753 	tst	1,s	;  c0
   6ED7 27 04         [ 3] 1754 	beq	L80	; 
   6ED9 6D 63         [ 7] 1755 	tst	3,s	;  c2
   6EDB 26 03         [ 3] 1756 	bne	L81	; 
   6EDD                    1757 L80:
                           1758 ;----- asm -----
                           1759 ;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1760 	; #ENR#[369]				startBlockFalling();
                           1761 ;  0 "" 2
                           1762 ;--- end asm ---
   6EDD BD 6E 2D      [ 8] 1763 	jsr	_startBlockFalling	; 
   6EE0                    1764 L81:
                           1765 ;----- asm -----
                           1766 ;  473 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1767 	; #ENR#[371]			break;
                           1768 ;  0 "" 2
                           1769 ;--- end asm ---
   6EE0 20 0B         [ 3] 1770 	bra	L74	; 
   6EE2                    1771 L97:
                           1772 ;----- asm -----
                           1773 ;  477 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1774 	; #ENR#[373]			if (!c0 || ! c1) {
                           1775 ;  0 "" 2
                           1776 ;--- end asm ---
   6EE2 6D 61         [ 7] 1777 	tst	1,s	;  c0
   6EE4 27 04         [ 3] 1778 	beq	L82	; 
   6EE6 6D 62         [ 7] 1779 	tst	2,s	;  c1
   6EE8 26 03         [ 3] 1780 	bne	L83	; 
   6EEA                    1781 L82:
                           1782 ;----- asm -----
                           1783 ;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1784 	; #ENR#[374]				startBlockFalling();
                           1785 ;  0 "" 2
                           1786 ;--- end asm ---
   6EEA BD 6E 2D      [ 8] 1787 	jsr	_startBlockFalling	; 
   6EED                    1788 L83:
                           1789 ;----- asm -----
                           1790 ;  482 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1791 	; #ENR#[376]			break;
                           1792 ;  0 "" 2
                           1793 ;--- end asm ---
   6EED                    1794 L74:
                           1795 ;----- asm -----
                           1796 ;  487 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1797 	; #ENR#[380]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1798 ;  0 "" 2
                           1799 ;--- end asm ---
   6EED 7D C8 88      [ 7] 1800 	tst	_blockOrientation	;  blockOrientation
   6EF0 26 2B         [ 3] 1801 	bne	L84	; 
   6EF2 F6 C8 8D      [ 5] 1802 	ldb	_blockX	; , blockX
   6EF5 F1 C8 81      [ 5] 1803 	cmpb	_endX	;cmpqi:	; , endX
   6EF8 26 23         [ 3] 1804 	bne	L84	; 
   6EFA F6 C8 8E      [ 5] 1805 	ldb	_blockY	; , blockY
   6EFD F1 C8 82      [ 5] 1806 	cmpb	_endY	;cmpqi:	; , endY
   6F00 26 1B         [ 3] 1807 	bne	L84	; 
   6F02 7D C8 8C      [ 7] 1808 	tst	_splitMode	;  splitMode
   6F05 26 16         [ 3] 1809 	bne	L84	; 
                           1810 ;----- asm -----
                           1811 ;  489 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1812 	; #ENR#[381]			blockYOfs = 0;
                           1813 ;  0 "" 2
                           1814 ;--- end asm ---
   6F07 7F C8 89      [ 7] 1815 	clr	_blockYOfs	;  blockYOfs
                           1816 ;----- asm -----
                           1817 ;  491 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1818 	; #ENR#[382]			gameState = BlockMovingAtEnd;
                           1819 ;  0 "" 2
                           1820 ;--- end asm ---
   6F0A C6 06         [ 2] 1821 	ldb	#6	; ,
   6F0C F7 CA F6      [ 5] 1822 	stb	_gameState	; , gameState
                           1823 ;----- asm -----
                           1824 ;  493 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1825 	; #ENR#[383]			changeMusic(levelEndMusic);
                           1826 ;  0 "" 2
                           1827 ;--- end asm ---
   6F0F 8E 70 B1      [ 3] 1828 	ldx	#_levelEndMusic	; ,
   6F12 BD 69 96      [ 8] 1829 	jsr	_changeMusic	; 
                           1830 ;----- asm -----
                           1831 ;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1832 	; #ENR#[384]			*vecx = 1;
                           1833 ;  0 "" 2
                           1834 ;--- end asm ---
   6F15 C6 01         [ 2] 1835 	ldb	#1	; ,
   6F17 E7 9F C8 86   [ 9] 1836 	stb	[_vecx]	; ,* vecx
   6F1B 20 0C         [ 3] 1837 	bra	L85	; 
   6F1D                    1838 L84:
                           1839 ;----- asm -----
                           1840 ;  499 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1841 	; #ENR#[387]			if (gameState != BlockFalling) {
                           1842 ;  0 "" 2
                           1843 ;--- end asm ---
   6F1D F6 CA F6      [ 5] 1844 	ldb	_gameState	; , gameState
   6F20 C1 05         [ 2] 1845 	cmpb	#5	;cmpqi:	; ,
   6F22 27 05         [ 3] 1846 	beq	L85	; 
                           1847 ;----- asm -----
                           1848 ;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1849 	; #ENR#[388]				gameState = BlockWaiting;
                           1850 ;  0 "" 2
                           1851 ;--- end asm ---
   6F24 C6 03         [ 2] 1852 	ldb	#3	; ,
   6F26 F7 CA F6      [ 5] 1853 	stb	_gameState	; , gameState
   6F29                    1854 L85:
                           1855 ;----- asm -----
                           1856 ;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1857 	; #ENR#[393]		switch (blockOrientation) {
                           1858 ;  0 "" 2
                           1859 ;--- end asm ---
   6F29 F6 C8 88      [ 5] 1860 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   6F2C C1 01         [ 2] 1861 	cmpb	#1	;cmpqi:	;  blockOrientation,
   6F2E 27 29         [ 3] 1862 	beq	L88	; 
   6F30 25 09         [ 3] 1863 	blo	L87	; 
   6F32 C1 02         [ 2] 1864 	cmpb	#2	;cmpqi:	;  blockOrientation,
   6F34 10 26 00 75   [ 6] 1865 	lbne	L86	; 
   6F38 7E 6F 82      [ 4] 1866 	jmp	L98	; 
   6F3B                    1867 L87:
                           1868 ;----- asm -----
                           1869 ;  511 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1870 	; #ENR#[395]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1871 ;  0 "" 2
                           1872 ;--- end asm ---
   6F3B E6 64         [ 5] 1873 	ldb	4,s	; , f0
   6F3D C1 73         [ 2] 1874 	cmpb	#115	;cmpqi:	; ,
   6F3F 27 08         [ 3] 1875 	beq	L90	; 
   6F41 C1 68         [ 2] 1876 	cmpb	#104	;cmpqi:	; ,
   6F43 27 04         [ 3] 1877 	beq	L90	; 
   6F45 C1 76         [ 2] 1878 	cmpb	#118	;cmpqi:	; ,
   6F47 26 0D         [ 3] 1879 	bne	L91	; 
   6F49                    1880 L90:
                           1881 ;----- asm -----
                           1882 ;  513 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1883 	; #ENR#[396]				swatchSwitch(blockX, blockY);
                           1884 ;  0 "" 2
                           1885 ;--- end asm ---
   6F49 F6 C8 8E      [ 5] 1886 	ldb	_blockY	; , blockY
   6F4C E7 E2         [ 6] 1887 	stb	,-s	; ,
   6F4E F6 C8 8D      [ 5] 1888 	ldb	_blockX	; , blockX
   6F51 BD 5C 27      [ 8] 1889 	jsr	_swatchSwitch	; 
   6F54 32 61         [ 5] 1890 	leas	1,s	; ,,
   6F56                    1891 L91:
                           1892 ;----- asm -----
                           1893 ;  516 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1894 	; #ENR#[398]			break;
                           1895 ;  0 "" 2
                           1896 ;--- end asm ---
   6F56 7E 6F AD      [ 4] 1897 	jmp	L86	; 
   6F59                    1898 L88:
                           1899 ;----- asm -----
                           1900 ;  520 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1901 	; #ENR#[400]			if (f0 == 's') {
                           1902 ;  0 "" 2
                           1903 ;--- end asm ---
   6F59 E6 64         [ 5] 1904 	ldb	4,s	; , f0
   6F5B C1 73         [ 2] 1905 	cmpb	#115	;cmpqi:	; ,
   6F5D 26 0D         [ 3] 1906 	bne	L92	; 
                           1907 ;----- asm -----
                           1908 ;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1909 	; #ENR#[401]				swatchSwitch(blockX, blockY);
                           1910 ;  0 "" 2
                           1911 ;--- end asm ---
   6F5F F6 C8 8E      [ 5] 1912 	ldb	_blockY	; , blockY
   6F62 E7 E2         [ 6] 1913 	stb	,-s	; ,
   6F64 F6 C8 8D      [ 5] 1914 	ldb	_blockX	; , blockX
   6F67 BD 5C 27      [ 8] 1915 	jsr	_swatchSwitch	; 
   6F6A 32 61         [ 5] 1916 	leas	1,s	; ,,
   6F6C                    1917 L92:
                           1918 ;----- asm -----
                           1919 ;  525 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1920 	; #ENR#[403]			if (f2 == 's') {
                           1921 ;  0 "" 2
                           1922 ;--- end asm ---
   6F6C E6 66         [ 5] 1923 	ldb	6,s	; , f2
   6F6E C1 73         [ 2] 1924 	cmpb	#115	;cmpqi:	; ,
   6F70 26 0E         [ 3] 1925 	bne	L93	; 
                           1926 ;----- asm -----
                           1927 ;  527 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1928 	; #ENR#[404]				swatchSwitch(blockX, blockY + 1);
                           1929 ;  0 "" 2
                           1930 ;--- end asm ---
   6F72 F6 C8 8E      [ 5] 1931 	ldb	_blockY	; , blockY
   6F75 5C            [ 2] 1932 	incb	; 
   6F76 34 04         [ 6] 1933 	pshs	b	; 
   6F78 F6 C8 8D      [ 5] 1934 	ldb	_blockX	; , blockX
   6F7B BD 5C 27      [ 8] 1935 	jsr	_swatchSwitch	; 
   6F7E 32 61         [ 5] 1936 	leas	1,s	; ,,
   6F80                    1937 L93:
                           1938 ;----- asm -----
                           1939 ;  530 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1940 	; #ENR#[406]			break;
                           1941 ;  0 "" 2
                           1942 ;--- end asm ---
   6F80 20 2B         [ 3] 1943 	bra	L86	; 
   6F82                    1944 L98:
                           1945 ;----- asm -----
                           1946 ;  534 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1947 	; #ENR#[408]			if (f0 == 's') {
                           1948 ;  0 "" 2
                           1949 ;--- end asm ---
   6F82 E6 64         [ 5] 1950 	ldb	4,s	; , f0
   6F84 C1 73         [ 2] 1951 	cmpb	#115	;cmpqi:	; ,
   6F86 26 0D         [ 3] 1952 	bne	L94	; 
                           1953 ;----- asm -----
                           1954 ;  536 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1955 	; #ENR#[409]				swatchSwitch(blockX, blockY);
                           1956 ;  0 "" 2
                           1957 ;--- end asm ---
   6F88 F6 C8 8E      [ 5] 1958 	ldb	_blockY	; , blockY
   6F8B E7 E2         [ 6] 1959 	stb	,-s	; ,
   6F8D F6 C8 8D      [ 5] 1960 	ldb	_blockX	; , blockX
   6F90 BD 5C 27      [ 8] 1961 	jsr	_swatchSwitch	; 
   6F93 32 61         [ 5] 1962 	leas	1,s	; ,,
   6F95                    1963 L94:
                           1964 ;----- asm -----
                           1965 ;  539 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1966 	; #ENR#[411]			if (f1 == 's') {
                           1967 ;  0 "" 2
                           1968 ;--- end asm ---
   6F95 E6 65         [ 5] 1969 	ldb	5,s	; , f1
   6F97 C1 73         [ 2] 1970 	cmpb	#115	;cmpqi:	; ,
   6F99 26 12         [ 3] 1971 	bne	L95	; 
                           1972 ;----- asm -----
                           1973 ;  541 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1974 	; #ENR#[412]				swatchSwitch(blockX + 1, blockY);
                           1975 ;  0 "" 2
                           1976 ;--- end asm ---
   6F9B F6 C8 8D      [ 5] 1977 	ldb	_blockX	; , blockX
   6F9E 5C            [ 2] 1978 	incb	; 
   6F9F E7 E4         [ 4] 1979 	stb	,s	; ,
   6FA1 F6 C8 8E      [ 5] 1980 	ldb	_blockY	; , blockY
   6FA4 E7 E2         [ 6] 1981 	stb	,-s	; ,
   6FA6 E6 61         [ 5] 1982 	ldb	1,s	; ,
   6FA8 BD 5C 27      [ 8] 1983 	jsr	_swatchSwitch	; 
   6FAB 32 61         [ 5] 1984 	leas	1,s	; ,,
   6FAD                    1985 L95:
                           1986 ;----- asm -----
                           1987 ;  544 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1988 	; #ENR#[414]			break;
                           1989 ;  0 "" 2
                           1990 ;--- end asm ---
   6FAD                    1991 L86:
                           1992 ;----- asm -----
                           1993 ;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1994 	; #ENR#[418]		if (splitMode) {
                           1995 ;  0 "" 2
                           1996 ;--- end asm ---
   6FAD 7D C8 8C      [ 7] 1997 	tst	_splitMode	;  splitMode
   6FB0 27 03         [ 3] 1998 	beq	L96	; 
                           1999 ;----- asm -----
                           2000 ;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2001 	; #ENR#[419]			testMerge();
                           2002 ;  0 "" 2
                           2003 ;--- end asm ---
   6FB2 BD 23 FD      [ 8] 2004 	jsr	_testMerge	; 
   6FB5                    2005 L96:
   6FB5 32 67         [ 5] 2006 	leas	7,s	; ,,
   6FB7 39            [ 5] 2007 	rts
                           2008 	.globl _main
   6FB8                    2009 _main:
   6FB8 34 60         [ 7] 2010 	pshs	y,u	; 
   6FBA 32 7C         [ 5] 2011 	leas	-4,s	; ,,
                           2012 ;----- asm -----
                           2013 ;  741 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2014 	; #ENR#[543]	*vecx = 4;
                           2015 ;  0 "" 2
                           2016 ;--- end asm ---
   6FBC C6 04         [ 2] 2017 	ldb	#4	; ,
   6FBE E7 9F C8 86   [ 9] 2018 	stb	[_vecx]	; ,* vecx
                           2019 ;----- asm -----
                           2020 ;  745 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2021 	; #ENR#[546]	picAvailable = 0;
                           2022 ;  0 "" 2
                           2023 ;--- end asm ---
   6FC2 7F CA F5      [ 7] 2024 	clr	_picAvailable	;  picAvailable
                           2025 ;----- asm -----
                           2026 ;  747 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2027 	; #ENR#[547]	sendCommand(CMD_VERSION, 0);
                           2028 ;  0 "" 2
                           2029 ;--- end asm ---
   6FC5 6F E2         [ 8] 2030 	clr	,-s	; 
   6FC7 C6 01         [ 2] 2031 	ldb	#1	; ,
   6FC9 BD 68 CD      [ 8] 2032 	jsr	_sendCommand	; 
                           2033 ;----- asm -----
                           2034 ;  749 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2035 	; #ENR#[548]	sendCommand(CMD_VERSION, 0);
                           2036 ;  0 "" 2
                           2037 ;--- end asm ---
   6FCC 6F E2         [ 8] 2038 	clr	,-s	; 
   6FCE C6 01         [ 2] 2039 	ldb	#1	; ,
   6FD0 BD 68 CD      [ 8] 2040 	jsr	_sendCommand	; 
                           2041 ;----- asm -----
                           2042 ;  751 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2043 	; #ENR#[549]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           2044 ;  0 "" 2
                           2045 ;--- end asm ---
   6FD3 6F E2         [ 8] 2046 	clr	,-s	; 
   6FD5 C6 01         [ 2] 2047 	ldb	#1	; ,
   6FD7 BD 68 CD      [ 8] 2048 	jsr	_sendCommand	; 
   6FDA 32 63         [ 5] 2049 	leas	3,s	; ,,
   6FDC C1 04         [ 2] 2050 	cmpb	#4	;cmpqi:	;  D.2439,
   6FDE 26 05         [ 3] 2051 	bne	L100	; 
                           2052 ;----- asm -----
                           2053 ;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2054 	; #ENR#[550]		picAvailable = 1;
                           2055 ;  0 "" 2
                           2056 ;--- end asm ---
   6FE0 C6 01         [ 2] 2057 	ldb	#1	; ,
   6FE2 F7 CA F5      [ 5] 2058 	stb	_picAvailable	; , picAvailable
   6FE5                    2059 L100:
                           2060 ;----- asm -----
                           2061 ;  758 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2062 	; #ENR#[554]	memcpy(infoText, "001 - 999�", 10);
                           2063 ;  0 "" 2
                           2064 ;--- end asm ---
   6FE5 8E 30 30      [ 3] 2065 	ldx	#12336	; ,
   6FE8 BF CA E7      [ 6] 2066 	stx	_infoText	; , infoText
   6FEB 8E 31 20      [ 3] 2067 	ldx	#12576	; ,
   6FEE BF CA E9      [ 6] 2068 	stx	_infoText+2	; , infoText
   6FF1 8E 2D 20      [ 3] 2069 	ldx	#11552	; ,
   6FF4 BF CA EB      [ 6] 2070 	stx	_infoText+4	; , infoText
   6FF7 8E 39 39      [ 3] 2071 	ldx	#14649	; ,
   6FFA BF CA ED      [ 6] 2072 	stx	_infoText+6	; , infoText
   6FFD 8E 39 80      [ 3] 2073 	ldx	#14720	; ,
   7000 BF CA EF      [ 6] 2074 	stx	_infoText+8	; , infoText
                           2075 ;----- asm -----
                           2076 ;  762 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2077 	; #ENR#[557]	epot0 = 1;
                           2078 ;  0 "" 2
                           2079 ;--- end asm ---
   7003 C6 01         [ 2] 2080 	ldb	#1	; ,
   7005 F7 C8 1F      [ 5] 2081 	stb	-14305	; ,
                           2082 ;----- asm -----
                           2083 ;  764 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2084 	; #ENR#[558]	epot1 = 3;
                           2085 ;  0 "" 2
                           2086 ;--- end asm ---
   7008 C6 03         [ 2] 2087 	ldb	#3	; ,
   700A F7 C8 20      [ 5] 2088 	stb	-14304	; ,
                           2089 ;----- asm -----
                           2090 ;  766 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2091 	; #ENR#[559]	epot2 = 0;
                           2092 ;  0 "" 2
                           2093 ;--- end asm ---
   700D 7F C8 21      [ 7] 2094 	clr	-14303	; 
                           2095 ;----- asm -----
                           2096 ;  768 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2097 	; #ENR#[560]	epot3 = 0;
                           2098 ;  0 "" 2
                           2099 ;--- end asm ---
   7010 7F C8 22      [ 7] 2100 	clr	-14302	; 
                           2101 ;----- asm -----
                           2102 ;  771 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2103 	; #ENR#[562]	gameState = MainMenu;
                           2104 ;  0 "" 2
                           2105 ;--- end asm ---
   7013 7F CA F6      [ 7] 2106 	clr	_gameState	;  gameState
                           2107 ;----- asm -----
                           2108 ;  773 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2109 	; #ENR#[563]	startLevel();
                           2110 ;  0 "" 2
                           2111 ;--- end asm ---
   7016 BD 6B B5      [ 8] 2112 	jsr	_startLevel	; 
                           2113 ;----- asm -----
                           2114 ;  777 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2115 	; #ENR#[566]	while (1) {
                           2116 ;  0 "" 2
                           2117 ;--- end asm ---
   7019                    2118 L112:
                           2119 ;----- asm -----
                           2120 ;  780 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2121 	; #ENR#[568]		frwait();
                           2122 ;  0 "" 2
                           2123 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   7019 BD F1 92      [ 8] 2124 	jsr ___Wait_Recal; BIOS call
                           2125 ;  0 "" 2
                           2126 ;  783 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2127 	; #ENR#[570]		switch (gameState) {
                           2128 ;  0 "" 2
                           2129 ;--- end asm ---
   701C F6 CA F6      [ 5] 2130 	ldb	_gameState	; , gameState
   701F C1 06         [ 2] 2131 	cmpb	#6	;cmpqi:	; ,
   7021 10 22 00 4D   [ 6] 2132 	lbhi	L101	; 
   7025 4F            [ 2] 2133 	clra		;zero_extendqihi: R:b -> R:d	; ,
   7026 ED E4         [ 5] 2134 	std	,s	; ,
   7028 58            [ 2] 2135 	aslb	; 
   7029 49            [ 2] 2136 	rola	; 
   702A 1F 01         [ 6] 2137 	tfr	d,x	; , tmp43
   702C 6E 99 70 30   [10] 2138 	jmp	[L109,x]	; , tmp43
   7030                    2139 L109:
   7030 70 3E              2140 	.word L102
   7032 70 44              2141 	.word L103
   7034 70 4A              2142 	.word L104
   7036 70 53              2143 	.word L105
   7038 70 5C              2144 	.word L106
   703A 70 64              2145 	.word L107
   703C 70 6C              2146 	.word L108
   703E                    2147 L102:
                           2148 ;----- asm -----
                           2149 ;  787 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2150 	; #ENR#[572]        			mainMenu();
                           2151 ;  0 "" 2
                           2152 ;--- end asm ---
   703E BD 6C 67      [ 8] 2153 	jsr	_mainMenu	; 
                           2154 ;----- asm -----
                           2155 ;  790 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2156 	; #ENR#[574]        			break;
                           2157 ;  0 "" 2
                           2158 ;--- end asm ---
   7041 7E 70 72      [ 4] 2159 	jmp	L101	; 
   7044                    2160 L103:
                           2161 ;----- asm -----
                           2162 ;  794 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2163 	; #ENR#[576]				clearMenu();
                           2164 ;  0 "" 2
                           2165 ;--- end asm ---
   7044 BD 6A 0C      [ 8] 2166 	jsr	_clearMenu	; 
                           2167 ;----- asm -----
                           2168 ;  797 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2169 	; #ENR#[578]				break;
                           2170 ;  0 "" 2
                           2171 ;--- end asm ---
   7047 7E 70 72      [ 4] 2172 	jmp	L101	; 
   704A                    2173 L104:
                           2174 ;----- asm -----
                           2175 ;  801 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2176 	; #ENR#[580]				showInfo();
                           2177 ;  0 "" 2
                           2178 ;--- end asm ---
   704A BD 6B 72      [ 8] 2179 	jsr	_showInfo	; 
                           2180 ;----- asm -----
                           2181 ;  803 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2182 	; #ENR#[581]        			blockMovingToStart();
                           2183 ;  0 "" 2
                           2184 ;--- end asm ---
   704D BD 6B 9C      [ 8] 2185 	jsr	_blockMovingToStart	; 
                           2186 ;----- asm -----
                           2187 ;  805 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2188 	; #ENR#[582]        			break;
                           2189 ;  0 "" 2
                           2190 ;--- end asm ---
   7050 7E 70 72      [ 4] 2191 	jmp	L101	; 
   7053                    2192 L105:
                           2193 ;----- asm -----
                           2194 ;  809 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2195 	; #ENR#[584]				showInfo();
                           2196 ;  0 "" 2
                           2197 ;--- end asm ---
   7053 BD 6B 72      [ 8] 2198 	jsr	_showInfo	; 
                           2199 ;----- asm -----
                           2200 ;  811 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2201 	; #ENR#[585]        			blockWaiting();
                           2202 ;  0 "" 2
                           2203 ;--- end asm ---
   7056 BD 6D 9A      [ 8] 2204 	jsr	_blockWaiting	; 
                           2205 ;----- asm -----
                           2206 ;  813 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2207 	; #ENR#[586]        			break;
                           2208 ;  0 "" 2
                           2209 ;--- end asm ---
   7059 7E 70 72      [ 4] 2210 	jmp	L101	; 
   705C                    2211 L106:
                           2212 ;----- asm -----
                           2213 ;  817 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2214 	; #ENR#[588]				showInfo();
                           2215 ;  0 "" 2
                           2216 ;--- end asm ---
   705C BD 6B 72      [ 8] 2217 	jsr	_showInfo	; 
                           2218 ;----- asm -----
                           2219 ;  819 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2220 	; #ENR#[589]        			blockMoving();
                           2221 ;  0 "" 2
                           2222 ;--- end asm ---
   705F BD 6E 46      [ 8] 2223 	jsr	_blockMoving	; 
                           2224 ;----- asm -----
                           2225 ;  821 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2226 	; #ENR#[590]        			break;
                           2227 ;  0 "" 2
                           2228 ;--- end asm ---
   7062 20 0E         [ 3] 2229 	bra	L101	; 
   7064                    2230 L107:
                           2231 ;----- asm -----
                           2232 ;  825 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2233 	; #ENR#[592]				showInfo();
                           2234 ;  0 "" 2
                           2235 ;--- end asm ---
   7064 BD 6B 72      [ 8] 2236 	jsr	_showInfo	; 
                           2237 ;----- asm -----
                           2238 ;  827 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2239 	; #ENR#[593]        			blockFalling();
                           2240 ;  0 "" 2
                           2241 ;--- end asm ---
   7067 BD 6D 5D      [ 8] 2242 	jsr	_blockFalling	; 
                           2243 ;----- asm -----
                           2244 ;  829 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2245 	; #ENR#[594]        			break;
                           2246 ;  0 "" 2
                           2247 ;--- end asm ---
   706A 20 06         [ 3] 2248 	bra	L101	; 
   706C                    2249 L108:
                           2250 ;----- asm -----
                           2251 ;  833 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2252 	; #ENR#[596]				showInfo();
                           2253 ;  0 "" 2
                           2254 ;--- end asm ---
   706C BD 6B 72      [ 8] 2255 	jsr	_showInfo	; 
                           2256 ;----- asm -----
                           2257 ;  835 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2258 	; #ENR#[597]        			blockMovingAtEnd();
                           2259 ;  0 "" 2
                           2260 ;--- end asm ---
   706F BD 6D 03      [ 8] 2261 	jsr	_blockMovingAtEnd	; 
                           2262 ;----- asm -----
                           2263 ;  837 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2264 	; #ENR#[598]        			break;
                           2265 ;  0 "" 2
                           2266 ;--- end asm ---
   7072                    2267 L101:
                           2268 ;----- asm -----
                           2269 ;  842 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2270 	; #ENR#[602]		if (gameState > ClearMenu) {
                           2271 ;  0 "" 2
                           2272 ;--- end asm ---
   7072 F6 CA F6      [ 5] 2273 	ldb	_gameState	; , gameState
   7075 C1 01         [ 2] 2274 	cmpb	#1	;cmpqi:	; ,
   7077 10 23 FF 9E   [ 6] 2275 	lbls	L112	; 
                           2276 ;----- asm -----
                           2277 ;  844 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2278 	; #ENR#[603]    			DP_to_C8();
                           2279 ;  0 "" 2
                           2280 ;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   707B BD F1 AF      [ 8] 2281 	jsr ___DP_to_C8; BIOS call
                           2282 ;  0 "" 2
                           2283 ;  846 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2284 	; #ENR#[604]    			replay(currentMusic);
                           2285 ;  0 "" 2
                           2286 ;--- end asm ---
   707E BE C8 84      [ 6] 2287 	ldx	_currentMusic	; , currentMusic
   7081 AF 62         [ 6] 2288 	stx	2,s	; , u
                           2289 ;----- asm -----
                           2290 ;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   7083 EE 62         [ 6] 2291 	ldu 2,s	;  u
   7085 BD F6 87      [ 8] 2292 	jsr ___Init_Music_chk; BIOS call
                           2293 ;  0 "" 2
                           2294 ;  848 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2295 	; #ENR#[605]    			DP_to_D0();
                           2296 ;  0 "" 2
                           2297 ;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   7088 BD F1 AA      [ 8] 2298 	jsr ___DP_to_D0; BIOS call
                           2299 ;  0 "" 2
                           2300 ;  850 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2301 	; #ENR#[606]    			reqout();
                           2302 ;  0 "" 2
                           2303 ;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   708B BD F2 89      [ 8] 2304 	jsr ___Do_Sound; BIOS call
                           2305 ;  0 "" 2
                           2306 ;--- end asm ---
   708E 7E 70 19      [ 4] 2307 	jmp	L112	; 
                           2308 	.globl _startMusic
   7091                    2309 _startMusic:
   7091 FE                 2310 	.byte	-2
   7092 E8                 2311 	.byte	-24
   7093 FE                 2312 	.byte	-2
   7094 B6                 2313 	.byte	-74
   7095 01                 2314 	.byte	1
   7096 01                 2315 	.byte	1
   7097 02                 2316 	.byte	2
   7098 01                 2317 	.byte	1
   7099 03                 2318 	.byte	3
   709A 01                 2319 	.byte	1
   709B 04                 2320 	.byte	4
   709C 01                 2321 	.byte	1
   709D 05                 2322 	.byte	5
   709E 01                 2323 	.byte	1
   709F 06                 2324 	.byte	6
   70A0 01                 2325 	.byte	1
   70A1 07                 2326 	.byte	7
   70A2 01                 2327 	.byte	1
   70A3 08                 2328 	.byte	8
   70A4 01                 2329 	.byte	1
   70A5 09                 2330 	.byte	9
   70A6 01                 2331 	.byte	1
   70A7 0A                 2332 	.byte	10
   70A8 01                 2333 	.byte	1
   70A9 0B                 2334 	.byte	11
   70AA 01                 2335 	.byte	1
   70AB 0C                 2336 	.byte	12
   70AC 01                 2337 	.byte	1
   70AD 0D                 2338 	.byte	13
   70AE 01                 2339 	.byte	1
   70AF 00                 2340 	.byte	0
   70B0 80                 2341 	.byte	-128
                           2342 	.globl _levelEndMusic
   70B1                    2343 _levelEndMusic:
   70B1 FE                 2344 	.byte	-2
   70B2 E8                 2345 	.byte	-24
   70B3 FE                 2346 	.byte	-2
   70B4 B6                 2347 	.byte	-74
   70B5 0D                 2348 	.byte	13
   70B6 01                 2349 	.byte	1
   70B7 0E                 2350 	.byte	14
   70B8 01                 2351 	.byte	1
   70B9 0F                 2352 	.byte	15
   70BA 01                 2353 	.byte	1
   70BB 10                 2354 	.byte	16
   70BC 01                 2355 	.byte	1
   70BD 11                 2356 	.byte	17
   70BE 01                 2357 	.byte	1
   70BF 12                 2358 	.byte	18
   70C0 01                 2359 	.byte	1
   70C1 13                 2360 	.byte	19
   70C2 01                 2361 	.byte	1
   70C3 14                 2362 	.byte	20
   70C4 01                 2363 	.byte	1
   70C5 15                 2364 	.byte	21
   70C6 01                 2365 	.byte	1
   70C7 16                 2366 	.byte	22
   70C8 01                 2367 	.byte	1
   70C9 00                 2368 	.byte	0
   70CA 80                 2369 	.byte	-128
                           2370 	.globl _fallingMusic
   70CB                    2371 _fallingMusic:
   70CB FE                 2372 	.byte	-2
   70CC E8                 2373 	.byte	-24
   70CD FE                 2374 	.byte	-2
   70CE B6                 2375 	.byte	-74
   70CF 0D                 2376 	.byte	13
   70D0 02                 2377 	.byte	2
   70D1 0C                 2378 	.byte	12
   70D2 02                 2379 	.byte	2
   70D3 0B                 2380 	.byte	11
   70D4 02                 2381 	.byte	2
   70D5 0A                 2382 	.byte	10
   70D6 02                 2383 	.byte	2
   70D7 09                 2384 	.byte	9
   70D8 02                 2385 	.byte	2
   70D9 08                 2386 	.byte	8
   70DA 02                 2387 	.byte	2
   70DB 07                 2388 	.byte	7
   70DC 02                 2389 	.byte	2
   70DD 06                 2390 	.byte	6
   70DE 02                 2391 	.byte	2
   70DF 05                 2392 	.byte	5
   70E0 02                 2393 	.byte	2
   70E1 04                 2394 	.byte	4
   70E2 02                 2395 	.byte	2
   70E3 03                 2396 	.byte	3
   70E4 02                 2397 	.byte	2
   70E5 02                 2398 	.byte	2
   70E6 02                 2399 	.byte	2
   70E7 01                 2400 	.byte	1
   70E8 02                 2401 	.byte	2
   70E9 00                 2402 	.byte	0
   70EA 80                 2403 	.byte	-128
                           2404 	.globl _movingMusic
   70EB                    2405 _movingMusic:
   70EB FD                 2406 	.byte	-3
   70EC C3                 2407 	.byte	-61
   70ED FE                 2408 	.byte	-2
   70EE B6                 2409 	.byte	-74
   70EF 01                 2410 	.byte	1
   70F0 05                 2411 	.byte	5
   70F1 00                 2412 	.byte	0
   70F2 80                 2413 	.byte	-128
                           2414 	.globl _currentMusic
                           2415 	.area .data
   C884                    2416 _currentMusic:
   C884 70 91              2417 	.word	_startMusic
                           2418 	.globl _vecx
   C886                    2419 _vecx:
   C886 80 00              2420 	.word	-32768
                           2421 	.globl _led8
                           2422 	.area .text
   70F3                    2423 _led8:
   70F3 FF                 2424 	.byte	-1
   70F4 00                 2425 	.byte	0
   70F5 05                 2426 	.byte	5
   70F6 FF                 2427 	.byte	-1
   70F7 FB                 2428 	.byte	-5
   70F8 00                 2429 	.byte	0
   70F9 FF                 2430 	.byte	-1
   70FA 00                 2431 	.byte	0
   70FB FB                 2432 	.byte	-5
   70FC FF                 2433 	.byte	-1
   70FD 05                 2434 	.byte	5
   70FE 00                 2435 	.byte	0
   70FF FF                 2436 	.byte	-1
   7100 05                 2437 	.byte	5
   7101 00                 2438 	.byte	0
   7102 FF                 2439 	.byte	-1
   7103 00                 2440 	.byte	0
   7104 05                 2441 	.byte	5
   7105 FF                 2442 	.byte	-1
   7106 FB                 2443 	.byte	-5
   7107 00                 2444 	.byte	0
   7108 01                 2445 	.byte	1
                           2446 	.area .bss
                           2447 	.globl	_infoText
   CAE7                    2448 _infoText:	.blkb	10
                           2449 	.globl	_moveCount
   CAF1                    2450 _moveCount:	.blkb	2
                           2451 	.globl	_levelHighscore
   CAF3                    2452 _levelHighscore:	.blkb	2
                           2453 	.globl	_picAvailable
   CAF5                    2454 _picAvailable:	.blkb	1
                           2455 	.globl	_gameState
   CAF6                    2456 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$103      0030 GR  |   2 A$bloxorz$104      0033 GR
  2 A$bloxorz$1061     03C8 GR  |   2 A$bloxorz$1062     03CA GR
  2 A$bloxorz$1068     03CC GR  |   2 A$bloxorz$1074     03CF GR
  2 A$bloxorz$1075     03D1 GR  |   2 A$bloxorz$1078     03D3 GR
  2 A$bloxorz$1079     03D5 GR  |   2 A$bloxorz$1085     03D8 GR
  2 A$bloxorz$1086     03DA GR  |   2 A$bloxorz$1092     03DD GR
  2 A$bloxorz$1093     03DF GR  |   2 A$bloxorz$1094     03E1 GR
  2 A$bloxorz$1095     03E3 GR  |   2 A$bloxorz$1096     03E5 GR
  2 A$bloxorz$1097     03E8 GR  |   2 A$bloxorz$110      0035 GR
  2 A$bloxorz$1100     03EA GR  |   2 A$bloxorz$1101     03EC GR
  2 A$bloxorz$1102     03EE GR  |   2 A$bloxorz$1103     03F0 GR
  2 A$bloxorz$1109     03F3 GR  |   2 A$bloxorz$111      0037 GR
  2 A$bloxorz$1110     03F5 GR  |   2 A$bloxorz$1111     03F7 GR
  2 A$bloxorz$1112     03F9 GR  |   2 A$bloxorz$1113     03FB GR
  2 A$bloxorz$1114     03FE GR  |   2 A$bloxorz$1117     0400 GR
  2 A$bloxorz$1118     0402 GR  |   2 A$bloxorz$1119     0404 GR
  2 A$bloxorz$112      0039 GR  |   2 A$bloxorz$1120     0406 GR
  2 A$bloxorz$1126     0409 GR  |   2 A$bloxorz$1127     040B GR
  2 A$bloxorz$1128     040D GR  |   2 A$bloxorz$1129     040F GR
  2 A$bloxorz$1130     0411 GR  |   2 A$bloxorz$1131     0414 GR
  2 A$bloxorz$1134     0416 GR  |   2 A$bloxorz$1135     0418 GR
  2 A$bloxorz$1136     041A GR  |   2 A$bloxorz$1137     041C GR
  2 A$bloxorz$1143     041F GR  |   2 A$bloxorz$1144     0421 GR
  2 A$bloxorz$1145     0423 GR  |   2 A$bloxorz$1146     0425 GR
  2 A$bloxorz$1147     0427 GR  |   2 A$bloxorz$1148     042A GR
  2 A$bloxorz$1151     042C GR  |   2 A$bloxorz$1152     042E GR
  2 A$bloxorz$1153     0430 GR  |   2 A$bloxorz$1154     0432 GR
  2 A$bloxorz$1160     0435 GR  |   2 A$bloxorz$1161     0438 GR
  2 A$bloxorz$1162     043A GR  |   2 A$bloxorz$1168     043C GR
  2 A$bloxorz$1175     043F GR  |   2 A$bloxorz$1176     0442 GR
  2 A$bloxorz$1177     0444 GR  |   2 A$bloxorz$118      003C GR
  2 A$bloxorz$1183     0446 GR  |   2 A$bloxorz$1184     0448 GR
  2 A$bloxorz$119      003E GR  |   2 A$bloxorz$1191     044B GR
  2 A$bloxorz$1192     044E GR  |   2 A$bloxorz$1193     0450 GR
  2 A$bloxorz$1199     0452 GR  |   2 A$bloxorz$120      0040 GR
  2 A$bloxorz$1200     0454 GR  |   2 A$bloxorz$1201     0456 GR
  2 A$bloxorz$1202     0458 GR  |   2 A$bloxorz$1205     045B GR
  2 A$bloxorz$1208     045E GR  |   2 A$bloxorz$121      0042 GR
  2 A$bloxorz$1210     0460 GR  |   2 A$bloxorz$1211     0462 GR
  2 A$bloxorz$1214     0464 GR  |   2 A$bloxorz$122      0045 GR
  2 A$bloxorz$1220     0466 GR  |   2 A$bloxorz$1226     0469 GR
  2 A$bloxorz$1227     046C GR  |   2 A$bloxorz$1233     046F GR
  2 A$bloxorz$1234     0472 GR  |   2 A$bloxorz$1235     0473 GR
  2 A$bloxorz$124      0047 GR  |   2 A$bloxorz$1241     0476 GR
  2 A$bloxorz$1242     0478 GR  |   2 A$bloxorz$1248     047C GR
  2 A$bloxorz$1249     047F GR  |   2 A$bloxorz$1250     0482 GR
  2 A$bloxorz$1256     0484 GR  |   2 A$bloxorz$1257     0487 GR
  2 A$bloxorz$1258     0488 GR  |   2 A$bloxorz$1259     048A GR
  2 A$bloxorz$1260     048C GR  |   2 A$bloxorz$1261     048E GR
  2 A$bloxorz$1262     0490 GR  |   2 A$bloxorz$1268     0493 GR
  2 A$bloxorz$1269     0496 GR  |   2 A$bloxorz$1270     0497 GR
  2 A$bloxorz$1271     0498 GR  |   2 A$bloxorz$1272     049A GR
  2 A$bloxorz$1273     049D GR  |   2 A$bloxorz$1274     049F GR
  2 A$bloxorz$1275     04A0 GR  |   2 A$bloxorz$1276     04A2 GR
  2 A$bloxorz$1277     04A4 GR  |   2 A$bloxorz$1278     04A7 GR
  2 A$bloxorz$1285     04A9 GR  |   2 A$bloxorz$1286     04AC GR
  2 A$bloxorz$1287     04AD GR  |   2 A$bloxorz$1293     04B0 GR
  2 A$bloxorz$1294     04B3 GR  |   2 A$bloxorz$1295     04B5 GR
  2 A$bloxorz$1302     04B8 GR  |   2 A$bloxorz$1304     04BB GR
  2 A$bloxorz$1305     04BD GR  |   2 A$bloxorz$1308     04BE GR
  2 A$bloxorz$1314     04C0 GR  |   2 A$bloxorz$132      0048 GR
  2 A$bloxorz$1320     04C3 GR  |   2 A$bloxorz$1321     04C6 GR
  2 A$bloxorz$1322     04C7 GR  |   2 A$bloxorz$1323     04C9 GR
  2 A$bloxorz$1329     04CC GR  |   2 A$bloxorz$133      004B GR
  2 A$bloxorz$1330     04CE GR  |   2 A$bloxorz$1336     04D0 GR
  2 A$bloxorz$1337     04D1 GR  |   2 A$bloxorz$1338     04D3 GR
  2 A$bloxorz$1340     04D4 GR  |   2 A$bloxorz$1346     04D7 GR
  2 A$bloxorz$1353     04DA GR  |   2 A$bloxorz$1354     04DD GR
  2 A$bloxorz$1355     04DF GR  |   2 A$bloxorz$1361     04E1 GR
  2 A$bloxorz$1363     04E4 GR  |   2 A$bloxorz$1364     04E6 GR
  2 A$bloxorz$1372     04E7 GR  |   2 A$bloxorz$1378     04EA GR
  2 A$bloxorz$1379     04ED GR  |   2 A$bloxorz$1380     04F0 GR
  2 A$bloxorz$1381     04F2 GR  |   2 A$bloxorz$1382     04F4 GR
  2 A$bloxorz$1389     04F7 GR  |   2 A$bloxorz$139      004D GR
  2 A$bloxorz$1390     04FA GR  |   2 A$bloxorz$1398     04FB GR
  2 A$bloxorz$140      004F GR  |   2 A$bloxorz$1404     04FE GR
  2 A$bloxorz$1405     04FF GR  |   2 A$bloxorz$141      0051 GR
  2 A$bloxorz$1411     0502 GR  |   2 A$bloxorz$1417     0505 GR
  2 A$bloxorz$1418     0508 GR  |   2 A$bloxorz$1419     050A GR
  2 A$bloxorz$142      0054 GR  |   2 A$bloxorz$1425     050C GR
  2 A$bloxorz$1426     050D GR  |   2 A$bloxorz$143      0056 GR
  2 A$bloxorz$1432     0510 GR  |   2 A$bloxorz$1433     0512 GR
  2 A$bloxorz$1434     0515 GR  |   2 A$bloxorz$1436     0518 GR
  2 A$bloxorz$1437     051B GR  |   2 A$bloxorz$1438     051D GR
  2 A$bloxorz$1444     051F GR  |   2 A$bloxorz$1445     0521 GR
  2 A$bloxorz$1451     0524 GR  |   2 A$bloxorz$1452     0526 GR
  2 A$bloxorz$1453     0529 GR  |   2 A$bloxorz$1455     052B GR
  2 A$bloxorz$1456     052E GR  |   2 A$bloxorz$1457     0530 GR
  2 A$bloxorz$1463     0532 GR  |   2 A$bloxorz$1464     0534 GR
  2 A$bloxorz$1470     0537 GR  |   2 A$bloxorz$1471     0539 GR
  2 A$bloxorz$1472     053C GR  |   2 A$bloxorz$1474     053E GR
  2 A$bloxorz$1475     0541 GR  |   2 A$bloxorz$1476     0543 GR
  2 A$bloxorz$1482     0545 GR  |   2 A$bloxorz$1483     0547 GR
  2 A$bloxorz$1489     054A GR  |   2 A$bloxorz$1490     054C GR
  2 A$bloxorz$1497     054F GR  |   2 A$bloxorz$1498     0552 GR
  2 A$bloxorz$1499     0554 GR  |   2 A$bloxorz$150      0058 GR
  2 A$bloxorz$1505     0556 GR  |   2 A$bloxorz$1506     0559 GR
  2 A$bloxorz$1512     055C GR  |   2 A$bloxorz$1513     055E GR
  2 A$bloxorz$152      005A GR  |   2 A$bloxorz$1520     0562 GR
  2 A$bloxorz$1526     0565 GR  |   2 A$bloxorz$1527     0568 GR
  2 A$bloxorz$1528     056A GR  |   2 A$bloxorz$1534     056C GR
  2 A$bloxorz$1535     056F GR  |   2 A$bloxorz$1536     0570 GR
  2 A$bloxorz$1542     0573 GR  |   2 A$bloxorz$1543     0576 GR
  2 A$bloxorz$1544     0578 GR  |   2 A$bloxorz$155      005B GR
  2 A$bloxorz$1551     057B GR  |   2 A$bloxorz$1558     057E GR
  2 A$bloxorz$1559     0581 GR  |   2 A$bloxorz$156      005D GR
  2 A$bloxorz$1560     0583 GR  |   2 A$bloxorz$1566     0585 GR
  2 A$bloxorz$1567     0588 GR  |   2 A$bloxorz$1573     058A GR
  2 A$bloxorz$1575     058D GR  |   2 A$bloxorz$1583     058E GR
  2 A$bloxorz$1584     0590 GR  |   2 A$bloxorz$1590     0593 GR
  2 A$bloxorz$1596     0596 GR  |   2 A$bloxorz$1597     0599 GR
  2 A$bloxorz$1603     059C GR  |   2 A$bloxorz$1604     059F GR
  2 A$bloxorz$1610     05A2 GR  |   2 A$bloxorz$1611     05A6 GR
  2 A$bloxorz$1614     05A7 GR  |   2 A$bloxorz$162      005F GR
  2 A$bloxorz$1620     05A9 GR  |   2 A$bloxorz$1626     05AC GR
  2 A$bloxorz$1627     05AD GR  |   2 A$bloxorz$163      0062 GR
  2 A$bloxorz$1633     05B0 GR  |   2 A$bloxorz$1639     05B3 GR
  2 A$bloxorz$164      0064 GR  |   2 A$bloxorz$1640     05B6 GR
  2 A$bloxorz$1646     05BA GR  |   2 A$bloxorz$1647     05BD GR
  2 A$bloxorz$1648     05BF GR  |   2 A$bloxorz$1649     05C2 GR
  2 A$bloxorz$165      0067 GR  |   2 A$bloxorz$1650     05C5 GR
  2 A$bloxorz$1656     05C7 GR  |   2 A$bloxorz$1657     05CA GR
  2 A$bloxorz$1658     05CB GR  |   2 A$bloxorz$1659     05CD GR
  2 A$bloxorz$166      0069 GR  |   2 A$bloxorz$1660     05D0 GR
  2 A$bloxorz$1661     05D2 GR  |   2 A$bloxorz$1662     05D4 GR
  2 A$bloxorz$1663     05D7 GR  |   2 A$bloxorz$1669     05D9 GR
  2 A$bloxorz$167      006C GR  |   2 A$bloxorz$1670     05DC GR
  2 A$bloxorz$1671     05DD GR  |   2 A$bloxorz$1672     05DF GR
  2 A$bloxorz$1673     05E2 GR  |   2 A$bloxorz$1674     05E5 GR
  2 A$bloxorz$1680     05E7 GR  |   2 A$bloxorz$1681     05EA GR
  2 A$bloxorz$1682     05EC GR  |   2 A$bloxorz$1683     05EF GR
  2 A$bloxorz$1684     05F2 GR  |   2 A$bloxorz$1690     05F4 GR
  2 A$bloxorz$1691     05F7 GR  |   2 A$bloxorz$1692     05F8 GR
  2 A$bloxorz$1693     05FA GR  |   2 A$bloxorz$1694     05FD GR
  2 A$bloxorz$1695     05FF GR  |   2 A$bloxorz$1696     0601 GR
  2 A$bloxorz$1697     0604 GR  |   2 A$bloxorz$1703     0606 GR
  2 A$bloxorz$1704     0609 GR  |   2 A$bloxorz$1705     060A GR
  2 A$bloxorz$1706     060C GR  |   2 A$bloxorz$1707     060F GR
  2 A$bloxorz$1708     0612 GR  |   2 A$bloxorz$1714     0614 GR
  2 A$bloxorz$1715     0616 GR  |   2 A$bloxorz$1716     0619 GR
  2 A$bloxorz$1717     061B GR  |   2 A$bloxorz$1718     061D GR
  2 A$bloxorz$1719     061F GR  |   2 A$bloxorz$1720     0621 GR
  2 A$bloxorz$1721     0625 GR  |   2 A$bloxorz$1728     0627 GR
  2 A$bloxorz$1729     0629 GR  |   2 A$bloxorz$173      006E GR
  2 A$bloxorz$1730     062B GR  |   2 A$bloxorz$1731     062D GR
  2 A$bloxorz$1732     062F GR  |   2 A$bloxorz$1739     0631 GR
  2 A$bloxorz$174      0070 GR  |   2 A$bloxorz$1746     0634 GR
  2 A$bloxorz$175      0073 GR  |   2 A$bloxorz$1753     0636 GR
  2 A$bloxorz$1754     0638 GR  |   2 A$bloxorz$1755     063A GR
  2 A$bloxorz$1756     063C GR  |   2 A$bloxorz$176      0075 GR
  2 A$bloxorz$1763     063E GR  |   2 A$bloxorz$1770     0641 GR
  2 A$bloxorz$1777     0643 GR  |   2 A$bloxorz$1778     0645 GR
  2 A$bloxorz$1779     0647 GR  |   2 A$bloxorz$1780     0649 GR
  2 A$bloxorz$1787     064B GR  |   2 A$bloxorz$1800     064E GR
  2 A$bloxorz$1801     0651 GR  |   2 A$bloxorz$1802     0653 GR
  2 A$bloxorz$1803     0656 GR  |   2 A$bloxorz$1804     0659 GR
  2 A$bloxorz$1805     065B GR  |   2 A$bloxorz$1806     065E GR
  2 A$bloxorz$1807     0661 GR  |   2 A$bloxorz$1808     0663 GR
  2 A$bloxorz$1809     0666 GR  |   2 A$bloxorz$1815     0668 GR
  2 A$bloxorz$1821     066B GR  |   2 A$bloxorz$1822     066D GR
  2 A$bloxorz$1828     0670 GR  |   2 A$bloxorz$1829     0673 GR
  2 A$bloxorz$183      0079 GR  |   2 A$bloxorz$1835     0676 GR
  2 A$bloxorz$1836     0678 GR  |   2 A$bloxorz$1837     067C GR
  2 A$bloxorz$184      007B GR  |   2 A$bloxorz$1844     067E GR
  2 A$bloxorz$1845     0681 GR  |   2 A$bloxorz$1846     0683 GR
  2 A$bloxorz$185      007D GR  |   2 A$bloxorz$1852     0685 GR
  2 A$bloxorz$1853     0687 GR  |   2 A$bloxorz$186      0080 GR
  2 A$bloxorz$1860     068A GR  |   2 A$bloxorz$1861     068D GR
  2 A$bloxorz$1862     068F GR  |   2 A$bloxorz$1863     0691 GR
  2 A$bloxorz$1864     0693 GR  |   2 A$bloxorz$1865     0695 GR
  2 A$bloxorz$1866     0699 GR  |   2 A$bloxorz$1873     069C GR
  2 A$bloxorz$1874     069E GR  |   2 A$bloxorz$1875     06A0 GR
  2 A$bloxorz$1876     06A2 GR  |   2 A$bloxorz$1877     06A4 GR
  2 A$bloxorz$1878     06A6 GR  |   2 A$bloxorz$1879     06A8 GR
  2 A$bloxorz$1886     06AA GR  |   2 A$bloxorz$1887     06AD GR
  2 A$bloxorz$1888     06AF GR  |   2 A$bloxorz$1889     06B2 GR
  2 A$bloxorz$1890     06B5 GR  |   2 A$bloxorz$1897     06B7 GR
  2 A$bloxorz$1904     06BA GR  |   2 A$bloxorz$1905     06BC GR
  2 A$bloxorz$1906     06BE GR  |   2 A$bloxorz$1912     06C0 GR
  2 A$bloxorz$1913     06C3 GR  |   2 A$bloxorz$1914     06C5 GR
  2 A$bloxorz$1915     06C8 GR  |   2 A$bloxorz$1916     06CB GR
  2 A$bloxorz$1923     06CD GR  |   2 A$bloxorz$1924     06CF GR
  2 A$bloxorz$1925     06D1 GR  |   2 A$bloxorz$1931     06D3 GR
  2 A$bloxorz$1932     06D6 GR  |   2 A$bloxorz$1933     06D7 GR
  2 A$bloxorz$1934     06D9 GR  |   2 A$bloxorz$1935     06DC GR
  2 A$bloxorz$1936     06DF GR  |   2 A$bloxorz$1943     06E1 GR
  2 A$bloxorz$1950     06E3 GR  |   2 A$bloxorz$1951     06E5 GR
  2 A$bloxorz$1952     06E7 GR  |   2 A$bloxorz$1958     06E9 GR
  2 A$bloxorz$1959     06EC GR  |   2 A$bloxorz$196      0082 GR
  2 A$bloxorz$1960     06EE GR  |   2 A$bloxorz$1961     06F1 GR
  2 A$bloxorz$1962     06F4 GR  |   2 A$bloxorz$1969     06F6 GR
  2 A$bloxorz$197      0084 GR  |   2 A$bloxorz$1970     06F8 GR
  2 A$bloxorz$1971     06FA GR  |   2 A$bloxorz$1977     06FC GR
  2 A$bloxorz$1978     06FF GR  |   2 A$bloxorz$1979     0700 GR
  2 A$bloxorz$198      0086 GR  |   2 A$bloxorz$1980     0702 GR
  2 A$bloxorz$1981     0705 GR  |   2 A$bloxorz$1982     0707 GR
  2 A$bloxorz$1983     0709 GR  |   2 A$bloxorz$1984     070C GR
  2 A$bloxorz$199      0088 GR  |   2 A$bloxorz$1997     070E GR
  2 A$bloxorz$1998     0711 GR  |   2 A$bloxorz$200      008A GR
  2 A$bloxorz$2004     0713 GR  |   2 A$bloxorz$2006     0716 GR
  2 A$bloxorz$2007     0718 GR  |   2 A$bloxorz$201      008C GR
  2 A$bloxorz$2010     0719 GR  |   2 A$bloxorz$2011     071B GR
  2 A$bloxorz$2017     071D GR  |   2 A$bloxorz$2018     071F GR
  2 A$bloxorz$202      008E GR  |   2 A$bloxorz$2024     0723 GR
  2 A$bloxorz$203      0090 GR  |   2 A$bloxorz$2030     0726 GR
  2 A$bloxorz$2031     0728 GR  |   2 A$bloxorz$2032     072A GR
  2 A$bloxorz$2038     072D GR  |   2 A$bloxorz$2039     072F GR
  2 A$bloxorz$204      0091 GR  |   2 A$bloxorz$2040     0731 GR
  2 A$bloxorz$2046     0734 GR  |   2 A$bloxorz$2047     0736 GR
  2 A$bloxorz$2048     0738 GR  |   2 A$bloxorz$2049     073B GR
  2 A$bloxorz$205      0092 GR  |   2 A$bloxorz$2050     073D GR
  2 A$bloxorz$2051     073F GR  |   2 A$bloxorz$2057     0741 GR
  2 A$bloxorz$2058     0743 GR  |   2 A$bloxorz$206      0094 GR
  2 A$bloxorz$2065     0746 GR  |   2 A$bloxorz$2066     0749 GR
  2 A$bloxorz$2067     074C GR  |   2 A$bloxorz$2068     074F GR
  2 A$bloxorz$2069     0752 GR  |   2 A$bloxorz$207      0096 GR
  2 A$bloxorz$2070     0755 GR  |   2 A$bloxorz$2071     0758 GR
  2 A$bloxorz$2072     075B GR  |   2 A$bloxorz$2073     075E GR
  2 A$bloxorz$2074     0761 GR  |   2 A$bloxorz$208      0098 GR
  2 A$bloxorz$2080     0764 GR  |   2 A$bloxorz$2081     0766 GR
  2 A$bloxorz$2087     0769 GR  |   2 A$bloxorz$2088     076B GR
  2 A$bloxorz$209      009A GR  |   2 A$bloxorz$2094     076E GR
  2 A$bloxorz$210      009C GR  |   2 A$bloxorz$2100     0771 GR
  2 A$bloxorz$2106     0774 GR  |   2 A$bloxorz$2112     0777 GR
  2 A$bloxorz$2124     077A GR  |   2 A$bloxorz$2130     077D GR
  2 A$bloxorz$2131     0780 GR  |   2 A$bloxorz$2132     0782 GR
  2 A$bloxorz$2133     0786 GR  |   2 A$bloxorz$2134     0787 GR
  2 A$bloxorz$2135     0789 GR  |   2 A$bloxorz$2136     078A GR
  2 A$bloxorz$2137     078B GR  |   2 A$bloxorz$2138     078D GR
  2 A$bloxorz$2153     079F GR  |   2 A$bloxorz$2159     07A2 GR
  2 A$bloxorz$2166     07A5 GR  |   2 A$bloxorz$217      009E GR
  2 A$bloxorz$2172     07A8 GR  |   2 A$bloxorz$2179     07AB GR
  2 A$bloxorz$2185     07AE GR  |   2 A$bloxorz$2191     07B1 GR
  2 A$bloxorz$2198     07B4 GR  |   2 A$bloxorz$2204     07B7 GR
  2 A$bloxorz$2210     07BA GR  |   2 A$bloxorz$2217     07BD GR
  2 A$bloxorz$2223     07C0 GR  |   2 A$bloxorz$2229     07C3 GR
  2 A$bloxorz$223      00A0 GR  |   2 A$bloxorz$2236     07C5 GR
  2 A$bloxorz$224      00A2 GR  |   2 A$bloxorz$2242     07C8 GR
  2 A$bloxorz$2248     07CB GR  |   2 A$bloxorz$225      00A4 GR
  2 A$bloxorz$2255     07CD GR  |   2 A$bloxorz$226      00A6 GR
  2 A$bloxorz$2261     07D0 GR  |   2 A$bloxorz$227      00A8 GR
  2 A$bloxorz$2273     07D3 GR  |   2 A$bloxorz$2274     07D6 GR
  2 A$bloxorz$2275     07D8 GR  |   2 A$bloxorz$228      00AA GR
  2 A$bloxorz$2281     07DC GR  |   2 A$bloxorz$2287     07DF GR
  2 A$bloxorz$2288     07E2 GR  |   2 A$bloxorz$229      00AD GR
  2 A$bloxorz$2291     07E4 GR  |   2 A$bloxorz$2292     07E6 GR
  2 A$bloxorz$2298     07E9 GR  |   2 A$bloxorz$230      00AF GR
  2 A$bloxorz$2304     07EC GR  |   2 A$bloxorz$2307     07EF GR
  2 A$bloxorz$231      00B1 GR  |   2 A$bloxorz$233      00B3 GR
  2 A$bloxorz$240      00B5 GR  |   2 A$bloxorz$241      00B7 GR
  2 A$bloxorz$242      00B9 GR  |   2 A$bloxorz$243      00BB GR
  2 A$bloxorz$244      00BD GR  |   2 A$bloxorz$245      00BF GR
  2 A$bloxorz$246      00C1 GR  |   2 A$bloxorz$247      00C3 GR
  2 A$bloxorz$248      00C5 GR  |   2 A$bloxorz$249      00C7 GR
  2 A$bloxorz$250      00C9 GR  |   2 A$bloxorz$251      00CB GR
  2 A$bloxorz$252      00CE GR  |   2 A$bloxorz$253      00D0 GR
  2 A$bloxorz$254      00D2 GR  |   2 A$bloxorz$255      00D6 GR
  2 A$bloxorz$256      00D8 GR  |   2 A$bloxorz$264      00DA GR
  2 A$bloxorz$265      00DD GR  |   2 A$bloxorz$266      00DF GR
  2 A$bloxorz$267      00E2 GR  |   2 A$bloxorz$273      00E5 GR
  2 A$bloxorz$274      00E8 GR  |   2 A$bloxorz$275      00E9 GR
  2 A$bloxorz$276      00EC GR  |   2 A$bloxorz$277      00EE GR
  2 A$bloxorz$278      00EF GR  |   2 A$bloxorz$279      00F1 GR
  2 A$bloxorz$280      00F4 GR  |   2 A$bloxorz$281      00F6 GR
  2 A$bloxorz$289      00F7 GR  |   2 A$bloxorz$290      00F9 GR
  2 A$bloxorz$296      00FC GR  |   2 A$bloxorz$297      00FF GR
  2 A$bloxorz$300      0100 GR  |   2 A$bloxorz$306      0102 GR
  2 A$bloxorz$307      0104 GR  |   2 A$bloxorz$310      0106 GR
  2 A$bloxorz$311      0108 GR  |   2 A$bloxorz$314      010B GR
  2 A$bloxorz$317      010D GR  |   2 A$bloxorz$320      010F GR
  2 A$bloxorz$323      0111 GR  |   2 A$bloxorz$326      0114 GR
  2 A$bloxorz$332      0117 GR  |   2 A$bloxorz$335      0119 GR
  2 A$bloxorz$338      011B GR  |   2 A$bloxorz$341      011E GR
  2 A$bloxorz$344      0120 GR  |   2 A$bloxorz$347      0124 GR
  2 A$bloxorz$35       0000 GR  |   2 A$bloxorz$350      0128 GR
  2 A$bloxorz$353      012A GR  |   2 A$bloxorz$356      012D GR
  2 A$bloxorz$359      012F GR  |   2 A$bloxorz$36       0002 GR
  2 A$bloxorz$362      0133 GR  |   2 A$bloxorz$365      0137 GR
  2 A$bloxorz$368      013B GR  |   2 A$bloxorz$37       0004 GR
  2 A$bloxorz$371      013F GR  |   2 A$bloxorz$374      0141 GR
  2 A$bloxorz$377      0144 GR  |   2 A$bloxorz$380      0146 GR
  2 A$bloxorz$383      0148 GR  |   2 A$bloxorz$386      014A GR
  2 A$bloxorz$389      014B GR  |   2 A$bloxorz$392      014D GR
  2 A$bloxorz$395      014F GR  |   2 A$bloxorz$396      0151 GR
  2 A$bloxorz$429      016D GR  |   2 A$bloxorz$430      016F GR
  2 A$bloxorz$436      0171 GR  |   2 A$bloxorz$442      0174 GR
  2 A$bloxorz$443      0176 GR  |   2 A$bloxorz$446      0178 GR
  2 A$bloxorz$447      017A GR  |   2 A$bloxorz$453      017D GR
  2 A$bloxorz$454      017F GR  |   2 A$bloxorz$460      0182 GR
  2 A$bloxorz$461      0184 GR  |   2 A$bloxorz$462      0186 GR
  2 A$bloxorz$463      0188 GR  |   2 A$bloxorz$464      018A GR
  2 A$bloxorz$465      018D GR  |   2 A$bloxorz$468      018F GR
  2 A$bloxorz$469      0191 GR  |   2 A$bloxorz$470      0193 GR
  2 A$bloxorz$471      0195 GR  |   2 A$bloxorz$477      0198 GR
  2 A$bloxorz$478      019A GR  |   2 A$bloxorz$479      019C GR
  2 A$bloxorz$480      019E GR  |   2 A$bloxorz$481      01A0 GR
  2 A$bloxorz$482      01A3 GR  |   2 A$bloxorz$485      01A5 GR
  2 A$bloxorz$486      01A7 GR  |   2 A$bloxorz$487      01A9 GR
  2 A$bloxorz$488      01AB GR  |   2 A$bloxorz$49       0006 GR
  2 A$bloxorz$494      01AE GR  |   2 A$bloxorz$495      01B0 GR
  2 A$bloxorz$496      01B2 GR  |   2 A$bloxorz$497      01B4 GR
  2 A$bloxorz$498      01B6 GR  |   2 A$bloxorz$499      01B9 GR
  2 A$bloxorz$502      01BB GR  |   2 A$bloxorz$503      01BD GR
  2 A$bloxorz$504      01BF GR  |   2 A$bloxorz$505      01C1 GR
  2 A$bloxorz$511      01C4 GR  |   2 A$bloxorz$512      01C7 GR
  2 A$bloxorz$513      01C9 GR  |   2 A$bloxorz$519      01CB GR
  2 A$bloxorz$526      01CD GR  |   2 A$bloxorz$527      01CF GR
  2 A$bloxorz$528      01D1 GR  |   2 A$bloxorz$529      01D3 GR
  2 A$bloxorz$530      01D6 GR  |   2 A$bloxorz$531      01D8 GR
  2 A$bloxorz$532      01DA GR  |   2 A$bloxorz$533      01DC GR
  2 A$bloxorz$534      01DE GR  |   2 A$bloxorz$540      01E0 GR
  2 A$bloxorz$547      01E3 GR  |   2 A$bloxorz$548      01E6 GR
  2 A$bloxorz$549      01E8 GR  |   2 A$bloxorz$55       0009 GR
  2 A$bloxorz$555      01EA GR  |   2 A$bloxorz$557      01ED GR
  2 A$bloxorz$558      01EF GR  |   2 A$bloxorz$56       000B GR
  2 A$bloxorz$561      01F1 GR  |   2 A$bloxorz$562      01F3 GR
  2 A$bloxorz$568      01F5 GR  |   2 A$bloxorz$574      01F8 GR
  2 A$bloxorz$575      01FA GR  |   2 A$bloxorz$578      01FC GR
  2 A$bloxorz$579      01FE GR  |   2 A$bloxorz$585      0201 GR
  2 A$bloxorz$59       000D GR  |   2 A$bloxorz$591      0204 GR
  2 A$bloxorz$592      0206 GR  |   2 A$bloxorz$593      0208 GR
  2 A$bloxorz$594      020A GR  |   2 A$bloxorz$595      020C GR
  2 A$bloxorz$596      020E GR  |   2 A$bloxorz$599      0210 GR
  2 A$bloxorz$60       000F GR  |   2 A$bloxorz$600      0212 GR
  2 A$bloxorz$601      0214 GR  |   2 A$bloxorz$607      0217 GR
  2 A$bloxorz$608      0219 GR  |   2 A$bloxorz$609      021B GR
  2 A$bloxorz$610      021F GR  |   2 A$bloxorz$613      0222 GR
  2 A$bloxorz$614      0224 GR  |   2 A$bloxorz$620      0227 GR
  2 A$bloxorz$626      022A GR  |   2 A$bloxorz$627      022C GR
  2 A$bloxorz$628      022E GR  |   2 A$bloxorz$629      0230 GR
  2 A$bloxorz$630      0232 GR  |   2 A$bloxorz$631      0234 GR
  2 A$bloxorz$634      0236 GR  |   2 A$bloxorz$635      0238 GR
  2 A$bloxorz$636      023A GR  |   2 A$bloxorz$642      023D GR
  2 A$bloxorz$643      023F GR  |   2 A$bloxorz$644      0241 GR
  2 A$bloxorz$647      0244 GR  |   2 A$bloxorz$648      0246 GR
  2 A$bloxorz$654      0249 GR  |   2 A$bloxorz$66       0012 GR
  2 A$bloxorz$660      024C GR  |   2 A$bloxorz$661      024E GR
  2 A$bloxorz$662      0250 GR  |   2 A$bloxorz$663      0252 GR
  2 A$bloxorz$664      0254 GR  |   2 A$bloxorz$665      0256 GR
  2 A$bloxorz$668      0258 GR  |   2 A$bloxorz$669      025A GR
  2 A$bloxorz$67       0014 GR  |   2 A$bloxorz$670      025C GR
  2 A$bloxorz$676      025F GR  |   2 A$bloxorz$677      0261 GR
  2 A$bloxorz$678      0263 GR  |   2 A$bloxorz$681      0266 GR
  2 A$bloxorz$682      0268 GR  |   2 A$bloxorz$688      026B GR
  2 A$bloxorz$694      026E GR  |   2 A$bloxorz$695      0270 GR
  2 A$bloxorz$696      0272 GR  |   2 A$bloxorz$697      0274 GR
  2 A$bloxorz$698      0276 GR  |   2 A$bloxorz$701      0278 GR
  2 A$bloxorz$702      027A GR  |   2 A$bloxorz$703      027C GR
  2 A$bloxorz$709      027F GR  |   2 A$bloxorz$710      0281 GR
  2 A$bloxorz$711      0283 GR  |   2 A$bloxorz$714      0286 GR
  2 A$bloxorz$715      0288 GR  |   2 A$bloxorz$721      028B GR
  2 A$bloxorz$727      028E GR  |   2 A$bloxorz$728      0290 GR
  2 A$bloxorz$729      0292 GR  |   2 A$bloxorz$73       0017 GR
  2 A$bloxorz$730      0294 GR  |   2 A$bloxorz$731      0296 GR
  2 A$bloxorz$732      0298 GR  |   2 A$bloxorz$735      029A GR
  2 A$bloxorz$736      029C GR  |   2 A$bloxorz$737      029E GR
  2 A$bloxorz$74       0019 GR  |   2 A$bloxorz$743      02A1 GR
  2 A$bloxorz$744      02A3 GR  |   2 A$bloxorz$745      02A5 GR
  2 A$bloxorz$748      02A8 GR  |   2 A$bloxorz$749      02AA GR
  2 A$bloxorz$75       001B GR  |   2 A$bloxorz$755      02AD GR
  2 A$bloxorz$76       001D GR  |   2 A$bloxorz$761      02B0 GR
  2 A$bloxorz$762      02B2 GR  |   2 A$bloxorz$763      02B4 GR
  2 A$bloxorz$764      02B6 GR  |   2 A$bloxorz$765      02B8 GR
  2 A$bloxorz$766      02BA GR  |   2 A$bloxorz$769      02BC GR
  2 A$bloxorz$77       001F GR  |   2 A$bloxorz$770      02BE GR
  2 A$bloxorz$771      02C0 GR  |   2 A$bloxorz$777      02C3 GR
  2 A$bloxorz$778      02C5 GR  |   2 A$bloxorz$779      02C7 GR
  2 A$bloxorz$782      02CA GR  |   2 A$bloxorz$783      02CC GR
  2 A$bloxorz$786      02CF GR  |   2 A$bloxorz$787      02D1 GR
  2 A$bloxorz$790      02D3 GR  |   2 A$bloxorz$791      02D5 GR
  2 A$bloxorz$797      02D7 GR  |   2 A$bloxorz$798      02D9 GR
  2 A$bloxorz$80       0022 GR  |   2 A$bloxorz$801      02DB GR
  2 A$bloxorz$802      02DD GR  |   2 A$bloxorz$808      02E0 GR
  2 A$bloxorz$809      02E2 GR  |   2 A$bloxorz$81       0024 GR
  2 A$bloxorz$815      02E5 GR  |   2 A$bloxorz$816      02E7 GR
  2 A$bloxorz$817      02E9 GR  |   2 A$bloxorz$818      02EB GR
  2 A$bloxorz$819      02EE GR  |   2 A$bloxorz$82       0026 GR
  2 A$bloxorz$822      02F0 GR  |   2 A$bloxorz$823      02F2 GR
  2 A$bloxorz$824      02F4 GR  |   2 A$bloxorz$825      02F6 GR
  2 A$bloxorz$828      02F9 GR  |   2 A$bloxorz$829      02FB GR
  2 A$bloxorz$83       0028 GR  |   2 A$bloxorz$837      02FD GR
  2 A$bloxorz$843      0300 GR  |   2 A$bloxorz$844      0303 GR
  2 A$bloxorz$850      0306 GR  |   2 A$bloxorz$851      0309 GR
  2 A$bloxorz$852      030A GR  |   2 A$bloxorz$858      030D GR
  2 A$bloxorz$859      030E GR  |   2 A$bloxorz$86       002B GR
  2 A$bloxorz$865      0310 GR  |   2 A$bloxorz$866      0312 GR
  2 A$bloxorz$868      0315 GR  |   2 A$bloxorz$871      0316 GR
  2 A$bloxorz$877      0318 GR  |   2 A$bloxorz$878      031B GR
  2 A$bloxorz$879      031C GR  |   2 A$bloxorz$880      031F GR
  2 A$bloxorz$881      0320 GR  |   2 A$bloxorz$887      0323 GR
  2 A$bloxorz$888      0326 GR  |   2 A$bloxorz$889      0327 GR
  2 A$bloxorz$890      0328 GR  |   2 A$bloxorz$891      032B GR
  2 A$bloxorz$892      032D GR  |   2 A$bloxorz$893      032E GR
  2 A$bloxorz$894      0331 GR  |   2 A$bloxorz$895      0334 GR
  2 A$bloxorz$901      0337 GR  |   2 A$bloxorz$902      033B GR
  2 A$bloxorz$903      033D GR  |   2 A$bloxorz$904      0340 GR
  2 A$bloxorz$911      0343 GR  |   2 A$bloxorz$912      0346 GR
  2 A$bloxorz$913      0347 GR  |   2 A$bloxorz$914      0349 GR
  2 A$bloxorz$915      034A GR  |   2 A$bloxorz$916      034B GR
  2 A$bloxorz$917      034D GR  |   2 A$bloxorz$918      0351 GR
  2 A$bloxorz$924      0354 GR  |   2 A$bloxorz$930      0357 GR
  2 A$bloxorz$936      035A GR  |   2 A$bloxorz$937      035D GR
  2 A$bloxorz$938      035F GR  |   2 A$bloxorz$94       002E GR
  2 A$bloxorz$944      0362 GR  |   2 A$bloxorz$945      0364 GR
  2 A$bloxorz$95       002F GR  |   2 A$bloxorz$951      0367 GR
  2 A$bloxorz$957      036A GR  |   2 A$bloxorz$958      036C GR
  2 A$bloxorz$964      036F GR  |   2 A$bloxorz$965      0371 GR
  2 A$bloxorz$971      0374 GR  |   2 A$bloxorz$972      0377 GR
  2 A$bloxorz$978      037A GR  |   2 A$bloxorz$979      037C GR
  2 A$bloxorz$985      0380 GR  |   2 A$bloxorz$986      0383 GR
  2 A$bloxorz$992      0386 GR  |   2 A$bloxorz$993      0389 GR
  2 A$bloxorz$994      038B GR  |   2 L10                0058 R
  2 L100               0746 R   |   2 L101               07D3 R
  2 L102               079F R   |   2 L103               07A5 R
  2 L104               07AB R   |   2 L105               07B4 R
  2 L106               07BD R   |   2 L107               07C5 R
  2 L108               07CD R   |   2 L109               0791 R
  2 L11                005A R   |   2 L112               077A R
  2 L14                0079 R   |   2 L15                00B3 R
  2 L16                00B5 R   |   2 L17                009E R
  2 L18                0082 R   |   2 L2                 0006 R
  2 L28                01E3 R   |   2 L29                01CD R
  2 L31                01ED R   |   2 L39                0315 R
  2 L41                0343 R   |   2 L44                043F R
  2 L45                044B R   |   2 L47                0460 R
  2 L50                04A9 R   |   2 L51                04B8 R
  2 L52                04BB R   |   2 L54                04DA R
  2 L56                04E4 R   |   2 L58                04F7 R
  2 L61                0518 R   |   2 L62                054F R
  2 L63                052B R   |   2 L64                053E R
  2 L65                0562 R   |   2 L66                057E R
  2 L67                057B R   |   2 L69                058D R
  2 L74                064E R   |   2 L75                0627 R
  2 L76                0636 R   |   2 L78                0631 R
  2 L79                0634 R   |   2 L8                 0047 R
  2 L80                063E R   |   2 L81                0641 R
  2 L82                064B R   |   2 L83                064E R
  2 L84                067E R   |   2 L85                068A R
  2 L86                070E R   |   2 L87                069C R
  2 L88                06BA R   |   2 L90                06AA R
  2 L91                06B7 R   |   2 L92                06CD R
  2 L93                06E1 R   |   2 L94                06F6 R
  2 L95                070E R   |   2 L96                0716 R
  2 L97                0643 R   |   2 L98                06E3 R
  2 LC0                0152 R   |   2 LC1                0160 R
  2 LC2                0167 R   |   2 LC3                038C R
  2 LC4                0397 R   |   2 LC5                03A5 R
  2 LC6                03B8 R   |     _Vec_Buttons       **** GX
    _Vec_Text_Widt     **** GX  |     ___DP_to_C8        **** GX
    ___DP_to_D0        **** GX  |     ___Do_Sound        **** GX
    ___Draw_VLp        **** GX  |     ___Init_Music_     **** GX
    ___Intensity_a     **** GX  |     ___Joy_Digital     **** GX
    ___Moveto_d        **** GX  |     ___Print_Str_d     **** GX
    ___Read_Btns       **** GX  |     ___Reset0Ref       **** GX
    ___Wait_Recal      **** GX  |     _blockAnimatin     **** GX
  2 _blockFalling      04BE GR  |   2 _blockMoving       05A7 GR
  2 _blockMovingAt     0464 GR  |   2 _blockMovingTo     02FD GR
    _blockOrientat     **** GX  |     _blockStartLev     **** GX
  2 _blockWaiting      04FB GR  |     _blockX            **** GX
    _blockY            **** GX  |     _blockYOfs         **** GX
  2 _changeMusic       00F7 GR  |   2 _clearMenu         016D GR
  3 _currentMusic      0000 GR  |     _doBlockAnimat     **** GX
    _dp_VIA_t1_cnt     **** GX  |     _drawBlock         **** GX
  2 _drawField         0100 GR  |     _endX              **** GX
    _endY              **** GX  |   2 _fallingMusic      082C GR
  4 _gameState         000F GR  |     _getField          **** GX
  4 _infoText          0000 GR  |     _initLevel         **** GX
    _initSwatches      **** GX  |     _isField           **** GX
  2 _itoa              005B GR  |     _lastBlockDire     **** GX
  2 _led8              0854 GR  |     _level             **** GX
    _levelCount        **** GX  |   2 _levelEndMusic     0812 GR
  4 _levelHighscor     000C GR  |     _levelNumber       **** GX
    _levels            **** GX  |     _lineCount         **** GX
    _lineX0            **** GX  |     _lineX1            **** GX
    _lineY0            **** GX  |     _lineY1            **** GX
  2 _main              0719 GR  |   2 _mainMenu          03C8 GR
  2 _moveBlock         04E7 GR  |     _moveBlockImpl     **** GX
  4 _moveCount         000A GR  |   2 _movingMusic       084C GR
  4 _picAvailable      000E GR  |   2 _readEeprom        0048 GR
  2 _runtimeError      0000 GR  |   2 _sendCommand       002E GR
  2 _showInfo          02D3 GR  |   2 _showInfo2         01F1 GR
    _splitMode         **** GX  |   2 _startBlockFal     058E GR
  2 _startLevel        0316 GR  |   2 _startMusic        07F2 GR
    _swapSplit         **** GX  |     _swatchSwitch      **** GX
    _testMerge         **** GX  |   2 _updateInfoTex     00DA GR
  3 _vecx              0002 GR  |   2 _writeEeprom       0030 GR
  2 drawFieldLoop      0117 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  86A   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

