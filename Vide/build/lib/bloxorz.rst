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
                             11 ;  -fno-time-report -I/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include
                             12 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             13 ;  -I/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/include
                             14 ;  /home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c
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
   2874                      34 _runtimeError:
   2874 34 60         [ 7]   35 	pshs	y,u	; 
   2876 32 7C         [ 5]   36 	leas	-4,s	; ,,
   2878 31 84         [ 4]   37 	leay	,x	;  msg, msg
                             38 ;----- asm -----
                             39 ;  200 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             40 	; #ENR#[195]	while (1) {
                             41 ;  0 "" 2
                             42 ;--- end asm ---
   287A                      43 L2:
                             44 ;----- asm -----
                             45 ;  202 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             46 	; #ENR#[196]		frwait();
                             47 ;  0 "" 2
                             48 ;  97 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   287A BD F1 92      [ 8]   49 	jsr ___Wait_Recal; BIOS call
                             50 ;  0 "" 2
                             51 ;  204 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             52 	; #ENR#[197]         Intensity_a(0x5f);
                             53 ;  0 "" 2
                             54 ;--- end asm ---
   287D C6 5F         [ 2]   55 	ldb	#95	; ,
   287F E7 63         [ 5]   56 	stb	3,s	; , a
                             57 ;----- asm -----
                             58 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2881 A6 63         [ 5]   59 	lda 3,s	;  a
   2883 BD F2 AB      [ 8]   60 	jsr ___Intensity_a; BIOS call
                             61 ;  0 "" 2
                             62 ;  206 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             63 	; #ENR#[198]         Vec_Text_Width = 90;
                             64 ;  0 "" 2
                             65 ;--- end asm ---
   2886 C6 5A         [ 2]   66 	ldb	#90	; ,
   2888 F7 C8 2B      [ 5]   67 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             68 ;----- asm -----
                             69 ;  208 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             70 	; #ENR#[199]         Print_Str_d(-10, -110, msg);
                             71 ;  0 "" 2
                             72 ;--- end asm ---
   288B C6 F6         [ 2]   73 	ldb	#-10	; ,
   288D E7 63         [ 5]   74 	stb	3,s	; , a
   288F C6 92         [ 2]   75 	ldb	#-110	; ,
   2891 E7 62         [ 5]   76 	stb	2,s	; , b
   2893 10 AF E4      [ 6]   77 	sty	,s	;  msg, u
                             78 ;----- asm -----
                             79 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2896 A6 63         [ 5]   80 	lda 3,s	;  a
   2898 E6 62         [ 5]   81 	ldb 2,s	;  b
   289A EE E4         [ 5]   82 	ldu ,s	;  u
   289C BD F3 7A      [ 8]   83 	jsr ___Print_Str_d; BIOS call
                             84 ;  0 "" 2
                             85 ;--- end asm ---
   289F 7E 28 7A      [ 4]   86 	jmp	L2	; 
                             87 	.globl _itoa
   28A2                      88 _itoa:
   28A2 34 60         [ 7]   89 	pshs	y,u	; 
   28A4 32 71         [ 5]   90 	leas	-15,s	; ,,
                             91 ;----- asm -----
                             92 ;  258 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             93 	; #ENR#[235]	uint16_t muls[] = { 100, 10, 1 };
                             94 ;  0 "" 2
                             95 ;--- end asm ---
   28A6 CC 00 64      [ 3]   96 	ldd	#100	; ,
   28A9 ED 69         [ 6]   97 	std	9,s	; , muls
   28AB CC 00 0A      [ 3]   98 	ldd	#10	; ,
   28AE ED 6B         [ 6]   99 	std	11,s	; , muls
   28B0 CC 00 01      [ 3]  100 	ldd	#1	; ,
   28B3 ED 6D         [ 6]  101 	std	13,s	; , muls
                            102 ;----- asm -----
                            103 ;  260 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            104 	; #ENR#[236]	if (number > 999) number = 999;
                            105 ;  0 "" 2
                            106 ;--- end asm ---
   28B5 31 84         [ 4]  107 	leay	,x	;  number.113, number
   28B7 8C 03 E7      [ 4]  108 	cmpx	#999	;cmphi:	;  number.113,
   28BA 23 04         [ 3]  109 	bls	L5	; 
   28BC 10 8E 03 E7   [ 4]  110 	ldy	#999	;  number.113,
   28C0                     111 L5:
                            112 ;----- asm -----
                            113 ;  262 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            114 	; #ENR#[237]	for (uint8_t i = 0; i < 3; i++) {
                            115 ;  0 "" 2
                            116 ;--- end asm ---
   28C0 30 69         [ 5]  117 	leax	9,s	; ,,
   28C2 AF 65         [ 6]  118 	stx	5,s	; , ivtmp.109
   28C4 EC E8 15      [ 6]  119 	ldd	21,s	; , text
   28C7 ED 67         [ 6]  120 	std	7,s	; , ivtmp.111
   28C9                     121 L9:
                            122 ;----- asm -----
                            123 ;  264 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            124 	; #ENR#[238]		uint8_t d = 0;
                            125 ;  0 "" 2
                            126 ;  266 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            127 	; #ENR#[239]		while (number >= muls[i]) {
                            128 ;  0 "" 2
                            129 ;--- end asm ---
   28C9 AE 65         [ 6]  130 	ldx	5,s	; , ivtmp.109
   28CB AE 84         [ 5]  131 	ldx	,x	; , muls
   28CD AF E4         [ 5]  132 	stx	,s	; , D.2431
   28CF 34 20         [ 6]  133 	pshs	y	;cmphi: R:y with R:x	;  number.113,
   28D1 AC E1         [ 9]  134 	cmpx	,s++	;cmphi:	; 
   28D3 22 25         [ 3]  135 	bhi	L6	; 
   28D5 1F 10         [ 6]  136 	tfr	x,d	; ,
   28D7 40            [ 2]  137 	nega
   28D8 50            [ 2]  138 	negb
   28D9 82 00         [ 2]  139 	sbca	#0
   28DB ED 63         [ 6]  140 	std	3,s	; , ivtmp.101
   28DD 1F 20         [ 6]  141 	tfr	y,d	;  number.113,
   28DF A3 E4         [ 6]  142 	subd	,s	;subhi: R:d -= ,s	; , D.2431
   28E1 1F 02         [ 6]  143 	tfr	d,y	; , number.113
   28E3 6F 62         [ 7]  144 	clr	2,s	;  d
   28E5                     145 L8:
                            146 ;----- asm -----
                            147 ;  268 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            148 	; #ENR#[240]			d++;
                            149 ;  0 "" 2
                            150 ;--- end asm ---
   28E5 6C 62         [ 7]  151 	inc	2,s	;  d
                            152 ;----- asm -----
                            153 ;  270 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            154 	; #ENR#[241]			number -= muls[i];
                            155 ;  0 "" 2
                            156 ;--- end asm ---
   28E7 EC 63         [ 6]  157 	ldd	3,s	; , ivtmp.101
   28E9 33 AB         [ 8]  158 	leau	d,y	;  number.112,, number.113
   28EB EC E4         [ 5]  159 	ldd	,s	; , D.2431
   28ED 30 CB         [ 8]  160 	leax	d,u	;  tmp85,, number.112
   28EF 34 10         [ 6]  161 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   28F1 10 A3 E1      [10]  162 	cmpd	,s++	;cmphi:	; 
   28F4 22 06         [ 3]  163 	bhi	L7	; 
   28F6 31 C4         [ 4]  164 	leay	,u	;  number.113, number.112
   28F8 20 EB         [ 3]  165 	bra	L8	; 
   28FA                     166 L6:
   28FA 6F 62         [ 7]  167 	clr	2,s	;  d
   28FC                     168 L7:
                            169 ;----- asm -----
                            170 ;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            171 	; #ENR#[243]		text[i] = d + '0';
                            172 ;  0 "" 2
                            173 ;--- end asm ---
   28FC E6 62         [ 5]  174 	ldb	2,s	; , d
   28FE CB 30         [ 2]  175 	addb	#48	; ,
   2900 AE 67         [ 6]  176 	ldx	7,s	; , ivtmp.111
   2902 30 01         [ 5]  177 	leax	1,x	; ,,
   2904 AF 67         [ 6]  178 	stx	7,s	; , ivtmp.111
   2906 30 1F         [ 5]  179 	leax	-1,x	; ,,
   2908 E7 80         [ 6]  180 	stb	,x+	; ,
   290A AE 65         [ 6]  181 	ldx	5,s	; , ivtmp.109
   290C 30 02         [ 5]  182 	leax	2,x	; ,,
   290E AF 65         [ 6]  183 	stx	5,s	; , ivtmp.109
   2910 1F 40         [ 6]  184 	tfr	s,d	; ,
   2912 C3 00 0F      [ 4]  185 	addd	#15	; ,
   2915 34 06         [ 7]  186 	pshs	d	;cmphi: R:d with R:x	; ,
   2917 AC E1         [ 9]  187 	cmpx	,s++	;cmphi:	; 
   2919 10 26 FF AC   [ 6]  188 	lbne	L9	; 
   291D 32 6F         [ 5]  189 	leas	15,s	; ,,
   291F 35 E0         [ 8]  190 	puls	y,u,pc	; 
                            191 	.globl _updateInfoText
   2921                     192 _updateInfoText:
                            193 ;----- asm -----
                            194 ;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            195 	; #ENR#[249]	itoa(moveCount, &infoText[0]);
                            196 ;  0 "" 2
                            197 ;--- end asm ---
   2921 8E CA 80      [ 3]  198 	ldx	#_infoText	; ,
   2924 AF E3         [ 8]  199 	stx	,--s	; ,
   2926 BE CA 8A      [ 6]  200 	ldx	_moveCount	; , moveCount
   2929 BD 28 A2      [ 8]  201 	jsr	_itoa	; 
                            202 ;----- asm -----
                            203 ;  283 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            204 	; #ENR#[251]	itoa(levelNumber + 1, &infoText[6]);
                            205 ;  0 "" 2
                            206 ;--- end asm ---
   292C F6 C8 83      [ 5]  207 	ldb	_levelNumber	;  tmp28, levelNumber
   292F 5C            [ 2]  208 	incb	;  tmp28
   2930 8E CA 86      [ 3]  209 	ldx	#_infoText+6	; ,
   2933 AF E3         [ 8]  210 	stx	,--s	; ,
   2935 4F            [ 2]  211 	clra		;zero_extendqihi: R:b -> R:d	;  tmp28,
   2936 1F 01         [ 6]  212 	tfr	d,x	; ,
   2938 BD 28 A2      [ 8]  213 	jsr	_itoa	; 
   293B 32 64         [ 5]  214 	leas	4,s	; ,,
   293D 39            [ 5]  215 	rts
                            216 	.globl _changeMusic
   293E                     217 _changeMusic:
                            218 ;----- asm -----
                            219 ;  289 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            220 	; #ENR#[256]	tstat = 1;
                            221 ;  0 "" 2
                            222 ;--- end asm ---
   293E C6 01         [ 2]  223 	ldb	#1	; ,
   2940 F7 C8 56      [ 5]  224 	stb	-14250	; ,
                            225 ;----- asm -----
                            226 ;  291 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            227 	; #ENR#[257]	currentMusic = music;
                            228 ;  0 "" 2
                            229 ;--- end asm ---
   2943 BF C8 84      [ 6]  230 	stx	_currentMusic	;  music, currentMusic
   2946 39            [ 5]  231 	rts
                            232 	.globl _moveBlock
   2947                     233 _moveBlock:
   2947 32 7F         [ 5]  234 	leas	-1,s	; ,,
   2949 E7 E4         [ 4]  235 	stb	,s	;  move, move
                            236 ;----- asm -----
                            237 ;  297 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            238 	; #ENR#[262]	blockAnimating = 1;
                            239 ;  0 "" 2
                            240 ;--- end asm ---
   294B C6 01         [ 2]  241 	ldb	#1	; ,
   294D F7 CA 97      [ 5]  242 	stb	_blockAnimating	; , blockAnimating
                            243 ;----- asm -----
                            244 ;  299 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            245 	; #ENR#[263]	lastBlockDirection = move;
                            246 ;  0 "" 2
                            247 ;--- end asm ---
   2950 E6 E4         [ 4]  248 	ldb	,s	; , move
   2952 F7 CA 9A      [ 5]  249 	stb	_lastBlockDirection	; , lastBlockDirection
                            250 ;----- asm -----
                            251 ;  301 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            252 	; #ENR#[264]	switch (blockOrientation) {
                            253 ;  0 "" 2
                            254 ;--- end asm ---
   2955 F6 CA 8F      [ 5]  255 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   2958 C1 01         [ 2]  256 	cmpb	#1	;cmpqi:	;  blockOrientation,
   295A 10 27 00 A7   [ 6]  257 	lbeq	L19	; 
   295E 25 09         [ 3]  258 	blo	L18	; 
   2960 C1 02         [ 2]  259 	cmpb	#2	;cmpqi:	;  blockOrientation,
   2962 10 26 01 B0   [ 6]  260 	lbne	L17	; 
   2966 7E 2A 8F      [ 4]  261 	jmp	L38	; 
   2969                     262 L18:
                            263 ;----- asm -----
                            264 ;  305 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            265 	; #ENR#[266]        		switch (move) {
                            266 ;  0 "" 2
                            267 ;--- end asm ---
   2969 E6 E4         [ 4]  268 	ldb	,s	; , move
   296B C1 01         [ 2]  269 	cmpb	#1	;cmpqi:	; ,
   296D 10 27 00 52   [ 6]  270 	lbeq	L23	; 
   2971 25 0D         [ 3]  271 	blo	L22	; 
   2973 C1 02         [ 2]  272 	cmpb	#2	;cmpqi:	; ,
   2975 27 2B         [ 3]  273 	beq	L24	; 
   2977 C1 03         [ 2]  274 	cmpb	#3	;cmpqi:	; ,
   2979 10 26 00 85   [ 6]  275 	lbne	L21	; 
   297D 7E 29 E3      [ 4]  276 	jmp	L39	; 
   2980                     277 L22:
                            278 ;----- asm -----
                            279 ;  309 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            280 	; #ENR#[268]            			blockAnimation = height2FallingLeft;
                            281 ;  0 "" 2
                            282 ;--- end asm ---
   2980 8E 51 D9      [ 3]  283 	ldx	#_height2FallingLeft	; ,
   2983 BF CA 92      [ 6]  284 	stx	_blockAnimation	; , blockAnimation
                            285 ;----- asm -----
                            286 ;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            287 	; #ENR#[269]             			nextBlockAnimation = width2RollingFront;
                            288 ;  0 "" 2
                            289 ;--- end asm ---
   2986 8E 52 C9      [ 3]  290 	ldx	#_width2RollingFront	; ,
   2989 BF CA 94      [ 6]  291 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            292 ;----- asm -----
                            293 ;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            294 	; #ENR#[270]             			nextBlockX = blockX - 2;
                            295 ;  0 "" 2
                            296 ;--- end asm ---
   298C F6 CA 90      [ 5]  297 	ldb	_blockX	; , blockX
   298F CB FE         [ 2]  298 	addb	#-2	; ,
   2991 F7 CA 98      [ 5]  299 	stb	_nextBlockX	; , nextBlockX
                            300 ;----- asm -----
                            301 ;  315 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            302 	; #ENR#[271]             			nextBlockY = blockY;
                            303 ;  0 "" 2
                            304 ;--- end asm ---
   2994 F6 CA 91      [ 5]  305 	ldb	_blockY	; , blockY
   2997 F7 CA 99      [ 5]  306 	stb	_nextBlockY	; , nextBlockY
                            307 ;----- asm -----
                            308 ;  317 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            309 	; #ENR#[272]             			blockOrientation = Horizontal;
                            310 ;  0 "" 2
                            311 ;--- end asm ---
   299A C6 02         [ 2]  312 	ldb	#2	; ,
   299C F7 CA 8F      [ 5]  313 	stb	_blockOrientation	; , blockOrientation
                            314 ;----- asm -----
                            315 ;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            316 	; #ENR#[273]             			break;
                            317 ;  0 "" 2
                            318 ;--- end asm ---
   299F 7E 2A 02      [ 4]  319 	jmp	L21	; 
   29A2                     320 L24:
                            321 ;----- asm -----
                            322 ;  323 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            323 	; #ENR#[275]             			blockAnimation = height2FallingRight;
                            324 ;  0 "" 2
                            325 ;--- end asm ---
   29A2 8E 52 09      [ 3]  326 	ldx	#_height2FallingRight	; ,
   29A5 BF CA 92      [ 6]  327 	stx	_blockAnimation	; , blockAnimation
                            328 ;----- asm -----
                            329 ;  325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            330 	; #ENR#[276]             			nextBlockAnimation = width2RollingFront;
                            331 ;  0 "" 2
                            332 ;--- end asm ---
   29A8 8E 52 C9      [ 3]  333 	ldx	#_width2RollingFront	; ,
   29AB BF CA 94      [ 6]  334 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            335 ;----- asm -----
                            336 ;  327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            337 	; #ENR#[277]             			nextBlockX = blockX + 1;
                            338 ;  0 "" 2
                            339 ;--- end asm ---
   29AE F6 CA 90      [ 5]  340 	ldb	_blockX	; , blockX
   29B1 5C            [ 2]  341 	incb	; 
   29B2 F7 CA 98      [ 5]  342 	stb	_nextBlockX	; , nextBlockX
                            343 ;----- asm -----
                            344 ;  329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            345 	; #ENR#[278]             			nextBlockY = blockY;
                            346 ;  0 "" 2
                            347 ;--- end asm ---
   29B5 F6 CA 91      [ 5]  348 	ldb	_blockY	; , blockY
   29B8 F7 CA 99      [ 5]  349 	stb	_nextBlockY	; , nextBlockY
                            350 ;----- asm -----
                            351 ;  331 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            352 	; #ENR#[279]             			blockOrientation = Horizontal;
                            353 ;  0 "" 2
                            354 ;--- end asm ---
   29BB C6 02         [ 2]  355 	ldb	#2	; ,
   29BD F7 CA 8F      [ 5]  356 	stb	_blockOrientation	; , blockOrientation
                            357 ;----- asm -----
                            358 ;  333 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            359 	; #ENR#[280]             			break;
                            360 ;  0 "" 2
                            361 ;--- end asm ---
   29C0 7E 2A 02      [ 4]  362 	jmp	L21	; 
   29C3                     363 L23:
                            364 ;----- asm -----
                            365 ;  337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            366 	; #ENR#[282]             			blockAnimation = height2FallingBack;
                            367 ;  0 "" 2
                            368 ;--- end asm ---
   29C3 8E 52 39      [ 3]  369 	ldx	#_height2FallingBack	; ,
   29C6 BF CA 92      [ 6]  370 	stx	_blockAnimation	; , blockAnimation
                            371 ;----- asm -----
                            372 ;  339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            373 	; #ENR#[283]             			nextBlockAnimation = depth2RollingLeft;
                            374 ;  0 "" 2
                            375 ;--- end asm ---
   29C9 8E 52 99      [ 3]  376 	ldx	#_depth2RollingLeft	; ,
   29CC BF CA 94      [ 6]  377 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            378 ;----- asm -----
                            379 ;  341 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            380 	; #ENR#[284]             			nextBlockX = blockX;
                            381 ;  0 "" 2
                            382 ;--- end asm ---
   29CF F6 CA 90      [ 5]  383 	ldb	_blockX	; , blockX
   29D2 F7 CA 98      [ 5]  384 	stb	_nextBlockX	; , nextBlockX
                            385 ;----- asm -----
                            386 ;  343 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            387 	; #ENR#[285]             			nextBlockY = blockY + 1;
                            388 ;  0 "" 2
                            389 ;--- end asm ---
   29D5 F6 CA 91      [ 5]  390 	ldb	_blockY	; , blockY
   29D8 5C            [ 2]  391 	incb	; 
   29D9 F7 CA 99      [ 5]  392 	stb	_nextBlockY	; , nextBlockY
                            393 ;----- asm -----
                            394 ;  345 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            395 	; #ENR#[286]             			blockOrientation = Vertical;
                            396 ;  0 "" 2
                            397 ;--- end asm ---
   29DC C6 01         [ 2]  398 	ldb	#1	; ,
   29DE F7 CA 8F      [ 5]  399 	stb	_blockOrientation	; , blockOrientation
                            400 ;----- asm -----
                            401 ;  347 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            402 	; #ENR#[287]             			break;
                            403 ;  0 "" 2
                            404 ;--- end asm ---
   29E1 20 1F         [ 3]  405 	bra	L21	; 
   29E3                     406 L39:
                            407 ;----- asm -----
                            408 ;  351 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            409 	; #ENR#[289]             			blockAnimation = height2FallingFront;
                            410 ;  0 "" 2
                            411 ;--- end asm ---
   29E3 8E 52 69      [ 3]  412 	ldx	#_height2FallingFront	; ,
   29E6 BF CA 92      [ 6]  413 	stx	_blockAnimation	; , blockAnimation
                            414 ;----- asm -----
                            415 ;  353 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            416 	; #ENR#[290]             			nextBlockAnimation = depth2RollingLeft;
                            417 ;  0 "" 2
                            418 ;--- end asm ---
   29E9 8E 52 99      [ 3]  419 	ldx	#_depth2RollingLeft	; ,
   29EC BF CA 94      [ 6]  420 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            421 ;----- asm -----
                            422 ;  355 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            423 	; #ENR#[291]             			nextBlockX = blockX;
                            424 ;  0 "" 2
                            425 ;--- end asm ---
   29EF F6 CA 90      [ 5]  426 	ldb	_blockX	; , blockX
   29F2 F7 CA 98      [ 5]  427 	stb	_nextBlockX	; , nextBlockX
                            428 ;----- asm -----
                            429 ;  357 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            430 	; #ENR#[292]             			nextBlockY = blockY - 2;
                            431 ;  0 "" 2
                            432 ;--- end asm ---
   29F5 F6 CA 91      [ 5]  433 	ldb	_blockY	; , blockY
   29F8 CB FE         [ 2]  434 	addb	#-2	; ,
   29FA F7 CA 99      [ 5]  435 	stb	_nextBlockY	; , nextBlockY
                            436 ;----- asm -----
                            437 ;  359 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            438 	; #ENR#[293]             			blockOrientation = Vertical;
                            439 ;  0 "" 2
                            440 ;--- end asm ---
   29FD C6 01         [ 2]  441 	ldb	#1	; ,
   29FF F7 CA 8F      [ 5]  442 	stb	_blockOrientation	; , blockOrientation
                            443 ;----- asm -----
                            444 ;  361 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            445 	; #ENR#[294]             			break;
                            446 ;  0 "" 2
                            447 ;--- end asm ---
   2A02                     448 L21:
                            449 ;----- asm -----
                            450 ;  364 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            451 	; #ENR#[296]        		break;
                            452 ;  0 "" 2
                            453 ;--- end asm ---
   2A02 7E 2B 16      [ 4]  454 	jmp	L17	; 
   2A05                     455 L19:
                            456 ;----- asm -----
                            457 ;  368 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            458 	; #ENR#[298]        		switch (move) {
                            459 ;  0 "" 2
                            460 ;--- end asm ---
   2A05 E6 E4         [ 4]  461 	ldb	,s	; , move
   2A07 C1 01         [ 2]  462 	cmpb	#1	;cmpqi:	; ,
   2A09 10 27 00 44   [ 6]  463 	lbeq	L28	; 
   2A0D 25 0D         [ 3]  464 	blo	L27	; 
   2A0F C1 02         [ 2]  465 	cmpb	#2	;cmpqi:	; ,
   2A11 27 22         [ 3]  466 	beq	L29	; 
   2A13 C1 03         [ 2]  467 	cmpb	#3	;cmpqi:	; ,
   2A15 10 26 00 73   [ 6]  468 	lbne	L26	; 
   2A19 7E 2A 70      [ 4]  469 	jmp	L40	; 
   2A1C                     470 L27:
                            471 ;----- asm -----
                            472 ;  372 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            473 	; #ENR#[300]            			blockAnimation = depth2RollingLeft;
                            474 ;  0 "" 2
                            475 ;--- end asm ---
   2A1C 8E 52 99      [ 3]  476 	ldx	#_depth2RollingLeft	;  tmp38,
   2A1F BF CA 92      [ 6]  477 	stx	_blockAnimation	;  tmp38, blockAnimation
                            478 ;----- asm -----
                            479 ;  374 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            480 	; #ENR#[301]            			nextBlockAnimation = depth2RollingLeft;
                            481 ;  0 "" 2
                            482 ;--- end asm ---
   2A22 BF CA 94      [ 6]  483 	stx	_nextBlockAnimation	;  tmp38, nextBlockAnimation
                            484 ;----- asm -----
                            485 ;  376 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            486 	; #ENR#[302]            			nextBlockX = blockX - 1;
                            487 ;  0 "" 2
                            488 ;--- end asm ---
   2A25 F6 CA 90      [ 5]  489 	ldb	_blockX	; , blockX
   2A28 5A            [ 2]  490 	decb	; 
   2A29 F7 CA 98      [ 5]  491 	stb	_nextBlockX	; , nextBlockX
                            492 ;----- asm -----
                            493 ;  378 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            494 	; #ENR#[303]            			nextBlockY = blockY;
                            495 ;  0 "" 2
                            496 ;--- end asm ---
   2A2C F6 CA 91      [ 5]  497 	ldb	_blockY	; , blockY
   2A2F F7 CA 99      [ 5]  498 	stb	_nextBlockY	; , nextBlockY
                            499 ;----- asm -----
                            500 ;  380 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            501 	; #ENR#[304]            			break;
                            502 ;  0 "" 2
                            503 ;--- end asm ---
   2A32 7E 2A 8C      [ 4]  504 	jmp	L26	; 
   2A35                     505 L29:
                            506 ;----- asm -----
                            507 ;  384 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            508 	; #ENR#[306]            			blockAnimation = depth2RollingRight;
                            509 ;  0 "" 2
                            510 ;--- end asm ---
   2A35 8E 52 B1      [ 3]  511 	ldx	#_depth2RollingRight	; ,
   2A38 BF CA 92      [ 6]  512 	stx	_blockAnimation	; , blockAnimation
                            513 ;----- asm -----
                            514 ;  386 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            515 	; #ENR#[307]            			nextBlockAnimation = depth2RollingLeft;
                            516 ;  0 "" 2
                            517 ;--- end asm ---
   2A3B 8E 52 99      [ 3]  518 	ldx	#_depth2RollingLeft	; ,
   2A3E BF CA 94      [ 6]  519 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            520 ;----- asm -----
                            521 ;  388 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            522 	; #ENR#[308]            			nextBlockX = blockX + 1;
                            523 ;  0 "" 2
                            524 ;--- end asm ---
   2A41 F6 CA 90      [ 5]  525 	ldb	_blockX	; , blockX
   2A44 5C            [ 2]  526 	incb	; 
   2A45 F7 CA 98      [ 5]  527 	stb	_nextBlockX	; , nextBlockX
                            528 ;----- asm -----
                            529 ;  390 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            530 	; #ENR#[309]            			nextBlockY = blockY;
                            531 ;  0 "" 2
                            532 ;--- end asm ---
   2A48 F6 CA 91      [ 5]  533 	ldb	_blockY	; , blockY
   2A4B F7 CA 99      [ 5]  534 	stb	_nextBlockY	; , nextBlockY
                            535 ;----- asm -----
                            536 ;  392 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            537 	; #ENR#[310]            			break;
                            538 ;  0 "" 2
                            539 ;--- end asm ---
   2A4E 7E 2A 8C      [ 4]  540 	jmp	L26	; 
   2A51                     541 L28:
                            542 ;----- asm -----
                            543 ;  396 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            544 	; #ENR#[312]            			blockAnimation = height2RisingBack;
                            545 ;  0 "" 2
                            546 ;--- end asm ---
   2A51 8E 52 81      [ 3]  547 	ldx	#_height2RisingBack	; ,
   2A54 BF CA 92      [ 6]  548 	stx	_blockAnimation	; , blockAnimation
                            549 ;----- asm -----
                            550 ;  398 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            551 	; #ENR#[313]            			nextBlockAnimation = height2FallingFront;
                            552 ;  0 "" 2
                            553 ;--- end asm ---
   2A57 8E 52 69      [ 3]  554 	ldx	#_height2FallingFront	; ,
   2A5A BF CA 94      [ 6]  555 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            556 ;----- asm -----
                            557 ;  400 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            558 	; #ENR#[314]            			nextBlockX = blockX;
                            559 ;  0 "" 2
                            560 ;--- end asm ---
   2A5D F6 CA 90      [ 5]  561 	ldb	_blockX	; , blockX
   2A60 F7 CA 98      [ 5]  562 	stb	_nextBlockX	; , nextBlockX
                            563 ;----- asm -----
                            564 ;  402 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            565 	; #ENR#[315]            			nextBlockY = blockY + 2;
                            566 ;  0 "" 2
                            567 ;--- end asm ---
   2A63 F6 CA 91      [ 5]  568 	ldb	_blockY	; , blockY
   2A66 CB 02         [ 2]  569 	addb	#2	; ,
   2A68 F7 CA 99      [ 5]  570 	stb	_nextBlockY	; , nextBlockY
                            571 ;----- asm -----
                            572 ;  404 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            573 	; #ENR#[316]            			blockOrientation = Standing;
                            574 ;  0 "" 2
                            575 ;--- end asm ---
   2A6B 7F CA 8F      [ 7]  576 	clr	_blockOrientation	;  blockOrientation
                            577 ;----- asm -----
                            578 ;  406 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            579 	; #ENR#[317]            			break;
                            580 ;  0 "" 2
                            581 ;--- end asm ---
   2A6E 20 1C         [ 3]  582 	bra	L26	; 
   2A70                     583 L40:
                            584 ;----- asm -----
                            585 ;  410 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            586 	; #ENR#[319]            			blockAnimation = height2RisingFront;
                            587 ;  0 "" 2
                            588 ;--- end asm ---
   2A70 8E 52 51      [ 3]  589 	ldx	#_height2RisingFront	; ,
   2A73 BF CA 92      [ 6]  590 	stx	_blockAnimation	; , blockAnimation
                            591 ;----- asm -----
                            592 ;  412 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            593 	; #ENR#[320]            			nextBlockAnimation = height2FallingFront;
                            594 ;  0 "" 2
                            595 ;--- end asm ---
   2A76 8E 52 69      [ 3]  596 	ldx	#_height2FallingFront	; ,
   2A79 BF CA 94      [ 6]  597 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            598 ;----- asm -----
                            599 ;  414 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            600 	; #ENR#[321]            			nextBlockX = blockX;
                            601 ;  0 "" 2
                            602 ;--- end asm ---
   2A7C F6 CA 90      [ 5]  603 	ldb	_blockX	; , blockX
   2A7F F7 CA 98      [ 5]  604 	stb	_nextBlockX	; , nextBlockX
                            605 ;----- asm -----
                            606 ;  416 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            607 	; #ENR#[322]            			nextBlockY = blockY - 1;
                            608 ;  0 "" 2
                            609 ;--- end asm ---
   2A82 F6 CA 91      [ 5]  610 	ldb	_blockY	; , blockY
   2A85 5A            [ 2]  611 	decb	; 
   2A86 F7 CA 99      [ 5]  612 	stb	_nextBlockY	; , nextBlockY
                            613 ;----- asm -----
                            614 ;  418 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            615 	; #ENR#[323]            			blockOrientation = Standing;
                            616 ;  0 "" 2
                            617 ;--- end asm ---
   2A89 7F CA 8F      [ 7]  618 	clr	_blockOrientation	;  blockOrientation
                            619 ;----- asm -----
                            620 ;  420 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            621 	; #ENR#[324]            			break;
                            622 ;  0 "" 2
                            623 ;--- end asm ---
   2A8C                     624 L26:
                            625 ;----- asm -----
                            626 ;  423 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            627 	; #ENR#[326]        		break;
                            628 ;  0 "" 2
                            629 ;--- end asm ---
   2A8C 7E 2B 16      [ 4]  630 	jmp	L17	; 
   2A8F                     631 L38:
                            632 ;----- asm -----
                            633 ;  427 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            634 	; #ENR#[328]        		switch (move) {
                            635 ;  0 "" 2
                            636 ;--- end asm ---
   2A8F E6 E4         [ 4]  637 	ldb	,s	; , move
   2A91 C1 01         [ 2]  638 	cmpb	#1	;cmpqi:	; ,
   2A93 10 27 00 4E   [ 6]  639 	lbeq	L33	; 
   2A97 25 0D         [ 3]  640 	blo	L32	; 
   2A99 C1 02         [ 2]  641 	cmpb	#2	;cmpqi:	; ,
   2A9B 27 28         [ 3]  642 	beq	L34	; 
   2A9D C1 03         [ 2]  643 	cmpb	#3	;cmpqi:	; ,
   2A9F 10 26 00 73   [ 6]  644 	lbne	L31	; 
   2AA3 7E 2A FD      [ 4]  645 	jmp	L41	; 
   2AA6                     646 L32:
                            647 ;----- asm -----
                            648 ;  431 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            649 	; #ENR#[330]            			blockAnimation = height2RisingLeft;
                            650 ;  0 "" 2
                            651 ;--- end asm ---
   2AA6 8E 52 21      [ 3]  652 	ldx	#_height2RisingLeft	; ,
   2AA9 BF CA 92      [ 6]  653 	stx	_blockAnimation	; , blockAnimation
                            654 ;----- asm -----
                            655 ;  433 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            656 	; #ENR#[331]            			nextBlockAnimation = height2FallingRight;
                            657 ;  0 "" 2
                            658 ;--- end asm ---
   2AAC 8E 52 09      [ 3]  659 	ldx	#_height2FallingRight	; ,
   2AAF BF CA 94      [ 6]  660 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            661 ;----- asm -----
                            662 ;  435 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            663 	; #ENR#[332]            			nextBlockX = blockX - 1;
                            664 ;  0 "" 2
                            665 ;--- end asm ---
   2AB2 F6 CA 90      [ 5]  666 	ldb	_blockX	; , blockX
   2AB5 5A            [ 2]  667 	decb	; 
   2AB6 F7 CA 98      [ 5]  668 	stb	_nextBlockX	; , nextBlockX
                            669 ;----- asm -----
                            670 ;  437 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            671 	; #ENR#[333]            			nextBlockY = blockY;
                            672 ;  0 "" 2
                            673 ;--- end asm ---
   2AB9 F6 CA 91      [ 5]  674 	ldb	_blockY	; , blockY
   2ABC F7 CA 99      [ 5]  675 	stb	_nextBlockY	; , nextBlockY
                            676 ;----- asm -----
                            677 ;  439 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            678 	; #ENR#[334]            			blockOrientation = Standing;
                            679 ;  0 "" 2
                            680 ;--- end asm ---
   2ABF 7F CA 8F      [ 7]  681 	clr	_blockOrientation	;  blockOrientation
                            682 ;----- asm -----
                            683 ;  441 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            684 	; #ENR#[335]            			break;
                            685 ;  0 "" 2
                            686 ;--- end asm ---
   2AC2 7E 2B 16      [ 4]  687 	jmp	L31	; 
   2AC5                     688 L34:
                            689 ;----- asm -----
                            690 ;  445 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            691 	; #ENR#[337]            			blockAnimation = height2RisingRight;
                            692 ;  0 "" 2
                            693 ;--- end asm ---
   2AC5 8E 51 F1      [ 3]  694 	ldx	#_height2RisingRight	; ,
   2AC8 BF CA 92      [ 6]  695 	stx	_blockAnimation	; , blockAnimation
                            696 ;----- asm -----
                            697 ;  447 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            698 	; #ENR#[338]            			nextBlockAnimation = height2FallingLeft;
                            699 ;  0 "" 2
                            700 ;--- end asm ---
   2ACB 8E 51 D9      [ 3]  701 	ldx	#_height2FallingLeft	; ,
   2ACE BF CA 94      [ 6]  702 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            703 ;----- asm -----
                            704 ;  449 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            705 	; #ENR#[339]            			nextBlockX = blockX + 2;
                            706 ;  0 "" 2
                            707 ;--- end asm ---
   2AD1 F6 CA 90      [ 5]  708 	ldb	_blockX	; , blockX
   2AD4 CB 02         [ 2]  709 	addb	#2	; ,
   2AD6 F7 CA 98      [ 5]  710 	stb	_nextBlockX	; , nextBlockX
                            711 ;----- asm -----
                            712 ;  451 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            713 	; #ENR#[340]            			nextBlockY = blockY;
                            714 ;  0 "" 2
                            715 ;--- end asm ---
   2AD9 F6 CA 91      [ 5]  716 	ldb	_blockY	; , blockY
   2ADC F7 CA 99      [ 5]  717 	stb	_nextBlockY	; , nextBlockY
                            718 ;----- asm -----
                            719 ;  453 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            720 	; #ENR#[341]            			blockOrientation = Standing;
                            721 ;  0 "" 2
                            722 ;--- end asm ---
   2ADF 7F CA 8F      [ 7]  723 	clr	_blockOrientation	;  blockOrientation
                            724 ;----- asm -----
                            725 ;  455 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            726 	; #ENR#[342]            			break;
                            727 ;  0 "" 2
                            728 ;--- end asm ---
   2AE2 7E 2B 16      [ 4]  729 	jmp	L31	; 
   2AE5                     730 L33:
                            731 ;----- asm -----
                            732 ;  459 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            733 	; #ENR#[344]            			blockAnimation = width2RollingBack;
                            734 ;  0 "" 2
                            735 ;--- end asm ---
   2AE5 8E 52 E1      [ 3]  736 	ldx	#_width2RollingBack	;  tmp50,
   2AE8 BF CA 92      [ 6]  737 	stx	_blockAnimation	;  tmp50, blockAnimation
                            738 ;----- asm -----
                            739 ;  461 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            740 	; #ENR#[345]            			nextBlockAnimation = width2RollingBack;
                            741 ;  0 "" 2
                            742 ;--- end asm ---
   2AEB BF CA 94      [ 6]  743 	stx	_nextBlockAnimation	;  tmp50, nextBlockAnimation
                            744 ;----- asm -----
                            745 ;  463 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            746 	; #ENR#[346]            			nextBlockX = blockX;
                            747 ;  0 "" 2
                            748 ;--- end asm ---
   2AEE F6 CA 90      [ 5]  749 	ldb	_blockX	; , blockX
   2AF1 F7 CA 98      [ 5]  750 	stb	_nextBlockX	; , nextBlockX
                            751 ;----- asm -----
                            752 ;  465 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            753 	; #ENR#[347]            			nextBlockY = blockY + 1;
                            754 ;  0 "" 2
                            755 ;--- end asm ---
   2AF4 F6 CA 91      [ 5]  756 	ldb	_blockY	; , blockY
   2AF7 5C            [ 2]  757 	incb	; 
   2AF8 F7 CA 99      [ 5]  758 	stb	_nextBlockY	; , nextBlockY
                            759 ;----- asm -----
                            760 ;  467 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            761 	; #ENR#[348]            			break;
                            762 ;  0 "" 2
                            763 ;--- end asm ---
   2AFB 20 19         [ 3]  764 	bra	L31	; 
   2AFD                     765 L41:
                            766 ;----- asm -----
                            767 ;  471 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            768 	; #ENR#[350]            			blockAnimation = width2RollingFront;
                            769 ;  0 "" 2
                            770 ;--- end asm ---
   2AFD 8E 52 C9      [ 3]  771 	ldx	#_width2RollingFront	; ,
   2B00 BF CA 92      [ 6]  772 	stx	_blockAnimation	; , blockAnimation
                            773 ;----- asm -----
                            774 ;  473 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            775 	; #ENR#[351]            			nextBlockAnimation = width2RollingBack;
                            776 ;  0 "" 2
                            777 ;--- end asm ---
   2B03 8E 52 E1      [ 3]  778 	ldx	#_width2RollingBack	; ,
   2B06 BF CA 94      [ 6]  779 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            780 ;----- asm -----
                            781 ;  475 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            782 	; #ENR#[352]            			nextBlockX = blockX;
                            783 ;  0 "" 2
                            784 ;--- end asm ---
   2B09 F6 CA 90      [ 5]  785 	ldb	_blockX	; , blockX
   2B0C F7 CA 98      [ 5]  786 	stb	_nextBlockX	; , nextBlockX
                            787 ;----- asm -----
                            788 ;  477 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            789 	; #ENR#[353]            			nextBlockY = blockY - 1;
                            790 ;  0 "" 2
                            791 ;--- end asm ---
   2B0F F6 CA 91      [ 5]  792 	ldb	_blockY	; , blockY
   2B12 5A            [ 2]  793 	decb	; 
   2B13 F7 CA 99      [ 5]  794 	stb	_nextBlockY	; , nextBlockY
                            795 ;----- asm -----
                            796 ;  479 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            797 	; #ENR#[354]            			break;
                            798 ;  0 "" 2
                            799 ;--- end asm ---
   2B16                     800 L31:
                            801 ;----- asm -----
                            802 ;  482 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            803 	; #ENR#[356]        		break;
                            804 ;  0 "" 2
                            805 ;--- end asm ---
   2B16                     806 L17:
                            807 ;----- asm -----
                            808 ;  485 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            809 	; #ENR#[358]	if (moveCount < 999) moveCount++;
                            810 ;  0 "" 2
                            811 ;--- end asm ---
   2B16 BE CA 8A      [ 6]  812 	ldx	_moveCount	;  moveCount.19, moveCount
   2B19 8C 03 E6      [ 4]  813 	cmpx	#998	;cmphi:	;  moveCount.19,
   2B1C 22 05         [ 3]  814 	bhi	L36	; 
   2B1E 30 01         [ 5]  815 	leax	1,x	; ,, moveCount.19
   2B20 BF CA 8A      [ 6]  816 	stx	_moveCount	; , moveCount
   2B23                     817 L36:
                            818 ;----- asm -----
                            819 ;  487 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            820 	; #ENR#[359]	updateInfoText();
                            821 ;  0 "" 2
                            822 ;--- end asm ---
   2B23 BD 29 21      [ 8]  823 	jsr	_updateInfoText	; 
   2B26 32 61         [ 5]  824 	leas	1,s	; ,,
   2B28 39            [ 5]  825 	rts
                            826 	.globl _startBlockFalling
   2B29                     827 _startBlockFalling:
                            828 ;----- asm -----
                            829 ;  493 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            830 	; #ENR#[364]	gameState = BlockFalling;
                            831 ;  0 "" 2
                            832 ;--- end asm ---
   2B29 C6 05         [ 2]  833 	ldb	#5	; ,
   2B2B F7 CA 9C      [ 5]  834 	stb	_gameState	; , gameState
                            835 ;----- asm -----
                            836 ;  495 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            837 	; #ENR#[365]	blockYOfs = 0;
                            838 ;  0 "" 2
                            839 ;--- end asm ---
   2B2E 7F CA 9B      [ 7]  840 	clr	_blockYOfs	;  blockYOfs
                            841 ;----- asm -----
                            842 ;  497 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            843 	; #ENR#[366]	moveBlock(lastBlockDirection);
                            844 ;  0 "" 2
                            845 ;--- end asm ---
   2B31 F6 CA 9A      [ 5]  846 	ldb	_lastBlockDirection	; , lastBlockDirection
   2B34 BD 29 47      [ 8]  847 	jsr	_moveBlock	; 
                            848 ;----- asm -----
                            849 ;  499 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            850 	; #ENR#[367]	changeMusic(fallingMusic);
                            851 ;  0 "" 2
                            852 ;--- end asm ---
   2B37 8E 53 33      [ 3]  853 	ldx	#_fallingMusic	; ,
   2B3A BD 29 3E      [ 8]  854 	jsr	_changeMusic	; 
                            855 ;----- asm -----
                            856 ;  501 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            857 	; #ENR#[368]	*vecx = 0;
                            858 ;  0 "" 2
                            859 ;--- end asm ---
   2B3D 6F 9F C8 86   [11]  860 	clr	[_vecx]	; * vecx
   2B41 39            [ 5]  861 	rts
                            862 	.globl _drawField
   2B42                     863 _drawField:
   2B42 32 7F         [ 5]  864 	leas	-1,s	; ,,
                            865 ;----- asm -----
                            866 ;  549 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            867 	; #ENR#[397]	intens(0x35);
                            868 ;  0 "" 2
                            869 ;--- end asm ---
   2B44 C6 35         [ 2]  870 	ldb	#53	; ,
   2B46 E7 E4         [ 4]  871 	stb	,s	; , a
                            872 ;----- asm -----
                            873 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2B48 A6 E4         [ 4]  874 	lda ,s	;  a
   2B4A BD F2 AB      [ 8]  875 	jsr ___Intensity_a; BIOS call
                            876 ;  0 "" 2
                            877 ;  564 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B4D 34 5E         [10]  878 		pshs a, b, dp, x, u
                            879 ;  0 "" 2
                            880 ;  565 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B4F 86 D0         [ 2]  881 		lda #0xd0
                            882 ;  0 "" 2
                            883 ;  566 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B51 1F 8B         [ 6]  884 		tfr a, dp
                            885 ;  0 "" 2
                            886 ;  567 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B53 8E 00 00      [ 3]  887 		ldx #0
                            888 ;  0 "" 2
                            889 ;  568 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B56 F6 C8 80      [ 5]  890 		ldb _lineCount
                            891 ;  0 "" 2
                            892 ;  569 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B59                     893 	drawFieldLoop:
                            894 ;  0 "" 2
                            895 ;  570 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B59 34 04         [ 6]  896 		pshs b
                            897 ;  0 "" 2
                            898 ;  571 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B5B 34 10         [ 6]  899 		pshs x
                            900 ;  0 "" 2
                            901 ;  572 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B5D BD F3 54      [ 8]  902 		jsr 0xf354
                            903 ;  0 "" 2
                            904 ;  573 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B60 35 10         [ 6]  905 		puls x
                            906 ;  0 "" 2
                            907 ;  574 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B62 A6 89 C9 18   [ 8]  908 		lda _lineY0,x
                            909 ;  0 "" 2
                            910 ;  575 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B66 E6 89 C8 A0   [ 8]  911 		ldb _lineX0,x
                            912 ;  0 "" 2
                            913 ;  576 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B6A 34 10         [ 6]  914 		pshs x
                            915 ;  0 "" 2
                            916 ;  577 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B6C BD F2 FC      [ 8]  917 		jsr 0xf2fc
                            918 ;  0 "" 2
                            919 ;  578 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B6F 35 10         [ 6]  920 		puls x
                            921 ;  0 "" 2
                            922 ;  579 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B71 A6 89 CA 08   [ 8]  923 		lda _lineY1,x
                            924 ;  0 "" 2
                            925 ;  580 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B75 E6 89 C9 90   [ 8]  926 		ldb _lineX1,x
                            927 ;  0 "" 2
                            928 ;  581 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B79 A0 89 C9 18   [ 8]  929 		suba _lineY0,x
                            930 ;  0 "" 2
                            931 ;  582 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B7D E0 89 C8 A0   [ 8]  932 		subb _lineX0,x
                            933 ;  0 "" 2
                            934 ;  583 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B81 34 10         [ 6]  935 		pshs x
                            936 ;  0 "" 2
                            937 ;  584 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B83 BD F3 DF      [ 8]  938 		jsr 0xf3df
                            939 ;  0 "" 2
                            940 ;  585 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B86 35 10         [ 6]  941 		puls x
                            942 ;  0 "" 2
                            943 ;  586 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B88 A6 80         [ 6]  944 		lda ,x+
                            945 ;  0 "" 2
                            946 ;  587 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B8A 35 04         [ 6]  947 		puls b
                            948 ;  0 "" 2
                            949 ;  588 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B8C 5A            [ 2]  950 		decb
                            951 ;  0 "" 2
                            952 ;  589 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B8D 26 CA         [ 3]  953 		bne drawFieldLoop
                            954 ;  0 "" 2
                            955 ;  590 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   2B8F 35 5E         [10]  956 		puls a, b, dp, x, u
                            957 ;  0 "" 2
                            958 ;--- end asm ---
   2B91 32 61         [ 5]  959 	leas	1,s	; ,,
   2B93 39            [ 5]  960 	rts
                            961 	.globl _doBlockAnimation
   2B94                     962 _doBlockAnimation:
                            963 ;----- asm -----
                            964 ;  677 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            965 	; #ENR#[494]	if (blockAnimating) {
                            966 ;  0 "" 2
                            967 ;--- end asm ---
   2B94 7D CA 97      [ 7]  968 	tst	_blockAnimating	;  blockAnimating
   2B97 27 23         [ 3]  969 	beq	L48	; 
                            970 ;----- asm -----
                            971 ;  679 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            972 	; #ENR#[495]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                            973 ;  0 "" 2
                            974 ;--- end asm ---
   2B99 F6 CA 96      [ 5]  975 	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
   2B9C 5C            [ 2]  976 	incb	;  blockAnimationStep.48
   2B9D F7 CA 96      [ 5]  977 	stb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
   2BA0 C1 0C         [ 2]  978 	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
   2BA2 26 18         [ 3]  979 	bne	L48	; 
                            980 ;----- asm -----
                            981 ;  681 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            982 	; #ENR#[496]			blockX = nextBlockX;
                            983 ;  0 "" 2
                            984 ;--- end asm ---
   2BA4 F6 CA 98      [ 5]  985 	ldb	_nextBlockX	; , nextBlockX
   2BA7 F7 CA 90      [ 5]  986 	stb	_blockX	; , blockX
                            987 ;----- asm -----
                            988 ;  683 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            989 	; #ENR#[497]			blockY = nextBlockY;
                            990 ;  0 "" 2
                            991 ;--- end asm ---
   2BAA F6 CA 99      [ 5]  992 	ldb	_nextBlockY	; , nextBlockY
   2BAD F7 CA 91      [ 5]  993 	stb	_blockY	; , blockY
                            994 ;----- asm -----
                            995 ;  685 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            996 	; #ENR#[498]			blockAnimationStep = 0;
                            997 ;  0 "" 2
                            998 ;--- end asm ---
   2BB0 7F CA 96      [ 7]  999 	clr	_blockAnimationStep	;  blockAnimationStep
                           1000 ;----- asm -----
                           1001 ;  687 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1002 	; #ENR#[499]			blockAnimation = nextBlockAnimation;
                           1003 ;  0 "" 2
                           1004 ;--- end asm ---
   2BB3 BE CA 94      [ 6] 1005 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   2BB6 BF CA 92      [ 6] 1006 	stx	_blockAnimation	; , blockAnimation
                           1007 ;----- asm -----
                           1008 ;  689 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1009 	; #ENR#[500]			blockAnimating = 0;
                           1010 ;  0 "" 2
                           1011 ;--- end asm ---
   2BB9 7F CA 97      [ 7] 1012 	clr	_blockAnimating	;  blockAnimating
   2BBC                    1013 L48:
   2BBC 39            [ 5] 1014 	rts
                           1015 	.globl _showInfo2
   2BBD                    1016 _showInfo2:
   2BBD 34 20         [ 6] 1017 	pshs	y	; 
   2BBF 32 7D         [ 5] 1018 	leas	-3,s	; ,,
                           1019 ;----- asm -----
                           1020 ;  938 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1021 	; #ENR#[659]	zergnd();
                           1022 ;  0 "" 2
                           1023 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2BC1 BD F3 54      [ 8] 1024 	jsr ___Reset0Ref; BIOS call
                           1025 ;  0 "" 2
                           1026 ;  940 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1027 	; #ENR#[660]	intens(0x50);
                           1028 ;  0 "" 2
                           1029 ;--- end asm ---
   2BC4 C6 50         [ 2] 1030 	ldb	#80	; ,
   2BC6 E7 E4         [ 4] 1031 	stb	,s	; , a
                           1032 ;----- asm -----
                           1033 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2BC8 A6 E4         [ 4] 1034 	lda ,s	;  a
   2BCA BD F2 AB      [ 8] 1035 	jsr ___Intensity_a; BIOS call
                           1036 ;  0 "" 2
                           1037 ;  943 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1038 	; #ENR#[662]	zergnd();
                           1039 ;  0 "" 2
                           1040 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2BCD BD F3 54      [ 8] 1041 	jsr ___Reset0Ref; BIOS call
                           1042 ;  0 "" 2
                           1043 ;  945 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1044 	; #ENR#[663]	positd(-50, 100);
                           1045 ;  0 "" 2
                           1046 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1047 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1048 ;  0 "" 2
                           1049 ;--- end asm ---
   2BD0 C6 80         [ 2] 1050 	ldb	#-128	; ,
   2BD2 D7 04         [ 4] 1051 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1052 ;----- asm -----
                           1053 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1054 	; #ENR#[50]	Moveto_d(y,x);
                           1055 ;  0 "" 2
                           1056 ;--- end asm ---
   2BD4 C6 64         [ 2] 1057 	ldb	#100	; ,
   2BD6 E7 62         [ 5] 1058 	stb	2,s	; , a
   2BD8 C6 CE         [ 2] 1059 	ldb	#-50	; ,
   2BDA E7 E4         [ 4] 1060 	stb	,s	; , b
                           1061 ;----- asm -----
                           1062 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2BDC A6 62         [ 5] 1063 	lda 2,s	;  a
   2BDE E6 E4         [ 4] 1064 	ldb ,s	;  b
   2BE0 BD F3 12      [ 8] 1065 	jsr ___Moveto_d; BIOS call
                           1066 ;  0 "" 2
                           1067 ;  947 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1068 	; #ENR#[664]	pack1x((void*)led8);
                           1069 ;  0 "" 2
                           1070 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1071 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1072 ;  0 "" 2
                           1073 ;--- end asm ---
   2BE3 C6 80         [ 2] 1074 	ldb	#-128	; ,
   2BE5 D7 04         [ 4] 1075 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1076 ;----- asm -----
                           1077 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1078 	; #ENR#[55]	Draw_VLp(x);
                           1079 ;  0 "" 2
                           1080 ;--- end asm ---
   2BE7 10 8E 53 5B   [ 4] 1081 	ldy	#_led8	;  tmp27,
   2BEB 10 AF E4      [ 6] 1082 	sty	,s	;  tmp27, x
                           1083 ;----- asm -----
                           1084 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2BEE AE E4         [ 5] 1085 	ldx ,s	;  x
   2BF0 BD F4 10      [ 8] 1086 	jsr ___Draw_VLp; BIOS call
                           1087 ;  0 "" 2
                           1088 ;  950 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1089 	; #ENR#[666]	zergnd();
                           1090 ;  0 "" 2
                           1091 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2BF3 BD F3 54      [ 8] 1092 	jsr ___Reset0Ref; BIOS call
                           1093 ;  0 "" 2
                           1094 ;  952 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1095 	; #ENR#[667]	positd(-40, 110);
                           1096 ;  0 "" 2
                           1097 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1098 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1099 ;  0 "" 2
                           1100 ;--- end asm ---
   2BF6 C6 80         [ 2] 1101 	ldb	#-128	; ,
   2BF8 D7 04         [ 4] 1102 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1103 ;----- asm -----
                           1104 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1105 	; #ENR#[50]	Moveto_d(y,x);
                           1106 ;  0 "" 2
                           1107 ;--- end asm ---
   2BFA C6 6E         [ 2] 1108 	ldb	#110	; ,
   2BFC E7 E4         [ 4] 1109 	stb	,s	; , a
   2BFE C6 D8         [ 2] 1110 	ldb	#-40	; ,
   2C00 E7 62         [ 5] 1111 	stb	2,s	; , b
                           1112 ;----- asm -----
                           1113 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C02 A6 E4         [ 4] 1114 	lda ,s	;  a
   2C04 E6 62         [ 5] 1115 	ldb 2,s	;  b
   2C06 BD F3 12      [ 8] 1116 	jsr ___Moveto_d; BIOS call
                           1117 ;  0 "" 2
                           1118 ;  954 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1119 	; #ENR#[668]	pack1x((void*)led8);
                           1120 ;  0 "" 2
                           1121 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1122 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1123 ;  0 "" 2
                           1124 ;--- end asm ---
   2C09 C6 80         [ 2] 1125 	ldb	#-128	; ,
   2C0B D7 04         [ 4] 1126 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1127 ;----- asm -----
                           1128 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1129 	; #ENR#[55]	Draw_VLp(x);
                           1130 ;  0 "" 2
                           1131 ;--- end asm ---
   2C0D 10 AF E4      [ 6] 1132 	sty	,s	;  tmp27, x
                           1133 ;----- asm -----
                           1134 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C10 AE E4         [ 5] 1135 	ldx ,s	;  x
   2C12 BD F4 10      [ 8] 1136 	jsr ___Draw_VLp; BIOS call
                           1137 ;  0 "" 2
                           1138 ;  957 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1139 	; #ENR#[670]	zergnd();
                           1140 ;  0 "" 2
                           1141 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C15 BD F3 54      [ 8] 1142 	jsr ___Reset0Ref; BIOS call
                           1143 ;  0 "" 2
                           1144 ;  959 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1145 	; #ENR#[671]	positd(-30, 120);
                           1146 ;  0 "" 2
                           1147 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1148 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1149 ;  0 "" 2
                           1150 ;--- end asm ---
   2C18 C6 80         [ 2] 1151 	ldb	#-128	; ,
   2C1A D7 04         [ 4] 1152 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1153 ;----- asm -----
                           1154 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1155 	; #ENR#[50]	Moveto_d(y,x);
                           1156 ;  0 "" 2
                           1157 ;--- end asm ---
   2C1C C6 78         [ 2] 1158 	ldb	#120	; ,
   2C1E E7 62         [ 5] 1159 	stb	2,s	; , a
   2C20 C6 E2         [ 2] 1160 	ldb	#-30	; ,
   2C22 E7 E4         [ 4] 1161 	stb	,s	; , b
                           1162 ;----- asm -----
                           1163 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C24 A6 62         [ 5] 1164 	lda 2,s	;  a
   2C26 E6 E4         [ 4] 1165 	ldb ,s	;  b
   2C28 BD F3 12      [ 8] 1166 	jsr ___Moveto_d; BIOS call
                           1167 ;  0 "" 2
                           1168 ;  961 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1169 	; #ENR#[672]	pack1x((void*)led8);
                           1170 ;  0 "" 2
                           1171 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1172 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1173 ;  0 "" 2
                           1174 ;--- end asm ---
   2C2B C6 80         [ 2] 1175 	ldb	#-128	; ,
   2C2D D7 04         [ 4] 1176 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1177 ;----- asm -----
                           1178 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1179 	; #ENR#[55]	Draw_VLp(x);
                           1180 ;  0 "" 2
                           1181 ;--- end asm ---
   2C2F 10 AF E4      [ 6] 1182 	sty	,s	;  tmp27, x
                           1183 ;----- asm -----
                           1184 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C32 AE E4         [ 5] 1185 	ldx ,s	;  x
   2C34 BD F4 10      [ 8] 1186 	jsr ___Draw_VLp; BIOS call
                           1187 ;  0 "" 2
                           1188 ;  964 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1189 	; #ENR#[674]	zergnd();
                           1190 ;  0 "" 2
                           1191 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C37 BD F3 54      [ 8] 1192 	jsr ___Reset0Ref; BIOS call
                           1193 ;  0 "" 2
                           1194 ;  966 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1195 	; #ENR#[675]	positd(0, 120);
                           1196 ;  0 "" 2
                           1197 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1198 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1199 ;  0 "" 2
                           1200 ;--- end asm ---
   2C3A C6 80         [ 2] 1201 	ldb	#-128	; ,
   2C3C D7 04         [ 4] 1202 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1203 ;----- asm -----
                           1204 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1205 	; #ENR#[50]	Moveto_d(y,x);
                           1206 ;  0 "" 2
                           1207 ;--- end asm ---
   2C3E C6 78         [ 2] 1208 	ldb	#120	; ,
   2C40 E7 E4         [ 4] 1209 	stb	,s	; , a
   2C42 6F 62         [ 7] 1210 	clr	2,s	;  b
                           1211 ;----- asm -----
                           1212 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C44 A6 E4         [ 4] 1213 	lda ,s	;  a
   2C46 E6 62         [ 5] 1214 	ldb 2,s	;  b
   2C48 BD F3 12      [ 8] 1215 	jsr ___Moveto_d; BIOS call
                           1216 ;  0 "" 2
                           1217 ;  968 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1218 	; #ENR#[676]	pack1x((void*)led8);
                           1219 ;  0 "" 2
                           1220 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1221 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1222 ;  0 "" 2
                           1223 ;--- end asm ---
   2C4B C6 80         [ 2] 1224 	ldb	#-128	; ,
   2C4D D7 04         [ 4] 1225 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1226 ;----- asm -----
                           1227 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1228 	; #ENR#[55]	Draw_VLp(x);
                           1229 ;  0 "" 2
                           1230 ;--- end asm ---
   2C4F 10 AF E4      [ 6] 1231 	sty	,s	;  tmp27, x
                           1232 ;----- asm -----
                           1233 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C52 AE E4         [ 5] 1234 	ldx ,s	;  x
   2C54 BD F4 10      [ 8] 1235 	jsr ___Draw_VLp; BIOS call
                           1236 ;  0 "" 2
                           1237 ;  971 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1238 	; #ENR#[678]	zergnd();
                           1239 ;  0 "" 2
                           1240 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C57 BD F3 54      [ 8] 1241 	jsr ___Reset0Ref; BIOS call
                           1242 ;  0 "" 2
                           1243 ;  973 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1244 	; #ENR#[679]	positd(10, 120);
                           1245 ;  0 "" 2
                           1246 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1247 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1248 ;  0 "" 2
                           1249 ;--- end asm ---
   2C5A C6 80         [ 2] 1250 	ldb	#-128	; ,
   2C5C D7 04         [ 4] 1251 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1252 ;----- asm -----
                           1253 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1254 	; #ENR#[50]	Moveto_d(y,x);
                           1255 ;  0 "" 2
                           1256 ;--- end asm ---
   2C5E C6 78         [ 2] 1257 	ldb	#120	; ,
   2C60 E7 62         [ 5] 1258 	stb	2,s	; , a
   2C62 C6 0A         [ 2] 1259 	ldb	#10	; ,
   2C64 E7 E4         [ 4] 1260 	stb	,s	; , b
                           1261 ;----- asm -----
                           1262 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C66 A6 62         [ 5] 1263 	lda 2,s	;  a
   2C68 E6 E4         [ 4] 1264 	ldb ,s	;  b
   2C6A BD F3 12      [ 8] 1265 	jsr ___Moveto_d; BIOS call
                           1266 ;  0 "" 2
                           1267 ;  975 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1268 	; #ENR#[680]	pack1x((void*)led8);
                           1269 ;  0 "" 2
                           1270 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1271 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1272 ;  0 "" 2
                           1273 ;--- end asm ---
   2C6D C6 80         [ 2] 1274 	ldb	#-128	; ,
   2C6F D7 04         [ 4] 1275 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1276 ;----- asm -----
                           1277 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1278 	; #ENR#[55]	Draw_VLp(x);
                           1279 ;  0 "" 2
                           1280 ;--- end asm ---
   2C71 10 AF E4      [ 6] 1281 	sty	,s	;  tmp27, x
                           1282 ;----- asm -----
                           1283 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C74 AE E4         [ 5] 1284 	ldx ,s	;  x
   2C76 BD F4 10      [ 8] 1285 	jsr ___Draw_VLp; BIOS call
                           1286 ;  0 "" 2
                           1287 ;  978 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1288 	; #ENR#[682]	zergnd();
                           1289 ;  0 "" 2
                           1290 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C79 BD F3 54      [ 8] 1291 	jsr ___Reset0Ref; BIOS call
                           1292 ;  0 "" 2
                           1293 ;  980 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1294 	; #ENR#[683]	positd(20, 120);
                           1295 ;  0 "" 2
                           1296 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1297 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1298 ;  0 "" 2
                           1299 ;--- end asm ---
   2C7C C6 80         [ 2] 1300 	ldb	#-128	; ,
   2C7E D7 04         [ 4] 1301 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1302 ;----- asm -----
                           1303 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1304 	; #ENR#[50]	Moveto_d(y,x);
                           1305 ;  0 "" 2
                           1306 ;--- end asm ---
   2C80 C6 78         [ 2] 1307 	ldb	#120	; ,
   2C82 E7 E4         [ 4] 1308 	stb	,s	; , a
   2C84 C6 14         [ 2] 1309 	ldb	#20	; ,
   2C86 E7 62         [ 5] 1310 	stb	2,s	; , b
                           1311 ;----- asm -----
                           1312 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C88 A6 E4         [ 4] 1313 	lda ,s	;  a
   2C8A E6 62         [ 5] 1314 	ldb 2,s	;  b
   2C8C BD F3 12      [ 8] 1315 	jsr ___Moveto_d; BIOS call
                           1316 ;  0 "" 2
                           1317 ;  982 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1318 	; #ENR#[684]	pack1x((void*)led8);
                           1319 ;  0 "" 2
                           1320 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1321 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1322 ;  0 "" 2
                           1323 ;--- end asm ---
   2C8F C6 80         [ 2] 1324 	ldb	#-128	; ,
   2C91 D7 04         [ 4] 1325 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1326 ;----- asm -----
                           1327 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1328 	; #ENR#[55]	Draw_VLp(x);
                           1329 ;  0 "" 2
                           1330 ;--- end asm ---
   2C93 10 AF E4      [ 6] 1331 	sty	,s	;  tmp27, x
                           1332 ;----- asm -----
                           1333 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2C96 AE E4         [ 5] 1334 	ldx ,s	;  x
   2C98 BD F4 10      [ 8] 1335 	jsr ___Draw_VLp; BIOS call
                           1336 ;  0 "" 2
                           1337 ;--- end asm ---
   2C9B 32 63         [ 5] 1338 	leas	3,s	; ,,
   2C9D 35 A0         [ 7] 1339 	puls	y,pc	; 
                           1340 	.globl _showInfo
   2C9F                    1341 _showInfo:
   2C9F 34 40         [ 6] 1342 	pshs	u	; 
   2CA1 32 7C         [ 5] 1343 	leas	-4,s	; ,,
                           1344 ;----- asm -----
                           1345 ;  988 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1346 	; #ENR#[689]    Intensity_a(0x5f);
                           1347 ;  0 "" 2
                           1348 ;--- end asm ---
   2CA3 C6 5F         [ 2] 1349 	ldb	#95	; ,
   2CA5 E7 63         [ 5] 1350 	stb	3,s	; , a
                           1351 ;----- asm -----
                           1352 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2CA7 A6 63         [ 5] 1353 	lda 3,s	;  a
   2CA9 BD F2 AB      [ 8] 1354 	jsr ___Intensity_a; BIOS call
                           1355 ;  0 "" 2
                           1356 ;  990 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1357 	; #ENR#[690]    Vec_Text_Width = 100;
                           1358 ;  0 "" 2
                           1359 ;--- end asm ---
   2CAC C6 64         [ 2] 1360 	ldb	#100	; ,
   2CAE F7 C8 2B      [ 5] 1361 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1362 ;----- asm -----
                           1363 ;  992 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1364 	; #ENR#[691]    Print_Str_d(100, -70, infoText);
                           1365 ;  0 "" 2
                           1366 ;--- end asm ---
   2CB1 E7 63         [ 5] 1367 	stb	3,s	; , a
   2CB3 C6 BA         [ 2] 1368 	ldb	#-70	; ,
   2CB5 E7 62         [ 5] 1369 	stb	2,s	; , b
   2CB7 8E CA 80      [ 3] 1370 	ldx	#_infoText	; ,
   2CBA AF E4         [ 5] 1371 	stx	,s	; , u
                           1372 ;----- asm -----
                           1373 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2CBC A6 63         [ 5] 1374 	lda 3,s	;  a
   2CBE E6 62         [ 5] 1375 	ldb 2,s	;  b
   2CC0 EE E4         [ 5] 1376 	ldu ,s	;  u
   2CC2 BD F3 7A      [ 8] 1377 	jsr ___Print_Str_d; BIOS call
                           1378 ;  0 "" 2
                           1379 ;--- end asm ---
   2CC5 32 64         [ 5] 1380 	leas	4,s	; ,,
   2CC7 35 C0         [ 7] 1381 	puls	u,pc	; 
                           1382 	.globl _drawBlock
   2CC9                    1383 _drawBlock:
   2CC9 34 40         [ 6] 1384 	pshs	u	; 
   2CCB 32 79         [ 5] 1385 	leas	-7,s	; ,,
   2CCD E7 62         [ 5] 1386 	stb	2,s	;  yofs, yofs
                           1387 ;----- asm -----
                           1388 ;  596 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1389 	; #ENR#[443]	zergnd();
                           1390 ;  0 "" 2
                           1391 ;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2CCF BD F3 54      [ 8] 1392 	jsr ___Reset0Ref; BIOS call
                           1393 ;  0 "" 2
                           1394 ;  598 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1395 	; #ENR#[444]	intens(0x63);
                           1396 ;  0 "" 2
                           1397 ;--- end asm ---
   2CD2 C6 63         [ 2] 1398 	ldb	#99	; ,
   2CD4 E7 64         [ 5] 1399 	stb	4,s	; , a
                           1400 ;----- asm -----
                           1401 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2CD6 A6 64         [ 5] 1402 	lda 4,s	;  a
   2CD8 BD F2 AB      [ 8] 1403 	jsr ___Intensity_a; BIOS call
                           1404 ;  0 "" 2
                           1405 ;  600 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1406 	; #ENR#[445]	positd(0, yofs);
                           1407 ;  0 "" 2
                           1408 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1409 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1410 ;  0 "" 2
                           1411 ;--- end asm ---
   2CDB C6 80         [ 2] 1412 	ldb	#-128	; ,
   2CDD D7 04         [ 4] 1413 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1414 ;----- asm -----
                           1415 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1416 	; #ENR#[50]	Moveto_d(y,x);
                           1417 ;  0 "" 2
                           1418 ;--- end asm ---
   2CDF E6 62         [ 5] 1419 	ldb	2,s	; , yofs
   2CE1 E7 66         [ 5] 1420 	stb	6,s	; , a
   2CE3 6F 64         [ 7] 1421 	clr	4,s	;  b
                           1422 ;----- asm -----
                           1423 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2CE5 A6 66         [ 5] 1424 	lda 6,s	;  a
   2CE7 E6 64         [ 5] 1425 	ldb 4,s	;  b
   2CE9 BD F3 12      [ 8] 1426 	jsr ___Moveto_d; BIOS call
                           1427 ;  0 "" 2
                           1428 ;  603 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1429 	; #ENR#[447]	positd(x3d(blockX, blockY), y3d(blockX, 0, blockY));
                           1430 ;  0 "" 2
                           1431 ;--- end asm ---
   2CEC F6 CA 91      [ 5] 1432 	ldb	_blockY	; , blockY
   2CEF E7 E2         [ 6] 1433 	stb	,-s	; ,
   2CF1 6F E2         [ 8] 1434 	clr	,-s	; 
   2CF3 F6 CA 90      [ 5] 1435 	ldb	_blockX	; , blockX
   2CF6 BD 23 5A      [ 8] 1436 	jsr	_y3d	; 
   2CF9 E7 65         [ 5] 1437 	stb	5,s	; , D.2514
   2CFB F6 CA 91      [ 5] 1438 	ldb	_blockY	; , blockY
   2CFE E7 E2         [ 6] 1439 	stb	,-s	; ,
   2D00 F6 CA 90      [ 5] 1440 	ldb	_blockX	; , blockX
   2D03 BD 23 39      [ 8] 1441 	jsr	_x3d	; 
   2D06 E7 69         [ 5] 1442 	stb	9,s	; , b
                           1443 ;----- asm -----
                           1444 ;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1445 	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
                           1446 ;  0 "" 2
                           1447 ;--- end asm ---
   2D08 C6 80         [ 2] 1448 	ldb	#-128	; ,
   2D0A D7 04         [ 4] 1449 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1450 ;----- asm -----
                           1451 ;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1452 	; #ENR#[50]	Moveto_d(y,x);
                           1453 ;  0 "" 2
                           1454 ;--- end asm ---
   2D0C E6 66         [ 5] 1455 	ldb	6,s	; , D.2514
   2D0E E7 67         [ 5] 1456 	stb	7,s	; , a
                           1457 ;----- asm -----
                           1458 ;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2D10 A6 67         [ 5] 1459 	lda 7,s	;  a
   2D12 E6 69         [ 5] 1460 	ldb 9,s	;  b
   2D14 BD F3 12      [ 8] 1461 	jsr ___Moveto_d; BIOS call
                           1462 ;  0 "" 2
                           1463 ;  605 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1464 	; #ENR#[448]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           1465 ;  0 "" 2
                           1466 ;--- end asm ---
   2D17 F6 CA 96      [ 5] 1467 	ldb	_blockAnimationStep	; , blockAnimationStep
   2D1A 1D            [ 2] 1468 	sex		;extendqihi2: R:b -> R:d	; ,
   2D1B ED 63         [ 6] 1469 	std	3,s	; ,
   2D1D 58            [ 2] 1470 	aslb	; 
   2D1E 49            [ 2] 1471 	rola	; 
   2D1F FE CA 92      [ 6] 1472 	ldu	_blockAnimation	; , blockAnimation
   2D22 30 CB         [ 8] 1473 	leax	d,u	;  tmp34, tmp33,
   2D24 AE 84         [ 5] 1474 	ldx	,x	;  D.2521,
                           1475 ;----- asm -----
                           1476 ;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1477 	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
                           1478 ;  0 "" 2
                           1479 ;--- end asm ---
   2D26 C6 80         [ 2] 1480 	ldb	#-128	; ,
   2D28 D7 04         [ 4] 1481 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1482 ; Applied peep: 2 (no load after store)
                           1483 ;----- asm -----
                           1484 ;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1485 	; #ENR#[55]	Draw_VLp(x);
                           1486 ;  0 "" 2
                           1487 ;--- end asm ---
                           1488 ;----- asm -----
                           1489 ;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2D2A AF 67         [ 6] 1490 	stx	7,s	;  D.2521, x
                           1491 ; ORG>;----- asm -----
                           1492 ; ORG>;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1493 ; ORG>	; $ENR$[55]	Draw_VLp(x);
                           1494 ; ORG>;  0 "" 2
                           1495 ; ORG>;--- end asm ---
                           1496 ; ORG>	stx	7,s	;  D.2521, x
                           1497 ; ORG>;----- asm -----
                           1498 ; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           1499 ; ORG>	ldx 7,s	;  x
   2D2C BD F4 10      [ 8] 1500 	jsr ___Draw_VLp; BIOS call
                           1501 ;  0 "" 2
                           1502 ;--- end asm ---
   2D2F 32 6A         [ 5] 1503 	leas	10,s	; ,,
   2D31 35 C0         [ 7] 1504 	puls	u,pc	; 
                           1505 	.globl _blockMoving
   2D33                    1506 _blockMoving:
   2D33 32 79         [ 5] 1507 	leas	-7,s	; ,,
                           1508 ;----- asm -----
                           1509 ;  697 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1510 	; #ENR#[507]	drawField();
                           1511 ;  0 "" 2
                           1512 ;--- end asm ---
   2D35 BD 2B 42      [ 8] 1513 	jsr	_drawField	; 
                           1514 ;----- asm -----
                           1515 ;  699 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1516 	; #ENR#[508]	drawBlock(0);
                           1517 ;  0 "" 2
                           1518 ;--- end asm ---
   2D38 5F            [ 2] 1519 	clrb	; 
   2D39 BD 2C C9      [ 8] 1520 	jsr	_drawBlock	; 
                           1521 ;----- asm -----
                           1522 ;  701 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1523 	; #ENR#[509]	doBlockAnimation();
                           1524 ;  0 "" 2
                           1525 ;--- end asm ---
   2D3C BD 2B 94      [ 8] 1526 	jsr	_doBlockAnimation	; 
                           1527 ;----- asm -----
                           1528 ;  703 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1529 	; #ENR#[510]	if (!blockAnimating) {
                           1530 ;  0 "" 2
                           1531 ;--- end asm ---
   2D3F 7D CA 97      [ 7] 1532 	tst	_blockAnimating	;  blockAnimating
   2D42 10 26 01 4B   [ 6] 1533 	lbne	L78	; 
                           1534 ;----- asm -----
                           1535 ;  706 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1536 	; #ENR#[512]		uint8_t c0 = isField(blockX, blockY);
                           1537 ;  0 "" 2
                           1538 ;--- end asm ---
   2D46 F6 CA 91      [ 5] 1539 	ldb	_blockY	; , blockY
   2D49 E7 E2         [ 6] 1540 	stb	,-s	; ,
   2D4B F6 CA 90      [ 5] 1541 	ldb	_blockX	; , blockX
   2D4E BD 22 DE      [ 8] 1542 	jsr	_isField	; 
   2D51 E7 62         [ 5] 1543 	stb	2,s	; , c0
                           1544 ;----- asm -----
                           1545 ;  708 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1546 	; #ENR#[513]		uint8_t c1 = isField(blockX + 1, blockY);
                           1547 ;  0 "" 2
                           1548 ;--- end asm ---
   2D53 F6 CA 90      [ 5] 1549 	ldb	_blockX	; , blockX
   2D56 5C            [ 2] 1550 	incb	; 
   2D57 E7 61         [ 5] 1551 	stb	1,s	; ,
   2D59 F6 CA 91      [ 5] 1552 	ldb	_blockY	; , blockY
   2D5C E7 E2         [ 6] 1553 	stb	,-s	; ,
   2D5E E6 62         [ 5] 1554 	ldb	2,s	; ,
   2D60 BD 22 DE      [ 8] 1555 	jsr	_isField	; 
   2D63 E7 64         [ 5] 1556 	stb	4,s	; , c1
                           1557 ;----- asm -----
                           1558 ;  710 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1559 	; #ENR#[514]		uint8_t c2 = isField(blockX, blockY + 1);
                           1560 ;  0 "" 2
                           1561 ;--- end asm ---
   2D65 F6 CA 91      [ 5] 1562 	ldb	_blockY	; , blockY
   2D68 5C            [ 2] 1563 	incb	; 
   2D69 34 04         [ 6] 1564 	pshs	b	; 
   2D6B F6 CA 90      [ 5] 1565 	ldb	_blockX	; , blockX
   2D6E BD 22 DE      [ 8] 1566 	jsr	_isField	; 
   2D71 E7 66         [ 5] 1567 	stb	6,s	; , c2
                           1568 ;----- asm -----
                           1569 ;  712 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1570 	; #ENR#[515]		char f0 = getField(blockX, blockY);
                           1571 ;  0 "" 2
                           1572 ;--- end asm ---
   2D73 F6 CA 91      [ 5] 1573 	ldb	_blockY	; , blockY
   2D76 E7 E2         [ 6] 1574 	stb	,-s	; ,
   2D78 F6 CA 90      [ 5] 1575 	ldb	_blockX	; , blockX
   2D7B BD 22 0C      [ 8] 1576 	jsr	_getField	; 
   2D7E E7 68         [ 5] 1577 	stb	8,s	; , f0
                           1578 ;----- asm -----
                           1579 ;  714 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1580 	; #ENR#[516]		char f1 = getField(blockX + 1, blockY);
                           1581 ;  0 "" 2
                           1582 ;--- end asm ---
   2D80 F6 CA 90      [ 5] 1583 	ldb	_blockX	; , blockX
   2D83 5C            [ 2] 1584 	incb	; 
   2D84 E7 64         [ 5] 1585 	stb	4,s	; ,
   2D86 F6 CA 91      [ 5] 1586 	ldb	_blockY	; , blockY
   2D89 E7 E2         [ 6] 1587 	stb	,-s	; ,
   2D8B E6 65         [ 5] 1588 	ldb	5,s	; ,
   2D8D BD 22 0C      [ 8] 1589 	jsr	_getField	; 
   2D90 E7 6A         [ 5] 1590 	stb	10,s	; , f1
                           1591 ;----- asm -----
                           1592 ;  716 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1593 	; #ENR#[517]		char f2 = getField(blockX, blockY + 1);
                           1594 ;  0 "" 2
                           1595 ;--- end asm ---
   2D92 F6 CA 91      [ 5] 1596 	ldb	_blockY	; , blockY
   2D95 5C            [ 2] 1597 	incb	; 
   2D96 34 04         [ 6] 1598 	pshs	b	; 
   2D98 F6 CA 90      [ 5] 1599 	ldb	_blockX	; , blockX
   2D9B BD 22 0C      [ 8] 1600 	jsr	_getField	; 
   2D9E E7 6C         [ 5] 1601 	stb	12,s	; , f2
                           1602 ;----- asm -----
                           1603 ;  718 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1604 	; #ENR#[518]		switch (blockOrientation) {
                           1605 ;  0 "" 2
                           1606 ;--- end asm ---
   2DA0 32 66         [ 5] 1607 	leas	6,s	; ,,
   2DA2 F6 CA 8F      [ 5] 1608 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   2DA5 C1 01         [ 2] 1609 	cmpb	#1	;cmpqi:	;  blockOrientation,
   2DA7 27 19         [ 3] 1610 	beq	L59	; 
   2DA9 25 08         [ 3] 1611 	blo	L58	; 
   2DAB C1 02         [ 2] 1612 	cmpb	#2	;cmpqi:	;  blockOrientation,
   2DAD 10 26 00 29   [ 6] 1613 	lbne	L57	; 
   2DB1 20 1C         [ 3] 1614 	bra	L79	; 
   2DB3                    1615 L58:
                           1616 ;----- asm -----
                           1617 ;  722 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1618 	; #ENR#[520]			if (!c0 || f0 == 'f') {
                           1619 ;  0 "" 2
                           1620 ;--- end asm ---
   2DB3 6D 61         [ 7] 1621 	tst	1,s	;  c0
   2DB5 27 06         [ 3] 1622 	beq	L61	; 
   2DB7 E6 64         [ 5] 1623 	ldb	4,s	; , f0
   2DB9 C1 66         [ 2] 1624 	cmpb	#102	;cmpqi:	; ,
   2DBB 26 03         [ 3] 1625 	bne	L62	; 
   2DBD                    1626 L61:
                           1627 ;----- asm -----
                           1628 ;  724 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1629 	; #ENR#[521]				startBlockFalling();
                           1630 ;  0 "" 2
                           1631 ;--- end asm ---
   2DBD BD 2B 29      [ 8] 1632 	jsr	_startBlockFalling	; 
   2DC0                    1633 L62:
                           1634 ;----- asm -----
                           1635 ;  727 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1636 	; #ENR#[523]			break;
                           1637 ;  0 "" 2
                           1638 ;--- end asm ---
   2DC0 20 18         [ 3] 1639 	bra	L57	; 
   2DC2                    1640 L59:
                           1641 ;----- asm -----
                           1642 ;  731 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1643 	; #ENR#[525]			if (!c0 || !c2) {
                           1644 ;  0 "" 2
                           1645 ;--- end asm ---
   2DC2 6D 61         [ 7] 1646 	tst	1,s	;  c0
   2DC4 27 04         [ 3] 1647 	beq	L63	; 
   2DC6 6D 63         [ 7] 1648 	tst	3,s	;  c2
   2DC8 26 03         [ 3] 1649 	bne	L64	; 
   2DCA                    1650 L63:
                           1651 ;----- asm -----
                           1652 ;  733 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1653 	; #ENR#[526]				startBlockFalling();
                           1654 ;  0 "" 2
                           1655 ;--- end asm ---
   2DCA BD 2B 29      [ 8] 1656 	jsr	_startBlockFalling	; 
   2DCD                    1657 L64:
                           1658 ;----- asm -----
                           1659 ;  736 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1660 	; #ENR#[528]			break;
                           1661 ;  0 "" 2
                           1662 ;--- end asm ---
   2DCD 20 0B         [ 3] 1663 	bra	L57	; 
   2DCF                    1664 L79:
                           1665 ;----- asm -----
                           1666 ;  740 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1667 	; #ENR#[530]			if (!c0 || ! c1) {
                           1668 ;  0 "" 2
                           1669 ;--- end asm ---
   2DCF 6D 61         [ 7] 1670 	tst	1,s	;  c0
   2DD1 27 04         [ 3] 1671 	beq	L65	; 
   2DD3 6D 62         [ 7] 1672 	tst	2,s	;  c1
   2DD5 26 03         [ 3] 1673 	bne	L66	; 
   2DD7                    1674 L65:
                           1675 ;----- asm -----
                           1676 ;  742 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1677 	; #ENR#[531]				startBlockFalling();
                           1678 ;  0 "" 2
                           1679 ;--- end asm ---
   2DD7 BD 2B 29      [ 8] 1680 	jsr	_startBlockFalling	; 
   2DDA                    1681 L66:
                           1682 ;----- asm -----
                           1683 ;  745 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1684 	; #ENR#[533]			break;
                           1685 ;  0 "" 2
                           1686 ;--- end asm ---
   2DDA                    1687 L57:
                           1688 ;----- asm -----
                           1689 ;  750 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1690 	; #ENR#[537]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
                           1691 ;  0 "" 2
                           1692 ;--- end asm ---
   2DDA 7D CA 8F      [ 7] 1693 	tst	_blockOrientation	;  blockOrientation
   2DDD 26 26         [ 3] 1694 	bne	L67	; 
   2DDF F6 CA 90      [ 5] 1695 	ldb	_blockX	; , blockX
   2DE2 F1 C8 81      [ 5] 1696 	cmpb	_endX	;cmpqi:	; , endX
   2DE5 26 1E         [ 3] 1697 	bne	L67	; 
   2DE7 F6 CA 91      [ 5] 1698 	ldb	_blockY	; , blockY
   2DEA F1 C8 82      [ 5] 1699 	cmpb	_endY	;cmpqi:	; , endY
   2DED 26 16         [ 3] 1700 	bne	L67	; 
                           1701 ;----- asm -----
                           1702 ;  752 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1703 	; #ENR#[538]			blockYOfs = 0;
                           1704 ;  0 "" 2
                           1705 ;--- end asm ---
   2DEF 7F CA 9B      [ 7] 1706 	clr	_blockYOfs	;  blockYOfs
                           1707 ;----- asm -----
                           1708 ;  754 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1709 	; #ENR#[539]			gameState = BlockMovingAtEnd;
                           1710 ;  0 "" 2
                           1711 ;--- end asm ---
   2DF2 C6 06         [ 2] 1712 	ldb	#6	; ,
   2DF4 F7 CA 9C      [ 5] 1713 	stb	_gameState	; , gameState
                           1714 ;----- asm -----
                           1715 ;  756 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1716 	; #ENR#[540]			changeMusic(levelEndMusic);
                           1717 ;  0 "" 2
                           1718 ;--- end asm ---
   2DF7 8E 53 19      [ 3] 1719 	ldx	#_levelEndMusic	; ,
   2DFA BD 29 3E      [ 8] 1720 	jsr	_changeMusic	; 
                           1721 ;----- asm -----
                           1722 ;  758 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1723 	; #ENR#[541]			*vecx = 1;
                           1724 ;  0 "" 2
                           1725 ;--- end asm ---
   2DFD C6 01         [ 2] 1726 	ldb	#1	; ,
   2DFF E7 9F C8 86   [ 9] 1727 	stb	[_vecx]	; ,* vecx
   2E03 20 0C         [ 3] 1728 	bra	L68	; 
   2E05                    1729 L67:
                           1730 ;----- asm -----
                           1731 ;  762 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1732 	; #ENR#[544]			if (gameState != BlockFalling) {
                           1733 ;  0 "" 2
                           1734 ;--- end asm ---
   2E05 F6 CA 9C      [ 5] 1735 	ldb	_gameState	; , gameState
   2E08 C1 05         [ 2] 1736 	cmpb	#5	;cmpqi:	; ,
   2E0A 27 05         [ 3] 1737 	beq	L68	; 
                           1738 ;----- asm -----
                           1739 ;  764 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1740 	; #ENR#[545]				gameState = BlockWaiting;
                           1741 ;  0 "" 2
                           1742 ;--- end asm ---
   2E0C C6 03         [ 2] 1743 	ldb	#3	; ,
   2E0E F7 CA 9C      [ 5] 1744 	stb	_gameState	; , gameState
   2E11                    1745 L68:
                           1746 ;----- asm -----
                           1747 ;  770 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1748 	; #ENR#[550]		switch (blockOrientation) {
                           1749 ;  0 "" 2
                           1750 ;--- end asm ---
   2E11 F6 CA 8F      [ 5] 1751 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   2E14 C1 01         [ 2] 1752 	cmpb	#1	;cmpqi:	;  blockOrientation,
   2E16 27 25         [ 3] 1753 	beq	L70	; 
   2E18 25 09         [ 3] 1754 	blo	L69	; 
   2E1A C1 02         [ 2] 1755 	cmpb	#2	;cmpqi:	;  blockOrientation,
   2E1C 10 26 00 71   [ 6] 1756 	lbne	L78	; 
   2E20 7E 2E 66      [ 4] 1757 	jmp	L80	; 
   2E23                    1758 L69:
                           1759 ;----- asm -----
                           1760 ;  774 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1761 	; #ENR#[552]			if (f0 == 's' || f0 == 'h') {
                           1762 ;  0 "" 2
                           1763 ;--- end asm ---
   2E23 E6 64         [ 5] 1764 	ldb	4,s	; , f0
   2E25 C1 73         [ 2] 1765 	cmpb	#115	;cmpqi:	; ,
   2E27 27 04         [ 3] 1766 	beq	L72	; 
   2E29 C1 68         [ 2] 1767 	cmpb	#104	;cmpqi:	; ,
   2E2B 26 0D         [ 3] 1768 	bne	L73	; 
   2E2D                    1769 L72:
                           1770 ;----- asm -----
                           1771 ;  776 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1772 	; #ENR#[553]				swatchSwitch(blockX, blockY);
                           1773 ;  0 "" 2
                           1774 ;--- end asm ---
   2E2D F6 CA 91      [ 5] 1775 	ldb	_blockY	; , blockY
   2E30 E7 E2         [ 6] 1776 	stb	,-s	; ,
   2E32 F6 CA 90      [ 5] 1777 	ldb	_blockX	; , blockX
   2E35 BD 27 B4      [ 8] 1778 	jsr	_swatchSwitch	; 
   2E38 32 61         [ 5] 1779 	leas	1,s	; ,,
   2E3A                    1780 L73:
                           1781 ;----- asm -----
                           1782 ;  779 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1783 	; #ENR#[555]			break;
                           1784 ;  0 "" 2
                           1785 ;--- end asm ---
   2E3A 7E 2E 91      [ 4] 1786 	jmp	L78	; 
   2E3D                    1787 L70:
                           1788 ;----- asm -----
                           1789 ;  783 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1790 	; #ENR#[557]			if (f0 == 's') {
                           1791 ;  0 "" 2
                           1792 ;--- end asm ---
   2E3D E6 64         [ 5] 1793 	ldb	4,s	; , f0
   2E3F C1 73         [ 2] 1794 	cmpb	#115	;cmpqi:	; ,
   2E41 26 0D         [ 3] 1795 	bne	L74	; 
                           1796 ;----- asm -----
                           1797 ;  785 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1798 	; #ENR#[558]				swatchSwitch(blockX, blockY);
                           1799 ;  0 "" 2
                           1800 ;--- end asm ---
   2E43 F6 CA 91      [ 5] 1801 	ldb	_blockY	; , blockY
   2E46 E7 E2         [ 6] 1802 	stb	,-s	; ,
   2E48 F6 CA 90      [ 5] 1803 	ldb	_blockX	; , blockX
   2E4B BD 27 B4      [ 8] 1804 	jsr	_swatchSwitch	; 
   2E4E 32 61         [ 5] 1805 	leas	1,s	; ,,
   2E50                    1806 L74:
                           1807 ;----- asm -----
                           1808 ;  788 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1809 	; #ENR#[560]			if (f2 == 's') {
                           1810 ;  0 "" 2
                           1811 ;--- end asm ---
   2E50 E6 66         [ 5] 1812 	ldb	6,s	; , f2
   2E52 C1 73         [ 2] 1813 	cmpb	#115	;cmpqi:	; ,
   2E54 26 0E         [ 3] 1814 	bne	L75	; 
                           1815 ;----- asm -----
                           1816 ;  790 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1817 	; #ENR#[561]				swatchSwitch(blockX, blockY + 1);
                           1818 ;  0 "" 2
                           1819 ;--- end asm ---
   2E56 F6 CA 91      [ 5] 1820 	ldb	_blockY	; , blockY
   2E59 5C            [ 2] 1821 	incb	; 
   2E5A 34 04         [ 6] 1822 	pshs	b	; 
   2E5C F6 CA 90      [ 5] 1823 	ldb	_blockX	; , blockX
   2E5F BD 27 B4      [ 8] 1824 	jsr	_swatchSwitch	; 
   2E62 32 61         [ 5] 1825 	leas	1,s	; ,,
   2E64                    1826 L75:
                           1827 ;----- asm -----
                           1828 ;  793 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1829 	; #ENR#[563]			break;
                           1830 ;  0 "" 2
                           1831 ;--- end asm ---
   2E64 20 2B         [ 3] 1832 	bra	L78	; 
   2E66                    1833 L80:
                           1834 ;----- asm -----
                           1835 ;  797 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1836 	; #ENR#[565]			if (f0 == 's') {
                           1837 ;  0 "" 2
                           1838 ;--- end asm ---
   2E66 E6 64         [ 5] 1839 	ldb	4,s	; , f0
   2E68 C1 73         [ 2] 1840 	cmpb	#115	;cmpqi:	; ,
   2E6A 26 0D         [ 3] 1841 	bne	L76	; 
                           1842 ;----- asm -----
                           1843 ;  799 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1844 	; #ENR#[566]				swatchSwitch(blockX, blockY);
                           1845 ;  0 "" 2
                           1846 ;--- end asm ---
   2E6C F6 CA 91      [ 5] 1847 	ldb	_blockY	; , blockY
   2E6F E7 E2         [ 6] 1848 	stb	,-s	; ,
   2E71 F6 CA 90      [ 5] 1849 	ldb	_blockX	; , blockX
   2E74 BD 27 B4      [ 8] 1850 	jsr	_swatchSwitch	; 
   2E77 32 61         [ 5] 1851 	leas	1,s	; ,,
   2E79                    1852 L76:
                           1853 ;----- asm -----
                           1854 ;  802 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1855 	; #ENR#[568]			if (f1 == 's') {
                           1856 ;  0 "" 2
                           1857 ;--- end asm ---
   2E79 E6 65         [ 5] 1858 	ldb	5,s	; , f1
   2E7B C1 73         [ 2] 1859 	cmpb	#115	;cmpqi:	; ,
   2E7D 26 12         [ 3] 1860 	bne	L77	; 
                           1861 ;----- asm -----
                           1862 ;  804 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1863 	; #ENR#[569]				swatchSwitch(blockX + 1, blockY);
                           1864 ;  0 "" 2
                           1865 ;--- end asm ---
   2E7F F6 CA 90      [ 5] 1866 	ldb	_blockX	; , blockX
   2E82 5C            [ 2] 1867 	incb	; 
   2E83 E7 E4         [ 4] 1868 	stb	,s	; ,
   2E85 F6 CA 91      [ 5] 1869 	ldb	_blockY	; , blockY
   2E88 E7 E2         [ 6] 1870 	stb	,-s	; ,
   2E8A E6 61         [ 5] 1871 	ldb	1,s	; ,
   2E8C BD 27 B4      [ 8] 1872 	jsr	_swatchSwitch	; 
   2E8F 32 61         [ 5] 1873 	leas	1,s	; ,,
   2E91                    1874 L77:
                           1875 ;----- asm -----
                           1876 ;  807 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1877 	; #ENR#[571]			break;
                           1878 ;  0 "" 2
                           1879 ;--- end asm ---
   2E91                    1880 L78:
   2E91 32 67         [ 5] 1881 	leas	7,s	; ,,
   2E93 39            [ 5] 1882 	rts
                           1883 	.globl _blockMovingToStart
   2E94                    1884 _blockMovingToStart:
                           1885 ;----- asm -----
                           1886 ;  611 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1887 	; #ENR#[453]	drawField();
                           1888 ;  0 "" 2
                           1889 ;--- end asm ---
   2E94 BD 2B 42      [ 8] 1890 	jsr	_drawField	; 
                           1891 ;----- asm -----
                           1892 ;  613 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1893 	; #ENR#[454]	drawBlock(blockYOfs);
                           1894 ;  0 "" 2
                           1895 ;--- end asm ---
   2E97 F6 CA 9B      [ 5] 1896 	ldb	_blockYOfs	; , blockYOfs
   2E9A BD 2C C9      [ 8] 1897 	jsr	_drawBlock	; 
                           1898 ;----- asm -----
                           1899 ;  615 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1900 	; #ENR#[455]	blockYOfs++;
                           1901 ;  0 "" 2
                           1902 ;--- end asm ---
   2E9D F6 CA 9B      [ 5] 1903 	ldb	_blockYOfs	;  blockYOfs.38, blockYOfs
   2EA0 5C            [ 2] 1904 	incb	;  blockYOfs.38
   2EA1 F7 CA 9B      [ 5] 1905 	stb	_blockYOfs	;  blockYOfs.38, blockYOfs
                           1906 ;----- asm -----
                           1907 ;  617 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1908 	; #ENR#[456]	if (blockYOfs == 0) {
                           1909 ;  0 "" 2
                           1910 ;--- end asm ---
   2EA4 5D            [ 2] 1911 	tstb	;  blockYOfs.38
   2EA5 26 05         [ 3] 1912 	bne	L83	; 
                           1913 ;----- asm -----
                           1914 ;  619 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1915 	; #ENR#[457]		gameState = BlockWaiting;
                           1916 ;  0 "" 2
                           1917 ;--- end asm ---
   2EA7 C6 03         [ 2] 1918 	ldb	#3	; ,
   2EA9 F7 CA 9C      [ 5] 1919 	stb	_gameState	; , gameState
   2EAC                    1920 L83:
   2EAC 39            [ 5] 1921 	rts
                           1922 	.globl _sendCommand
   2EAD                    1923 _sendCommand:
   2EAD 32 7E         [ 5] 1924 	leas	-2,s	; ,,
   2EAF E7 E4         [ 4] 1925 	stb	,s	;  cmd, cmd
                           1926 ;----- asm -----
                           1927 ;  215 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1928 	; #ENR#[205]	uint8_t result;
                           1929 ;  0 "" 2
                           1930 ;  217 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1931 	; #ENR#[206]	picWrite('V');
                           1932 ;  0 "" 2
                           1933 ;--- end asm ---
   2EB1 C6 56         [ 2] 1934 	ldb	#86	; ,
   2EB3 BD 21 55      [ 8] 1935 	jsr	_picWrite	; 
                           1936 ;----- asm -----
                           1937 ;  219 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1938 	; #ENR#[207]	picWrite(cmd);
                           1939 ;  0 "" 2
                           1940 ;--- end asm ---
   2EB6 E6 E4         [ 4] 1941 	ldb	,s	; , cmd
   2EB8 BD 21 55      [ 8] 1942 	jsr	_picWrite	; 
                           1943 ;----- asm -----
                           1944 ;  221 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1945 	; #ENR#[208]	picWrite(arg);
                           1946 ;  0 "" 2
                           1947 ;--- end asm ---
   2EBB E6 64         [ 5] 1948 	ldb	4,s	; , arg
   2EBD BD 21 55      [ 8] 1949 	jsr	_picWrite	; 
                           1950 ;----- asm -----
                           1951 ;  223 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1952 	; #ENR#[209]	result = picRead();
                           1953 ;  0 "" 2
                           1954 ;--- end asm ---
   2EC0 BD 21 A1      [ 8] 1955 	jsr	_picRead	; 
   2EC3 E7 61         [ 5] 1956 	stb	1,s	; , result
                           1957 ;----- asm -----
                           1958 ;  225 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1959 	; #ENR#[210]	delay10ms();
                           1960 ;  0 "" 2
                           1961 ;--- end asm ---
   2EC5 BD 21 FE      [ 8] 1962 	jsr	_delay10ms	; 
                           1963 ;----- asm -----
                           1964 ;  227 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1965 	; #ENR#[211]	return result;
                           1966 ;  0 "" 2
                           1967 ;--- end asm ---
   2EC8 E6 61         [ 5] 1968 	ldb	1,s	; , result
   2ECA 32 62         [ 5] 1969 	leas	2,s	; ,,
   2ECC 39            [ 5] 1970 	rts
                           1971 	.globl _readEeprom
   2ECD                    1972 _readEeprom:
                           1973 ;----- asm -----
                           1974 ;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1975 	; #ENR#[224]	if (picAvailable) {
                           1976 ;  0 "" 2
                           1977 ;--- end asm ---
   2ECD 7D CA 8E      [ 7] 1978 	tst	_picAvailable	;  picAvailable
   2ED0 27 0B         [ 3] 1979 	beq	L87	; 
                           1980 ;----- asm -----
                           1981 ;  246 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1982 	; #ENR#[225]		return sendCommand(CMD_EEPROM_READ, address);
                           1983 ;  0 "" 2
                           1984 ;--- end asm ---
   2ED2 34 04         [ 6] 1985 	pshs	b	;  address
   2ED4 C6 04         [ 2] 1986 	ldb	#4	; ,
   2ED6 BD 2E AD      [ 8] 1987 	jsr	_sendCommand	; 
   2ED9 32 61         [ 5] 1988 	leas	1,s	; ,,
   2EDB 20 02         [ 3] 1989 	bra	L88	; 
   2EDD                    1990 L87:
                           1991 ;----- asm -----
                           1992 ;  249 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1993 	; #ENR#[227]		return 0xff;
                           1994 ;  0 "" 2
                           1995 ;--- end asm ---
   2EDD C6 FF         [ 2] 1996 	ldb	#-1	;  D.2415,
   2EDF                    1997 L88:
   2EDF 39            [ 5] 1998 	rts
                           1999 	.globl _startLevel
   2EE0                    2000 _startLevel:
   2EE0 32 7E         [ 5] 2001 	leas	-2,s	; ,,
                           2002 ;----- asm -----
                           2003 ;  507 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2004 	; #ENR#[373]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                           2005 ;  0 "" 2
                           2006 ;--- end asm ---
   2EE2 F6 C8 83      [ 5] 2007 	ldb	_levelNumber	;  tmp30, levelNumber
   2EE5 58            [ 2] 2008 	aslb	;  tmp30
   2EE6 BD 2E CD      [ 8] 2009 	jsr	_readEeprom	; 
   2EE9 4F            [ 2] 2010 	clra		;zero_extendqihi: R:b -> R:d	;  D.2494, D.2494
   2EEA FD CA 8C      [ 6] 2011 	std	_levelHighscore	;  D.2494, levelHighscore
                           2012 ;----- asm -----
                           2013 ;  509 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2014 	; #ENR#[374]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                           2015 ;  0 "" 2
                           2016 ;--- end asm ---
   2EED F6 C8 83      [ 5] 2017 	ldb	_levelNumber	;  tmp32, levelNumber
   2EF0 58            [ 2] 2018 	aslb	;  tmp32
   2EF1 5C            [ 2] 2019 	incb	;  tmp33
   2EF2 BD 2E CD      [ 8] 2020 	jsr	_readEeprom	; 
   2EF5 1F 98         [ 6] 2021 	tfr	b,a	; ,
   2EF7 5F            [ 2] 2022 	clrb	; 
   2EF8 BA CA 8C      [ 5] 2023 	ora	_levelHighscore	; , levelHighscore
   2EFB FA CA 8D      [ 5] 2024 	orb	_levelHighscore+1	; , levelHighscore
   2EFE FD CA 8C      [ 6] 2025 	std	_levelHighscore	;  levelHighscore.27, levelHighscore
                           2026 ;----- asm -----
                           2027 ;  511 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2028 	; #ENR#[375]	if (levelHighscore == 0) levelHighscore = 999;
                           2029 ;  0 "" 2
                           2030 ;--- end asm ---
   2F01 10 83 00 00   [ 5] 2031 	cmpd	#0	;  levelHighscore.27
   2F05 26 06         [ 3] 2032 	bne	L91	; 
   2F07 8E 03 E7      [ 3] 2033 	ldx	#999	; ,
   2F0A BF CA 8C      [ 6] 2034 	stx	_levelHighscore	; , levelHighscore
   2F0D                    2035 L91:
                           2036 ;----- asm -----
                           2037 ;  513 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2038 	; #ENR#[376]    level = levels[levelNumber];
                           2039 ;  0 "" 2
                           2040 ;--- end asm ---
   2F0D F6 C8 83      [ 5] 2041 	ldb	_levelNumber	; , levelNumber
   2F10 4F            [ 2] 2042 	clra		;zero_extendqihi: R:b -> R:d	; ,
   2F11 ED E4         [ 5] 2043 	std	,s	; ,
   2F13 58            [ 2] 2044 	aslb	; 
   2F14 49            [ 2] 2045 	rola	; 
   2F15 1F 01         [ 6] 2046 	tfr	d,x	; , tmp39
   2F17 AE 89 64 48   [ 9] 2047 	ldx	_levels,x	; , levels
   2F1B BF C8 8B      [ 6] 2048 	stx	_level	; , level
                           2049 ;----- asm -----
                           2050 ;  515 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2051 	; #ENR#[377]	initSwatches();
                           2052 ;  0 "" 2
                           2053 ;--- end asm ---
   2F1E BD 24 92      [ 8] 2054 	jsr	_initSwatches	; 
                           2055 ;----- asm -----
                           2056 ;  517 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2057 	; #ENR#[378]	initLevel();
                           2058 ;  0 "" 2
                           2059 ;--- end asm ---
   2F21 BD 27 AA      [ 8] 2060 	jsr	_initLevel	; 
                           2061 ;----- asm -----
                           2062 ;  519 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2063 	; #ENR#[379]	blockX = level->start.x;
                           2064 ;  0 "" 2
                           2065 ;--- end asm ---
   2F24 BE C8 8B      [ 6] 2066 	ldx	_level	;  level, level
   2F27 E6 02         [ 5] 2067 	ldb	2,x	; , <variable>.start.x
   2F29 F7 CA 90      [ 5] 2068 	stb	_blockX	; , blockX
                           2069 ;----- asm -----
                           2070 ;  521 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2071 	; #ENR#[380]	blockY = level->start.y;
                           2072 ;  0 "" 2
                           2073 ;--- end asm ---
   2F2C E6 03         [ 5] 2074 	ldb	3,x	; , <variable>.start.y
   2F2E F7 CA 91      [ 5] 2075 	stb	_blockY	; , blockY
                           2076 ;----- asm -----
                           2077 ;  523 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2078 	; #ENR#[381]	blockAnimation = height2FallingLeft;
                           2079 ;  0 "" 2
                           2080 ;--- end asm ---
   2F31 8E 51 D9      [ 3] 2081 	ldx	#_height2FallingLeft	; ,
   2F34 BF CA 92      [ 6] 2082 	stx	_blockAnimation	; , blockAnimation
                           2083 ;----- asm -----
                           2084 ;  525 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2085 	; #ENR#[382]	blockAnimationStep = 0;
                           2086 ;  0 "" 2
                           2087 ;--- end asm ---
   2F37 7F CA 96      [ 7] 2088 	clr	_blockAnimationStep	;  blockAnimationStep
                           2089 ;----- asm -----
                           2090 ;  527 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2091 	; #ENR#[383]	blockAnimating = 0;
                           2092 ;  0 "" 2
                           2093 ;--- end asm ---
   2F3A 7F CA 97      [ 7] 2094 	clr	_blockAnimating	;  blockAnimating
                           2095 ;----- asm -----
                           2096 ;  529 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2097 	; #ENR#[384]	blockOrientation = Standing;
                           2098 ;  0 "" 2
                           2099 ;--- end asm ---
   2F3D 7F CA 8F      [ 7] 2100 	clr	_blockOrientation	;  blockOrientation
                           2101 ;----- asm -----
                           2102 ;  531 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2103 	; #ENR#[385]	blockYOfs = -30;
                           2104 ;  0 "" 2
                           2105 ;--- end asm ---
   2F40 C6 E2         [ 2] 2106 	ldb	#-30	; ,
   2F42 F7 CA 9B      [ 5] 2107 	stb	_blockYOfs	; , blockYOfs
                           2108 ;----- asm -----
                           2109 ;  533 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2110 	; #ENR#[386]	gameState = BlockMovingToStart;
                           2111 ;  0 "" 2
                           2112 ;--- end asm ---
   2F45 C6 02         [ 2] 2113 	ldb	#2	; ,
   2F47 F7 CA 9C      [ 5] 2114 	stb	_gameState	; , gameState
                           2115 ;----- asm -----
                           2116 ;  535 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2117 	; #ENR#[387]	changeMusic(startMusic);
                           2118 ;  0 "" 2
                           2119 ;--- end asm ---
   2F4A 8E 52 F9      [ 3] 2120 	ldx	#_startMusic	; ,
   2F4D BD 29 3E      [ 8] 2121 	jsr	_changeMusic	; 
                           2122 ;----- asm -----
                           2123 ;  537 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2124 	; #ENR#[388]	*vecx = 2;
                           2125 ;  0 "" 2
                           2126 ;--- end asm ---
   2F50 C6 02         [ 2] 2127 	ldb	#2	; ,
   2F52 E7 9F C8 86   [ 9] 2128 	stb	[_vecx]	; ,* vecx
                           2129 ;----- asm -----
                           2130 ;  539 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2131 	; #ENR#[389]	moveCount = 0;
                           2132 ;  0 "" 2
                           2133 ;--- end asm ---
   2F56 CC 00 00      [ 3] 2134 	ldd	#0	; ,
   2F59 FD CA 8A      [ 6] 2135 	std	_moveCount	; , moveCount
                           2136 ;----- asm -----
                           2137 ;  541 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2138 	; #ENR#[390]	updateInfoText();
                           2139 ;  0 "" 2
                           2140 ;--- end asm ---
   2F5C BD 29 21      [ 8] 2141 	jsr	_updateInfoText	; 
   2F5F 32 62         [ 5] 2142 	leas	2,s	; ,,
   2F61 39            [ 5] 2143 	rts
                           2144 	.globl _blockFalling
   2F62                    2145 _blockFalling:
   2F62 32 7F         [ 5] 2146 	leas	-1,s	; ,,
                           2147 ;----- asm -----
                           2148 ;  816 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2149 	; #ENR#[579]	drawField();
                           2150 ;  0 "" 2
                           2151 ;--- end asm ---
   2F64 BD 2B 42      [ 8] 2152 	jsr	_drawField	; 
                           2153 ;----- asm -----
                           2154 ;  818 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2155 	; #ENR#[580]	blockYOfs++;
                           2156 ;  0 "" 2
                           2157 ;--- end asm ---
   2F67 F6 CA 9B      [ 5] 2158 	ldb	_blockYOfs	; , blockYOfs
   2F6A 5C            [ 2] 2159 	incb	; 
   2F6B E7 E4         [ 4] 2160 	stb	,s	; , blockYOfs.67
   2F6D F7 CA 9B      [ 5] 2161 	stb	_blockYOfs	; , blockYOfs
                           2162 ;----- asm -----
                           2163 ;  820 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2164 	; #ENR#[581]	if (blockYOfs < 12) {
                           2165 ;  0 "" 2
                           2166 ;--- end asm ---
   2F70 C1 0B         [ 2] 2167 	cmpb	#11	;cmpqi:	; ,
   2F72 2E 0A         [ 3] 2168 	bgt	L94	; 
                           2169 ;----- asm -----
                           2170 ;  822 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2171 	; #ENR#[582]		drawBlock(-blockYOfs*blockYOfs);
                           2172 ;  0 "" 2
                           2173 ;--- end asm ---
   2F74 50            [ 2] 2174 	negb	;  tmp28
   2F75 A6 E4         [ 4] 2175 	lda	,s	;mulqihi3	;  blockYOfs.67
   2F77 3D            [11] 2176 	mul
                           2177 		;movlsbqihi: D->B
   2F78 BD 2C C9      [ 8] 2178 	jsr	_drawBlock	; 
                           2179 ;----- asm -----
                           2180 ;  824 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2181 	; #ENR#[583]		doBlockAnimation();
                           2182 ;  0 "" 2
                           2183 ;--- end asm ---
   2F7B BD 2B 94      [ 8] 2184 	jsr	_doBlockAnimation	; 
   2F7E                    2185 L94:
                           2186 ;----- asm -----
                           2187 ;  827 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2188 	; #ENR#[585]	if (blockYOfs == 50) {
                           2189 ;  0 "" 2
                           2190 ;--- end asm ---
   2F7E F6 CA 9B      [ 5] 2191 	ldb	_blockYOfs	; , blockYOfs
   2F81 C1 32         [ 2] 2192 	cmpb	#50	;cmpqi:	; ,
   2F83 26 03         [ 3] 2193 	bne	L96	; 
                           2194 ;----- asm -----
                           2195 ;  829 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2196 	; #ENR#[586]		startLevel();
                           2197 ;  0 "" 2
                           2198 ;--- end asm ---
   2F85 BD 2E E0      [ 8] 2199 	jsr	_startLevel	; 
   2F88                    2200 L96:
   2F88 32 61         [ 5] 2201 	leas	1,s	; ,,
   2F8A 39            [ 5] 2202 	rts
                           2203 	.globl _blockWaiting
   2F8B                    2204 _blockWaiting:
                           2205 ;----- asm -----
                           2206 ;  626 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2207 	; #ENR#[463]	drawField();
                           2208 ;  0 "" 2
                           2209 ;--- end asm ---
   2F8B BD 2B 42      [ 8] 2210 	jsr	_drawField	; 
                           2211 ;----- asm -----
                           2212 ;  628 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2213 	; #ENR#[464]	drawBlock(0);
                           2214 ;  0 "" 2
                           2215 ;--- end asm ---
   2F8E 5F            [ 2] 2216 	clrb	; 
   2F8F BD 2C C9      [ 8] 2217 	jsr	_drawBlock	; 
                           2218 ;----- asm -----
                           2219 ;  630 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2220 	; #ENR#[465]	joybit();
                           2221 ;  0 "" 2
                           2222 ;  2354 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2F92 BD F1 F8      [ 8] 2223 	jsr ___Joy_Digital; BIOS call
                           2224 ;  0 "" 2
                           2225 ;  632 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2226 	; #ENR#[466]	if (pot0 < -10) {
                           2227 ;  0 "" 2
                           2228 ;--- end asm ---
   2F95 F6 C8 1B      [ 5] 2229 	ldb	-14309	;  D.2529,
   2F98 C1 F6         [ 2] 2230 	cmpb	#-10	;cmpqi:	;  D.2529,
   2F9A 2C 0C         [ 3] 2231 	bge	L98	; 
                           2232 ;----- asm -----
                           2233 ;  634 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2234 	; #ENR#[467]		moveBlock(Left);
                           2235 ;  0 "" 2
                           2236 ;--- end asm ---
   2F9C 5F            [ 2] 2237 	clrb	; 
   2F9D BD 29 47      [ 8] 2238 	jsr	_moveBlock	; 
                           2239 ;----- asm -----
                           2240 ;  636 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2241 	; #ENR#[468]		gameState = BlockMoving;
                           2242 ;  0 "" 2
                           2243 ;--- end asm ---
   2FA0 C6 04         [ 2] 2244 	ldb	#4	; ,
   2FA2 F7 CA 9C      [ 5] 2245 	stb	_gameState	; , gameState
   2FA5 7E 2F DF      [ 4] 2246 	jmp	L99	; 
   2FA8                    2247 L98:
   2FA8 F6 C8 1B      [ 5] 2248 	ldb	-14309	;  D.2530,
   2FAB C1 0A         [ 2] 2249 	cmpb	#10	;cmpqi:	;  D.2530,
   2FAD 2F 0C         [ 3] 2250 	ble	L100	; 
                           2251 ;----- asm -----
                           2252 ;  639 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2253 	; #ENR#[470]		moveBlock(Right);
                           2254 ;  0 "" 2
                           2255 ;--- end asm ---
   2FAF C6 02         [ 2] 2256 	ldb	#2	; ,
   2FB1 BD 29 47      [ 8] 2257 	jsr	_moveBlock	; 
                           2258 ;----- asm -----
                           2259 ;  641 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2260 	; #ENR#[471]		gameState = BlockMoving;
                           2261 ;  0 "" 2
                           2262 ;--- end asm ---
   2FB4 C6 04         [ 2] 2263 	ldb	#4	; ,
   2FB6 F7 CA 9C      [ 5] 2264 	stb	_gameState	; , gameState
   2FB9 20 24         [ 3] 2265 	bra	L99	; 
   2FBB                    2266 L100:
   2FBB F6 C8 1C      [ 5] 2267 	ldb	-14308	;  D.2532,
   2FBE C1 F6         [ 2] 2268 	cmpb	#-10	;cmpqi:	;  D.2532,
   2FC0 2C 0C         [ 3] 2269 	bge	L101	; 
                           2270 ;----- asm -----
                           2271 ;  644 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2272 	; #ENR#[473]		moveBlock(Down);
                           2273 ;  0 "" 2
                           2274 ;--- end asm ---
   2FC2 C6 03         [ 2] 2275 	ldb	#3	; ,
   2FC4 BD 29 47      [ 8] 2276 	jsr	_moveBlock	; 
                           2277 ;----- asm -----
                           2278 ;  646 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2279 	; #ENR#[474]		gameState = BlockMoving;
                           2280 ;  0 "" 2
                           2281 ;--- end asm ---
   2FC7 C6 04         [ 2] 2282 	ldb	#4	; ,
   2FC9 F7 CA 9C      [ 5] 2283 	stb	_gameState	; , gameState
   2FCC 20 11         [ 3] 2284 	bra	L99	; 
   2FCE                    2285 L101:
   2FCE F6 C8 1C      [ 5] 2286 	ldb	-14308	;  D.2533,
   2FD1 C1 0A         [ 2] 2287 	cmpb	#10	;cmpqi:	;  D.2533,
   2FD3 2F 0A         [ 3] 2288 	ble	L99	; 
                           2289 ;----- asm -----
                           2290 ;  649 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2291 	; #ENR#[476]		moveBlock(Up);
                           2292 ;  0 "" 2
                           2293 ;--- end asm ---
   2FD5 C6 01         [ 2] 2294 	ldb	#1	; ,
   2FD7 BD 29 47      [ 8] 2295 	jsr	_moveBlock	; 
                           2296 ;----- asm -----
                           2297 ;  651 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2298 	; #ENR#[477]		gameState = BlockMoving;
                           2299 ;  0 "" 2
                           2300 ;--- end asm ---
   2FDA C6 04         [ 2] 2301 	ldb	#4	; ,
   2FDC F7 CA 9C      [ 5] 2302 	stb	_gameState	; , gameState
   2FDF                    2303 L99:
                           2304 ;----- asm -----
                           2305 ;  654 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2306 	; #ENR#[479]	if (gameState == BlockMoving) {
                           2307 ;  0 "" 2
                           2308 ;--- end asm ---
   2FDF F6 CA 9C      [ 5] 2309 	ldb	_gameState	; , gameState
   2FE2 C1 04         [ 2] 2310 	cmpb	#4	;cmpqi:	; ,
   2FE4 26 0C         [ 3] 2311 	bne	L102	; 
                           2312 ;----- asm -----
                           2313 ;  656 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2314 	; #ENR#[480]		changeMusic(movingMusic);
                           2315 ;  0 "" 2
                           2316 ;--- end asm ---
   2FE6 8E 53 53      [ 3] 2317 	ldx	#_movingMusic	; ,
   2FE9 BD 29 3E      [ 8] 2318 	jsr	_changeMusic	; 
                           2319 ;----- asm -----
                           2320 ;  658 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2321 	; #ENR#[481]		*vecx = 3;
                           2322 ;  0 "" 2
                           2323 ;--- end asm ---
   2FEC C6 03         [ 2] 2324 	ldb	#3	; ,
   2FEE E7 9F C8 86   [ 9] 2325 	stb	[_vecx]	; ,* vecx
   2FF2                    2326 L102:
                           2327 ;----- asm -----
                           2328 ;  662 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2329 	; #ENR#[484]    	Read_Btns();
                           2330 ;  0 "" 2
                           2331 ;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   2FF2 BD F1 BA      [ 8] 2332 	jsr ___Read_Btns; BIOS call
                           2333 ;  0 "" 2
                           2334 ;  664 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2335 	; #ENR#[485]    	if (Vec_Buttons & 1) {
                           2336 ;  0 "" 2
                           2337 ;--- end asm ---
   2FF5 F6 C8 11      [ 5] 2338 	ldb	_Vec_Buttons	; , Vec_Buttons
   2FF8 C5 01         [ 2] 2339 	bitb	#1	; ,
   2FFA 27 12         [ 3] 2340 	beq	L105	; 
                           2341 ;----- asm -----
                           2342 ;  666 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2343 	; #ENR#[486]		levelNumber++;
                           2344 ;  0 "" 2
                           2345 ;--- end asm ---
   2FFC F6 C8 83      [ 5] 2346 	ldb	_levelNumber	;  levelNumber.44, levelNumber
   2FFF 5C            [ 2] 2347 	incb	;  levelNumber.44
   3000 F7 C8 83      [ 5] 2348 	stb	_levelNumber	;  levelNumber.44, levelNumber
                           2349 ;----- asm -----
                           2350 ;  668 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2351 	; #ENR#[487]		if (levelNumber >= levelCount) levelNumber = 0;
                           2352 ;  0 "" 2
                           2353 ;--- end asm ---
   3003 F1 53 71      [ 5] 2354 	cmpb	_levelCount	;cmpqi:	;  levelNumber.44, levelCount
   3006 25 03         [ 3] 2355 	blo	L104	; 
   3008 7F C8 83      [ 7] 2356 	clr	_levelNumber	;  levelNumber
   300B                    2357 L104:
                           2358 ;----- asm -----
                           2359 ;  670 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2360 	; #ENR#[488]    		startLevel();
                           2361 ;  0 "" 2
                           2362 ;--- end asm ---
   300B BD 2E E0      [ 8] 2363 	jsr	_startLevel	; 
   300E                    2364 L105:
   300E 39            [ 5] 2365 	rts
   300F                    2366 LC0:
   300F 4D                 2367 	.byte	0x4D
   3010 41                 2368 	.byte	0x41
   3011 49                 2369 	.byte	0x49
   3012 4E                 2370 	.byte	0x4E
   3013 20                 2371 	.byte	0x20
   3014 4D                 2372 	.byte	0x4D
   3015 45                 2373 	.byte	0x45
   3016 4E                 2374 	.byte	0x4E
   3017 55                 2375 	.byte	0x55
   3018 80                 2376 	.byte	0x80
   3019 00                 2377 	.byte	0x00
   301A                    2378 LC1:
   301A 31                 2379 	.byte	0x31
   301B 20                 2380 	.byte	0x20
   301C 53                 2381 	.byte	0x53
   301D 54                 2382 	.byte	0x54
   301E 41                 2383 	.byte	0x41
   301F 52                 2384 	.byte	0x52
   3020 54                 2385 	.byte	0x54
   3021 20                 2386 	.byte	0x20
   3022 47                 2387 	.byte	0x47
   3023 41                 2388 	.byte	0x41
   3024 4D                 2389 	.byte	0x4D
   3025 45                 2390 	.byte	0x45
   3026 80                 2391 	.byte	0x80
   3027 00                 2392 	.byte	0x00
   3028                    2393 LC2:
   3028 32                 2394 	.byte	0x32
   3029 20                 2395 	.byte	0x20
   302A 43                 2396 	.byte	0x43
   302B 4C                 2397 	.byte	0x4C
   302C 45                 2398 	.byte	0x45
   302D 41                 2399 	.byte	0x41
   302E 52                 2400 	.byte	0x52
   302F 20                 2401 	.byte	0x20
   3030 48                 2402 	.byte	0x48
   3031 49                 2403 	.byte	0x49
   3032 47                 2404 	.byte	0x47
   3033 48                 2405 	.byte	0x48
   3034 53                 2406 	.byte	0x53
   3035 43                 2407 	.byte	0x43
   3036 4F                 2408 	.byte	0x4F
   3037 52                 2409 	.byte	0x52
   3038 45                 2410 	.byte	0x45
   3039 80                 2411 	.byte	0x80
   303A 00                 2412 	.byte	0x00
   303B                    2413 LC3:
   303B 33                 2414 	.byte	0x33
   303C 20                 2415 	.byte	0x20
   303D 42                 2416 	.byte	0x42
   303E 41                 2417 	.byte	0x41
   303F 4E                 2418 	.byte	0x4E
   3040 4B                 2419 	.byte	0x4B
   3041 49                 2420 	.byte	0x49
   3042 4E                 2421 	.byte	0x4E
   3043 47                 2422 	.byte	0x47
   3044 20                 2423 	.byte	0x20
   3045 54                 2424 	.byte	0x54
   3046 45                 2425 	.byte	0x45
   3047 53                 2426 	.byte	0x53
   3048 54                 2427 	.byte	0x54
   3049 80                 2428 	.byte	0x80
   304A 00                 2429 	.byte	0x00
                           2430 	.globl _mainMenu
   304B                    2431 _mainMenu:
   304B 34 40         [ 6] 2432 	pshs	u	; 
   304D 32 7C         [ 5] 2433 	leas	-4,s	; ,,
                           2434 ;----- asm -----
                           2435 ;  862 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2436 	; #ENR#[608]	Read_Btns();
                           2437 ;  0 "" 2
                           2438 ;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   304F BD F1 BA      [ 8] 2439 	jsr ___Read_Btns; BIOS call
                           2440 ;  0 "" 2
                           2441 ;  864 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2442 	; #ENR#[609]    Intensity_a(0x5f);
                           2443 ;  0 "" 2
                           2444 ;--- end asm ---
   3052 C6 5F         [ 2] 2445 	ldb	#95	; ,
   3054 E7 62         [ 5] 2446 	stb	2,s	; , a
                           2447 ;----- asm -----
                           2448 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3056 A6 62         [ 5] 2449 	lda 2,s	;  a
   3058 BD F2 AB      [ 8] 2450 	jsr ___Intensity_a; BIOS call
                           2451 ;  0 "" 2
                           2452 ;  866 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2453 	; #ENR#[610]    Vec_Text_Width = 90;
                           2454 ;  0 "" 2
                           2455 ;--- end asm ---
   305B C6 5A         [ 2] 2456 	ldb	#90	; ,
   305D F7 C8 2B      [ 5] 2457 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2458 ;----- asm -----
                           2459 ;  868 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2460 	; #ENR#[611]    Print_Str_d(100, -70, "MAIN MENU�");
                           2461 ;  0 "" 2
                           2462 ;--- end asm ---
   3060 CB 0A         [ 2] 2463 	addb	#10	; ,
   3062 E7 62         [ 5] 2464 	stb	2,s	; , a
   3064 C6 BA         [ 2] 2465 	ldb	#-70	; ,
   3066 E7 63         [ 5] 2466 	stb	3,s	; , b
   3068 8E 30 0F      [ 3] 2467 	ldx	#LC0	; ,
   306B AF E4         [ 5] 2468 	stx	,s	; , u
                           2469 ;----- asm -----
                           2470 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   306D A6 62         [ 5] 2471 	lda 2,s	;  a
   306F E6 63         [ 5] 2472 	ldb 3,s	;  b
   3071 EE E4         [ 5] 2473 	ldu ,s	;  u
   3073 BD F3 7A      [ 8] 2474 	jsr ___Print_Str_d; BIOS call
                           2475 ;  0 "" 2
                           2476 ;  870 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2477 	; #ENR#[612]    Print_Str_d(50, -110, "1 START GAME�");
                           2478 ;  0 "" 2
                           2479 ;--- end asm ---
   3076 C6 32         [ 2] 2480 	ldb	#50	; ,
   3078 E7 63         [ 5] 2481 	stb	3,s	; , a
   307A C6 92         [ 2] 2482 	ldb	#-110	; ,
   307C E7 62         [ 5] 2483 	stb	2,s	; , b
   307E 8E 30 1A      [ 3] 2484 	ldx	#LC1	; ,
   3081 AF E4         [ 5] 2485 	stx	,s	; , u
                           2486 ;----- asm -----
                           2487 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3083 A6 63         [ 5] 2488 	lda 3,s	;  a
   3085 E6 62         [ 5] 2489 	ldb 2,s	;  b
   3087 EE E4         [ 5] 2490 	ldu ,s	;  u
   3089 BD F3 7A      [ 8] 2491 	jsr ___Print_Str_d; BIOS call
                           2492 ;  0 "" 2
                           2493 ;  872 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2494 	; #ENR#[613]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
                           2495 ;  0 "" 2
                           2496 ;--- end asm ---
   308C C6 14         [ 2] 2497 	ldb	#20	; ,
   308E E7 62         [ 5] 2498 	stb	2,s	; , a
   3090 C6 92         [ 2] 2499 	ldb	#-110	; ,
   3092 E7 63         [ 5] 2500 	stb	3,s	; , b
   3094 8E 30 28      [ 3] 2501 	ldx	#LC2	; ,
   3097 AF E4         [ 5] 2502 	stx	,s	; , u
                           2503 ;----- asm -----
                           2504 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3099 A6 62         [ 5] 2505 	lda 2,s	;  a
   309B E6 63         [ 5] 2506 	ldb 3,s	;  b
   309D EE E4         [ 5] 2507 	ldu ,s	;  u
   309F BD F3 7A      [ 8] 2508 	jsr ___Print_Str_d; BIOS call
                           2509 ;  0 "" 2
                           2510 ;  874 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2511 	; #ENR#[614]    Print_Str_d(-10, -110, "3 BANKING TEST�");
                           2512 ;  0 "" 2
                           2513 ;--- end asm ---
   30A2 C6 F6         [ 2] 2514 	ldb	#-10	; ,
   30A4 E7 63         [ 5] 2515 	stb	3,s	; , a
   30A6 C6 92         [ 2] 2516 	ldb	#-110	; ,
   30A8 E7 62         [ 5] 2517 	stb	2,s	; , b
   30AA 8E 30 3B      [ 3] 2518 	ldx	#LC3	; ,
   30AD AF E4         [ 5] 2519 	stx	,s	; , u
                           2520 ;----- asm -----
                           2521 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   30AF A6 63         [ 5] 2522 	lda 3,s	;  a
   30B1 E6 62         [ 5] 2523 	ldb 2,s	;  b
   30B3 EE E4         [ 5] 2524 	ldu ,s	;  u
   30B5 BD F3 7A      [ 8] 2525 	jsr ___Print_Str_d; BIOS call
                           2526 ;  0 "" 2
                           2527 ;  876 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2528 	; #ENR#[615]	if (Vec_Buttons & 1) {
                           2529 ;  0 "" 2
                           2530 ;--- end asm ---
   30B8 F6 C8 11      [ 5] 2531 	ldb	_Vec_Buttons	; , Vec_Buttons
   30BB C5 01         [ 2] 2532 	bitb	#1	; ,
   30BD 27 03         [ 3] 2533 	beq	L107	; 
                           2534 ;----- asm -----
                           2535 ;  878 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2536 	; #ENR#[616]		startLevel();
                           2537 ;  0 "" 2
                           2538 ;--- end asm ---
   30BF BD 2E E0      [ 8] 2539 	jsr	_startLevel	; 
   30C2                    2540 L107:
                           2541 ;----- asm -----
                           2542 ;  881 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2543 	; #ENR#[618]	if (Vec_Buttons & 2) {
                           2544 ;  0 "" 2
                           2545 ;--- end asm ---
   30C2 F6 C8 11      [ 5] 2546 	ldb	_Vec_Buttons	; , Vec_Buttons
   30C5 C5 02         [ 2] 2547 	bitb	#2	; ,
   30C7 27 05         [ 3] 2548 	beq	L108	; 
                           2549 ;----- asm -----
                           2550 ;  883 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2551 	; #ENR#[619]		gameState = ClearMenu;
                           2552 ;  0 "" 2
                           2553 ;--- end asm ---
   30C9 C6 01         [ 2] 2554 	ldb	#1	; ,
   30CB F7 CA 9C      [ 5] 2555 	stb	_gameState	; , gameState
   30CE                    2556 L108:
                           2557 ;----- asm -----
                           2558 ;  886 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2559 	; #ENR#[621]	if (Vec_Buttons & 4) {
                           2560 ;  0 "" 2
                           2561 ;--- end asm ---
   30CE F6 C8 11      [ 5] 2562 	ldb	_Vec_Buttons	; , Vec_Buttons
   30D1 C5 04         [ 2] 2563 	bitb	#4	; ,
   30D3 27 0E         [ 3] 2564 	beq	L110	; 
                           2565 ;----- asm -----
                           2566 ;  888 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2567 	; #ENR#[622]		sendCommand(CMD_SET_BANK, 1);
                           2568 ;  0 "" 2
                           2569 ;--- end asm ---
   30D5 C6 01         [ 2] 2570 	ldb	#1	; ,
   30D7 E7 E2         [ 6] 2571 	stb	,-s	; ,
   30D9 C6 05         [ 2] 2572 	ldb	#5	; ,
   30DB BD 2E AD      [ 8] 2573 	jsr	_sendCommand	; 
                           2574 ;----- asm -----
                           2575 ;  890 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   30DE 7E F0 00      [ 4] 2576 		jmp 0xf000
                           2577 ;  0 "" 2
                           2578 ;--- end asm ---
   30E1 32 61         [ 5] 2579 	leas	1,s	; ,,
   30E3                    2580 L110:
   30E3 32 64         [ 5] 2581 	leas	4,s	; ,,
   30E5 35 C0         [ 7] 2582 	puls	u,pc	; 
                           2583 	.globl _writeEeprom
   30E7                    2584 _writeEeprom:
                           2585 ;----- asm -----
                           2586 ;  233 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2587 	; #ENR#[216]	if (picAvailable) {
                           2588 ;  0 "" 2
                           2589 ;--- end asm ---
   30E7 7D CA 8E      [ 7] 2590 	tst	_picAvailable	;  picAvailable
   30EA 27 12         [ 3] 2591 	beq	L113	; 
                           2592 ;----- asm -----
                           2593 ;  235 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2594 	; #ENR#[217]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                           2595 ;  0 "" 2
                           2596 ;--- end asm ---
   30EC 34 04         [ 6] 2597 	pshs	b	;  address
   30EE C6 02         [ 2] 2598 	ldb	#2	; ,
   30F0 BD 2E AD      [ 8] 2599 	jsr	_sendCommand	; 
                           2600 ;----- asm -----
                           2601 ;  237 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2602 	; #ENR#[218]	    	sendCommand(CMD_EEPROM_WRITE, data);
                           2603 ;  0 "" 2
                           2604 ;--- end asm ---
   30F3 E6 63         [ 5] 2605 	ldb	3,s	; , data
   30F5 E7 E2         [ 6] 2606 	stb	,-s	; ,
   30F7 C6 03         [ 2] 2607 	ldb	#3	; ,
   30F9 BD 2E AD      [ 8] 2608 	jsr	_sendCommand	; 
   30FC 32 62         [ 5] 2609 	leas	2,s	; ,,
   30FE                    2610 L113:
   30FE 39            [ 5] 2611 	rts
   30FF                    2612 LC4:
   30FF 43                 2613 	.byte	0x43
   3100 4C                 2614 	.byte	0x4C
   3101 45                 2615 	.byte	0x45
   3102 41                 2616 	.byte	0x41
   3103 52                 2617 	.byte	0x52
   3104 20                 2618 	.byte	0x20
   3105 53                 2619 	.byte	0x53
   3106 43                 2620 	.byte	0x43
   3107 4F                 2621 	.byte	0x4F
   3108 52                 2622 	.byte	0x52
   3109 45                 2623 	.byte	0x45
   310A 3F                 2624 	.byte	0x3F
   310B 80                 2625 	.byte	0x80
   310C 00                 2626 	.byte	0x00
   310D                    2627 LC5:
   310D 33                 2628 	.byte	0x33
   310E 20                 2629 	.byte	0x20
   310F 59                 2630 	.byte	0x59
   3110 45                 2631 	.byte	0x45
   3111 53                 2632 	.byte	0x53
   3112 80                 2633 	.byte	0x80
   3113 00                 2634 	.byte	0x00
   3114                    2635 LC6:
   3114 34                 2636 	.byte	0x34
   3115 20                 2637 	.byte	0x20
   3116 4E                 2638 	.byte	0x4E
   3117 4F                 2639 	.byte	0x4F
   3118 80                 2640 	.byte	0x80
   3119 00                 2641 	.byte	0x00
                           2642 	.globl _clearMenu
   311A                    2643 _clearMenu:
   311A 34 40         [ 6] 2644 	pshs	u	; 
   311C 32 7B         [ 5] 2645 	leas	-5,s	; ,,
                           2646 ;----- asm -----
                           2647 ;  896 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2648 	; #ENR#[629]	Read_Btns();
                           2649 ;  0 "" 2
                           2650 ;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   311E BD F1 BA      [ 8] 2651 	jsr ___Read_Btns; BIOS call
                           2652 ;  0 "" 2
                           2653 ;  898 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2654 	; #ENR#[630]    Intensity_a(0x5f);
                           2655 ;  0 "" 2
                           2656 ;--- end asm ---
   3121 C6 5F         [ 2] 2657 	ldb	#95	; ,
   3123 E7 64         [ 5] 2658 	stb	4,s	; , a
                           2659 ;----- asm -----
                           2660 ;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3125 A6 64         [ 5] 2661 	lda 4,s	;  a
   3127 BD F2 AB      [ 8] 2662 	jsr ___Intensity_a; BIOS call
                           2663 ;  0 "" 2
                           2664 ;  900 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2665 	; #ENR#[631]    Vec_Text_Width = 90;
                           2666 ;  0 "" 2
                           2667 ;--- end asm ---
   312A C6 5A         [ 2] 2668 	ldb	#90	; ,
   312C F7 C8 2B      [ 5] 2669 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2670 ;----- asm -----
                           2671 ;  902 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2672 	; #ENR#[632]    Print_Str_d(100, -80, "CLEAR SCORE?�");
                           2673 ;  0 "" 2
                           2674 ;--- end asm ---
   312F CB 0A         [ 2] 2675 	addb	#10	; ,
   3131 E7 64         [ 5] 2676 	stb	4,s	; , a
   3133 C6 B0         [ 2] 2677 	ldb	#-80	; ,
   3135 E7 63         [ 5] 2678 	stb	3,s	; , b
   3137 8E 30 FF      [ 3] 2679 	ldx	#LC4	; ,
   313A AF 61         [ 6] 2680 	stx	1,s	; , u
                           2681 ;----- asm -----
                           2682 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   313C A6 64         [ 5] 2683 	lda 4,s	;  a
   313E E6 63         [ 5] 2684 	ldb 3,s	;  b
   3140 EE 61         [ 6] 2685 	ldu 1,s	;  u
   3142 BD F3 7A      [ 8] 2686 	jsr ___Print_Str_d; BIOS call
                           2687 ;  0 "" 2
                           2688 ;  904 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2689 	; #ENR#[633]    Print_Str_d(50, -110, "3 YES�");
                           2690 ;  0 "" 2
                           2691 ;--- end asm ---
   3145 C6 32         [ 2] 2692 	ldb	#50	; ,
   3147 E7 63         [ 5] 2693 	stb	3,s	; , a
   3149 C6 92         [ 2] 2694 	ldb	#-110	; ,
   314B E7 64         [ 5] 2695 	stb	4,s	; , b
   314D 8E 31 0D      [ 3] 2696 	ldx	#LC5	; ,
   3150 AF 61         [ 6] 2697 	stx	1,s	; , u
                           2698 ;----- asm -----
                           2699 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3152 A6 63         [ 5] 2700 	lda 3,s	;  a
   3154 E6 64         [ 5] 2701 	ldb 4,s	;  b
   3156 EE 61         [ 6] 2702 	ldu 1,s	;  u
   3158 BD F3 7A      [ 8] 2703 	jsr ___Print_Str_d; BIOS call
                           2704 ;  0 "" 2
                           2705 ;  906 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2706 	; #ENR#[634]    Print_Str_d(20, -110, "4 NO�");
                           2707 ;  0 "" 2
                           2708 ;--- end asm ---
   315B C6 14         [ 2] 2709 	ldb	#20	; ,
   315D E7 64         [ 5] 2710 	stb	4,s	; , a
   315F C6 92         [ 2] 2711 	ldb	#-110	; ,
   3161 E7 63         [ 5] 2712 	stb	3,s	; , b
   3163 8E 31 14      [ 3] 2713 	ldx	#LC6	; ,
   3166 AF 61         [ 6] 2714 	stx	1,s	; , u
                           2715 ;----- asm -----
                           2716 ;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3168 A6 64         [ 5] 2717 	lda 4,s	;  a
   316A E6 63         [ 5] 2718 	ldb 3,s	;  b
   316C EE 61         [ 6] 2719 	ldu 1,s	;  u
   316E BD F3 7A      [ 8] 2720 	jsr ___Print_Str_d; BIOS call
                           2721 ;  0 "" 2
                           2722 ;  908 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2723 	; #ENR#[635]	if (Vec_Buttons & 4) {
                           2724 ;  0 "" 2
                           2725 ;--- end asm ---
   3171 F6 C8 11      [ 5] 2726 	ldb	_Vec_Buttons	; , Vec_Buttons
   3174 C5 04         [ 2] 2727 	bitb	#4	; ,
   3176 27 18         [ 3] 2728 	beq	L115	; 
                           2729 ;----- asm -----
                           2730 ;  910 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2731 	; #ENR#[636]		for (uint8_t i = 0; i < 6; i++) {
                           2732 ;  0 "" 2
                           2733 ;--- end asm ---
   3178 6F E4         [ 6] 2734 	clr	,s	;  i
   317A                    2735 L116:
                           2736 ;----- asm -----
                           2737 ;  912 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2738 	; #ENR#[637]			writeEeprom(i, 0xff);
                           2739 ;  0 "" 2
                           2740 ;--- end asm ---
   317A C6 FF         [ 2] 2741 	ldb	#-1	; ,
   317C E7 E2         [ 6] 2742 	stb	,-s	; ,
   317E E6 61         [ 5] 2743 	ldb	1,s	; , i
   3180 BD 30 E7      [ 8] 2744 	jsr	_writeEeprom	; 
   3183 6C 61         [ 7] 2745 	inc	1,s	;  i
   3185 32 61         [ 5] 2746 	leas	1,s	; ,,
   3187 E6 E4         [ 4] 2747 	ldb	,s	; , i
   3189 C1 06         [ 2] 2748 	cmpb	#6	;cmpqi:	; ,
   318B 26 ED         [ 3] 2749 	bne	L116	; 
                           2750 ;----- asm -----
                           2751 ;  915 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2752 	; #ENR#[639]		gameState = MainMenu;
                           2753 ;  0 "" 2
                           2754 ;--- end asm ---
   318D 7F CA 9C      [ 7] 2755 	clr	_gameState	;  gameState
   3190                    2756 L115:
                           2757 ;----- asm -----
                           2758 ;  918 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2759 	; #ENR#[641]	if (Vec_Buttons & 8) {
                           2760 ;  0 "" 2
                           2761 ;--- end asm ---
   3190 F6 C8 11      [ 5] 2762 	ldb	_Vec_Buttons	; , Vec_Buttons
   3193 C5 08         [ 2] 2763 	bitb	#8	; ,
   3195 27 03         [ 3] 2764 	beq	L118	; 
                           2765 ;----- asm -----
                           2766 ;  920 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2767 	; #ENR#[642]		gameState = MainMenu;
                           2768 ;  0 "" 2
                           2769 ;--- end asm ---
   3197 7F CA 9C      [ 7] 2770 	clr	_gameState	;  gameState
   319A                    2771 L118:
   319A 32 65         [ 5] 2772 	leas	5,s	; ,,
   319C 35 C0         [ 7] 2773 	puls	u,pc	; 
                           2774 	.globl _blockMovingAtEnd
   319E                    2775 _blockMovingAtEnd:
   319E 32 7E         [ 5] 2776 	leas	-2,s	; ,,
                           2777 ;----- asm -----
                           2778 ;  836 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2779 	; #ENR#[592]	drawField();
                           2780 ;  0 "" 2
                           2781 ;--- end asm ---
   31A0 BD 2B 42      [ 8] 2782 	jsr	_drawField	; 
                           2783 ;----- asm -----
                           2784 ;  838 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2785 	; #ENR#[593]	drawBlock(blockYOfs);
                           2786 ;  0 "" 2
                           2787 ;--- end asm ---
   31A3 F6 CA 9B      [ 5] 2788 	ldb	_blockYOfs	; , blockYOfs
   31A6 BD 2C C9      [ 8] 2789 	jsr	_drawBlock	; 
                           2790 ;----- asm -----
                           2791 ;  840 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2792 	; #ENR#[594]	blockYOfs++;
                           2793 ;  0 "" 2
                           2794 ;--- end asm ---
   31A9 F6 CA 9B      [ 5] 2795 	ldb	_blockYOfs	;  blockYOfs.69, blockYOfs
   31AC 5C            [ 2] 2796 	incb	;  blockYOfs.69
   31AD F7 CA 9B      [ 5] 2797 	stb	_blockYOfs	;  blockYOfs.69, blockYOfs
                           2798 ;----- asm -----
                           2799 ;  842 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2800 	; #ENR#[595]	if (blockYOfs == 30) {
                           2801 ;  0 "" 2
                           2802 ;--- end asm ---
   31B0 C1 1E         [ 2] 2803 	cmpb	#30	;cmpqi:	;  blockYOfs.69,
   31B2 10 26 00 3F   [ 6] 2804 	lbne	L124	; 
                           2805 ;----- asm -----
                           2806 ;  844 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2807 	; #ENR#[596]		if (moveCount < levelHighscore) {
                           2808 ;  0 "" 2
                           2809 ;--- end asm ---
   31B6 BE CA 8A      [ 6] 2810 	ldx	_moveCount	;  moveCount.70, moveCount
   31B9 BC CA 8C      [ 7] 2811 	cmpx	_levelHighscore	;cmphi:	;  moveCount.70, levelHighscore
   31BC 24 25         [ 3] 2812 	bhs	L122	; 
                           2813 ;----- asm -----
                           2814 ;  846 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2815 	; #ENR#[597]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           2816 ;  0 "" 2
                           2817 ;--- end asm ---
   31BE F6 C8 83      [ 5] 2818 	ldb	_levelNumber	; , levelNumber
   31C1 58            [ 2] 2819 	aslb	; 
   31C2 E7 E4         [ 4] 2820 	stb	,s	; ,
   31C4 1F 10         [ 6] 2821 	tfr	x,d	;  moveCount.70,
   31C6 34 04         [ 6] 2822 	pshs	b	; 
   31C8 E6 61         [ 5] 2823 	ldb	1,s	; ,
   31CA BD 30 E7      [ 8] 2824 	jsr	_writeEeprom	; 
                           2825 ;----- asm -----
                           2826 ;  848 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2827 	; #ENR#[598]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           2828 ;  0 "" 2
                           2829 ;--- end asm ---
   31CD F6 C8 83      [ 5] 2830 	ldb	_levelNumber	;  tmp31, levelNumber
   31D0 58            [ 2] 2831 	aslb	;  tmp31
   31D1 5C            [ 2] 2832 	incb	;  tmp31
   31D2 E7 62         [ 5] 2833 	stb	2,s	;  tmp31,
   31D4 FC CA 8A      [ 6] 2834 	ldd	_moveCount	;  tmp33, moveCount
   31D7 1F 89         [ 6] 2835 	tfr	a,b	; ,
   31D9 4F            [ 2] 2836 	clra		;zero_extendqihi: R:b -> R:d	; ,
   31DA 34 04         [ 6] 2837 	pshs	b	;  tmp33
   31DC E6 63         [ 5] 2838 	ldb	3,s	; ,
   31DE BD 30 E7      [ 8] 2839 	jsr	_writeEeprom	; 
   31E1 32 62         [ 5] 2840 	leas	2,s	; ,,
   31E3                    2841 L122:
                           2842 ;----- asm -----
                           2843 ;  851 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2844 	; #ENR#[600]		levelNumber++;
                           2845 ;  0 "" 2
                           2846 ;--- end asm ---
   31E3 F6 C8 83      [ 5] 2847 	ldb	_levelNumber	;  levelNumber.73, levelNumber
   31E6 5C            [ 2] 2848 	incb	;  levelNumber.73
   31E7 F7 C8 83      [ 5] 2849 	stb	_levelNumber	;  levelNumber.73, levelNumber
                           2850 ;----- asm -----
                           2851 ;  853 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2852 	; #ENR#[601]		if (levelNumber >= levelCount) levelNumber = 0;
                           2853 ;  0 "" 2
                           2854 ;--- end asm ---
   31EA F1 53 71      [ 5] 2855 	cmpb	_levelCount	;cmpqi:	;  levelNumber.73, levelCount
   31ED 25 03         [ 3] 2856 	blo	L123	; 
   31EF 7F C8 83      [ 7] 2857 	clr	_levelNumber	;  levelNumber
   31F2                    2858 L123:
                           2859 ;----- asm -----
                           2860 ;  855 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2861 	; #ENR#[602]		startLevel();
                           2862 ;  0 "" 2
                           2863 ;--- end asm ---
   31F2 BD 2E E0      [ 8] 2864 	jsr	_startLevel	; 
   31F5                    2865 L124:
   31F5 32 62         [ 5] 2866 	leas	2,s	; ,,
   31F7 39            [ 5] 2867 	rts
                           2868 	.globl _main
   31F8                    2869 _main:
   31F8 34 60         [ 7] 2870 	pshs	y,u	; 
   31FA 32 7C         [ 5] 2871 	leas	-4,s	; ,,
                           2872 ;----- asm -----
                           2873 ;  998 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2874 	; #ENR#[696]	*vecx = 4;
                           2875 ;  0 "" 2
                           2876 ;--- end asm ---
   31FC C6 04         [ 2] 2877 	ldb	#4	; ,
   31FE E7 9F C8 86   [ 9] 2878 	stb	[_vecx]	; ,* vecx
                           2879 ;----- asm -----
                           2880 ;  1002 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2881 	; #ENR#[699]	picAvailable = 0;
                           2882 ;  0 "" 2
                           2883 ;--- end asm ---
   3202 7F CA 8E      [ 7] 2884 	clr	_picAvailable	;  picAvailable
                           2885 ;----- asm -----
                           2886 ;  1004 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2887 	; #ENR#[700]	sendCommand(CMD_VERSION, 0);
                           2888 ;  0 "" 2
                           2889 ;--- end asm ---
   3205 6F E2         [ 8] 2890 	clr	,-s	; 
   3207 C6 01         [ 2] 2891 	ldb	#1	; ,
   3209 BD 2E AD      [ 8] 2892 	jsr	_sendCommand	; 
                           2893 ;----- asm -----
                           2894 ;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2895 	; #ENR#[701]	sendCommand(CMD_VERSION, 0);
                           2896 ;  0 "" 2
                           2897 ;--- end asm ---
   320C 6F E2         [ 8] 2898 	clr	,-s	; 
   320E C6 01         [ 2] 2899 	ldb	#1	; ,
   3210 BD 2E AD      [ 8] 2900 	jsr	_sendCommand	; 
                           2901 ;----- asm -----
                           2902 ;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2903 	; #ENR#[702]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           2904 ;  0 "" 2
                           2905 ;--- end asm ---
   3213 6F E2         [ 8] 2906 	clr	,-s	; 
   3215 C6 01         [ 2] 2907 	ldb	#1	; ,
   3217 BD 2E AD      [ 8] 2908 	jsr	_sendCommand	; 
   321A 32 63         [ 5] 2909 	leas	3,s	; ,,
   321C C1 04         [ 2] 2910 	cmpb	#4	;cmpqi:	;  D.2649,
   321E 26 05         [ 3] 2911 	bne	L126	; 
                           2912 ;----- asm -----
                           2913 ;  1010 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2914 	; #ENR#[703]		picAvailable = 1;
                           2915 ;  0 "" 2
                           2916 ;--- end asm ---
   3220 C6 01         [ 2] 2917 	ldb	#1	; ,
   3222 F7 CA 8E      [ 5] 2918 	stb	_picAvailable	; , picAvailable
   3225                    2919 L126:
                           2920 ;----- asm -----
                           2921 ;  1015 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2922 	; #ENR#[707]	memcpy(infoText, "001 - 999�", 10);
                           2923 ;  0 "" 2
                           2924 ;--- end asm ---
   3225 8E 30 30      [ 3] 2925 	ldx	#12336	; ,
   3228 BF CA 80      [ 6] 2926 	stx	_infoText	; , infoText
   322B 8E 31 20      [ 3] 2927 	ldx	#12576	; ,
   322E BF CA 82      [ 6] 2928 	stx	_infoText+2	; , infoText
   3231 8E 2D 20      [ 3] 2929 	ldx	#11552	; ,
   3234 BF CA 84      [ 6] 2930 	stx	_infoText+4	; , infoText
   3237 8E 39 39      [ 3] 2931 	ldx	#14649	; ,
   323A BF CA 86      [ 6] 2932 	stx	_infoText+6	; , infoText
   323D 8E 39 80      [ 3] 2933 	ldx	#14720	; ,
   3240 BF CA 88      [ 6] 2934 	stx	_infoText+8	; , infoText
                           2935 ;----- asm -----
                           2936 ;  1019 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2937 	; #ENR#[710]	epot0 = 1;
                           2938 ;  0 "" 2
                           2939 ;--- end asm ---
   3243 C6 01         [ 2] 2940 	ldb	#1	; ,
   3245 F7 C8 1F      [ 5] 2941 	stb	-14305	; ,
                           2942 ;----- asm -----
                           2943 ;  1021 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2944 	; #ENR#[711]	epot1 = 3;
                           2945 ;  0 "" 2
                           2946 ;--- end asm ---
   3248 C6 03         [ 2] 2947 	ldb	#3	; ,
   324A F7 C8 20      [ 5] 2948 	stb	-14304	; ,
                           2949 ;----- asm -----
                           2950 ;  1023 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2951 	; #ENR#[712]	epot2 = 0;
                           2952 ;  0 "" 2
                           2953 ;--- end asm ---
   324D 7F C8 21      [ 7] 2954 	clr	-14303	; 
                           2955 ;----- asm -----
                           2956 ;  1025 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2957 	; #ENR#[713]	epot3 = 0;
                           2958 ;  0 "" 2
                           2959 ;--- end asm ---
   3250 7F C8 22      [ 7] 2960 	clr	-14302	; 
                           2961 ;----- asm -----
                           2962 ;  1028 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2963 	; #ENR#[715]	gameState = MainMenu;
                           2964 ;  0 "" 2
                           2965 ;--- end asm ---
   3253 7F CA 9C      [ 7] 2966 	clr	_gameState	;  gameState
                           2967 ;----- asm -----
                           2968 ;  1030 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2969 	; #ENR#[716]	startLevel();
                           2970 ;  0 "" 2
                           2971 ;--- end asm ---
   3256 BD 2E E0      [ 8] 2972 	jsr	_startLevel	; 
                           2973 ;----- asm -----
                           2974 ;  1034 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2975 	; #ENR#[719]	while (1) {
                           2976 ;  0 "" 2
                           2977 ;--- end asm ---
   3259                    2978 L138:
                           2979 ;----- asm -----
                           2980 ;  1037 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2981 	; #ENR#[721]		frwait();
                           2982 ;  0 "" 2
                           2983 ;  97 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   3259 BD F1 92      [ 8] 2984 	jsr ___Wait_Recal; BIOS call
                           2985 ;  0 "" 2
                           2986 ;  1040 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2987 	; #ENR#[723]		switch (gameState) {
                           2988 ;  0 "" 2
                           2989 ;--- end asm ---
   325C F6 CA 9C      [ 5] 2990 	ldb	_gameState	; , gameState
   325F C1 06         [ 2] 2991 	cmpb	#6	;cmpqi:	; ,
   3261 10 22 00 4D   [ 6] 2992 	lbhi	L127	; 
   3265 4F            [ 2] 2993 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3266 ED E4         [ 5] 2994 	std	,s	; ,
   3268 58            [ 2] 2995 	aslb	; 
   3269 49            [ 2] 2996 	rola	; 
   326A 1F 01         [ 6] 2997 	tfr	d,x	; , tmp43
   326C 6E 99 32 70   [10] 2998 	jmp	[L135,x]	; , tmp43
   3270                    2999 L135:
   3270 32 7E              3000 	.word L128
   3272 32 84              3001 	.word L129
   3274 32 8A              3002 	.word L130
   3276 32 93              3003 	.word L131
   3278 32 9C              3004 	.word L132
   327A 32 A4              3005 	.word L133
   327C 32 AC              3006 	.word L134
   327E                    3007 L128:
                           3008 ;----- asm -----
                           3009 ;  1044 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3010 	; #ENR#[725]        			mainMenu();
                           3011 ;  0 "" 2
                           3012 ;--- end asm ---
   327E BD 30 4B      [ 8] 3013 	jsr	_mainMenu	; 
                           3014 ;----- asm -----
                           3015 ;  1047 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3016 	; #ENR#[727]        			break;
                           3017 ;  0 "" 2
                           3018 ;--- end asm ---
   3281 7E 32 B2      [ 4] 3019 	jmp	L127	; 
   3284                    3020 L129:
                           3021 ;----- asm -----
                           3022 ;  1051 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3023 	; #ENR#[729]				clearMenu();
                           3024 ;  0 "" 2
                           3025 ;--- end asm ---
   3284 BD 31 1A      [ 8] 3026 	jsr	_clearMenu	; 
                           3027 ;----- asm -----
                           3028 ;  1054 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3029 	; #ENR#[731]				break;
                           3030 ;  0 "" 2
                           3031 ;--- end asm ---
   3287 7E 32 B2      [ 4] 3032 	jmp	L127	; 
   328A                    3033 L130:
                           3034 ;----- asm -----
                           3035 ;  1058 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3036 	; #ENR#[733]				showInfo();
                           3037 ;  0 "" 2
                           3038 ;--- end asm ---
   328A BD 2C 9F      [ 8] 3039 	jsr	_showInfo	; 
                           3040 ;----- asm -----
                           3041 ;  1060 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3042 	; #ENR#[734]        			blockMovingToStart();
                           3043 ;  0 "" 2
                           3044 ;--- end asm ---
   328D BD 2E 94      [ 8] 3045 	jsr	_blockMovingToStart	; 
                           3046 ;----- asm -----
                           3047 ;  1062 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3048 	; #ENR#[735]        			break;
                           3049 ;  0 "" 2
                           3050 ;--- end asm ---
   3290 7E 32 B2      [ 4] 3051 	jmp	L127	; 
   3293                    3052 L131:
                           3053 ;----- asm -----
                           3054 ;  1066 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3055 	; #ENR#[737]				showInfo();
                           3056 ;  0 "" 2
                           3057 ;--- end asm ---
   3293 BD 2C 9F      [ 8] 3058 	jsr	_showInfo	; 
                           3059 ;----- asm -----
                           3060 ;  1068 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3061 	; #ENR#[738]        			blockWaiting();
                           3062 ;  0 "" 2
                           3063 ;--- end asm ---
   3296 BD 2F 8B      [ 8] 3064 	jsr	_blockWaiting	; 
                           3065 ;----- asm -----
                           3066 ;  1070 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3067 	; #ENR#[739]        			break;
                           3068 ;  0 "" 2
                           3069 ;--- end asm ---
   3299 7E 32 B2      [ 4] 3070 	jmp	L127	; 
   329C                    3071 L132:
                           3072 ;----- asm -----
                           3073 ;  1074 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3074 	; #ENR#[741]				showInfo();
                           3075 ;  0 "" 2
                           3076 ;--- end asm ---
   329C BD 2C 9F      [ 8] 3077 	jsr	_showInfo	; 
                           3078 ;----- asm -----
                           3079 ;  1076 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3080 	; #ENR#[742]        			blockMoving();
                           3081 ;  0 "" 2
                           3082 ;--- end asm ---
   329F BD 2D 33      [ 8] 3083 	jsr	_blockMoving	; 
                           3084 ;----- asm -----
                           3085 ;  1078 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3086 	; #ENR#[743]        			break;
                           3087 ;  0 "" 2
                           3088 ;--- end asm ---
   32A2 20 0E         [ 3] 3089 	bra	L127	; 
   32A4                    3090 L133:
                           3091 ;----- asm -----
                           3092 ;  1082 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3093 	; #ENR#[745]				showInfo();
                           3094 ;  0 "" 2
                           3095 ;--- end asm ---
   32A4 BD 2C 9F      [ 8] 3096 	jsr	_showInfo	; 
                           3097 ;----- asm -----
                           3098 ;  1084 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3099 	; #ENR#[746]        			blockFalling();
                           3100 ;  0 "" 2
                           3101 ;--- end asm ---
   32A7 BD 2F 62      [ 8] 3102 	jsr	_blockFalling	; 
                           3103 ;----- asm -----
                           3104 ;  1086 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3105 	; #ENR#[747]        			break;
                           3106 ;  0 "" 2
                           3107 ;--- end asm ---
   32AA 20 06         [ 3] 3108 	bra	L127	; 
   32AC                    3109 L134:
                           3110 ;----- asm -----
                           3111 ;  1090 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3112 	; #ENR#[749]				showInfo();
                           3113 ;  0 "" 2
                           3114 ;--- end asm ---
   32AC BD 2C 9F      [ 8] 3115 	jsr	_showInfo	; 
                           3116 ;----- asm -----
                           3117 ;  1092 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3118 	; #ENR#[750]        			blockMovingAtEnd();
                           3119 ;  0 "" 2
                           3120 ;--- end asm ---
   32AF BD 31 9E      [ 8] 3121 	jsr	_blockMovingAtEnd	; 
                           3122 ;----- asm -----
                           3123 ;  1094 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3124 	; #ENR#[751]        			break;
                           3125 ;  0 "" 2
                           3126 ;--- end asm ---
   32B2                    3127 L127:
                           3128 ;----- asm -----
                           3129 ;  1099 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3130 	; #ENR#[755]		if (gameState > ClearMenu) {
                           3131 ;  0 "" 2
                           3132 ;--- end asm ---
   32B2 F6 CA 9C      [ 5] 3133 	ldb	_gameState	; , gameState
   32B5 C1 01         [ 2] 3134 	cmpb	#1	;cmpqi:	; ,
   32B7 10 23 FF 9E   [ 6] 3135 	lbls	L138	; 
                           3136 ;----- asm -----
                           3137 ;  1101 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3138 	; #ENR#[756]    			DP_to_C8();
                           3139 ;  0 "" 2
                           3140 ;  316 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   32BB BD F1 AF      [ 8] 3141 	jsr ___DP_to_C8; BIOS call
                           3142 ;  0 "" 2
                           3143 ;  1103 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3144 	; #ENR#[757]    			replay(currentMusic);
                           3145 ;  0 "" 2
                           3146 ;--- end asm ---
   32BE BE C8 84      [ 6] 3147 	ldx	_currentMusic	; , currentMusic
   32C1 AF 62         [ 6] 3148 	stx	2,s	; , u
                           3149 ;----- asm -----
                           3150 ;  2917 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   32C3 EE 62         [ 6] 3151 	ldu 2,s	;  u
   32C5 BD F6 87      [ 8] 3152 	jsr ___Init_Music_chk; BIOS call
                           3153 ;  0 "" 2
                           3154 ;  1105 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3155 	; #ENR#[758]    			DP_to_D0();
                           3156 ;  0 "" 2
                           3157 ;  300 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   32C8 BD F1 AA      [ 8] 3158 	jsr ___DP_to_D0; BIOS call
                           3159 ;  0 "" 2
                           3160 ;  1107 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3161 	; #ENR#[759]    			reqout();
                           3162 ;  0 "" 2
                           3163 ;  2880 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   32CB BD F2 89      [ 8] 3164 	jsr ___Do_Sound; BIOS call
                           3165 ;  0 "" 2
                           3166 ;--- end asm ---
   32CE 7E 32 59      [ 4] 3167 	jmp	L138	; 
                           3168 	.globl _height2FallingLeft0
   32D1                    3169 _height2FallingLeft0:
   32D1 FF                 3170 	.byte	-1
   32D2 03                 3171 	.byte	3
   32D3 0E                 3172 	.byte	14
   32D4 FF                 3173 	.byte	-1
   32D5 08                 3174 	.byte	8
   32D6 FA                 3175 	.byte	-6
   32D7 FF                 3176 	.byte	-1
   32D8 FD                 3177 	.byte	-3
   32D9 F3                 3178 	.byte	-13
   32DA FF                 3179 	.byte	-1
   32DB F8                 3180 	.byte	-8
   32DC 05                 3181 	.byte	5
   32DD FF                 3182 	.byte	-1
   32DE 1A                 3183 	.byte	26
   32DF 00                 3184 	.byte	0
   32E0 00                 3185 	.byte	0
   32E1 E9                 3186 	.byte	-23
   32E2 0E                 3187 	.byte	14
   32E3 FF                 3188 	.byte	-1
   32E4 1A                 3189 	.byte	26
   32E5 00                 3190 	.byte	0
   32E6 00                 3191 	.byte	0
   32E7 EE                 3192 	.byte	-18
   32E8 FA                 3193 	.byte	-6
   32E9 FF                 3194 	.byte	-1
   32EA 1A                 3195 	.byte	26
   32EB 00                 3196 	.byte	0
   32EC 00                 3197 	.byte	0
   32ED E3                 3198 	.byte	-29
   32EE F3                 3199 	.byte	-13
   32EF FF                 3200 	.byte	-1
   32F0 1A                 3201 	.byte	26
   32F1 00                 3202 	.byte	0
   32F2 00                 3203 	.byte	0
   32F3 F8                 3204 	.byte	-8
   32F4 05                 3205 	.byte	5
   32F5 FF                 3206 	.byte	-1
   32F6 03                 3207 	.byte	3
   32F7 0E                 3208 	.byte	14
   32F8 FF                 3209 	.byte	-1
   32F9 08                 3210 	.byte	8
   32FA FA                 3211 	.byte	-6
   32FB FF                 3212 	.byte	-1
   32FC FD                 3213 	.byte	-3
   32FD F3                 3214 	.byte	-13
   32FE FF                 3215 	.byte	-1
   32FF F8                 3216 	.byte	-8
   3300 05                 3217 	.byte	5
   3301 01                 3218 	.byte	1
                           3219 	.globl _height2RisingRight0
   3302                    3220 _height2RisingRight0:
   3302 00                 3221 	.byte	0
   3303 06                 3222 	.byte	6
   3304 1C                 3223 	.byte	28
   3305 FF                 3224 	.byte	-1
   3306 0D                 3225 	.byte	13
   3307 02                 3226 	.byte	2
   3308 FF                 3227 	.byte	-1
   3309 08                 3228 	.byte	8
   330A FA                 3229 	.byte	-6
   330B FF                 3230 	.byte	-1
   330C F3                 3231 	.byte	-13
   330D FE                 3232 	.byte	-2
   330E FF                 3233 	.byte	-1
   330F F8                 3234 	.byte	-8
   3310 06                 3235 	.byte	6
   3311 FF                 3236 	.byte	-1
   3312 FD                 3237 	.byte	-3
   3313 E4                 3238 	.byte	-28
   3314 00                 3239 	.byte	0
   3315 10                 3240 	.byte	16
   3316 1E                 3241 	.byte	30
   3317 FF                 3242 	.byte	-1
   3318 FE                 3243 	.byte	-2
   3319 E4                 3244 	.byte	-28
   331A 00                 3245 	.byte	0
   331B 0A                 3246 	.byte	10
   331C 16                 3247 	.byte	22
   331D FF                 3248 	.byte	-1
   331E FE                 3249 	.byte	-2
   331F E5                 3250 	.byte	-27
   3320 00                 3251 	.byte	0
   3321 F5                 3252 	.byte	-11
   3322 19                 3253 	.byte	25
   3323 FF                 3254 	.byte	-1
   3324 FD                 3255 	.byte	-3
   3325 E5                 3256 	.byte	-27
   3326 00                 3257 	.byte	0
   3327 F8                 3258 	.byte	-8
   3328 05                 3259 	.byte	5
   3329 FF                 3260 	.byte	-1
   332A 0E                 3261 	.byte	14
   332B 02                 3262 	.byte	2
   332C FF                 3263 	.byte	-1
   332D 08                 3264 	.byte	8
   332E FB                 3265 	.byte	-5
   332F FF                 3266 	.byte	-1
   3330 F2                 3267 	.byte	-14
   3331 FE                 3268 	.byte	-2
   3332 FF                 3269 	.byte	-1
   3333 F8                 3270 	.byte	-8
   3334 05                 3271 	.byte	5
   3335 01                 3272 	.byte	1
                           3273 	.globl _height2FallingRight0
   3336                    3274 _height2FallingRight0:
   3336 FF                 3275 	.byte	-1
   3337 03                 3276 	.byte	3
   3338 0E                 3277 	.byte	14
   3339 FF                 3278 	.byte	-1
   333A 08                 3279 	.byte	8
   333B FA                 3280 	.byte	-6
   333C FF                 3281 	.byte	-1
   333D FD                 3282 	.byte	-3
   333E F3                 3283 	.byte	-13
   333F FF                 3284 	.byte	-1
   3340 F8                 3285 	.byte	-8
   3341 05                 3286 	.byte	5
   3342 FF                 3287 	.byte	-1
   3343 1A                 3288 	.byte	26
   3344 00                 3289 	.byte	0
   3345 00                 3290 	.byte	0
   3346 E9                 3291 	.byte	-23
   3347 0E                 3292 	.byte	14
   3348 FF                 3293 	.byte	-1
   3349 1A                 3294 	.byte	26
   334A 00                 3295 	.byte	0
   334B 00                 3296 	.byte	0
   334C EE                 3297 	.byte	-18
   334D FA                 3298 	.byte	-6
   334E FF                 3299 	.byte	-1
   334F 1A                 3300 	.byte	26
   3350 00                 3301 	.byte	0
   3351 00                 3302 	.byte	0
   3352 E3                 3303 	.byte	-29
   3353 F3                 3304 	.byte	-13
   3354 FF                 3305 	.byte	-1
   3355 1A                 3306 	.byte	26
   3356 00                 3307 	.byte	0
   3357 00                 3308 	.byte	0
   3358 F8                 3309 	.byte	-8
   3359 05                 3310 	.byte	5
   335A FF                 3311 	.byte	-1
   335B 03                 3312 	.byte	3
   335C 0E                 3313 	.byte	14
   335D FF                 3314 	.byte	-1
   335E 08                 3315 	.byte	8
   335F FA                 3316 	.byte	-6
   3360 FF                 3317 	.byte	-1
   3361 FD                 3318 	.byte	-3
   3362 F3                 3319 	.byte	-13
   3363 FF                 3320 	.byte	-1
   3364 F8                 3321 	.byte	-8
   3365 05                 3322 	.byte	5
   3366 01                 3323 	.byte	1
                           3324 	.globl _height2RisingLeft0
   3367                    3325 _height2RisingLeft0:
   3367 00                 3326 	.byte	0
   3368 0C                 3327 	.byte	12
   3369 FF                 3328 	.byte	-1
   336A FF                 3329 	.byte	-1
   336B F4                 3330 	.byte	-12
   336C 01                 3331 	.byte	1
   336D FF                 3332 	.byte	-1
   336E 08                 3333 	.byte	8
   336F FB                 3334 	.byte	-5
   3370 FF                 3335 	.byte	-1
   3371 0C                 3336 	.byte	12
   3372 FE                 3337 	.byte	-2
   3373 FF                 3338 	.byte	-1
   3374 F8                 3339 	.byte	-8
   3375 06                 3340 	.byte	6
   3376 FF                 3341 	.byte	-1
   3377 0A                 3342 	.byte	10
   3378 1B                 3343 	.byte	27
   3379 00                 3344 	.byte	0
   337A EA                 3345 	.byte	-22
   337B E6                 3346 	.byte	-26
   337C FF                 3347 	.byte	-1
   337D 09                 3348 	.byte	9
   337E 1C                 3349 	.byte	28
   337F 00                 3350 	.byte	0
   3380 FF                 3351 	.byte	-1
   3381 DF                 3352 	.byte	-33
   3382 FF                 3353 	.byte	-1
   3383 09                 3354 	.byte	9
   3384 1B                 3355 	.byte	27
   3385 00                 3356 	.byte	0
   3386 03                 3357 	.byte	3
   3387 E3                 3358 	.byte	-29
   3388 FF                 3359 	.byte	-1
   3389 0A                 3360 	.byte	10
   338A 1B                 3361 	.byte	27
   338B 00                 3362 	.byte	0
   338C F8                 3363 	.byte	-8
   338D 06                 3364 	.byte	6
   338E FF                 3365 	.byte	-1
   338F F3                 3366 	.byte	-13
   3390 02                 3367 	.byte	2
   3391 FF                 3368 	.byte	-1
   3392 08                 3369 	.byte	8
   3393 FA                 3370 	.byte	-6
   3394 FF                 3371 	.byte	-1
   3395 0D                 3372 	.byte	13
   3396 FE                 3373 	.byte	-2
   3397 FF                 3374 	.byte	-1
   3398 F8                 3375 	.byte	-8
   3399 06                 3376 	.byte	6
   339A 01                 3377 	.byte	1
                           3378 	.globl _height2FallingBack0
   339B                    3379 _height2FallingBack0:
   339B FF                 3380 	.byte	-1
   339C 03                 3381 	.byte	3
   339D 0E                 3382 	.byte	14
   339E FF                 3383 	.byte	-1
   339F 08                 3384 	.byte	8
   33A0 FA                 3385 	.byte	-6
   33A1 FF                 3386 	.byte	-1
   33A2 FD                 3387 	.byte	-3
   33A3 F3                 3388 	.byte	-13
   33A4 FF                 3389 	.byte	-1
   33A5 F8                 3390 	.byte	-8
   33A6 05                 3391 	.byte	5
   33A7 FF                 3392 	.byte	-1
   33A8 1A                 3393 	.byte	26
   33A9 00                 3394 	.byte	0
   33AA 00                 3395 	.byte	0
   33AB E9                 3396 	.byte	-23
   33AC 0E                 3397 	.byte	14
   33AD FF                 3398 	.byte	-1
   33AE 1A                 3399 	.byte	26
   33AF 00                 3400 	.byte	0
   33B0 00                 3401 	.byte	0
   33B1 EE                 3402 	.byte	-18
   33B2 FA                 3403 	.byte	-6
   33B3 FF                 3404 	.byte	-1
   33B4 1A                 3405 	.byte	26
   33B5 00                 3406 	.byte	0
   33B6 00                 3407 	.byte	0
   33B7 E3                 3408 	.byte	-29
   33B8 F3                 3409 	.byte	-13
   33B9 FF                 3410 	.byte	-1
   33BA 1A                 3411 	.byte	26
   33BB 00                 3412 	.byte	0
   33BC 00                 3413 	.byte	0
   33BD F8                 3414 	.byte	-8
   33BE 05                 3415 	.byte	5
   33BF FF                 3416 	.byte	-1
   33C0 03                 3417 	.byte	3
   33C1 0E                 3418 	.byte	14
   33C2 FF                 3419 	.byte	-1
   33C3 08                 3420 	.byte	8
   33C4 FA                 3421 	.byte	-6
   33C5 FF                 3422 	.byte	-1
   33C6 FD                 3423 	.byte	-3
   33C7 F3                 3424 	.byte	-13
   33C8 FF                 3425 	.byte	-1
   33C9 F8                 3426 	.byte	-8
   33CA 05                 3427 	.byte	5
   33CB 01                 3428 	.byte	1
                           3429 	.globl _height2RisingFront0
   33CC                    3430 _height2RisingFront0:
   33CC 00                 3431 	.byte	0
   33CD 0C                 3432 	.byte	12
   33CE 01                 3433 	.byte	1
   33CF FF                 3434 	.byte	-1
   33D0 03                 3435 	.byte	3
   33D1 0E                 3436 	.byte	14
   33D2 FF                 3437 	.byte	-1
   33D3 F4                 3438 	.byte	-12
   33D4 FF                 3439 	.byte	-1
   33D5 FF                 3440 	.byte	-1
   33D6 FD                 3441 	.byte	-3
   33D7 F2                 3442 	.byte	-14
   33D8 FF                 3443 	.byte	-1
   33D9 0C                 3444 	.byte	12
   33DA 01                 3445 	.byte	1
   33DB FF                 3446 	.byte	-1
   33DC 13                 3447 	.byte	19
   33DD F5                 3448 	.byte	-11
   33DE 00                 3449 	.byte	0
   33DF F0                 3450 	.byte	-16
   33E0 19                 3451 	.byte	25
   33E1 FF                 3452 	.byte	-1
   33E2 13                 3453 	.byte	19
   33E3 F4                 3454 	.byte	-12
   33E4 00                 3455 	.byte	0
   33E5 E1                 3456 	.byte	-31
   33E6 0B                 3457 	.byte	11
   33E7 FF                 3458 	.byte	-1
   33E8 13                 3459 	.byte	19
   33E9 F4                 3460 	.byte	-12
   33EA 00                 3461 	.byte	0
   33EB EA                 3462 	.byte	-22
   33EC FE                 3463 	.byte	-2
   33ED FF                 3464 	.byte	-1
   33EE 13                 3465 	.byte	19
   33EF F5                 3466 	.byte	-11
   33F0 00                 3467 	.byte	0
   33F1 0C                 3468 	.byte	12
   33F2 01                 3469 	.byte	1
   33F3 FF                 3470 	.byte	-1
   33F4 03                 3471 	.byte	3
   33F5 0D                 3472 	.byte	13
   33F6 FF                 3473 	.byte	-1
   33F7 F4                 3474 	.byte	-12
   33F8 FF                 3475 	.byte	-1
   33F9 FF                 3476 	.byte	-1
   33FA FD                 3477 	.byte	-3
   33FB F3                 3478 	.byte	-13
   33FC FF                 3479 	.byte	-1
   33FD 0C                 3480 	.byte	12
   33FE 01                 3481 	.byte	1
   33FF 01                 3482 	.byte	1
                           3483 	.globl _height2FallingFront0
   3400                    3484 _height2FallingFront0:
   3400 FF                 3485 	.byte	-1
   3401 03                 3486 	.byte	3
   3402 0E                 3487 	.byte	14
   3403 FF                 3488 	.byte	-1
   3404 08                 3489 	.byte	8
   3405 FA                 3490 	.byte	-6
   3406 FF                 3491 	.byte	-1
   3407 FD                 3492 	.byte	-3
   3408 F3                 3493 	.byte	-13
   3409 FF                 3494 	.byte	-1
   340A F8                 3495 	.byte	-8
   340B 05                 3496 	.byte	5
   340C FF                 3497 	.byte	-1
   340D 1A                 3498 	.byte	26
   340E 00                 3499 	.byte	0
   340F 00                 3500 	.byte	0
   3410 E9                 3501 	.byte	-23
   3411 0E                 3502 	.byte	14
   3412 FF                 3503 	.byte	-1
   3413 1A                 3504 	.byte	26
   3414 00                 3505 	.byte	0
   3415 00                 3506 	.byte	0
   3416 EE                 3507 	.byte	-18
   3417 FA                 3508 	.byte	-6
   3418 FF                 3509 	.byte	-1
   3419 1A                 3510 	.byte	26
   341A 00                 3511 	.byte	0
   341B 00                 3512 	.byte	0
   341C E3                 3513 	.byte	-29
   341D F3                 3514 	.byte	-13
   341E FF                 3515 	.byte	-1
   341F 1A                 3516 	.byte	26
   3420 00                 3517 	.byte	0
   3421 00                 3518 	.byte	0
   3422 F8                 3519 	.byte	-8
   3423 05                 3520 	.byte	5
   3424 FF                 3521 	.byte	-1
   3425 03                 3522 	.byte	3
   3426 0E                 3523 	.byte	14
   3427 FF                 3524 	.byte	-1
   3428 08                 3525 	.byte	8
   3429 FA                 3526 	.byte	-6
   342A FF                 3527 	.byte	-1
   342B FD                 3528 	.byte	-3
   342C F3                 3529 	.byte	-13
   342D FF                 3530 	.byte	-1
   342E F8                 3531 	.byte	-8
   342F 05                 3532 	.byte	5
   3430 01                 3533 	.byte	1
                           3534 	.globl _height2RisingBack0
   3431                    3535 _height2RisingBack0:
   3431 00                 3536 	.byte	0
   3432 10                 3537 	.byte	16
   3433 F5                 3538 	.byte	-11
   3434 FF                 3539 	.byte	-1
   3435 03                 3540 	.byte	3
   3436 0D                 3541 	.byte	13
   3437 FF                 3542 	.byte	-1
   3438 0E                 3543 	.byte	14
   3439 FF                 3544 	.byte	-1
   343A FF                 3545 	.byte	-1
   343B FD                 3546 	.byte	-3
   343C F3                 3547 	.byte	-13
   343D FF                 3548 	.byte	-1
   343E F2                 3549 	.byte	-14
   343F 01                 3550 	.byte	1
   3440 FF                 3551 	.byte	-1
   3441 F4                 3552 	.byte	-12
   3442 0B                 3553 	.byte	11
   3443 00                 3554 	.byte	0
   3444 0F                 3555 	.byte	15
   3445 02                 3556 	.byte	2
   3446 FF                 3557 	.byte	-1
   3447 F4                 3558 	.byte	-12
   3448 0C                 3559 	.byte	12
   3449 00                 3560 	.byte	0
   344A 1A                 3561 	.byte	26
   344B F3                 3562 	.byte	-13
   344C FF                 3563 	.byte	-1
   344D F3                 3564 	.byte	-13
   344E 0C                 3565 	.byte	12
   344F 00                 3566 	.byte	0
   3450 0A                 3567 	.byte	10
   3451 E7                 3568 	.byte	-25
   3452 FF                 3569 	.byte	-1
   3453 F3                 3570 	.byte	-13
   3454 0C                 3571 	.byte	12
   3455 00                 3572 	.byte	0
   3456 F3                 3573 	.byte	-13
   3457 00                 3574 	.byte	0
   3458 FF                 3575 	.byte	-1
   3459 03                 3576 	.byte	3
   345A 0E                 3577 	.byte	14
   345B FF                 3578 	.byte	-1
   345C 0D                 3579 	.byte	13
   345D FF                 3580 	.byte	-1
   345E FF                 3581 	.byte	-1
   345F FD                 3582 	.byte	-3
   3460 F3                 3583 	.byte	-13
   3461 FF                 3584 	.byte	-1
   3462 F3                 3585 	.byte	-13
   3463 00                 3586 	.byte	0
   3464 01                 3587 	.byte	1
                           3588 	.globl _depth2RollingLeft0
   3465                    3589 _depth2RollingLeft0:
   3465 FF                 3590 	.byte	-1
   3466 03                 3591 	.byte	3
   3467 0E                 3592 	.byte	14
   3468 FF                 3593 	.byte	-1
   3469 10                 3594 	.byte	16
   346A F4                 3595 	.byte	-12
   346B FF                 3596 	.byte	-1
   346C FD                 3597 	.byte	-3
   346D F3                 3598 	.byte	-13
   346E FF                 3599 	.byte	-1
   346F F0                 3600 	.byte	-16
   3470 0B                 3601 	.byte	11
   3471 FF                 3602 	.byte	-1
   3472 0D                 3603 	.byte	13
   3473 00                 3604 	.byte	0
   3474 00                 3605 	.byte	0
   3475 F6                 3606 	.byte	-10
   3476 0E                 3607 	.byte	14
   3477 FF                 3608 	.byte	-1
   3478 0D                 3609 	.byte	13
   3479 00                 3610 	.byte	0
   347A 00                 3611 	.byte	0
   347B 03                 3612 	.byte	3
   347C F4                 3613 	.byte	-12
   347D FF                 3614 	.byte	-1
   347E 0D                 3615 	.byte	13
   347F 00                 3616 	.byte	0
   3480 00                 3617 	.byte	0
   3481 F0                 3618 	.byte	-16
   3482 F3                 3619 	.byte	-13
   3483 FF                 3620 	.byte	-1
   3484 0D                 3621 	.byte	13
   3485 00                 3622 	.byte	0
   3486 00                 3623 	.byte	0
   3487 F0                 3624 	.byte	-16
   3488 0B                 3625 	.byte	11
   3489 FF                 3626 	.byte	-1
   348A 03                 3627 	.byte	3
   348B 0E                 3628 	.byte	14
   348C FF                 3629 	.byte	-1
   348D 10                 3630 	.byte	16
   348E F4                 3631 	.byte	-12
   348F FF                 3632 	.byte	-1
   3490 FD                 3633 	.byte	-3
   3491 F3                 3634 	.byte	-13
   3492 FF                 3635 	.byte	-1
   3493 F0                 3636 	.byte	-16
   3494 0B                 3637 	.byte	11
   3495 01                 3638 	.byte	1
                           3639 	.globl _depth2RollingRight0
   3496                    3640 _depth2RollingRight0:
   3496 FF                 3641 	.byte	-1
   3497 03                 3642 	.byte	3
   3498 0E                 3643 	.byte	14
   3499 FF                 3644 	.byte	-1
   349A 10                 3645 	.byte	16
   349B F4                 3646 	.byte	-12
   349C FF                 3647 	.byte	-1
   349D FD                 3648 	.byte	-3
   349E F3                 3649 	.byte	-13
   349F FF                 3650 	.byte	-1
   34A0 F0                 3651 	.byte	-16
   34A1 0B                 3652 	.byte	11
   34A2 FF                 3653 	.byte	-1
   34A3 0D                 3654 	.byte	13
   34A4 00                 3655 	.byte	0
   34A5 00                 3656 	.byte	0
   34A6 F6                 3657 	.byte	-10
   34A7 0E                 3658 	.byte	14
   34A8 FF                 3659 	.byte	-1
   34A9 0D                 3660 	.byte	13
   34AA 00                 3661 	.byte	0
   34AB 00                 3662 	.byte	0
   34AC 03                 3663 	.byte	3
   34AD F4                 3664 	.byte	-12
   34AE FF                 3665 	.byte	-1
   34AF 0D                 3666 	.byte	13
   34B0 00                 3667 	.byte	0
   34B1 00                 3668 	.byte	0
   34B2 F0                 3669 	.byte	-16
   34B3 F3                 3670 	.byte	-13
   34B4 FF                 3671 	.byte	-1
   34B5 0D                 3672 	.byte	13
   34B6 00                 3673 	.byte	0
   34B7 00                 3674 	.byte	0
   34B8 F0                 3675 	.byte	-16
   34B9 0B                 3676 	.byte	11
   34BA FF                 3677 	.byte	-1
   34BB 03                 3678 	.byte	3
   34BC 0E                 3679 	.byte	14
   34BD FF                 3680 	.byte	-1
   34BE 10                 3681 	.byte	16
   34BF F4                 3682 	.byte	-12
   34C0 FF                 3683 	.byte	-1
   34C1 FD                 3684 	.byte	-3
   34C2 F3                 3685 	.byte	-13
   34C3 FF                 3686 	.byte	-1
   34C4 F0                 3687 	.byte	-16
   34C5 0B                 3688 	.byte	11
   34C6 01                 3689 	.byte	1
                           3690 	.globl _width2RollingFront0
   34C7                    3691 _width2RollingFront0:
   34C7 FF                 3692 	.byte	-1
   34C8 06                 3693 	.byte	6
   34C9 1C                 3694 	.byte	28
   34CA FF                 3695 	.byte	-1
   34CB 08                 3696 	.byte	8
   34CC FA                 3697 	.byte	-6
   34CD FF                 3698 	.byte	-1
   34CE FA                 3699 	.byte	-6
   34CF E5                 3700 	.byte	-27
   34D0 FF                 3701 	.byte	-1
   34D1 F8                 3702 	.byte	-8
   34D2 05                 3703 	.byte	5
   34D3 FF                 3704 	.byte	-1
   34D4 0D                 3705 	.byte	13
   34D5 00                 3706 	.byte	0
   34D6 00                 3707 	.byte	0
   34D7 F9                 3708 	.byte	-7
   34D8 1C                 3709 	.byte	28
   34D9 FF                 3710 	.byte	-1
   34DA 0D                 3711 	.byte	13
   34DB 00                 3712 	.byte	0
   34DC 00                 3713 	.byte	0
   34DD FB                 3714 	.byte	-5
   34DE FA                 3715 	.byte	-6
   34DF FF                 3716 	.byte	-1
   34E0 0D                 3717 	.byte	13
   34E1 00                 3718 	.byte	0
   34E2 00                 3719 	.byte	0
   34E3 ED                 3720 	.byte	-19
   34E4 E5                 3721 	.byte	-27
   34E5 FF                 3722 	.byte	-1
   34E6 0D                 3723 	.byte	13
   34E7 00                 3724 	.byte	0
   34E8 00                 3725 	.byte	0
   34E9 F8                 3726 	.byte	-8
   34EA 05                 3727 	.byte	5
   34EB FF                 3728 	.byte	-1
   34EC 06                 3729 	.byte	6
   34ED 1C                 3730 	.byte	28
   34EE FF                 3731 	.byte	-1
   34EF 08                 3732 	.byte	8
   34F0 FA                 3733 	.byte	-6
   34F1 FF                 3734 	.byte	-1
   34F2 FA                 3735 	.byte	-6
   34F3 E5                 3736 	.byte	-27
   34F4 FF                 3737 	.byte	-1
   34F5 F8                 3738 	.byte	-8
   34F6 05                 3739 	.byte	5
   34F7 01                 3740 	.byte	1
                           3741 	.globl _width2RollingBack0
   34F8                    3742 _width2RollingBack0:
   34F8 FF                 3743 	.byte	-1
   34F9 06                 3744 	.byte	6
   34FA 1C                 3745 	.byte	28
   34FB FF                 3746 	.byte	-1
   34FC 08                 3747 	.byte	8
   34FD FA                 3748 	.byte	-6
   34FE FF                 3749 	.byte	-1
   34FF FA                 3750 	.byte	-6
   3500 E5                 3751 	.byte	-27
   3501 FF                 3752 	.byte	-1
   3502 F8                 3753 	.byte	-8
   3503 05                 3754 	.byte	5
   3504 FF                 3755 	.byte	-1
   3505 0D                 3756 	.byte	13
   3506 00                 3757 	.byte	0
   3507 00                 3758 	.byte	0
   3508 F9                 3759 	.byte	-7
   3509 1C                 3760 	.byte	28
   350A FF                 3761 	.byte	-1
   350B 0D                 3762 	.byte	13
   350C 00                 3763 	.byte	0
   350D 00                 3764 	.byte	0
   350E FB                 3765 	.byte	-5
   350F FA                 3766 	.byte	-6
   3510 FF                 3767 	.byte	-1
   3511 0D                 3768 	.byte	13
   3512 00                 3769 	.byte	0
   3513 00                 3770 	.byte	0
   3514 ED                 3771 	.byte	-19
   3515 E5                 3772 	.byte	-27
   3516 FF                 3773 	.byte	-1
   3517 0D                 3774 	.byte	13
   3518 00                 3775 	.byte	0
   3519 00                 3776 	.byte	0
   351A F8                 3777 	.byte	-8
   351B 05                 3778 	.byte	5
   351C FF                 3779 	.byte	-1
   351D 06                 3780 	.byte	6
   351E 1C                 3781 	.byte	28
   351F FF                 3782 	.byte	-1
   3520 08                 3783 	.byte	8
   3521 FA                 3784 	.byte	-6
   3522 FF                 3785 	.byte	-1
   3523 FA                 3786 	.byte	-6
   3524 E5                 3787 	.byte	-27
   3525 FF                 3788 	.byte	-1
   3526 F8                 3789 	.byte	-8
   3527 05                 3790 	.byte	5
   3528 01                 3791 	.byte	1
                           3792 	.globl _height2FallingLeft1
   3529                    3793 _height2FallingLeft1:
   3529 FF                 3794 	.byte	-1
   352A 05                 3795 	.byte	5
   352B 0E                 3796 	.byte	14
   352C FF                 3797 	.byte	-1
   352D 08                 3798 	.byte	8
   352E FA                 3799 	.byte	-6
   352F FF                 3800 	.byte	-1
   3530 FB                 3801 	.byte	-5
   3531 F3                 3802 	.byte	-13
   3532 FF                 3803 	.byte	-1
   3533 F8                 3804 	.byte	-8
   3534 05                 3805 	.byte	5
   3535 FF                 3806 	.byte	-1
   3536 19                 3807 	.byte	25
   3537 FD                 3808 	.byte	-3
   3538 00                 3809 	.byte	0
   3539 EC                 3810 	.byte	-20
   353A 11                 3811 	.byte	17
   353B FF                 3812 	.byte	-1
   353C 19                 3813 	.byte	25
   353D FC                 3814 	.byte	-4
   353E 00                 3815 	.byte	0
   353F EF                 3816 	.byte	-17
   3540 FE                 3817 	.byte	-2
   3541 FF                 3818 	.byte	-1
   3542 19                 3819 	.byte	25
   3543 FC                 3820 	.byte	-4
   3544 00                 3821 	.byte	0
   3545 E2                 3822 	.byte	-30
   3546 F7                 3823 	.byte	-9
   3547 FF                 3824 	.byte	-1
   3548 19                 3825 	.byte	25
   3549 FC                 3826 	.byte	-4
   354A 00                 3827 	.byte	0
   354B F8                 3828 	.byte	-8
   354C 06                 3829 	.byte	6
   354D FF                 3830 	.byte	-1
   354E 05                 3831 	.byte	5
   354F 0D                 3832 	.byte	13
   3550 FF                 3833 	.byte	-1
   3551 08                 3834 	.byte	8
   3552 FA                 3835 	.byte	-6
   3553 FF                 3836 	.byte	-1
   3554 FB                 3837 	.byte	-5
   3555 F3                 3838 	.byte	-13
   3556 FF                 3839 	.byte	-1
   3557 F8                 3840 	.byte	-8
   3558 06                 3841 	.byte	6
   3559 01                 3842 	.byte	1
                           3843 	.globl _height2RisingRight1
   355A                    3844 _height2RisingRight1:
   355A 00                 3845 	.byte	0
   355B 06                 3846 	.byte	6
   355C 1C                 3847 	.byte	28
   355D FF                 3848 	.byte	-1
   355E 0D                 3849 	.byte	13
   355F 04                 3850 	.byte	4
   3560 FF                 3851 	.byte	-1
   3561 08                 3852 	.byte	8
   3562 FA                 3853 	.byte	-6
   3563 FF                 3854 	.byte	-1
   3564 F3                 3855 	.byte	-13
   3565 FC                 3856 	.byte	-4
   3566 FF                 3857 	.byte	-1
   3567 F8                 3858 	.byte	-8
   3568 06                 3859 	.byte	6
   3569 FF                 3860 	.byte	-1
   356A 01                 3861 	.byte	1
   356B E5                 3862 	.byte	-27
   356C 00                 3863 	.byte	0
   356D 0C                 3864 	.byte	12
   356E 1F                 3865 	.byte	31
   356F FF                 3866 	.byte	-1
   3570 01                 3867 	.byte	1
   3571 E5                 3868 	.byte	-27
   3572 00                 3869 	.byte	0
   3573 07                 3870 	.byte	7
   3574 15                 3871 	.byte	21
   3575 FF                 3872 	.byte	-1
   3576 01                 3873 	.byte	1
   3577 E6                 3874 	.byte	-26
   3578 00                 3875 	.byte	0
   3579 F2                 3876 	.byte	-14
   357A 16                 3877 	.byte	22
   357B FF                 3878 	.byte	-1
   357C 01                 3879 	.byte	1
   357D E6                 3880 	.byte	-26
   357E 00                 3881 	.byte	0
   357F F8                 3882 	.byte	-8
   3580 05                 3883 	.byte	5
   3581 FF                 3884 	.byte	-1
   3582 0D                 3885 	.byte	13
   3583 04                 3886 	.byte	4
   3584 FF                 3887 	.byte	-1
   3585 08                 3888 	.byte	8
   3586 FB                 3889 	.byte	-5
   3587 FF                 3890 	.byte	-1
   3588 F3                 3891 	.byte	-13
   3589 FC                 3892 	.byte	-4
   358A FF                 3893 	.byte	-1
   358B F8                 3894 	.byte	-8
   358C 05                 3895 	.byte	5
   358D 01                 3896 	.byte	1
                           3897 	.globl _height2FallingRight1
   358E                    3898 _height2FallingRight1:
   358E 00                 3899 	.byte	0
   358F 02                 3900 	.byte	2
   3590 00                 3901 	.byte	0
   3591 FF                 3902 	.byte	-1
   3592 01                 3903 	.byte	1
   3593 0E                 3904 	.byte	14
   3594 FF                 3905 	.byte	-1
   3595 08                 3906 	.byte	8
   3596 FA                 3907 	.byte	-6
   3597 FF                 3908 	.byte	-1
   3598 FF                 3909 	.byte	-1
   3599 F3                 3910 	.byte	-13
   359A FF                 3911 	.byte	-1
   359B F8                 3912 	.byte	-8
   359C 05                 3913 	.byte	5
   359D FF                 3914 	.byte	-1
   359E 1A                 3915 	.byte	26
   359F 04                 3916 	.byte	4
   35A0 00                 3917 	.byte	0
   35A1 E7                 3918 	.byte	-25
   35A2 0A                 3919 	.byte	10
   35A3 FF                 3920 	.byte	-1
   35A4 1B                 3921 	.byte	27
   35A5 04                 3922 	.byte	4
   35A6 00                 3923 	.byte	0
   35A7 ED                 3924 	.byte	-19
   35A8 F6                 3925 	.byte	-10
   35A9 FF                 3926 	.byte	-1
   35AA 1B                 3927 	.byte	27
   35AB 04                 3928 	.byte	4
   35AC 00                 3929 	.byte	0
   35AD E4                 3930 	.byte	-28
   35AE EF                 3931 	.byte	-17
   35AF FF                 3932 	.byte	-1
   35B0 1A                 3933 	.byte	26
   35B1 04                 3934 	.byte	4
   35B2 00                 3935 	.byte	0
   35B3 F8                 3936 	.byte	-8
   35B4 05                 3937 	.byte	5
   35B5 FF                 3938 	.byte	-1
   35B6 02                 3939 	.byte	2
   35B7 0E                 3940 	.byte	14
   35B8 FF                 3941 	.byte	-1
   35B9 08                 3942 	.byte	8
   35BA FA                 3943 	.byte	-6
   35BB FF                 3944 	.byte	-1
   35BC FE                 3945 	.byte	-2
   35BD F3                 3946 	.byte	-13
   35BE FF                 3947 	.byte	-1
   35BF F8                 3948 	.byte	-8
   35C0 05                 3949 	.byte	5
   35C1 01                 3950 	.byte	1
                           3951 	.globl _height2RisingLeft1
   35C2                    3952 _height2RisingLeft1:
   35C2 00                 3953 	.byte	0
   35C3 0C                 3954 	.byte	12
   35C4 FD                 3955 	.byte	-3
   35C5 FF                 3956 	.byte	-1
   35C6 F4                 3957 	.byte	-12
   35C7 03                 3958 	.byte	3
   35C8 FF                 3959 	.byte	-1
   35C9 08                 3960 	.byte	8
   35CA FB                 3961 	.byte	-5
   35CB FF                 3962 	.byte	-1
   35CC 0C                 3963 	.byte	12
   35CD FC                 3964 	.byte	-4
   35CE FF                 3965 	.byte	-1
   35CF F8                 3966 	.byte	-8
   35D0 06                 3967 	.byte	6
   35D1 FF                 3968 	.byte	-1
   35D2 0C                 3969 	.byte	12
   35D3 1A                 3970 	.byte	26
   35D4 00                 3971 	.byte	0
   35D5 E8                 3972 	.byte	-24
   35D6 E9                 3973 	.byte	-23
   35D7 FF                 3974 	.byte	-1
   35D8 0D                 3975 	.byte	13
   35D9 1B                 3976 	.byte	27
   35DA 00                 3977 	.byte	0
   35DB FB                 3978 	.byte	-5
   35DC E0                 3979 	.byte	-32
   35DD FF                 3980 	.byte	-1
   35DE 0D                 3981 	.byte	13
   35DF 1A                 3982 	.byte	26
   35E0 00                 3983 	.byte	0
   35E1 FF                 3984 	.byte	-1
   35E2 E2                 3985 	.byte	-30
   35E3 FF                 3986 	.byte	-1
   35E4 0C                 3987 	.byte	12
   35E5 1A                 3988 	.byte	26
   35E6 00                 3989 	.byte	0
   35E7 F8                 3990 	.byte	-8
   35E8 06                 3991 	.byte	6
   35E9 FF                 3992 	.byte	-1
   35EA F5                 3993 	.byte	-11
   35EB 04                 3994 	.byte	4
   35EC FF                 3995 	.byte	-1
   35ED 08                 3996 	.byte	8
   35EE FA                 3997 	.byte	-6
   35EF FF                 3998 	.byte	-1
   35F0 0B                 3999 	.byte	11
   35F1 FC                 4000 	.byte	-4
   35F2 FF                 4001 	.byte	-1
   35F3 F8                 4002 	.byte	-8
   35F4 06                 4003 	.byte	6
   35F5 01                 4004 	.byte	1
                           4005 	.globl _height2FallingBack1
   35F6                    4006 _height2FallingBack1:
   35F6 00                 4007 	.byte	0
   35F7 02                 4008 	.byte	2
   35F8 00                 4009 	.byte	0
   35F9 FF                 4010 	.byte	-1
   35FA 03                 4011 	.byte	3
   35FB 0E                 4012 	.byte	14
   35FC FF                 4013 	.byte	-1
   35FD 06                 4014 	.byte	6
   35FE FA                 4015 	.byte	-6
   35FF FF                 4016 	.byte	-1
   3600 FD                 4017 	.byte	-3
   3601 F3                 4018 	.byte	-13
   3602 FF                 4019 	.byte	-1
   3603 FA                 4020 	.byte	-6
   3604 05                 4021 	.byte	5
   3605 FF                 4022 	.byte	-1
   3606 1C                 4023 	.byte	28
   3607 FF                 4024 	.byte	-1
   3608 00                 4025 	.byte	0
   3609 E7                 4026 	.byte	-25
   360A 0F                 4027 	.byte	15
   360B FF                 4028 	.byte	-1
   360C 1C                 4029 	.byte	28
   360D FE                 4030 	.byte	-2
   360E 00                 4031 	.byte	0
   360F EA                 4032 	.byte	-22
   3610 FC                 4033 	.byte	-4
   3611 FF                 4034 	.byte	-1
   3612 1C                 4035 	.byte	28
   3613 FE                 4036 	.byte	-2
   3614 00                 4037 	.byte	0
   3615 E1                 4038 	.byte	-31
   3616 F5                 4039 	.byte	-11
   3617 FF                 4040 	.byte	-1
   3618 1C                 4041 	.byte	28
   3619 FE                 4042 	.byte	-2
   361A 00                 4043 	.byte	0
   361B FA                 4044 	.byte	-6
   361C 06                 4045 	.byte	6
   361D FF                 4046 	.byte	-1
   361E 03                 4047 	.byte	3
   361F 0D                 4048 	.byte	13
   3620 FF                 4049 	.byte	-1
   3621 06                 4050 	.byte	6
   3622 FA                 4051 	.byte	-6
   3623 FF                 4052 	.byte	-1
   3624 FD                 4053 	.byte	-3
   3625 F3                 4054 	.byte	-13
   3626 FF                 4055 	.byte	-1
   3627 FA                 4056 	.byte	-6
   3628 06                 4057 	.byte	6
   3629 01                 4058 	.byte	1
                           4059 	.globl _height2RisingFront1
   362A                    4060 _height2RisingFront1:
   362A 00                 4061 	.byte	0
   362B 0A                 4062 	.byte	10
   362C 02                 4063 	.byte	2
   362D FF                 4064 	.byte	-1
   362E 03                 4065 	.byte	3
   362F 0E                 4066 	.byte	14
   3630 FF                 4067 	.byte	-1
   3631 F6                 4068 	.byte	-10
   3632 FE                 4069 	.byte	-2
   3633 FF                 4070 	.byte	-1
   3634 FD                 4071 	.byte	-3
   3635 F2                 4072 	.byte	-14
   3636 FF                 4073 	.byte	-1
   3637 0A                 4074 	.byte	10
   3638 02                 4075 	.byte	2
   3639 FF                 4076 	.byte	-1
   363A 17                 4077 	.byte	23
   363B F5                 4078 	.byte	-11
   363C 00                 4079 	.byte	0
   363D EC                 4080 	.byte	-20
   363E 19                 4081 	.byte	25
   363F FF                 4082 	.byte	-1
   3640 17                 4083 	.byte	23
   3641 F4                 4084 	.byte	-12
   3642 00                 4085 	.byte	0
   3643 DF                 4086 	.byte	-33
   3644 0A                 4087 	.byte	10
   3645 FF                 4088 	.byte	-1
   3646 16                 4089 	.byte	22
   3647 F4                 4090 	.byte	-12
   3648 00                 4091 	.byte	0
   3649 E7                 4092 	.byte	-25
   364A FE                 4093 	.byte	-2
   364B FF                 4094 	.byte	-1
   364C 16                 4095 	.byte	22
   364D F5                 4096 	.byte	-11
   364E 00                 4097 	.byte	0
   364F 0B                 4098 	.byte	11
   3650 02                 4099 	.byte	2
   3651 FF                 4100 	.byte	-1
   3652 03                 4101 	.byte	3
   3653 0D                 4102 	.byte	13
   3654 FF                 4103 	.byte	-1
   3655 F5                 4104 	.byte	-11
   3656 FE                 4105 	.byte	-2
   3657 FF                 4106 	.byte	-1
   3658 FD                 4107 	.byte	-3
   3659 F3                 4108 	.byte	-13
   365A FF                 4109 	.byte	-1
   365B 0B                 4110 	.byte	11
   365C 02                 4111 	.byte	2
   365D 01                 4112 	.byte	1
                           4113 	.globl _height2FallingFront1
   365E                    4114 _height2FallingFront1:
   365E FF                 4115 	.byte	-1
   365F 03                 4116 	.byte	3
   3660 0E                 4117 	.byte	14
   3661 FF                 4118 	.byte	-1
   3662 0A                 4119 	.byte	10
   3663 FA                 4120 	.byte	-6
   3664 FF                 4121 	.byte	-1
   3665 FD                 4122 	.byte	-3
   3666 F3                 4123 	.byte	-13
   3667 FF                 4124 	.byte	-1
   3668 F6                 4125 	.byte	-10
   3669 05                 4126 	.byte	5
   366A FF                 4127 	.byte	-1
   366B 18                 4128 	.byte	24
   366C 02                 4129 	.byte	2
   366D 00                 4130 	.byte	0
   366E EB                 4131 	.byte	-21
   366F 0C                 4132 	.byte	12
   3670 FF                 4133 	.byte	-1
   3671 18                 4134 	.byte	24
   3672 02                 4135 	.byte	2
   3673 00                 4136 	.byte	0
   3674 F2                 4137 	.byte	-14
   3675 F8                 4138 	.byte	-8
   3676 FF                 4139 	.byte	-1
   3677 17                 4140 	.byte	23
   3678 02                 4141 	.byte	2
   3679 00                 4142 	.byte	0
   367A E6                 4143 	.byte	-26
   367B F1                 4144 	.byte	-15
   367C FF                 4145 	.byte	-1
   367D 17                 4146 	.byte	23
   367E 02                 4147 	.byte	2
   367F 00                 4148 	.byte	0
   3680 F7                 4149 	.byte	-9
   3681 05                 4150 	.byte	5
   3682 FF                 4151 	.byte	-1
   3683 03                 4152 	.byte	3
   3684 0E                 4153 	.byte	14
   3685 FF                 4154 	.byte	-1
   3686 09                 4155 	.byte	9
   3687 FA                 4156 	.byte	-6
   3688 FF                 4157 	.byte	-1
   3689 FD                 4158 	.byte	-3
   368A F3                 4159 	.byte	-13
   368B FF                 4160 	.byte	-1
   368C F7                 4161 	.byte	-9
   368D 05                 4162 	.byte	5
   368E 01                 4163 	.byte	1
                           4164 	.globl _height2RisingBack1
   368F                    4165 _height2RisingBack1:
   368F 00                 4166 	.byte	0
   3690 10                 4167 	.byte	16
   3691 F5                 4168 	.byte	-11
   3692 FF                 4169 	.byte	-1
   3693 03                 4170 	.byte	3
   3694 0D                 4171 	.byte	13
   3695 FF                 4172 	.byte	-1
   3696 0F                 4173 	.byte	15
   3697 FE                 4174 	.byte	-2
   3698 FF                 4175 	.byte	-1
   3699 FD                 4176 	.byte	-3
   369A F3                 4177 	.byte	-13
   369B FF                 4178 	.byte	-1
   369C F1                 4179 	.byte	-15
   369D 02                 4180 	.byte	2
   369E FF                 4181 	.byte	-1
   369F F7                 4182 	.byte	-9
   36A0 0B                 4183 	.byte	11
   36A1 00                 4184 	.byte	0
   36A2 0C                 4185 	.byte	12
   36A3 02                 4186 	.byte	2
   36A4 FF                 4187 	.byte	-1
   36A5 F7                 4188 	.byte	-9
   36A6 0C                 4189 	.byte	12
   36A7 00                 4190 	.byte	0
   36A8 18                 4191 	.byte	24
   36A9 F2                 4192 	.byte	-14
   36AA FF                 4193 	.byte	-1
   36AB F7                 4194 	.byte	-9
   36AC 0C                 4195 	.byte	12
   36AD 00                 4196 	.byte	0
   36AE 06                 4197 	.byte	6
   36AF E7                 4198 	.byte	-25
   36B0 FF                 4199 	.byte	-1
   36B1 F7                 4200 	.byte	-9
   36B2 0C                 4201 	.byte	12
   36B3 00                 4202 	.byte	0
   36B4 F1                 4203 	.byte	-15
   36B5 01                 4204 	.byte	1
   36B6 FF                 4205 	.byte	-1
   36B7 03                 4206 	.byte	3
   36B8 0E                 4207 	.byte	14
   36B9 FF                 4208 	.byte	-1
   36BA 0F                 4209 	.byte	15
   36BB FE                 4210 	.byte	-2
   36BC FF                 4211 	.byte	-1
   36BD FD                 4212 	.byte	-3
   36BE F3                 4213 	.byte	-13
   36BF FF                 4214 	.byte	-1
   36C0 F1                 4215 	.byte	-15
   36C1 01                 4216 	.byte	1
   36C2 01                 4217 	.byte	1
                           4218 	.globl _depth2RollingLeft1
   36C3                    4219 _depth2RollingLeft1:
   36C3 FF                 4220 	.byte	-1
   36C4 05                 4221 	.byte	5
   36C5 0E                 4222 	.byte	14
   36C6 FF                 4223 	.byte	-1
   36C7 10                 4224 	.byte	16
   36C8 F4                 4225 	.byte	-12
   36C9 FF                 4226 	.byte	-1
   36CA FB                 4227 	.byte	-5
   36CB F3                 4228 	.byte	-13
   36CC FF                 4229 	.byte	-1
   36CD F0                 4230 	.byte	-16
   36CE 0B                 4231 	.byte	11
   36CF FF                 4232 	.byte	-1
   36D0 0C                 4233 	.byte	12
   36D1 FF                 4234 	.byte	-1
   36D2 00                 4235 	.byte	0
   36D3 F9                 4236 	.byte	-7
   36D4 0F                 4237 	.byte	15
   36D5 FF                 4238 	.byte	-1
   36D6 0C                 4239 	.byte	12
   36D7 FE                 4240 	.byte	-2
   36D8 00                 4241 	.byte	0
   36D9 04                 4242 	.byte	4
   36DA F6                 4243 	.byte	-10
   36DB FF                 4244 	.byte	-1
   36DC 0C                 4245 	.byte	12
   36DD FE                 4246 	.byte	-2
   36DE 00                 4247 	.byte	0
   36DF EF                 4248 	.byte	-17
   36E0 F5                 4249 	.byte	-11
   36E1 FF                 4250 	.byte	-1
   36E2 0C                 4251 	.byte	12
   36E3 FE                 4252 	.byte	-2
   36E4 00                 4253 	.byte	0
   36E5 F0                 4254 	.byte	-16
   36E6 0C                 4255 	.byte	12
   36E7 FF                 4256 	.byte	-1
   36E8 05                 4257 	.byte	5
   36E9 0D                 4258 	.byte	13
   36EA FF                 4259 	.byte	-1
   36EB 10                 4260 	.byte	16
   36EC F4                 4261 	.byte	-12
   36ED FF                 4262 	.byte	-1
   36EE FB                 4263 	.byte	-5
   36EF F3                 4264 	.byte	-13
   36F0 FF                 4265 	.byte	-1
   36F1 F0                 4266 	.byte	-16
   36F2 0C                 4267 	.byte	12
   36F3 01                 4268 	.byte	1
                           4269 	.globl _depth2RollingRight1
   36F4                    4270 _depth2RollingRight1:
   36F4 00                 4271 	.byte	0
   36F5 02                 4272 	.byte	2
   36F6 00                 4273 	.byte	0
   36F7 FF                 4274 	.byte	-1
   36F8 01                 4275 	.byte	1
   36F9 0E                 4276 	.byte	14
   36FA FF                 4277 	.byte	-1
   36FB 10                 4278 	.byte	16
   36FC F4                 4279 	.byte	-12
   36FD FF                 4280 	.byte	-1
   36FE FF                 4281 	.byte	-1
   36FF F3                 4282 	.byte	-13
   3700 FF                 4283 	.byte	-1
   3701 F0                 4284 	.byte	-16
   3702 0B                 4285 	.byte	11
   3703 FF                 4286 	.byte	-1
   3704 0D                 4287 	.byte	13
   3705 02                 4288 	.byte	2
   3706 00                 4289 	.byte	0
   3707 F4                 4290 	.byte	-12
   3708 0C                 4291 	.byte	12
   3709 FF                 4292 	.byte	-1
   370A 0D                 4293 	.byte	13
   370B 02                 4294 	.byte	2
   370C 00                 4295 	.byte	0
   370D 03                 4296 	.byte	3
   370E F2                 4297 	.byte	-14
   370F FF                 4298 	.byte	-1
   3710 0D                 4299 	.byte	13
   3711 02                 4300 	.byte	2
   3712 00                 4301 	.byte	0
   3713 F2                 4302 	.byte	-14
   3714 F1                 4303 	.byte	-15
   3715 FF                 4304 	.byte	-1
   3716 0D                 4305 	.byte	13
   3717 02                 4306 	.byte	2
   3718 00                 4307 	.byte	0
   3719 F0                 4308 	.byte	-16
   371A 0B                 4309 	.byte	11
   371B FF                 4310 	.byte	-1
   371C 01                 4311 	.byte	1
   371D 0E                 4312 	.byte	14
   371E FF                 4313 	.byte	-1
   371F 10                 4314 	.byte	16
   3720 F4                 4315 	.byte	-12
   3721 FF                 4316 	.byte	-1
   3722 FF                 4317 	.byte	-1
   3723 F3                 4318 	.byte	-13
   3724 FF                 4319 	.byte	-1
   3725 F0                 4320 	.byte	-16
   3726 0B                 4321 	.byte	11
   3727 01                 4322 	.byte	1
                           4323 	.globl _width2RollingFront1
   3728                    4324 _width2RollingFront1:
   3728 FF                 4325 	.byte	-1
   3729 06                 4326 	.byte	6
   372A 1C                 4327 	.byte	28
   372B FF                 4328 	.byte	-1
   372C 0A                 4329 	.byte	10
   372D FA                 4330 	.byte	-6
   372E FF                 4331 	.byte	-1
   372F FA                 4332 	.byte	-6
   3730 E5                 4333 	.byte	-27
   3731 FF                 4334 	.byte	-1
   3732 F6                 4335 	.byte	-10
   3733 05                 4336 	.byte	5
   3734 FF                 4337 	.byte	-1
   3735 0C                 4338 	.byte	12
   3736 01                 4339 	.byte	1
   3737 00                 4340 	.byte	0
   3738 FA                 4341 	.byte	-6
   3739 1B                 4342 	.byte	27
   373A FF                 4343 	.byte	-1
   373B 0C                 4344 	.byte	12
   373C 01                 4345 	.byte	1
   373D 00                 4346 	.byte	0
   373E FE                 4347 	.byte	-2
   373F F9                 4348 	.byte	-7
   3740 FF                 4349 	.byte	-1
   3741 0B                 4350 	.byte	11
   3742 01                 4351 	.byte	1
   3743 00                 4352 	.byte	0
   3744 EF                 4353 	.byte	-17
   3745 E4                 4354 	.byte	-28
   3746 FF                 4355 	.byte	-1
   3747 0B                 4356 	.byte	11
   3748 01                 4357 	.byte	1
   3749 00                 4358 	.byte	0
   374A F7                 4359 	.byte	-9
   374B 05                 4360 	.byte	5
   374C FF                 4361 	.byte	-1
   374D 06                 4362 	.byte	6
   374E 1C                 4363 	.byte	28
   374F FF                 4364 	.byte	-1
   3750 09                 4365 	.byte	9
   3751 FA                 4366 	.byte	-6
   3752 FF                 4367 	.byte	-1
   3753 FA                 4368 	.byte	-6
   3754 E5                 4369 	.byte	-27
   3755 FF                 4370 	.byte	-1
   3756 F7                 4371 	.byte	-9
   3757 05                 4372 	.byte	5
   3758 01                 4373 	.byte	1
                           4374 	.globl _width2RollingBack1
   3759                    4375 _width2RollingBack1:
   3759 00                 4376 	.byte	0
   375A 02                 4377 	.byte	2
   375B 00                 4378 	.byte	0
   375C FF                 4379 	.byte	-1
   375D 06                 4380 	.byte	6
   375E 1C                 4381 	.byte	28
   375F FF                 4382 	.byte	-1
   3760 06                 4383 	.byte	6
   3761 FA                 4384 	.byte	-6
   3762 FF                 4385 	.byte	-1
   3763 FA                 4386 	.byte	-6
   3764 E5                 4387 	.byte	-27
   3765 FF                 4388 	.byte	-1
   3766 FA                 4389 	.byte	-6
   3767 05                 4390 	.byte	5
   3768 FF                 4391 	.byte	-1
   3769 0E                 4392 	.byte	14
   376A 00                 4393 	.byte	0
   376B 00                 4394 	.byte	0
   376C F8                 4395 	.byte	-8
   376D 1C                 4396 	.byte	28
   376E FF                 4397 	.byte	-1
   376F 0E                 4398 	.byte	14
   3770 FF                 4399 	.byte	-1
   3771 00                 4400 	.byte	0
   3772 F8                 4401 	.byte	-8
   3773 FB                 4402 	.byte	-5
   3774 FF                 4403 	.byte	-1
   3775 0E                 4404 	.byte	14
   3776 FF                 4405 	.byte	-1
   3777 00                 4406 	.byte	0
   3778 EC                 4407 	.byte	-20
   3779 E6                 4408 	.byte	-26
   377A FF                 4409 	.byte	-1
   377B 0E                 4410 	.byte	14
   377C FF                 4411 	.byte	-1
   377D 00                 4412 	.byte	0
   377E FA                 4413 	.byte	-6
   377F 06                 4414 	.byte	6
   3780 FF                 4415 	.byte	-1
   3781 06                 4416 	.byte	6
   3782 1B                 4417 	.byte	27
   3783 FF                 4418 	.byte	-1
   3784 06                 4419 	.byte	6
   3785 FA                 4420 	.byte	-6
   3786 FF                 4421 	.byte	-1
   3787 FA                 4422 	.byte	-6
   3788 E5                 4423 	.byte	-27
   3789 FF                 4424 	.byte	-1
   378A FA                 4425 	.byte	-6
   378B 06                 4426 	.byte	6
   378C 01                 4427 	.byte	1
                           4428 	.globl _height2FallingLeft2
   378D                    4429 _height2FallingLeft2:
   378D FF                 4430 	.byte	-1
   378E 06                 4431 	.byte	6
   378F 0E                 4432 	.byte	14
   3790 FF                 4433 	.byte	-1
   3791 08                 4434 	.byte	8
   3792 FA                 4435 	.byte	-6
   3793 FF                 4436 	.byte	-1
   3794 FA                 4437 	.byte	-6
   3795 F3                 4438 	.byte	-13
   3796 FF                 4439 	.byte	-1
   3797 F8                 4440 	.byte	-8
   3798 05                 4441 	.byte	5
   3799 FF                 4442 	.byte	-1
   379A 18                 4443 	.byte	24
   379B FA                 4444 	.byte	-6
   379C 00                 4445 	.byte	0
   379D EE                 4446 	.byte	-18
   379E 14                 4447 	.byte	20
   379F FF                 4448 	.byte	-1
   37A0 18                 4449 	.byte	24
   37A1 F8                 4450 	.byte	-8
   37A2 00                 4451 	.byte	0
   37A3 F0                 4452 	.byte	-16
   37A4 02                 4453 	.byte	2
   37A5 FF                 4454 	.byte	-1
   37A6 18                 4455 	.byte	24
   37A7 F8                 4456 	.byte	-8
   37A8 00                 4457 	.byte	0
   37A9 E2                 4458 	.byte	-30
   37AA FB                 4459 	.byte	-5
   37AB FF                 4460 	.byte	-1
   37AC 18                 4461 	.byte	24
   37AD F9                 4462 	.byte	-7
   37AE 00                 4463 	.byte	0
   37AF F8                 4464 	.byte	-8
   37B0 06                 4465 	.byte	6
   37B1 FF                 4466 	.byte	-1
   37B2 06                 4467 	.byte	6
   37B3 0C                 4468 	.byte	12
   37B4 FF                 4469 	.byte	-1
   37B5 08                 4470 	.byte	8
   37B6 FA                 4471 	.byte	-6
   37B7 FF                 4472 	.byte	-1
   37B8 FA                 4473 	.byte	-6
   37B9 F4                 4474 	.byte	-12
   37BA FF                 4475 	.byte	-1
   37BB F8                 4476 	.byte	-8
   37BC 06                 4477 	.byte	6
   37BD 01                 4478 	.byte	1
                           4479 	.globl _height2RisingRight2
   37BE                    4480 _height2RisingRight2:
   37BE 00                 4481 	.byte	0
   37BF 06                 4482 	.byte	6
   37C0 1C                 4483 	.byte	28
   37C1 FF                 4484 	.byte	-1
   37C2 0D                 4485 	.byte	13
   37C3 05                 4486 	.byte	5
   37C4 FF                 4487 	.byte	-1
   37C5 08                 4488 	.byte	8
   37C6 FA                 4489 	.byte	-6
   37C7 FF                 4490 	.byte	-1
   37C8 F3                 4491 	.byte	-13
   37C9 FB                 4492 	.byte	-5
   37CA FF                 4493 	.byte	-1
   37CB F8                 4494 	.byte	-8
   37CC 06                 4495 	.byte	6
   37CD FF                 4496 	.byte	-1
   37CE 04                 4497 	.byte	4
   37CF E6                 4498 	.byte	-26
   37D0 00                 4499 	.byte	0
   37D1 09                 4500 	.byte	9
   37D2 1F                 4501 	.byte	31
   37D3 FF                 4502 	.byte	-1
   37D4 05                 4503 	.byte	5
   37D5 E6                 4504 	.byte	-26
   37D6 00                 4505 	.byte	0
   37D7 03                 4506 	.byte	3
   37D8 14                 4507 	.byte	20
   37D9 FF                 4508 	.byte	-1
   37DA 05                 4509 	.byte	5
   37DB E6                 4510 	.byte	-26
   37DC 00                 4511 	.byte	0
   37DD EE                 4512 	.byte	-18
   37DE 15                 4513 	.byte	21
   37DF FF                 4514 	.byte	-1
   37E0 04                 4515 	.byte	4
   37E1 E7                 4516 	.byte	-25
   37E2 00                 4517 	.byte	0
   37E3 F8                 4518 	.byte	-8
   37E4 05                 4519 	.byte	5
   37E5 FF                 4520 	.byte	-1
   37E6 0E                 4521 	.byte	14
   37E7 05                 4522 	.byte	5
   37E8 FF                 4523 	.byte	-1
   37E9 08                 4524 	.byte	8
   37EA FA                 4525 	.byte	-6
   37EB FF                 4526 	.byte	-1
   37EC F2                 4527 	.byte	-14
   37ED FC                 4528 	.byte	-4
   37EE FF                 4529 	.byte	-1
   37EF F8                 4530 	.byte	-8
   37F0 05                 4531 	.byte	5
   37F1 01                 4532 	.byte	1
                           4533 	.globl _height2FallingRight2
   37F2                    4534 _height2FallingRight2:
   37F2 00                 4535 	.byte	0
   37F3 03                 4536 	.byte	3
   37F4 00                 4537 	.byte	0
   37F5 FF                 4538 	.byte	-1
   37F6 00                 4539 	.byte	0
   37F7 0E                 4540 	.byte	14
   37F8 FF                 4541 	.byte	-1
   37F9 08                 4542 	.byte	8
   37FA FA                 4543 	.byte	-6
   37FB FF                 4544 	.byte	-1
   37FC 00                 4545 	.byte	0
   37FD F3                 4546 	.byte	-13
   37FE FF                 4547 	.byte	-1
   37FF F8                 4548 	.byte	-8
   3800 05                 4549 	.byte	5
   3801 FF                 4550 	.byte	-1
   3802 1B                 4551 	.byte	27
   3803 08                 4552 	.byte	8
   3804 00                 4553 	.byte	0
   3805 E5                 4554 	.byte	-27
   3806 06                 4555 	.byte	6
   3807 FF                 4556 	.byte	-1
   3808 1B                 4557 	.byte	27
   3809 07                 4558 	.byte	7
   380A 00                 4559 	.byte	0
   380B ED                 4560 	.byte	-19
   380C F3                 4561 	.byte	-13
   380D FF                 4562 	.byte	-1
   380E 1B                 4563 	.byte	27
   380F 07                 4564 	.byte	7
   3810 00                 4565 	.byte	0
   3811 E5                 4566 	.byte	-27
   3812 EC                 4567 	.byte	-20
   3813 FF                 4568 	.byte	-1
   3814 1B                 4569 	.byte	27
   3815 07                 4570 	.byte	7
   3816 00                 4571 	.byte	0
   3817 F8                 4572 	.byte	-8
   3818 06                 4573 	.byte	6
   3819 FF                 4574 	.byte	-1
   381A 00                 4575 	.byte	0
   381B 0D                 4576 	.byte	13
   381C FF                 4577 	.byte	-1
   381D 08                 4578 	.byte	8
   381E FA                 4579 	.byte	-6
   381F FF                 4580 	.byte	-1
   3820 00                 4581 	.byte	0
   3821 F3                 4582 	.byte	-13
   3822 FF                 4583 	.byte	-1
   3823 F8                 4584 	.byte	-8
   3824 06                 4585 	.byte	6
   3825 01                 4586 	.byte	1
                           4587 	.globl _height2RisingLeft2
   3826                    4588 _height2RisingLeft2:
   3826 00                 4589 	.byte	0
   3827 0B                 4590 	.byte	11
   3828 FC                 4591 	.byte	-4
   3829 FF                 4592 	.byte	-1
   382A F5                 4593 	.byte	-11
   382B 04                 4594 	.byte	4
   382C FF                 4595 	.byte	-1
   382D 08                 4596 	.byte	8
   382E FB                 4597 	.byte	-5
   382F FF                 4598 	.byte	-1
   3830 0B                 4599 	.byte	11
   3831 FB                 4600 	.byte	-5
   3832 FF                 4601 	.byte	-1
   3833 F8                 4602 	.byte	-8
   3834 06                 4603 	.byte	6
   3835 FF                 4604 	.byte	-1
   3836 0F                 4605 	.byte	15
   3837 19                 4606 	.byte	25
   3838 00                 4607 	.byte	0
   3839 E6                 4608 	.byte	-26
   383A EB                 4609 	.byte	-21
   383B FF                 4610 	.byte	-1
   383C 0F                 4611 	.byte	15
   383D 1A                 4612 	.byte	26
   383E 00                 4613 	.byte	0
   383F F9                 4614 	.byte	-7
   3840 E1                 4615 	.byte	-31
   3841 FF                 4616 	.byte	-1
   3842 0F                 4617 	.byte	15
   3843 19                 4618 	.byte	25
   3844 00                 4619 	.byte	0
   3845 FC                 4620 	.byte	-4
   3846 E2                 4621 	.byte	-30
   3847 FF                 4622 	.byte	-1
   3848 0F                 4623 	.byte	15
   3849 19                 4624 	.byte	25
   384A 00                 4625 	.byte	0
   384B F8                 4626 	.byte	-8
   384C 06                 4627 	.byte	6
   384D FF                 4628 	.byte	-1
   384E F5                 4629 	.byte	-11
   384F 05                 4630 	.byte	5
   3850 FF                 4631 	.byte	-1
   3851 08                 4632 	.byte	8
   3852 FA                 4633 	.byte	-6
   3853 FF                 4634 	.byte	-1
   3854 0B                 4635 	.byte	11
   3855 FB                 4636 	.byte	-5
   3856 FF                 4637 	.byte	-1
   3857 F8                 4638 	.byte	-8
   3858 06                 4639 	.byte	6
   3859 01                 4640 	.byte	1
                           4641 	.globl _height2FallingBack2
   385A                    4642 _height2FallingBack2:
   385A 00                 4643 	.byte	0
   385B 04                 4644 	.byte	4
   385C 00                 4645 	.byte	0
   385D FF                 4646 	.byte	-1
   385E 03                 4647 	.byte	3
   385F 0E                 4648 	.byte	14
   3860 FF                 4649 	.byte	-1
   3861 04                 4650 	.byte	4
   3862 FA                 4651 	.byte	-6
   3863 FF                 4652 	.byte	-1
   3864 FD                 4653 	.byte	-3
   3865 F3                 4654 	.byte	-13
   3866 FF                 4655 	.byte	-1
   3867 FC                 4656 	.byte	-4
   3868 05                 4657 	.byte	5
   3869 FF                 4658 	.byte	-1
   386A 1D                 4659 	.byte	29
   386B FE                 4660 	.byte	-2
   386C 00                 4661 	.byte	0
   386D E6                 4662 	.byte	-26
   386E 10                 4663 	.byte	16
   386F FF                 4664 	.byte	-1
   3870 1D                 4665 	.byte	29
   3871 FD                 4666 	.byte	-3
   3872 00                 4667 	.byte	0
   3873 E7                 4668 	.byte	-25
   3874 FD                 4669 	.byte	-3
   3875 FF                 4670 	.byte	-1
   3876 1D                 4671 	.byte	29
   3877 FD                 4672 	.byte	-3
   3878 00                 4673 	.byte	0
   3879 E0                 4674 	.byte	-32
   387A F6                 4675 	.byte	-10
   387B FF                 4676 	.byte	-1
   387C 1D                 4677 	.byte	29
   387D FD                 4678 	.byte	-3
   387E 00                 4679 	.byte	0
   387F FC                 4680 	.byte	-4
   3880 06                 4681 	.byte	6
   3881 FF                 4682 	.byte	-1
   3882 03                 4683 	.byte	3
   3883 0D                 4684 	.byte	13
   3884 FF                 4685 	.byte	-1
   3885 04                 4686 	.byte	4
   3886 FA                 4687 	.byte	-6
   3887 FF                 4688 	.byte	-1
   3888 FD                 4689 	.byte	-3
   3889 F3                 4690 	.byte	-13
   388A FF                 4691 	.byte	-1
   388B FC                 4692 	.byte	-4
   388C 06                 4693 	.byte	6
   388D 01                 4694 	.byte	1
                           4695 	.globl _height2RisingFront2
   388E                    4696 _height2RisingFront2:
   388E 00                 4697 	.byte	0
   388F 09                 4698 	.byte	9
   3890 02                 4699 	.byte	2
   3891 FF                 4700 	.byte	-1
   3892 03                 4701 	.byte	3
   3893 0E                 4702 	.byte	14
   3894 FF                 4703 	.byte	-1
   3895 F7                 4704 	.byte	-9
   3896 FE                 4705 	.byte	-2
   3897 FF                 4706 	.byte	-1
   3898 FD                 4707 	.byte	-3
   3899 F2                 4708 	.byte	-14
   389A FF                 4709 	.byte	-1
   389B 09                 4710 	.byte	9
   389C 02                 4711 	.byte	2
   389D FF                 4712 	.byte	-1
   389E 19                 4713 	.byte	25
   389F F6                 4714 	.byte	-10
   38A0 00                 4715 	.byte	0
   38A1 EA                 4716 	.byte	-22
   38A2 18                 4717 	.byte	24
   38A3 FF                 4718 	.byte	-1
   38A4 19                 4719 	.byte	25
   38A5 F5                 4720 	.byte	-11
   38A6 00                 4721 	.byte	0
   38A7 DE                 4722 	.byte	-34
   38A8 09                 4723 	.byte	9
   38A9 FF                 4724 	.byte	-1
   38AA 19                 4725 	.byte	25
   38AB F5                 4726 	.byte	-11
   38AC 00                 4727 	.byte	0
   38AD E4                 4728 	.byte	-28
   38AE FD                 4729 	.byte	-3
   38AF FF                 4730 	.byte	-1
   38B0 19                 4731 	.byte	25
   38B1 F6                 4732 	.byte	-10
   38B2 00                 4733 	.byte	0
   38B3 09                 4734 	.byte	9
   38B4 02                 4735 	.byte	2
   38B5 FF                 4736 	.byte	-1
   38B6 03                 4737 	.byte	3
   38B7 0D                 4738 	.byte	13
   38B8 FF                 4739 	.byte	-1
   38B9 F7                 4740 	.byte	-9
   38BA FE                 4741 	.byte	-2
   38BB FF                 4742 	.byte	-1
   38BC FD                 4743 	.byte	-3
   38BD F3                 4744 	.byte	-13
   38BE FF                 4745 	.byte	-1
   38BF 09                 4746 	.byte	9
   38C0 02                 4747 	.byte	2
   38C1 01                 4748 	.byte	1
                           4749 	.globl _height2FallingFront2
   38C2                    4750 _height2FallingFront2:
   38C2 FF                 4751 	.byte	-1
   38C3 03                 4752 	.byte	3
   38C4 0E                 4753 	.byte	14
   38C5 FF                 4754 	.byte	-1
   38C6 0B                 4755 	.byte	11
   38C7 FA                 4756 	.byte	-6
   38C8 FF                 4757 	.byte	-1
   38C9 FD                 4758 	.byte	-3
   38CA F3                 4759 	.byte	-13
   38CB FF                 4760 	.byte	-1
   38CC F5                 4761 	.byte	-11
   38CD 05                 4762 	.byte	5
   38CE FF                 4763 	.byte	-1
   38CF 15                 4764 	.byte	21
   38D0 03                 4765 	.byte	3
   38D1 00                 4766 	.byte	0
   38D2 EE                 4767 	.byte	-18
   38D3 0B                 4768 	.byte	11
   38D4 FF                 4769 	.byte	-1
   38D5 15                 4770 	.byte	21
   38D6 03                 4771 	.byte	3
   38D7 00                 4772 	.byte	0
   38D8 F6                 4773 	.byte	-10
   38D9 F7                 4774 	.byte	-9
   38DA FF                 4775 	.byte	-1
   38DB 15                 4776 	.byte	21
   38DC 03                 4777 	.byte	3
   38DD 00                 4778 	.byte	0
   38DE E8                 4779 	.byte	-24
   38DF F0                 4780 	.byte	-16
   38E0 FF                 4781 	.byte	-1
   38E1 15                 4782 	.byte	21
   38E2 03                 4783 	.byte	3
   38E3 00                 4784 	.byte	0
   38E4 F5                 4785 	.byte	-11
   38E5 05                 4786 	.byte	5
   38E6 FF                 4787 	.byte	-1
   38E7 03                 4788 	.byte	3
   38E8 0E                 4789 	.byte	14
   38E9 FF                 4790 	.byte	-1
   38EA 0B                 4791 	.byte	11
   38EB FA                 4792 	.byte	-6
   38EC FF                 4793 	.byte	-1
   38ED FD                 4794 	.byte	-3
   38EE F3                 4795 	.byte	-13
   38EF FF                 4796 	.byte	-1
   38F0 F5                 4797 	.byte	-11
   38F1 05                 4798 	.byte	5
   38F2 01                 4799 	.byte	1
                           4800 	.globl _height2RisingBack2
   38F3                    4801 _height2RisingBack2:
   38F3 00                 4802 	.byte	0
   38F4 10                 4803 	.byte	16
   38F5 F5                 4804 	.byte	-11
   38F6 FF                 4805 	.byte	-1
   38F7 03                 4806 	.byte	3
   38F8 0D                 4807 	.byte	13
   38F9 FF                 4808 	.byte	-1
   38FA 0F                 4809 	.byte	15
   38FB FE                 4810 	.byte	-2
   38FC FF                 4811 	.byte	-1
   38FD FD                 4812 	.byte	-3
   38FE F3                 4813 	.byte	-13
   38FF FF                 4814 	.byte	-1
   3900 F1                 4815 	.byte	-15
   3901 02                 4816 	.byte	2
   3902 FF                 4817 	.byte	-1
   3903 FB                 4818 	.byte	-5
   3904 0B                 4819 	.byte	11
   3905 00                 4820 	.byte	0
   3906 08                 4821 	.byte	8
   3907 02                 4822 	.byte	2
   3908 FF                 4823 	.byte	-1
   3909 FB                 4824 	.byte	-5
   390A 0B                 4825 	.byte	11
   390B 00                 4826 	.byte	0
   390C 14                 4827 	.byte	20
   390D F3                 4828 	.byte	-13
   390E FF                 4829 	.byte	-1
   390F FB                 4830 	.byte	-5
   3910 0B                 4831 	.byte	11
   3911 00                 4832 	.byte	0
   3912 02                 4833 	.byte	2
   3913 E8                 4834 	.byte	-24
   3914 FF                 4835 	.byte	-1
   3915 FB                 4836 	.byte	-5
   3916 0B                 4837 	.byte	11
   3917 00                 4838 	.byte	0
   3918 F1                 4839 	.byte	-15
   3919 02                 4840 	.byte	2
   391A FF                 4841 	.byte	-1
   391B 03                 4842 	.byte	3
   391C 0D                 4843 	.byte	13
   391D FF                 4844 	.byte	-1
   391E 0F                 4845 	.byte	15
   391F FE                 4846 	.byte	-2
   3920 FF                 4847 	.byte	-1
   3921 FD                 4848 	.byte	-3
   3922 F3                 4849 	.byte	-13
   3923 FF                 4850 	.byte	-1
   3924 F1                 4851 	.byte	-15
   3925 02                 4852 	.byte	2
   3926 01                 4853 	.byte	1
                           4854 	.globl _depth2RollingLeft2
   3927                    4855 _depth2RollingLeft2:
   3927 FF                 4856 	.byte	-1
   3928 06                 4857 	.byte	6
   3929 0E                 4858 	.byte	14
   392A FF                 4859 	.byte	-1
   392B 10                 4860 	.byte	16
   392C F4                 4861 	.byte	-12
   392D FF                 4862 	.byte	-1
   392E FA                 4863 	.byte	-6
   392F F3                 4864 	.byte	-13
   3930 FF                 4865 	.byte	-1
   3931 F0                 4866 	.byte	-16
   3932 0B                 4867 	.byte	11
   3933 FF                 4868 	.byte	-1
   3934 0C                 4869 	.byte	12
   3935 FD                 4870 	.byte	-3
   3936 00                 4871 	.byte	0
   3937 FA                 4872 	.byte	-6
   3938 11                 4873 	.byte	17
   3939 FF                 4874 	.byte	-1
   393A 0C                 4875 	.byte	12
   393B FC                 4876 	.byte	-4
   393C 00                 4877 	.byte	0
   393D 04                 4878 	.byte	4
   393E F8                 4879 	.byte	-8
   393F FF                 4880 	.byte	-1
   3940 0C                 4881 	.byte	12
   3941 FD                 4882 	.byte	-3
   3942 00                 4883 	.byte	0
   3943 EE                 4884 	.byte	-18
   3944 F6                 4885 	.byte	-10
   3945 FF                 4886 	.byte	-1
   3946 0C                 4887 	.byte	12
   3947 FC                 4888 	.byte	-4
   3948 00                 4889 	.byte	0
   3949 F0                 4890 	.byte	-16
   394A 0C                 4891 	.byte	12
   394B FF                 4892 	.byte	-1
   394C 06                 4893 	.byte	6
   394D 0D                 4894 	.byte	13
   394E FF                 4895 	.byte	-1
   394F 10                 4896 	.byte	16
   3950 F5                 4897 	.byte	-11
   3951 FF                 4898 	.byte	-1
   3952 FA                 4899 	.byte	-6
   3953 F2                 4900 	.byte	-14
   3954 FF                 4901 	.byte	-1
   3955 F0                 4902 	.byte	-16
   3956 0C                 4903 	.byte	12
   3957 01                 4904 	.byte	1
                           4905 	.globl _depth2RollingRight2
   3958                    4906 _depth2RollingRight2:
   3958 00                 4907 	.byte	0
   3959 03                 4908 	.byte	3
   395A 00                 4909 	.byte	0
   395B FF                 4910 	.byte	-1
   395C 00                 4911 	.byte	0
   395D 0E                 4912 	.byte	14
   395E FF                 4913 	.byte	-1
   395F 10                 4914 	.byte	16
   3960 F4                 4915 	.byte	-12
   3961 FF                 4916 	.byte	-1
   3962 00                 4917 	.byte	0
   3963 F3                 4918 	.byte	-13
   3964 FF                 4919 	.byte	-1
   3965 F0                 4920 	.byte	-16
   3966 0B                 4921 	.byte	11
   3967 FF                 4922 	.byte	-1
   3968 0E                 4923 	.byte	14
   3969 04                 4924 	.byte	4
   396A 00                 4925 	.byte	0
   396B F2                 4926 	.byte	-14
   396C 0A                 4927 	.byte	10
   396D FF                 4928 	.byte	-1
   396E 0D                 4929 	.byte	13
   396F 04                 4930 	.byte	4
   3970 00                 4931 	.byte	0
   3971 03                 4932 	.byte	3
   3972 F0                 4933 	.byte	-16
   3973 FF                 4934 	.byte	-1
   3974 0D                 4935 	.byte	13
   3975 04                 4936 	.byte	4
   3976 00                 4937 	.byte	0
   3977 F3                 4938 	.byte	-13
   3978 EF                 4939 	.byte	-17
   3979 FF                 4940 	.byte	-1
   397A 0E                 4941 	.byte	14
   397B 04                 4942 	.byte	4
   397C 00                 4943 	.byte	0
   397D F0                 4944 	.byte	-16
   397E 0B                 4945 	.byte	11
   397F FF                 4946 	.byte	-1
   3980 FF                 4947 	.byte	-1
   3981 0E                 4948 	.byte	14
   3982 FF                 4949 	.byte	-1
   3983 10                 4950 	.byte	16
   3984 F4                 4951 	.byte	-12
   3985 FF                 4952 	.byte	-1
   3986 01                 4953 	.byte	1
   3987 F3                 4954 	.byte	-13
   3988 FF                 4955 	.byte	-1
   3989 F0                 4956 	.byte	-16
   398A 0B                 4957 	.byte	11
   398B 01                 4958 	.byte	1
                           4959 	.globl _width2RollingFront2
   398C                    4960 _width2RollingFront2:
   398C FF                 4961 	.byte	-1
   398D 06                 4962 	.byte	6
   398E 1C                 4963 	.byte	28
   398F FF                 4964 	.byte	-1
   3990 0B                 4965 	.byte	11
   3991 FA                 4966 	.byte	-6
   3992 FF                 4967 	.byte	-1
   3993 FA                 4968 	.byte	-6
   3994 E5                 4969 	.byte	-27
   3995 FF                 4970 	.byte	-1
   3996 F5                 4971 	.byte	-11
   3997 05                 4972 	.byte	5
   3998 FF                 4973 	.byte	-1
   3999 0A                 4974 	.byte	10
   399A 02                 4975 	.byte	2
   399B 00                 4976 	.byte	0
   399C FC                 4977 	.byte	-4
   399D 1A                 4978 	.byte	26
   399E FF                 4979 	.byte	-1
   399F 0A                 4980 	.byte	10
   39A0 02                 4981 	.byte	2
   39A1 00                 4982 	.byte	0
   39A2 01                 4983 	.byte	1
   39A3 F8                 4984 	.byte	-8
   39A4 FF                 4985 	.byte	-1
   39A5 0B                 4986 	.byte	11
   39A6 02                 4987 	.byte	2
   39A7 00                 4988 	.byte	0
   39A8 EF                 4989 	.byte	-17
   39A9 E3                 4990 	.byte	-29
   39AA FF                 4991 	.byte	-1
   39AB 0B                 4992 	.byte	11
   39AC 02                 4993 	.byte	2
   39AD 00                 4994 	.byte	0
   39AE F4                 4995 	.byte	-12
   39AF 05                 4996 	.byte	5
   39B0 FF                 4997 	.byte	-1
   39B1 06                 4998 	.byte	6
   39B2 1C                 4999 	.byte	28
   39B3 FF                 5000 	.byte	-1
   39B4 0C                 5001 	.byte	12
   39B5 FA                 5002 	.byte	-6
   39B6 FF                 5003 	.byte	-1
   39B7 FA                 5004 	.byte	-6
   39B8 E5                 5005 	.byte	-27
   39B9 FF                 5006 	.byte	-1
   39BA F4                 5007 	.byte	-12
   39BB 05                 5008 	.byte	5
   39BC 01                 5009 	.byte	1
                           5010 	.globl _width2RollingBack2
   39BD                    5011 _width2RollingBack2:
   39BD 00                 5012 	.byte	0
   39BE 04                 5013 	.byte	4
   39BF 00                 5014 	.byte	0
   39C0 FF                 5015 	.byte	-1
   39C1 06                 5016 	.byte	6
   39C2 1C                 5017 	.byte	28
   39C3 FF                 5018 	.byte	-1
   39C4 04                 5019 	.byte	4
   39C5 FA                 5020 	.byte	-6
   39C6 FF                 5021 	.byte	-1
   39C7 FA                 5022 	.byte	-6
   39C8 E5                 5023 	.byte	-27
   39C9 FF                 5024 	.byte	-1
   39CA FC                 5025 	.byte	-4
   39CB 05                 5026 	.byte	5
   39CC FF                 5027 	.byte	-1
   39CD 0E                 5028 	.byte	14
   39CE FF                 5029 	.byte	-1
   39CF 00                 5030 	.byte	0
   39D0 F8                 5031 	.byte	-8
   39D1 1D                 5032 	.byte	29
   39D2 FF                 5033 	.byte	-1
   39D3 0E                 5034 	.byte	14
   39D4 FE                 5035 	.byte	-2
   39D5 00                 5036 	.byte	0
   39D6 F6                 5037 	.byte	-10
   39D7 FC                 5038 	.byte	-4
   39D8 FF                 5039 	.byte	-1
   39D9 0F                 5040 	.byte	15
   39DA FE                 5041 	.byte	-2
   39DB 00                 5042 	.byte	0
   39DC EB                 5043 	.byte	-21
   39DD E7                 5044 	.byte	-25
   39DE FF                 5045 	.byte	-1
   39DF 0F                 5046 	.byte	15
   39E0 FE                 5047 	.byte	-2
   39E1 00                 5048 	.byte	0
   39E2 FB                 5049 	.byte	-5
   39E3 06                 5050 	.byte	6
   39E4 FF                 5051 	.byte	-1
   39E5 06                 5052 	.byte	6
   39E6 1B                 5053 	.byte	27
   39E7 FF                 5054 	.byte	-1
   39E8 05                 5055 	.byte	5
   39E9 FA                 5056 	.byte	-6
   39EA FF                 5057 	.byte	-1
   39EB FA                 5058 	.byte	-6
   39EC E5                 5059 	.byte	-27
   39ED FF                 5060 	.byte	-1
   39EE FB                 5061 	.byte	-5
   39EF 06                 5062 	.byte	6
   39F0 01                 5063 	.byte	1
                           5064 	.globl _height2FallingLeft3
   39F1                    5065 _height2FallingLeft3:
   39F1 FF                 5066 	.byte	-1
   39F2 08                 5067 	.byte	8
   39F3 0D                 5068 	.byte	13
   39F4 FF                 5069 	.byte	-1
   39F5 08                 5070 	.byte	8
   39F6 FA                 5071 	.byte	-6
   39F7 FF                 5072 	.byte	-1
   39F8 F8                 5073 	.byte	-8
   39F9 F4                 5074 	.byte	-12
   39FA FF                 5075 	.byte	-1
   39FB F8                 5076 	.byte	-8
   39FC 05                 5077 	.byte	5
   39FD FF                 5078 	.byte	-1
   39FE 16                 5079 	.byte	22
   39FF F6                 5080 	.byte	-10
   3A00 00                 5081 	.byte	0
   3A01 F2                 5082 	.byte	-14
   3A02 17                 5083 	.byte	23
   3A03 FF                 5084 	.byte	-1
   3A04 15                 5085 	.byte	21
   3A05 F5                 5086 	.byte	-11
   3A06 00                 5087 	.byte	0
   3A07 F3                 5088 	.byte	-13
   3A08 05                 5089 	.byte	5
   3A09 FF                 5090 	.byte	-1
   3A0A 15                 5091 	.byte	21
   3A0B F6                 5092 	.byte	-10
   3A0C 00                 5093 	.byte	0
   3A0D E3                 5094 	.byte	-29
   3A0E FE                 5095 	.byte	-2
   3A0F FF                 5096 	.byte	-1
   3A10 16                 5097 	.byte	22
   3A11 F5                 5098 	.byte	-11
   3A12 00                 5099 	.byte	0
   3A13 F8                 5100 	.byte	-8
   3A14 06                 5101 	.byte	6
   3A15 FF                 5102 	.byte	-1
   3A16 07                 5103 	.byte	7
   3A17 0C                 5104 	.byte	12
   3A18 FF                 5105 	.byte	-1
   3A19 08                 5106 	.byte	8
   3A1A FB                 5107 	.byte	-5
   3A1B FF                 5108 	.byte	-1
   3A1C F9                 5109 	.byte	-7
   3A1D F3                 5110 	.byte	-13
   3A1E FF                 5111 	.byte	-1
   3A1F F8                 5112 	.byte	-8
   3A20 06                 5113 	.byte	6
   3A21 01                 5114 	.byte	1
                           5115 	.globl _height2RisingRight3
   3A22                    5116 _height2RisingRight3:
   3A22 00                 5117 	.byte	0
   3A23 06                 5118 	.byte	6
   3A24 1C                 5119 	.byte	28
   3A25 FF                 5120 	.byte	-1
   3A26 0D                 5121 	.byte	13
   3A27 07                 5122 	.byte	7
   3A28 FF                 5123 	.byte	-1
   3A29 08                 5124 	.byte	8
   3A2A FA                 5125 	.byte	-6
   3A2B FF                 5126 	.byte	-1
   3A2C F3                 5127 	.byte	-13
   3A2D F9                 5128 	.byte	-7
   3A2E FF                 5129 	.byte	-1
   3A2F F8                 5130 	.byte	-8
   3A30 06                 5131 	.byte	6
   3A31 FF                 5132 	.byte	-1
   3A32 08                 5133 	.byte	8
   3A33 E8                 5134 	.byte	-24
   3A34 00                 5135 	.byte	0
   3A35 05                 5136 	.byte	5
   3A36 1F                 5137 	.byte	31
   3A37 FF                 5138 	.byte	-1
   3A38 08                 5139 	.byte	8
   3A39 E8                 5140 	.byte	-24
   3A3A 00                 5141 	.byte	0
   3A3B 00                 5142 	.byte	0
   3A3C 12                 5143 	.byte	18
   3A3D FF                 5144 	.byte	-1
   3A3E 08                 5145 	.byte	8
   3A3F E8                 5146 	.byte	-24
   3A40 00                 5147 	.byte	0
   3A41 EB                 5148 	.byte	-21
   3A42 11                 5149 	.byte	17
   3A43 FF                 5150 	.byte	-1
   3A44 08                 5151 	.byte	8
   3A45 E9                 5152 	.byte	-23
   3A46 00                 5153 	.byte	0
   3A47 F8                 5154 	.byte	-8
   3A48 05                 5155 	.byte	5
   3A49 FF                 5156 	.byte	-1
   3A4A 0D                 5157 	.byte	13
   3A4B 07                 5158 	.byte	7
   3A4C FF                 5159 	.byte	-1
   3A4D 08                 5160 	.byte	8
   3A4E FA                 5161 	.byte	-6
   3A4F FF                 5162 	.byte	-1
   3A50 F3                 5163 	.byte	-13
   3A51 FA                 5164 	.byte	-6
   3A52 FF                 5165 	.byte	-1
   3A53 F8                 5166 	.byte	-8
   3A54 05                 5167 	.byte	5
   3A55 01                 5168 	.byte	1
                           5169 	.globl _height2FallingRight3
   3A56                    5170 _height2FallingRight3:
   3A56 00                 5171 	.byte	0
   3A57 05                 5172 	.byte	5
   3A58 01                 5173 	.byte	1
   3A59 FF                 5174 	.byte	-1
   3A5A FE                 5175 	.byte	-2
   3A5B 0D                 5176 	.byte	13
   3A5C FF                 5177 	.byte	-1
   3A5D 08                 5178 	.byte	8
   3A5E FA                 5179 	.byte	-6
   3A5F FF                 5180 	.byte	-1
   3A60 02                 5181 	.byte	2
   3A61 F4                 5182 	.byte	-12
   3A62 FF                 5183 	.byte	-1
   3A63 F8                 5184 	.byte	-8
   3A64 05                 5185 	.byte	5
   3A65 FF                 5186 	.byte	-1
   3A66 1B                 5187 	.byte	27
   3A67 0B                 5188 	.byte	11
   3A68 00                 5189 	.byte	0
   3A69 E3                 5190 	.byte	-29
   3A6A 02                 5191 	.byte	2
   3A6B FF                 5192 	.byte	-1
   3A6C 1A                 5193 	.byte	26
   3A6D 0B                 5194 	.byte	11
   3A6E 00                 5195 	.byte	0
   3A6F EE                 5196 	.byte	-18
   3A70 EF                 5197 	.byte	-17
   3A71 FF                 5198 	.byte	-1
   3A72 1A                 5199 	.byte	26
   3A73 0B                 5200 	.byte	11
   3A74 00                 5201 	.byte	0
   3A75 E8                 5202 	.byte	-24
   3A76 E9                 5203 	.byte	-23
   3A77 FF                 5204 	.byte	-1
   3A78 1B                 5205 	.byte	27
   3A79 0A                 5206 	.byte	10
   3A7A 00                 5207 	.byte	0
   3A7B F8                 5208 	.byte	-8
   3A7C 06                 5209 	.byte	6
   3A7D FF                 5210 	.byte	-1
   3A7E FD                 5211 	.byte	-3
   3A7F 0D                 5212 	.byte	13
   3A80 FF                 5213 	.byte	-1
   3A81 08                 5214 	.byte	8
   3A82 FA                 5215 	.byte	-6
   3A83 FF                 5216 	.byte	-1
   3A84 03                 5217 	.byte	3
   3A85 F3                 5218 	.byte	-13
   3A86 FF                 5219 	.byte	-1
   3A87 F8                 5220 	.byte	-8
   3A88 06                 5221 	.byte	6
   3A89 01                 5222 	.byte	1
                           5223 	.globl _height2RisingLeft3
   3A8A                    5224 _height2RisingLeft3:
   3A8A 00                 5225 	.byte	0
   3A8B 0A                 5226 	.byte	10
   3A8C FA                 5227 	.byte	-6
   3A8D FF                 5228 	.byte	-1
   3A8E F6                 5229 	.byte	-10
   3A8F 06                 5230 	.byte	6
   3A90 FF                 5231 	.byte	-1
   3A91 08                 5232 	.byte	8
   3A92 FB                 5233 	.byte	-5
   3A93 FF                 5234 	.byte	-1
   3A94 0A                 5235 	.byte	10
   3A95 F9                 5236 	.byte	-7
   3A96 FF                 5237 	.byte	-1
   3A97 F8                 5238 	.byte	-8
   3A98 06                 5239 	.byte	6
   3A99 FF                 5240 	.byte	-1
   3A9A 12                 5241 	.byte	18
   3A9B 17                 5242 	.byte	23
   3A9C 00                 5243 	.byte	0
   3A9D E4                 5244 	.byte	-28
   3A9E EF                 5245 	.byte	-17
   3A9F FF                 5246 	.byte	-1
   3AA0 12                 5247 	.byte	18
   3AA1 18                 5248 	.byte	24
   3AA2 00                 5249 	.byte	0
   3AA3 F6                 5250 	.byte	-10
   3AA4 E3                 5251 	.byte	-29
   3AA5 FF                 5252 	.byte	-1
   3AA6 12                 5253 	.byte	18
   3AA7 17                 5254 	.byte	23
   3AA8 00                 5255 	.byte	0
   3AA9 F8                 5256 	.byte	-8
   3AAA E2                 5257 	.byte	-30
   3AAB FF                 5258 	.byte	-1
   3AAC 12                 5259 	.byte	18
   3AAD 17                 5260 	.byte	23
   3AAE 00                 5261 	.byte	0
   3AAF F8                 5262 	.byte	-8
   3AB0 06                 5263 	.byte	6
   3AB1 FF                 5264 	.byte	-1
   3AB2 F6                 5265 	.byte	-10
   3AB3 07                 5266 	.byte	7
   3AB4 FF                 5267 	.byte	-1
   3AB5 08                 5268 	.byte	8
   3AB6 FA                 5269 	.byte	-6
   3AB7 FF                 5270 	.byte	-1
   3AB8 0A                 5271 	.byte	10
   3AB9 F9                 5272 	.byte	-7
   3ABA FF                 5273 	.byte	-1
   3ABB F8                 5274 	.byte	-8
   3ABC 06                 5275 	.byte	6
   3ABD 01                 5276 	.byte	1
                           5277 	.globl _height2FallingBack3
   3ABE                    5278 _height2FallingBack3:
   3ABE 00                 5279 	.byte	0
   3ABF 06                 5280 	.byte	6
   3AC0 00                 5281 	.byte	0
   3AC1 FF                 5282 	.byte	-1
   3AC2 03                 5283 	.byte	3
   3AC3 0E                 5284 	.byte	14
   3AC4 FF                 5285 	.byte	-1
   3AC5 02                 5286 	.byte	2
   3AC6 FA                 5287 	.byte	-6
   3AC7 FF                 5288 	.byte	-1
   3AC8 FD                 5289 	.byte	-3
   3AC9 F3                 5290 	.byte	-13
   3ACA FF                 5291 	.byte	-1
   3ACB FE                 5292 	.byte	-2
   3ACC 05                 5293 	.byte	5
   3ACD FF                 5294 	.byte	-1
   3ACE 1E                 5295 	.byte	30
   3ACF FC                 5296 	.byte	-4
   3AD0 00                 5297 	.byte	0
   3AD1 E5                 5298 	.byte	-27
   3AD2 12                 5299 	.byte	18
   3AD3 FF                 5300 	.byte	-1
   3AD4 1E                 5301 	.byte	30
   3AD5 FB                 5302 	.byte	-5
   3AD6 00                 5303 	.byte	0
   3AD7 E4                 5304 	.byte	-28
   3AD8 FF                 5305 	.byte	-1
   3AD9 FF                 5306 	.byte	-1
   3ADA 1E                 5307 	.byte	30
   3ADB FB                 5308 	.byte	-5
   3ADC 00                 5309 	.byte	0
   3ADD DF                 5310 	.byte	-33
   3ADE F8                 5311 	.byte	-8
   3ADF FF                 5312 	.byte	-1
   3AE0 1E                 5313 	.byte	30
   3AE1 FB                 5314 	.byte	-5
   3AE2 00                 5315 	.byte	0
   3AE3 FE                 5316 	.byte	-2
   3AE4 06                 5317 	.byte	6
   3AE5 FF                 5318 	.byte	-1
   3AE6 03                 5319 	.byte	3
   3AE7 0D                 5320 	.byte	13
   3AE8 FF                 5321 	.byte	-1
   3AE9 02                 5322 	.byte	2
   3AEA FA                 5323 	.byte	-6
   3AEB FF                 5324 	.byte	-1
   3AEC FD                 5325 	.byte	-3
   3AED F3                 5326 	.byte	-13
   3AEE FF                 5327 	.byte	-1
   3AEF FE                 5328 	.byte	-2
   3AF0 06                 5329 	.byte	6
   3AF1 01                 5330 	.byte	1
                           5331 	.globl _height2RisingFront3
   3AF2                    5332 _height2RisingFront3:
   3AF2 00                 5333 	.byte	0
   3AF3 07                 5334 	.byte	7
   3AF4 03                 5335 	.byte	3
   3AF5 FF                 5336 	.byte	-1
   3AF6 03                 5337 	.byte	3
   3AF7 0E                 5338 	.byte	14
   3AF8 FF                 5339 	.byte	-1
   3AF9 F9                 5340 	.byte	-7
   3AFA FD                 5341 	.byte	-3
   3AFB FF                 5342 	.byte	-1
   3AFC FD                 5343 	.byte	-3
   3AFD F2                 5344 	.byte	-14
   3AFE FF                 5345 	.byte	-1
   3AFF 07                 5346 	.byte	7
   3B00 03                 5347 	.byte	3
   3B01 FF                 5348 	.byte	-1
   3B02 1B                 5349 	.byte	27
   3B03 F7                 5350 	.byte	-9
   3B04 00                 5351 	.byte	0
   3B05 E8                 5352 	.byte	-24
   3B06 17                 5353 	.byte	23
   3B07 FF                 5354 	.byte	-1
   3B08 1B                 5355 	.byte	27
   3B09 F6                 5356 	.byte	-10
   3B0A 00                 5357 	.byte	0
   3B0B DE                 5358 	.byte	-34
   3B0C 07                 5359 	.byte	7
   3B0D FF                 5360 	.byte	-1
   3B0E 1B                 5361 	.byte	27
   3B0F F6                 5362 	.byte	-10
   3B10 00                 5363 	.byte	0
   3B11 E2                 5364 	.byte	-30
   3B12 FC                 5365 	.byte	-4
   3B13 FF                 5366 	.byte	-1
   3B14 1B                 5367 	.byte	27
   3B15 F7                 5368 	.byte	-9
   3B16 00                 5369 	.byte	0
   3B17 07                 5370 	.byte	7
   3B18 03                 5371 	.byte	3
   3B19 FF                 5372 	.byte	-1
   3B1A 03                 5373 	.byte	3
   3B1B 0D                 5374 	.byte	13
   3B1C FF                 5375 	.byte	-1
   3B1D F9                 5376 	.byte	-7
   3B1E FD                 5377 	.byte	-3
   3B1F FF                 5378 	.byte	-1
   3B20 FD                 5379 	.byte	-3
   3B21 F3                 5380 	.byte	-13
   3B22 FF                 5381 	.byte	-1
   3B23 07                 5382 	.byte	7
   3B24 03                 5383 	.byte	3
   3B25 01                 5384 	.byte	1
                           5385 	.globl _height2FallingFront3
   3B26                    5386 _height2FallingFront3:
   3B26 FF                 5387 	.byte	-1
   3B27 03                 5388 	.byte	3
   3B28 0E                 5389 	.byte	14
   3B29 FF                 5390 	.byte	-1
   3B2A 0C                 5391 	.byte	12
   3B2B FA                 5392 	.byte	-6
   3B2C FF                 5393 	.byte	-1
   3B2D FD                 5394 	.byte	-3
   3B2E F3                 5395 	.byte	-13
   3B2F FF                 5396 	.byte	-1
   3B30 F4                 5397 	.byte	-12
   3B31 05                 5398 	.byte	5
   3B32 FF                 5399 	.byte	-1
   3B33 12                 5400 	.byte	18
   3B34 05                 5401 	.byte	5
   3B35 00                 5402 	.byte	0
   3B36 F1                 5403 	.byte	-15
   3B37 09                 5404 	.byte	9
   3B38 FF                 5405 	.byte	-1
   3B39 12                 5406 	.byte	18
   3B3A 05                 5407 	.byte	5
   3B3B 00                 5408 	.byte	0
   3B3C FA                 5409 	.byte	-6
   3B3D F5                 5410 	.byte	-11
   3B3E FF                 5411 	.byte	-1
   3B3F 12                 5412 	.byte	18
   3B40 05                 5413 	.byte	5
   3B41 00                 5414 	.byte	0
   3B42 EB                 5415 	.byte	-21
   3B43 EE                 5416 	.byte	-18
   3B44 FF                 5417 	.byte	-1
   3B45 12                 5418 	.byte	18
   3B46 05                 5419 	.byte	5
   3B47 00                 5420 	.byte	0
   3B48 F4                 5421 	.byte	-12
   3B49 05                 5422 	.byte	5
   3B4A FF                 5423 	.byte	-1
   3B4B 03                 5424 	.byte	3
   3B4C 0E                 5425 	.byte	14
   3B4D FF                 5426 	.byte	-1
   3B4E 0C                 5427 	.byte	12
   3B4F FA                 5428 	.byte	-6
   3B50 FF                 5429 	.byte	-1
   3B51 FD                 5430 	.byte	-3
   3B52 F3                 5431 	.byte	-13
   3B53 FF                 5432 	.byte	-1
   3B54 F4                 5433 	.byte	-12
   3B55 05                 5434 	.byte	5
   3B56 01                 5435 	.byte	1
                           5436 	.globl _height2RisingBack3
   3B57                    5437 _height2RisingBack3:
   3B57 00                 5438 	.byte	0
   3B58 10                 5439 	.byte	16
   3B59 F5                 5440 	.byte	-11
   3B5A FF                 5441 	.byte	-1
   3B5B 03                 5442 	.byte	3
   3B5C 0D                 5443 	.byte	13
   3B5D FF                 5444 	.byte	-1
   3B5E 0F                 5445 	.byte	15
   3B5F FE                 5446 	.byte	-2
   3B60 FF                 5447 	.byte	-1
   3B61 FD                 5448 	.byte	-3
   3B62 F2                 5449 	.byte	-14
   3B63 FF                 5450 	.byte	-1
   3B64 F1                 5451 	.byte	-15
   3B65 03                 5452 	.byte	3
   3B66 FF                 5453 	.byte	-1
   3B67 FF                 5454 	.byte	-1
   3B68 0A                 5455 	.byte	10
   3B69 00                 5456 	.byte	0
   3B6A 04                 5457 	.byte	4
   3B6B 03                 5458 	.byte	3
   3B6C FF                 5459 	.byte	-1
   3B6D FF                 5460 	.byte	-1
   3B6E 0A                 5461 	.byte	10
   3B6F 00                 5462 	.byte	0
   3B70 10                 5463 	.byte	16
   3B71 F4                 5464 	.byte	-12
   3B72 FF                 5465 	.byte	-1
   3B73 FF                 5466 	.byte	-1
   3B74 09                 5467 	.byte	9
   3B75 00                 5468 	.byte	0
   3B76 FE                 5469 	.byte	-2
   3B77 E9                 5470 	.byte	-23
   3B78 FF                 5471 	.byte	-1
   3B79 FF                 5472 	.byte	-1
   3B7A 0A                 5473 	.byte	10
   3B7B 00                 5474 	.byte	0
   3B7C F1                 5475 	.byte	-15
   3B7D 03                 5476 	.byte	3
   3B7E FF                 5477 	.byte	-1
   3B7F 03                 5478 	.byte	3
   3B80 0D                 5479 	.byte	13
   3B81 FF                 5480 	.byte	-1
   3B82 0F                 5481 	.byte	15
   3B83 FD                 5482 	.byte	-3
   3B84 FF                 5483 	.byte	-1
   3B85 FD                 5484 	.byte	-3
   3B86 F3                 5485 	.byte	-13
   3B87 FF                 5486 	.byte	-1
   3B88 F1                 5487 	.byte	-15
   3B89 03                 5488 	.byte	3
   3B8A 01                 5489 	.byte	1
                           5490 	.globl _depth2RollingLeft3
   3B8B                    5491 _depth2RollingLeft3:
   3B8B FF                 5492 	.byte	-1
   3B8C 08                 5493 	.byte	8
   3B8D 0D                 5494 	.byte	13
   3B8E FF                 5495 	.byte	-1
   3B8F 10                 5496 	.byte	16
   3B90 F4                 5497 	.byte	-12
   3B91 FF                 5498 	.byte	-1
   3B92 F8                 5499 	.byte	-8
   3B93 F4                 5500 	.byte	-12
   3B94 FF                 5501 	.byte	-1
   3B95 F0                 5502 	.byte	-16
   3B96 0B                 5503 	.byte	11
   3B97 FF                 5504 	.byte	-1
   3B98 0B                 5505 	.byte	11
   3B99 FC                 5506 	.byte	-4
   3B9A 00                 5507 	.byte	0
   3B9B FD                 5508 	.byte	-3
   3B9C 11                 5509 	.byte	17
   3B9D FF                 5510 	.byte	-1
   3B9E 0B                 5511 	.byte	11
   3B9F FB                 5512 	.byte	-5
   3BA0 00                 5513 	.byte	0
   3BA1 05                 5514 	.byte	5
   3BA2 F9                 5515 	.byte	-7
   3BA3 FF                 5516 	.byte	-1
   3BA4 0B                 5517 	.byte	11
   3BA5 FC                 5518 	.byte	-4
   3BA6 00                 5519 	.byte	0
   3BA7 ED                 5520 	.byte	-19
   3BA8 F8                 5521 	.byte	-8
   3BA9 FF                 5522 	.byte	-1
   3BAA 0B                 5523 	.byte	11
   3BAB FB                 5524 	.byte	-5
   3BAC 00                 5525 	.byte	0
   3BAD F0                 5526 	.byte	-16
   3BAE 0C                 5527 	.byte	12
   3BAF FF                 5528 	.byte	-1
   3BB0 08                 5529 	.byte	8
   3BB1 0C                 5530 	.byte	12
   3BB2 FF                 5531 	.byte	-1
   3BB3 10                 5532 	.byte	16
   3BB4 F5                 5533 	.byte	-11
   3BB5 FF                 5534 	.byte	-1
   3BB6 F8                 5535 	.byte	-8
   3BB7 F3                 5536 	.byte	-13
   3BB8 FF                 5537 	.byte	-1
   3BB9 F0                 5538 	.byte	-16
   3BBA 0C                 5539 	.byte	12
   3BBB 01                 5540 	.byte	1
                           5541 	.globl _depth2RollingRight3
   3BBC                    5542 _depth2RollingRight3:
   3BBC 00                 5543 	.byte	0
   3BBD 05                 5544 	.byte	5
   3BBE 01                 5545 	.byte	1
   3BBF FF                 5546 	.byte	-1
   3BC0 FE                 5547 	.byte	-2
   3BC1 0D                 5548 	.byte	13
   3BC2 FF                 5549 	.byte	-1
   3BC3 10                 5550 	.byte	16
   3BC4 F4                 5551 	.byte	-12
   3BC5 FF                 5552 	.byte	-1
   3BC6 02                 5553 	.byte	2
   3BC7 F4                 5554 	.byte	-12
   3BC8 FF                 5555 	.byte	-1
   3BC9 F0                 5556 	.byte	-16
   3BCA 0B                 5557 	.byte	11
   3BCB FF                 5558 	.byte	-1
   3BCC 0D                 5559 	.byte	13
   3BCD 05                 5560 	.byte	5
   3BCE 00                 5561 	.byte	0
   3BCF F1                 5562 	.byte	-15
   3BD0 08                 5563 	.byte	8
   3BD1 FF                 5564 	.byte	-1
   3BD2 0D                 5565 	.byte	13
   3BD3 05                 5566 	.byte	5
   3BD4 00                 5567 	.byte	0
   3BD5 03                 5568 	.byte	3
   3BD6 EF                 5569 	.byte	-17
   3BD7 FF                 5570 	.byte	-1
   3BD8 0D                 5571 	.byte	13
   3BD9 05                 5572 	.byte	5
   3BDA 00                 5573 	.byte	0
   3BDB F5                 5574 	.byte	-11
   3BDC EF                 5575 	.byte	-17
   3BDD FF                 5576 	.byte	-1
   3BDE 0D                 5577 	.byte	13
   3BDF 05                 5578 	.byte	5
   3BE0 00                 5579 	.byte	0
   3BE1 F0                 5580 	.byte	-16
   3BE2 0B                 5581 	.byte	11
   3BE3 FF                 5582 	.byte	-1
   3BE4 FE                 5583 	.byte	-2
   3BE5 0D                 5584 	.byte	13
   3BE6 FF                 5585 	.byte	-1
   3BE7 10                 5586 	.byte	16
   3BE8 F4                 5587 	.byte	-12
   3BE9 FF                 5588 	.byte	-1
   3BEA 02                 5589 	.byte	2
   3BEB F4                 5590 	.byte	-12
   3BEC FF                 5591 	.byte	-1
   3BED F0                 5592 	.byte	-16
   3BEE 0B                 5593 	.byte	11
   3BEF 01                 5594 	.byte	1
                           5595 	.globl _width2RollingFront3
   3BF0                    5596 _width2RollingFront3:
   3BF0 FF                 5597 	.byte	-1
   3BF1 06                 5598 	.byte	6
   3BF2 1C                 5599 	.byte	28
   3BF3 FF                 5600 	.byte	-1
   3BF4 0C                 5601 	.byte	12
   3BF5 FA                 5602 	.byte	-6
   3BF6 FF                 5603 	.byte	-1
   3BF7 FA                 5604 	.byte	-6
   3BF8 E5                 5605 	.byte	-27
   3BF9 FF                 5606 	.byte	-1
   3BFA F4                 5607 	.byte	-12
   3BFB 05                 5608 	.byte	5
   3BFC FF                 5609 	.byte	-1
   3BFD 09                 5610 	.byte	9
   3BFE 02                 5611 	.byte	2
   3BFF 00                 5612 	.byte	0
   3C00 FD                 5613 	.byte	-3
   3C01 1A                 5614 	.byte	26
   3C02 FF                 5615 	.byte	-1
   3C03 09                 5616 	.byte	9
   3C04 02                 5617 	.byte	2
   3C05 00                 5618 	.byte	0
   3C06 03                 5619 	.byte	3
   3C07 F8                 5620 	.byte	-8
   3C08 FF                 5621 	.byte	-1
   3C09 09                 5622 	.byte	9
   3C0A 03                 5623 	.byte	3
   3C0B 00                 5624 	.byte	0
   3C0C F1                 5625 	.byte	-15
   3C0D E2                 5626 	.byte	-30
   3C0E FF                 5627 	.byte	-1
   3C0F 09                 5628 	.byte	9
   3C10 03                 5629 	.byte	3
   3C11 00                 5630 	.byte	0
   3C12 F4                 5631 	.byte	-12
   3C13 04                 5632 	.byte	4
   3C14 FF                 5633 	.byte	-1
   3C15 06                 5634 	.byte	6
   3C16 1C                 5635 	.byte	28
   3C17 FF                 5636 	.byte	-1
   3C18 0C                 5637 	.byte	12
   3C19 FB                 5638 	.byte	-5
   3C1A FF                 5639 	.byte	-1
   3C1B FA                 5640 	.byte	-6
   3C1C E5                 5641 	.byte	-27
   3C1D FF                 5642 	.byte	-1
   3C1E F4                 5643 	.byte	-12
   3C1F 04                 5644 	.byte	4
   3C20 01                 5645 	.byte	1
                           5646 	.globl _width2RollingBack3
   3C21                    5647 _width2RollingBack3:
   3C21 00                 5648 	.byte	0
   3C22 06                 5649 	.byte	6
   3C23 00                 5650 	.byte	0
   3C24 FF                 5651 	.byte	-1
   3C25 06                 5652 	.byte	6
   3C26 1C                 5653 	.byte	28
   3C27 FF                 5654 	.byte	-1
   3C28 02                 5655 	.byte	2
   3C29 FA                 5656 	.byte	-6
   3C2A FF                 5657 	.byte	-1
   3C2B FA                 5658 	.byte	-6
   3C2C E5                 5659 	.byte	-27
   3C2D FF                 5660 	.byte	-1
   3C2E FE                 5661 	.byte	-2
   3C2F 05                 5662 	.byte	5
   3C30 FF                 5663 	.byte	-1
   3C31 0F                 5664 	.byte	15
   3C32 FE                 5665 	.byte	-2
   3C33 00                 5666 	.byte	0
   3C34 F7                 5667 	.byte	-9
   3C35 1E                 5668 	.byte	30
   3C36 FF                 5669 	.byte	-1
   3C37 0F                 5670 	.byte	15
   3C38 FD                 5671 	.byte	-3
   3C39 00                 5672 	.byte	0
   3C3A F3                 5673 	.byte	-13
   3C3B FD                 5674 	.byte	-3
   3C3C FF                 5675 	.byte	-1
   3C3D 0F                 5676 	.byte	15
   3C3E FE                 5677 	.byte	-2
   3C3F 00                 5678 	.byte	0
   3C40 EB                 5679 	.byte	-21
   3C41 E7                 5680 	.byte	-25
   3C42 FF                 5681 	.byte	-1
   3C43 0F                 5682 	.byte	15
   3C44 FE                 5683 	.byte	-2
   3C45 00                 5684 	.byte	0
   3C46 FE                 5685 	.byte	-2
   3C47 05                 5686 	.byte	5
   3C48 FF                 5687 	.byte	-1
   3C49 06                 5688 	.byte	6
   3C4A 1B                 5689 	.byte	27
   3C4B FF                 5690 	.byte	-1
   3C4C 02                 5691 	.byte	2
   3C4D FB                 5692 	.byte	-5
   3C4E FF                 5693 	.byte	-1
   3C4F FA                 5694 	.byte	-6
   3C50 E5                 5695 	.byte	-27
   3C51 FF                 5696 	.byte	-1
   3C52 FE                 5697 	.byte	-2
   3C53 05                 5698 	.byte	5
   3C54 01                 5699 	.byte	1
                           5700 	.globl _height2FallingLeft4
   3C55                    5701 _height2FallingLeft4:
   3C55 FF                 5702 	.byte	-1
   3C56 09                 5703 	.byte	9
   3C57 0C                 5704 	.byte	12
   3C58 FF                 5705 	.byte	-1
   3C59 08                 5706 	.byte	8
   3C5A FA                 5707 	.byte	-6
   3C5B FF                 5708 	.byte	-1
   3C5C F7                 5709 	.byte	-9
   3C5D F5                 5710 	.byte	-11
   3C5E FF                 5711 	.byte	-1
   3C5F F8                 5712 	.byte	-8
   3C60 05                 5713 	.byte	5
   3C61 FF                 5714 	.byte	-1
   3C62 14                 5715 	.byte	20
   3C63 F3                 5716 	.byte	-13
   3C64 00                 5717 	.byte	0
   3C65 F5                 5718 	.byte	-11
   3C66 19                 5719 	.byte	25
   3C67 FF                 5720 	.byte	-1
   3C68 14                 5721 	.byte	20
   3C69 F3                 5722 	.byte	-13
   3C6A 00                 5723 	.byte	0
   3C6B F4                 5724 	.byte	-12
   3C6C 07                 5725 	.byte	7
   3C6D FF                 5726 	.byte	-1
   3C6E 14                 5727 	.byte	20
   3C6F F3                 5728 	.byte	-13
   3C70 00                 5729 	.byte	0
   3C71 E3                 5730 	.byte	-29
   3C72 02                 5731 	.byte	2
   3C73 FF                 5732 	.byte	-1
   3C74 14                 5733 	.byte	20
   3C75 F2                 5734 	.byte	-14
   3C76 00                 5735 	.byte	0
   3C77 F8                 5736 	.byte	-8
   3C78 06                 5737 	.byte	6
   3C79 FF                 5738 	.byte	-1
   3C7A 09                 5739 	.byte	9
   3C7B 0C                 5740 	.byte	12
   3C7C FF                 5741 	.byte	-1
   3C7D 08                 5742 	.byte	8
   3C7E FA                 5743 	.byte	-6
   3C7F FF                 5744 	.byte	-1
   3C80 F7                 5745 	.byte	-9
   3C81 F4                 5746 	.byte	-12
   3C82 FF                 5747 	.byte	-1
   3C83 F8                 5748 	.byte	-8
   3C84 06                 5749 	.byte	6
   3C85 01                 5750 	.byte	1
                           5751 	.globl _height2RisingRight4
   3C86                    5752 _height2RisingRight4:
   3C86 00                 5753 	.byte	0
   3C87 06                 5754 	.byte	6
   3C88 1C                 5755 	.byte	28
   3C89 FF                 5756 	.byte	-1
   3C8A 0C                 5757 	.byte	12
   3C8B 09                 5758 	.byte	9
   3C8C FF                 5759 	.byte	-1
   3C8D 08                 5760 	.byte	8
   3C8E FA                 5761 	.byte	-6
   3C8F FF                 5762 	.byte	-1
   3C90 F4                 5763 	.byte	-12
   3C91 F7                 5764 	.byte	-9
   3C92 FF                 5765 	.byte	-1
   3C93 F8                 5766 	.byte	-8
   3C94 06                 5767 	.byte	6
   3C95 FF                 5768 	.byte	-1
   3C96 0B                 5769 	.byte	11
   3C97 EA                 5770 	.byte	-22
   3C98 00                 5771 	.byte	0
   3C99 01                 5772 	.byte	1
   3C9A 1F                 5773 	.byte	31
   3C9B FF                 5774 	.byte	-1
   3C9C 0B                 5775 	.byte	11
   3C9D E9                 5776 	.byte	-23
   3C9E 00                 5777 	.byte	0
   3C9F FD                 5778 	.byte	-3
   3CA0 11                 5779 	.byte	17
   3CA1 FF                 5780 	.byte	-1
   3CA2 0B                 5781 	.byte	11
   3CA3 E9                 5782 	.byte	-23
   3CA4 00                 5783 	.byte	0
   3CA5 E9                 5784 	.byte	-23
   3CA6 0E                 5785 	.byte	14
   3CA7 FF                 5786 	.byte	-1
   3CA8 0B                 5787 	.byte	11
   3CA9 EA                 5788 	.byte	-22
   3CAA 00                 5789 	.byte	0
   3CAB F8                 5790 	.byte	-8
   3CAC 06                 5791 	.byte	6
   3CAD FF                 5792 	.byte	-1
   3CAE 0C                 5793 	.byte	12
   3CAF 08                 5794 	.byte	8
   3CB0 FF                 5795 	.byte	-1
   3CB1 08                 5796 	.byte	8
   3CB2 FA                 5797 	.byte	-6
   3CB3 FF                 5798 	.byte	-1
   3CB4 F4                 5799 	.byte	-12
   3CB5 F8                 5800 	.byte	-8
   3CB6 FF                 5801 	.byte	-1
   3CB7 F8                 5802 	.byte	-8
   3CB8 06                 5803 	.byte	6
   3CB9 01                 5804 	.byte	1
                           5805 	.globl _height2FallingRight4
   3CBA                    5806 _height2FallingRight4:
   3CBA 00                 5807 	.byte	0
   3CBB 07                 5808 	.byte	7
   3CBC 02                 5809 	.byte	2
   3CBD FF                 5810 	.byte	-1
   3CBE FC                 5811 	.byte	-4
   3CBF 0C                 5812 	.byte	12
   3CC0 FF                 5813 	.byte	-1
   3CC1 08                 5814 	.byte	8
   3CC2 FA                 5815 	.byte	-6
   3CC3 FF                 5816 	.byte	-1
   3CC4 04                 5817 	.byte	4
   3CC5 F5                 5818 	.byte	-11
   3CC6 FF                 5819 	.byte	-1
   3CC7 F8                 5820 	.byte	-8
   3CC8 05                 5821 	.byte	5
   3CC9 FF                 5822 	.byte	-1
   3CCA 19                 5823 	.byte	25
   3CCB 0E                 5824 	.byte	14
   3CCC 00                 5825 	.byte	0
   3CCD E3                 5826 	.byte	-29
   3CCE FE                 5827 	.byte	-2
   3CCF FF                 5828 	.byte	-1
   3CD0 1A                 5829 	.byte	26
   3CD1 0E                 5830 	.byte	14
   3CD2 00                 5831 	.byte	0
   3CD3 EE                 5832 	.byte	-18
   3CD4 EC                 5833 	.byte	-20
   3CD5 FF                 5834 	.byte	-1
   3CD6 1A                 5835 	.byte	26
   3CD7 0E                 5836 	.byte	14
   3CD8 00                 5837 	.byte	0
   3CD9 EA                 5838 	.byte	-22
   3CDA E7                 5839 	.byte	-25
   3CDB FF                 5840 	.byte	-1
   3CDC 19                 5841 	.byte	25
   3CDD 0D                 5842 	.byte	13
   3CDE 00                 5843 	.byte	0
   3CDF F8                 5844 	.byte	-8
   3CE0 06                 5845 	.byte	6
   3CE1 FF                 5846 	.byte	-1
   3CE2 FD                 5847 	.byte	-3
   3CE3 0C                 5848 	.byte	12
   3CE4 FF                 5849 	.byte	-1
   3CE5 08                 5850 	.byte	8
   3CE6 FA                 5851 	.byte	-6
   3CE7 FF                 5852 	.byte	-1
   3CE8 03                 5853 	.byte	3
   3CE9 F4                 5854 	.byte	-12
   3CEA FF                 5855 	.byte	-1
   3CEB F8                 5856 	.byte	-8
   3CEC 06                 5857 	.byte	6
   3CED 01                 5858 	.byte	1
                           5859 	.globl _height2RisingLeft4
   3CEE                    5860 _height2RisingLeft4:
   3CEE 00                 5861 	.byte	0
   3CEF 08                 5862 	.byte	8
   3CF0 F8                 5863 	.byte	-8
   3CF1 FF                 5864 	.byte	-1
   3CF2 F8                 5865 	.byte	-8
   3CF3 08                 5866 	.byte	8
   3CF4 FF                 5867 	.byte	-1
   3CF5 08                 5868 	.byte	8
   3CF6 FB                 5869 	.byte	-5
   3CF7 FF                 5870 	.byte	-1
   3CF8 08                 5871 	.byte	8
   3CF9 F7                 5872 	.byte	-9
   3CFA FF                 5873 	.byte	-1
   3CFB F8                 5874 	.byte	-8
   3CFC 06                 5875 	.byte	6
   3CFD FF                 5876 	.byte	-1
   3CFE 15                 5877 	.byte	21
   3CFF 16                 5878 	.byte	22
   3D00 00                 5879 	.byte	0
   3D01 E3                 5880 	.byte	-29
   3D02 F2                 5881 	.byte	-14
   3D03 FF                 5882 	.byte	-1
   3D04 15                 5883 	.byte	21
   3D05 16                 5884 	.byte	22
   3D06 00                 5885 	.byte	0
   3D07 F3                 5886 	.byte	-13
   3D08 E5                 5887 	.byte	-27
   3D09 FF                 5888 	.byte	-1
   3D0A 15                 5889 	.byte	21
   3D0B 15                 5890 	.byte	21
   3D0C 00                 5891 	.byte	0
   3D0D F3                 5892 	.byte	-13
   3D0E E2                 5893 	.byte	-30
   3D0F FF                 5894 	.byte	-1
   3D10 15                 5895 	.byte	21
   3D11 16                 5896 	.byte	22
   3D12 00                 5897 	.byte	0
   3D13 F8                 5898 	.byte	-8
   3D14 06                 5899 	.byte	6
   3D15 FF                 5900 	.byte	-1
   3D16 F8                 5901 	.byte	-8
   3D17 08                 5902 	.byte	8
   3D18 FF                 5903 	.byte	-1
   3D19 08                 5904 	.byte	8
   3D1A FA                 5905 	.byte	-6
   3D1B FF                 5906 	.byte	-1
   3D1C 08                 5907 	.byte	8
   3D1D F8                 5908 	.byte	-8
   3D1E FF                 5909 	.byte	-1
   3D1F F8                 5910 	.byte	-8
   3D20 06                 5911 	.byte	6
   3D21 01                 5912 	.byte	1
                           5913 	.globl _height2FallingBack4
   3D22                    5914 _height2FallingBack4:
   3D22 00                 5915 	.byte	0
   3D23 08                 5916 	.byte	8
   3D24 00                 5917 	.byte	0
   3D25 FF                 5918 	.byte	-1
   3D26 03                 5919 	.byte	3
   3D27 0D                 5920 	.byte	13
   3D28 FF                 5921 	.byte	-1
   3D29 00                 5922 	.byte	0
   3D2A FB                 5923 	.byte	-5
   3D2B FF                 5924 	.byte	-1
   3D2C FD                 5925 	.byte	-3
   3D2D F3                 5926 	.byte	-13
   3D2E FF                 5927 	.byte	-1
   3D2F 00                 5928 	.byte	0
   3D30 05                 5929 	.byte	5
   3D31 FF                 5930 	.byte	-1
   3D32 1E                 5931 	.byte	30
   3D33 FA                 5932 	.byte	-6
   3D34 00                 5933 	.byte	0
   3D35 E5                 5934 	.byte	-27
   3D36 13                 5935 	.byte	19
   3D37 FF                 5936 	.byte	-1
   3D38 1E                 5937 	.byte	30
   3D39 FA                 5938 	.byte	-6
   3D3A 00                 5939 	.byte	0
   3D3B E2                 5940 	.byte	-30
   3D3C 01                 5941 	.byte	1
   3D3D FF                 5942 	.byte	-1
   3D3E 1F                 5943 	.byte	31
   3D3F FA                 5944 	.byte	-6
   3D40 00                 5945 	.byte	0
   3D41 DE                 5946 	.byte	-34
   3D42 F9                 5947 	.byte	-7
   3D43 FF                 5948 	.byte	-1
   3D44 1F                 5949 	.byte	31
   3D45 FA                 5950 	.byte	-6
   3D46 00                 5951 	.byte	0
   3D47 FF                 5952 	.byte	-1
   3D48 05                 5953 	.byte	5
   3D49 FF                 5954 	.byte	-1
   3D4A 03                 5955 	.byte	3
   3D4B 0D                 5956 	.byte	13
   3D4C FF                 5957 	.byte	-1
   3D4D 01                 5958 	.byte	1
   3D4E FB                 5959 	.byte	-5
   3D4F FF                 5960 	.byte	-1
   3D50 FD                 5961 	.byte	-3
   3D51 F3                 5962 	.byte	-13
   3D52 FF                 5963 	.byte	-1
   3D53 FF                 5964 	.byte	-1
   3D54 05                 5965 	.byte	5
   3D55 01                 5966 	.byte	1
                           5967 	.globl _height2RisingFront4
   3D56                    5968 _height2RisingFront4:
   3D56 00                 5969 	.byte	0
   3D57 05                 5970 	.byte	5
   3D58 04                 5971 	.byte	4
   3D59 FF                 5972 	.byte	-1
   3D5A 03                 5973 	.byte	3
   3D5B 0E                 5974 	.byte	14
   3D5C FF                 5975 	.byte	-1
   3D5D FB                 5976 	.byte	-5
   3D5E FC                 5977 	.byte	-4
   3D5F FF                 5978 	.byte	-1
   3D60 FD                 5979 	.byte	-3
   3D61 F2                 5980 	.byte	-14
   3D62 FF                 5981 	.byte	-1
   3D63 05                 5982 	.byte	5
   3D64 04                 5983 	.byte	4
   3D65 FF                 5984 	.byte	-1
   3D66 1D                 5985 	.byte	29
   3D67 F7                 5986 	.byte	-9
   3D68 00                 5987 	.byte	0
   3D69 E6                 5988 	.byte	-26
   3D6A 17                 5989 	.byte	23
   3D6B FF                 5990 	.byte	-1
   3D6C 1D                 5991 	.byte	29
   3D6D F6                 5992 	.byte	-10
   3D6E 00                 5993 	.byte	0
   3D6F DE                 5994 	.byte	-34
   3D70 06                 5995 	.byte	6
   3D71 FF                 5996 	.byte	-1
   3D72 1D                 5997 	.byte	29
   3D73 F6                 5998 	.byte	-10
   3D74 00                 5999 	.byte	0
   3D75 E0                 6000 	.byte	-32
   3D76 FC                 6001 	.byte	-4
   3D77 FF                 6002 	.byte	-1
   3D78 1D                 6003 	.byte	29
   3D79 F7                 6004 	.byte	-9
   3D7A 00                 6005 	.byte	0
   3D7B 05                 6006 	.byte	5
   3D7C 04                 6007 	.byte	4
   3D7D FF                 6008 	.byte	-1
   3D7E 03                 6009 	.byte	3
   3D7F 0D                 6010 	.byte	13
   3D80 FF                 6011 	.byte	-1
   3D81 FB                 6012 	.byte	-5
   3D82 FC                 6013 	.byte	-4
   3D83 FF                 6014 	.byte	-1
   3D84 FD                 6015 	.byte	-3
   3D85 F3                 6016 	.byte	-13
   3D86 FF                 6017 	.byte	-1
   3D87 05                 6018 	.byte	5
   3D88 04                 6019 	.byte	4
   3D89 01                 6020 	.byte	1
                           6021 	.globl _height2FallingFront4
   3D8A                    6022 _height2FallingFront4:
   3D8A FF                 6023 	.byte	-1
   3D8B 03                 6024 	.byte	3
   3D8C 0E                 6025 	.byte	14
   3D8D FF                 6026 	.byte	-1
   3D8E 0D                 6027 	.byte	13
   3D8F FB                 6028 	.byte	-5
   3D90 FF                 6029 	.byte	-1
   3D91 FD                 6030 	.byte	-3
   3D92 F3                 6031 	.byte	-13
   3D93 FF                 6032 	.byte	-1
   3D94 F3                 6033 	.byte	-13
   3D95 04                 6034 	.byte	4
   3D96 FF                 6035 	.byte	-1
   3D97 0F                 6036 	.byte	15
   3D98 06                 6037 	.byte	6
   3D99 00                 6038 	.byte	0
   3D9A F4                 6039 	.byte	-12
   3D9B 08                 6040 	.byte	8
   3D9C FF                 6041 	.byte	-1
   3D9D 0F                 6042 	.byte	15
   3D9E 06                 6043 	.byte	6
   3D9F 00                 6044 	.byte	0
   3DA0 FE                 6045 	.byte	-2
   3DA1 F5                 6046 	.byte	-11
   3DA2 FF                 6047 	.byte	-1
   3DA3 0F                 6048 	.byte	15
   3DA4 06                 6049 	.byte	6
   3DA5 00                 6050 	.byte	0
   3DA6 EE                 6051 	.byte	-18
   3DA7 ED                 6052 	.byte	-19
   3DA8 FF                 6053 	.byte	-1
   3DA9 0F                 6054 	.byte	15
   3DAA 05                 6055 	.byte	5
   3DAB 00                 6056 	.byte	0
   3DAC F3                 6057 	.byte	-13
   3DAD 05                 6058 	.byte	5
   3DAE FF                 6059 	.byte	-1
   3DAF 03                 6060 	.byte	3
   3DB0 0E                 6061 	.byte	14
   3DB1 FF                 6062 	.byte	-1
   3DB2 0D                 6063 	.byte	13
   3DB3 FB                 6064 	.byte	-5
   3DB4 FF                 6065 	.byte	-1
   3DB5 FD                 6066 	.byte	-3
   3DB6 F2                 6067 	.byte	-14
   3DB7 FF                 6068 	.byte	-1
   3DB8 F3                 6069 	.byte	-13
   3DB9 05                 6070 	.byte	5
   3DBA 01                 6071 	.byte	1
                           6072 	.globl _height2RisingBack4
   3DBB                    6073 _height2RisingBack4:
   3DBB 00                 6074 	.byte	0
   3DBC 10                 6075 	.byte	16
   3DBD F5                 6076 	.byte	-11
   3DBE FF                 6077 	.byte	-1
   3DBF 03                 6078 	.byte	3
   3DC0 0D                 6079 	.byte	13
   3DC1 FF                 6080 	.byte	-1
   3DC2 0F                 6081 	.byte	15
   3DC3 FD                 6082 	.byte	-3
   3DC4 FF                 6083 	.byte	-1
   3DC5 FD                 6084 	.byte	-3
   3DC6 F2                 6085 	.byte	-14
   3DC7 FF                 6086 	.byte	-1
   3DC8 F1                 6087 	.byte	-15
   3DC9 04                 6088 	.byte	4
   3DCA FF                 6089 	.byte	-1
   3DCB 03                 6090 	.byte	3
   3DCC 0A                 6091 	.byte	10
   3DCD 00                 6092 	.byte	0
   3DCE 00                 6093 	.byte	0
   3DCF 03                 6094 	.byte	3
   3DD0 FF                 6095 	.byte	-1
   3DD1 03                 6096 	.byte	3
   3DD2 0A                 6097 	.byte	10
   3DD3 00                 6098 	.byte	0
   3DD4 0C                 6099 	.byte	12
   3DD5 F3                 6100 	.byte	-13
   3DD6 FF                 6101 	.byte	-1
   3DD7 03                 6102 	.byte	3
   3DD8 09                 6103 	.byte	9
   3DD9 00                 6104 	.byte	0
   3DDA FA                 6105 	.byte	-6
   3DDB E9                 6106 	.byte	-23
   3DDC FF                 6107 	.byte	-1
   3DDD 03                 6108 	.byte	3
   3DDE 0A                 6109 	.byte	10
   3DDF 00                 6110 	.byte	0
   3DE0 F1                 6111 	.byte	-15
   3DE1 04                 6112 	.byte	4
   3DE2 FF                 6113 	.byte	-1
   3DE3 03                 6114 	.byte	3
   3DE4 0D                 6115 	.byte	13
   3DE5 FF                 6116 	.byte	-1
   3DE6 0F                 6117 	.byte	15
   3DE7 FC                 6118 	.byte	-4
   3DE8 FF                 6119 	.byte	-1
   3DE9 FD                 6120 	.byte	-3
   3DEA F3                 6121 	.byte	-13
   3DEB FF                 6122 	.byte	-1
   3DEC F1                 6123 	.byte	-15
   3DED 04                 6124 	.byte	4
   3DEE 01                 6125 	.byte	1
                           6126 	.globl _depth2RollingLeft4
   3DEF                    6127 _depth2RollingLeft4:
   3DEF FF                 6128 	.byte	-1
   3DF0 09                 6129 	.byte	9
   3DF1 0C                 6130 	.byte	12
   3DF2 FF                 6131 	.byte	-1
   3DF3 10                 6132 	.byte	16
   3DF4 F4                 6133 	.byte	-12
   3DF5 FF                 6134 	.byte	-1
   3DF6 F7                 6135 	.byte	-9
   3DF7 F5                 6136 	.byte	-11
   3DF8 FF                 6137 	.byte	-1
   3DF9 F0                 6138 	.byte	-16
   3DFA 0B                 6139 	.byte	11
   3DFB FF                 6140 	.byte	-1
   3DFC 0A                 6141 	.byte	10
   3DFD FA                 6142 	.byte	-6
   3DFE 00                 6143 	.byte	0
   3DFF FF                 6144 	.byte	-1
   3E00 12                 6145 	.byte	18
   3E01 FF                 6146 	.byte	-1
   3E02 0A                 6147 	.byte	10
   3E03 F9                 6148 	.byte	-7
   3E04 00                 6149 	.byte	0
   3E05 06                 6150 	.byte	6
   3E06 FB                 6151 	.byte	-5
   3E07 FF                 6152 	.byte	-1
   3E08 0A                 6153 	.byte	10
   3E09 FA                 6154 	.byte	-6
   3E0A 00                 6155 	.byte	0
   3E0B ED                 6156 	.byte	-19
   3E0C FB                 6157 	.byte	-5
   3E0D FF                 6158 	.byte	-1
   3E0E 0A                 6159 	.byte	10
   3E0F F9                 6160 	.byte	-7
   3E10 00                 6161 	.byte	0
   3E11 F0                 6162 	.byte	-16
   3E12 0C                 6163 	.byte	12
   3E13 FF                 6164 	.byte	-1
   3E14 09                 6165 	.byte	9
   3E15 0B                 6166 	.byte	11
   3E16 FF                 6167 	.byte	-1
   3E17 10                 6168 	.byte	16
   3E18 F5                 6169 	.byte	-11
   3E19 FF                 6170 	.byte	-1
   3E1A F7                 6171 	.byte	-9
   3E1B F4                 6172 	.byte	-12
   3E1C FF                 6173 	.byte	-1
   3E1D F0                 6174 	.byte	-16
   3E1E 0C                 6175 	.byte	12
   3E1F 01                 6176 	.byte	1
                           6177 	.globl _depth2RollingRight4
   3E20                    6178 _depth2RollingRight4:
   3E20 00                 6179 	.byte	0
   3E21 07                 6180 	.byte	7
   3E22 02                 6181 	.byte	2
   3E23 FF                 6182 	.byte	-1
   3E24 FC                 6183 	.byte	-4
   3E25 0C                 6184 	.byte	12
   3E26 FF                 6185 	.byte	-1
   3E27 10                 6186 	.byte	16
   3E28 F4                 6187 	.byte	-12
   3E29 FF                 6188 	.byte	-1
   3E2A 04                 6189 	.byte	4
   3E2B F5                 6190 	.byte	-11
   3E2C FF                 6191 	.byte	-1
   3E2D F0                 6192 	.byte	-16
   3E2E 0B                 6193 	.byte	11
   3E2F FF                 6194 	.byte	-1
   3E30 0D                 6195 	.byte	13
   3E31 07                 6196 	.byte	7
   3E32 00                 6197 	.byte	0
   3E33 EF                 6198 	.byte	-17
   3E34 05                 6199 	.byte	5
   3E35 FF                 6200 	.byte	-1
   3E36 0D                 6201 	.byte	13
   3E37 07                 6202 	.byte	7
   3E38 00                 6203 	.byte	0
   3E39 03                 6204 	.byte	3
   3E3A ED                 6205 	.byte	-19
   3E3B FF                 6206 	.byte	-1
   3E3C 0D                 6207 	.byte	13
   3E3D 07                 6208 	.byte	7
   3E3E 00                 6209 	.byte	0
   3E3F F7                 6210 	.byte	-9
   3E40 EE                 6211 	.byte	-18
   3E41 FF                 6212 	.byte	-1
   3E42 0D                 6213 	.byte	13
   3E43 07                 6214 	.byte	7
   3E44 00                 6215 	.byte	0
   3E45 F0                 6216 	.byte	-16
   3E46 0B                 6217 	.byte	11
   3E47 FF                 6218 	.byte	-1
   3E48 FC                 6219 	.byte	-4
   3E49 0C                 6220 	.byte	12
   3E4A FF                 6221 	.byte	-1
   3E4B 10                 6222 	.byte	16
   3E4C F4                 6223 	.byte	-12
   3E4D FF                 6224 	.byte	-1
   3E4E 04                 6225 	.byte	4
   3E4F F5                 6226 	.byte	-11
   3E50 FF                 6227 	.byte	-1
   3E51 F0                 6228 	.byte	-16
   3E52 0B                 6229 	.byte	11
   3E53 01                 6230 	.byte	1
                           6231 	.globl _width2RollingFront4
   3E54                    6232 _width2RollingFront4:
   3E54 FF                 6233 	.byte	-1
   3E55 06                 6234 	.byte	6
   3E56 1C                 6235 	.byte	28
   3E57 FF                 6236 	.byte	-1
   3E58 0D                 6237 	.byte	13
   3E59 FB                 6238 	.byte	-5
   3E5A FF                 6239 	.byte	-1
   3E5B FA                 6240 	.byte	-6
   3E5C E5                 6241 	.byte	-27
   3E5D FF                 6242 	.byte	-1
   3E5E F3                 6243 	.byte	-13
   3E5F 04                 6244 	.byte	4
   3E60 FF                 6245 	.byte	-1
   3E61 07                 6246 	.byte	7
   3E62 03                 6247 	.byte	3
   3E63 00                 6248 	.byte	0
   3E64 FF                 6249 	.byte	-1
   3E65 19                 6250 	.byte	25
   3E66 FF                 6251 	.byte	-1
   3E67 07                 6252 	.byte	7
   3E68 03                 6253 	.byte	3
   3E69 00                 6254 	.byte	0
   3E6A 06                 6255 	.byte	6
   3E6B F8                 6256 	.byte	-8
   3E6C FF                 6257 	.byte	-1
   3E6D 08                 6258 	.byte	8
   3E6E 03                 6259 	.byte	3
   3E6F 00                 6260 	.byte	0
   3E70 F2                 6261 	.byte	-14
   3E71 E2                 6262 	.byte	-30
   3E72 FF                 6263 	.byte	-1
   3E73 08                 6264 	.byte	8
   3E74 03                 6265 	.byte	3
   3E75 00                 6266 	.byte	0
   3E76 F2                 6267 	.byte	-14
   3E77 04                 6268 	.byte	4
   3E78 FF                 6269 	.byte	-1
   3E79 06                 6270 	.byte	6
   3E7A 1C                 6271 	.byte	28
   3E7B FF                 6272 	.byte	-1
   3E7C 0E                 6273 	.byte	14
   3E7D FB                 6274 	.byte	-5
   3E7E FF                 6275 	.byte	-1
   3E7F FA                 6276 	.byte	-6
   3E80 E5                 6277 	.byte	-27
   3E81 FF                 6278 	.byte	-1
   3E82 F2                 6279 	.byte	-14
   3E83 04                 6280 	.byte	4
   3E84 01                 6281 	.byte	1
                           6282 	.globl _width2RollingBack4
   3E85                    6283 _width2RollingBack4:
   3E85 00                 6284 	.byte	0
   3E86 08                 6285 	.byte	8
   3E87 00                 6286 	.byte	0
   3E88 FF                 6287 	.byte	-1
   3E89 06                 6288 	.byte	6
   3E8A 1B                 6289 	.byte	27
   3E8B FF                 6290 	.byte	-1
   3E8C 00                 6291 	.byte	0
   3E8D FB                 6292 	.byte	-5
   3E8E FF                 6293 	.byte	-1
   3E8F FA                 6294 	.byte	-6
   3E90 E5                 6295 	.byte	-27
   3E91 FF                 6296 	.byte	-1
   3E92 00                 6297 	.byte	0
   3E93 05                 6298 	.byte	5
   3E94 FF                 6299 	.byte	-1
   3E95 0F                 6300 	.byte	15
   3E96 FD                 6301 	.byte	-3
   3E97 00                 6302 	.byte	0
   3E98 F7                 6303 	.byte	-9
   3E99 1E                 6304 	.byte	30
   3E9A FF                 6305 	.byte	-1
   3E9B 0F                 6306 	.byte	15
   3E9C FD                 6307 	.byte	-3
   3E9D 00                 6308 	.byte	0
   3E9E F1                 6309 	.byte	-15
   3E9F FE                 6310 	.byte	-2
   3EA0 FF                 6311 	.byte	-1
   3EA1 0F                 6312 	.byte	15
   3EA2 FD                 6313 	.byte	-3
   3EA3 00                 6314 	.byte	0
   3EA4 EB                 6315 	.byte	-21
   3EA5 E8                 6316 	.byte	-24
   3EA6 FF                 6317 	.byte	-1
   3EA7 0F                 6318 	.byte	15
   3EA8 FD                 6319 	.byte	-3
   3EA9 00                 6320 	.byte	0
   3EAA 00                 6321 	.byte	0
   3EAB 05                 6322 	.byte	5
   3EAC FF                 6323 	.byte	-1
   3EAD 06                 6324 	.byte	6
   3EAE 1B                 6325 	.byte	27
   3EAF FF                 6326 	.byte	-1
   3EB0 00                 6327 	.byte	0
   3EB1 FB                 6328 	.byte	-5
   3EB2 FF                 6329 	.byte	-1
   3EB3 FA                 6330 	.byte	-6
   3EB4 E5                 6331 	.byte	-27
   3EB5 FF                 6332 	.byte	-1
   3EB6 00                 6333 	.byte	0
   3EB7 05                 6334 	.byte	5
   3EB8 01                 6335 	.byte	1
                           6336 	.globl _height2FallingLeft5
   3EB9                    6337 _height2FallingLeft5:
   3EB9 FF                 6338 	.byte	-1
   3EBA 0A                 6339 	.byte	10
   3EBB 0B                 6340 	.byte	11
   3EBC FF                 6341 	.byte	-1
   3EBD 08                 6342 	.byte	8
   3EBE FA                 6343 	.byte	-6
   3EBF FF                 6344 	.byte	-1
   3EC0 F6                 6345 	.byte	-10
   3EC1 F6                 6346 	.byte	-10
   3EC2 FF                 6347 	.byte	-1
   3EC3 F8                 6348 	.byte	-8
   3EC4 05                 6349 	.byte	5
   3EC5 FF                 6350 	.byte	-1
   3EC6 11                 6351 	.byte	17
   3EC7 F0                 6352 	.byte	-16
   3EC8 00                 6353 	.byte	0
   3EC9 F9                 6354 	.byte	-7
   3ECA 1B                 6355 	.byte	27
   3ECB FF                 6356 	.byte	-1
   3ECC 11                 6357 	.byte	17
   3ECD F0                 6358 	.byte	-16
   3ECE 00                 6359 	.byte	0
   3ECF F7                 6360 	.byte	-9
   3ED0 0A                 6361 	.byte	10
   3ED1 FF                 6362 	.byte	-1
   3ED2 11                 6363 	.byte	17
   3ED3 F0                 6364 	.byte	-16
   3ED4 00                 6365 	.byte	0
   3ED5 E5                 6366 	.byte	-27
   3ED6 06                 6367 	.byte	6
   3ED7 FF                 6368 	.byte	-1
   3ED8 11                 6369 	.byte	17
   3ED9 EF                 6370 	.byte	-17
   3EDA 00                 6371 	.byte	0
   3EDB F8                 6372 	.byte	-8
   3EDC 06                 6373 	.byte	6
   3EDD FF                 6374 	.byte	-1
   3EDE 0A                 6375 	.byte	10
   3EDF 0B                 6376 	.byte	11
   3EE0 FF                 6377 	.byte	-1
   3EE1 08                 6378 	.byte	8
   3EE2 FA                 6379 	.byte	-6
   3EE3 FF                 6380 	.byte	-1
   3EE4 F6                 6381 	.byte	-10
   3EE5 F5                 6382 	.byte	-11
   3EE6 FF                 6383 	.byte	-1
   3EE7 F8                 6384 	.byte	-8
   3EE8 06                 6385 	.byte	6
   3EE9 01                 6386 	.byte	1
                           6387 	.globl _height2RisingRight5
   3EEA                    6388 _height2RisingRight5:
   3EEA 00                 6389 	.byte	0
   3EEB 06                 6390 	.byte	6
   3EEC 1C                 6391 	.byte	28
   3EED FF                 6392 	.byte	-1
   3EEE 0B                 6393 	.byte	11
   3EEF 0A                 6394 	.byte	10
   3EF0 FF                 6395 	.byte	-1
   3EF1 08                 6396 	.byte	8
   3EF2 FA                 6397 	.byte	-6
   3EF3 FF                 6398 	.byte	-1
   3EF4 F5                 6399 	.byte	-11
   3EF5 F6                 6400 	.byte	-10
   3EF6 FF                 6401 	.byte	-1
   3EF7 F8                 6402 	.byte	-8
   3EF8 06                 6403 	.byte	6
   3EF9 FF                 6404 	.byte	-1
   3EFA 0E                 6405 	.byte	14
   3EFB EC                 6406 	.byte	-20
   3EFC 00                 6407 	.byte	0
   3EFD FD                 6408 	.byte	-3
   3EFE 1E                 6409 	.byte	30
   3EFF FF                 6410 	.byte	-1
   3F00 0E                 6411 	.byte	14
   3F01 EC                 6412 	.byte	-20
   3F02 00                 6413 	.byte	0
   3F03 FA                 6414 	.byte	-6
   3F04 0E                 6415 	.byte	14
   3F05 FF                 6416 	.byte	-1
   3F06 0E                 6417 	.byte	14
   3F07 EC                 6418 	.byte	-20
   3F08 00                 6419 	.byte	0
   3F09 E7                 6420 	.byte	-25
   3F0A 0A                 6421 	.byte	10
   3F0B FF                 6422 	.byte	-1
   3F0C 0E                 6423 	.byte	14
   3F0D EC                 6424 	.byte	-20
   3F0E 00                 6425 	.byte	0
   3F0F F8                 6426 	.byte	-8
   3F10 06                 6427 	.byte	6
   3F11 FF                 6428 	.byte	-1
   3F12 0B                 6429 	.byte	11
   3F13 0A                 6430 	.byte	10
   3F14 FF                 6431 	.byte	-1
   3F15 08                 6432 	.byte	8
   3F16 FA                 6433 	.byte	-6
   3F17 FF                 6434 	.byte	-1
   3F18 F5                 6435 	.byte	-11
   3F19 F6                 6436 	.byte	-10
   3F1A FF                 6437 	.byte	-1
   3F1B F8                 6438 	.byte	-8
   3F1C 06                 6439 	.byte	6
   3F1D 01                 6440 	.byte	1
                           6441 	.globl _height2FallingRight5
   3F1E                    6442 _height2FallingRight5:
   3F1E 00                 6443 	.byte	0
   3F1F 09                 6444 	.byte	9
   3F20 03                 6445 	.byte	3
   3F21 FF                 6446 	.byte	-1
   3F22 FA                 6447 	.byte	-6
   3F23 0B                 6448 	.byte	11
   3F24 FF                 6449 	.byte	-1
   3F25 08                 6450 	.byte	8
   3F26 FA                 6451 	.byte	-6
   3F27 FF                 6452 	.byte	-1
   3F28 06                 6453 	.byte	6
   3F29 F6                 6454 	.byte	-10
   3F2A FF                 6455 	.byte	-1
   3F2B F8                 6456 	.byte	-8
   3F2C 05                 6457 	.byte	5
   3F2D FF                 6458 	.byte	-1
   3F2E 18                 6459 	.byte	24
   3F2F 11                 6460 	.byte	17
   3F30 00                 6461 	.byte	0
   3F31 E2                 6462 	.byte	-30
   3F32 FA                 6463 	.byte	-6
   3F33 FF                 6464 	.byte	-1
   3F34 18                 6465 	.byte	24
   3F35 11                 6466 	.byte	17
   3F36 00                 6467 	.byte	0
   3F37 F0                 6468 	.byte	-16
   3F38 E9                 6469 	.byte	-23
   3F39 FF                 6470 	.byte	-1
   3F3A 18                 6471 	.byte	24
   3F3B 11                 6472 	.byte	17
   3F3C 00                 6473 	.byte	0
   3F3D EE                 6474 	.byte	-18
   3F3E E5                 6475 	.byte	-27
   3F3F FF                 6476 	.byte	-1
   3F40 18                 6477 	.byte	24
   3F41 10                 6478 	.byte	16
   3F42 00                 6479 	.byte	0
   3F43 F8                 6480 	.byte	-8
   3F44 06                 6481 	.byte	6
   3F45 FF                 6482 	.byte	-1
   3F46 FA                 6483 	.byte	-6
   3F47 0B                 6484 	.byte	11
   3F48 FF                 6485 	.byte	-1
   3F49 08                 6486 	.byte	8
   3F4A FA                 6487 	.byte	-6
   3F4B FF                 6488 	.byte	-1
   3F4C 06                 6489 	.byte	6
   3F4D F5                 6490 	.byte	-11
   3F4E FF                 6491 	.byte	-1
   3F4F F8                 6492 	.byte	-8
   3F50 06                 6493 	.byte	6
   3F51 01                 6494 	.byte	1
                           6495 	.globl _height2RisingLeft5
   3F52                    6496 _height2RisingLeft5:
   3F52 00                 6497 	.byte	0
   3F53 07                 6498 	.byte	7
   3F54 F7                 6499 	.byte	-9
   3F55 FF                 6500 	.byte	-1
   3F56 F9                 6501 	.byte	-7
   3F57 09                 6502 	.byte	9
   3F58 FF                 6503 	.byte	-1
   3F59 08                 6504 	.byte	8
   3F5A FB                 6505 	.byte	-5
   3F5B FF                 6506 	.byte	-1
   3F5C 07                 6507 	.byte	7
   3F5D F6                 6508 	.byte	-10
   3F5E FF                 6509 	.byte	-1
   3F5F F8                 6510 	.byte	-8
   3F60 06                 6511 	.byte	6
   3F61 FF                 6512 	.byte	-1
   3F62 17                 6513 	.byte	23
   3F63 13                 6514 	.byte	19
   3F64 00                 6515 	.byte	0
   3F65 E2                 6516 	.byte	-30
   3F66 F6                 6517 	.byte	-10
   3F67 FF                 6518 	.byte	-1
   3F68 17                 6519 	.byte	23
   3F69 14                 6520 	.byte	20
   3F6A 00                 6521 	.byte	0
   3F6B F1                 6522 	.byte	-15
   3F6C E7                 6523 	.byte	-25
   3F6D FF                 6524 	.byte	-1
   3F6E 17                 6525 	.byte	23
   3F6F 13                 6526 	.byte	19
   3F70 00                 6527 	.byte	0
   3F71 F0                 6528 	.byte	-16
   3F72 E3                 6529 	.byte	-29
   3F73 FF                 6530 	.byte	-1
   3F74 17                 6531 	.byte	23
   3F75 13                 6532 	.byte	19
   3F76 00                 6533 	.byte	0
   3F77 F8                 6534 	.byte	-8
   3F78 06                 6535 	.byte	6
   3F79 FF                 6536 	.byte	-1
   3F7A F9                 6537 	.byte	-7
   3F7B 0A                 6538 	.byte	10
   3F7C FF                 6539 	.byte	-1
   3F7D 08                 6540 	.byte	8
   3F7E FA                 6541 	.byte	-6
   3F7F FF                 6542 	.byte	-1
   3F80 07                 6543 	.byte	7
   3F81 F6                 6544 	.byte	-10
   3F82 FF                 6545 	.byte	-1
   3F83 F8                 6546 	.byte	-8
   3F84 06                 6547 	.byte	6
   3F85 01                 6548 	.byte	1
                           6549 	.globl _height2FallingBack5
   3F86                    6550 _height2FallingBack5:
   3F86 00                 6551 	.byte	0
   3F87 0A                 6552 	.byte	10
   3F88 00                 6553 	.byte	0
   3F89 FF                 6554 	.byte	-1
   3F8A 03                 6555 	.byte	3
   3F8B 0D                 6556 	.byte	13
   3F8C FF                 6557 	.byte	-1
   3F8D FE                 6558 	.byte	-2
   3F8E FB                 6559 	.byte	-5
   3F8F FF                 6560 	.byte	-1
   3F90 FD                 6561 	.byte	-3
   3F91 F3                 6562 	.byte	-13
   3F92 FF                 6563 	.byte	-1
   3F93 02                 6564 	.byte	2
   3F94 05                 6565 	.byte	5
   3F95 FF                 6566 	.byte	-1
   3F96 1E                 6567 	.byte	30
   3F97 F8                 6568 	.byte	-8
   3F98 00                 6569 	.byte	0
   3F99 E5                 6570 	.byte	-27
   3F9A 15                 6571 	.byte	21
   3F9B FF                 6572 	.byte	-1
   3F9C 1E                 6573 	.byte	30
   3F9D F8                 6574 	.byte	-8
   3F9E 00                 6575 	.byte	0
   3F9F E0                 6576 	.byte	-32
   3FA0 03                 6577 	.byte	3
   3FA1 FF                 6578 	.byte	-1
   3FA2 1E                 6579 	.byte	30
   3FA3 F9                 6580 	.byte	-7
   3FA4 00                 6581 	.byte	0
   3FA5 DF                 6582 	.byte	-33
   3FA6 FA                 6583 	.byte	-6
   3FA7 FF                 6584 	.byte	-1
   3FA8 1E                 6585 	.byte	30
   3FA9 F9                 6586 	.byte	-7
   3FAA 00                 6587 	.byte	0
   3FAB 02                 6588 	.byte	2
   3FAC 04                 6589 	.byte	4
   3FAD FF                 6590 	.byte	-1
   3FAE 03                 6591 	.byte	3
   3FAF 0D                 6592 	.byte	13
   3FB0 FF                 6593 	.byte	-1
   3FB1 FE                 6594 	.byte	-2
   3FB2 FC                 6595 	.byte	-4
   3FB3 FF                 6596 	.byte	-1
   3FB4 FD                 6597 	.byte	-3
   3FB5 F3                 6598 	.byte	-13
   3FB6 FF                 6599 	.byte	-1
   3FB7 02                 6600 	.byte	2
   3FB8 04                 6601 	.byte	4
   3FB9 01                 6602 	.byte	1
                           6603 	.globl _height2RisingFront5
   3FBA                    6604 _height2RisingFront5:
   3FBA 00                 6605 	.byte	0
   3FBB 04                 6606 	.byte	4
   3FBC 04                 6607 	.byte	4
   3FBD FF                 6608 	.byte	-1
   3FBE 03                 6609 	.byte	3
   3FBF 0E                 6610 	.byte	14
   3FC0 FF                 6611 	.byte	-1
   3FC1 FC                 6612 	.byte	-4
   3FC2 FC                 6613 	.byte	-4
   3FC3 FF                 6614 	.byte	-1
   3FC4 FD                 6615 	.byte	-3
   3FC5 F2                 6616 	.byte	-14
   3FC6 FF                 6617 	.byte	-1
   3FC7 04                 6618 	.byte	4
   3FC8 04                 6619 	.byte	4
   3FC9 FF                 6620 	.byte	-1
   3FCA 1D                 6621 	.byte	29
   3FCB F9                 6622 	.byte	-7
   3FCC 00                 6623 	.byte	0
   3FCD E6                 6624 	.byte	-26
   3FCE 15                 6625 	.byte	21
   3FCF FF                 6626 	.byte	-1
   3FD0 1D                 6627 	.byte	29
   3FD1 F8                 6628 	.byte	-8
   3FD2 00                 6629 	.byte	0
   3FD3 DF                 6630 	.byte	-33
   3FD4 04                 6631 	.byte	4
   3FD5 FF                 6632 	.byte	-1
   3FD6 1E                 6633 	.byte	30
   3FD7 F8                 6634 	.byte	-8
   3FD8 00                 6635 	.byte	0
   3FD9 DF                 6636 	.byte	-33
   3FDA FA                 6637 	.byte	-6
   3FDB FF                 6638 	.byte	-1
   3FDC 1E                 6639 	.byte	30
   3FDD F9                 6640 	.byte	-7
   3FDE 00                 6641 	.byte	0
   3FDF 03                 6642 	.byte	3
   3FE0 04                 6643 	.byte	4
   3FE1 FF                 6644 	.byte	-1
   3FE2 03                 6645 	.byte	3
   3FE3 0D                 6646 	.byte	13
   3FE4 FF                 6647 	.byte	-1
   3FE5 FD                 6648 	.byte	-3
   3FE6 FC                 6649 	.byte	-4
   3FE7 FF                 6650 	.byte	-1
   3FE8 FD                 6651 	.byte	-3
   3FE9 F3                 6652 	.byte	-13
   3FEA FF                 6653 	.byte	-1
   3FEB 03                 6654 	.byte	3
   3FEC 04                 6655 	.byte	4
   3FED 01                 6656 	.byte	1
                           6657 	.globl _height2FallingFront5
   3FEE                    6658 _height2FallingFront5:
   3FEE FF                 6659 	.byte	-1
   3FEF 03                 6660 	.byte	3
   3FF0 0E                 6661 	.byte	14
   3FF1 FF                 6662 	.byte	-1
   3FF2 0E                 6663 	.byte	14
   3FF3 FB                 6664 	.byte	-5
   3FF4 FF                 6665 	.byte	-1
   3FF5 FD                 6666 	.byte	-3
   3FF6 F3                 6667 	.byte	-13
   3FF7 FF                 6668 	.byte	-1
   3FF8 F2                 6669 	.byte	-14
   3FF9 04                 6670 	.byte	4
   3FFA FF                 6671 	.byte	-1
   3FFB 0B                 6672 	.byte	11
   3FFC 07                 6673 	.byte	7
   3FFD 00                 6674 	.byte	0
   3FFE F8                 6675 	.byte	-8
   3FFF 07                 6676 	.byte	7
   4000 FF                 6677 	.byte	-1
   4001 0B                 6678 	.byte	11
   4002 07                 6679 	.byte	7
   4003 00                 6680 	.byte	0
   4004 03                 6681 	.byte	3
   4005 F4                 6682 	.byte	-12
   4006 FF                 6683 	.byte	-1
   4007 0B                 6684 	.byte	11
   4008 08                 6685 	.byte	8
   4009 00                 6686 	.byte	0
   400A F2                 6687 	.byte	-14
   400B EB                 6688 	.byte	-21
   400C FF                 6689 	.byte	-1
   400D 0B                 6690 	.byte	11
   400E 07                 6691 	.byte	7
   400F 00                 6692 	.byte	0
   4010 F2                 6693 	.byte	-14
   4011 04                 6694 	.byte	4
   4012 FF                 6695 	.byte	-1
   4013 03                 6696 	.byte	3
   4014 0E                 6697 	.byte	14
   4015 FF                 6698 	.byte	-1
   4016 0E                 6699 	.byte	14
   4017 FC                 6700 	.byte	-4
   4018 FF                 6701 	.byte	-1
   4019 FD                 6702 	.byte	-3
   401A F2                 6703 	.byte	-14
   401B FF                 6704 	.byte	-1
   401C F2                 6705 	.byte	-14
   401D 04                 6706 	.byte	4
   401E 01                 6707 	.byte	1
                           6708 	.globl _height2RisingBack5
   401F                    6709 _height2RisingBack5:
   401F 00                 6710 	.byte	0
   4020 10                 6711 	.byte	16
   4021 F5                 6712 	.byte	-11
   4022 FF                 6713 	.byte	-1
   4023 03                 6714 	.byte	3
   4024 0D                 6715 	.byte	13
   4025 FF                 6716 	.byte	-1
   4026 0F                 6717 	.byte	15
   4027 FD                 6718 	.byte	-3
   4028 FF                 6719 	.byte	-1
   4029 FD                 6720 	.byte	-3
   402A F2                 6721 	.byte	-14
   402B FF                 6722 	.byte	-1
   402C F1                 6723 	.byte	-15
   402D 04                 6724 	.byte	4
   402E FF                 6725 	.byte	-1
   402F 07                 6726 	.byte	7
   4030 08                 6727 	.byte	8
   4031 00                 6728 	.byte	0
   4032 FC                 6729 	.byte	-4
   4033 05                 6730 	.byte	5
   4034 FF                 6731 	.byte	-1
   4035 07                 6732 	.byte	7
   4036 08                 6733 	.byte	8
   4037 00                 6734 	.byte	0
   4038 08                 6735 	.byte	8
   4039 F5                 6736 	.byte	-11
   403A FF                 6737 	.byte	-1
   403B 07                 6738 	.byte	7
   403C 07                 6739 	.byte	7
   403D 00                 6740 	.byte	0
   403E F6                 6741 	.byte	-10
   403F EB                 6742 	.byte	-21
   4040 FF                 6743 	.byte	-1
   4041 07                 6744 	.byte	7
   4042 08                 6745 	.byte	8
   4043 00                 6746 	.byte	0
   4044 F1                 6747 	.byte	-15
   4045 04                 6748 	.byte	4
   4046 FF                 6749 	.byte	-1
   4047 03                 6750 	.byte	3
   4048 0D                 6751 	.byte	13
   4049 FF                 6752 	.byte	-1
   404A 0F                 6753 	.byte	15
   404B FC                 6754 	.byte	-4
   404C FF                 6755 	.byte	-1
   404D FD                 6756 	.byte	-3
   404E F3                 6757 	.byte	-13
   404F FF                 6758 	.byte	-1
   4050 F1                 6759 	.byte	-15
   4051 04                 6760 	.byte	4
   4052 01                 6761 	.byte	1
                           6762 	.globl _depth2RollingLeft5
   4053                    6763 _depth2RollingLeft5:
   4053 FF                 6764 	.byte	-1
   4054 0A                 6765 	.byte	10
   4055 0B                 6766 	.byte	11
   4056 FF                 6767 	.byte	-1
   4057 10                 6768 	.byte	16
   4058 F5                 6769 	.byte	-11
   4059 FF                 6770 	.byte	-1
   405A F6                 6771 	.byte	-10
   405B F5                 6772 	.byte	-11
   405C FF                 6773 	.byte	-1
   405D F0                 6774 	.byte	-16
   405E 0B                 6775 	.byte	11
   405F FF                 6776 	.byte	-1
   4060 08                 6777 	.byte	8
   4061 F8                 6778 	.byte	-8
   4062 00                 6779 	.byte	0
   4063 02                 6780 	.byte	2
   4064 13                 6781 	.byte	19
   4065 FF                 6782 	.byte	-1
   4066 09                 6783 	.byte	9
   4067 F8                 6784 	.byte	-8
   4068 00                 6785 	.byte	0
   4069 07                 6786 	.byte	7
   406A FD                 6787 	.byte	-3
   406B FF                 6788 	.byte	-1
   406C 09                 6789 	.byte	9
   406D F8                 6790 	.byte	-8
   406E 00                 6791 	.byte	0
   406F ED                 6792 	.byte	-19
   4070 FD                 6793 	.byte	-3
   4071 FF                 6794 	.byte	-1
   4072 08                 6795 	.byte	8
   4073 F7                 6796 	.byte	-9
   4074 00                 6797 	.byte	0
   4075 F0                 6798 	.byte	-16
   4076 0C                 6799 	.byte	12
   4077 FF                 6800 	.byte	-1
   4078 0B                 6801 	.byte	11
   4079 0B                 6802 	.byte	11
   407A FF                 6803 	.byte	-1
   407B 10                 6804 	.byte	16
   407C F5                 6805 	.byte	-11
   407D FF                 6806 	.byte	-1
   407E F5                 6807 	.byte	-11
   407F F4                 6808 	.byte	-12
   4080 FF                 6809 	.byte	-1
   4081 F0                 6810 	.byte	-16
   4082 0C                 6811 	.byte	12
   4083 01                 6812 	.byte	1
                           6813 	.globl _depth2RollingRight5
   4084                    6814 _depth2RollingRight5:
   4084 00                 6815 	.byte	0
   4085 09                 6816 	.byte	9
   4086 03                 6817 	.byte	3
   4087 FF                 6818 	.byte	-1
   4088 FA                 6819 	.byte	-6
   4089 0B                 6820 	.byte	11
   408A FF                 6821 	.byte	-1
   408B 10                 6822 	.byte	16
   408C F4                 6823 	.byte	-12
   408D FF                 6824 	.byte	-1
   408E 06                 6825 	.byte	6
   408F F6                 6826 	.byte	-10
   4090 FF                 6827 	.byte	-1
   4091 F0                 6828 	.byte	-16
   4092 0B                 6829 	.byte	11
   4093 FF                 6830 	.byte	-1
   4094 0C                 6831 	.byte	12
   4095 08                 6832 	.byte	8
   4096 00                 6833 	.byte	0
   4097 EE                 6834 	.byte	-18
   4098 03                 6835 	.byte	3
   4099 FF                 6836 	.byte	-1
   409A 0C                 6837 	.byte	12
   409B 09                 6838 	.byte	9
   409C 00                 6839 	.byte	0
   409D 04                 6840 	.byte	4
   409E EB                 6841 	.byte	-21
   409F FF                 6842 	.byte	-1
   40A0 0C                 6843 	.byte	12
   40A1 09                 6844 	.byte	9
   40A2 00                 6845 	.byte	0
   40A3 FA                 6846 	.byte	-6
   40A4 ED                 6847 	.byte	-19
   40A5 FF                 6848 	.byte	-1
   40A6 0C                 6849 	.byte	12
   40A7 08                 6850 	.byte	8
   40A8 00                 6851 	.byte	0
   40A9 F0                 6852 	.byte	-16
   40AA 0B                 6853 	.byte	11
   40AB FF                 6854 	.byte	-1
   40AC FA                 6855 	.byte	-6
   40AD 0C                 6856 	.byte	12
   40AE FF                 6857 	.byte	-1
   40AF 10                 6858 	.byte	16
   40B0 F4                 6859 	.byte	-12
   40B1 FF                 6860 	.byte	-1
   40B2 06                 6861 	.byte	6
   40B3 F5                 6862 	.byte	-11
   40B4 FF                 6863 	.byte	-1
   40B5 F0                 6864 	.byte	-16
   40B6 0B                 6865 	.byte	11
   40B7 01                 6866 	.byte	1
                           6867 	.globl _width2RollingFront5
   40B8                    6868 _width2RollingFront5:
   40B8 FF                 6869 	.byte	-1
   40B9 06                 6870 	.byte	6
   40BA 1C                 6871 	.byte	28
   40BB FF                 6872 	.byte	-1
   40BC 0E                 6873 	.byte	14
   40BD FB                 6874 	.byte	-5
   40BE FF                 6875 	.byte	-1
   40BF FA                 6876 	.byte	-6
   40C0 E5                 6877 	.byte	-27
   40C1 FF                 6878 	.byte	-1
   40C2 F2                 6879 	.byte	-14
   40C3 04                 6880 	.byte	4
   40C4 FF                 6881 	.byte	-1
   40C5 05                 6882 	.byte	5
   40C6 04                 6883 	.byte	4
   40C7 00                 6884 	.byte	0
   40C8 01                 6885 	.byte	1
   40C9 18                 6886 	.byte	24
   40CA FF                 6887 	.byte	-1
   40CB 05                 6888 	.byte	5
   40CC 04                 6889 	.byte	4
   40CD 00                 6890 	.byte	0
   40CE 09                 6891 	.byte	9
   40CF F7                 6892 	.byte	-9
   40D0 FF                 6893 	.byte	-1
   40D1 06                 6894 	.byte	6
   40D2 04                 6895 	.byte	4
   40D3 00                 6896 	.byte	0
   40D4 F4                 6897 	.byte	-12
   40D5 E1                 6898 	.byte	-31
   40D6 FF                 6899 	.byte	-1
   40D7 06                 6900 	.byte	6
   40D8 04                 6901 	.byte	4
   40D9 00                 6902 	.byte	0
   40DA F1                 6903 	.byte	-15
   40DB 04                 6904 	.byte	4
   40DC FF                 6905 	.byte	-1
   40DD 06                 6906 	.byte	6
   40DE 1C                 6907 	.byte	28
   40DF FF                 6908 	.byte	-1
   40E0 0F                 6909 	.byte	15
   40E1 FB                 6910 	.byte	-5
   40E2 FF                 6911 	.byte	-1
   40E3 FA                 6912 	.byte	-6
   40E4 E5                 6913 	.byte	-27
   40E5 FF                 6914 	.byte	-1
   40E6 F1                 6915 	.byte	-15
   40E7 04                 6916 	.byte	4
   40E8 01                 6917 	.byte	1
                           6918 	.globl _width2RollingBack5
   40E9                    6919 _width2RollingBack5:
   40E9 00                 6920 	.byte	0
   40EA 0A                 6921 	.byte	10
   40EB 00                 6922 	.byte	0
   40EC FF                 6923 	.byte	-1
   40ED 06                 6924 	.byte	6
   40EE 1B                 6925 	.byte	27
   40EF FF                 6926 	.byte	-1
   40F0 FE                 6927 	.byte	-2
   40F1 FB                 6928 	.byte	-5
   40F2 FF                 6929 	.byte	-1
   40F3 FA                 6930 	.byte	-6
   40F4 E5                 6931 	.byte	-27
   40F5 FF                 6932 	.byte	-1
   40F6 02                 6933 	.byte	2
   40F7 05                 6934 	.byte	5
   40F8 FF                 6935 	.byte	-1
   40F9 0F                 6936 	.byte	15
   40FA FC                 6937 	.byte	-4
   40FB 00                 6938 	.byte	0
   40FC F7                 6939 	.byte	-9
   40FD 1F                 6940 	.byte	31
   40FE FF                 6941 	.byte	-1
   40FF 0F                 6942 	.byte	15
   4100 FC                 6943 	.byte	-4
   4101 00                 6944 	.byte	0
   4102 EF                 6945 	.byte	-17
   4103 FF                 6946 	.byte	-1
   4104 FF                 6947 	.byte	-1
   4105 0F                 6948 	.byte	15
   4106 FC                 6949 	.byte	-4
   4107 00                 6950 	.byte	0
   4108 EB                 6951 	.byte	-21
   4109 E9                 6952 	.byte	-23
   410A FF                 6953 	.byte	-1
   410B 0F                 6954 	.byte	15
   410C FC                 6955 	.byte	-4
   410D 00                 6956 	.byte	0
   410E 02                 6957 	.byte	2
   410F 05                 6958 	.byte	5
   4110 FF                 6959 	.byte	-1
   4111 06                 6960 	.byte	6
   4112 1B                 6961 	.byte	27
   4113 FF                 6962 	.byte	-1
   4114 FE                 6963 	.byte	-2
   4115 FB                 6964 	.byte	-5
   4116 FF                 6965 	.byte	-1
   4117 FA                 6966 	.byte	-6
   4118 E5                 6967 	.byte	-27
   4119 FF                 6968 	.byte	-1
   411A 02                 6969 	.byte	2
   411B 05                 6970 	.byte	5
   411C 01                 6971 	.byte	1
                           6972 	.globl _height2FallingLeft6
   411D                    6973 _height2FallingLeft6:
   411D FF                 6974 	.byte	-1
   411E 0B                 6975 	.byte	11
   411F 0A                 6976 	.byte	10
   4120 FF                 6977 	.byte	-1
   4121 08                 6978 	.byte	8
   4122 FA                 6979 	.byte	-6
   4123 FF                 6980 	.byte	-1
   4124 F5                 6981 	.byte	-11
   4125 F7                 6982 	.byte	-9
   4126 FF                 6983 	.byte	-1
   4127 F8                 6984 	.byte	-8
   4128 05                 6985 	.byte	5
   4129 FF                 6986 	.byte	-1
   412A 0E                 6987 	.byte	14
   412B ED                 6988 	.byte	-19
   412C 00                 6989 	.byte	0
   412D FD                 6990 	.byte	-3
   412E 1D                 6991 	.byte	29
   412F FF                 6992 	.byte	-1
   4130 0E                 6993 	.byte	14
   4131 ED                 6994 	.byte	-19
   4132 00                 6995 	.byte	0
   4133 FA                 6996 	.byte	-6
   4134 0D                 6997 	.byte	13
   4135 FF                 6998 	.byte	-1
   4136 0E                 6999 	.byte	14
   4137 ED                 7000 	.byte	-19
   4138 00                 7001 	.byte	0
   4139 E7                 7002 	.byte	-25
   413A 0A                 7003 	.byte	10
   413B FF                 7004 	.byte	-1
   413C 0E                 7005 	.byte	14
   413D EC                 7006 	.byte	-20
   413E 00                 7007 	.byte	0
   413F F8                 7008 	.byte	-8
   4140 06                 7009 	.byte	6
   4141 FF                 7010 	.byte	-1
   4142 0B                 7011 	.byte	11
   4143 0A                 7012 	.byte	10
   4144 FF                 7013 	.byte	-1
   4145 08                 7014 	.byte	8
   4146 FA                 7015 	.byte	-6
   4147 FF                 7016 	.byte	-1
   4148 F5                 7017 	.byte	-11
   4149 F6                 7018 	.byte	-10
   414A FF                 7019 	.byte	-1
   414B F8                 7020 	.byte	-8
   414C 06                 7021 	.byte	6
   414D 01                 7022 	.byte	1
                           7023 	.globl _height2RisingRight6
   414E                    7024 _height2RisingRight6:
   414E 00                 7025 	.byte	0
   414F 06                 7026 	.byte	6
   4150 1C                 7027 	.byte	28
   4151 FF                 7028 	.byte	-1
   4152 0A                 7029 	.byte	10
   4153 0B                 7030 	.byte	11
   4154 FF                 7031 	.byte	-1
   4155 08                 7032 	.byte	8
   4156 FA                 7033 	.byte	-6
   4157 FF                 7034 	.byte	-1
   4158 F6                 7035 	.byte	-10
   4159 F5                 7036 	.byte	-11
   415A FF                 7037 	.byte	-1
   415B F8                 7038 	.byte	-8
   415C 06                 7039 	.byte	6
   415D FF                 7040 	.byte	-1
   415E 11                 7041 	.byte	17
   415F EF                 7042 	.byte	-17
   4160 00                 7043 	.byte	0
   4161 F9                 7044 	.byte	-7
   4162 1C                 7045 	.byte	28
   4163 FF                 7046 	.byte	-1
   4164 11                 7047 	.byte	17
   4165 EF                 7048 	.byte	-17
   4166 00                 7049 	.byte	0
   4167 F7                 7050 	.byte	-9
   4168 0B                 7051 	.byte	11
   4169 FF                 7052 	.byte	-1
   416A 11                 7053 	.byte	17
   416B EF                 7054 	.byte	-17
   416C 00                 7055 	.byte	0
   416D E5                 7056 	.byte	-27
   416E 06                 7057 	.byte	6
   416F FF                 7058 	.byte	-1
   4170 11                 7059 	.byte	17
   4171 EF                 7060 	.byte	-17
   4172 00                 7061 	.byte	0
   4173 F8                 7062 	.byte	-8
   4174 06                 7063 	.byte	6
   4175 FF                 7064 	.byte	-1
   4176 0A                 7065 	.byte	10
   4177 0B                 7066 	.byte	11
   4178 FF                 7067 	.byte	-1
   4179 08                 7068 	.byte	8
   417A FA                 7069 	.byte	-6
   417B FF                 7070 	.byte	-1
   417C F6                 7071 	.byte	-10
   417D F5                 7072 	.byte	-11
   417E FF                 7073 	.byte	-1
   417F F8                 7074 	.byte	-8
   4180 06                 7075 	.byte	6
   4181 01                 7076 	.byte	1
                           7077 	.globl _height2FallingRight6
   4182                    7078 _height2FallingRight6:
   4182 00                 7079 	.byte	0
   4183 0A                 7080 	.byte	10
   4184 04                 7081 	.byte	4
   4185 FF                 7082 	.byte	-1
   4186 F9                 7083 	.byte	-7
   4187 0A                 7084 	.byte	10
   4188 FF                 7085 	.byte	-1
   4189 08                 7086 	.byte	8
   418A FA                 7087 	.byte	-6
   418B FF                 7088 	.byte	-1
   418C 07                 7089 	.byte	7
   418D F7                 7090 	.byte	-9
   418E FF                 7091 	.byte	-1
   418F F8                 7092 	.byte	-8
   4190 05                 7093 	.byte	5
   4191 FF                 7094 	.byte	-1
   4192 17                 7095 	.byte	23
   4193 14                 7096 	.byte	20
   4194 00                 7097 	.byte	0
   4195 E2                 7098 	.byte	-30
   4196 F6                 7099 	.byte	-10
   4197 FF                 7100 	.byte	-1
   4198 17                 7101 	.byte	23
   4199 14                 7102 	.byte	20
   419A 00                 7103 	.byte	0
   419B F1                 7104 	.byte	-15
   419C E6                 7105 	.byte	-26
   419D FF                 7106 	.byte	-1
   419E 17                 7107 	.byte	23
   419F 14                 7108 	.byte	20
   41A0 00                 7109 	.byte	0
   41A1 F0                 7110 	.byte	-16
   41A2 E3                 7111 	.byte	-29
   41A3 FF                 7112 	.byte	-1
   41A4 17                 7113 	.byte	23
   41A5 13                 7114 	.byte	19
   41A6 00                 7115 	.byte	0
   41A7 F8                 7116 	.byte	-8
   41A8 06                 7117 	.byte	6
   41A9 FF                 7118 	.byte	-1
   41AA F9                 7119 	.byte	-7
   41AB 0A                 7120 	.byte	10
   41AC FF                 7121 	.byte	-1
   41AD 08                 7122 	.byte	8
   41AE FA                 7123 	.byte	-6
   41AF FF                 7124 	.byte	-1
   41B0 07                 7125 	.byte	7
   41B1 F6                 7126 	.byte	-10
   41B2 FF                 7127 	.byte	-1
   41B3 F8                 7128 	.byte	-8
   41B4 06                 7129 	.byte	6
   41B5 01                 7130 	.byte	1
                           7131 	.globl _height2RisingLeft6
   41B6                    7132 _height2RisingLeft6:
   41B6 00                 7133 	.byte	0
   41B7 06                 7134 	.byte	6
   41B8 F6                 7135 	.byte	-10
   41B9 FF                 7136 	.byte	-1
   41BA FA                 7137 	.byte	-6
   41BB 0A                 7138 	.byte	10
   41BC FF                 7139 	.byte	-1
   41BD 08                 7140 	.byte	8
   41BE FB                 7141 	.byte	-5
   41BF FF                 7142 	.byte	-1
   41C0 06                 7143 	.byte	6
   41C1 F5                 7144 	.byte	-11
   41C2 FF                 7145 	.byte	-1
   41C3 F8                 7146 	.byte	-8
   41C4 06                 7147 	.byte	6
   41C5 FF                 7148 	.byte	-1
   41C6 18                 7149 	.byte	24
   41C7 10                 7150 	.byte	16
   41C8 00                 7151 	.byte	0
   41C9 E2                 7152 	.byte	-30
   41CA FA                 7153 	.byte	-6
   41CB FF                 7154 	.byte	-1
   41CC 18                 7155 	.byte	24
   41CD 11                 7156 	.byte	17
   41CE 00                 7157 	.byte	0
   41CF F0                 7158 	.byte	-16
   41D0 EA                 7159 	.byte	-22
   41D1 FF                 7160 	.byte	-1
   41D2 18                 7161 	.byte	24
   41D3 10                 7162 	.byte	16
   41D4 00                 7163 	.byte	0
   41D5 EE                 7164 	.byte	-18
   41D6 E5                 7165 	.byte	-27
   41D7 FF                 7166 	.byte	-1
   41D8 18                 7167 	.byte	24
   41D9 10                 7168 	.byte	16
   41DA 00                 7169 	.byte	0
   41DB F8                 7170 	.byte	-8
   41DC 06                 7171 	.byte	6
   41DD FF                 7172 	.byte	-1
   41DE FA                 7173 	.byte	-6
   41DF 0B                 7174 	.byte	11
   41E0 FF                 7175 	.byte	-1
   41E1 08                 7176 	.byte	8
   41E2 FA                 7177 	.byte	-6
   41E3 FF                 7178 	.byte	-1
   41E4 06                 7179 	.byte	6
   41E5 F5                 7180 	.byte	-11
   41E6 FF                 7181 	.byte	-1
   41E7 F8                 7182 	.byte	-8
   41E8 06                 7183 	.byte	6
   41E9 01                 7184 	.byte	1
                           7185 	.globl _height2FallingBack6
   41EA                    7186 _height2FallingBack6:
   41EA 00                 7187 	.byte	0
   41EB 0C                 7188 	.byte	12
   41EC FF                 7189 	.byte	-1
   41ED FF                 7190 	.byte	-1
   41EE 03                 7191 	.byte	3
   41EF 0D                 7192 	.byte	13
   41F0 FF                 7193 	.byte	-1
   41F1 FC                 7194 	.byte	-4
   41F2 FC                 7195 	.byte	-4
   41F3 FF                 7196 	.byte	-1
   41F4 FD                 7197 	.byte	-3
   41F5 F3                 7198 	.byte	-13
   41F6 FF                 7199 	.byte	-1
   41F7 04                 7200 	.byte	4
   41F8 04                 7201 	.byte	4
   41F9 FF                 7202 	.byte	-1
   41FA 1D                 7203 	.byte	29
   41FB F8                 7204 	.byte	-8
   41FC 00                 7205 	.byte	0
   41FD E6                 7206 	.byte	-26
   41FE 15                 7207 	.byte	21
   41FF FF                 7208 	.byte	-1
   4200 1D                 7209 	.byte	29
   4201 F8                 7210 	.byte	-8
   4202 00                 7211 	.byte	0
   4203 DF                 7212 	.byte	-33
   4204 04                 7213 	.byte	4
   4205 FF                 7214 	.byte	-1
   4206 1E                 7215 	.byte	30
   4207 F8                 7216 	.byte	-8
   4208 00                 7217 	.byte	0
   4209 DF                 7218 	.byte	-33
   420A FB                 7219 	.byte	-5
   420B FF                 7220 	.byte	-1
   420C 1E                 7221 	.byte	30
   420D F8                 7222 	.byte	-8
   420E 00                 7223 	.byte	0
   420F 03                 7224 	.byte	3
   4210 04                 7225 	.byte	4
   4211 FF                 7226 	.byte	-1
   4212 03                 7227 	.byte	3
   4213 0D                 7228 	.byte	13
   4214 FF                 7229 	.byte	-1
   4215 FD                 7230 	.byte	-3
   4216 FC                 7231 	.byte	-4
   4217 FF                 7232 	.byte	-1
   4218 FD                 7233 	.byte	-3
   4219 F3                 7234 	.byte	-13
   421A FF                 7235 	.byte	-1
   421B 03                 7236 	.byte	3
   421C 04                 7237 	.byte	4
   421D 01                 7238 	.byte	1
                           7239 	.globl _height2RisingFront6
   421E                    7240 _height2RisingFront6:
   421E 00                 7241 	.byte	0
   421F 02                 7242 	.byte	2
   4220 05                 7243 	.byte	5
   4221 FF                 7244 	.byte	-1
   4222 03                 7245 	.byte	3
   4223 0E                 7246 	.byte	14
   4224 FF                 7247 	.byte	-1
   4225 FE                 7248 	.byte	-2
   4226 FB                 7249 	.byte	-5
   4227 FF                 7250 	.byte	-1
   4228 FD                 7251 	.byte	-3
   4229 F2                 7252 	.byte	-14
   422A FF                 7253 	.byte	-1
   422B 02                 7254 	.byte	2
   422C 05                 7255 	.byte	5
   422D FF                 7256 	.byte	-1
   422E 1E                 7257 	.byte	30
   422F F9                 7258 	.byte	-7
   4230 00                 7259 	.byte	0
   4231 E5                 7260 	.byte	-27
   4232 15                 7261 	.byte	21
   4233 FF                 7262 	.byte	-1
   4234 1E                 7263 	.byte	30
   4235 F8                 7264 	.byte	-8
   4236 00                 7265 	.byte	0
   4237 E0                 7266 	.byte	-32
   4238 03                 7267 	.byte	3
   4239 FF                 7268 	.byte	-1
   423A 1E                 7269 	.byte	30
   423B F9                 7270 	.byte	-7
   423C 00                 7271 	.byte	0
   423D DF                 7272 	.byte	-33
   423E F9                 7273 	.byte	-7
   423F FF                 7274 	.byte	-1
   4240 1E                 7275 	.byte	30
   4241 FA                 7276 	.byte	-6
   4242 00                 7277 	.byte	0
   4243 02                 7278 	.byte	2
   4244 04                 7279 	.byte	4
   4245 FF                 7280 	.byte	-1
   4246 03                 7281 	.byte	3
   4247 0D                 7282 	.byte	13
   4248 FF                 7283 	.byte	-1
   4249 FE                 7284 	.byte	-2
   424A FC                 7285 	.byte	-4
   424B FF                 7286 	.byte	-1
   424C FD                 7287 	.byte	-3
   424D F3                 7288 	.byte	-13
   424E FF                 7289 	.byte	-1
   424F 02                 7290 	.byte	2
   4250 04                 7291 	.byte	4
   4251 01                 7292 	.byte	1
                           7293 	.globl _height2FallingFront6
   4252                    7294 _height2FallingFront6:
   4252 FF                 7295 	.byte	-1
   4253 03                 7296 	.byte	3
   4254 0E                 7297 	.byte	14
   4255 FF                 7298 	.byte	-1
   4256 0F                 7299 	.byte	15
   4257 FC                 7300 	.byte	-4
   4258 FF                 7301 	.byte	-1
   4259 FD                 7302 	.byte	-3
   425A F3                 7303 	.byte	-13
   425B FF                 7304 	.byte	-1
   425C F1                 7305 	.byte	-15
   425D 03                 7306 	.byte	3
   425E FF                 7307 	.byte	-1
   425F 07                 7308 	.byte	7
   4260 08                 7309 	.byte	8
   4261 00                 7310 	.byte	0
   4262 FC                 7311 	.byte	-4
   4263 06                 7312 	.byte	6
   4264 FF                 7313 	.byte	-1
   4265 07                 7314 	.byte	7
   4266 08                 7315 	.byte	8
   4267 00                 7316 	.byte	0
   4268 08                 7317 	.byte	8
   4269 F4                 7318 	.byte	-12
   426A FF                 7319 	.byte	-1
   426B 07                 7320 	.byte	7
   426C 08                 7321 	.byte	8
   426D 00                 7322 	.byte	0
   426E F6                 7323 	.byte	-10
   426F EB                 7324 	.byte	-21
   4270 FF                 7325 	.byte	-1
   4271 07                 7326 	.byte	7
   4272 07                 7327 	.byte	7
   4273 00                 7328 	.byte	0
   4274 F1                 7329 	.byte	-15
   4275 04                 7330 	.byte	4
   4276 FF                 7331 	.byte	-1
   4277 03                 7332 	.byte	3
   4278 0E                 7333 	.byte	14
   4279 FF                 7334 	.byte	-1
   427A 0F                 7335 	.byte	15
   427B FC                 7336 	.byte	-4
   427C FF                 7337 	.byte	-1
   427D FD                 7338 	.byte	-3
   427E F2                 7339 	.byte	-14
   427F FF                 7340 	.byte	-1
   4280 F1                 7341 	.byte	-15
   4281 04                 7342 	.byte	4
   4282 01                 7343 	.byte	1
                           7344 	.globl _height2RisingBack6
   4283                    7345 _height2RisingBack6:
   4283 00                 7346 	.byte	0
   4284 10                 7347 	.byte	16
   4285 F5                 7348 	.byte	-11
   4286 FF                 7349 	.byte	-1
   4287 03                 7350 	.byte	3
   4288 0D                 7351 	.byte	13
   4289 FF                 7352 	.byte	-1
   428A 0E                 7353 	.byte	14
   428B FC                 7354 	.byte	-4
   428C FF                 7355 	.byte	-1
   428D FD                 7356 	.byte	-3
   428E F2                 7357 	.byte	-14
   428F FF                 7358 	.byte	-1
   4290 F2                 7359 	.byte	-14
   4291 05                 7360 	.byte	5
   4292 FF                 7361 	.byte	-1
   4293 0B                 7362 	.byte	11
   4294 07                 7363 	.byte	7
   4295 00                 7364 	.byte	0
   4296 F8                 7365 	.byte	-8
   4297 06                 7366 	.byte	6
   4298 FF                 7367 	.byte	-1
   4299 0B                 7368 	.byte	11
   429A 07                 7369 	.byte	7
   429B 00                 7370 	.byte	0
   429C 03                 7371 	.byte	3
   429D F5                 7372 	.byte	-11
   429E FF                 7373 	.byte	-1
   429F 0B                 7374 	.byte	11
   42A0 07                 7375 	.byte	7
   42A1 00                 7376 	.byte	0
   42A2 F2                 7377 	.byte	-14
   42A3 EB                 7378 	.byte	-21
   42A4 FF                 7379 	.byte	-1
   42A5 0B                 7380 	.byte	11
   42A6 08                 7381 	.byte	8
   42A7 00                 7382 	.byte	0
   42A8 F2                 7383 	.byte	-14
   42A9 04                 7384 	.byte	4
   42AA FF                 7385 	.byte	-1
   42AB 03                 7386 	.byte	3
   42AC 0D                 7387 	.byte	13
   42AD FF                 7388 	.byte	-1
   42AE 0E                 7389 	.byte	14
   42AF FC                 7390 	.byte	-4
   42B0 FF                 7391 	.byte	-1
   42B1 FD                 7392 	.byte	-3
   42B2 F3                 7393 	.byte	-13
   42B3 FF                 7394 	.byte	-1
   42B4 F2                 7395 	.byte	-14
   42B5 04                 7396 	.byte	4
   42B6 01                 7397 	.byte	1
                           7398 	.globl _depth2RollingLeft6
   42B7                    7399 _depth2RollingLeft6:
   42B7 FF                 7400 	.byte	-1
   42B8 0B                 7401 	.byte	11
   42B9 0A                 7402 	.byte	10
   42BA FF                 7403 	.byte	-1
   42BB 10                 7404 	.byte	16
   42BC F5                 7405 	.byte	-11
   42BD FF                 7406 	.byte	-1
   42BE F5                 7407 	.byte	-11
   42BF F6                 7408 	.byte	-10
   42C0 FF                 7409 	.byte	-1
   42C1 F0                 7410 	.byte	-16
   42C2 0B                 7411 	.byte	11
   42C3 FF                 7412 	.byte	-1
   42C4 07                 7413 	.byte	7
   42C5 F7                 7414 	.byte	-9
   42C6 00                 7415 	.byte	0
   42C7 04                 7416 	.byte	4
   42C8 13                 7417 	.byte	19
   42C9 FF                 7418 	.byte	-1
   42CA 07                 7419 	.byte	7
   42CB F6                 7420 	.byte	-10
   42CC 00                 7421 	.byte	0
   42CD 09                 7422 	.byte	9
   42CE FF                 7423 	.byte	-1
   42CF FF                 7424 	.byte	-1
   42D0 07                 7425 	.byte	7
   42D1 F6                 7426 	.byte	-10
   42D2 00                 7427 	.byte	0
   42D3 EE                 7428 	.byte	-18
   42D4 00                 7429 	.byte	0
   42D5 FF                 7430 	.byte	-1
   42D6 07                 7431 	.byte	7
   42D7 F6                 7432 	.byte	-10
   42D8 00                 7433 	.byte	0
   42D9 F0                 7434 	.byte	-16
   42DA 0C                 7435 	.byte	12
   42DB FF                 7436 	.byte	-1
   42DC 0B                 7437 	.byte	11
   42DD 09                 7438 	.byte	9
   42DE FF                 7439 	.byte	-1
   42DF 10                 7440 	.byte	16
   42E0 F5                 7441 	.byte	-11
   42E1 FF                 7442 	.byte	-1
   42E2 F5                 7443 	.byte	-11
   42E3 F6                 7444 	.byte	-10
   42E4 FF                 7445 	.byte	-1
   42E5 F0                 7446 	.byte	-16
   42E6 0C                 7447 	.byte	12
   42E7 01                 7448 	.byte	1
                           7449 	.globl _depth2RollingRight6
   42E8                    7450 _depth2RollingRight6:
   42E8 00                 7451 	.byte	0
   42E9 0A                 7452 	.byte	10
   42EA 04                 7453 	.byte	4
   42EB FF                 7454 	.byte	-1
   42EC F9                 7455 	.byte	-7
   42ED 0A                 7456 	.byte	10
   42EE FF                 7457 	.byte	-1
   42EF 10                 7458 	.byte	16
   42F0 F4                 7459 	.byte	-12
   42F1 FF                 7460 	.byte	-1
   42F2 07                 7461 	.byte	7
   42F3 F7                 7462 	.byte	-9
   42F4 FF                 7463 	.byte	-1
   42F5 F0                 7464 	.byte	-16
   42F6 0B                 7465 	.byte	11
   42F7 FF                 7466 	.byte	-1
   42F8 0B                 7467 	.byte	11
   42F9 0A                 7468 	.byte	10
   42FA 00                 7469 	.byte	0
   42FB EE                 7470 	.byte	-18
   42FC 00                 7471 	.byte	0
   42FD FF                 7472 	.byte	-1
   42FE 0B                 7473 	.byte	11
   42FF 0A                 7474 	.byte	10
   4300 00                 7475 	.byte	0
   4301 05                 7476 	.byte	5
   4302 EA                 7477 	.byte	-22
   4303 FF                 7478 	.byte	-1
   4304 0B                 7479 	.byte	11
   4305 0A                 7480 	.byte	10
   4306 00                 7481 	.byte	0
   4307 FC                 7482 	.byte	-4
   4308 ED                 7483 	.byte	-19
   4309 FF                 7484 	.byte	-1
   430A 0B                 7485 	.byte	11
   430B 09                 7486 	.byte	9
   430C 00                 7487 	.byte	0
   430D F0                 7488 	.byte	-16
   430E 0C                 7489 	.byte	12
   430F FF                 7490 	.byte	-1
   4310 F9                 7491 	.byte	-7
   4311 0A                 7492 	.byte	10
   4312 FF                 7493 	.byte	-1
   4313 10                 7494 	.byte	16
   4314 F4                 7495 	.byte	-12
   4315 FF                 7496 	.byte	-1
   4316 07                 7497 	.byte	7
   4317 F6                 7498 	.byte	-10
   4318 FF                 7499 	.byte	-1
   4319 F0                 7500 	.byte	-16
   431A 0C                 7501 	.byte	12
   431B 01                 7502 	.byte	1
                           7503 	.globl _width2RollingFront6
   431C                    7504 _width2RollingFront6:
   431C FF                 7505 	.byte	-1
   431D 06                 7506 	.byte	6
   431E 1C                 7507 	.byte	28
   431F FF                 7508 	.byte	-1
   4320 0F                 7509 	.byte	15
   4321 FC                 7510 	.byte	-4
   4322 FF                 7511 	.byte	-1
   4323 FA                 7512 	.byte	-6
   4324 E5                 7513 	.byte	-27
   4325 FF                 7514 	.byte	-1
   4326 F1                 7515 	.byte	-15
   4327 03                 7516 	.byte	3
   4328 FF                 7517 	.byte	-1
   4329 04                 7518 	.byte	4
   432A 04                 7519 	.byte	4
   432B 00                 7520 	.byte	0
   432C 02                 7521 	.byte	2
   432D 18                 7522 	.byte	24
   432E FF                 7523 	.byte	-1
   432F 04                 7524 	.byte	4
   4330 04                 7525 	.byte	4
   4331 00                 7526 	.byte	0
   4332 0B                 7527 	.byte	11
   4333 F8                 7528 	.byte	-8
   4334 FF                 7529 	.byte	-1
   4335 03                 7530 	.byte	3
   4336 04                 7531 	.byte	4
   4337 00                 7532 	.byte	0
   4338 F7                 7533 	.byte	-9
   4339 E1                 7534 	.byte	-31
   433A FF                 7535 	.byte	-1
   433B 03                 7536 	.byte	3
   433C 03                 7537 	.byte	3
   433D 00                 7538 	.byte	0
   433E F2                 7539 	.byte	-14
   433F 04                 7540 	.byte	4
   4340 FF                 7541 	.byte	-1
   4341 06                 7542 	.byte	6
   4342 1C                 7543 	.byte	28
   4343 FF                 7544 	.byte	-1
   4344 0E                 7545 	.byte	14
   4345 FC                 7546 	.byte	-4
   4346 FF                 7547 	.byte	-1
   4347 FA                 7548 	.byte	-6
   4348 E4                 7549 	.byte	-28
   4349 FF                 7550 	.byte	-1
   434A F2                 7551 	.byte	-14
   434B 04                 7552 	.byte	4
   434C 01                 7553 	.byte	1
                           7554 	.globl _width2RollingBack6
   434D                    7555 _width2RollingBack6:
   434D 00                 7556 	.byte	0
   434E 0C                 7557 	.byte	12
   434F FF                 7558 	.byte	-1
   4350 FF                 7559 	.byte	-1
   4351 06                 7560 	.byte	6
   4352 1B                 7561 	.byte	27
   4353 FF                 7562 	.byte	-1
   4354 FC                 7563 	.byte	-4
   4355 FC                 7564 	.byte	-4
   4356 FF                 7565 	.byte	-1
   4357 FA                 7566 	.byte	-6
   4358 E5                 7567 	.byte	-27
   4359 FF                 7568 	.byte	-1
   435A 04                 7569 	.byte	4
   435B 04                 7570 	.byte	4
   435C FF                 7571 	.byte	-1
   435D 0E                 7572 	.byte	14
   435E FC                 7573 	.byte	-4
   435F 00                 7574 	.byte	0
   4360 F8                 7575 	.byte	-8
   4361 1F                 7576 	.byte	31
   4362 FF                 7577 	.byte	-1
   4363 0E                 7578 	.byte	14
   4364 FC                 7579 	.byte	-4
   4365 00                 7580 	.byte	0
   4366 EE                 7581 	.byte	-18
   4367 00                 7582 	.byte	0
   4368 FF                 7583 	.byte	-1
   4369 0F                 7584 	.byte	15
   436A FC                 7585 	.byte	-4
   436B 00                 7586 	.byte	0
   436C EB                 7587 	.byte	-21
   436D E9                 7588 	.byte	-23
   436E FF                 7589 	.byte	-1
   436F 0F                 7590 	.byte	15
   4370 FC                 7591 	.byte	-4
   4371 00                 7592 	.byte	0
   4372 03                 7593 	.byte	3
   4373 04                 7594 	.byte	4
   4374 FF                 7595 	.byte	-1
   4375 06                 7596 	.byte	6
   4376 1B                 7597 	.byte	27
   4377 FF                 7598 	.byte	-1
   4378 FD                 7599 	.byte	-3
   4379 FC                 7600 	.byte	-4
   437A FF                 7601 	.byte	-1
   437B FA                 7602 	.byte	-6
   437C E5                 7603 	.byte	-27
   437D FF                 7604 	.byte	-1
   437E 03                 7605 	.byte	3
   437F 04                 7606 	.byte	4
   4380 01                 7607 	.byte	1
                           7608 	.globl _height2FallingLeft7
   4381                    7609 _height2FallingLeft7:
   4381 FF                 7610 	.byte	-1
   4382 0C                 7611 	.byte	12
   4383 09                 7612 	.byte	9
   4384 FF                 7613 	.byte	-1
   4385 08                 7614 	.byte	8
   4386 FA                 7615 	.byte	-6
   4387 FF                 7616 	.byte	-1
   4388 F4                 7617 	.byte	-12
   4389 F8                 7618 	.byte	-8
   438A FF                 7619 	.byte	-1
   438B F8                 7620 	.byte	-8
   438C 05                 7621 	.byte	5
   438D FF                 7622 	.byte	-1
   438E 0B                 7623 	.byte	11
   438F EB                 7624 	.byte	-21
   4390 00                 7625 	.byte	0
   4391 01                 7626 	.byte	1
   4392 1E                 7627 	.byte	30
   4393 FF                 7628 	.byte	-1
   4394 0B                 7629 	.byte	11
   4395 EA                 7630 	.byte	-22
   4396 00                 7631 	.byte	0
   4397 FD                 7632 	.byte	-3
   4398 10                 7633 	.byte	16
   4399 FF                 7634 	.byte	-1
   439A 0B                 7635 	.byte	11
   439B EA                 7636 	.byte	-22
   439C 00                 7637 	.byte	0
   439D E9                 7638 	.byte	-23
   439E 0E                 7639 	.byte	14
   439F FF                 7640 	.byte	-1
   43A0 0B                 7641 	.byte	11
   43A1 EA                 7642 	.byte	-22
   43A2 00                 7643 	.byte	0
   43A3 F8                 7644 	.byte	-8
   43A4 06                 7645 	.byte	6
   43A5 FF                 7646 	.byte	-1
   43A6 0C                 7647 	.byte	12
   43A7 08                 7648 	.byte	8
   43A8 FF                 7649 	.byte	-1
   43A9 08                 7650 	.byte	8
   43AA FA                 7651 	.byte	-6
   43AB FF                 7652 	.byte	-1
   43AC F4                 7653 	.byte	-12
   43AD F8                 7654 	.byte	-8
   43AE FF                 7655 	.byte	-1
   43AF F8                 7656 	.byte	-8
   43B0 06                 7657 	.byte	6
   43B1 01                 7658 	.byte	1
                           7659 	.globl _height2RisingRight7
   43B2                    7660 _height2RisingRight7:
   43B2 00                 7661 	.byte	0
   43B3 06                 7662 	.byte	6
   43B4 1C                 7663 	.byte	28
   43B5 FF                 7664 	.byte	-1
   43B6 09                 7665 	.byte	9
   43B7 0C                 7666 	.byte	12
   43B8 FF                 7667 	.byte	-1
   43B9 08                 7668 	.byte	8
   43BA FA                 7669 	.byte	-6
   43BB FF                 7670 	.byte	-1
   43BC F7                 7671 	.byte	-9
   43BD F4                 7672 	.byte	-12
   43BE FF                 7673 	.byte	-1
   43BF F8                 7674 	.byte	-8
   43C0 06                 7675 	.byte	6
   43C1 FF                 7676 	.byte	-1
   43C2 14                 7677 	.byte	20
   43C3 F2                 7678 	.byte	-14
   43C4 00                 7679 	.byte	0
   43C5 F5                 7680 	.byte	-11
   43C6 1A                 7681 	.byte	26
   43C7 FF                 7682 	.byte	-1
   43C8 14                 7683 	.byte	20
   43C9 F2                 7684 	.byte	-14
   43CA 00                 7685 	.byte	0
   43CB F4                 7686 	.byte	-12
   43CC 08                 7687 	.byte	8
   43CD FF                 7688 	.byte	-1
   43CE 14                 7689 	.byte	20
   43CF F2                 7690 	.byte	-14
   43D0 00                 7691 	.byte	0
   43D1 E3                 7692 	.byte	-29
   43D2 02                 7693 	.byte	2
   43D3 FF                 7694 	.byte	-1
   43D4 14                 7695 	.byte	20
   43D5 F2                 7696 	.byte	-14
   43D6 00                 7697 	.byte	0
   43D7 F8                 7698 	.byte	-8
   43D8 06                 7699 	.byte	6
   43D9 FF                 7700 	.byte	-1
   43DA 09                 7701 	.byte	9
   43DB 0C                 7702 	.byte	12
   43DC FF                 7703 	.byte	-1
   43DD 08                 7704 	.byte	8
   43DE FA                 7705 	.byte	-6
   43DF FF                 7706 	.byte	-1
   43E0 F7                 7707 	.byte	-9
   43E1 F4                 7708 	.byte	-12
   43E2 FF                 7709 	.byte	-1
   43E3 F8                 7710 	.byte	-8
   43E4 06                 7711 	.byte	6
   43E5 01                 7712 	.byte	1
                           7713 	.globl _height2FallingRight7
   43E6                    7714 _height2FallingRight7:
   43E6 00                 7715 	.byte	0
   43E7 0B                 7716 	.byte	11
   43E8 05                 7717 	.byte	5
   43E9 FF                 7718 	.byte	-1
   43EA F8                 7719 	.byte	-8
   43EB 09                 7720 	.byte	9
   43EC FF                 7721 	.byte	-1
   43ED 08                 7722 	.byte	8
   43EE FA                 7723 	.byte	-6
   43EF FF                 7724 	.byte	-1
   43F0 08                 7725 	.byte	8
   43F1 F8                 7726 	.byte	-8
   43F2 FF                 7727 	.byte	-1
   43F3 F8                 7728 	.byte	-8
   43F4 05                 7729 	.byte	5
   43F5 FF                 7730 	.byte	-1
   43F6 15                 7731 	.byte	21
   43F7 17                 7732 	.byte	23
   43F8 00                 7733 	.byte	0
   43F9 E3                 7734 	.byte	-29
   43FA F2                 7735 	.byte	-14
   43FB FF                 7736 	.byte	-1
   43FC 15                 7737 	.byte	21
   43FD 16                 7738 	.byte	22
   43FE 00                 7739 	.byte	0
   43FF F3                 7740 	.byte	-13
   4400 E4                 7741 	.byte	-28
   4401 FF                 7742 	.byte	-1
   4402 15                 7743 	.byte	21
   4403 16                 7744 	.byte	22
   4404 00                 7745 	.byte	0
   4405 F3                 7746 	.byte	-13
   4406 E2                 7747 	.byte	-30
   4407 FF                 7748 	.byte	-1
   4408 15                 7749 	.byte	21
   4409 16                 7750 	.byte	22
   440A 00                 7751 	.byte	0
   440B F8                 7752 	.byte	-8
   440C 06                 7753 	.byte	6
   440D FF                 7754 	.byte	-1
   440E F8                 7755 	.byte	-8
   440F 08                 7756 	.byte	8
   4410 FF                 7757 	.byte	-1
   4411 08                 7758 	.byte	8
   4412 FA                 7759 	.byte	-6
   4413 FF                 7760 	.byte	-1
   4414 08                 7761 	.byte	8
   4415 F8                 7762 	.byte	-8
   4416 FF                 7763 	.byte	-1
   4417 F8                 7764 	.byte	-8
   4418 06                 7765 	.byte	6
   4419 01                 7766 	.byte	1
                           7767 	.globl _height2RisingLeft7
   441A                    7768 _height2RisingLeft7:
   441A 00                 7769 	.byte	0
   441B 04                 7770 	.byte	4
   441C F5                 7771 	.byte	-11
   441D FF                 7772 	.byte	-1
   441E FC                 7773 	.byte	-4
   441F 0B                 7774 	.byte	11
   4420 FF                 7775 	.byte	-1
   4421 08                 7776 	.byte	8
   4422 FB                 7777 	.byte	-5
   4423 FF                 7778 	.byte	-1
   4424 04                 7779 	.byte	4
   4425 F4                 7780 	.byte	-12
   4426 FF                 7781 	.byte	-1
   4427 F8                 7782 	.byte	-8
   4428 06                 7783 	.byte	6
   4429 FF                 7784 	.byte	-1
   442A 19                 7785 	.byte	25
   442B 0D                 7786 	.byte	13
   442C 00                 7787 	.byte	0
   442D E3                 7788 	.byte	-29
   442E FE                 7789 	.byte	-2
   442F FF                 7790 	.byte	-1
   4430 1A                 7791 	.byte	26
   4431 0E                 7792 	.byte	14
   4432 00                 7793 	.byte	0
   4433 EE                 7794 	.byte	-18
   4434 ED                 7795 	.byte	-19
   4435 FF                 7796 	.byte	-1
   4436 1A                 7797 	.byte	26
   4437 0D                 7798 	.byte	13
   4438 00                 7799 	.byte	0
   4439 EA                 7800 	.byte	-22
   443A E7                 7801 	.byte	-25
   443B FF                 7802 	.byte	-1
   443C 19                 7803 	.byte	25
   443D 0E                 7804 	.byte	14
   443E 00                 7805 	.byte	0
   443F F8                 7806 	.byte	-8
   4440 05                 7807 	.byte	5
   4441 FF                 7808 	.byte	-1
   4442 FD                 7809 	.byte	-3
   4443 0C                 7810 	.byte	12
   4444 FF                 7811 	.byte	-1
   4445 08                 7812 	.byte	8
   4446 FA                 7813 	.byte	-6
   4447 FF                 7814 	.byte	-1
   4448 03                 7815 	.byte	3
   4449 F5                 7816 	.byte	-11
   444A FF                 7817 	.byte	-1
   444B F8                 7818 	.byte	-8
   444C 05                 7819 	.byte	5
   444D 01                 7820 	.byte	1
                           7821 	.globl _height2FallingBack7
   444E                    7822 _height2FallingBack7:
   444E 00                 7823 	.byte	0
   444F 0D                 7824 	.byte	13
   4450 FF                 7825 	.byte	-1
   4451 FF                 7826 	.byte	-1
   4452 03                 7827 	.byte	3
   4453 0D                 7828 	.byte	13
   4454 FF                 7829 	.byte	-1
   4455 FB                 7830 	.byte	-5
   4456 FC                 7831 	.byte	-4
   4457 FF                 7832 	.byte	-1
   4458 FD                 7833 	.byte	-3
   4459 F3                 7834 	.byte	-13
   445A FF                 7835 	.byte	-1
   445B 05                 7836 	.byte	5
   445C 04                 7837 	.byte	4
   445D FF                 7838 	.byte	-1
   445E 1D                 7839 	.byte	29
   445F F6                 7840 	.byte	-10
   4460 00                 7841 	.byte	0
   4461 E6                 7842 	.byte	-26
   4462 17                 7843 	.byte	23
   4463 FF                 7844 	.byte	-1
   4464 1D                 7845 	.byte	29
   4465 F6                 7846 	.byte	-10
   4466 00                 7847 	.byte	0
   4467 DE                 7848 	.byte	-34
   4468 06                 7849 	.byte	6
   4469 FF                 7850 	.byte	-1
   446A 1D                 7851 	.byte	29
   446B F7                 7852 	.byte	-9
   446C 00                 7853 	.byte	0
   446D E0                 7854 	.byte	-32
   446E FC                 7855 	.byte	-4
   446F FF                 7856 	.byte	-1
   4470 1D                 7857 	.byte	29
   4471 F6                 7858 	.byte	-10
   4472 00                 7859 	.byte	0
   4473 05                 7860 	.byte	5
   4474 04                 7861 	.byte	4
   4475 FF                 7862 	.byte	-1
   4476 03                 7863 	.byte	3
   4477 0D                 7864 	.byte	13
   4478 FF                 7865 	.byte	-1
   4479 FB                 7866 	.byte	-5
   447A FD                 7867 	.byte	-3
   447B FF                 7868 	.byte	-1
   447C FD                 7869 	.byte	-3
   447D F2                 7870 	.byte	-14
   447E FF                 7871 	.byte	-1
   447F 05                 7872 	.byte	5
   4480 04                 7873 	.byte	4
   4481 01                 7874 	.byte	1
                           7875 	.globl _height2RisingFront7
   4482                    7876 _height2RisingFront7:
   4482 00                 7877 	.byte	0
   4483 00                 7878 	.byte	0
   4484 05                 7879 	.byte	5
   4485 FF                 7880 	.byte	-1
   4486 03                 7881 	.byte	3
   4487 0E                 7882 	.byte	14
   4488 FF                 7883 	.byte	-1
   4489 00                 7884 	.byte	0
   448A FB                 7885 	.byte	-5
   448B FF                 7886 	.byte	-1
   448C FD                 7887 	.byte	-3
   448D F2                 7888 	.byte	-14
   448E FF                 7889 	.byte	-1
   448F 00                 7890 	.byte	0
   4490 05                 7891 	.byte	5
   4491 FF                 7892 	.byte	-1
   4492 1E                 7893 	.byte	30
   4493 FB                 7894 	.byte	-5
   4494 00                 7895 	.byte	0
   4495 E5                 7896 	.byte	-27
   4496 13                 7897 	.byte	19
   4497 FF                 7898 	.byte	-1
   4498 1E                 7899 	.byte	30
   4499 FA                 7900 	.byte	-6
   449A 00                 7901 	.byte	0
   449B E2                 7902 	.byte	-30
   449C 01                 7903 	.byte	1
   449D FF                 7904 	.byte	-1
   449E 1F                 7905 	.byte	31
   449F FA                 7906 	.byte	-6
   44A0 00                 7907 	.byte	0
   44A1 DE                 7908 	.byte	-34
   44A2 F8                 7909 	.byte	-8
   44A3 FF                 7910 	.byte	-1
   44A4 1F                 7911 	.byte	31
   44A5 FB                 7912 	.byte	-5
   44A6 00                 7913 	.byte	0
   44A7 FF                 7914 	.byte	-1
   44A8 05                 7915 	.byte	5
   44A9 FF                 7916 	.byte	-1
   44AA 03                 7917 	.byte	3
   44AB 0D                 7918 	.byte	13
   44AC FF                 7919 	.byte	-1
   44AD 01                 7920 	.byte	1
   44AE FB                 7921 	.byte	-5
   44AF FF                 7922 	.byte	-1
   44B0 FD                 7923 	.byte	-3
   44B1 F3                 7924 	.byte	-13
   44B2 FF                 7925 	.byte	-1
   44B3 FF                 7926 	.byte	-1
   44B4 05                 7927 	.byte	5
   44B5 01                 7928 	.byte	1
                           7929 	.globl _height2FallingFront7
   44B6                    7930 _height2FallingFront7:
   44B6 FF                 7931 	.byte	-1
   44B7 03                 7932 	.byte	3
   44B8 0E                 7933 	.byte	14
   44B9 FF                 7934 	.byte	-1
   44BA 0F                 7935 	.byte	15
   44BB FC                 7936 	.byte	-4
   44BC FF                 7937 	.byte	-1
   44BD FD                 7938 	.byte	-3
   44BE F3                 7939 	.byte	-13
   44BF FF                 7940 	.byte	-1
   44C0 F1                 7941 	.byte	-15
   44C1 03                 7942 	.byte	3
   44C2 FF                 7943 	.byte	-1
   44C3 03                 7944 	.byte	3
   44C4 0A                 7945 	.byte	10
   44C5 00                 7946 	.byte	0
   44C6 00                 7947 	.byte	0
   44C7 04                 7948 	.byte	4
   44C8 FF                 7949 	.byte	-1
   44C9 03                 7950 	.byte	3
   44CA 0A                 7951 	.byte	10
   44CB 00                 7952 	.byte	0
   44CC 0C                 7953 	.byte	12
   44CD F2                 7954 	.byte	-14
   44CE FF                 7955 	.byte	-1
   44CF 03                 7956 	.byte	3
   44D0 0A                 7957 	.byte	10
   44D1 00                 7958 	.byte	0
   44D2 FA                 7959 	.byte	-6
   44D3 E9                 7960 	.byte	-23
   44D4 FF                 7961 	.byte	-1
   44D5 03                 7962 	.byte	3
   44D6 09                 7963 	.byte	9
   44D7 00                 7964 	.byte	0
   44D8 F1                 7965 	.byte	-15
   44D9 04                 7966 	.byte	4
   44DA FF                 7967 	.byte	-1
   44DB 03                 7968 	.byte	3
   44DC 0E                 7969 	.byte	14
   44DD FF                 7970 	.byte	-1
   44DE 0F                 7971 	.byte	15
   44DF FC                 7972 	.byte	-4
   44E0 FF                 7973 	.byte	-1
   44E1 FD                 7974 	.byte	-3
   44E2 F2                 7975 	.byte	-14
   44E3 FF                 7976 	.byte	-1
   44E4 F1                 7977 	.byte	-15
   44E5 04                 7978 	.byte	4
   44E6 01                 7979 	.byte	1
                           7980 	.globl _height2RisingBack7
   44E7                    7981 _height2RisingBack7:
   44E7 00                 7982 	.byte	0
   44E8 10                 7983 	.byte	16
   44E9 F5                 7984 	.byte	-11
   44EA FF                 7985 	.byte	-1
   44EB 03                 7986 	.byte	3
   44EC 0D                 7987 	.byte	13
   44ED FF                 7988 	.byte	-1
   44EE 0D                 7989 	.byte	13
   44EF FC                 7990 	.byte	-4
   44F0 FF                 7991 	.byte	-1
   44F1 FD                 7992 	.byte	-3
   44F2 F2                 7993 	.byte	-14
   44F3 FF                 7994 	.byte	-1
   44F4 F3                 7995 	.byte	-13
   44F5 05                 7996 	.byte	5
   44F6 FF                 7997 	.byte	-1
   44F7 0F                 7998 	.byte	15
   44F8 06                 7999 	.byte	6
   44F9 00                 8000 	.byte	0
   44FA F4                 8001 	.byte	-12
   44FB 07                 8002 	.byte	7
   44FC FF                 8003 	.byte	-1
   44FD 0F                 8004 	.byte	15
   44FE 06                 8005 	.byte	6
   44FF 00                 8006 	.byte	0
   4500 FE                 8007 	.byte	-2
   4501 F6                 8008 	.byte	-10
   4502 FF                 8009 	.byte	-1
   4503 0F                 8010 	.byte	15
   4504 05                 8011 	.byte	5
   4505 00                 8012 	.byte	0
   4506 EE                 8013 	.byte	-18
   4507 ED                 8014 	.byte	-19
   4508 FF                 8015 	.byte	-1
   4509 0F                 8016 	.byte	15
   450A 06                 8017 	.byte	6
   450B 00                 8018 	.byte	0
   450C F3                 8019 	.byte	-13
   450D 05                 8020 	.byte	5
   450E FF                 8021 	.byte	-1
   450F 03                 8022 	.byte	3
   4510 0D                 8023 	.byte	13
   4511 FF                 8024 	.byte	-1
   4512 0D                 8025 	.byte	13
   4513 FB                 8026 	.byte	-5
   4514 FF                 8027 	.byte	-1
   4515 FD                 8028 	.byte	-3
   4516 F3                 8029 	.byte	-13
   4517 FF                 8030 	.byte	-1
   4518 F3                 8031 	.byte	-13
   4519 05                 8032 	.byte	5
   451A 01                 8033 	.byte	1
                           8034 	.globl _depth2RollingLeft7
   451B                    8035 _depth2RollingLeft7:
   451B FF                 8036 	.byte	-1
   451C 0C                 8037 	.byte	12
   451D 09                 8038 	.byte	9
   451E FF                 8039 	.byte	-1
   451F 10                 8040 	.byte	16
   4520 F5                 8041 	.byte	-11
   4521 FF                 8042 	.byte	-1
   4522 F4                 8043 	.byte	-12
   4523 F7                 8044 	.byte	-9
   4524 FF                 8045 	.byte	-1
   4525 F0                 8046 	.byte	-16
   4526 0B                 8047 	.byte	11
   4527 FF                 8048 	.byte	-1
   4528 06                 8049 	.byte	6
   4529 F6                 8050 	.byte	-10
   452A 00                 8051 	.byte	0
   452B 06                 8052 	.byte	6
   452C 13                 8053 	.byte	19
   452D FF                 8054 	.byte	-1
   452E 06                 8055 	.byte	6
   452F F5                 8056 	.byte	-11
   4530 00                 8057 	.byte	0
   4531 0A                 8058 	.byte	10
   4532 00                 8059 	.byte	0
   4533 FF                 8060 	.byte	-1
   4534 06                 8061 	.byte	6
   4535 F4                 8062 	.byte	-12
   4536 00                 8063 	.byte	0
   4537 EE                 8064 	.byte	-18
   4538 03                 8065 	.byte	3
   4539 FF                 8066 	.byte	-1
   453A 06                 8067 	.byte	6
   453B F5                 8068 	.byte	-11
   453C 00                 8069 	.byte	0
   453D F0                 8070 	.byte	-16
   453E 0C                 8071 	.byte	12
   453F FF                 8072 	.byte	-1
   4540 0C                 8073 	.byte	12
   4541 08                 8074 	.byte	8
   4542 FF                 8075 	.byte	-1
   4543 10                 8076 	.byte	16
   4544 F4                 8077 	.byte	-12
   4545 FF                 8078 	.byte	-1
   4546 F4                 8079 	.byte	-12
   4547 F8                 8080 	.byte	-8
   4548 FF                 8081 	.byte	-1
   4549 F0                 8082 	.byte	-16
   454A 0C                 8083 	.byte	12
   454B 01                 8084 	.byte	1
                           8085 	.globl _depth2RollingRight7
   454C                    8086 _depth2RollingRight7:
   454C 00                 8087 	.byte	0
   454D 0B                 8088 	.byte	11
   454E 05                 8089 	.byte	5
   454F FF                 8090 	.byte	-1
   4550 F8                 8091 	.byte	-8
   4551 09                 8092 	.byte	9
   4552 FF                 8093 	.byte	-1
   4553 10                 8094 	.byte	16
   4554 F4                 8095 	.byte	-12
   4555 FF                 8096 	.byte	-1
   4556 08                 8097 	.byte	8
   4557 F8                 8098 	.byte	-8
   4558 FF                 8099 	.byte	-1
   4559 F0                 8100 	.byte	-16
   455A 0B                 8101 	.byte	11
   455B FF                 8102 	.byte	-1
   455C 0B                 8103 	.byte	11
   455D 0C                 8104 	.byte	12
   455E 00                 8105 	.byte	0
   455F ED                 8106 	.byte	-19
   4560 FD                 8107 	.byte	-3
   4561 FF                 8108 	.byte	-1
   4562 0A                 8109 	.byte	10
   4563 0B                 8110 	.byte	11
   4564 00                 8111 	.byte	0
   4565 06                 8112 	.byte	6
   4566 E9                 8113 	.byte	-23
   4567 FF                 8114 	.byte	-1
   4568 0A                 8115 	.byte	10
   4569 0B                 8116 	.byte	11
   456A 00                 8117 	.byte	0
   456B FE                 8118 	.byte	-2
   456C ED                 8119 	.byte	-19
   456D FF                 8120 	.byte	-1
   456E 0B                 8121 	.byte	11
   456F 0B                 8122 	.byte	11
   4570 00                 8123 	.byte	0
   4571 F0                 8124 	.byte	-16
   4572 0C                 8125 	.byte	12
   4573 FF                 8126 	.byte	-1
   4574 F7                 8127 	.byte	-9
   4575 08                 8128 	.byte	8
   4576 FF                 8129 	.byte	-1
   4577 10                 8130 	.byte	16
   4578 F4                 8131 	.byte	-12
   4579 FF                 8132 	.byte	-1
   457A 09                 8133 	.byte	9
   457B F8                 8134 	.byte	-8
   457C FF                 8135 	.byte	-1
   457D F0                 8136 	.byte	-16
   457E 0C                 8137 	.byte	12
   457F 01                 8138 	.byte	1
                           8139 	.globl _width2RollingFront7
   4580                    8140 _width2RollingFront7:
   4580 FF                 8141 	.byte	-1
   4581 06                 8142 	.byte	6
   4582 1C                 8143 	.byte	28
   4583 FF                 8144 	.byte	-1
   4584 0F                 8145 	.byte	15
   4585 FC                 8146 	.byte	-4
   4586 FF                 8147 	.byte	-1
   4587 FA                 8148 	.byte	-6
   4588 E5                 8149 	.byte	-27
   4589 FF                 8150 	.byte	-1
   458A F1                 8151 	.byte	-15
   458B 03                 8152 	.byte	3
   458C FF                 8153 	.byte	-1
   458D 02                 8154 	.byte	2
   458E 05                 8155 	.byte	5
   458F 00                 8156 	.byte	0
   4590 04                 8157 	.byte	4
   4591 17                 8158 	.byte	23
   4592 FF                 8159 	.byte	-1
   4593 02                 8160 	.byte	2
   4594 05                 8161 	.byte	5
   4595 00                 8162 	.byte	0
   4596 0D                 8163 	.byte	13
   4597 F7                 8164 	.byte	-9
   4598 FF                 8165 	.byte	-1
   4599 02                 8166 	.byte	2
   459A 05                 8167 	.byte	5
   459B 00                 8168 	.byte	0
   459C F8                 8169 	.byte	-8
   459D E0                 8170 	.byte	-32
   459E FF                 8171 	.byte	-1
   459F 02                 8172 	.byte	2
   45A0 04                 8173 	.byte	4
   45A1 00                 8174 	.byte	0
   45A2 F1                 8175 	.byte	-15
   45A3 04                 8176 	.byte	4
   45A4 FF                 8177 	.byte	-1
   45A5 06                 8178 	.byte	6
   45A6 1C                 8179 	.byte	28
   45A7 FF                 8180 	.byte	-1
   45A8 0F                 8181 	.byte	15
   45A9 FC                 8182 	.byte	-4
   45AA FF                 8183 	.byte	-1
   45AB FA                 8184 	.byte	-6
   45AC E4                 8185 	.byte	-28
   45AD FF                 8186 	.byte	-1
   45AE F1                 8187 	.byte	-15
   45AF 04                 8188 	.byte	4
   45B0 01                 8189 	.byte	1
                           8190 	.globl _width2RollingBack7
   45B1                    8191 _width2RollingBack7:
   45B1 00                 8192 	.byte	0
   45B2 0D                 8193 	.byte	13
   45B3 FF                 8194 	.byte	-1
   45B4 FF                 8195 	.byte	-1
   45B5 06                 8196 	.byte	6
   45B6 1B                 8197 	.byte	27
   45B7 FF                 8198 	.byte	-1
   45B8 FB                 8199 	.byte	-5
   45B9 FC                 8200 	.byte	-4
   45BA FF                 8201 	.byte	-1
   45BB FA                 8202 	.byte	-6
   45BC E5                 8203 	.byte	-27
   45BD FF                 8204 	.byte	-1
   45BE 05                 8205 	.byte	5
   45BF 04                 8206 	.byte	4
   45C0 FF                 8207 	.byte	-1
   45C1 0F                 8208 	.byte	15
   45C2 FB                 8209 	.byte	-5
   45C3 00                 8210 	.byte	0
   45C4 F7                 8211 	.byte	-9
   45C5 20                 8212 	.byte	32
   45C6 FF                 8213 	.byte	-1
   45C7 0F                 8214 	.byte	15
   45C8 FB                 8215 	.byte	-5
   45C9 00                 8216 	.byte	0
   45CA EC                 8217 	.byte	-20
   45CB 01                 8218 	.byte	1
   45CC FF                 8219 	.byte	-1
   45CD 0E                 8220 	.byte	14
   45CE FB                 8221 	.byte	-5
   45CF 00                 8222 	.byte	0
   45D0 EC                 8223 	.byte	-20
   45D1 EA                 8224 	.byte	-22
   45D2 FF                 8225 	.byte	-1
   45D3 0E                 8226 	.byte	14
   45D4 FB                 8227 	.byte	-5
   45D5 00                 8228 	.byte	0
   45D6 06                 8229 	.byte	6
   45D7 04                 8230 	.byte	4
   45D8 FF                 8231 	.byte	-1
   45D9 06                 8232 	.byte	6
   45DA 1B                 8233 	.byte	27
   45DB FF                 8234 	.byte	-1
   45DC FA                 8235 	.byte	-6
   45DD FC                 8236 	.byte	-4
   45DE FF                 8237 	.byte	-1
   45DF FA                 8238 	.byte	-6
   45E0 E5                 8239 	.byte	-27
   45E1 FF                 8240 	.byte	-1
   45E2 06                 8241 	.byte	6
   45E3 04                 8242 	.byte	4
   45E4 01                 8243 	.byte	1
                           8244 	.globl _height2FallingLeft8
   45E5                    8245 _height2FallingLeft8:
   45E5 FF                 8246 	.byte	-1
   45E6 0D                 8247 	.byte	13
   45E7 07                 8248 	.byte	7
   45E8 FF                 8249 	.byte	-1
   45E9 08                 8250 	.byte	8
   45EA FA                 8251 	.byte	-6
   45EB FF                 8252 	.byte	-1
   45EC F3                 8253 	.byte	-13
   45ED FA                 8254 	.byte	-6
   45EE FF                 8255 	.byte	-1
   45EF F8                 8256 	.byte	-8
   45F0 05                 8257 	.byte	5
   45F1 FF                 8258 	.byte	-1
   45F2 08                 8259 	.byte	8
   45F3 E9                 8260 	.byte	-23
   45F4 00                 8261 	.byte	0
   45F5 05                 8262 	.byte	5
   45F6 1E                 8263 	.byte	30
   45F7 FF                 8264 	.byte	-1
   45F8 08                 8265 	.byte	8
   45F9 E9                 8266 	.byte	-23
   45FA 00                 8267 	.byte	0
   45FB 00                 8268 	.byte	0
   45FC 11                 8269 	.byte	17
   45FD FF                 8270 	.byte	-1
   45FE 08                 8271 	.byte	8
   45FF E9                 8272 	.byte	-23
   4600 00                 8273 	.byte	0
   4601 EB                 8274 	.byte	-21
   4602 11                 8275 	.byte	17
   4603 FF                 8276 	.byte	-1
   4604 08                 8277 	.byte	8
   4605 E8                 8278 	.byte	-24
   4606 00                 8279 	.byte	0
   4607 F8                 8280 	.byte	-8
   4608 06                 8281 	.byte	6
   4609 FF                 8282 	.byte	-1
   460A 0D                 8283 	.byte	13
   460B 07                 8284 	.byte	7
   460C FF                 8285 	.byte	-1
   460D 08                 8286 	.byte	8
   460E FA                 8287 	.byte	-6
   460F FF                 8288 	.byte	-1
   4610 F3                 8289 	.byte	-13
   4611 F9                 8290 	.byte	-7
   4612 FF                 8291 	.byte	-1
   4613 F8                 8292 	.byte	-8
   4614 06                 8293 	.byte	6
   4615 01                 8294 	.byte	1
                           8295 	.globl _height2RisingRight8
   4616                    8296 _height2RisingRight8:
   4616 00                 8297 	.byte	0
   4617 06                 8298 	.byte	6
   4618 1C                 8299 	.byte	28
   4619 FF                 8300 	.byte	-1
   461A 08                 8301 	.byte	8
   461B 0D                 8302 	.byte	13
   461C FF                 8303 	.byte	-1
   461D 08                 8304 	.byte	8
   461E FA                 8305 	.byte	-6
   461F FF                 8306 	.byte	-1
   4620 F8                 8307 	.byte	-8
   4621 F3                 8308 	.byte	-13
   4622 FF                 8309 	.byte	-1
   4623 F8                 8310 	.byte	-8
   4624 06                 8311 	.byte	6
   4625 FF                 8312 	.byte	-1
   4626 16                 8313 	.byte	22
   4627 F5                 8314 	.byte	-11
   4628 00                 8315 	.byte	0
   4629 F2                 8316 	.byte	-14
   462A 18                 8317 	.byte	24
   462B FF                 8318 	.byte	-1
   462C 15                 8319 	.byte	21
   462D F5                 8320 	.byte	-11
   462E 00                 8321 	.byte	0
   462F F3                 8322 	.byte	-13
   4630 05                 8323 	.byte	5
   4631 FF                 8324 	.byte	-1
   4632 15                 8325 	.byte	21
   4633 F5                 8326 	.byte	-11
   4634 00                 8327 	.byte	0
   4635 E3                 8328 	.byte	-29
   4636 FE                 8329 	.byte	-2
   4637 FF                 8330 	.byte	-1
   4638 16                 8331 	.byte	22
   4639 F5                 8332 	.byte	-11
   463A 00                 8333 	.byte	0
   463B F8                 8334 	.byte	-8
   463C 06                 8335 	.byte	6
   463D FF                 8336 	.byte	-1
   463E 07                 8337 	.byte	7
   463F 0D                 8338 	.byte	13
   4640 FF                 8339 	.byte	-1
   4641 08                 8340 	.byte	8
   4642 FA                 8341 	.byte	-6
   4643 FF                 8342 	.byte	-1
   4644 F9                 8343 	.byte	-7
   4645 F3                 8344 	.byte	-13
   4646 FF                 8345 	.byte	-1
   4647 F8                 8346 	.byte	-8
   4648 06                 8347 	.byte	6
   4649 01                 8348 	.byte	1
                           8349 	.globl _height2FallingRight8
   464A                    8350 _height2FallingRight8:
   464A 00                 8351 	.byte	0
   464B 0D                 8352 	.byte	13
   464C 07                 8353 	.byte	7
   464D FF                 8354 	.byte	-1
   464E F6                 8355 	.byte	-10
   464F 07                 8356 	.byte	7
   4650 FF                 8357 	.byte	-1
   4651 08                 8358 	.byte	8
   4652 FA                 8359 	.byte	-6
   4653 FF                 8360 	.byte	-1
   4654 0A                 8361 	.byte	10
   4655 F9                 8362 	.byte	-7
   4656 FF                 8363 	.byte	-1
   4657 F8                 8364 	.byte	-8
   4658 06                 8365 	.byte	6
   4659 FF                 8366 	.byte	-1
   465A 12                 8367 	.byte	18
   465B 18                 8368 	.byte	24
   465C 00                 8369 	.byte	0
   465D E4                 8370 	.byte	-28
   465E EF                 8371 	.byte	-17
   465F FF                 8372 	.byte	-1
   4660 12                 8373 	.byte	18
   4661 18                 8374 	.byte	24
   4662 00                 8375 	.byte	0
   4663 F6                 8376 	.byte	-10
   4664 E2                 8377 	.byte	-30
   4665 FF                 8378 	.byte	-1
   4666 12                 8379 	.byte	18
   4667 18                 8380 	.byte	24
   4668 00                 8381 	.byte	0
   4669 F8                 8382 	.byte	-8
   466A E1                 8383 	.byte	-31
   466B FF                 8384 	.byte	-1
   466C 12                 8385 	.byte	18
   466D 18                 8386 	.byte	24
   466E 00                 8387 	.byte	0
   466F F8                 8388 	.byte	-8
   4670 06                 8389 	.byte	6
   4671 FF                 8390 	.byte	-1
   4672 F6                 8391 	.byte	-10
   4673 07                 8392 	.byte	7
   4674 FF                 8393 	.byte	-1
   4675 08                 8394 	.byte	8
   4676 FA                 8395 	.byte	-6
   4677 FF                 8396 	.byte	-1
   4678 0A                 8397 	.byte	10
   4679 F9                 8398 	.byte	-7
   467A FF                 8399 	.byte	-1
   467B F8                 8400 	.byte	-8
   467C 06                 8401 	.byte	6
   467D 01                 8402 	.byte	1
                           8403 	.globl _height2RisingLeft8
   467E                    8404 _height2RisingLeft8:
   467E 00                 8405 	.byte	0
   467F 02                 8406 	.byte	2
   4680 F4                 8407 	.byte	-12
   4681 FF                 8408 	.byte	-1
   4682 FE                 8409 	.byte	-2
   4683 0C                 8410 	.byte	12
   4684 FF                 8411 	.byte	-1
   4685 08                 8412 	.byte	8
   4686 FB                 8413 	.byte	-5
   4687 FF                 8414 	.byte	-1
   4688 02                 8415 	.byte	2
   4689 F3                 8416 	.byte	-13
   468A FF                 8417 	.byte	-1
   468B F8                 8418 	.byte	-8
   468C 06                 8419 	.byte	6
   468D FF                 8420 	.byte	-1
   468E 1B                 8421 	.byte	27
   468F 0B                 8422 	.byte	11
   4690 00                 8423 	.byte	0
   4691 E3                 8424 	.byte	-29
   4692 01                 8425 	.byte	1
   4693 FF                 8426 	.byte	-1
   4694 1A                 8427 	.byte	26
   4695 0B                 8428 	.byte	11
   4696 00                 8429 	.byte	0
   4697 EE                 8430 	.byte	-18
   4698 F0                 8431 	.byte	-16
   4699 FF                 8432 	.byte	-1
   469A 1A                 8433 	.byte	26
   469B 0A                 8434 	.byte	10
   469C 00                 8435 	.byte	0
   469D E8                 8436 	.byte	-24
   469E E9                 8437 	.byte	-23
   469F FF                 8438 	.byte	-1
   46A0 1B                 8439 	.byte	27
   46A1 0B                 8440 	.byte	11
   46A2 00                 8441 	.byte	0
   46A3 F8                 8442 	.byte	-8
   46A4 06                 8443 	.byte	6
   46A5 FF                 8444 	.byte	-1
   46A6 FD                 8445 	.byte	-3
   46A7 0C                 8446 	.byte	12
   46A8 FF                 8447 	.byte	-1
   46A9 08                 8448 	.byte	8
   46AA FA                 8449 	.byte	-6
   46AB FF                 8450 	.byte	-1
   46AC 03                 8451 	.byte	3
   46AD F4                 8452 	.byte	-12
   46AE FF                 8453 	.byte	-1
   46AF F8                 8454 	.byte	-8
   46B0 06                 8455 	.byte	6
   46B1 01                 8456 	.byte	1
                           8457 	.globl _height2FallingBack8
   46B2                    8458 _height2FallingBack8:
   46B2 00                 8459 	.byte	0
   46B3 0F                 8460 	.byte	15
   46B4 FE                 8461 	.byte	-2
   46B5 FF                 8462 	.byte	-1
   46B6 03                 8463 	.byte	3
   46B7 0D                 8464 	.byte	13
   46B8 FF                 8465 	.byte	-1
   46B9 F9                 8466 	.byte	-7
   46BA FD                 8467 	.byte	-3
   46BB FF                 8468 	.byte	-1
   46BC FD                 8469 	.byte	-3
   46BD F3                 8470 	.byte	-13
   46BE FF                 8471 	.byte	-1
   46BF 07                 8472 	.byte	7
   46C0 03                 8473 	.byte	3
   46C1 FF                 8474 	.byte	-1
   46C2 1B                 8475 	.byte	27
   46C3 F6                 8476 	.byte	-10
   46C4 00                 8477 	.byte	0
   46C5 E8                 8478 	.byte	-24
   46C6 17                 8479 	.byte	23
   46C7 FF                 8480 	.byte	-1
   46C8 1B                 8481 	.byte	27
   46C9 F6                 8482 	.byte	-10
   46CA 00                 8483 	.byte	0
   46CB DE                 8484 	.byte	-34
   46CC 07                 8485 	.byte	7
   46CD FF                 8486 	.byte	-1
   46CE 1B                 8487 	.byte	27
   46CF F7                 8488 	.byte	-9
   46D0 00                 8489 	.byte	0
   46D1 E2                 8490 	.byte	-30
   46D2 FC                 8491 	.byte	-4
   46D3 FF                 8492 	.byte	-1
   46D4 1B                 8493 	.byte	27
   46D5 F6                 8494 	.byte	-10
   46D6 00                 8495 	.byte	0
   46D7 07                 8496 	.byte	7
   46D8 03                 8497 	.byte	3
   46D9 FF                 8498 	.byte	-1
   46DA 03                 8499 	.byte	3
   46DB 0D                 8500 	.byte	13
   46DC FF                 8501 	.byte	-1
   46DD F9                 8502 	.byte	-7
   46DE FE                 8503 	.byte	-2
   46DF FF                 8504 	.byte	-1
   46E0 FD                 8505 	.byte	-3
   46E1 F2                 8506 	.byte	-14
   46E2 FF                 8507 	.byte	-1
   46E3 07                 8508 	.byte	7
   46E4 03                 8509 	.byte	3
   46E5 01                 8510 	.byte	1
                           8511 	.globl _height2RisingFront8
   46E6                    8512 _height2RisingFront8:
   46E6 00                 8513 	.byte	0
   46E7 FF                 8514 	.byte	-1
   46E8 06                 8515 	.byte	6
   46E9 FF                 8516 	.byte	-1
   46EA 02                 8517 	.byte	2
   46EB 0E                 8518 	.byte	14
   46EC FF                 8519 	.byte	-1
   46ED 02                 8520 	.byte	2
   46EE FA                 8521 	.byte	-6
   46EF FF                 8522 	.byte	-1
   46F0 FD                 8523 	.byte	-3
   46F1 F2                 8524 	.byte	-14
   46F2 FF                 8525 	.byte	-1
   46F3 FF                 8526 	.byte	-1
   46F4 06                 8527 	.byte	6
   46F5 FF                 8528 	.byte	-1
   46F6 1D                 8529 	.byte	29
   46F7 FB                 8530 	.byte	-5
   46F8 00                 8531 	.byte	0
   46F9 E5                 8532 	.byte	-27
   46FA 13                 8533 	.byte	19
   46FB FF                 8534 	.byte	-1
   46FC 1E                 8535 	.byte	30
   46FD FB                 8536 	.byte	-5
   46FE 00                 8537 	.byte	0
   46FF E4                 8538 	.byte	-28
   4700 FF                 8539 	.byte	-1
   4701 FF                 8540 	.byte	-1
   4702 1E                 8541 	.byte	30
   4703 FB                 8542 	.byte	-5
   4704 00                 8543 	.byte	0
   4705 DF                 8544 	.byte	-33
   4706 F7                 8545 	.byte	-9
   4707 FF                 8546 	.byte	-1
   4708 1E                 8547 	.byte	30
   4709 FC                 8548 	.byte	-4
   470A 00                 8549 	.byte	0
   470B FE                 8550 	.byte	-2
   470C 05                 8551 	.byte	5
   470D FF                 8552 	.byte	-1
   470E 03                 8553 	.byte	3
   470F 0E                 8554 	.byte	14
   4710 FF                 8555 	.byte	-1
   4711 02                 8556 	.byte	2
   4712 FA                 8557 	.byte	-6
   4713 FF                 8558 	.byte	-1
   4714 FD                 8559 	.byte	-3
   4715 F3                 8560 	.byte	-13
   4716 FF                 8561 	.byte	-1
   4717 FE                 8562 	.byte	-2
   4718 05                 8563 	.byte	5
   4719 01                 8564 	.byte	1
                           8565 	.globl _height2FallingFront8
   471A                    8566 _height2FallingFront8:
   471A FF                 8567 	.byte	-1
   471B 03                 8568 	.byte	3
   471C 0E                 8569 	.byte	14
   471D FF                 8570 	.byte	-1
   471E 0F                 8571 	.byte	15
   471F FD                 8572 	.byte	-3
   4720 FF                 8573 	.byte	-1
   4721 FD                 8574 	.byte	-3
   4722 F3                 8575 	.byte	-13
   4723 FF                 8576 	.byte	-1
   4724 F1                 8577 	.byte	-15
   4725 02                 8578 	.byte	2
   4726 FF                 8579 	.byte	-1
   4727 00                 8580 	.byte	0
   4728 0A                 8581 	.byte	10
   4729 00                 8582 	.byte	0
   472A 03                 8583 	.byte	3
   472B 04                 8584 	.byte	4
   472C FF                 8585 	.byte	-1
   472D FF                 8586 	.byte	-1
   472E 0A                 8587 	.byte	10
   472F 00                 8588 	.byte	0
   4730 10                 8589 	.byte	16
   4731 F3                 8590 	.byte	-13
   4732 FF                 8591 	.byte	-1
   4733 FF                 8592 	.byte	-1
   4734 0A                 8593 	.byte	10
   4735 00                 8594 	.byte	0
   4736 FE                 8595 	.byte	-2
   4737 E9                 8596 	.byte	-23
   4738 FF                 8597 	.byte	-1
   4739 FF                 8598 	.byte	-1
   473A 09                 8599 	.byte	9
   473B 00                 8600 	.byte	0
   473C F2                 8601 	.byte	-14
   473D 03                 8602 	.byte	3
   473E FF                 8603 	.byte	-1
   473F 02                 8604 	.byte	2
   4740 0E                 8605 	.byte	14
   4741 FF                 8606 	.byte	-1
   4742 0F                 8607 	.byte	15
   4743 FD                 8608 	.byte	-3
   4744 FF                 8609 	.byte	-1
   4745 FD                 8610 	.byte	-3
   4746 F2                 8611 	.byte	-14
   4747 FF                 8612 	.byte	-1
   4748 F2                 8613 	.byte	-14
   4749 03                 8614 	.byte	3
   474A 01                 8615 	.byte	1
                           8616 	.globl _height2RisingBack8
   474B                    8617 _height2RisingBack8:
   474B 00                 8618 	.byte	0
   474C 10                 8619 	.byte	16
   474D F5                 8620 	.byte	-11
   474E FF                 8621 	.byte	-1
   474F 03                 8622 	.byte	3
   4750 0D                 8623 	.byte	13
   4751 FF                 8624 	.byte	-1
   4752 0C                 8625 	.byte	12
   4753 FB                 8626 	.byte	-5
   4754 FF                 8627 	.byte	-1
   4755 FD                 8628 	.byte	-3
   4756 F2                 8629 	.byte	-14
   4757 FF                 8630 	.byte	-1
   4758 F4                 8631 	.byte	-12
   4759 06                 8632 	.byte	6
   475A FF                 8633 	.byte	-1
   475B 12                 8634 	.byte	18
   475C 05                 8635 	.byte	5
   475D 00                 8636 	.byte	0
   475E F1                 8637 	.byte	-15
   475F 08                 8638 	.byte	8
   4760 FF                 8639 	.byte	-1
   4761 12                 8640 	.byte	18
   4762 05                 8641 	.byte	5
   4763 00                 8642 	.byte	0
   4764 FA                 8643 	.byte	-6
   4765 F6                 8644 	.byte	-10
   4766 FF                 8645 	.byte	-1
   4767 12                 8646 	.byte	18
   4768 04                 8647 	.byte	4
   4769 00                 8648 	.byte	0
   476A EB                 8649 	.byte	-21
   476B EE                 8650 	.byte	-18
   476C FF                 8651 	.byte	-1
   476D 12                 8652 	.byte	18
   476E 05                 8653 	.byte	5
   476F 00                 8654 	.byte	0
   4770 F4                 8655 	.byte	-12
   4771 06                 8656 	.byte	6
   4772 FF                 8657 	.byte	-1
   4773 03                 8658 	.byte	3
   4774 0D                 8659 	.byte	13
   4775 FF                 8660 	.byte	-1
   4776 0C                 8661 	.byte	12
   4777 FA                 8662 	.byte	-6
   4778 FF                 8663 	.byte	-1
   4779 FD                 8664 	.byte	-3
   477A F3                 8665 	.byte	-13
   477B FF                 8666 	.byte	-1
   477C F4                 8667 	.byte	-12
   477D 06                 8668 	.byte	6
   477E 01                 8669 	.byte	1
                           8670 	.globl _depth2RollingLeft8
   477F                    8671 _depth2RollingLeft8:
   477F FF                 8672 	.byte	-1
   4780 0D                 8673 	.byte	13
   4781 07                 8674 	.byte	7
   4782 FF                 8675 	.byte	-1
   4783 10                 8676 	.byte	16
   4784 F5                 8677 	.byte	-11
   4785 FF                 8678 	.byte	-1
   4786 F3                 8679 	.byte	-13
   4787 F9                 8680 	.byte	-7
   4788 FF                 8681 	.byte	-1
   4789 F0                 8682 	.byte	-16
   478A 0B                 8683 	.byte	11
   478B FF                 8684 	.byte	-1
   478C 04                 8685 	.byte	4
   478D F5                 8686 	.byte	-11
   478E 00                 8687 	.byte	0
   478F 09                 8688 	.byte	9
   4790 12                 8689 	.byte	18
   4791 FF                 8690 	.byte	-1
   4792 04                 8691 	.byte	4
   4793 F5                 8692 	.byte	-11
   4794 00                 8693 	.byte	0
   4795 0C                 8694 	.byte	12
   4796 00                 8695 	.byte	0
   4797 FF                 8696 	.byte	-1
   4798 04                 8697 	.byte	4
   4799 F4                 8698 	.byte	-12
   479A 00                 8699 	.byte	0
   479B EF                 8700 	.byte	-17
   479C 05                 8701 	.byte	5
   479D FF                 8702 	.byte	-1
   479E 04                 8703 	.byte	4
   479F F4                 8704 	.byte	-12
   47A0 00                 8705 	.byte	0
   47A1 F0                 8706 	.byte	-16
   47A2 0C                 8707 	.byte	12
   47A3 FF                 8708 	.byte	-1
   47A4 0D                 8709 	.byte	13
   47A5 07                 8710 	.byte	7
   47A6 FF                 8711 	.byte	-1
   47A7 10                 8712 	.byte	16
   47A8 F4                 8713 	.byte	-12
   47A9 FF                 8714 	.byte	-1
   47AA F3                 8715 	.byte	-13
   47AB F9                 8716 	.byte	-7
   47AC FF                 8717 	.byte	-1
   47AD F0                 8718 	.byte	-16
   47AE 0C                 8719 	.byte	12
   47AF 01                 8720 	.byte	1
                           8721 	.globl _depth2RollingRight8
   47B0                    8722 _depth2RollingRight8:
   47B0 00                 8723 	.byte	0
   47B1 0D                 8724 	.byte	13
   47B2 07                 8725 	.byte	7
   47B3 FF                 8726 	.byte	-1
   47B4 F6                 8727 	.byte	-10
   47B5 07                 8728 	.byte	7
   47B6 FF                 8729 	.byte	-1
   47B7 10                 8730 	.byte	16
   47B8 F4                 8731 	.byte	-12
   47B9 FF                 8732 	.byte	-1
   47BA 0A                 8733 	.byte	10
   47BB FA                 8734 	.byte	-6
   47BC FF                 8735 	.byte	-1
   47BD F0                 8736 	.byte	-16
   47BE 0B                 8737 	.byte	11
   47BF FF                 8738 	.byte	-1
   47C0 09                 8739 	.byte	9
   47C1 0C                 8740 	.byte	12
   47C2 00                 8741 	.byte	0
   47C3 ED                 8742 	.byte	-19
   47C4 FB                 8743 	.byte	-5
   47C5 FF                 8744 	.byte	-1
   47C6 09                 8745 	.byte	9
   47C7 0C                 8746 	.byte	12
   47C8 00                 8747 	.byte	0
   47C9 07                 8748 	.byte	7
   47CA E8                 8749 	.byte	-24
   47CB FF                 8750 	.byte	-1
   47CC 09                 8751 	.byte	9
   47CD 0C                 8752 	.byte	12
   47CE 00                 8753 	.byte	0
   47CF 01                 8754 	.byte	1
   47D0 EE                 8755 	.byte	-18
   47D1 FF                 8756 	.byte	-1
   47D2 09                 8757 	.byte	9
   47D3 0B                 8758 	.byte	11
   47D4 00                 8759 	.byte	0
   47D5 F0                 8760 	.byte	-16
   47D6 0C                 8761 	.byte	12
   47D7 FF                 8762 	.byte	-1
   47D8 F6                 8763 	.byte	-10
   47D9 07                 8764 	.byte	7
   47DA FF                 8765 	.byte	-1
   47DB 10                 8766 	.byte	16
   47DC F4                 8767 	.byte	-12
   47DD FF                 8768 	.byte	-1
   47DE 0A                 8769 	.byte	10
   47DF F9                 8770 	.byte	-7
   47E0 FF                 8771 	.byte	-1
   47E1 F0                 8772 	.byte	-16
   47E2 0C                 8773 	.byte	12
   47E3 01                 8774 	.byte	1
                           8775 	.globl _width2RollingFront8
   47E4                    8776 _width2RollingFront8:
   47E4 FF                 8777 	.byte	-1
   47E5 06                 8778 	.byte	6
   47E6 1C                 8779 	.byte	28
   47E7 FF                 8780 	.byte	-1
   47E8 0F                 8781 	.byte	15
   47E9 FD                 8782 	.byte	-3
   47EA FF                 8783 	.byte	-1
   47EB FA                 8784 	.byte	-6
   47EC E5                 8785 	.byte	-27
   47ED FF                 8786 	.byte	-1
   47EE F1                 8787 	.byte	-15
   47EF 02                 8788 	.byte	2
   47F0 FF                 8789 	.byte	-1
   47F1 00                 8790 	.byte	0
   47F2 05                 8791 	.byte	5
   47F3 00                 8792 	.byte	0
   47F4 06                 8793 	.byte	6
   47F5 17                 8794 	.byte	23
   47F6 FF                 8795 	.byte	-1
   47F7 00                 8796 	.byte	0
   47F8 05                 8797 	.byte	5
   47F9 00                 8798 	.byte	0
   47FA 0F                 8799 	.byte	15
   47FB F8                 8800 	.byte	-8
   47FC FF                 8801 	.byte	-1
   47FD 00                 8802 	.byte	0
   47FE 05                 8803 	.byte	5
   47FF 00                 8804 	.byte	0
   4800 FA                 8805 	.byte	-6
   4801 E0                 8806 	.byte	-32
   4802 FF                 8807 	.byte	-1
   4803 00                 8808 	.byte	0
   4804 04                 8809 	.byte	4
   4805 00                 8810 	.byte	0
   4806 F1                 8811 	.byte	-15
   4807 03                 8812 	.byte	3
   4808 FF                 8813 	.byte	-1
   4809 06                 8814 	.byte	6
   480A 1C                 8815 	.byte	28
   480B FF                 8816 	.byte	-1
   480C 0F                 8817 	.byte	15
   480D FD                 8818 	.byte	-3
   480E FF                 8819 	.byte	-1
   480F FA                 8820 	.byte	-6
   4810 E4                 8821 	.byte	-28
   4811 FF                 8822 	.byte	-1
   4812 F1                 8823 	.byte	-15
   4813 03                 8824 	.byte	3
   4814 01                 8825 	.byte	1
                           8826 	.globl _width2RollingBack8
   4815                    8827 _width2RollingBack8:
   4815 00                 8828 	.byte	0
   4816 0F                 8829 	.byte	15
   4817 FE                 8830 	.byte	-2
   4818 FF                 8831 	.byte	-1
   4819 06                 8832 	.byte	6
   481A 1B                 8833 	.byte	27
   481B FF                 8834 	.byte	-1
   481C F9                 8835 	.byte	-7
   481D FD                 8836 	.byte	-3
   481E FF                 8837 	.byte	-1
   481F FA                 8838 	.byte	-6
   4820 E5                 8839 	.byte	-27
   4821 FF                 8840 	.byte	-1
   4822 07                 8841 	.byte	7
   4823 03                 8842 	.byte	3
   4824 FF                 8843 	.byte	-1
   4825 0E                 8844 	.byte	14
   4826 FB                 8845 	.byte	-5
   4827 00                 8846 	.byte	0
   4828 F8                 8847 	.byte	-8
   4829 20                 8848 	.byte	32
   482A FF                 8849 	.byte	-1
   482B 0E                 8850 	.byte	14
   482C FB                 8851 	.byte	-5
   482D 00                 8852 	.byte	0
   482E EB                 8853 	.byte	-21
   482F 02                 8854 	.byte	2
   4830 FF                 8855 	.byte	-1
   4831 0D                 8856 	.byte	13
   4832 FB                 8857 	.byte	-5
   4833 00                 8858 	.byte	0
   4834 ED                 8859 	.byte	-19
   4835 EA                 8860 	.byte	-22
   4836 FF                 8861 	.byte	-1
   4837 0D                 8862 	.byte	13
   4838 FB                 8863 	.byte	-5
   4839 00                 8864 	.byte	0
   483A 08                 8865 	.byte	8
   483B 03                 8866 	.byte	3
   483C FF                 8867 	.byte	-1
   483D 06                 8868 	.byte	6
   483E 1B                 8869 	.byte	27
   483F FF                 8870 	.byte	-1
   4840 F8                 8871 	.byte	-8
   4841 FD                 8872 	.byte	-3
   4842 FF                 8873 	.byte	-1
   4843 FA                 8874 	.byte	-6
   4844 E5                 8875 	.byte	-27
   4845 FF                 8876 	.byte	-1
   4846 08                 8877 	.byte	8
   4847 03                 8878 	.byte	3
   4848 01                 8879 	.byte	1
                           8880 	.globl _height2FallingLeft9
   4849                    8881 _height2FallingLeft9:
   4849 FF                 8882 	.byte	-1
   484A 0D                 8883 	.byte	13
   484B 05                 8884 	.byte	5
   484C FF                 8885 	.byte	-1
   484D 08                 8886 	.byte	8
   484E FB                 8887 	.byte	-5
   484F FF                 8888 	.byte	-1
   4850 F3                 8889 	.byte	-13
   4851 FB                 8890 	.byte	-5
   4852 FF                 8891 	.byte	-1
   4853 F8                 8892 	.byte	-8
   4854 05                 8893 	.byte	5
   4855 FF                 8894 	.byte	-1
   4856 04                 8895 	.byte	4
   4857 E7                 8896 	.byte	-25
   4858 00                 8897 	.byte	0
   4859 09                 8898 	.byte	9
   485A 1E                 8899 	.byte	30
   485B FF                 8900 	.byte	-1
   485C 05                 8901 	.byte	5
   485D E7                 8902 	.byte	-25
   485E 00                 8903 	.byte	0
   485F 03                 8904 	.byte	3
   4860 14                 8905 	.byte	20
   4861 FF                 8906 	.byte	-1
   4862 05                 8907 	.byte	5
   4863 E6                 8908 	.byte	-26
   4864 00                 8909 	.byte	0
   4865 EE                 8910 	.byte	-18
   4866 15                 8911 	.byte	21
   4867 FF                 8912 	.byte	-1
   4868 04                 8913 	.byte	4
   4869 E6                 8914 	.byte	-26
   486A 00                 8915 	.byte	0
   486B F8                 8916 	.byte	-8
   486C 06                 8917 	.byte	6
   486D FF                 8918 	.byte	-1
   486E 0E                 8919 	.byte	14
   486F 05                 8920 	.byte	5
   4870 FF                 8921 	.byte	-1
   4871 08                 8922 	.byte	8
   4872 FA                 8923 	.byte	-6
   4873 FF                 8924 	.byte	-1
   4874 F2                 8925 	.byte	-14
   4875 FB                 8926 	.byte	-5
   4876 FF                 8927 	.byte	-1
   4877 F8                 8928 	.byte	-8
   4878 06                 8929 	.byte	6
   4879 01                 8930 	.byte	1
                           8931 	.globl _height2RisingRight9
   487A                    8932 _height2RisingRight9:
   487A 00                 8933 	.byte	0
   487B 06                 8934 	.byte	6
   487C 1C                 8935 	.byte	28
   487D FF                 8936 	.byte	-1
   487E 06                 8937 	.byte	6
   487F 0E                 8938 	.byte	14
   4880 FF                 8939 	.byte	-1
   4881 08                 8940 	.byte	8
   4882 FA                 8941 	.byte	-6
   4883 FF                 8942 	.byte	-1
   4884 FA                 8943 	.byte	-6
   4885 F2                 8944 	.byte	-14
   4886 FF                 8945 	.byte	-1
   4887 F8                 8946 	.byte	-8
   4888 06                 8947 	.byte	6
   4889 FF                 8948 	.byte	-1
   488A 18                 8949 	.byte	24
   488B F9                 8950 	.byte	-7
   488C 00                 8951 	.byte	0
   488D EE                 8952 	.byte	-18
   488E 15                 8953 	.byte	21
   488F FF                 8954 	.byte	-1
   4890 18                 8955 	.byte	24
   4891 F8                 8956 	.byte	-8
   4892 00                 8957 	.byte	0
   4893 F0                 8958 	.byte	-16
   4894 02                 8959 	.byte	2
   4895 FF                 8960 	.byte	-1
   4896 18                 8961 	.byte	24
   4897 F8                 8962 	.byte	-8
   4898 00                 8963 	.byte	0
   4899 E2                 8964 	.byte	-30
   489A FA                 8965 	.byte	-6
   489B FF                 8966 	.byte	-1
   489C 18                 8967 	.byte	24
   489D F9                 8968 	.byte	-7
   489E 00                 8969 	.byte	0
   489F F8                 8970 	.byte	-8
   48A0 06                 8971 	.byte	6
   48A1 FF                 8972 	.byte	-1
   48A2 06                 8973 	.byte	6
   48A3 0D                 8974 	.byte	13
   48A4 FF                 8975 	.byte	-1
   48A5 08                 8976 	.byte	8
   48A6 FA                 8977 	.byte	-6
   48A7 FF                 8978 	.byte	-1
   48A8 FA                 8979 	.byte	-6
   48A9 F3                 8980 	.byte	-13
   48AA FF                 8981 	.byte	-1
   48AB F8                 8982 	.byte	-8
   48AC 06                 8983 	.byte	6
   48AD 01                 8984 	.byte	1
                           8985 	.globl _height2FallingRight9
   48AE                    8986 _height2FallingRight9:
   48AE 00                 8987 	.byte	0
   48AF 0E                 8988 	.byte	14
   48B0 09                 8989 	.byte	9
   48B1 FF                 8990 	.byte	-1
   48B2 F5                 8991 	.byte	-11
   48B3 05                 8992 	.byte	5
   48B4 FF                 8993 	.byte	-1
   48B5 08                 8994 	.byte	8
   48B6 FA                 8995 	.byte	-6
   48B7 FF                 8996 	.byte	-1
   48B8 0B                 8997 	.byte	11
   48B9 FB                 8998 	.byte	-5
   48BA FF                 8999 	.byte	-1
   48BB F8                 9000 	.byte	-8
   48BC 06                 9001 	.byte	6
   48BD FF                 9002 	.byte	-1
   48BE 0F                 9003 	.byte	15
   48BF 1A                 9004 	.byte	26
   48C0 00                 9005 	.byte	0
   48C1 E6                 9006 	.byte	-26
   48C2 EB                 9007 	.byte	-21
   48C3 FF                 9008 	.byte	-1
   48C4 0F                 9009 	.byte	15
   48C5 1A                 9010 	.byte	26
   48C6 00                 9011 	.byte	0
   48C7 F9                 9012 	.byte	-7
   48C8 E0                 9013 	.byte	-32
   48C9 FF                 9014 	.byte	-1
   48CA 0F                 9015 	.byte	15
   48CB 1A                 9016 	.byte	26
   48CC 00                 9017 	.byte	0
   48CD FC                 9018 	.byte	-4
   48CE E1                 9019 	.byte	-31
   48CF FF                 9020 	.byte	-1
   48D0 0F                 9021 	.byte	15
   48D1 1A                 9022 	.byte	26
   48D2 00                 9023 	.byte	0
   48D3 F8                 9024 	.byte	-8
   48D4 06                 9025 	.byte	6
   48D5 FF                 9026 	.byte	-1
   48D6 F5                 9027 	.byte	-11
   48D7 05                 9028 	.byte	5
   48D8 FF                 9029 	.byte	-1
   48D9 08                 9030 	.byte	8
   48DA FA                 9031 	.byte	-6
   48DB FF                 9032 	.byte	-1
   48DC 0B                 9033 	.byte	11
   48DD FB                 9034 	.byte	-5
   48DE FF                 9035 	.byte	-1
   48DF F8                 9036 	.byte	-8
   48E0 06                 9037 	.byte	6
   48E1 01                 9038 	.byte	1
                           9039 	.globl _height2RisingLeft9
   48E2                    9040 _height2RisingLeft9:
   48E2 00                 9041 	.byte	0
   48E3 00                 9042 	.byte	0
   48E4 F3                 9043 	.byte	-13
   48E5 FF                 9044 	.byte	-1
   48E6 00                 9045 	.byte	0
   48E7 0D                 9046 	.byte	13
   48E8 FF                 9047 	.byte	-1
   48E9 08                 9048 	.byte	8
   48EA FB                 9049 	.byte	-5
   48EB FF                 9050 	.byte	-1
   48EC 00                 9051 	.byte	0
   48ED F2                 9052 	.byte	-14
   48EE FF                 9053 	.byte	-1
   48EF F8                 9054 	.byte	-8
   48F0 06                 9055 	.byte	6
   48F1 FF                 9056 	.byte	-1
   48F2 1B                 9057 	.byte	27
   48F3 08                 9058 	.byte	8
   48F4 00                 9059 	.byte	0
   48F5 E5                 9060 	.byte	-27
   48F6 05                 9061 	.byte	5
   48F7 FF                 9062 	.byte	-1
   48F8 1B                 9063 	.byte	27
   48F9 07                 9064 	.byte	7
   48FA 00                 9065 	.byte	0
   48FB ED                 9066 	.byte	-19
   48FC F4                 9067 	.byte	-12
   48FD FF                 9068 	.byte	-1
   48FE 1B                 9069 	.byte	27
   48FF 06                 9070 	.byte	6
   4900 00                 9071 	.byte	0
   4901 E5                 9072 	.byte	-27
   4902 EC                 9073 	.byte	-20
   4903 FF                 9074 	.byte	-1
   4904 1B                 9075 	.byte	27
   4905 08                 9076 	.byte	8
   4906 00                 9077 	.byte	0
   4907 F8                 9078 	.byte	-8
   4908 06                 9079 	.byte	6
   4909 FF                 9080 	.byte	-1
   490A 00                 9081 	.byte	0
   490B 0C                 9082 	.byte	12
   490C FF                 9083 	.byte	-1
   490D 08                 9084 	.byte	8
   490E FA                 9085 	.byte	-6
   490F FF                 9086 	.byte	-1
   4910 00                 9087 	.byte	0
   4911 F4                 9088 	.byte	-12
   4912 FF                 9089 	.byte	-1
   4913 F8                 9090 	.byte	-8
   4914 06                 9091 	.byte	6
   4915 01                 9092 	.byte	1
                           9093 	.globl _height2FallingBack9
   4916                    9094 _height2FallingBack9:
   4916 00                 9095 	.byte	0
   4917 11                 9096 	.byte	17
   4918 FD                 9097 	.byte	-3
   4919 FF                 9098 	.byte	-1
   491A 03                 9099 	.byte	3
   491B 0D                 9100 	.byte	13
   491C FF                 9101 	.byte	-1
   491D F7                 9102 	.byte	-9
   491E FE                 9103 	.byte	-2
   491F FF                 9104 	.byte	-1
   4920 FD                 9105 	.byte	-3
   4921 F3                 9106 	.byte	-13
   4922 FF                 9107 	.byte	-1
   4923 09                 9108 	.byte	9
   4924 02                 9109 	.byte	2
   4925 FF                 9110 	.byte	-1
   4926 19                 9111 	.byte	25
   4927 F5                 9112 	.byte	-11
   4928 00                 9113 	.byte	0
   4929 EA                 9114 	.byte	-22
   492A 18                 9115 	.byte	24
   492B FF                 9116 	.byte	-1
   492C 19                 9117 	.byte	25
   492D F6                 9118 	.byte	-10
   492E 00                 9119 	.byte	0
   492F DE                 9120 	.byte	-34
   4930 08                 9121 	.byte	8
   4931 FF                 9122 	.byte	-1
   4932 19                 9123 	.byte	25
   4933 F6                 9124 	.byte	-10
   4934 00                 9125 	.byte	0
   4935 E4                 9126 	.byte	-28
   4936 FD                 9127 	.byte	-3
   4937 FF                 9128 	.byte	-1
   4938 19                 9129 	.byte	25
   4939 F5                 9130 	.byte	-11
   493A 00                 9131 	.byte	0
   493B 09                 9132 	.byte	9
   493C 02                 9133 	.byte	2
   493D FF                 9134 	.byte	-1
   493E 03                 9135 	.byte	3
   493F 0E                 9136 	.byte	14
   4940 FF                 9137 	.byte	-1
   4941 F7                 9138 	.byte	-9
   4942 FE                 9139 	.byte	-2
   4943 FF                 9140 	.byte	-1
   4944 FD                 9141 	.byte	-3
   4945 F2                 9142 	.byte	-14
   4946 FF                 9143 	.byte	-1
   4947 09                 9144 	.byte	9
   4948 02                 9145 	.byte	2
   4949 01                 9146 	.byte	1
                           9147 	.globl _height2RisingFront9
   494A                    9148 _height2RisingFront9:
   494A 00                 9149 	.byte	0
   494B FD                 9150 	.byte	-3
   494C 06                 9151 	.byte	6
   494D FF                 9152 	.byte	-1
   494E 03                 9153 	.byte	3
   494F 0E                 9154 	.byte	14
   4950 FF                 9155 	.byte	-1
   4951 03                 9156 	.byte	3
   4952 FA                 9157 	.byte	-6
   4953 FF                 9158 	.byte	-1
   4954 FD                 9159 	.byte	-3
   4955 F2                 9160 	.byte	-14
   4956 FF                 9161 	.byte	-1
   4957 FD                 9162 	.byte	-3
   4958 06                 9163 	.byte	6
   4959 FF                 9164 	.byte	-1
   495A 1C                 9165 	.byte	28
   495B FD                 9166 	.byte	-3
   495C 00                 9167 	.byte	0
   495D E7                 9168 	.byte	-25
   495E 11                 9169 	.byte	17
   495F FF                 9170 	.byte	-1
   4960 1C                 9171 	.byte	28
   4961 FD                 9172 	.byte	-3
   4962 00                 9173 	.byte	0
   4963 E7                 9174 	.byte	-25
   4964 FD                 9175 	.byte	-3
   4965 FF                 9176 	.byte	-1
   4966 1D                 9177 	.byte	29
   4967 FD                 9178 	.byte	-3
   4968 00                 9179 	.byte	0
   4969 E0                 9180 	.byte	-32
   496A F5                 9181 	.byte	-11
   496B FF                 9182 	.byte	-1
   496C 1D                 9183 	.byte	29
   496D FE                 9184 	.byte	-2
   496E 00                 9185 	.byte	0
   496F FC                 9186 	.byte	-4
   4970 05                 9187 	.byte	5
   4971 FF                 9188 	.byte	-1
   4972 03                 9189 	.byte	3
   4973 0E                 9190 	.byte	14
   4974 FF                 9191 	.byte	-1
   4975 04                 9192 	.byte	4
   4976 FA                 9193 	.byte	-6
   4977 FF                 9194 	.byte	-1
   4978 FD                 9195 	.byte	-3
   4979 F3                 9196 	.byte	-13
   497A FF                 9197 	.byte	-1
   497B FC                 9198 	.byte	-4
   497C 05                 9199 	.byte	5
   497D 01                 9200 	.byte	1
                           9201 	.globl _height2FallingFront9
   497E                    9202 _height2FallingFront9:
   497E FF                 9203 	.byte	-1
   497F 03                 9204 	.byte	3
   4980 0E                 9205 	.byte	14
   4981 FF                 9206 	.byte	-1
   4982 0F                 9207 	.byte	15
   4983 FE                 9208 	.byte	-2
   4984 FF                 9209 	.byte	-1
   4985 FD                 9210 	.byte	-3
   4986 F3                 9211 	.byte	-13
   4987 FF                 9212 	.byte	-1
   4988 F1                 9213 	.byte	-15
   4989 01                 9214 	.byte	1
   498A FF                 9215 	.byte	-1
   498B FC                 9216 	.byte	-4
   498C 0B                 9217 	.byte	11
   498D 00                 9218 	.byte	0
   498E 07                 9219 	.byte	7
   498F 03                 9220 	.byte	3
   4990 FF                 9221 	.byte	-1
   4991 FC                 9222 	.byte	-4
   4992 0B                 9223 	.byte	11
   4993 00                 9224 	.byte	0
   4994 13                 9225 	.byte	19
   4995 F3                 9226 	.byte	-13
   4996 FF                 9227 	.byte	-1
   4997 FB                 9228 	.byte	-5
   4998 0B                 9229 	.byte	11
   4999 00                 9230 	.byte	0
   499A 02                 9231 	.byte	2
   499B E8                 9232 	.byte	-24
   499C FF                 9233 	.byte	-1
   499D FB                 9234 	.byte	-5
   499E 0A                 9235 	.byte	10
   499F 00                 9236 	.byte	0
   49A0 F2                 9237 	.byte	-14
   49A1 02                 9238 	.byte	2
   49A2 FF                 9239 	.byte	-1
   49A3 03                 9240 	.byte	3
   49A4 0E                 9241 	.byte	14
   49A5 FF                 9242 	.byte	-1
   49A6 0E                 9243 	.byte	14
   49A7 FE                 9244 	.byte	-2
   49A8 FF                 9245 	.byte	-1
   49A9 FD                 9246 	.byte	-3
   49AA F2                 9247 	.byte	-14
   49AB FF                 9248 	.byte	-1
   49AC F2                 9249 	.byte	-14
   49AD 02                 9250 	.byte	2
   49AE 01                 9251 	.byte	1
                           9252 	.globl _height2RisingBack9
   49AF                    9253 _height2RisingBack9:
   49AF 00                 9254 	.byte	0
   49B0 10                 9255 	.byte	16
   49B1 F5                 9256 	.byte	-11
   49B2 FF                 9257 	.byte	-1
   49B3 03                 9258 	.byte	3
   49B4 0D                 9259 	.byte	13
   49B5 FF                 9260 	.byte	-1
   49B6 0B                 9261 	.byte	11
   49B7 FB                 9262 	.byte	-5
   49B8 FF                 9263 	.byte	-1
   49B9 FD                 9264 	.byte	-3
   49BA F2                 9265 	.byte	-14
   49BB FF                 9266 	.byte	-1
   49BC F5                 9267 	.byte	-11
   49BD 06                 9268 	.byte	6
   49BE FF                 9269 	.byte	-1
   49BF 15                 9270 	.byte	21
   49C0 03                 9271 	.byte	3
   49C1 00                 9272 	.byte	0
   49C2 EE                 9273 	.byte	-18
   49C3 0A                 9274 	.byte	10
   49C4 FF                 9275 	.byte	-1
   49C5 15                 9276 	.byte	21
   49C6 03                 9277 	.byte	3
   49C7 00                 9278 	.byte	0
   49C8 F6                 9279 	.byte	-10
   49C9 F8                 9280 	.byte	-8
   49CA FF                 9281 	.byte	-1
   49CB 15                 9282 	.byte	21
   49CC 03                 9283 	.byte	3
   49CD 00                 9284 	.byte	0
   49CE E8                 9285 	.byte	-24
   49CF EF                 9286 	.byte	-17
   49D0 FF                 9287 	.byte	-1
   49D1 15                 9288 	.byte	21
   49D2 03                 9289 	.byte	3
   49D3 00                 9290 	.byte	0
   49D4 F5                 9291 	.byte	-11
   49D5 06                 9292 	.byte	6
   49D6 FF                 9293 	.byte	-1
   49D7 03                 9294 	.byte	3
   49D8 0D                 9295 	.byte	13
   49D9 FF                 9296 	.byte	-1
   49DA 0B                 9297 	.byte	11
   49DB FB                 9298 	.byte	-5
   49DC FF                 9299 	.byte	-1
   49DD FD                 9300 	.byte	-3
   49DE F2                 9301 	.byte	-14
   49DF FF                 9302 	.byte	-1
   49E0 F5                 9303 	.byte	-11
   49E1 06                 9304 	.byte	6
   49E2 01                 9305 	.byte	1
                           9306 	.globl _depth2RollingLeft9
   49E3                    9307 _depth2RollingLeft9:
   49E3 FF                 9308 	.byte	-1
   49E4 0D                 9309 	.byte	13
   49E5 05                 9310 	.byte	5
   49E6 FF                 9311 	.byte	-1
   49E7 10                 9312 	.byte	16
   49E8 F5                 9313 	.byte	-11
   49E9 FF                 9314 	.byte	-1
   49EA F3                 9315 	.byte	-13
   49EB FB                 9316 	.byte	-5
   49EC FF                 9317 	.byte	-1
   49ED F0                 9318 	.byte	-16
   49EE 0B                 9319 	.byte	11
   49EF FF                 9320 	.byte	-1
   49F0 02                 9321 	.byte	2
   49F1 F4                 9322 	.byte	-12
   49F2 00                 9323 	.byte	0
   49F3 0B                 9324 	.byte	11
   49F4 11                 9325 	.byte	17
   49F5 FF                 9326 	.byte	-1
   49F6 02                 9327 	.byte	2
   49F7 F4                 9328 	.byte	-12
   49F8 00                 9329 	.byte	0
   49F9 0E                 9330 	.byte	14
   49FA 01                 9331 	.byte	1
   49FB FF                 9332 	.byte	-1
   49FC 02                 9333 	.byte	2
   49FD F3                 9334 	.byte	-13
   49FE 00                 9335 	.byte	0
   49FF F1                 9336 	.byte	-15
   4A00 08                 9337 	.byte	8
   4A01 FF                 9338 	.byte	-1
   4A02 02                 9339 	.byte	2
   4A03 F3                 9340 	.byte	-13
   4A04 00                 9341 	.byte	0
   4A05 F0                 9342 	.byte	-16
   4A06 0C                 9343 	.byte	12
   4A07 FF                 9344 	.byte	-1
   4A08 0D                 9345 	.byte	13
   4A09 05                 9346 	.byte	5
   4A0A FF                 9347 	.byte	-1
   4A0B 10                 9348 	.byte	16
   4A0C F4                 9349 	.byte	-12
   4A0D FF                 9350 	.byte	-1
   4A0E F3                 9351 	.byte	-13
   4A0F FB                 9352 	.byte	-5
   4A10 FF                 9353 	.byte	-1
   4A11 F0                 9354 	.byte	-16
   4A12 0C                 9355 	.byte	12
   4A13 01                 9356 	.byte	1
                           9357 	.globl _depth2RollingRight9
   4A14                    9358 _depth2RollingRight9:
   4A14 00                 9359 	.byte	0
   4A15 0E                 9360 	.byte	14
   4A16 09                 9361 	.byte	9
   4A17 FF                 9362 	.byte	-1
   4A18 F5                 9363 	.byte	-11
   4A19 05                 9364 	.byte	5
   4A1A FF                 9365 	.byte	-1
   4A1B 10                 9366 	.byte	16
   4A1C F4                 9367 	.byte	-12
   4A1D FF                 9368 	.byte	-1
   4A1E 0B                 9369 	.byte	11
   4A1F FC                 9370 	.byte	-4
   4A20 FF                 9371 	.byte	-1
   4A21 F0                 9372 	.byte	-16
   4A22 0B                 9373 	.byte	11
   4A23 FF                 9374 	.byte	-1
   4A24 08                 9375 	.byte	8
   4A25 0D                 9376 	.byte	13
   4A26 00                 9377 	.byte	0
   4A27 ED                 9378 	.byte	-19
   4A28 F8                 9379 	.byte	-8
   4A29 FF                 9380 	.byte	-1
   4A2A 08                 9381 	.byte	8
   4A2B 0D                 9382 	.byte	13
   4A2C 00                 9383 	.byte	0
   4A2D 08                 9384 	.byte	8
   4A2E E7                 9385 	.byte	-25
   4A2F FF                 9386 	.byte	-1
   4A30 08                 9387 	.byte	8
   4A31 0D                 9388 	.byte	13
   4A32 00                 9389 	.byte	0
   4A33 03                 9390 	.byte	3
   4A34 EF                 9391 	.byte	-17
   4A35 FF                 9392 	.byte	-1
   4A36 08                 9393 	.byte	8
   4A37 0C                 9394 	.byte	12
   4A38 00                 9395 	.byte	0
   4A39 F0                 9396 	.byte	-16
   4A3A 0C                 9397 	.byte	12
   4A3B FF                 9398 	.byte	-1
   4A3C F5                 9399 	.byte	-11
   4A3D 05                 9400 	.byte	5
   4A3E FF                 9401 	.byte	-1
   4A3F 10                 9402 	.byte	16
   4A40 F4                 9403 	.byte	-12
   4A41 FF                 9404 	.byte	-1
   4A42 0B                 9405 	.byte	11
   4A43 FB                 9406 	.byte	-5
   4A44 FF                 9407 	.byte	-1
   4A45 F0                 9408 	.byte	-16
   4A46 0C                 9409 	.byte	12
   4A47 01                 9410 	.byte	1
                           9411 	.globl _width2RollingFront9
   4A48                    9412 _width2RollingFront9:
   4A48 FF                 9413 	.byte	-1
   4A49 06                 9414 	.byte	6
   4A4A 1C                 9415 	.byte	28
   4A4B FF                 9416 	.byte	-1
   4A4C 0F                 9417 	.byte	15
   4A4D FE                 9418 	.byte	-2
   4A4E FF                 9419 	.byte	-1
   4A4F FA                 9420 	.byte	-6
   4A50 E5                 9421 	.byte	-27
   4A51 FF                 9422 	.byte	-1
   4A52 F1                 9423 	.byte	-15
   4A53 01                 9424 	.byte	1
   4A54 FF                 9425 	.byte	-1
   4A55 FF                 9426 	.byte	-1
   4A56 06                 9427 	.byte	6
   4A57 00                 9428 	.byte	0
   4A58 07                 9429 	.byte	7
   4A59 16                 9430 	.byte	22
   4A5A FF                 9431 	.byte	-1
   4A5B FE                 9432 	.byte	-2
   4A5C 06                 9433 	.byte	6
   4A5D 00                 9434 	.byte	0
   4A5E 11                 9435 	.byte	17
   4A5F F8                 9436 	.byte	-8
   4A60 FF                 9437 	.byte	-1
   4A61 FE                 9438 	.byte	-2
   4A62 05                 9439 	.byte	5
   4A63 00                 9440 	.byte	0
   4A64 FC                 9441 	.byte	-4
   4A65 E0                 9442 	.byte	-32
   4A66 FF                 9443 	.byte	-1
   4A67 FE                 9444 	.byte	-2
   4A68 04                 9445 	.byte	4
   4A69 00                 9446 	.byte	0
   4A6A F2                 9447 	.byte	-14
   4A6B 03                 9448 	.byte	3
   4A6C FF                 9449 	.byte	-1
   4A6D 05                 9450 	.byte	5
   4A6E 1C                 9451 	.byte	28
   4A6F FF                 9452 	.byte	-1
   4A70 0F                 9453 	.byte	15
   4A71 FD                 9454 	.byte	-3
   4A72 FF                 9455 	.byte	-1
   4A73 FA                 9456 	.byte	-6
   4A74 E4                 9457 	.byte	-28
   4A75 FF                 9458 	.byte	-1
   4A76 F2                 9459 	.byte	-14
   4A77 03                 9460 	.byte	3
   4A78 01                 9461 	.byte	1
                           9462 	.globl _width2RollingBack9
   4A79                    9463 _width2RollingBack9:
   4A79 00                 9464 	.byte	0
   4A7A 11                 9465 	.byte	17
   4A7B FD                 9466 	.byte	-3
   4A7C FF                 9467 	.byte	-1
   4A7D 06                 9468 	.byte	6
   4A7E 1B                 9469 	.byte	27
   4A7F FF                 9470 	.byte	-1
   4A80 F7                 9471 	.byte	-9
   4A81 FE                 9472 	.byte	-2
   4A82 FF                 9473 	.byte	-1
   4A83 FA                 9474 	.byte	-6
   4A84 E5                 9475 	.byte	-27
   4A85 FF                 9476 	.byte	-1
   4A86 09                 9477 	.byte	9
   4A87 02                 9478 	.byte	2
   4A88 FF                 9479 	.byte	-1
   4A89 0C                 9480 	.byte	12
   4A8A FB                 9481 	.byte	-5
   4A8B 00                 9482 	.byte	0
   4A8C FA                 9483 	.byte	-6
   4A8D 20                 9484 	.byte	32
   4A8E FF                 9485 	.byte	-1
   4A8F 0C                 9486 	.byte	12
   4A90 FB                 9487 	.byte	-5
   4A91 00                 9488 	.byte	0
   4A92 EB                 9489 	.byte	-21
   4A93 03                 9490 	.byte	3
   4A94 FF                 9491 	.byte	-1
   4A95 0C                 9492 	.byte	12
   4A96 FA                 9493 	.byte	-6
   4A97 00                 9494 	.byte	0
   4A98 EE                 9495 	.byte	-18
   4A99 EB                 9496 	.byte	-21
   4A9A FF                 9497 	.byte	-1
   4A9B 0C                 9498 	.byte	12
   4A9C FA                 9499 	.byte	-6
   4A9D 00                 9500 	.byte	0
   4A9E 09                 9501 	.byte	9
   4A9F 03                 9502 	.byte	3
   4AA0 FF                 9503 	.byte	-1
   4AA1 06                 9504 	.byte	6
   4AA2 1B                 9505 	.byte	27
   4AA3 FF                 9506 	.byte	-1
   4AA4 F7                 9507 	.byte	-9
   4AA5 FD                 9508 	.byte	-3
   4AA6 FF                 9509 	.byte	-1
   4AA7 FA                 9510 	.byte	-6
   4AA8 E5                 9511 	.byte	-27
   4AA9 FF                 9512 	.byte	-1
   4AAA 09                 9513 	.byte	9
   4AAB 03                 9514 	.byte	3
   4AAC 01                 9515 	.byte	1
                           9516 	.globl _height2FallingLeft10
   4AAD                    9517 _height2FallingLeft10:
   4AAD FF                 9518 	.byte	-1
   4AAE 0D                 9519 	.byte	13
   4AAF 04                 9520 	.byte	4
   4AB0 FF                 9521 	.byte	-1
   4AB1 08                 9522 	.byte	8
   4AB2 FB                 9523 	.byte	-5
   4AB3 FF                 9524 	.byte	-1
   4AB4 F3                 9525 	.byte	-13
   4AB5 FC                 9526 	.byte	-4
   4AB6 FF                 9527 	.byte	-1
   4AB7 F8                 9528 	.byte	-8
   4AB8 05                 9529 	.byte	5
   4AB9 FF                 9530 	.byte	-1
   4ABA 01                 9531 	.byte	1
   4ABB E6                 9532 	.byte	-26
   4ABC 00                 9533 	.byte	0
   4ABD 0C                 9534 	.byte	12
   4ABE 1E                 9535 	.byte	30
   4ABF FF                 9536 	.byte	-1
   4AC0 01                 9537 	.byte	1
   4AC1 E6                 9538 	.byte	-26
   4AC2 00                 9539 	.byte	0
   4AC3 07                 9540 	.byte	7
   4AC4 15                 9541 	.byte	21
   4AC5 FF                 9542 	.byte	-1
   4AC6 01                 9543 	.byte	1
   4AC7 E5                 9544 	.byte	-27
   4AC8 00                 9545 	.byte	0
   4AC9 F2                 9546 	.byte	-14
   4ACA 17                 9547 	.byte	23
   4ACB FF                 9548 	.byte	-1
   4ACC 01                 9549 	.byte	1
   4ACD E5                 9550 	.byte	-27
   4ACE 00                 9551 	.byte	0
   4ACF F8                 9552 	.byte	-8
   4AD0 06                 9553 	.byte	6
   4AD1 FF                 9554 	.byte	-1
   4AD2 0D                 9555 	.byte	13
   4AD3 04                 9556 	.byte	4
   4AD4 FF                 9557 	.byte	-1
   4AD5 08                 9558 	.byte	8
   4AD6 FA                 9559 	.byte	-6
   4AD7 FF                 9560 	.byte	-1
   4AD8 F3                 9561 	.byte	-13
   4AD9 FC                 9562 	.byte	-4
   4ADA FF                 9563 	.byte	-1
   4ADB F8                 9564 	.byte	-8
   4ADC 06                 9565 	.byte	6
   4ADD 01                 9566 	.byte	1
                           9567 	.globl _height2RisingRight10
   4ADE                    9568 _height2RisingRight10:
   4ADE 00                 9569 	.byte	0
   4ADF 06                 9570 	.byte	6
   4AE0 1C                 9571 	.byte	28
   4AE1 FF                 9572 	.byte	-1
   4AE2 05                 9573 	.byte	5
   4AE3 0E                 9574 	.byte	14
   4AE4 FF                 9575 	.byte	-1
   4AE5 08                 9576 	.byte	8
   4AE6 FA                 9577 	.byte	-6
   4AE7 FF                 9578 	.byte	-1
   4AE8 FB                 9579 	.byte	-5
   4AE9 F2                 9580 	.byte	-14
   4AEA FF                 9581 	.byte	-1
   4AEB F8                 9582 	.byte	-8
   4AEC 06                 9583 	.byte	6
   4AED FF                 9584 	.byte	-1
   4AEE 19                 9585 	.byte	25
   4AEF FC                 9586 	.byte	-4
   4AF0 00                 9587 	.byte	0
   4AF1 EC                 9588 	.byte	-20
   4AF2 12                 9589 	.byte	18
   4AF3 FF                 9590 	.byte	-1
   4AF4 19                 9591 	.byte	25
   4AF5 FC                 9592 	.byte	-4
   4AF6 00                 9593 	.byte	0
   4AF7 EF                 9594 	.byte	-17
   4AF8 FE                 9595 	.byte	-2
   4AF9 FF                 9596 	.byte	-1
   4AFA 19                 9597 	.byte	25
   4AFB FC                 9598 	.byte	-4
   4AFC 00                 9599 	.byte	0
   4AFD E2                 9600 	.byte	-30
   4AFE F6                 9601 	.byte	-10
   4AFF FF                 9602 	.byte	-1
   4B00 19                 9603 	.byte	25
   4B01 FC                 9604 	.byte	-4
   4B02 00                 9605 	.byte	0
   4B03 F8                 9606 	.byte	-8
   4B04 06                 9607 	.byte	6
   4B05 FF                 9608 	.byte	-1
   4B06 05                 9609 	.byte	5
   4B07 0E                 9610 	.byte	14
   4B08 FF                 9611 	.byte	-1
   4B09 08                 9612 	.byte	8
   4B0A FA                 9613 	.byte	-6
   4B0B FF                 9614 	.byte	-1
   4B0C FB                 9615 	.byte	-5
   4B0D F2                 9616 	.byte	-14
   4B0E FF                 9617 	.byte	-1
   4B0F F8                 9618 	.byte	-8
   4B10 06                 9619 	.byte	6
   4B11 01                 9620 	.byte	1
                           9621 	.globl _height2FallingRight10
   4B12                    9622 _height2FallingRight10:
   4B12 00                 9623 	.byte	0
   4B13 0F                 9624 	.byte	15
   4B14 0A                 9625 	.byte	10
   4B15 FF                 9626 	.byte	-1
   4B16 F4                 9627 	.byte	-12
   4B17 04                 9628 	.byte	4
   4B18 FF                 9629 	.byte	-1
   4B19 08                 9630 	.byte	8
   4B1A FA                 9631 	.byte	-6
   4B1B FF                 9632 	.byte	-1
   4B1C 0C                 9633 	.byte	12
   4B1D FC                 9634 	.byte	-4
   4B1E FF                 9635 	.byte	-1
   4B1F F8                 9636 	.byte	-8
   4B20 06                 9637 	.byte	6
   4B21 FF                 9638 	.byte	-1
   4B22 0C                 9639 	.byte	12
   4B23 1B                 9640 	.byte	27
   4B24 00                 9641 	.byte	0
   4B25 E8                 9642 	.byte	-24
   4B26 E9                 9643 	.byte	-23
   4B27 FF                 9644 	.byte	-1
   4B28 0D                 9645 	.byte	13
   4B29 1B                 9646 	.byte	27
   4B2A 00                 9647 	.byte	0
   4B2B FB                 9648 	.byte	-5
   4B2C DF                 9649 	.byte	-33
   4B2D FF                 9650 	.byte	-1
   4B2E 0D                 9651 	.byte	13
   4B2F 1B                 9652 	.byte	27
   4B30 00                 9653 	.byte	0
   4B31 FF                 9654 	.byte	-1
   4B32 E1                 9655 	.byte	-31
   4B33 FF                 9656 	.byte	-1
   4B34 0C                 9657 	.byte	12
   4B35 1B                 9658 	.byte	27
   4B36 00                 9659 	.byte	0
   4B37 F8                 9660 	.byte	-8
   4B38 06                 9661 	.byte	6
   4B39 FF                 9662 	.byte	-1
   4B3A F5                 9663 	.byte	-11
   4B3B 04                 9664 	.byte	4
   4B3C FF                 9665 	.byte	-1
   4B3D 08                 9666 	.byte	8
   4B3E FA                 9667 	.byte	-6
   4B3F FF                 9668 	.byte	-1
   4B40 0B                 9669 	.byte	11
   4B41 FC                 9670 	.byte	-4
   4B42 FF                 9671 	.byte	-1
   4B43 F8                 9672 	.byte	-8
   4B44 06                 9673 	.byte	6
   4B45 01                 9674 	.byte	1
                           9675 	.globl _height2RisingLeft10
   4B46                    9676 _height2RisingLeft10:
   4B46 00                 9677 	.byte	0
   4B47 00                 9678 	.byte	0
   4B48 F3                 9679 	.byte	-13
   4B49 FF                 9680 	.byte	-1
   4B4A 00                 9681 	.byte	0
   4B4B 0D                 9682 	.byte	13
   4B4C FF                 9683 	.byte	-1
   4B4D 08                 9684 	.byte	8
   4B4E FB                 9685 	.byte	-5
   4B4F FF                 9686 	.byte	-1
   4B50 FF                 9687 	.byte	-1
   4B51 F2                 9688 	.byte	-14
   4B52 FF                 9689 	.byte	-1
   4B53 F9                 9690 	.byte	-7
   4B54 06                 9691 	.byte	6
   4B55 FF                 9692 	.byte	-1
   4B56 19                 9693 	.byte	25
   4B57 04                 9694 	.byte	4
   4B58 00                 9695 	.byte	0
   4B59 E7                 9696 	.byte	-25
   4B5A 09                 9697 	.byte	9
   4B5B FF                 9698 	.byte	-1
   4B5C 1B                 9699 	.byte	27
   4B5D 04                 9700 	.byte	4
   4B5E 00                 9701 	.byte	0
   4B5F ED                 9702 	.byte	-19
   4B60 F7                 9703 	.byte	-9
   4B61 FF                 9704 	.byte	-1
   4B62 1B                 9705 	.byte	27
   4B63 04                 9706 	.byte	4
   4B64 00                 9707 	.byte	0
   4B65 E4                 9708 	.byte	-28
   4B66 EE                 9709 	.byte	-18
   4B67 FF                 9710 	.byte	-1
   4B68 1A                 9711 	.byte	26
   4B69 04                 9712 	.byte	4
   4B6A 00                 9713 	.byte	0
   4B6B F8                 9714 	.byte	-8
   4B6C 06                 9715 	.byte	6
   4B6D FF                 9716 	.byte	-1
   4B6E 02                 9717 	.byte	2
   4B6F 0D                 9718 	.byte	13
   4B70 FF                 9719 	.byte	-1
   4B71 08                 9720 	.byte	8
   4B72 FB                 9721 	.byte	-5
   4B73 FF                 9722 	.byte	-1
   4B74 FE                 9723 	.byte	-2
   4B75 F2                 9724 	.byte	-14
   4B76 FF                 9725 	.byte	-1
   4B77 F8                 9726 	.byte	-8
   4B78 06                 9727 	.byte	6
   4B79 01                 9728 	.byte	1
                           9729 	.globl _height2FallingBack10
   4B7A                    9730 _height2FallingBack10:
   4B7A 00                 9731 	.byte	0
   4B7B 12                 9732 	.byte	18
   4B7C FD                 9733 	.byte	-3
   4B7D FF                 9734 	.byte	-1
   4B7E 03                 9735 	.byte	3
   4B7F 0D                 9736 	.byte	13
   4B80 FF                 9737 	.byte	-1
   4B81 F6                 9738 	.byte	-10
   4B82 FE                 9739 	.byte	-2
   4B83 FF                 9740 	.byte	-1
   4B84 FD                 9741 	.byte	-3
   4B85 F3                 9742 	.byte	-13
   4B86 FF                 9743 	.byte	-1
   4B87 0A                 9744 	.byte	10
   4B88 02                 9745 	.byte	2
   4B89 FF                 9746 	.byte	-1
   4B8A 17                 9747 	.byte	23
   4B8B F4                 9748 	.byte	-12
   4B8C 00                 9749 	.byte	0
   4B8D EC                 9750 	.byte	-20
   4B8E 19                 9751 	.byte	25
   4B8F FF                 9752 	.byte	-1
   4B90 17                 9753 	.byte	23
   4B91 F5                 9754 	.byte	-11
   4B92 00                 9755 	.byte	0
   4B93 DF                 9756 	.byte	-33
   4B94 09                 9757 	.byte	9
   4B95 FF                 9758 	.byte	-1
   4B96 16                 9759 	.byte	22
   4B97 F5                 9760 	.byte	-11
   4B98 00                 9761 	.byte	0
   4B99 E7                 9762 	.byte	-25
   4B9A FE                 9763 	.byte	-2
   4B9B FF                 9764 	.byte	-1
   4B9C 16                 9765 	.byte	22
   4B9D F4                 9766 	.byte	-12
   4B9E 00                 9767 	.byte	0
   4B9F 0B                 9768 	.byte	11
   4BA0 02                 9769 	.byte	2
   4BA1 FF                 9770 	.byte	-1
   4BA2 03                 9771 	.byte	3
   4BA3 0E                 9772 	.byte	14
   4BA4 FF                 9773 	.byte	-1
   4BA5 F5                 9774 	.byte	-11
   4BA6 FE                 9775 	.byte	-2
   4BA7 FF                 9776 	.byte	-1
   4BA8 FD                 9777 	.byte	-3
   4BA9 F2                 9778 	.byte	-14
   4BAA FF                 9779 	.byte	-1
   4BAB 0B                 9780 	.byte	11
   4BAC 02                 9781 	.byte	2
   4BAD 01                 9782 	.byte	1
                           9783 	.globl _height2RisingFront10
   4BAE                    9784 _height2RisingFront10:
   4BAE 00                 9785 	.byte	0
   4BAF FB                 9786 	.byte	-5
   4BB0 06                 9787 	.byte	6
   4BB1 FF                 9788 	.byte	-1
   4BB2 03                 9789 	.byte	3
   4BB3 0E                 9790 	.byte	14
   4BB4 FF                 9791 	.byte	-1
   4BB5 05                 9792 	.byte	5
   4BB6 FA                 9793 	.byte	-6
   4BB7 FF                 9794 	.byte	-1
   4BB8 FD                 9795 	.byte	-3
   4BB9 F2                 9796 	.byte	-14
   4BBA FF                 9797 	.byte	-1
   4BBB FB                 9798 	.byte	-5
   4BBC 06                 9799 	.byte	6
   4BBD FF                 9800 	.byte	-1
   4BBE 1B                 9801 	.byte	27
   4BBF FE                 9802 	.byte	-2
   4BC0 00                 9803 	.byte	0
   4BC1 E8                 9804 	.byte	-24
   4BC2 10                 9805 	.byte	16
   4BC3 FF                 9806 	.byte	-1
   4BC4 1B                 9807 	.byte	27
   4BC5 FE                 9808 	.byte	-2
   4BC6 00                 9809 	.byte	0
   4BC7 EA                 9810 	.byte	-22
   4BC8 FC                 9811 	.byte	-4
   4BC9 FF                 9812 	.byte	-1
   4BCA 1C                 9813 	.byte	28
   4BCB FE                 9814 	.byte	-2
   4BCC 00                 9815 	.byte	0
   4BCD E1                 9816 	.byte	-31
   4BCE F4                 9817 	.byte	-12
   4BCF FF                 9818 	.byte	-1
   4BD0 1C                 9819 	.byte	28
   4BD1 FF                 9820 	.byte	-1
   4BD2 00                 9821 	.byte	0
   4BD3 FA                 9822 	.byte	-6
   4BD4 05                 9823 	.byte	5
   4BD5 FF                 9824 	.byte	-1
   4BD6 03                 9825 	.byte	3
   4BD7 0E                 9826 	.byte	14
   4BD8 FF                 9827 	.byte	-1
   4BD9 06                 9828 	.byte	6
   4BDA FA                 9829 	.byte	-6
   4BDB FF                 9830 	.byte	-1
   4BDC FD                 9831 	.byte	-3
   4BDD F3                 9832 	.byte	-13
   4BDE FF                 9833 	.byte	-1
   4BDF FA                 9834 	.byte	-6
   4BE0 05                 9835 	.byte	5
   4BE1 01                 9836 	.byte	1
                           9837 	.globl _height2FallingFront10
   4BE2                    9838 _height2FallingFront10:
   4BE2 FF                 9839 	.byte	-1
   4BE3 03                 9840 	.byte	3
   4BE4 0E                 9841 	.byte	14
   4BE5 FF                 9842 	.byte	-1
   4BE6 0F                 9843 	.byte	15
   4BE7 FE                 9844 	.byte	-2
   4BE8 FF                 9845 	.byte	-1
   4BE9 FD                 9846 	.byte	-3
   4BEA F3                 9847 	.byte	-13
   4BEB FF                 9848 	.byte	-1
   4BEC F1                 9849 	.byte	-15
   4BED 01                 9850 	.byte	1
   4BEE FF                 9851 	.byte	-1
   4BEF F8                 9852 	.byte	-8
   4BF0 0C                 9853 	.byte	12
   4BF1 00                 9854 	.byte	0
   4BF2 0B                 9855 	.byte	11
   4BF3 02                 9856 	.byte	2
   4BF4 FF                 9857 	.byte	-1
   4BF5 F8                 9858 	.byte	-8
   4BF6 0C                 9859 	.byte	12
   4BF7 00                 9860 	.byte	0
   4BF8 17                 9861 	.byte	23
   4BF9 F2                 9862 	.byte	-14
   4BFA FF                 9863 	.byte	-1
   4BFB F7                 9864 	.byte	-9
   4BFC 0C                 9865 	.byte	12
   4BFD 00                 9866 	.byte	0
   4BFE 06                 9867 	.byte	6
   4BFF E7                 9868 	.byte	-25
   4C00 FF                 9869 	.byte	-1
   4C01 F7                 9870 	.byte	-9
   4C02 0B                 9871 	.byte	11
   4C03 00                 9872 	.byte	0
   4C04 F2                 9873 	.byte	-14
   4C05 02                 9874 	.byte	2
   4C06 FF                 9875 	.byte	-1
   4C07 03                 9876 	.byte	3
   4C08 0E                 9877 	.byte	14
   4C09 FF                 9878 	.byte	-1
   4C0A 0E                 9879 	.byte	14
   4C0B FE                 9880 	.byte	-2
   4C0C FF                 9881 	.byte	-1
   4C0D FD                 9882 	.byte	-3
   4C0E F2                 9883 	.byte	-14
   4C0F FF                 9884 	.byte	-1
   4C10 F2                 9885 	.byte	-14
   4C11 02                 9886 	.byte	2
   4C12 01                 9887 	.byte	1
                           9888 	.globl _height2RisingBack10
   4C13                    9889 _height2RisingBack10:
   4C13 00                 9890 	.byte	0
   4C14 10                 9891 	.byte	16
   4C15 F5                 9892 	.byte	-11
   4C16 FF                 9893 	.byte	-1
   4C17 03                 9894 	.byte	3
   4C18 0D                 9895 	.byte	13
   4C19 FF                 9896 	.byte	-1
   4C1A 0A                 9897 	.byte	10
   4C1B FB                 9898 	.byte	-5
   4C1C FF                 9899 	.byte	-1
   4C1D FD                 9900 	.byte	-3
   4C1E F2                 9901 	.byte	-14
   4C1F FF                 9902 	.byte	-1
   4C20 F6                 9903 	.byte	-10
   4C21 06                 9904 	.byte	6
   4C22 FF                 9905 	.byte	-1
   4C23 18                 9906 	.byte	24
   4C24 02                 9907 	.byte	2
   4C25 00                 9908 	.byte	0
   4C26 EB                 9909 	.byte	-21
   4C27 0B                 9910 	.byte	11
   4C28 FF                 9911 	.byte	-1
   4C29 18                 9912 	.byte	24
   4C2A 02                 9913 	.byte	2
   4C2B 00                 9914 	.byte	0
   4C2C F2                 9915 	.byte	-14
   4C2D F9                 9916 	.byte	-7
   4C2E FF                 9917 	.byte	-1
   4C2F 17                 9918 	.byte	23
   4C30 02                 9919 	.byte	2
   4C31 00                 9920 	.byte	0
   4C32 E6                 9921 	.byte	-26
   4C33 F0                 9922 	.byte	-16
   4C34 FF                 9923 	.byte	-1
   4C35 17                 9924 	.byte	23
   4C36 02                 9925 	.byte	2
   4C37 00                 9926 	.byte	0
   4C38 F7                 9927 	.byte	-9
   4C39 06                 9928 	.byte	6
   4C3A FF                 9929 	.byte	-1
   4C3B 03                 9930 	.byte	3
   4C3C 0D                 9931 	.byte	13
   4C3D FF                 9932 	.byte	-1
   4C3E 09                 9933 	.byte	9
   4C3F FB                 9934 	.byte	-5
   4C40 FF                 9935 	.byte	-1
   4C41 FD                 9936 	.byte	-3
   4C42 F2                 9937 	.byte	-14
   4C43 FF                 9938 	.byte	-1
   4C44 F7                 9939 	.byte	-9
   4C45 06                 9940 	.byte	6
   4C46 01                 9941 	.byte	1
                           9942 	.globl _depth2RollingLeft10
   4C47                    9943 _depth2RollingLeft10:
   4C47 FF                 9944 	.byte	-1
   4C48 0D                 9945 	.byte	13
   4C49 04                 9946 	.byte	4
   4C4A FF                 9947 	.byte	-1
   4C4B 10                 9948 	.byte	16
   4C4C F5                 9949 	.byte	-11
   4C4D FF                 9950 	.byte	-1
   4C4E F3                 9951 	.byte	-13
   4C4F FC                 9952 	.byte	-4
   4C50 FF                 9953 	.byte	-1
   4C51 F0                 9954 	.byte	-16
   4C52 0B                 9955 	.byte	11
   4C53 FF                 9956 	.byte	-1
   4C54 00                 9957 	.byte	0
   4C55 F3                 9958 	.byte	-13
   4C56 00                 9959 	.byte	0
   4C57 0D                 9960 	.byte	13
   4C58 11                 9961 	.byte	17
   4C59 FF                 9962 	.byte	-1
   4C5A 01                 9963 	.byte	1
   4C5B F3                 9964 	.byte	-13
   4C5C 00                 9965 	.byte	0
   4C5D 0F                 9966 	.byte	15
   4C5E 02                 9967 	.byte	2
   4C5F FF                 9968 	.byte	-1
   4C60 01                 9969 	.byte	1
   4C61 F2                 9970 	.byte	-14
   4C62 00                 9971 	.byte	0
   4C63 F2                 9972 	.byte	-14
   4C64 0A                 9973 	.byte	10
   4C65 FF                 9974 	.byte	-1
   4C66 00                 9975 	.byte	0
   4C67 F2                 9976 	.byte	-14
   4C68 00                 9977 	.byte	0
   4C69 F0                 9978 	.byte	-16
   4C6A 0C                 9979 	.byte	12
   4C6B FF                 9980 	.byte	-1
   4C6C 0E                 9981 	.byte	14
   4C6D 04                 9982 	.byte	4
   4C6E FF                 9983 	.byte	-1
   4C6F 10                 9984 	.byte	16
   4C70 F4                 9985 	.byte	-12
   4C71 FF                 9986 	.byte	-1
   4C72 F2                 9987 	.byte	-14
   4C73 FC                 9988 	.byte	-4
   4C74 FF                 9989 	.byte	-1
   4C75 F0                 9990 	.byte	-16
   4C76 0C                 9991 	.byte	12
   4C77 01                 9992 	.byte	1
                           9993 	.globl _depth2RollingRight10
   4C78                    9994 _depth2RollingRight10:
   4C78 00                 9995 	.byte	0
   4C79 0F                 9996 	.byte	15
   4C7A 0A                 9997 	.byte	10
   4C7B FF                 9998 	.byte	-1
   4C7C F4                 9999 	.byte	-12
   4C7D 04                10000 	.byte	4
   4C7E FF                10001 	.byte	-1
   4C7F 10                10002 	.byte	16
   4C80 F4                10003 	.byte	-12
   4C81 FF                10004 	.byte	-1
   4C82 0C                10005 	.byte	12
   4C83 FD                10006 	.byte	-3
   4C84 FF                10007 	.byte	-1
   4C85 F0                10008 	.byte	-16
   4C86 0B                10009 	.byte	11
   4C87 FF                10010 	.byte	-1
   4C88 06                10011 	.byte	6
   4C89 0E                10012 	.byte	14
   4C8A 00                10013 	.byte	0
   4C8B EE                10014 	.byte	-18
   4C8C F6                10015 	.byte	-10
   4C8D FF                10016 	.byte	-1
   4C8E 06                10017 	.byte	6
   4C8F 0E                10018 	.byte	14
   4C90 00                10019 	.byte	0
   4C91 0A                10020 	.byte	10
   4C92 E6                10021 	.byte	-26
   4C93 FF                10022 	.byte	-1
   4C94 06                10023 	.byte	6
   4C95 0E                10024 	.byte	14
   4C96 00                10025 	.byte	0
   4C97 06                10026 	.byte	6
   4C98 EF                10027 	.byte	-17
   4C99 FF                10028 	.byte	-1
   4C9A 06                10029 	.byte	6
   4C9B 0D                10030 	.byte	13
   4C9C 00                10031 	.byte	0
   4C9D F0                10032 	.byte	-16
   4C9E 0C                10033 	.byte	12
   4C9F FF                10034 	.byte	-1
   4CA0 F4                10035 	.byte	-12
   4CA1 04                10036 	.byte	4
   4CA2 FF                10037 	.byte	-1
   4CA3 10                10038 	.byte	16
   4CA4 F4                10039 	.byte	-12
   4CA5 FF                10040 	.byte	-1
   4CA6 0C                10041 	.byte	12
   4CA7 FC                10042 	.byte	-4
   4CA8 FF                10043 	.byte	-1
   4CA9 F0                10044 	.byte	-16
   4CAA 0C                10045 	.byte	12
   4CAB 01                10046 	.byte	1
                          10047 	.globl _width2RollingFront10
   4CAC                   10048 _width2RollingFront10:
   4CAC FF                10049 	.byte	-1
   4CAD 06                10050 	.byte	6
   4CAE 1C                10051 	.byte	28
   4CAF FF                10052 	.byte	-1
   4CB0 0F                10053 	.byte	15
   4CB1 FE                10054 	.byte	-2
   4CB2 FF                10055 	.byte	-1
   4CB3 FA                10056 	.byte	-6
   4CB4 E5                10057 	.byte	-27
   4CB5 FF                10058 	.byte	-1
   4CB6 F1                10059 	.byte	-15
   4CB7 01                10060 	.byte	1
   4CB8 FF                10061 	.byte	-1
   4CB9 FD                10062 	.byte	-3
   4CBA 06                10063 	.byte	6
   4CBB 00                10064 	.byte	0
   4CBC 09                10065 	.byte	9
   4CBD 16                10066 	.byte	22
   4CBE FF                10067 	.byte	-1
   4CBF FC                10068 	.byte	-4
   4CC0 06                10069 	.byte	6
   4CC1 00                10070 	.byte	0
   4CC2 13                10071 	.byte	19
   4CC3 F8                10072 	.byte	-8
   4CC4 FF                10073 	.byte	-1
   4CC5 FB                10074 	.byte	-5
   4CC6 06                10075 	.byte	6
   4CC7 00                10076 	.byte	0
   4CC8 FF                10077 	.byte	-1
   4CC9 DF                10078 	.byte	-33
   4CCA FF                10079 	.byte	-1
   4CCB FB                10080 	.byte	-5
   4CCC 05                10081 	.byte	5
   4CCD 00                10082 	.byte	0
   4CCE F3                10083 	.byte	-13
   4CCF 02                10084 	.byte	2
   4CD0 FF                10085 	.byte	-1
   4CD1 05                10086 	.byte	5
   4CD2 1C                10087 	.byte	28
   4CD3 FF                10088 	.byte	-1
   4CD4 0E                10089 	.byte	14
   4CD5 FE                10090 	.byte	-2
   4CD6 FF                10091 	.byte	-1
   4CD7 FA                10092 	.byte	-6
   4CD8 E4                10093 	.byte	-28
   4CD9 FF                10094 	.byte	-1
   4CDA F3                10095 	.byte	-13
   4CDB 02                10096 	.byte	2
   4CDC 01                10097 	.byte	1
                          10098 	.globl _width2RollingBack10
   4CDD                   10099 _width2RollingBack10:
   4CDD 00                10100 	.byte	0
   4CDE 12                10101 	.byte	18
   4CDF FD                10102 	.byte	-3
   4CE0 FF                10103 	.byte	-1
   4CE1 06                10104 	.byte	6
   4CE2 1B                10105 	.byte	27
   4CE3 FF                10106 	.byte	-1
   4CE4 F6                10107 	.byte	-10
   4CE5 FE                10108 	.byte	-2
   4CE6 FF                10109 	.byte	-1
   4CE7 FA                10110 	.byte	-6
   4CE8 E5                10111 	.byte	-27
   4CE9 FF                10112 	.byte	-1
   4CEA 0A                10113 	.byte	10
   4CEB 02                10114 	.byte	2
   4CEC FF                10115 	.byte	-1
   4CED 0C                10116 	.byte	12
   4CEE FA                10117 	.byte	-6
   4CEF 00                10118 	.byte	0
   4CF0 FA                10119 	.byte	-6
   4CF1 21                10120 	.byte	33
   4CF2 FF                10121 	.byte	-1
   4CF3 0C                10122 	.byte	12
   4CF4 FA                10123 	.byte	-6
   4CF5 00                10124 	.byte	0
   4CF6 EA                10125 	.byte	-22
   4CF7 04                10126 	.byte	4
   4CF8 FF                10127 	.byte	-1
   4CF9 0B                10128 	.byte	11
   4CFA FA                10129 	.byte	-6
   4CFB 00                10130 	.byte	0
   4CFC EF                10131 	.byte	-17
   4CFD EB                10132 	.byte	-21
   4CFE FF                10133 	.byte	-1
   4CFF 0B                10134 	.byte	11
   4D00 FA                10135 	.byte	-6
   4D01 00                10136 	.byte	0
   4D02 0B                10137 	.byte	11
   4D03 02                10138 	.byte	2
   4D04 FF                10139 	.byte	-1
   4D05 06                10140 	.byte	6
   4D06 1B                10141 	.byte	27
   4D07 FF                10142 	.byte	-1
   4D08 F5                10143 	.byte	-11
   4D09 FE                10144 	.byte	-2
   4D0A FF                10145 	.byte	-1
   4D0B FA                10146 	.byte	-6
   4D0C E5                10147 	.byte	-27
   4D0D FF                10148 	.byte	-1
   4D0E 0B                10149 	.byte	11
   4D0F 02                10150 	.byte	2
   4D10 01                10151 	.byte	1
                          10152 	.globl _height2FallingLeft11
   4D11                   10153 _height2FallingLeft11:
   4D11 FF                10154 	.byte	-1
   4D12 0D                10155 	.byte	13
   4D13 02                10156 	.byte	2
   4D14 FF                10157 	.byte	-1
   4D15 08                10158 	.byte	8
   4D16 FB                10159 	.byte	-5
   4D17 FF                10160 	.byte	-1
   4D18 F3                10161 	.byte	-13
   4D19 FE                10162 	.byte	-2
   4D1A FF                10163 	.byte	-1
   4D1B F8                10164 	.byte	-8
   4D1C 05                10165 	.byte	5
   4D1D FF                10166 	.byte	-1
   4D1E FE                10167 	.byte	-2
   4D1F E5                10168 	.byte	-27
   4D20 00                10169 	.byte	0
   4D21 0F                10170 	.byte	15
   4D22 1D                10171 	.byte	29
   4D23 FF                10172 	.byte	-1
   4D24 FE                10173 	.byte	-2
   4D25 E5                10174 	.byte	-27
   4D26 00                10175 	.byte	0
   4D27 0A                10176 	.byte	10
   4D28 16                10177 	.byte	22
   4D29 FF                10178 	.byte	-1
   4D2A FE                10179 	.byte	-2
   4D2B E4                10180 	.byte	-28
   4D2C 00                10181 	.byte	0
   4D2D F5                10182 	.byte	-11
   4D2E 1A                10183 	.byte	26
   4D2F FF                10184 	.byte	-1
   4D30 FD                10185 	.byte	-3
   4D31 E4                10186 	.byte	-28
   4D32 00                10187 	.byte	0
   4D33 F9                10188 	.byte	-7
   4D34 06                10189 	.byte	6
   4D35 FF                10190 	.byte	-1
   4D36 0D                10191 	.byte	13
   4D37 02                10192 	.byte	2
   4D38 FF                10193 	.byte	-1
   4D39 08                10194 	.byte	8
   4D3A FA                10195 	.byte	-6
   4D3B FF                10196 	.byte	-1
   4D3C F2                10197 	.byte	-14
   4D3D FE                10198 	.byte	-2
   4D3E FF                10199 	.byte	-1
   4D3F F9                10200 	.byte	-7
   4D40 06                10201 	.byte	6
   4D41 01                10202 	.byte	1
                          10203 	.globl _height2RisingRight11
   4D42                   10204 _height2RisingRight11:
   4D42 00                10205 	.byte	0
   4D43 06                10206 	.byte	6
   4D44 1C                10207 	.byte	28
   4D45 FF                10208 	.byte	-1
   4D46 03                10209 	.byte	3
   4D47 0E                10210 	.byte	14
   4D48 FF                10211 	.byte	-1
   4D49 08                10212 	.byte	8
   4D4A FA                10213 	.byte	-6
   4D4B FF                10214 	.byte	-1
   4D4C FD                10215 	.byte	-3
   4D4D F2                10216 	.byte	-14
   4D4E FF                10217 	.byte	-1
   4D4F F8                10218 	.byte	-8
   4D50 06                10219 	.byte	6
   4D51 FF                10220 	.byte	-1
   4D52 1A                10221 	.byte	26
   4D53 00                10222 	.byte	0
   4D54 00                10223 	.byte	0
   4D55 E9                10224 	.byte	-23
   4D56 0E                10225 	.byte	14
   4D57 FF                10226 	.byte	-1
   4D58 1A                10227 	.byte	26
   4D59 00                10228 	.byte	0
   4D5A 00                10229 	.byte	0
   4D5B EE                10230 	.byte	-18
   4D5C FA                10231 	.byte	-6
   4D5D FF                10232 	.byte	-1
   4D5E 1A                10233 	.byte	26
   4D5F 00                10234 	.byte	0
   4D60 00                10235 	.byte	0
   4D61 E3                10236 	.byte	-29
   4D62 F2                10237 	.byte	-14
   4D63 FF                10238 	.byte	-1
   4D64 1A                10239 	.byte	26
   4D65 00                10240 	.byte	0
   4D66 00                10241 	.byte	0
   4D67 F8                10242 	.byte	-8
   4D68 06                10243 	.byte	6
   4D69 FF                10244 	.byte	-1
   4D6A 03                10245 	.byte	3
   4D6B 0E                10246 	.byte	14
   4D6C FF                10247 	.byte	-1
   4D6D 08                10248 	.byte	8
   4D6E FA                10249 	.byte	-6
   4D6F FF                10250 	.byte	-1
   4D70 FD                10251 	.byte	-3
   4D71 F2                10252 	.byte	-14
   4D72 FF                10253 	.byte	-1
   4D73 F8                10254 	.byte	-8
   4D74 06                10255 	.byte	6
   4D75 01                10256 	.byte	1
                          10257 	.globl _height2FallingRight11
   4D76                   10258 _height2FallingRight11:
   4D76 00                10259 	.byte	0
   4D77 0F                10260 	.byte	15
   4D78 0C                10261 	.byte	12
   4D79 FF                10262 	.byte	-1
   4D7A F4                10263 	.byte	-12
   4D7B 02                10264 	.byte	2
   4D7C FF                10265 	.byte	-1
   4D7D 08                10266 	.byte	8
   4D7E FA                10267 	.byte	-6
   4D7F FF                10268 	.byte	-1
   4D80 0C                10269 	.byte	12
   4D81 FE                10270 	.byte	-2
   4D82 FF                10271 	.byte	-1
   4D83 F8                10272 	.byte	-8
   4D84 06                10273 	.byte	6
   4D85 FF                10274 	.byte	-1
   4D86 0A                10275 	.byte	10
   4D87 1C                10276 	.byte	28
   4D88 00                10277 	.byte	0
   4D89 EA                10278 	.byte	-22
   4D8A E6                10279 	.byte	-26
   4D8B FF                10280 	.byte	-1
   4D8C 09                10281 	.byte	9
   4D8D 1C                10282 	.byte	28
   4D8E 00                10283 	.byte	0
   4D8F FF                10284 	.byte	-1
   4D90 DE                10285 	.byte	-34
   4D91 FF                10286 	.byte	-1
   4D92 09                10287 	.byte	9
   4D93 1C                10288 	.byte	28
   4D94 00                10289 	.byte	0
   4D95 03                10290 	.byte	3
   4D96 E2                10291 	.byte	-30
   4D97 FF                10292 	.byte	-1
   4D98 0A                10293 	.byte	10
   4D99 1C                10294 	.byte	28
   4D9A 00                10295 	.byte	0
   4D9B F8                10296 	.byte	-8
   4D9C 06                10297 	.byte	6
   4D9D FF                10298 	.byte	-1
   4D9E F3                10299 	.byte	-13
   4D9F 02                10300 	.byte	2
   4DA0 FF                10301 	.byte	-1
   4DA1 08                10302 	.byte	8
   4DA2 FA                10303 	.byte	-6
   4DA3 FF                10304 	.byte	-1
   4DA4 0D                10305 	.byte	13
   4DA5 FE                10306 	.byte	-2
   4DA6 FF                10307 	.byte	-1
   4DA7 F8                10308 	.byte	-8
   4DA8 06                10309 	.byte	6
   4DA9 01                10310 	.byte	1
                          10311 	.globl _height2RisingLeft11
   4DAA                   10312 _height2RisingLeft11:
   4DAA 00                10313 	.byte	0
   4DAB FE                10314 	.byte	-2
   4DAC F3                10315 	.byte	-13
   4DAD FF                10316 	.byte	-1
   4DAE 02                10317 	.byte	2
   4DAF 0D                10318 	.byte	13
   4DB0 FF                10319 	.byte	-1
   4DB1 08                10320 	.byte	8
   4DB2 FB                10321 	.byte	-5
   4DB3 FF                10322 	.byte	-1
   4DB4 FD                10323 	.byte	-3
   4DB5 F2                10324 	.byte	-14
   4DB6 FF                10325 	.byte	-1
   4DB7 F9                10326 	.byte	-7
   4DB8 06                10327 	.byte	6
   4DB9 FF                10328 	.byte	-1
   4DBA 19                10329 	.byte	25
   4DBB 00                10330 	.byte	0
   4DBC 00                10331 	.byte	0
   4DBD E9                10332 	.byte	-23
   4DBE 0D                10333 	.byte	13
   4DBF FF                10334 	.byte	-1
   4DC0 1A                10335 	.byte	26
   4DC1 00                10336 	.byte	0
   4DC2 00                10337 	.byte	0
   4DC3 EE                10338 	.byte	-18
   4DC4 FB                10339 	.byte	-5
   4DC5 FF                10340 	.byte	-1
   4DC6 1A                10341 	.byte	26
   4DC7 00                10342 	.byte	0
   4DC8 00                10343 	.byte	0
   4DC9 E3                10344 	.byte	-29
   4DCA F2                10345 	.byte	-14
   4DCB FF                10346 	.byte	-1
   4DCC 1A                10347 	.byte	26
   4DCD 00                10348 	.byte	0
   4DCE 00                10349 	.byte	0
   4DCF F8                10350 	.byte	-8
   4DD0 06                10351 	.byte	6
   4DD1 FF                10352 	.byte	-1
   4DD2 03                10353 	.byte	3
   4DD3 0D                10354 	.byte	13
   4DD4 FF                10355 	.byte	-1
   4DD5 08                10356 	.byte	8
   4DD6 FB                10357 	.byte	-5
   4DD7 FF                10358 	.byte	-1
   4DD8 FD                10359 	.byte	-3
   4DD9 F2                10360 	.byte	-14
   4DDA FF                10361 	.byte	-1
   4DDB F8                10362 	.byte	-8
   4DDC 06                10363 	.byte	6
   4DDD 01                10364 	.byte	1
                          10365 	.globl _height2FallingBack11
   4DDE                   10366 _height2FallingBack11:
   4DDE 00                10367 	.byte	0
   4DDF 14                10368 	.byte	20
   4DE0 FC                10369 	.byte	-4
   4DE1 FF                10370 	.byte	-1
   4DE2 03                10371 	.byte	3
   4DE3 0D                10372 	.byte	13
   4DE4 FF                10373 	.byte	-1
   4DE5 F4                10374 	.byte	-12
   4DE6 FF                10375 	.byte	-1
   4DE7 FF                10376 	.byte	-1
   4DE8 FD                10377 	.byte	-3
   4DE9 F3                10378 	.byte	-13
   4DEA FF                10379 	.byte	-1
   4DEB 0C                10380 	.byte	12
   4DEC 01                10381 	.byte	1
   4DED FF                10382 	.byte	-1
   4DEE 13                10383 	.byte	19
   4DEF F4                10384 	.byte	-12
   4DF0 00                10385 	.byte	0
   4DF1 F0                10386 	.byte	-16
   4DF2 19                10387 	.byte	25
   4DF3 FF                10388 	.byte	-1
   4DF4 13                10389 	.byte	19
   4DF5 F5                10390 	.byte	-11
   4DF6 00                10391 	.byte	0
   4DF7 E1                10392 	.byte	-31
   4DF8 0A                10393 	.byte	10
   4DF9 FF                10394 	.byte	-1
   4DFA 13                10395 	.byte	19
   4DFB F5                10396 	.byte	-11
   4DFC 00                10397 	.byte	0
   4DFD EA                10398 	.byte	-22
   4DFE FE                10399 	.byte	-2
   4DFF FF                10400 	.byte	-1
   4E00 13                10401 	.byte	19
   4E01 F4                10402 	.byte	-12
   4E02 00                10403 	.byte	0
   4E03 0C                10404 	.byte	12
   4E04 01                10405 	.byte	1
   4E05 FF                10406 	.byte	-1
   4E06 03                10407 	.byte	3
   4E07 0E                10408 	.byte	14
   4E08 FF                10409 	.byte	-1
   4E09 F4                10410 	.byte	-12
   4E0A FF                10411 	.byte	-1
   4E0B FF                10412 	.byte	-1
   4E0C FD                10413 	.byte	-3
   4E0D F2                10414 	.byte	-14
   4E0E FF                10415 	.byte	-1
   4E0F 0C                10416 	.byte	12
   4E10 01                10417 	.byte	1
   4E11 01                10418 	.byte	1
                          10419 	.globl _height2RisingFront11
   4E12                   10420 _height2RisingFront11:
   4E12 00                10421 	.byte	0
   4E13 F9                10422 	.byte	-7
   4E14 06                10423 	.byte	6
   4E15 FF                10424 	.byte	-1
   4E16 03                10425 	.byte	3
   4E17 0E                10426 	.byte	14
   4E18 FF                10427 	.byte	-1
   4E19 07                10428 	.byte	7
   4E1A FA                10429 	.byte	-6
   4E1B FF                10430 	.byte	-1
   4E1C FD                10431 	.byte	-3
   4E1D F2                10432 	.byte	-14
   4E1E FF                10433 	.byte	-1
   4E1F F9                10434 	.byte	-7
   4E20 06                10435 	.byte	6
   4E21 FF                10436 	.byte	-1
   4E22 19                10437 	.byte	25
   4E23 00                10438 	.byte	0
   4E24 00                10439 	.byte	0
   4E25 EA                10440 	.byte	-22
   4E26 0E                10441 	.byte	14
   4E27 FF                10442 	.byte	-1
   4E28 19                10443 	.byte	25
   4E29 00                10444 	.byte	0
   4E2A 00                10445 	.byte	0
   4E2B EE                10446 	.byte	-18
   4E2C FA                10447 	.byte	-6
   4E2D FF                10448 	.byte	-1
   4E2E 1A                10449 	.byte	26
   4E2F 00                10450 	.byte	0
   4E30 00                10451 	.byte	0
   4E31 E3                10452 	.byte	-29
   4E32 F2                10453 	.byte	-14
   4E33 FF                10454 	.byte	-1
   4E34 1A                10455 	.byte	26
   4E35 00                10456 	.byte	0
   4E36 00                10457 	.byte	0
   4E37 F8                10458 	.byte	-8
   4E38 06                10459 	.byte	6
   4E39 FF                10460 	.byte	-1
   4E3A 03                10461 	.byte	3
   4E3B 0E                10462 	.byte	14
   4E3C FF                10463 	.byte	-1
   4E3D 08                10464 	.byte	8
   4E3E FA                10465 	.byte	-6
   4E3F FF                10466 	.byte	-1
   4E40 FD                10467 	.byte	-3
   4E41 F2                10468 	.byte	-14
   4E42 FF                10469 	.byte	-1
   4E43 F8                10470 	.byte	-8
   4E44 06                10471 	.byte	6
   4E45 01                10472 	.byte	1
                          10473 	.globl _height2FallingFront11
   4E46                   10474 _height2FallingFront11:
   4E46 FF                10475 	.byte	-1
   4E47 03                10476 	.byte	3
   4E48 0E                10477 	.byte	14
   4E49 FF                10478 	.byte	-1
   4E4A 0E                10479 	.byte	14
   4E4B FF                10480 	.byte	-1
   4E4C FF                10481 	.byte	-1
   4E4D FD                10482 	.byte	-3
   4E4E F3                10483 	.byte	-13
   4E4F FF                10484 	.byte	-1
   4E50 F2                10485 	.byte	-14
   4E51 00                10486 	.byte	0
   4E52 FF                10487 	.byte	-1
   4E53 F5                10488 	.byte	-11
   4E54 0C                10489 	.byte	12
   4E55 00                10490 	.byte	0
   4E56 0E                10491 	.byte	14
   4E57 02                10492 	.byte	2
   4E58 FF                10493 	.byte	-1
   4E59 F5                10494 	.byte	-11
   4E5A 0C                10495 	.byte	12
   4E5B 00                10496 	.byte	0
   4E5C 19                10497 	.byte	25
   4E5D F3                10498 	.byte	-13
   4E5E FF                10499 	.byte	-1
   4E5F F3                10500 	.byte	-13
   4E60 0C                10501 	.byte	12
   4E61 00                10502 	.byte	0
   4E62 0A                10503 	.byte	10
   4E63 E7                10504 	.byte	-25
   4E64 FF                10505 	.byte	-1
   4E65 F3                10506 	.byte	-13
   4E66 0B                10507 	.byte	11
   4E67 00                10508 	.byte	0
   4E68 F4                10509 	.byte	-12
   4E69 01                10510 	.byte	1
   4E6A FF                10511 	.byte	-1
   4E6B 03                10512 	.byte	3
   4E6C 0E                10513 	.byte	14
   4E6D FF                10514 	.byte	-1
   4E6E 0C                10515 	.byte	12
   4E6F FF                10516 	.byte	-1
   4E70 FF                10517 	.byte	-1
   4E71 FD                10518 	.byte	-3
   4E72 F2                10519 	.byte	-14
   4E73 FF                10520 	.byte	-1
   4E74 F4                10521 	.byte	-12
   4E75 01                10522 	.byte	1
   4E76 01                10523 	.byte	1
                          10524 	.globl _height2RisingBack11
   4E77                   10525 _height2RisingBack11:
   4E77 00                10526 	.byte	0
   4E78 10                10527 	.byte	16
   4E79 F5                10528 	.byte	-11
   4E7A FF                10529 	.byte	-1
   4E7B 03                10530 	.byte	3
   4E7C 0D                10531 	.byte	13
   4E7D FF                10532 	.byte	-1
   4E7E 08                10533 	.byte	8
   4E7F FB                10534 	.byte	-5
   4E80 FF                10535 	.byte	-1
   4E81 FD                10536 	.byte	-3
   4E82 F2                10537 	.byte	-14
   4E83 FF                10538 	.byte	-1
   4E84 F8                10539 	.byte	-8
   4E85 06                10540 	.byte	6
   4E86 FF                10541 	.byte	-1
   4E87 1A                10542 	.byte	26
   4E88 00                10543 	.byte	0
   4E89 00                10544 	.byte	0
   4E8A E9                10545 	.byte	-23
   4E8B 0D                10546 	.byte	13
   4E8C FF                10547 	.byte	-1
   4E8D 1A                10548 	.byte	26
   4E8E 00                10549 	.byte	0
   4E8F 00                10550 	.byte	0
   4E90 EE                10551 	.byte	-18
   4E91 FB                10552 	.byte	-5
   4E92 FF                10553 	.byte	-1
   4E93 1A                10554 	.byte	26
   4E94 00                10555 	.byte	0
   4E95 00                10556 	.byte	0
   4E96 E3                10557 	.byte	-29
   4E97 F2                10558 	.byte	-14
   4E98 FF                10559 	.byte	-1
   4E99 1A                10560 	.byte	26
   4E9A 00                10561 	.byte	0
   4E9B 00                10562 	.byte	0
   4E9C F8                10563 	.byte	-8
   4E9D 06                10564 	.byte	6
   4E9E FF                10565 	.byte	-1
   4E9F 03                10566 	.byte	3
   4EA0 0D                10567 	.byte	13
   4EA1 FF                10568 	.byte	-1
   4EA2 08                10569 	.byte	8
   4EA3 FB                10570 	.byte	-5
   4EA4 FF                10571 	.byte	-1
   4EA5 FD                10572 	.byte	-3
   4EA6 F2                10573 	.byte	-14
   4EA7 FF                10574 	.byte	-1
   4EA8 F8                10575 	.byte	-8
   4EA9 06                10576 	.byte	6
   4EAA 01                10577 	.byte	1
                          10578 	.globl _depth2RollingLeft11
   4EAB                   10579 _depth2RollingLeft11:
   4EAB FF                10580 	.byte	-1
   4EAC 0D                10581 	.byte	13
   4EAD 02                10582 	.byte	2
   4EAE FF                10583 	.byte	-1
   4EAF 10                10584 	.byte	16
   4EB0 F5                10585 	.byte	-11
   4EB1 FF                10586 	.byte	-1
   4EB2 F3                10587 	.byte	-13
   4EB3 FE                10588 	.byte	-2
   4EB4 FF                10589 	.byte	-1
   4EB5 F0                10590 	.byte	-16
   4EB6 0B                10591 	.byte	11
   4EB7 FF                10592 	.byte	-1
   4EB8 00                10593 	.byte	0
   4EB9 F3                10594 	.byte	-13
   4EBA 00                10595 	.byte	0
   4EBB 0D                10596 	.byte	13
   4EBC 0F                10597 	.byte	15
   4EBD FF                10598 	.byte	-1
   4EBE FF                10599 	.byte	-1
   4EBF F3                10600 	.byte	-13
   4EC0 00                10601 	.byte	0
   4EC1 11                10602 	.byte	17
   4EC2 02                10603 	.byte	2
   4EC3 FF                10604 	.byte	-1
   4EC4 FF                10605 	.byte	-1
   4EC5 F2                10606 	.byte	-14
   4EC6 00                10607 	.byte	0
   4EC7 F4                10608 	.byte	-12
   4EC8 0C                10609 	.byte	12
   4EC9 FF                10610 	.byte	-1
   4ECA FF                10611 	.byte	-1
   4ECB F2                10612 	.byte	-14
   4ECC 00                10613 	.byte	0
   4ECD F1                10614 	.byte	-15
   4ECE 0C                10615 	.byte	12
   4ECF FF                10616 	.byte	-1
   4ED0 0C                10617 	.byte	12
   4ED1 02                10618 	.byte	2
   4ED2 FF                10619 	.byte	-1
   4ED3 10                10620 	.byte	16
   4ED4 F4                10621 	.byte	-12
   4ED5 FF                10622 	.byte	-1
   4ED6 F3                10623 	.byte	-13
   4ED7 FE                10624 	.byte	-2
   4ED8 FF                10625 	.byte	-1
   4ED9 F1                10626 	.byte	-15
   4EDA 0C                10627 	.byte	12
   4EDB 01                10628 	.byte	1
                          10629 	.globl _depth2RollingRight11
   4EDC                   10630 _depth2RollingRight11:
   4EDC 00                10631 	.byte	0
   4EDD 0F                10632 	.byte	15
   4EDE 0C                10633 	.byte	12
   4EDF FF                10634 	.byte	-1
   4EE0 F4                10635 	.byte	-12
   4EE1 02                10636 	.byte	2
   4EE2 FF                10637 	.byte	-1
   4EE3 10                10638 	.byte	16
   4EE4 F4                10639 	.byte	-12
   4EE5 FF                10640 	.byte	-1
   4EE6 0C                10641 	.byte	12
   4EE7 FE                10642 	.byte	-2
   4EE8 FF                10643 	.byte	-1
   4EE9 F0                10644 	.byte	-16
   4EEA 0C                10645 	.byte	12
   4EEB FF                10646 	.byte	-1
   4EEC 05                10647 	.byte	5
   4EED 0E                10648 	.byte	14
   4EEE 00                10649 	.byte	0
   4EEF EF                10650 	.byte	-17
   4EF0 F4                10651 	.byte	-12
   4EF1 FF                10652 	.byte	-1
   4EF2 05                10653 	.byte	5
   4EF3 0E                10654 	.byte	14
   4EF4 00                10655 	.byte	0
   4EF5 0B                10656 	.byte	11
   4EF6 E6                10657 	.byte	-26
   4EF7 FF                10658 	.byte	-1
   4EF8 05                10659 	.byte	5
   4EF9 0E                10660 	.byte	14
   4EFA 00                10661 	.byte	0
   4EFB 07                10662 	.byte	7
   4EFC F0                10663 	.byte	-16
   4EFD FF                10664 	.byte	-1
   4EFE 05                10665 	.byte	5
   4EFF 0E                10666 	.byte	14
   4F00 00                10667 	.byte	0
   4F01 F0                10668 	.byte	-16
   4F02 0C                10669 	.byte	12
   4F03 FF                10670 	.byte	-1
   4F04 F4                10671 	.byte	-12
   4F05 02                10672 	.byte	2
   4F06 FF                10673 	.byte	-1
   4F07 10                10674 	.byte	16
   4F08 F4                10675 	.byte	-12
   4F09 FF                10676 	.byte	-1
   4F0A 0C                10677 	.byte	12
   4F0B FE                10678 	.byte	-2
   4F0C FF                10679 	.byte	-1
   4F0D F0                10680 	.byte	-16
   4F0E 0C                10681 	.byte	12
   4F0F 01                10682 	.byte	1
                          10683 	.globl _width2RollingFront11
   4F10                   10684 _width2RollingFront11:
   4F10 FF                10685 	.byte	-1
   4F11 06                10686 	.byte	6
   4F12 1C                10687 	.byte	28
   4F13 FF                10688 	.byte	-1
   4F14 0E                10689 	.byte	14
   4F15 FF                10690 	.byte	-1
   4F16 FF                10691 	.byte	-1
   4F17 FA                10692 	.byte	-6
   4F18 E5                10693 	.byte	-27
   4F19 FF                10694 	.byte	-1
   4F1A F2                10695 	.byte	-14
   4F1B 00                10696 	.byte	0
   4F1C FF                10697 	.byte	-1
   4F1D FB                10698 	.byte	-5
   4F1E 06                10699 	.byte	6
   4F1F 00                10700 	.byte	0
   4F20 0B                10701 	.byte	11
   4F21 16                10702 	.byte	22
   4F22 FF                10703 	.byte	-1
   4F23 FA                10704 	.byte	-6
   4F24 06                10705 	.byte	6
   4F25 00                10706 	.byte	0
   4F26 14                10707 	.byte	20
   4F27 F9                10708 	.byte	-7
   4F28 FF                10709 	.byte	-1
   4F29 FA                10710 	.byte	-6
   4F2A 06                10711 	.byte	6
   4F2B 00                10712 	.byte	0
   4F2C 00                10713 	.byte	0
   4F2D DF                10714 	.byte	-33
   4F2E FF                10715 	.byte	-1
   4F2F FA                10716 	.byte	-6
   4F30 05                10717 	.byte	5
   4F31 00                10718 	.byte	0
   4F32 F3                10719 	.byte	-13
   4F33 01                10720 	.byte	1
   4F34 FF                10721 	.byte	-1
   4F35 05                10722 	.byte	5
   4F36 1C                10723 	.byte	28
   4F37 FF                10724 	.byte	-1
   4F38 0E                10725 	.byte	14
   4F39 FF                10726 	.byte	-1
   4F3A FF                10727 	.byte	-1
   4F3B FA                10728 	.byte	-6
   4F3C E4                10729 	.byte	-28
   4F3D FF                10730 	.byte	-1
   4F3E F3                10731 	.byte	-13
   4F3F 01                10732 	.byte	1
   4F40 01                10733 	.byte	1
                          10734 	.globl _width2RollingBack11
   4F41                   10735 _width2RollingBack11:
   4F41 00                10736 	.byte	0
   4F42 14                10737 	.byte	20
   4F43 FC                10738 	.byte	-4
   4F44 FF                10739 	.byte	-1
   4F45 06                10740 	.byte	6
   4F46 1B                10741 	.byte	27
   4F47 FF                10742 	.byte	-1
   4F48 F4                10743 	.byte	-12
   4F49 FF                10744 	.byte	-1
   4F4A FF                10745 	.byte	-1
   4F4B FA                10746 	.byte	-6
   4F4C E5                10747 	.byte	-27
   4F4D FF                10748 	.byte	-1
   4F4E 0C                10749 	.byte	12
   4F4F 01                10750 	.byte	1
   4F50 FF                10751 	.byte	-1
   4F51 09                10752 	.byte	9
   4F52 FA                10753 	.byte	-6
   4F53 00                10754 	.byte	0
   4F54 FD                10755 	.byte	-3
   4F55 21                10756 	.byte	33
   4F56 FF                10757 	.byte	-1
   4F57 09                10758 	.byte	9
   4F58 FA                10759 	.byte	-6
   4F59 00                10760 	.byte	0
   4F5A EB                10761 	.byte	-21
   4F5B 05                10762 	.byte	5
   4F5C FF                10763 	.byte	-1
   4F5D 0A                10764 	.byte	10
   4F5E FA                10765 	.byte	-6
   4F5F 00                10766 	.byte	0
   4F60 F0                10767 	.byte	-16
   4F61 EB                10768 	.byte	-21
   4F62 FF                10769 	.byte	-1
   4F63 0A                10770 	.byte	10
   4F64 FA                10771 	.byte	-6
   4F65 00                10772 	.byte	0
   4F66 0B                10773 	.byte	11
   4F67 01                10774 	.byte	1
   4F68 FF                10775 	.byte	-1
   4F69 06                10776 	.byte	6
   4F6A 1B                10777 	.byte	27
   4F6B FF                10778 	.byte	-1
   4F6C F5                10779 	.byte	-11
   4F6D FF                10780 	.byte	-1
   4F6E FF                10781 	.byte	-1
   4F6F FA                10782 	.byte	-6
   4F70 E5                10783 	.byte	-27
   4F71 FF                10784 	.byte	-1
   4F72 0B                10785 	.byte	11
   4F73 01                10786 	.byte	1
   4F74 01                10787 	.byte	1
                          10788 	.globl _height2FallingLeft12
   4F75                   10789 _height2FallingLeft12:
   4F75 FF                10790 	.byte	-1
   4F76 0D                10791 	.byte	13
   4F77 00                10792 	.byte	0
   4F78 FF                10793 	.byte	-1
   4F79 08                10794 	.byte	8
   4F7A FB                10795 	.byte	-5
   4F7B FF                10796 	.byte	-1
   4F7C F3                10797 	.byte	-13
   4F7D 00                10798 	.byte	0
   4F7E FF                10799 	.byte	-1
   4F7F F8                10800 	.byte	-8
   4F80 05                10801 	.byte	5
   4F81 FF                10802 	.byte	-1
   4F82 FB                10803 	.byte	-5
   4F83 E5                10804 	.byte	-27
   4F84 00                10805 	.byte	0
   4F85 12                10806 	.byte	18
   4F86 1B                10807 	.byte	27
   4F87 FF                10808 	.byte	-1
   4F88 FA                10809 	.byte	-6
   4F89 E5                10810 	.byte	-27
   4F8A 00                10811 	.byte	0
   4F8B 0E                10812 	.byte	14
   4F8C 16                10813 	.byte	22
   4F8D FF                10814 	.byte	-1
   4F8E FA                10815 	.byte	-6
   4F8F E4                10816 	.byte	-28
   4F90 00                10817 	.byte	0
   4F91 F9                10818 	.byte	-7
   4F92 1C                10819 	.byte	28
   4F93 FF                10820 	.byte	-1
   4F94 FA                10821 	.byte	-6
   4F95 E4                10822 	.byte	-28
   4F96 00                10823 	.byte	0
   4F97 F9                10824 	.byte	-7
   4F98 06                10825 	.byte	6
   4F99 FF                10826 	.byte	-1
   4F9A 0C                10827 	.byte	12
   4F9B 00                10828 	.byte	0
   4F9C FF                10829 	.byte	-1
   4F9D 08                10830 	.byte	8
   4F9E FA                10831 	.byte	-6
   4F9F FF                10832 	.byte	-1
   4FA0 F3                10833 	.byte	-13
   4FA1 00                10834 	.byte	0
   4FA2 FF                10835 	.byte	-1
   4FA3 F9                10836 	.byte	-7
   4FA4 06                10837 	.byte	6
   4FA5 01                10838 	.byte	1
                          10839 	.globl _height2RisingRight12
   4FA6                   10840 _height2RisingRight12:
   4FA6 00                10841 	.byte	0
   4FA7 06                10842 	.byte	6
   4FA8 1C                10843 	.byte	28
   4FA9 FF                10844 	.byte	-1
   4FAA 01                10845 	.byte	1
   4FAB 0E                10846 	.byte	14
   4FAC FF                10847 	.byte	-1
   4FAD 08                10848 	.byte	8
   4FAE FA                10849 	.byte	-6
   4FAF FF                10850 	.byte	-1
   4FB0 FF                10851 	.byte	-1
   4FB1 F2                10852 	.byte	-14
   4FB2 FF                10853 	.byte	-1
   4FB3 F8                10854 	.byte	-8
   4FB4 06                10855 	.byte	6
   4FB5 FF                10856 	.byte	-1
   4FB6 1B                10857 	.byte	27
   4FB7 04                10858 	.byte	4
   4FB8 00                10859 	.byte	0
   4FB9 E6                10860 	.byte	-26
   4FBA 0A                10861 	.byte	10
   4FBB FF                10862 	.byte	-1
   4FBC 1B                10863 	.byte	27
   4FBD 04                10864 	.byte	4
   4FBE 00                10865 	.byte	0
   4FBF ED                10866 	.byte	-19
   4FC0 F6                10867 	.byte	-10
   4FC1 FF                10868 	.byte	-1
   4FC2 1B                10869 	.byte	27
   4FC3 04                10870 	.byte	4
   4FC4 00                10871 	.byte	0
   4FC5 E4                10872 	.byte	-28
   4FC6 EE                10873 	.byte	-18
   4FC7 FF                10874 	.byte	-1
   4FC8 1B                10875 	.byte	27
   4FC9 04                10876 	.byte	4
   4FCA 00                10877 	.byte	0
   4FCB F8                10878 	.byte	-8
   4FCC 06                10879 	.byte	6
   4FCD FF                10880 	.byte	-1
   4FCE 01                10881 	.byte	1
   4FCF 0E                10882 	.byte	14
   4FD0 FF                10883 	.byte	-1
   4FD1 08                10884 	.byte	8
   4FD2 FA                10885 	.byte	-6
   4FD3 FF                10886 	.byte	-1
   4FD4 FF                10887 	.byte	-1
   4FD5 F2                10888 	.byte	-14
   4FD6 FF                10889 	.byte	-1
   4FD7 F8                10890 	.byte	-8
   4FD8 06                10891 	.byte	6
   4FD9 01                10892 	.byte	1
                          10893 	.globl _height2FallingRight12
   4FDA                   10894 _height2FallingRight12:
   4FDA 00                10895 	.byte	0
   4FDB 10                10896 	.byte	16
   4FDC 0E                10897 	.byte	14
   4FDD FF                10898 	.byte	-1
   4FDE F3                10899 	.byte	-13
   4FDF 00                10900 	.byte	0
   4FE0 FF                10901 	.byte	-1
   4FE1 08                10902 	.byte	8
   4FE2 FA                10903 	.byte	-6
   4FE3 FF                10904 	.byte	-1
   4FE4 0D                10905 	.byte	13
   4FE5 00                10906 	.byte	0
   4FE6 FF                10907 	.byte	-1
   4FE7 F8                10908 	.byte	-8
   4FE8 06                10909 	.byte	6
   4FE9 FF                10910 	.byte	-1
   4FEA 06                10911 	.byte	6
   4FEB 1C                10912 	.byte	28
   4FEC 00                10913 	.byte	0
   4FED ED                10914 	.byte	-19
   4FEE E4                10915 	.byte	-28
   4FEF FF                10916 	.byte	-1
   4FF0 06                10917 	.byte	6
   4FF1 1C                10918 	.byte	28
   4FF2 00                10919 	.byte	0
   4FF3 02                10920 	.byte	2
   4FF4 DE                10921 	.byte	-34
   4FF5 FF                10922 	.byte	-1
   4FF6 06                10923 	.byte	6
   4FF7 1C                10924 	.byte	28
   4FF8 00                10925 	.byte	0
   4FF9 07                10926 	.byte	7
   4FFA E4                10927 	.byte	-28
   4FFB FF                10928 	.byte	-1
   4FFC 06                10929 	.byte	6
   4FFD 1C                10930 	.byte	28
   4FFE 00                10931 	.byte	0
   4FFF F8                10932 	.byte	-8
   5000 06                10933 	.byte	6
   5001 FF                10934 	.byte	-1
   5002 F3                10935 	.byte	-13
   5003 00                10936 	.byte	0
   5004 FF                10937 	.byte	-1
   5005 08                10938 	.byte	8
   5006 FA                10939 	.byte	-6
   5007 FF                10940 	.byte	-1
   5008 0D                10941 	.byte	13
   5009 00                10942 	.byte	0
   500A FF                10943 	.byte	-1
   500B F8                10944 	.byte	-8
   500C 06                10945 	.byte	6
   500D 01                10946 	.byte	1
                          10947 	.globl _height2RisingLeft12
   500E                   10948 _height2RisingLeft12:
   500E 00                10949 	.byte	0
   500F FC                10950 	.byte	-4
   5010 F3                10951 	.byte	-13
   5011 FF                10952 	.byte	-1
   5012 04                10953 	.byte	4
   5013 0D                10954 	.byte	13
   5014 FF                10955 	.byte	-1
   5015 08                10956 	.byte	8
   5016 FB                10957 	.byte	-5
   5017 FF                10958 	.byte	-1
   5018 FB                10959 	.byte	-5
   5019 F2                10960 	.byte	-14
   501A FF                10961 	.byte	-1
   501B F9                10962 	.byte	-7
   501C 06                10963 	.byte	6
   501D FF                10964 	.byte	-1
   501E 18                10965 	.byte	24
   501F FC                10966 	.byte	-4
   5020 00                10967 	.byte	0
   5021 EC                10968 	.byte	-20
   5022 11                10969 	.byte	17
   5023 FF                10970 	.byte	-1
   5024 19                10971 	.byte	25
   5025 FD                10972 	.byte	-3
   5026 00                10973 	.byte	0
   5027 EF                10974 	.byte	-17
   5028 FE                10975 	.byte	-2
   5029 FF                10976 	.byte	-1
   502A 19                10977 	.byte	25
   502B FC                10978 	.byte	-4
   502C 00                10979 	.byte	0
   502D E2                10980 	.byte	-30
   502E F6                10981 	.byte	-10
   502F FF                10982 	.byte	-1
   5030 19                10983 	.byte	25
   5031 FC                10984 	.byte	-4
   5032 00                10985 	.byte	0
   5033 F8                10986 	.byte	-8
   5034 06                10987 	.byte	6
   5035 FF                10988 	.byte	-1
   5036 05                10989 	.byte	5
   5037 0E                10990 	.byte	14
   5038 FF                10991 	.byte	-1
   5039 08                10992 	.byte	8
   503A FA                10993 	.byte	-6
   503B FF                10994 	.byte	-1
   503C FB                10995 	.byte	-5
   503D F2                10996 	.byte	-14
   503E FF                10997 	.byte	-1
   503F F8                10998 	.byte	-8
   5040 06                10999 	.byte	6
   5041 01                11000 	.byte	1
                          11001 	.globl _height2FallingBack12
   5042                   11002 _height2FallingBack12:
   5042 00                11003 	.byte	0
   5043 15                11004 	.byte	21
   5044 FB                11005 	.byte	-5
   5045 FF                11006 	.byte	-1
   5046 03                11007 	.byte	3
   5047 0D                11008 	.byte	13
   5048 FF                11009 	.byte	-1
   5049 F3                11010 	.byte	-13
   504A 00                11011 	.byte	0
   504B FF                11012 	.byte	-1
   504C FD                11013 	.byte	-3
   504D F3                11014 	.byte	-13
   504E FF                11015 	.byte	-1
   504F 0D                11016 	.byte	13
   5050 00                11017 	.byte	0
   5051 FF                11018 	.byte	-1
   5052 10                11019 	.byte	16
   5053 F4                11020 	.byte	-12
   5054 00                11021 	.byte	0
   5055 F3                11022 	.byte	-13
   5056 19                11023 	.byte	25
   5057 FF                11024 	.byte	-1
   5058 10                11025 	.byte	16
   5059 F5                11026 	.byte	-11
   505A 00                11027 	.byte	0
   505B E3                11028 	.byte	-29
   505C 0B                11029 	.byte	11
   505D FF                11030 	.byte	-1
   505E 10                11031 	.byte	16
   505F F5                11032 	.byte	-11
   5060 00                11033 	.byte	0
   5061 ED                11034 	.byte	-19
   5062 FE                11035 	.byte	-2
   5063 FF                11036 	.byte	-1
   5064 10                11037 	.byte	16
   5065 F4                11038 	.byte	-12
   5066 00                11039 	.byte	0
   5067 0D                11040 	.byte	13
   5068 00                11041 	.byte	0
   5069 FF                11042 	.byte	-1
   506A 03                11043 	.byte	3
   506B 0E                11044 	.byte	14
   506C FF                11045 	.byte	-1
   506D F3                11046 	.byte	-13
   506E 00                11047 	.byte	0
   506F FF                11048 	.byte	-1
   5070 FD                11049 	.byte	-3
   5071 F2                11050 	.byte	-14
   5072 FF                11051 	.byte	-1
   5073 0D                11052 	.byte	13
   5074 00                11053 	.byte	0
   5075 01                11054 	.byte	1
                          11055 	.globl _height2RisingFront12
   5076                   11056 _height2RisingFront12:
   5076 00                11057 	.byte	0
   5077 F7                11058 	.byte	-9
   5078 06                11059 	.byte	6
   5079 FF                11060 	.byte	-1
   507A 03                11061 	.byte	3
   507B 0E                11062 	.byte	14
   507C FF                11063 	.byte	-1
   507D 09                11064 	.byte	9
   507E FA                11065 	.byte	-6
   507F FF                11066 	.byte	-1
   5080 FD                11067 	.byte	-3
   5081 F2                11068 	.byte	-14
   5082 FF                11069 	.byte	-1
   5083 F7                11070 	.byte	-9
   5084 06                11071 	.byte	6
   5085 FF                11072 	.byte	-1
   5086 17                11073 	.byte	23
   5087 02                11074 	.byte	2
   5088 00                11075 	.byte	0
   5089 EC                11076 	.byte	-20
   508A 0C                11077 	.byte	12
   508B FF                11078 	.byte	-1
   508C 17                11079 	.byte	23
   508D 02                11080 	.byte	2
   508E 00                11081 	.byte	0
   508F F2                11082 	.byte	-14
   5090 F8                11083 	.byte	-8
   5091 FF                11084 	.byte	-1
   5092 18                11085 	.byte	24
   5093 02                11086 	.byte	2
   5094 00                11087 	.byte	0
   5095 E5                11088 	.byte	-27
   5096 F0                11089 	.byte	-16
   5097 FF                11090 	.byte	-1
   5098 18                11091 	.byte	24
   5099 02                11092 	.byte	2
   509A 00                11093 	.byte	0
   509B F6                11094 	.byte	-10
   509C 06                11095 	.byte	6
   509D FF                11096 	.byte	-1
   509E 03                11097 	.byte	3
   509F 0E                11098 	.byte	14
   50A0 FF                11099 	.byte	-1
   50A1 0A                11100 	.byte	10
   50A2 FA                11101 	.byte	-6
   50A3 FF                11102 	.byte	-1
   50A4 FD                11103 	.byte	-3
   50A5 F2                11104 	.byte	-14
   50A6 FF                11105 	.byte	-1
   50A7 F6                11106 	.byte	-10
   50A8 06                11107 	.byte	6
   50A9 01                11108 	.byte	1
                          11109 	.globl _height2FallingFront12
   50AA                   11110 _height2FallingFront12:
   50AA FF                11111 	.byte	-1
   50AB 03                11112 	.byte	3
   50AC 0E                11113 	.byte	14
   50AD FF                11114 	.byte	-1
   50AE 0D                11115 	.byte	13
   50AF 00                11116 	.byte	0
   50B0 FF                11117 	.byte	-1
   50B1 FD                11118 	.byte	-3
   50B2 F2                11119 	.byte	-14
   50B3 FF                11120 	.byte	-1
   50B4 F3                11121 	.byte	-13
   50B5 00                11122 	.byte	0
   50B6 FF                11123 	.byte	-1
   50B7 F1                11124 	.byte	-15
   50B8 0C                11125 	.byte	12
   50B9 00                11126 	.byte	0
   50BA 12                11127 	.byte	18
   50BB 02                11128 	.byte	2
   50BC FF                11129 	.byte	-1
   50BD F1                11130 	.byte	-15
   50BE 0C                11131 	.byte	12
   50BF 00                11132 	.byte	0
   50C0 1C                11133 	.byte	28
   50C1 F4                11134 	.byte	-12
   50C2 FF                11135 	.byte	-1
   50C3 F0                11136 	.byte	-16
   50C4 0C                11137 	.byte	12
   50C5 00                11138 	.byte	0
   50C6 0D                11139 	.byte	13
   50C7 E6                11140 	.byte	-26
   50C8 FF                11141 	.byte	-1
   50C9 F1                11142 	.byte	-15
   50CA 0C                11143 	.byte	12
   50CB 00                11144 	.byte	0
   50CC F3                11145 	.byte	-13
   50CD 00                11146 	.byte	0
   50CE FF                11147 	.byte	-1
   50CF 03                11148 	.byte	3
   50D0 0E                11149 	.byte	14
   50D1 FF                11150 	.byte	-1
   50D2 0C                11151 	.byte	12
   50D3 00                11152 	.byte	0
   50D4 FF                11153 	.byte	-1
   50D5 FE                11154 	.byte	-2
   50D6 F2                11155 	.byte	-14
   50D7 FF                11156 	.byte	-1
   50D8 F3                11157 	.byte	-13
   50D9 00                11158 	.byte	0
   50DA 01                11159 	.byte	1
                          11160 	.globl _height2RisingBack12
   50DB                   11161 _height2RisingBack12:
   50DB 00                11162 	.byte	0
   50DC 10                11163 	.byte	16
   50DD F5                11164 	.byte	-11
   50DE FF                11165 	.byte	-1
   50DF 03                11166 	.byte	3
   50E0 0D                11167 	.byte	13
   50E1 FF                11168 	.byte	-1
   50E2 06                11169 	.byte	6
   50E3 FB                11170 	.byte	-5
   50E4 FF                11171 	.byte	-1
   50E5 FD                11172 	.byte	-3
   50E6 F2                11173 	.byte	-14
   50E7 FF                11174 	.byte	-1
   50E8 FA                11175 	.byte	-6
   50E9 06                11176 	.byte	6
   50EA FF                11177 	.byte	-1
   50EB 1C                11178 	.byte	28
   50EC FE                11179 	.byte	-2
   50ED 00                11180 	.byte	0
   50EE E7                11181 	.byte	-25
   50EF 0F                11182 	.byte	15
   50F0 FF                11183 	.byte	-1
   50F1 1C                11184 	.byte	28
   50F2 FE                11185 	.byte	-2
   50F3 00                11186 	.byte	0
   50F4 EA                11187 	.byte	-22
   50F5 FD                11188 	.byte	-3
   50F6 FF                11189 	.byte	-1
   50F7 1C                11190 	.byte	28
   50F8 FE                11191 	.byte	-2
   50F9 00                11192 	.byte	0
   50FA E1                11193 	.byte	-31
   50FB F4                11194 	.byte	-12
   50FC FF                11195 	.byte	-1
   50FD 1C                11196 	.byte	28
   50FE FE                11197 	.byte	-2
   50FF 00                11198 	.byte	0
   5100 FA                11199 	.byte	-6
   5101 06                11200 	.byte	6
   5102 FF                11201 	.byte	-1
   5103 03                11202 	.byte	3
   5104 0D                11203 	.byte	13
   5105 FF                11204 	.byte	-1
   5106 06                11205 	.byte	6
   5107 FB                11206 	.byte	-5
   5108 FF                11207 	.byte	-1
   5109 FD                11208 	.byte	-3
   510A F2                11209 	.byte	-14
   510B FF                11210 	.byte	-1
   510C FA                11211 	.byte	-6
   510D 06                11212 	.byte	6
   510E 01                11213 	.byte	1
                          11214 	.globl _depth2RollingLeft12
   510F                   11215 _depth2RollingLeft12:
   510F FF                11216 	.byte	-1
   5110 0D                11217 	.byte	13
   5111 00                11218 	.byte	0
   5112 FF                11219 	.byte	-1
   5113 10                11220 	.byte	16
   5114 F5                11221 	.byte	-11
   5115 FF                11222 	.byte	-1
   5116 F3                11223 	.byte	-13
   5117 00                11224 	.byte	0
   5118 FF                11225 	.byte	-1
   5119 F0                11226 	.byte	-16
   511A 0B                11227 	.byte	11
   511B FF                11228 	.byte	-1
   511C FE                11229 	.byte	-2
   511D F3                11230 	.byte	-13
   511E 00                11231 	.byte	0
   511F 0F                11232 	.byte	15
   5120 0D                11233 	.byte	13
   5121 FF                11234 	.byte	-1
   5122 FD                11235 	.byte	-3
   5123 F3                11236 	.byte	-13
   5124 00                11237 	.byte	0
   5125 13                11238 	.byte	19
   5126 02                11239 	.byte	2
   5127 FF                11240 	.byte	-1
   5128 FD                11241 	.byte	-3
   5129 F2                11242 	.byte	-14
   512A 00                11243 	.byte	0
   512B F6                11244 	.byte	-10
   512C 0E                11245 	.byte	14
   512D FF                11246 	.byte	-1
   512E FD                11247 	.byte	-3
   512F F2                11248 	.byte	-14
   5130 00                11249 	.byte	0
   5131 F1                11250 	.byte	-15
   5132 0C                11251 	.byte	12
   5133 FF                11252 	.byte	-1
   5134 0C                11253 	.byte	12
   5135 00                11254 	.byte	0
   5136 FF                11255 	.byte	-1
   5137 10                11256 	.byte	16
   5138 F4                11257 	.byte	-12
   5139 FF                11258 	.byte	-1
   513A F3                11259 	.byte	-13
   513B 00                11260 	.byte	0
   513C FF                11261 	.byte	-1
   513D F1                11262 	.byte	-15
   513E 0C                11263 	.byte	12
   513F 01                11264 	.byte	1
                          11265 	.globl _depth2RollingRight12
   5140                   11266 _depth2RollingRight12:
   5140 00                11267 	.byte	0
   5141 10                11268 	.byte	16
   5142 0E                11269 	.byte	14
   5143 FF                11270 	.byte	-1
   5144 F3                11271 	.byte	-13
   5145 00                11272 	.byte	0
   5146 FF                11273 	.byte	-1
   5147 10                11274 	.byte	16
   5148 F4                11275 	.byte	-12
   5149 FF                11276 	.byte	-1
   514A 0D                11277 	.byte	13
   514B 00                11278 	.byte	0
   514C FF                11279 	.byte	-1
   514D F0                11280 	.byte	-16
   514E 0C                11281 	.byte	12
   514F FF                11282 	.byte	-1
   5150 03                11283 	.byte	3
   5151 0E                11284 	.byte	14
   5152 00                11285 	.byte	0
   5153 F0                11286 	.byte	-16
   5154 F2                11287 	.byte	-14
   5155 FF                11288 	.byte	-1
   5156 03                11289 	.byte	3
   5157 0E                11290 	.byte	14
   5158 00                11291 	.byte	0
   5159 0D                11292 	.byte	13
   515A E6                11293 	.byte	-26
   515B FF                11294 	.byte	-1
   515C 03                11295 	.byte	3
   515D 0E                11296 	.byte	14
   515E 00                11297 	.byte	0
   515F 0A                11298 	.byte	10
   5160 F2                11299 	.byte	-14
   5161 FF                11300 	.byte	-1
   5162 03                11301 	.byte	3
   5163 0E                11302 	.byte	14
   5164 00                11303 	.byte	0
   5165 F0                11304 	.byte	-16
   5166 0C                11305 	.byte	12
   5167 FF                11306 	.byte	-1
   5168 F3                11307 	.byte	-13
   5169 00                11308 	.byte	0
   516A FF                11309 	.byte	-1
   516B 10                11310 	.byte	16
   516C F4                11311 	.byte	-12
   516D FF                11312 	.byte	-1
   516E 0D                11313 	.byte	13
   516F 00                11314 	.byte	0
   5170 FF                11315 	.byte	-1
   5171 F0                11316 	.byte	-16
   5172 0C                11317 	.byte	12
   5173 01                11318 	.byte	1
                          11319 	.globl _width2RollingFront12
   5174                   11320 _width2RollingFront12:
   5174 FF                11321 	.byte	-1
   5175 06                11322 	.byte	6
   5176 1C                11323 	.byte	28
   5177 FF                11324 	.byte	-1
   5178 0D                11325 	.byte	13
   5179 00                11326 	.byte	0
   517A FF                11327 	.byte	-1
   517B FA                11328 	.byte	-6
   517C E4                11329 	.byte	-28
   517D FF                11330 	.byte	-1
   517E F3                11331 	.byte	-13
   517F 00                11332 	.byte	0
   5180 FF                11333 	.byte	-1
   5181 F9                11334 	.byte	-7
   5182 06                11335 	.byte	6
   5183 00                11336 	.byte	0
   5184 0D                11337 	.byte	13
   5185 16                11338 	.byte	22
   5186 FF                11339 	.byte	-1
   5187 F9                11340 	.byte	-7
   5188 06                11341 	.byte	6
   5189 00                11342 	.byte	0
   518A 14                11343 	.byte	20
   518B FA                11344 	.byte	-6
   518C FF                11345 	.byte	-1
   518D F8                11346 	.byte	-8
   518E 06                11347 	.byte	6
   518F 00                11348 	.byte	0
   5190 02                11349 	.byte	2
   5191 DE                11350 	.byte	-34
   5192 FF                11351 	.byte	-1
   5193 F8                11352 	.byte	-8
   5194 06                11353 	.byte	6
   5195 00                11354 	.byte	0
   5196 F4                11355 	.byte	-12
   5197 00                11356 	.byte	0
   5198 FF                11357 	.byte	-1
   5199 06                11358 	.byte	6
   519A 1C                11359 	.byte	28
   519B FF                11360 	.byte	-1
   519C 0C                11361 	.byte	12
   519D 00                11362 	.byte	0
   519E FF                11363 	.byte	-1
   519F FA                11364 	.byte	-6
   51A0 E4                11365 	.byte	-28
   51A1 FF                11366 	.byte	-1
   51A2 F4                11367 	.byte	-12
   51A3 00                11368 	.byte	0
   51A4 01                11369 	.byte	1
                          11370 	.globl _width2RollingBack12
   51A5                   11371 _width2RollingBack12:
   51A5 00                11372 	.byte	0
   51A6 15                11373 	.byte	21
   51A7 FB                11374 	.byte	-5
   51A8 FF                11375 	.byte	-1
   51A9 06                11376 	.byte	6
   51AA 1B                11377 	.byte	27
   51AB FF                11378 	.byte	-1
   51AC F3                11379 	.byte	-13
   51AD 00                11380 	.byte	0
   51AE FF                11381 	.byte	-1
   51AF FA                11382 	.byte	-6
   51B0 E5                11383 	.byte	-27
   51B1 FF                11384 	.byte	-1
   51B2 0D                11385 	.byte	13
   51B3 00                11386 	.byte	0
   51B4 FF                11387 	.byte	-1
   51B5 08                11388 	.byte	8
   51B6 FA                11389 	.byte	-6
   51B7 00                11390 	.byte	0
   51B8 FE                11391 	.byte	-2
   51B9 21                11392 	.byte	33
   51BA FF                11393 	.byte	-1
   51BB 08                11394 	.byte	8
   51BC FA                11395 	.byte	-6
   51BD 00                11396 	.byte	0
   51BE EB                11397 	.byte	-21
   51BF 06                11398 	.byte	6
   51C0 FF                11399 	.byte	-1
   51C1 08                11400 	.byte	8
   51C2 FA                11401 	.byte	-6
   51C3 00                11402 	.byte	0
   51C4 F2                11403 	.byte	-14
   51C5 EB                11404 	.byte	-21
   51C6 FF                11405 	.byte	-1
   51C7 08                11406 	.byte	8
   51C8 FA                11407 	.byte	-6
   51C9 00                11408 	.byte	0
   51CA 0D                11409 	.byte	13
   51CB 00                11410 	.byte	0
   51CC FF                11411 	.byte	-1
   51CD 06                11412 	.byte	6
   51CE 1B                11413 	.byte	27
   51CF FF                11414 	.byte	-1
   51D0 F3                11415 	.byte	-13
   51D1 00                11416 	.byte	0
   51D2 FF                11417 	.byte	-1
   51D3 FA                11418 	.byte	-6
   51D4 E5                11419 	.byte	-27
   51D5 FF                11420 	.byte	-1
   51D6 0D                11421 	.byte	13
   51D7 00                11422 	.byte	0
   51D8 01                11423 	.byte	1
                          11424 	.globl _height2FallingLeft
                          11425 	.area	.text
   51D9                   11426 _height2FallingLeft:
   51D9 32 D1             11427 	.word	_height2FallingLeft0
   51DB 35 29             11428 	.word	_height2FallingLeft1
   51DD 37 8D             11429 	.word	_height2FallingLeft2
   51DF 39 F1             11430 	.word	_height2FallingLeft3
   51E1 3C 55             11431 	.word	_height2FallingLeft4
   51E3 3E B9             11432 	.word	_height2FallingLeft5
   51E5 41 1D             11433 	.word	_height2FallingLeft6
   51E7 43 81             11434 	.word	_height2FallingLeft7
   51E9 45 E5             11435 	.word	_height2FallingLeft8
   51EB 48 49             11436 	.word	_height2FallingLeft9
   51ED 4A AD             11437 	.word	_height2FallingLeft10
   51EF 4D 11             11438 	.word	_height2FallingLeft11
                          11439 	.globl _height2RisingRight
   51F1                   11440 _height2RisingRight:
   51F1 33 02             11441 	.word	_height2RisingRight0
   51F3 35 5A             11442 	.word	_height2RisingRight1
   51F5 37 BE             11443 	.word	_height2RisingRight2
   51F7 3A 22             11444 	.word	_height2RisingRight3
   51F9 3C 86             11445 	.word	_height2RisingRight4
   51FB 3E EA             11446 	.word	_height2RisingRight5
   51FD 41 4E             11447 	.word	_height2RisingRight6
   51FF 43 B2             11448 	.word	_height2RisingRight7
   5201 46 16             11449 	.word	_height2RisingRight8
   5203 48 7A             11450 	.word	_height2RisingRight9
   5205 4A DE             11451 	.word	_height2RisingRight10
   5207 4D 42             11452 	.word	_height2RisingRight11
                          11453 	.globl _height2FallingRight
   5209                   11454 _height2FallingRight:
   5209 33 36             11455 	.word	_height2FallingRight0
   520B 35 8E             11456 	.word	_height2FallingRight1
   520D 37 F2             11457 	.word	_height2FallingRight2
   520F 3A 56             11458 	.word	_height2FallingRight3
   5211 3C BA             11459 	.word	_height2FallingRight4
   5213 3F 1E             11460 	.word	_height2FallingRight5
   5215 41 82             11461 	.word	_height2FallingRight6
   5217 43 E6             11462 	.word	_height2FallingRight7
   5219 46 4A             11463 	.word	_height2FallingRight8
   521B 48 AE             11464 	.word	_height2FallingRight9
   521D 4B 12             11465 	.word	_height2FallingRight10
   521F 4D 76             11466 	.word	_height2FallingRight11
                          11467 	.globl _height2RisingLeft
   5221                   11468 _height2RisingLeft:
   5221 33 67             11469 	.word	_height2RisingLeft0
   5223 35 C2             11470 	.word	_height2RisingLeft1
   5225 38 26             11471 	.word	_height2RisingLeft2
   5227 3A 8A             11472 	.word	_height2RisingLeft3
   5229 3C EE             11473 	.word	_height2RisingLeft4
   522B 3F 52             11474 	.word	_height2RisingLeft5
   522D 41 B6             11475 	.word	_height2RisingLeft6
   522F 44 1A             11476 	.word	_height2RisingLeft7
   5231 46 7E             11477 	.word	_height2RisingLeft8
   5233 48 E2             11478 	.word	_height2RisingLeft9
   5235 4B 46             11479 	.word	_height2RisingLeft10
   5237 4D AA             11480 	.word	_height2RisingLeft11
                          11481 	.globl _height2FallingBack
   5239                   11482 _height2FallingBack:
   5239 33 9B             11483 	.word	_height2FallingBack0
   523B 35 F6             11484 	.word	_height2FallingBack1
   523D 38 5A             11485 	.word	_height2FallingBack2
   523F 3A BE             11486 	.word	_height2FallingBack3
   5241 3D 22             11487 	.word	_height2FallingBack4
   5243 3F 86             11488 	.word	_height2FallingBack5
   5245 41 EA             11489 	.word	_height2FallingBack6
   5247 44 4E             11490 	.word	_height2FallingBack7
   5249 46 B2             11491 	.word	_height2FallingBack8
   524B 49 16             11492 	.word	_height2FallingBack9
   524D 4B 7A             11493 	.word	_height2FallingBack10
   524F 4D DE             11494 	.word	_height2FallingBack11
                          11495 	.globl _height2RisingFront
   5251                   11496 _height2RisingFront:
   5251 33 CC             11497 	.word	_height2RisingFront0
   5253 36 2A             11498 	.word	_height2RisingFront1
   5255 38 8E             11499 	.word	_height2RisingFront2
   5257 3A F2             11500 	.word	_height2RisingFront3
   5259 3D 56             11501 	.word	_height2RisingFront4
   525B 3F BA             11502 	.word	_height2RisingFront5
   525D 42 1E             11503 	.word	_height2RisingFront6
   525F 44 82             11504 	.word	_height2RisingFront7
   5261 46 E6             11505 	.word	_height2RisingFront8
   5263 49 4A             11506 	.word	_height2RisingFront9
   5265 4B AE             11507 	.word	_height2RisingFront10
   5267 4E 12             11508 	.word	_height2RisingFront11
                          11509 	.globl _height2FallingFront
   5269                   11510 _height2FallingFront:
   5269 34 00             11511 	.word	_height2FallingFront0
   526B 36 5E             11512 	.word	_height2FallingFront1
   526D 38 C2             11513 	.word	_height2FallingFront2
   526F 3B 26             11514 	.word	_height2FallingFront3
   5271 3D 8A             11515 	.word	_height2FallingFront4
   5273 3F EE             11516 	.word	_height2FallingFront5
   5275 42 52             11517 	.word	_height2FallingFront6
   5277 44 B6             11518 	.word	_height2FallingFront7
   5279 47 1A             11519 	.word	_height2FallingFront8
   527B 49 7E             11520 	.word	_height2FallingFront9
   527D 4B E2             11521 	.word	_height2FallingFront10
   527F 4E 46             11522 	.word	_height2FallingFront11
                          11523 	.globl _height2RisingBack
   5281                   11524 _height2RisingBack:
   5281 34 31             11525 	.word	_height2RisingBack0
   5283 36 8F             11526 	.word	_height2RisingBack1
   5285 38 F3             11527 	.word	_height2RisingBack2
   5287 3B 57             11528 	.word	_height2RisingBack3
   5289 3D BB             11529 	.word	_height2RisingBack4
   528B 40 1F             11530 	.word	_height2RisingBack5
   528D 42 83             11531 	.word	_height2RisingBack6
   528F 44 E7             11532 	.word	_height2RisingBack7
   5291 47 4B             11533 	.word	_height2RisingBack8
   5293 49 AF             11534 	.word	_height2RisingBack9
   5295 4C 13             11535 	.word	_height2RisingBack10
   5297 4E 77             11536 	.word	_height2RisingBack11
                          11537 	.globl _depth2RollingLeft
   5299                   11538 _depth2RollingLeft:
   5299 34 65             11539 	.word	_depth2RollingLeft0
   529B 36 C3             11540 	.word	_depth2RollingLeft1
   529D 39 27             11541 	.word	_depth2RollingLeft2
   529F 3B 8B             11542 	.word	_depth2RollingLeft3
   52A1 3D EF             11543 	.word	_depth2RollingLeft4
   52A3 40 53             11544 	.word	_depth2RollingLeft5
   52A5 42 B7             11545 	.word	_depth2RollingLeft6
   52A7 45 1B             11546 	.word	_depth2RollingLeft7
   52A9 47 7F             11547 	.word	_depth2RollingLeft8
   52AB 49 E3             11548 	.word	_depth2RollingLeft9
   52AD 4C 47             11549 	.word	_depth2RollingLeft10
   52AF 4E AB             11550 	.word	_depth2RollingLeft11
                          11551 	.globl _depth2RollingRight
   52B1                   11552 _depth2RollingRight:
   52B1 34 96             11553 	.word	_depth2RollingRight0
   52B3 36 F4             11554 	.word	_depth2RollingRight1
   52B5 39 58             11555 	.word	_depth2RollingRight2
   52B7 3B BC             11556 	.word	_depth2RollingRight3
   52B9 3E 20             11557 	.word	_depth2RollingRight4
   52BB 40 84             11558 	.word	_depth2RollingRight5
   52BD 42 E8             11559 	.word	_depth2RollingRight6
   52BF 45 4C             11560 	.word	_depth2RollingRight7
   52C1 47 B0             11561 	.word	_depth2RollingRight8
   52C3 4A 14             11562 	.word	_depth2RollingRight9
   52C5 4C 78             11563 	.word	_depth2RollingRight10
   52C7 4E DC             11564 	.word	_depth2RollingRight11
                          11565 	.globl _width2RollingFront
   52C9                   11566 _width2RollingFront:
   52C9 34 C7             11567 	.word	_width2RollingFront0
   52CB 37 28             11568 	.word	_width2RollingFront1
   52CD 39 8C             11569 	.word	_width2RollingFront2
   52CF 3B F0             11570 	.word	_width2RollingFront3
   52D1 3E 54             11571 	.word	_width2RollingFront4
   52D3 40 B8             11572 	.word	_width2RollingFront5
   52D5 43 1C             11573 	.word	_width2RollingFront6
   52D7 45 80             11574 	.word	_width2RollingFront7
   52D9 47 E4             11575 	.word	_width2RollingFront8
   52DB 4A 48             11576 	.word	_width2RollingFront9
   52DD 4C AC             11577 	.word	_width2RollingFront10
   52DF 4F 10             11578 	.word	_width2RollingFront11
                          11579 	.globl _width2RollingBack
   52E1                   11580 _width2RollingBack:
   52E1 34 F8             11581 	.word	_width2RollingBack0
   52E3 37 59             11582 	.word	_width2RollingBack1
   52E5 39 BD             11583 	.word	_width2RollingBack2
   52E7 3C 21             11584 	.word	_width2RollingBack3
   52E9 3E 85             11585 	.word	_width2RollingBack4
   52EB 40 E9             11586 	.word	_width2RollingBack5
   52ED 43 4D             11587 	.word	_width2RollingBack6
   52EF 45 B1             11588 	.word	_width2RollingBack7
   52F1 48 15             11589 	.word	_width2RollingBack8
   52F3 4A 79             11590 	.word	_width2RollingBack9
   52F5 4C DD             11591 	.word	_width2RollingBack10
   52F7 4F 41             11592 	.word	_width2RollingBack11
                          11593 	.globl _startMusic
                          11594 	.area .text
   52F9                   11595 _startMusic:
   52F9 FE                11596 	.byte	-2
   52FA E8                11597 	.byte	-24
   52FB FE                11598 	.byte	-2
   52FC B6                11599 	.byte	-74
   52FD 01                11600 	.byte	1
   52FE 01                11601 	.byte	1
   52FF 02                11602 	.byte	2
   5300 01                11603 	.byte	1
   5301 03                11604 	.byte	3
   5302 01                11605 	.byte	1
   5303 04                11606 	.byte	4
   5304 01                11607 	.byte	1
   5305 05                11608 	.byte	5
   5306 01                11609 	.byte	1
   5307 06                11610 	.byte	6
   5308 01                11611 	.byte	1
   5309 07                11612 	.byte	7
   530A 01                11613 	.byte	1
   530B 08                11614 	.byte	8
   530C 01                11615 	.byte	1
   530D 09                11616 	.byte	9
   530E 01                11617 	.byte	1
   530F 0A                11618 	.byte	10
   5310 01                11619 	.byte	1
   5311 0B                11620 	.byte	11
   5312 01                11621 	.byte	1
   5313 0C                11622 	.byte	12
   5314 01                11623 	.byte	1
   5315 0D                11624 	.byte	13
   5316 01                11625 	.byte	1
   5317 00                11626 	.byte	0
   5318 80                11627 	.byte	-128
                          11628 	.globl _levelEndMusic
   5319                   11629 _levelEndMusic:
   5319 FE                11630 	.byte	-2
   531A E8                11631 	.byte	-24
   531B FE                11632 	.byte	-2
   531C B6                11633 	.byte	-74
   531D 0D                11634 	.byte	13
   531E 01                11635 	.byte	1
   531F 0E                11636 	.byte	14
   5320 01                11637 	.byte	1
   5321 0F                11638 	.byte	15
   5322 01                11639 	.byte	1
   5323 10                11640 	.byte	16
   5324 01                11641 	.byte	1
   5325 11                11642 	.byte	17
   5326 01                11643 	.byte	1
   5327 12                11644 	.byte	18
   5328 01                11645 	.byte	1
   5329 13                11646 	.byte	19
   532A 01                11647 	.byte	1
   532B 14                11648 	.byte	20
   532C 01                11649 	.byte	1
   532D 15                11650 	.byte	21
   532E 01                11651 	.byte	1
   532F 16                11652 	.byte	22
   5330 01                11653 	.byte	1
   5331 00                11654 	.byte	0
   5332 80                11655 	.byte	-128
                          11656 	.globl _fallingMusic
   5333                   11657 _fallingMusic:
   5333 FE                11658 	.byte	-2
   5334 E8                11659 	.byte	-24
   5335 FE                11660 	.byte	-2
   5336 B6                11661 	.byte	-74
   5337 0D                11662 	.byte	13
   5338 02                11663 	.byte	2
   5339 0C                11664 	.byte	12
   533A 02                11665 	.byte	2
   533B 0B                11666 	.byte	11
   533C 02                11667 	.byte	2
   533D 0A                11668 	.byte	10
   533E 02                11669 	.byte	2
   533F 09                11670 	.byte	9
   5340 02                11671 	.byte	2
   5341 08                11672 	.byte	8
   5342 02                11673 	.byte	2
   5343 07                11674 	.byte	7
   5344 02                11675 	.byte	2
   5345 06                11676 	.byte	6
   5346 02                11677 	.byte	2
   5347 05                11678 	.byte	5
   5348 02                11679 	.byte	2
   5349 04                11680 	.byte	4
   534A 02                11681 	.byte	2
   534B 03                11682 	.byte	3
   534C 02                11683 	.byte	2
   534D 02                11684 	.byte	2
   534E 02                11685 	.byte	2
   534F 01                11686 	.byte	1
   5350 02                11687 	.byte	2
   5351 00                11688 	.byte	0
   5352 80                11689 	.byte	-128
                          11690 	.globl _movingMusic
   5353                   11691 _movingMusic:
   5353 FD                11692 	.byte	-3
   5354 C3                11693 	.byte	-61
   5355 FE                11694 	.byte	-2
   5356 B6                11695 	.byte	-74
   5357 01                11696 	.byte	1
   5358 05                11697 	.byte	5
   5359 00                11698 	.byte	0
   535A 80                11699 	.byte	-128
                          11700 	.globl _currentMusic
                          11701 	.area .data
   C884                   11702 _currentMusic:
   C884 52 F9             11703 	.word	_startMusic
                          11704 	.globl _vecx
   C886                   11705 _vecx:
   C886 80 00             11706 	.word	-32768
                          11707 	.globl _led8
                          11708 	.area .text
   535B                   11709 _led8:
   535B FF                11710 	.byte	-1
   535C 00                11711 	.byte	0
   535D 05                11712 	.byte	5
   535E FF                11713 	.byte	-1
   535F FB                11714 	.byte	-5
   5360 00                11715 	.byte	0
   5361 FF                11716 	.byte	-1
   5362 00                11717 	.byte	0
   5363 FB                11718 	.byte	-5
   5364 FF                11719 	.byte	-1
   5365 05                11720 	.byte	5
   5366 00                11721 	.byte	0
   5367 FF                11722 	.byte	-1
   5368 05                11723 	.byte	5
   5369 00                11724 	.byte	0
   536A FF                11725 	.byte	-1
   536B 00                11726 	.byte	0
   536C 05                11727 	.byte	5
   536D FF                11728 	.byte	-1
   536E FB                11729 	.byte	-5
   536F 00                11730 	.byte	0
   5370 01                11731 	.byte	1
                          11732 	.area .bss
                          11733 	.globl	_infoText
   CA80                   11734 _infoText:	.blkb	10
                          11735 	.globl	_moveCount
   CA8A                   11736 _moveCount:	.blkb	2
                          11737 	.globl	_levelHighscore
   CA8C                   11738 _levelHighscore:	.blkb	2
                          11739 	.globl	_picAvailable
   CA8E                   11740 _picAvailable:	.blkb	1
                          11741 	.globl	_blockOrientation
   CA8F                   11742 _blockOrientation:	.blkb	1
                          11743 	.globl	_blockX
   CA90                   11744 _blockX:	.blkb	1
                          11745 	.globl	_blockY
   CA91                   11746 _blockY:	.blkb	1
                          11747 	.globl	_blockAnimation
   CA92                   11748 _blockAnimation:	.blkb	2
                          11749 	.globl	_nextBlockAnimation
   CA94                   11750 _nextBlockAnimation:	.blkb	2
                          11751 	.globl	_blockAnimationStep
   CA96                   11752 _blockAnimationStep:	.blkb	1
                          11753 	.globl	_blockAnimating
   CA97                   11754 _blockAnimating:	.blkb	1
                          11755 	.globl	_nextBlockX
   CA98                   11756 _nextBlockX:	.blkb	1
                          11757 	.globl	_nextBlockY
   CA99                   11758 _nextBlockY:	.blkb	1
                          11759 	.globl	_lastBlockDirection
   CA9A                   11760 _lastBlockDirection:	.blkb	1
                          11761 	.globl	_blockYOfs
   CA9B                   11762 _blockYOfs:	.blkb	1
                          11763 	.globl	_gameState
   CA9C                   11764 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      003C GR  |   2 A$bloxorz$1005     033F GR
  2 A$bloxorz$1006     0342 GR  |   2 A$bloxorz$101      003F GR
  2 A$bloxorz$1012     0345 GR  |   2 A$bloxorz$1014     0348 GR
  2 A$bloxorz$1017     0349 GR  |   2 A$bloxorz$1018     034B GR
  2 A$bloxorz$1024     034D GR  |   2 A$bloxorz$1030     0350 GR
  2 A$bloxorz$1031     0352 GR  |   2 A$bloxorz$1034     0354 GR
  2 A$bloxorz$1035     0356 GR  |   2 A$bloxorz$1041     0359 GR
  2 A$bloxorz$1050     035C GR  |   2 A$bloxorz$1051     035E GR
  2 A$bloxorz$1057     0360 GR  |   2 A$bloxorz$1058     0362 GR
  2 A$bloxorz$1059     0364 GR  |   2 A$bloxorz$1060     0366 GR
  2 A$bloxorz$1063     0368 GR  |   2 A$bloxorz$1064     036A GR
  2 A$bloxorz$1065     036C GR  |   2 A$bloxorz$107      0041 GR
  2 A$bloxorz$1074     036F GR  |   2 A$bloxorz$1075     0371 GR
  2 A$bloxorz$108      0043 GR  |   2 A$bloxorz$1081     0373 GR
  2 A$bloxorz$1082     0377 GR  |   2 A$bloxorz$1085     037A GR
  2 A$bloxorz$1086     037C GR  |   2 A$bloxorz$109      0046 GR
  2 A$bloxorz$1092     037F GR  |   2 A$bloxorz$110      0048 GR
  2 A$bloxorz$1101     0382 GR  |   2 A$bloxorz$1102     0384 GR
  2 A$bloxorz$1108     0386 GR  |   2 A$bloxorz$1109     0388 GR
  2 A$bloxorz$1110     038A GR  |   2 A$bloxorz$1111     038C GR
  2 A$bloxorz$1114     038E GR  |   2 A$bloxorz$1115     0390 GR
  2 A$bloxorz$1116     0392 GR  |   2 A$bloxorz$1125     0395 GR
  2 A$bloxorz$1126     0397 GR  |   2 A$bloxorz$1132     0399 GR
  2 A$bloxorz$1135     039C GR  |   2 A$bloxorz$1136     039E GR
  2 A$bloxorz$1142     03A1 GR  |   2 A$bloxorz$1151     03A4 GR
  2 A$bloxorz$1152     03A6 GR  |   2 A$bloxorz$1158     03A8 GR
  2 A$bloxorz$1159     03AA GR  |   2 A$bloxorz$1160     03AC GR
  2 A$bloxorz$1161     03AE GR  |   2 A$bloxorz$1164     03B0 GR
  2 A$bloxorz$1165     03B2 GR  |   2 A$bloxorz$1166     03B4 GR
  2 A$bloxorz$117      004C GR  |   2 A$bloxorz$1175     03B7 GR
  2 A$bloxorz$1176     03B9 GR  |   2 A$bloxorz$118      004E GR
  2 A$bloxorz$1182     03BB GR  |   2 A$bloxorz$1185     03BE GR
  2 A$bloxorz$1186     03C0 GR  |   2 A$bloxorz$119      0050 GR
  2 A$bloxorz$1192     03C3 GR  |   2 A$bloxorz$120      0053 GR
  2 A$bloxorz$1201     03C6 GR  |   2 A$bloxorz$1202     03C8 GR
  2 A$bloxorz$1208     03CA GR  |   2 A$bloxorz$1209     03CC GR
  2 A$bloxorz$1210     03CE GR  |   2 A$bloxorz$1213     03D0 GR
  2 A$bloxorz$1214     03D2 GR  |   2 A$bloxorz$1215     03D4 GR
  2 A$bloxorz$1224     03D7 GR  |   2 A$bloxorz$1225     03D9 GR
  2 A$bloxorz$1231     03DB GR  |   2 A$bloxorz$1234     03DE GR
  2 A$bloxorz$1235     03E0 GR  |   2 A$bloxorz$1241     03E3 GR
  2 A$bloxorz$1250     03E6 GR  |   2 A$bloxorz$1251     03E8 GR
  2 A$bloxorz$1257     03EA GR  |   2 A$bloxorz$1258     03EC GR
  2 A$bloxorz$1259     03EE GR  |   2 A$bloxorz$1260     03F0 GR
  2 A$bloxorz$1263     03F2 GR  |   2 A$bloxorz$1264     03F4 GR
  2 A$bloxorz$1265     03F6 GR  |   2 A$bloxorz$1274     03F9 GR
  2 A$bloxorz$1275     03FB GR  |   2 A$bloxorz$1281     03FD GR
  2 A$bloxorz$1284     0400 GR  |   2 A$bloxorz$1285     0402 GR
  2 A$bloxorz$1291     0405 GR  |   2 A$bloxorz$130      0055 GR
  2 A$bloxorz$1300     0408 GR  |   2 A$bloxorz$1301     040A GR
  2 A$bloxorz$1307     040C GR  |   2 A$bloxorz$1308     040E GR
  2 A$bloxorz$1309     0410 GR  |   2 A$bloxorz$131      0057 GR
  2 A$bloxorz$1310     0412 GR  |   2 A$bloxorz$1313     0414 GR
  2 A$bloxorz$1314     0416 GR  |   2 A$bloxorz$1315     0418 GR
  2 A$bloxorz$132      0059 GR  |   2 A$bloxorz$1324     041B GR
  2 A$bloxorz$1325     041D GR  |   2 A$bloxorz$133      005B GR
  2 A$bloxorz$1331     041F GR  |   2 A$bloxorz$1334     0422 GR
  2 A$bloxorz$1335     0424 GR  |   2 A$bloxorz$1338     0427 GR
  2 A$bloxorz$1339     0429 GR  |   2 A$bloxorz$134      005D GR
  2 A$bloxorz$1342     042B GR  |   2 A$bloxorz$1343     042D GR
  2 A$bloxorz$1349     042F GR  |   2 A$bloxorz$135      005F GR
  2 A$bloxorz$1350     0431 GR  |   2 A$bloxorz$1353     0433 GR
  2 A$bloxorz$1354     0435 GR  |   2 A$bloxorz$136      0061 GR
  2 A$bloxorz$1360     0438 GR  |   2 A$bloxorz$1361     043A GR
  2 A$bloxorz$1367     043D GR  |   2 A$bloxorz$1368     043F GR
  2 A$bloxorz$1369     0441 GR  |   2 A$bloxorz$137      0063 GR
  2 A$bloxorz$1370     0443 GR  |   2 A$bloxorz$1371     0446 GR
  2 A$bloxorz$1374     0448 GR  |   2 A$bloxorz$1375     044A GR
  2 A$bloxorz$1376     044C GR  |   2 A$bloxorz$1377     044E GR
  2 A$bloxorz$138      0064 GR  |   2 A$bloxorz$1380     0451 GR
  2 A$bloxorz$1381     0453 GR  |   2 A$bloxorz$1384     0455 GR
  2 A$bloxorz$1385     0457 GR  |   2 A$bloxorz$1386     0459 GR
  2 A$bloxorz$139      0065 GR  |   2 A$bloxorz$1392     045B GR
  2 A$bloxorz$1398     045E GR  |   2 A$bloxorz$1399     0460 GR
  2 A$bloxorz$140      0067 GR  |   2 A$bloxorz$1402     0462 GR
  2 A$bloxorz$1403     0464 GR  |   2 A$bloxorz$141      0069 GR
  2 A$bloxorz$1412     0467 GR  |   2 A$bloxorz$1413     0469 GR
  2 A$bloxorz$1419     046B GR  |   2 A$bloxorz$142      006B GR
  2 A$bloxorz$1420     046D GR  |   2 A$bloxorz$1421     046F GR
  2 A$bloxorz$1424     0471 GR  |   2 A$bloxorz$1425     0473 GR
  2 A$bloxorz$1426     0475 GR  |   2 A$bloxorz$143      006D GR
  2 A$bloxorz$1432     0478 GR  |   2 A$bloxorz$1433     047B GR
  2 A$bloxorz$1434     047D GR  |   2 A$bloxorz$1435     047F GR
  2 A$bloxorz$1436     0482 GR  |   2 A$bloxorz$1437     0485 GR
  2 A$bloxorz$1438     0487 GR  |   2 A$bloxorz$1439     048A GR
  2 A$bloxorz$144      006F GR  |   2 A$bloxorz$1440     048C GR
  2 A$bloxorz$1441     048F GR  |   2 A$bloxorz$1442     0492 GR
  2 A$bloxorz$1448     0494 GR  |   2 A$bloxorz$1449     0496 GR
  2 A$bloxorz$1455     0498 GR  |   2 A$bloxorz$1456     049A GR
  2 A$bloxorz$1459     049C GR  |   2 A$bloxorz$1460     049E GR
  2 A$bloxorz$1461     04A0 GR  |   2 A$bloxorz$1467     04A3 GR
  2 A$bloxorz$1468     04A6 GR  |   2 A$bloxorz$1469     04A7 GR
  2 A$bloxorz$1470     04A9 GR  |   2 A$bloxorz$1471     04AA GR
  2 A$bloxorz$1472     04AB GR  |   2 A$bloxorz$1473     04AE GR
  2 A$bloxorz$1474     04B0 GR  |   2 A$bloxorz$1480     04B2 GR
  2 A$bloxorz$1481     04B4 GR  |   2 A$bloxorz$1490     04B6 GR
  2 A$bloxorz$1500     04B8 GR  |   2 A$bloxorz$1503     04BB GR
  2 A$bloxorz$1504     04BD GR  |   2 A$bloxorz$1507     04BF GR
  2 A$bloxorz$151      0071 GR  |   2 A$bloxorz$1513     04C1 GR
  2 A$bloxorz$1519     04C4 GR  |   2 A$bloxorz$1520     04C5 GR
  2 A$bloxorz$1526     04C8 GR  |   2 A$bloxorz$1532     04CB GR
  2 A$bloxorz$1533     04CE GR  |   2 A$bloxorz$1539     04D2 GR
  2 A$bloxorz$1540     04D5 GR  |   2 A$bloxorz$1541     04D7 GR
  2 A$bloxorz$1542     04DA GR  |   2 A$bloxorz$1543     04DD GR
  2 A$bloxorz$1549     04DF GR  |   2 A$bloxorz$1550     04E2 GR
  2 A$bloxorz$1551     04E3 GR  |   2 A$bloxorz$1552     04E5 GR
  2 A$bloxorz$1553     04E8 GR  |   2 A$bloxorz$1554     04EA GR
  2 A$bloxorz$1555     04EC GR  |   2 A$bloxorz$1556     04EF GR
  2 A$bloxorz$1562     04F1 GR  |   2 A$bloxorz$1563     04F4 GR
  2 A$bloxorz$1564     04F5 GR  |   2 A$bloxorz$1565     04F7 GR
  2 A$bloxorz$1566     04FA GR  |   2 A$bloxorz$1567     04FD GR
  2 A$bloxorz$157      0073 GR  |   2 A$bloxorz$1573     04FF GR
  2 A$bloxorz$1574     0502 GR  |   2 A$bloxorz$1575     0504 GR
  2 A$bloxorz$1576     0507 GR  |   2 A$bloxorz$1577     050A GR
  2 A$bloxorz$158      0075 GR  |   2 A$bloxorz$1583     050C GR
  2 A$bloxorz$1584     050F GR  |   2 A$bloxorz$1585     0510 GR
  2 A$bloxorz$1586     0512 GR  |   2 A$bloxorz$1587     0515 GR
  2 A$bloxorz$1588     0517 GR  |   2 A$bloxorz$1589     0519 GR
  2 A$bloxorz$159      0077 GR  |   2 A$bloxorz$1590     051C GR
  2 A$bloxorz$1596     051E GR  |   2 A$bloxorz$1597     0521 GR
  2 A$bloxorz$1598     0522 GR  |   2 A$bloxorz$1599     0524 GR
  2 A$bloxorz$160      0079 GR  |   2 A$bloxorz$1600     0527 GR
  2 A$bloxorz$1601     052A GR  |   2 A$bloxorz$1607     052C GR
  2 A$bloxorz$1608     052E GR  |   2 A$bloxorz$1609     0531 GR
  2 A$bloxorz$161      007B GR  |   2 A$bloxorz$1610     0533 GR
  2 A$bloxorz$1611     0535 GR  |   2 A$bloxorz$1612     0537 GR
  2 A$bloxorz$1613     0539 GR  |   2 A$bloxorz$1614     053D GR
  2 A$bloxorz$162      007D GR  |   2 A$bloxorz$1621     053F GR
  2 A$bloxorz$1622     0541 GR  |   2 A$bloxorz$1623     0543 GR
  2 A$bloxorz$1624     0545 GR  |   2 A$bloxorz$1625     0547 GR
  2 A$bloxorz$163      0080 GR  |   2 A$bloxorz$1632     0549 GR
  2 A$bloxorz$1639     054C GR  |   2 A$bloxorz$164      0082 GR
  2 A$bloxorz$1646     054E GR  |   2 A$bloxorz$1647     0550 GR
  2 A$bloxorz$1648     0552 GR  |   2 A$bloxorz$1649     0554 GR
  2 A$bloxorz$165      0084 GR  |   2 A$bloxorz$1656     0556 GR
  2 A$bloxorz$1663     0559 GR  |   2 A$bloxorz$167      0086 GR
  2 A$bloxorz$1670     055B GR  |   2 A$bloxorz$1671     055D GR
  2 A$bloxorz$1672     055F GR  |   2 A$bloxorz$1673     0561 GR
  2 A$bloxorz$1680     0563 GR  |   2 A$bloxorz$1693     0566 GR
  2 A$bloxorz$1694     0569 GR  |   2 A$bloxorz$1695     056B GR
  2 A$bloxorz$1696     056E GR  |   2 A$bloxorz$1697     0571 GR
  2 A$bloxorz$1698     0573 GR  |   2 A$bloxorz$1699     0576 GR
  2 A$bloxorz$1700     0579 GR  |   2 A$bloxorz$1706     057B GR
  2 A$bloxorz$1712     057E GR  |   2 A$bloxorz$1713     0580 GR
  2 A$bloxorz$1719     0583 GR  |   2 A$bloxorz$1720     0586 GR
  2 A$bloxorz$1726     0589 GR  |   2 A$bloxorz$1727     058B GR
  2 A$bloxorz$1728     058F GR  |   2 A$bloxorz$1735     0591 GR
  2 A$bloxorz$1736     0594 GR  |   2 A$bloxorz$1737     0596 GR
  2 A$bloxorz$174      0088 GR  |   2 A$bloxorz$1743     0598 GR
  2 A$bloxorz$1744     059A GR  |   2 A$bloxorz$175      008A GR
  2 A$bloxorz$1751     059D GR  |   2 A$bloxorz$1752     05A0 GR
  2 A$bloxorz$1753     05A2 GR  |   2 A$bloxorz$1754     05A4 GR
  2 A$bloxorz$1755     05A6 GR  |   2 A$bloxorz$1756     05A8 GR
  2 A$bloxorz$1757     05AC GR  |   2 A$bloxorz$176      008C GR
  2 A$bloxorz$1764     05AF GR  |   2 A$bloxorz$1765     05B1 GR
  2 A$bloxorz$1766     05B3 GR  |   2 A$bloxorz$1767     05B5 GR
  2 A$bloxorz$1768     05B7 GR  |   2 A$bloxorz$177      008E GR
  2 A$bloxorz$1775     05B9 GR  |   2 A$bloxorz$1776     05BC GR
  2 A$bloxorz$1777     05BE GR  |   2 A$bloxorz$1778     05C1 GR
  2 A$bloxorz$1779     05C4 GR  |   2 A$bloxorz$178      0090 GR
  2 A$bloxorz$1786     05C6 GR  |   2 A$bloxorz$179      0092 GR
  2 A$bloxorz$1793     05C9 GR  |   2 A$bloxorz$1794     05CB GR
  2 A$bloxorz$1795     05CD GR  |   2 A$bloxorz$180      0094 GR
  2 A$bloxorz$1801     05CF GR  |   2 A$bloxorz$1802     05D2 GR
  2 A$bloxorz$1803     05D4 GR  |   2 A$bloxorz$1804     05D7 GR
  2 A$bloxorz$1805     05DA GR  |   2 A$bloxorz$181      0096 GR
  2 A$bloxorz$1812     05DC GR  |   2 A$bloxorz$1813     05DE GR
  2 A$bloxorz$1814     05E0 GR  |   2 A$bloxorz$182      0098 GR
  2 A$bloxorz$1820     05E2 GR  |   2 A$bloxorz$1821     05E5 GR
  2 A$bloxorz$1822     05E6 GR  |   2 A$bloxorz$1823     05E8 GR
  2 A$bloxorz$1824     05EB GR  |   2 A$bloxorz$1825     05EE GR
  2 A$bloxorz$183      009A GR  |   2 A$bloxorz$1832     05F0 GR
  2 A$bloxorz$1839     05F2 GR  |   2 A$bloxorz$184      009C GR
  2 A$bloxorz$1840     05F4 GR  |   2 A$bloxorz$1841     05F6 GR
  2 A$bloxorz$1847     05F8 GR  |   2 A$bloxorz$1848     05FB GR
  2 A$bloxorz$1849     05FD GR  |   2 A$bloxorz$185      009E GR
  2 A$bloxorz$1850     0600 GR  |   2 A$bloxorz$1851     0603 GR
  2 A$bloxorz$1858     0605 GR  |   2 A$bloxorz$1859     0607 GR
  2 A$bloxorz$186      00A1 GR  |   2 A$bloxorz$1860     0609 GR
  2 A$bloxorz$1866     060B GR  |   2 A$bloxorz$1867     060E GR
  2 A$bloxorz$1868     060F GR  |   2 A$bloxorz$1869     0611 GR
  2 A$bloxorz$187      00A3 GR  |   2 A$bloxorz$1870     0614 GR
  2 A$bloxorz$1871     0616 GR  |   2 A$bloxorz$1872     0618 GR
  2 A$bloxorz$1873     061B GR  |   2 A$bloxorz$188      00A5 GR
  2 A$bloxorz$1881     061D GR  |   2 A$bloxorz$1882     061F GR
  2 A$bloxorz$189      00A9 GR  |   2 A$bloxorz$1890     0620 GR
  2 A$bloxorz$1896     0623 GR  |   2 A$bloxorz$1897     0626 GR
  2 A$bloxorz$190      00AB GR  |   2 A$bloxorz$1903     0629 GR
  2 A$bloxorz$1904     062C GR  |   2 A$bloxorz$1905     062D GR
  2 A$bloxorz$1911     0630 GR  |   2 A$bloxorz$1912     0631 GR
  2 A$bloxorz$1918     0633 GR  |   2 A$bloxorz$1919     0635 GR
  2 A$bloxorz$1921     0638 GR  |   2 A$bloxorz$1924     0639 GR
  2 A$bloxorz$1925     063B GR  |   2 A$bloxorz$1934     063D GR
  2 A$bloxorz$1935     063F GR  |   2 A$bloxorz$1941     0642 GR
  2 A$bloxorz$1942     0644 GR  |   2 A$bloxorz$1948     0647 GR
  2 A$bloxorz$1949     0649 GR  |   2 A$bloxorz$1955     064C GR
  2 A$bloxorz$1956     064F GR  |   2 A$bloxorz$1962     0651 GR
  2 A$bloxorz$1968     0654 GR  |   2 A$bloxorz$1969     0656 GR
  2 A$bloxorz$1970     0658 GR  |   2 A$bloxorz$1978     0659 GR
  2 A$bloxorz$1979     065C GR  |   2 A$bloxorz$198      00AD GR
  2 A$bloxorz$1985     065E GR  |   2 A$bloxorz$1986     0660 GR
  2 A$bloxorz$1987     0662 GR  |   2 A$bloxorz$1988     0665 GR
  2 A$bloxorz$1989     0667 GR  |   2 A$bloxorz$199      00B0 GR
  2 A$bloxorz$1996     0669 GR  |   2 A$bloxorz$1998     066B GR
  2 A$bloxorz$200      00B2 GR  |   2 A$bloxorz$2001     066C GR
  2 A$bloxorz$2007     066E GR  |   2 A$bloxorz$2008     0671 GR
  2 A$bloxorz$2009     0672 GR  |   2 A$bloxorz$201      00B5 GR
  2 A$bloxorz$2010     0675 GR  |   2 A$bloxorz$2011     0676 GR
  2 A$bloxorz$2017     0679 GR  |   2 A$bloxorz$2018     067C GR
  2 A$bloxorz$2019     067D GR  |   2 A$bloxorz$2020     067E GR
  2 A$bloxorz$2021     0681 GR  |   2 A$bloxorz$2022     0683 GR
  2 A$bloxorz$2023     0684 GR  |   2 A$bloxorz$2024     0687 GR
  2 A$bloxorz$2025     068A GR  |   2 A$bloxorz$2031     068D GR
  2 A$bloxorz$2032     0691 GR  |   2 A$bloxorz$2033     0693 GR
  2 A$bloxorz$2034     0696 GR  |   2 A$bloxorz$2041     0699 GR
  2 A$bloxorz$2042     069C GR  |   2 A$bloxorz$2043     069D GR
  2 A$bloxorz$2044     069F GR  |   2 A$bloxorz$2045     06A0 GR
  2 A$bloxorz$2046     06A1 GR  |   2 A$bloxorz$2047     06A3 GR
  2 A$bloxorz$2048     06A7 GR  |   2 A$bloxorz$2054     06AA GR
  2 A$bloxorz$2060     06AD GR  |   2 A$bloxorz$2066     06B0 GR
  2 A$bloxorz$2067     06B3 GR  |   2 A$bloxorz$2068     06B5 GR
  2 A$bloxorz$207      00B8 GR  |   2 A$bloxorz$2074     06B8 GR
  2 A$bloxorz$2075     06BA GR  |   2 A$bloxorz$208      00BB GR
  2 A$bloxorz$2081     06BD GR  |   2 A$bloxorz$2082     06C0 GR
  2 A$bloxorz$2088     06C3 GR  |   2 A$bloxorz$209      00BC GR
  2 A$bloxorz$2094     06C6 GR  |   2 A$bloxorz$210      00BF GR
  2 A$bloxorz$2100     06C9 GR  |   2 A$bloxorz$2106     06CC GR
  2 A$bloxorz$2107     06CE GR  |   2 A$bloxorz$211      00C1 GR
  2 A$bloxorz$2113     06D1 GR  |   2 A$bloxorz$2114     06D3 GR
  2 A$bloxorz$212      00C2 GR  |   2 A$bloxorz$2120     06D6 GR
  2 A$bloxorz$2121     06D9 GR  |   2 A$bloxorz$2127     06DC GR
  2 A$bloxorz$2128     06DE GR  |   2 A$bloxorz$213      00C4 GR
  2 A$bloxorz$2134     06E2 GR  |   2 A$bloxorz$2135     06E5 GR
  2 A$bloxorz$214      00C7 GR  |   2 A$bloxorz$2141     06E8 GR
  2 A$bloxorz$2142     06EB GR  |   2 A$bloxorz$2143     06ED GR
  2 A$bloxorz$2146     06EE GR  |   2 A$bloxorz$215      00C9 GR
  2 A$bloxorz$2152     06F0 GR  |   2 A$bloxorz$2158     06F3 GR
  2 A$bloxorz$2159     06F6 GR  |   2 A$bloxorz$2160     06F7 GR
  2 A$bloxorz$2161     06F9 GR  |   2 A$bloxorz$2167     06FC GR
  2 A$bloxorz$2168     06FE GR  |   2 A$bloxorz$2174     0700 GR
  2 A$bloxorz$2175     0701 GR  |   2 A$bloxorz$2176     0703 GR
  2 A$bloxorz$2178     0704 GR  |   2 A$bloxorz$2184     0707 GR
  2 A$bloxorz$2191     070A GR  |   2 A$bloxorz$2192     070D GR
  2 A$bloxorz$2193     070F GR  |   2 A$bloxorz$2199     0711 GR
  2 A$bloxorz$2201     0714 GR  |   2 A$bloxorz$2202     0716 GR
  2 A$bloxorz$2210     0717 GR  |   2 A$bloxorz$2216     071A GR
  2 A$bloxorz$2217     071B GR  |   2 A$bloxorz$2223     071E GR
  2 A$bloxorz$2229     0721 GR  |   2 A$bloxorz$223      00CA GR
  2 A$bloxorz$2230     0724 GR  |   2 A$bloxorz$2231     0726 GR
  2 A$bloxorz$2237     0728 GR  |   2 A$bloxorz$2238     0729 GR
  2 A$bloxorz$224      00CC GR  |   2 A$bloxorz$2244     072C GR
  2 A$bloxorz$2245     072E GR  |   2 A$bloxorz$2246     0731 GR
  2 A$bloxorz$2248     0734 GR  |   2 A$bloxorz$2249     0737 GR
  2 A$bloxorz$2250     0739 GR  |   2 A$bloxorz$2256     073B GR
  2 A$bloxorz$2257     073D GR  |   2 A$bloxorz$2263     0740 GR
  2 A$bloxorz$2264     0742 GR  |   2 A$bloxorz$2265     0745 GR
  2 A$bloxorz$2267     0747 GR  |   2 A$bloxorz$2268     074A GR
  2 A$bloxorz$2269     074C GR  |   2 A$bloxorz$2275     074E GR
  2 A$bloxorz$2276     0750 GR  |   2 A$bloxorz$2282     0753 GR
  2 A$bloxorz$2283     0755 GR  |   2 A$bloxorz$2284     0758 GR
  2 A$bloxorz$2286     075A GR  |   2 A$bloxorz$2287     075D GR
  2 A$bloxorz$2288     075F GR  |   2 A$bloxorz$2294     0761 GR
  2 A$bloxorz$2295     0763 GR  |   2 A$bloxorz$230      00CF GR
  2 A$bloxorz$2301     0766 GR  |   2 A$bloxorz$2302     0768 GR
  2 A$bloxorz$2309     076B GR  |   2 A$bloxorz$231      00D2 GR
  2 A$bloxorz$2310     076E GR  |   2 A$bloxorz$2311     0770 GR
  2 A$bloxorz$2317     0772 GR  |   2 A$bloxorz$2318     0775 GR
  2 A$bloxorz$2324     0778 GR  |   2 A$bloxorz$2325     077A GR
  2 A$bloxorz$2332     077E GR  |   2 A$bloxorz$2338     0781 GR
  2 A$bloxorz$2339     0784 GR  |   2 A$bloxorz$234      00D3 GR
  2 A$bloxorz$2340     0786 GR  |   2 A$bloxorz$2346     0788 GR
  2 A$bloxorz$2347     078B GR  |   2 A$bloxorz$2348     078C GR
  2 A$bloxorz$235      00D5 GR  |   2 A$bloxorz$2354     078F GR
  2 A$bloxorz$2355     0792 GR  |   2 A$bloxorz$2356     0794 GR
  2 A$bloxorz$2363     0797 GR  |   2 A$bloxorz$2365     079A GR
  2 A$bloxorz$241      00D7 GR  |   2 A$bloxorz$242      00D9 GR
  2 A$bloxorz$2432     07D7 GR  |   2 A$bloxorz$2433     07D9 GR
  2 A$bloxorz$2439     07DB GR  |   2 A$bloxorz$2445     07DE GR
  2 A$bloxorz$2446     07E0 GR  |   2 A$bloxorz$2449     07E2 GR
  2 A$bloxorz$2450     07E4 GR  |   2 A$bloxorz$2456     07E7 GR
  2 A$bloxorz$2457     07E9 GR  |   2 A$bloxorz$2463     07EC GR
  2 A$bloxorz$2464     07EE GR  |   2 A$bloxorz$2465     07F0 GR
  2 A$bloxorz$2466     07F2 GR  |   2 A$bloxorz$2467     07F4 GR
  2 A$bloxorz$2468     07F7 GR  |   2 A$bloxorz$2471     07F9 GR
  2 A$bloxorz$2472     07FB GR  |   2 A$bloxorz$2473     07FD GR
  2 A$bloxorz$2474     07FF GR  |   2 A$bloxorz$248      00DC GR
  2 A$bloxorz$2480     0802 GR  |   2 A$bloxorz$2481     0804 GR
  2 A$bloxorz$2482     0806 GR  |   2 A$bloxorz$2483     0808 GR
  2 A$bloxorz$2484     080A GR  |   2 A$bloxorz$2485     080D GR
  2 A$bloxorz$2488     080F GR  |   2 A$bloxorz$2489     0811 GR
  2 A$bloxorz$249      00DE GR  |   2 A$bloxorz$2490     0813 GR
  2 A$bloxorz$2491     0815 GR  |   2 A$bloxorz$2497     0818 GR
  2 A$bloxorz$2498     081A GR  |   2 A$bloxorz$2499     081C GR
  2 A$bloxorz$2500     081E GR  |   2 A$bloxorz$2501     0820 GR
  2 A$bloxorz$2502     0823 GR  |   2 A$bloxorz$2505     0825 GR
  2 A$bloxorz$2506     0827 GR  |   2 A$bloxorz$2507     0829 GR
  2 A$bloxorz$2508     082B GR  |   2 A$bloxorz$2514     082E GR
  2 A$bloxorz$2515     0830 GR  |   2 A$bloxorz$2516     0832 GR
  2 A$bloxorz$2517     0834 GR  |   2 A$bloxorz$2518     0836 GR
  2 A$bloxorz$2519     0839 GR  |   2 A$bloxorz$2522     083B GR
  2 A$bloxorz$2523     083D GR  |   2 A$bloxorz$2524     083F GR
  2 A$bloxorz$2525     0841 GR  |   2 A$bloxorz$2531     0844 GR
  2 A$bloxorz$2532     0847 GR  |   2 A$bloxorz$2533     0849 GR
  2 A$bloxorz$2539     084B GR  |   2 A$bloxorz$2546     084E GR
  2 A$bloxorz$2547     0851 GR  |   2 A$bloxorz$2548     0853 GR
  2 A$bloxorz$255      00E1 GR  |   2 A$bloxorz$2554     0855 GR
  2 A$bloxorz$2555     0857 GR  |   2 A$bloxorz$256      00E4 GR
  2 A$bloxorz$2562     085A GR  |   2 A$bloxorz$2563     085D GR
  2 A$bloxorz$2564     085F GR  |   2 A$bloxorz$257      00E6 GR
  2 A$bloxorz$2570     0861 GR  |   2 A$bloxorz$2571     0863 GR
  2 A$bloxorz$2572     0865 GR  |   2 A$bloxorz$2573     0867 GR
  2 A$bloxorz$2576     086A GR  |   2 A$bloxorz$2579     086D GR
  2 A$bloxorz$258      00EA GR  |   2 A$bloxorz$2581     086F GR
  2 A$bloxorz$2582     0871 GR  |   2 A$bloxorz$259      00EC GR
  2 A$bloxorz$2590     0873 GR  |   2 A$bloxorz$2591     0876 GR
  2 A$bloxorz$2597     0878 GR  |   2 A$bloxorz$2598     087A GR
  2 A$bloxorz$2599     087C GR  |   2 A$bloxorz$260      00EE GR
  2 A$bloxorz$2605     087F GR  |   2 A$bloxorz$2606     0881 GR
  2 A$bloxorz$2607     0883 GR  |   2 A$bloxorz$2608     0885 GR
  2 A$bloxorz$2609     0888 GR  |   2 A$bloxorz$261      00F2 GR
  2 A$bloxorz$2611     088A GR  |   2 A$bloxorz$2644     08A6 GR
  2 A$bloxorz$2645     08A8 GR  |   2 A$bloxorz$2651     08AA GR
  2 A$bloxorz$2657     08AD GR  |   2 A$bloxorz$2658     08AF GR
  2 A$bloxorz$2661     08B1 GR  |   2 A$bloxorz$2662     08B3 GR
  2 A$bloxorz$2668     08B6 GR  |   2 A$bloxorz$2669     08B8 GR
  2 A$bloxorz$2675     08BB GR  |   2 A$bloxorz$2676     08BD GR
  2 A$bloxorz$2677     08BF GR  |   2 A$bloxorz$2678     08C1 GR
  2 A$bloxorz$2679     08C3 GR  |   2 A$bloxorz$268      00F5 GR
  2 A$bloxorz$2680     08C6 GR  |   2 A$bloxorz$2683     08C8 GR
  2 A$bloxorz$2684     08CA GR  |   2 A$bloxorz$2685     08CC GR
  2 A$bloxorz$2686     08CE GR  |   2 A$bloxorz$269      00F7 GR
  2 A$bloxorz$2692     08D1 GR  |   2 A$bloxorz$2693     08D3 GR
  2 A$bloxorz$2694     08D5 GR  |   2 A$bloxorz$2695     08D7 GR
  2 A$bloxorz$2696     08D9 GR  |   2 A$bloxorz$2697     08DC GR
  2 A$bloxorz$270      00F9 GR  |   2 A$bloxorz$2700     08DE GR
  2 A$bloxorz$2701     08E0 GR  |   2 A$bloxorz$2702     08E2 GR
  2 A$bloxorz$2703     08E4 GR  |   2 A$bloxorz$2709     08E7 GR
  2 A$bloxorz$271      00FD GR  |   2 A$bloxorz$2710     08E9 GR
  2 A$bloxorz$2711     08EB GR  |   2 A$bloxorz$2712     08ED GR
  2 A$bloxorz$2713     08EF GR  |   2 A$bloxorz$2714     08F2 GR
  2 A$bloxorz$2717     08F4 GR  |   2 A$bloxorz$2718     08F6 GR
  2 A$bloxorz$2719     08F8 GR  |   2 A$bloxorz$272      00FF GR
  2 A$bloxorz$2720     08FA GR  |   2 A$bloxorz$2726     08FD GR
  2 A$bloxorz$2727     0900 GR  |   2 A$bloxorz$2728     0902 GR
  2 A$bloxorz$273      0101 GR  |   2 A$bloxorz$2734     0904 GR
  2 A$bloxorz$274      0103 GR  |   2 A$bloxorz$2741     0906 GR
  2 A$bloxorz$2742     0908 GR  |   2 A$bloxorz$2743     090A GR
  2 A$bloxorz$2744     090C GR  |   2 A$bloxorz$2745     090F GR
  2 A$bloxorz$2746     0911 GR  |   2 A$bloxorz$2747     0913 GR
  2 A$bloxorz$2748     0915 GR  |   2 A$bloxorz$2749     0917 GR
  2 A$bloxorz$275      0105 GR  |   2 A$bloxorz$2755     0919 GR
  2 A$bloxorz$276      0109 GR  |   2 A$bloxorz$2762     091C GR
  2 A$bloxorz$2763     091F GR  |   2 A$bloxorz$2764     0921 GR
  2 A$bloxorz$2770     0923 GR  |   2 A$bloxorz$2772     0926 GR
  2 A$bloxorz$2773     0928 GR  |   2 A$bloxorz$2776     092A GR
  2 A$bloxorz$2782     092C GR  |   2 A$bloxorz$2788     092F GR
  2 A$bloxorz$2789     0932 GR  |   2 A$bloxorz$2795     0935 GR
  2 A$bloxorz$2796     0938 GR  |   2 A$bloxorz$2797     0939 GR
  2 A$bloxorz$2803     093C GR  |   2 A$bloxorz$2804     093E GR
  2 A$bloxorz$2810     0942 GR  |   2 A$bloxorz$2811     0945 GR
  2 A$bloxorz$2812     0948 GR  |   2 A$bloxorz$2818     094A GR
  2 A$bloxorz$2819     094D GR  |   2 A$bloxorz$2820     094E GR
  2 A$bloxorz$2821     0950 GR  |   2 A$bloxorz$2822     0952 GR
  2 A$bloxorz$2823     0954 GR  |   2 A$bloxorz$2824     0956 GR
  2 A$bloxorz$283      010C GR  |   2 A$bloxorz$2830     0959 GR
  2 A$bloxorz$2831     095C GR  |   2 A$bloxorz$2832     095D GR
  2 A$bloxorz$2833     095E GR  |   2 A$bloxorz$2834     0960 GR
  2 A$bloxorz$2835     0963 GR  |   2 A$bloxorz$2836     0965 GR
  2 A$bloxorz$2837     0966 GR  |   2 A$bloxorz$2838     0968 GR
  2 A$bloxorz$2839     096A GR  |   2 A$bloxorz$284      010F GR
  2 A$bloxorz$2840     096D GR  |   2 A$bloxorz$2847     096F GR
  2 A$bloxorz$2848     0972 GR  |   2 A$bloxorz$2849     0973 GR
  2 A$bloxorz$2855     0976 GR  |   2 A$bloxorz$2856     0979 GR
  2 A$bloxorz$2857     097B GR  |   2 A$bloxorz$2864     097E GR
  2 A$bloxorz$2866     0981 GR  |   2 A$bloxorz$2867     0983 GR
  2 A$bloxorz$2870     0984 GR  |   2 A$bloxorz$2871     0986 GR
  2 A$bloxorz$2877     0988 GR  |   2 A$bloxorz$2878     098A GR
  2 A$bloxorz$2884     098E GR  |   2 A$bloxorz$2890     0991 GR
  2 A$bloxorz$2891     0993 GR  |   2 A$bloxorz$2892     0995 GR
  2 A$bloxorz$2898     0998 GR  |   2 A$bloxorz$2899     099A GR
  2 A$bloxorz$290      0112 GR  |   2 A$bloxorz$2900     099C GR
  2 A$bloxorz$2906     099F GR  |   2 A$bloxorz$2907     09A1 GR
  2 A$bloxorz$2908     09A3 GR  |   2 A$bloxorz$2909     09A6 GR
  2 A$bloxorz$291      0115 GR  |   2 A$bloxorz$2910     09A8 GR
  2 A$bloxorz$2911     09AA GR  |   2 A$bloxorz$2917     09AC GR
  2 A$bloxorz$2918     09AE GR  |   2 A$bloxorz$2925     09B1 GR
  2 A$bloxorz$2926     09B4 GR  |   2 A$bloxorz$2927     09B7 GR
  2 A$bloxorz$2928     09BA GR  |   2 A$bloxorz$2929     09BD GR
  2 A$bloxorz$2930     09C0 GR  |   2 A$bloxorz$2931     09C3 GR
  2 A$bloxorz$2932     09C6 GR  |   2 A$bloxorz$2933     09C9 GR
  2 A$bloxorz$2934     09CC GR  |   2 A$bloxorz$2940     09CF GR
  2 A$bloxorz$2941     09D1 GR  |   2 A$bloxorz$2947     09D4 GR
  2 A$bloxorz$2948     09D6 GR  |   2 A$bloxorz$2954     09D9 GR
  2 A$bloxorz$2960     09DC GR  |   2 A$bloxorz$2966     09DF GR
  2 A$bloxorz$297      0118 GR  |   2 A$bloxorz$2972     09E2 GR
  2 A$bloxorz$298      011B GR  |   2 A$bloxorz$2984     09E5 GR
  2 A$bloxorz$299      011D GR  |   2 A$bloxorz$2990     09E8 GR
  2 A$bloxorz$2991     09EB GR  |   2 A$bloxorz$2992     09ED GR
  2 A$bloxorz$2993     09F1 GR  |   2 A$bloxorz$2994     09F2 GR
  2 A$bloxorz$2995     09F4 GR  |   2 A$bloxorz$2996     09F5 GR
  2 A$bloxorz$2997     09F6 GR  |   2 A$bloxorz$2998     09F8 GR
  2 A$bloxorz$3013     0A0A GR  |   2 A$bloxorz$3019     0A0D GR
  2 A$bloxorz$3026     0A10 GR  |   2 A$bloxorz$3032     0A13 GR
  2 A$bloxorz$3039     0A16 GR  |   2 A$bloxorz$3045     0A19 GR
  2 A$bloxorz$305      0120 GR  |   2 A$bloxorz$3051     0A1C GR
  2 A$bloxorz$3058     0A1F GR  |   2 A$bloxorz$306      0123 GR
  2 A$bloxorz$3064     0A22 GR  |   2 A$bloxorz$3070     0A25 GR
  2 A$bloxorz$3077     0A28 GR  |   2 A$bloxorz$3083     0A2B GR
  2 A$bloxorz$3089     0A2E GR  |   2 A$bloxorz$3096     0A30 GR
  2 A$bloxorz$3102     0A33 GR  |   2 A$bloxorz$3108     0A36 GR
  2 A$bloxorz$3115     0A38 GR  |   2 A$bloxorz$312      0126 GR
  2 A$bloxorz$3121     0A3B GR  |   2 A$bloxorz$313      0128 GR
  2 A$bloxorz$3133     0A3E GR  |   2 A$bloxorz$3134     0A41 GR
  2 A$bloxorz$3135     0A43 GR  |   2 A$bloxorz$3141     0A47 GR
  2 A$bloxorz$3147     0A4A GR  |   2 A$bloxorz$3148     0A4D GR
  2 A$bloxorz$3151     0A4F GR  |   2 A$bloxorz$3152     0A51 GR
  2 A$bloxorz$3158     0A54 GR  |   2 A$bloxorz$3164     0A57 GR
  2 A$bloxorz$3167     0A5A GR  |   2 A$bloxorz$319      012B GR
  2 A$bloxorz$326      012E GR  |   2 A$bloxorz$327      0131 GR
  2 A$bloxorz$333      0134 GR  |   2 A$bloxorz$334      0137 GR
  2 A$bloxorz$340      013A GR  |   2 A$bloxorz$341      013D GR
  2 A$bloxorz$342      013E GR  |   2 A$bloxorz$348      0141 GR
  2 A$bloxorz$349      0144 GR  |   2 A$bloxorz$35       0000 GR
  2 A$bloxorz$355      0147 GR  |   2 A$bloxorz$356      0149 GR
  2 A$bloxorz$36       0002 GR  |   2 A$bloxorz$362      014C GR
  2 A$bloxorz$369      014F GR  |   2 A$bloxorz$37       0004 GR
  2 A$bloxorz$370      0152 GR  |   2 A$bloxorz$376      0155 GR
  2 A$bloxorz$377      0158 GR  |   2 A$bloxorz$383      015B GR
  2 A$bloxorz$384      015E GR  |   2 A$bloxorz$390      0161 GR
  2 A$bloxorz$391      0164 GR  |   2 A$bloxorz$392      0165 GR
  2 A$bloxorz$398      0168 GR  |   2 A$bloxorz$399      016A GR
  2 A$bloxorz$405      016D GR  |   2 A$bloxorz$412      016F GR
  2 A$bloxorz$413      0172 GR  |   2 A$bloxorz$419      0175 GR
  2 A$bloxorz$420      0178 GR  |   2 A$bloxorz$426      017B GR
  2 A$bloxorz$427      017E GR  |   2 A$bloxorz$433      0181 GR
  2 A$bloxorz$434      0184 GR  |   2 A$bloxorz$435      0186 GR
  2 A$bloxorz$441      0189 GR  |   2 A$bloxorz$442      018B GR
  2 A$bloxorz$454      018E GR  |   2 A$bloxorz$461      0191 GR
  2 A$bloxorz$462      0193 GR  |   2 A$bloxorz$463      0195 GR
  2 A$bloxorz$464      0199 GR  |   2 A$bloxorz$465      019B GR
  2 A$bloxorz$466      019D GR  |   2 A$bloxorz$467      019F GR
  2 A$bloxorz$468      01A1 GR  |   2 A$bloxorz$469      01A5 GR
  2 A$bloxorz$476      01A8 GR  |   2 A$bloxorz$477      01AB GR
  2 A$bloxorz$483      01AE GR  |   2 A$bloxorz$489      01B1 GR
  2 A$bloxorz$49       0006 GR  |   2 A$bloxorz$490      01B4 GR
  2 A$bloxorz$491      01B5 GR  |   2 A$bloxorz$497      01B8 GR
  2 A$bloxorz$498      01BB GR  |   2 A$bloxorz$504      01BE GR
  2 A$bloxorz$511      01C1 GR  |   2 A$bloxorz$512      01C4 GR
  2 A$bloxorz$518      01C7 GR  |   2 A$bloxorz$519      01CA GR
  2 A$bloxorz$525      01CD GR  |   2 A$bloxorz$526      01D0 GR
  2 A$bloxorz$527      01D1 GR  |   2 A$bloxorz$533      01D4 GR
  2 A$bloxorz$534      01D7 GR  |   2 A$bloxorz$540      01DA GR
  2 A$bloxorz$547      01DD GR  |   2 A$bloxorz$548      01E0 GR
  2 A$bloxorz$55       0009 GR  |   2 A$bloxorz$554      01E3 GR
  2 A$bloxorz$555      01E6 GR  |   2 A$bloxorz$56       000B GR
  2 A$bloxorz$561      01E9 GR  |   2 A$bloxorz$562      01EC GR
  2 A$bloxorz$568      01EF GR  |   2 A$bloxorz$569      01F2 GR
  2 A$bloxorz$570      01F4 GR  |   2 A$bloxorz$576      01F7 GR
  2 A$bloxorz$582      01FA GR  |   2 A$bloxorz$589      01FC GR
  2 A$bloxorz$59       000D GR  |   2 A$bloxorz$590      01FF GR
  2 A$bloxorz$596      0202 GR  |   2 A$bloxorz$597      0205 GR
  2 A$bloxorz$60       000F GR  |   2 A$bloxorz$603      0208 GR
  2 A$bloxorz$604      020B GR  |   2 A$bloxorz$610      020E GR
  2 A$bloxorz$611      0211 GR  |   2 A$bloxorz$612      0212 GR
  2 A$bloxorz$618      0215 GR  |   2 A$bloxorz$630      0218 GR
  2 A$bloxorz$637      021B GR  |   2 A$bloxorz$638      021D GR
  2 A$bloxorz$639      021F GR  |   2 A$bloxorz$640      0223 GR
  2 A$bloxorz$641      0225 GR  |   2 A$bloxorz$642      0227 GR
  2 A$bloxorz$643      0229 GR  |   2 A$bloxorz$644      022B GR
  2 A$bloxorz$645      022F GR  |   2 A$bloxorz$652      0232 GR
  2 A$bloxorz$653      0235 GR  |   2 A$bloxorz$659      0238 GR
  2 A$bloxorz$66       0012 GR  |   2 A$bloxorz$660      023B GR
  2 A$bloxorz$666      023E GR  |   2 A$bloxorz$667      0241 GR
  2 A$bloxorz$668      0242 GR  |   2 A$bloxorz$67       0014 GR
  2 A$bloxorz$674      0245 GR  |   2 A$bloxorz$675      0248 GR
  2 A$bloxorz$681      024B GR  |   2 A$bloxorz$687      024E GR
  2 A$bloxorz$694      0251 GR  |   2 A$bloxorz$695      0254 GR
  2 A$bloxorz$701      0257 GR  |   2 A$bloxorz$702      025A GR
  2 A$bloxorz$708      025D GR  |   2 A$bloxorz$709      0260 GR
  2 A$bloxorz$710      0262 GR  |   2 A$bloxorz$716      0265 GR
  2 A$bloxorz$717      0268 GR  |   2 A$bloxorz$723      026B GR
  2 A$bloxorz$729      026E GR  |   2 A$bloxorz$73       0017 GR
  2 A$bloxorz$736      0271 GR  |   2 A$bloxorz$737      0274 GR
  2 A$bloxorz$74       0019 GR  |   2 A$bloxorz$743      0277 GR
  2 A$bloxorz$749      027A GR  |   2 A$bloxorz$75       001B GR
  2 A$bloxorz$750      027D GR  |   2 A$bloxorz$756      0280 GR
  2 A$bloxorz$757      0283 GR  |   2 A$bloxorz$758      0284 GR
  2 A$bloxorz$76       001D GR  |   2 A$bloxorz$764      0287 GR
  2 A$bloxorz$77       001F GR  |   2 A$bloxorz$771      0289 GR
  2 A$bloxorz$772      028C GR  |   2 A$bloxorz$778      028F GR
  2 A$bloxorz$779      0292 GR  |   2 A$bloxorz$785      0295 GR
  2 A$bloxorz$786      0298 GR  |   2 A$bloxorz$792      029B GR
  2 A$bloxorz$793      029E GR  |   2 A$bloxorz$794      029F GR
  2 A$bloxorz$80       0022 GR  |   2 A$bloxorz$81       0024 GR
  2 A$bloxorz$812      02A2 GR  |   2 A$bloxorz$813      02A5 GR
  2 A$bloxorz$814      02A8 GR  |   2 A$bloxorz$815      02AA GR
  2 A$bloxorz$816      02AC GR  |   2 A$bloxorz$82       0026 GR
  2 A$bloxorz$823      02AF GR  |   2 A$bloxorz$824      02B2 GR
  2 A$bloxorz$825      02B4 GR  |   2 A$bloxorz$83       0028 GR
  2 A$bloxorz$833      02B5 GR  |   2 A$bloxorz$834      02B7 GR
  2 A$bloxorz$840      02BA GR  |   2 A$bloxorz$846      02BD GR
  2 A$bloxorz$847      02C0 GR  |   2 A$bloxorz$853      02C3 GR
  2 A$bloxorz$854      02C6 GR  |   2 A$bloxorz$86       002B GR
  2 A$bloxorz$860      02C9 GR  |   2 A$bloxorz$861      02CD GR
  2 A$bloxorz$864      02CE GR  |   2 A$bloxorz$870      02D0 GR
  2 A$bloxorz$871      02D2 GR  |   2 A$bloxorz$874      02D4 GR
  2 A$bloxorz$875      02D6 GR  |   2 A$bloxorz$878      02D9 GR
  2 A$bloxorz$881      02DB GR  |   2 A$bloxorz$884      02DD GR
  2 A$bloxorz$887      02DF GR  |   2 A$bloxorz$89       002E GR
  2 A$bloxorz$890      02E2 GR  |   2 A$bloxorz$896      02E5 GR
  2 A$bloxorz$899      02E7 GR  |   2 A$bloxorz$90       0030 GR
  2 A$bloxorz$902      02E9 GR  |   2 A$bloxorz$905      02EC GR
  2 A$bloxorz$908      02EE GR  |   2 A$bloxorz$911      02F2 GR
  2 A$bloxorz$914      02F6 GR  |   2 A$bloxorz$917      02F8 GR
  2 A$bloxorz$920      02FB GR  |   2 A$bloxorz$923      02FD GR
  2 A$bloxorz$926      0301 GR  |   2 A$bloxorz$929      0305 GR
  2 A$bloxorz$932      0309 GR  |   2 A$bloxorz$935      030D GR
  2 A$bloxorz$938      030F GR  |   2 A$bloxorz$941      0312 GR
  2 A$bloxorz$944      0314 GR  |   2 A$bloxorz$947      0316 GR
  2 A$bloxorz$950      0318 GR  |   2 A$bloxorz$953      0319 GR
  2 A$bloxorz$956      031B GR  |   2 A$bloxorz$959      031D GR
  2 A$bloxorz$96       0032 GR  |   2 A$bloxorz$960      031F GR
  2 A$bloxorz$968      0320 GR  |   2 A$bloxorz$969      0323 GR
  2 A$bloxorz$97       0035 GR  |   2 A$bloxorz$975      0325 GR
  2 A$bloxorz$976      0328 GR  |   2 A$bloxorz$977      0329 GR
  2 A$bloxorz$978      032C GR  |   2 A$bloxorz$979      032E GR
  2 A$bloxorz$98       0037 GR  |   2 A$bloxorz$985      0330 GR
  2 A$bloxorz$986      0333 GR  |   2 A$bloxorz$99       003A GR
  2 A$bloxorz$992      0336 GR  |   2 A$bloxorz$993      0339 GR
  2 A$bloxorz$999      033C GR  |   2 L100               0747 R
  2 L101               075A R   |   2 L102               077E R
  2 L104               0797 R   |   2 L105               079A R
  2 L107               084E R   |   2 L108               085A R
  2 L110               086F R   |   2 L113               088A R
  2 L115               091C R   |   2 L116               0906 R
  2 L118               0926 R   |   2 L122               096F R
  2 L123               097E R   |   2 L124               0981 R
  2 L126               09B1 R   |   2 L127               0A3E R
  2 L128               0A0A R   |   2 L129               0A10 R
  2 L130               0A16 R   |   2 L131               0A1F R
  2 L132               0A28 R   |   2 L133               0A30 R
  2 L134               0A38 R   |   2 L135               09FC R
  2 L138               09E5 R   |   2 L17                02A2 R
  2 L18                00F5 R   |   2 L19                0191 R
  2 L2                 0006 R   |   2 L21                018E R
  2 L22                010C R   |   2 L23                014F R
  2 L24                012E R   |   2 L26                0218 R
  2 L27                01A8 R   |   2 L28                01DD R
  2 L29                01C1 R   |   2 L31                02A2 R
  2 L32                0232 R   |   2 L33                0271 R
  2 L34                0251 R   |   2 L36                02AF R
  2 L38                021B R   |   2 L39                016F R
  2 L40                01FC R   |   2 L41                0289 R
  2 L48                0348 R   |   2 L5                 004C R
  2 L57                0566 R   |   2 L58                053F R
  2 L59                054E R   |   2 L6                 0086 R
  2 L61                0549 R   |   2 L62                054C R
  2 L63                0556 R   |   2 L64                0559 R
  2 L65                0563 R   |   2 L66                0566 R
  2 L67                0591 R   |   2 L68                059D R
  2 L69                05AF R   |   2 L7                 0088 R
  2 L70                05C9 R   |   2 L72                05B9 R
  2 L73                05C6 R   |   2 L74                05DC R
  2 L75                05F0 R   |   2 L76                0605 R
  2 L77                061D R   |   2 L78                061D R
  2 L79                055B R   |   2 L8                 0071 R
  2 L80                05F2 R   |   2 L83                0638 R
  2 L87                0669 R   |   2 L88                066B R
  2 L9                 0055 R   |   2 L91                0699 R
  2 L94                070A R   |   2 L96                0714 R
  2 L98                0734 R   |   2 L99                076B R
  2 LC0                079B R   |   2 LC1                07A6 R
  2 LC2                07B4 R   |   2 LC3                07C7 R
  2 LC4                088B R   |   2 LC5                0899 R
  2 LC6                08A0 R   |     _Vec_Buttons       **** GX
    _Vec_Text_Widt     **** GX  |     ___DP_to_C8        **** GX
    ___DP_to_D0        **** GX  |     ___Do_Sound        **** GX
    ___Draw_VLp        **** GX  |     ___Init_Music_     **** GX
    ___Intensity_a     **** GX  |     ___Joy_Digital     **** GX
    ___Moveto_d        **** GX  |     ___Print_Str_d     **** GX
    ___Read_Btns       **** GX  |     ___Reset0Ref       **** GX
    ___Wait_Recal      **** GX  |   4 _blockAnimatin     0017 GR
  4 _blockAnimatio     0012 GR  |   4 _blockAnimatio     0016 GR
  2 _blockFalling      06EE GR  |   2 _blockMoving       04BF GR
  2 _blockMovingAt     092A GR  |   2 _blockMovingTo     0620 GR
  4 _blockOrientat     000F GR  |   2 _blockWaiting      0717 GR
  4 _blockX            0010 GR  |   4 _blockY            0011 GR
  4 _blockYOfs         001B GR  |   2 _changeMusic       00CA GR
  2 _clearMenu         08A6 GR  |   3 _currentMusic      0000 GR
    _delay10ms         **** GX  |   2 _depth2Rolling     2A25 GR
  2 _depth2Rolling     0BF1 GR  |   2 _depth2Rolling     0E4F GR
  2 _depth2Rolling     23D3 GR  |   2 _depth2Rolling     2637 GR
  2 _depth2Rolling     289B GR  |   2 _depth2Rolling     10B3 GR
  2 _depth2Rolling     1317 GR  |   2 _depth2Rolling     157B GR
  2 _depth2Rolling     17DF GR  |   2 _depth2Rolling     1A43 GR
  2 _depth2Rolling     1CA7 GR  |   2 _depth2Rolling     1F0B GR
  2 _depth2Rolling     216F GR  |   2 _depth2Rolling     2A3D GR
  2 _depth2Rolling     0C22 GR  |   2 _depth2Rolling     0E80 GR
  2 _depth2Rolling     2404 GR  |   2 _depth2Rolling     2668 GR
  2 _depth2Rolling     28CC GR  |   2 _depth2Rolling     10E4 GR
  2 _depth2Rolling     1348 GR  |   2 _depth2Rolling     15AC GR
  2 _depth2Rolling     1810 GR  |   2 _depth2Rolling     1A74 GR
  2 _depth2Rolling     1CD8 GR  |   2 _depth2Rolling     1F3C GR
  2 _depth2Rolling     21A0 GR  |   2 _doBlockAnimat     0320 GR
    _dp_VIA_t1_cnt     **** GX  |   2 _drawBlock         0455 GR
  2 _drawField         02CE GR  |     _endX              **** GX
    _endY              **** GX  |   2 _fallingMusic      2ABF GR
  4 _gameState         001C GR  |     _getField          **** GX
  2 _height2Fallin     29C5 GR  |   2 _height2Fallin     0B27 GR
  2 _height2Fallin     0D82 GR  |   2 _height2Fallin     2306 GR
  2 _height2Fallin     256A GR  |   2 _height2Fallin     27CE GR
  2 _height2Fallin     0FE6 GR  |   2 _height2Fallin     124A GR
  2 _height2Fallin     14AE GR  |   2 _height2Fallin     1712 GR
  2 _height2Fallin     1976 GR  |   2 _height2Fallin     1BDA GR
  2 _height2Fallin     1E3E GR  |   2 _height2Fallin     20A2 GR
  2 _height2Fallin     29F5 GR  |   2 _height2Fallin     0B8C GR
  2 _height2Fallin     0DEA GR  |   2 _height2Fallin     236E GR
  2 _height2Fallin     25D2 GR  |   2 _height2Fallin     2836 GR
  2 _height2Fallin     104E GR  |   2 _height2Fallin     12B2 GR
  2 _height2Fallin     1516 GR  |   2 _height2Fallin     177A GR
  2 _height2Fallin     19DE GR  |   2 _height2Fallin     1C42 GR
  2 _height2Fallin     1EA6 GR  |   2 _height2Fallin     210A GR
  2 _height2Fallin     2965 GR  |   2 _height2Fallin     0A5D GR
  2 _height2Fallin     0CB5 GR  |   2 _height2Fallin     2239 GR
  2 _height2Fallin     249D GR  |   2 _height2Fallin     2701 GR
  2 _height2Fallin     0F19 GR  |   2 _height2Fallin     117D GR
  2 _height2Fallin     13E1 GR  |   2 _height2Fallin     1645 GR
  2 _height2Fallin     18A9 GR  |   2 _height2Fallin     1B0D GR
  2 _height2Fallin     1D71 GR  |   2 _height2Fallin     1FD5 GR
  2 _height2Fallin     2995 GR  |   2 _height2Fallin     0AC2 GR
  2 _height2Fallin     0D1A GR  |   2 _height2Fallin     229E GR
  2 _height2Fallin     2502 GR  |   2 _height2Fallin     2766 GR
  2 _height2Fallin     0F7E GR  |   2 _height2Fallin     11E2 GR
  2 _height2Fallin     1446 GR  |   2 _height2Fallin     16AA GR
  2 _height2Fallin     190E GR  |   2 _height2Fallin     1B72 GR
  2 _height2Fallin     1DD6 GR  |   2 _height2Fallin     203A GR
  2 _height2Rising     2A0D GR  |   2 _height2Rising     0BBD GR
  2 _height2Rising     0E1B GR  |   2 _height2Rising     239F GR
  2 _height2Rising     2603 GR  |   2 _height2Rising     2867 GR
  2 _height2Rising     107F GR  |   2 _height2Rising     12E3 GR
  2 _height2Rising     1547 GR  |   2 _height2Rising     17AB GR
  2 _height2Rising     1A0F GR  |   2 _height2Rising     1C73 GR
  2 _height2Rising     1ED7 GR  |   2 _height2Rising     213B GR
  2 _height2Rising     29DD GR  |   2 _height2Rising     0B58 GR
  2 _height2Rising     0DB6 GR  |   2 _height2Rising     233A GR
  2 _height2Rising     259E GR  |   2 _height2Rising     2802 GR
  2 _height2Rising     101A GR  |   2 _height2Rising     127E GR
  2 _height2Rising     14E2 GR  |   2 _height2Rising     1746 GR
  2 _height2Rising     19AA GR  |   2 _height2Rising     1C0E GR
  2 _height2Rising     1E72 GR  |   2 _height2Rising     20D6 GR
  2 _height2Rising     29AD GR  |   2 _height2Rising     0AF3 GR
  2 _height2Rising     0D4E GR  |   2 _height2Rising     22D2 GR
  2 _height2Rising     2536 GR  |   2 _height2Rising     279A GR
  2 _height2Rising     0FB2 GR  |   2 _height2Rising     1216 GR
  2 _height2Rising     147A GR  |   2 _height2Rising     16DE GR
  2 _height2Rising     1942 GR  |   2 _height2Rising     1BA6 GR
  2 _height2Rising     1E0A GR  |   2 _height2Rising     206E GR
  2 _height2Rising     297D GR  |   2 _height2Rising     0A8E GR
  2 _height2Rising     0CE6 GR  |   2 _height2Rising     226A GR
  2 _height2Rising     24CE GR  |   2 _height2Rising     2732 GR
  2 _height2Rising     0F4A GR  |   2 _height2Rising     11AE GR
  2 _height2Rising     1412 GR  |   2 _height2Rising     1676 GR
  2 _height2Rising     18DA GR  |   2 _height2Rising     1B3E GR
  2 _height2Rising     1DA2 GR  |   2 _height2Rising     2006 GR
  4 _infoText          0000 GR  |     _initLevel         **** GX
    _initSwatches      **** GX  |     _isField           **** GX
  2 _itoa              002E GR  |   4 _lastBlockDire     001A GR
  2 _led8              2AE7 GR  |     _level             **** GX
    _levelCount        **** GX  |   2 _levelEndMusic     2AA5 GR
  4 _levelHighscor     000C GR  |     _levelNumber       **** GX
    _levels            **** GX  |     _lineCount         **** GX
    _lineX0            **** GX  |     _lineX1            **** GX
    _lineY0            **** GX  |     _lineY1            **** GX
  2 _main              0984 GR  |   2 _mainMenu          07D7 GR
  2 _moveBlock         00D3 GR  |   4 _moveCount         000A GR
  2 _movingMusic       2ADF GR  |   4 _nextBlockAnim     0014 GR
  4 _nextBlockX        0018 GR  |   4 _nextBlockY        0019 GR
  4 _picAvailable      000E GR  |     _picRead           **** GX
    _picWrite          **** GX  |   2 _readEeprom        0659 GR
  2 _runtimeError      0000 GR  |   2 _sendCommand       0639 GR
  2 _showInfo          042B GR  |   2 _showInfo2         0349 GR
  2 _startBlockFal     02B5 GR  |   2 _startLevel        066C GR
  2 _startMusic        2A85 GR  |     _swatchSwitch      **** GX
  2 _updateInfoTex     00AD GR  |   3 _vecx              0002 GR
  2 _width2Rolling     2A6D GR  |   2 _width2Rolling     0C84 GR
  2 _width2Rolling     0EE5 GR  |   2 _width2Rolling     2469 GR
  2 _width2Rolling     26CD GR  |   2 _width2Rolling     2931 GR
  2 _width2Rolling     1149 GR  |   2 _width2Rolling     13AD GR
  2 _width2Rolling     1611 GR  |   2 _width2Rolling     1875 GR
  2 _width2Rolling     1AD9 GR  |   2 _width2Rolling     1D3D GR
  2 _width2Rolling     1FA1 GR  |   2 _width2Rolling     2205 GR
  2 _width2Rolling     2A55 GR  |   2 _width2Rolling     0C53 GR
  2 _width2Rolling     0EB4 GR  |   2 _width2Rolling     2438 GR
  2 _width2Rolling     269C GR  |   2 _width2Rolling     2900 GR
  2 _width2Rolling     1118 GR  |   2 _width2Rolling     137C GR
  2 _width2Rolling     15E0 GR  |   2 _width2Rolling     1844 GR
  2 _width2Rolling     1AA8 GR  |   2 _width2Rolling     1D0C GR
  2 _width2Rolling     1F70 GR  |   2 _width2Rolling     21D4 GR
  2 _writeEeprom       0873 GR  |     _x3d               **** GX
    _y3d               **** GX  |   2 drawFieldLoop      02E5 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 2AFD   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   1D   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

