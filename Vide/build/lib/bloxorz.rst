                              1 ;;; gcc for m6809 : Mar 17 2019 11:56:12
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	bloxorz.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report -I/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include
                             12 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             13 ; /home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c
                             14 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             15 ; -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             16 ; -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             17 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             18 ; -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             19 ; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             20 ; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             21 ; -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             22 ; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             23 ; -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             24 ; -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             25 ; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             26 ; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             27 ; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             28 ; -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             29 ; -fzero-initialized-in-bss
                             30 ; Compiler executable checksum: 74a0323a4f41feb77857e3eae52873ae
                             31 	.area	.text
                             32 	.globl	_runtimeError
   48A0                      33 _runtimeError:
   48A0 34 60         [ 7]   34 	pshs	y,u	;
   48A2 32 7C         [ 5]   35 	leas	-4,s	;,,
   48A4 31 84         [ 4]   36 	leay	,x	; msg, msg
                             37 ;----- asm -----
                             38 ; 180 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             39 	; #ENR#[170]	while (1) {
                             40 ; 0 "" 2
                             41 ;--- end asm ---
   48A6                      42 L2:
                             43 ;----- asm -----
                             44 ; 182 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             45 	; #ENR#[171]		frwait();
                             46 ; 0 "" 2
                             47 ; 97 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48A6 BD F1 92      [ 8]   48 	jsr ___Wait_Recal; BIOS call
                             49 ; 0 "" 2
                             50 ; 184 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             51 	; #ENR#[172]         Intensity_a(0x5f);
                             52 ; 0 "" 2
                             53 ;--- end asm ---
   48A9 C6 5F         [ 2]   54 	ldb	#95	;,
   48AB E7 63         [ 5]   55 	stb	3,s	;, a
                             56 ;----- asm -----
                             57 ; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48AD A6 63         [ 5]   58 	lda 3,s	; a
   48AF BD F2 AB      [ 8]   59 	jsr ___Intensity_a; BIOS call
                             60 ; 0 "" 2
                             61 ; 186 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             62 	; #ENR#[173]         Vec_Text_Width = 90;
                             63 ; 0 "" 2
                             64 ;--- end asm ---
   48B2 C6 5A         [ 2]   65 	ldb	#90	;,
   48B4 F7 C8 2B      [ 5]   66 	stb	_Vec_Text_Width	;, Vec_Text_Width
                             67 ;----- asm -----
                             68 ; 188 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             69 	; #ENR#[174]         Print_Str_d(-10, -110, msg);
                             70 ; 0 "" 2
                             71 ;--- end asm ---
   48B7 C6 F6         [ 2]   72 	ldb	#-10	;,
   48B9 E7 63         [ 5]   73 	stb	3,s	;, a
   48BB C6 92         [ 2]   74 	ldb	#-110	;,
   48BD E7 62         [ 5]   75 	stb	2,s	;, b
   48BF 10 AF E4      [ 6]   76 	sty	,s	; msg, u
                             77 ;----- asm -----
                             78 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48C2 A6 63         [ 5]   79 	lda 3,s	; a
   48C4 E6 62         [ 5]   80 	ldb 2,s	; b
   48C6 EE E4         [ 5]   81 	ldu ,s	; u
   48C8 BD F3 7A      [ 8]   82 	jsr ___Print_Str_d; BIOS call
                             83 ; 0 "" 2
                             84 ;--- end asm ---
   48CB 16 FF D8      [ 5]   85 	lbra	L2	;
                             86 	.globl	_itoa
   48CE                      87 _itoa:
   48CE 34 60         [ 7]   88 	pshs	y,u	;
   48D0 32 71         [ 5]   89 	leas	-15,s	;,,
                             90 ;----- asm -----
                             91 ; 220 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             92 	; #ENR#[199]	uint16_t muls[] = { 100, 10, 1 };
                             93 ; 0 "" 2
                             94 ;--- end asm ---
   48D2 CC 00 64      [ 3]   95 	ldd	#100	;,
   48D5 ED 69         [ 6]   96 	std	9,s	;, muls
   48D7 CC 00 0A      [ 3]   97 	ldd	#10	;,
   48DA ED 6B         [ 6]   98 	std	11,s	;, muls
   48DC CC 00 01      [ 3]   99 	ldd	#1	;,
   48DF ED 6D         [ 6]  100 	std	13,s	;, muls
                            101 ;----- asm -----
                            102 ; 222 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            103 	; #ENR#[200]	if (number > 999) number = 999;
                            104 ; 0 "" 2
                            105 ;--- end asm ---
   48E1 31 84         [ 4]  106 	leay	,x	; number.96, number
   48E3 8C 03 E7      [ 4]  107 	cmpx	#999	;cmphi:	; number.96,
   48E6 23 04         [ 3]  108 	bls	L5	;
   48E8 10 8E 03 E7   [ 4]  109 	ldy	#999	; number.96,
   48EC                     110 L5:
                            111 ;----- asm -----
                            112 ; 224 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            113 	; #ENR#[201]	for (uint8_t i = 0; i < 3; i++) {
                            114 ; 0 "" 2
                            115 ;--- end asm ---
   48EC 30 69         [ 5]  116 	leax	9,s	;,,
   48EE AF 65         [ 6]  117 	stx	5,s	;, ivtmp.92
   48F0 EC E8 15      [ 6]  118 	ldd	21,s	;, text
   48F3 ED 67         [ 6]  119 	std	7,s	;, ivtmp.94
   48F5                     120 L9:
                            121 ;----- asm -----
                            122 ; 226 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            123 	; #ENR#[202]		uint8_t d = 0;
                            124 ; 0 "" 2
                            125 ; 228 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            126 	; #ENR#[203]		while (number >= muls[i]) {
                            127 ; 0 "" 2
                            128 ;--- end asm ---
   48F5 AE 65         [ 6]  129 	ldx	5,s	;, ivtmp.92
   48F7 AE 84         [ 5]  130 	ldx	,x	;, muls
   48F9 AF E4         [ 5]  131 	stx	,s	;, D.2288
   48FB 34 20         [ 6]  132 	pshs	y	;cmphi: R:y with R:x	; number.96,
   48FD AC E1         [ 9]  133 	cmpx	,s++	;cmphi:	;
   48FF 22 25         [ 3]  134 	bhi	L6	;
   4901 1F 10         [ 6]  135 	tfr	x,d	;,
   4903 40            [ 2]  136 	nega
   4904 50            [ 2]  137 	negb
   4905 82 00         [ 2]  138 	sbca	#0
   4907 ED 63         [ 6]  139 	std	3,s	;, ivtmp.82
   4909 1F 20         [ 6]  140 	tfr	y,d	; number.96,
   490B A3 E4         [ 6]  141 	subd	,s	;subhi: R:d -= ,s	;, D.2288
   490D 1F 02         [ 6]  142 	tfr	d,y	;, number.96
   490F 6F 62         [ 7]  143 	clr	2,s	; d
   4911                     144 L8:
                            145 ;----- asm -----
                            146 ; 230 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            147 	; #ENR#[204]			d++;
                            148 ; 0 "" 2
                            149 ;--- end asm ---
   4911 6C 62         [ 7]  150 	inc	2,s	; d
                            151 ;----- asm -----
                            152 ; 232 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            153 	; #ENR#[205]			number -= muls[i];
                            154 ; 0 "" 2
                            155 ;--- end asm ---
   4913 EC 63         [ 6]  156 	ldd	3,s	;, ivtmp.82
   4915 33 AB         [ 8]  157 	leau	d,y	; number.95,, number.96
   4917 EC E4         [ 5]  158 	ldd	,s	;, D.2288
   4919 30 CB         [ 8]  159 	leax	d,u	; tmp85,, number.95
   491B 34 10         [ 6]  160 	pshs	x	;cmphi: R:x with R:d	; tmp85,
   491D 10 A3 E1      [10]  161 	cmpd	,s++	;cmphi:	;
   4920 22 06         [ 3]  162 	bhi	L7	;
   4922 31 C4         [ 4]  163 	leay	,u	; number.96, number.95
   4924 20 EB         [ 3]  164 	bra	L8	;
   4926                     165 L6:
   4926 6F 62         [ 7]  166 	clr	2,s	; d
   4928                     167 L7:
                            168 ;----- asm -----
                            169 ; 235 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            170 	; #ENR#[207]		text[i] = d + '0';
                            171 ; 0 "" 2
                            172 ;--- end asm ---
   4928 E6 62         [ 5]  173 	ldb	2,s	;, d
   492A CB 30         [ 2]  174 	addb	#48	;,
   492C AE 67         [ 6]  175 	ldx	7,s	;, ivtmp.94
   492E 30 01         [ 5]  176 	leax	1,x	;,,
   4930 AF 67         [ 6]  177 	stx	7,s	;, ivtmp.94
   4932 30 1F         [ 5]  178 	leax	-1,x	;,,
   4934 E7 80         [ 6]  179 	stb	,x+	;,
   4936 AE 65         [ 6]  180 	ldx	5,s	;, ivtmp.92
   4938 30 02         [ 5]  181 	leax	2,x	;,,
   493A AF 65         [ 6]  182 	stx	5,s	;, ivtmp.92
   493C 1F 40         [ 6]  183 	tfr	s,d	;,
   493E C3 00 0F      [ 4]  184 	addd	#15; addhi3,3	;,
   4941 34 06         [ 7]  185 	pshs	d	;cmphi: R:d with R:x	;,
   4943 AC E1         [ 9]  186 	cmpx	,s++	;cmphi:	;
   4945 10 26 FF AC   [ 6]  187 	lbne	L9	;
   4949 32 6F         [ 5]  188 	leas	15,s	;,,
   494B 35 E0         [ 8]  189 	puls	y,u,pc	;
                            190 	.globl	_updateInfoText
   494D                     191 _updateInfoText:
                            192 ;----- asm -----
                            193 ; 242 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            194 	; #ENR#[213]	itoa(moveCount, &infoText[0]);
                            195 ; 0 "" 2
                            196 ;--- end asm ---
   494D 8E CA E7      [ 3]  197 	ldx	#_infoText	;,
   4950 AF E3         [ 8]  198 	stx	,--s	;,
   4952 BE CA F1      [ 6]  199 	ldx	_moveCount	;, moveCount
   4955 BD 48 CE      [ 8]  200 	jsr	_itoa
                            201 ;----- asm -----
                            202 ; 245 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            203 	; #ENR#[215]	itoa(levelNumber + levelOffset, &infoText[6]);
                            204 ; 0 "" 2
                            205 ;--- end asm ---
   4958 F6 51 84      [ 5]  206 	ldb	_levelOffset	; tmp28, levelOffset
   495B FB C8 83      [ 5]  207 	addb	_levelNumber	; tmp28, levelNumber
   495E 8E CA ED      [ 3]  208 	ldx	#_infoText+6	;,
   4961 AF E3         [ 8]  209 	stx	,--s	;,
   4963 4F            [ 2]  210 	clra		;zero_extendqihi: R:b -> R:d	; tmp28,
   4964 1F 01         [ 6]  211 	tfr	d,x	;,
   4966 BD 48 CE      [ 8]  212 	jsr	_itoa
   4969 32 64         [ 5]  213 	leas	4,s	;,,
   496B 39            [ 5]  214 	rts
                            215 	.globl	_changeMusic
   496C                     216 _changeMusic:
                            217 ;----- asm -----
                            218 ; 251 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            219 	; #ENR#[220]	tstat = 1;
                            220 ; 0 "" 2
                            221 ;--- end asm ---
   496C C6 01         [ 2]  222 	ldb	#1	;,
   496E F7 C8 56      [ 5]  223 	stb	-14250	;,
                            224 ;----- asm -----
                            225 ; 253 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            226 	; #ENR#[221]	currentMusic = music;
                            227 ; 0 "" 2
                            228 ;--- end asm ---
   4971 BF C8 84      [ 6]  229 	stx	_currentMusic	; music, currentMusic
   4974 39            [ 5]  230 	rts
                            231 	.globl	_drawField
   4975                     232 _drawField:
   4975 32 7F         [ 5]  233 	leas	-1,s	;,,
                            234 ;----- asm -----
                            235 ; 319 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            236 	; #ENR#[263]	intens(0x35);
                            237 ; 0 "" 2
                            238 ;--- end asm ---
   4977 C6 35         [ 2]  239 	ldb	#53	;,
   4979 E7 E4         [ 4]  240 	stb	,s	;, a
                            241 ;----- asm -----
                            242 ; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   497B A6 E4         [ 4]  243 	lda ,s	; a
   497D BD F2 AB      [ 8]  244 	jsr ___Intensity_a; BIOS call
                            245 ; 0 "" 2
                            246 ; 334 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4980 34 5E         [10]  247 		pshs a, b, dp, x, u
                            248 ; 0 "" 2
                            249 ; 335 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4982 86 D0         [ 2]  250 		lda #0xd0
                            251 ; 0 "" 2
                            252 ; 336 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4984 1F 8B         [ 6]  253 		tfr a, dp
                            254 ; 0 "" 2
                            255 ; 337 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4986 8E 00 00      [ 3]  256 		ldx #0
                            257 ; 0 "" 2
                            258 ; 338 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4989 F6 C8 80      [ 5]  259 		ldb _lineCount
                            260 ; 0 "" 2
                            261 ; 339 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   498C                     262 	drawFieldLoop:
                            263 ; 0 "" 2
                            264 ; 340 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   498C 34 04         [ 6]  265 		pshs b
                            266 ; 0 "" 2
                            267 ; 341 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   498E 34 10         [ 6]  268 		pshs x
                            269 ; 0 "" 2
                            270 ; 342 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4990 BD F3 54      [ 8]  271 		jsr 0xf354
                            272 ; 0 "" 2
                            273 ; 343 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4993 35 10         [ 6]  274 		puls x
                            275 ; 0 "" 2
                            276 ; 344 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4995 A6 89 C9 7F   [ 8]  277 		lda _lineY0,x
                            278 ; 0 "" 2
                            279 ; 345 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4999 E6 89 C9 07   [ 8]  280 		ldb _lineX0,x
                            281 ; 0 "" 2
                            282 ; 346 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   499D 34 10         [ 6]  283 		pshs x
                            284 ; 0 "" 2
                            285 ; 347 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   499F BD F2 FC      [ 8]  286 		jsr 0xf2fc
                            287 ; 0 "" 2
                            288 ; 348 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49A2 35 10         [ 6]  289 		puls x
                            290 ; 0 "" 2
                            291 ; 349 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49A4 A6 89 CA 6F   [ 8]  292 		lda _lineY1,x
                            293 ; 0 "" 2
                            294 ; 350 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49A8 E6 89 C9 F7   [ 8]  295 		ldb _lineX1,x
                            296 ; 0 "" 2
                            297 ; 351 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49AC A0 89 C9 7F   [ 8]  298 		suba _lineY0,x
                            299 ; 0 "" 2
                            300 ; 352 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49B0 E0 89 C9 07   [ 8]  301 		subb _lineX0,x
                            302 ; 0 "" 2
                            303 ; 353 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49B4 34 10         [ 6]  304 		pshs x
                            305 ; 0 "" 2
                            306 ; 354 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49B6 BD F3 DF      [ 8]  307 		jsr 0xf3df
                            308 ; 0 "" 2
                            309 ; 355 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49B9 35 10         [ 6]  310 		puls x
                            311 ; 0 "" 2
                            312 ; 356 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49BB A6 80         [ 6]  313 		lda ,x+
                            314 ; 0 "" 2
                            315 ; 357 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49BD 35 04         [ 6]  316 		puls b
                            317 ; 0 "" 2
                            318 ; 358 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49BF 5A            [ 2]  319 		decb
                            320 ; 0 "" 2
                            321 ; 359 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49C0 26 CA         [ 3]  322 		bne drawFieldLoop
                            323 ; 0 "" 2
                            324 ; 360 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49C2 35 5E         [10]  325 		puls a, b, dp, x, u
                            326 ; 0 "" 2
                            327 ;--- end asm ---
   49C4 32 61         [ 5]  328 	leas	1,s	;,,
   49C6 39            [ 5]  329 	rts
                            330 	.globl	_showInfo2
   49C7                     331 _showInfo2:
   49C7 34 20         [ 6]  332 	pshs	y	;
   49C9 32 7D         [ 5]  333 	leas	-3,s	;,,
                            334 ;----- asm -----
                            335 ; 684 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            336 	; #ENR#[509]	zergnd();
                            337 ; 0 "" 2
                            338 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49CB BD F3 54      [ 8]  339 	jsr ___Reset0Ref; BIOS call
                            340 ; 0 "" 2
                            341 ; 686 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            342 	; #ENR#[510]	intens(0x50);
                            343 ; 0 "" 2
                            344 ;--- end asm ---
   49CE C6 50         [ 2]  345 	ldb	#80	;,
   49D0 E7 E4         [ 4]  346 	stb	,s	;, a
                            347 ;----- asm -----
                            348 ; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49D2 A6 E4         [ 4]  349 	lda ,s	; a
   49D4 BD F2 AB      [ 8]  350 	jsr ___Intensity_a; BIOS call
                            351 ; 0 "" 2
                            352 ; 689 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            353 	; #ENR#[512]	zergnd();
                            354 ; 0 "" 2
                            355 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49D7 BD F3 54      [ 8]  356 	jsr ___Reset0Ref; BIOS call
                            357 ; 0 "" 2
                            358 ; 691 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            359 	; #ENR#[513]	positd(-50, 100);
                            360 ; 0 "" 2
                            361 ;--- end asm ---
   49DA C6 80         [ 2]  362 	ldb	#-128	;,
   49DC D7 04         [ 4]  363 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   49DE C6 64         [ 2]  364 	ldb	#100	;,
   49E0 E7 62         [ 5]  365 	stb	2,s	;, a
   49E2 C6 CE         [ 2]  366 	ldb	#-50	;,
   49E4 E7 E4         [ 4]  367 	stb	,s	;, b
                            368 ;----- asm -----
                            369 ; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49E6 A6 62         [ 5]  370 	lda 2,s	; a
   49E8 E6 E4         [ 4]  371 	ldb ,s	; b
   49EA BD F3 12      [ 8]  372 	jsr ___Moveto_d; BIOS call
                            373 ; 0 "" 2
                            374 ; 693 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            375 	; #ENR#[514]	pack1x((void*)led8);
                            376 ; 0 "" 2
                            377 ;--- end asm ---
   49ED C6 80         [ 2]  378 	ldb	#-128	;,
   49EF D7 04         [ 4]  379 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   49F1 10 8E 50 FF   [ 4]  380 	ldy	#_led8	; tmp27,
   49F5 10 AF E4      [ 6]  381 	sty	,s	; tmp27, x
                            382 ;----- asm -----
                            383 ; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49F8 AE E4         [ 5]  384 	ldx ,s	; x
   49FA BD F4 10      [ 8]  385 	jsr ___Draw_VLp; BIOS call
                            386 ; 0 "" 2
                            387 ; 696 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            388 	; #ENR#[516]	zergnd();
                            389 ; 0 "" 2
                            390 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49FD BD F3 54      [ 8]  391 	jsr ___Reset0Ref; BIOS call
                            392 ; 0 "" 2
                            393 ; 698 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            394 	; #ENR#[517]	positd(-40, 110);
                            395 ; 0 "" 2
                            396 ;--- end asm ---
   4A00 C6 80         [ 2]  397 	ldb	#-128	;,
   4A02 D7 04         [ 4]  398 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A04 C6 6E         [ 2]  399 	ldb	#110	;,
   4A06 E7 E4         [ 4]  400 	stb	,s	;, a
   4A08 C6 D8         [ 2]  401 	ldb	#-40	;,
   4A0A E7 62         [ 5]  402 	stb	2,s	;, b
                            403 ;----- asm -----
                            404 ; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A0C A6 E4         [ 4]  405 	lda ,s	; a
   4A0E E6 62         [ 5]  406 	ldb 2,s	; b
   4A10 BD F3 12      [ 8]  407 	jsr ___Moveto_d; BIOS call
                            408 ; 0 "" 2
                            409 ; 700 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            410 	; #ENR#[518]	pack1x((void*)led8);
                            411 ; 0 "" 2
                            412 ;--- end asm ---
   4A13 C6 80         [ 2]  413 	ldb	#-128	;,
   4A15 D7 04         [ 4]  414 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A17 10 AF E4      [ 6]  415 	sty	,s	; tmp27, x
                            416 ;----- asm -----
                            417 ; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A1A AE E4         [ 5]  418 	ldx ,s	; x
   4A1C BD F4 10      [ 8]  419 	jsr ___Draw_VLp; BIOS call
                            420 ; 0 "" 2
                            421 ; 703 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            422 	; #ENR#[520]	zergnd();
                            423 ; 0 "" 2
                            424 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A1F BD F3 54      [ 8]  425 	jsr ___Reset0Ref; BIOS call
                            426 ; 0 "" 2
                            427 ; 705 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            428 	; #ENR#[521]	positd(-30, 120);
                            429 ; 0 "" 2
                            430 ;--- end asm ---
   4A22 C6 80         [ 2]  431 	ldb	#-128	;,
   4A24 D7 04         [ 4]  432 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A26 C6 78         [ 2]  433 	ldb	#120	;,
   4A28 E7 62         [ 5]  434 	stb	2,s	;, a
   4A2A C6 E2         [ 2]  435 	ldb	#-30	;,
   4A2C E7 E4         [ 4]  436 	stb	,s	;, b
                            437 ;----- asm -----
                            438 ; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A2E A6 62         [ 5]  439 	lda 2,s	; a
   4A30 E6 E4         [ 4]  440 	ldb ,s	; b
   4A32 BD F3 12      [ 8]  441 	jsr ___Moveto_d; BIOS call
                            442 ; 0 "" 2
                            443 ; 707 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            444 	; #ENR#[522]	pack1x((void*)led8);
                            445 ; 0 "" 2
                            446 ;--- end asm ---
   4A35 C6 80         [ 2]  447 	ldb	#-128	;,
   4A37 D7 04         [ 4]  448 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A39 10 AF E4      [ 6]  449 	sty	,s	; tmp27, x
                            450 ;----- asm -----
                            451 ; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A3C AE E4         [ 5]  452 	ldx ,s	; x
   4A3E BD F4 10      [ 8]  453 	jsr ___Draw_VLp; BIOS call
                            454 ; 0 "" 2
                            455 ; 710 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            456 	; #ENR#[524]	zergnd();
                            457 ; 0 "" 2
                            458 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A41 BD F3 54      [ 8]  459 	jsr ___Reset0Ref; BIOS call
                            460 ; 0 "" 2
                            461 ; 712 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            462 	; #ENR#[525]	positd(0, 120);
                            463 ; 0 "" 2
                            464 ;--- end asm ---
   4A44 C6 80         [ 2]  465 	ldb	#-128	;,
   4A46 D7 04         [ 4]  466 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A48 C6 78         [ 2]  467 	ldb	#120	;,
   4A4A E7 E4         [ 4]  468 	stb	,s	;, a
   4A4C 6F 62         [ 7]  469 	clr	2,s	; b
                            470 ;----- asm -----
                            471 ; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A4E A6 E4         [ 4]  472 	lda ,s	; a
   4A50 E6 62         [ 5]  473 	ldb 2,s	; b
   4A52 BD F3 12      [ 8]  474 	jsr ___Moveto_d; BIOS call
                            475 ; 0 "" 2
                            476 ; 714 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            477 	; #ENR#[526]	pack1x((void*)led8);
                            478 ; 0 "" 2
                            479 ;--- end asm ---
   4A55 C6 80         [ 2]  480 	ldb	#-128	;,
   4A57 D7 04         [ 4]  481 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A59 10 AF E4      [ 6]  482 	sty	,s	; tmp27, x
                            483 ;----- asm -----
                            484 ; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A5C AE E4         [ 5]  485 	ldx ,s	; x
   4A5E BD F4 10      [ 8]  486 	jsr ___Draw_VLp; BIOS call
                            487 ; 0 "" 2
                            488 ; 717 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            489 	; #ENR#[528]	zergnd();
                            490 ; 0 "" 2
                            491 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A61 BD F3 54      [ 8]  492 	jsr ___Reset0Ref; BIOS call
                            493 ; 0 "" 2
                            494 ; 719 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            495 	; #ENR#[529]	positd(10, 120);
                            496 ; 0 "" 2
                            497 ;--- end asm ---
   4A64 C6 80         [ 2]  498 	ldb	#-128	;,
   4A66 D7 04         [ 4]  499 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A68 C6 78         [ 2]  500 	ldb	#120	;,
   4A6A E7 62         [ 5]  501 	stb	2,s	;, a
   4A6C C6 0A         [ 2]  502 	ldb	#10	;,
   4A6E E7 E4         [ 4]  503 	stb	,s	;, b
                            504 ;----- asm -----
                            505 ; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A70 A6 62         [ 5]  506 	lda 2,s	; a
   4A72 E6 E4         [ 4]  507 	ldb ,s	; b
   4A74 BD F3 12      [ 8]  508 	jsr ___Moveto_d; BIOS call
                            509 ; 0 "" 2
                            510 ; 721 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            511 	; #ENR#[530]	pack1x((void*)led8);
                            512 ; 0 "" 2
                            513 ;--- end asm ---
   4A77 C6 80         [ 2]  514 	ldb	#-128	;,
   4A79 D7 04         [ 4]  515 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A7B 10 AF E4      [ 6]  516 	sty	,s	; tmp27, x
                            517 ;----- asm -----
                            518 ; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A7E AE E4         [ 5]  519 	ldx ,s	; x
   4A80 BD F4 10      [ 8]  520 	jsr ___Draw_VLp; BIOS call
                            521 ; 0 "" 2
                            522 ; 724 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            523 	; #ENR#[532]	zergnd();
                            524 ; 0 "" 2
                            525 ; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A83 BD F3 54      [ 8]  526 	jsr ___Reset0Ref; BIOS call
                            527 ; 0 "" 2
                            528 ; 726 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            529 	; #ENR#[533]	positd(20, 120);
                            530 ; 0 "" 2
                            531 ;--- end asm ---
   4A86 C6 80         [ 2]  532 	ldb	#-128	;,
   4A88 D7 04         [ 4]  533 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A8A C6 78         [ 2]  534 	ldb	#120	;,
   4A8C E7 E4         [ 4]  535 	stb	,s	;, a
   4A8E C6 14         [ 2]  536 	ldb	#20	;,
   4A90 E7 62         [ 5]  537 	stb	2,s	;, b
                            538 ;----- asm -----
                            539 ; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A92 A6 E4         [ 4]  540 	lda ,s	; a
   4A94 E6 62         [ 5]  541 	ldb 2,s	; b
   4A96 BD F3 12      [ 8]  542 	jsr ___Moveto_d; BIOS call
                            543 ; 0 "" 2
                            544 ; 728 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            545 	; #ENR#[534]	pack1x((void*)led8);
                            546 ; 0 "" 2
                            547 ;--- end asm ---
   4A99 C6 80         [ 2]  548 	ldb	#-128	;,
   4A9B D7 04         [ 4]  549 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   4A9D 10 AF E4      [ 6]  550 	sty	,s	; tmp27, x
                            551 ;----- asm -----
                            552 ; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AA0 AE E4         [ 5]  553 	ldx ,s	; x
   4AA2 BD F4 10      [ 8]  554 	jsr ___Draw_VLp; BIOS call
                            555 ; 0 "" 2
                            556 ;--- end asm ---
   4AA5 32 63         [ 5]  557 	leas	3,s	;,,
   4AA7 35 A0         [ 7]  558 	puls	y,pc	;
                            559 	.globl	_showInfo
   4AA9                     560 _showInfo:
   4AA9 34 40         [ 6]  561 	pshs	u	;
   4AAB 32 7C         [ 5]  562 	leas	-4,s	;,,
                            563 ;----- asm -----
                            564 ; 734 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            565 	; #ENR#[539]    Intensity_a(0x5f);
                            566 ; 0 "" 2
                            567 ;--- end asm ---
   4AAD C6 5F         [ 2]  568 	ldb	#95	;,
   4AAF E7 63         [ 5]  569 	stb	3,s	;, a
                            570 ;----- asm -----
                            571 ; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AB1 A6 63         [ 5]  572 	lda 3,s	; a
   4AB3 BD F2 AB      [ 8]  573 	jsr ___Intensity_a; BIOS call
                            574 ; 0 "" 2
                            575 ; 736 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            576 	; #ENR#[540]    Vec_Text_Width = 100;
                            577 ; 0 "" 2
                            578 ;--- end asm ---
   4AB6 C6 64         [ 2]  579 	ldb	#100	;,
   4AB8 F7 C8 2B      [ 5]  580 	stb	_Vec_Text_Width	;, Vec_Text_Width
                            581 ;----- asm -----
                            582 ; 738 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            583 	; #ENR#[541]    Print_Str_d(100, -70, infoText);
                            584 ; 0 "" 2
                            585 ;--- end asm ---
   4ABB E7 63         [ 5]  586 	stb	3,s	;, a
   4ABD C6 BA         [ 2]  587 	ldb	#-70	;,
   4ABF E7 62         [ 5]  588 	stb	2,s	;, b
   4AC1 8E CA E7      [ 3]  589 	ldx	#_infoText	;,
   4AC4 AF E4         [ 5]  590 	stx	,s	;, u
                            591 ;----- asm -----
                            592 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AC6 A6 63         [ 5]  593 	lda 3,s	; a
   4AC8 E6 62         [ 5]  594 	ldb 2,s	; b
   4ACA EE E4         [ 5]  595 	ldu ,s	; u
   4ACC BD F3 7A      [ 8]  596 	jsr ___Print_Str_d; BIOS call
                            597 ; 0 "" 2
                            598 ;--- end asm ---
   4ACF 32 64         [ 5]  599 	leas	4,s	;,,
   4AD1 35 C0         [ 7]  600 	puls	u,pc	;
                            601 	.globl	_blockMovingToStart
   4AD3                     602 _blockMovingToStart:
                            603 ;----- asm -----
                            604 ; 366 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            605 	; #ENR#[309]	drawField();
                            606 ; 0 "" 2
                            607 ;--- end asm ---
   4AD3 BD 49 75      [ 8]  608 	jsr	_drawField
                            609 ;----- asm -----
                            610 ; 368 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            611 	; #ENR#[310]	drawBlock(blockYOfs);
                            612 ; 0 "" 2
                            613 ;--- end asm ---
   4AD6 F6 C8 89      [ 5]  614 	ldb	_blockYOfs	;, blockYOfs
   4AD9 BD 04 B4      [ 8]  615 	jsr	_drawBlock
                            616 ;----- asm -----
                            617 ; 370 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            618 	; #ENR#[311]	blockYOfs++;
                            619 ; 0 "" 2
                            620 ;--- end asm ---
   4ADC F6 C8 89      [ 5]  621 	ldb	_blockYOfs	; blockYOfs.24, blockYOfs
   4ADF 5C            [ 2]  622 	incb	; blockYOfs.24
   4AE0 F7 C8 89      [ 5]  623 	stb	_blockYOfs	; blockYOfs.24, blockYOfs
                            624 ;----- asm -----
                            625 ; 372 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            626 	; #ENR#[312]	if (blockYOfs == 0) {
                            627 ; 0 "" 2
                            628 ;--- end asm ---
   4AE3 5D            [ 2]  629 	tstb	; blockYOfs.24
   4AE4 26 05         [ 3]  630 	bne	L24	;
                            631 ;----- asm -----
                            632 ; 374 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            633 	; #ENR#[313]		gameState = BlockWaiting;
                            634 ; 0 "" 2
                            635 ;--- end asm ---
   4AE6 C6 03         [ 2]  636 	ldb	#3	;,
   4AE8 F7 CA F6      [ 5]  637 	stb	_gameState	;, gameState
   4AEB                     638 L24:
   4AEB 39            [ 5]  639 	rts
                            640 	.globl	_moveBlock
   4AEC                     641 _moveBlock:
                            642 ;----- asm -----
                            643 ; 259 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            644 	; #ENR#[226]	moveBlockImpl(move);
                            645 ; 0 "" 2
                            646 ;--- end asm ---
   4AEC BD 01 55      [ 8]  647 	jsr	_moveBlockImpl
                            648 ;----- asm -----
                            649 ; 261 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            650 	; #ENR#[227]	if (moveCount < 999) moveCount++;
                            651 ; 0 "" 2
                            652 ;--- end asm ---
   4AEF BE CA F1      [ 6]  653 	ldx	_moveCount	; moveCount.9, moveCount
   4AF2 8C 03 E6      [ 4]  654 	cmpx	#998	;cmphi:	; moveCount.9,
   4AF5 22 05         [ 3]  655 	bhi	L26	;
   4AF7 30 01         [ 5]  656 	leax	1,x	;,, moveCount.9
   4AF9 BF CA F1      [ 6]  657 	stx	_moveCount	;, moveCount
   4AFC                     658 L26:
                            659 ;----- asm -----
                            660 ; 263 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            661 	; #ENR#[228]	updateInfoText();
                            662 ; 0 "" 2
                            663 ;--- end asm ---
   4AFC BD 49 4D      [ 8]  664 	jsr	_updateInfoText
   4AFF 39            [ 5]  665 	rts
                            666 	.globl	_startBlockFalling
   4B00                     667 _startBlockFalling:
                            668 ;----- asm -----
                            669 ; 269 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            670 	; #ENR#[233]	gameState = BlockFalling;
                            671 ; 0 "" 2
                            672 ;--- end asm ---
   4B00 C6 05         [ 2]  673 	ldb	#5	;,
   4B02 F7 CA F6      [ 5]  674 	stb	_gameState	;, gameState
                            675 ;----- asm -----
                            676 ; 271 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            677 	; #ENR#[234]	blockYOfs = 0;
                            678 ; 0 "" 2
                            679 ;--- end asm ---
   4B05 7F C8 89      [ 7]  680 	clr	_blockYOfs	; blockYOfs
                            681 ;----- asm -----
                            682 ; 273 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            683 	; #ENR#[235]	moveBlock(lastBlockDirection);
                            684 ; 0 "" 2
                            685 ;--- end asm ---
   4B08 F6 C8 8A      [ 5]  686 	ldb	_lastBlockDirection	;, lastBlockDirection
   4B0B BD 4A EC      [ 8]  687 	jsr	_moveBlock
                            688 ;----- asm -----
                            689 ; 275 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            690 	; #ENR#[236]	changeMusic(fallingMusic);
                            691 ; 0 "" 2
                            692 ;--- end asm ---
   4B0E 8E 50 D7      [ 3]  693 	ldx	#_fallingMusic	;,
   4B11 BD 49 6C      [ 8]  694 	jsr	_changeMusic
                            695 ;----- asm -----
                            696 ; 277 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            697 	; #ENR#[237]	*vecx = 0;
                            698 ; 0 "" 2
                            699 ;--- end asm ---
   4B14 6F 9F C8 86   [11]  700 	clr	[_vecx]	;* vecx
   4B18 39            [ 5]  701 	rts
                            702 	.globl	_blockMoving
   4B19                     703 _blockMoving:
   4B19 32 79         [ 5]  704 	leas	-7,s	;,,
                            705 ;----- asm -----
                            706 ; 445 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            707 	; #ENR#[358]	drawField();
                            708 ; 0 "" 2
                            709 ;--- end asm ---
   4B1B BD 49 75      [ 8]  710 	jsr	_drawField
                            711 ;----- asm -----
                            712 ; 447 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            713 	; #ENR#[359]	drawBlock(0);
                            714 ; 0 "" 2
                            715 ;--- end asm ---
   4B1E 5F            [ 2]  716 	clrb	;
   4B1F BD 04 B4      [ 8]  717 	jsr	_drawBlock
                            718 ;----- asm -----
                            719 ; 449 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            720 	; #ENR#[360]	doBlockAnimation();
                            721 ; 0 "" 2
                            722 ;--- end asm ---
   4B22 BD 03 B2      [ 8]  723 	jsr	_doBlockAnimation
                            724 ;----- asm -----
                            725 ; 451 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            726 	; #ENR#[361]	if (!blockAnimating) {
                            727 ; 0 "" 2
                            728 ;--- end asm ---
   4B25 7D C8 8B      [ 7]  729 	tst	_blockAnimating	; blockAnimating
   4B28 10 26 01 5C   [ 6]  730 	lbne	L54	;
                            731 ;----- asm -----
                            732 ; 454 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            733 	; #ENR#[363]		uint8_t c0 = isField(blockX, blockY);
                            734 ; 0 "" 2
                            735 ;--- end asm ---
   4B2C F6 C8 8E      [ 5]  736 	ldb	_blockY	;, blockY
   4B2F E7 E2         [ 6]  737 	stb	,-s	;,
   4B31 F6 C8 8D      [ 5]  738 	ldb	_blockX	;, blockX
   4B34 BD 36 A9      [ 8]  739 	jsr	_isField
   4B37 E7 62         [ 5]  740 	stb	2,s	;, c0
                            741 ;----- asm -----
                            742 ; 456 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            743 	; #ENR#[364]		uint8_t c1 = isField(blockX + 1, blockY);
                            744 ; 0 "" 2
                            745 ;--- end asm ---
   4B39 F6 C8 8D      [ 5]  746 	ldb	_blockX	;, blockX
   4B3C 5C            [ 2]  747 	incb	;
   4B3D E7 61         [ 5]  748 	stb	1,s	;,
   4B3F F6 C8 8E      [ 5]  749 	ldb	_blockY	;, blockY
   4B42 E7 E2         [ 6]  750 	stb	,-s	;,
   4B44 E6 62         [ 5]  751 	ldb	2,s	;,
   4B46 BD 36 A9      [ 8]  752 	jsr	_isField
   4B49 E7 64         [ 5]  753 	stb	4,s	;, c1
                            754 ;----- asm -----
                            755 ; 458 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            756 	; #ENR#[365]		uint8_t c2 = isField(blockX, blockY + 1);
                            757 ; 0 "" 2
                            758 ;--- end asm ---
   4B4B F6 C8 8E      [ 5]  759 	ldb	_blockY	;, blockY
   4B4E 5C            [ 2]  760 	incb	;
   4B4F 34 04         [ 6]  761 	pshs	b	;
   4B51 F6 C8 8D      [ 5]  762 	ldb	_blockX	;, blockX
   4B54 BD 36 A9      [ 8]  763 	jsr	_isField
   4B57 E7 66         [ 5]  764 	stb	6,s	;, c2
                            765 ;----- asm -----
                            766 ; 460 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            767 	; #ENR#[366]		char f0 = getField(blockX, blockY);
                            768 ; 0 "" 2
                            769 ;--- end asm ---
   4B59 F6 C8 8E      [ 5]  770 	ldb	_blockY	;, blockY
   4B5C E7 E2         [ 6]  771 	stb	,-s	;,
   4B5E F6 C8 8D      [ 5]  772 	ldb	_blockX	;, blockX
   4B61 BD 35 D6      [ 8]  773 	jsr	_getField
   4B64 E7 68         [ 5]  774 	stb	8,s	;, f0
                            775 ;----- asm -----
                            776 ; 462 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            777 	; #ENR#[367]		char f1 = getField(blockX + 1, blockY);
                            778 ; 0 "" 2
                            779 ;--- end asm ---
   4B66 F6 C8 8D      [ 5]  780 	ldb	_blockX	;, blockX
   4B69 5C            [ 2]  781 	incb	;
   4B6A E7 64         [ 5]  782 	stb	4,s	;,
   4B6C F6 C8 8E      [ 5]  783 	ldb	_blockY	;, blockY
   4B6F E7 E2         [ 6]  784 	stb	,-s	;,
   4B71 E6 65         [ 5]  785 	ldb	5,s	;,
   4B73 BD 35 D6      [ 8]  786 	jsr	_getField
   4B76 E7 6A         [ 5]  787 	stb	10,s	;, f1
                            788 ;----- asm -----
                            789 ; 464 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            790 	; #ENR#[368]		char f2 = getField(blockX, blockY + 1);
                            791 ; 0 "" 2
                            792 ;--- end asm ---
   4B78 F6 C8 8E      [ 5]  793 	ldb	_blockY	;, blockY
   4B7B 5C            [ 2]  794 	incb	;
   4B7C 34 04         [ 6]  795 	pshs	b	;
   4B7E F6 C8 8D      [ 5]  796 	ldb	_blockX	;, blockX
   4B81 BD 35 D6      [ 8]  797 	jsr	_getField
   4B84 E7 6C         [ 5]  798 	stb	12,s	;, f2
                            799 ;----- asm -----
                            800 ; 466 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            801 	; #ENR#[369]		switch (blockOrientation) {
                            802 ; 0 "" 2
                            803 ;--- end asm ---
   4B86 32 66         [ 5]  804 	leas	6,s	;,,
   4B88 F6 C8 88      [ 5]  805 	ldb	_blockOrientation	; blockOrientation, blockOrientation
   4B8B C1 01         [ 2]  806 	cmpb	#1	;cmpqi:	; blockOrientation,
   4B8D 27 19         [ 3]  807 	beq	L34	;
   4B8F 25 08         [ 3]  808 	blo	L33	;
   4B91 C1 02         [ 2]  809 	cmpb	#2	;cmpqi:	; blockOrientation,
   4B93 10 26 00 29   [ 6]  810 	lbne	L32	;
   4B97 20 1C         [ 3]  811 	bra	L55	;
   4B99                     812 L33:
                            813 ;----- asm -----
                            814 ; 470 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            815 	; #ENR#[371]			if (!c0 || f0 == 'f') {
                            816 ; 0 "" 2
                            817 ;--- end asm ---
   4B99 6D 61         [ 7]  818 	tst	1,s	; c0
   4B9B 27 06         [ 3]  819 	beq	L36	;
   4B9D E6 64         [ 5]  820 	ldb	4,s	;, f0
   4B9F C1 66         [ 2]  821 	cmpb	#102	;cmpqi:	;,
   4BA1 26 03         [ 3]  822 	bne	L37	;
   4BA3                     823 L36:
                            824 ;----- asm -----
                            825 ; 472 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            826 	; #ENR#[372]				startBlockFalling();
                            827 ; 0 "" 2
                            828 ;--- end asm ---
   4BA3 BD 4B 00      [ 8]  829 	jsr	_startBlockFalling
   4BA6                     830 L37:
                            831 ;----- asm -----
                            832 ; 475 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            833 	; #ENR#[374]			break;
                            834 ; 0 "" 2
                            835 ;--- end asm ---
   4BA6 20 18         [ 3]  836 	bra	L32	;
   4BA8                     837 L34:
                            838 ;----- asm -----
                            839 ; 479 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            840 	; #ENR#[376]			if (!c0 || !c2) {
                            841 ; 0 "" 2
                            842 ;--- end asm ---
   4BA8 6D 61         [ 7]  843 	tst	1,s	; c0
   4BAA 27 04         [ 3]  844 	beq	L38	;
   4BAC 6D 63         [ 7]  845 	tst	3,s	; c2
   4BAE 26 03         [ 3]  846 	bne	L39	;
   4BB0                     847 L38:
                            848 ;----- asm -----
                            849 ; 481 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            850 	; #ENR#[377]				startBlockFalling();
                            851 ; 0 "" 2
                            852 ;--- end asm ---
   4BB0 BD 4B 00      [ 8]  853 	jsr	_startBlockFalling
   4BB3                     854 L39:
                            855 ;----- asm -----
                            856 ; 484 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            857 	; #ENR#[379]			break;
                            858 ; 0 "" 2
                            859 ;--- end asm ---
   4BB3 20 0B         [ 3]  860 	bra	L32	;
   4BB5                     861 L55:
                            862 ;----- asm -----
                            863 ; 488 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            864 	; #ENR#[381]			if (!c0 || ! c1) {
                            865 ; 0 "" 2
                            866 ;--- end asm ---
   4BB5 6D 61         [ 7]  867 	tst	1,s	; c0
   4BB7 27 04         [ 3]  868 	beq	L40	;
   4BB9 6D 62         [ 7]  869 	tst	2,s	; c1
   4BBB 26 03         [ 3]  870 	bne	L41	;
   4BBD                     871 L40:
                            872 ;----- asm -----
                            873 ; 490 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            874 	; #ENR#[382]				startBlockFalling();
                            875 ; 0 "" 2
                            876 ;--- end asm ---
   4BBD BD 4B 00      [ 8]  877 	jsr	_startBlockFalling
   4BC0                     878 L41:
                            879 ;----- asm -----
                            880 ; 493 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            881 	; #ENR#[384]			break;
                            882 ; 0 "" 2
                            883 ;--- end asm ---
   4BC0                     884 L32:
                            885 ;----- asm -----
                            886 ; 498 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            887 	; #ENR#[388]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                            888 ; 0 "" 2
                            889 ;--- end asm ---
   4BC0 7D C8 88      [ 7]  890 	tst	_blockOrientation	; blockOrientation
   4BC3 26 2B         [ 3]  891 	bne	L42	;
   4BC5 F6 C8 8D      [ 5]  892 	ldb	_blockX	;, blockX
   4BC8 F1 C8 81      [ 5]  893 	cmpb	_endX	;cmpqi:	;, endX
   4BCB 26 23         [ 3]  894 	bne	L42	;
   4BCD F6 C8 8E      [ 5]  895 	ldb	_blockY	;, blockY
   4BD0 F1 C8 82      [ 5]  896 	cmpb	_endY	;cmpqi:	;, endY
   4BD3 26 1B         [ 3]  897 	bne	L42	;
   4BD5 7D C8 8C      [ 7]  898 	tst	_splitMode	; splitMode
   4BD8 26 16         [ 3]  899 	bne	L42	;
                            900 ;----- asm -----
                            901 ; 500 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            902 	; #ENR#[389]			blockYOfs = 0;
                            903 ; 0 "" 2
                            904 ;--- end asm ---
   4BDA 7F C8 89      [ 7]  905 	clr	_blockYOfs	; blockYOfs
                            906 ;----- asm -----
                            907 ; 502 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            908 	; #ENR#[390]			gameState = BlockMovingAtEnd;
                            909 ; 0 "" 2
                            910 ;--- end asm ---
   4BDD C6 06         [ 2]  911 	ldb	#6	;,
   4BDF F7 CA F6      [ 5]  912 	stb	_gameState	;, gameState
                            913 ;----- asm -----
                            914 ; 504 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            915 	; #ENR#[391]			changeMusic(levelEndMusic);
                            916 ; 0 "" 2
                            917 ;--- end asm ---
   4BE2 8E 50 BD      [ 3]  918 	ldx	#_levelEndMusic	;,
   4BE5 BD 49 6C      [ 8]  919 	jsr	_changeMusic
                            920 ;----- asm -----
                            921 ; 506 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            922 	; #ENR#[392]			*vecx = 1;
                            923 ; 0 "" 2
                            924 ;--- end asm ---
   4BE8 C6 01         [ 2]  925 	ldb	#1	;,
   4BEA E7 9F C8 86   [ 9]  926 	stb	[_vecx]	;,* vecx
   4BEE 20 0C         [ 3]  927 	bra	L43	;
   4BF0                     928 L42:
                            929 ;----- asm -----
                            930 ; 510 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            931 	; #ENR#[395]			if (gameState != BlockFalling) {
                            932 ; 0 "" 2
                            933 ;--- end asm ---
   4BF0 F6 CA F6      [ 5]  934 	ldb	_gameState	;, gameState
   4BF3 C1 05         [ 2]  935 	cmpb	#5	;cmpqi:	;,
   4BF5 27 05         [ 3]  936 	beq	L43	;
                            937 ;----- asm -----
                            938 ; 512 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            939 	; #ENR#[396]				gameState = BlockWaiting;
                            940 ; 0 "" 2
                            941 ;--- end asm ---
   4BF7 C6 03         [ 2]  942 	ldb	#3	;,
   4BF9 F7 CA F6      [ 5]  943 	stb	_gameState	;, gameState
   4BFC                     944 L43:
                            945 ;----- asm -----
                            946 ; 518 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            947 	; #ENR#[401]		switch (blockOrientation) {
                            948 ; 0 "" 2
                            949 ;--- end asm ---
   4BFC F6 C8 88      [ 5]  950 	ldb	_blockOrientation	; blockOrientation, blockOrientation
   4BFF C1 01         [ 2]  951 	cmpb	#1	;cmpqi:	; blockOrientation,
   4C01 27 29         [ 3]  952 	beq	L46	;
   4C03 25 09         [ 3]  953 	blo	L45	;
   4C05 C1 02         [ 2]  954 	cmpb	#2	;cmpqi:	; blockOrientation,
   4C07 10 26 00 75   [ 6]  955 	lbne	L44	;
   4C0B 16 00 47      [ 5]  956 	lbra	L56	;
   4C0E                     957 L45:
                            958 ;----- asm -----
                            959 ; 522 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            960 	; #ENR#[403]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                            961 ; 0 "" 2
                            962 ;--- end asm ---
   4C0E E6 64         [ 5]  963 	ldb	4,s	;, f0
   4C10 C1 73         [ 2]  964 	cmpb	#115	;cmpqi:	;,
   4C12 27 08         [ 3]  965 	beq	L48	;
   4C14 C1 68         [ 2]  966 	cmpb	#104	;cmpqi:	;,
   4C16 27 04         [ 3]  967 	beq	L48	;
   4C18 C1 76         [ 2]  968 	cmpb	#118	;cmpqi:	;,
   4C1A 26 0D         [ 3]  969 	bne	L49	;
   4C1C                     970 L48:
                            971 ;----- asm -----
                            972 ; 524 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            973 	; #ENR#[404]				swatchSwitch(blockX, blockY);
                            974 ; 0 "" 2
                            975 ;--- end asm ---
   4C1C F6 C8 8E      [ 5]  976 	ldb	_blockY	;, blockY
   4C1F E7 E2         [ 6]  977 	stb	,-s	;,
   4C21 F6 C8 8D      [ 5]  978 	ldb	_blockX	;, blockX
   4C24 BD 3C 28      [ 8]  979 	jsr	_swatchSwitch
   4C27 32 61         [ 5]  980 	leas	1,s	;,,
   4C29                     981 L49:
                            982 ;----- asm -----
                            983 ; 527 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            984 	; #ENR#[406]			break;
                            985 ; 0 "" 2
                            986 ;--- end asm ---
   4C29 16 00 54      [ 5]  987 	lbra	L44	;
   4C2C                     988 L46:
                            989 ;----- asm -----
                            990 ; 531 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            991 	; #ENR#[408]			if (f0 == 's') {
                            992 ; 0 "" 2
                            993 ;--- end asm ---
   4C2C E6 64         [ 5]  994 	ldb	4,s	;, f0
   4C2E C1 73         [ 2]  995 	cmpb	#115	;cmpqi:	;,
   4C30 26 0D         [ 3]  996 	bne	L50	;
                            997 ;----- asm -----
                            998 ; 533 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            999 	; #ENR#[409]				swatchSwitch(blockX, blockY);
                           1000 ; 0 "" 2
                           1001 ;--- end asm ---
   4C32 F6 C8 8E      [ 5] 1002 	ldb	_blockY	;, blockY
   4C35 E7 E2         [ 6] 1003 	stb	,-s	;,
   4C37 F6 C8 8D      [ 5] 1004 	ldb	_blockX	;, blockX
   4C3A BD 3C 28      [ 8] 1005 	jsr	_swatchSwitch
   4C3D 32 61         [ 5] 1006 	leas	1,s	;,,
   4C3F                    1007 L50:
                           1008 ;----- asm -----
                           1009 ; 536 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1010 	; #ENR#[411]			if (f2 == 's') {
                           1011 ; 0 "" 2
                           1012 ;--- end asm ---
   4C3F E6 66         [ 5] 1013 	ldb	6,s	;, f2
   4C41 C1 73         [ 2] 1014 	cmpb	#115	;cmpqi:	;,
   4C43 26 0E         [ 3] 1015 	bne	L51	;
                           1016 ;----- asm -----
                           1017 ; 538 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1018 	; #ENR#[412]				swatchSwitch(blockX, blockY + 1);
                           1019 ; 0 "" 2
                           1020 ;--- end asm ---
   4C45 F6 C8 8E      [ 5] 1021 	ldb	_blockY	;, blockY
   4C48 5C            [ 2] 1022 	incb	;
   4C49 34 04         [ 6] 1023 	pshs	b	;
   4C4B F6 C8 8D      [ 5] 1024 	ldb	_blockX	;, blockX
   4C4E BD 3C 28      [ 8] 1025 	jsr	_swatchSwitch
   4C51 32 61         [ 5] 1026 	leas	1,s	;,,
   4C53                    1027 L51:
                           1028 ;----- asm -----
                           1029 ; 541 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1030 	; #ENR#[414]			break;
                           1031 ; 0 "" 2
                           1032 ;--- end asm ---
   4C53 20 2B         [ 3] 1033 	bra	L44	;
   4C55                    1034 L56:
                           1035 ;----- asm -----
                           1036 ; 545 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1037 	; #ENR#[416]			if (f0 == 's') {
                           1038 ; 0 "" 2
                           1039 ;--- end asm ---
   4C55 E6 64         [ 5] 1040 	ldb	4,s	;, f0
   4C57 C1 73         [ 2] 1041 	cmpb	#115	;cmpqi:	;,
   4C59 26 0D         [ 3] 1042 	bne	L52	;
                           1043 ;----- asm -----
                           1044 ; 547 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1045 	; #ENR#[417]				swatchSwitch(blockX, blockY);
                           1046 ; 0 "" 2
                           1047 ;--- end asm ---
   4C5B F6 C8 8E      [ 5] 1048 	ldb	_blockY	;, blockY
   4C5E E7 E2         [ 6] 1049 	stb	,-s	;,
   4C60 F6 C8 8D      [ 5] 1050 	ldb	_blockX	;, blockX
   4C63 BD 3C 28      [ 8] 1051 	jsr	_swatchSwitch
   4C66 32 61         [ 5] 1052 	leas	1,s	;,,
   4C68                    1053 L52:
                           1054 ;----- asm -----
                           1055 ; 550 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1056 	; #ENR#[419]			if (f1 == 's') {
                           1057 ; 0 "" 2
                           1058 ;--- end asm ---
   4C68 E6 65         [ 5] 1059 	ldb	5,s	;, f1
   4C6A C1 73         [ 2] 1060 	cmpb	#115	;cmpqi:	;,
   4C6C 26 12         [ 3] 1061 	bne	L53	;
                           1062 ;----- asm -----
                           1063 ; 552 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1064 	; #ENR#[420]				swatchSwitch(blockX + 1, blockY);
                           1065 ; 0 "" 2
                           1066 ;--- end asm ---
   4C6E F6 C8 8D      [ 5] 1067 	ldb	_blockX	;, blockX
   4C71 5C            [ 2] 1068 	incb	;
   4C72 E7 E4         [ 4] 1069 	stb	,s	;,
   4C74 F6 C8 8E      [ 5] 1070 	ldb	_blockY	;, blockY
   4C77 E7 E2         [ 6] 1071 	stb	,-s	;,
   4C79 E6 61         [ 5] 1072 	ldb	1,s	;,
   4C7B BD 3C 28      [ 8] 1073 	jsr	_swatchSwitch
   4C7E 32 61         [ 5] 1074 	leas	1,s	;,,
   4C80                    1075 L53:
                           1076 ;----- asm -----
                           1077 ; 555 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1078 	; #ENR#[422]			break;
                           1079 ; 0 "" 2
                           1080 ;--- end asm ---
   4C80                    1081 L44:
                           1082 ;----- asm -----
                           1083 ; 560 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1084 	; #ENR#[426]		if (splitMode) {
                           1085 ; 0 "" 2
                           1086 ;--- end asm ---
   4C80 7D C8 8C      [ 7] 1087 	tst	_splitMode	; splitMode
   4C83 27 03         [ 3] 1088 	beq	L54	;
                           1089 ;----- asm -----
                           1090 ; 562 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1091 	; #ENR#[427]			testMerge();
                           1092 ; 0 "" 2
                           1093 ;--- end asm ---
   4C85 BD 03 FD      [ 8] 1094 	jsr	_testMerge
   4C88                    1095 L54:
   4C88 32 67         [ 5] 1096 	leas	7,s	;,,
   4C8A 39            [ 5] 1097 	rts
                           1098 	.globl	_sendCommand
   4C8B                    1099 _sendCommand:
   4C8B 32 7E         [ 5] 1100 	leas	-2,s	;,,
   4C8D E7 E4         [ 4] 1101 	stb	,s	; cmd, cmd
                           1102 ;----- asm -----
                           1103 ; 154 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1104 	; #ENR#[153]	uint8_t result;
                           1105 ; 0 "" 2
                           1106 ; 156 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1107 	; #ENR#[154]	picWrite('V');
                           1108 ; 0 "" 2
                           1109 ;--- end asm ---
   4C8F C6 56         [ 2] 1110 	ldb	#86	;,
   4C91 BD 30 41      [ 8] 1111 	jsr	_picWrite
                           1112 ;----- asm -----
                           1113 ; 158 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1114 	; #ENR#[155]	picWrite(cmd);
                           1115 ; 0 "" 2
                           1116 ;--- end asm ---
   4C94 E6 E4         [ 4] 1117 	ldb	,s	;, cmd
   4C96 BD 30 41      [ 8] 1118 	jsr	_picWrite
                           1119 ;----- asm -----
                           1120 ; 160 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1121 	; #ENR#[156]	picWrite(arg);
                           1122 ; 0 "" 2
                           1123 ;--- end asm ---
   4C99 E6 64         [ 5] 1124 	ldb	4,s	;, arg
   4C9B BD 30 41      [ 8] 1125 	jsr	_picWrite
                           1126 ;----- asm -----
                           1127 ; 162 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1128 	; #ENR#[157]	result = picRead();
                           1129 ; 0 "" 2
                           1130 ;--- end asm ---
   4C9E BD 30 8D      [ 8] 1131 	jsr	_picRead
   4CA1 E7 61         [ 5] 1132 	stb	1,s	;, result
                           1133 ;----- asm -----
                           1134 ; 164 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1135 	; #ENR#[158]	delay10ms();
                           1136 ; 0 "" 2
                           1137 ;--- end asm ---
   4CA3 BD 30 EA      [ 8] 1138 	jsr	_delay10ms
                           1139 ;----- asm -----
                           1140 ; 166 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1141 	; #ENR#[159]	return result;
                           1142 ; 0 "" 2
                           1143 ;--- end asm ---
   4CA6 E6 61         [ 5] 1144 	ldb	1,s	;, result
   4CA8 32 62         [ 5] 1145 	leas	2,s	;,,
   4CAA 39            [ 5] 1146 	rts
                           1147 	.globl	_readEeprom
   4CAB                    1148 _readEeprom:
                           1149 ;----- asm -----
                           1150 ; 206 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1151 	; #ENR#[188]	if (picAvailable) {
                           1152 ; 0 "" 2
                           1153 ;--- end asm ---
   4CAB 7D CA F5      [ 7] 1154 	tst	_picAvailable	; picAvailable
   4CAE 27 0B         [ 3] 1155 	beq	L60	;
                           1156 ;----- asm -----
                           1157 ; 208 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1158 	; #ENR#[189]		return sendCommand(CMD_EEPROM_READ, address);
                           1159 ; 0 "" 2
                           1160 ;--- end asm ---
   4CB0 34 04         [ 6] 1161 	pshs	b	; address
   4CB2 C6 04         [ 2] 1162 	ldb	#4	;,
   4CB4 BD 4C 8B      [ 8] 1163 	jsr	_sendCommand
   4CB7 32 61         [ 5] 1164 	leas	1,s	;,,
   4CB9 20 02         [ 3] 1165 	bra	L61	;
   4CBB                    1166 L60:
                           1167 ;----- asm -----
                           1168 ; 211 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1169 	; #ENR#[191]		return 0xff;
                           1170 ; 0 "" 2
                           1171 ;--- end asm ---
   4CBB C6 FF         [ 2] 1172 	ldb	#-1	; D.2272,
   4CBD                    1173 L61:
   4CBD 39            [ 5] 1174 	rts
                           1175 	.globl	_startLevel
   4CBE                    1176 _startLevel:
   4CBE 32 7E         [ 5] 1177 	leas	-2,s	;,,
                           1178 ;----- asm -----
                           1179 ; 283 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1180 	; #ENR#[242]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                           1181 ; 0 "" 2
                           1182 ;--- end asm ---
   4CC0 F6 C8 83      [ 5] 1183 	ldb	_levelNumber	; tmp30, levelNumber
   4CC3 58            [ 2] 1184 	aslb	; tmp30
   4CC4 BD 4C AB      [ 8] 1185 	jsr	_readEeprom
   4CC7 4F            [ 2] 1186 	clra		;zero_extendqihi: R:b -> R:d	; D.2317, D.2317
   4CC8 FD CA F3      [ 6] 1187 	std	_levelHighscore	; D.2317, levelHighscore
                           1188 ;----- asm -----
                           1189 ; 285 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1190 	; #ENR#[243]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                           1191 ; 0 "" 2
                           1192 ;--- end asm ---
   4CCB F6 C8 83      [ 5] 1193 	ldb	_levelNumber	; tmp32, levelNumber
   4CCE 58            [ 2] 1194 	aslb	; tmp32
   4CCF 5C            [ 2] 1195 	incb	; tmp33
   4CD0 BD 4C AB      [ 8] 1196 	jsr	_readEeprom
   4CD3 1F 98         [ 6] 1197 	tfr	b,a	;,
   4CD5 5F            [ 2] 1198 	clrb	;
   4CD6 BA CA F3      [ 5] 1199 	ora	_levelHighscore	;, levelHighscore
   4CD9 FA CA F4      [ 5] 1200 	orb	_levelHighscore+1	;, levelHighscore
   4CDC FD CA F3      [ 6] 1201 	std	_levelHighscore	; levelHighscore.17, levelHighscore
                           1202 ;----- asm -----
                           1203 ; 287 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1204 	; #ENR#[244]	if (levelHighscore == 0) levelHighscore = 999;
                           1205 ; 0 "" 2
                           1206 ;--- end asm ---
   4CDF 10 83 00 00   [ 5] 1207 	cmpd	#0	; levelHighscore.17
   4CE3 26 06         [ 3] 1208 	bne	L64	;
   4CE5 8E 03 E7      [ 3] 1209 	ldx	#999	;,
   4CE8 BF CA F3      [ 6] 1210 	stx	_levelHighscore	;, levelHighscore
   4CEB                    1211 L64:
                           1212 ;----- asm -----
                           1213 ; 289 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1214 	; #ENR#[245]    level = levels[levelNumber];
                           1215 ; 0 "" 2
                           1216 ;--- end asm ---
   4CEB F6 C8 83      [ 5] 1217 	ldb	_levelNumber	;, levelNumber
   4CEE 4F            [ 2] 1218 	clra		;zero_extendqihi: R:b -> R:d	;,
   4CEF ED E4         [ 5] 1219 	std	,s	;,
   4CF1 58            [ 2] 1220 	aslb	;
   4CF2 49            [ 2] 1221 	rola	;
   4CF3 1F 01         [ 6] 1222 	tfr	d,x	;, tmp39
   4CF5 AE 89 5F FA   [ 9] 1223 	ldx	_levels,x	;, levels
   4CF9 BF C8 F2      [ 6] 1224 	stx	_level	;, level
                           1225 ;----- asm -----
                           1226 ; 291 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1227 	; #ENR#[246]	initSwatches();
                           1228 ; 0 "" 2
                           1229 ;--- end asm ---
   4CFC BD 38 61      [ 8] 1230 	jsr	_initSwatches
                           1231 ;----- asm -----
                           1232 ; 293 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1233 	; #ENR#[247]	initLevel();
                           1234 ; 0 "" 2
                           1235 ;--- end asm ---
   4CFF BD 3C 1E      [ 8] 1236 	jsr	_initLevel
                           1237 ;----- asm -----
                           1238 ; 295 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1239 	; #ENR#[248]	blockX = level->start.x;
                           1240 ; 0 "" 2
                           1241 ;--- end asm ---
   4D02 BE C8 F2      [ 6] 1242 	ldx	_level	; level, level
   4D05 E6 02         [ 5] 1243 	ldb	2,x	;, <variable>.start.x
   4D07 F7 C8 8D      [ 5] 1244 	stb	_blockX	;, blockX
                           1245 ;----- asm -----
                           1246 ; 297 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1247 	; #ENR#[249]	blockY = level->start.y;
                           1248 ; 0 "" 2
                           1249 ;--- end asm ---
   4D0A E6 03         [ 5] 1250 	ldb	3,x	;, <variable>.start.y
   4D0C F7 C8 8E      [ 5] 1251 	stb	_blockY	;, blockY
                           1252 ;----- asm -----
                           1253 ; 299 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1254 	; #ENR#[250]	blockStartLevel();
                           1255 ; 0 "" 2
                           1256 ;--- end asm ---
   4D0F BD 03 DB      [ 8] 1257 	jsr	_blockStartLevel
                           1258 ;----- asm -----
                           1259 ; 301 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1260 	; #ENR#[251]	blockYOfs = -30;
                           1261 ; 0 "" 2
                           1262 ;--- end asm ---
   4D12 C6 E2         [ 2] 1263 	ldb	#-30	;,
   4D14 F7 C8 89      [ 5] 1264 	stb	_blockYOfs	;, blockYOfs
                           1265 ;----- asm -----
                           1266 ; 303 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1267 	; #ENR#[252]	gameState = BlockMovingToStart;
                           1268 ; 0 "" 2
                           1269 ;--- end asm ---
   4D17 C6 02         [ 2] 1270 	ldb	#2	;,
   4D19 F7 CA F6      [ 5] 1271 	stb	_gameState	;, gameState
                           1272 ;----- asm -----
                           1273 ; 305 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1274 	; #ENR#[253]	changeMusic(startMusic);
                           1275 ; 0 "" 2
                           1276 ;--- end asm ---
   4D1C 8E 50 9D      [ 3] 1277 	ldx	#_startMusic	;,
   4D1F BD 49 6C      [ 8] 1278 	jsr	_changeMusic
                           1279 ;----- asm -----
                           1280 ; 307 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1281 	; #ENR#[254]	*vecx = 2;
                           1282 ; 0 "" 2
                           1283 ;--- end asm ---
   4D22 C6 02         [ 2] 1284 	ldb	#2	;,
   4D24 E7 9F C8 86   [ 9] 1285 	stb	[_vecx]	;,* vecx
                           1286 ;----- asm -----
                           1287 ; 309 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1288 	; #ENR#[255]	moveCount = 0;
                           1289 ; 0 "" 2
                           1290 ;--- end asm ---
   4D28 CC 00 00      [ 3] 1291 	ldd	#0	;,
   4D2B FD CA F1      [ 6] 1292 	std	_moveCount	;, moveCount
                           1293 ;----- asm -----
                           1294 ; 311 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1295 	; #ENR#[256]	updateInfoText();
                           1296 ; 0 "" 2
                           1297 ;--- end asm ---
   4D2E BD 49 4D      [ 8] 1298 	jsr	_updateInfoText
   4D31 32 62         [ 5] 1299 	leas	2,s	;,,
   4D33 39            [ 5] 1300 	rts
   4D34                    1301 LC0:
   4D34 4D 41 49 4E 20 4D  1302 	.byte	77,65,73,78,32,77,69,78
        45 4E
   4D3C 55 80 00           1303 	.byte	85,-128,0
   4D3F                    1304 LC1:
   4D3F 31 20 53 54 41 52  1305 	.byte	49,32,83,84,65,82,84,32
        54 20
   4D47 47 41 4D 45 80 00  1306 	.byte	71,65,77,69,-128,0
   4D4D                    1307 LC2:
   4D4D 32 20 43 4C 45 41  1308 	.byte	50,32,67,76,69,65,82,32
        52 20
   4D55 48 49 47 48 53 43  1309 	.byte	72,73,71,72,83,67,79,82
        4F 52
   4D5D 45 80 00           1310 	.byte	69,-128,0
                           1311 	.globl	_mainMenu
   4D60                    1312 _mainMenu:
   4D60 34 40         [ 6] 1313 	pshs	u	;
   4D62 32 7C         [ 5] 1314 	leas	-4,s	;,,
                           1315 ;----- asm -----
                           1316 ; 616 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1317 	; #ENR#[463]	Read_Btns();
                           1318 ; 0 "" 2
                           1319 ; 2286 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D64 BD F1 BA      [ 8] 1320 	jsr ___Read_Btns; BIOS call
                           1321 ; 0 "" 2
                           1322 ; 618 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1323 	; #ENR#[464]    Intensity_a(0x5f);
                           1324 ; 0 "" 2
                           1325 ;--- end asm ---
   4D67 C6 5F         [ 2] 1326 	ldb	#95	;,
   4D69 E7 63         [ 5] 1327 	stb	3,s	;, a
                           1328 ;----- asm -----
                           1329 ; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D6B A6 63         [ 5] 1330 	lda 3,s	; a
   4D6D BD F2 AB      [ 8] 1331 	jsr ___Intensity_a; BIOS call
                           1332 ; 0 "" 2
                           1333 ; 620 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1334 	; #ENR#[465]    Vec_Text_Width = 90;
                           1335 ; 0 "" 2
                           1336 ;--- end asm ---
   4D70 C6 5A         [ 2] 1337 	ldb	#90	;,
   4D72 F7 C8 2B      [ 5] 1338 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1339 ;----- asm -----
                           1340 ; 622 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1341 	; #ENR#[466]    Print_Str_d(100, -70, "MAIN MENU�");
                           1342 ; 0 "" 2
                           1343 ;--- end asm ---
   4D75 CB 0A         [ 2] 1344 	addb	#10	;,
   4D77 E7 63         [ 5] 1345 	stb	3,s	;, a
   4D79 C6 BA         [ 2] 1346 	ldb	#-70	;,
   4D7B E7 62         [ 5] 1347 	stb	2,s	;, b
   4D7D 8E 4D 34      [ 3] 1348 	ldx	#LC0	;,
   4D80 AF E4         [ 5] 1349 	stx	,s	;, u
                           1350 ;----- asm -----
                           1351 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D82 A6 63         [ 5] 1352 	lda 3,s	; a
   4D84 E6 62         [ 5] 1353 	ldb 2,s	; b
   4D86 EE E4         [ 5] 1354 	ldu ,s	; u
   4D88 BD F3 7A      [ 8] 1355 	jsr ___Print_Str_d; BIOS call
                           1356 ; 0 "" 2
                           1357 ; 624 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1358 	; #ENR#[467]    Print_Str_d(50, -110, "1 START GAME�");
                           1359 ; 0 "" 2
                           1360 ;--- end asm ---
   4D8B C6 32         [ 2] 1361 	ldb	#50	;,
   4D8D E7 62         [ 5] 1362 	stb	2,s	;, a
   4D8F C6 92         [ 2] 1363 	ldb	#-110	;,
   4D91 E7 63         [ 5] 1364 	stb	3,s	;, b
   4D93 8E 4D 3F      [ 3] 1365 	ldx	#LC1	;,
   4D96 AF E4         [ 5] 1366 	stx	,s	;, u
                           1367 ;----- asm -----
                           1368 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D98 A6 62         [ 5] 1369 	lda 2,s	; a
   4D9A E6 63         [ 5] 1370 	ldb 3,s	; b
   4D9C EE E4         [ 5] 1371 	ldu ,s	; u
   4D9E BD F3 7A      [ 8] 1372 	jsr ___Print_Str_d; BIOS call
                           1373 ; 0 "" 2
                           1374 ; 626 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1375 	; #ENR#[468]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
                           1376 ; 0 "" 2
                           1377 ;--- end asm ---
   4DA1 C6 14         [ 2] 1378 	ldb	#20	;,
   4DA3 E7 63         [ 5] 1379 	stb	3,s	;, a
   4DA5 C6 92         [ 2] 1380 	ldb	#-110	;,
   4DA7 E7 62         [ 5] 1381 	stb	2,s	;, b
   4DA9 8E 4D 4D      [ 3] 1382 	ldx	#LC2	;,
   4DAC AF E4         [ 5] 1383 	stx	,s	;, u
                           1384 ;----- asm -----
                           1385 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4DAE A6 63         [ 5] 1386 	lda 3,s	; a
   4DB0 E6 62         [ 5] 1387 	ldb 2,s	; b
   4DB2 EE E4         [ 5] 1388 	ldu ,s	; u
   4DB4 BD F3 7A      [ 8] 1389 	jsr ___Print_Str_d; BIOS call
                           1390 ; 0 "" 2
                           1391 ; 628 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1392 	; #ENR#[469]	if (Vec_Buttons & 1) {
                           1393 ; 0 "" 2
                           1394 ;--- end asm ---
   4DB7 F6 C8 11      [ 5] 1395 	ldb	_Vec_Buttons	;, Vec_Buttons
   4DBA C5 01         [ 2] 1396 	bitb	#1	;,
   4DBC 27 03         [ 3] 1397 	beq	L67	;
                           1398 ;----- asm -----
                           1399 ; 630 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1400 	; #ENR#[470]		startLevel();
                           1401 ; 0 "" 2
                           1402 ;--- end asm ---
   4DBE BD 4C BE      [ 8] 1403 	jsr	_startLevel
   4DC1                    1404 L67:
                           1405 ;----- asm -----
                           1406 ; 633 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1407 	; #ENR#[472]	if (Vec_Buttons & 2) {
                           1408 ; 0 "" 2
                           1409 ;--- end asm ---
   4DC1 F6 C8 11      [ 5] 1410 	ldb	_Vec_Buttons	;, Vec_Buttons
   4DC4 C5 02         [ 2] 1411 	bitb	#2	;,
   4DC6 27 05         [ 3] 1412 	beq	L69	;
                           1413 ;----- asm -----
                           1414 ; 635 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1415 	; #ENR#[473]		gameState = ClearMenu;
                           1416 ; 0 "" 2
                           1417 ;--- end asm ---
   4DC8 C6 01         [ 2] 1418 	ldb	#1	;,
   4DCA F7 CA F6      [ 5] 1419 	stb	_gameState	;, gameState
   4DCD                    1420 L69:
   4DCD 32 64         [ 5] 1421 	leas	4,s	;,,
   4DCF 35 C0         [ 7] 1422 	puls	u,pc	;
                           1423 	.globl	_blockFalling
   4DD1                    1424 _blockFalling:
   4DD1 32 7F         [ 5] 1425 	leas	-1,s	;,,
                           1426 ;----- asm -----
                           1427 ; 570 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1428 	; #ENR#[434]	drawField();
                           1429 ; 0 "" 2
                           1430 ;--- end asm ---
   4DD3 BD 49 75      [ 8] 1431 	jsr	_drawField
                           1432 ;----- asm -----
                           1433 ; 572 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1434 	; #ENR#[435]	blockYOfs++;
                           1435 ; 0 "" 2
                           1436 ;--- end asm ---
   4DD6 F6 C8 89      [ 5] 1437 	ldb	_blockYOfs	;, blockYOfs
   4DD9 5C            [ 2] 1438 	incb	;
   4DDA E7 E4         [ 4] 1439 	stb	,s	;, blockYOfs.50
   4DDC F7 C8 89      [ 5] 1440 	stb	_blockYOfs	;, blockYOfs
                           1441 ;----- asm -----
                           1442 ; 574 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1443 	; #ENR#[436]	if (blockYOfs < 12) {
                           1444 ; 0 "" 2
                           1445 ;--- end asm ---
   4DDF C1 0B         [ 2] 1446 	cmpb	#11	;cmpqi:	;,
   4DE1 2E 0A         [ 3] 1447 	bgt	L71	;
                           1448 ;----- asm -----
                           1449 ; 576 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1450 	; #ENR#[437]		drawBlock(-blockYOfs*blockYOfs);
                           1451 ; 0 "" 2
                           1452 ;--- end asm ---
   4DE3 50            [ 2] 1453 	negb	; tmp28
   4DE4 A6 E4         [ 4] 1454 	lda	,s	;mulqihi3	; blockYOfs.50
   4DE6 3D            [11] 1455 	mul
                           1456 		;movlsbqihi: D->B
   4DE7 BD 04 B4      [ 8] 1457 	jsr	_drawBlock
                           1458 ;----- asm -----
                           1459 ; 578 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1460 	; #ENR#[438]		doBlockAnimation();
                           1461 ; 0 "" 2
                           1462 ;--- end asm ---
   4DEA BD 03 B2      [ 8] 1463 	jsr	_doBlockAnimation
   4DED                    1464 L71:
                           1465 ;----- asm -----
                           1466 ; 581 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1467 	; #ENR#[440]	if (blockYOfs == 50) {
                           1468 ; 0 "" 2
                           1469 ;--- end asm ---
   4DED F6 C8 89      [ 5] 1470 	ldb	_blockYOfs	;, blockYOfs
   4DF0 C1 32         [ 2] 1471 	cmpb	#50	;cmpqi:	;,
   4DF2 26 03         [ 3] 1472 	bne	L73	;
                           1473 ;----- asm -----
                           1474 ; 583 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1475 	; #ENR#[441]		startLevel();
                           1476 ; 0 "" 2
                           1477 ;--- end asm ---
   4DF4 BD 4C BE      [ 8] 1478 	jsr	_startLevel
   4DF7                    1479 L73:
   4DF7 32 61         [ 5] 1480 	leas	1,s	;,,
   4DF9 39            [ 5] 1481 	rts
                           1482 	.globl	_writeEeprom
   4DFA                    1483 _writeEeprom:
                           1484 ;----- asm -----
                           1485 ; 195 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1486 	; #ENR#[180]	if (picAvailable) {
                           1487 ; 0 "" 2
                           1488 ;--- end asm ---
   4DFA 7D CA F5      [ 7] 1489 	tst	_picAvailable	; picAvailable
   4DFD 27 12         [ 3] 1490 	beq	L76	;
                           1491 ;----- asm -----
                           1492 ; 197 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1493 	; #ENR#[181]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                           1494 ; 0 "" 2
                           1495 ;--- end asm ---
   4DFF 34 04         [ 6] 1496 	pshs	b	; address
   4E01 C6 02         [ 2] 1497 	ldb	#2	;,
   4E03 BD 4C 8B      [ 8] 1498 	jsr	_sendCommand
                           1499 ;----- asm -----
                           1500 ; 199 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1501 	; #ENR#[182]	    	sendCommand(CMD_EEPROM_WRITE, data);
                           1502 ; 0 "" 2
                           1503 ;--- end asm ---
   4E06 E6 63         [ 5] 1504 	ldb	3,s	;, data
   4E08 E7 E2         [ 6] 1505 	stb	,-s	;,
   4E0A C6 03         [ 2] 1506 	ldb	#3	;,
   4E0C BD 4C 8B      [ 8] 1507 	jsr	_sendCommand
   4E0F 32 62         [ 5] 1508 	leas	2,s	;,,
   4E11                    1509 L76:
   4E11 39            [ 5] 1510 	rts
   4E12                    1511 LC3:
   4E12 43 4C 45 41 52 20  1512 	.byte	67,76,69,65,82,32,83,67
        53 43
   4E1A 4F 52 45 3F 80 00  1513 	.byte	79,82,69,63,-128,0
   4E20                    1514 LC4:
   4E20 33 20 59 45 53 80  1515 	.byte	51,32,89,69,83,-128,0
        00
   4E27                    1516 LC5:
   4E27 34 20 4E 4F 80 00  1517 	.byte	52,32,78,79,-128,0
                           1518 	.globl	_clearMenu
   4E2D                    1519 _clearMenu:
   4E2D 34 40         [ 6] 1520 	pshs	u	;
   4E2F 32 7B         [ 5] 1521 	leas	-5,s	;,,
                           1522 ;----- asm -----
                           1523 ; 642 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1524 	; #ENR#[479]	Read_Btns();
                           1525 ; 0 "" 2
                           1526 ; 2286 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E31 BD F1 BA      [ 8] 1527 	jsr ___Read_Btns; BIOS call
                           1528 ; 0 "" 2
                           1529 ; 644 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1530 	; #ENR#[480]    Intensity_a(0x5f);
                           1531 ; 0 "" 2
                           1532 ;--- end asm ---
   4E34 C6 5F         [ 2] 1533 	ldb	#95	;,
   4E36 E7 64         [ 5] 1534 	stb	4,s	;, a
                           1535 ;----- asm -----
                           1536 ; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E38 A6 64         [ 5] 1537 	lda 4,s	; a
   4E3A BD F2 AB      [ 8] 1538 	jsr ___Intensity_a; BIOS call
                           1539 ; 0 "" 2
                           1540 ; 646 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1541 	; #ENR#[481]    Vec_Text_Width = 90;
                           1542 ; 0 "" 2
                           1543 ;--- end asm ---
   4E3D C6 5A         [ 2] 1544 	ldb	#90	;,
   4E3F F7 C8 2B      [ 5] 1545 	stb	_Vec_Text_Width	;, Vec_Text_Width
                           1546 ;----- asm -----
                           1547 ; 648 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1548 	; #ENR#[482]    Print_Str_d(100, -80, "CLEAR SCORE?�");
                           1549 ; 0 "" 2
                           1550 ;--- end asm ---
   4E42 CB 0A         [ 2] 1551 	addb	#10	;,
   4E44 E7 64         [ 5] 1552 	stb	4,s	;, a
   4E46 C6 B0         [ 2] 1553 	ldb	#-80	;,
   4E48 E7 63         [ 5] 1554 	stb	3,s	;, b
   4E4A 8E 4E 12      [ 3] 1555 	ldx	#LC3	;,
   4E4D AF 61         [ 6] 1556 	stx	1,s	;, u
                           1557 ;----- asm -----
                           1558 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E4F A6 64         [ 5] 1559 	lda 4,s	; a
   4E51 E6 63         [ 5] 1560 	ldb 3,s	; b
   4E53 EE 61         [ 6] 1561 	ldu 1,s	; u
   4E55 BD F3 7A      [ 8] 1562 	jsr ___Print_Str_d; BIOS call
                           1563 ; 0 "" 2
                           1564 ; 650 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1565 	; #ENR#[483]    Print_Str_d(50, -110, "3 YES�");
                           1566 ; 0 "" 2
                           1567 ;--- end asm ---
   4E58 C6 32         [ 2] 1568 	ldb	#50	;,
   4E5A E7 63         [ 5] 1569 	stb	3,s	;, a
   4E5C C6 92         [ 2] 1570 	ldb	#-110	;,
   4E5E E7 64         [ 5] 1571 	stb	4,s	;, b
   4E60 8E 4E 20      [ 3] 1572 	ldx	#LC4	;,
   4E63 AF 61         [ 6] 1573 	stx	1,s	;, u
                           1574 ;----- asm -----
                           1575 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E65 A6 63         [ 5] 1576 	lda 3,s	; a
   4E67 E6 64         [ 5] 1577 	ldb 4,s	; b
   4E69 EE 61         [ 6] 1578 	ldu 1,s	; u
   4E6B BD F3 7A      [ 8] 1579 	jsr ___Print_Str_d; BIOS call
                           1580 ; 0 "" 2
                           1581 ; 652 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1582 	; #ENR#[484]    Print_Str_d(20, -110, "4 NO�");
                           1583 ; 0 "" 2
                           1584 ;--- end asm ---
   4E6E C6 14         [ 2] 1585 	ldb	#20	;,
   4E70 E7 64         [ 5] 1586 	stb	4,s	;, a
   4E72 C6 92         [ 2] 1587 	ldb	#-110	;,
   4E74 E7 63         [ 5] 1588 	stb	3,s	;, b
   4E76 8E 4E 27      [ 3] 1589 	ldx	#LC5	;,
   4E79 AF 61         [ 6] 1590 	stx	1,s	;, u
                           1591 ;----- asm -----
                           1592 ; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E7B A6 64         [ 5] 1593 	lda 4,s	; a
   4E7D E6 63         [ 5] 1594 	ldb 3,s	; b
   4E7F EE 61         [ 6] 1595 	ldu 1,s	; u
   4E81 BD F3 7A      [ 8] 1596 	jsr ___Print_Str_d; BIOS call
                           1597 ; 0 "" 2
                           1598 ; 654 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1599 	; #ENR#[485]	if (Vec_Buttons & 4) {
                           1600 ; 0 "" 2
                           1601 ;--- end asm ---
   4E84 F6 C8 11      [ 5] 1602 	ldb	_Vec_Buttons	;, Vec_Buttons
   4E87 C5 04         [ 2] 1603 	bitb	#4	;,
   4E89 27 18         [ 3] 1604 	beq	L78	;
                           1605 ;----- asm -----
                           1606 ; 656 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1607 	; #ENR#[486]		for (uint8_t i = 0; i < 6; i++) {
                           1608 ; 0 "" 2
                           1609 ;--- end asm ---
   4E8B 6F E4         [ 6] 1610 	clr	,s	; i
   4E8D                    1611 L79:
                           1612 ;----- asm -----
                           1613 ; 658 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1614 	; #ENR#[487]			writeEeprom(i, 0xff);
                           1615 ; 0 "" 2
                           1616 ;--- end asm ---
   4E8D C6 FF         [ 2] 1617 	ldb	#-1	;,
   4E8F E7 E2         [ 6] 1618 	stb	,-s	;,
   4E91 E6 61         [ 5] 1619 	ldb	1,s	;, i
   4E93 BD 4D FA      [ 8] 1620 	jsr	_writeEeprom
   4E96 6C 61         [ 7] 1621 	inc	1,s	; i
   4E98 32 61         [ 5] 1622 	leas	1,s	;,,
   4E9A E6 E4         [ 4] 1623 	ldb	,s	;, i
   4E9C C1 06         [ 2] 1624 	cmpb	#6	;cmpqi:	;,
   4E9E 26 ED         [ 3] 1625 	bne	L79	;
                           1626 ;----- asm -----
                           1627 ; 661 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1628 	; #ENR#[489]		gameState = MainMenu;
                           1629 ; 0 "" 2
                           1630 ;--- end asm ---
   4EA0 7F CA F6      [ 7] 1631 	clr	_gameState	; gameState
   4EA3                    1632 L78:
                           1633 ;----- asm -----
                           1634 ; 664 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1635 	; #ENR#[491]	if (Vec_Buttons & 8) {
                           1636 ; 0 "" 2
                           1637 ;--- end asm ---
   4EA3 F6 C8 11      [ 5] 1638 	ldb	_Vec_Buttons	;, Vec_Buttons
   4EA6 C5 08         [ 2] 1639 	bitb	#8	;,
   4EA8 27 03         [ 3] 1640 	beq	L81	;
                           1641 ;----- asm -----
                           1642 ; 666 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1643 	; #ENR#[492]		gameState = MainMenu;
                           1644 ; 0 "" 2
                           1645 ;--- end asm ---
   4EAA 7F CA F6      [ 7] 1646 	clr	_gameState	; gameState
   4EAD                    1647 L81:
   4EAD 32 65         [ 5] 1648 	leas	5,s	;,,
   4EAF 35 C0         [ 7] 1649 	puls	u,pc	;
                           1650 	.globl	_blockMovingAtEnd
   4EB1                    1651 _blockMovingAtEnd:
   4EB1 32 7E         [ 5] 1652 	leas	-2,s	;,,
                           1653 ;----- asm -----
                           1654 ; 590 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1655 	; #ENR#[447]	drawField();
                           1656 ; 0 "" 2
                           1657 ;--- end asm ---
   4EB3 BD 49 75      [ 8] 1658 	jsr	_drawField
                           1659 ;----- asm -----
                           1660 ; 592 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1661 	; #ENR#[448]	drawBlock(blockYOfs);
                           1662 ; 0 "" 2
                           1663 ;--- end asm ---
   4EB6 F6 C8 89      [ 5] 1664 	ldb	_blockYOfs	;, blockYOfs
   4EB9 BD 04 B4      [ 8] 1665 	jsr	_drawBlock
                           1666 ;----- asm -----
                           1667 ; 594 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1668 	; #ENR#[449]	blockYOfs++;
                           1669 ; 0 "" 2
                           1670 ;--- end asm ---
   4EBC F6 C8 89      [ 5] 1671 	ldb	_blockYOfs	; blockYOfs.52, blockYOfs
   4EBF 5C            [ 2] 1672 	incb	; blockYOfs.52
   4EC0 F7 C8 89      [ 5] 1673 	stb	_blockYOfs	; blockYOfs.52, blockYOfs
                           1674 ;----- asm -----
                           1675 ; 596 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1676 	; #ENR#[450]	if (blockYOfs == 30) {
                           1677 ; 0 "" 2
                           1678 ;--- end asm ---
   4EC3 C1 1E         [ 2] 1679 	cmpb	#30	;cmpqi:	; blockYOfs.52,
   4EC5 10 26 00 3F   [ 6] 1680 	lbne	L87	;
                           1681 ;----- asm -----
                           1682 ; 598 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1683 	; #ENR#[451]		if (moveCount < levelHighscore) {
                           1684 ; 0 "" 2
                           1685 ;--- end asm ---
   4EC9 BE CA F1      [ 6] 1686 	ldx	_moveCount	; moveCount.53, moveCount
   4ECC BC CA F3      [ 7] 1687 	cmpx	_levelHighscore	;cmphi:	; moveCount.53, levelHighscore
   4ECF 24 25         [ 3] 1688 	bhs	L85	;
                           1689 ;----- asm -----
                           1690 ; 600 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1691 	; #ENR#[452]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           1692 ; 0 "" 2
                           1693 ;--- end asm ---
   4ED1 F6 C8 83      [ 5] 1694 	ldb	_levelNumber	;, levelNumber
   4ED4 58            [ 2] 1695 	aslb	;
   4ED5 E7 E4         [ 4] 1696 	stb	,s	;,
   4ED7 1F 10         [ 6] 1697 	tfr	x,d	; moveCount.53,
   4ED9 34 04         [ 6] 1698 	pshs	b	;
   4EDB E6 61         [ 5] 1699 	ldb	1,s	;,
   4EDD BD 4D FA      [ 8] 1700 	jsr	_writeEeprom
                           1701 ;----- asm -----
                           1702 ; 602 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1703 	; #ENR#[453]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           1704 ; 0 "" 2
                           1705 ;--- end asm ---
   4EE0 F6 C8 83      [ 5] 1706 	ldb	_levelNumber	; tmp31, levelNumber
   4EE3 58            [ 2] 1707 	aslb	; tmp31
   4EE4 5C            [ 2] 1708 	incb	; tmp31
   4EE5 E7 62         [ 5] 1709 	stb	2,s	; tmp31,
   4EE7 FC CA F1      [ 6] 1710 	ldd	_moveCount	; tmp33, moveCount
   4EEA 1F 89         [ 6] 1711 	tfr	a,b	;,
   4EEC 4F            [ 2] 1712 	clra		;zero_extendqihi: R:b -> R:d	;,
   4EED 34 04         [ 6] 1713 	pshs	b	; tmp33
   4EEF E6 63         [ 5] 1714 	ldb	3,s	;,
   4EF1 BD 4D FA      [ 8] 1715 	jsr	_writeEeprom
   4EF4 32 62         [ 5] 1716 	leas	2,s	;,,
   4EF6                    1717 L85:
                           1718 ;----- asm -----
                           1719 ; 605 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1720 	; #ENR#[455]		levelNumber++;
                           1721 ; 0 "" 2
                           1722 ;--- end asm ---
   4EF6 F6 C8 83      [ 5] 1723 	ldb	_levelNumber	; levelNumber.56, levelNumber
   4EF9 5C            [ 2] 1724 	incb	; levelNumber.56
   4EFA F7 C8 83      [ 5] 1725 	stb	_levelNumber	; levelNumber.56, levelNumber
                           1726 ;----- asm -----
                           1727 ; 607 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1728 	; #ENR#[456]		if (levelNumber >= levelCount) levelNumber = 0;
                           1729 ; 0 "" 2
                           1730 ;--- end asm ---
   4EFD F1 51 83      [ 5] 1731 	cmpb	_levelCount	;cmpqi:	; levelNumber.56, levelCount
   4F00 25 03         [ 3] 1732 	blo	L86	;
   4F02 7F C8 83      [ 7] 1733 	clr	_levelNumber	; levelNumber
   4F05                    1734 L86:
                           1735 ;----- asm -----
                           1736 ; 609 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1737 	; #ENR#[457]		startLevel();
                           1738 ; 0 "" 2
                           1739 ;--- end asm ---
   4F05 BD 4C BE      [ 8] 1740 	jsr	_startLevel
   4F08                    1741 L87:
   4F08 32 62         [ 5] 1742 	leas	2,s	;,,
   4F0A 39            [ 5] 1743 	rts
                           1744 	.globl	_setBank
   4F0B                    1745 _setBank:
   4F0B 32 7F         [ 5] 1746 	leas	-1,s	;,,
   4F0D E7 E4         [ 4] 1747 	stb	,s	; bank, bank
                           1748 ;----- asm -----
                           1749 ; 172 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1750 	; #ENR#[164]	*vecx = 16 + bank;
                           1751 ; 0 "" 2
                           1752 ;--- end asm ---
   4F0F CB 10         [ 2] 1753 	addb	#16	; bank,
   4F11 E7 9F C8 86   [ 9] 1754 	stb	[_vecx]	; bank,* vecx
                           1755 ;----- asm -----
                           1756 ; 174 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1757 	; #ENR#[165]	sendCommand(CMD_SET_BANK, bank);
                           1758 ; 0 "" 2
                           1759 ;--- end asm ---
   4F15 E6 E4         [ 4] 1760 	ldb	,s	;, bank
   4F17 34 04         [ 6] 1761 	pshs	b	;
   4F19 C6 05         [ 2] 1762 	ldb	#5	;,
   4F1B BD 4C 8B      [ 8] 1763 	jsr	_sendCommand
   4F1E 32 62         [ 5] 1764 	leas	2,s	;,,
   4F20 39            [ 5] 1765 	rts
                           1766 	.globl	_blockWaiting
   4F21                    1767 _blockWaiting:
                           1768 ;----- asm -----
                           1769 ; 381 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1770 	; #ENR#[319]	drawField();
                           1771 ; 0 "" 2
                           1772 ;--- end asm ---
   4F21 BD 49 75      [ 8] 1773 	jsr	_drawField
                           1774 ;----- asm -----
                           1775 ; 383 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1776 	; #ENR#[320]	drawBlock(0);
                           1777 ; 0 "" 2
                           1778 ;--- end asm ---
   4F24 5F            [ 2] 1779 	clrb	;
   4F25 BD 04 B4      [ 8] 1780 	jsr	_drawBlock
                           1781 ;----- asm -----
                           1782 ; 385 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1783 	; #ENR#[321]	joybit();
                           1784 ; 0 "" 2
                           1785 ; 2354 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F28 BD F1 F8      [ 8] 1786 	jsr ___Joy_Digital; BIOS call
                           1787 ; 0 "" 2
                           1788 ; 387 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1789 	; #ENR#[322]	if (pot0 < -10) {
                           1790 ; 0 "" 2
                           1791 ;--- end asm ---
   4F2B F6 C8 1B      [ 5] 1792 	ldb	-14309	; D.2339,
   4F2E C1 F6         [ 2] 1793 	cmpb	#-10	;cmpqi:	; D.2339,
   4F30 2C 0C         [ 3] 1794 	bge	L91	;
                           1795 ;----- asm -----
                           1796 ; 389 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1797 	; #ENR#[323]		moveBlock(Left);
                           1798 ; 0 "" 2
                           1799 ;--- end asm ---
   4F32 5F            [ 2] 1800 	clrb	;
   4F33 BD 4A EC      [ 8] 1801 	jsr	_moveBlock
                           1802 ;----- asm -----
                           1803 ; 391 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1804 	; #ENR#[324]		gameState = BlockMoving;
                           1805 ; 0 "" 2
                           1806 ;--- end asm ---
   4F36 C6 04         [ 2] 1807 	ldb	#4	;,
   4F38 F7 CA F6      [ 5] 1808 	stb	_gameState	;, gameState
   4F3B 16 00 37      [ 5] 1809 	lbra	L92	;
   4F3E                    1810 L91:
   4F3E F6 C8 1B      [ 5] 1811 	ldb	-14309	; D.2340,
   4F41 C1 0A         [ 2] 1812 	cmpb	#10	;cmpqi:	; D.2340,
   4F43 2F 0C         [ 3] 1813 	ble	L93	;
                           1814 ;----- asm -----
                           1815 ; 394 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1816 	; #ENR#[326]		moveBlock(Right);
                           1817 ; 0 "" 2
                           1818 ;--- end asm ---
   4F45 C6 02         [ 2] 1819 	ldb	#2	;,
   4F47 BD 4A EC      [ 8] 1820 	jsr	_moveBlock
                           1821 ;----- asm -----
                           1822 ; 396 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1823 	; #ENR#[327]		gameState = BlockMoving;
                           1824 ; 0 "" 2
                           1825 ;--- end asm ---
   4F4A C6 04         [ 2] 1826 	ldb	#4	;,
   4F4C F7 CA F6      [ 5] 1827 	stb	_gameState	;, gameState
   4F4F 20 24         [ 3] 1828 	bra	L92	;
   4F51                    1829 L93:
   4F51 F6 C8 1C      [ 5] 1830 	ldb	-14308	; D.2342,
   4F54 C1 F6         [ 2] 1831 	cmpb	#-10	;cmpqi:	; D.2342,
   4F56 2C 0C         [ 3] 1832 	bge	L94	;
                           1833 ;----- asm -----
                           1834 ; 399 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1835 	; #ENR#[329]		moveBlock(Down);
                           1836 ; 0 "" 2
                           1837 ;--- end asm ---
   4F58 C6 03         [ 2] 1838 	ldb	#3	;,
   4F5A BD 4A EC      [ 8] 1839 	jsr	_moveBlock
                           1840 ;----- asm -----
                           1841 ; 401 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1842 	; #ENR#[330]		gameState = BlockMoving;
                           1843 ; 0 "" 2
                           1844 ;--- end asm ---
   4F5D C6 04         [ 2] 1845 	ldb	#4	;,
   4F5F F7 CA F6      [ 5] 1846 	stb	_gameState	;, gameState
   4F62 20 11         [ 3] 1847 	bra	L92	;
   4F64                    1848 L94:
   4F64 F6 C8 1C      [ 5] 1849 	ldb	-14308	; D.2343,
   4F67 C1 0A         [ 2] 1850 	cmpb	#10	;cmpqi:	; D.2343,
   4F69 2F 0A         [ 3] 1851 	ble	L92	;
                           1852 ;----- asm -----
                           1853 ; 404 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1854 	; #ENR#[332]		moveBlock(Up);
                           1855 ; 0 "" 2
                           1856 ;--- end asm ---
   4F6B C6 01         [ 2] 1857 	ldb	#1	;,
   4F6D BD 4A EC      [ 8] 1858 	jsr	_moveBlock
                           1859 ;----- asm -----
                           1860 ; 406 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1861 	; #ENR#[333]		gameState = BlockMoving;
                           1862 ; 0 "" 2
                           1863 ;--- end asm ---
   4F70 C6 04         [ 2] 1864 	ldb	#4	;,
   4F72 F7 CA F6      [ 5] 1865 	stb	_gameState	;, gameState
   4F75                    1866 L92:
                           1867 ;----- asm -----
                           1868 ; 409 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1869 	; #ENR#[335]	if (gameState == BlockMoving) {
                           1870 ; 0 "" 2
                           1871 ;--- end asm ---
   4F75 F6 CA F6      [ 5] 1872 	ldb	_gameState	;, gameState
   4F78 C1 04         [ 2] 1873 	cmpb	#4	;cmpqi:	;,
   4F7A 26 0C         [ 3] 1874 	bne	L95	;
                           1875 ;----- asm -----
                           1876 ; 411 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1877 	; #ENR#[336]		changeMusic(movingMusic);
                           1878 ; 0 "" 2
                           1879 ;--- end asm ---
   4F7C 8E 50 F7      [ 3] 1880 	ldx	#_movingMusic	;,
   4F7F BD 49 6C      [ 8] 1881 	jsr	_changeMusic
                           1882 ;----- asm -----
                           1883 ; 413 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1884 	; #ENR#[337]		*vecx = 3;
                           1885 ; 0 "" 2
                           1886 ;--- end asm ---
   4F82 C6 03         [ 2] 1887 	ldb	#3	;,
   4F84 E7 9F C8 86   [ 9] 1888 	stb	[_vecx]	;,* vecx
   4F88                    1889 L95:
                           1890 ;----- asm -----
                           1891 ; 417 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1892 	; #ENR#[340]    	Read_Btns();
                           1893 ; 0 "" 2
                           1894 ; 2286 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F88 BD F1 BA      [ 8] 1895 	jsr ___Read_Btns; BIOS call
                           1896 ; 0 "" 2
                           1897 ; 419 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1898 	; #ENR#[341]    	if (Vec_Buttons & 1) {
                           1899 ; 0 "" 2
                           1900 ;--- end asm ---
   4F8B F6 C8 11      [ 5] 1901 	ldb	_Vec_Buttons	;, Vec_Buttons
   4F8E C5 01         [ 2] 1902 	bitb	#1	;,
   4F90 27 18         [ 3] 1903 	beq	L96	;
                           1904 ;----- asm -----
                           1905 ; 421 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1906 	; #ENR#[342]		levelNumber++;
                           1907 ; 0 "" 2
                           1908 ;--- end asm ---
   4F92 F6 C8 83      [ 5] 1909 	ldb	_levelNumber	; levelNumber.30, levelNumber
   4F95 5C            [ 2] 1910 	incb	; levelNumber.30
   4F96 F7 C8 83      [ 5] 1911 	stb	_levelNumber	; levelNumber.30, levelNumber
                           1912 ;----- asm -----
                           1913 ; 423 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1914 	; #ENR#[343]		if (levelNumber >= levelCount) {
                           1915 ; 0 "" 2
                           1916 ;--- end asm ---
   4F99 F1 51 83      [ 5] 1917 	cmpb	_levelCount	;cmpqi:	; levelNumber.30, levelCount
   4F9C 25 09         [ 3] 1918 	blo	L97	;
                           1919 ;----- asm -----
                           1920 ; 425 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1921 	; #ENR#[344]			levelNumber = 0;
                           1922 ; 0 "" 2
                           1923 ;--- end asm ---
   4F9E 7F C8 83      [ 7] 1924 	clr	_levelNumber	; levelNumber
                           1925 ;----- asm -----
                           1926 ; 427 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1927 	; #ENR#[345]			setBank(nextBank);
                           1928 ; 0 "" 2
                           1929 ;--- end asm ---
   4FA1 F6 51 85      [ 5] 1930 	ldb	_nextBank	;, nextBank
   4FA4 BD 4F 0B      [ 8] 1931 	jsr	_setBank
   4FA7                    1932 L97:
                           1933 ;----- asm -----
                           1934 ; 430 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1935 	; #ENR#[347]    		startLevel();
                           1936 ; 0 "" 2
                           1937 ;--- end asm ---
   4FA7 BD 4C BE      [ 8] 1938 	jsr	_startLevel
   4FAA                    1939 L96:
                           1940 ;----- asm -----
                           1941 ; 433 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1942 	; #ENR#[349]    	if (Vec_Buttons & 2) {
                           1943 ; 0 "" 2
                           1944 ;--- end asm ---
   4FAA F6 C8 11      [ 5] 1945 	ldb	_Vec_Buttons	;, Vec_Buttons
   4FAD C5 02         [ 2] 1946 	bitb	#2	;,
   4FAF 27 08         [ 3] 1947 	beq	L99	;
                           1948 ;----- asm -----
                           1949 ; 435 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1950 	; #ENR#[350]		if (splitMode) {
                           1951 ; 0 "" 2
                           1952 ;--- end asm ---
   4FB1 7D C8 8C      [ 7] 1953 	tst	_splitMode	; splitMode
   4FB4 27 03         [ 3] 1954 	beq	L99	;
                           1955 ;----- asm -----
                           1956 ; 437 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1957 	; #ENR#[351]			swapSplit();
                           1958 ; 0 "" 2
                           1959 ;--- end asm ---
   4FB6 BD 04 8F      [ 8] 1960 	jsr	_swapSplit
   4FB9                    1961 L99:
   4FB9 39            [ 5] 1962 	rts
                           1963 	.globl	_main
   4FBA                    1964 _main:
   4FBA 34 60         [ 7] 1965 	pshs	y,u	;
   4FBC 32 7C         [ 5] 1966 	leas	-4,s	;,,
                           1967 ;----- asm -----
                           1968 ; 746 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1969 	; #ENR#[548]	setBank(0);
                           1970 ; 0 "" 2
                           1971 ;--- end asm ---
   4FBE 5F            [ 2] 1972 	clrb	;
   4FBF BD 4F 0B      [ 8] 1973 	jsr	_setBank
                           1974 ;----- asm -----
                           1975 ; 750 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1976 	; #ENR#[551]	*vecx = 4;
                           1977 ; 0 "" 2
                           1978 ;--- end asm ---
   4FC2 C6 04         [ 2] 1979 	ldb	#4	;,
   4FC4 E7 9F C8 86   [ 9] 1980 	stb	[_vecx]	;,* vecx
                           1981 ;----- asm -----
                           1982 ; 754 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1983 	; #ENR#[554]	picAvailable = 0;
                           1984 ; 0 "" 2
                           1985 ;--- end asm ---
   4FC8 7F CA F5      [ 7] 1986 	clr	_picAvailable	; picAvailable
                           1987 ;----- asm -----
                           1988 ; 756 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1989 	; #ENR#[555]	sendCommand(CMD_VERSION, 0);
                           1990 ; 0 "" 2
                           1991 ;--- end asm ---
   4FCB 6F E2         [ 8] 1992 	clr	,-s	;
   4FCD C6 01         [ 2] 1993 	ldb	#1	;,
   4FCF BD 4C 8B      [ 8] 1994 	jsr	_sendCommand
                           1995 ;----- asm -----
                           1996 ; 758 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1997 	; #ENR#[556]	sendCommand(CMD_VERSION, 0);
                           1998 ; 0 "" 2
                           1999 ;--- end asm ---
   4FD2 6F E2         [ 8] 2000 	clr	,-s	;
   4FD4 C6 01         [ 2] 2001 	ldb	#1	;,
   4FD6 BD 4C 8B      [ 8] 2002 	jsr	_sendCommand
                           2003 ;----- asm -----
                           2004 ; 760 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2005 	; #ENR#[557]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           2006 ; 0 "" 2
                           2007 ;--- end asm ---
   4FD9 6F E2         [ 8] 2008 	clr	,-s	;
   4FDB C6 01         [ 2] 2009 	ldb	#1	;,
   4FDD BD 4C 8B      [ 8] 2010 	jsr	_sendCommand
   4FE0 32 63         [ 5] 2011 	leas	3,s	;,,
   4FE2 C1 04         [ 2] 2012 	cmpb	#4	;cmpqi:	; D.2454,
   4FE4 26 05         [ 3] 2013 	bne	L101	;
                           2014 ;----- asm -----
                           2015 ; 762 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2016 	; #ENR#[558]		picAvailable = 1;
                           2017 ; 0 "" 2
                           2018 ;--- end asm ---
   4FE6 C6 01         [ 2] 2019 	ldb	#1	;,
   4FE8 F7 CA F5      [ 5] 2020 	stb	_picAvailable	;, picAvailable
   4FEB                    2021 L101:
                           2022 ;----- asm -----
                           2023 ; 767 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2024 	; #ENR#[562]	memcpy(infoText, "001 - 999�", 10);
                           2025 ; 0 "" 2
                           2026 ;--- end asm ---
   4FEB 8E 30 30      [ 3] 2027 	ldx	#12336	;,
   4FEE BF CA E7      [ 6] 2028 	stx	_infoText	;, infoText
   4FF1 8E 31 20      [ 3] 2029 	ldx	#12576	;,
   4FF4 BF CA E9      [ 6] 2030 	stx	_infoText+2	;, infoText
   4FF7 8E 2D 20      [ 3] 2031 	ldx	#11552	;,
   4FFA BF CA EB      [ 6] 2032 	stx	_infoText+4	;, infoText
   4FFD 8E 39 39      [ 3] 2033 	ldx	#14649	;,
   5000 BF CA ED      [ 6] 2034 	stx	_infoText+6	;, infoText
   5003 8E 39 80      [ 3] 2035 	ldx	#14720	;,
   5006 BF CA EF      [ 6] 2036 	stx	_infoText+8	;, infoText
                           2037 ;----- asm -----
                           2038 ; 771 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2039 	; #ENR#[565]	epot0 = 1;
                           2040 ; 0 "" 2
                           2041 ;--- end asm ---
   5009 C6 01         [ 2] 2042 	ldb	#1	;,
   500B F7 C8 1F      [ 5] 2043 	stb	-14305	;,
                           2044 ;----- asm -----
                           2045 ; 773 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2046 	; #ENR#[566]	epot1 = 3;
                           2047 ; 0 "" 2
                           2048 ;--- end asm ---
   500E C6 03         [ 2] 2049 	ldb	#3	;,
   5010 F7 C8 20      [ 5] 2050 	stb	-14304	;,
                           2051 ;----- asm -----
                           2052 ; 775 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2053 	; #ENR#[567]	epot2 = 0;
                           2054 ; 0 "" 2
                           2055 ;--- end asm ---
   5013 7F C8 21      [ 7] 2056 	clr	-14303	;
                           2057 ;----- asm -----
                           2058 ; 777 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2059 	; #ENR#[568]	epot3 = 0;
                           2060 ; 0 "" 2
                           2061 ;--- end asm ---
   5016 7F C8 22      [ 7] 2062 	clr	-14302	;
                           2063 ;----- asm -----
                           2064 ; 780 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2065 	; #ENR#[570]	gameState = MainMenu;
                           2066 ; 0 "" 2
                           2067 ;--- end asm ---
   5019 7F CA F6      [ 7] 2068 	clr	_gameState	; gameState
                           2069 ;----- asm -----
                           2070 ; 782 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2071 	; #ENR#[571]	musicInit();
                           2072 ; 0 "" 2
                           2073 ;--- end asm ---
   501C BD 51 23      [ 8] 2074 	jsr	_musicInit
                           2075 ;----- asm -----
                           2076 ; 785 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2077 	; #ENR#[573]	while (1) {
                           2078 ; 0 "" 2
                           2079 ;--- end asm ---
   501F                    2080 L113:
                           2081 ;----- asm -----
                           2082 ; 788 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2083 	; #ENR#[575]		frwait();
                           2084 ; 0 "" 2
                           2085 ; 97 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   501F BD F1 92      [ 8] 2086 	jsr ___Wait_Recal; BIOS call
                           2087 ; 0 "" 2
                           2088 ; 791 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2089 	; #ENR#[577]		switch (gameState) {
                           2090 ; 0 "" 2
                           2091 ;--- end asm ---
   5022 F6 CA F6      [ 5] 2092 	ldb	_gameState	;, gameState
   5025 C1 06         [ 2] 2093 	cmpb	#6	;cmpqi:	;,
   5027 10 22 00 53   [ 6] 2094 	lbhi	L102	;
   502B 4F            [ 2] 2095 	clra		;zero_extendqihi: R:b -> R:d	;,
   502C ED E4         [ 5] 2096 	std	,s	;,
   502E 58            [ 2] 2097 	aslb	;
   502F 49            [ 2] 2098 	rola	;
   5030 1F 01         [ 6] 2099 	tfr	d,x	;, tmp43
   5032 6E 99 50 36   [10] 2100 	jmp	[L110,x]	;, tmp43
   5036                    2101 L110:
   5036 50 44              2102 	.word	L103
   5038 50 4D              2103 	.word	L104
   503A 50 56              2104 	.word	L105
   503C 50 5F              2105 	.word	L106
   503E 50 68              2106 	.word	L107
   5040 50 70              2107 	.word	L108
   5042 50 78              2108 	.word	L109
   5044                    2109 L103:
                           2110 ;----- asm -----
                           2111 ; 795 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2112 	; #ENR#[579]        			mainMenu();
                           2113 ; 0 "" 2
                           2114 ;--- end asm ---
   5044 BD 4D 60      [ 8] 2115 	jsr	_mainMenu
                           2116 ;----- asm -----
                           2117 ; 797 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2118 	; #ENR#[580]				musicPlay();
                           2119 ; 0 "" 2
                           2120 ;--- end asm ---
   5047 BD 51 2D      [ 8] 2121 	jsr	_musicPlay
                           2122 ;----- asm -----
                           2123 ; 799 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2124 	; #ENR#[581]        			break;
                           2125 ; 0 "" 2
                           2126 ;--- end asm ---
   504A 16 00 31      [ 5] 2127 	lbra	L102	;
   504D                    2128 L104:
                           2129 ;----- asm -----
                           2130 ; 803 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2131 	; #ENR#[583]				clearMenu();
                           2132 ; 0 "" 2
                           2133 ;--- end asm ---
   504D BD 4E 2D      [ 8] 2134 	jsr	_clearMenu
                           2135 ;----- asm -----
                           2136 ; 805 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2137 	; #ENR#[584]				musicPlay();
                           2138 ; 0 "" 2
                           2139 ;--- end asm ---
   5050 BD 51 2D      [ 8] 2140 	jsr	_musicPlay
                           2141 ;----- asm -----
                           2142 ; 807 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2143 	; #ENR#[585]				break;
                           2144 ; 0 "" 2
                           2145 ;--- end asm ---
   5053 16 00 28      [ 5] 2146 	lbra	L102	;
   5056                    2147 L105:
                           2148 ;----- asm -----
                           2149 ; 811 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2150 	; #ENR#[587]				showInfo();
                           2151 ; 0 "" 2
                           2152 ;--- end asm ---
   5056 BD 4A A9      [ 8] 2153 	jsr	_showInfo
                           2154 ;----- asm -----
                           2155 ; 813 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2156 	; #ENR#[588]        			blockMovingToStart();
                           2157 ; 0 "" 2
                           2158 ;--- end asm ---
   5059 BD 4A D3      [ 8] 2159 	jsr	_blockMovingToStart
                           2160 ;----- asm -----
                           2161 ; 815 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2162 	; #ENR#[589]        			break;
                           2163 ; 0 "" 2
                           2164 ;--- end asm ---
   505C 16 00 1F      [ 5] 2165 	lbra	L102	;
   505F                    2166 L106:
                           2167 ;----- asm -----
                           2168 ; 819 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2169 	; #ENR#[591]				showInfo();
                           2170 ; 0 "" 2
                           2171 ;--- end asm ---
   505F BD 4A A9      [ 8] 2172 	jsr	_showInfo
                           2173 ;----- asm -----
                           2174 ; 821 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2175 	; #ENR#[592]        			blockWaiting();
                           2176 ; 0 "" 2
                           2177 ;--- end asm ---
   5062 BD 4F 21      [ 8] 2178 	jsr	_blockWaiting
                           2179 ;----- asm -----
                           2180 ; 823 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2181 	; #ENR#[593]        			break;
                           2182 ; 0 "" 2
                           2183 ;--- end asm ---
   5065 16 00 16      [ 5] 2184 	lbra	L102	;
   5068                    2185 L107:
                           2186 ;----- asm -----
                           2187 ; 827 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2188 	; #ENR#[595]				showInfo();
                           2189 ; 0 "" 2
                           2190 ;--- end asm ---
   5068 BD 4A A9      [ 8] 2191 	jsr	_showInfo
                           2192 ;----- asm -----
                           2193 ; 829 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2194 	; #ENR#[596]        			blockMoving();
                           2195 ; 0 "" 2
                           2196 ;--- end asm ---
   506B BD 4B 19      [ 8] 2197 	jsr	_blockMoving
                           2198 ;----- asm -----
                           2199 ; 831 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2200 	; #ENR#[597]        			break;
                           2201 ; 0 "" 2
                           2202 ;--- end asm ---
   506E 20 0E         [ 3] 2203 	bra	L102	;
   5070                    2204 L108:
                           2205 ;----- asm -----
                           2206 ; 835 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2207 	; #ENR#[599]				showInfo();
                           2208 ; 0 "" 2
                           2209 ;--- end asm ---
   5070 BD 4A A9      [ 8] 2210 	jsr	_showInfo
                           2211 ;----- asm -----
                           2212 ; 837 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2213 	; #ENR#[600]        			blockFalling();
                           2214 ; 0 "" 2
                           2215 ;--- end asm ---
   5073 BD 4D D1      [ 8] 2216 	jsr	_blockFalling
                           2217 ;----- asm -----
                           2218 ; 839 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2219 	; #ENR#[601]        			break;
                           2220 ; 0 "" 2
                           2221 ;--- end asm ---
   5076 20 06         [ 3] 2222 	bra	L102	;
   5078                    2223 L109:
                           2224 ;----- asm -----
                           2225 ; 843 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2226 	; #ENR#[603]				showInfo();
                           2227 ; 0 "" 2
                           2228 ;--- end asm ---
   5078 BD 4A A9      [ 8] 2229 	jsr	_showInfo
                           2230 ;----- asm -----
                           2231 ; 845 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2232 	; #ENR#[604]        			blockMovingAtEnd();
                           2233 ; 0 "" 2
                           2234 ;--- end asm ---
   507B BD 4E B1      [ 8] 2235 	jsr	_blockMovingAtEnd
                           2236 ;----- asm -----
                           2237 ; 847 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2238 	; #ENR#[605]        			break;
                           2239 ; 0 "" 2
                           2240 ;--- end asm ---
   507E                    2241 L102:
                           2242 ;----- asm -----
                           2243 ; 852 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2244 	; #ENR#[609]		if (gameState > ClearMenu) {
                           2245 ; 0 "" 2
                           2246 ;--- end asm ---
   507E F6 CA F6      [ 5] 2247 	ldb	_gameState	;, gameState
   5081 C1 01         [ 2] 2248 	cmpb	#1	;cmpqi:	;,
   5083 10 23 FF 98   [ 6] 2249 	lbls	L113	;
                           2250 ;----- asm -----
                           2251 ; 854 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2252 	; #ENR#[610]    			DP_to_C8();
                           2253 ; 0 "" 2
                           2254 ; 316 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5087 BD F1 AF      [ 8] 2255 	jsr ___DP_to_C8; BIOS call
                           2256 ; 0 "" 2
                           2257 ; 856 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2258 	; #ENR#[611]    			replay(currentMusic);
                           2259 ; 0 "" 2
                           2260 ;--- end asm ---
   508A BE C8 84      [ 6] 2261 	ldx	_currentMusic	;, currentMusic
   508D AF 62         [ 6] 2262 	stx	2,s	;, u
                           2263 ;----- asm -----
                           2264 ; 2917 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   508F EE 62         [ 6] 2265 	ldu 2,s	; u
   5091 BD F6 87      [ 8] 2266 	jsr ___Init_Music_chk; BIOS call
                           2267 ; 0 "" 2
                           2268 ; 858 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2269 	; #ENR#[612]    			DP_to_D0();
                           2270 ; 0 "" 2
                           2271 ; 300 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5094 BD F1 AA      [ 8] 2272 	jsr ___DP_to_D0; BIOS call
                           2273 ; 0 "" 2
                           2274 ; 860 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2275 	; #ENR#[613]    			reqout();
                           2276 ; 0 "" 2
                           2277 ; 2880 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5097 BD F2 89      [ 8] 2278 	jsr ___Do_Sound; BIOS call
                           2279 ; 0 "" 2
                           2280 ;--- end asm ---
   509A 16 FF 82      [ 5] 2281 	lbra	L113	;
                           2282 	.globl	_startMusic
   509D                    2283 _startMusic:
   509D FE                 2284 	.byte	-2
   509E E8                 2285 	.byte	-24
   509F FE                 2286 	.byte	-2
   50A0 B6                 2287 	.byte	-74
   50A1 01                 2288 	.byte	1
   50A2 01                 2289 	.byte	1
   50A3 02                 2290 	.byte	2
   50A4 01                 2291 	.byte	1
   50A5 03                 2292 	.byte	3
   50A6 01                 2293 	.byte	1
   50A7 04                 2294 	.byte	4
   50A8 01                 2295 	.byte	1
   50A9 05                 2296 	.byte	5
   50AA 01                 2297 	.byte	1
   50AB 06                 2298 	.byte	6
   50AC 01                 2299 	.byte	1
   50AD 07                 2300 	.byte	7
   50AE 01                 2301 	.byte	1
   50AF 08                 2302 	.byte	8
   50B0 01                 2303 	.byte	1
   50B1 09                 2304 	.byte	9
   50B2 01                 2305 	.byte	1
   50B3 0A                 2306 	.byte	10
   50B4 01                 2307 	.byte	1
   50B5 0B                 2308 	.byte	11
   50B6 01                 2309 	.byte	1
   50B7 0C                 2310 	.byte	12
   50B8 01                 2311 	.byte	1
   50B9 0D                 2312 	.byte	13
   50BA 01                 2313 	.byte	1
   50BB 00                 2314 	.byte	0
   50BC 80                 2315 	.byte	-128
                           2316 	.globl	_levelEndMusic
   50BD                    2317 _levelEndMusic:
   50BD FE                 2318 	.byte	-2
   50BE E8                 2319 	.byte	-24
   50BF FE                 2320 	.byte	-2
   50C0 B6                 2321 	.byte	-74
   50C1 0D                 2322 	.byte	13
   50C2 01                 2323 	.byte	1
   50C3 0E                 2324 	.byte	14
   50C4 01                 2325 	.byte	1
   50C5 0F                 2326 	.byte	15
   50C6 01                 2327 	.byte	1
   50C7 10                 2328 	.byte	16
   50C8 01                 2329 	.byte	1
   50C9 11                 2330 	.byte	17
   50CA 01                 2331 	.byte	1
   50CB 12                 2332 	.byte	18
   50CC 01                 2333 	.byte	1
   50CD 13                 2334 	.byte	19
   50CE 01                 2335 	.byte	1
   50CF 14                 2336 	.byte	20
   50D0 01                 2337 	.byte	1
   50D1 15                 2338 	.byte	21
   50D2 01                 2339 	.byte	1
   50D3 16                 2340 	.byte	22
   50D4 01                 2341 	.byte	1
   50D5 00                 2342 	.byte	0
   50D6 80                 2343 	.byte	-128
                           2344 	.globl	_fallingMusic
   50D7                    2345 _fallingMusic:
   50D7 FE                 2346 	.byte	-2
   50D8 E8                 2347 	.byte	-24
   50D9 FE                 2348 	.byte	-2
   50DA B6                 2349 	.byte	-74
   50DB 0D                 2350 	.byte	13
   50DC 02                 2351 	.byte	2
   50DD 0C                 2352 	.byte	12
   50DE 02                 2353 	.byte	2
   50DF 0B                 2354 	.byte	11
   50E0 02                 2355 	.byte	2
   50E1 0A                 2356 	.byte	10
   50E2 02                 2357 	.byte	2
   50E3 09                 2358 	.byte	9
   50E4 02                 2359 	.byte	2
   50E5 08                 2360 	.byte	8
   50E6 02                 2361 	.byte	2
   50E7 07                 2362 	.byte	7
   50E8 02                 2363 	.byte	2
   50E9 06                 2364 	.byte	6
   50EA 02                 2365 	.byte	2
   50EB 05                 2366 	.byte	5
   50EC 02                 2367 	.byte	2
   50ED 04                 2368 	.byte	4
   50EE 02                 2369 	.byte	2
   50EF 03                 2370 	.byte	3
   50F0 02                 2371 	.byte	2
   50F1 02                 2372 	.byte	2
   50F2 02                 2373 	.byte	2
   50F3 01                 2374 	.byte	1
   50F4 02                 2375 	.byte	2
   50F5 00                 2376 	.byte	0
   50F6 80                 2377 	.byte	-128
                           2378 	.globl	_movingMusic
   50F7                    2379 _movingMusic:
   50F7 FD                 2380 	.byte	-3
   50F8 C3                 2381 	.byte	-61
   50F9 FE                 2382 	.byte	-2
   50FA B6                 2383 	.byte	-74
   50FB 01                 2384 	.byte	1
   50FC 05                 2385 	.byte	5
   50FD 00                 2386 	.byte	0
   50FE 80                 2387 	.byte	-128
                           2388 	.globl	_currentMusic
                           2389 	.area	.data
   C884                    2390 _currentMusic:
   C884 50 9D              2391 	.word	_startMusic
                           2392 	.globl	_vecx
   C886                    2393 _vecx:
   C886 80 00              2394 	.word	-32768
                           2395 	.globl	_led8
                           2396 	.area	.text
   50FF                    2397 _led8:
   50FF FF                 2398 	.byte	-1
   5100 00                 2399 	.byte	0
   5101 05                 2400 	.byte	5
   5102 FF                 2401 	.byte	-1
   5103 FB                 2402 	.byte	-5
   5104 00                 2403 	.byte	0
   5105 FF                 2404 	.byte	-1
   5106 00                 2405 	.byte	0
   5107 FB                 2406 	.byte	-5
   5108 FF                 2407 	.byte	-1
   5109 05                 2408 	.byte	5
   510A 00                 2409 	.byte	0
   510B FF                 2410 	.byte	-1
   510C 05                 2411 	.byte	5
   510D 00                 2412 	.byte	0
   510E FF                 2413 	.byte	-1
   510F 00                 2414 	.byte	0
   5110 05                 2415 	.byte	5
   5111 FF                 2416 	.byte	-1
   5112 FB                 2417 	.byte	-5
   5113 00                 2418 	.byte	0
   5114 01                 2419 	.byte	1
                           2420 	.area	.bss
                           2421 	.globl	_infoText
   CAE7                    2422 _infoText:	.blkb	10
                           2423 	.globl	_moveCount
   CAF1                    2424 _moveCount:	.blkb	2
                           2425 	.globl	_levelHighscore
   CAF3                    2426 _levelHighscore:	.blkb	2
                           2427 	.globl	_picAvailable
   CAF5                    2428 _picAvailable:	.blkb	1
                           2429 	.globl	_gameState
   CAF6                    2430 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      003F GR  |   2 A$bloxorz$1002     0392 GR
  2 A$bloxorz$1003     0395 GR  |   2 A$bloxorz$1004     0397 GR
  2 A$bloxorz$1005     039A GR  |   2 A$bloxorz$1006     039D GR
  2 A$bloxorz$1013     039F GR  |   2 A$bloxorz$1014     03A1 GR
  2 A$bloxorz$1015     03A3 GR  |   2 A$bloxorz$1021     03A5 GR
  2 A$bloxorz$1022     03A8 GR  |   2 A$bloxorz$1023     03A9 GR
  2 A$bloxorz$1024     03AB GR  |   2 A$bloxorz$1025     03AE GR
  2 A$bloxorz$1026     03B1 GR  |   2 A$bloxorz$1033     03B3 GR
  2 A$bloxorz$1040     03B5 GR  |   2 A$bloxorz$1041     03B7 GR
  2 A$bloxorz$1042     03B9 GR  |   2 A$bloxorz$1048     03BB GR
  2 A$bloxorz$1049     03BE GR  |   2 A$bloxorz$1050     03C0 GR
  2 A$bloxorz$1051     03C3 GR  |   2 A$bloxorz$1052     03C6 GR
  2 A$bloxorz$1059     03C8 GR  |   2 A$bloxorz$106      0041 GR
  2 A$bloxorz$1060     03CA GR  |   2 A$bloxorz$1061     03CC GR
  2 A$bloxorz$1067     03CE GR  |   2 A$bloxorz$1068     03D1 GR
  2 A$bloxorz$1069     03D2 GR  |   2 A$bloxorz$107      0043 GR
  2 A$bloxorz$1070     03D4 GR  |   2 A$bloxorz$1071     03D7 GR
  2 A$bloxorz$1072     03D9 GR  |   2 A$bloxorz$1073     03DB GR
  2 A$bloxorz$1074     03DE GR  |   2 A$bloxorz$108      0046 GR
  2 A$bloxorz$1087     03E0 GR  |   2 A$bloxorz$1088     03E3 GR
  2 A$bloxorz$109      0048 GR  |   2 A$bloxorz$1094     03E5 GR
  2 A$bloxorz$1096     03E8 GR  |   2 A$bloxorz$1097     03EA GR
  2 A$bloxorz$1100     03EB GR  |   2 A$bloxorz$1101     03ED GR
  2 A$bloxorz$1110     03EF GR  |   2 A$bloxorz$1111     03F1 GR
  2 A$bloxorz$1117     03F4 GR  |   2 A$bloxorz$1118     03F6 GR
  2 A$bloxorz$1124     03F9 GR  |   2 A$bloxorz$1125     03FB GR
  2 A$bloxorz$1131     03FE GR  |   2 A$bloxorz$1132     0401 GR
  2 A$bloxorz$1138     0403 GR  |   2 A$bloxorz$1144     0406 GR
  2 A$bloxorz$1145     0408 GR  |   2 A$bloxorz$1146     040A GR
  2 A$bloxorz$1154     040B GR  |   2 A$bloxorz$1155     040E GR
  2 A$bloxorz$116      004C GR  |   2 A$bloxorz$1161     0410 GR
  2 A$bloxorz$1162     0412 GR  |   2 A$bloxorz$1163     0414 GR
  2 A$bloxorz$1164     0417 GR  |   2 A$bloxorz$1165     0419 GR
  2 A$bloxorz$117      004E GR  |   2 A$bloxorz$1172     041B GR
  2 A$bloxorz$1174     041D GR  |   2 A$bloxorz$1177     041E GR
  2 A$bloxorz$118      0050 GR  |   2 A$bloxorz$1183     0420 GR
  2 A$bloxorz$1184     0423 GR  |   2 A$bloxorz$1185     0424 GR
  2 A$bloxorz$1186     0427 GR  |   2 A$bloxorz$1187     0428 GR
  2 A$bloxorz$119      0053 GR  |   2 A$bloxorz$1193     042B GR
  2 A$bloxorz$1194     042E GR  |   2 A$bloxorz$1195     042F GR
  2 A$bloxorz$1196     0430 GR  |   2 A$bloxorz$1197     0433 GR
  2 A$bloxorz$1198     0435 GR  |   2 A$bloxorz$1199     0436 GR
  2 A$bloxorz$1200     0439 GR  |   2 A$bloxorz$1201     043C GR
  2 A$bloxorz$1207     043F GR  |   2 A$bloxorz$1208     0443 GR
  2 A$bloxorz$1209     0445 GR  |   2 A$bloxorz$1210     0448 GR
  2 A$bloxorz$1217     044B GR  |   2 A$bloxorz$1218     044E GR
  2 A$bloxorz$1219     044F GR  |   2 A$bloxorz$1220     0451 GR
  2 A$bloxorz$1221     0452 GR  |   2 A$bloxorz$1222     0453 GR
  2 A$bloxorz$1223     0455 GR  |   2 A$bloxorz$1224     0459 GR
  2 A$bloxorz$1230     045C GR  |   2 A$bloxorz$1236     045F GR
  2 A$bloxorz$1242     0462 GR  |   2 A$bloxorz$1243     0465 GR
  2 A$bloxorz$1244     0467 GR  |   2 A$bloxorz$1250     046A GR
  2 A$bloxorz$1251     046C GR  |   2 A$bloxorz$1257     046F GR
  2 A$bloxorz$1263     0472 GR  |   2 A$bloxorz$1264     0474 GR
  2 A$bloxorz$1270     0477 GR  |   2 A$bloxorz$1271     0479 GR
  2 A$bloxorz$1277     047C GR  |   2 A$bloxorz$1278     047F GR
  2 A$bloxorz$1284     0482 GR  |   2 A$bloxorz$1285     0484 GR
  2 A$bloxorz$129      0055 GR  |   2 A$bloxorz$1291     0488 GR
  2 A$bloxorz$1292     048B GR  |   2 A$bloxorz$1298     048E GR
  2 A$bloxorz$1299     0491 GR  |   2 A$bloxorz$130      0057 GR
  2 A$bloxorz$1300     0493 GR  |   2 A$bloxorz$131      0059 GR
  2 A$bloxorz$1313     04C0 GR  |   2 A$bloxorz$1314     04C2 GR
  2 A$bloxorz$132      005B GR  |   2 A$bloxorz$1320     04C4 GR
  2 A$bloxorz$1326     04C7 GR  |   2 A$bloxorz$1327     04C9 GR
  2 A$bloxorz$133      005D GR  |   2 A$bloxorz$1330     04CB GR
  2 A$bloxorz$1331     04CD GR  |   2 A$bloxorz$1337     04D0 GR
  2 A$bloxorz$1338     04D2 GR  |   2 A$bloxorz$134      005F GR
  2 A$bloxorz$1344     04D5 GR  |   2 A$bloxorz$1345     04D7 GR
  2 A$bloxorz$1346     04D9 GR  |   2 A$bloxorz$1347     04DB GR
  2 A$bloxorz$1348     04DD GR  |   2 A$bloxorz$1349     04E0 GR
  2 A$bloxorz$135      0061 GR  |   2 A$bloxorz$1352     04E2 GR
  2 A$bloxorz$1353     04E4 GR  |   2 A$bloxorz$1354     04E6 GR
  2 A$bloxorz$1355     04E8 GR  |   2 A$bloxorz$136      0063 GR
  2 A$bloxorz$1361     04EB GR  |   2 A$bloxorz$1362     04ED GR
  2 A$bloxorz$1363     04EF GR  |   2 A$bloxorz$1364     04F1 GR
  2 A$bloxorz$1365     04F3 GR  |   2 A$bloxorz$1366     04F6 GR
  2 A$bloxorz$1369     04F8 GR  |   2 A$bloxorz$137      0064 GR
  2 A$bloxorz$1370     04FA GR  |   2 A$bloxorz$1371     04FC GR
  2 A$bloxorz$1372     04FE GR  |   2 A$bloxorz$1378     0501 GR
  2 A$bloxorz$1379     0503 GR  |   2 A$bloxorz$138      0065 GR
  2 A$bloxorz$1380     0505 GR  |   2 A$bloxorz$1381     0507 GR
  2 A$bloxorz$1382     0509 GR  |   2 A$bloxorz$1383     050C GR
  2 A$bloxorz$1386     050E GR  |   2 A$bloxorz$1387     0510 GR
  2 A$bloxorz$1388     0512 GR  |   2 A$bloxorz$1389     0514 GR
  2 A$bloxorz$139      0067 GR  |   2 A$bloxorz$1395     0517 GR
  2 A$bloxorz$1396     051A GR  |   2 A$bloxorz$1397     051C GR
  2 A$bloxorz$140      0069 GR  |   2 A$bloxorz$1403     051E GR
  2 A$bloxorz$141      006B GR  |   2 A$bloxorz$1410     0521 GR
  2 A$bloxorz$1411     0524 GR  |   2 A$bloxorz$1412     0526 GR
  2 A$bloxorz$1418     0528 GR  |   2 A$bloxorz$1419     052A GR
  2 A$bloxorz$142      006D GR  |   2 A$bloxorz$1421     052D GR
  2 A$bloxorz$1422     052F GR  |   2 A$bloxorz$1425     0531 GR
  2 A$bloxorz$143      006F GR  |   2 A$bloxorz$1431     0533 GR
  2 A$bloxorz$1437     0536 GR  |   2 A$bloxorz$1438     0539 GR
  2 A$bloxorz$1439     053A GR  |   2 A$bloxorz$1440     053C GR
  2 A$bloxorz$1446     053F GR  |   2 A$bloxorz$1447     0541 GR
  2 A$bloxorz$1453     0543 GR  |   2 A$bloxorz$1454     0544 GR
  2 A$bloxorz$1455     0546 GR  |   2 A$bloxorz$1457     0547 GR
  2 A$bloxorz$1463     054A GR  |   2 A$bloxorz$1470     054D GR
  2 A$bloxorz$1471     0550 GR  |   2 A$bloxorz$1472     0552 GR
  2 A$bloxorz$1478     0554 GR  |   2 A$bloxorz$1480     0557 GR
  2 A$bloxorz$1481     0559 GR  |   2 A$bloxorz$1489     055A GR
  2 A$bloxorz$1490     055D GR  |   2 A$bloxorz$1496     055F GR
  2 A$bloxorz$1497     0561 GR  |   2 A$bloxorz$1498     0563 GR
  2 A$bloxorz$150      0071 GR  |   2 A$bloxorz$1504     0566 GR
  2 A$bloxorz$1505     0568 GR  |   2 A$bloxorz$1506     056A GR
  2 A$bloxorz$1507     056C GR  |   2 A$bloxorz$1508     056F GR
  2 A$bloxorz$1510     0571 GR  |   2 A$bloxorz$1520     058D GR
  2 A$bloxorz$1521     058F GR  |   2 A$bloxorz$1527     0591 GR
  2 A$bloxorz$1533     0594 GR  |   2 A$bloxorz$1534     0596 GR
  2 A$bloxorz$1537     0598 GR  |   2 A$bloxorz$1538     059A GR
  2 A$bloxorz$1544     059D GR  |   2 A$bloxorz$1545     059F GR
  2 A$bloxorz$1551     05A2 GR  |   2 A$bloxorz$1552     05A4 GR
  2 A$bloxorz$1553     05A6 GR  |   2 A$bloxorz$1554     05A8 GR
  2 A$bloxorz$1555     05AA GR  |   2 A$bloxorz$1556     05AD GR
  2 A$bloxorz$1559     05AF GR  |   2 A$bloxorz$156      0073 GR
  2 A$bloxorz$1560     05B1 GR  |   2 A$bloxorz$1561     05B3 GR
  2 A$bloxorz$1562     05B5 GR  |   2 A$bloxorz$1568     05B8 GR
  2 A$bloxorz$1569     05BA GR  |   2 A$bloxorz$157      0075 GR
  2 A$bloxorz$1570     05BC GR  |   2 A$bloxorz$1571     05BE GR
  2 A$bloxorz$1572     05C0 GR  |   2 A$bloxorz$1573     05C3 GR
  2 A$bloxorz$1576     05C5 GR  |   2 A$bloxorz$1577     05C7 GR
  2 A$bloxorz$1578     05C9 GR  |   2 A$bloxorz$1579     05CB GR
  2 A$bloxorz$158      0077 GR  |   2 A$bloxorz$1585     05CE GR
  2 A$bloxorz$1586     05D0 GR  |   2 A$bloxorz$1587     05D2 GR
  2 A$bloxorz$1588     05D4 GR  |   2 A$bloxorz$1589     05D6 GR
  2 A$bloxorz$159      0079 GR  |   2 A$bloxorz$1590     05D9 GR
  2 A$bloxorz$1593     05DB GR  |   2 A$bloxorz$1594     05DD GR
  2 A$bloxorz$1595     05DF GR  |   2 A$bloxorz$1596     05E1 GR
  2 A$bloxorz$160      007B GR  |   2 A$bloxorz$1602     05E4 GR
  2 A$bloxorz$1603     05E7 GR  |   2 A$bloxorz$1604     05E9 GR
  2 A$bloxorz$161      007D GR  |   2 A$bloxorz$1610     05EB GR
  2 A$bloxorz$1617     05ED GR  |   2 A$bloxorz$1618     05EF GR
  2 A$bloxorz$1619     05F1 GR  |   2 A$bloxorz$162      0080 GR
  2 A$bloxorz$1620     05F3 GR  |   2 A$bloxorz$1621     05F6 GR
  2 A$bloxorz$1622     05F8 GR  |   2 A$bloxorz$1623     05FA GR
  2 A$bloxorz$1624     05FC GR  |   2 A$bloxorz$1625     05FE GR
  2 A$bloxorz$163      0082 GR  |   2 A$bloxorz$1631     0600 GR
  2 A$bloxorz$1638     0603 GR  |   2 A$bloxorz$1639     0606 GR
  2 A$bloxorz$164      0084 GR  |   2 A$bloxorz$1640     0608 GR
  2 A$bloxorz$1646     060A GR  |   2 A$bloxorz$1648     060D GR
  2 A$bloxorz$1649     060F GR  |   2 A$bloxorz$1652     0611 GR
  2 A$bloxorz$1658     0613 GR  |   2 A$bloxorz$166      0086 GR
  2 A$bloxorz$1664     0616 GR  |   2 A$bloxorz$1665     0619 GR
  2 A$bloxorz$1671     061C GR  |   2 A$bloxorz$1672     061F GR
  2 A$bloxorz$1673     0620 GR  |   2 A$bloxorz$1679     0623 GR
  2 A$bloxorz$1680     0625 GR  |   2 A$bloxorz$1686     0629 GR
  2 A$bloxorz$1687     062C GR  |   2 A$bloxorz$1688     062F GR
  2 A$bloxorz$1694     0631 GR  |   2 A$bloxorz$1695     0634 GR
  2 A$bloxorz$1696     0635 GR  |   2 A$bloxorz$1697     0637 GR
  2 A$bloxorz$1698     0639 GR  |   2 A$bloxorz$1699     063B GR
  2 A$bloxorz$1700     063D GR  |   2 A$bloxorz$1706     0640 GR
  2 A$bloxorz$1707     0643 GR  |   2 A$bloxorz$1708     0644 GR
  2 A$bloxorz$1709     0645 GR  |   2 A$bloxorz$1710     0647 GR
  2 A$bloxorz$1711     064A GR  |   2 A$bloxorz$1712     064C GR
  2 A$bloxorz$1713     064D GR  |   2 A$bloxorz$1714     064F GR
  2 A$bloxorz$1715     0651 GR  |   2 A$bloxorz$1716     0654 GR
  2 A$bloxorz$1723     0656 GR  |   2 A$bloxorz$1724     0659 GR
  2 A$bloxorz$1725     065A GR  |   2 A$bloxorz$173      0088 GR
  2 A$bloxorz$1731     065D GR  |   2 A$bloxorz$1732     0660 GR
  2 A$bloxorz$1733     0662 GR  |   2 A$bloxorz$174      008A GR
  2 A$bloxorz$1740     0665 GR  |   2 A$bloxorz$1742     0668 GR
  2 A$bloxorz$1743     066A GR  |   2 A$bloxorz$1746     066B GR
  2 A$bloxorz$1747     066D GR  |   2 A$bloxorz$175      008C GR
  2 A$bloxorz$1753     066F GR  |   2 A$bloxorz$1754     0671 GR
  2 A$bloxorz$176      008E GR  |   2 A$bloxorz$1760     0675 GR
  2 A$bloxorz$1761     0677 GR  |   2 A$bloxorz$1762     0679 GR
  2 A$bloxorz$1763     067B GR  |   2 A$bloxorz$1764     067E GR
  2 A$bloxorz$1765     0680 GR  |   2 A$bloxorz$177      0090 GR
  2 A$bloxorz$1773     0681 GR  |   2 A$bloxorz$1779     0684 GR
  2 A$bloxorz$178      0092 GR  |   2 A$bloxorz$1780     0685 GR
  2 A$bloxorz$1786     0688 GR  |   2 A$bloxorz$179      0094 GR
  2 A$bloxorz$1792     068B GR  |   2 A$bloxorz$1793     068E GR
  2 A$bloxorz$1794     0690 GR  |   2 A$bloxorz$180      0096 GR
  2 A$bloxorz$1800     0692 GR  |   2 A$bloxorz$1801     0693 GR
  2 A$bloxorz$1807     0696 GR  |   2 A$bloxorz$1808     0698 GR
  2 A$bloxorz$1809     069B GR  |   2 A$bloxorz$181      0098 GR
  2 A$bloxorz$1811     069E GR  |   2 A$bloxorz$1812     06A1 GR
  2 A$bloxorz$1813     06A3 GR  |   2 A$bloxorz$1819     06A5 GR
  2 A$bloxorz$182      009A GR  |   2 A$bloxorz$1820     06A7 GR
  2 A$bloxorz$1826     06AA GR  |   2 A$bloxorz$1827     06AC GR
  2 A$bloxorz$1828     06AF GR  |   2 A$bloxorz$183      009C GR
  2 A$bloxorz$1830     06B1 GR  |   2 A$bloxorz$1831     06B4 GR
  2 A$bloxorz$1832     06B6 GR  |   2 A$bloxorz$1838     06B8 GR
  2 A$bloxorz$1839     06BA GR  |   2 A$bloxorz$184      009E GR
  2 A$bloxorz$1845     06BD GR  |   2 A$bloxorz$1846     06BF GR
  2 A$bloxorz$1847     06C2 GR  |   2 A$bloxorz$1849     06C4 GR
  2 A$bloxorz$185      00A1 GR  |   2 A$bloxorz$1850     06C7 GR
  2 A$bloxorz$1851     06C9 GR  |   2 A$bloxorz$1857     06CB GR
  2 A$bloxorz$1858     06CD GR  |   2 A$bloxorz$186      00A3 GR
  2 A$bloxorz$1864     06D0 GR  |   2 A$bloxorz$1865     06D2 GR
  2 A$bloxorz$187      00A5 GR  |   2 A$bloxorz$1872     06D5 GR
  2 A$bloxorz$1873     06D8 GR  |   2 A$bloxorz$1874     06DA GR
  2 A$bloxorz$188      00A9 GR  |   2 A$bloxorz$1880     06DC GR
  2 A$bloxorz$1881     06DF GR  |   2 A$bloxorz$1887     06E2 GR
  2 A$bloxorz$1888     06E4 GR  |   2 A$bloxorz$189      00AB GR
  2 A$bloxorz$1895     06E8 GR  |   2 A$bloxorz$1901     06EB GR
  2 A$bloxorz$1902     06EE GR  |   2 A$bloxorz$1903     06F0 GR
  2 A$bloxorz$1909     06F2 GR  |   2 A$bloxorz$1910     06F5 GR
  2 A$bloxorz$1911     06F6 GR  |   2 A$bloxorz$1917     06F9 GR
  2 A$bloxorz$1918     06FC GR  |   2 A$bloxorz$1924     06FE GR
  2 A$bloxorz$1930     0701 GR  |   2 A$bloxorz$1931     0704 GR
  2 A$bloxorz$1938     0707 GR  |   2 A$bloxorz$1945     070A GR
  2 A$bloxorz$1946     070D GR  |   2 A$bloxorz$1947     070F GR
  2 A$bloxorz$1953     0711 GR  |   2 A$bloxorz$1954     0714 GR
  2 A$bloxorz$1960     0716 GR  |   2 A$bloxorz$1962     0719 GR
  2 A$bloxorz$1965     071A GR  |   2 A$bloxorz$1966     071C GR
  2 A$bloxorz$197      00AD GR  |   2 A$bloxorz$1972     071E GR
  2 A$bloxorz$1973     071F GR  |   2 A$bloxorz$1979     0722 GR
  2 A$bloxorz$198      00B0 GR  |   2 A$bloxorz$1980     0724 GR
  2 A$bloxorz$1986     0728 GR  |   2 A$bloxorz$199      00B2 GR
  2 A$bloxorz$1992     072B GR  |   2 A$bloxorz$1993     072D GR
  2 A$bloxorz$1994     072F GR  |   2 A$bloxorz$200      00B5 GR
  2 A$bloxorz$2000     0732 GR  |   2 A$bloxorz$2001     0734 GR
  2 A$bloxorz$2002     0736 GR  |   2 A$bloxorz$2008     0739 GR
  2 A$bloxorz$2009     073B GR  |   2 A$bloxorz$2010     073D GR
  2 A$bloxorz$2011     0740 GR  |   2 A$bloxorz$2012     0742 GR
  2 A$bloxorz$2013     0744 GR  |   2 A$bloxorz$2019     0746 GR
  2 A$bloxorz$2020     0748 GR  |   2 A$bloxorz$2027     074B GR
  2 A$bloxorz$2028     074E GR  |   2 A$bloxorz$2029     0751 GR
  2 A$bloxorz$2030     0754 GR  |   2 A$bloxorz$2031     0757 GR
  2 A$bloxorz$2032     075A GR  |   2 A$bloxorz$2033     075D GR
  2 A$bloxorz$2034     0760 GR  |   2 A$bloxorz$2035     0763 GR
  2 A$bloxorz$2036     0766 GR  |   2 A$bloxorz$2042     0769 GR
  2 A$bloxorz$2043     076B GR  |   2 A$bloxorz$2049     076E GR
  2 A$bloxorz$2050     0770 GR  |   2 A$bloxorz$2056     0773 GR
  2 A$bloxorz$206      00B8 GR  |   2 A$bloxorz$2062     0776 GR
  2 A$bloxorz$2068     0779 GR  |   2 A$bloxorz$207      00BB GR
  2 A$bloxorz$2074     077C GR  |   2 A$bloxorz$208      00BE GR
  2 A$bloxorz$2086     077F GR  |   2 A$bloxorz$209      00C1 GR
  2 A$bloxorz$2092     0782 GR  |   2 A$bloxorz$2093     0785 GR
  2 A$bloxorz$2094     0787 GR  |   2 A$bloxorz$2095     078B GR
  2 A$bloxorz$2096     078C GR  |   2 A$bloxorz$2097     078E GR
  2 A$bloxorz$2098     078F GR  |   2 A$bloxorz$2099     0790 GR
  2 A$bloxorz$210      00C3 GR  |   2 A$bloxorz$2100     0792 GR
  2 A$bloxorz$211      00C4 GR  |   2 A$bloxorz$2115     07A4 GR
  2 A$bloxorz$212      00C6 GR  |   2 A$bloxorz$2121     07A7 GR
  2 A$bloxorz$2127     07AA GR  |   2 A$bloxorz$213      00C9 GR
  2 A$bloxorz$2134     07AD GR  |   2 A$bloxorz$214      00CB GR
  2 A$bloxorz$2140     07B0 GR  |   2 A$bloxorz$2146     07B3 GR
  2 A$bloxorz$2153     07B6 GR  |   2 A$bloxorz$2159     07B9 GR
  2 A$bloxorz$2165     07BC GR  |   2 A$bloxorz$2172     07BF GR
  2 A$bloxorz$2178     07C2 GR  |   2 A$bloxorz$2184     07C5 GR
  2 A$bloxorz$2191     07C8 GR  |   2 A$bloxorz$2197     07CB GR
  2 A$bloxorz$2203     07CE GR  |   2 A$bloxorz$2210     07D0 GR
  2 A$bloxorz$2216     07D3 GR  |   2 A$bloxorz$222      00CC GR
  2 A$bloxorz$2222     07D6 GR  |   2 A$bloxorz$2229     07D8 GR
  2 A$bloxorz$223      00CE GR  |   2 A$bloxorz$2235     07DB GR
  2 A$bloxorz$2247     07DE GR  |   2 A$bloxorz$2248     07E1 GR
  2 A$bloxorz$2249     07E3 GR  |   2 A$bloxorz$2255     07E7 GR
  2 A$bloxorz$2261     07EA GR  |   2 A$bloxorz$2262     07ED GR
  2 A$bloxorz$2265     07EF GR  |   2 A$bloxorz$2266     07F1 GR
  2 A$bloxorz$2272     07F4 GR  |   2 A$bloxorz$2278     07F7 GR
  2 A$bloxorz$2281     07FA GR  |   2 A$bloxorz$229      00D1 GR
  2 A$bloxorz$230      00D4 GR  |   2 A$bloxorz$233      00D5 GR
  2 A$bloxorz$239      00D7 GR  |   2 A$bloxorz$240      00D9 GR
  2 A$bloxorz$243      00DB GR  |   2 A$bloxorz$244      00DD GR
  2 A$bloxorz$247      00E0 GR  |   2 A$bloxorz$250      00E2 GR
  2 A$bloxorz$253      00E4 GR  |   2 A$bloxorz$256      00E6 GR
  2 A$bloxorz$259      00E9 GR  |   2 A$bloxorz$265      00EC GR
  2 A$bloxorz$268      00EE GR  |   2 A$bloxorz$271      00F0 GR
  2 A$bloxorz$274      00F3 GR  |   2 A$bloxorz$277      00F5 GR
  2 A$bloxorz$280      00F9 GR  |   2 A$bloxorz$283      00FD GR
  2 A$bloxorz$286      00FF GR  |   2 A$bloxorz$289      0102 GR
  2 A$bloxorz$292      0104 GR  |   2 A$bloxorz$295      0108 GR
  2 A$bloxorz$298      010C GR  |   2 A$bloxorz$301      0110 GR
  2 A$bloxorz$304      0114 GR  |   2 A$bloxorz$307      0116 GR
  2 A$bloxorz$310      0119 GR  |   2 A$bloxorz$313      011B GR
  2 A$bloxorz$316      011D GR  |   2 A$bloxorz$319      011F GR
  2 A$bloxorz$322      0120 GR  |   2 A$bloxorz$325      0122 GR
  2 A$bloxorz$328      0124 GR  |   2 A$bloxorz$329      0126 GR
  2 A$bloxorz$332      0127 GR  |   2 A$bloxorz$333      0129 GR
  2 A$bloxorz$339      012B GR  |   2 A$bloxorz$34       0000 GR
  2 A$bloxorz$345      012E GR  |   2 A$bloxorz$346      0130 GR
  2 A$bloxorz$349      0132 GR  |   2 A$bloxorz$35       0002 GR
  2 A$bloxorz$350      0134 GR  |   2 A$bloxorz$356      0137 GR
  2 A$bloxorz$36       0004 GR  |   2 A$bloxorz$362      013A GR
  2 A$bloxorz$363      013C GR  |   2 A$bloxorz$364      013E GR
  2 A$bloxorz$365      0140 GR  |   2 A$bloxorz$366      0142 GR
  2 A$bloxorz$367      0144 GR  |   2 A$bloxorz$370      0146 GR
  2 A$bloxorz$371      0148 GR  |   2 A$bloxorz$372      014A GR
  2 A$bloxorz$378      014D GR  |   2 A$bloxorz$379      014F GR
  2 A$bloxorz$380      0151 GR  |   2 A$bloxorz$381      0155 GR
  2 A$bloxorz$384      0158 GR  |   2 A$bloxorz$385      015A GR
  2 A$bloxorz$391      015D GR  |   2 A$bloxorz$397      0160 GR
  2 A$bloxorz$398      0162 GR  |   2 A$bloxorz$399      0164 GR
  2 A$bloxorz$400      0166 GR  |   2 A$bloxorz$401      0168 GR
  2 A$bloxorz$402      016A GR  |   2 A$bloxorz$405      016C GR
  2 A$bloxorz$406      016E GR  |   2 A$bloxorz$407      0170 GR
  2 A$bloxorz$413      0173 GR  |   2 A$bloxorz$414      0175 GR
  2 A$bloxorz$415      0177 GR  |   2 A$bloxorz$418      017A GR
  2 A$bloxorz$419      017C GR  |   2 A$bloxorz$425      017F GR
  2 A$bloxorz$431      0182 GR  |   2 A$bloxorz$432      0184 GR
  2 A$bloxorz$433      0186 GR  |   2 A$bloxorz$434      0188 GR
  2 A$bloxorz$435      018A GR  |   2 A$bloxorz$436      018C GR
  2 A$bloxorz$439      018E GR  |   2 A$bloxorz$440      0190 GR
  2 A$bloxorz$441      0192 GR  |   2 A$bloxorz$447      0195 GR
  2 A$bloxorz$448      0197 GR  |   2 A$bloxorz$449      0199 GR
  2 A$bloxorz$452      019C GR  |   2 A$bloxorz$453      019E GR
  2 A$bloxorz$459      01A1 GR  |   2 A$bloxorz$465      01A4 GR
  2 A$bloxorz$466      01A6 GR  |   2 A$bloxorz$467      01A8 GR
  2 A$bloxorz$468      01AA GR  |   2 A$bloxorz$469      01AC GR
  2 A$bloxorz$472      01AE GR  |   2 A$bloxorz$473      01B0 GR
  2 A$bloxorz$474      01B2 GR  |   2 A$bloxorz$48       0006 GR
  2 A$bloxorz$480      01B5 GR  |   2 A$bloxorz$481      01B7 GR
  2 A$bloxorz$482      01B9 GR  |   2 A$bloxorz$485      01BC GR
  2 A$bloxorz$486      01BE GR  |   2 A$bloxorz$492      01C1 GR
  2 A$bloxorz$498      01C4 GR  |   2 A$bloxorz$499      01C6 GR
  2 A$bloxorz$500      01C8 GR  |   2 A$bloxorz$501      01CA GR
  2 A$bloxorz$502      01CC GR  |   2 A$bloxorz$503      01CE GR
  2 A$bloxorz$506      01D0 GR  |   2 A$bloxorz$507      01D2 GR
  2 A$bloxorz$508      01D4 GR  |   2 A$bloxorz$514      01D7 GR
  2 A$bloxorz$515      01D9 GR  |   2 A$bloxorz$516      01DB GR
  2 A$bloxorz$519      01DE GR  |   2 A$bloxorz$520      01E0 GR
  2 A$bloxorz$526      01E3 GR  |   2 A$bloxorz$532      01E6 GR
  2 A$bloxorz$533      01E8 GR  |   2 A$bloxorz$534      01EA GR
  2 A$bloxorz$535      01EC GR  |   2 A$bloxorz$536      01EE GR
  2 A$bloxorz$537      01F0 GR  |   2 A$bloxorz$54       0009 GR
  2 A$bloxorz$540      01F2 GR  |   2 A$bloxorz$541      01F4 GR
  2 A$bloxorz$542      01F6 GR  |   2 A$bloxorz$548      01F9 GR
  2 A$bloxorz$549      01FB GR  |   2 A$bloxorz$55       000B GR
  2 A$bloxorz$550      01FD GR  |   2 A$bloxorz$553      0200 GR
  2 A$bloxorz$554      0202 GR  |   2 A$bloxorz$557      0205 GR
  2 A$bloxorz$558      0207 GR  |   2 A$bloxorz$561      0209 GR
  2 A$bloxorz$562      020B GR  |   2 A$bloxorz$568      020D GR
  2 A$bloxorz$569      020F GR  |   2 A$bloxorz$572      0211 GR
  2 A$bloxorz$573      0213 GR  |   2 A$bloxorz$579      0216 GR
  2 A$bloxorz$58       000D GR  |   2 A$bloxorz$580      0218 GR
  2 A$bloxorz$586      021B GR  |   2 A$bloxorz$587      021D GR
  2 A$bloxorz$588      021F GR  |   2 A$bloxorz$589      0221 GR
  2 A$bloxorz$59       000F GR  |   2 A$bloxorz$590      0224 GR
  2 A$bloxorz$593      0226 GR  |   2 A$bloxorz$594      0228 GR
  2 A$bloxorz$595      022A GR  |   2 A$bloxorz$596      022C GR
  2 A$bloxorz$599      022F GR  |   2 A$bloxorz$600      0231 GR
  2 A$bloxorz$608      0233 GR  |   2 A$bloxorz$614      0236 GR
  2 A$bloxorz$615      0239 GR  |   2 A$bloxorz$621      023C GR
  2 A$bloxorz$622      023F GR  |   2 A$bloxorz$623      0240 GR
  2 A$bloxorz$629      0243 GR  |   2 A$bloxorz$630      0244 GR
  2 A$bloxorz$636      0246 GR  |   2 A$bloxorz$637      0248 GR
  2 A$bloxorz$639      024B GR  |   2 A$bloxorz$647      024C GR
  2 A$bloxorz$65       0012 GR  |   2 A$bloxorz$653      024F GR
  2 A$bloxorz$654      0252 GR  |   2 A$bloxorz$655      0255 GR
  2 A$bloxorz$656      0257 GR  |   2 A$bloxorz$657      0259 GR
  2 A$bloxorz$66       0014 GR  |   2 A$bloxorz$664      025C GR
  2 A$bloxorz$665      025F GR  |   2 A$bloxorz$673      0260 GR
  2 A$bloxorz$674      0262 GR  |   2 A$bloxorz$680      0265 GR
  2 A$bloxorz$686      0268 GR  |   2 A$bloxorz$687      026B GR
  2 A$bloxorz$693      026E GR  |   2 A$bloxorz$694      0271 GR
  2 A$bloxorz$700      0274 GR  |   2 A$bloxorz$701      0278 GR
  2 A$bloxorz$704      0279 GR  |   2 A$bloxorz$710      027B GR
  2 A$bloxorz$716      027E GR  |   2 A$bloxorz$717      027F GR
  2 A$bloxorz$72       0017 GR  |   2 A$bloxorz$723      0282 GR
  2 A$bloxorz$729      0285 GR  |   2 A$bloxorz$73       0019 GR
  2 A$bloxorz$730      0288 GR  |   2 A$bloxorz$736      028C GR
  2 A$bloxorz$737      028F GR  |   2 A$bloxorz$738      0291 GR
  2 A$bloxorz$739      0294 GR  |   2 A$bloxorz$74       001B GR
  2 A$bloxorz$740      0297 GR  |   2 A$bloxorz$746      0299 GR
  2 A$bloxorz$747      029C GR  |   2 A$bloxorz$748      029D GR
  2 A$bloxorz$749      029F GR  |   2 A$bloxorz$75       001D GR
  2 A$bloxorz$750      02A2 GR  |   2 A$bloxorz$751      02A4 GR
  2 A$bloxorz$752      02A6 GR  |   2 A$bloxorz$753      02A9 GR
  2 A$bloxorz$759      02AB GR  |   2 A$bloxorz$76       001F GR
  2 A$bloxorz$760      02AE GR  |   2 A$bloxorz$761      02AF GR
  2 A$bloxorz$762      02B1 GR  |   2 A$bloxorz$763      02B4 GR
  2 A$bloxorz$764      02B7 GR  |   2 A$bloxorz$770      02B9 GR
  2 A$bloxorz$771      02BC GR  |   2 A$bloxorz$772      02BE GR
  2 A$bloxorz$773      02C1 GR  |   2 A$bloxorz$774      02C4 GR
  2 A$bloxorz$780      02C6 GR  |   2 A$bloxorz$781      02C9 GR
  2 A$bloxorz$782      02CA GR  |   2 A$bloxorz$783      02CC GR
  2 A$bloxorz$784      02CF GR  |   2 A$bloxorz$785      02D1 GR
  2 A$bloxorz$786      02D3 GR  |   2 A$bloxorz$787      02D6 GR
  2 A$bloxorz$79       0022 GR  |   2 A$bloxorz$793      02D8 GR
  2 A$bloxorz$794      02DB GR  |   2 A$bloxorz$795      02DC GR
  2 A$bloxorz$796      02DE GR  |   2 A$bloxorz$797      02E1 GR
  2 A$bloxorz$798      02E4 GR  |   2 A$bloxorz$80       0024 GR
  2 A$bloxorz$804      02E6 GR  |   2 A$bloxorz$805      02E8 GR
  2 A$bloxorz$806      02EB GR  |   2 A$bloxorz$807      02ED GR
  2 A$bloxorz$808      02EF GR  |   2 A$bloxorz$809      02F1 GR
  2 A$bloxorz$81       0026 GR  |   2 A$bloxorz$810      02F3 GR
  2 A$bloxorz$811      02F7 GR  |   2 A$bloxorz$818      02F9 GR
  2 A$bloxorz$819      02FB GR  |   2 A$bloxorz$82       0028 GR
  2 A$bloxorz$820      02FD GR  |   2 A$bloxorz$821      02FF GR
  2 A$bloxorz$822      0301 GR  |   2 A$bloxorz$829      0303 GR
  2 A$bloxorz$836      0306 GR  |   2 A$bloxorz$843      0308 GR
  2 A$bloxorz$844      030A GR  |   2 A$bloxorz$845      030C GR
  2 A$bloxorz$846      030E GR  |   2 A$bloxorz$85       002B GR
  2 A$bloxorz$853      0310 GR  |   2 A$bloxorz$860      0313 GR
  2 A$bloxorz$867      0315 GR  |   2 A$bloxorz$868      0317 GR
  2 A$bloxorz$869      0319 GR  |   2 A$bloxorz$870      031B GR
  2 A$bloxorz$877      031D GR  |   2 A$bloxorz$88       002E GR
  2 A$bloxorz$89       0030 GR  |   2 A$bloxorz$890      0320 GR
  2 A$bloxorz$891      0323 GR  |   2 A$bloxorz$892      0325 GR
  2 A$bloxorz$893      0328 GR  |   2 A$bloxorz$894      032B GR
  2 A$bloxorz$895      032D GR  |   2 A$bloxorz$896      0330 GR
  2 A$bloxorz$897      0333 GR  |   2 A$bloxorz$898      0335 GR
  2 A$bloxorz$899      0338 GR  |   2 A$bloxorz$905      033A GR
  2 A$bloxorz$911      033D GR  |   2 A$bloxorz$912      033F GR
  2 A$bloxorz$918      0342 GR  |   2 A$bloxorz$919      0345 GR
  2 A$bloxorz$925      0348 GR  |   2 A$bloxorz$926      034A GR
  2 A$bloxorz$927      034E GR  |   2 A$bloxorz$934      0350 GR
  2 A$bloxorz$935      0353 GR  |   2 A$bloxorz$936      0355 GR
  2 A$bloxorz$942      0357 GR  |   2 A$bloxorz$943      0359 GR
  2 A$bloxorz$95       0032 GR  |   2 A$bloxorz$950      035C GR
  2 A$bloxorz$951      035F GR  |   2 A$bloxorz$952      0361 GR
  2 A$bloxorz$953      0363 GR  |   2 A$bloxorz$954      0365 GR
  2 A$bloxorz$955      0367 GR  |   2 A$bloxorz$956      036B GR
  2 A$bloxorz$96       0035 GR  |   2 A$bloxorz$963      036E GR
  2 A$bloxorz$964      0370 GR  |   2 A$bloxorz$965      0372 GR
  2 A$bloxorz$966      0374 GR  |   2 A$bloxorz$967      0376 GR
  2 A$bloxorz$968      0378 GR  |   2 A$bloxorz$969      037A GR
  2 A$bloxorz$97       0037 GR  |   2 A$bloxorz$976      037C GR
  2 A$bloxorz$977      037F GR  |   2 A$bloxorz$978      0381 GR
  2 A$bloxorz$979      0384 GR  |   2 A$bloxorz$98       003A GR
  2 A$bloxorz$980      0387 GR  |   2 A$bloxorz$987      0389 GR
  2 A$bloxorz$99       003C GR  |   2 A$bloxorz$994      038C GR
  2 A$bloxorz$995      038E GR  |   2 A$bloxorz$996      0390 GR
  2 L101               074B R   |   2 L102               07DE R
  2 L103               07A4 R   |   2 L104               07AD R
  2 L105               07B6 R   |   2 L106               07BF R
  2 L107               07C8 R   |   2 L108               07D0 R
  2 L109               07D8 R   |   2 L110               0796 R
  2 L113               077F R   |   2 L2                 0006 R
  2 L24                024B R   |   2 L26                025C R
  2 L32                0320 R   |   2 L33                02F9 R
  2 L34                0308 R   |   2 L36                0303 R
  2 L37                0306 R   |   2 L38                0310 R
  2 L39                0313 R   |   2 L40                031D R
  2 L41                0320 R   |   2 L42                0350 R
  2 L43                035C R   |   2 L44                03E0 R
  2 L45                036E R   |   2 L46                038C R
  2 L48                037C R   |   2 L49                0389 R
  2 L5                 004C R   |   2 L50                039F R
  2 L51                03B3 R   |   2 L52                03C8 R
  2 L53                03E0 R   |   2 L54                03E8 R
  2 L55                0315 R   |   2 L56                03B5 R
  2 L6                 0086 R   |   2 L60                041B R
  2 L61                041D R   |   2 L64                044B R
  2 L67                0521 R   |   2 L69                052D R
  2 L7                 0088 R   |   2 L71                054D R
  2 L73                0557 R   |   2 L76                0571 R
  2 L78                0603 R   |   2 L79                05ED R
  2 L8                 0071 R   |   2 L81                060D R
  2 L85                0656 R   |   2 L86                0665 R
  2 L87                0668 R   |   2 L9                 0055 R
  2 L91                069E R   |   2 L92                06D5 R
  2 L93                06B1 R   |   2 L94                06C4 R
  2 L95                06E8 R   |   2 L96                070A R
  2 L97                0707 R   |   2 L99                0719 R
  2 LC0                0494 R   |   2 LC1                049F R
  2 LC2                04AD R   |   2 LC3                0572 R
  2 LC4                0580 R   |   2 LC5                0587 R
    _Vec_Buttons       **** GX  |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp        **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d        **** GX
    ___Print_Str_d     **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
    _blockAnimatin     **** GX  |   2 _blockFalling      0531 GR
  2 _blockMoving       0279 GR  |   2 _blockMovingAt     0611 GR
  2 _blockMovingTo     0233 GR  |     _blockOrientat     **** GX
    _blockStartLev     **** GX  |   2 _blockWaiting      0681 GR
    _blockX            **** GX  |     _blockY            **** GX
    _blockYOfs         **** GX  |   2 _changeMusic       00CC GR
  2 _clearMenu         058D GR  |   3 _currentMusic      0000 GR
    _delay10ms         **** GX  |     _doBlockAnimat     **** GX
    _dp_VIA_t1_cnt     **** GX  |     _drawBlock         **** GX
  2 _drawField         00D5 GR  |     _endX              **** GX
    _endY              **** GX  |   2 _fallingMusic      0837 GR
  4 _gameState         000F GR  |     _getField          **** GX
  4 _infoText          0000 GR  |     _initLevel         **** GX
    _initSwatches      **** GX  |     _isField           **** GX
  2 _itoa              002E GR  |     _lastBlockDire     **** GX
  2 _led8              085F GR  |     _level             **** GX
    _levelCount        **** GX  |   2 _levelEndMusic     081D GR
  4 _levelHighscor     000C GR  |     _levelNumber       **** GX
    _levelOffset       **** GX  |     _levels            **** GX
    _lineCount         **** GX  |     _lineX0            **** GX
    _lineX1            **** GX  |     _lineY0            **** GX
    _lineY1            **** GX  |   2 _main              071A GR
  2 _mainMenu          04C0 GR  |   2 _moveBlock         024C GR
    _moveBlockImpl     **** GX  |   4 _moveCount         000A GR
  2 _movingMusic       0857 GR  |     _musicInit         **** GX
    _musicPlay         **** GX  |     _nextBank          **** GX
  4 _picAvailable      000E GR  |     _picRead           **** GX
    _picWrite          **** GX  |   2 _readEeprom        040B GR
  2 _runtimeError      0000 GR  |   2 _sendCommand       03EB GR
  2 _setBank           066B GR  |   2 _showInfo          0209 GR
  2 _showInfo2         0127 GR  |     _splitMode         **** GX
  2 _startBlockFal     0260 GR  |   2 _startLevel        041E GR
  2 _startMusic        07FD GR  |     _swapSplit         **** GX
    _swatchSwitch      **** GX  |     _testMerge         **** GX
  2 _updateInfoTex     00AD GR  |   3 _vecx              0002 GR
  2 _writeEeprom       055A GR  |   2 drawFieldLoop      00EC R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  875   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

