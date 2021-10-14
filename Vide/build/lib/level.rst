                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	level.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
                             12 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             13 ;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c
                             14 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             15 ;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             16 ;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             17 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             18 ;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             19 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             20 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             21 ;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             22 ;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             23 ;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             24 ;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             25 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             26 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             27 ;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             28 ;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             29 ;  -fzero-initialized-in-bss
                             30 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             31 	.area .text
                             32 	.globl _getField
   3624                      33 _getField:
   3624 34 60         [ 7]   34 	pshs	y,u	; 
   3626 32 7B         [ 5]   35 	leas	-5,s	; ,,
   3628 E7 64         [ 5]   36 	stb	4,s	;  x, x
   362A 2D 36         [ 3]   37 	blt	L2	; 
   362C 6D 6B         [ 7]   38 	tst	11,s	;  y
   362E 2D 32         [ 3]   39 	blt	L2	; 
   3630 C1 09         [ 2]   40 	cmpb	#9	;cmpqi:	;  x,
   3632 2E 2E         [ 3]   41 	bgt	L2	; 
   3634 E6 6B         [ 5]   42 	ldb	11,s	; , y
   3636 C1 0E         [ 2]   43 	cmpb	#14	;cmpqi:	; ,
   3638 2E 28         [ 3]   44 	bgt	L2	; 
   363A 1D            [ 2]   45 	sex		;extendqihi2: R:b -> R:d	; ,
   363B ED E4         [ 5]   46 	std	,s	; ,
   363D E6 64         [ 5]   47 	ldb	4,s	; , x
   363F 1D            [ 2]   48 	sex		;extendqihi2: R:b -> R:d	; ,
   3640 1F 02         [ 6]   49 	tfr	d,y	; , x
   3642 EC E4         [ 5]   50 	ldd	,s	; ,
   3644 58            [ 2]   51 	aslb	; 
   3645 49            [ 2]   52 	rola	; 
   3646 ED 62         [ 6]   53 	std	2,s	; ,
   3648 58            [ 2]   54 	aslb	; 
   3649 49            [ 2]   55 	rola	; 
   364A 58            [ 2]   56 	aslb	; 
   364B 49            [ 2]   57 	rola	; 
   364C EE 62         [ 6]   58 	ldu	2,s	; ,
   364E 30 CB         [ 8]   59 	leax	d,u	;  tmp38, tmp37,
   3650 1E 02         [ 8]   60 	exg	d,y	; , x
   3652 30 8B         [ 8]   61 	leax	d,x	;  tmp39,, tmp39
   3654 1E 02         [ 8]   62 	exg	d,y	; , x
   3656 1E 01         [ 8]   63 	exg	d,x	; , tmp40
   3658 E3 9F C8 F4   [11]   64 	addd	[_level]	; , <variable>.geometry
   365C 1E 01         [ 8]   65 	exg	d,x	; , tmp40
   365E E6 84         [ 4]   66 	ldb	,x	;  c,
   3660 20 01         [ 3]   67 	bra	L3	; 
   3662                      68 L2:
   3662 5F            [ 2]   69 	clrb	;  c
   3663                      70 L3:
   3663 32 65         [ 5]   71 	leas	5,s	; ,,
   3665 35 E0         [ 8]   72 	puls	y,u,pc	; 
                             73 	.globl _getShifts
   3667                      74 _getShifts:
                             75 ;----- asm -----
                             76 ;  52 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                             77 	; #ENR#[51]    return shifts[bit];
                             78 ;  0 "" 2
                             79 ;--- end asm ---
   3667 8E 42 AE      [ 3]   80 	ldx	#_shifts	; 
   366A 3A            [ 3]   81 	abx
   366B E6 84         [ 4]   82 	ldb	,x	;  tmp33
   366D 39            [ 5]   83 	rts
                             84 	.globl _isSwatchFieldOn
   366E                      85 _isSwatchFieldOn:
   366E 34 40         [ 6]   86 	pshs	u	; 
   3670 32 7E         [ 5]   87 	leas	-2,s	; ,,
   3672 E7 E4         [ 4]   88 	stb	,s	;  x, x
                             89 ;----- asm -----
                             90 ;  58 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                             91 	; #ENR#[56]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                             92 ;  0 "" 2
                             93 ;--- end asm ---
   3674 E6 66         [ 5]   94 	ldb	6,s	; , y
   3676 86 0A         [ 2]   95 	lda	#10	;mulqihi3	; 
   3678 3D            [11]   96 	mul
   3679 1F 01         [ 6]   97 	tfr	d,x	; , tmp33
   367B E6 E4         [ 4]   98 	ldb	,s	; , x
   367D 1D            [ 2]   99 	sex		;extendqihi2: R:b -> R:d	; ,
   367E 1F 03         [ 6]  100 	tfr	d,u	; , x
   3680 1E 01         [ 8]  101 	exg	d,x	; , tmp33
   3682 33 CB         [ 8]  102 	leau	d,u	;  index,, index
                            103 ;----- asm -----
                            104 ;  60 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            105 	; #ENR#[57]    uint8_t bit = (uint8_t) (index & 7);
                            106 ;  0 "" 2
                            107 ;  62 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            108 	; #ENR#[58]    index >>= 3;
                            109 ;  0 "" 2
                            110 ;  64 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            111 	; #ENR#[59]    return (swatchesOn[index] & getShifts(bit)) > 0;
                            112 ;  0 "" 2
                            113 ;--- end asm ---
   3684 1F 30         [ 6]  114 	tfr	u,d	;  index,
   3686 47            [ 2]  115 	asra	; 
   3687 56            [ 2]  116 	rorb	; 
   3688 47            [ 2]  117 	asra	; 
   3689 56            [ 2]  118 	rorb	; 
   368A 47            [ 2]  119 	asra	; 
   368B 56            [ 2]  120 	rorb	; 
   368C 1F 01         [ 6]  121 	tfr	d,x	; , tmp35
   368E E6 89 C8 F6   [ 8]  122 	ldb	_swatchesOn,x	; , swatchesOn
   3692 E7 61         [ 5]  123 	stb	1,s	; , D.1323
   3694 1F 30         [ 6]  124 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  index, index
   3696 C4 07         [ 2]  125 	andb	#7	;  tmp38,
   3698 BD 36 67      [ 8]  126 	jsr	_getShifts	; 
   369B E4 61         [ 5]  127 	andb	1,s	;  tmp40, D.1323
   369D 27 02         [ 3]  128 	beq	L8	; 
   369F C6 01         [ 2]  129 	ldb	#1	;  tmp40,
   36A1                     130 L8:
   36A1 32 62         [ 5]  131 	leas	2,s	; ,,
   36A3 35 C0         [ 7]  132 	puls	u,pc	; 
                            133 	.globl _setSwatchField
   36A5                     134 _setSwatchField:
   36A5 34 20         [ 6]  135 	pshs	y	; 
   36A7 32 7C         [ 5]  136 	leas	-4,s	; ,,
   36A9 E7 E4         [ 4]  137 	stb	,s	;  x, x
                            138 ;----- asm -----
                            139 ;  70 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            140 	; #ENR#[64]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                            141 ;  0 "" 2
                            142 ;--- end asm ---
   36AB E6 68         [ 5]  143 	ldb	8,s	; , y
   36AD 86 0A         [ 2]  144 	lda	#10	;mulqihi3	; 
   36AF 3D            [11]  145 	mul
   36B0 1F 01         [ 6]  146 	tfr	d,x	; , tmp37
   36B2 E6 E4         [ 4]  147 	ldb	,s	; , x
   36B4 1D            [ 2]  148 	sex		;extendqihi2: R:b -> R:d	; ,
                            149 ; Applied peep: 4-2 (tfr exg 1=1, 2=2)
   36B5 1F 02         [ 6]  150 	tfr	d,y	; , x
                            151 ; ORG>	tfr	d,y	; , x
                            152 ; ORG>	exg	d,y	; , x
   36B7 30 8B         [ 8]  153 	leax	d,x	;  index,, index
                            154 ;----- asm -----
                            155 ;  72 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            156 	; #ENR#[65]    uint8_t bit = (uint8_t) (index & 7);
                            157 ;  0 "" 2
                            158 ;--- end asm ---
   36B9 1F 10         [ 6]  159 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  index, index
   36BB C4 07         [ 2]  160 	andb	#7	;  index,
   36BD E7 62         [ 5]  161 	stb	2,s	;  index, bit
                            162 ;----- asm -----
                            163 ;  74 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            164 	; #ENR#[66]    index >>= 3;
                            165 ;  0 "" 2
                            166 ;--- end asm ---
   36BF 1F 10         [ 6]  167 	tfr	x,d	;  index, index.64
   36C1 47            [ 2]  168 	asra	; 
   36C2 56            [ 2]  169 	rorb	; 
   36C3 47            [ 2]  170 	asra	; 
   36C4 56            [ 2]  171 	rorb	; 
   36C5 47            [ 2]  172 	asra	; 
   36C6 56            [ 2]  173 	rorb	; 
                            174 ;----- asm -----
                            175 ;  76 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            176 	; #ENR#[67]    if (on) {
                            177 ;  0 "" 2
                            178 ;--- end asm ---
   36C7 6D 69         [ 7]  179 	tst	9,s	;  on
   36C9 27 14         [ 3]  180 	beq	L11	; 
                            181 ;----- asm -----
                            182 ;  78 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            183 	; #ENR#[68]        swatchesOn[index] |= getShifts(bit);
                            184 ;  0 "" 2
                            185 ;--- end asm ---
   36CB 8E C8 F6      [ 3]  186 	ldx	#_swatchesOn	; ,
   36CE 31 8B         [ 8]  187 	leay	d,x	;  tmp41, index.64,
   36D0 E6 A4         [ 4]  188 	ldb	,y	; , swatchesOn
   36D2 E7 61         [ 5]  189 	stb	1,s	; , D.1338
   36D4 E6 62         [ 5]  190 	ldb	2,s	; , bit
   36D6 BD 36 67      [ 8]  191 	jsr	_getShifts	; 
   36D9 EA 61         [ 5]  192 	orb	1,s	;  tmp44, D.1338
   36DB E7 A4         [ 4]  193 	stb	,y	;  tmp44, swatchesOn
   36DD 20 13         [ 3]  194 	bra	L13	; 
   36DF                     195 L11:
                            196 ;----- asm -----
                            197 ;  81 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            198 	; #ENR#[70]        swatchesOn[index] &= ~getShifts(bit);
                            199 ;  0 "" 2
                            200 ;--- end asm ---
   36DF 8E C8 F6      [ 3]  201 	ldx	#_swatchesOn	; ,
   36E2 31 8B         [ 8]  202 	leay	d,x	;  tmp46, index.64,
   36E4 E6 A4         [ 4]  203 	ldb	,y	; , swatchesOn
   36E6 E7 63         [ 5]  204 	stb	3,s	; , temp.65
   36E8 E6 62         [ 5]  205 	ldb	2,s	; , bit
   36EA BD 36 67      [ 8]  206 	jsr	_getShifts	; 
   36ED 53            [ 2]  207 	comb	;  tmp49
   36EE E4 63         [ 5]  208 	andb	3,s	;  tmp50, temp.65
   36F0 E7 A4         [ 4]  209 	stb	,y	;  tmp50, swatchesOn
   36F2                     210 L13:
   36F2 32 64         [ 5]  211 	leas	4,s	; ,,
   36F4 35 A0         [ 7]  212 	puls	y,pc	; 
                            213 	.globl _isField
   36F6                     214 _isField:
   36F6 32 7E         [ 5]  215 	leas	-2,s	; ,,
   36F8 E7 E4         [ 4]  216 	stb	,s	;  x, x
                            217 ;----- asm -----
                            218 ;  88 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            219 	; #ENR#[76]    char c = getField(x, y);
                            220 ;  0 "" 2
                            221 ;--- end asm ---
   36FA E6 64         [ 5]  222 	ldb	4,s	; , y
   36FC 34 04         [ 6]  223 	pshs	b	; 
   36FE E6 61         [ 5]  224 	ldb	1,s	; , x
   3700 BD 36 24      [ 8]  225 	jsr	_getField	; 
   3703 32 61         [ 5]  226 	leas	1,s	; ,,
   3705 E7 61         [ 5]  227 	stb	1,s	; , c
                            228 ;----- asm -----
                            229 ;  92 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            230 	; #ENR#[79]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
                            231 ;  0 "" 2
                            232 ;--- end asm ---
   3707 C1 6C         [ 2]  233 	cmpb	#108	;cmpqi:	; ,
   3709 27 0C         [ 3]  234 	beq	L15	; 
   370B C1 72         [ 2]  235 	cmpb	#114	;cmpqi:	; ,
   370D 27 08         [ 3]  236 	beq	L15	; 
   370F C1 6B         [ 2]  237 	cmpb	#107	;cmpqi:	; ,
   3711 27 04         [ 3]  238 	beq	L15	; 
   3713 C1 71         [ 2]  239 	cmpb	#113	;cmpqi:	; ,
   3715 26 12         [ 3]  240 	bne	L16	; 
   3717                     241 L15:
                            242 ;----- asm -----
                            243 ;  94 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            244 	; #ENR#[80]        if (isSwatchFieldOn(x, y)) {
                            245 ;  0 "" 2
                            246 ;--- end asm ---
   3717 E6 64         [ 5]  247 	ldb	4,s	; , y
   3719 34 04         [ 6]  248 	pshs	b	; 
   371B E6 61         [ 5]  249 	ldb	1,s	; , x
   371D BD 36 6E      [ 8]  250 	jsr	_isSwatchFieldOn	; 
   3720 32 61         [ 5]  251 	leas	1,s	; ,,
   3722 5D            [ 2]  252 	tstb	;  D.1352
   3723 27 04         [ 3]  253 	beq	L16	; 
                            254 ;----- asm -----
                            255 ;  96 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            256 	; #ENR#[81]            c = 'b';
                            257 ;  0 "" 2
                            258 ;--- end asm ---
   3725 C6 62         [ 2]  259 	ldb	#98	; ,
   3727 E7 61         [ 5]  260 	stb	1,s	; , c
   3729                     261 L16:
                            262 ;----- asm -----
                            263 ;  102 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            264 	; #ENR#[86]    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
                            265 ;  0 "" 2
                            266 ;--- end asm ---
   3729 E6 61         [ 5]  267 	ldb	1,s	; , c
   372B C1 62         [ 2]  268 	cmpb	#98	;cmpqi:	; ,
   372D 27 21         [ 3]  269 	beq	L17	; 
   372F C1 65         [ 2]  270 	cmpb	#101	;cmpqi:	; ,
   3731 27 1D         [ 3]  271 	beq	L17	; 
   3733 C1 73         [ 2]  272 	cmpb	#115	;cmpqi:	; ,
   3735 27 19         [ 3]  273 	beq	L17	; 
   3737 C1 68         [ 2]  274 	cmpb	#104	;cmpqi:	; ,
   3739 27 15         [ 3]  275 	beq	L17	; 
   373B C1 66         [ 2]  276 	cmpb	#102	;cmpqi:	; ,
   373D 27 11         [ 3]  277 	beq	L17	; 
   373F C1 76         [ 2]  278 	cmpb	#118	;cmpqi:	; ,
   3741 C8 76         [ 2]  279 	eorb	#118	;  tmp34,
   3743 4F            [ 2]  280 	clra		;zero_extendqihi: R:b -> R:d	;  tmp34, tmp35
   3744 C3 FF FF      [ 4]  281 	addd	#-1	;  tmp36,
   3747 1F 89         [ 6]  282 	tfr	a,b	; ,
   3749 4F            [ 2]  283 	clra		;zero_extendqihi: R:b -> R:d	; ,
   374A 59            [ 2]  284 	rolb	; 
   374B 59            [ 2]  285 	rolb	; 
   374C C4 01         [ 2]  286 	andb	#1	; ,
   374E 20 02         [ 3]  287 	bra	L19	; 
   3750                     288 L17:
   3750 C6 01         [ 2]  289 	ldb	#1	;  iftmp.5,
   3752                     290 L19:
   3752 32 62         [ 5]  291 	leas	2,s	; ,,
   3754 39            [ 5]  292 	rts
                            293 	.globl _x3d
   3755                     294 _x3d:
   3755 34 40         [ 6]  295 	pshs	u	; 
   3757 32 7E         [ 5]  296 	leas	-2,s	; ,,
   3759 E7 E4         [ 4]  297 	stb	,s	;  x, x
                            298 ;----- asm -----
                            299 ;  171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            300 	; #ENR#[127]    x -= LEVEL_WIDTH / 2 - 4;
                            301 ;  0 "" 2
                            302 ;  173 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            303 	; #ENR#[128]    return 14 * x - 6 * z;
                            304 ;  0 "" 2
                            305 ;--- end asm ---
   375B E6 66         [ 5]  306 	ldb	6,s	; , z
   375D 86 FA         [ 2]  307 	lda	#-6	;mulqihi3	; 
   375F 3D            [11]  308 	mul
   3760 1F 01         [ 6]  309 	tfr	d,x	; , tmp31
   3762 E6 E4         [ 4]  310 	ldb	,s	;  tmp32, x
   3764 5A            [ 2]  311 	decb	;  tmp32
   3765 86 0E         [ 2]  312 	lda	#14	;mulqihi3	; 
   3767 3D            [11]  313 	mul
   3768 1F 03         [ 6]  314 	tfr	d,u	; , tmp33
   376A 1F 10         [ 6]  315 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp31,
   376C E7 61         [ 5]  316 	stb	1,s	; ,
   376E 1F 30         [ 6]  317 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp33, tmp35
   3770 EB 61         [ 5]  318 	addb	1,s	;  tmp30,
   3772 32 62         [ 5]  319 	leas	2,s	; ,,
   3774 35 C0         [ 7]  320 	puls	u,pc	; 
                            321 	.globl _y3d
   3776                     322 _y3d:
   3776 32 7D         [ 5]  323 	leas	-3,s	; ,,
   3778 E7 62         [ 5]  324 	stb	2,s	;  x, x
                            325 ;----- asm -----
                            326 ;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            327 	; #ENR#[134]    y -= LEVEL_HEIGHT / 2;
                            328 ;  0 "" 2
                            329 ;  182 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            330 	; #ENR#[135]    return 3 * x + 13 * y + 8 * z;
                            331 ;  0 "" 2
                            332 ;--- end asm ---
   377A E6 65         [ 5]  333 	ldb	5,s	;  tmp32, y
   377C CB F9         [ 2]  334 	addb	#-7	;  tmp32,
   377E 86 0D         [ 2]  335 	lda	#13	;mulqihi3	; 
   3780 3D            [11]  336 	mul
   3781 1F 01         [ 6]  337 	tfr	d,x	; , tmp33
   3783 E6 66         [ 5]  338 	ldb	6,s	; , z
   3785 58            [ 2]  339 	aslb	; 
   3786 58            [ 2]  340 	aslb	; 
   3787 58            [ 2]  341 	aslb	; 
   3788 E7 61         [ 5]  342 	stb	1,s	; ,
   378A 1F 10         [ 6]  343 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
   378C EB 61         [ 5]  344 	addb	1,s	;  tmp36,
   378E E7 E4         [ 4]  345 	stb	,s	;  tmp36,
   3790 E6 62         [ 5]  346 	ldb	2,s	;  tmp38, x
   3792 58            [ 2]  347 	aslb	;  tmp38
   3793 EB 62         [ 5]  348 	addb	2,s	;  tmp39, x
   3795 EB E4         [ 4]  349 	addb	,s	;  tmp31,
   3797 32 63         [ 5]  350 	leas	3,s	; ,,
   3799 39            [ 5]  351 	rts
                            352 	.globl _checkHalfling
   379A                     353 _checkHalfling:
   379A 34 60         [ 7]  354 	pshs	y,u	; 
   379C 32 E8 D7      [ 5]  355 	leas	-41,s	; ,,
                            356 ;----- asm -----
                            357 ;  270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            358 	; #ENR#[222]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+2)] = USED_BOARD_SCALE;
                            359 ;  0 "" 2
                            360 ;--- end asm ---
   379F F6 C8 80      [ 5]  361 	ldb	_lineCount	; , lineCount
   37A2 4F            [ 2]  362 	clra		;zero_extendqihi: R:b -> R:d	; ,
   37A3 ED 6B         [ 6]  363 	std	11,s	; ,
   37A5 58            [ 2]  364 	aslb	; 
   37A6 49            [ 2]  365 	rola	; 
   37A7 58            [ 2]  366 	aslb	; 
   37A8 49            [ 2]  367 	rola	; 
   37A9 EE 6B         [ 6]  368 	ldu	11,s	; ,
   37AB 30 CB         [ 8]  369 	leax	d,u	;  tmp100, tmp99,
   37AD C6 7F         [ 2]  370 	ldb	#127	; ,
   37AF E7 89 C9 0B   [ 8]  371 	stb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
                            372 ;----- asm -----
                            373 ;  273 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            374 	; #ENR#[224]    if (useHalfling[levelOffset + levelNumber] == 0) 
                            375 ;  0 "" 2
                            376 ;--- end asm ---
   37B3 F6 C8 83      [ 5]  377 	ldb	_levelNumber	; , levelNumber
   37B6 E7 6D         [ 5]  378 	stb	13,s	; , levelNumber.11
   37B8 FB 42 DF      [ 5]  379 	addb	_levelOffset	;  tmp103, levelOffset
   37BB 4F            [ 2]  380 	clra		;zero_extendqihi: R:b -> R:d	;  tmp103,
   37BC 1F 01         [ 6]  381 	tfr	d,x	; , tmp104
   37BE 6D 89 42 B6   [10]  382 	tst	_useHalfling,x	;  useHalfling
   37C2 26 0E         [ 3]  383 	bne	L26	; 
                            384 ;----- asm -----
                            385 ;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            386 	; #ENR#[226]        last_x = -1;
                            387 ;  0 "" 2
                            388 ;--- end asm ---
   37C4 C6 FF         [ 2]  389 	ldb	#-1	; ,
   37C6 F7 C8 84      [ 5]  390 	stb	_last_x	; , last_x
                            391 ;----- asm -----
                            392 ;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            393 	; #ENR#[227]        last_y = -1;
                            394 ;  0 "" 2
                            395 ;--- end asm ---
   37C9 F7 C8 85      [ 5]  396 	stb	_last_y	; , last_y
                            397 ;----- asm -----
                            398 ;  280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            399 	; #ENR#[228]        last_s = -1;
                            400 ;  0 "" 2
                            401 ;--- end asm ---
   37CC F7 C8 86      [ 5]  402 	stb	_last_s	; , last_s
                            403 ;----- asm -----
                            404 ;  282 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            405 	; #ENR#[229]        return;
                            406 ;  0 "" 2
                            407 ;--- end asm ---
   37CF 7E 3B A8      [ 4]  408 	jmp	L70	; 
   37D2                     409 L26:
                            410 ;----- asm -----
                            411 ;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            412 	; #ENR#[233]    int8_t this_x = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]+lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)];
                            413 ;  0 "" 2
                            414 ;--- end asm ---
   37D2 F6 C8 80      [ 5]  415 	ldb	_lineCount	; , lineCount
   37D5 86 05         [ 2]  416 	lda	#5	;umulqihi3	; 
   37D7 3D            [11]  417 	mul
   37D8 1F 03         [ 6]  418 	tfr	d,u	; , temp.91
   37DA 10 8E C9 09   [ 4]  419 	ldy	#_lineYX_yx_s_dy_dx	;  tmp107,
   37DE 1F 20         [ 6]  420 	tfr	y,d	;  tmp107,
   37E0 30 CB         [ 8]  421 	leax	d,u	;  tmp108,, temp.91
   37E2 E6 01         [ 5]  422 	ldb	1,x	; , lineYX_yx_s_dy_dx
   37E4 E7 6E         [ 5]  423 	stb	14,s	; , D.1432
   37E6 E6 04         [ 5]  424 	ldb	4,x	; , lineYX_yx_s_dy_dx
   37E8 E7 6F         [ 5]  425 	stb	15,s	; , D.1434
                            426 ;----- asm -----
                            427 ;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            428 	; #ENR#[234]    int8_t this_y = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]+lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)];
                            429 ;  0 "" 2
                            430 ;--- end asm ---
   37EA E6 84         [ 4]  431 	ldb	,x	; , lineYX_yx_s_dy_dx
   37EC E7 E8 10      [ 5]  432 	stb	16,s	; , D.1435
   37EF 33 43         [ 5]  433 	leau	3,u	;  D.1436,, temp.91
   37F1 1F 20         [ 6]  434 	tfr	y,d	;  tmp107,
   37F3 30 CB         [ 8]  435 	leax	d,u	;  tmp116,, D.1436
   37F5 E6 84         [ 4]  436 	ldb	,x	; , lineYX_yx_s_dy_dx
   37F7 E7 E8 11      [ 5]  437 	stb	17,s	; , D.1437
                            438 ;----- asm -----
                            439 ;  292 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            440 	; #ENR#[236]    HALF_IF_POSSIBLE(REDUX1)
                            441 ;  0 "" 2
                            442 ;--- end asm ---
   37FA 8E 00 40      [ 3]  443 	ldx	#64	;  iftmp.12,
   37FD E6 6D         [ 5]  444 	ldb	13,s	; , levelNumber.11
   37FF C1 0E         [ 2]  445 	cmpb	#14	;cmpqi:	; ,
   3801 27 03         [ 3]  446 	beq	L29	; 
   3803 8E 00 28      [ 3]  447 	ldx	#40	;  iftmp.12,
   3806                     448 L29:
   3806 E6 E8 11      [ 5]  449 	ldb	17,s	;  D.1437, D.1437
   3809 2C 01         [ 3]  450 	bge	L31	; 
   380B 50            [ 2]  451 	negb	;  D.1437
   380C                     452 L31:
   380C 1D            [ 2]  453 	sex		;extendqihi2: R:b -> R:d	;  D.1437, D.1437
   380D 34 06         [ 7]  454 	pshs	d	;cmphi: R:d with R:x	;  D.1437, iftmp.12
   380F AC E1         [ 9]  455 	cmpx	,s++	;cmphi:	;  iftmp.12
   3811 2F 30         [ 3]  456 	ble	L30	; 
   3813 8E 00 40      [ 3]  457 	ldx	#64	;  iftmp.13,
   3816 E6 6D         [ 5]  458 	ldb	13,s	; , levelNumber.11
   3818 C1 0E         [ 2]  459 	cmpb	#14	;cmpqi:	; ,
   381A 27 03         [ 3]  460 	beq	L33	; 
   381C 8E 00 28      [ 3]  461 	ldx	#40	;  iftmp.13,
   381F                     462 L33:
   381F E6 6F         [ 5]  463 	ldb	15,s	;  D.1434, D.1434
   3821 2C 01         [ 3]  464 	bge	L34	; 
   3823 50            [ 2]  465 	negb	;  D.1434
   3824                     466 L34:
   3824 1D            [ 2]  467 	sex		;extendqihi2: R:b -> R:d	;  D.1434, D.1434
   3825 34 06         [ 7]  468 	pshs	d	;cmphi: R:d with R:x	;  D.1434, iftmp.13
   3827 AC E1         [ 9]  469 	cmpx	,s++	;cmphi:	;  iftmp.13
   3829 2F 18         [ 3]  470 	ble	L30	; 
   382B E6 E8 11      [ 5]  471 	ldb	17,s	; , D.1437
   382E 58            [ 2]  472 	aslb	; 
   382F E7 C9 C9 09   [ 8]  473 	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   3833 F6 C8 80      [ 5]  474 	ldb	_lineCount	; , lineCount
   3836 86 05         [ 2]  475 	lda	#5	;umulqihi3	; 
   3838 3D            [11]  476 	mul
   3839 1F 01         [ 6]  477 	tfr	d,x	; , tmp123
   383B 68 89 C9 0D   [10]  478 	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
   383F 67 89 C9 0B   [10]  479 	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
   3843                     480 L30:
                            481 ;----- asm -----
                            482 ;  294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            483 	; #ENR#[237]    HALF_IF_POSSIBLE(REDUX2)
                            484 ;  0 "" 2
                            485 ;--- end asm ---
   3843 F6 C8 80      [ 5]  486 	ldb	_lineCount	; , lineCount
   3846 86 05         [ 2]  487 	lda	#5	;umulqihi3	; 
   3848 3D            [11]  488 	mul
   3849 1F 02         [ 6]  489 	tfr	d,y	; , temp.103
   384B 33 23         [ 5]  490 	leau	3,y	;  temp.104,, temp.103
   384D E6 C9 C9 09   [ 8]  491 	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   3851 E7 E8 1C      [ 5]  492 	stb	28,s	; , temp.105
   3854 F6 C8 83      [ 5]  493 	ldb	_levelNumber	; , levelNumber
   3857 E7 E8 1D      [ 5]  494 	stb	29,s	; , levelNumber.108
   385A 8E 00 40      [ 3]  495 	ldx	#64	;  iftmp.14,
   385D C1 0E         [ 2]  496 	cmpb	#14	;cmpqi:	; ,
   385F 27 03         [ 3]  497 	beq	L36	; 
   3861 8E 00 28      [ 3]  498 	ldx	#40	;  iftmp.14,
   3864                     499 L36:
   3864 E6 E8 1C      [ 5]  500 	ldb	28,s	;  temp.105, temp.105
   3867 2C 01         [ 3]  501 	bge	L38	; 
   3869 50            [ 2]  502 	negb	;  temp.105
   386A                     503 L38:
   386A 1D            [ 2]  504 	sex		;extendqihi2: R:b -> R:d	;  temp.105, temp.105
   386B 34 06         [ 7]  505 	pshs	d	;cmphi: R:d with R:x	;  temp.105, iftmp.14
   386D AC E1         [ 9]  506 	cmpx	,s++	;cmphi:	;  iftmp.14
   386F 2F 37         [ 3]  507 	ble	L37	; 
   3871 E6 A9 C9 0D   [ 8]  508 	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
   3875 E7 64         [ 5]  509 	stb	4,s	; , temp.110
   3877 8E 00 40      [ 3]  510 	ldx	#64	;  iftmp.15,
   387A E6 E8 1D      [ 5]  511 	ldb	29,s	; , levelNumber.108
   387D C1 0E         [ 2]  512 	cmpb	#14	;cmpqi:	; ,
   387F 27 03         [ 3]  513 	beq	L40	; 
   3881 8E 00 28      [ 3]  514 	ldx	#40	;  iftmp.15,
   3884                     515 L40:
   3884 E6 64         [ 5]  516 	ldb	4,s	;  temp.110, temp.110
   3886 2C 01         [ 3]  517 	bge	L41	; 
   3888 50            [ 2]  518 	negb	;  temp.110
   3889                     519 L41:
   3889 1D            [ 2]  520 	sex		;extendqihi2: R:b -> R:d	;  temp.110, temp.110
   388A 34 06         [ 7]  521 	pshs	d	;cmphi: R:d with R:x	;  temp.110, iftmp.15
   388C AC E1         [ 9]  522 	cmpx	,s++	;cmphi:	;  iftmp.15
   388E 2F 18         [ 3]  523 	ble	L37	; 
   3890 E6 E8 1C      [ 5]  524 	ldb	28,s	; , temp.105
   3893 58            [ 2]  525 	aslb	; 
   3894 E7 C9 C9 09   [ 8]  526 	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   3898 F6 C8 80      [ 5]  527 	ldb	_lineCount	; , lineCount
   389B 86 05         [ 2]  528 	lda	#5	;umulqihi3	; 
   389D 3D            [11]  529 	mul
   389E 1F 01         [ 6]  530 	tfr	d,x	; , tmp144
   38A0 68 89 C9 0D   [10]  531 	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
   38A4 67 89 C9 0B   [10]  532 	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
   38A8                     533 L37:
                            534 ;----- asm -----
                            535 ;  296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            536 	; #ENR#[238]    HALF_IF_POSSIBLE(REDUX3)
                            537 ;  0 "" 2
                            538 ;--- end asm ---
   38A8 F6 C8 80      [ 5]  539 	ldb	_lineCount	; , lineCount
   38AB 86 05         [ 2]  540 	lda	#5	;umulqihi3	; 
   38AD 3D            [11]  541 	mul
   38AE 1F 02         [ 6]  542 	tfr	d,y	; , temp.128
   38B0 33 23         [ 5]  543 	leau	3,y	;  temp.129,, temp.128
   38B2 E6 C9 C9 09   [ 8]  544 	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   38B6 E7 E8 1E      [ 5]  545 	stb	30,s	; , temp.130
   38B9 F6 C8 83      [ 5]  546 	ldb	_levelNumber	; , levelNumber
   38BC E7 E8 1F      [ 5]  547 	stb	31,s	; , levelNumber.133
   38BF 8E 00 40      [ 3]  548 	ldx	#64	;  iftmp.16,
   38C2 C1 0E         [ 2]  549 	cmpb	#14	;cmpqi:	; ,
   38C4 27 03         [ 3]  550 	beq	L43	; 
   38C6 8E 00 28      [ 3]  551 	ldx	#40	;  iftmp.16,
   38C9                     552 L43:
   38C9 E6 E8 1E      [ 5]  553 	ldb	30,s	;  temp.130, temp.130
   38CC 2C 01         [ 3]  554 	bge	L45	; 
   38CE 50            [ 2]  555 	negb	;  temp.130
   38CF                     556 L45:
   38CF 1D            [ 2]  557 	sex		;extendqihi2: R:b -> R:d	;  temp.130, temp.130
   38D0 34 06         [ 7]  558 	pshs	d	;cmphi: R:d with R:x	;  temp.130, iftmp.16
   38D2 AC E1         [ 9]  559 	cmpx	,s++	;cmphi:	;  iftmp.16
   38D4 2F 37         [ 3]  560 	ble	L44	; 
   38D6 E6 A9 C9 0D   [ 8]  561 	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
   38DA E7 64         [ 5]  562 	stb	4,s	; , temp.135
   38DC 8E 00 40      [ 3]  563 	ldx	#64	;  iftmp.17,
   38DF E6 E8 1F      [ 5]  564 	ldb	31,s	; , levelNumber.133
   38E2 C1 0E         [ 2]  565 	cmpb	#14	;cmpqi:	; ,
   38E4 27 03         [ 3]  566 	beq	L47	; 
   38E6 8E 00 28      [ 3]  567 	ldx	#40	;  iftmp.17,
   38E9                     568 L47:
   38E9 E6 64         [ 5]  569 	ldb	4,s	;  temp.135, temp.135
   38EB 2C 01         [ 3]  570 	bge	L48	; 
   38ED 50            [ 2]  571 	negb	;  temp.135
   38EE                     572 L48:
   38EE 1D            [ 2]  573 	sex		;extendqihi2: R:b -> R:d	;  temp.135, temp.135
   38EF 34 06         [ 7]  574 	pshs	d	;cmphi: R:d with R:x	;  temp.135, iftmp.17
   38F1 AC E1         [ 9]  575 	cmpx	,s++	;cmphi:	;  iftmp.17
   38F3 2F 18         [ 3]  576 	ble	L44	; 
   38F5 E6 E8 1E      [ 5]  577 	ldb	30,s	; , temp.130
   38F8 58            [ 2]  578 	aslb	; 
   38F9 E7 C9 C9 09   [ 8]  579 	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
   38FD F6 C8 80      [ 5]  580 	ldb	_lineCount	; , lineCount
   3900 86 05         [ 2]  581 	lda	#5	;umulqihi3	; 
   3902 3D            [11]  582 	mul
   3903 1F 01         [ 6]  583 	tfr	d,x	; , tmp165
   3905 68 89 C9 0D   [10]  584 	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
   3909 67 89 C9 0B   [10]  585 	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
   390D                     586 L44:
                            587 ;----- asm -----
                            588 ;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            589 	; #ENR#[240]    if (last_s != -1)
                            590 ;  0 "" 2
                            591 ;--- end asm ---
   390D F6 C8 86      [ 5]  592 	ldb	_last_s	; , last_s
   3910 C1 FF         [ 2]  593 	cmpb	#-1	;cmpqi:	; ,
   3912 10 27 02 6D   [ 6]  594 	lbeq	L49	; 
                            595 ;----- asm -----
                            596 ;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            597 	; #ENR#[245]        int oldSacle = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)];
                            598 ;  0 "" 2
                            599 ;--- end asm ---
   3916 F6 C8 80      [ 5]  600 	ldb	_lineCount	; , lineCount
   3919 E7 E8 20      [ 5]  601 	stb	32,s	; , lineCount.151
   391C 5A            [ 2]  602 	decb	;  tmp175
   391D 86 05         [ 2]  603 	lda	#5	;umulqihi3	; 
   391F 3D            [11]  604 	mul
   3920 C3 00 02      [ 4]  605 	addd	#2	;  tmp176,
   3923 ED E8 12      [ 6]  606 	std	18,s	;  tmp176, D.1456
   3926 1F 01         [ 6]  607 	tfr	d,x	; ,
   3928 E6 89 C9 09   [ 8]  608 	ldb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
   392C E7 E8 1B      [ 5]  609 	stb	27,s	; , oldSacle
                            610 ;----- asm -----
                            611 ;  308 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            612 	; #ENR#[247]        if ((oldSacle ==  HALF_1) && (useHalfling[levelOffset + levelNumber] > 0) )
                            613 ;  0 "" 2
                            614 ;--- end asm ---
   392F C1 3F         [ 2]  615 	cmpb	#63	;cmpqi:	; ,
   3931 10 26 00 BB   [ 6]  616 	lbne	L50	; 
   3935 F6 C8 83      [ 5]  617 	ldb	_levelNumber	; , levelNumber
   3938 E7 E8 21      [ 5]  618 	stb	33,s	; , levelNumber.152
   393B FB 42 DF      [ 5]  619 	addb	_levelOffset	;  tmp179, levelOffset
   393E 4F            [ 2]  620 	clra		;zero_extendqihi: R:b -> R:d	;  tmp179,
   393F 1F 01         [ 6]  621 	tfr	d,x	; , tmp180
   3941 6D 89 42 B6   [10]  622 	tst	_useHalfling,x	;  useHalfling
   3945 10 2F 00 A7   [ 6]  623 	lble	L50	; 
                            624 ;----- asm -----
                            625 ;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            626 	; #ENR#[249]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
                            627 ;  0 "" 2
                            628 ;--- end asm ---
   3949 E6 E8 20      [ 5]  629 	ldb	32,s	; , lineCount.151
   394C 86 05         [ 2]  630 	lda	#5	;umulqihi3	; 
   394E 3D            [11]  631 	mul
   394F 1F 01         [ 6]  632 	tfr	d,x	; , temp.156
   3951 30 89 C9 09   [ 8]  633 	leax	_lineYX_yx_s_dy_dx,x	;  tmp189,, temp.156
   3955 E6 80         [ 6]  634 	ldb	,x+	;  tmp186, lineYX_yx_s_dy_dx
   3957 F0 C8 85      [ 5]  635 	subb	_last_y	;  tmp185, last_y
   395A 1D            [ 2]  636 	sex		;extendqihi2: R:b -> R:d	;  tmp185,
   395B ED 62         [ 6]  637 	std	2,s	; , dy
                            638 ;----- asm -----
                            639 ;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            640 	; #ENR#[250]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
                            641 ;  0 "" 2
                            642 ;--- end asm ---
   395D E6 84         [ 4]  643 	ldb	,x	; , lineYX_yx_s_dy_dx
   395F E7 E8 22      [ 5]  644 	stb	34,s	; , temp.159
   3962 F6 C8 84      [ 5]  645 	ldb	_last_x	; , last_x
   3965 E7 E8 14      [ 5]  646 	stb	20,s	; , last_x.20
                            647 ;----- asm -----
                            648 ;  315 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            649 	; #ENR#[251]            dy = dy <<1;
                            650 ;  0 "" 2
                            651 ;--- end asm ---
   3968 EC 62         [ 6]  652 	ldd	2,s	; , dy
   396A 58            [ 2]  653 	aslb	; 
   396B 49            [ 2]  654 	rola	; 
   396C 1F 02         [ 6]  655 	tfr	d,y	; , dy.160
                            656 ;----- asm -----
                            657 ;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            658 	; #ENR#[252]            dx = dx <<1;
                            659 ;  0 "" 2
                            660 ;  319 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            661 	; #ENR#[253]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
                            662 ;  0 "" 2
                            663 ;--- end asm ---
   396E CE 00 80      [ 3]  664 	ldu	#128	;  iftmp.21,
   3971 E6 E8 21      [ 5]  665 	ldb	33,s	; , levelNumber.152
   3974 C1 0E         [ 2]  666 	cmpb	#14	;cmpqi:	; ,
   3976 27 03         [ 3]  667 	beq	L52	; 
   3978 CE 00 50      [ 3]  668 	ldu	#80	;  iftmp.21,
   397B                     669 L52:
   397B 30 A4         [ 4]  670 	leax	,y	;  dy.160, dy.160
   397D 10 8C 00 00   [ 5]  671 	cmpy	#0	;  dy.160
   3981 2C 08         [ 3]  672 	bge	L53	; 
   3983 1E 01         [ 8]  673 	exg	d,x	;  dy.160
   3985 40            [ 2]  674 	nega
   3986 50            [ 2]  675 	negb
   3987 82 00         [ 2]  676 	sbca	#0
   3989 1E 01         [ 8]  677 	exg	d,x	;  dy.160
   398B                     678 L53:
   398B 34 10         [ 6]  679 	pshs	x	;cmphi: R:x with R:u	;  dy.160, iftmp.21
   398D 11 A3 E1      [10]  680 	cmpu	,s++	;cmphi:	;  iftmp.21
   3990 10 2F 01 EF   [ 6]  681 	lble	L49	; 
   3994 8E 00 80      [ 3]  682 	ldx	#128	; ,
   3997 AF E8 15      [ 6]  683 	stx	21,s	; , iftmp.22
   399A E6 E8 21      [ 5]  684 	ldb	33,s	; , levelNumber.152
   399D C1 0E         [ 2]  685 	cmpb	#14	;cmpqi:	; ,
   399F 27 06         [ 3]  686 	beq	L55	; 
   39A1 8E 00 50      [ 3]  687 	ldx	#80	; ,
   39A4 AF E8 15      [ 6]  688 	stx	21,s	; , iftmp.22
   39A7                     689 L55:
   39A7 E6 E8 22      [ 5]  690 	ldb	34,s	;  tmp191, temp.159
   39AA E0 E8 14      [ 5]  691 	subb	20,s	;  tmp191, last_x.20
   39AD 1D            [ 2]  692 	sex		;extendqihi2: R:b -> R:d	;  tmp191, dx
   39AE 58            [ 2]  693 	aslb	; 
   39AF 49            [ 2]  694 	rola	; 
   39B0 1F 03         [ 6]  695 	tfr	d,u	;  dx, dx.161
   39B2 30 C4         [ 4]  696 	leax	,u	;  dx.161, dx.161
   39B4 11 83 00 00   [ 5]  697 	cmpu	#0	;  dx.161
   39B8 2C 08         [ 3]  698 	bge	L56	; 
   39BA 1E 01         [ 8]  699 	exg	d,x	;  dx.161
   39BC 40            [ 2]  700 	nega
   39BD 50            [ 2]  701 	negb
   39BE 82 00         [ 2]  702 	sbca	#0
   39C0 1E 01         [ 8]  703 	exg	d,x	;  dx.161
   39C2                     704 L56:
   39C2 AC E8 15      [ 7]  705 	cmpx	21,s	;cmphi:(R)	;  dx.161, iftmp.22
   39C5 10 2C 01 BA   [ 6]  706 	lbge	L49	; 
                            707 ;----- asm -----
                            708 ;  326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            709 	; #ENR#[259]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
                            710 ;  0 "" 2
                            711 ;--- end asm ---
   39C9 C6 BF         [ 2]  712 	ldb	#-65	; ,
   39CB AE E8 12      [ 6]  713 	ldx	18,s	; , D.1456
   39CE E7 89 C9 09   [ 8]  714 	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
                            715 ;----- asm -----
                            716 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            717 	; #ENR#[262]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
                            718 ;  0 "" 2
                            719 ;--- end asm ---
   39D2 F6 C8 80      [ 5]  720 	ldb	_lineCount	; , lineCount
   39D5 4F            [ 2]  721 	clra		;zero_extendqihi: R:b -> R:d	; ,
   39D6 ED 69         [ 6]  722 	std	9,s	; ,
   39D8 58            [ 2]  723 	aslb	; 
   39D9 49            [ 2]  724 	rola	; 
   39DA 58            [ 2]  725 	aslb	; 
   39DB 49            [ 2]  726 	rola	; 
   39DC E3 69         [ 7]  727 	addd	9,s	;  tmp199,
   39DE C3 C9 09      [ 4]  728 	addd	#_lineYX_yx_s_dy_dx	;  tmp199,
   39E1 ED E4         [ 5]  729 	std	,s	;  tmp199,
   39E3 1F 20         [ 6]  730 	tfr	y,d	;  dy.160,
   39E5 AE E4         [ 5]  731 	ldx	,s	; ,
   39E7 E7 80         [ 6]  732 	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
                            733 ;----- asm -----
                            734 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            735 	; #ENR#[263]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
                            736 ;  0 "" 2
                            737 ;--- end asm ---
   39E9 1F 30         [ 6]  738 	tfr	u,d	;  dx.161,
   39EB E7 84         [ 4]  739 	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
   39ED 7E 3B 83      [ 4]  740 	jmp	L49	; 
   39F0                     741 L50:
   39F0 E6 E8 1B      [ 5]  742 	ldb	27,s	; , oldSacle
   39F3 C1 1F         [ 2]  743 	cmpb	#31	;cmpqi:	; ,
   39F5 10 26 00 C1   [ 6]  744 	lbne	L57	; 
   39F9 F6 C8 83      [ 5]  745 	ldb	_levelNumber	; , levelNumber
   39FC E7 E8 23      [ 5]  746 	stb	35,s	; , levelNumber.169
   39FF FB 42 DF      [ 5]  747 	addb	_levelOffset	;  tmp208, levelOffset
   3A02 4F            [ 2]  748 	clra		;zero_extendqihi: R:b -> R:d	;  tmp208,
   3A03 1F 01         [ 6]  749 	tfr	d,x	; , tmp209
   3A05 E6 89 42 B6   [ 8]  750 	ldb	_useHalfling,x	; , useHalfling
   3A09 C1 01         [ 2]  751 	cmpb	#1	;cmpqi:	; ,
   3A0B 10 2F 00 AB   [ 6]  752 	lble	L57	; 
                            753 ;----- asm -----
                            754 ;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            755 	; #ENR#[270]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
                            756 ;  0 "" 2
                            757 ;--- end asm ---
   3A0F E6 E8 20      [ 5]  758 	ldb	32,s	; , lineCount.151
   3A12 86 05         [ 2]  759 	lda	#5	;umulqihi3	; 
   3A14 3D            [11]  760 	mul
   3A15 1F 01         [ 6]  761 	tfr	d,x	; , temp.173
   3A17 30 89 C9 09   [ 8]  762 	leax	_lineYX_yx_s_dy_dx,x	;  tmp218,, temp.173
   3A1B E6 80         [ 6]  763 	ldb	,x+	;  tmp215, lineYX_yx_s_dy_dx
   3A1D F0 C8 85      [ 5]  764 	subb	_last_y	;  tmp214, last_y
   3A20 1D            [ 2]  765 	sex		;extendqihi2: R:b -> R:d	;  tmp214,
   3A21 ED 62         [ 6]  766 	std	2,s	; , dy
                            767 ;----- asm -----
                            768 ;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            769 	; #ENR#[271]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
                            770 ;  0 "" 2
                            771 ;--- end asm ---
   3A23 E6 84         [ 4]  772 	ldb	,x	; , lineYX_yx_s_dy_dx
   3A25 E7 E8 24      [ 5]  773 	stb	36,s	; , temp.178
   3A28 F6 C8 84      [ 5]  774 	ldb	_last_x	; , last_x
   3A2B E7 E8 25      [ 5]  775 	stb	37,s	; , last_x.179
                            776 ;----- asm -----
                            777 ;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            778 	; #ENR#[272]            dy = dy <<1;
                            779 ;  0 "" 2
                            780 ;--- end asm ---
   3A2E EC 62         [ 6]  781 	ldd	2,s	;  dy.181, dy
   3A30 58            [ 2]  782 	aslb	; 
   3A31 49            [ 2]  783 	rola	; 
                            784 ;----- asm -----
                            785 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            786 	; #ENR#[273]            dx = dx <<1;
                            787 ;  0 "" 2
                            788 ;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            789 	; #ENR#[274]            dy = dy <<1;
                            790 ;  0 "" 2
                            791 ;--- end asm ---
   3A32 58            [ 2]  792 	aslb	; 
   3A33 49            [ 2]  793 	rola	; 
   3A34 1F 02         [ 6]  794 	tfr	d,y	;  dy.181, dy.183
                            795 ;----- asm -----
                            796 ;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            797 	; #ENR#[275]            dx = dx <<1;
                            798 ;  0 "" 2
                            799 ;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            800 	; #ENR#[276]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
                            801 ;  0 "" 2
                            802 ;--- end asm ---
   3A36 CE 00 80      [ 3]  803 	ldu	#128	;  iftmp.24,
   3A39 E6 E8 23      [ 5]  804 	ldb	35,s	; , levelNumber.169
   3A3C C1 0E         [ 2]  805 	cmpb	#14	;cmpqi:	; ,
   3A3E 27 03         [ 3]  806 	beq	L59	; 
   3A40 CE 00 50      [ 3]  807 	ldu	#80	;  iftmp.24,
   3A43                     808 L59:
   3A43 30 A4         [ 4]  809 	leax	,y	;  dy.183, dy.183
   3A45 10 8C 00 00   [ 5]  810 	cmpy	#0	;  dy.183
   3A49 2C 08         [ 3]  811 	bge	L60	; 
   3A4B 1E 01         [ 8]  812 	exg	d,x	;  dy.183
   3A4D 40            [ 2]  813 	nega
   3A4E 50            [ 2]  814 	negb
   3A4F 82 00         [ 2]  815 	sbca	#0
   3A51 1E 01         [ 8]  816 	exg	d,x	;  dy.183
   3A53                     817 L60:
   3A53 34 10         [ 6]  818 	pshs	x	;cmphi: R:x with R:u	;  dy.183, iftmp.24
   3A55 11 A3 E1      [10]  819 	cmpu	,s++	;cmphi:	;  iftmp.24
   3A58 10 2F 01 27   [ 6]  820 	lble	L49	; 
   3A5C 8E 00 80      [ 3]  821 	ldx	#128	; ,
   3A5F AF E8 17      [ 6]  822 	stx	23,s	; , iftmp.25
   3A62 E6 E8 23      [ 5]  823 	ldb	35,s	; , levelNumber.169
   3A65 C1 0E         [ 2]  824 	cmpb	#14	;cmpqi:	; ,
   3A67 27 06         [ 3]  825 	beq	L62	; 
   3A69 8E 00 50      [ 3]  826 	ldx	#80	; ,
   3A6C AF E8 17      [ 6]  827 	stx	23,s	; , iftmp.25
   3A6F                     828 L62:
   3A6F E6 E8 24      [ 5]  829 	ldb	36,s	;  tmp220, temp.178
   3A72 E0 E8 25      [ 5]  830 	subb	37,s	;  tmp220, last_x.179
   3A75 1D            [ 2]  831 	sex		;extendqihi2: R:b -> R:d	;  tmp220, dx
   3A76 58            [ 2]  832 	aslb	; 
   3A77 49            [ 2]  833 	rola	; 
   3A78 58            [ 2]  834 	aslb	; 
   3A79 49            [ 2]  835 	rola	; 
   3A7A 1F 03         [ 6]  836 	tfr	d,u	;  dx.182, dx.184
   3A7C 30 C4         [ 4]  837 	leax	,u	;  dx.184, dx.184
   3A7E 11 83 00 00   [ 5]  838 	cmpu	#0	;  dx.184
   3A82 2C 08         [ 3]  839 	bge	L63	; 
   3A84 1E 01         [ 8]  840 	exg	d,x	;  dx.184
   3A86 40            [ 2]  841 	nega
   3A87 50            [ 2]  842 	negb
   3A88 82 00         [ 2]  843 	sbca	#0
   3A8A 1E 01         [ 8]  844 	exg	d,x	;  dx.184
   3A8C                     845 L63:
   3A8C AC E8 17      [ 7]  846 	cmpx	23,s	;cmphi:(R)	;  dx.184, iftmp.25
   3A8F 10 2C 00 F0   [ 6]  847 	lbge	L49	; 
                            848 ;----- asm -----
                            849 ;  359 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            850 	; #ENR#[282]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
                            851 ;  0 "" 2
                            852 ;--- end asm ---
   3A93 C6 9F         [ 2]  853 	ldb	#-97	; ,
   3A95 AE E8 12      [ 6]  854 	ldx	18,s	; , D.1456
   3A98 E7 89 C9 09   [ 8]  855 	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
                            856 ;----- asm -----
                            857 ;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            858 	; #ENR#[285]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
                            859 ;  0 "" 2
                            860 ;--- end asm ---
   3A9C F6 C8 80      [ 5]  861 	ldb	_lineCount	; , lineCount
   3A9F 4F            [ 2]  862 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3AA0 ED 67         [ 6]  863 	std	7,s	; ,
   3AA2 58            [ 2]  864 	aslb	; 
   3AA3 49            [ 2]  865 	rola	; 
   3AA4 58            [ 2]  866 	aslb	; 
   3AA5 49            [ 2]  867 	rola	; 
   3AA6 E3 67         [ 7]  868 	addd	7,s	;  tmp228,
   3AA8 C3 C9 09      [ 4]  869 	addd	#_lineYX_yx_s_dy_dx	;  tmp228,
   3AAB ED E4         [ 5]  870 	std	,s	;  tmp228,
   3AAD 1F 20         [ 6]  871 	tfr	y,d	;  dy.183,
   3AAF AE E4         [ 5]  872 	ldx	,s	; ,
   3AB1 E7 80         [ 6]  873 	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
                            874 ;----- asm -----
                            875 ;  365 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            876 	; #ENR#[286]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
                            877 ;  0 "" 2
                            878 ;--- end asm ---
   3AB3 1F 30         [ 6]  879 	tfr	u,d	;  dx.184,
   3AB5 E7 84         [ 4]  880 	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
   3AB7 7E 3B 83      [ 4]  881 	jmp	L49	; 
   3ABA                     882 L57:
   3ABA E6 E8 1B      [ 5]  883 	ldb	27,s	; , oldSacle
   3ABD C1 0F         [ 2]  884 	cmpb	#15	;cmpqi:	; ,
   3ABF 10 26 00 C0   [ 6]  885 	lbne	L49	; 
   3AC3 F6 C8 83      [ 5]  886 	ldb	_levelNumber	; , levelNumber
   3AC6 E7 E8 26      [ 5]  887 	stb	38,s	; , levelNumber.192
   3AC9 FB 42 DF      [ 5]  888 	addb	_levelOffset	;  tmp237, levelOffset
   3ACC 4F            [ 2]  889 	clra		;zero_extendqihi: R:b -> R:d	;  tmp237,
   3ACD 1F 01         [ 6]  890 	tfr	d,x	; , tmp238
   3ACF E6 89 42 B6   [ 8]  891 	ldb	_useHalfling,x	; , useHalfling
   3AD3 C1 02         [ 2]  892 	cmpb	#2	;cmpqi:	; ,
   3AD5 10 2F 00 AA   [ 6]  893 	lble	L49	; 
                            894 ;----- asm -----
                            895 ;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            896 	; #ENR#[293]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
                            897 ;  0 "" 2
                            898 ;--- end asm ---
   3AD9 E6 E8 20      [ 5]  899 	ldb	32,s	; , lineCount.151
   3ADC 86 05         [ 2]  900 	lda	#5	;umulqihi3	; 
   3ADE 3D            [11]  901 	mul
   3ADF 1F 01         [ 6]  902 	tfr	d,x	; , temp.196
   3AE1 30 89 C9 09   [ 8]  903 	leax	_lineYX_yx_s_dy_dx,x	;  tmp247,, temp.196
   3AE5 E6 80         [ 6]  904 	ldb	,x+	;  tmp244, lineYX_yx_s_dy_dx
   3AE7 F0 C8 85      [ 5]  905 	subb	_last_y	;  tmp243, last_y
   3AEA 1D            [ 2]  906 	sex		;extendqihi2: R:b -> R:d	;  tmp243,
   3AEB ED 62         [ 6]  907 	std	2,s	; , dy
                            908 ;----- asm -----
                            909 ;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            910 	; #ENR#[294]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
                            911 ;  0 "" 2
                            912 ;--- end asm ---
   3AED E6 84         [ 4]  913 	ldb	,x	; , lineYX_yx_s_dy_dx
   3AEF E7 E8 27      [ 5]  914 	stb	39,s	; , temp.201
   3AF2 F6 C8 84      [ 5]  915 	ldb	_last_x	; , last_x
   3AF5 E7 E8 28      [ 5]  916 	stb	40,s	; , last_x.202
                            917 ;----- asm -----
                            918 ;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            919 	; #ENR#[295]            dy = dy <<1;
                            920 ;  0 "" 2
                            921 ;--- end asm ---
   3AF8 EC 62         [ 6]  922 	ldd	2,s	;  dy.204, dy
   3AFA 58            [ 2]  923 	aslb	; 
   3AFB 49            [ 2]  924 	rola	; 
                            925 ;----- asm -----
                            926 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            927 	; #ENR#[296]            dx = dx <<1;
                            928 ;  0 "" 2
                            929 ;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            930 	; #ENR#[297]            dy = dy <<1;
                            931 ;  0 "" 2
                            932 ;--- end asm ---
   3AFC 58            [ 2]  933 	aslb	; 
   3AFD 49            [ 2]  934 	rola	; 
                            935 ;----- asm -----
                            936 ;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            937 	; #ENR#[298]            dx = dx <<1;
                            938 ;  0 "" 2
                            939 ;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            940 	; #ENR#[299]            dy = dy <<1;
                            941 ;  0 "" 2
                            942 ;--- end asm ---
   3AFE 58            [ 2]  943 	aslb	; 
   3AFF 49            [ 2]  944 	rola	; 
   3B00 1F 02         [ 6]  945 	tfr	d,y	;  dy.206, dy.208
                            946 ;----- asm -----
                            947 ;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            948 	; #ENR#[300]            dx = dx <<1;
                            949 ;  0 "" 2
                            950 ;  389 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            951 	; #ENR#[301]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
                            952 ;  0 "" 2
                            953 ;--- end asm ---
   3B02 CE 00 80      [ 3]  954 	ldu	#128	;  iftmp.26,
   3B05 E6 E8 26      [ 5]  955 	ldb	38,s	; , levelNumber.192
   3B08 C1 0E         [ 2]  956 	cmpb	#14	;cmpqi:	; ,
   3B0A 27 03         [ 3]  957 	beq	L65	; 
   3B0C CE 00 50      [ 3]  958 	ldu	#80	;  iftmp.26,
   3B0F                     959 L65:
   3B0F 30 A4         [ 4]  960 	leax	,y	;  dy.208, dy.208
   3B11 10 8C 00 00   [ 5]  961 	cmpy	#0	;  dy.208
   3B15 2C 08         [ 3]  962 	bge	L66	; 
   3B17 1E 01         [ 8]  963 	exg	d,x	;  dy.208
   3B19 40            [ 2]  964 	nega
   3B1A 50            [ 2]  965 	negb
   3B1B 82 00         [ 2]  966 	sbca	#0
   3B1D 1E 01         [ 8]  967 	exg	d,x	;  dy.208
   3B1F                     968 L66:
   3B1F 34 10         [ 6]  969 	pshs	x	;cmphi: R:x with R:u	;  dy.208, iftmp.26
   3B21 11 A3 E1      [10]  970 	cmpu	,s++	;cmphi:	;  iftmp.26
   3B24 10 2F 00 5B   [ 6]  971 	lble	L49	; 
   3B28 8E 00 80      [ 3]  972 	ldx	#128	; ,
   3B2B AF E8 19      [ 6]  973 	stx	25,s	; , iftmp.27
   3B2E E6 E8 26      [ 5]  974 	ldb	38,s	; , levelNumber.192
   3B31 C1 0E         [ 2]  975 	cmpb	#14	;cmpqi:	; ,
   3B33 27 06         [ 3]  976 	beq	L68	; 
   3B35 8E 00 50      [ 3]  977 	ldx	#80	; ,
   3B38 AF E8 19      [ 6]  978 	stx	25,s	; , iftmp.27
   3B3B                     979 L68:
   3B3B E6 E8 27      [ 5]  980 	ldb	39,s	;  tmp249, temp.201
   3B3E E0 E8 28      [ 5]  981 	subb	40,s	;  tmp249, last_x.202
   3B41 1D            [ 2]  982 	sex		;extendqihi2: R:b -> R:d	;  tmp249, dx
   3B42 58            [ 2]  983 	aslb	; 
   3B43 49            [ 2]  984 	rola	; 
   3B44 58            [ 2]  985 	aslb	; 
   3B45 49            [ 2]  986 	rola	; 
   3B46 58            [ 2]  987 	aslb	; 
   3B47 49            [ 2]  988 	rola	; 
   3B48 1F 03         [ 6]  989 	tfr	d,u	;  dx.207, dx.209
   3B4A 30 C4         [ 4]  990 	leax	,u	;  dx.209, dx.209
   3B4C 11 83 00 00   [ 5]  991 	cmpu	#0	;  dx.209
   3B50 2C 08         [ 3]  992 	bge	L69	; 
   3B52 1E 01         [ 8]  993 	exg	d,x	;  dx.209
   3B54 40            [ 2]  994 	nega
   3B55 50            [ 2]  995 	negb
   3B56 82 00         [ 2]  996 	sbca	#0
   3B58 1E 01         [ 8]  997 	exg	d,x	;  dx.209
   3B5A                     998 L69:
   3B5A AC E8 19      [ 7]  999 	cmpx	25,s	;cmphi:(R)	;  dx.209, iftmp.27
   3B5D 2C 24         [ 3] 1000 	bge	L49	; 
                           1001 ;----- asm -----
                           1002 ;  396 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1003 	; #ENR#[307]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
                           1004 ;  0 "" 2
                           1005 ;--- end asm ---
   3B5F C6 8F         [ 2] 1006 	ldb	#-113	; ,
   3B61 AE E8 12      [ 6] 1007 	ldx	18,s	; , D.1456
   3B64 E7 89 C9 09   [ 8] 1008 	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
                           1009 ;----- asm -----
                           1010 ;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1011 	; #ENR#[310]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
                           1012 ;  0 "" 2
                           1013 ;--- end asm ---
   3B68 F6 C8 80      [ 5] 1014 	ldb	_lineCount	; , lineCount
   3B6B 4F            [ 2] 1015 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3B6C ED 65         [ 6] 1016 	std	5,s	; ,
   3B6E 58            [ 2] 1017 	aslb	; 
   3B6F 49            [ 2] 1018 	rola	; 
   3B70 58            [ 2] 1019 	aslb	; 
   3B71 49            [ 2] 1020 	rola	; 
   3B72 E3 65         [ 7] 1021 	addd	5,s	;  tmp257,
   3B74 C3 C9 09      [ 4] 1022 	addd	#_lineYX_yx_s_dy_dx	;  tmp257,
   3B77 ED E4         [ 5] 1023 	std	,s	;  tmp257,
   3B79 1F 20         [ 6] 1024 	tfr	y,d	;  dy.208,
   3B7B AE E4         [ 5] 1025 	ldx	,s	; ,
   3B7D E7 80         [ 6] 1026 	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
                           1027 ;----- asm -----
                           1028 ;  402 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1029 	; #ENR#[311]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
                           1030 ;  0 "" 2
                           1031 ;--- end asm ---
   3B7F 1F 30         [ 6] 1032 	tfr	u,d	;  dx.209,
   3B81 E7 84         [ 4] 1033 	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
   3B83                    1034 L49:
                           1035 ;----- asm -----
                           1036 ;  409 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1037 	; #ENR#[317]    last_x = this_x;
                           1038 ;  0 "" 2
                           1039 ;--- end asm ---
   3B83 E6 6F         [ 5] 1040 	ldb	15,s	; , D.1434
   3B85 EB 6E         [ 5] 1041 	addb	14,s	; , D.1432
   3B87 F7 C8 84      [ 5] 1042 	stb	_last_x	; , last_x
                           1043 ;----- asm -----
                           1044 ;  411 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1045 	; #ENR#[318]    last_y = this_y;
                           1046 ;  0 "" 2
                           1047 ;--- end asm ---
   3B8A E6 E8 11      [ 5] 1048 	ldb	17,s	; , D.1437
   3B8D EB E8 10      [ 5] 1049 	addb	16,s	; , D.1435
   3B90 F7 C8 85      [ 5] 1050 	stb	_last_y	; , last_y
                           1051 ;----- asm -----
                           1052 ;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1053 	; #ENR#[319]    last_s = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+2)];
                           1054 ;  0 "" 2
                           1055 ;--- end asm ---
   3B93 F6 C8 80      [ 5] 1056 	ldb	_lineCount	; , lineCount
   3B96 4F            [ 2] 1057 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3B97 ED 62         [ 6] 1058 	std	2,s	; ,
   3B99 58            [ 2] 1059 	aslb	; 
   3B9A 49            [ 2] 1060 	rola	; 
   3B9B 58            [ 2] 1061 	aslb	; 
   3B9C 49            [ 2] 1062 	rola	; 
                           1063 ; Applied peep: bug1 (gcc does one exg to many)
   3B9D E3 62         [ 7] 1064 	addd	2,s	; ,
   3B9F 1F 01         [ 6] 1065  tfr d,x
                           1066 ; ORG>	tfr	d,x	; , tmp269
                           1067 ; ORG>	exg	d,x	; , tmp270
                           1068 ; ORG>	addd	2,s	; ,
                           1069 ; ORG>	exg	d,x	; , tmp270
   3BA1 E6 89 C9 0B   [ 8] 1070 	ldb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
   3BA5 F7 C8 86      [ 5] 1071 	stb	_last_s	; , last_s
   3BA8                    1072 L70:
   3BA8 32 E8 29      [ 5] 1073 	leas	41,s	; ,,
   3BAB 35 E0         [ 8] 1074 	puls	y,u,pc	; 
                           1075 	.globl _addTarget
   3BAD                    1076 _addTarget:
   3BAD 34 60         [ 7] 1077 	pshs	y,u	; 
   3BAF 32 74         [ 5] 1078 	leas	-12,s	; ,,
   3BB1 E7 63         [ 5] 1079 	stb	3,s	;  x, x
                           1080 ;----- asm -----
                           1081 ;  502 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1082 	; #ENR#[378]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x, 0, y);
                           1083 ;  0 "" 2
                           1084 ;--- end asm ---
   3BB3 F6 C8 80      [ 5] 1085 	ldb	_lineCount	; , lineCount
   3BB6 86 05         [ 2] 1086 	lda	#5	;umulqihi3	; 
   3BB8 3D            [11] 1087 	mul
   3BB9 1F 02         [ 6] 1088 	tfr	d,y	; , D.1571
   3BBB E6 E8 12      [ 5] 1089 	ldb	18,s	; , y
   3BBE 34 04         [ 6] 1090 	pshs	b	; 
   3BC0 6F E2         [ 8] 1091 	clr	,-s	; 
   3BC2 E6 65         [ 5] 1092 	ldb	5,s	; , x
   3BC4 BD 37 76      [ 8] 1093 	jsr	_y3d	; 
   3BC7 CE C9 09      [ 3] 1094 	ldu	#_lineYX_yx_s_dy_dx	;  tmp51,
   3BCA E7 A9 C9 09   [ 8] 1095 	stb	_lineYX_yx_s_dy_dx,y	;  D.1572, lineYX_yx_s_dy_dx
                           1096 ;----- asm -----
                           1097 ;  504 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1098 	; #ENR#[379]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x, y) ;
                           1099 ;  0 "" 2
                           1100 ;--- end asm ---
   3BCE F6 C8 80      [ 5] 1101 	ldb	_lineCount	; , lineCount
   3BD1 86 05         [ 2] 1102 	lda	#5	;umulqihi3	; 
   3BD3 3D            [11] 1103 	mul
   3BD4 1F 02         [ 6] 1104 	tfr	d,y	; , tmp53
   3BD6 31 21         [ 5] 1105 	leay	1,y	;  D.1573,, tmp53
   3BD8 E6 E8 14      [ 5] 1106 	ldb	20,s	; , y
   3BDB 34 04         [ 6] 1107 	pshs	b	; 
   3BDD E6 66         [ 5] 1108 	ldb	6,s	; , x
   3BDF BD 37 55      [ 8] 1109 	jsr	_x3d	; 
   3BE2 E7 63         [ 5] 1110 	stb	3,s	; , D.1574
   3BE4 1F 30         [ 6] 1111 	tfr	u,d	;  tmp51,
   3BE6 30 AB         [ 8] 1112 	leax	d,y	;  tmp55,, D.1573
   3BE8 E6 63         [ 5] 1113 	ldb	3,s	; , D.1574
   3BEA E7 84         [ 4] 1114 	stb	,x	; , lineYX_yx_s_dy_dx
                           1115 ;----- asm -----
                           1116 ;  506 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1117 	; #ENR#[380]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x+1, 0, y+1)- (y3d(x, 0, y));
                           1118 ;  0 "" 2
                           1119 ;--- end asm ---
   3BEC F6 C8 80      [ 5] 1120 	ldb	_lineCount	; , lineCount
   3BEF 86 05         [ 2] 1121 	lda	#5	;umulqihi3	; 
   3BF1 3D            [11] 1122 	mul
   3BF2 1F 02         [ 6] 1123 	tfr	d,y	; , tmp56
   3BF4 31 23         [ 5] 1124 	leay	3,y	;  D.1575,, tmp56
   3BF6 E6 E8 15      [ 5] 1125 	ldb	21,s	; , y
   3BF9 5C            [ 2] 1126 	incb	; 
   3BFA E7 67         [ 5] 1127 	stb	7,s	; , D.1576
   3BFC E6 66         [ 5] 1128 	ldb	6,s	; , x
   3BFE 5C            [ 2] 1129 	incb	; 
   3BFF E7 68         [ 5] 1130 	stb	8,s	; , D.1577
   3C01 E6 67         [ 5] 1131 	ldb	7,s	; , D.1576
   3C03 34 04         [ 6] 1132 	pshs	b	; 
   3C05 6F E2         [ 8] 1133 	clr	,-s	; 
   3C07 E6 6A         [ 5] 1134 	ldb	10,s	; , D.1577
   3C09 BD 37 76      [ 8] 1135 	jsr	_y3d	; 
   3C0C E7 6B         [ 5] 1136 	stb	11,s	; , D.1578
   3C0E E6 E8 17      [ 5] 1137 	ldb	23,s	; , y
   3C11 34 04         [ 6] 1138 	pshs	b	; 
   3C13 6F E2         [ 8] 1139 	clr	,-s	; 
   3C15 E6 6A         [ 5] 1140 	ldb	10,s	; , x
   3C17 BD 37 76      [ 8] 1141 	jsr	_y3d	; 
   3C1A E7 67         [ 5] 1142 	stb	7,s	; , D.1579
   3C1C 1F 30         [ 6] 1143 	tfr	u,d	;  tmp51,
   3C1E 30 AB         [ 8] 1144 	leax	d,y	;  tmp58,, D.1575
   3C20 E6 6D         [ 5] 1145 	ldb	13,s	;  tmp59, D.1578
   3C22 E0 67         [ 5] 1146 	subb	7,s	;  tmp59, D.1579
   3C24 E7 84         [ 4] 1147 	stb	,x	;  tmp59, lineYX_yx_s_dy_dx
                           1148 ;----- asm -----
                           1149 ;  508 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1150 	; #ENR#[381]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x+1, y+1)- (x3d(x, y)) ;
                           1151 ;  0 "" 2
                           1152 ;--- end asm ---
   3C26 F6 C8 80      [ 5] 1153 	ldb	_lineCount	; , lineCount
   3C29 86 05         [ 2] 1154 	lda	#5	;umulqihi3	; 
   3C2B 3D            [11] 1155 	mul
   3C2C 1F 02         [ 6] 1156 	tfr	d,y	; , tmp60
   3C2E 31 24         [ 5] 1157 	leay	4,y	;  D.1581,, tmp60
   3C30 E6 6B         [ 5] 1158 	ldb	11,s	; , D.1576
   3C32 34 04         [ 6] 1159 	pshs	b	; 
   3C34 E6 6D         [ 5] 1160 	ldb	13,s	; , D.1577
   3C36 BD 37 55      [ 8] 1161 	jsr	_x3d	; 
   3C39 E7 6F         [ 5] 1162 	stb	15,s	; , D.1582
   3C3B 32 68         [ 5] 1163 	leas	8,s	; ,,
   3C3D E6 E8 12      [ 5] 1164 	ldb	18,s	; , y
   3C40 34 04         [ 6] 1165 	pshs	b	; 
   3C42 E6 64         [ 5] 1166 	ldb	4,s	; , x
   3C44 BD 37 55      [ 8] 1167 	jsr	_x3d	; 
   3C47 E7 61         [ 5] 1168 	stb	1,s	; , D.1583
   3C49 1F 30         [ 6] 1169 	tfr	u,d	;  tmp51,
   3C4B 30 AB         [ 8] 1170 	leax	d,y	;  tmp62,, D.1581
   3C4D E6 68         [ 5] 1171 	ldb	8,s	;  tmp63, D.1582
   3C4F E0 61         [ 5] 1172 	subb	1,s	;  tmp63, D.1583
   3C51 E7 84         [ 4] 1173 	stb	,x	;  tmp63, lineYX_yx_s_dy_dx
                           1174 ;----- asm -----
                           1175 ;  510 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1176 	; #ENR#[382]    checkHalfling();
                           1177 ;  0 "" 2
                           1178 ;--- end asm ---
   3C53 BD 37 9A      [ 8] 1179 	jsr	_checkHalfling	; 
                           1180 ;----- asm -----
                           1181 ;  513 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1182 	; #ENR#[384]    lineCount++;
                           1183 ;  0 "" 2
                           1184 ;--- end asm ---
   3C56 F6 C8 80      [ 5] 1185 	ldb	_lineCount	; , lineCount
   3C59 5C            [ 2] 1186 	incb	; 
   3C5A E7 69         [ 5] 1187 	stb	9,s	; , lineCount.34
   3C5C F7 C8 80      [ 5] 1188 	stb	_lineCount	; , lineCount
                           1189 ;----- asm -----
                           1190 ;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1191 	; #ENR#[387]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x+1, 0, y);
                           1192 ;  0 "" 2
                           1193 ;--- end asm ---
   3C5F E6 E8 13      [ 5] 1194 	ldb	19,s	; , y
   3C62 34 04         [ 6] 1195 	pshs	b	; 
   3C64 6F E2         [ 8] 1196 	clr	,-s	; 
   3C66 E6 68         [ 5] 1197 	ldb	8,s	; , D.1577
   3C68 BD 37 76      [ 8] 1198 	jsr	_y3d	; 
   3C6B E7 6C         [ 5] 1199 	stb	12,s	; , D.1586
   3C6D E6 6B         [ 5] 1200 	ldb	11,s	; , lineCount.34
   3C6F 4F            [ 2] 1201 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3C70 ED 64         [ 6] 1202 	std	4,s	; ,
   3C72 58            [ 2] 1203 	aslb	; 
   3C73 49            [ 2] 1204 	rola	; 
   3C74 58            [ 2] 1205 	aslb	; 
   3C75 49            [ 2] 1206 	rola	; 
   3C76 10 AE 64      [ 7] 1207 	ldy	4,s	; ,
   3C79 30 AB         [ 8] 1208 	leax	d,y	;  tmp68, tmp67,
   3C7B 1E 03         [ 8] 1209 	exg	d,u	; , tmp51
   3C7D 30 8B         [ 8] 1210 	leax	d,x	;  tmp69,, tmp69
   3C7F 1E 03         [ 8] 1211 	exg	d,u	; , tmp51
   3C81 E6 6C         [ 5] 1212 	ldb	12,s	; , D.1586
   3C83 E7 84         [ 4] 1213 	stb	,x	; , lineYX_yx_s_dy_dx
                           1214 ;----- asm -----
                           1215 ;  519 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1216 	; #ENR#[388]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x+1, y) ;
                           1217 ;  0 "" 2
                           1218 ;--- end asm ---
   3C85 F6 C8 80      [ 5] 1219 	ldb	_lineCount	; , lineCount
   3C88 86 05         [ 2] 1220 	lda	#5	;umulqihi3	; 
   3C8A 3D            [11] 1221 	mul
   3C8B 1F 02         [ 6] 1222 	tfr	d,y	; , tmp70
   3C8D 31 21         [ 5] 1223 	leay	1,y	;  temp.242,, tmp70
   3C8F E6 E8 15      [ 5] 1224 	ldb	21,s	; , y
   3C92 34 04         [ 6] 1225 	pshs	b	; 
   3C94 E6 69         [ 5] 1226 	ldb	9,s	; , D.1577
   3C96 BD 37 55      [ 8] 1227 	jsr	_x3d	; 
   3C99 E7 64         [ 5] 1228 	stb	4,s	; , D.1587
   3C9B 1F 30         [ 6] 1229 	tfr	u,d	;  tmp51,
   3C9D 30 AB         [ 8] 1230 	leax	d,y	;  tmp72,, temp.242
   3C9F E6 64         [ 5] 1231 	ldb	4,s	; , D.1587
   3CA1 E7 84         [ 4] 1232 	stb	,x	; , lineYX_yx_s_dy_dx
                           1233 ;----- asm -----
                           1234 ;  521 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1235 	; #ENR#[389]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x, 0, y+1)- (y3d(x+1, 0, y));
                           1236 ;  0 "" 2
                           1237 ;--- end asm ---
   3CA3 F6 C8 80      [ 5] 1238 	ldb	_lineCount	; , lineCount
   3CA6 86 05         [ 2] 1239 	lda	#5	;umulqihi3	; 
   3CA8 3D            [11] 1240 	mul
   3CA9 1F 02         [ 6] 1241 	tfr	d,y	; , tmp73
   3CAB 31 23         [ 5] 1242 	leay	3,y	;  temp.246,, tmp73
   3CAD E6 68         [ 5] 1243 	ldb	8,s	; , D.1576
   3CAF 34 04         [ 6] 1244 	pshs	b	; 
   3CB1 6F E2         [ 8] 1245 	clr	,-s	; 
   3CB3 E6 69         [ 5] 1246 	ldb	9,s	; , x
   3CB5 BD 37 76      [ 8] 1247 	jsr	_y3d	; 
   3CB8 E7 E8 10      [ 5] 1248 	stb	16,s	; , D.1588
   3CBB E6 E8 18      [ 5] 1249 	ldb	24,s	; , y
   3CBE 34 04         [ 6] 1250 	pshs	b	; 
   3CC0 6F E2         [ 8] 1251 	clr	,-s	; 
   3CC2 E6 6D         [ 5] 1252 	ldb	13,s	; , D.1577
   3CC4 BD 37 76      [ 8] 1253 	jsr	_y3d	; 
   3CC7 E7 68         [ 5] 1254 	stb	8,s	; , D.1589
   3CC9 1F 30         [ 6] 1255 	tfr	u,d	;  tmp51,
   3CCB 30 AB         [ 8] 1256 	leax	d,y	;  tmp75,, temp.246
   3CCD E6 E8 12      [ 5] 1257 	ldb	18,s	;  tmp76, D.1588
   3CD0 E0 68         [ 5] 1258 	subb	8,s	;  tmp76, D.1589
   3CD2 E7 84         [ 4] 1259 	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
                           1260 ;----- asm -----
                           1261 ;  523 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1262 	; #ENR#[390]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x, y+1)- (x3d(x+1, y))  ;
                           1263 ;  0 "" 2
                           1264 ;--- end asm ---
   3CD4 F6 C8 80      [ 5] 1265 	ldb	_lineCount	; , lineCount
   3CD7 86 05         [ 2] 1266 	lda	#5	;umulqihi3	; 
   3CD9 3D            [11] 1267 	mul
   3CDA 1F 02         [ 6] 1268 	tfr	d,y	; , tmp77
   3CDC 31 24         [ 5] 1269 	leay	4,y	;  temp.250,, tmp77
   3CDE 32 68         [ 5] 1270 	leas	8,s	; ,,
   3CE0 E6 64         [ 5] 1271 	ldb	4,s	; , D.1576
   3CE2 34 04         [ 6] 1272 	pshs	b	; 
   3CE4 E6 64         [ 5] 1273 	ldb	4,s	; , x
   3CE6 BD 37 55      [ 8] 1274 	jsr	_x3d	; 
   3CE9 E7 6C         [ 5] 1275 	stb	12,s	; , D.1591
   3CEB E6 E8 13      [ 5] 1276 	ldb	19,s	; , y
   3CEE 34 04         [ 6] 1277 	pshs	b	; 
   3CF0 E6 67         [ 5] 1278 	ldb	7,s	; , D.1577
   3CF2 BD 37 55      [ 8] 1279 	jsr	_x3d	; 
   3CF5 E7 62         [ 5] 1280 	stb	2,s	; , D.1592
   3CF7 1F 30         [ 6] 1281 	tfr	u,d	;  tmp51,
   3CF9 30 AB         [ 8] 1282 	leax	d,y	;  tmp79,, temp.250
   3CFB E6 6D         [ 5] 1283 	ldb	13,s	;  tmp80, D.1591
   3CFD E0 62         [ 5] 1284 	subb	2,s	;  tmp80, D.1592
   3CFF E7 84         [ 4] 1285 	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
                           1286 ;----- asm -----
                           1287 ;  525 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1288 	; #ENR#[391]    checkHalfling();
                           1289 ;  0 "" 2
                           1290 ;--- end asm ---
   3D01 BD 37 9A      [ 8] 1291 	jsr	_checkHalfling	; 
                           1292 ;----- asm -----
                           1293 ;  528 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1294 	; #ENR#[393]    lineCount++;
                           1295 ;  0 "" 2
                           1296 ;--- end asm ---
   3D04 7C C8 80      [ 7] 1297 	inc	_lineCount	;  lineCount
   3D07 32 6E         [ 5] 1298 	leas	14,s	; ,,
   3D09 35 E0         [ 8] 1299 	puls	y,u,pc	; 
                           1300 	.globl _initSwatches
   3D0B                    1301 _initSwatches:
   3D0B 34 60         [ 7] 1302 	pshs	y,u	; 
   3D0D 32 7E         [ 5] 1303 	leas	-2,s	; ,,
                           1304 ;----- asm -----
                           1305 ;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1306 	; #ENR#[467]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
                           1307 ;  0 "" 2
                           1308 ;--- end asm ---
   3D0F 8E C8 F6      [ 3] 1309 	ldx	#_swatchesOn	;  ivtmp.285,
   3D12                    1310 L74:
                           1311 ;----- asm -----
                           1312 ;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1313 	; #ENR#[468]        swatchesOn[i] = 0;
                           1314 ;  0 "" 2
                           1315 ;--- end asm ---
   3D12 6F 80         [ 8] 1316 	clr	,x+	;  swatchesOn
   3D14 8C C9 09      [ 4] 1317 	cmpx	#_swatchesOn+19	;cmphi:	;  ivtmp.285,
   3D17 26 F9         [ 3] 1318 	bne	L74	; 
                           1319 ;----- asm -----
                           1320 ;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1321 	; #ENR#[471]    long int index;
                           1322 ;  0 "" 2
                           1323 ;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1324 	; #ENR#[472]    int8_t x = 0;
                           1325 ;  0 "" 2
                           1326 ;  651 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1327 	; #ENR#[473]    int8_t y = 0;
                           1328 ;  0 "" 2
                           1329 ;  653 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1330 	; #ENR#[474]    const char* geometry = level->geometry;
                           1331 ;  0 "" 2
                           1332 ;  655 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1333 	; #ENR#[475]    for (y = 0; y < LEVEL_HEIGHT; y++) {
                           1334 ;  0 "" 2
                           1335 ;--- end asm ---
   3D19 10 AE 9F C8 F4[11] 1336 	ldy	[_level]	;  ivtmp.277, <variable>.geometry
   3D1E 6F 61         [ 7] 1337 	clr	1,s	;  y
   3D20                    1338 L78:
                           1339 ;----- asm -----
                           1340 ;  657 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1341 	; #ENR#[476]        for (x = 0; x < LEVEL_WIDTH; x++) {
                           1342 ;  0 "" 2
                           1343 ;--- end asm ---
   3D20 33 A4         [ 4] 1344 	leau	,y	;  ivtmp.286, ivtmp.277
   3D22 6F E4         [ 6] 1345 	clr	,s	;  x
   3D24                    1346 L77:
                           1347 ;----- asm -----
                           1348 ;  659 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1349 	; #ENR#[477]            index = (long int) y*LEVEL_WIDTH + (long int)x;
                           1350 ;  0 "" 2
                           1351 ;  661 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1352 	; #ENR#[478]            char c0 = geometry[index];
                           1353 ;  0 "" 2
                           1354 ;--- end asm ---
   3D24 E6 C4         [ 4] 1355 	ldb	,u	;  c0,* ivtmp.286
                           1356 ;----- asm -----
                           1357 ;  663 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1358 	; #ENR#[479]            if (c0 == 'k' || c0 == 'q') {
                           1359 ;  0 "" 2
                           1360 ;--- end asm ---
   3D26 C1 6B         [ 2] 1361 	cmpb	#107	;cmpqi:	;  c0,
   3D28 27 04         [ 3] 1362 	beq	L75	; 
   3D2A C1 71         [ 2] 1363 	cmpb	#113	;cmpqi:	;  c0,
   3D2C 26 0F         [ 3] 1364 	bne	L76	; 
   3D2E                    1365 L75:
                           1366 ;----- asm -----
                           1367 ;  665 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1368 	; #ENR#[480]                setSwatchField(x, y, 1);
                           1369 ;  0 "" 2
                           1370 ;--- end asm ---
   3D2E C6 01         [ 2] 1371 	ldb	#1	; ,
   3D30 E7 E2         [ 6] 1372 	stb	,-s	; ,
   3D32 E6 62         [ 5] 1373 	ldb	2,s	; , y
   3D34 34 04         [ 6] 1374 	pshs	b	; 
   3D36 E6 62         [ 5] 1375 	ldb	2,s	; , x
   3D38 BD 36 A5      [ 8] 1376 	jsr	_setSwatchField	; 
   3D3B 32 62         [ 5] 1377 	leas	2,s	; ,,
   3D3D                    1378 L76:
   3D3D 6C E4         [ 6] 1379 	inc	,s	;  x
   3D3F 33 41         [ 5] 1380 	leau	1,u	;  ivtmp.286,, ivtmp.286
   3D41 E6 E4         [ 4] 1381 	ldb	,s	; , x
   3D43 C1 0A         [ 2] 1382 	cmpb	#10	;cmpqi:	; ,
   3D45 26 DD         [ 3] 1383 	bne	L77	; 
   3D47 6C 61         [ 7] 1384 	inc	1,s	;  y
   3D49 31 2A         [ 5] 1385 	leay	10,y	;  ivtmp.277,, ivtmp.277
   3D4B E6 61         [ 5] 1386 	ldb	1,s	; , y
   3D4D C1 0F         [ 2] 1387 	cmpb	#15	;cmpqi:	; ,
   3D4F 10 26 FF CD   [ 6] 1388 	lbne	L78	; 
   3D53 32 62         [ 5] 1389 	leas	2,s	; ,,
   3D55 35 E0         [ 8] 1390 	puls	y,u,pc	; 
   3D57                    1391 LC0:
   3D57 54                 1392 	.byte	0x54
   3D58 4F                 1393 	.byte	0x4F
   3D59 4F                 1394 	.byte	0x4F
   3D5A 20                 1395 	.byte	0x20
   3D5B 4D                 1396 	.byte	0x4D
   3D5C 41                 1397 	.byte	0x41
   3D5D 4E                 1398 	.byte	0x4E
   3D5E 59                 1399 	.byte	0x59
   3D5F 20                 1400 	.byte	0x20
   3D60 4C                 1401 	.byte	0x4C
   3D61 49                 1402 	.byte	0x49
   3D62 4E                 1403 	.byte	0x4E
   3D63 45                 1404 	.byte	0x45
   3D64 53                 1405 	.byte	0x53
   3D65 80                 1406 	.byte	0x80
   3D66 00                 1407 	.byte	0x00
                           1408 	.globl _addSplit
   3D67                    1409 _addSplit:
   3D67 34 60         [ 7] 1410 	pshs	y,u	; 
   3D69 32 7A         [ 5] 1411 	leas	-6,s	; ,,
   3D6B E7 61         [ 5] 1412 	stb	1,s	;  x0, x0
                           1413 ;----- asm -----
                           1414 ;  457 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1415 	; #ENR#[349]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0) + 3;
                           1416 ;  0 "" 2
                           1417 ;--- end asm ---
   3D6D F6 C8 80      [ 5] 1418 	ldb	_lineCount	; , lineCount
   3D70 86 05         [ 2] 1419 	lda	#5	;umulqihi3	; 
   3D72 3D            [11] 1420 	mul
   3D73 1F 02         [ 6] 1421 	tfr	d,y	; , D.1528
   3D75 E6 6C         [ 5] 1422 	ldb	12,s	; , y0
   3D77 34 04         [ 6] 1423 	pshs	b	; 
   3D79 6F E2         [ 8] 1424 	clr	,-s	; 
   3D7B E6 63         [ 5] 1425 	ldb	3,s	; , x0
   3D7D BD 37 76      [ 8] 1426 	jsr	_y3d	; 
   3D80 CE C9 09      [ 3] 1427 	ldu	#_lineYX_yx_s_dy_dx	;  tmp41,
   3D83 CB 03         [ 2] 1428 	addb	#3	;  D.1529,
   3D85 E7 A9 C9 09   [ 8] 1429 	stb	_lineYX_yx_s_dy_dx,y	;  D.1529, lineYX_yx_s_dy_dx
                           1430 ;----- asm -----
                           1431 ;  459 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1432 	; #ENR#[350]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0) + 6;
                           1433 ;  0 "" 2
                           1434 ;--- end asm ---
   3D89 F6 C8 80      [ 5] 1435 	ldb	_lineCount	; , lineCount
   3D8C 86 05         [ 2] 1436 	lda	#5	;umulqihi3	; 
   3D8E 3D            [11] 1437 	mul
   3D8F 1F 02         [ 6] 1438 	tfr	d,y	; , tmp43
   3D91 31 21         [ 5] 1439 	leay	1,y	;  D.1531,, tmp43
   3D93 E6 6E         [ 5] 1440 	ldb	14,s	; , y0
   3D95 34 04         [ 6] 1441 	pshs	b	; 
   3D97 E6 64         [ 5] 1442 	ldb	4,s	; , x0
   3D99 BD 37 55      [ 8] 1443 	jsr	_x3d	; 
   3D9C E7 63         [ 5] 1444 	stb	3,s	; , D.1532
   3D9E 1F 30         [ 6] 1445 	tfr	u,d	;  tmp41,
   3DA0 30 AB         [ 8] 1446 	leax	d,y	;  tmp45,, D.1531
   3DA2 E6 63         [ 5] 1447 	ldb	3,s	; , D.1532
   3DA4 CB 06         [ 2] 1448 	addb	#6	; ,
   3DA6 E7 84         [ 4] 1449 	stb	,x	; , lineYX_yx_s_dy_dx
                           1450 ;----- asm -----
                           1451 ;  461 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1452 	; #ENR#[351]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x0, 0, y0 + 1)+0- (y3d(x0, 0, y0)+3);
                           1453 ;  0 "" 2
                           1454 ;--- end asm ---
   3DA8 F6 C8 80      [ 5] 1455 	ldb	_lineCount	; , lineCount
   3DAB 86 05         [ 2] 1456 	lda	#5	;umulqihi3	; 
   3DAD 3D            [11] 1457 	mul
   3DAE 1F 02         [ 6] 1458 	tfr	d,y	; , tmp46
   3DB0 31 23         [ 5] 1459 	leay	3,y	;  D.1534,, tmp46
   3DB2 E6 6F         [ 5] 1460 	ldb	15,s	; , y0
   3DB4 5C            [ 2] 1461 	incb	; 
   3DB5 E7 65         [ 5] 1462 	stb	5,s	; , D.1535
   3DB7 34 04         [ 6] 1463 	pshs	b	; 
   3DB9 6F E2         [ 8] 1464 	clr	,-s	; 
   3DBB E6 66         [ 5] 1465 	ldb	6,s	; , x0
   3DBD BD 37 76      [ 8] 1466 	jsr	_y3d	; 
   3DC0 E7 68         [ 5] 1467 	stb	8,s	; , D.1536
   3DC2 E6 E8 11      [ 5] 1468 	ldb	17,s	; , y0
   3DC5 34 04         [ 6] 1469 	pshs	b	; 
   3DC7 6F E2         [ 8] 1470 	clr	,-s	; 
   3DC9 E6 68         [ 5] 1471 	ldb	8,s	; , x0
   3DCB BD 37 76      [ 8] 1472 	jsr	_y3d	; 
   3DCE E7 6B         [ 5] 1473 	stb	11,s	; , D.1537
   3DD0 1F 30         [ 6] 1474 	tfr	u,d	;  tmp41,
   3DD2 30 AB         [ 8] 1475 	leax	d,y	;  tmp48,, D.1534
   3DD4 E6 6A         [ 5] 1476 	ldb	10,s	;  tmp49, D.1536
   3DD6 CB FD         [ 2] 1477 	addb	#-3	;  tmp49,
   3DD8 E0 6B         [ 5] 1478 	subb	11,s	;  tmp50, D.1537
   3DDA E7 84         [ 4] 1479 	stb	,x	;  tmp50, lineYX_yx_s_dy_dx
                           1480 ;----- asm -----
                           1481 ;  463 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1482 	; #ENR#[352]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x0, y0 + 1)+8- (x3d(x0, y0)+6);
                           1483 ;  0 "" 2
                           1484 ;--- end asm ---
   3DDC F6 C8 80      [ 5] 1485 	ldb	_lineCount	; , lineCount
   3DDF 86 05         [ 2] 1486 	lda	#5	;umulqihi3	; 
   3DE1 3D            [11] 1487 	mul
   3DE2 1F 02         [ 6] 1488 	tfr	d,y	; , tmp51
   3DE4 31 24         [ 5] 1489 	leay	4,y	;  D.1540,, tmp51
   3DE6 E6 69         [ 5] 1490 	ldb	9,s	; , D.1535
   3DE8 34 04         [ 6] 1491 	pshs	b	; 
   3DEA E6 69         [ 5] 1492 	ldb	9,s	; , x0
   3DEC BD 37 55      [ 8] 1493 	jsr	_x3d	; 
   3DEF E7 6D         [ 5] 1494 	stb	13,s	; , D.1541
   3DF1 32 68         [ 5] 1495 	leas	8,s	; ,,
   3DF3 E6 6C         [ 5] 1496 	ldb	12,s	; , y0
   3DF5 34 04         [ 6] 1497 	pshs	b	; 
   3DF7 E6 62         [ 5] 1498 	ldb	2,s	; , x0
   3DF9 BD 37 55      [ 8] 1499 	jsr	_x3d	; 
   3DFC E7 61         [ 5] 1500 	stb	1,s	; , D.1543
   3DFE 1F 30         [ 6] 1501 	tfr	u,d	;  tmp41,
   3E00 30 AB         [ 8] 1502 	leax	d,y	;  tmp53,, D.1540
   3E02 E6 66         [ 5] 1503 	ldb	6,s	;  tmp55, D.1541
   3E04 E0 61         [ 5] 1504 	subb	1,s	;  tmp55, D.1543
   3E06 CB 02         [ 2] 1505 	addb	#2	;  tmp55,
   3E08 E7 84         [ 4] 1506 	stb	,x	;  tmp55, lineYX_yx_s_dy_dx
                           1507 ;----- asm -----
                           1508 ;  466 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1509 	; #ENR#[354]    checkHalfling();
                           1510 ;  0 "" 2
                           1511 ;--- end asm ---
   3E0A BD 37 9A      [ 8] 1512 	jsr	_checkHalfling	; 
                           1513 ;----- asm -----
                           1514 ;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1515 	; #ENR#[355]    lineCount++;
                           1516 ;  0 "" 2
                           1517 ;--- end asm ---
   3E0D F6 C8 80      [ 5] 1518 	ldb	_lineCount	;  lineCount.32, lineCount
   3E10 5C            [ 2] 1519 	incb	;  lineCount.32
   3E11 F7 C8 80      [ 5] 1520 	stb	_lineCount	;  lineCount.32, lineCount
                           1521 ;----- asm -----
                           1522 ;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1523 	; #ENR#[356]    if (lineCount >= MAX_LINES) {
                           1524 ;  0 "" 2
                           1525 ;--- end asm ---
   3E14 32 61         [ 5] 1526 	leas	1,s	; ,,
   3E16 C1 6D         [ 2] 1527 	cmpb	#109	;cmpqi:	;  lineCount.32,
   3E18 23 06         [ 3] 1528 	bls	L85	; 
                           1529 ;----- asm -----
                           1530 ;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1531 	; #ENR#[357]        runtimeError("TOO MANY LINES�");
                           1532 ;  0 "" 2
                           1533 ;--- end asm ---
   3E1A 8E 3D 57      [ 3] 1534 	ldx	#LC0	; ,
   3E1D BD 4D 9A      [ 8] 1535 	jsr	_runtimeError	; 
   3E20                    1536 L85:
   3E20 32 66         [ 5] 1537 	leas	6,s	; ,,
   3E22 35 E0         [ 8] 1538 	puls	y,u,pc	; 
                           1539 	.globl _addLineImpl
   3E24                    1540 _addLineImpl:
   3E24 34 60         [ 7] 1541 	pshs	y,u	; 
   3E26 32 7A         [ 5] 1542 	leas	-6,s	; ,,
   3E28 E7 61         [ 5] 1543 	stb	1,s	;  x0, x0
                           1544 ;----- asm -----
                           1545 ;  420 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1546 	; #ENR#[325]    if (half) 
                           1547 ;  0 "" 2
                           1548 ;--- end asm ---
   3E2A 6D 6F         [ 7] 1549 	tst	15,s	;  half
   3E2C 10 27 00 A1   [ 6] 1550 	lbeq	L87	; 
                           1551 ;----- asm -----
                           1552 ;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1553 	; #ENR#[327]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0)+4;
                           1554 ;  0 "" 2
                           1555 ;--- end asm ---
   3E30 F6 C8 80      [ 5] 1556 	ldb	_lineCount	; , lineCount
   3E33 86 05         [ 2] 1557 	lda	#5	;umulqihi3	; 
   3E35 3D            [11] 1558 	mul
   3E36 1F 02         [ 6] 1559 	tfr	d,y	; , D.1495
   3E38 E6 6C         [ 5] 1560 	ldb	12,s	; , y0
   3E3A 34 04         [ 6] 1561 	pshs	b	; 
   3E3C 6F E2         [ 8] 1562 	clr	,-s	; 
   3E3E E6 63         [ 5] 1563 	ldb	3,s	; , x0
   3E40 BD 37 76      [ 8] 1564 	jsr	_y3d	; 
   3E43 CE C9 09      [ 3] 1565 	ldu	#_lineYX_yx_s_dy_dx	;  tmp53,
   3E46 CB 04         [ 2] 1566 	addb	#4	;  D.1496,
   3E48 E7 A9 C9 09   [ 8] 1567 	stb	_lineYX_yx_s_dy_dx,y	;  D.1496, lineYX_yx_s_dy_dx
                           1568 ;----- asm -----
                           1569 ;  425 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1570 	; #ENR#[328]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0)  -1;
                           1571 ;  0 "" 2
                           1572 ;--- end asm ---
   3E4C F6 C8 80      [ 5] 1573 	ldb	_lineCount	; , lineCount
   3E4F 86 05         [ 2] 1574 	lda	#5	;umulqihi3	; 
   3E51 3D            [11] 1575 	mul
   3E52 1F 02         [ 6] 1576 	tfr	d,y	; , tmp55
   3E54 31 21         [ 5] 1577 	leay	1,y	;  D.1498,, tmp55
   3E56 E6 6E         [ 5] 1578 	ldb	14,s	; , y0
   3E58 34 04         [ 6] 1579 	pshs	b	; 
   3E5A E6 64         [ 5] 1580 	ldb	4,s	; , x0
   3E5C BD 37 55      [ 8] 1581 	jsr	_x3d	; 
   3E5F E7 63         [ 5] 1582 	stb	3,s	; , D.1499
   3E61 1F 30         [ 6] 1583 	tfr	u,d	;  tmp53,
   3E63 30 AB         [ 8] 1584 	leax	d,y	;  tmp57,, D.1498
   3E65 E6 63         [ 5] 1585 	ldb	3,s	; , D.1499
   3E67 5A            [ 2] 1586 	decb	; 
   3E68 E7 84         [ 4] 1587 	stb	,x	; , lineYX_yx_s_dy_dx
                           1588 ;----- asm -----
                           1589 ;  427 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1590 	; #ENR#[329]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x1, 0, y1)+3- (y3d(x0, 0, y0)+4);
                           1591 ;  0 "" 2
                           1592 ;--- end asm ---
   3E6A F6 C8 80      [ 5] 1593 	ldb	_lineCount	; , lineCount
   3E6D 86 05         [ 2] 1594 	lda	#5	;umulqihi3	; 
   3E6F 3D            [11] 1595 	mul
   3E70 1F 02         [ 6] 1596 	tfr	d,y	; , tmp58
   3E72 31 23         [ 5] 1597 	leay	3,y	;  D.1501,, tmp58
   3E74 E6 E8 11      [ 5] 1598 	ldb	17,s	; , y1
   3E77 34 04         [ 6] 1599 	pshs	b	; 
   3E79 6F E2         [ 8] 1600 	clr	,-s	; 
   3E7B E6 E8 12      [ 5] 1601 	ldb	18,s	; , x1
   3E7E BD 37 76      [ 8] 1602 	jsr	_y3d	; 
   3E81 E7 67         [ 5] 1603 	stb	7,s	; , D.1502
   3E83 E6 E8 11      [ 5] 1604 	ldb	17,s	; , y0
   3E86 34 04         [ 6] 1605 	pshs	b	; 
   3E88 6F E2         [ 8] 1606 	clr	,-s	; 
   3E8A E6 68         [ 5] 1607 	ldb	8,s	; , x0
   3E8C BD 37 76      [ 8] 1608 	jsr	_y3d	; 
   3E8F E7 67         [ 5] 1609 	stb	7,s	; , D.1504
   3E91 1F 30         [ 6] 1610 	tfr	u,d	;  tmp53,
   3E93 30 AB         [ 8] 1611 	leax	d,y	;  tmp60,, D.1501
   3E95 E6 67         [ 5] 1612 	ldb	7,s	;  tmp62, D.1504
   3E97 53            [ 2] 1613 	comb	;  tmp62
   3E98 EB 69         [ 5] 1614 	addb	9,s	;  tmp62, D.1502
   3E9A E7 84         [ 4] 1615 	stb	,x	;  tmp62, lineYX_yx_s_dy_dx
                           1616 ;----- asm -----
                           1617 ;  429 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1618 	; #ENR#[330]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x1, y1)-6- (x3d(x0, y0)-1);
                           1619 ;  0 "" 2
                           1620 ;--- end asm ---
   3E9C F6 C8 80      [ 5] 1621 	ldb	_lineCount	; , lineCount
   3E9F 86 05         [ 2] 1622 	lda	#5	;umulqihi3	; 
   3EA1 3D            [11] 1623 	mul
   3EA2 1F 02         [ 6] 1624 	tfr	d,y	; , tmp63
   3EA4 31 24         [ 5] 1625 	leay	4,y	;  D.1507,, tmp63
   3EA6 E6 E8 15      [ 5] 1626 	ldb	21,s	; , y1
   3EA9 34 04         [ 6] 1627 	pshs	b	; 
   3EAB E6 E8 15      [ 5] 1628 	ldb	21,s	; , x1
   3EAE BD 37 55      [ 8] 1629 	jsr	_x3d	; 
   3EB1 E7 6B         [ 5] 1630 	stb	11,s	; , D.1508
   3EB3 32 68         [ 5] 1631 	leas	8,s	; ,,
   3EB5 E6 6C         [ 5] 1632 	ldb	12,s	; , y0
   3EB7 34 04         [ 6] 1633 	pshs	b	; 
   3EB9 E6 62         [ 5] 1634 	ldb	2,s	; , x0
   3EBB BD 37 55      [ 8] 1635 	jsr	_x3d	; 
   3EBE E7 61         [ 5] 1636 	stb	1,s	; , D.1510
   3EC0 1F 30         [ 6] 1637 	tfr	u,d	;  tmp53,
   3EC2 30 AB         [ 8] 1638 	leax	d,y	;  tmp65,, D.1507
   3EC4 E6 64         [ 5] 1639 	ldb	4,s	;  tmp67, D.1508
   3EC6 E0 61         [ 5] 1640 	subb	1,s	;  tmp67, D.1510
   3EC8 CB FB         [ 2] 1641 	addb	#-5	;  tmp67,
   3ECA E7 84         [ 4] 1642 	stb	,x	;  tmp67, lineYX_yx_s_dy_dx
   3ECC 32 61         [ 5] 1643 	leas	1,s	; ,,
   3ECE 7E 3F 69      [ 4] 1644 	jmp	L88	; 
   3ED1                    1645 L87:
                           1646 ;----- asm -----
                           1647 ;  434 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1648 	; #ENR#[334]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0);
                           1649 ;  0 "" 2
                           1650 ;--- end asm ---
   3ED1 F6 C8 80      [ 5] 1651 	ldb	_lineCount	; , lineCount
   3ED4 86 05         [ 2] 1652 	lda	#5	;umulqihi3	; 
   3ED6 3D            [11] 1653 	mul
   3ED7 1F 02         [ 6] 1654 	tfr	d,y	; , temp.318
   3ED9 E6 6C         [ 5] 1655 	ldb	12,s	; , y0
   3EDB 34 04         [ 6] 1656 	pshs	b	; 
   3EDD 6F E2         [ 8] 1657 	clr	,-s	; 
   3EDF E6 63         [ 5] 1658 	ldb	3,s	; , x0
   3EE1 BD 37 76      [ 8] 1659 	jsr	_y3d	; 
   3EE4 CE C9 09      [ 3] 1660 	ldu	#_lineYX_yx_s_dy_dx	;  tmp68,
   3EE7 E7 A9 C9 09   [ 8] 1661 	stb	_lineYX_yx_s_dy_dx,y	;  D.1513, lineYX_yx_s_dy_dx
                           1662 ;----- asm -----
                           1663 ;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1664 	; #ENR#[335]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0);
                           1665 ;  0 "" 2
                           1666 ;--- end asm ---
   3EEB F6 C8 80      [ 5] 1667 	ldb	_lineCount	; , lineCount
   3EEE 86 05         [ 2] 1668 	lda	#5	;umulqihi3	; 
   3EF0 3D            [11] 1669 	mul
   3EF1 1F 02         [ 6] 1670 	tfr	d,y	; , tmp70
   3EF3 31 21         [ 5] 1671 	leay	1,y	;  temp.322,, tmp70
   3EF5 E6 6E         [ 5] 1672 	ldb	14,s	; , y0
   3EF7 34 04         [ 6] 1673 	pshs	b	; 
   3EF9 E6 64         [ 5] 1674 	ldb	4,s	; , x0
   3EFB BD 37 55      [ 8] 1675 	jsr	_x3d	; 
   3EFE E7 63         [ 5] 1676 	stb	3,s	; , D.1514
   3F00 1F 30         [ 6] 1677 	tfr	u,d	;  tmp68,
   3F02 30 AB         [ 8] 1678 	leax	d,y	;  tmp72,, temp.322
   3F04 E6 63         [ 5] 1679 	ldb	3,s	; , D.1514
   3F06 E7 84         [ 4] 1680 	stb	,x	; , lineYX_yx_s_dy_dx
                           1681 ;----- asm -----
                           1682 ;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1683 	; #ENR#[336]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x1, 0, y1)- y3d(x0, 0, y0);
                           1684 ;  0 "" 2
                           1685 ;--- end asm ---
   3F08 F6 C8 80      [ 5] 1686 	ldb	_lineCount	; , lineCount
   3F0B 86 05         [ 2] 1687 	lda	#5	;umulqihi3	; 
   3F0D 3D            [11] 1688 	mul
   3F0E 1F 02         [ 6] 1689 	tfr	d,y	; , tmp73
   3F10 31 23         [ 5] 1690 	leay	3,y	;  temp.326,, tmp73
   3F12 E6 E8 11      [ 5] 1691 	ldb	17,s	; , y1
   3F15 34 04         [ 6] 1692 	pshs	b	; 
   3F17 6F E2         [ 8] 1693 	clr	,-s	; 
   3F19 E6 E8 12      [ 5] 1694 	ldb	18,s	; , x1
   3F1C BD 37 76      [ 8] 1695 	jsr	_y3d	; 
   3F1F E7 69         [ 5] 1696 	stb	9,s	; , D.1515
   3F21 E6 E8 11      [ 5] 1697 	ldb	17,s	; , y0
   3F24 34 04         [ 6] 1698 	pshs	b	; 
   3F26 6F E2         [ 8] 1699 	clr	,-s	; 
   3F28 E6 68         [ 5] 1700 	ldb	8,s	; , x0
   3F2A BD 37 76      [ 8] 1701 	jsr	_y3d	; 
   3F2D E7 67         [ 5] 1702 	stb	7,s	; , D.1516
   3F2F 1F 30         [ 6] 1703 	tfr	u,d	;  tmp68,
   3F31 30 AB         [ 8] 1704 	leax	d,y	;  tmp75,, temp.326
   3F33 E6 6B         [ 5] 1705 	ldb	11,s	;  tmp76, D.1515
   3F35 E0 67         [ 5] 1706 	subb	7,s	;  tmp76, D.1516
   3F37 E7 84         [ 4] 1707 	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
                           1708 ;----- asm -----
                           1709 ;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1710 	; #ENR#[337]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x1, y1)- x3d(x0, y0);
                           1711 ;  0 "" 2
                           1712 ;--- end asm ---
   3F39 F6 C8 80      [ 5] 1713 	ldb	_lineCount	; , lineCount
   3F3C 86 05         [ 2] 1714 	lda	#5	;umulqihi3	; 
   3F3E 3D            [11] 1715 	mul
   3F3F 1F 02         [ 6] 1716 	tfr	d,y	; , tmp77
   3F41 31 24         [ 5] 1717 	leay	4,y	;  temp.330,, tmp77
   3F43 E6 E8 15      [ 5] 1718 	ldb	21,s	; , y1
   3F46 34 04         [ 6] 1719 	pshs	b	; 
   3F48 E6 E8 15      [ 5] 1720 	ldb	21,s	; , x1
   3F4B BD 37 55      [ 8] 1721 	jsr	_x3d	; 
   3F4E E7 6D         [ 5] 1722 	stb	13,s	; , D.1518
   3F50 32 68         [ 5] 1723 	leas	8,s	; ,,
   3F52 E6 6C         [ 5] 1724 	ldb	12,s	; , y0
   3F54 34 04         [ 6] 1725 	pshs	b	; 
   3F56 E6 62         [ 5] 1726 	ldb	2,s	; , x0
   3F58 BD 37 55      [ 8] 1727 	jsr	_x3d	; 
   3F5B E7 61         [ 5] 1728 	stb	1,s	; , D.1519
   3F5D 1F 30         [ 6] 1729 	tfr	u,d	;  tmp68,
   3F5F 30 AB         [ 8] 1730 	leax	d,y	;  tmp79,, temp.330
   3F61 E6 66         [ 5] 1731 	ldb	6,s	;  tmp80, D.1518
   3F63 E0 61         [ 5] 1732 	subb	1,s	;  tmp80, D.1519
   3F65 E7 84         [ 4] 1733 	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
   3F67 32 61         [ 5] 1734 	leas	1,s	; ,,
   3F69                    1735 L88:
                           1736 ;----- asm -----
                           1737 ;  443 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1738 	; #ENR#[339]    checkHalfling();
                           1739 ;  0 "" 2
                           1740 ;--- end asm ---
   3F69 BD 37 9A      [ 8] 1741 	jsr	_checkHalfling	; 
                           1742 ;----- asm -----
                           1743 ;  446 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1744 	; #ENR#[341]    lineCount++;
                           1745 ;  0 "" 2
                           1746 ;--- end asm ---
   3F6C F6 C8 80      [ 5] 1747 	ldb	_lineCount	;  lineCount.30, lineCount
   3F6F 5C            [ 2] 1748 	incb	;  lineCount.30
   3F70 F7 C8 80      [ 5] 1749 	stb	_lineCount	;  lineCount.30, lineCount
                           1750 ;----- asm -----
                           1751 ;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1752 	; #ENR#[342]    if (lineCount >= MAX_LINES) {
                           1753 ;  0 "" 2
                           1754 ;--- end asm ---
   3F73 C1 6D         [ 2] 1755 	cmpb	#109	;cmpqi:	;  lineCount.30,
   3F75 23 06         [ 3] 1756 	bls	L90	; 
                           1757 ;----- asm -----
                           1758 ;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1759 	; #ENR#[343]        runtimeError("TOO MANY LINES�");
                           1760 ;  0 "" 2
                           1761 ;--- end asm ---
   3F77 8E 3D 57      [ 3] 1762 	ldx	#LC0	; ,
   3F7A BD 4D 9A      [ 8] 1763 	jsr	_runtimeError	; 
   3F7D                    1764 L90:
   3F7D 32 66         [ 5] 1765 	leas	6,s	; ,,
   3F7F 35 E0         [ 8] 1766 	puls	y,u,pc	; 
                           1767 	.globl _addLine
   3F81                    1768 _addLine:
   3F81 32 7B         [ 5] 1769 	leas	-5,s	; ,,
   3F83 E7 E4         [ 4] 1770 	stb	,s	;  x0, x0
                           1771 ;----- asm -----
                           1772 ;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1773 	; #ENR#[363]    int test = 8; // 9 is ok, 10 is too wide!
                           1774 ;  0 "" 2
                           1775 ;  481 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1776 	; #ENR#[364]    while (x1 - x0 > test) {
                           1777 ;  0 "" 2
                           1778 ;--- end asm ---
   3F85 E6 68         [ 5] 1779 	ldb	8,s	;  D.1562, x1
   3F87 E0 E4         [ 4] 1780 	subb	,s	;  D.1562, x0
   3F89 C1 08         [ 2] 1781 	cmpb	#8	;cmpqi:	;  D.1562,
   3F8B 2F 33         [ 3] 1782 	ble	L92	; 
   3F8D E7 62         [ 5] 1783 	stb	2,s	;  D.1562, ivtmp.352
   3F8F                    1784 L94:
                           1785 ;----- asm -----
                           1786 ;  483 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1787 	; #ENR#[365]        addLineImpl(x0, y0, x0 + test, y1, half);
                           1788 ;  0 "" 2
                           1789 ;--- end asm ---
   3F8F E6 E4         [ 4] 1790 	ldb	,s	; , x0
   3F91 CB 08         [ 2] 1791 	addb	#8	; ,
   3F93 E7 63         [ 5] 1792 	stb	3,s	; , x0.353
   3F95 E6 6A         [ 5] 1793 	ldb	10,s	; , half
   3F97 34 04         [ 6] 1794 	pshs	b	; 
   3F99 E6 6A         [ 5] 1795 	ldb	10,s	; , y1
   3F9B 34 04         [ 6] 1796 	pshs	b	; 
   3F9D E6 65         [ 5] 1797 	ldb	5,s	; , x0.353
   3F9F 34 04         [ 6] 1798 	pshs	b	; 
   3FA1 E6 6A         [ 5] 1799 	ldb	10,s	; , y0
   3FA3 34 04         [ 6] 1800 	pshs	b	; 
   3FA5 E6 64         [ 5] 1801 	ldb	4,s	; , x0
   3FA7 BD 3E 24      [ 8] 1802 	jsr	_addLineImpl	; 
                           1803 ;----- asm -----
                           1804 ;  485 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1805 	; #ENR#[366]        x0 += test;
                           1806 ;  0 "" 2
                           1807 ;--- end asm ---
   3FAA E6 66         [ 5] 1808 	ldb	6,s	; , ivtmp.352
   3FAC CB F8         [ 2] 1809 	addb	#-8	; ,
   3FAE E7 66         [ 5] 1810 	stb	6,s	; , ivtmp.352
   3FB0 32 64         [ 5] 1811 	leas	4,s	; ,,
   3FB2 C1 08         [ 2] 1812 	cmpb	#8	;cmpqi:	; ,
   3FB4 2F 06         [ 3] 1813 	ble	L93	; 
   3FB6 E6 63         [ 5] 1814 	ldb	3,s	; , x0.353
   3FB8 E7 E4         [ 4] 1815 	stb	,s	; , x0
   3FBA 20 D3         [ 3] 1816 	bra	L94	; 
   3FBC                    1817 L93:
   3FBC E6 63         [ 5] 1818 	ldb	3,s	; , x0.353
   3FBE E7 E4         [ 4] 1819 	stb	,s	; , x0
   3FC0                    1820 L92:
                           1821 ;----- asm -----
                           1822 ;  488 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1823 	; #ENR#[368]    while (y1 - y0 > test) {
                           1824 ;  0 "" 2
                           1825 ;--- end asm ---
   3FC0 E6 69         [ 5] 1826 	ldb	9,s	;  D.1564, y1
   3FC2 E0 67         [ 5] 1827 	subb	7,s	;  D.1564, y0
   3FC4 C1 08         [ 2] 1828 	cmpb	#8	;cmpqi:	;  D.1564,
   3FC6 2F 33         [ 3] 1829 	ble	L95	; 
   3FC8 E7 61         [ 5] 1830 	stb	1,s	;  D.1564, ivtmp.344
   3FCA                    1831 L97:
                           1832 ;----- asm -----
                           1833 ;  490 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1834 	; #ENR#[369]        addLineImpl(x0, y0, x1, y0 + test, half);
                           1835 ;  0 "" 2
                           1836 ;--- end asm ---
   3FCA E6 67         [ 5] 1837 	ldb	7,s	; , y0
   3FCC CB 08         [ 2] 1838 	addb	#8	; ,
   3FCE E7 64         [ 5] 1839 	stb	4,s	; , y0.354
   3FD0 E6 6A         [ 5] 1840 	ldb	10,s	; , half
   3FD2 34 04         [ 6] 1841 	pshs	b	; 
   3FD4 E6 65         [ 5] 1842 	ldb	5,s	; , y0.354
   3FD6 34 04         [ 6] 1843 	pshs	b	; 
   3FD8 E6 6A         [ 5] 1844 	ldb	10,s	; , x1
   3FDA 34 04         [ 6] 1845 	pshs	b	; 
   3FDC E6 6A         [ 5] 1846 	ldb	10,s	; , y0
   3FDE 34 04         [ 6] 1847 	pshs	b	; 
   3FE0 E6 64         [ 5] 1848 	ldb	4,s	; , x0
   3FE2 BD 3E 24      [ 8] 1849 	jsr	_addLineImpl	; 
                           1850 ;----- asm -----
                           1851 ;  492 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1852 	; #ENR#[370]        y0 += test;
                           1853 ;  0 "" 2
                           1854 ;--- end asm ---
   3FE5 E6 65         [ 5] 1855 	ldb	5,s	; , ivtmp.344
   3FE7 CB F8         [ 2] 1856 	addb	#-8	; ,
   3FE9 E7 65         [ 5] 1857 	stb	5,s	; , ivtmp.344
   3FEB 32 64         [ 5] 1858 	leas	4,s	; ,,
   3FED C1 08         [ 2] 1859 	cmpb	#8	;cmpqi:	; ,
   3FEF 2F 06         [ 3] 1860 	ble	L96	; 
   3FF1 E6 64         [ 5] 1861 	ldb	4,s	; , y0.354
   3FF3 E7 67         [ 5] 1862 	stb	7,s	; , y0
   3FF5 20 D3         [ 3] 1863 	bra	L97	; 
   3FF7                    1864 L96:
   3FF7 E6 64         [ 5] 1865 	ldb	4,s	; , y0.354
   3FF9 E7 67         [ 5] 1866 	stb	7,s	; , y0
   3FFB                    1867 L95:
                           1868 ;----- asm -----
                           1869 ;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1870 	; #ENR#[372]    addLineImpl(x0, y0, x1, y1, half);
                           1871 ;  0 "" 2
                           1872 ;--- end asm ---
   3FFB E6 6A         [ 5] 1873 	ldb	10,s	; , half
   3FFD 34 04         [ 6] 1874 	pshs	b	; 
   3FFF E6 6A         [ 5] 1875 	ldb	10,s	; , y1
   4001 34 04         [ 6] 1876 	pshs	b	; 
   4003 E6 6A         [ 5] 1877 	ldb	10,s	; , x1
   4005 34 04         [ 6] 1878 	pshs	b	; 
   4007 E6 6A         [ 5] 1879 	ldb	10,s	; , y0
   4009 34 04         [ 6] 1880 	pshs	b	; 
   400B E6 64         [ 5] 1881 	ldb	4,s	; , x0
   400D BD 3E 24      [ 8] 1882 	jsr	_addLineImpl	; 
   4010 32 69         [ 5] 1883 	leas	9,s	; ,,
   4012 39            [ 5] 1884 	rts
                           1885 	.globl _setupY
   4013                    1886 _setupY:
   4013 32 7B         [ 5] 1887 	leas	-5,s	; ,,
                           1888 ;----- asm -----
                           1889 ;  608 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1890 	; #ENR#[446]    int8_t x = 0;
                           1891 ;  0 "" 2
                           1892 ;  610 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1893 	; #ENR#[447]    int8_t y = 0;
                           1894 ;  0 "" 2
                           1895 ;  612 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1896 	; #ENR#[448]    for (x = -1; x < LEVEL_WIDTH; x++) {
                           1897 ;  0 "" 2
                           1898 ;--- end asm ---
   4015 C6 FF         [ 2] 1899 	ldb	#-1	; ,
   4017 E7 61         [ 5] 1900 	stb	1,s	; , x
   4019                    1901 L105:
                           1902 ;----- asm -----
                           1903 ;  614 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1904 	; #ENR#[449]        int8_t y0 = -1;
                           1905 ;  0 "" 2
                           1906 ;  616 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1907 	; #ENR#[450]        int8_t y1 = -1;
                           1908 ;  0 "" 2
                           1909 ;  618 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1910 	; #ENR#[451]        for (y = 0; y <= LEVEL_HEIGHT; y++) {
                           1911 ;  0 "" 2
                           1912 ;--- end asm ---
   4019 6F 62         [ 7] 1913 	clr	2,s	;  y
   401B C6 FF         [ 2] 1914 	ldb	#-1	; ,
   401D E7 63         [ 5] 1915 	stb	3,s	; , y0
   401F E7 64         [ 5] 1916 	stb	4,s	; , y1
   4021                    1917 L104:
                           1918 ;----- asm -----
                           1919 ;  620 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1920 	; #ENR#[452]            if (isField(x, y) || isField(x + 1, y)) {
                           1921 ;  0 "" 2
                           1922 ;--- end asm ---
   4021 E6 62         [ 5] 1923 	ldb	2,s	; , y
   4023 34 04         [ 6] 1924 	pshs	b	; 
   4025 E6 62         [ 5] 1925 	ldb	2,s	; , x
   4027 BD 36 F6      [ 8] 1926 	jsr	_isField	; 
   402A 32 61         [ 5] 1927 	leas	1,s	; ,,
   402C 5D            [ 2] 1928 	tstb	;  D.1638
   402D 26 13         [ 3] 1929 	bne	L100	; 
   402F E6 61         [ 5] 1930 	ldb	1,s	; , x
   4031 5C            [ 2] 1931 	incb	; 
   4032 E7 E4         [ 4] 1932 	stb	,s	; , D.1639
   4034 E6 62         [ 5] 1933 	ldb	2,s	; , y
   4036 34 04         [ 6] 1934 	pshs	b	; 
   4038 E6 61         [ 5] 1935 	ldb	1,s	; , D.1639
   403A BD 36 F6      [ 8] 1936 	jsr	_isField	; 
   403D 32 61         [ 5] 1937 	leas	1,s	; ,,
   403F 5D            [ 2] 1938 	tstb	;  D.1640
   4040 27 0E         [ 3] 1939 	beq	L101	; 
   4042                    1940 L100:
                           1941 ;----- asm -----
                           1942 ;  622 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1943 	; #ENR#[453]                if (y0 < 0) y0 = y;
                           1944 ;  0 "" 2
                           1945 ;--- end asm ---
   4042 6D 63         [ 7] 1946 	tst	3,s	;  y0
   4044 2C 04         [ 3] 1947 	bge	L102	; 
   4046 E6 62         [ 5] 1948 	ldb	2,s	; , y
   4048 E7 63         [ 5] 1949 	stb	3,s	; , y0
   404A                    1950 L102:
                           1951 ;----- asm -----
                           1952 ;  624 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1953 	; #ENR#[454]                y1 = y;
                           1954 ;  0 "" 2
                           1955 ;--- end asm ---
   404A E6 62         [ 5] 1956 	ldb	2,s	; , y
   404C E7 64         [ 5] 1957 	stb	4,s	; , y1
   404E 20 1E         [ 3] 1958 	bra	L103	; 
   4050                    1959 L101:
                           1960 ;----- asm -----
                           1961 ;  627 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1962 	; #ENR#[456]                if (y0 >= 0) {
                           1963 ;  0 "" 2
                           1964 ;--- end asm ---
   4050 6D 63         [ 7] 1965 	tst	3,s	;  y0
   4052 2D 1A         [ 3] 1966 	blt	L103	; 
                           1967 ;----- asm -----
                           1968 ;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1969 	; #ENR#[457]                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
                           1970 ;  0 "" 2
                           1971 ;--- end asm ---
   4054 6F E2         [ 8] 1972 	clr	,-s	; 
   4056 E6 65         [ 5] 1973 	ldb	5,s	; , y1
   4058 5C            [ 2] 1974 	incb	; 
   4059 34 04         [ 6] 1975 	pshs	b	; 
   405B E6 62         [ 5] 1976 	ldb	2,s	; , D.1639
   405D 34 04         [ 6] 1977 	pshs	b	; 
   405F E6 66         [ 5] 1978 	ldb	6,s	; , y0
   4061 34 04         [ 6] 1979 	pshs	b	; 
   4063 E6 64         [ 5] 1980 	ldb	4,s	; , D.1639
   4065 BD 3F 81      [ 8] 1981 	jsr	_addLine	; 
                           1982 ;----- asm -----
                           1983 ;  631 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1984 	; #ENR#[458]                    y0 = -1;
                           1985 ;  0 "" 2
                           1986 ;--- end asm ---
   4068 C6 FF         [ 2] 1987 	ldb	#-1	; ,
   406A E7 67         [ 5] 1988 	stb	7,s	; , y0
   406C 32 64         [ 5] 1989 	leas	4,s	; ,,
   406E                    1990 L103:
   406E 6C 62         [ 7] 1991 	inc	2,s	;  y
   4070 E6 62         [ 5] 1992 	ldb	2,s	; , y
   4072 C1 10         [ 2] 1993 	cmpb	#16	;cmpqi:	; ,
   4074 10 26 FF A9   [ 6] 1994 	lbne	L104	; 
   4078 6C 61         [ 7] 1995 	inc	1,s	;  x
   407A E6 61         [ 5] 1996 	ldb	1,s	; , x
   407C C1 0A         [ 2] 1997 	cmpb	#10	;cmpqi:	; ,
   407E 10 26 FF 97   [ 6] 1998 	lbne	L105	; 
   4082 32 65         [ 5] 1999 	leas	5,s	; ,,
   4084 39            [ 5] 2000 	rts
                           2001 	.globl _setupX
   4085                    2002 _setupX:
   4085 34 60         [ 7] 2003 	pshs	y,u	; 
   4087 32 79         [ 5] 2004 	leas	-7,s	; ,,
                           2005 ;----- asm -----
                           2006 ;  541 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2007 	; #ENR#[405]    long int index;
                           2008 ;  0 "" 2
                           2009 ;  543 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2010 	; #ENR#[406]    int8_t x = 0;
                           2011 ;  0 "" 2
                           2012 ;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2013 	; #ENR#[407]    int8_t y = 0;
                           2014 ;  0 "" 2
                           2015 ;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2016 	; #ENR#[408]    const char* geometry = level->geometry;
                           2017 ;  0 "" 2
                           2018 ;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2019 	; #ENR#[409]    for (y = -1; y < LEVEL_HEIGHT; y++) {
                           2020 ;  0 "" 2
                           2021 ;--- end asm ---
   4089 AE 9F C8 F4   [10] 2022 	ldx	[_level]	; , <variable>.geometry
   408D 31 16         [ 5] 2023 	leay	-10,x	;  ivtmp.399,,
   408F 6F 66         [ 7] 2024 	clr	6,s	;  ivtmp.393
   4091                    2025 L122:
   4091 E6 66         [ 5] 2026 	ldb	6,s	; , ivtmp.393
   4093 5A            [ 2] 2027 	decb	; 
   4094 E7 62         [ 5] 2028 	stb	2,s	; , y
                           2029 ;----- asm -----
                           2030 ;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2031 	; #ENR#[410]        int8_t x0 = -1;
                           2032 ;  0 "" 2
                           2033 ;  553 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2034 	; #ENR#[411]        int8_t x1 = -1;
                           2035 ;  0 "" 2
                           2036 ;  555 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2037 	; #ENR#[412]        for (x = 0; x <= LEVEL_WIDTH; x++) {
                           2038 ;  0 "" 2
                           2039 ;--- end asm ---
   4096 33 A4         [ 4] 2040 	leau	,y	;  ivtmp.402, ivtmp.399
   4098 C6 FF         [ 2] 2041 	ldb	#-1	; ,
   409A E7 63         [ 5] 2042 	stb	3,s	; , x0
   409C E7 64         [ 5] 2043 	stb	4,s	; , x1
   409E C6 01         [ 2] 2044 	ldb	#1	; ,
   40A0 E7 65         [ 5] 2045 	stb	5,s	; , ivtmp.391
   40A2                    2046 L121:
   40A2 E6 65         [ 5] 2047 	ldb	5,s	; , ivtmp.391
   40A4 5A            [ 2] 2048 	decb	; 
   40A5 E7 61         [ 5] 2049 	stb	1,s	; , x
                           2050 ;----- asm -----
                           2051 ;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2052 	; #ENR#[413]            char c0 = 0;
                           2053 ;  0 "" 2
                           2054 ;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2055 	; #ENR#[414]            index = (long int) y*LEVEL_WIDTH + (long int)x;
                           2056 ;  0 "" 2
                           2057 ;  561 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2058 	; #ENR#[415]            if (y >= 0 && x < LEVEL_WIDTH) {
                           2059 ;  0 "" 2
                           2060 ;--- end asm ---
   40A7 6D 62         [ 7] 2061 	tst	2,s	;  y
   40A9 2D 08         [ 3] 2062 	blt	L110	; 
   40AB C1 09         [ 2] 2063 	cmpb	#9	;cmpqi:	; ,
   40AD 2E 04         [ 3] 2064 	bgt	L110	; 
                           2065 ;----- asm -----
                           2066 ;  563 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2067 	; #ENR#[416]                c0 = geometry[index];
                           2068 ;  0 "" 2
                           2069 ;--- end asm ---
   40AF E6 C4         [ 4] 2070 	ldb	,u	;  c0,* ivtmp.402
   40B1 20 01         [ 3] 2071 	bra	L111	; 
   40B3                    2072 L110:
   40B3 5F            [ 2] 2073 	clrb	;  c0
   40B4                    2074 L111:
                           2075 ;----- asm -----
                           2076 ;  566 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2077 	; #ENR#[418]            if (c0 == 'e') {
                           2078 ;  0 "" 2
                           2079 ;--- end asm ---
   40B4 C1 65         [ 2] 2080 	cmpb	#101	;cmpqi:	;  c0,
   40B6 26 18         [ 3] 2081 	bne	L112	; 
                           2082 ;----- asm -----
                           2083 ;  568 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2084 	; #ENR#[419]                addTarget(x, y);
                           2085 ;  0 "" 2
                           2086 ;--- end asm ---
   40B8 E6 62         [ 5] 2087 	ldb	2,s	; , y
   40BA 34 04         [ 6] 2088 	pshs	b	; 
   40BC E6 62         [ 5] 2089 	ldb	2,s	; , x
   40BE BD 3B AD      [ 8] 2090 	jsr	_addTarget	; 
                           2091 ;----- asm -----
                           2092 ;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2093 	; #ENR#[420]                endX = x;
                           2094 ;  0 "" 2
                           2095 ;--- end asm ---
   40C1 E6 62         [ 5] 2096 	ldb	2,s	; , x
   40C3 F7 C8 81      [ 5] 2097 	stb	_endX	; , endX
                           2098 ;----- asm -----
                           2099 ;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2100 	; #ENR#[421]                endY = y;
                           2101 ;  0 "" 2
                           2102 ;--- end asm ---
   40C6 E6 63         [ 5] 2103 	ldb	3,s	; , y
   40C8 F7 C8 82      [ 5] 2104 	stb	_endY	; , endY
   40CB 32 61         [ 5] 2105 	leas	1,s	; ,,
   40CD 7E 41 33      [ 4] 2106 	jmp	L113	; 
   40D0                    2107 L112:
   40D0 C1 76         [ 2] 2108 	cmpb	#118	;cmpqi:	;  c0,
   40D2 26 0E         [ 3] 2109 	bne	L114	; 
                           2110 ;----- asm -----
                           2111 ;  575 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2112 	; #ENR#[423]                addSplit(x, y);
                           2113 ;  0 "" 2
                           2114 ;--- end asm ---
   40D4 E6 62         [ 5] 2115 	ldb	2,s	; , y
   40D6 34 04         [ 6] 2116 	pshs	b	; 
   40D8 E6 62         [ 5] 2117 	ldb	2,s	; , x
   40DA BD 3D 67      [ 8] 2118 	jsr	_addSplit	; 
   40DD 32 61         [ 5] 2119 	leas	1,s	; ,,
   40DF 7E 41 33      [ 4] 2120 	jmp	L113	; 
   40E2                    2121 L114:
   40E2 C1 73         [ 2] 2122 	cmpb	#115	;cmpqi:	;  c0,
   40E4 26 17         [ 3] 2123 	bne	L115	; 
                           2124 ;----- asm -----
                           2125 ;  578 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2126 	; #ENR#[425]                addLine(x, y, x + 1, y + 1, 0);
                           2127 ;  0 "" 2
                           2128 ;--- end asm ---
   40E6 6F E2         [ 8] 2129 	clr	,-s	; 
   40E8 E6 67         [ 5] 2130 	ldb	7,s	; , ivtmp.393
   40EA 34 04         [ 6] 2131 	pshs	b	; 
   40EC E6 67         [ 5] 2132 	ldb	7,s	; , ivtmp.391
   40EE 34 04         [ 6] 2133 	pshs	b	; 
   40F0 E6 65         [ 5] 2134 	ldb	5,s	; , y
   40F2 34 04         [ 6] 2135 	pshs	b	; 
   40F4 E6 65         [ 5] 2136 	ldb	5,s	; , x
   40F6 BD 3F 81      [ 8] 2137 	jsr	_addLine	; 
   40F9 32 64         [ 5] 2138 	leas	4,s	; ,,
   40FB 20 36         [ 3] 2139 	bra	L113	; 
   40FD                    2140 L115:
   40FD C1 68         [ 2] 2141 	cmpb	#104	;cmpqi:	;  c0,
   40FF 26 17         [ 3] 2142 	bne	L116	; 
                           2143 ;----- asm -----
                           2144 ;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2145 	; #ENR#[427]                addLine(x + 1, y, x, y + 1, 0);
                           2146 ;  0 "" 2
                           2147 ;--- end asm ---
   4101 6F E2         [ 8] 2148 	clr	,-s	; 
   4103 E6 67         [ 5] 2149 	ldb	7,s	; , ivtmp.393
   4105 34 04         [ 6] 2150 	pshs	b	; 
   4107 E6 63         [ 5] 2151 	ldb	3,s	; , x
   4109 34 04         [ 6] 2152 	pshs	b	; 
   410B E6 65         [ 5] 2153 	ldb	5,s	; , y
   410D 34 04         [ 6] 2154 	pshs	b	; 
   410F E6 69         [ 5] 2155 	ldb	9,s	; , ivtmp.391
   4111 BD 3F 81      [ 8] 2156 	jsr	_addLine	; 
   4114 32 64         [ 5] 2157 	leas	4,s	; ,,
   4116 20 1B         [ 3] 2158 	bra	L113	; 
   4118                    2159 L116:
   4118 C1 66         [ 2] 2160 	cmpb	#102	;cmpqi:	;  c0,
   411A 26 17         [ 3] 2161 	bne	L113	; 
                           2162 ;----- asm -----
                           2163 ;  584 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2164 	; #ENR#[429]                addLine(x, y, x + 1, y, 1);
                           2165 ;  0 "" 2
                           2166 ;--- end asm ---
   411C C6 01         [ 2] 2167 	ldb	#1	; ,
   411E E7 E2         [ 6] 2168 	stb	,-s	; ,
   4120 E6 63         [ 5] 2169 	ldb	3,s	; , y
   4122 34 04         [ 6] 2170 	pshs	b	; 
   4124 E6 67         [ 5] 2171 	ldb	7,s	; , ivtmp.391
   4126 34 04         [ 6] 2172 	pshs	b	; 
   4128 E6 65         [ 5] 2173 	ldb	5,s	; , y
   412A 34 04         [ 6] 2174 	pshs	b	; 
   412C E6 65         [ 5] 2175 	ldb	5,s	; , x
   412E BD 3F 81      [ 8] 2176 	jsr	_addLine	; 
   4131 32 64         [ 5] 2177 	leas	4,s	; ,,
   4133                    2178 L113:
                           2179 ;----- asm -----
                           2180 ;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2181 	; #ENR#[431]            if (isField(x, y) || isField(x, y + 1)) {
                           2182 ;  0 "" 2
                           2183 ;--- end asm ---
   4133 E6 62         [ 5] 2184 	ldb	2,s	; , y
   4135 34 04         [ 6] 2185 	pshs	b	; 
   4137 E6 62         [ 5] 2186 	ldb	2,s	; , x
   4139 BD 36 F6      [ 8] 2187 	jsr	_isField	; 
   413C 32 61         [ 5] 2188 	leas	1,s	; ,,
   413E 5D            [ 2] 2189 	tstb	;  D.1620
   413F 26 10         [ 3] 2190 	bne	L117	; 
   4141 E6 66         [ 5] 2191 	ldb	6,s	; , ivtmp.393
   4143 E7 E4         [ 4] 2192 	stb	,s	; , D.1615
   4145 34 04         [ 6] 2193 	pshs	b	; 
   4147 E6 62         [ 5] 2194 	ldb	2,s	; , x
   4149 BD 36 F6      [ 8] 2195 	jsr	_isField	; 
   414C 32 61         [ 5] 2196 	leas	1,s	; ,,
   414E 5D            [ 2] 2197 	tstb	;  D.1621
   414F 27 0E         [ 3] 2198 	beq	L118	; 
   4151                    2199 L117:
                           2200 ;----- asm -----
                           2201 ;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2202 	; #ENR#[432]                if (x0 < 0) x0 = x;
                           2203 ;  0 "" 2
                           2204 ;--- end asm ---
   4151 6D 63         [ 7] 2205 	tst	3,s	;  x0
   4153 2C 04         [ 3] 2206 	bge	L119	; 
   4155 E6 61         [ 5] 2207 	ldb	1,s	; , x
   4157 E7 63         [ 5] 2208 	stb	3,s	; , x0
   4159                    2209 L119:
                           2210 ;----- asm -----
                           2211 ;  591 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2212 	; #ENR#[433]                x1 = x;
                           2213 ;  0 "" 2
                           2214 ;--- end asm ---
   4159 E6 61         [ 5] 2215 	ldb	1,s	; , x
   415B E7 64         [ 5] 2216 	stb	4,s	; , x1
   415D 20 1E         [ 3] 2217 	bra	L120	; 
   415F                    2218 L118:
                           2219 ;----- asm -----
                           2220 ;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2221 	; #ENR#[435]                if (x0 >= 0) {
                           2222 ;  0 "" 2
                           2223 ;--- end asm ---
   415F 6D 63         [ 7] 2224 	tst	3,s	;  x0
   4161 2D 1A         [ 3] 2225 	blt	L120	; 
                           2226 ;----- asm -----
                           2227 ;  596 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2228 	; #ENR#[436]                    addLine(x0, y + 1, x1 + 1, y + 1, 0);
                           2229 ;  0 "" 2
                           2230 ;--- end asm ---
   4163 6F E2         [ 8] 2231 	clr	,-s	; 
   4165 E6 61         [ 5] 2232 	ldb	1,s	; , D.1615
   4167 34 04         [ 6] 2233 	pshs	b	; 
   4169 E6 66         [ 5] 2234 	ldb	6,s	; , x1
   416B 5C            [ 2] 2235 	incb	; 
   416C 34 04         [ 6] 2236 	pshs	b	; 
   416E E6 63         [ 5] 2237 	ldb	3,s	; , D.1615
   4170 34 04         [ 6] 2238 	pshs	b	; 
   4172 E6 67         [ 5] 2239 	ldb	7,s	; , x0
   4174 BD 3F 81      [ 8] 2240 	jsr	_addLine	; 
                           2241 ;----- asm -----
                           2242 ;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2243 	; #ENR#[437]                    x0 = -1;
                           2244 ;  0 "" 2
                           2245 ;--- end asm ---
   4177 C6 FF         [ 2] 2246 	ldb	#-1	; ,
   4179 E7 67         [ 5] 2247 	stb	7,s	; , x0
   417B 32 64         [ 5] 2248 	leas	4,s	; ,,
   417D                    2249 L120:
   417D 6C 65         [ 7] 2250 	inc	5,s	;  ivtmp.391
   417F 33 41         [ 5] 2251 	leau	1,u	;  ivtmp.402,, ivtmp.402
   4181 E6 65         [ 5] 2252 	ldb	5,s	; , ivtmp.391
   4183 C1 0C         [ 2] 2253 	cmpb	#12	;cmpqi:	; ,
   4185 10 26 FF 19   [ 6] 2254 	lbne	L121	; 
   4189 6C 66         [ 7] 2255 	inc	6,s	;  ivtmp.393
   418B 31 2A         [ 5] 2256 	leay	10,y	;  ivtmp.399,, ivtmp.399
   418D E6 66         [ 5] 2257 	ldb	6,s	; , ivtmp.393
   418F C1 10         [ 2] 2258 	cmpb	#16	;cmpqi:	; ,
   4191 10 26 FE FC   [ 6] 2259 	lbne	L122	; 
   4195 32 67         [ 5] 2260 	leas	7,s	; ,,
   4197 35 E0         [ 8] 2261 	puls	y,u,pc	; 
                           2262 	.globl _initLevel
   4199                    2263 _initLevel:
   4199 34 40         [ 6] 2264 	pshs	u	; 
                           2265 ;----- asm -----
                           2266 ;  674 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2267 	; #ENR#[488]    last_x=-1;
                           2268 ;  0 "" 2
                           2269 ;--- end asm ---
   419B C6 FF         [ 2] 2270 	ldb	#-1	; ,
   419D F7 C8 84      [ 5] 2271 	stb	_last_x	; , last_x
                           2272 ;----- asm -----
                           2273 ;  676 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2274 	; #ENR#[489]    last_y=-1;
                           2275 ;  0 "" 2
                           2276 ;--- end asm ---
   41A0 F7 C8 85      [ 5] 2277 	stb	_last_y	; , last_y
                           2278 ;----- asm -----
                           2279 ;  678 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2280 	; #ENR#[490]    last_s=-1;
                           2281 ;  0 "" 2
                           2282 ;--- end asm ---
   41A3 F7 C8 86      [ 5] 2283 	stb	_last_s	; , last_s
                           2284 ;----- asm -----
                           2285 ;  680 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2286 	; #ENR#[491]    lineCount = 0;
                           2287 ;  0 "" 2
                           2288 ;--- end asm ---
   41A6 7F C8 80      [ 7] 2289 	clr	_lineCount	;  lineCount
                           2290 ;----- asm -----
                           2291 ;  682 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2292 	; #ENR#[492]    setupX();
                           2293 ;  0 "" 2
                           2294 ;--- end asm ---
   41A9 BD 40 85      [ 8] 2295 	jsr	_setupX	; 
                           2296 ;----- asm -----
                           2297 ;  684 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2298 	; #ENR#[493]    last_x=-1;
                           2299 ;  0 "" 2
                           2300 ;--- end asm ---
   41AC C6 FF         [ 2] 2301 	ldb	#-1	; ,
   41AE F7 C8 84      [ 5] 2302 	stb	_last_x	; , last_x
                           2303 ;----- asm -----
                           2304 ;  686 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2305 	; #ENR#[494]    last_y=-1;
                           2306 ;  0 "" 2
                           2307 ;--- end asm ---
   41B1 F7 C8 85      [ 5] 2308 	stb	_last_y	; , last_y
                           2309 ;----- asm -----
                           2310 ;  688 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2311 	; #ENR#[495]    last_s=-1;
                           2312 ;  0 "" 2
                           2313 ;--- end asm ---
   41B4 F7 C8 86      [ 5] 2314 	stb	_last_s	; , last_s
                           2315 ;----- asm -----
                           2316 ;  692 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2317 	; #ENR#[498]    setupY();
                           2318 ;  0 "" 2
                           2319 ;--- end asm ---
   41B7 BD 40 13      [ 8] 2320 	jsr	_setupY	; 
                           2321 ;----- asm -----
                           2322 ;  694 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2323 	; #ENR#[499]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]=0;
                           2324 ;  0 "" 2
                           2325 ;--- end asm ---
   41BA F6 C8 80      [ 5] 2326 	ldb	_lineCount	; , lineCount
   41BD 86 05         [ 2] 2327 	lda	#5	;umulqihi3	; 
   41BF 3D            [11] 2328 	mul
   41C0 1F 01         [ 6] 2329 	tfr	d,x	; , D.1672
   41C2 30 89 C9 09   [ 8] 2330 	leax	_lineYX_yx_s_dy_dx,x	;  tmp29,, D.1672
   41C6 6F 01         [ 7] 2331 	clr	1,x	;  lineYX_yx_s_dy_dx
                           2332 ;----- asm -----
                           2333 ;  696 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2334 	; #ENR#[500]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]=0;
                           2335 ;  0 "" 2
                           2336 ;--- end asm ---
   41C8 6F 84         [ 6] 2337 	clr	,x	;  lineYX_yx_s_dy_dx
   41CA 35 C0         [ 7] 2338 	puls	u,pc	; 
                           2339 	.globl _swatchSwitch
   41CC                    2340 _swatchSwitch:
   41CC 34 40         [ 6] 2341 	pshs	u	; 
   41CE 32 79         [ 5] 2342 	leas	-7,s	; ,,
   41D0 E7 62         [ 5] 2343 	stb	2,s	;  x, x
                           2344 ;----- asm -----
                           2345 ;  108 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2346 	; #ENR#[91]    for (uint8_t i = 0; i < level->swatches_count; i++) {
                           2347 ;  0 "" 2
                           2348 ;--- end asm ---
   41D2 BE C8 F4      [ 6] 2349 	ldx	_level	;  level.6, level
   41D5 6D 04         [ 7] 2350 	tst	4,x	;  <variable>.swatches_count
   41D7 10 27 00 CC   [ 6] 2351 	lbeq	L129	; 
   41DB 6F 63         [ 7] 2352 	clr	3,s	;  i
   41DD                    2353 L140:
                           2354 ;----- asm -----
                           2355 ;  110 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2356 	; #ENR#[92]        const struct Swatch* swatch = level->swatches[i];
                           2357 ;  0 "" 2
                           2358 ;--- end asm ---
   41DD E6 63         [ 5] 2359 	ldb	3,s	; , i
   41DF 4F            [ 2] 2360 	clra		;zero_extendqihi: R:b -> R:d	; ,
   41E0 ED E4         [ 5] 2361 	std	,s	; ,
   41E2 58            [ 2] 2362 	aslb	; 
   41E3 49            [ 2] 2363 	rola	; 
   41E4 30 8B         [ 8] 2364 	leax	d,x	;  tmp43, tmp42, level.6
   41E6 EE 05         [ 6] 2365 	ldu	5,x	;  swatch, <variable>.swatches
                           2366 ;----- asm -----
                           2367 ;  112 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2368 	; #ENR#[93]        if (swatch->position.x == x && swatch->position.y == y) {
                           2369 ;  0 "" 2
                           2370 ;--- end asm ---
   41E8 E6 62         [ 5] 2371 	ldb	2,s	; , x
   41EA E1 41         [ 5] 2372 	cmpb	1,u	;cmpqi:(R)	; , <variable>.position.x
   41EC 10 26 00 AA   [ 6] 2373 	lbne	L130	; 
   41F0 E6 6B         [ 5] 2374 	ldb	11,s	; , y
   41F2 E1 42         [ 5] 2375 	cmpb	2,u	;cmpqi:(R)	; , <variable>.position.y
   41F4 10 26 00 A2   [ 6] 2376 	lbne	L130	; 
                           2377 ;----- asm -----
                           2378 ;  114 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2379 	; #ENR#[94]            for (uint8_t j = 0; j < swatch->fields_count; j++) {
                           2380 ;  0 "" 2
                           2381 ;--- end asm ---
   41F8 6D 43         [ 7] 2382 	tst	3,u	;  <variable>.fields_count
   41FA 10 27 00 9C   [ 6] 2383 	lbeq	L130	; 
   41FE 6F 64         [ 7] 2384 	clr	4,s	;  j
   4200                    2385 L139:
                           2386 ;----- asm -----
                           2387 ;  116 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2388 	; #ENR#[95]                const struct SwatchField* field = swatch->fields[j];
                           2389 ;  0 "" 2
                           2390 ;--- end asm ---
   4200 E6 64         [ 5] 2391 	ldb	4,s	; , j
   4202 4F            [ 2] 2392 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4203 C3 00 02      [ 4] 2393 	addd	#2	;  tmp46,
   4206 58            [ 2] 2394 	aslb	; 
   4207 49            [ 2] 2395 	rola	; 
   4208 30 CB         [ 8] 2396 	leax	d,u	;  tmp48, tmp47, swatch
   420A AE 84         [ 5] 2397 	ldx	,x	;  field, <variable>.fields
                           2398 ;----- asm -----
                           2399 ;  118 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2400 	; #ENR#[96]                int8_t xf = field->position.x;
                           2401 ;  0 "" 2
                           2402 ;--- end asm ---
   420C E6 01         [ 5] 2403 	ldb	1,x	; , <variable>.position.x
   420E E7 65         [ 5] 2404 	stb	5,s	; , xf
                           2405 ;----- asm -----
                           2406 ;  120 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2407 	; #ENR#[97]                int8_t yf = field->position.y;
                           2408 ;  0 "" 2
                           2409 ;--- end asm ---
   4210 E6 02         [ 5] 2410 	ldb	2,x	; , <variable>.position.y
   4212 E7 66         [ 5] 2411 	stb	6,s	; , yf
                           2412 ;----- asm -----
                           2413 ;  122 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2414 	; #ENR#[98]                switch (field->action) {
                           2415 ;  0 "" 2
                           2416 ;--- end asm ---
   4214 E6 84         [ 4] 2417 	ldb	,x	; , <variable>.action
   4216 C1 04         [ 2] 2418 	cmpb	#4	;cmpqi:	; ,
   4218 10 22 00 74   [ 6] 2419 	lbhi	L131	; 
   421C 4F            [ 2] 2420 	clra		;zero_extendqihi: R:b -> R:d	; ,
   421D ED E4         [ 5] 2421 	std	,s	; ,
   421F 58            [ 2] 2422 	aslb	; 
   4220 49            [ 2] 2423 	rola	; 
   4221 1F 01         [ 6] 2424 	tfr	d,x	; , tmp51
   4223 6E 99 42 27   [10] 2425 	jmp	[L137,x]	; , tmp51
   4227                    2426 L137:
   4227 42 31              2427 	.word L132
   4229 42 56              2428 	.word L133
   422B 42 68              2429 	.word L134
   422D 42 77              2430 	.word L135
   422F 42 86              2431 	.word L136
   4231                    2432 L132:
                           2433 ;----- asm -----
                           2434 ;  126 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2435 	; #ENR#[100]                    setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
                           2436 ;  0 "" 2
                           2437 ;--- end asm ---
   4231 E6 66         [ 5] 2438 	ldb	6,s	; , yf
   4233 34 04         [ 6] 2439 	pshs	b	; 
   4235 E6 66         [ 5] 2440 	ldb	6,s	; , xf
   4237 BD 36 6E      [ 8] 2441 	jsr	_isSwatchFieldOn	; 
   423A 5D            [ 2] 2442 	tstb	;  D.1386
   423B 4F            [ 2] 2443 	clra		;zero_extendqihi: R:b -> R:d	;  D.1386, tmp55
   423C C3 FF FF      [ 4] 2444 	addd	#-1	;  tmp56,
   423F 1F 89         [ 6] 2445 	tfr	a,b	; ,
   4241 4F            [ 2] 2446 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4242 59            [ 2] 2447 	rolb	; 
   4243 59            [ 2] 2448 	rolb	; 
   4244 C4 01         [ 2] 2449 	andb	#1	; ,
   4246 34 04         [ 6] 2450 	pshs	b	;  tmp54
   4248 E6 68         [ 5] 2451 	ldb	8,s	; , yf
   424A 34 04         [ 6] 2452 	pshs	b	; 
   424C E6 68         [ 5] 2453 	ldb	8,s	; , xf
   424E BD 36 A5      [ 8] 2454 	jsr	_setSwatchField	; 
                           2455 ;----- asm -----
                           2456 ;  128 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2457 	; #ENR#[101]                    break;
                           2458 ;  0 "" 2
                           2459 ;--- end asm ---
   4251 32 63         [ 5] 2460 	leas	3,s	; ,,
   4253 7E 42 90      [ 4] 2461 	jmp	L131	; 
   4256                    2462 L133:
                           2463 ;----- asm -----
                           2464 ;  132 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2465 	; #ENR#[103]                    setSwatchField(xf, yf, 1);
                           2466 ;  0 "" 2
                           2467 ;--- end asm ---
   4256 C6 01         [ 2] 2468 	ldb	#1	; ,
   4258 E7 E2         [ 6] 2469 	stb	,-s	; ,
   425A E6 67         [ 5] 2470 	ldb	7,s	; , yf
   425C 34 04         [ 6] 2471 	pshs	b	; 
   425E E6 67         [ 5] 2472 	ldb	7,s	; , xf
   4260 BD 36 A5      [ 8] 2473 	jsr	_setSwatchField	; 
                           2474 ;----- asm -----
                           2475 ;  134 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2476 	; #ENR#[104]                    break;
                           2477 ;  0 "" 2
                           2478 ;--- end asm ---
   4263 32 62         [ 5] 2479 	leas	2,s	; ,,
   4265 7E 42 90      [ 4] 2480 	jmp	L131	; 
   4268                    2481 L134:
                           2482 ;----- asm -----
                           2483 ;  138 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2484 	; #ENR#[106]                    setSwatchField(xf, yf, 0);
                           2485 ;  0 "" 2
                           2486 ;--- end asm ---
   4268 6F E2         [ 8] 2487 	clr	,-s	; 
   426A E6 67         [ 5] 2488 	ldb	7,s	; , yf
   426C 34 04         [ 6] 2489 	pshs	b	; 
   426E E6 67         [ 5] 2490 	ldb	7,s	; , xf
   4270 BD 36 A5      [ 8] 2491 	jsr	_setSwatchField	; 
                           2492 ;----- asm -----
                           2493 ;  140 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2494 	; #ENR#[107]                    break;
                           2495 ;  0 "" 2
                           2496 ;--- end asm ---
   4273 32 62         [ 5] 2497 	leas	2,s	; ,,
   4275 20 19         [ 3] 2498 	bra	L131	; 
   4277                    2499 L135:
                           2500 ;----- asm -----
                           2501 ;  144 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2502 	; #ENR#[109]                    blockX = xf;
                           2503 ;  0 "" 2
                           2504 ;--- end asm ---
   4277 E6 65         [ 5] 2505 	ldb	5,s	; , xf
   4279 F7 C8 92      [ 5] 2506 	stb	_blockX	; , blockX
                           2507 ;----- asm -----
                           2508 ;  146 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2509 	; #ENR#[110]                    blockY = yf;
                           2510 ;  0 "" 2
                           2511 ;--- end asm ---
   427C E6 66         [ 5] 2512 	ldb	6,s	; , yf
   427E F7 C8 93      [ 5] 2513 	stb	_blockY	; , blockY
                           2514 ;----- asm -----
                           2515 ;  148 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2516 	; #ENR#[111]                    setSplitMode();
                           2517 ;  0 "" 2
                           2518 ;--- end asm ---
   4281 BD 04 38      [ 8] 2519 	jsr	_setSplitMode	; 
                           2520 ;----- asm -----
                           2521 ;  150 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2522 	; #ENR#[112]                    break;
                           2523 ;  0 "" 2
                           2524 ;--- end asm ---
   4284 20 0A         [ 3] 2525 	bra	L131	; 
   4286                    2526 L136:
                           2527 ;----- asm -----
                           2528 ;  154 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2529 	; #ENR#[114]                    blockX2 = xf;
                           2530 ;  0 "" 2
                           2531 ;--- end asm ---
   4286 E6 65         [ 5] 2532 	ldb	5,s	; , xf
   4288 F7 C8 94      [ 5] 2533 	stb	_blockX2	; , blockX2
                           2534 ;----- asm -----
                           2535 ;  156 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2536 	; #ENR#[115]                    blockY2 = yf;
                           2537 ;  0 "" 2
                           2538 ;--- end asm ---
   428B E6 66         [ 5] 2539 	ldb	6,s	; , yf
   428D F7 C8 95      [ 5] 2540 	stb	_blockY2	; , blockY2
                           2541 ;----- asm -----
                           2542 ;  158 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2543 	; #ENR#[116]                    break;
                           2544 ;  0 "" 2
                           2545 ;--- end asm ---
   4290                    2546 L131:
   4290 6C 64         [ 7] 2547 	inc	4,s	;  j
   4292 E6 64         [ 5] 2548 	ldb	4,s	; , j
   4294 E1 43         [ 5] 2549 	cmpb	3,u	;cmpqi:(R)	; , <variable>.fields_count
   4296 10 25 FF 66   [ 6] 2550 	lblo	L139	; 
   429A                    2551 L130:
   429A 6C 63         [ 7] 2552 	inc	3,s	;  i
   429C BE C8 F4      [ 6] 2553 	ldx	_level	;  level.6, level
   429F E6 63         [ 5] 2554 	ldb	3,s	; , i
   42A1 E1 04         [ 5] 2555 	cmpb	4,x	;cmpqi:(R)	; , <variable>.swatches_count
   42A3 10 25 FF 36   [ 6] 2556 	lblo	L140	; 
   42A7                    2557 L129:
                           2558 ;----- asm -----
                           2559 ;  164 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           2560 	; #ENR#[121]    initLevel();
                           2561 ;  0 "" 2
                           2562 ;--- end asm ---
   42A7 BD 41 99      [ 8] 2563 	jsr	_initLevel	; 
   42AA 32 67         [ 5] 2564 	leas	7,s	; ,,
   42AC 35 C0         [ 7] 2565 	puls	u,pc	; 
                           2566 	.globl _lineCount
                           2567 	.area .data
   C880                    2568 _lineCount:
   C880 00                 2569 	.byte	0	;skip space
                           2570 	.globl _endX
   C881                    2571 _endX:
   C881 00                 2572 	.byte	0	;skip space
                           2573 	.globl _endY
   C882                    2574 _endY:
   C882 00                 2575 	.byte	0	;skip space
                           2576 	.globl _levelNumber
   C883                    2577 _levelNumber:
   C883 00                 2578 	.byte	0	;skip space
                           2579 	.globl _shifts
                           2580 	.area .text
   42AE                    2581 _shifts:
   42AE 01                 2582 	.byte	1
   42AF 02                 2583 	.byte	2
   42B0 04                 2584 	.byte	4
   42B1 08                 2585 	.byte	8
   42B2 10                 2586 	.byte	16
   42B3 20                 2587 	.byte	32
   42B4 40                 2588 	.byte	64
   42B5 80                 2589 	.byte	-128
                           2590 	.globl _last_x
                           2591 	.area .data
   C884                    2592 _last_x:
   C884 FF                 2593 	.byte	-1
                           2594 	.globl _last_y
   C885                    2595 _last_y:
   C885 FF                 2596 	.byte	-1
                           2597 	.globl _last_s
   C886                    2598 _last_s:
   C886 FF                 2599 	.byte	-1
                           2600 	.globl _useHalfling
                           2601 	.area .text
   42B6                    2602 _useHalfling:
   42B6 00                 2603 	.byte	0
   42B7 00                 2604 	.byte	0
   42B8 00                 2605 	.byte	0
   42B9 00                 2606 	.byte	0
   42BA 03                 2607 	.byte	3
   42BB 01                 2608 	.byte	1
   42BC 00                 2609 	.byte	0
   42BD 00                 2610 	.byte	0
   42BE 00                 2611 	.byte	0
   42BF 00                 2612 	.byte	0
   42C0 00                 2613 	.byte	0
   42C1 00                 2614 	.byte	0
   42C2 00                 2615 	.byte	0
   42C3 02                 2616 	.byte	2
   42C4 00                 2617 	.byte	0
   42C5 01                 2618 	.byte	1
   42C6 00                 2619 	.byte	0
   42C7 01                 2620 	.byte	1
   42C8 01                 2621 	.byte	1
   42C9 01                 2622 	.byte	1
   42CA 01                 2623 	.byte	1
   42CB 01                 2624 	.byte	1
   42CC 01                 2625 	.byte	1
   42CD 03                 2626 	.byte	3
   42CE 00                 2627 	.byte	0
   42CF 00                 2628 	.byte	0
   42D0 00                 2629 	.byte	0
   42D1 03                 2630 	.byte	3
   42D2 00                 2631 	.byte	0
   42D3 01                 2632 	.byte	1
   42D4 03                 2633 	.byte	3
   42D5 01                 2634 	.byte	1
   42D6 00                 2635 	.byte	0
   42D7 01                 2636 	.byte	1
   42D8 00                 2637 	.byte	0
   42D9 00 00              2638 	.word	0	;skip space 5
   42DB 00 00              2639 	.word	0	;skip space 3
   42DD 00                 2640 	.byte	0	;skip space
                           2641 	.area .bss
                           2642 	.globl	_level
   C8F4                    2643 _level:	.blkb	2
                           2644 	.globl	_swatchesOn
   C8F6                    2645 _swatchesOn:	.blkb	19
                           2646 	.globl	_lineYX_yx_s_dy_dx
   C909                    2647 _lineYX_yx_s_dy_dx:	.blkb	550
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$level$100        005A GR  |   2 A$level$1000       0539 GR
  2 A$level$1006       053B GR  |   2 A$level$1007       053D GR
  2 A$level$1008       0540 GR  |   2 A$level$101        005C GR
  2 A$level$1014       0544 GR  |   2 A$level$1015       0547 GR
  2 A$level$1016       0548 GR  |   2 A$level$1017       054A GR
  2 A$level$1018       054B GR  |   2 A$level$1019       054C GR
  2 A$level$102        005E GR  |   2 A$level$1020       054D GR
  2 A$level$1021       054E GR  |   2 A$level$1022       0550 GR
  2 A$level$1023       0553 GR  |   2 A$level$1024       0555 GR
  2 A$level$1025       0557 GR  |   2 A$level$1026       0559 GR
  2 A$level$1032       055B GR  |   2 A$level$1033       055D GR
  2 A$level$1040       055F GR  |   2 A$level$1041       0561 GR
  2 A$level$1042       0563 GR  |   2 A$level$1048       0566 GR
  2 A$level$1049       0569 GR  |   2 A$level$1050       056C GR
  2 A$level$1056       056F GR  |   2 A$level$1057       0572 GR
  2 A$level$1058       0573 GR  |   2 A$level$1059       0575 GR
  2 A$level$1060       0576 GR  |   2 A$level$1061       0577 GR
  2 A$level$1062       0578 GR  |   2 A$level$1064       0579 GR
  2 A$level$1065       057B GR  |   2 A$level$1070       057D GR
  2 A$level$1071       0581 GR  |   2 A$level$1073       0584 GR
  2 A$level$1074       0587 GR  |   2 A$level$1077       0589 GR
  2 A$level$1078       058B GR  |   2 A$level$1079       058D GR
  2 A$level$1085       058F GR  |   2 A$level$1086       0592 GR
  2 A$level$1087       0594 GR  |   2 A$level$1088       0595 GR
  2 A$level$1089       0597 GR  |   2 A$level$1090       059A GR
  2 A$level$1091       059C GR  |   2 A$level$1092       059E GR
  2 A$level$1093       05A0 GR  |   2 A$level$1094       05A3 GR
  2 A$level$1095       05A6 GR  |   2 A$level$1101       05AA GR
  2 A$level$1102       05AD GR  |   2 A$level$1103       05AF GR
  2 A$level$1104       05B0 GR  |   2 A$level$1105       05B2 GR
  2 A$level$1106       05B4 GR  |   2 A$level$1107       05B7 GR
  2 A$level$1108       05B9 GR  |   2 A$level$1109       05BB GR
  2 A$level$1110       05BE GR  |   2 A$level$1111       05C0 GR
  2 A$level$1112       05C2 GR  |   2 A$level$1113       05C4 GR
  2 A$level$1114       05C6 GR  |   2 A$level$1120       05C8 GR
  2 A$level$1121       05CB GR  |   2 A$level$1122       05CD GR
  2 A$level$1123       05CE GR  |   2 A$level$1124       05D0 GR
  2 A$level$1125       05D2 GR  |   2 A$level$1126       05D5 GR
  2 A$level$1127       05D6 GR  |   2 A$level$1128       05D8 GR
  2 A$level$1129       05DA GR  |   2 A$level$1130       05DB GR
  2 A$level$1131       05DD GR  |   2 A$level$1132       05DF GR
  2 A$level$1133       05E1 GR  |   2 A$level$1134       05E3 GR
  2 A$level$1135       05E5 GR  |   2 A$level$1136       05E8 GR
  2 A$level$1137       05EA GR  |   2 A$level$1138       05ED GR
  2 A$level$1139       05EF GR  |   2 A$level$114        0060 GR
  2 A$level$1140       05F1 GR  |   2 A$level$1141       05F3 GR
  2 A$level$1142       05F6 GR  |   2 A$level$1143       05F8 GR
  2 A$level$1144       05FA GR  |   2 A$level$1145       05FC GR
  2 A$level$1146       05FE GR  |   2 A$level$1147       0600 GR
  2 A$level$115        0062 GR  |   2 A$level$1153       0602 GR
  2 A$level$1154       0605 GR  |   2 A$level$1155       0607 GR
  2 A$level$1156       0608 GR  |   2 A$level$1157       060A GR
  2 A$level$1158       060C GR  |   2 A$level$1159       060E GR
  2 A$level$116        0063 GR  |   2 A$level$1160       0610 GR
  2 A$level$1161       0612 GR  |   2 A$level$1162       0615 GR
  2 A$level$1163       0617 GR  |   2 A$level$1164       0619 GR
  2 A$level$1165       061C GR  |   2 A$level$1166       061E GR
  2 A$level$1167       0620 GR  |   2 A$level$1168       0623 GR
  2 A$level$1169       0625 GR  |   2 A$level$117        0064 GR
  2 A$level$1170       0627 GR  |   2 A$level$1171       0629 GR
  2 A$level$1172       062B GR  |   2 A$level$1173       062D GR
  2 A$level$1179       062F GR  |   2 A$level$118        0065 GR
  2 A$level$1185       0632 GR  |   2 A$level$1186       0635 GR
  2 A$level$1187       0636 GR  |   2 A$level$1188       0638 GR
  2 A$level$119        0066 GR  |   2 A$level$1194       063B GR
  2 A$level$1195       063E GR  |   2 A$level$1196       0640 GR
  2 A$level$1197       0642 GR  |   2 A$level$1198       0644 GR
  2 A$level$1199       0647 GR  |   2 A$level$120        0067 GR
  2 A$level$1200       0649 GR  |   2 A$level$1201       064B GR
  2 A$level$1202       064C GR  |   2 A$level$1203       064E GR
  2 A$level$1204       064F GR  |   2 A$level$1205       0650 GR
  2 A$level$1206       0651 GR  |   2 A$level$1207       0652 GR
  2 A$level$1208       0655 GR  |   2 A$level$1209       0657 GR
  2 A$level$121        0068 GR  |   2 A$level$1210       0659 GR
  2 A$level$1211       065B GR  |   2 A$level$1212       065D GR
  2 A$level$1213       065F GR  |   2 A$level$1219       0661 GR
  2 A$level$122        006A GR  |   2 A$level$1220       0664 GR
  2 A$level$1221       0666 GR  |   2 A$level$1222       0667 GR
  2 A$level$1223       0669 GR  |   2 A$level$1224       066B GR
  2 A$level$1225       066E GR  |   2 A$level$1226       0670 GR
  2 A$level$1227       0672 GR  |   2 A$level$1228       0675 GR
  2 A$level$1229       0677 GR  |   2 A$level$123        006E GR
  2 A$level$1230       0679 GR  |   2 A$level$1231       067B GR
  2 A$level$1232       067D GR  |   2 A$level$1238       067F GR
  2 A$level$1239       0682 GR  |   2 A$level$124        0070 GR
  2 A$level$1240       0684 GR  |   2 A$level$1241       0685 GR
  2 A$level$1242       0687 GR  |   2 A$level$1243       0689 GR
  2 A$level$1244       068B GR  |   2 A$level$1245       068D GR
  2 A$level$1246       068F GR  |   2 A$level$1247       0691 GR
  2 A$level$1248       0694 GR  |   2 A$level$1249       0697 GR
  2 A$level$125        0072 GR  |   2 A$level$1250       069A GR
  2 A$level$1251       069C GR  |   2 A$level$1252       069E GR
  2 A$level$1253       06A0 GR  |   2 A$level$1254       06A3 GR
  2 A$level$1255       06A5 GR  |   2 A$level$1256       06A7 GR
  2 A$level$1257       06A9 GR  |   2 A$level$1258       06AC GR
  2 A$level$1259       06AE GR  |   2 A$level$126        0074 GR
  2 A$level$1265       06B0 GR  |   2 A$level$1266       06B3 GR
  2 A$level$1267       06B5 GR  |   2 A$level$1268       06B6 GR
  2 A$level$1269       06B8 GR  |   2 A$level$127        0077 GR
  2 A$level$1270       06BA GR  |   2 A$level$1271       06BC GR
  2 A$level$1272       06BE GR  |   2 A$level$1273       06C0 GR
  2 A$level$1274       06C2 GR  |   2 A$level$1275       06C5 GR
  2 A$level$1276       06C7 GR  |   2 A$level$1277       06CA GR
  2 A$level$1278       06CC GR  |   2 A$level$1279       06CE GR
  2 A$level$128        0079 GR  |   2 A$level$1280       06D1 GR
  2 A$level$1281       06D3 GR  |   2 A$level$1282       06D5 GR
  2 A$level$1283       06D7 GR  |   2 A$level$1284       06D9 GR
  2 A$level$1285       06DB GR  |   2 A$level$129        007B GR
  2 A$level$1291       06DD GR  |   2 A$level$1297       06E0 GR
  2 A$level$1298       06E3 GR  |   2 A$level$1299       06E5 GR
  2 A$level$1302       06E7 GR  |   2 A$level$1303       06E9 GR
  2 A$level$1309       06EB GR  |   2 A$level$131        007D GR
  2 A$level$1316       06EE GR  |   2 A$level$1317       06F0 GR
  2 A$level$1318       06F3 GR  |   2 A$level$132        007F GR
  2 A$level$1336       06F5 GR  |   2 A$level$1337       06FA GR
  2 A$level$1344       06FC GR  |   2 A$level$1345       06FE GR
  2 A$level$135        0081 GR  |   2 A$level$1355       0700 GR
  2 A$level$136        0083 GR  |   2 A$level$1361       0702 GR
  2 A$level$1362       0704 GR  |   2 A$level$1363       0706 GR
  2 A$level$1364       0708 GR  |   2 A$level$137        0085 GR
  2 A$level$1371       070A GR  |   2 A$level$1372       070C GR
  2 A$level$1373       070E GR  |   2 A$level$1374       0710 GR
  2 A$level$1375       0712 GR  |   2 A$level$1376       0714 GR
  2 A$level$1377       0717 GR  |   2 A$level$1379       0719 GR
  2 A$level$1380       071B GR  |   2 A$level$1381       071D GR
  2 A$level$1382       071F GR  |   2 A$level$1383       0721 GR
  2 A$level$1384       0723 GR  |   2 A$level$1385       0725 GR
  2 A$level$1386       0727 GR  |   2 A$level$1387       0729 GR
  2 A$level$1388       072B GR  |   2 A$level$1389       072F GR
  2 A$level$1390       0731 GR  |   2 A$level$1410       0743 GR
  2 A$level$1411       0745 GR  |   2 A$level$1412       0747 GR
  2 A$level$1418       0749 GR  |   2 A$level$1419       074C GR
  2 A$level$1420       074E GR  |   2 A$level$1421       074F GR
  2 A$level$1422       0751 GR  |   2 A$level$1423       0753 GR
  2 A$level$1424       0755 GR  |   2 A$level$1425       0757 GR
  2 A$level$1426       0759 GR  |   2 A$level$1427       075C GR
  2 A$level$1428       075F GR  |   2 A$level$1429       0761 GR
  2 A$level$143        0087 GR  |   2 A$level$1435       0765 GR
  2 A$level$1436       0768 GR  |   2 A$level$1437       076A GR
  2 A$level$1438       076B GR  |   2 A$level$1439       076D GR
  2 A$level$144        0089 GR  |   2 A$level$1440       076F GR
  2 A$level$1441       0771 GR  |   2 A$level$1442       0773 GR
  2 A$level$1443       0775 GR  |   2 A$level$1444       0778 GR
  2 A$level$1445       077A GR  |   2 A$level$1446       077C GR
  2 A$level$1447       077E GR  |   2 A$level$1448       0780 GR
  2 A$level$1449       0782 GR  |   2 A$level$145        008B GR
  2 A$level$1455       0784 GR  |   2 A$level$1456       0787 GR
  2 A$level$1457       0789 GR  |   2 A$level$1458       078A GR
  2 A$level$1459       078C GR  |   2 A$level$146        008C GR
  2 A$level$1460       078E GR  |   2 A$level$1461       0790 GR
  2 A$level$1462       0791 GR  |   2 A$level$1463       0793 GR
  2 A$level$1464       0795 GR  |   2 A$level$1465       0797 GR
  2 A$level$1466       0799 GR  |   2 A$level$1467       079C GR
  2 A$level$1468       079E GR  |   2 A$level$1469       07A1 GR
  2 A$level$147        008E GR  |   2 A$level$1470       07A3 GR
  2 A$level$1471       07A5 GR  |   2 A$level$1472       07A7 GR
  2 A$level$1473       07AA GR  |   2 A$level$1474       07AC GR
  2 A$level$1475       07AE GR  |   2 A$level$1476       07B0 GR
  2 A$level$1477       07B2 GR  |   2 A$level$1478       07B4 GR
  2 A$level$1479       07B6 GR  |   2 A$level$148        0090 GR
  2 A$level$1485       07B8 GR  |   2 A$level$1486       07BB GR
  2 A$level$1487       07BD GR  |   2 A$level$1488       07BE GR
  2 A$level$1489       07C0 GR  |   2 A$level$1490       07C2 GR
  2 A$level$1491       07C4 GR  |   2 A$level$1492       07C6 GR
  2 A$level$1493       07C8 GR  |   2 A$level$1494       07CB GR
  2 A$level$1495       07CD GR  |   2 A$level$1496       07CF GR
  2 A$level$1497       07D1 GR  |   2 A$level$1498       07D3 GR
  2 A$level$1499       07D5 GR  |   2 A$level$150        0091 GR
  2 A$level$1500       07D8 GR  |   2 A$level$1501       07DA GR
  2 A$level$1502       07DC GR  |   2 A$level$1503       07DE GR
  2 A$level$1504       07E0 GR  |   2 A$level$1505       07E2 GR
  2 A$level$1506       07E4 GR  |   2 A$level$1512       07E6 GR
  2 A$level$1518       07E9 GR  |   2 A$level$1519       07EC GR
  2 A$level$1520       07ED GR  |   2 A$level$1526       07F0 GR
  2 A$level$1527       07F2 GR  |   2 A$level$1528       07F4 GR
  2 A$level$153        0093 GR  |   2 A$level$1534       07F6 GR
  2 A$level$1535       07F9 GR  |   2 A$level$1537       07FC GR
  2 A$level$1538       07FE GR  |   2 A$level$1541       0800 GR
  2 A$level$1542       0802 GR  |   2 A$level$1543       0804 GR
  2 A$level$1549       0806 GR  |   2 A$level$1550       0808 GR
  2 A$level$1556       080C GR  |   2 A$level$1557       080F GR
  2 A$level$1558       0811 GR  |   2 A$level$1559       0812 GR
  2 A$level$1560       0814 GR  |   2 A$level$1561       0816 GR
  2 A$level$1562       0818 GR  |   2 A$level$1563       081A GR
  2 A$level$1564       081C GR  |   2 A$level$1565       081F GR
  2 A$level$1566       0822 GR  |   2 A$level$1567       0824 GR
  2 A$level$1573       0828 GR  |   2 A$level$1574       082B GR
  2 A$level$1575       082D GR  |   2 A$level$1576       082E GR
  2 A$level$1577       0830 GR  |   2 A$level$1578       0832 GR
  2 A$level$1579       0834 GR  |   2 A$level$1580       0836 GR
  2 A$level$1581       0838 GR  |   2 A$level$1582       083B GR
  2 A$level$1583       083D GR  |   2 A$level$1584       083F GR
  2 A$level$1585       0841 GR  |   2 A$level$1586       0843 GR
  2 A$level$1587       0844 GR  |   2 A$level$159        0095 GR
  2 A$level$1593       0846 GR  |   2 A$level$1594       0849 GR
  2 A$level$1595       084B GR  |   2 A$level$1596       084C GR
  2 A$level$1597       084E GR  |   2 A$level$1598       0850 GR
  2 A$level$1599       0853 GR  |   2 A$level$160        0097 GR
  2 A$level$1600       0855 GR  |   2 A$level$1601       0857 GR
  2 A$level$1602       085A GR  |   2 A$level$1603       085D GR
  2 A$level$1604       085F GR  |   2 A$level$1605       0862 GR
  2 A$level$1606       0864 GR  |   2 A$level$1607       0866 GR
  2 A$level$1608       0868 GR  |   2 A$level$1609       086B GR
  2 A$level$161        0099 GR  |   2 A$level$1610       086D GR
  2 A$level$1611       086F GR  |   2 A$level$1612       0871 GR
  2 A$level$1613       0873 GR  |   2 A$level$1614       0874 GR
  2 A$level$1615       0876 GR  |   2 A$level$1621       0878 GR
  2 A$level$1622       087B GR  |   2 A$level$1623       087D GR
  2 A$level$1624       087E GR  |   2 A$level$1625       0880 GR
  2 A$level$1626       0882 GR  |   2 A$level$1627       0885 GR
  2 A$level$1628       0887 GR  |   2 A$level$1629       088A GR
  2 A$level$1630       088D GR  |   2 A$level$1631       088F GR
  2 A$level$1632       0891 GR  |   2 A$level$1633       0893 GR
  2 A$level$1634       0895 GR  |   2 A$level$1635       0897 GR
  2 A$level$1636       089A GR  |   2 A$level$1637       089C GR
  2 A$level$1638       089E GR  |   2 A$level$1639       08A0 GR
  2 A$level$1640       08A2 GR  |   2 A$level$1641       08A4 GR
  2 A$level$1642       08A6 GR  |   2 A$level$1643       08A8 GR
  2 A$level$1644       08AA GR  |   2 A$level$1651       08AD GR
  2 A$level$1652       08B0 GR  |   2 A$level$1653       08B2 GR
  2 A$level$1654       08B3 GR  |   2 A$level$1655       08B5 GR
  2 A$level$1656       08B7 GR  |   2 A$level$1657       08B9 GR
  2 A$level$1658       08BB GR  |   2 A$level$1659       08BD GR
  2 A$level$1660       08C0 GR  |   2 A$level$1661       08C3 GR
  2 A$level$1667       08C7 GR  |   2 A$level$1668       08CA GR
  2 A$level$1669       08CC GR  |   2 A$level$167        009B GR
  2 A$level$1670       08CD GR  |   2 A$level$1671       08CF GR
  2 A$level$1672       08D1 GR  |   2 A$level$1673       08D3 GR
  2 A$level$1674       08D5 GR  |   2 A$level$1675       08D7 GR
  2 A$level$1676       08DA GR  |   2 A$level$1677       08DC GR
  2 A$level$1678       08DE GR  |   2 A$level$1679       08E0 GR
  2 A$level$168        009D GR  |   2 A$level$1680       08E2 GR
  2 A$level$1686       08E4 GR  |   2 A$level$1687       08E7 GR
  2 A$level$1688       08E9 GR  |   2 A$level$1689       08EA GR
  2 A$level$169        009E GR  |   2 A$level$1690       08EC GR
  2 A$level$1691       08EE GR  |   2 A$level$1692       08F1 GR
  2 A$level$1693       08F3 GR  |   2 A$level$1694       08F5 GR
  2 A$level$1695       08F8 GR  |   2 A$level$1696       08FB GR
  2 A$level$1697       08FD GR  |   2 A$level$1698       0900 GR
  2 A$level$1699       0902 GR  |   2 A$level$170        009F GR
  2 A$level$1700       0904 GR  |   2 A$level$1701       0906 GR
  2 A$level$1702       0909 GR  |   2 A$level$1703       090B GR
  2 A$level$1704       090D GR  |   2 A$level$1705       090F GR
  2 A$level$1706       0911 GR  |   2 A$level$1707       0913 GR
  2 A$level$171        00A0 GR  |   2 A$level$1713       0915 GR
  2 A$level$1714       0918 GR  |   2 A$level$1715       091A GR
  2 A$level$1716       091B GR  |   2 A$level$1717       091D GR
  2 A$level$1718       091F GR  |   2 A$level$1719       0922 GR
  2 A$level$172        00A1 GR  |   2 A$level$1720       0924 GR
  2 A$level$1721       0927 GR  |   2 A$level$1722       092A GR
  2 A$level$1723       092C GR  |   2 A$level$1724       092E GR
  2 A$level$1725       0930 GR  |   2 A$level$1726       0932 GR
  2 A$level$1727       0934 GR  |   2 A$level$1728       0937 GR
  2 A$level$1729       0939 GR  |   2 A$level$173        00A2 GR
  2 A$level$1730       093B GR  |   2 A$level$1731       093D GR
  2 A$level$1732       093F GR  |   2 A$level$1733       0941 GR
  2 A$level$1734       0943 GR  |   2 A$level$1741       0945 GR
  2 A$level$1747       0948 GR  |   2 A$level$1748       094B GR
  2 A$level$1749       094C GR  |   2 A$level$1755       094F GR
  2 A$level$1756       0951 GR  |   2 A$level$1762       0953 GR
  2 A$level$1763       0956 GR  |   2 A$level$1765       0959 GR
  2 A$level$1766       095B GR  |   2 A$level$1769       095D GR
  2 A$level$1770       095F GR  |   2 A$level$1779       0961 GR
  2 A$level$1780       0963 GR  |   2 A$level$1781       0965 GR
  2 A$level$1782       0967 GR  |   2 A$level$1783       0969 GR
  2 A$level$179        00A3 GR  |   2 A$level$1790       096B GR
  2 A$level$1791       096D GR  |   2 A$level$1792       096F GR
  2 A$level$1793       0971 GR  |   2 A$level$1794       0973 GR
  2 A$level$1795       0975 GR  |   2 A$level$1796       0977 GR
  2 A$level$1797       0979 GR  |   2 A$level$1798       097B GR
  2 A$level$1799       097D GR  |   2 A$level$180        00A5 GR
  2 A$level$1800       097F GR  |   2 A$level$1801       0981 GR
  2 A$level$1802       0983 GR  |   2 A$level$1808       0986 GR
  2 A$level$1809       0988 GR  |   2 A$level$1810       098A GR
  2 A$level$1811       098C GR  |   2 A$level$1812       098E GR
  2 A$level$1813       0990 GR  |   2 A$level$1814       0992 GR
  2 A$level$1815       0994 GR  |   2 A$level$1816       0996 GR
  2 A$level$1818       0998 GR  |   2 A$level$1819       099A GR
  2 A$level$1826       099C GR  |   2 A$level$1827       099E GR
  2 A$level$1828       09A0 GR  |   2 A$level$1829       09A2 GR
  2 A$level$1830       09A4 GR  |   2 A$level$1837       09A6 GR
  2 A$level$1838       09A8 GR  |   2 A$level$1839       09AA GR
  2 A$level$1840       09AC GR  |   2 A$level$1841       09AE GR
  2 A$level$1842       09B0 GR  |   2 A$level$1843       09B2 GR
  2 A$level$1844       09B4 GR  |   2 A$level$1845       09B6 GR
  2 A$level$1846       09B8 GR  |   2 A$level$1847       09BA GR
  2 A$level$1848       09BC GR  |   2 A$level$1849       09BE GR
  2 A$level$1855       09C1 GR  |   2 A$level$1856       09C3 GR
  2 A$level$1857       09C5 GR  |   2 A$level$1858       09C7 GR
  2 A$level$1859       09C9 GR  |   2 A$level$186        00A7 GR
  2 A$level$1860       09CB GR  |   2 A$level$1861       09CD GR
  2 A$level$1862       09CF GR  |   2 A$level$1863       09D1 GR
  2 A$level$1865       09D3 GR  |   2 A$level$1866       09D5 GR
  2 A$level$187        00AA GR  |   2 A$level$1873       09D7 GR
  2 A$level$1874       09D9 GR  |   2 A$level$1875       09DB GR
  2 A$level$1876       09DD GR  |   2 A$level$1877       09DF GR
  2 A$level$1878       09E1 GR  |   2 A$level$1879       09E3 GR
  2 A$level$188        00AC GR  |   2 A$level$1880       09E5 GR
  2 A$level$1881       09E7 GR  |   2 A$level$1882       09E9 GR
  2 A$level$1883       09EC GR  |   2 A$level$1884       09EE GR
  2 A$level$1887       09EF GR  |   2 A$level$189        00AE GR
  2 A$level$1899       09F1 GR  |   2 A$level$190        00B0 GR
  2 A$level$1900       09F3 GR  |   2 A$level$191        00B2 GR
  2 A$level$1913       09F5 GR  |   2 A$level$1914       09F7 GR
  2 A$level$1915       09F9 GR  |   2 A$level$1916       09FB GR
  2 A$level$192        00B5 GR  |   2 A$level$1923       09FD GR
  2 A$level$1924       09FF GR  |   2 A$level$1925       0A01 GR
  2 A$level$1926       0A03 GR  |   2 A$level$1927       0A06 GR
  2 A$level$1928       0A08 GR  |   2 A$level$1929       0A09 GR
  2 A$level$193        00B7 GR  |   2 A$level$1930       0A0B GR
  2 A$level$1931       0A0D GR  |   2 A$level$1932       0A0E GR
  2 A$level$1933       0A10 GR  |   2 A$level$1934       0A12 GR
  2 A$level$1935       0A14 GR  |   2 A$level$1936       0A16 GR
  2 A$level$1937       0A19 GR  |   2 A$level$1938       0A1B GR
  2 A$level$1939       0A1C GR  |   2 A$level$194        00B9 GR
  2 A$level$1946       0A1E GR  |   2 A$level$1947       0A20 GR
  2 A$level$1948       0A22 GR  |   2 A$level$1949       0A24 GR
  2 A$level$1956       0A26 GR  |   2 A$level$1957       0A28 GR
  2 A$level$1958       0A2A GR  |   2 A$level$1965       0A2C GR
  2 A$level$1966       0A2E GR  |   2 A$level$1972       0A30 GR
  2 A$level$1973       0A32 GR  |   2 A$level$1974       0A34 GR
  2 A$level$1975       0A35 GR  |   2 A$level$1976       0A37 GR
  2 A$level$1977       0A39 GR  |   2 A$level$1978       0A3B GR
  2 A$level$1979       0A3D GR  |   2 A$level$1980       0A3F GR
  2 A$level$1981       0A41 GR  |   2 A$level$1987       0A44 GR
  2 A$level$1988       0A46 GR  |   2 A$level$1989       0A48 GR
  2 A$level$1991       0A4A GR  |   2 A$level$1992       0A4C GR
  2 A$level$1993       0A4E GR  |   2 A$level$1994       0A50 GR
  2 A$level$1995       0A54 GR  |   2 A$level$1996       0A56 GR
  2 A$level$1997       0A58 GR  |   2 A$level$1998       0A5A GR
  2 A$level$1999       0A5E GR  |   2 A$level$2000       0A60 GR
  2 A$level$2003       0A61 GR  |   2 A$level$2004       0A63 GR
  2 A$level$201        00BB GR  |   2 A$level$202        00BE GR
  2 A$level$2022       0A65 GR  |   2 A$level$2023       0A69 GR
  2 A$level$2024       0A6B GR  |   2 A$level$2026       0A6D GR
  2 A$level$2027       0A6F GR  |   2 A$level$2028       0A70 GR
  2 A$level$203        00C0 GR  |   2 A$level$204        00C2 GR
  2 A$level$2040       0A72 GR  |   2 A$level$2041       0A74 GR
  2 A$level$2042       0A76 GR  |   2 A$level$2043       0A78 GR
  2 A$level$2044       0A7A GR  |   2 A$level$2045       0A7C GR
  2 A$level$2047       0A7E GR  |   2 A$level$2048       0A80 GR
  2 A$level$2049       0A81 GR  |   2 A$level$205        00C4 GR
  2 A$level$206        00C6 GR  |   2 A$level$2061       0A83 GR
  2 A$level$2062       0A85 GR  |   2 A$level$2063       0A87 GR
  2 A$level$2064       0A89 GR  |   2 A$level$207        00C9 GR
  2 A$level$2070       0A8B GR  |   2 A$level$2071       0A8D GR
  2 A$level$2073       0A8F GR  |   2 A$level$208        00CA GR
  2 A$level$2080       0A90 GR  |   2 A$level$2081       0A92 GR
  2 A$level$2087       0A94 GR  |   2 A$level$2088       0A96 GR
  2 A$level$2089       0A98 GR  |   2 A$level$209        00CC GR
  2 A$level$2090       0A9A GR  |   2 A$level$2096       0A9D GR
  2 A$level$2097       0A9F GR  |   2 A$level$2103       0AA2 GR
  2 A$level$2104       0AA4 GR  |   2 A$level$2105       0AA7 GR
  2 A$level$2106       0AA9 GR  |   2 A$level$2108       0AAC GR
  2 A$level$2109       0AAE GR  |   2 A$level$211        00CE GR
  2 A$level$2115       0AB0 GR  |   2 A$level$2116       0AB2 GR
  2 A$level$2117       0AB4 GR  |   2 A$level$2118       0AB6 GR
  2 A$level$2119       0AB9 GR  |   2 A$level$212        00D0 GR
  2 A$level$2120       0ABB GR  |   2 A$level$2122       0ABE GR
  2 A$level$2123       0AC0 GR  |   2 A$level$2129       0AC2 GR
  2 A$level$2130       0AC4 GR  |   2 A$level$2131       0AC6 GR
  2 A$level$2132       0AC8 GR  |   2 A$level$2133       0ACA GR
  2 A$level$2134       0ACC GR  |   2 A$level$2135       0ACE GR
  2 A$level$2136       0AD0 GR  |   2 A$level$2137       0AD2 GR
  2 A$level$2138       0AD5 GR  |   2 A$level$2139       0AD7 GR
  2 A$level$2141       0AD9 GR  |   2 A$level$2142       0ADB GR
  2 A$level$2148       0ADD GR  |   2 A$level$2149       0ADF GR
  2 A$level$215        00D2 GR  |   2 A$level$2150       0AE1 GR
  2 A$level$2151       0AE3 GR  |   2 A$level$2152       0AE5 GR
  2 A$level$2153       0AE7 GR  |   2 A$level$2154       0AE9 GR
  2 A$level$2155       0AEB GR  |   2 A$level$2156       0AED GR
  2 A$level$2157       0AF0 GR  |   2 A$level$2158       0AF2 GR
  2 A$level$216        00D4 GR  |   2 A$level$2160       0AF4 GR
  2 A$level$2161       0AF6 GR  |   2 A$level$2167       0AF8 GR
  2 A$level$2168       0AFA GR  |   2 A$level$2169       0AFC GR
  2 A$level$2170       0AFE GR  |   2 A$level$2171       0B00 GR
  2 A$level$2172       0B02 GR  |   2 A$level$2173       0B04 GR
  2 A$level$2174       0B06 GR  |   2 A$level$2175       0B08 GR
  2 A$level$2176       0B0A GR  |   2 A$level$2177       0B0D GR
  2 A$level$2184       0B0F GR  |   2 A$level$2185       0B11 GR
  2 A$level$2186       0B13 GR  |   2 A$level$2187       0B15 GR
  2 A$level$2188       0B18 GR  |   2 A$level$2189       0B1A GR
  2 A$level$2190       0B1B GR  |   2 A$level$2191       0B1D GR
  2 A$level$2192       0B1F GR  |   2 A$level$2193       0B21 GR
  2 A$level$2194       0B23 GR  |   2 A$level$2195       0B25 GR
  2 A$level$2196       0B28 GR  |   2 A$level$2197       0B2A GR
  2 A$level$2198       0B2B GR  |   2 A$level$2205       0B2D GR
  2 A$level$2206       0B2F GR  |   2 A$level$2207       0B31 GR
  2 A$level$2208       0B33 GR  |   2 A$level$2215       0B35 GR
  2 A$level$2216       0B37 GR  |   2 A$level$2217       0B39 GR
  2 A$level$222        00D6 GR  |   2 A$level$2224       0B3B GR
  2 A$level$2225       0B3D GR  |   2 A$level$223        00D8 GR
  2 A$level$2231       0B3F GR  |   2 A$level$2232       0B41 GR
  2 A$level$2233       0B43 GR  |   2 A$level$2234       0B45 GR
  2 A$level$2235       0B47 GR  |   2 A$level$2236       0B48 GR
  2 A$level$2237       0B4A GR  |   2 A$level$2238       0B4C GR
  2 A$level$2239       0B4E GR  |   2 A$level$224        00DA GR
  2 A$level$2240       0B50 GR  |   2 A$level$2246       0B53 GR
  2 A$level$2247       0B55 GR  |   2 A$level$2248       0B57 GR
  2 A$level$225        00DC GR  |   2 A$level$2250       0B59 GR
  2 A$level$2251       0B5B GR  |   2 A$level$2252       0B5D GR
  2 A$level$2253       0B5F GR  |   2 A$level$2254       0B61 GR
  2 A$level$2255       0B65 GR  |   2 A$level$2256       0B67 GR
  2 A$level$2257       0B69 GR  |   2 A$level$2258       0B6B GR
  2 A$level$2259       0B6D GR  |   2 A$level$226        00DF GR
  2 A$level$2260       0B71 GR  |   2 A$level$2261       0B73 GR
  2 A$level$2264       0B75 GR  |   2 A$level$227        00E1 GR
  2 A$level$2270       0B77 GR  |   2 A$level$2271       0B79 GR
  2 A$level$2277       0B7C GR  |   2 A$level$2283       0B7F GR
  2 A$level$2289       0B82 GR  |   2 A$level$2295       0B85 GR
  2 A$level$2301       0B88 GR  |   2 A$level$2302       0B8A GR
  2 A$level$2308       0B8D GR  |   2 A$level$2314       0B90 GR
  2 A$level$2320       0B93 GR  |   2 A$level$2326       0B96 GR
  2 A$level$2327       0B99 GR  |   2 A$level$2328       0B9B GR
  2 A$level$2329       0B9C GR  |   2 A$level$233        00E3 GR
  2 A$level$2330       0B9E GR  |   2 A$level$2331       0BA2 GR
  2 A$level$2337       0BA4 GR  |   2 A$level$2338       0BA6 GR
  2 A$level$234        00E5 GR  |   2 A$level$2341       0BA8 GR
  2 A$level$2342       0BAA GR  |   2 A$level$2343       0BAC GR
  2 A$level$2349       0BAE GR  |   2 A$level$235        00E7 GR
  2 A$level$2350       0BB1 GR  |   2 A$level$2351       0BB3 GR
  2 A$level$2352       0BB7 GR  |   2 A$level$2359       0BB9 GR
  2 A$level$236        00E9 GR  |   2 A$level$2360       0BBB GR
  2 A$level$2361       0BBC GR  |   2 A$level$2362       0BBE GR
  2 A$level$2363       0BBF GR  |   2 A$level$2364       0BC0 GR
  2 A$level$2365       0BC2 GR  |   2 A$level$237        00EB GR
  2 A$level$2371       0BC4 GR  |   2 A$level$2372       0BC6 GR
  2 A$level$2373       0BC8 GR  |   2 A$level$2374       0BCC GR
  2 A$level$2375       0BCE GR  |   2 A$level$2376       0BD0 GR
  2 A$level$238        00ED GR  |   2 A$level$2382       0BD4 GR
  2 A$level$2383       0BD6 GR  |   2 A$level$2384       0BDA GR
  2 A$level$239        00EF GR  |   2 A$level$2391       0BDC GR
  2 A$level$2392       0BDE GR  |   2 A$level$2393       0BDF GR
  2 A$level$2394       0BE2 GR  |   2 A$level$2395       0BE3 GR
  2 A$level$2396       0BE4 GR  |   2 A$level$2397       0BE6 GR
  2 A$level$240        00F1 GR  |   2 A$level$2403       0BE8 GR
  2 A$level$2404       0BEA GR  |   2 A$level$2410       0BEC GR
  2 A$level$2411       0BEE GR  |   2 A$level$2417       0BF0 GR
  2 A$level$2418       0BF2 GR  |   2 A$level$2419       0BF4 GR
  2 A$level$2420       0BF8 GR  |   2 A$level$2421       0BF9 GR
  2 A$level$2422       0BFB GR  |   2 A$level$2423       0BFC GR
  2 A$level$2424       0BFD GR  |   2 A$level$2425       0BFF GR
  2 A$level$2438       0C0D GR  |   2 A$level$2439       0C0F GR
  2 A$level$2440       0C11 GR  |   2 A$level$2441       0C13 GR
  2 A$level$2442       0C16 GR  |   2 A$level$2443       0C17 GR
  2 A$level$2444       0C18 GR  |   2 A$level$2445       0C1B GR
  2 A$level$2446       0C1D GR  |   2 A$level$2447       0C1E GR
  2 A$level$2448       0C1F GR  |   2 A$level$2449       0C20 GR
  2 A$level$2450       0C22 GR  |   2 A$level$2451       0C24 GR
  2 A$level$2452       0C26 GR  |   2 A$level$2453       0C28 GR
  2 A$level$2454       0C2A GR  |   2 A$level$2460       0C2D GR
  2 A$level$2461       0C2F GR  |   2 A$level$2468       0C32 GR
  2 A$level$2469       0C34 GR  |   2 A$level$247        00F3 GR
  2 A$level$2470       0C36 GR  |   2 A$level$2471       0C38 GR
  2 A$level$2472       0C3A GR  |   2 A$level$2473       0C3C GR
  2 A$level$2479       0C3F GR  |   2 A$level$248        00F5 GR
  2 A$level$2480       0C41 GR  |   2 A$level$2487       0C44 GR
  2 A$level$2488       0C46 GR  |   2 A$level$2489       0C48 GR
  2 A$level$249        00F7 GR  |   2 A$level$2490       0C4A GR
  2 A$level$2491       0C4C GR  |   2 A$level$2497       0C4F GR
  2 A$level$2498       0C51 GR  |   2 A$level$250        00F9 GR
  2 A$level$2505       0C53 GR  |   2 A$level$2506       0C55 GR
  2 A$level$251        00FC GR  |   2 A$level$2512       0C58 GR
  2 A$level$2513       0C5A GR  |   2 A$level$2519       0C5D GR
  2 A$level$252        00FE GR  |   2 A$level$2525       0C60 GR
  2 A$level$253        00FF GR  |   2 A$level$2532       0C62 GR
  2 A$level$2533       0C64 GR  |   2 A$level$2539       0C67 GR
  2 A$level$2540       0C69 GR  |   2 A$level$2547       0C6C GR
  2 A$level$2548       0C6E GR  |   2 A$level$2549       0C70 GR
  2 A$level$2550       0C72 GR  |   2 A$level$2552       0C76 GR
  2 A$level$2553       0C78 GR  |   2 A$level$2554       0C7B GR
  2 A$level$2555       0C7D GR  |   2 A$level$2556       0C7F GR
  2 A$level$2563       0C83 GR  |   2 A$level$2564       0C86 GR
  2 A$level$2565       0C88 GR  |   2 A$level$259        0101 GR
  2 A$level$260        0103 GR  |   2 A$level$267        0105 GR
  2 A$level$268        0107 GR  |   2 A$level$269        0109 GR
  2 A$level$270        010B GR  |   2 A$level$271        010D GR
  2 A$level$272        010F GR  |   2 A$level$273        0111 GR
  2 A$level$274        0113 GR  |   2 A$level$275        0115 GR
  2 A$level$276        0117 GR  |   2 A$level$277        0119 GR
  2 A$level$278        011B GR  |   2 A$level$279        011D GR
  2 A$level$280        011F GR  |   2 A$level$281        0120 GR
  2 A$level$282        0123 GR  |   2 A$level$283        0125 GR
  2 A$level$284        0126 GR  |   2 A$level$285        0127 GR
  2 A$level$286        0128 GR  |   2 A$level$287        012A GR
  2 A$level$289        012C GR  |   2 A$level$291        012E GR
  2 A$level$292        0130 GR  |   2 A$level$295        0131 GR
  2 A$level$296        0133 GR  |   2 A$level$297        0135 GR
  2 A$level$306        0137 GR  |   2 A$level$307        0139 GR
  2 A$level$308        013B GR  |   2 A$level$309        013C GR
  2 A$level$310        013E GR  |   2 A$level$311        0140 GR
  2 A$level$312        0141 GR  |   2 A$level$313        0143 GR
  2 A$level$314        0144 GR  |   2 A$level$315        0146 GR
  2 A$level$316        0148 GR  |   2 A$level$317        014A GR
  2 A$level$318        014C GR  |   2 A$level$319        014E GR
  2 A$level$320        0150 GR  |   2 A$level$323        0152 GR
  2 A$level$324        0154 GR  |   2 A$level$333        0156 GR
  2 A$level$334        0158 GR  |   2 A$level$335        015A GR
  2 A$level$336        015C GR  |   2 A$level$337        015D GR
  2 A$level$338        015F GR  |   2 A$level$339        0161 GR
  2 A$level$34         0000 GR  |   2 A$level$340        0162 GR
  2 A$level$341        0163 GR  |   2 A$level$342        0164 GR
  2 A$level$343        0166 GR  |   2 A$level$344        0168 GR
  2 A$level$345        016A GR  |   2 A$level$346        016C GR
  2 A$level$347        016E GR  |   2 A$level$348        016F GR
  2 A$level$349        0171 GR  |   2 A$level$35         0002 GR
  2 A$level$350        0173 GR  |   2 A$level$351        0175 GR
  2 A$level$354        0176 GR  |   2 A$level$355        0178 GR
  2 A$level$36         0004 GR  |   2 A$level$361        017B GR
  2 A$level$362        017E GR  |   2 A$level$363        017F GR
  2 A$level$364        0181 GR  |   2 A$level$365        0182 GR
  2 A$level$366        0183 GR  |   2 A$level$367        0184 GR
  2 A$level$368        0185 GR  |   2 A$level$369        0187 GR
  2 A$level$37         0006 GR  |   2 A$level$370        0189 GR
  2 A$level$371        018B GR  |   2 A$level$377        018F GR
  2 A$level$378        0192 GR  |   2 A$level$379        0194 GR
  2 A$level$38         0008 GR  |   2 A$level$380        0197 GR
  2 A$level$381        0198 GR  |   2 A$level$382        019A GR
  2 A$level$383        019E GR  |   2 A$level$389        01A0 GR
  2 A$level$39         000A GR  |   2 A$level$390        01A2 GR
  2 A$level$396        01A5 GR  |   2 A$level$40         000C GR
  2 A$level$402        01A8 GR  |   2 A$level$408        01AB GR
  2 A$level$41         000E GR  |   2 A$level$415        01AE GR
  2 A$level$416        01B1 GR  |   2 A$level$417        01B3 GR
  2 A$level$418        01B4 GR  |   2 A$level$419        01B6 GR
  2 A$level$42         0010 GR  |   2 A$level$420        01BA GR
  2 A$level$421        01BC GR  |   2 A$level$422        01BE GR
  2 A$level$423        01C0 GR  |   2 A$level$424        01C2 GR
  2 A$level$425        01C4 GR  |   2 A$level$43         0012 GR
  2 A$level$431        01C6 GR  |   2 A$level$432        01C8 GR
  2 A$level$433        01CB GR  |   2 A$level$434        01CD GR
  2 A$level$435        01CF GR  |   2 A$level$436        01D1 GR
  2 A$level$437        01D3 GR  |   2 A$level$44         0014 GR
  2 A$level$443        01D6 GR  |   2 A$level$444        01D9 GR
  2 A$level$445        01DB GR  |   2 A$level$446        01DD GR
  2 A$level$447        01DF GR  |   2 A$level$449        01E2 GR
  2 A$level$45         0016 GR  |   2 A$level$450        01E5 GR
  2 A$level$451        01E7 GR  |   2 A$level$453        01E8 GR
  2 A$level$454        01E9 GR  |   2 A$level$455        01EB GR
  2 A$level$456        01ED GR  |   2 A$level$457        01EF GR
  2 A$level$458        01F2 GR  |   2 A$level$459        01F4 GR
  2 A$level$46         0017 GR  |   2 A$level$460        01F6 GR
  2 A$level$461        01F8 GR  |   2 A$level$463        01FB GR
  2 A$level$464        01FD GR  |   2 A$level$465        01FF GR
  2 A$level$467        0200 GR  |   2 A$level$468        0201 GR
  2 A$level$469        0203 GR  |   2 A$level$47         0019 GR
  2 A$level$470        0205 GR  |   2 A$level$471        0207 GR
  2 A$level$472        020A GR  |   2 A$level$473        020B GR
  2 A$level$474        020F GR  |   2 A$level$475        0212 GR
  2 A$level$476        0214 GR  |   2 A$level$477        0215 GR
  2 A$level$478        0217 GR  |   2 A$level$479        021B GR
  2 A$level$48         001B GR  |   2 A$level$486        021F GR
  2 A$level$487        0222 GR  |   2 A$level$488        0224 GR
  2 A$level$489        0225 GR  |   2 A$level$49         001C GR
  2 A$level$490        0227 GR  |   2 A$level$491        0229 GR
  2 A$level$492        022D GR  |   2 A$level$493        0230 GR
  2 A$level$494        0233 GR  |   2 A$level$495        0236 GR
  2 A$level$496        0239 GR  |   2 A$level$497        023B GR
  2 A$level$498        023D GR  |   2 A$level$50         001E GR
  2 A$level$500        0240 GR  |   2 A$level$501        0243 GR
  2 A$level$502        0245 GR  |   2 A$level$504        0246 GR
  2 A$level$505        0247 GR  |   2 A$level$506        0249 GR
  2 A$level$507        024B GR  |   2 A$level$508        024D GR
  2 A$level$509        0251 GR  |   2 A$level$51         0020 GR
  2 A$level$510        0253 GR  |   2 A$level$511        0256 GR
  2 A$level$512        0259 GR  |   2 A$level$513        025B GR
  2 A$level$514        025D GR  |   2 A$level$516        0260 GR
  2 A$level$517        0262 GR  |   2 A$level$518        0264 GR
  2 A$level$52         0021 GR  |   2 A$level$520        0265 GR
  2 A$level$521        0266 GR  |   2 A$level$522        0268 GR
  2 A$level$523        026A GR  |   2 A$level$524        026C GR
  2 A$level$525        026F GR  |   2 A$level$526        0270 GR
  2 A$level$527        0274 GR  |   2 A$level$528        0277 GR
  2 A$level$529        0279 GR  |   2 A$level$53         0022 GR
  2 A$level$530        027A GR  |   2 A$level$531        027C GR
  2 A$level$532        0280 GR  |   2 A$level$539        0284 GR
  2 A$level$54         0024 GR  |   2 A$level$540        0287 GR
  2 A$level$541        0289 GR  |   2 A$level$542        028A GR
  2 A$level$543        028C GR  |   2 A$level$544        028E GR
  2 A$level$545        0292 GR  |   2 A$level$546        0295 GR
  2 A$level$547        0298 GR  |   2 A$level$548        029B GR
  2 A$level$549        029E GR  |   2 A$level$55         0025 GR
  2 A$level$550        02A0 GR  |   2 A$level$551        02A2 GR
  2 A$level$553        02A5 GR  |   2 A$level$554        02A8 GR
  2 A$level$555        02AA GR  |   2 A$level$557        02AB GR
  2 A$level$558        02AC GR  |   2 A$level$559        02AE GR
  2 A$level$56         0026 GR  |   2 A$level$560        02B0 GR
  2 A$level$561        02B2 GR  |   2 A$level$562        02B6 GR
  2 A$level$563        02B8 GR  |   2 A$level$564        02BB GR
  2 A$level$565        02BE GR  |   2 A$level$566        02C0 GR
  2 A$level$567        02C2 GR  |   2 A$level$569        02C5 GR
  2 A$level$57         0027 GR  |   2 A$level$570        02C7 GR
  2 A$level$571        02C9 GR  |   2 A$level$573        02CA GR
  2 A$level$574        02CB GR  |   2 A$level$575        02CD GR
  2 A$level$576        02CF GR  |   2 A$level$577        02D1 GR
  2 A$level$578        02D4 GR  |   2 A$level$579        02D5 GR
  2 A$level$58         0028 GR  |   2 A$level$580        02D9 GR
  2 A$level$581        02DC GR  |   2 A$level$582        02DE GR
  2 A$level$583        02DF GR  |   2 A$level$584        02E1 GR
  2 A$level$585        02E5 GR  |   2 A$level$59         002A GR
  2 A$level$592        02E9 GR  |   2 A$level$593        02EC GR
  2 A$level$594        02EE GR  |   2 A$level$60         002C GR
  2 A$level$600        02F2 GR  |   2 A$level$601        02F5 GR
  2 A$level$602        02F8 GR  |   2 A$level$603        02F9 GR
  2 A$level$604        02FB GR  |   2 A$level$605        02FC GR
  2 A$level$606        02FF GR  |   2 A$level$607        0302 GR
  2 A$level$608        0304 GR  |   2 A$level$609        0308 GR
  2 A$level$61         002E GR  |   2 A$level$615        030B GR
  2 A$level$616        030D GR  |   2 A$level$617        0311 GR
  2 A$level$618        0314 GR  |   2 A$level$619        0317 GR
  2 A$level$62         0030 GR  |   2 A$level$620        031A GR
  2 A$level$621        031B GR  |   2 A$level$622        031D GR
  2 A$level$623        0321 GR  |   2 A$level$629        0325 GR
  2 A$level$63         0032 GR  |   2 A$level$630        0328 GR
  2 A$level$631        032A GR  |   2 A$level$632        032B GR
  2 A$level$633        032D GR  |   2 A$level$634        0331 GR
  2 A$level$635        0333 GR  |   2 A$level$636        0336 GR
  2 A$level$637        0337 GR  |   2 A$level$64         0034 GR
  2 A$level$643        0339 GR  |   2 A$level$644        033B GR
  2 A$level$645        033E GR  |   2 A$level$646        0341 GR
  2 A$level$65         0038 GR  |   2 A$level$652        0344 GR
  2 A$level$653        0346 GR  |   2 A$level$654        0347 GR
  2 A$level$655        0348 GR  |   2 A$level$66         003A GR
  2 A$level$664        034A GR  |   2 A$level$665        034D GR
  2 A$level$666        0350 GR  |   2 A$level$667        0352 GR
  2 A$level$668        0354 GR  |   2 A$level$67         003C GR
  2 A$level$670        0357 GR  |   2 A$level$671        0359 GR
  2 A$level$672        035D GR  |   2 A$level$673        035F GR
  2 A$level$674        0361 GR  |   2 A$level$675        0362 GR
  2 A$level$676        0363 GR  |   2 A$level$677        0365 GR
  2 A$level$679        0367 GR  |   2 A$level$680        0369 GR
  2 A$level$681        036C GR  |   2 A$level$682        0370 GR
  2 A$level$683        0373 GR  |   2 A$level$684        0376 GR
  2 A$level$685        0379 GR  |   2 A$level$686        037B GR
  2 A$level$687        037D GR  |   2 A$level$688        0380 GR
  2 A$level$69         003E GR  |   2 A$level$690        0383 GR
  2 A$level$691        0386 GR  |   2 A$level$692        0389 GR
  2 A$level$693        038A GR  |   2 A$level$694        038B GR
  2 A$level$695        038C GR  |   2 A$level$696        038E GR
  2 A$level$697        0390 GR  |   2 A$level$698        0394 GR
  2 A$level$699        0396 GR  |   2 A$level$700        0398 GR
  2 A$level$701        0399 GR  |   2 A$level$702        039A GR
  2 A$level$703        039C GR  |   2 A$level$705        039E GR
  2 A$level$706        03A1 GR  |   2 A$level$71         003F GR
  2 A$level$712        03A5 GR  |   2 A$level$713        03A7 GR
  2 A$level$714        03AA GR  |   2 A$level$72         0041 GR
  2 A$level$720        03AE GR  |   2 A$level$721        03B1 GR
  2 A$level$722        03B2 GR  |   2 A$level$723        03B4 GR
  2 A$level$724        03B5 GR  |   2 A$level$725        03B6 GR
  2 A$level$726        03B7 GR  |   2 A$level$727        03B8 GR
  2 A$level$728        03BA GR  |   2 A$level$729        03BD GR
  2 A$level$730        03BF GR  |   2 A$level$731        03C1 GR
  2 A$level$732        03C3 GR  |   2 A$level$738        03C5 GR
  2 A$level$739        03C7 GR  |   2 A$level$740        03C9 GR
  2 A$level$742        03CC GR  |   2 A$level$743        03CF GR
  2 A$level$744        03D1 GR  |   2 A$level$745        03D5 GR
  2 A$level$746        03D8 GR  |   2 A$level$747        03DB GR
  2 A$level$748        03DE GR  |   2 A$level$749        03DF GR
  2 A$level$750        03E1 GR  |   2 A$level$751        03E5 GR
  2 A$level$752        03E7 GR  |   2 A$level$758        03EB GR
  2 A$level$759        03EE GR  |   2 A$level$760        03F0 GR
  2 A$level$761        03F1 GR  |   2 A$level$762        03F3 GR
  2 A$level$763        03F7 GR  |   2 A$level$764        03F9 GR
  2 A$level$765        03FC GR  |   2 A$level$766        03FD GR
  2 A$level$772        03FF GR  |   2 A$level$773        0401 GR
  2 A$level$774        0404 GR  |   2 A$level$775        0407 GR
  2 A$level$781        040A GR  |   2 A$level$782        040C GR
  2 A$level$783        040D GR  |   2 A$level$792        040E GR
  2 A$level$793        040F GR  |   2 A$level$794        0410 GR
  2 A$level$80         0043 GR  |   2 A$level$803        0412 GR
  2 A$level$804        0415 GR  |   2 A$level$805        0418 GR
  2 A$level$806        041A GR  |   2 A$level$807        041C GR
  2 A$level$809        041F GR  |   2 A$level$81         0046 GR
  2 A$level$810        0421 GR  |   2 A$level$811        0425 GR
  2 A$level$812        0427 GR  |   2 A$level$813        0429 GR
  2 A$level$814        042A GR  |   2 A$level$815        042B GR
  2 A$level$816        042D GR  |   2 A$level$818        042F GR
  2 A$level$819        0431 GR  |   2 A$level$82         0047 GR
  2 A$level$820        0434 GR  |   2 A$level$821        0438 GR
  2 A$level$822        043B GR  |   2 A$level$823        043E GR
  2 A$level$824        0441 GR  |   2 A$level$825        0443 GR
  2 A$level$826        0445 GR  |   2 A$level$827        0448 GR
  2 A$level$829        044B GR  |   2 A$level$83         0049 GR
  2 A$level$830        044E GR  |   2 A$level$831        0451 GR
  2 A$level$832        0452 GR  |   2 A$level$833        0453 GR
  2 A$level$834        0454 GR  |   2 A$level$835        0455 GR
  2 A$level$836        0456 GR  |   2 A$level$837        0458 GR
  2 A$level$838        045A GR  |   2 A$level$839        045E GR
  2 A$level$840        0460 GR  |   2 A$level$841        0462 GR
  2 A$level$842        0463 GR  |   2 A$level$843        0464 GR
  2 A$level$844        0466 GR  |   2 A$level$846        0468 GR
  2 A$level$847        046B GR  |   2 A$level$853        046F GR
  2 A$level$854        0471 GR  |   2 A$level$855        0474 GR
  2 A$level$86         004A GR  |   2 A$level$861        0478 GR
  2 A$level$862        047B GR  |   2 A$level$863        047C GR
  2 A$level$864        047E GR  |   2 A$level$865        047F GR
  2 A$level$866        0480 GR  |   2 A$level$867        0481 GR
  2 A$level$868        0482 GR  |   2 A$level$869        0484 GR
  2 A$level$87         004C GR  |   2 A$level$870        0487 GR
  2 A$level$871        0489 GR  |   2 A$level$872        048B GR
  2 A$level$873        048D GR  |   2 A$level$879        048F GR
  2 A$level$88         004E GR  |   2 A$level$880        0491 GR
  2 A$level$881        0493 GR  |   2 A$level$883        0496 GR
  2 A$level$884        0499 GR  |   2 A$level$885        049B GR
  2 A$level$886        049F GR  |   2 A$level$887        04A2 GR
  2 A$level$888        04A5 GR  |   2 A$level$889        04A8 GR
  2 A$level$890        04A9 GR  |   2 A$level$891        04AB GR
  2 A$level$892        04AF GR  |   2 A$level$893        04B1 GR
  2 A$level$899        04B5 GR  |   2 A$level$900        04B8 GR
  2 A$level$901        04BA GR  |   2 A$level$902        04BB GR
  2 A$level$903        04BD GR  |   2 A$level$904        04C1 GR
  2 A$level$905        04C3 GR  |   2 A$level$906        04C6 GR
  2 A$level$907        04C7 GR  |   2 A$level$913        04C9 GR
  2 A$level$914        04CB GR  |   2 A$level$915        04CE GR
  2 A$level$916        04D1 GR  |   2 A$level$922        04D4 GR
  2 A$level$923        04D6 GR  |   2 A$level$924        04D7 GR
  2 A$level$933        04D8 GR  |   2 A$level$934        04D9 GR
  2 A$level$94         0050 GR  |   2 A$level$943        04DA GR
  2 A$level$944        04DB GR  |   2 A$level$945        04DC GR
  2 A$level$95         0052 GR  |   2 A$level$954        04DE GR
  2 A$level$955        04E1 GR  |   2 A$level$956        04E4 GR
  2 A$level$957        04E6 GR  |   2 A$level$958        04E8 GR
  2 A$level$96         0054 GR  |   2 A$level$960        04EB GR
  2 A$level$961        04ED GR  |   2 A$level$962        04F1 GR
  2 A$level$963        04F3 GR  |   2 A$level$964        04F5 GR
  2 A$level$965        04F6 GR  |   2 A$level$966        04F7 GR
  2 A$level$967        04F9 GR  |   2 A$level$969        04FB GR
  2 A$level$97         0055 GR  |   2 A$level$970        04FD GR
  2 A$level$971        0500 GR  |   2 A$level$972        0504 GR
  2 A$level$973        0507 GR  |   2 A$level$974        050A GR
  2 A$level$975        050D GR  |   2 A$level$976        050F GR
  2 A$level$977        0511 GR  |   2 A$level$978        0514 GR
  2 A$level$98         0057 GR  |   2 A$level$980        0517 GR
  2 A$level$981        051A GR  |   2 A$level$982        051D GR
  2 A$level$983        051E GR  |   2 A$level$984        051F GR
  2 A$level$985        0520 GR  |   2 A$level$986        0521 GR
  2 A$level$987        0522 GR  |   2 A$level$988        0523 GR
  2 A$level$989        0524 GR  |   2 A$level$99         0059 GR
  2 A$level$990        0526 GR  |   2 A$level$991        0528 GR
  2 A$level$992        052C GR  |   2 A$level$993        052E GR
  2 A$level$994        0530 GR  |   2 A$level$995        0531 GR
  2 A$level$996        0532 GR  |   2 A$level$997        0534 GR
  2 A$level$999        0536 GR  |   2 L100               0A1E R
  2 L101               0A2C R   |   2 L102               0A26 R
  2 L103               0A4A R   |   2 L104               09FD R
  2 L105               09F5 R   |   2 L11                00BB R
  2 L110               0A8F R   |   2 L111               0A90 R
  2 L112               0AAC R   |   2 L113               0B0F R
  2 L114               0ABE R   |   2 L115               0AD9 R
  2 L116               0AF4 R   |   2 L117               0B2D R
  2 L118               0B3B R   |   2 L119               0B35 R
  2 L120               0B59 R   |   2 L121               0A7E R
  2 L122               0A6D R   |   2 L129               0C83 R
  2 L13                00CE R   |   2 L130               0C76 R
  2 L131               0C6C R   |   2 L132               0C0D R
  2 L133               0C32 R   |   2 L134               0C44 R
  2 L135               0C53 R   |   2 L136               0C62 R
  2 L137               0C03 R   |   2 L139               0BDC R
  2 L140               0BB9 R   |   2 L15                00F3 R
  2 L16                0105 R   |   2 L17                012C R
  2 L19                012E R   |   2 L2                 003E R
  2 L26                01AE R   |   2 L29                01E2 R
  2 L3                 003F R   |   2 L30                021F R
  2 L31                01E8 R   |   2 L33                01FB R
  2 L34                0200 R   |   2 L36                0240 R
  2 L37                0284 R   |   2 L38                0246 R
  2 L40                0260 R   |   2 L41                0265 R
  2 L43                02A5 R   |   2 L44                02E9 R
  2 L45                02AB R   |   2 L47                02C5 R
  2 L48                02CA R   |   2 L49                055F R
  2 L50                03CC R   |   2 L52                0357 R
  2 L53                0367 R   |   2 L55                0383 R
  2 L56                039E R   |   2 L57                0496 R
  2 L59                041F R   |   2 L60                042F R
  2 L62                044B R   |   2 L63                0468 R
  2 L65                04EB R   |   2 L66                04FB R
  2 L68                0517 R   |   2 L69                0536 R
  2 L70                0584 R   |   2 L74                06EE R
  2 L75                070A R   |   2 L76                0719 R
  2 L77                0700 R   |   2 L78                06FC R
  2 L8                 007D R   |   2 L85                07FC R
  2 L87                08AD R   |   2 L88                0945 R
  2 L90                0959 R   |   2 L92                099C R
  2 L93                0998 R   |   2 L94                096B R
  2 L95                09D7 R   |   2 L96                09D3 R
  2 L97                09A6 R   |   2 LC0                0733 R
  2 _addLine           095D GR  |   2 _addLineImpl       0800 GR
  2 _addSplit          0743 GR  |   2 _addTarget         0589 GR
    _blockX            **** GX  |     _blockX2           **** GX
    _blockY            **** GX  |     _blockY2           **** GX
  2 _checkHalfling     0176 GR  |   3 _endX              0001 GR
  3 _endY              0002 GR  |   2 _getField          0000 GR
  2 _getShifts         0043 GR  |   2 _initLevel         0B75 GR
  2 _initSwatches      06E7 GR  |   2 _isField           00D2 GR
  2 _isSwatchField     004A GR  |   3 _last_s            0006 GR
  3 _last_x            0004 GR  |   3 _last_y            0005 GR
  4 _level             0000 GR  |   3 _levelNumber       0003 GR
    _levelOffset       **** GX  |   3 _lineCount         0000 GR
  4 _lineYX_yx_s_d     0015 GR  |     _runtimeError      **** GX
    _setSplitMode      **** GX  |   2 _setSwatchFiel     0081 GR
  2 _setupX            0A61 GR  |   2 _setupY            09EF GR
  2 _shifts            0C8A GR  |   2 _swatchSwitch      0BA8 GR
  4 _swatchesOn        0002 GR  |   2 _useHalfling       0C92 GR
  2 _x3d               0131 GR  |   2 _y3d               0152 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  CBA   flags  100
   3 .data            size    7   flags  100
   4 .bss             size  23B   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

