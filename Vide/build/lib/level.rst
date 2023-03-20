                              1 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	level.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -IC:\data\vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
                             12 ;  -DOMMIT_FRAMEPOINTER=1 C:\data\vide\..\bloxorz\Vide\source\level.enr.c
                             13 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             14 ;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             15 ;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             16 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             17 ;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             18 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             19 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             20 ;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             21 ;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             22 ;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             23 ;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             24 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             25 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             26 ;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             27 ;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             28 ;  -fzero-initialized-in-bss
                             29 ;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
                             30 	.area .text
                             31 	.globl _getField
   422E                      32 _getField:
   422E 34 60         [ 7]   33 	pshs	y,u	; 
   4230 32 7B         [ 5]   34 	leas	-5,s	; ,,
   4232 E7 64         [ 5]   35 	stb	4,s	;  x, x
   4234 2D 36         [ 3]   36 	blt	L2	; 
   4236 6D 6B         [ 7]   37 	tst	11,s	;  y
   4238 2D 32         [ 3]   38 	blt	L2	; 
   423A C1 09         [ 2]   39 	cmpb	#9	;cmpqi:	;  x,
   423C 2E 2E         [ 3]   40 	bgt	L2	; 
   423E E6 6B         [ 5]   41 	ldb	11,s	; , y
   4240 C1 0E         [ 2]   42 	cmpb	#14	;cmpqi:	; ,
   4242 2E 28         [ 3]   43 	bgt	L2	; 
   4244 1D            [ 2]   44 	sex		;extendqihi2: R:b -> R:d	; ,
   4245 ED E4         [ 5]   45 	std	,s	; ,
   4247 E6 64         [ 5]   46 	ldb	4,s	; , x
   4249 1D            [ 2]   47 	sex		;extendqihi2: R:b -> R:d	; ,
   424A 1F 02         [ 6]   48 	tfr	d,y	; , x
   424C EC E4         [ 5]   49 	ldd	,s	; ,
   424E 58            [ 2]   50 	aslb	; 
   424F 49            [ 2]   51 	rola	; 
   4250 ED 62         [ 6]   52 	std	2,s	; ,
   4252 58            [ 2]   53 	aslb	; 
   4253 49            [ 2]   54 	rola	; 
   4254 58            [ 2]   55 	aslb	; 
   4255 49            [ 2]   56 	rola	; 
   4256 EE 62         [ 6]   57 	ldu	2,s	; ,
   4258 30 CB         [ 8]   58 	leax	d,u	;  tmp38, tmp37,
   425A 1E 02         [ 8]   59 	exg	d,y	; , x
   425C 30 8B         [ 8]   60 	leax	d,x	;  tmp39,, tmp39
   425E 1E 02         [ 8]   61 	exg	d,y	; , x
   4260 1E 01         [ 8]   62 	exg	d,x	; , tmp40
   4262 E3 9F C9 12   [11]   63 	addd	[_level]	; , <variable>.geometry
   4266 1E 01         [ 8]   64 	exg	d,x	; , tmp40
   4268 E6 84         [ 4]   65 	ldb	,x	;  c,
   426A 20 01         [ 3]   66 	bra	L3	; 
   426C                      67 L2:
   426C 5F            [ 2]   68 	clrb	;  c
   426D                      69 L3:
   426D 32 65         [ 5]   70 	leas	5,s	; ,,
   426F 35 E0         [ 8]   71 	puls	y,u,pc	; 
                             72 	.globl _getShifts
   4271                      73 _getShifts:
                             74 ;----- asm -----
                             75 ;  52 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                             76 	; #ENR#[51]    return shifts[bit];
                             77 ;  0 "" 2
                             78 ;--- end asm ---
   4271 8E 4E A7      [ 3]   79 	ldx	#_shifts	; 
   4274 3A            [ 3]   80 	abx
   4275 E6 84         [ 4]   81 	ldb	,x	;  tmp33
   4277 39            [ 5]   82 	rts
                             83 	.globl _isSwatchFieldOn
   4278                      84 _isSwatchFieldOn:
   4278 34 40         [ 6]   85 	pshs	u	; 
   427A 32 7E         [ 5]   86 	leas	-2,s	; ,,
   427C E7 E4         [ 4]   87 	stb	,s	;  x, x
                             88 ;----- asm -----
                             89 ;  58 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                             90 	; #ENR#[56]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                             91 ;  0 "" 2
                             92 ;--- end asm ---
   427E E6 66         [ 5]   93 	ldb	6,s	; , y
   4280 86 0A         [ 2]   94 	lda	#10	;mulqihi3	; 
   4282 3D            [11]   95 	mul
   4283 1F 01         [ 6]   96 	tfr	d,x	; , tmp33
   4285 E6 E4         [ 4]   97 	ldb	,s	; , x
   4287 1D            [ 2]   98 	sex		;extendqihi2: R:b -> R:d	; ,
   4288 1F 03         [ 6]   99 	tfr	d,u	; , x
   428A 1E 01         [ 8]  100 	exg	d,x	; , tmp33
   428C 33 CB         [ 8]  101 	leau	d,u	;  index,, index
                            102 ;----- asm -----
                            103 ;  60 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            104 	; #ENR#[57]    uint8_t bit = (uint8_t) (index & 7);
                            105 ;  0 "" 2
                            106 ;  62 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            107 	; #ENR#[58]    index >>= 3;
                            108 ;  0 "" 2
                            109 ;  64 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            110 	; #ENR#[59]    return (swatchesOn[index] & getShifts(bit)) > 0;
                            111 ;  0 "" 2
                            112 ;--- end asm ---
   428E 1F 30         [ 6]  113 	tfr	u,d	;  index,
   4290 47            [ 2]  114 	asra	; 
   4291 56            [ 2]  115 	rorb	; 
   4292 47            [ 2]  116 	asra	; 
   4293 56            [ 2]  117 	rorb	; 
   4294 47            [ 2]  118 	asra	; 
   4295 56            [ 2]  119 	rorb	; 
   4296 1F 01         [ 6]  120 	tfr	d,x	; , tmp35
   4298 E6 89 C9 14   [ 8]  121 	ldb	_swatchesOn,x	; , swatchesOn
   429C E7 61         [ 5]  122 	stb	1,s	; , D.1308
   429E 1F 30         [ 6]  123 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  index, index
   42A0 C4 07         [ 2]  124 	andb	#7	;  tmp38,
   42A2 BD 42 71      [ 8]  125 	jsr	_getShifts	; 
   42A5 E4 61         [ 5]  126 	andb	1,s	;  tmp40, D.1308
   42A7 27 02         [ 3]  127 	beq	L8	; 
   42A9 C6 01         [ 2]  128 	ldb	#1	;  tmp40,
   42AB                     129 L8:
   42AB 32 62         [ 5]  130 	leas	2,s	; ,,
   42AD 35 C0         [ 7]  131 	puls	u,pc	; 
                            132 	.globl _setSwatchField
   42AF                     133 _setSwatchField:
   42AF 34 20         [ 6]  134 	pshs	y	; 
   42B1 32 7C         [ 5]  135 	leas	-4,s	; ,,
   42B3 E7 E4         [ 4]  136 	stb	,s	;  x, x
                            137 ;----- asm -----
                            138 ;  70 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            139 	; #ENR#[64]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                            140 ;  0 "" 2
                            141 ;--- end asm ---
   42B5 E6 68         [ 5]  142 	ldb	8,s	; , y
   42B7 86 0A         [ 2]  143 	lda	#10	;mulqihi3	; 
   42B9 3D            [11]  144 	mul
   42BA 1F 01         [ 6]  145 	tfr	d,x	; , tmp37
   42BC E6 E4         [ 4]  146 	ldb	,s	; , x
   42BE 1D            [ 2]  147 	sex		;extendqihi2: R:b -> R:d	; ,
                            148 ; Applied peep: 4-2 (tfr exg 1=1, 2=2)
   42BF 1F 02         [ 6]  149 	tfr	d,y	; , x
                            150 ; ORG>	tfr	d,y	; , x
                            151 ; ORG>	exg	d,y	; , x
   42C1 30 8B         [ 8]  152 	leax	d,x	;  index,, index
                            153 ;----- asm -----
                            154 ;  72 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            155 	; #ENR#[65]    uint8_t bit = (uint8_t) (index & 7);
                            156 ;  0 "" 2
                            157 ;--- end asm ---
   42C3 1F 10         [ 6]  158 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  index, index
   42C5 C4 07         [ 2]  159 	andb	#7	;  index,
   42C7 E7 62         [ 5]  160 	stb	2,s	;  index, bit
                            161 ;----- asm -----
                            162 ;  74 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            163 	; #ENR#[66]    index >>= 3;
                            164 ;  0 "" 2
                            165 ;--- end asm ---
   42C9 1F 10         [ 6]  166 	tfr	x,d	;  index, index.79
   42CB 47            [ 2]  167 	asra	; 
   42CC 56            [ 2]  168 	rorb	; 
   42CD 47            [ 2]  169 	asra	; 
   42CE 56            [ 2]  170 	rorb	; 
   42CF 47            [ 2]  171 	asra	; 
   42D0 56            [ 2]  172 	rorb	; 
                            173 ;----- asm -----
                            174 ;  76 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            175 	; #ENR#[67]    if (on) {
                            176 ;  0 "" 2
                            177 ;--- end asm ---
   42D1 6D 69         [ 7]  178 	tst	9,s	;  on
   42D3 27 14         [ 3]  179 	beq	L11	; 
                            180 ;----- asm -----
                            181 ;  78 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            182 	; #ENR#[68]        swatchesOn[index] |= getShifts(bit);
                            183 ;  0 "" 2
                            184 ;--- end asm ---
   42D5 8E C9 14      [ 3]  185 	ldx	#_swatchesOn	; ,
   42D8 31 8B         [ 8]  186 	leay	d,x	;  tmp41, index.79,
   42DA E6 A4         [ 4]  187 	ldb	,y	; , swatchesOn
   42DC E7 61         [ 5]  188 	stb	1,s	; , D.1323
   42DE E6 62         [ 5]  189 	ldb	2,s	; , bit
   42E0 BD 42 71      [ 8]  190 	jsr	_getShifts	; 
   42E3 EA 61         [ 5]  191 	orb	1,s	;  tmp44, D.1323
   42E5 E7 A4         [ 4]  192 	stb	,y	;  tmp44, swatchesOn
   42E7 20 13         [ 3]  193 	bra	L13	; 
   42E9                     194 L11:
                            195 ;----- asm -----
                            196 ;  81 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            197 	; #ENR#[70]        swatchesOn[index] &= ~getShifts(bit);
                            198 ;  0 "" 2
                            199 ;--- end asm ---
   42E9 8E C9 14      [ 3]  200 	ldx	#_swatchesOn	; ,
   42EC 31 8B         [ 8]  201 	leay	d,x	;  tmp46, index.79,
   42EE E6 A4         [ 4]  202 	ldb	,y	; , swatchesOn
   42F0 E7 63         [ 5]  203 	stb	3,s	; , temp.80
   42F2 E6 62         [ 5]  204 	ldb	2,s	; , bit
   42F4 BD 42 71      [ 8]  205 	jsr	_getShifts	; 
   42F7 53            [ 2]  206 	comb	;  tmp49
   42F8 E4 63         [ 5]  207 	andb	3,s	;  tmp50, temp.80
   42FA E7 A4         [ 4]  208 	stb	,y	;  tmp50, swatchesOn
   42FC                     209 L13:
   42FC 32 64         [ 5]  210 	leas	4,s	; ,,
   42FE 35 A0         [ 7]  211 	puls	y,pc	; 
                            212 	.globl _isField
   4300                     213 _isField:
   4300 32 7E         [ 5]  214 	leas	-2,s	; ,,
   4302 E7 E4         [ 4]  215 	stb	,s	;  x, x
                            216 ;----- asm -----
                            217 ;  88 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            218 	; #ENR#[76]    char c = getField(x, y);
                            219 ;  0 "" 2
                            220 ;--- end asm ---
   4304 E6 64         [ 5]  221 	ldb	4,s	; , y
   4306 34 04         [ 6]  222 	pshs	b	; 
   4308 E6 61         [ 5]  223 	ldb	1,s	; , x
   430A BD 42 2E      [ 8]  224 	jsr	_getField	; 
   430D 32 61         [ 5]  225 	leas	1,s	; ,,
   430F E7 61         [ 5]  226 	stb	1,s	; , c
                            227 ;----- asm -----
                            228 ;  92 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            229 	; #ENR#[79]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
                            230 ;  0 "" 2
                            231 ;--- end asm ---
   4311 C1 6C         [ 2]  232 	cmpb	#108	;cmpqi:	; ,
   4313 27 0C         [ 3]  233 	beq	L15	; 
   4315 C1 72         [ 2]  234 	cmpb	#114	;cmpqi:	; ,
   4317 27 08         [ 3]  235 	beq	L15	; 
   4319 C1 6B         [ 2]  236 	cmpb	#107	;cmpqi:	; ,
   431B 27 04         [ 3]  237 	beq	L15	; 
   431D C1 71         [ 2]  238 	cmpb	#113	;cmpqi:	; ,
   431F 26 12         [ 3]  239 	bne	L16	; 
   4321                     240 L15:
                            241 ;----- asm -----
                            242 ;  94 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            243 	; #ENR#[80]        if (isSwatchFieldOn(x, y)) {
                            244 ;  0 "" 2
                            245 ;--- end asm ---
   4321 E6 64         [ 5]  246 	ldb	4,s	; , y
   4323 34 04         [ 6]  247 	pshs	b	; 
   4325 E6 61         [ 5]  248 	ldb	1,s	; , x
   4327 BD 42 78      [ 8]  249 	jsr	_isSwatchFieldOn	; 
   432A 32 61         [ 5]  250 	leas	1,s	; ,,
   432C 5D            [ 2]  251 	tstb	;  D.1337
   432D 27 04         [ 3]  252 	beq	L16	; 
                            253 ;----- asm -----
                            254 ;  96 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            255 	; #ENR#[81]            c = 'b';
                            256 ;  0 "" 2
                            257 ;--- end asm ---
   432F C6 62         [ 2]  258 	ldb	#98	; ,
   4331 E7 61         [ 5]  259 	stb	1,s	; , c
   4333                     260 L16:
                            261 ;----- asm -----
                            262 ;  102 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            263 	; #ENR#[86]    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
                            264 ;  0 "" 2
                            265 ;--- end asm ---
   4333 E6 61         [ 5]  266 	ldb	1,s	; , c
   4335 C1 62         [ 2]  267 	cmpb	#98	;cmpqi:	; ,
   4337 27 21         [ 3]  268 	beq	L17	; 
   4339 C1 65         [ 2]  269 	cmpb	#101	;cmpqi:	; ,
   433B 27 1D         [ 3]  270 	beq	L17	; 
   433D C1 73         [ 2]  271 	cmpb	#115	;cmpqi:	; ,
   433F 27 19         [ 3]  272 	beq	L17	; 
   4341 C1 68         [ 2]  273 	cmpb	#104	;cmpqi:	; ,
   4343 27 15         [ 3]  274 	beq	L17	; 
   4345 C1 66         [ 2]  275 	cmpb	#102	;cmpqi:	; ,
   4347 27 11         [ 3]  276 	beq	L17	; 
   4349 C1 76         [ 2]  277 	cmpb	#118	;cmpqi:	; ,
   434B C8 76         [ 2]  278 	eorb	#118	;  tmp34,
   434D 4F            [ 2]  279 	clra		;zero_extendqihi: R:b -> R:d	;  tmp34, tmp35
   434E C3 FF FF      [ 4]  280 	addd	#-1	;  tmp36,
   4351 1F 89         [ 6]  281 	tfr	a,b	; ,
   4353 4F            [ 2]  282 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4354 59            [ 2]  283 	rolb	; 
   4355 59            [ 2]  284 	rolb	; 
   4356 C4 01         [ 2]  285 	andb	#1	; ,
   4358 20 02         [ 3]  286 	bra	L19	; 
   435A                     287 L17:
   435A C6 01         [ 2]  288 	ldb	#1	;  iftmp.5,
   435C                     289 L19:
   435C 32 62         [ 5]  290 	leas	2,s	; ,,
   435E 39            [ 5]  291 	rts
                            292 	.globl _x3d
   435F                     293 _x3d:
   435F 34 40         [ 6]  294 	pshs	u	; 
   4361 32 7E         [ 5]  295 	leas	-2,s	; ,,
   4363 E7 E4         [ 4]  296 	stb	,s	;  x, x
                            297 ;----- asm -----
                            298 ;  171 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            299 	; #ENR#[127]    x -= LEVEL_WIDTH / 2 - 4;
                            300 ;  0 "" 2
                            301 ;  173 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            302 	; #ENR#[128]    return 14 * x - 6 * z;
                            303 ;  0 "" 2
                            304 ;--- end asm ---
   4365 E6 66         [ 5]  305 	ldb	6,s	; , z
   4367 86 FA         [ 2]  306 	lda	#-6	;mulqihi3	; 
   4369 3D            [11]  307 	mul
   436A 1F 01         [ 6]  308 	tfr	d,x	; , tmp31
   436C E6 E4         [ 4]  309 	ldb	,s	;  tmp32, x
   436E 5A            [ 2]  310 	decb	;  tmp32
   436F 86 0E         [ 2]  311 	lda	#14	;mulqihi3	; 
   4371 3D            [11]  312 	mul
   4372 1F 03         [ 6]  313 	tfr	d,u	; , tmp33
   4374 1F 10         [ 6]  314 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp31,
   4376 E7 61         [ 5]  315 	stb	1,s	; ,
   4378 1F 30         [ 6]  316 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp33, tmp35
   437A EB 61         [ 5]  317 	addb	1,s	;  tmp30,
   437C 32 62         [ 5]  318 	leas	2,s	; ,,
   437E 35 C0         [ 7]  319 	puls	u,pc	; 
                            320 	.globl _y3d
   4380                     321 _y3d:
   4380 32 7D         [ 5]  322 	leas	-3,s	; ,,
   4382 E7 62         [ 5]  323 	stb	2,s	;  x, x
                            324 ;----- asm -----
                            325 ;  180 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            326 	; #ENR#[134]    y -= LEVEL_HEIGHT / 2;
                            327 ;  0 "" 2
                            328 ;  182 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            329 	; #ENR#[135]    return 3 * x + 13 * y + 8 * z;
                            330 ;  0 "" 2
                            331 ;--- end asm ---
   4384 E6 65         [ 5]  332 	ldb	5,s	;  tmp32, y
   4386 CB F9         [ 2]  333 	addb	#-7	;  tmp32,
   4388 86 0D         [ 2]  334 	lda	#13	;mulqihi3	; 
   438A 3D            [11]  335 	mul
   438B 1F 01         [ 6]  336 	tfr	d,x	; , tmp33
   438D E6 66         [ 5]  337 	ldb	6,s	; , z
   438F 58            [ 2]  338 	aslb	; 
   4390 58            [ 2]  339 	aslb	; 
   4391 58            [ 2]  340 	aslb	; 
   4392 E7 61         [ 5]  341 	stb	1,s	; ,
   4394 1F 10         [ 6]  342 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
   4396 EB 61         [ 5]  343 	addb	1,s	;  tmp36,
   4398 E7 E4         [ 4]  344 	stb	,s	;  tmp36,
   439A E6 62         [ 5]  345 	ldb	2,s	;  tmp38, x
   439C 58            [ 2]  346 	aslb	;  tmp38
   439D EB 62         [ 5]  347 	addb	2,s	;  tmp39, x
   439F EB E4         [ 4]  348 	addb	,s	;  tmp31,
   43A1 32 63         [ 5]  349 	leas	3,s	; ,,
   43A3 39            [ 5]  350 	rts
                            351 	.globl _checkHalfling
   43A4                     352 _checkHalfling:
   43A4 34 60         [ 7]  353 	pshs	y,u	; 
   43A6 32 E8 DC      [ 5]  354 	leas	-36,s	; ,,
                            355 ;----- asm -----
                            356 ;  270 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            357 	; #ENR#[222]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+2)] = USED_BOARD_SCALE;
                            358 ;  0 "" 2
                            359 ;--- end asm ---
   43A9 F6 C8 84      [ 5]  360 	ldb	_lineCount	; , lineCount
   43AC 4F            [ 2]  361 	clra		;zero_extendqihi: R:b -> R:d	; ,
   43AD ED 6A         [ 6]  362 	std	10,s	; ,
   43AF 58            [ 2]  363 	aslb	; 
   43B0 49            [ 2]  364 	rola	; 
   43B1 58            [ 2]  365 	aslb	; 
   43B2 49            [ 2]  366 	rola	; 
   43B3 EE 6A         [ 6]  367 	ldu	10,s	; ,
   43B5 30 CB         [ 8]  368 	leax	d,u	;  tmp110, tmp109,
   43B7 C6 7F         [ 2]  369 	ldb	#127	; ,
   43B9 E7 89 C9 29   [ 8]  370 	stb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
                            371 ;----- asm -----
                            372 ;  273 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            373 	; #ENR#[224]    if (useHalfling[levelOffset + levelNumber] == 0) 
                            374 ;  0 "" 2
                            375 ;--- end asm ---
   43BD F6 C8 87      [ 5]  376 	ldb	_levelNumber	;  levelNumber.11, levelNumber
   43C0 FB 4E D8      [ 5]  377 	addb	_levelOffset	;  tmp113, levelOffset
   43C3 4F            [ 2]  378 	clra		;zero_extendqihi: R:b -> R:d	;  tmp113,
   43C4 1F 01         [ 6]  379 	tfr	d,x	; , tmp114
   43C6 6D 89 4E AF   [10]  380 	tst	_useHalfling,x	;  useHalfling
   43CA 26 0E         [ 3]  381 	bne	L26	; 
                            382 ;----- asm -----
                            383 ;  276 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            384 	; #ENR#[226]        last_x = -1;
                            385 ;  0 "" 2
                            386 ;--- end asm ---
   43CC C6 FF         [ 2]  387 	ldb	#-1	; ,
   43CE F7 C8 88      [ 5]  388 	stb	_last_x	; , last_x
                            389 ;----- asm -----
                            390 ;  278 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            391 	; #ENR#[227]        last_y = -1;
                            392 ;  0 "" 2
                            393 ;--- end asm ---
   43D1 F7 C8 89      [ 5]  394 	stb	_last_y	; , last_y
                            395 ;----- asm -----
                            396 ;  280 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            397 	; #ENR#[228]        last_s = -1;
                            398 ;  0 "" 2
                            399 ;--- end asm ---
   43D4 F7 C8 8A      [ 5]  400 	stb	_last_s	; , last_s
                            401 ;----- asm -----
                            402 ;  282 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            403 	; #ENR#[229]        return;
                            404 ;  0 "" 2
                            405 ;--- end asm ---
   43D7 7E 47 A1      [ 4]  406 	jmp	L70	; 
   43DA                     407 L26:
                            408 ;----- asm -----
                            409 ;  287 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            410 	; #ENR#[233]    int8_t this_x = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]+lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)];
                            411 ;  0 "" 2
                            412 ;--- end asm ---
   43DA F6 C8 84      [ 5]  413 	ldb	_lineCount	; , lineCount
   43DD 86 05         [ 2]  414 	lda	#5	;umulqihi3	; 
   43DF 3D            [11]  415 	mul
   43E0 1F 03         [ 6]  416 	tfr	d,u	; , temp.106
   43E2 10 8E C9 27   [ 4]  417 	ldy	#_lineYX_yx_s_dy_dx	;  tmp117,
   43E6 1F 20         [ 6]  418 	tfr	y,d	;  tmp117,
   43E8 30 CB         [ 8]  419 	leax	d,u	;  tmp118,, temp.106
   43EA E6 01         [ 5]  420 	ldb	1,x	; , lineYX_yx_s_dy_dx
   43EC E7 6C         [ 5]  421 	stb	12,s	; , D.1417
   43EE E6 04         [ 5]  422 	ldb	4,x	; , lineYX_yx_s_dy_dx
   43F0 E7 6D         [ 5]  423 	stb	13,s	; , D.1419
                            424 ;----- asm -----
                            425 ;  289 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            426 	; #ENR#[234]    int8_t this_y = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]+lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)];
                            427 ;  0 "" 2
                            428 ;--- end asm ---
   43F2 E6 84         [ 4]  429 	ldb	,x	; , lineYX_yx_s_dy_dx
   43F4 E7 6E         [ 5]  430 	stb	14,s	; , D.1420
   43F6 33 43         [ 5]  431 	leau	3,u	;  D.1421,, temp.106
   43F8 1F 20         [ 6]  432 	tfr	y,d	;  tmp117,
   43FA 30 CB         [ 8]  433 	leax	d,u	;  tmp126,, D.1421
   43FC E6 84         [ 4]  434 	ldb	,x	; , lineYX_yx_s_dy_dx
   43FE E7 6F         [ 5]  435 	stb	15,s	; , D.1422
                            436 ;----- asm -----
                            437 ;  292 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            438 	; #ENR#[236]    HALF_IF_POSSIBLE(REDUX1)
                            439 ;  0 "" 2
                            440 ;--- end asm ---
   4400 F6 C8 87      [ 5]  441 	ldb	_levelNumber	;  levelNumber.13, levelNumber
   4403 8E 00 40      [ 3]  442 	ldx	#64	;  iftmp.12,
   4406 C1 0E         [ 2]  443 	cmpb	#14	;cmpqi:	;  levelNumber.13,
   4408 27 03         [ 3]  444 	beq	L29	; 
   440A 8E 00 28      [ 3]  445 	ldx	#40	;  iftmp.12,
   440D                     446 L29:
   440D E6 6F         [ 5]  447 	ldb	15,s	;  D.1422, D.1422
   440F 2C 01         [ 3]  448 	bge	L31	; 
   4411 50            [ 2]  449 	negb	;  D.1422
   4412                     450 L31:
   4412 1D            [ 2]  451 	sex		;extendqihi2: R:b -> R:d	;  D.1422, D.1422
   4413 34 06         [ 7]  452 	pshs	d	;cmphi: R:d with R:x	;  D.1422, iftmp.12
   4415 AC E1         [ 9]  453 	cmpx	,s++	;cmphi:	;  iftmp.12
   4417 2F 30         [ 3]  454 	ble	L30	; 
   4419 F6 C8 87      [ 5]  455 	ldb	_levelNumber	;  levelNumber.15, levelNumber
   441C 8E 00 40      [ 3]  456 	ldx	#64	;  iftmp.14,
   441F C1 0E         [ 2]  457 	cmpb	#14	;cmpqi:	;  levelNumber.15,
   4421 27 03         [ 3]  458 	beq	L33	; 
   4423 8E 00 28      [ 3]  459 	ldx	#40	;  iftmp.14,
   4426                     460 L33:
   4426 E6 6D         [ 5]  461 	ldb	13,s	;  D.1419, D.1419
   4428 2C 01         [ 3]  462 	bge	L34	; 
   442A 50            [ 2]  463 	negb	;  D.1419
   442B                     464 L34:
   442B 1D            [ 2]  465 	sex		;extendqihi2: R:b -> R:d	;  D.1419, D.1419
   442C 34 06         [ 7]  466 	pshs	d	;cmphi: R:d with R:x	;  D.1419, iftmp.14
   442E AC E1         [ 9]  467 	cmpx	,s++	;cmphi:	;  iftmp.14
   4430 2F 17         [ 3]  468 	ble	L30	; 
   4432 E6 6F         [ 5]  469 	ldb	15,s	; , D.1422
   4434 58            [ 2]  470 	aslb	; 
   4435 E7 C9 C9 27   [ 8]  471 	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   4439 F6 C8 84      [ 5]  472 	ldb	_lineCount	; , lineCount
   443C 86 05         [ 2]  473 	lda	#5	;umulqihi3	; 
   443E 3D            [11]  474 	mul
   443F 1F 01         [ 6]  475 	tfr	d,x	; , tmp133
   4441 68 89 C9 2B   [10]  476 	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
   4445 67 89 C9 29   [10]  477 	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
   4449                     478 L30:
                            479 ;----- asm -----
                            480 ;  294 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            481 	; #ENR#[237]    HALF_IF_POSSIBLE(REDUX2)
                            482 ;  0 "" 2
                            483 ;--- end asm ---
   4449 F6 C8 84      [ 5]  484 	ldb	_lineCount	; , lineCount
   444C 86 05         [ 2]  485 	lda	#5	;umulqihi3	; 
   444E 3D            [11]  486 	mul
   444F 1F 02         [ 6]  487 	tfr	d,y	; , temp.118
   4451 33 23         [ 5]  488 	leau	3,y	;  temp.119,, temp.118
   4453 E6 C9 C9 27   [ 8]  489 	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   4457 E7 E8 1A      [ 5]  490 	stb	26,s	; , temp.120
   445A F6 C8 87      [ 5]  491 	ldb	_levelNumber	;  levelNumber.17, levelNumber
   445D 8E 00 40      [ 3]  492 	ldx	#64	;  iftmp.16,
   4460 C1 0E         [ 2]  493 	cmpb	#14	;cmpqi:	;  levelNumber.17,
   4462 27 03         [ 3]  494 	beq	L36	; 
   4464 8E 00 28      [ 3]  495 	ldx	#40	;  iftmp.16,
   4467                     496 L36:
   4467 E6 E8 1A      [ 5]  497 	ldb	26,s	;  temp.120, temp.120
   446A 2C 01         [ 3]  498 	bge	L38	; 
   446C 50            [ 2]  499 	negb	;  temp.120
   446D                     500 L38:
   446D 1D            [ 2]  501 	sex		;extendqihi2: R:b -> R:d	;  temp.120, temp.120
   446E 34 06         [ 7]  502 	pshs	d	;cmphi: R:d with R:x	;  temp.120, iftmp.16
   4470 AC E1         [ 9]  503 	cmpx	,s++	;cmphi:	;  iftmp.16
   4472 2F 39         [ 3]  504 	ble	L37	; 
   4474 E6 A9 C9 2B   [ 8]  505 	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
   4478 E7 E8 1B      [ 5]  506 	stb	27,s	; , temp.124
   447B F6 C8 87      [ 5]  507 	ldb	_levelNumber	;  levelNumber.19, levelNumber
   447E 8E 00 40      [ 3]  508 	ldx	#64	;  iftmp.18,
   4481 C1 0E         [ 2]  509 	cmpb	#14	;cmpqi:	;  levelNumber.19,
   4483 27 03         [ 3]  510 	beq	L40	; 
   4485 8E 00 28      [ 3]  511 	ldx	#40	;  iftmp.18,
   4488                     512 L40:
   4488 E6 E8 1B      [ 5]  513 	ldb	27,s	;  temp.124, temp.124
   448B 2C 01         [ 3]  514 	bge	L41	; 
   448D 50            [ 2]  515 	negb	;  temp.124
   448E                     516 L41:
   448E 1D            [ 2]  517 	sex		;extendqihi2: R:b -> R:d	;  temp.124, temp.124
   448F 34 06         [ 7]  518 	pshs	d	;cmphi: R:d with R:x	;  temp.124, iftmp.18
   4491 AC E1         [ 9]  519 	cmpx	,s++	;cmphi:	;  iftmp.18
   4493 2F 18         [ 3]  520 	ble	L37	; 
   4495 E6 E8 1A      [ 5]  521 	ldb	26,s	; , temp.120
   4498 58            [ 2]  522 	aslb	; 
   4499 E7 C9 C9 27   [ 8]  523 	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   449D F6 C8 84      [ 5]  524 	ldb	_lineCount	; , lineCount
   44A0 86 05         [ 2]  525 	lda	#5	;umulqihi3	; 
   44A2 3D            [11]  526 	mul
   44A3 1F 01         [ 6]  527 	tfr	d,x	; , tmp154
   44A5 68 89 C9 2B   [10]  528 	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
   44A9 67 89 C9 29   [10]  529 	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
   44AD                     530 L37:
                            531 ;----- asm -----
                            532 ;  296 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            533 	; #ENR#[238]    HALF_IF_POSSIBLE(REDUX3)
                            534 ;  0 "" 2
                            535 ;--- end asm ---
   44AD F6 C8 84      [ 5]  536 	ldb	_lineCount	; , lineCount
   44B0 86 05         [ 2]  537 	lda	#5	;umulqihi3	; 
   44B2 3D            [11]  538 	mul
   44B3 1F 02         [ 6]  539 	tfr	d,y	; , temp.142
   44B5 33 23         [ 5]  540 	leau	3,y	;  temp.143,, temp.142
   44B7 E6 C9 C9 27   [ 8]  541 	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   44BB E7 E8 1C      [ 5]  542 	stb	28,s	; , temp.144
   44BE F6 C8 87      [ 5]  543 	ldb	_levelNumber	;  levelNumber.21, levelNumber
   44C1 8E 00 40      [ 3]  544 	ldx	#64	;  iftmp.20,
   44C4 C1 0E         [ 2]  545 	cmpb	#14	;cmpqi:	;  levelNumber.21,
   44C6 27 03         [ 3]  546 	beq	L43	; 
   44C8 8E 00 28      [ 3]  547 	ldx	#40	;  iftmp.20,
   44CB                     548 L43:
   44CB E6 E8 1C      [ 5]  549 	ldb	28,s	;  temp.144, temp.144
   44CE 2C 01         [ 3]  550 	bge	L45	; 
   44D0 50            [ 2]  551 	negb	;  temp.144
   44D1                     552 L45:
   44D1 1D            [ 2]  553 	sex		;extendqihi2: R:b -> R:d	;  temp.144, temp.144
   44D2 34 06         [ 7]  554 	pshs	d	;cmphi: R:d with R:x	;  temp.144, iftmp.20
   44D4 AC E1         [ 9]  555 	cmpx	,s++	;cmphi:	;  iftmp.20
   44D6 2F 39         [ 3]  556 	ble	L44	; 
   44D8 E6 A9 C9 2B   [ 8]  557 	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
   44DC E7 E8 1D      [ 5]  558 	stb	29,s	; , temp.148
   44DF F6 C8 87      [ 5]  559 	ldb	_levelNumber	;  levelNumber.23, levelNumber
   44E2 8E 00 40      [ 3]  560 	ldx	#64	;  iftmp.22,
   44E5 C1 0E         [ 2]  561 	cmpb	#14	;cmpqi:	;  levelNumber.23,
   44E7 27 03         [ 3]  562 	beq	L47	; 
   44E9 8E 00 28      [ 3]  563 	ldx	#40	;  iftmp.22,
   44EC                     564 L47:
   44EC E6 E8 1D      [ 5]  565 	ldb	29,s	;  temp.148, temp.148
   44EF 2C 01         [ 3]  566 	bge	L48	; 
   44F1 50            [ 2]  567 	negb	;  temp.148
   44F2                     568 L48:
   44F2 1D            [ 2]  569 	sex		;extendqihi2: R:b -> R:d	;  temp.148, temp.148
   44F3 34 06         [ 7]  570 	pshs	d	;cmphi: R:d with R:x	;  temp.148, iftmp.22
   44F5 AC E1         [ 9]  571 	cmpx	,s++	;cmphi:	;  iftmp.22
   44F7 2F 18         [ 3]  572 	ble	L44	; 
   44F9 E6 E8 1C      [ 5]  573 	ldb	28,s	; , temp.144
   44FC 58            [ 2]  574 	aslb	; 
   44FD E7 C9 C9 27   [ 8]  575 	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   4501 F6 C8 84      [ 5]  576 	ldb	_lineCount	; , lineCount
   4504 86 05         [ 2]  577 	lda	#5	;umulqihi3	; 
   4506 3D            [11]  578 	mul
   4507 1F 01         [ 6]  579 	tfr	d,x	; , tmp175
   4509 68 89 C9 2B   [10]  580 	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
   450D 67 89 C9 29   [10]  581 	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
   4511                     582 L44:
                            583 ;----- asm -----
                            584 ;  299 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            585 	; #ENR#[240]    if (last_s != -1)
                            586 ;  0 "" 2
                            587 ;--- end asm ---
   4511 F6 C8 8A      [ 5]  588 	ldb	_last_s	; , last_s
   4514 C1 FF         [ 2]  589 	cmpb	#-1	;cmpqi:	; ,
   4516 10 27 02 64   [ 6]  590 	lbeq	L49	; 
                            591 ;----- asm -----
                            592 ;  305 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            593 	; #ENR#[245]        int oldSacle = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)];
                            594 ;  0 "" 2
                            595 ;--- end asm ---
   451A F6 C8 84      [ 5]  596 	ldb	_lineCount	; , lineCount
   451D E7 E8 1E      [ 5]  597 	stb	30,s	; , lineCount.164
   4520 5A            [ 2]  598 	decb	;  tmp185
   4521 86 05         [ 2]  599 	lda	#5	;umulqihi3	; 
   4523 3D            [11]  600 	mul
   4524 C3 00 02      [ 4]  601 	addd	#2	;  tmp186,
   4527 ED E8 10      [ 6]  602 	std	16,s	;  tmp186, D.1447
   452A 1F 01         [ 6]  603 	tfr	d,x	; ,
   452C E6 89 C9 27   [ 8]  604 	ldb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
   4530 E7 E8 19      [ 5]  605 	stb	25,s	; , oldSacle
                            606 ;----- asm -----
                            607 ;  308 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            608 	; #ENR#[247]        if ((oldSacle ==  HALF_1) && (useHalfling[levelOffset + levelNumber] > 0) )
                            609 ;  0 "" 2
                            610 ;--- end asm ---
   4533 C1 3F         [ 2]  611 	cmpb	#63	;cmpqi:	; ,
   4535 10 26 00 B8   [ 6]  612 	lbne	L50	; 
   4539 F6 C8 87      [ 5]  613 	ldb	_levelNumber	;  levelNumber.25, levelNumber
   453C FB 4E D8      [ 5]  614 	addb	_levelOffset	;  tmp189, levelOffset
   453F 4F            [ 2]  615 	clra		;zero_extendqihi: R:b -> R:d	;  tmp189,
   4540 1F 01         [ 6]  616 	tfr	d,x	; , tmp190
   4542 6D 89 4E AF   [10]  617 	tst	_useHalfling,x	;  useHalfling
   4546 10 2F 00 A7   [ 6]  618 	lble	L50	; 
                            619 ;----- asm -----
                            620 ;  311 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            621 	; #ENR#[249]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
                            622 ;  0 "" 2
                            623 ;--- end asm ---
   454A E6 E8 1E      [ 5]  624 	ldb	30,s	; , lineCount.164
   454D 86 05         [ 2]  625 	lda	#5	;umulqihi3	; 
   454F 3D            [11]  626 	mul
   4550 1F 01         [ 6]  627 	tfr	d,x	; , temp.166
   4552 30 89 C9 27   [ 8]  628 	leax	_lineYX_yx_s_dy_dx,x	;  tmp199,, temp.166
   4556 E6 80         [ 6]  629 	ldb	,x+	;  tmp196, lineYX_yx_s_dy_dx
   4558 F0 C8 89      [ 5]  630 	subb	_last_y	;  tmp195, last_y
   455B 1D            [ 2]  631 	sex		;extendqihi2: R:b -> R:d	;  tmp195,
   455C ED 62         [ 6]  632 	std	2,s	; , dy
                            633 ;----- asm -----
                            634 ;  313 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            635 	; #ENR#[250]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
                            636 ;  0 "" 2
                            637 ;--- end asm ---
   455E E6 84         [ 4]  638 	ldb	,x	; , lineYX_yx_s_dy_dx
   4560 E7 E8 1F      [ 5]  639 	stb	31,s	; , temp.169
   4563 F6 C8 88      [ 5]  640 	ldb	_last_x	; , last_x
   4566 E7 E8 12      [ 5]  641 	stb	18,s	; , last_x.27
                            642 ;----- asm -----
                            643 ;  315 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            644 	; #ENR#[251]            dy = dy <<1;
                            645 ;  0 "" 2
                            646 ;--- end asm ---
   4569 EC 62         [ 6]  647 	ldd	2,s	; , dy
   456B 58            [ 2]  648 	aslb	; 
   456C 49            [ 2]  649 	rola	; 
   456D 1F 02         [ 6]  650 	tfr	d,y	; , dy.170
                            651 ;----- asm -----
                            652 ;  317 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            653 	; #ENR#[252]            dx = dx <<1;
                            654 ;  0 "" 2
                            655 ;  319 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            656 	; #ENR#[253]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
                            657 ;  0 "" 2
                            658 ;--- end asm ---
   456F F6 C8 87      [ 5]  659 	ldb	_levelNumber	;  levelNumber.29, levelNumber
   4572 CE 00 80      [ 3]  660 	ldu	#128	;  iftmp.28,
   4575 C1 0E         [ 2]  661 	cmpb	#14	;cmpqi:	;  levelNumber.29,
   4577 27 03         [ 3]  662 	beq	L52	; 
   4579 CE 00 50      [ 3]  663 	ldu	#80	;  iftmp.28,
   457C                     664 L52:
   457C 30 A4         [ 4]  665 	leax	,y	;  dy.170, dy.170
   457E 10 8C 00 00   [ 5]  666 	cmpy	#0	;  dy.170
   4582 2C 08         [ 3]  667 	bge	L53	; 
   4584 1E 01         [ 8]  668 	exg	d,x	;  dy.170
   4586 40            [ 2]  669 	nega
   4587 50            [ 2]  670 	negb
   4588 82 00         [ 2]  671 	sbca	#0
   458A 1E 01         [ 8]  672 	exg	d,x	;  dy.170
   458C                     673 L53:
   458C 34 10         [ 6]  674 	pshs	x	;cmphi: R:x with R:u	;  dy.170, iftmp.28
   458E 11 A3 E1      [10]  675 	cmpu	,s++	;cmphi:	;  iftmp.28
   4591 10 2F 01 E9   [ 6]  676 	lble	L49	; 
   4595 F6 C8 87      [ 5]  677 	ldb	_levelNumber	;  levelNumber.31, levelNumber
   4598 8E 00 80      [ 3]  678 	ldx	#128	; ,
   459B AF E8 13      [ 6]  679 	stx	19,s	; , iftmp.30
   459E C1 0E         [ 2]  680 	cmpb	#14	;cmpqi:	;  levelNumber.31,
   45A0 27 06         [ 3]  681 	beq	L55	; 
   45A2 CE 00 50      [ 3]  682 	ldu	#80	; ,
   45A5 EF E8 13      [ 6]  683 	stu	19,s	; , iftmp.30
   45A8                     684 L55:
   45A8 E6 E8 1F      [ 5]  685 	ldb	31,s	;  tmp201, temp.169
   45AB E0 E8 12      [ 5]  686 	subb	18,s	;  tmp201, last_x.27
   45AE 1D            [ 2]  687 	sex		;extendqihi2: R:b -> R:d	;  tmp201, dx
   45AF 58            [ 2]  688 	aslb	; 
   45B0 49            [ 2]  689 	rola	; 
   45B1 1F 03         [ 6]  690 	tfr	d,u	;  dx, dx.171
   45B3 30 C4         [ 4]  691 	leax	,u	;  dx.171, dx.171
   45B5 11 83 00 00   [ 5]  692 	cmpu	#0	;  dx.171
   45B9 2C 08         [ 3]  693 	bge	L56	; 
   45BB 1E 01         [ 8]  694 	exg	d,x	;  dx.171
   45BD 40            [ 2]  695 	nega
   45BE 50            [ 2]  696 	negb
   45BF 82 00         [ 2]  697 	sbca	#0
   45C1 1E 01         [ 8]  698 	exg	d,x	;  dx.171
   45C3                     699 L56:
   45C3 AC E8 13      [ 7]  700 	cmpx	19,s	;cmphi:(R)	;  dx.171, iftmp.30
   45C6 10 2C 01 B4   [ 6]  701 	lbge	L49	; 
                            702 ;----- asm -----
                            703 ;  326 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            704 	; #ENR#[259]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
                            705 ;  0 "" 2
                            706 ;--- end asm ---
   45CA C6 BF         [ 2]  707 	ldb	#-65	; ,
   45CC AE E8 10      [ 6]  708 	ldx	16,s	; , D.1447
   45CF E7 89 C9 27   [ 8]  709 	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
                            710 ;----- asm -----
                            711 ;  330 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            712 	; #ENR#[262]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
                            713 ;  0 "" 2
                            714 ;--- end asm ---
   45D3 F6 C8 84      [ 5]  715 	ldb	_lineCount	; , lineCount
   45D6 4F            [ 2]  716 	clra		;zero_extendqihi: R:b -> R:d	; ,
   45D7 ED 68         [ 6]  717 	std	8,s	; ,
   45D9 58            [ 2]  718 	aslb	; 
   45DA 49            [ 2]  719 	rola	; 
   45DB 58            [ 2]  720 	aslb	; 
   45DC 49            [ 2]  721 	rola	; 
   45DD E3 68         [ 7]  722 	addd	8,s	;  tmp209,
   45DF C3 C9 27      [ 4]  723 	addd	#_lineYX_yx_s_dy_dx	;  tmp209,
   45E2 ED E4         [ 5]  724 	std	,s	;  tmp209,
   45E4 1F 20         [ 6]  725 	tfr	y,d	;  dy.170,
   45E6 AE E4         [ 5]  726 	ldx	,s	; ,
   45E8 E7 80         [ 6]  727 	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
                            728 ;----- asm -----
                            729 ;  332 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            730 	; #ENR#[263]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
                            731 ;  0 "" 2
                            732 ;--- end asm ---
   45EA 1F 30         [ 6]  733 	tfr	u,d	;  dx.171,
   45EC E7 84         [ 4]  734 	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
   45EE 7E 47 7E      [ 4]  735 	jmp	L49	; 
   45F1                     736 L50:
   45F1 E6 E8 19      [ 5]  737 	ldb	25,s	; , oldSacle
   45F4 C1 1F         [ 2]  738 	cmpb	#31	;cmpqi:	; ,
   45F6 10 26 00 BE   [ 6]  739 	lbne	L57	; 
   45FA F6 C8 87      [ 5]  740 	ldb	_levelNumber	;  levelNumber.33, levelNumber
   45FD FB 4E D8      [ 5]  741 	addb	_levelOffset	;  tmp218, levelOffset
   4600 4F            [ 2]  742 	clra		;zero_extendqihi: R:b -> R:d	;  tmp218,
   4601 1F 01         [ 6]  743 	tfr	d,x	; , tmp219
   4603 E6 89 4E AF   [ 8]  744 	ldb	_useHalfling,x	; , useHalfling
   4607 C1 01         [ 2]  745 	cmpb	#1	;cmpqi:	; ,
   4609 10 2F 00 AB   [ 6]  746 	lble	L57	; 
                            747 ;----- asm -----
                            748 ;  340 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            749 	; #ENR#[270]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
                            750 ;  0 "" 2
                            751 ;--- end asm ---
   460D E6 E8 1E      [ 5]  752 	ldb	30,s	; , lineCount.164
   4610 86 05         [ 2]  753 	lda	#5	;umulqihi3	; 
   4612 3D            [11]  754 	mul
   4613 1F 01         [ 6]  755 	tfr	d,x	; , temp.180
   4615 30 89 C9 27   [ 8]  756 	leax	_lineYX_yx_s_dy_dx,x	;  tmp228,, temp.180
   4619 E6 80         [ 6]  757 	ldb	,x+	;  tmp225, lineYX_yx_s_dy_dx
   461B F0 C8 89      [ 5]  758 	subb	_last_y	;  tmp224, last_y
   461E 1D            [ 2]  759 	sex		;extendqihi2: R:b -> R:d	;  tmp224,
   461F ED 62         [ 6]  760 	std	2,s	; , dy
                            761 ;----- asm -----
                            762 ;  342 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            763 	; #ENR#[271]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
                            764 ;  0 "" 2
                            765 ;--- end asm ---
   4621 E6 84         [ 4]  766 	ldb	,x	; , lineYX_yx_s_dy_dx
   4623 E7 E8 20      [ 5]  767 	stb	32,s	; , temp.185
   4626 F6 C8 88      [ 5]  768 	ldb	_last_x	; , last_x
   4629 E7 E8 21      [ 5]  769 	stb	33,s	; , last_x.186
                            770 ;----- asm -----
                            771 ;  344 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            772 	; #ENR#[272]            dy = dy <<1;
                            773 ;  0 "" 2
                            774 ;--- end asm ---
   462C EC 62         [ 6]  775 	ldd	2,s	;  dy.188, dy
   462E 58            [ 2]  776 	aslb	; 
   462F 49            [ 2]  777 	rola	; 
                            778 ;----- asm -----
                            779 ;  346 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            780 	; #ENR#[273]            dx = dx <<1;
                            781 ;  0 "" 2
                            782 ;  348 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            783 	; #ENR#[274]            dy = dy <<1;
                            784 ;  0 "" 2
                            785 ;--- end asm ---
   4630 58            [ 2]  786 	aslb	; 
   4631 49            [ 2]  787 	rola	; 
   4632 1F 02         [ 6]  788 	tfr	d,y	;  dy.188, dy.190
                            789 ;----- asm -----
                            790 ;  350 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            791 	; #ENR#[275]            dx = dx <<1;
                            792 ;  0 "" 2
                            793 ;  352 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            794 	; #ENR#[276]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
                            795 ;  0 "" 2
                            796 ;--- end asm ---
   4634 F6 C8 87      [ 5]  797 	ldb	_levelNumber	;  levelNumber.35, levelNumber
   4637 CE 00 80      [ 3]  798 	ldu	#128	;  iftmp.34,
   463A C1 0E         [ 2]  799 	cmpb	#14	;cmpqi:	;  levelNumber.35,
   463C 27 03         [ 3]  800 	beq	L59	; 
   463E CE 00 50      [ 3]  801 	ldu	#80	;  iftmp.34,
   4641                     802 L59:
   4641 30 A4         [ 4]  803 	leax	,y	;  dy.190, dy.190
   4643 10 8C 00 00   [ 5]  804 	cmpy	#0	;  dy.190
   4647 2C 08         [ 3]  805 	bge	L60	; 
   4649 1E 01         [ 8]  806 	exg	d,x	;  dy.190
   464B 40            [ 2]  807 	nega
   464C 50            [ 2]  808 	negb
   464D 82 00         [ 2]  809 	sbca	#0
   464F 1E 01         [ 8]  810 	exg	d,x	;  dy.190
   4651                     811 L60:
   4651 34 10         [ 6]  812 	pshs	x	;cmphi: R:x with R:u	;  dy.190, iftmp.34
   4653 11 A3 E1      [10]  813 	cmpu	,s++	;cmphi:	;  iftmp.34
   4656 10 2F 01 24   [ 6]  814 	lble	L49	; 
   465A F6 C8 87      [ 5]  815 	ldb	_levelNumber	;  levelNumber.37, levelNumber
   465D 8E 00 80      [ 3]  816 	ldx	#128	; ,
   4660 AF E8 15      [ 6]  817 	stx	21,s	; , iftmp.36
   4663 C1 0E         [ 2]  818 	cmpb	#14	;cmpqi:	;  levelNumber.37,
   4665 27 06         [ 3]  819 	beq	L62	; 
   4667 CE 00 50      [ 3]  820 	ldu	#80	; ,
   466A EF E8 15      [ 6]  821 	stu	21,s	; , iftmp.36
   466D                     822 L62:
   466D E6 E8 20      [ 5]  823 	ldb	32,s	;  tmp230, temp.185
   4670 E0 E8 21      [ 5]  824 	subb	33,s	;  tmp230, last_x.186
   4673 1D            [ 2]  825 	sex		;extendqihi2: R:b -> R:d	;  tmp230, dx
   4674 58            [ 2]  826 	aslb	; 
   4675 49            [ 2]  827 	rola	; 
   4676 58            [ 2]  828 	aslb	; 
   4677 49            [ 2]  829 	rola	; 
   4678 1F 03         [ 6]  830 	tfr	d,u	;  dx.189, dx.191
   467A 30 C4         [ 4]  831 	leax	,u	;  dx.191, dx.191
   467C 11 83 00 00   [ 5]  832 	cmpu	#0	;  dx.191
   4680 2C 08         [ 3]  833 	bge	L63	; 
   4682 1E 01         [ 8]  834 	exg	d,x	;  dx.191
   4684 40            [ 2]  835 	nega
   4685 50            [ 2]  836 	negb
   4686 82 00         [ 2]  837 	sbca	#0
   4688 1E 01         [ 8]  838 	exg	d,x	;  dx.191
   468A                     839 L63:
   468A AC E8 15      [ 7]  840 	cmpx	21,s	;cmphi:(R)	;  dx.191, iftmp.36
   468D 10 2C 00 ED   [ 6]  841 	lbge	L49	; 
                            842 ;----- asm -----
                            843 ;  359 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            844 	; #ENR#[282]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
                            845 ;  0 "" 2
                            846 ;--- end asm ---
   4691 C6 9F         [ 2]  847 	ldb	#-97	; ,
   4693 AE E8 10      [ 6]  848 	ldx	16,s	; , D.1447
   4696 E7 89 C9 27   [ 8]  849 	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
                            850 ;----- asm -----
                            851 ;  363 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            852 	; #ENR#[285]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
                            853 ;  0 "" 2
                            854 ;--- end asm ---
   469A F6 C8 84      [ 5]  855 	ldb	_lineCount	; , lineCount
   469D 4F            [ 2]  856 	clra		;zero_extendqihi: R:b -> R:d	; ,
   469E ED 66         [ 6]  857 	std	6,s	; ,
   46A0 58            [ 2]  858 	aslb	; 
   46A1 49            [ 2]  859 	rola	; 
   46A2 58            [ 2]  860 	aslb	; 
   46A3 49            [ 2]  861 	rola	; 
   46A4 E3 66         [ 7]  862 	addd	6,s	;  tmp238,
   46A6 C3 C9 27      [ 4]  863 	addd	#_lineYX_yx_s_dy_dx	;  tmp238,
   46A9 ED E4         [ 5]  864 	std	,s	;  tmp238,
   46AB 1F 20         [ 6]  865 	tfr	y,d	;  dy.190,
   46AD AE E4         [ 5]  866 	ldx	,s	; ,
   46AF E7 80         [ 6]  867 	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
                            868 ;----- asm -----
                            869 ;  365 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            870 	; #ENR#[286]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
                            871 ;  0 "" 2
                            872 ;--- end asm ---
   46B1 1F 30         [ 6]  873 	tfr	u,d	;  dx.191,
   46B3 E7 84         [ 4]  874 	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
   46B5 7E 47 7E      [ 4]  875 	jmp	L49	; 
   46B8                     876 L57:
   46B8 E6 E8 19      [ 5]  877 	ldb	25,s	; , oldSacle
   46BB C1 0F         [ 2]  878 	cmpb	#15	;cmpqi:	; ,
   46BD 10 26 00 BD   [ 6]  879 	lbne	L49	; 
   46C1 F6 C8 87      [ 5]  880 	ldb	_levelNumber	;  levelNumber.38, levelNumber
   46C4 FB 4E D8      [ 5]  881 	addb	_levelOffset	;  tmp247, levelOffset
   46C7 4F            [ 2]  882 	clra		;zero_extendqihi: R:b -> R:d	;  tmp247,
   46C8 1F 01         [ 6]  883 	tfr	d,x	; , tmp248
   46CA E6 89 4E AF   [ 8]  884 	ldb	_useHalfling,x	; , useHalfling
   46CE C1 02         [ 2]  885 	cmpb	#2	;cmpqi:	; ,
   46D0 10 2F 00 AA   [ 6]  886 	lble	L49	; 
                            887 ;----- asm -----
                            888 ;  373 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            889 	; #ENR#[293]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
                            890 ;  0 "" 2
                            891 ;--- end asm ---
   46D4 E6 E8 1E      [ 5]  892 	ldb	30,s	; , lineCount.164
   46D7 86 05         [ 2]  893 	lda	#5	;umulqihi3	; 
   46D9 3D            [11]  894 	mul
   46DA 1F 01         [ 6]  895 	tfr	d,x	; , temp.200
   46DC 30 89 C9 27   [ 8]  896 	leax	_lineYX_yx_s_dy_dx,x	;  tmp257,, temp.200
   46E0 E6 80         [ 6]  897 	ldb	,x+	;  tmp254, lineYX_yx_s_dy_dx
   46E2 F0 C8 89      [ 5]  898 	subb	_last_y	;  tmp253, last_y
   46E5 1D            [ 2]  899 	sex		;extendqihi2: R:b -> R:d	;  tmp253,
   46E6 ED 62         [ 6]  900 	std	2,s	; , dy
                            901 ;----- asm -----
                            902 ;  375 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            903 	; #ENR#[294]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
                            904 ;  0 "" 2
                            905 ;--- end asm ---
   46E8 E6 84         [ 4]  906 	ldb	,x	; , lineYX_yx_s_dy_dx
   46EA E7 E8 22      [ 5]  907 	stb	34,s	; , temp.205
   46ED F6 C8 88      [ 5]  908 	ldb	_last_x	; , last_x
   46F0 E7 E8 23      [ 5]  909 	stb	35,s	; , last_x.206
                            910 ;----- asm -----
                            911 ;  377 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            912 	; #ENR#[295]            dy = dy <<1;
                            913 ;  0 "" 2
                            914 ;--- end asm ---
   46F3 EC 62         [ 6]  915 	ldd	2,s	;  dy.208, dy
   46F5 58            [ 2]  916 	aslb	; 
   46F6 49            [ 2]  917 	rola	; 
                            918 ;----- asm -----
                            919 ;  379 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            920 	; #ENR#[296]            dx = dx <<1;
                            921 ;  0 "" 2
                            922 ;  381 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            923 	; #ENR#[297]            dy = dy <<1;
                            924 ;  0 "" 2
                            925 ;--- end asm ---
   46F7 58            [ 2]  926 	aslb	; 
   46F8 49            [ 2]  927 	rola	; 
                            928 ;----- asm -----
                            929 ;  383 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            930 	; #ENR#[298]            dx = dx <<1;
                            931 ;  0 "" 2
                            932 ;  385 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            933 	; #ENR#[299]            dy = dy <<1;
                            934 ;  0 "" 2
                            935 ;--- end asm ---
   46F9 58            [ 2]  936 	aslb	; 
   46FA 49            [ 2]  937 	rola	; 
   46FB 1F 02         [ 6]  938 	tfr	d,y	;  dy.210, dy.212
                            939 ;----- asm -----
                            940 ;  387 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            941 	; #ENR#[300]            dx = dx <<1;
                            942 ;  0 "" 2
                            943 ;  389 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            944 	; #ENR#[301]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
                            945 ;  0 "" 2
                            946 ;--- end asm ---
   46FD F6 C8 87      [ 5]  947 	ldb	_levelNumber	;  levelNumber.40, levelNumber
   4700 CE 00 80      [ 3]  948 	ldu	#128	;  iftmp.39,
   4703 C1 0E         [ 2]  949 	cmpb	#14	;cmpqi:	;  levelNumber.40,
   4705 27 03         [ 3]  950 	beq	L65	; 
   4707 CE 00 50      [ 3]  951 	ldu	#80	;  iftmp.39,
   470A                     952 L65:
   470A 30 A4         [ 4]  953 	leax	,y	;  dy.212, dy.212
   470C 10 8C 00 00   [ 5]  954 	cmpy	#0	;  dy.212
   4710 2C 08         [ 3]  955 	bge	L66	; 
   4712 1E 01         [ 8]  956 	exg	d,x	;  dy.212
   4714 40            [ 2]  957 	nega
   4715 50            [ 2]  958 	negb
   4716 82 00         [ 2]  959 	sbca	#0
   4718 1E 01         [ 8]  960 	exg	d,x	;  dy.212
   471A                     961 L66:
   471A 34 10         [ 6]  962 	pshs	x	;cmphi: R:x with R:u	;  dy.212, iftmp.39
   471C 11 A3 E1      [10]  963 	cmpu	,s++	;cmphi:	;  iftmp.39
   471F 10 2F 00 5B   [ 6]  964 	lble	L49	; 
   4723 F6 C8 87      [ 5]  965 	ldb	_levelNumber	;  levelNumber.42, levelNumber
   4726 8E 00 80      [ 3]  966 	ldx	#128	; ,
   4729 AF E8 17      [ 6]  967 	stx	23,s	; , iftmp.41
   472C C1 0E         [ 2]  968 	cmpb	#14	;cmpqi:	;  levelNumber.42,
   472E 27 06         [ 3]  969 	beq	L68	; 
   4730 CE 00 50      [ 3]  970 	ldu	#80	; ,
   4733 EF E8 17      [ 6]  971 	stu	23,s	; , iftmp.41
   4736                     972 L68:
   4736 E6 E8 22      [ 5]  973 	ldb	34,s	;  tmp259, temp.205
   4739 E0 E8 23      [ 5]  974 	subb	35,s	;  tmp259, last_x.206
   473C 1D            [ 2]  975 	sex		;extendqihi2: R:b -> R:d	;  tmp259, dx
   473D 58            [ 2]  976 	aslb	; 
   473E 49            [ 2]  977 	rola	; 
   473F 58            [ 2]  978 	aslb	; 
   4740 49            [ 2]  979 	rola	; 
   4741 58            [ 2]  980 	aslb	; 
   4742 49            [ 2]  981 	rola	; 
   4743 1F 03         [ 6]  982 	tfr	d,u	;  dx.211, dx.213
   4745 30 C4         [ 4]  983 	leax	,u	;  dx.213, dx.213
   4747 11 83 00 00   [ 5]  984 	cmpu	#0	;  dx.213
   474B 2C 08         [ 3]  985 	bge	L69	; 
   474D 1E 01         [ 8]  986 	exg	d,x	;  dx.213
   474F 40            [ 2]  987 	nega
   4750 50            [ 2]  988 	negb
   4751 82 00         [ 2]  989 	sbca	#0
   4753 1E 01         [ 8]  990 	exg	d,x	;  dx.213
   4755                     991 L69:
   4755 AC E8 17      [ 7]  992 	cmpx	23,s	;cmphi:(R)	;  dx.213, iftmp.41
   4758 2C 24         [ 3]  993 	bge	L49	; 
                            994 ;----- asm -----
                            995 ;  396 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                            996 	; #ENR#[307]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
                            997 ;  0 "" 2
                            998 ;--- end asm ---
   475A C6 8F         [ 2]  999 	ldb	#-113	; ,
   475C AE E8 10      [ 6] 1000 	ldx	16,s	; , D.1447
   475F E7 89 C9 27   [ 8] 1001 	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
                           1002 ;----- asm -----
                           1003 ;  400 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1004 	; #ENR#[310]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
                           1005 ;  0 "" 2
                           1006 ;--- end asm ---
   4763 F6 C8 84      [ 5] 1007 	ldb	_lineCount	; , lineCount
   4766 4F            [ 2] 1008 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4767 ED 64         [ 6] 1009 	std	4,s	; ,
   4769 58            [ 2] 1010 	aslb	; 
   476A 49            [ 2] 1011 	rola	; 
   476B 58            [ 2] 1012 	aslb	; 
   476C 49            [ 2] 1013 	rola	; 
   476D E3 64         [ 7] 1014 	addd	4,s	;  tmp267,
   476F C3 C9 27      [ 4] 1015 	addd	#_lineYX_yx_s_dy_dx	;  tmp267,
   4772 ED E4         [ 5] 1016 	std	,s	;  tmp267,
   4774 1F 20         [ 6] 1017 	tfr	y,d	;  dy.212,
   4776 AE E4         [ 5] 1018 	ldx	,s	; ,
   4778 E7 80         [ 6] 1019 	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
                           1020 ;----- asm -----
                           1021 ;  402 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1022 	; #ENR#[311]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
                           1023 ;  0 "" 2
                           1024 ;--- end asm ---
   477A 1F 30         [ 6] 1025 	tfr	u,d	;  dx.213,
   477C E7 84         [ 4] 1026 	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
   477E                    1027 L49:
                           1028 ;----- asm -----
                           1029 ;  409 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1030 	; #ENR#[317]    last_x = this_x;
                           1031 ;  0 "" 2
                           1032 ;--- end asm ---
   477E E6 6D         [ 5] 1033 	ldb	13,s	; , D.1419
   4780 EB 6C         [ 5] 1034 	addb	12,s	; , D.1417
   4782 F7 C8 88      [ 5] 1035 	stb	_last_x	; , last_x
                           1036 ;----- asm -----
                           1037 ;  411 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1038 	; #ENR#[318]    last_y = this_y;
                           1039 ;  0 "" 2
                           1040 ;--- end asm ---
   4785 E6 6F         [ 5] 1041 	ldb	15,s	; , D.1422
   4787 EB 6E         [ 5] 1042 	addb	14,s	; , D.1420
   4789 F7 C8 89      [ 5] 1043 	stb	_last_y	; , last_y
                           1044 ;----- asm -----
                           1045 ;  413 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1046 	; #ENR#[319]    last_s = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+2)];
                           1047 ;  0 "" 2
                           1048 ;--- end asm ---
   478C F6 C8 84      [ 5] 1049 	ldb	_lineCount	; , lineCount
   478F 4F            [ 2] 1050 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4790 ED 62         [ 6] 1051 	std	2,s	; ,
   4792 58            [ 2] 1052 	aslb	; 
   4793 49            [ 2] 1053 	rola	; 
   4794 58            [ 2] 1054 	aslb	; 
   4795 49            [ 2] 1055 	rola	; 
                           1056 ; Applied peep: bug1 (gcc does one exg to many)
   4796 E3 62         [ 7] 1057 	addd	2,s	; ,
   4798 1F 01         [ 6] 1058  tfr d,x
                           1059 ; ORG>	tfr	d,x	; , tmp279
                           1060 ; ORG>	exg	d,x	; , tmp280
                           1061 ; ORG>	addd	2,s	; ,
                           1062 ; ORG>	exg	d,x	; , tmp280
   479A E6 89 C9 29   [ 8] 1063 	ldb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
   479E F7 C8 8A      [ 5] 1064 	stb	_last_s	; , last_s
   47A1                    1065 L70:
   47A1 32 E8 24      [ 5] 1066 	leas	36,s	; ,,
   47A4 35 E0         [ 8] 1067 	puls	y,u,pc	; 
                           1068 	.globl _addTarget
   47A6                    1069 _addTarget:
   47A6 34 60         [ 7] 1070 	pshs	y,u	; 
   47A8 32 74         [ 5] 1071 	leas	-12,s	; ,,
   47AA E7 63         [ 5] 1072 	stb	3,s	;  x, x
                           1073 ;----- asm -----
                           1074 ;  502 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1075 	; #ENR#[378]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x, 0, y);
                           1076 ;  0 "" 2
                           1077 ;--- end asm ---
   47AC F6 C8 84      [ 5] 1078 	ldb	_lineCount	; , lineCount
   47AF 86 05         [ 2] 1079 	lda	#5	;umulqihi3	; 
   47B1 3D            [11] 1080 	mul
   47B2 1F 02         [ 6] 1081 	tfr	d,y	; , D.1577
   47B4 E6 E8 12      [ 5] 1082 	ldb	18,s	; , y
   47B7 34 04         [ 6] 1083 	pshs	b	; 
   47B9 6F E2         [ 8] 1084 	clr	,-s	; 
   47BB E6 65         [ 5] 1085 	ldb	5,s	; , x
   47BD BD 43 80      [ 8] 1086 	jsr	_y3d	; 
   47C0 CE C9 27      [ 3] 1087 	ldu	#_lineYX_yx_s_dy_dx	;  tmp51,
   47C3 E7 A9 C9 27   [ 8] 1088 	stb	_lineYX_yx_s_dy_dx,y	;  D.1578, lineYX_yx_s_dy_dx
                           1089 ;----- asm -----
                           1090 ;  504 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1091 	; #ENR#[379]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x, y) ;
                           1092 ;  0 "" 2
                           1093 ;--- end asm ---
   47C7 F6 C8 84      [ 5] 1094 	ldb	_lineCount	; , lineCount
   47CA 86 05         [ 2] 1095 	lda	#5	;umulqihi3	; 
   47CC 3D            [11] 1096 	mul
   47CD 1F 02         [ 6] 1097 	tfr	d,y	; , tmp53
   47CF 31 21         [ 5] 1098 	leay	1,y	;  D.1579,, tmp53
   47D1 E6 E8 14      [ 5] 1099 	ldb	20,s	; , y
   47D4 34 04         [ 6] 1100 	pshs	b	; 
   47D6 E6 66         [ 5] 1101 	ldb	6,s	; , x
   47D8 BD 43 5F      [ 8] 1102 	jsr	_x3d	; 
   47DB E7 63         [ 5] 1103 	stb	3,s	; , D.1580
   47DD 1F 30         [ 6] 1104 	tfr	u,d	;  tmp51,
   47DF 30 AB         [ 8] 1105 	leax	d,y	;  tmp55,, D.1579
   47E1 E6 63         [ 5] 1106 	ldb	3,s	; , D.1580
   47E3 E7 84         [ 4] 1107 	stb	,x	; , lineYX_yx_s_dy_dx
                           1108 ;----- asm -----
                           1109 ;  506 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1110 	; #ENR#[380]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x+1, 0, y+1)- (y3d(x, 0, y));
                           1111 ;  0 "" 2
                           1112 ;--- end asm ---
   47E5 F6 C8 84      [ 5] 1113 	ldb	_lineCount	; , lineCount
   47E8 86 05         [ 2] 1114 	lda	#5	;umulqihi3	; 
   47EA 3D            [11] 1115 	mul
   47EB 1F 02         [ 6] 1116 	tfr	d,y	; , tmp56
   47ED 31 23         [ 5] 1117 	leay	3,y	;  D.1581,, tmp56
   47EF E6 E8 15      [ 5] 1118 	ldb	21,s	; , y
   47F2 5C            [ 2] 1119 	incb	; 
   47F3 E7 67         [ 5] 1120 	stb	7,s	; , D.1582
   47F5 E6 66         [ 5] 1121 	ldb	6,s	; , x
   47F7 5C            [ 2] 1122 	incb	; 
   47F8 E7 68         [ 5] 1123 	stb	8,s	; , D.1583
   47FA E6 67         [ 5] 1124 	ldb	7,s	; , D.1582
   47FC 34 04         [ 6] 1125 	pshs	b	; 
   47FE 6F E2         [ 8] 1126 	clr	,-s	; 
   4800 E6 6A         [ 5] 1127 	ldb	10,s	; , D.1583
   4802 BD 43 80      [ 8] 1128 	jsr	_y3d	; 
   4805 E7 6B         [ 5] 1129 	stb	11,s	; , D.1584
   4807 E6 E8 17      [ 5] 1130 	ldb	23,s	; , y
   480A 34 04         [ 6] 1131 	pshs	b	; 
   480C 6F E2         [ 8] 1132 	clr	,-s	; 
   480E E6 6A         [ 5] 1133 	ldb	10,s	; , x
   4810 BD 43 80      [ 8] 1134 	jsr	_y3d	; 
   4813 E7 67         [ 5] 1135 	stb	7,s	; , D.1585
   4815 1F 30         [ 6] 1136 	tfr	u,d	;  tmp51,
   4817 30 AB         [ 8] 1137 	leax	d,y	;  tmp58,, D.1581
   4819 E6 6D         [ 5] 1138 	ldb	13,s	;  tmp59, D.1584
   481B E0 67         [ 5] 1139 	subb	7,s	;  tmp59, D.1585
   481D E7 84         [ 4] 1140 	stb	,x	;  tmp59, lineYX_yx_s_dy_dx
                           1141 ;----- asm -----
                           1142 ;  508 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1143 	; #ENR#[381]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x+1, y+1)- (x3d(x, y)) ;
                           1144 ;  0 "" 2
                           1145 ;--- end asm ---
   481F F6 C8 84      [ 5] 1146 	ldb	_lineCount	; , lineCount
   4822 86 05         [ 2] 1147 	lda	#5	;umulqihi3	; 
   4824 3D            [11] 1148 	mul
   4825 1F 02         [ 6] 1149 	tfr	d,y	; , tmp60
   4827 31 24         [ 5] 1150 	leay	4,y	;  D.1587,, tmp60
   4829 E6 6B         [ 5] 1151 	ldb	11,s	; , D.1582
   482B 34 04         [ 6] 1152 	pshs	b	; 
   482D E6 6D         [ 5] 1153 	ldb	13,s	; , D.1583
   482F BD 43 5F      [ 8] 1154 	jsr	_x3d	; 
   4832 E7 6F         [ 5] 1155 	stb	15,s	; , D.1588
   4834 32 68         [ 5] 1156 	leas	8,s	; ,,
   4836 E6 E8 12      [ 5] 1157 	ldb	18,s	; , y
   4839 34 04         [ 6] 1158 	pshs	b	; 
   483B E6 64         [ 5] 1159 	ldb	4,s	; , x
   483D BD 43 5F      [ 8] 1160 	jsr	_x3d	; 
   4840 E7 61         [ 5] 1161 	stb	1,s	; , D.1589
   4842 1F 30         [ 6] 1162 	tfr	u,d	;  tmp51,
   4844 30 AB         [ 8] 1163 	leax	d,y	;  tmp62,, D.1587
   4846 E6 68         [ 5] 1164 	ldb	8,s	;  tmp63, D.1588
   4848 E0 61         [ 5] 1165 	subb	1,s	;  tmp63, D.1589
   484A E7 84         [ 4] 1166 	stb	,x	;  tmp63, lineYX_yx_s_dy_dx
                           1167 ;----- asm -----
                           1168 ;  510 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1169 	; #ENR#[382]    checkHalfling();
                           1170 ;  0 "" 2
                           1171 ;--- end asm ---
   484C BD 43 A4      [ 8] 1172 	jsr	_checkHalfling	; 
                           1173 ;----- asm -----
                           1174 ;  513 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1175 	; #ENR#[384]    lineCount++;
                           1176 ;  0 "" 2
                           1177 ;--- end asm ---
   484F F6 C8 84      [ 5] 1178 	ldb	_lineCount	; , lineCount
   4852 5C            [ 2] 1179 	incb	; 
   4853 E7 69         [ 5] 1180 	stb	9,s	; , lineCount.49
   4855 F7 C8 84      [ 5] 1181 	stb	_lineCount	; , lineCount
                           1182 ;----- asm -----
                           1183 ;  517 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1184 	; #ENR#[387]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x+1, 0, y);
                           1185 ;  0 "" 2
                           1186 ;--- end asm ---
   4858 E6 E8 13      [ 5] 1187 	ldb	19,s	; , y
   485B 34 04         [ 6] 1188 	pshs	b	; 
   485D 6F E2         [ 8] 1189 	clr	,-s	; 
   485F E6 68         [ 5] 1190 	ldb	8,s	; , D.1583
   4861 BD 43 80      [ 8] 1191 	jsr	_y3d	; 
   4864 E7 6C         [ 5] 1192 	stb	12,s	; , D.1592
   4866 E6 6B         [ 5] 1193 	ldb	11,s	; , lineCount.49
   4868 4F            [ 2] 1194 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4869 ED 64         [ 6] 1195 	std	4,s	; ,
   486B 58            [ 2] 1196 	aslb	; 
   486C 49            [ 2] 1197 	rola	; 
   486D 58            [ 2] 1198 	aslb	; 
   486E 49            [ 2] 1199 	rola	; 
   486F 10 AE 64      [ 7] 1200 	ldy	4,s	; ,
   4872 30 AB         [ 8] 1201 	leax	d,y	;  tmp68, tmp67,
   4874 1E 03         [ 8] 1202 	exg	d,u	; , tmp51
   4876 30 8B         [ 8] 1203 	leax	d,x	;  tmp69,, tmp69
   4878 1E 03         [ 8] 1204 	exg	d,u	; , tmp51
   487A E6 6C         [ 5] 1205 	ldb	12,s	; , D.1592
   487C E7 84         [ 4] 1206 	stb	,x	; , lineYX_yx_s_dy_dx
                           1207 ;----- asm -----
                           1208 ;  519 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1209 	; #ENR#[388]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x+1, y) ;
                           1210 ;  0 "" 2
                           1211 ;--- end asm ---
   487E F6 C8 84      [ 5] 1212 	ldb	_lineCount	; , lineCount
   4881 86 05         [ 2] 1213 	lda	#5	;umulqihi3	; 
   4883 3D            [11] 1214 	mul
   4884 1F 02         [ 6] 1215 	tfr	d,y	; , tmp70
   4886 31 21         [ 5] 1216 	leay	1,y	;  temp.246,, tmp70
   4888 E6 E8 15      [ 5] 1217 	ldb	21,s	; , y
   488B 34 04         [ 6] 1218 	pshs	b	; 
   488D E6 69         [ 5] 1219 	ldb	9,s	; , D.1583
   488F BD 43 5F      [ 8] 1220 	jsr	_x3d	; 
   4892 E7 64         [ 5] 1221 	stb	4,s	; , D.1593
   4894 1F 30         [ 6] 1222 	tfr	u,d	;  tmp51,
   4896 30 AB         [ 8] 1223 	leax	d,y	;  tmp72,, temp.246
   4898 E6 64         [ 5] 1224 	ldb	4,s	; , D.1593
   489A E7 84         [ 4] 1225 	stb	,x	; , lineYX_yx_s_dy_dx
                           1226 ;----- asm -----
                           1227 ;  521 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1228 	; #ENR#[389]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x, 0, y+1)- (y3d(x+1, 0, y));
                           1229 ;  0 "" 2
                           1230 ;--- end asm ---
   489C F6 C8 84      [ 5] 1231 	ldb	_lineCount	; , lineCount
   489F 86 05         [ 2] 1232 	lda	#5	;umulqihi3	; 
   48A1 3D            [11] 1233 	mul
   48A2 1F 02         [ 6] 1234 	tfr	d,y	; , tmp73
   48A4 31 23         [ 5] 1235 	leay	3,y	;  temp.250,, tmp73
   48A6 E6 68         [ 5] 1236 	ldb	8,s	; , D.1582
   48A8 34 04         [ 6] 1237 	pshs	b	; 
   48AA 6F E2         [ 8] 1238 	clr	,-s	; 
   48AC E6 69         [ 5] 1239 	ldb	9,s	; , x
   48AE BD 43 80      [ 8] 1240 	jsr	_y3d	; 
   48B1 E7 E8 10      [ 5] 1241 	stb	16,s	; , D.1594
   48B4 E6 E8 18      [ 5] 1242 	ldb	24,s	; , y
   48B7 34 04         [ 6] 1243 	pshs	b	; 
   48B9 6F E2         [ 8] 1244 	clr	,-s	; 
   48BB E6 6D         [ 5] 1245 	ldb	13,s	; , D.1583
   48BD BD 43 80      [ 8] 1246 	jsr	_y3d	; 
   48C0 E7 68         [ 5] 1247 	stb	8,s	; , D.1595
   48C2 1F 30         [ 6] 1248 	tfr	u,d	;  tmp51,
   48C4 30 AB         [ 8] 1249 	leax	d,y	;  tmp75,, temp.250
   48C6 E6 E8 12      [ 5] 1250 	ldb	18,s	;  tmp76, D.1594
   48C9 E0 68         [ 5] 1251 	subb	8,s	;  tmp76, D.1595
   48CB E7 84         [ 4] 1252 	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
                           1253 ;----- asm -----
                           1254 ;  523 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1255 	; #ENR#[390]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x, y+1)- (x3d(x+1, y))  ;
                           1256 ;  0 "" 2
                           1257 ;--- end asm ---
   48CD F6 C8 84      [ 5] 1258 	ldb	_lineCount	; , lineCount
   48D0 86 05         [ 2] 1259 	lda	#5	;umulqihi3	; 
   48D2 3D            [11] 1260 	mul
   48D3 1F 02         [ 6] 1261 	tfr	d,y	; , tmp77
   48D5 31 24         [ 5] 1262 	leay	4,y	;  temp.254,, tmp77
   48D7 32 68         [ 5] 1263 	leas	8,s	; ,,
   48D9 E6 64         [ 5] 1264 	ldb	4,s	; , D.1582
   48DB 34 04         [ 6] 1265 	pshs	b	; 
   48DD E6 64         [ 5] 1266 	ldb	4,s	; , x
   48DF BD 43 5F      [ 8] 1267 	jsr	_x3d	; 
   48E2 E7 6C         [ 5] 1268 	stb	12,s	; , D.1597
   48E4 E6 E8 13      [ 5] 1269 	ldb	19,s	; , y
   48E7 34 04         [ 6] 1270 	pshs	b	; 
   48E9 E6 67         [ 5] 1271 	ldb	7,s	; , D.1583
   48EB BD 43 5F      [ 8] 1272 	jsr	_x3d	; 
   48EE E7 62         [ 5] 1273 	stb	2,s	; , D.1598
   48F0 1F 30         [ 6] 1274 	tfr	u,d	;  tmp51,
   48F2 30 AB         [ 8] 1275 	leax	d,y	;  tmp79,, temp.254
   48F4 E6 6D         [ 5] 1276 	ldb	13,s	;  tmp80, D.1597
   48F6 E0 62         [ 5] 1277 	subb	2,s	;  tmp80, D.1598
   48F8 E7 84         [ 4] 1278 	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
                           1279 ;----- asm -----
                           1280 ;  525 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1281 	; #ENR#[391]    checkHalfling();
                           1282 ;  0 "" 2
                           1283 ;--- end asm ---
   48FA BD 43 A4      [ 8] 1284 	jsr	_checkHalfling	; 
                           1285 ;----- asm -----
                           1286 ;  528 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1287 	; #ENR#[393]    lineCount++;
                           1288 ;  0 "" 2
                           1289 ;--- end asm ---
   48FD 7C C8 84      [ 7] 1290 	inc	_lineCount	;  lineCount
   4900 32 6E         [ 5] 1291 	leas	14,s	; ,,
   4902 35 E0         [ 8] 1292 	puls	y,u,pc	; 
                           1293 	.globl _initSwatches
   4904                    1294 _initSwatches:
   4904 34 60         [ 7] 1295 	pshs	y,u	; 
   4906 32 7E         [ 5] 1296 	leas	-2,s	; ,,
                           1297 ;----- asm -----
                           1298 ;  641 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1299 	; #ENR#[467]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
                           1300 ;  0 "" 2
                           1301 ;--- end asm ---
   4908 8E C9 14      [ 3] 1302 	ldx	#_swatchesOn	;  ivtmp.289,
   490B                    1303 L74:
                           1304 ;----- asm -----
                           1305 ;  643 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1306 	; #ENR#[468]        swatchesOn[i] = 0;
                           1307 ;  0 "" 2
                           1308 ;--- end asm ---
   490B 6F 80         [ 8] 1309 	clr	,x+	;  swatchesOn
   490D 8C C9 27      [ 4] 1310 	cmpx	#_swatchesOn+19	;cmphi:	;  ivtmp.289,
   4910 26 F9         [ 3] 1311 	bne	L74	; 
                           1312 ;----- asm -----
                           1313 ;  647 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1314 	; #ENR#[471]    long int index;
                           1315 ;  0 "" 2
                           1316 ;  649 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1317 	; #ENR#[472]    int8_t x = 0;
                           1318 ;  0 "" 2
                           1319 ;  651 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1320 	; #ENR#[473]    int8_t y = 0;
                           1321 ;  0 "" 2
                           1322 ;  653 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1323 	; #ENR#[474]    const char* geometry = level->geometry;
                           1324 ;  0 "" 2
                           1325 ;  655 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1326 	; #ENR#[475]    for (y = 0; y < LEVEL_HEIGHT; y++) {
                           1327 ;  0 "" 2
                           1328 ;--- end asm ---
   4912 10 AE 9F C9 12[11] 1329 	ldy	[_level]	;  ivtmp.281, <variable>.geometry
   4917 6F 61         [ 7] 1330 	clr	1,s	;  y
   4919                    1331 L78:
                           1332 ;----- asm -----
                           1333 ;  657 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1334 	; #ENR#[476]        for (x = 0; x < LEVEL_WIDTH; x++) {
                           1335 ;  0 "" 2
                           1336 ;--- end asm ---
   4919 33 A4         [ 4] 1337 	leau	,y	;  ivtmp.290, ivtmp.281
   491B 6F E4         [ 6] 1338 	clr	,s	;  x
   491D                    1339 L77:
                           1340 ;----- asm -----
                           1341 ;  659 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1342 	; #ENR#[477]            index = (long int) y*LEVEL_WIDTH + (long int)x;
                           1343 ;  0 "" 2
                           1344 ;  661 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1345 	; #ENR#[478]            char c0 = geometry[index];
                           1346 ;  0 "" 2
                           1347 ;--- end asm ---
   491D E6 C4         [ 4] 1348 	ldb	,u	;  c0,* ivtmp.290
                           1349 ;----- asm -----
                           1350 ;  663 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1351 	; #ENR#[479]            if (c0 == 'k' || c0 == 'q') {
                           1352 ;  0 "" 2
                           1353 ;--- end asm ---
   491F C1 6B         [ 2] 1354 	cmpb	#107	;cmpqi:	;  c0,
   4921 27 04         [ 3] 1355 	beq	L75	; 
   4923 C1 71         [ 2] 1356 	cmpb	#113	;cmpqi:	;  c0,
   4925 26 0F         [ 3] 1357 	bne	L76	; 
   4927                    1358 L75:
                           1359 ;----- asm -----
                           1360 ;  665 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1361 	; #ENR#[480]                setSwatchField(x, y, 1);
                           1362 ;  0 "" 2
                           1363 ;--- end asm ---
   4927 C6 01         [ 2] 1364 	ldb	#1	; ,
   4929 E7 E2         [ 6] 1365 	stb	,-s	; ,
   492B E6 62         [ 5] 1366 	ldb	2,s	; , y
   492D 34 04         [ 6] 1367 	pshs	b	; 
   492F E6 62         [ 5] 1368 	ldb	2,s	; , x
   4931 BD 42 AF      [ 8] 1369 	jsr	_setSwatchField	; 
   4934 32 62         [ 5] 1370 	leas	2,s	; ,,
   4936                    1371 L76:
   4936 6C E4         [ 6] 1372 	inc	,s	;  x
   4938 33 41         [ 5] 1373 	leau	1,u	;  ivtmp.290,, ivtmp.290
   493A E6 E4         [ 4] 1374 	ldb	,s	; , x
   493C C1 0A         [ 2] 1375 	cmpb	#10	;cmpqi:	; ,
   493E 26 DD         [ 3] 1376 	bne	L77	; 
   4940 6C 61         [ 7] 1377 	inc	1,s	;  y
   4942 31 2A         [ 5] 1378 	leay	10,y	;  ivtmp.281,, ivtmp.281
   4944 E6 61         [ 5] 1379 	ldb	1,s	; , y
   4946 C1 0F         [ 2] 1380 	cmpb	#15	;cmpqi:	; ,
   4948 10 26 FF CD   [ 6] 1381 	lbne	L78	; 
   494C 32 62         [ 5] 1382 	leas	2,s	; ,,
   494E 35 E0         [ 8] 1383 	puls	y,u,pc	; 
   4950                    1384 LC0:
   4950 54                 1385 	.byte	0x54
   4951 4F                 1386 	.byte	0x4F
   4952 4F                 1387 	.byte	0x4F
   4953 20                 1388 	.byte	0x20
   4954 4D                 1389 	.byte	0x4D
   4955 41                 1390 	.byte	0x41
   4956 4E                 1391 	.byte	0x4E
   4957 59                 1392 	.byte	0x59
   4958 20                 1393 	.byte	0x20
   4959 4C                 1394 	.byte	0x4C
   495A 49                 1395 	.byte	0x49
   495B 4E                 1396 	.byte	0x4E
   495C 45                 1397 	.byte	0x45
   495D 53                 1398 	.byte	0x53
   495E 80                 1399 	.byte	0x80
   495F 00                 1400 	.byte	0x00
                           1401 	.globl _addSplit
   4960                    1402 _addSplit:
   4960 34 60         [ 7] 1403 	pshs	y,u	; 
   4962 32 7A         [ 5] 1404 	leas	-6,s	; ,,
   4964 E7 61         [ 5] 1405 	stb	1,s	;  x0, x0
                           1406 ;----- asm -----
                           1407 ;  457 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1408 	; #ENR#[349]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0) + 3;
                           1409 ;  0 "" 2
                           1410 ;--- end asm ---
   4966 F6 C8 84      [ 5] 1411 	ldb	_lineCount	; , lineCount
   4969 86 05         [ 2] 1412 	lda	#5	;umulqihi3	; 
   496B 3D            [11] 1413 	mul
   496C 1F 02         [ 6] 1414 	tfr	d,y	; , D.1534
   496E E6 6C         [ 5] 1415 	ldb	12,s	; , y0
   4970 34 04         [ 6] 1416 	pshs	b	; 
   4972 6F E2         [ 8] 1417 	clr	,-s	; 
   4974 E6 63         [ 5] 1418 	ldb	3,s	; , x0
   4976 BD 43 80      [ 8] 1419 	jsr	_y3d	; 
   4979 CE C9 27      [ 3] 1420 	ldu	#_lineYX_yx_s_dy_dx	;  tmp41,
   497C CB 03         [ 2] 1421 	addb	#3	;  D.1535,
   497E E7 A9 C9 27   [ 8] 1422 	stb	_lineYX_yx_s_dy_dx,y	;  D.1535, lineYX_yx_s_dy_dx
                           1423 ;----- asm -----
                           1424 ;  459 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1425 	; #ENR#[350]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0) + 6;
                           1426 ;  0 "" 2
                           1427 ;--- end asm ---
   4982 F6 C8 84      [ 5] 1428 	ldb	_lineCount	; , lineCount
   4985 86 05         [ 2] 1429 	lda	#5	;umulqihi3	; 
   4987 3D            [11] 1430 	mul
   4988 1F 02         [ 6] 1431 	tfr	d,y	; , tmp43
   498A 31 21         [ 5] 1432 	leay	1,y	;  D.1537,, tmp43
   498C E6 6E         [ 5] 1433 	ldb	14,s	; , y0
   498E 34 04         [ 6] 1434 	pshs	b	; 
   4990 E6 64         [ 5] 1435 	ldb	4,s	; , x0
   4992 BD 43 5F      [ 8] 1436 	jsr	_x3d	; 
   4995 E7 63         [ 5] 1437 	stb	3,s	; , D.1538
   4997 1F 30         [ 6] 1438 	tfr	u,d	;  tmp41,
   4999 30 AB         [ 8] 1439 	leax	d,y	;  tmp45,, D.1537
   499B E6 63         [ 5] 1440 	ldb	3,s	; , D.1538
   499D CB 06         [ 2] 1441 	addb	#6	; ,
   499F E7 84         [ 4] 1442 	stb	,x	; , lineYX_yx_s_dy_dx
                           1443 ;----- asm -----
                           1444 ;  461 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1445 	; #ENR#[351]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x0, 0, y0 + 1)+0- (y3d(x0, 0, y0)+3);
                           1446 ;  0 "" 2
                           1447 ;--- end asm ---
   49A1 F6 C8 84      [ 5] 1448 	ldb	_lineCount	; , lineCount
   49A4 86 05         [ 2] 1449 	lda	#5	;umulqihi3	; 
   49A6 3D            [11] 1450 	mul
   49A7 1F 02         [ 6] 1451 	tfr	d,y	; , tmp46
   49A9 31 23         [ 5] 1452 	leay	3,y	;  D.1540,, tmp46
   49AB E6 6F         [ 5] 1453 	ldb	15,s	; , y0
   49AD 5C            [ 2] 1454 	incb	; 
   49AE E7 65         [ 5] 1455 	stb	5,s	; , D.1541
   49B0 34 04         [ 6] 1456 	pshs	b	; 
   49B2 6F E2         [ 8] 1457 	clr	,-s	; 
   49B4 E6 66         [ 5] 1458 	ldb	6,s	; , x0
   49B6 BD 43 80      [ 8] 1459 	jsr	_y3d	; 
   49B9 E7 68         [ 5] 1460 	stb	8,s	; , D.1542
   49BB E6 E8 11      [ 5] 1461 	ldb	17,s	; , y0
   49BE 34 04         [ 6] 1462 	pshs	b	; 
   49C0 6F E2         [ 8] 1463 	clr	,-s	; 
   49C2 E6 68         [ 5] 1464 	ldb	8,s	; , x0
   49C4 BD 43 80      [ 8] 1465 	jsr	_y3d	; 
   49C7 E7 6B         [ 5] 1466 	stb	11,s	; , D.1543
   49C9 1F 30         [ 6] 1467 	tfr	u,d	;  tmp41,
   49CB 30 AB         [ 8] 1468 	leax	d,y	;  tmp48,, D.1540
   49CD E6 6A         [ 5] 1469 	ldb	10,s	;  tmp49, D.1542
   49CF CB FD         [ 2] 1470 	addb	#-3	;  tmp49,
   49D1 E0 6B         [ 5] 1471 	subb	11,s	;  tmp50, D.1543
   49D3 E7 84         [ 4] 1472 	stb	,x	;  tmp50, lineYX_yx_s_dy_dx
                           1473 ;----- asm -----
                           1474 ;  463 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1475 	; #ENR#[352]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x0, y0 + 1)+8- (x3d(x0, y0)+6);
                           1476 ;  0 "" 2
                           1477 ;--- end asm ---
   49D5 F6 C8 84      [ 5] 1478 	ldb	_lineCount	; , lineCount
   49D8 86 05         [ 2] 1479 	lda	#5	;umulqihi3	; 
   49DA 3D            [11] 1480 	mul
   49DB 1F 02         [ 6] 1481 	tfr	d,y	; , tmp51
   49DD 31 24         [ 5] 1482 	leay	4,y	;  D.1546,, tmp51
   49DF E6 69         [ 5] 1483 	ldb	9,s	; , D.1541
   49E1 34 04         [ 6] 1484 	pshs	b	; 
   49E3 E6 69         [ 5] 1485 	ldb	9,s	; , x0
   49E5 BD 43 5F      [ 8] 1486 	jsr	_x3d	; 
   49E8 E7 6D         [ 5] 1487 	stb	13,s	; , D.1547
   49EA 32 68         [ 5] 1488 	leas	8,s	; ,,
   49EC E6 6C         [ 5] 1489 	ldb	12,s	; , y0
   49EE 34 04         [ 6] 1490 	pshs	b	; 
   49F0 E6 62         [ 5] 1491 	ldb	2,s	; , x0
   49F2 BD 43 5F      [ 8] 1492 	jsr	_x3d	; 
   49F5 E7 61         [ 5] 1493 	stb	1,s	; , D.1549
   49F7 1F 30         [ 6] 1494 	tfr	u,d	;  tmp41,
   49F9 30 AB         [ 8] 1495 	leax	d,y	;  tmp53,, D.1546
   49FB E6 66         [ 5] 1496 	ldb	6,s	;  tmp55, D.1547
   49FD E0 61         [ 5] 1497 	subb	1,s	;  tmp55, D.1549
   49FF CB 02         [ 2] 1498 	addb	#2	;  tmp55,
   4A01 E7 84         [ 4] 1499 	stb	,x	;  tmp55, lineYX_yx_s_dy_dx
                           1500 ;----- asm -----
                           1501 ;  466 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1502 	; #ENR#[354]    checkHalfling();
                           1503 ;  0 "" 2
                           1504 ;--- end asm ---
   4A03 BD 43 A4      [ 8] 1505 	jsr	_checkHalfling	; 
                           1506 ;----- asm -----
                           1507 ;  468 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1508 	; #ENR#[355]    lineCount++;
                           1509 ;  0 "" 2
                           1510 ;--- end asm ---
   4A06 F6 C8 84      [ 5] 1511 	ldb	_lineCount	;  lineCount.47, lineCount
   4A09 5C            [ 2] 1512 	incb	;  lineCount.47
   4A0A F7 C8 84      [ 5] 1513 	stb	_lineCount	;  lineCount.47, lineCount
                           1514 ;----- asm -----
                           1515 ;  470 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1516 	; #ENR#[356]    if (lineCount >= MAX_LINES) {
                           1517 ;  0 "" 2
                           1518 ;--- end asm ---
   4A0D 32 61         [ 5] 1519 	leas	1,s	; ,,
   4A0F C1 6D         [ 2] 1520 	cmpb	#109	;cmpqi:	;  lineCount.47,
   4A11 23 06         [ 3] 1521 	bls	L85	; 
                           1522 ;----- asm -----
                           1523 ;  472 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1524 	; #ENR#[357]        runtimeError("TOO MANY LINES€");
                           1525 ;  0 "" 2
                           1526 ;--- end asm ---
   4A13 8E 49 50      [ 3] 1527 	ldx	#LC0	; ,
   4A16 BD 35 B6      [ 8] 1528 	jsr	_runtimeError	; 
   4A19                    1529 L85:
   4A19 32 66         [ 5] 1530 	leas	6,s	; ,,
   4A1B 35 E0         [ 8] 1531 	puls	y,u,pc	; 
                           1532 	.globl _addLineImpl
   4A1D                    1533 _addLineImpl:
   4A1D 34 60         [ 7] 1534 	pshs	y,u	; 
   4A1F 32 7A         [ 5] 1535 	leas	-6,s	; ,,
   4A21 E7 61         [ 5] 1536 	stb	1,s	;  x0, x0
                           1537 ;----- asm -----
                           1538 ;  420 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1539 	; #ENR#[325]    if (half) 
                           1540 ;  0 "" 2
                           1541 ;--- end asm ---
   4A23 6D 6F         [ 7] 1542 	tst	15,s	;  half
   4A25 10 27 00 A1   [ 6] 1543 	lbeq	L87	; 
                           1544 ;----- asm -----
                           1545 ;  423 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1546 	; #ENR#[327]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0)+4;
                           1547 ;  0 "" 2
                           1548 ;--- end asm ---
   4A29 F6 C8 84      [ 5] 1549 	ldb	_lineCount	; , lineCount
   4A2C 86 05         [ 2] 1550 	lda	#5	;umulqihi3	; 
   4A2E 3D            [11] 1551 	mul
   4A2F 1F 02         [ 6] 1552 	tfr	d,y	; , D.1501
   4A31 E6 6C         [ 5] 1553 	ldb	12,s	; , y0
   4A33 34 04         [ 6] 1554 	pshs	b	; 
   4A35 6F E2         [ 8] 1555 	clr	,-s	; 
   4A37 E6 63         [ 5] 1556 	ldb	3,s	; , x0
   4A39 BD 43 80      [ 8] 1557 	jsr	_y3d	; 
   4A3C CE C9 27      [ 3] 1558 	ldu	#_lineYX_yx_s_dy_dx	;  tmp53,
   4A3F CB 04         [ 2] 1559 	addb	#4	;  D.1502,
   4A41 E7 A9 C9 27   [ 8] 1560 	stb	_lineYX_yx_s_dy_dx,y	;  D.1502, lineYX_yx_s_dy_dx
                           1561 ;----- asm -----
                           1562 ;  425 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1563 	; #ENR#[328]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0)  -1;
                           1564 ;  0 "" 2
                           1565 ;--- end asm ---
   4A45 F6 C8 84      [ 5] 1566 	ldb	_lineCount	; , lineCount
   4A48 86 05         [ 2] 1567 	lda	#5	;umulqihi3	; 
   4A4A 3D            [11] 1568 	mul
   4A4B 1F 02         [ 6] 1569 	tfr	d,y	; , tmp55
   4A4D 31 21         [ 5] 1570 	leay	1,y	;  D.1504,, tmp55
   4A4F E6 6E         [ 5] 1571 	ldb	14,s	; , y0
   4A51 34 04         [ 6] 1572 	pshs	b	; 
   4A53 E6 64         [ 5] 1573 	ldb	4,s	; , x0
   4A55 BD 43 5F      [ 8] 1574 	jsr	_x3d	; 
   4A58 E7 63         [ 5] 1575 	stb	3,s	; , D.1505
   4A5A 1F 30         [ 6] 1576 	tfr	u,d	;  tmp53,
   4A5C 30 AB         [ 8] 1577 	leax	d,y	;  tmp57,, D.1504
   4A5E E6 63         [ 5] 1578 	ldb	3,s	; , D.1505
   4A60 5A            [ 2] 1579 	decb	; 
   4A61 E7 84         [ 4] 1580 	stb	,x	; , lineYX_yx_s_dy_dx
                           1581 ;----- asm -----
                           1582 ;  427 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1583 	; #ENR#[329]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x1, 0, y1)+3- (y3d(x0, 0, y0)+4);
                           1584 ;  0 "" 2
                           1585 ;--- end asm ---
   4A63 F6 C8 84      [ 5] 1586 	ldb	_lineCount	; , lineCount
   4A66 86 05         [ 2] 1587 	lda	#5	;umulqihi3	; 
   4A68 3D            [11] 1588 	mul
   4A69 1F 02         [ 6] 1589 	tfr	d,y	; , tmp58
   4A6B 31 23         [ 5] 1590 	leay	3,y	;  D.1507,, tmp58
   4A6D E6 E8 11      [ 5] 1591 	ldb	17,s	; , y1
   4A70 34 04         [ 6] 1592 	pshs	b	; 
   4A72 6F E2         [ 8] 1593 	clr	,-s	; 
   4A74 E6 E8 12      [ 5] 1594 	ldb	18,s	; , x1
   4A77 BD 43 80      [ 8] 1595 	jsr	_y3d	; 
   4A7A E7 67         [ 5] 1596 	stb	7,s	; , D.1508
   4A7C E6 E8 11      [ 5] 1597 	ldb	17,s	; , y0
   4A7F 34 04         [ 6] 1598 	pshs	b	; 
   4A81 6F E2         [ 8] 1599 	clr	,-s	; 
   4A83 E6 68         [ 5] 1600 	ldb	8,s	; , x0
   4A85 BD 43 80      [ 8] 1601 	jsr	_y3d	; 
   4A88 E7 67         [ 5] 1602 	stb	7,s	; , D.1510
   4A8A 1F 30         [ 6] 1603 	tfr	u,d	;  tmp53,
   4A8C 30 AB         [ 8] 1604 	leax	d,y	;  tmp60,, D.1507
   4A8E E6 67         [ 5] 1605 	ldb	7,s	;  tmp62, D.1510
   4A90 53            [ 2] 1606 	comb	;  tmp62
   4A91 EB 69         [ 5] 1607 	addb	9,s	;  tmp62, D.1508
   4A93 E7 84         [ 4] 1608 	stb	,x	;  tmp62, lineYX_yx_s_dy_dx
                           1609 ;----- asm -----
                           1610 ;  429 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1611 	; #ENR#[330]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x1, y1)-6- (x3d(x0, y0)-1);
                           1612 ;  0 "" 2
                           1613 ;--- end asm ---
   4A95 F6 C8 84      [ 5] 1614 	ldb	_lineCount	; , lineCount
   4A98 86 05         [ 2] 1615 	lda	#5	;umulqihi3	; 
   4A9A 3D            [11] 1616 	mul
   4A9B 1F 02         [ 6] 1617 	tfr	d,y	; , tmp63
   4A9D 31 24         [ 5] 1618 	leay	4,y	;  D.1513,, tmp63
   4A9F E6 E8 15      [ 5] 1619 	ldb	21,s	; , y1
   4AA2 34 04         [ 6] 1620 	pshs	b	; 
   4AA4 E6 E8 15      [ 5] 1621 	ldb	21,s	; , x1
   4AA7 BD 43 5F      [ 8] 1622 	jsr	_x3d	; 
   4AAA E7 6B         [ 5] 1623 	stb	11,s	; , D.1514
   4AAC 32 68         [ 5] 1624 	leas	8,s	; ,,
   4AAE E6 6C         [ 5] 1625 	ldb	12,s	; , y0
   4AB0 34 04         [ 6] 1626 	pshs	b	; 
   4AB2 E6 62         [ 5] 1627 	ldb	2,s	; , x0
   4AB4 BD 43 5F      [ 8] 1628 	jsr	_x3d	; 
   4AB7 E7 61         [ 5] 1629 	stb	1,s	; , D.1516
   4AB9 1F 30         [ 6] 1630 	tfr	u,d	;  tmp53,
   4ABB 30 AB         [ 8] 1631 	leax	d,y	;  tmp65,, D.1513
   4ABD E6 64         [ 5] 1632 	ldb	4,s	;  tmp67, D.1514
   4ABF E0 61         [ 5] 1633 	subb	1,s	;  tmp67, D.1516
   4AC1 CB FB         [ 2] 1634 	addb	#-5	;  tmp67,
   4AC3 E7 84         [ 4] 1635 	stb	,x	;  tmp67, lineYX_yx_s_dy_dx
   4AC5 32 61         [ 5] 1636 	leas	1,s	; ,,
   4AC7 7E 4B 62      [ 4] 1637 	jmp	L88	; 
   4ACA                    1638 L87:
                           1639 ;----- asm -----
                           1640 ;  434 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1641 	; #ENR#[334]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0);
                           1642 ;  0 "" 2
                           1643 ;--- end asm ---
   4ACA F6 C8 84      [ 5] 1644 	ldb	_lineCount	; , lineCount
   4ACD 86 05         [ 2] 1645 	lda	#5	;umulqihi3	; 
   4ACF 3D            [11] 1646 	mul
   4AD0 1F 02         [ 6] 1647 	tfr	d,y	; , temp.322
   4AD2 E6 6C         [ 5] 1648 	ldb	12,s	; , y0
   4AD4 34 04         [ 6] 1649 	pshs	b	; 
   4AD6 6F E2         [ 8] 1650 	clr	,-s	; 
   4AD8 E6 63         [ 5] 1651 	ldb	3,s	; , x0
   4ADA BD 43 80      [ 8] 1652 	jsr	_y3d	; 
   4ADD CE C9 27      [ 3] 1653 	ldu	#_lineYX_yx_s_dy_dx	;  tmp68,
   4AE0 E7 A9 C9 27   [ 8] 1654 	stb	_lineYX_yx_s_dy_dx,y	;  D.1519, lineYX_yx_s_dy_dx
                           1655 ;----- asm -----
                           1656 ;  436 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1657 	; #ENR#[335]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0);
                           1658 ;  0 "" 2
                           1659 ;--- end asm ---
   4AE4 F6 C8 84      [ 5] 1660 	ldb	_lineCount	; , lineCount
   4AE7 86 05         [ 2] 1661 	lda	#5	;umulqihi3	; 
   4AE9 3D            [11] 1662 	mul
   4AEA 1F 02         [ 6] 1663 	tfr	d,y	; , tmp70
   4AEC 31 21         [ 5] 1664 	leay	1,y	;  temp.326,, tmp70
   4AEE E6 6E         [ 5] 1665 	ldb	14,s	; , y0
   4AF0 34 04         [ 6] 1666 	pshs	b	; 
   4AF2 E6 64         [ 5] 1667 	ldb	4,s	; , x0
   4AF4 BD 43 5F      [ 8] 1668 	jsr	_x3d	; 
   4AF7 E7 63         [ 5] 1669 	stb	3,s	; , D.1520
   4AF9 1F 30         [ 6] 1670 	tfr	u,d	;  tmp68,
   4AFB 30 AB         [ 8] 1671 	leax	d,y	;  tmp72,, temp.326
   4AFD E6 63         [ 5] 1672 	ldb	3,s	; , D.1520
   4AFF E7 84         [ 4] 1673 	stb	,x	; , lineYX_yx_s_dy_dx
                           1674 ;----- asm -----
                           1675 ;  438 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1676 	; #ENR#[336]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x1, 0, y1)- y3d(x0, 0, y0);
                           1677 ;  0 "" 2
                           1678 ;--- end asm ---
   4B01 F6 C8 84      [ 5] 1679 	ldb	_lineCount	; , lineCount
   4B04 86 05         [ 2] 1680 	lda	#5	;umulqihi3	; 
   4B06 3D            [11] 1681 	mul
   4B07 1F 02         [ 6] 1682 	tfr	d,y	; , tmp73
   4B09 31 23         [ 5] 1683 	leay	3,y	;  temp.330,, tmp73
   4B0B E6 E8 11      [ 5] 1684 	ldb	17,s	; , y1
   4B0E 34 04         [ 6] 1685 	pshs	b	; 
   4B10 6F E2         [ 8] 1686 	clr	,-s	; 
   4B12 E6 E8 12      [ 5] 1687 	ldb	18,s	; , x1
   4B15 BD 43 80      [ 8] 1688 	jsr	_y3d	; 
   4B18 E7 69         [ 5] 1689 	stb	9,s	; , D.1521
   4B1A E6 E8 11      [ 5] 1690 	ldb	17,s	; , y0
   4B1D 34 04         [ 6] 1691 	pshs	b	; 
   4B1F 6F E2         [ 8] 1692 	clr	,-s	; 
   4B21 E6 68         [ 5] 1693 	ldb	8,s	; , x0
   4B23 BD 43 80      [ 8] 1694 	jsr	_y3d	; 
   4B26 E7 67         [ 5] 1695 	stb	7,s	; , D.1522
   4B28 1F 30         [ 6] 1696 	tfr	u,d	;  tmp68,
   4B2A 30 AB         [ 8] 1697 	leax	d,y	;  tmp75,, temp.330
   4B2C E6 6B         [ 5] 1698 	ldb	11,s	;  tmp76, D.1521
   4B2E E0 67         [ 5] 1699 	subb	7,s	;  tmp76, D.1522
   4B30 E7 84         [ 4] 1700 	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
                           1701 ;----- asm -----
                           1702 ;  440 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1703 	; #ENR#[337]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x1, y1)- x3d(x0, y0);
                           1704 ;  0 "" 2
                           1705 ;--- end asm ---
   4B32 F6 C8 84      [ 5] 1706 	ldb	_lineCount	; , lineCount
   4B35 86 05         [ 2] 1707 	lda	#5	;umulqihi3	; 
   4B37 3D            [11] 1708 	mul
   4B38 1F 02         [ 6] 1709 	tfr	d,y	; , tmp77
   4B3A 31 24         [ 5] 1710 	leay	4,y	;  temp.334,, tmp77
   4B3C E6 E8 15      [ 5] 1711 	ldb	21,s	; , y1
   4B3F 34 04         [ 6] 1712 	pshs	b	; 
   4B41 E6 E8 15      [ 5] 1713 	ldb	21,s	; , x1
   4B44 BD 43 5F      [ 8] 1714 	jsr	_x3d	; 
   4B47 E7 6D         [ 5] 1715 	stb	13,s	; , D.1524
   4B49 32 68         [ 5] 1716 	leas	8,s	; ,,
   4B4B E6 6C         [ 5] 1717 	ldb	12,s	; , y0
   4B4D 34 04         [ 6] 1718 	pshs	b	; 
   4B4F E6 62         [ 5] 1719 	ldb	2,s	; , x0
   4B51 BD 43 5F      [ 8] 1720 	jsr	_x3d	; 
   4B54 E7 61         [ 5] 1721 	stb	1,s	; , D.1525
   4B56 1F 30         [ 6] 1722 	tfr	u,d	;  tmp68,
   4B58 30 AB         [ 8] 1723 	leax	d,y	;  tmp79,, temp.334
   4B5A E6 66         [ 5] 1724 	ldb	6,s	;  tmp80, D.1524
   4B5C E0 61         [ 5] 1725 	subb	1,s	;  tmp80, D.1525
   4B5E E7 84         [ 4] 1726 	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
   4B60 32 61         [ 5] 1727 	leas	1,s	; ,,
   4B62                    1728 L88:
                           1729 ;----- asm -----
                           1730 ;  443 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1731 	; #ENR#[339]    checkHalfling();
                           1732 ;  0 "" 2
                           1733 ;--- end asm ---
   4B62 BD 43 A4      [ 8] 1734 	jsr	_checkHalfling	; 
                           1735 ;----- asm -----
                           1736 ;  446 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1737 	; #ENR#[341]    lineCount++;
                           1738 ;  0 "" 2
                           1739 ;--- end asm ---
   4B65 F6 C8 84      [ 5] 1740 	ldb	_lineCount	;  lineCount.45, lineCount
   4B68 5C            [ 2] 1741 	incb	;  lineCount.45
   4B69 F7 C8 84      [ 5] 1742 	stb	_lineCount	;  lineCount.45, lineCount
                           1743 ;----- asm -----
                           1744 ;  448 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1745 	; #ENR#[342]    if (lineCount >= MAX_LINES) {
                           1746 ;  0 "" 2
                           1747 ;--- end asm ---
   4B6C C1 6D         [ 2] 1748 	cmpb	#109	;cmpqi:	;  lineCount.45,
   4B6E 23 06         [ 3] 1749 	bls	L90	; 
                           1750 ;----- asm -----
                           1751 ;  450 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1752 	; #ENR#[343]        runtimeError("TOO MANY LINES€");
                           1753 ;  0 "" 2
                           1754 ;--- end asm ---
   4B70 8E 49 50      [ 3] 1755 	ldx	#LC0	; ,
   4B73 BD 35 B6      [ 8] 1756 	jsr	_runtimeError	; 
   4B76                    1757 L90:
   4B76 32 66         [ 5] 1758 	leas	6,s	; ,,
   4B78 35 E0         [ 8] 1759 	puls	y,u,pc	; 
                           1760 	.globl _addLine
   4B7A                    1761 _addLine:
   4B7A 32 7B         [ 5] 1762 	leas	-5,s	; ,,
   4B7C E7 E4         [ 4] 1763 	stb	,s	;  x0, x0
                           1764 ;----- asm -----
                           1765 ;  479 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1766 	; #ENR#[363]    int test = 8; // 9 is ok, 10 is too wide!
                           1767 ;  0 "" 2
                           1768 ;  481 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1769 	; #ENR#[364]    while (x1 - x0 > test) {
                           1770 ;  0 "" 2
                           1771 ;--- end asm ---
   4B7E E6 68         [ 5] 1772 	ldb	8,s	;  D.1568, x1
   4B80 E0 E4         [ 4] 1773 	subb	,s	;  D.1568, x0
   4B82 C1 08         [ 2] 1774 	cmpb	#8	;cmpqi:	;  D.1568,
   4B84 2F 33         [ 3] 1775 	ble	L92	; 
   4B86 E7 62         [ 5] 1776 	stb	2,s	;  D.1568, ivtmp.356
   4B88                    1777 L94:
                           1778 ;----- asm -----
                           1779 ;  483 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1780 	; #ENR#[365]        addLineImpl(x0, y0, x0 + test, y1, half);
                           1781 ;  0 "" 2
                           1782 ;--- end asm ---
   4B88 E6 E4         [ 4] 1783 	ldb	,s	; , x0
   4B8A CB 08         [ 2] 1784 	addb	#8	; ,
   4B8C E7 63         [ 5] 1785 	stb	3,s	; , x0.357
   4B8E E6 6A         [ 5] 1786 	ldb	10,s	; , half
   4B90 34 04         [ 6] 1787 	pshs	b	; 
   4B92 E6 6A         [ 5] 1788 	ldb	10,s	; , y1
   4B94 34 04         [ 6] 1789 	pshs	b	; 
   4B96 E6 65         [ 5] 1790 	ldb	5,s	; , x0.357
   4B98 34 04         [ 6] 1791 	pshs	b	; 
   4B9A E6 6A         [ 5] 1792 	ldb	10,s	; , y0
   4B9C 34 04         [ 6] 1793 	pshs	b	; 
   4B9E E6 64         [ 5] 1794 	ldb	4,s	; , x0
   4BA0 BD 4A 1D      [ 8] 1795 	jsr	_addLineImpl	; 
                           1796 ;----- asm -----
                           1797 ;  485 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1798 	; #ENR#[366]        x0 += test;
                           1799 ;  0 "" 2
                           1800 ;--- end asm ---
   4BA3 E6 66         [ 5] 1801 	ldb	6,s	; , ivtmp.356
   4BA5 CB F8         [ 2] 1802 	addb	#-8	; ,
   4BA7 E7 66         [ 5] 1803 	stb	6,s	; , ivtmp.356
   4BA9 32 64         [ 5] 1804 	leas	4,s	; ,,
   4BAB C1 08         [ 2] 1805 	cmpb	#8	;cmpqi:	; ,
   4BAD 2F 06         [ 3] 1806 	ble	L93	; 
   4BAF E6 63         [ 5] 1807 	ldb	3,s	; , x0.357
   4BB1 E7 E4         [ 4] 1808 	stb	,s	; , x0
   4BB3 20 D3         [ 3] 1809 	bra	L94	; 
   4BB5                    1810 L93:
   4BB5 E6 63         [ 5] 1811 	ldb	3,s	; , x0.357
   4BB7 E7 E4         [ 4] 1812 	stb	,s	; , x0
   4BB9                    1813 L92:
                           1814 ;----- asm -----
                           1815 ;  488 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1816 	; #ENR#[368]    while (y1 - y0 > test) {
                           1817 ;  0 "" 2
                           1818 ;--- end asm ---
   4BB9 E6 69         [ 5] 1819 	ldb	9,s	;  D.1570, y1
   4BBB E0 67         [ 5] 1820 	subb	7,s	;  D.1570, y0
   4BBD C1 08         [ 2] 1821 	cmpb	#8	;cmpqi:	;  D.1570,
   4BBF 2F 33         [ 3] 1822 	ble	L95	; 
   4BC1 E7 61         [ 5] 1823 	stb	1,s	;  D.1570, ivtmp.348
   4BC3                    1824 L97:
                           1825 ;----- asm -----
                           1826 ;  490 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1827 	; #ENR#[369]        addLineImpl(x0, y0, x1, y0 + test, half);
                           1828 ;  0 "" 2
                           1829 ;--- end asm ---
   4BC3 E6 67         [ 5] 1830 	ldb	7,s	; , y0
   4BC5 CB 08         [ 2] 1831 	addb	#8	; ,
   4BC7 E7 64         [ 5] 1832 	stb	4,s	; , y0.358
   4BC9 E6 6A         [ 5] 1833 	ldb	10,s	; , half
   4BCB 34 04         [ 6] 1834 	pshs	b	; 
   4BCD E6 65         [ 5] 1835 	ldb	5,s	; , y0.358
   4BCF 34 04         [ 6] 1836 	pshs	b	; 
   4BD1 E6 6A         [ 5] 1837 	ldb	10,s	; , x1
   4BD3 34 04         [ 6] 1838 	pshs	b	; 
   4BD5 E6 6A         [ 5] 1839 	ldb	10,s	; , y0
   4BD7 34 04         [ 6] 1840 	pshs	b	; 
   4BD9 E6 64         [ 5] 1841 	ldb	4,s	; , x0
   4BDB BD 4A 1D      [ 8] 1842 	jsr	_addLineImpl	; 
                           1843 ;----- asm -----
                           1844 ;  492 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1845 	; #ENR#[370]        y0 += test;
                           1846 ;  0 "" 2
                           1847 ;--- end asm ---
   4BDE E6 65         [ 5] 1848 	ldb	5,s	; , ivtmp.348
   4BE0 CB F8         [ 2] 1849 	addb	#-8	; ,
   4BE2 E7 65         [ 5] 1850 	stb	5,s	; , ivtmp.348
   4BE4 32 64         [ 5] 1851 	leas	4,s	; ,,
   4BE6 C1 08         [ 2] 1852 	cmpb	#8	;cmpqi:	; ,
   4BE8 2F 06         [ 3] 1853 	ble	L96	; 
   4BEA E6 64         [ 5] 1854 	ldb	4,s	; , y0.358
   4BEC E7 67         [ 5] 1855 	stb	7,s	; , y0
   4BEE 20 D3         [ 3] 1856 	bra	L97	; 
   4BF0                    1857 L96:
   4BF0 E6 64         [ 5] 1858 	ldb	4,s	; , y0.358
   4BF2 E7 67         [ 5] 1859 	stb	7,s	; , y0
   4BF4                    1860 L95:
                           1861 ;----- asm -----
                           1862 ;  495 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1863 	; #ENR#[372]    addLineImpl(x0, y0, x1, y1, half);
                           1864 ;  0 "" 2
                           1865 ;--- end asm ---
   4BF4 E6 6A         [ 5] 1866 	ldb	10,s	; , half
   4BF6 34 04         [ 6] 1867 	pshs	b	; 
   4BF8 E6 6A         [ 5] 1868 	ldb	10,s	; , y1
   4BFA 34 04         [ 6] 1869 	pshs	b	; 
   4BFC E6 6A         [ 5] 1870 	ldb	10,s	; , x1
   4BFE 34 04         [ 6] 1871 	pshs	b	; 
   4C00 E6 6A         [ 5] 1872 	ldb	10,s	; , y0
   4C02 34 04         [ 6] 1873 	pshs	b	; 
   4C04 E6 64         [ 5] 1874 	ldb	4,s	; , x0
   4C06 BD 4A 1D      [ 8] 1875 	jsr	_addLineImpl	; 
   4C09 32 69         [ 5] 1876 	leas	9,s	; ,,
   4C0B 39            [ 5] 1877 	rts
                           1878 	.globl _setupY
   4C0C                    1879 _setupY:
   4C0C 32 7B         [ 5] 1880 	leas	-5,s	; ,,
                           1881 ;----- asm -----
                           1882 ;  608 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1883 	; #ENR#[446]    int8_t x = 0;
                           1884 ;  0 "" 2
                           1885 ;  610 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1886 	; #ENR#[447]    int8_t y = 0;
                           1887 ;  0 "" 2
                           1888 ;  612 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1889 	; #ENR#[448]    for (x = -1; x < LEVEL_WIDTH; x++) {
                           1890 ;  0 "" 2
                           1891 ;--- end asm ---
   4C0E C6 FF         [ 2] 1892 	ldb	#-1	; ,
   4C10 E7 61         [ 5] 1893 	stb	1,s	; , x
   4C12                    1894 L105:
                           1895 ;----- asm -----
                           1896 ;  614 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1897 	; #ENR#[449]        int8_t y0 = -1;
                           1898 ;  0 "" 2
                           1899 ;  616 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1900 	; #ENR#[450]        int8_t y1 = -1;
                           1901 ;  0 "" 2
                           1902 ;  618 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1903 	; #ENR#[451]        for (y = 0; y <= LEVEL_HEIGHT; y++) {
                           1904 ;  0 "" 2
                           1905 ;--- end asm ---
   4C12 6F 62         [ 7] 1906 	clr	2,s	;  y
   4C14 C6 FF         [ 2] 1907 	ldb	#-1	; ,
   4C16 E7 63         [ 5] 1908 	stb	3,s	; , y0
   4C18 E7 64         [ 5] 1909 	stb	4,s	; , y1
   4C1A                    1910 L104:
                           1911 ;----- asm -----
                           1912 ;  620 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1913 	; #ENR#[452]            if (isField(x, y) || isField(x + 1, y)) {
                           1914 ;  0 "" 2
                           1915 ;--- end asm ---
   4C1A E6 62         [ 5] 1916 	ldb	2,s	; , y
   4C1C 34 04         [ 6] 1917 	pshs	b	; 
   4C1E E6 62         [ 5] 1918 	ldb	2,s	; , x
   4C20 BD 43 00      [ 8] 1919 	jsr	_isField	; 
   4C23 32 61         [ 5] 1920 	leas	1,s	; ,,
   4C25 5D            [ 2] 1921 	tstb	;  D.1644
   4C26 26 13         [ 3] 1922 	bne	L100	; 
   4C28 E6 61         [ 5] 1923 	ldb	1,s	; , x
   4C2A 5C            [ 2] 1924 	incb	; 
   4C2B E7 E4         [ 4] 1925 	stb	,s	; , D.1645
   4C2D E6 62         [ 5] 1926 	ldb	2,s	; , y
   4C2F 34 04         [ 6] 1927 	pshs	b	; 
   4C31 E6 61         [ 5] 1928 	ldb	1,s	; , D.1645
   4C33 BD 43 00      [ 8] 1929 	jsr	_isField	; 
   4C36 32 61         [ 5] 1930 	leas	1,s	; ,,
   4C38 5D            [ 2] 1931 	tstb	;  D.1646
   4C39 27 0E         [ 3] 1932 	beq	L101	; 
   4C3B                    1933 L100:
                           1934 ;----- asm -----
                           1935 ;  622 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1936 	; #ENR#[453]                if (y0 < 0) y0 = y;
                           1937 ;  0 "" 2
                           1938 ;--- end asm ---
   4C3B 6D 63         [ 7] 1939 	tst	3,s	;  y0
   4C3D 2C 04         [ 3] 1940 	bge	L102	; 
   4C3F E6 62         [ 5] 1941 	ldb	2,s	; , y
   4C41 E7 63         [ 5] 1942 	stb	3,s	; , y0
   4C43                    1943 L102:
                           1944 ;----- asm -----
                           1945 ;  624 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1946 	; #ENR#[454]                y1 = y;
                           1947 ;  0 "" 2
                           1948 ;--- end asm ---
   4C43 E6 62         [ 5] 1949 	ldb	2,s	; , y
   4C45 E7 64         [ 5] 1950 	stb	4,s	; , y1
   4C47 20 1E         [ 3] 1951 	bra	L103	; 
   4C49                    1952 L101:
                           1953 ;----- asm -----
                           1954 ;  627 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1955 	; #ENR#[456]                if (y0 >= 0) {
                           1956 ;  0 "" 2
                           1957 ;--- end asm ---
   4C49 6D 63         [ 7] 1958 	tst	3,s	;  y0
   4C4B 2D 1A         [ 3] 1959 	blt	L103	; 
                           1960 ;----- asm -----
                           1961 ;  629 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1962 	; #ENR#[457]                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
                           1963 ;  0 "" 2
                           1964 ;--- end asm ---
   4C4D 6F E2         [ 8] 1965 	clr	,-s	; 
   4C4F E6 65         [ 5] 1966 	ldb	5,s	; , y1
   4C51 5C            [ 2] 1967 	incb	; 
   4C52 34 04         [ 6] 1968 	pshs	b	; 
   4C54 E6 62         [ 5] 1969 	ldb	2,s	; , D.1645
   4C56 34 04         [ 6] 1970 	pshs	b	; 
   4C58 E6 66         [ 5] 1971 	ldb	6,s	; , y0
   4C5A 34 04         [ 6] 1972 	pshs	b	; 
   4C5C E6 64         [ 5] 1973 	ldb	4,s	; , D.1645
   4C5E BD 4B 7A      [ 8] 1974 	jsr	_addLine	; 
                           1975 ;----- asm -----
                           1976 ;  631 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           1977 	; #ENR#[458]                    y0 = -1;
                           1978 ;  0 "" 2
                           1979 ;--- end asm ---
   4C61 C6 FF         [ 2] 1980 	ldb	#-1	; ,
   4C63 E7 67         [ 5] 1981 	stb	7,s	; , y0
   4C65 32 64         [ 5] 1982 	leas	4,s	; ,,
   4C67                    1983 L103:
   4C67 6C 62         [ 7] 1984 	inc	2,s	;  y
   4C69 E6 62         [ 5] 1985 	ldb	2,s	; , y
   4C6B C1 10         [ 2] 1986 	cmpb	#16	;cmpqi:	; ,
   4C6D 10 26 FF A9   [ 6] 1987 	lbne	L104	; 
   4C71 6C 61         [ 7] 1988 	inc	1,s	;  x
   4C73 E6 61         [ 5] 1989 	ldb	1,s	; , x
   4C75 C1 0A         [ 2] 1990 	cmpb	#10	;cmpqi:	; ,
   4C77 10 26 FF 97   [ 6] 1991 	lbne	L105	; 
   4C7B 32 65         [ 5] 1992 	leas	5,s	; ,,
   4C7D 39            [ 5] 1993 	rts
                           1994 	.globl _setupX
   4C7E                    1995 _setupX:
   4C7E 34 60         [ 7] 1996 	pshs	y,u	; 
   4C80 32 79         [ 5] 1997 	leas	-7,s	; ,,
                           1998 ;----- asm -----
                           1999 ;  541 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2000 	; #ENR#[405]    long int index;
                           2001 ;  0 "" 2
                           2002 ;  543 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2003 	; #ENR#[406]    int8_t x = 0;
                           2004 ;  0 "" 2
                           2005 ;  545 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2006 	; #ENR#[407]    int8_t y = 0;
                           2007 ;  0 "" 2
                           2008 ;  547 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2009 	; #ENR#[408]    const char* geometry = level->geometry;
                           2010 ;  0 "" 2
                           2011 ;  549 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2012 	; #ENR#[409]    for (y = -1; y < LEVEL_HEIGHT; y++) {
                           2013 ;  0 "" 2
                           2014 ;--- end asm ---
   4C82 AE 9F C9 12   [10] 2015 	ldx	[_level]	; , <variable>.geometry
   4C86 31 16         [ 5] 2016 	leay	-10,x	;  ivtmp.403,,
   4C88 6F 66         [ 7] 2017 	clr	6,s	;  ivtmp.397
   4C8A                    2018 L122:
   4C8A E6 66         [ 5] 2019 	ldb	6,s	; , ivtmp.397
   4C8C 5A            [ 2] 2020 	decb	; 
   4C8D E7 62         [ 5] 2021 	stb	2,s	; , y
                           2022 ;----- asm -----
                           2023 ;  551 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2024 	; #ENR#[410]        int8_t x0 = -1;
                           2025 ;  0 "" 2
                           2026 ;  553 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2027 	; #ENR#[411]        int8_t x1 = -1;
                           2028 ;  0 "" 2
                           2029 ;  555 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2030 	; #ENR#[412]        for (x = 0; x <= LEVEL_WIDTH; x++) {
                           2031 ;  0 "" 2
                           2032 ;--- end asm ---
   4C8F 33 A4         [ 4] 2033 	leau	,y	;  ivtmp.406, ivtmp.403
   4C91 C6 FF         [ 2] 2034 	ldb	#-1	; ,
   4C93 E7 63         [ 5] 2035 	stb	3,s	; , x0
   4C95 E7 64         [ 5] 2036 	stb	4,s	; , x1
   4C97 C6 01         [ 2] 2037 	ldb	#1	; ,
   4C99 E7 65         [ 5] 2038 	stb	5,s	; , ivtmp.395
   4C9B                    2039 L121:
   4C9B E6 65         [ 5] 2040 	ldb	5,s	; , ivtmp.395
   4C9D 5A            [ 2] 2041 	decb	; 
   4C9E E7 61         [ 5] 2042 	stb	1,s	; , x
                           2043 ;----- asm -----
                           2044 ;  557 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2045 	; #ENR#[413]            char c0 = 0;
                           2046 ;  0 "" 2
                           2047 ;  559 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2048 	; #ENR#[414]            index = (long int) y*LEVEL_WIDTH + (long int)x;
                           2049 ;  0 "" 2
                           2050 ;  561 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2051 	; #ENR#[415]            if (y >= 0 && x < LEVEL_WIDTH) {
                           2052 ;  0 "" 2
                           2053 ;--- end asm ---
   4CA0 6D 62         [ 7] 2054 	tst	2,s	;  y
   4CA2 2D 08         [ 3] 2055 	blt	L110	; 
   4CA4 C1 09         [ 2] 2056 	cmpb	#9	;cmpqi:	; ,
   4CA6 2E 04         [ 3] 2057 	bgt	L110	; 
                           2058 ;----- asm -----
                           2059 ;  563 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2060 	; #ENR#[416]                c0 = geometry[index];
                           2061 ;  0 "" 2
                           2062 ;--- end asm ---
   4CA8 E6 C4         [ 4] 2063 	ldb	,u	;  c0,* ivtmp.406
   4CAA 20 01         [ 3] 2064 	bra	L111	; 
   4CAC                    2065 L110:
   4CAC 5F            [ 2] 2066 	clrb	;  c0
   4CAD                    2067 L111:
                           2068 ;----- asm -----
                           2069 ;  566 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2070 	; #ENR#[418]            if (c0 == 'e') {
                           2071 ;  0 "" 2
                           2072 ;--- end asm ---
   4CAD C1 65         [ 2] 2073 	cmpb	#101	;cmpqi:	;  c0,
   4CAF 26 18         [ 3] 2074 	bne	L112	; 
                           2075 ;----- asm -----
                           2076 ;  568 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2077 	; #ENR#[419]                addTarget(x, y);
                           2078 ;  0 "" 2
                           2079 ;--- end asm ---
   4CB1 E6 62         [ 5] 2080 	ldb	2,s	; , y
   4CB3 34 04         [ 6] 2081 	pshs	b	; 
   4CB5 E6 62         [ 5] 2082 	ldb	2,s	; , x
   4CB7 BD 47 A6      [ 8] 2083 	jsr	_addTarget	; 
                           2084 ;----- asm -----
                           2085 ;  570 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2086 	; #ENR#[420]                endX = x;
                           2087 ;  0 "" 2
                           2088 ;--- end asm ---
   4CBA E6 62         [ 5] 2089 	ldb	2,s	; , x
   4CBC F7 C8 85      [ 5] 2090 	stb	_endX	; , endX
                           2091 ;----- asm -----
                           2092 ;  572 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2093 	; #ENR#[421]                endY = y;
                           2094 ;  0 "" 2
                           2095 ;--- end asm ---
   4CBF E6 63         [ 5] 2096 	ldb	3,s	; , y
   4CC1 F7 C8 86      [ 5] 2097 	stb	_endY	; , endY
   4CC4 32 61         [ 5] 2098 	leas	1,s	; ,,
   4CC6 7E 4D 2C      [ 4] 2099 	jmp	L113	; 
   4CC9                    2100 L112:
   4CC9 C1 76         [ 2] 2101 	cmpb	#118	;cmpqi:	;  c0,
   4CCB 26 0E         [ 3] 2102 	bne	L114	; 
                           2103 ;----- asm -----
                           2104 ;  575 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2105 	; #ENR#[423]                addSplit(x, y);
                           2106 ;  0 "" 2
                           2107 ;--- end asm ---
   4CCD E6 62         [ 5] 2108 	ldb	2,s	; , y
   4CCF 34 04         [ 6] 2109 	pshs	b	; 
   4CD1 E6 62         [ 5] 2110 	ldb	2,s	; , x
   4CD3 BD 49 60      [ 8] 2111 	jsr	_addSplit	; 
   4CD6 32 61         [ 5] 2112 	leas	1,s	; ,,
   4CD8 7E 4D 2C      [ 4] 2113 	jmp	L113	; 
   4CDB                    2114 L114:
   4CDB C1 73         [ 2] 2115 	cmpb	#115	;cmpqi:	;  c0,
   4CDD 26 17         [ 3] 2116 	bne	L115	; 
                           2117 ;----- asm -----
                           2118 ;  578 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2119 	; #ENR#[425]                addLine(x, y, x + 1, y + 1, 0);
                           2120 ;  0 "" 2
                           2121 ;--- end asm ---
   4CDF 6F E2         [ 8] 2122 	clr	,-s	; 
   4CE1 E6 67         [ 5] 2123 	ldb	7,s	; , ivtmp.397
   4CE3 34 04         [ 6] 2124 	pshs	b	; 
   4CE5 E6 67         [ 5] 2125 	ldb	7,s	; , ivtmp.395
   4CE7 34 04         [ 6] 2126 	pshs	b	; 
   4CE9 E6 65         [ 5] 2127 	ldb	5,s	; , y
   4CEB 34 04         [ 6] 2128 	pshs	b	; 
   4CED E6 65         [ 5] 2129 	ldb	5,s	; , x
   4CEF BD 4B 7A      [ 8] 2130 	jsr	_addLine	; 
   4CF2 32 64         [ 5] 2131 	leas	4,s	; ,,
   4CF4 20 36         [ 3] 2132 	bra	L113	; 
   4CF6                    2133 L115:
   4CF6 C1 68         [ 2] 2134 	cmpb	#104	;cmpqi:	;  c0,
   4CF8 26 17         [ 3] 2135 	bne	L116	; 
                           2136 ;----- asm -----
                           2137 ;  581 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2138 	; #ENR#[427]                addLine(x + 1, y, x, y + 1, 0);
                           2139 ;  0 "" 2
                           2140 ;--- end asm ---
   4CFA 6F E2         [ 8] 2141 	clr	,-s	; 
   4CFC E6 67         [ 5] 2142 	ldb	7,s	; , ivtmp.397
   4CFE 34 04         [ 6] 2143 	pshs	b	; 
   4D00 E6 63         [ 5] 2144 	ldb	3,s	; , x
   4D02 34 04         [ 6] 2145 	pshs	b	; 
   4D04 E6 65         [ 5] 2146 	ldb	5,s	; , y
   4D06 34 04         [ 6] 2147 	pshs	b	; 
   4D08 E6 69         [ 5] 2148 	ldb	9,s	; , ivtmp.395
   4D0A BD 4B 7A      [ 8] 2149 	jsr	_addLine	; 
   4D0D 32 64         [ 5] 2150 	leas	4,s	; ,,
   4D0F 20 1B         [ 3] 2151 	bra	L113	; 
   4D11                    2152 L116:
   4D11 C1 66         [ 2] 2153 	cmpb	#102	;cmpqi:	;  c0,
   4D13 26 17         [ 3] 2154 	bne	L113	; 
                           2155 ;----- asm -----
                           2156 ;  584 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2157 	; #ENR#[429]                addLine(x, y, x + 1, y, 1);
                           2158 ;  0 "" 2
                           2159 ;--- end asm ---
   4D15 C6 01         [ 2] 2160 	ldb	#1	; ,
   4D17 E7 E2         [ 6] 2161 	stb	,-s	; ,
   4D19 E6 63         [ 5] 2162 	ldb	3,s	; , y
   4D1B 34 04         [ 6] 2163 	pshs	b	; 
   4D1D E6 67         [ 5] 2164 	ldb	7,s	; , ivtmp.395
   4D1F 34 04         [ 6] 2165 	pshs	b	; 
   4D21 E6 65         [ 5] 2166 	ldb	5,s	; , y
   4D23 34 04         [ 6] 2167 	pshs	b	; 
   4D25 E6 65         [ 5] 2168 	ldb	5,s	; , x
   4D27 BD 4B 7A      [ 8] 2169 	jsr	_addLine	; 
   4D2A 32 64         [ 5] 2170 	leas	4,s	; ,,
   4D2C                    2171 L113:
                           2172 ;----- asm -----
                           2173 ;  587 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2174 	; #ENR#[431]            if (isField(x, y) || isField(x, y + 1)) {
                           2175 ;  0 "" 2
                           2176 ;--- end asm ---
   4D2C E6 62         [ 5] 2177 	ldb	2,s	; , y
   4D2E 34 04         [ 6] 2178 	pshs	b	; 
   4D30 E6 62         [ 5] 2179 	ldb	2,s	; , x
   4D32 BD 43 00      [ 8] 2180 	jsr	_isField	; 
   4D35 32 61         [ 5] 2181 	leas	1,s	; ,,
   4D37 5D            [ 2] 2182 	tstb	;  D.1626
   4D38 26 10         [ 3] 2183 	bne	L117	; 
   4D3A E6 66         [ 5] 2184 	ldb	6,s	; , ivtmp.397
   4D3C E7 E4         [ 4] 2185 	stb	,s	; , D.1621
   4D3E 34 04         [ 6] 2186 	pshs	b	; 
   4D40 E6 62         [ 5] 2187 	ldb	2,s	; , x
   4D42 BD 43 00      [ 8] 2188 	jsr	_isField	; 
   4D45 32 61         [ 5] 2189 	leas	1,s	; ,,
   4D47 5D            [ 2] 2190 	tstb	;  D.1627
   4D48 27 0E         [ 3] 2191 	beq	L118	; 
   4D4A                    2192 L117:
                           2193 ;----- asm -----
                           2194 ;  589 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2195 	; #ENR#[432]                if (x0 < 0) x0 = x;
                           2196 ;  0 "" 2
                           2197 ;--- end asm ---
   4D4A 6D 63         [ 7] 2198 	tst	3,s	;  x0
   4D4C 2C 04         [ 3] 2199 	bge	L119	; 
   4D4E E6 61         [ 5] 2200 	ldb	1,s	; , x
   4D50 E7 63         [ 5] 2201 	stb	3,s	; , x0
   4D52                    2202 L119:
                           2203 ;----- asm -----
                           2204 ;  591 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2205 	; #ENR#[433]                x1 = x;
                           2206 ;  0 "" 2
                           2207 ;--- end asm ---
   4D52 E6 61         [ 5] 2208 	ldb	1,s	; , x
   4D54 E7 64         [ 5] 2209 	stb	4,s	; , x1
   4D56 20 1E         [ 3] 2210 	bra	L120	; 
   4D58                    2211 L118:
                           2212 ;----- asm -----
                           2213 ;  594 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2214 	; #ENR#[435]                if (x0 >= 0) {
                           2215 ;  0 "" 2
                           2216 ;--- end asm ---
   4D58 6D 63         [ 7] 2217 	tst	3,s	;  x0
   4D5A 2D 1A         [ 3] 2218 	blt	L120	; 
                           2219 ;----- asm -----
                           2220 ;  596 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2221 	; #ENR#[436]                    addLine(x0, y + 1, x1 + 1, y + 1, 0);
                           2222 ;  0 "" 2
                           2223 ;--- end asm ---
   4D5C 6F E2         [ 8] 2224 	clr	,-s	; 
   4D5E E6 61         [ 5] 2225 	ldb	1,s	; , D.1621
   4D60 34 04         [ 6] 2226 	pshs	b	; 
   4D62 E6 66         [ 5] 2227 	ldb	6,s	; , x1
   4D64 5C            [ 2] 2228 	incb	; 
   4D65 34 04         [ 6] 2229 	pshs	b	; 
   4D67 E6 63         [ 5] 2230 	ldb	3,s	; , D.1621
   4D69 34 04         [ 6] 2231 	pshs	b	; 
   4D6B E6 67         [ 5] 2232 	ldb	7,s	; , x0
   4D6D BD 4B 7A      [ 8] 2233 	jsr	_addLine	; 
                           2234 ;----- asm -----
                           2235 ;  598 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2236 	; #ENR#[437]                    x0 = -1;
                           2237 ;  0 "" 2
                           2238 ;--- end asm ---
   4D70 C6 FF         [ 2] 2239 	ldb	#-1	; ,
   4D72 E7 67         [ 5] 2240 	stb	7,s	; , x0
   4D74 32 64         [ 5] 2241 	leas	4,s	; ,,
   4D76                    2242 L120:
   4D76 6C 65         [ 7] 2243 	inc	5,s	;  ivtmp.395
   4D78 33 41         [ 5] 2244 	leau	1,u	;  ivtmp.406,, ivtmp.406
   4D7A E6 65         [ 5] 2245 	ldb	5,s	; , ivtmp.395
   4D7C C1 0C         [ 2] 2246 	cmpb	#12	;cmpqi:	; ,
   4D7E 10 26 FF 19   [ 6] 2247 	lbne	L121	; 
   4D82 6C 66         [ 7] 2248 	inc	6,s	;  ivtmp.397
   4D84 31 2A         [ 5] 2249 	leay	10,y	;  ivtmp.403,, ivtmp.403
   4D86 E6 66         [ 5] 2250 	ldb	6,s	; , ivtmp.397
   4D88 C1 10         [ 2] 2251 	cmpb	#16	;cmpqi:	; ,
   4D8A 10 26 FE FC   [ 6] 2252 	lbne	L122	; 
   4D8E 32 67         [ 5] 2253 	leas	7,s	; ,,
   4D90 35 E0         [ 8] 2254 	puls	y,u,pc	; 
                           2255 	.globl _initLevel
   4D92                    2256 _initLevel:
   4D92 34 40         [ 6] 2257 	pshs	u	; 
                           2258 ;----- asm -----
                           2259 ;  674 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2260 	; #ENR#[488]    last_x=-1;
                           2261 ;  0 "" 2
                           2262 ;--- end asm ---
   4D94 C6 FF         [ 2] 2263 	ldb	#-1	; ,
   4D96 F7 C8 88      [ 5] 2264 	stb	_last_x	; , last_x
                           2265 ;----- asm -----
                           2266 ;  676 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2267 	; #ENR#[489]    last_y=-1;
                           2268 ;  0 "" 2
                           2269 ;--- end asm ---
   4D99 F7 C8 89      [ 5] 2270 	stb	_last_y	; , last_y
                           2271 ;----- asm -----
                           2272 ;  678 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2273 	; #ENR#[490]    last_s=-1;
                           2274 ;  0 "" 2
                           2275 ;--- end asm ---
   4D9C F7 C8 8A      [ 5] 2276 	stb	_last_s	; , last_s
                           2277 ;----- asm -----
                           2278 ;  680 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2279 	; #ENR#[491]    lineCount = 0;
                           2280 ;  0 "" 2
                           2281 ;--- end asm ---
   4D9F 7F C8 84      [ 7] 2282 	clr	_lineCount	;  lineCount
                           2283 ;----- asm -----
                           2284 ;  682 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2285 	; #ENR#[492]    setupX();
                           2286 ;  0 "" 2
                           2287 ;--- end asm ---
   4DA2 BD 4C 7E      [ 8] 2288 	jsr	_setupX	; 
                           2289 ;----- asm -----
                           2290 ;  684 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2291 	; #ENR#[493]    last_x=-1;
                           2292 ;  0 "" 2
                           2293 ;--- end asm ---
   4DA5 C6 FF         [ 2] 2294 	ldb	#-1	; ,
   4DA7 F7 C8 88      [ 5] 2295 	stb	_last_x	; , last_x
                           2296 ;----- asm -----
                           2297 ;  686 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2298 	; #ENR#[494]    last_y=-1;
                           2299 ;  0 "" 2
                           2300 ;--- end asm ---
   4DAA F7 C8 89      [ 5] 2301 	stb	_last_y	; , last_y
                           2302 ;----- asm -----
                           2303 ;  688 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2304 	; #ENR#[495]    last_s=-1;
                           2305 ;  0 "" 2
                           2306 ;--- end asm ---
   4DAD F7 C8 8A      [ 5] 2307 	stb	_last_s	; , last_s
                           2308 ;----- asm -----
                           2309 ;  692 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2310 	; #ENR#[498]    setupY();
                           2311 ;  0 "" 2
                           2312 ;--- end asm ---
   4DB0 BD 4C 0C      [ 8] 2313 	jsr	_setupY	; 
                           2314 ;----- asm -----
                           2315 ;  694 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2316 	; #ENR#[499]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]=0;
                           2317 ;  0 "" 2
                           2318 ;--- end asm ---
   4DB3 F6 C8 84      [ 5] 2319 	ldb	_lineCount	; , lineCount
   4DB6 86 05         [ 2] 2320 	lda	#5	;umulqihi3	; 
   4DB8 3D            [11] 2321 	mul
   4DB9 1F 01         [ 6] 2322 	tfr	d,x	; , D.1678
   4DBB 30 89 C9 27   [ 8] 2323 	leax	_lineYX_yx_s_dy_dx,x	;  tmp29,, D.1678
   4DBF 6F 01         [ 7] 2324 	clr	1,x	;  lineYX_yx_s_dy_dx
                           2325 ;----- asm -----
                           2326 ;  696 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2327 	; #ENR#[500]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]=0;
                           2328 ;  0 "" 2
                           2329 ;--- end asm ---
   4DC1 6F 84         [ 6] 2330 	clr	,x	;  lineYX_yx_s_dy_dx
   4DC3 35 C0         [ 7] 2331 	puls	u,pc	; 
                           2332 	.globl _swatchSwitch
   4DC5                    2333 _swatchSwitch:
   4DC5 34 40         [ 6] 2334 	pshs	u	; 
   4DC7 32 79         [ 5] 2335 	leas	-7,s	; ,,
   4DC9 E7 62         [ 5] 2336 	stb	2,s	;  x, x
                           2337 ;----- asm -----
                           2338 ;  108 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2339 	; #ENR#[91]    for (uint8_t i = 0; i < level->swatches_count; i++) {
                           2340 ;  0 "" 2
                           2341 ;--- end asm ---
   4DCB BE C9 12      [ 6] 2342 	ldx	_level	;  level.6, level
   4DCE 6D 04         [ 7] 2343 	tst	4,x	;  <variable>.swatches_count
   4DD0 10 27 00 CC   [ 6] 2344 	lbeq	L129	; 
   4DD4 6F 63         [ 7] 2345 	clr	3,s	;  i
   4DD6                    2346 L140:
                           2347 ;----- asm -----
                           2348 ;  110 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2349 	; #ENR#[92]        const struct Swatch* swatch = level->swatches[i];
                           2350 ;  0 "" 2
                           2351 ;--- end asm ---
   4DD6 E6 63         [ 5] 2352 	ldb	3,s	; , i
   4DD8 4F            [ 2] 2353 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4DD9 ED E4         [ 5] 2354 	std	,s	; ,
   4DDB 58            [ 2] 2355 	aslb	; 
   4DDC 49            [ 2] 2356 	rola	; 
   4DDD 30 8B         [ 8] 2357 	leax	d,x	;  tmp43, tmp42, level.6
   4DDF EE 05         [ 6] 2358 	ldu	5,x	;  swatch, <variable>.swatches
                           2359 ;----- asm -----
                           2360 ;  112 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2361 	; #ENR#[93]        if (swatch->position.x == x && swatch->position.y == y) {
                           2362 ;  0 "" 2
                           2363 ;--- end asm ---
   4DE1 E6 62         [ 5] 2364 	ldb	2,s	; , x
   4DE3 E1 41         [ 5] 2365 	cmpb	1,u	;cmpqi:(R)	; , <variable>.position.x
   4DE5 10 26 00 AA   [ 6] 2366 	lbne	L130	; 
   4DE9 E6 6B         [ 5] 2367 	ldb	11,s	; , y
   4DEB E1 42         [ 5] 2368 	cmpb	2,u	;cmpqi:(R)	; , <variable>.position.y
   4DED 10 26 00 A2   [ 6] 2369 	lbne	L130	; 
                           2370 ;----- asm -----
                           2371 ;  114 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2372 	; #ENR#[94]            for (uint8_t j = 0; j < swatch->fields_count; j++) {
                           2373 ;  0 "" 2
                           2374 ;--- end asm ---
   4DF1 6D 43         [ 7] 2375 	tst	3,u	;  <variable>.fields_count
   4DF3 10 27 00 9C   [ 6] 2376 	lbeq	L130	; 
   4DF7 6F 64         [ 7] 2377 	clr	4,s	;  j
   4DF9                    2378 L139:
                           2379 ;----- asm -----
                           2380 ;  116 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2381 	; #ENR#[95]                const struct SwatchField* field = swatch->fields[j];
                           2382 ;  0 "" 2
                           2383 ;--- end asm ---
   4DF9 E6 64         [ 5] 2384 	ldb	4,s	; , j
   4DFB 4F            [ 2] 2385 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4DFC C3 00 02      [ 4] 2386 	addd	#2	;  tmp46,
   4DFF 58            [ 2] 2387 	aslb	; 
   4E00 49            [ 2] 2388 	rola	; 
   4E01 30 CB         [ 8] 2389 	leax	d,u	;  tmp48, tmp47, swatch
   4E03 AE 84         [ 5] 2390 	ldx	,x	;  field, <variable>.fields
                           2391 ;----- asm -----
                           2392 ;  118 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2393 	; #ENR#[96]                int8_t xf = field->position.x;
                           2394 ;  0 "" 2
                           2395 ;--- end asm ---
   4E05 E6 01         [ 5] 2396 	ldb	1,x	; , <variable>.position.x
   4E07 E7 65         [ 5] 2397 	stb	5,s	; , xf
                           2398 ;----- asm -----
                           2399 ;  120 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2400 	; #ENR#[97]                int8_t yf = field->position.y;
                           2401 ;  0 "" 2
                           2402 ;--- end asm ---
   4E09 E6 02         [ 5] 2403 	ldb	2,x	; , <variable>.position.y
   4E0B E7 66         [ 5] 2404 	stb	6,s	; , yf
                           2405 ;----- asm -----
                           2406 ;  122 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2407 	; #ENR#[98]                switch (field->action) {
                           2408 ;  0 "" 2
                           2409 ;--- end asm ---
   4E0D E6 84         [ 4] 2410 	ldb	,x	; , <variable>.action
   4E0F C1 04         [ 2] 2411 	cmpb	#4	;cmpqi:	; ,
   4E11 10 22 00 74   [ 6] 2412 	lbhi	L131	; 
   4E15 4F            [ 2] 2413 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4E16 ED E4         [ 5] 2414 	std	,s	; ,
   4E18 58            [ 2] 2415 	aslb	; 
   4E19 49            [ 2] 2416 	rola	; 
   4E1A 1F 01         [ 6] 2417 	tfr	d,x	; , tmp51
   4E1C 6E 99 4E 20   [10] 2418 	jmp	[L137,x]	; , tmp51
   4E20                    2419 L137:
   4E20 4E 2A              2420 	.word L132
   4E22 4E 4F              2421 	.word L133
   4E24 4E 61              2422 	.word L134
   4E26 4E 70              2423 	.word L135
   4E28 4E 7F              2424 	.word L136
   4E2A                    2425 L132:
                           2426 ;----- asm -----
                           2427 ;  126 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2428 	; #ENR#[100]                    setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
                           2429 ;  0 "" 2
                           2430 ;--- end asm ---
   4E2A E6 66         [ 5] 2431 	ldb	6,s	; , yf
   4E2C 34 04         [ 6] 2432 	pshs	b	; 
   4E2E E6 66         [ 5] 2433 	ldb	6,s	; , xf
   4E30 BD 42 78      [ 8] 2434 	jsr	_isSwatchFieldOn	; 
   4E33 5D            [ 2] 2435 	tstb	;  D.1371
   4E34 4F            [ 2] 2436 	clra		;zero_extendqihi: R:b -> R:d	;  D.1371, tmp55
   4E35 C3 FF FF      [ 4] 2437 	addd	#-1	;  tmp56,
   4E38 1F 89         [ 6] 2438 	tfr	a,b	; ,
   4E3A 4F            [ 2] 2439 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4E3B 59            [ 2] 2440 	rolb	; 
   4E3C 59            [ 2] 2441 	rolb	; 
   4E3D C4 01         [ 2] 2442 	andb	#1	; ,
   4E3F 34 04         [ 6] 2443 	pshs	b	;  tmp54
   4E41 E6 68         [ 5] 2444 	ldb	8,s	; , yf
   4E43 34 04         [ 6] 2445 	pshs	b	; 
   4E45 E6 68         [ 5] 2446 	ldb	8,s	; , xf
   4E47 BD 42 AF      [ 8] 2447 	jsr	_setSwatchField	; 
                           2448 ;----- asm -----
                           2449 ;  128 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2450 	; #ENR#[101]                    break;
                           2451 ;  0 "" 2
                           2452 ;--- end asm ---
   4E4A 32 63         [ 5] 2453 	leas	3,s	; ,,
   4E4C 7E 4E 89      [ 4] 2454 	jmp	L131	; 
   4E4F                    2455 L133:
                           2456 ;----- asm -----
                           2457 ;  132 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2458 	; #ENR#[103]                    setSwatchField(xf, yf, 1);
                           2459 ;  0 "" 2
                           2460 ;--- end asm ---
   4E4F C6 01         [ 2] 2461 	ldb	#1	; ,
   4E51 E7 E2         [ 6] 2462 	stb	,-s	; ,
   4E53 E6 67         [ 5] 2463 	ldb	7,s	; , yf
   4E55 34 04         [ 6] 2464 	pshs	b	; 
   4E57 E6 67         [ 5] 2465 	ldb	7,s	; , xf
   4E59 BD 42 AF      [ 8] 2466 	jsr	_setSwatchField	; 
                           2467 ;----- asm -----
                           2468 ;  134 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2469 	; #ENR#[104]                    break;
                           2470 ;  0 "" 2
                           2471 ;--- end asm ---
   4E5C 32 62         [ 5] 2472 	leas	2,s	; ,,
   4E5E 7E 4E 89      [ 4] 2473 	jmp	L131	; 
   4E61                    2474 L134:
                           2475 ;----- asm -----
                           2476 ;  138 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2477 	; #ENR#[106]                    setSwatchField(xf, yf, 0);
                           2478 ;  0 "" 2
                           2479 ;--- end asm ---
   4E61 6F E2         [ 8] 2480 	clr	,-s	; 
   4E63 E6 67         [ 5] 2481 	ldb	7,s	; , yf
   4E65 34 04         [ 6] 2482 	pshs	b	; 
   4E67 E6 67         [ 5] 2483 	ldb	7,s	; , xf
   4E69 BD 42 AF      [ 8] 2484 	jsr	_setSwatchField	; 
                           2485 ;----- asm -----
                           2486 ;  140 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2487 	; #ENR#[107]                    break;
                           2488 ;  0 "" 2
                           2489 ;--- end asm ---
   4E6C 32 62         [ 5] 2490 	leas	2,s	; ,,
   4E6E 20 19         [ 3] 2491 	bra	L131	; 
   4E70                    2492 L135:
                           2493 ;----- asm -----
                           2494 ;  144 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2495 	; #ENR#[109]                    blockX = xf;
                           2496 ;  0 "" 2
                           2497 ;--- end asm ---
   4E70 E6 65         [ 5] 2498 	ldb	5,s	; , xf
   4E72 F7 C8 E7      [ 5] 2499 	stb	_blockX	; , blockX
                           2500 ;----- asm -----
                           2501 ;  146 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2502 	; #ENR#[110]                    blockY = yf;
                           2503 ;  0 "" 2
                           2504 ;--- end asm ---
   4E75 E6 66         [ 5] 2505 	ldb	6,s	; , yf
   4E77 F7 C8 E8      [ 5] 2506 	stb	_blockY	; , blockY
                           2507 ;----- asm -----
                           2508 ;  148 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2509 	; #ENR#[111]                    setSplitMode();
                           2510 ;  0 "" 2
                           2511 ;--- end asm ---
   4E7A BD 09 16      [ 8] 2512 	jsr	_setSplitMode	; 
                           2513 ;----- asm -----
                           2514 ;  150 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2515 	; #ENR#[112]                    break;
                           2516 ;  0 "" 2
                           2517 ;--- end asm ---
   4E7D 20 0A         [ 3] 2518 	bra	L131	; 
   4E7F                    2519 L136:
                           2520 ;----- asm -----
                           2521 ;  154 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2522 	; #ENR#[114]                    blockX2 = xf;
                           2523 ;  0 "" 2
                           2524 ;--- end asm ---
   4E7F E6 65         [ 5] 2525 	ldb	5,s	; , xf
   4E81 F7 C8 E9      [ 5] 2526 	stb	_blockX2	; , blockX2
                           2527 ;----- asm -----
                           2528 ;  156 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2529 	; #ENR#[115]                    blockY2 = yf;
                           2530 ;  0 "" 2
                           2531 ;--- end asm ---
   4E84 E6 66         [ 5] 2532 	ldb	6,s	; , yf
   4E86 F7 C8 EA      [ 5] 2533 	stb	_blockY2	; , blockY2
                           2534 ;----- asm -----
                           2535 ;  158 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2536 	; #ENR#[116]                    break;
                           2537 ;  0 "" 2
                           2538 ;--- end asm ---
   4E89                    2539 L131:
   4E89 6C 64         [ 7] 2540 	inc	4,s	;  j
   4E8B E6 64         [ 5] 2541 	ldb	4,s	; , j
   4E8D E1 43         [ 5] 2542 	cmpb	3,u	;cmpqi:(R)	; , <variable>.fields_count
   4E8F 10 25 FF 66   [ 6] 2543 	lblo	L139	; 
   4E93                    2544 L130:
   4E93 6C 63         [ 7] 2545 	inc	3,s	;  i
   4E95 BE C9 12      [ 6] 2546 	ldx	_level	;  level.6, level
   4E98 E6 63         [ 5] 2547 	ldb	3,s	; , i
   4E9A E1 04         [ 5] 2548 	cmpb	4,x	;cmpqi:(R)	; , <variable>.swatches_count
   4E9C 10 25 FF 36   [ 6] 2549 	lblo	L140	; 
   4EA0                    2550 L129:
                           2551 ;----- asm -----
                           2552 ;  164 "C:\data\vide\..\bloxorz\Vide\source\level.enr.c" 1
                           2553 	; #ENR#[121]    initLevel();
                           2554 ;  0 "" 2
                           2555 ;--- end asm ---
   4EA0 BD 4D 92      [ 8] 2556 	jsr	_initLevel	; 
   4EA3 32 67         [ 5] 2557 	leas	7,s	; ,,
   4EA5 35 C0         [ 7] 2558 	puls	u,pc	; 
                           2559 	.globl _lineCount
                           2560 	.area .data
   C884                    2561 _lineCount:
   C884 00                 2562 	.byte	0	;skip space
                           2563 	.globl _endX
   C885                    2564 _endX:
   C885 00                 2565 	.byte	0	;skip space
                           2566 	.globl _endY
   C886                    2567 _endY:
   C886 00                 2568 	.byte	0	;skip space
                           2569 	.globl _levelNumber
   C887                    2570 _levelNumber:
   C887 00                 2571 	.byte	0	;skip space
                           2572 	.globl _shifts
                           2573 	.area .text
   4EA7                    2574 _shifts:
   4EA7 01                 2575 	.byte	1
   4EA8 02                 2576 	.byte	2
   4EA9 04                 2577 	.byte	4
   4EAA 08                 2578 	.byte	8
   4EAB 10                 2579 	.byte	16
   4EAC 20                 2580 	.byte	32
   4EAD 40                 2581 	.byte	64
   4EAE 80                 2582 	.byte	-128
                           2583 	.globl _last_x
                           2584 	.area .data
   C888                    2585 _last_x:
   C888 FF                 2586 	.byte	-1
                           2587 	.globl _last_y
   C889                    2588 _last_y:
   C889 FF                 2589 	.byte	-1
                           2590 	.globl _last_s
   C88A                    2591 _last_s:
   C88A FF                 2592 	.byte	-1
                           2593 	.globl _useHalfling
                           2594 	.area .text
   4EAF                    2595 _useHalfling:
   4EAF 00                 2596 	.byte	0
   4EB0 00                 2597 	.byte	0
   4EB1 00                 2598 	.byte	0
   4EB2 00                 2599 	.byte	0
   4EB3 03                 2600 	.byte	3
   4EB4 01                 2601 	.byte	1
   4EB5 00                 2602 	.byte	0
   4EB6 00                 2603 	.byte	0
   4EB7 00                 2604 	.byte	0
   4EB8 00                 2605 	.byte	0
   4EB9 00                 2606 	.byte	0
   4EBA 00                 2607 	.byte	0
   4EBB 00                 2608 	.byte	0
   4EBC 02                 2609 	.byte	2
   4EBD 00                 2610 	.byte	0
   4EBE 01                 2611 	.byte	1
   4EBF 00                 2612 	.byte	0
   4EC0 01                 2613 	.byte	1
   4EC1 01                 2614 	.byte	1
   4EC2 01                 2615 	.byte	1
   4EC3 01                 2616 	.byte	1
   4EC4 01                 2617 	.byte	1
   4EC5 01                 2618 	.byte	1
   4EC6 03                 2619 	.byte	3
   4EC7 00                 2620 	.byte	0
   4EC8 00                 2621 	.byte	0
   4EC9 00                 2622 	.byte	0
   4ECA 03                 2623 	.byte	3
   4ECB 00                 2624 	.byte	0
   4ECC 01                 2625 	.byte	1
   4ECD 03                 2626 	.byte	3
   4ECE 01                 2627 	.byte	1
   4ECF 00                 2628 	.byte	0
   4ED0 01                 2629 	.byte	1
   4ED1 00                 2630 	.byte	0
   4ED2 00 00              2631 	.word	0	;skip space 5
   4ED4 00 00              2632 	.word	0	;skip space 3
   4ED6 00                 2633 	.byte	0	;skip space
                           2634 	.area .bss
                           2635 	.globl	_level
   C912                    2636 _level:	.blkb	2
                           2637 	.globl	_swatchesOn
   C914                    2638 _swatchesOn:	.blkb	19
                           2639 	.globl	_lineYX_yx_s_dy_dx
   C927                    2640 _lineYX_yx_s_dy_dx:	.blkb	550
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$level$100        005C GR  |   2 A$level$1000       052E GR
  2 A$level$1001       0531 GR  |   2 A$level$1007       0535 GR
  2 A$level$1008       0538 GR  |   2 A$level$1009       0539 GR
  2 A$level$101        005E GR  |   2 A$level$1010       053B GR
  2 A$level$1011       053C GR  |   2 A$level$1012       053D GR
  2 A$level$1013       053E GR  |   2 A$level$1014       053F GR
  2 A$level$1015       0541 GR  |   2 A$level$1016       0544 GR
  2 A$level$1017       0546 GR  |   2 A$level$1018       0548 GR
  2 A$level$1019       054A GR  |   2 A$level$1025       054C GR
  2 A$level$1026       054E GR  |   2 A$level$1033       0550 GR
  2 A$level$1034       0552 GR  |   2 A$level$1035       0554 GR
  2 A$level$1041       0557 GR  |   2 A$level$1042       0559 GR
  2 A$level$1043       055B GR  |   2 A$level$1049       055E GR
  2 A$level$1050       0561 GR  |   2 A$level$1051       0562 GR
  2 A$level$1052       0564 GR  |   2 A$level$1053       0565 GR
  2 A$level$1054       0566 GR  |   2 A$level$1055       0567 GR
  2 A$level$1057       0568 GR  |   2 A$level$1058       056A GR
  2 A$level$1063       056C GR  |   2 A$level$1064       0570 GR
  2 A$level$1066       0573 GR  |   2 A$level$1067       0576 GR
  2 A$level$1070       0578 GR  |   2 A$level$1071       057A GR
  2 A$level$1072       057C GR  |   2 A$level$1078       057E GR
  2 A$level$1079       0581 GR  |   2 A$level$1080       0583 GR
  2 A$level$1081       0584 GR  |   2 A$level$1082       0586 GR
  2 A$level$1083       0589 GR  |   2 A$level$1084       058B GR
  2 A$level$1085       058D GR  |   2 A$level$1086       058F GR
  2 A$level$1087       0592 GR  |   2 A$level$1088       0595 GR
  2 A$level$1094       0599 GR  |   2 A$level$1095       059C GR
  2 A$level$1096       059E GR  |   2 A$level$1097       059F GR
  2 A$level$1098       05A1 GR  |   2 A$level$1099       05A3 GR
  2 A$level$1100       05A6 GR  |   2 A$level$1101       05A8 GR
  2 A$level$1102       05AA GR  |   2 A$level$1103       05AD GR
  2 A$level$1104       05AF GR  |   2 A$level$1105       05B1 GR
  2 A$level$1106       05B3 GR  |   2 A$level$1107       05B5 GR
  2 A$level$1113       05B7 GR  |   2 A$level$1114       05BA GR
  2 A$level$1115       05BC GR  |   2 A$level$1116       05BD GR
  2 A$level$1117       05BF GR  |   2 A$level$1118       05C1 GR
  2 A$level$1119       05C4 GR  |   2 A$level$1120       05C5 GR
  2 A$level$1121       05C7 GR  |   2 A$level$1122       05C9 GR
  2 A$level$1123       05CA GR  |   2 A$level$1124       05CC GR
  2 A$level$1125       05CE GR  |   2 A$level$1126       05D0 GR
  2 A$level$1127       05D2 GR  |   2 A$level$1128       05D4 GR
  2 A$level$1129       05D7 GR  |   2 A$level$113        0060 GR
  2 A$level$1130       05D9 GR  |   2 A$level$1131       05DC GR
  2 A$level$1132       05DE GR  |   2 A$level$1133       05E0 GR
  2 A$level$1134       05E2 GR  |   2 A$level$1135       05E5 GR
  2 A$level$1136       05E7 GR  |   2 A$level$1137       05E9 GR
  2 A$level$1138       05EB GR  |   2 A$level$1139       05ED GR
  2 A$level$114        0062 GR  |   2 A$level$1140       05EF GR
  2 A$level$1146       05F1 GR  |   2 A$level$1147       05F4 GR
  2 A$level$1148       05F6 GR  |   2 A$level$1149       05F7 GR
  2 A$level$115        0063 GR  |   2 A$level$1150       05F9 GR
  2 A$level$1151       05FB GR  |   2 A$level$1152       05FD GR
  2 A$level$1153       05FF GR  |   2 A$level$1154       0601 GR
  2 A$level$1155       0604 GR  |   2 A$level$1156       0606 GR
  2 A$level$1157       0608 GR  |   2 A$level$1158       060B GR
  2 A$level$1159       060D GR  |   2 A$level$116        0064 GR
  2 A$level$1160       060F GR  |   2 A$level$1161       0612 GR
  2 A$level$1162       0614 GR  |   2 A$level$1163       0616 GR
  2 A$level$1164       0618 GR  |   2 A$level$1165       061A GR
  2 A$level$1166       061C GR  |   2 A$level$117        0065 GR
  2 A$level$1172       061E GR  |   2 A$level$1178       0621 GR
  2 A$level$1179       0624 GR  |   2 A$level$118        0066 GR
  2 A$level$1180       0625 GR  |   2 A$level$1181       0627 GR
  2 A$level$1187       062A GR  |   2 A$level$1188       062D GR
  2 A$level$1189       062F GR  |   2 A$level$119        0067 GR
  2 A$level$1190       0631 GR  |   2 A$level$1191       0633 GR
  2 A$level$1192       0636 GR  |   2 A$level$1193       0638 GR
  2 A$level$1194       063A GR  |   2 A$level$1195       063B GR
  2 A$level$1196       063D GR  |   2 A$level$1197       063E GR
  2 A$level$1198       063F GR  |   2 A$level$1199       0640 GR
  2 A$level$120        0068 GR  |   2 A$level$1200       0641 GR
  2 A$level$1201       0644 GR  |   2 A$level$1202       0646 GR
  2 A$level$1203       0648 GR  |   2 A$level$1204       064A GR
  2 A$level$1205       064C GR  |   2 A$level$1206       064E GR
  2 A$level$121        006A GR  |   2 A$level$1212       0650 GR
  2 A$level$1213       0653 GR  |   2 A$level$1214       0655 GR
  2 A$level$1215       0656 GR  |   2 A$level$1216       0658 GR
  2 A$level$1217       065A GR  |   2 A$level$1218       065D GR
  2 A$level$1219       065F GR  |   2 A$level$122        006E GR
  2 A$level$1220       0661 GR  |   2 A$level$1221       0664 GR
  2 A$level$1222       0666 GR  |   2 A$level$1223       0668 GR
  2 A$level$1224       066A GR  |   2 A$level$1225       066C GR
  2 A$level$123        0070 GR  |   2 A$level$1231       066E GR
  2 A$level$1232       0671 GR  |   2 A$level$1233       0673 GR
  2 A$level$1234       0674 GR  |   2 A$level$1235       0676 GR
  2 A$level$1236       0678 GR  |   2 A$level$1237       067A GR
  2 A$level$1238       067C GR  |   2 A$level$1239       067E GR
  2 A$level$124        0072 GR  |   2 A$level$1240       0680 GR
  2 A$level$1241       0683 GR  |   2 A$level$1242       0686 GR
  2 A$level$1243       0689 GR  |   2 A$level$1244       068B GR
  2 A$level$1245       068D GR  |   2 A$level$1246       068F GR
  2 A$level$1247       0692 GR  |   2 A$level$1248       0694 GR
  2 A$level$1249       0696 GR  |   2 A$level$125        0074 GR
  2 A$level$1250       0698 GR  |   2 A$level$1251       069B GR
  2 A$level$1252       069D GR  |   2 A$level$1258       069F GR
  2 A$level$1259       06A2 GR  |   2 A$level$126        0077 GR
  2 A$level$1260       06A4 GR  |   2 A$level$1261       06A5 GR
  2 A$level$1262       06A7 GR  |   2 A$level$1263       06A9 GR
  2 A$level$1264       06AB GR  |   2 A$level$1265       06AD GR
  2 A$level$1266       06AF GR  |   2 A$level$1267       06B1 GR
  2 A$level$1268       06B4 GR  |   2 A$level$1269       06B6 GR
  2 A$level$127        0079 GR  |   2 A$level$1270       06B9 GR
  2 A$level$1271       06BB GR  |   2 A$level$1272       06BD GR
  2 A$level$1273       06C0 GR  |   2 A$level$1274       06C2 GR
  2 A$level$1275       06C4 GR  |   2 A$level$1276       06C6 GR
  2 A$level$1277       06C8 GR  |   2 A$level$1278       06CA GR
  2 A$level$128        007B GR  |   2 A$level$1284       06CC GR
  2 A$level$1290       06CF GR  |   2 A$level$1291       06D2 GR
  2 A$level$1292       06D4 GR  |   2 A$level$1295       06D6 GR
  2 A$level$1296       06D8 GR  |   2 A$level$130        007D GR
  2 A$level$1302       06DA GR  |   2 A$level$1309       06DD GR
  2 A$level$131        007F GR  |   2 A$level$1310       06DF GR
  2 A$level$1311       06E2 GR  |   2 A$level$1329       06E4 GR
  2 A$level$1330       06E9 GR  |   2 A$level$1337       06EB GR
  2 A$level$1338       06ED GR  |   2 A$level$134        0081 GR
  2 A$level$1348       06EF GR  |   2 A$level$135        0083 GR
  2 A$level$1354       06F1 GR  |   2 A$level$1355       06F3 GR
  2 A$level$1356       06F5 GR  |   2 A$level$1357       06F7 GR
  2 A$level$136        0085 GR  |   2 A$level$1364       06F9 GR
  2 A$level$1365       06FB GR  |   2 A$level$1366       06FD GR
  2 A$level$1367       06FF GR  |   2 A$level$1368       0701 GR
  2 A$level$1369       0703 GR  |   2 A$level$1370       0706 GR
  2 A$level$1372       0708 GR  |   2 A$level$1373       070A GR
  2 A$level$1374       070C GR  |   2 A$level$1375       070E GR
  2 A$level$1376       0710 GR  |   2 A$level$1377       0712 GR
  2 A$level$1378       0714 GR  |   2 A$level$1379       0716 GR
  2 A$level$1380       0718 GR  |   2 A$level$1381       071A GR
  2 A$level$1382       071E GR  |   2 A$level$1383       0720 GR
  2 A$level$1403       0732 GR  |   2 A$level$1404       0734 GR
  2 A$level$1405       0736 GR  |   2 A$level$1411       0738 GR
  2 A$level$1412       073B GR  |   2 A$level$1413       073D GR
  2 A$level$1414       073E GR  |   2 A$level$1415       0740 GR
  2 A$level$1416       0742 GR  |   2 A$level$1417       0744 GR
  2 A$level$1418       0746 GR  |   2 A$level$1419       0748 GR
  2 A$level$142        0087 GR  |   2 A$level$1420       074B GR
  2 A$level$1421       074E GR  |   2 A$level$1422       0750 GR
  2 A$level$1428       0754 GR  |   2 A$level$1429       0757 GR
  2 A$level$143        0089 GR  |   2 A$level$1430       0759 GR
  2 A$level$1431       075A GR  |   2 A$level$1432       075C GR
  2 A$level$1433       075E GR  |   2 A$level$1434       0760 GR
  2 A$level$1435       0762 GR  |   2 A$level$1436       0764 GR
  2 A$level$1437       0767 GR  |   2 A$level$1438       0769 GR
  2 A$level$1439       076B GR  |   2 A$level$144        008B GR
  2 A$level$1440       076D GR  |   2 A$level$1441       076F GR
  2 A$level$1442       0771 GR  |   2 A$level$1448       0773 GR
  2 A$level$1449       0776 GR  |   2 A$level$145        008C GR
  2 A$level$1450       0778 GR  |   2 A$level$1451       0779 GR
  2 A$level$1452       077B GR  |   2 A$level$1453       077D GR
  2 A$level$1454       077F GR  |   2 A$level$1455       0780 GR
  2 A$level$1456       0782 GR  |   2 A$level$1457       0784 GR
  2 A$level$1458       0786 GR  |   2 A$level$1459       0788 GR
  2 A$level$146        008E GR  |   2 A$level$1460       078B GR
  2 A$level$1461       078D GR  |   2 A$level$1462       0790 GR
  2 A$level$1463       0792 GR  |   2 A$level$1464       0794 GR
  2 A$level$1465       0796 GR  |   2 A$level$1466       0799 GR
  2 A$level$1467       079B GR  |   2 A$level$1468       079D GR
  2 A$level$1469       079F GR  |   2 A$level$147        0090 GR
  2 A$level$1470       07A1 GR  |   2 A$level$1471       07A3 GR
  2 A$level$1472       07A5 GR  |   2 A$level$1478       07A7 GR
  2 A$level$1479       07AA GR  |   2 A$level$1480       07AC GR
  2 A$level$1481       07AD GR  |   2 A$level$1482       07AF GR
  2 A$level$1483       07B1 GR  |   2 A$level$1484       07B3 GR
  2 A$level$1485       07B5 GR  |   2 A$level$1486       07B7 GR
  2 A$level$1487       07BA GR  |   2 A$level$1488       07BC GR
  2 A$level$1489       07BE GR  |   2 A$level$149        0091 GR
  2 A$level$1490       07C0 GR  |   2 A$level$1491       07C2 GR
  2 A$level$1492       07C4 GR  |   2 A$level$1493       07C7 GR
  2 A$level$1494       07C9 GR  |   2 A$level$1495       07CB GR
  2 A$level$1496       07CD GR  |   2 A$level$1497       07CF GR
  2 A$level$1498       07D1 GR  |   2 A$level$1499       07D3 GR
  2 A$level$1505       07D5 GR  |   2 A$level$1511       07D8 GR
  2 A$level$1512       07DB GR  |   2 A$level$1513       07DC GR
  2 A$level$1519       07DF GR  |   2 A$level$152        0093 GR
  2 A$level$1520       07E1 GR  |   2 A$level$1521       07E3 GR
  2 A$level$1527       07E5 GR  |   2 A$level$1528       07E8 GR
  2 A$level$1530       07EB GR  |   2 A$level$1531       07ED GR
  2 A$level$1534       07EF GR  |   2 A$level$1535       07F1 GR
  2 A$level$1536       07F3 GR  |   2 A$level$1542       07F5 GR
  2 A$level$1543       07F7 GR  |   2 A$level$1549       07FB GR
  2 A$level$1550       07FE GR  |   2 A$level$1551       0800 GR
  2 A$level$1552       0801 GR  |   2 A$level$1553       0803 GR
  2 A$level$1554       0805 GR  |   2 A$level$1555       0807 GR
  2 A$level$1556       0809 GR  |   2 A$level$1557       080B GR
  2 A$level$1558       080E GR  |   2 A$level$1559       0811 GR
  2 A$level$1560       0813 GR  |   2 A$level$1566       0817 GR
  2 A$level$1567       081A GR  |   2 A$level$1568       081C GR
  2 A$level$1569       081D GR  |   2 A$level$1570       081F GR
  2 A$level$1571       0821 GR  |   2 A$level$1572       0823 GR
  2 A$level$1573       0825 GR  |   2 A$level$1574       0827 GR
  2 A$level$1575       082A GR  |   2 A$level$1576       082C GR
  2 A$level$1577       082E GR  |   2 A$level$1578       0830 GR
  2 A$level$1579       0832 GR  |   2 A$level$158        0095 GR
  2 A$level$1580       0833 GR  |   2 A$level$1586       0835 GR
  2 A$level$1587       0838 GR  |   2 A$level$1588       083A GR
  2 A$level$1589       083B GR  |   2 A$level$159        0097 GR
  2 A$level$1590       083D GR  |   2 A$level$1591       083F GR
  2 A$level$1592       0842 GR  |   2 A$level$1593       0844 GR
  2 A$level$1594       0846 GR  |   2 A$level$1595       0849 GR
  2 A$level$1596       084C GR  |   2 A$level$1597       084E GR
  2 A$level$1598       0851 GR  |   2 A$level$1599       0853 GR
  2 A$level$160        0099 GR  |   2 A$level$1600       0855 GR
  2 A$level$1601       0857 GR  |   2 A$level$1602       085A GR
  2 A$level$1603       085C GR  |   2 A$level$1604       085E GR
  2 A$level$1605       0860 GR  |   2 A$level$1606       0862 GR
  2 A$level$1607       0863 GR  |   2 A$level$1608       0865 GR
  2 A$level$1614       0867 GR  |   2 A$level$1615       086A GR
  2 A$level$1616       086C GR  |   2 A$level$1617       086D GR
  2 A$level$1618       086F GR  |   2 A$level$1619       0871 GR
  2 A$level$1620       0874 GR  |   2 A$level$1621       0876 GR
  2 A$level$1622       0879 GR  |   2 A$level$1623       087C GR
  2 A$level$1624       087E GR  |   2 A$level$1625       0880 GR
  2 A$level$1626       0882 GR  |   2 A$level$1627       0884 GR
  2 A$level$1628       0886 GR  |   2 A$level$1629       0889 GR
  2 A$level$1630       088B GR  |   2 A$level$1631       088D GR
  2 A$level$1632       088F GR  |   2 A$level$1633       0891 GR
  2 A$level$1634       0893 GR  |   2 A$level$1635       0895 GR
  2 A$level$1636       0897 GR  |   2 A$level$1637       0899 GR
  2 A$level$1644       089C GR  |   2 A$level$1645       089F GR
  2 A$level$1646       08A1 GR  |   2 A$level$1647       08A2 GR
  2 A$level$1648       08A4 GR  |   2 A$level$1649       08A6 GR
  2 A$level$1650       08A8 GR  |   2 A$level$1651       08AA GR
  2 A$level$1652       08AC GR  |   2 A$level$1653       08AF GR
  2 A$level$1654       08B2 GR  |   2 A$level$166        009B GR
  2 A$level$1660       08B6 GR  |   2 A$level$1661       08B9 GR
  2 A$level$1662       08BB GR  |   2 A$level$1663       08BC GR
  2 A$level$1664       08BE GR  |   2 A$level$1665       08C0 GR
  2 A$level$1666       08C2 GR  |   2 A$level$1667       08C4 GR
  2 A$level$1668       08C6 GR  |   2 A$level$1669       08C9 GR
  2 A$level$167        009D GR  |   2 A$level$1670       08CB GR
  2 A$level$1671       08CD GR  |   2 A$level$1672       08CF GR
  2 A$level$1673       08D1 GR  |   2 A$level$1679       08D3 GR
  2 A$level$168        009E GR  |   2 A$level$1680       08D6 GR
  2 A$level$1681       08D8 GR  |   2 A$level$1682       08D9 GR
  2 A$level$1683       08DB GR  |   2 A$level$1684       08DD GR
  2 A$level$1685       08E0 GR  |   2 A$level$1686       08E2 GR
  2 A$level$1687       08E4 GR  |   2 A$level$1688       08E7 GR
  2 A$level$1689       08EA GR  |   2 A$level$169        009F GR
  2 A$level$1690       08EC GR  |   2 A$level$1691       08EF GR
  2 A$level$1692       08F1 GR  |   2 A$level$1693       08F3 GR
  2 A$level$1694       08F5 GR  |   2 A$level$1695       08F8 GR
  2 A$level$1696       08FA GR  |   2 A$level$1697       08FC GR
  2 A$level$1698       08FE GR  |   2 A$level$1699       0900 GR
  2 A$level$170        00A0 GR  |   2 A$level$1700       0902 GR
  2 A$level$1706       0904 GR  |   2 A$level$1707       0907 GR
  2 A$level$1708       0909 GR  |   2 A$level$1709       090A GR
  2 A$level$171        00A1 GR  |   2 A$level$1710       090C GR
  2 A$level$1711       090E GR  |   2 A$level$1712       0911 GR
  2 A$level$1713       0913 GR  |   2 A$level$1714       0916 GR
  2 A$level$1715       0919 GR  |   2 A$level$1716       091B GR
  2 A$level$1717       091D GR  |   2 A$level$1718       091F GR
  2 A$level$1719       0921 GR  |   2 A$level$172        00A2 GR
  2 A$level$1720       0923 GR  |   2 A$level$1721       0926 GR
  2 A$level$1722       0928 GR  |   2 A$level$1723       092A GR
  2 A$level$1724       092C GR  |   2 A$level$1725       092E GR
  2 A$level$1726       0930 GR  |   2 A$level$1727       0932 GR
  2 A$level$1734       0934 GR  |   2 A$level$1740       0937 GR
  2 A$level$1741       093A GR  |   2 A$level$1742       093B GR
  2 A$level$1748       093E GR  |   2 A$level$1749       0940 GR
  2 A$level$1755       0942 GR  |   2 A$level$1756       0945 GR
  2 A$level$1758       0948 GR  |   2 A$level$1759       094A GR
  2 A$level$1762       094C GR  |   2 A$level$1763       094E GR
  2 A$level$1772       0950 GR  |   2 A$level$1773       0952 GR
  2 A$level$1774       0954 GR  |   2 A$level$1775       0956 GR
  2 A$level$1776       0958 GR  |   2 A$level$178        00A3 GR
  2 A$level$1783       095A GR  |   2 A$level$1784       095C GR
  2 A$level$1785       095E GR  |   2 A$level$1786       0960 GR
  2 A$level$1787       0962 GR  |   2 A$level$1788       0964 GR
  2 A$level$1789       0966 GR  |   2 A$level$179        00A5 GR
  2 A$level$1790       0968 GR  |   2 A$level$1791       096A GR
  2 A$level$1792       096C GR  |   2 A$level$1793       096E GR
  2 A$level$1794       0970 GR  |   2 A$level$1795       0972 GR
  2 A$level$1801       0975 GR  |   2 A$level$1802       0977 GR
  2 A$level$1803       0979 GR  |   2 A$level$1804       097B GR
  2 A$level$1805       097D GR  |   2 A$level$1806       097F GR
  2 A$level$1807       0981 GR  |   2 A$level$1808       0983 GR
  2 A$level$1809       0985 GR  |   2 A$level$1811       0987 GR
  2 A$level$1812       0989 GR  |   2 A$level$1819       098B GR
  2 A$level$1820       098D GR  |   2 A$level$1821       098F GR
  2 A$level$1822       0991 GR  |   2 A$level$1823       0993 GR
  2 A$level$1830       0995 GR  |   2 A$level$1831       0997 GR
  2 A$level$1832       0999 GR  |   2 A$level$1833       099B GR
  2 A$level$1834       099D GR  |   2 A$level$1835       099F GR
  2 A$level$1836       09A1 GR  |   2 A$level$1837       09A3 GR
  2 A$level$1838       09A5 GR  |   2 A$level$1839       09A7 GR
  2 A$level$1840       09A9 GR  |   2 A$level$1841       09AB GR
  2 A$level$1842       09AD GR  |   2 A$level$1848       09B0 GR
  2 A$level$1849       09B2 GR  |   2 A$level$185        00A7 GR
  2 A$level$1850       09B4 GR  |   2 A$level$1851       09B6 GR
  2 A$level$1852       09B8 GR  |   2 A$level$1853       09BA GR
  2 A$level$1854       09BC GR  |   2 A$level$1855       09BE GR
  2 A$level$1856       09C0 GR  |   2 A$level$1858       09C2 GR
  2 A$level$1859       09C4 GR  |   2 A$level$186        00AA GR
  2 A$level$1866       09C6 GR  |   2 A$level$1867       09C8 GR
  2 A$level$1868       09CA GR  |   2 A$level$1869       09CC GR
  2 A$level$187        00AC GR  |   2 A$level$1870       09CE GR
  2 A$level$1871       09D0 GR  |   2 A$level$1872       09D2 GR
  2 A$level$1873       09D4 GR  |   2 A$level$1874       09D6 GR
  2 A$level$1875       09D8 GR  |   2 A$level$1876       09DB GR
  2 A$level$1877       09DD GR  |   2 A$level$188        00AE GR
  2 A$level$1880       09DE GR  |   2 A$level$189        00B0 GR
  2 A$level$1892       09E0 GR  |   2 A$level$1893       09E2 GR
  2 A$level$190        00B2 GR  |   2 A$level$1906       09E4 GR
  2 A$level$1907       09E6 GR  |   2 A$level$1908       09E8 GR
  2 A$level$1909       09EA GR  |   2 A$level$191        00B5 GR
  2 A$level$1916       09EC GR  |   2 A$level$1917       09EE GR
  2 A$level$1918       09F0 GR  |   2 A$level$1919       09F2 GR
  2 A$level$192        00B7 GR  |   2 A$level$1920       09F5 GR
  2 A$level$1921       09F7 GR  |   2 A$level$1922       09F8 GR
  2 A$level$1923       09FA GR  |   2 A$level$1924       09FC GR
  2 A$level$1925       09FD GR  |   2 A$level$1926       09FF GR
  2 A$level$1927       0A01 GR  |   2 A$level$1928       0A03 GR
  2 A$level$1929       0A05 GR  |   2 A$level$193        00B9 GR
  2 A$level$1930       0A08 GR  |   2 A$level$1931       0A0A GR
  2 A$level$1932       0A0B GR  |   2 A$level$1939       0A0D GR
  2 A$level$1940       0A0F GR  |   2 A$level$1941       0A11 GR
  2 A$level$1942       0A13 GR  |   2 A$level$1949       0A15 GR
  2 A$level$1950       0A17 GR  |   2 A$level$1951       0A19 GR
  2 A$level$1958       0A1B GR  |   2 A$level$1959       0A1D GR
  2 A$level$1965       0A1F GR  |   2 A$level$1966       0A21 GR
  2 A$level$1967       0A23 GR  |   2 A$level$1968       0A24 GR
  2 A$level$1969       0A26 GR  |   2 A$level$1970       0A28 GR
  2 A$level$1971       0A2A GR  |   2 A$level$1972       0A2C GR
  2 A$level$1973       0A2E GR  |   2 A$level$1974       0A30 GR
  2 A$level$1980       0A33 GR  |   2 A$level$1981       0A35 GR
  2 A$level$1982       0A37 GR  |   2 A$level$1984       0A39 GR
  2 A$level$1985       0A3B GR  |   2 A$level$1986       0A3D GR
  2 A$level$1987       0A3F GR  |   2 A$level$1988       0A43 GR
  2 A$level$1989       0A45 GR  |   2 A$level$1990       0A47 GR
  2 A$level$1991       0A49 GR  |   2 A$level$1992       0A4D GR
  2 A$level$1993       0A4F GR  |   2 A$level$1996       0A50 GR
  2 A$level$1997       0A52 GR  |   2 A$level$200        00BB GR
  2 A$level$201        00BE GR  |   2 A$level$2015       0A54 GR
  2 A$level$2016       0A58 GR  |   2 A$level$2017       0A5A GR
  2 A$level$2019       0A5C GR  |   2 A$level$202        00C0 GR
  2 A$level$2020       0A5E GR  |   2 A$level$2021       0A5F GR
  2 A$level$203        00C2 GR  |   2 A$level$2033       0A61 GR
  2 A$level$2034       0A63 GR  |   2 A$level$2035       0A65 GR
  2 A$level$2036       0A67 GR  |   2 A$level$2037       0A69 GR
  2 A$level$2038       0A6B GR  |   2 A$level$204        00C4 GR
  2 A$level$2040       0A6D GR  |   2 A$level$2041       0A6F GR
  2 A$level$2042       0A70 GR  |   2 A$level$205        00C6 GR
  2 A$level$2054       0A72 GR  |   2 A$level$2055       0A74 GR
  2 A$level$2056       0A76 GR  |   2 A$level$2057       0A78 GR
  2 A$level$206        00C9 GR  |   2 A$level$2063       0A7A GR
  2 A$level$2064       0A7C GR  |   2 A$level$2066       0A7E GR
  2 A$level$207        00CA GR  |   2 A$level$2073       0A7F GR
  2 A$level$2074       0A81 GR  |   2 A$level$208        00CC GR
  2 A$level$2080       0A83 GR  |   2 A$level$2081       0A85 GR
  2 A$level$2082       0A87 GR  |   2 A$level$2083       0A89 GR
  2 A$level$2089       0A8C GR  |   2 A$level$2090       0A8E GR
  2 A$level$2096       0A91 GR  |   2 A$level$2097       0A93 GR
  2 A$level$2098       0A96 GR  |   2 A$level$2099       0A98 GR
  2 A$level$210        00CE GR  |   2 A$level$2101       0A9B GR
  2 A$level$2102       0A9D GR  |   2 A$level$2108       0A9F GR
  2 A$level$2109       0AA1 GR  |   2 A$level$211        00D0 GR
  2 A$level$2110       0AA3 GR  |   2 A$level$2111       0AA5 GR
  2 A$level$2112       0AA8 GR  |   2 A$level$2113       0AAA GR
  2 A$level$2115       0AAD GR  |   2 A$level$2116       0AAF GR
  2 A$level$2122       0AB1 GR  |   2 A$level$2123       0AB3 GR
  2 A$level$2124       0AB5 GR  |   2 A$level$2125       0AB7 GR
  2 A$level$2126       0AB9 GR  |   2 A$level$2127       0ABB GR
  2 A$level$2128       0ABD GR  |   2 A$level$2129       0ABF GR
  2 A$level$2130       0AC1 GR  |   2 A$level$2131       0AC4 GR
  2 A$level$2132       0AC6 GR  |   2 A$level$2134       0AC8 GR
  2 A$level$2135       0ACA GR  |   2 A$level$214        00D2 GR
  2 A$level$2141       0ACC GR  |   2 A$level$2142       0ACE GR
  2 A$level$2143       0AD0 GR  |   2 A$level$2144       0AD2 GR
  2 A$level$2145       0AD4 GR  |   2 A$level$2146       0AD6 GR
  2 A$level$2147       0AD8 GR  |   2 A$level$2148       0ADA GR
  2 A$level$2149       0ADC GR  |   2 A$level$215        00D4 GR
  2 A$level$2150       0ADF GR  |   2 A$level$2151       0AE1 GR
  2 A$level$2153       0AE3 GR  |   2 A$level$2154       0AE5 GR
  2 A$level$2160       0AE7 GR  |   2 A$level$2161       0AE9 GR
  2 A$level$2162       0AEB GR  |   2 A$level$2163       0AED GR
  2 A$level$2164       0AEF GR  |   2 A$level$2165       0AF1 GR
  2 A$level$2166       0AF3 GR  |   2 A$level$2167       0AF5 GR
  2 A$level$2168       0AF7 GR  |   2 A$level$2169       0AF9 GR
  2 A$level$2170       0AFC GR  |   2 A$level$2177       0AFE GR
  2 A$level$2178       0B00 GR  |   2 A$level$2179       0B02 GR
  2 A$level$2180       0B04 GR  |   2 A$level$2181       0B07 GR
  2 A$level$2182       0B09 GR  |   2 A$level$2183       0B0A GR
  2 A$level$2184       0B0C GR  |   2 A$level$2185       0B0E GR
  2 A$level$2186       0B10 GR  |   2 A$level$2187       0B12 GR
  2 A$level$2188       0B14 GR  |   2 A$level$2189       0B17 GR
  2 A$level$2190       0B19 GR  |   2 A$level$2191       0B1A GR
  2 A$level$2198       0B1C GR  |   2 A$level$2199       0B1E GR
  2 A$level$2200       0B20 GR  |   2 A$level$2201       0B22 GR
  2 A$level$2208       0B24 GR  |   2 A$level$2209       0B26 GR
  2 A$level$221        00D6 GR  |   2 A$level$2210       0B28 GR
  2 A$level$2217       0B2A GR  |   2 A$level$2218       0B2C GR
  2 A$level$222        00D8 GR  |   2 A$level$2224       0B2E GR
  2 A$level$2225       0B30 GR  |   2 A$level$2226       0B32 GR
  2 A$level$2227       0B34 GR  |   2 A$level$2228       0B36 GR
  2 A$level$2229       0B37 GR  |   2 A$level$223        00DA GR
  2 A$level$2230       0B39 GR  |   2 A$level$2231       0B3B GR
  2 A$level$2232       0B3D GR  |   2 A$level$2233       0B3F GR
  2 A$level$2239       0B42 GR  |   2 A$level$224        00DC GR
  2 A$level$2240       0B44 GR  |   2 A$level$2241       0B46 GR
  2 A$level$2243       0B48 GR  |   2 A$level$2244       0B4A GR
  2 A$level$2245       0B4C GR  |   2 A$level$2246       0B4E GR
  2 A$level$2247       0B50 GR  |   2 A$level$2248       0B54 GR
  2 A$level$2249       0B56 GR  |   2 A$level$225        00DF GR
  2 A$level$2250       0B58 GR  |   2 A$level$2251       0B5A GR
  2 A$level$2252       0B5C GR  |   2 A$level$2253       0B60 GR
  2 A$level$2254       0B62 GR  |   2 A$level$2257       0B64 GR
  2 A$level$226        00E1 GR  |   2 A$level$2263       0B66 GR
  2 A$level$2264       0B68 GR  |   2 A$level$2270       0B6B GR
  2 A$level$2276       0B6E GR  |   2 A$level$2282       0B71 GR
  2 A$level$2288       0B74 GR  |   2 A$level$2294       0B77 GR
  2 A$level$2295       0B79 GR  |   2 A$level$2301       0B7C GR
  2 A$level$2307       0B7F GR  |   2 A$level$2313       0B82 GR
  2 A$level$2319       0B85 GR  |   2 A$level$232        00E3 GR
  2 A$level$2320       0B88 GR  |   2 A$level$2321       0B8A GR
  2 A$level$2322       0B8B GR  |   2 A$level$2323       0B8D GR
  2 A$level$2324       0B91 GR  |   2 A$level$233        00E5 GR
  2 A$level$2330       0B93 GR  |   2 A$level$2331       0B95 GR
  2 A$level$2334       0B97 GR  |   2 A$level$2335       0B99 GR
  2 A$level$2336       0B9B GR  |   2 A$level$234        00E7 GR
  2 A$level$2342       0B9D GR  |   2 A$level$2343       0BA0 GR
  2 A$level$2344       0BA2 GR  |   2 A$level$2345       0BA6 GR
  2 A$level$235        00E9 GR  |   2 A$level$2352       0BA8 GR
  2 A$level$2353       0BAA GR  |   2 A$level$2354       0BAB GR
  2 A$level$2355       0BAD GR  |   2 A$level$2356       0BAE GR
  2 A$level$2357       0BAF GR  |   2 A$level$2358       0BB1 GR
  2 A$level$236        00EB GR  |   2 A$level$2364       0BB3 GR
  2 A$level$2365       0BB5 GR  |   2 A$level$2366       0BB7 GR
  2 A$level$2367       0BBB GR  |   2 A$level$2368       0BBD GR
  2 A$level$2369       0BBF GR  |   2 A$level$237        00ED GR
  2 A$level$2375       0BC3 GR  |   2 A$level$2376       0BC5 GR
  2 A$level$2377       0BC9 GR  |   2 A$level$238        00EF GR
  2 A$level$2384       0BCB GR  |   2 A$level$2385       0BCD GR
  2 A$level$2386       0BCE GR  |   2 A$level$2387       0BD1 GR
  2 A$level$2388       0BD2 GR  |   2 A$level$2389       0BD3 GR
  2 A$level$239        00F1 GR  |   2 A$level$2390       0BD5 GR
  2 A$level$2396       0BD7 GR  |   2 A$level$2397       0BD9 GR
  2 A$level$2403       0BDB GR  |   2 A$level$2404       0BDD GR
  2 A$level$2410       0BDF GR  |   2 A$level$2411       0BE1 GR
  2 A$level$2412       0BE3 GR  |   2 A$level$2413       0BE7 GR
  2 A$level$2414       0BE8 GR  |   2 A$level$2415       0BEA GR
  2 A$level$2416       0BEB GR  |   2 A$level$2417       0BEC GR
  2 A$level$2418       0BEE GR  |   2 A$level$2431       0BFC GR
  2 A$level$2432       0BFE GR  |   2 A$level$2433       0C00 GR
  2 A$level$2434       0C02 GR  |   2 A$level$2435       0C05 GR
  2 A$level$2436       0C06 GR  |   2 A$level$2437       0C07 GR
  2 A$level$2438       0C0A GR  |   2 A$level$2439       0C0C GR
  2 A$level$2440       0C0D GR  |   2 A$level$2441       0C0E GR
  2 A$level$2442       0C0F GR  |   2 A$level$2443       0C11 GR
  2 A$level$2444       0C13 GR  |   2 A$level$2445       0C15 GR
  2 A$level$2446       0C17 GR  |   2 A$level$2447       0C19 GR
  2 A$level$2453       0C1C GR  |   2 A$level$2454       0C1E GR
  2 A$level$246        00F3 GR  |   2 A$level$2461       0C21 GR
  2 A$level$2462       0C23 GR  |   2 A$level$2463       0C25 GR
  2 A$level$2464       0C27 GR  |   2 A$level$2465       0C29 GR
  2 A$level$2466       0C2B GR  |   2 A$level$247        00F5 GR
  2 A$level$2472       0C2E GR  |   2 A$level$2473       0C30 GR
  2 A$level$248        00F7 GR  |   2 A$level$2480       0C33 GR
  2 A$level$2481       0C35 GR  |   2 A$level$2482       0C37 GR
  2 A$level$2483       0C39 GR  |   2 A$level$2484       0C3B GR
  2 A$level$249        00F9 GR  |   2 A$level$2490       0C3E GR
  2 A$level$2491       0C40 GR  |   2 A$level$2498       0C42 GR
  2 A$level$2499       0C44 GR  |   2 A$level$250        00FC GR
  2 A$level$2505       0C47 GR  |   2 A$level$2506       0C49 GR
  2 A$level$251        00FE GR  |   2 A$level$2512       0C4C GR
  2 A$level$2518       0C4F GR  |   2 A$level$252        00FF GR
  2 A$level$2525       0C51 GR  |   2 A$level$2526       0C53 GR
  2 A$level$2532       0C56 GR  |   2 A$level$2533       0C58 GR
  2 A$level$2540       0C5B GR  |   2 A$level$2541       0C5D GR
  2 A$level$2542       0C5F GR  |   2 A$level$2543       0C61 GR
  2 A$level$2545       0C65 GR  |   2 A$level$2546       0C67 GR
  2 A$level$2547       0C6A GR  |   2 A$level$2548       0C6C GR
  2 A$level$2549       0C6E GR  |   2 A$level$2556       0C72 GR
  2 A$level$2557       0C75 GR  |   2 A$level$2558       0C77 GR
  2 A$level$258        0101 GR  |   2 A$level$259        0103 GR
  2 A$level$266        0105 GR  |   2 A$level$267        0107 GR
  2 A$level$268        0109 GR  |   2 A$level$269        010B GR
  2 A$level$270        010D GR  |   2 A$level$271        010F GR
  2 A$level$272        0111 GR  |   2 A$level$273        0113 GR
  2 A$level$274        0115 GR  |   2 A$level$275        0117 GR
  2 A$level$276        0119 GR  |   2 A$level$277        011B GR
  2 A$level$278        011D GR  |   2 A$level$279        011F GR
  2 A$level$280        0120 GR  |   2 A$level$281        0123 GR
  2 A$level$282        0125 GR  |   2 A$level$283        0126 GR
  2 A$level$284        0127 GR  |   2 A$level$285        0128 GR
  2 A$level$286        012A GR  |   2 A$level$288        012C GR
  2 A$level$290        012E GR  |   2 A$level$291        0130 GR
  2 A$level$294        0131 GR  |   2 A$level$295        0133 GR
  2 A$level$296        0135 GR  |   2 A$level$305        0137 GR
  2 A$level$306        0139 GR  |   2 A$level$307        013B GR
  2 A$level$308        013C GR  |   2 A$level$309        013E GR
  2 A$level$310        0140 GR  |   2 A$level$311        0141 GR
  2 A$level$312        0143 GR  |   2 A$level$313        0144 GR
  2 A$level$314        0146 GR  |   2 A$level$315        0148 GR
  2 A$level$316        014A GR  |   2 A$level$317        014C GR
  2 A$level$318        014E GR  |   2 A$level$319        0150 GR
  2 A$level$322        0152 GR  |   2 A$level$323        0154 GR
  2 A$level$33         0000 GR  |   2 A$level$332        0156 GR
  2 A$level$333        0158 GR  |   2 A$level$334        015A GR
  2 A$level$335        015C GR  |   2 A$level$336        015D GR
  2 A$level$337        015F GR  |   2 A$level$338        0161 GR
  2 A$level$339        0162 GR  |   2 A$level$34         0002 GR
  2 A$level$340        0163 GR  |   2 A$level$341        0164 GR
  2 A$level$342        0166 GR  |   2 A$level$343        0168 GR
  2 A$level$344        016A GR  |   2 A$level$345        016C GR
  2 A$level$346        016E GR  |   2 A$level$347        016F GR
  2 A$level$348        0171 GR  |   2 A$level$349        0173 GR
  2 A$level$35         0004 GR  |   2 A$level$350        0175 GR
  2 A$level$353        0176 GR  |   2 A$level$354        0178 GR
  2 A$level$36         0006 GR  |   2 A$level$360        017B GR
  2 A$level$361        017E GR  |   2 A$level$362        017F GR
  2 A$level$363        0181 GR  |   2 A$level$364        0182 GR
  2 A$level$365        0183 GR  |   2 A$level$366        0184 GR
  2 A$level$367        0185 GR  |   2 A$level$368        0187 GR
  2 A$level$369        0189 GR  |   2 A$level$37         0008 GR
  2 A$level$370        018B GR  |   2 A$level$376        018F GR
  2 A$level$377        0192 GR  |   2 A$level$378        0195 GR
  2 A$level$379        0196 GR  |   2 A$level$38         000A GR
  2 A$level$380        0198 GR  |   2 A$level$381        019C GR
  2 A$level$387        019E GR  |   2 A$level$388        01A0 GR
  2 A$level$39         000C GR  |   2 A$level$394        01A3 GR
  2 A$level$40         000E GR  |   2 A$level$400        01A6 GR
  2 A$level$406        01A9 GR  |   2 A$level$41         0010 GR
  2 A$level$413        01AC GR  |   2 A$level$414        01AF GR
  2 A$level$415        01B1 GR  |   2 A$level$416        01B2 GR
  2 A$level$417        01B4 GR  |   2 A$level$418        01B8 GR
  2 A$level$419        01BA GR  |   2 A$level$42         0012 GR
  2 A$level$420        01BC GR  |   2 A$level$421        01BE GR
  2 A$level$422        01C0 GR  |   2 A$level$423        01C2 GR
  2 A$level$429        01C4 GR  |   2 A$level$43         0014 GR
  2 A$level$430        01C6 GR  |   2 A$level$431        01C8 GR
  2 A$level$432        01CA GR  |   2 A$level$433        01CC GR
  2 A$level$434        01CE GR  |   2 A$level$435        01D0 GR
  2 A$level$44         0016 GR  |   2 A$level$441        01D2 GR
  2 A$level$442        01D5 GR  |   2 A$level$443        01D8 GR
  2 A$level$444        01DA GR  |   2 A$level$445        01DC GR
  2 A$level$447        01DF GR  |   2 A$level$448        01E1 GR
  2 A$level$449        01E3 GR  |   2 A$level$45         0017 GR
  2 A$level$451        01E4 GR  |   2 A$level$452        01E5 GR
  2 A$level$453        01E7 GR  |   2 A$level$454        01E9 GR
  2 A$level$455        01EB GR  |   2 A$level$456        01EE GR
  2 A$level$457        01F1 GR  |   2 A$level$458        01F3 GR
  2 A$level$459        01F5 GR  |   2 A$level$46         0019 GR
  2 A$level$461        01F8 GR  |   2 A$level$462        01FA GR
  2 A$level$463        01FC GR  |   2 A$level$465        01FD GR
  2 A$level$466        01FE GR  |   2 A$level$467        0200 GR
  2 A$level$468        0202 GR  |   2 A$level$469        0204 GR
  2 A$level$47         001B GR  |   2 A$level$470        0206 GR
  2 A$level$471        0207 GR  |   2 A$level$472        020B GR
  2 A$level$473        020E GR  |   2 A$level$474        0210 GR
  2 A$level$475        0211 GR  |   2 A$level$476        0213 GR
  2 A$level$477        0217 GR  |   2 A$level$48         001C GR
  2 A$level$484        021B GR  |   2 A$level$485        021E GR
  2 A$level$486        0220 GR  |   2 A$level$487        0221 GR
  2 A$level$488        0223 GR  |   2 A$level$489        0225 GR
  2 A$level$49         001E GR  |   2 A$level$490        0229 GR
  2 A$level$491        022C GR  |   2 A$level$492        022F GR
  2 A$level$493        0232 GR  |   2 A$level$494        0234 GR
  2 A$level$495        0236 GR  |   2 A$level$497        0239 GR
  2 A$level$498        023C GR  |   2 A$level$499        023E GR
  2 A$level$50         0020 GR  |   2 A$level$501        023F GR
  2 A$level$502        0240 GR  |   2 A$level$503        0242 GR
  2 A$level$504        0244 GR  |   2 A$level$505        0246 GR
  2 A$level$506        024A GR  |   2 A$level$507        024D GR
  2 A$level$508        0250 GR  |   2 A$level$509        0253 GR
  2 A$level$51         0021 GR  |   2 A$level$510        0255 GR
  2 A$level$511        0257 GR  |   2 A$level$513        025A GR
  2 A$level$514        025D GR  |   2 A$level$515        025F GR
  2 A$level$517        0260 GR  |   2 A$level$518        0261 GR
  2 A$level$519        0263 GR  |   2 A$level$52         0022 GR
  2 A$level$520        0265 GR  |   2 A$level$521        0267 GR
  2 A$level$522        026A GR  |   2 A$level$523        026B GR
  2 A$level$524        026F GR  |   2 A$level$525        0272 GR
  2 A$level$526        0274 GR  |   2 A$level$527        0275 GR
  2 A$level$528        0277 GR  |   2 A$level$529        027B GR
  2 A$level$53         0024 GR  |   2 A$level$536        027F GR
  2 A$level$537        0282 GR  |   2 A$level$538        0284 GR
  2 A$level$539        0285 GR  |   2 A$level$54         0025 GR
  2 A$level$540        0287 GR  |   2 A$level$541        0289 GR
  2 A$level$542        028D GR  |   2 A$level$543        0290 GR
  2 A$level$544        0293 GR  |   2 A$level$545        0296 GR
  2 A$level$546        0298 GR  |   2 A$level$547        029A GR
  2 A$level$549        029D GR  |   2 A$level$55         0026 GR
  2 A$level$550        02A0 GR  |   2 A$level$551        02A2 GR
  2 A$level$553        02A3 GR  |   2 A$level$554        02A4 GR
  2 A$level$555        02A6 GR  |   2 A$level$556        02A8 GR
  2 A$level$557        02AA GR  |   2 A$level$558        02AE GR
  2 A$level$559        02B1 GR  |   2 A$level$56         0027 GR
  2 A$level$560        02B4 GR  |   2 A$level$561        02B7 GR
  2 A$level$562        02B9 GR  |   2 A$level$563        02BB GR
  2 A$level$565        02BE GR  |   2 A$level$566        02C1 GR
  2 A$level$567        02C3 GR  |   2 A$level$569        02C4 GR
  2 A$level$57         0028 GR  |   2 A$level$570        02C5 GR
  2 A$level$571        02C7 GR  |   2 A$level$572        02C9 GR
  2 A$level$573        02CB GR  |   2 A$level$574        02CE GR
  2 A$level$575        02CF GR  |   2 A$level$576        02D3 GR
  2 A$level$577        02D6 GR  |   2 A$level$578        02D8 GR
  2 A$level$579        02D9 GR  |   2 A$level$58         002A GR
  2 A$level$580        02DB GR  |   2 A$level$581        02DF GR
  2 A$level$588        02E3 GR  |   2 A$level$589        02E6 GR
  2 A$level$59         002C GR  |   2 A$level$590        02E8 GR
  2 A$level$596        02EC GR  |   2 A$level$597        02EF GR
  2 A$level$598        02F2 GR  |   2 A$level$599        02F3 GR
  2 A$level$60         002E GR  |   2 A$level$600        02F5 GR
  2 A$level$601        02F6 GR  |   2 A$level$602        02F9 GR
  2 A$level$603        02FC GR  |   2 A$level$604        02FE GR
  2 A$level$605        0302 GR  |   2 A$level$61         0030 GR
  2 A$level$611        0305 GR  |   2 A$level$612        0307 GR
  2 A$level$613        030B GR  |   2 A$level$614        030E GR
  2 A$level$615        0311 GR  |   2 A$level$616        0312 GR
  2 A$level$617        0314 GR  |   2 A$level$618        0318 GR
  2 A$level$62         0032 GR  |   2 A$level$624        031C GR
  2 A$level$625        031F GR  |   2 A$level$626        0321 GR
  2 A$level$627        0322 GR  |   2 A$level$628        0324 GR
  2 A$level$629        0328 GR  |   2 A$level$63         0034 GR
  2 A$level$630        032A GR  |   2 A$level$631        032D GR
  2 A$level$632        032E GR  |   2 A$level$638        0330 GR
  2 A$level$639        0332 GR  |   2 A$level$64         0038 GR
  2 A$level$640        0335 GR  |   2 A$level$641        0338 GR
  2 A$level$647        033B GR  |   2 A$level$648        033D GR
  2 A$level$649        033E GR  |   2 A$level$65         003A GR
  2 A$level$650        033F GR  |   2 A$level$659        0341 GR
  2 A$level$66         003C GR  |   2 A$level$660        0344 GR
  2 A$level$661        0347 GR  |   2 A$level$662        0349 GR
  2 A$level$663        034B GR  |   2 A$level$665        034E GR
  2 A$level$666        0350 GR  |   2 A$level$667        0354 GR
  2 A$level$668        0356 GR  |   2 A$level$669        0358 GR
  2 A$level$670        0359 GR  |   2 A$level$671        035A GR
  2 A$level$672        035C GR  |   2 A$level$674        035E GR
  2 A$level$675        0360 GR  |   2 A$level$676        0363 GR
  2 A$level$677        0367 GR  |   2 A$level$678        036A GR
  2 A$level$679        036D GR  |   2 A$level$68         003E GR
  2 A$level$680        0370 GR  |   2 A$level$681        0372 GR
  2 A$level$682        0374 GR  |   2 A$level$683        0377 GR
  2 A$level$685        037A GR  |   2 A$level$686        037D GR
  2 A$level$687        0380 GR  |   2 A$level$688        0381 GR
  2 A$level$689        0382 GR  |   2 A$level$690        0383 GR
  2 A$level$691        0385 GR  |   2 A$level$692        0387 GR
  2 A$level$693        038B GR  |   2 A$level$694        038D GR
  2 A$level$695        038F GR  |   2 A$level$696        0390 GR
  2 A$level$697        0391 GR  |   2 A$level$698        0393 GR
  2 A$level$70         003F GR  |   2 A$level$700        0395 GR
  2 A$level$701        0398 GR  |   2 A$level$707        039C GR
  2 A$level$708        039E GR  |   2 A$level$709        03A1 GR
  2 A$level$71         0041 GR  |   2 A$level$715        03A5 GR
  2 A$level$716        03A8 GR  |   2 A$level$717        03A9 GR
  2 A$level$718        03AB GR  |   2 A$level$719        03AC GR
  2 A$level$720        03AD GR  |   2 A$level$721        03AE GR
  2 A$level$722        03AF GR  |   2 A$level$723        03B1 GR
  2 A$level$724        03B4 GR  |   2 A$level$725        03B6 GR
  2 A$level$726        03B8 GR  |   2 A$level$727        03BA GR
  2 A$level$733        03BC GR  |   2 A$level$734        03BE GR
  2 A$level$735        03C0 GR  |   2 A$level$737        03C3 GR
  2 A$level$738        03C6 GR  |   2 A$level$739        03C8 GR
  2 A$level$740        03CC GR  |   2 A$level$741        03CF GR
  2 A$level$742        03D2 GR  |   2 A$level$743        03D3 GR
  2 A$level$744        03D5 GR  |   2 A$level$745        03D9 GR
  2 A$level$746        03DB GR  |   2 A$level$752        03DF GR
  2 A$level$753        03E2 GR  |   2 A$level$754        03E4 GR
  2 A$level$755        03E5 GR  |   2 A$level$756        03E7 GR
  2 A$level$757        03EB GR  |   2 A$level$758        03ED GR
  2 A$level$759        03F0 GR  |   2 A$level$760        03F1 GR
  2 A$level$766        03F3 GR  |   2 A$level$767        03F5 GR
  2 A$level$768        03F8 GR  |   2 A$level$769        03FB GR
  2 A$level$775        03FE GR  |   2 A$level$776        0400 GR
  2 A$level$777        0401 GR  |   2 A$level$786        0402 GR
  2 A$level$787        0403 GR  |   2 A$level$788        0404 GR
  2 A$level$79         0043 GR  |   2 A$level$797        0406 GR
  2 A$level$798        0409 GR  |   2 A$level$799        040C GR
  2 A$level$80         0046 GR  |   2 A$level$800        040E GR
  2 A$level$801        0410 GR  |   2 A$level$803        0413 GR
  2 A$level$804        0415 GR  |   2 A$level$805        0419 GR
  2 A$level$806        041B GR  |   2 A$level$807        041D GR
  2 A$level$808        041E GR  |   2 A$level$809        041F GR
  2 A$level$81         0047 GR  |   2 A$level$810        0421 GR
  2 A$level$812        0423 GR  |   2 A$level$813        0425 GR
  2 A$level$814        0428 GR  |   2 A$level$815        042C GR
  2 A$level$816        042F GR  |   2 A$level$817        0432 GR
  2 A$level$818        0435 GR  |   2 A$level$819        0437 GR
  2 A$level$82         0049 GR  |   2 A$level$820        0439 GR
  2 A$level$821        043C GR  |   2 A$level$823        043F GR
  2 A$level$824        0442 GR  |   2 A$level$825        0445 GR
  2 A$level$826        0446 GR  |   2 A$level$827        0447 GR
  2 A$level$828        0448 GR  |   2 A$level$829        0449 GR
  2 A$level$830        044A GR  |   2 A$level$831        044C GR
  2 A$level$832        044E GR  |   2 A$level$833        0452 GR
  2 A$level$834        0454 GR  |   2 A$level$835        0456 GR
  2 A$level$836        0457 GR  |   2 A$level$837        0458 GR
  2 A$level$838        045A GR  |   2 A$level$840        045C GR
  2 A$level$841        045F GR  |   2 A$level$847        0463 GR
  2 A$level$848        0465 GR  |   2 A$level$849        0468 GR
  2 A$level$85         004A GR  |   2 A$level$855        046C GR
  2 A$level$856        046F GR  |   2 A$level$857        0470 GR
  2 A$level$858        0472 GR  |   2 A$level$859        0473 GR
  2 A$level$86         004C GR  |   2 A$level$860        0474 GR
  2 A$level$861        0475 GR  |   2 A$level$862        0476 GR
  2 A$level$863        0478 GR  |   2 A$level$864        047B GR
  2 A$level$865        047D GR  |   2 A$level$866        047F GR
  2 A$level$867        0481 GR  |   2 A$level$87         004E GR
  2 A$level$873        0483 GR  |   2 A$level$874        0485 GR
  2 A$level$875        0487 GR  |   2 A$level$877        048A GR
  2 A$level$878        048D GR  |   2 A$level$879        048F GR
  2 A$level$880        0493 GR  |   2 A$level$881        0496 GR
  2 A$level$882        0499 GR  |   2 A$level$883        049A GR
  2 A$level$884        049C GR  |   2 A$level$885        04A0 GR
  2 A$level$886        04A2 GR  |   2 A$level$892        04A6 GR
  2 A$level$893        04A9 GR  |   2 A$level$894        04AB GR
  2 A$level$895        04AC GR  |   2 A$level$896        04AE GR
  2 A$level$897        04B2 GR  |   2 A$level$898        04B4 GR
  2 A$level$899        04B7 GR  |   2 A$level$900        04B8 GR
  2 A$level$906        04BA GR  |   2 A$level$907        04BC GR
  2 A$level$908        04BF GR  |   2 A$level$909        04C2 GR
  2 A$level$915        04C5 GR  |   2 A$level$916        04C7 GR
  2 A$level$917        04C8 GR  |   2 A$level$926        04C9 GR
  2 A$level$927        04CA GR  |   2 A$level$93         0050 GR
  2 A$level$936        04CB GR  |   2 A$level$937        04CC GR
  2 A$level$938        04CD GR  |   2 A$level$94         0052 GR
  2 A$level$947        04CF GR  |   2 A$level$948        04D2 GR
  2 A$level$949        04D5 GR  |   2 A$level$95         0054 GR
  2 A$level$950        04D7 GR  |   2 A$level$951        04D9 GR
  2 A$level$953        04DC GR  |   2 A$level$954        04DE GR
  2 A$level$955        04E2 GR  |   2 A$level$956        04E4 GR
  2 A$level$957        04E6 GR  |   2 A$level$958        04E7 GR
  2 A$level$959        04E8 GR  |   2 A$level$96         0055 GR
  2 A$level$960        04EA GR  |   2 A$level$962        04EC GR
  2 A$level$963        04EE GR  |   2 A$level$964        04F1 GR
  2 A$level$965        04F5 GR  |   2 A$level$966        04F8 GR
  2 A$level$967        04FB GR  |   2 A$level$968        04FE GR
  2 A$level$969        0500 GR  |   2 A$level$97         0057 GR
  2 A$level$970        0502 GR  |   2 A$level$971        0505 GR
  2 A$level$973        0508 GR  |   2 A$level$974        050B GR
  2 A$level$975        050E GR  |   2 A$level$976        050F GR
  2 A$level$977        0510 GR  |   2 A$level$978        0511 GR
  2 A$level$979        0512 GR  |   2 A$level$98         0059 GR
  2 A$level$980        0513 GR  |   2 A$level$981        0514 GR
  2 A$level$982        0515 GR  |   2 A$level$983        0517 GR
  2 A$level$984        0519 GR  |   2 A$level$985        051D GR
  2 A$level$986        051F GR  |   2 A$level$987        0521 GR
  2 A$level$988        0522 GR  |   2 A$level$989        0523 GR
  2 A$level$99         005A GR  |   2 A$level$990        0525 GR
  2 A$level$992        0527 GR  |   2 A$level$993        052A GR
  2 A$level$999        052C GR  |   2 L100               0A0D R
  2 L101               0A1B R   |   2 L102               0A15 R
  2 L103               0A39 R   |   2 L104               09EC R
  2 L105               09E4 R   |   2 L11                00BB R
  2 L110               0A7E R   |   2 L111               0A7F R
  2 L112               0A9B R   |   2 L113               0AFE R
  2 L114               0AAD R   |   2 L115               0AC8 R
  2 L116               0AE3 R   |   2 L117               0B1C R
  2 L118               0B2A R   |   2 L119               0B24 R
  2 L120               0B48 R   |   2 L121               0A6D R
  2 L122               0A5C R   |   2 L129               0C72 R
  2 L13                00CE R   |   2 L130               0C65 R
  2 L131               0C5B R   |   2 L132               0BFC R
  2 L133               0C21 R   |   2 L134               0C33 R
  2 L135               0C42 R   |   2 L136               0C51 R
  2 L137               0BF2 R   |   2 L139               0BCB R
  2 L140               0BA8 R   |   2 L15                00F3 R
  2 L16                0105 R   |   2 L17                012C R
  2 L19                012E R   |   2 L2                 003E R
  2 L26                01AC R   |   2 L29                01DF R
  2 L3                 003F R   |   2 L30                021B R
  2 L31                01E4 R   |   2 L33                01F8 R
  2 L34                01FD R   |   2 L36                0239 R
  2 L37                027F R   |   2 L38                023F R
  2 L40                025A R   |   2 L41                0260 R
  2 L43                029D R   |   2 L44                02E3 R
  2 L45                02A3 R   |   2 L47                02BE R
  2 L48                02C4 R   |   2 L49                0550 R
  2 L50                03C3 R   |   2 L52                034E R
  2 L53                035E R   |   2 L55                037A R
  2 L56                0395 R   |   2 L57                048A R
  2 L59                0413 R   |   2 L60                0423 R
  2 L62                043F R   |   2 L63                045C R
  2 L65                04DC R   |   2 L66                04EC R
  2 L68                0508 R   |   2 L69                0527 R
  2 L70                0573 R   |   2 L74                06DD R
  2 L75                06F9 R   |   2 L76                0708 R
  2 L77                06EF R   |   2 L78                06EB R
  2 L8                 007D R   |   2 L85                07EB R
  2 L87                089C R   |   2 L88                0934 R
  2 L90                0948 R   |   2 L92                098B R
  2 L93                0987 R   |   2 L94                095A R
  2 L95                09C6 R   |   2 L96                09C2 R
  2 L97                0995 R   |   2 LC0                0722 R
  2 _addLine           094C GR  |   2 _addLineImpl       07EF GR
  2 _addSplit          0732 GR  |   2 _addTarget         0578 GR
    _blockX            **** GX  |     _blockX2           **** GX
    _blockY            **** GX  |     _blockY2           **** GX
  2 _checkHalfling     0176 GR  |   3 _endX              0001 GR
  3 _endY              0002 GR  |   2 _getField          0000 GR
  2 _getShifts         0043 GR  |   2 _initLevel         0B64 GR
  2 _initSwatches      06D6 GR  |   2 _isField           00D2 GR
  2 _isSwatchField     004A GR  |   3 _last_s            0006 GR
  3 _last_x            0004 GR  |   3 _last_y            0005 GR
  4 _level             0000 GR  |   3 _levelNumber       0003 GR
    _levelOffset       **** GX  |   3 _lineCount         0000 GR
  4 _lineYX_yx_s_d     0015 GR  |     _runtimeError      **** GX
    _setSplitMode      **** GX  |   2 _setSwatchFiel     0081 GR
  2 _setupX            0A50 GR  |   2 _setupY            09DE GR
  2 _shifts            0C79 GR  |   2 _swatchSwitch      0B97 GR
  4 _swatchesOn        0002 GR  |   2 _useHalfling       0C81 GR
  2 _x3d               0131 GR  |   2 _y3d               0152 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  CA9   flags  100
   3 .data            size    7   flags  100
   4 .bss             size  23B   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

