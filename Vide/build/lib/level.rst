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
   358D                      33 _getField:
   358D 34 60         [ 7]   34 	pshs	y,u	; 
   358F 32 7B         [ 5]   35 	leas	-5,s	; ,,
   3591 E7 64         [ 5]   36 	stb	4,s	;  x, x
   3593 2D 36         [ 3]   37 	blt	L2	; 
   3595 6D 6B         [ 7]   38 	tst	11,s	;  y
   3597 2D 32         [ 3]   39 	blt	L2	; 
   3599 C1 09         [ 2]   40 	cmpb	#9	;cmpqi:	;  x,
   359B 2E 2E         [ 3]   41 	bgt	L2	; 
   359D E6 6B         [ 5]   42 	ldb	11,s	; , y
   359F C1 0E         [ 2]   43 	cmpb	#14	;cmpqi:	; ,
   35A1 2E 28         [ 3]   44 	bgt	L2	; 
   35A3 1D            [ 2]   45 	sex		;extendqihi2: R:b -> R:d	; ,
   35A4 ED E4         [ 5]   46 	std	,s	; ,
   35A6 E6 64         [ 5]   47 	ldb	4,s	; , x
   35A8 1D            [ 2]   48 	sex		;extendqihi2: R:b -> R:d	; ,
   35A9 1F 02         [ 6]   49 	tfr	d,y	; , x
   35AB EC E4         [ 5]   50 	ldd	,s	; ,
   35AD 58            [ 2]   51 	aslb	; 
   35AE 49            [ 2]   52 	rola	; 
   35AF ED 62         [ 6]   53 	std	2,s	; ,
   35B1 58            [ 2]   54 	aslb	; 
   35B2 49            [ 2]   55 	rola	; 
   35B3 58            [ 2]   56 	aslb	; 
   35B4 49            [ 2]   57 	rola	; 
   35B5 EE 62         [ 6]   58 	ldu	2,s	; ,
   35B7 30 CB         [ 8]   59 	leax	d,u	;  tmp38, tmp37,
   35B9 1E 02         [ 8]   60 	exg	d,y	; , x
   35BB 30 8B         [ 8]   61 	leax	d,x	;  tmp39,, tmp39
   35BD 1E 02         [ 8]   62 	exg	d,y	; , x
   35BF 1E 01         [ 8]   63 	exg	d,x	; , tmp40
   35C1 E3 9F C8 F1   [11]   64 	addd	[_level]	; , <variable>.geometry
   35C5 1E 01         [ 8]   65 	exg	d,x	; , tmp40
   35C7 E6 84         [ 4]   66 	ldb	,x	;  c,
   35C9 20 01         [ 3]   67 	bra	L3	; 
   35CB                      68 L2:
   35CB 5F            [ 2]   69 	clrb	;  c
   35CC                      70 L3:
   35CC 32 65         [ 5]   71 	leas	5,s	; ,,
   35CE 35 E0         [ 8]   72 	puls	y,u,pc	; 
                             73 	.globl _getShifts
   35D0                      74 _getShifts:
                             75 ;----- asm -----
                             76 ;  36 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                             77 	; #ENR#[35]    return shifts[bit];
                             78 ;  0 "" 2
                             79 ;--- end asm ---
   35D0 8E 3C C0      [ 3]   80 	ldx	#_shifts	; 
   35D3 3A            [ 3]   81 	abx
   35D4 E6 84         [ 4]   82 	ldb	,x	;  tmp33
   35D6 39            [ 5]   83 	rts
                             84 	.globl _isSwatchFieldOn
   35D7                      85 _isSwatchFieldOn:
   35D7 34 40         [ 6]   86 	pshs	u	; 
   35D9 32 7E         [ 5]   87 	leas	-2,s	; ,,
   35DB E7 E4         [ 4]   88 	stb	,s	;  x, x
                             89 ;----- asm -----
                             90 ;  42 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                             91 	; #ENR#[40]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                             92 ;  0 "" 2
                             93 ;--- end asm ---
   35DD E6 66         [ 5]   94 	ldb	6,s	; , y
   35DF 86 0A         [ 2]   95 	lda	#10	;mulqihi3	; 
   35E1 3D            [11]   96 	mul
   35E2 1F 01         [ 6]   97 	tfr	d,x	; , tmp33
   35E4 E6 E4         [ 4]   98 	ldb	,s	; , x
   35E6 1D            [ 2]   99 	sex		;extendqihi2: R:b -> R:d	; ,
   35E7 1F 03         [ 6]  100 	tfr	d,u	; , x
   35E9 1E 01         [ 8]  101 	exg	d,x	; , tmp33
   35EB 33 CB         [ 8]  102 	leau	d,u	;  index,, index
                            103 ;----- asm -----
                            104 ;  44 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            105 	; #ENR#[41]    uint8_t bit = (uint8_t) (index & 7);
                            106 ;  0 "" 2
                            107 ;  46 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            108 	; #ENR#[42]    index >>= 3;
                            109 ;  0 "" 2
                            110 ;  48 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            111 	; #ENR#[43]    return (swatchesOn[index] & getShifts(bit)) > 0;
                            112 ;  0 "" 2
                            113 ;--- end asm ---
   35ED 1F 30         [ 6]  114 	tfr	u,d	;  index,
   35EF 47            [ 2]  115 	asra	; 
   35F0 56            [ 2]  116 	rorb	; 
   35F1 47            [ 2]  117 	asra	; 
   35F2 56            [ 2]  118 	rorb	; 
   35F3 47            [ 2]  119 	asra	; 
   35F4 56            [ 2]  120 	rorb	; 
   35F5 1F 01         [ 6]  121 	tfr	d,x	; , tmp35
   35F7 E6 89 C8 F3   [ 8]  122 	ldb	_swatchesOn,x	; , swatchesOn
   35FB E7 61         [ 5]  123 	stb	1,s	; , D.1326
   35FD 1F 30         [ 6]  124 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  index, index
   35FF C4 07         [ 2]  125 	andb	#7	;  tmp38,
   3601 BD 35 D0      [ 8]  126 	jsr	_getShifts	; 
   3604 E4 61         [ 5]  127 	andb	1,s	;  tmp40, D.1326
   3606 27 02         [ 3]  128 	beq	L8	; 
   3608 C6 01         [ 2]  129 	ldb	#1	;  tmp40,
   360A                     130 L8:
   360A 32 62         [ 5]  131 	leas	2,s	; ,,
   360C 35 C0         [ 7]  132 	puls	u,pc	; 
                            133 	.globl _setSwatchField
   360E                     134 _setSwatchField:
   360E 34 20         [ 6]  135 	pshs	y	; 
   3610 32 7C         [ 5]  136 	leas	-4,s	; ,,
   3612 E7 E4         [ 4]  137 	stb	,s	;  x, x
                            138 ;----- asm -----
                            139 ;  54 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            140 	; #ENR#[48]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                            141 ;  0 "" 2
                            142 ;--- end asm ---
   3614 E6 68         [ 5]  143 	ldb	8,s	; , y
   3616 86 0A         [ 2]  144 	lda	#10	;mulqihi3	; 
   3618 3D            [11]  145 	mul
   3619 1F 01         [ 6]  146 	tfr	d,x	; , tmp37
   361B E6 E4         [ 4]  147 	ldb	,s	; , x
   361D 1D            [ 2]  148 	sex		;extendqihi2: R:b -> R:d	; ,
                            149 ; Applied peep: 4-2 (tfr exg 1=1, 2=2)
   361E 1F 02         [ 6]  150 	tfr	d,y	; , x
                            151 ; ORG>	tfr	d,y	; , x
                            152 ; ORG>	exg	d,y	; , x
   3620 30 8B         [ 8]  153 	leax	d,x	;  index,, index
                            154 ;----- asm -----
                            155 ;  56 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            156 	; #ENR#[49]    uint8_t bit = (uint8_t) (index & 7);
                            157 ;  0 "" 2
                            158 ;--- end asm ---
   3622 1F 10         [ 6]  159 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  index, index
   3624 C4 07         [ 2]  160 	andb	#7	;  index,
   3626 E7 62         [ 5]  161 	stb	2,s	;  index, bit
                            162 ;----- asm -----
                            163 ;  58 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            164 	; #ENR#[50]    index >>= 3;
                            165 ;  0 "" 2
                            166 ;--- end asm ---
   3628 1F 10         [ 6]  167 	tfr	x,d	;  index, index.43
   362A 47            [ 2]  168 	asra	; 
   362B 56            [ 2]  169 	rorb	; 
   362C 47            [ 2]  170 	asra	; 
   362D 56            [ 2]  171 	rorb	; 
   362E 47            [ 2]  172 	asra	; 
   362F 56            [ 2]  173 	rorb	; 
                            174 ;----- asm -----
                            175 ;  60 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            176 	; #ENR#[51]    if (on) {
                            177 ;  0 "" 2
                            178 ;--- end asm ---
   3630 6D 69         [ 7]  179 	tst	9,s	;  on
   3632 27 14         [ 3]  180 	beq	L11	; 
                            181 ;----- asm -----
                            182 ;  62 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            183 	; #ENR#[52]        swatchesOn[index] |= getShifts(bit);
                            184 ;  0 "" 2
                            185 ;--- end asm ---
   3634 8E C8 F3      [ 3]  186 	ldx	#_swatchesOn	; ,
   3637 31 8B         [ 8]  187 	leay	d,x	;  tmp41, index.43,
   3639 E6 A4         [ 4]  188 	ldb	,y	; , swatchesOn
   363B E7 61         [ 5]  189 	stb	1,s	; , D.1341
   363D E6 62         [ 5]  190 	ldb	2,s	; , bit
   363F BD 35 D0      [ 8]  191 	jsr	_getShifts	; 
   3642 EA 61         [ 5]  192 	orb	1,s	;  tmp44, D.1341
   3644 E7 A4         [ 4]  193 	stb	,y	;  tmp44, swatchesOn
   3646 20 13         [ 3]  194 	bra	L13	; 
   3648                     195 L11:
                            196 ;----- asm -----
                            197 ;  65 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            198 	; #ENR#[54]        swatchesOn[index] &= ~getShifts(bit);
                            199 ;  0 "" 2
                            200 ;--- end asm ---
   3648 8E C8 F3      [ 3]  201 	ldx	#_swatchesOn	; ,
   364B 31 8B         [ 8]  202 	leay	d,x	;  tmp46, index.43,
   364D E6 A4         [ 4]  203 	ldb	,y	; , swatchesOn
   364F E7 63         [ 5]  204 	stb	3,s	; , temp.44
   3651 E6 62         [ 5]  205 	ldb	2,s	; , bit
   3653 BD 35 D0      [ 8]  206 	jsr	_getShifts	; 
   3656 53            [ 2]  207 	comb	;  tmp49
   3657 E4 63         [ 5]  208 	andb	3,s	;  tmp50, temp.44
   3659 E7 A4         [ 4]  209 	stb	,y	;  tmp50, swatchesOn
   365B                     210 L13:
   365B 32 64         [ 5]  211 	leas	4,s	; ,,
   365D 35 A0         [ 7]  212 	puls	y,pc	; 
                            213 	.globl _isField
   365F                     214 _isField:
   365F 32 7E         [ 5]  215 	leas	-2,s	; ,,
   3661 E7 E4         [ 4]  216 	stb	,s	;  x, x
                            217 ;----- asm -----
                            218 ;  72 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            219 	; #ENR#[60]    char c = getField(x, y);
                            220 ;  0 "" 2
                            221 ;--- end asm ---
   3663 E6 64         [ 5]  222 	ldb	4,s	; , y
   3665 34 04         [ 6]  223 	pshs	b	; 
   3667 E6 61         [ 5]  224 	ldb	1,s	; , x
   3669 BD 35 8D      [ 8]  225 	jsr	_getField	; 
   366C 32 61         [ 5]  226 	leas	1,s	; ,,
   366E E7 61         [ 5]  227 	stb	1,s	; , c
                            228 ;----- asm -----
                            229 ;  76 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            230 	; #ENR#[63]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
                            231 ;  0 "" 2
                            232 ;--- end asm ---
   3670 C1 6C         [ 2]  233 	cmpb	#108	;cmpqi:	; ,
   3672 27 0C         [ 3]  234 	beq	L15	; 
   3674 C1 72         [ 2]  235 	cmpb	#114	;cmpqi:	; ,
   3676 27 08         [ 3]  236 	beq	L15	; 
   3678 C1 6B         [ 2]  237 	cmpb	#107	;cmpqi:	; ,
   367A 27 04         [ 3]  238 	beq	L15	; 
   367C C1 71         [ 2]  239 	cmpb	#113	;cmpqi:	; ,
   367E 26 12         [ 3]  240 	bne	L16	; 
   3680                     241 L15:
                            242 ;----- asm -----
                            243 ;  78 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            244 	; #ENR#[64]        if (isSwatchFieldOn(x, y)) {
                            245 ;  0 "" 2
                            246 ;--- end asm ---
   3680 E6 64         [ 5]  247 	ldb	4,s	; , y
   3682 34 04         [ 6]  248 	pshs	b	; 
   3684 E6 61         [ 5]  249 	ldb	1,s	; , x
   3686 BD 35 D7      [ 8]  250 	jsr	_isSwatchFieldOn	; 
   3689 32 61         [ 5]  251 	leas	1,s	; ,,
   368B 5D            [ 2]  252 	tstb	;  D.1355
   368C 27 04         [ 3]  253 	beq	L16	; 
                            254 ;----- asm -----
                            255 ;  80 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            256 	; #ENR#[65]            c = 'b';
                            257 ;  0 "" 2
                            258 ;--- end asm ---
   368E C6 62         [ 2]  259 	ldb	#98	; ,
   3690 E7 61         [ 5]  260 	stb	1,s	; , c
   3692                     261 L16:
                            262 ;----- asm -----
                            263 ;  86 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            264 	; #ENR#[70]    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
                            265 ;  0 "" 2
                            266 ;--- end asm ---
   3692 E6 61         [ 5]  267 	ldb	1,s	; , c
   3694 C1 62         [ 2]  268 	cmpb	#98	;cmpqi:	; ,
   3696 27 21         [ 3]  269 	beq	L17	; 
   3698 C1 65         [ 2]  270 	cmpb	#101	;cmpqi:	; ,
   369A 27 1D         [ 3]  271 	beq	L17	; 
   369C C1 73         [ 2]  272 	cmpb	#115	;cmpqi:	; ,
   369E 27 19         [ 3]  273 	beq	L17	; 
   36A0 C1 68         [ 2]  274 	cmpb	#104	;cmpqi:	; ,
   36A2 27 15         [ 3]  275 	beq	L17	; 
   36A4 C1 66         [ 2]  276 	cmpb	#102	;cmpqi:	; ,
   36A6 27 11         [ 3]  277 	beq	L17	; 
   36A8 C1 76         [ 2]  278 	cmpb	#118	;cmpqi:	; ,
   36AA C8 76         [ 2]  279 	eorb	#118	;  tmp34,
   36AC 4F            [ 2]  280 	clra		;zero_extendqihi: R:b -> R:d	;  tmp34, tmp35
   36AD C3 FF FF      [ 4]  281 	addd	#-1	;  tmp36,
   36B0 1F 89         [ 6]  282 	tfr	a,b	; ,
   36B2 4F            [ 2]  283 	clra		;zero_extendqihi: R:b -> R:d	; ,
   36B3 59            [ 2]  284 	rolb	; 
   36B4 59            [ 2]  285 	rolb	; 
   36B5 C4 01         [ 2]  286 	andb	#1	; ,
   36B7 20 02         [ 3]  287 	bra	L19	; 
   36B9                     288 L17:
   36B9 C6 01         [ 2]  289 	ldb	#1	;  iftmp.5,
   36BB                     290 L19:
   36BB 32 62         [ 5]  291 	leas	2,s	; ,,
   36BD 39            [ 5]  292 	rts
                            293 	.globl _x3d
   36BE                     294 _x3d:
   36BE 34 40         [ 6]  295 	pshs	u	; 
   36C0 32 7E         [ 5]  296 	leas	-2,s	; ,,
   36C2 E7 E4         [ 4]  297 	stb	,s	;  x, x
                            298 ;----- asm -----
                            299 ;  155 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            300 	; #ENR#[111]    x -= LEVEL_WIDTH / 2 - 4;
                            301 ;  0 "" 2
                            302 ;  157 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            303 	; #ENR#[112]    return 14 * x - 6 * z;
                            304 ;  0 "" 2
                            305 ;--- end asm ---
   36C4 E6 66         [ 5]  306 	ldb	6,s	; , z
   36C6 86 FA         [ 2]  307 	lda	#-6	;mulqihi3	; 
   36C8 3D            [11]  308 	mul
   36C9 1F 01         [ 6]  309 	tfr	d,x	; , tmp31
   36CB E6 E4         [ 4]  310 	ldb	,s	;  tmp32, x
   36CD 5A            [ 2]  311 	decb	;  tmp32
   36CE 86 0E         [ 2]  312 	lda	#14	;mulqihi3	; 
   36D0 3D            [11]  313 	mul
   36D1 1F 03         [ 6]  314 	tfr	d,u	; , tmp33
   36D3 1F 10         [ 6]  315 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp31,
   36D5 E7 61         [ 5]  316 	stb	1,s	; ,
   36D7 1F 30         [ 6]  317 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp33, tmp35
   36D9 EB 61         [ 5]  318 	addb	1,s	;  tmp30,
   36DB 32 62         [ 5]  319 	leas	2,s	; ,,
   36DD 35 C0         [ 7]  320 	puls	u,pc	; 
                            321 	.globl _y3d
   36DF                     322 _y3d:
   36DF 32 7D         [ 5]  323 	leas	-3,s	; ,,
   36E1 E7 62         [ 5]  324 	stb	2,s	;  x, x
                            325 ;----- asm -----
                            326 ;  164 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            327 	; #ENR#[118]    y -= LEVEL_HEIGHT / 2;
                            328 ;  0 "" 2
                            329 ;  166 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            330 	; #ENR#[119]    return 3 * x + 13 * y + 8 * z;
                            331 ;  0 "" 2
                            332 ;--- end asm ---
   36E3 E6 65         [ 5]  333 	ldb	5,s	;  tmp32, y
   36E5 CB F9         [ 2]  334 	addb	#-7	;  tmp32,
   36E7 86 0D         [ 2]  335 	lda	#13	;mulqihi3	; 
   36E9 3D            [11]  336 	mul
   36EA 1F 01         [ 6]  337 	tfr	d,x	; , tmp33
   36EC E6 66         [ 5]  338 	ldb	6,s	; , z
   36EE 58            [ 2]  339 	aslb	; 
   36EF 58            [ 2]  340 	aslb	; 
   36F0 58            [ 2]  341 	aslb	; 
   36F1 E7 61         [ 5]  342 	stb	1,s	; ,
   36F3 1F 10         [ 6]  343 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
   36F5 EB 61         [ 5]  344 	addb	1,s	;  tmp36,
   36F7 E7 E4         [ 4]  345 	stb	,s	;  tmp36,
   36F9 E6 62         [ 5]  346 	ldb	2,s	;  tmp38, x
   36FB 58            [ 2]  347 	aslb	;  tmp38
   36FC EB 62         [ 5]  348 	addb	2,s	;  tmp39, x
   36FE EB E4         [ 4]  349 	addb	,s	;  tmp31,
   3700 32 63         [ 5]  350 	leas	3,s	; ,,
   3702 39            [ 5]  351 	rts
                            352 	.globl _addTarget
   3703                     353 _addTarget:
   3703 34 40         [ 6]  354 	pshs	u	; 
   3705 32 70         [ 5]  355 	leas	-16,s	; ,,
   3707 E7 61         [ 5]  356 	stb	1,s	;  x, x
                            357 ;----- asm -----
                            358 ;  245 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            359 	; #ENR#[170]    lineX0[lineCount] = x3d(x, y);
                            360 ;  0 "" 2
                            361 ;--- end asm ---
   3709 F6 C8 80      [ 5]  362 	ldb	_lineCount	; , lineCount
   370C E7 62         [ 5]  363 	stb	2,s	; , lineCount.13
   370E E6 E8 14      [ 5]  364 	ldb	20,s	; , y
   3711 34 04         [ 6]  365 	pshs	b	; 
   3713 E6 62         [ 5]  366 	ldb	2,s	; , x
   3715 BD 36 BE      [ 8]  367 	jsr	_x3d	; 
   3718 E7 61         [ 5]  368 	stb	1,s	; , D.1469
   371A E6 63         [ 5]  369 	ldb	3,s	; , lineCount.13
   371C 4F            [ 2]  370 	clra		;zero_extendqihi: R:b -> R:d	; ,
   371D 1F 01         [ 6]  371 	tfr	d,x	; , lineCount.13
   371F E6 61         [ 5]  372 	ldb	1,s	; , D.1469
   3721 E7 89 C9 06   [ 8]  373 	stb	_lineX0,x	; , lineX0
                            374 ;----- asm -----
                            375 ;  247 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            376 	; #ENR#[171]    lineY0[lineCount] = y3d(x, 0, y);
                            377 ;  0 "" 2
                            378 ;--- end asm ---
   3725 F6 C8 80      [ 5]  379 	ldb	_lineCount	; , lineCount
   3728 E7 6B         [ 5]  380 	stb	11,s	; , lineCount.68
   372A E6 E8 15      [ 5]  381 	ldb	21,s	; , y
   372D 34 04         [ 6]  382 	pshs	b	; 
   372F 6F E2         [ 8]  383 	clr	,-s	; 
   3731 E6 64         [ 5]  384 	ldb	4,s	; , x
   3733 BD 36 DF      [ 8]  385 	jsr	_y3d	; 
   3736 E7 63         [ 5]  386 	stb	3,s	; , D.1470
   3738 E6 6D         [ 5]  387 	ldb	13,s	; , lineCount.68
   373A 4F            [ 2]  388 	clra		;zero_extendqihi: R:b -> R:d	; ,
   373B 1F 01         [ 6]  389 	tfr	d,x	; , lineCount.68
   373D E6 63         [ 5]  390 	ldb	3,s	; , D.1470
   373F E7 89 C9 7E   [ 8]  391 	stb	_lineY0,x	; , lineY0
                            392 ;----- asm -----
                            393 ;  249 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            394 	; #ENR#[172]    lineX1[lineCount] = x3d(x + 1, y + 1);
                            395 ;  0 "" 2
                            396 ;--- end asm ---
   3743 F6 C8 80      [ 5]  397 	ldb	_lineCount	; , lineCount
   3746 E7 6E         [ 5]  398 	stb	14,s	; , lineCount.69
   3748 E6 E8 17      [ 5]  399 	ldb	23,s	; , y
   374B 5C            [ 2]  400 	incb	; 
   374C E7 66         [ 5]  401 	stb	6,s	; , D.1471
   374E E6 64         [ 5]  402 	ldb	4,s	; , x
   3750 5C            [ 2]  403 	incb	; 
   3751 E7 67         [ 5]  404 	stb	7,s	; , D.1472
   3753 E6 66         [ 5]  405 	ldb	6,s	; , D.1471
   3755 34 04         [ 6]  406 	pshs	b	; 
   3757 E6 68         [ 5]  407 	ldb	8,s	; , D.1472
   3759 BD 36 BE      [ 8]  408 	jsr	_x3d	; 
   375C E7 64         [ 5]  409 	stb	4,s	; , D.1473
   375E E6 6F         [ 5]  410 	ldb	15,s	; , lineCount.69
   3760 4F            [ 2]  411 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3761 1F 01         [ 6]  412 	tfr	d,x	; , lineCount.69
   3763 E6 64         [ 5]  413 	ldb	4,s	; , D.1473
   3765 E7 89 C9 F6   [ 8]  414 	stb	_lineX1,x	; , lineX1
                            415 ;----- asm -----
                            416 ;  251 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            417 	; #ENR#[173]    lineY1[lineCount] = y3d(x + 1, 0, y + 1);
                            418 ;  0 "" 2
                            419 ;--- end asm ---
   3769 F6 C8 80      [ 5]  420 	ldb	_lineCount	; , lineCount
   376C E7 E8 10      [ 5]  421 	stb	16,s	; , lineCount.70
   376F E6 67         [ 5]  422 	ldb	7,s	; , D.1471
   3771 34 04         [ 6]  423 	pshs	b	; 
   3773 6F E2         [ 8]  424 	clr	,-s	; 
   3775 E6 6A         [ 5]  425 	ldb	10,s	; , D.1472
   3777 BD 36 DF      [ 8]  426 	jsr	_y3d	; 
   377A E7 66         [ 5]  427 	stb	6,s	; , D.1474
   377C E6 E8 12      [ 5]  428 	ldb	18,s	; , lineCount.70
   377F 4F            [ 2]  429 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3780 1F 01         [ 6]  430 	tfr	d,x	; , lineCount.70
   3782 E6 66         [ 5]  431 	ldb	6,s	; , D.1474
   3784 E7 89 CA 6E   [ 8]  432 	stb	_lineY1,x	; , lineY1
                            433 ;----- asm -----
                            434 ;  253 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            435 	; #ENR#[174]    lineCount++;
                            436 ;  0 "" 2
                            437 ;--- end asm ---
   3788 F6 C8 80      [ 5]  438 	ldb	_lineCount	; , lineCount
   378B 5C            [ 2]  439 	incb	; 
   378C E7 6B         [ 5]  440 	stb	11,s	; , lineCount.14
   378E F7 C8 80      [ 5]  441 	stb	_lineCount	; , lineCount
                            442 ;----- asm -----
                            443 ;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            444 	; #ENR#[176]    lineX0[lineCount] = x3d(x + 1, y);
                            445 ;  0 "" 2
                            446 ;--- end asm ---
   3791 E6 E8 1A      [ 5]  447 	ldb	26,s	; , y
   3794 34 04         [ 6]  448 	pshs	b	; 
   3796 E6 6B         [ 5]  449 	ldb	11,s	; , D.1472
   3798 BD 36 BE      [ 8]  450 	jsr	_x3d	; 
   379B E7 6D         [ 5]  451 	stb	13,s	; , D.1476
   379D E6 6C         [ 5]  452 	ldb	12,s	; , lineCount.14
   379F 4F            [ 2]  453 	clra		;zero_extendqihi: R:b -> R:d	; ,
   37A0 1F 01         [ 6]  454 	tfr	d,x	; , lineCount.14
   37A2 30 89 C9 06   [ 8]  455 	leax	_lineX0,x	;  tmp61,, lineCount.14
   37A6 E6 6D         [ 5]  456 	ldb	13,s	; , D.1476
   37A8 E7 84         [ 4]  457 	stb	,x	; , lineX0
                            458 ;----- asm -----
                            459 ;  258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            460 	; #ENR#[177]    lineY0[lineCount] = y3d(x + 1, 0, y);
                            461 ;  0 "" 2
                            462 ;--- end asm ---
   37AA F6 C8 80      [ 5]  463 	ldb	_lineCount	; , lineCount
   37AD E7 E8 14      [ 5]  464 	stb	20,s	; , lineCount.72
   37B0 E6 E8 1B      [ 5]  465 	ldb	27,s	; , y
   37B3 34 04         [ 6]  466 	pshs	b	; 
   37B5 6F E2         [ 8]  467 	clr	,-s	; 
   37B7 E6 6D         [ 5]  468 	ldb	13,s	; , D.1472
   37B9 BD 36 DF      [ 8]  469 	jsr	_y3d	; 
   37BC E7 E8 10      [ 5]  470 	stb	16,s	; , D.1477
   37BF E6 E8 16      [ 5]  471 	ldb	22,s	; , lineCount.72
   37C2 4F            [ 2]  472 	clra		;zero_extendqihi: R:b -> R:d	; ,
   37C3 1F 01         [ 6]  473 	tfr	d,x	; , lineCount.72
   37C5 30 89 C9 7E   [ 8]  474 	leax	_lineY0,x	;  tmp64,, lineCount.72
   37C9 E6 E8 10      [ 5]  475 	ldb	16,s	; , D.1477
   37CC E7 84         [ 4]  476 	stb	,x	; , lineY0
                            477 ;----- asm -----
                            478 ;  260 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            479 	; #ENR#[178]    lineX1[lineCount] = x3d(x, y + 1);
                            480 ;  0 "" 2
                            481 ;--- end asm ---
   37CE F6 C8 80      [ 5]  482 	ldb	_lineCount	; , lineCount
   37D1 E7 E8 17      [ 5]  483 	stb	23,s	; , lineCount.73
   37D4 32 69         [ 5]  484 	leas	9,s	; ,,
   37D6 E6 63         [ 5]  485 	ldb	3,s	; , D.1471
   37D8 34 04         [ 6]  486 	pshs	b	; 
   37DA E6 62         [ 5]  487 	ldb	2,s	; , x
   37DC BD 36 BE      [ 8]  488 	jsr	_x3d	; 
   37DF E7 69         [ 5]  489 	stb	9,s	; , D.1478
   37E1 E6 6F         [ 5]  490 	ldb	15,s	; , lineCount.73
   37E3 4F            [ 2]  491 	clra		;zero_extendqihi: R:b -> R:d	; ,
   37E4 1F 01         [ 6]  492 	tfr	d,x	; , lineCount.73
   37E6 30 89 C9 F6   [ 8]  493 	leax	_lineX1,x	;  tmp67,, lineCount.73
   37EA E6 69         [ 5]  494 	ldb	9,s	; , D.1478
   37EC E7 84         [ 4]  495 	stb	,x	; , lineX1
                            496 ;----- asm -----
                            497 ;  262 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            498 	; #ENR#[179]    lineY1[lineCount] = y3d(x, 0, y + 1);
                            499 ;  0 "" 2
                            500 ;--- end asm ---
   37EE F6 C8 80      [ 5]  501 	ldb	_lineCount	; , lineCount
   37F1 E7 E8 10      [ 5]  502 	stb	16,s	; , lineCount.74
   37F4 E6 64         [ 5]  503 	ldb	4,s	; , D.1471
   37F6 34 04         [ 6]  504 	pshs	b	; 
   37F8 6F E2         [ 8]  505 	clr	,-s	; 
   37FA E6 64         [ 5]  506 	ldb	4,s	; , x
   37FC BD 36 DF      [ 8]  507 	jsr	_y3d	; 
   37FF E7 6C         [ 5]  508 	stb	12,s	; , D.1479
   3801 E6 E8 12      [ 5]  509 	ldb	18,s	; , lineCount.74
   3804 4F            [ 2]  510 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3805 1F 01         [ 6]  511 	tfr	d,x	; , lineCount.74
   3807 30 89 CA 6E   [ 8]  512 	leax	_lineY1,x	;  tmp70,, lineCount.74
   380B E6 6C         [ 5]  513 	ldb	12,s	; , D.1479
   380D E7 84         [ 4]  514 	stb	,x	; , lineY1
                            515 ;----- asm -----
                            516 ;  264 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            517 	; #ENR#[180]    lineCount++;
                            518 ;  0 "" 2
                            519 ;--- end asm ---
   380F 7C C8 80      [ 7]  520 	inc	_lineCount	;  lineCount
   3812 32 E8 13      [ 5]  521 	leas	19,s	; ,,
   3815 35 C0         [ 7]  522 	puls	u,pc	; 
                            523 	.globl _initSwatches
   3817                     524 _initSwatches:
   3817 34 60         [ 7]  525 	pshs	y,u	; 
   3819 32 7E         [ 5]  526 	leas	-2,s	; ,,
                            527 ;----- asm -----
                            528 ;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            529 	; #ENR#[254]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
                            530 ;  0 "" 2
                            531 ;--- end asm ---
   381B 8E C8 F3      [ 3]  532 	ldx	#_swatchesOn	;  ivtmp.109,
   381E                     533 L28:
                            534 ;----- asm -----
                            535 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            536 	; #ENR#[255]        swatchesOn[i] = 0;
                            537 ;  0 "" 2
                            538 ;--- end asm ---
   381E 6F 80         [ 8]  539 	clr	,x+	;  swatchesOn
   3820 8C C9 06      [ 4]  540 	cmpx	#_swatchesOn+19	;cmphi:	;  ivtmp.109,
   3823 26 F9         [ 3]  541 	bne	L28	; 
                            542 ;----- asm -----
                            543 ;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            544 	; #ENR#[258]    long int index;
                            545 ;  0 "" 2
                            546 ;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            547 	; #ENR#[259]    int8_t x = 0;
                            548 ;  0 "" 2
                            549 ;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            550 	; #ENR#[260]    int8_t y = 0;
                            551 ;  0 "" 2
                            552 ;  389 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            553 	; #ENR#[261]    const char* geometry = level->geometry;
                            554 ;  0 "" 2
                            555 ;  391 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            556 	; #ENR#[262]    for (y = 0; y < LEVEL_HEIGHT; y++) {
                            557 ;  0 "" 2
                            558 ;--- end asm ---
   3825 10 AE 9F C8 F1[11]  559 	ldy	[_level]	;  ivtmp.101, <variable>.geometry
   382A 6F 61         [ 7]  560 	clr	1,s	;  y
   382C                     561 L32:
                            562 ;----- asm -----
                            563 ;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            564 	; #ENR#[263]        for (x = 0; x < LEVEL_WIDTH; x++) {
                            565 ;  0 "" 2
                            566 ;--- end asm ---
   382C 33 A4         [ 4]  567 	leau	,y	;  ivtmp.110, ivtmp.101
   382E 6F E4         [ 6]  568 	clr	,s	;  x
   3830                     569 L31:
                            570 ;----- asm -----
                            571 ;  395 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            572 	; #ENR#[264]            index = (long int) y*LEVEL_WIDTH + (long int)x;
                            573 ;  0 "" 2
                            574 ;  397 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            575 	; #ENR#[265]            char c0 = geometry[index];
                            576 ;  0 "" 2
                            577 ;--- end asm ---
   3830 E6 C4         [ 4]  578 	ldb	,u	;  c0,* ivtmp.110
                            579 ;----- asm -----
                            580 ;  399 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            581 	; #ENR#[266]            if (c0 == 'k' || c0 == 'q') {
                            582 ;  0 "" 2
                            583 ;--- end asm ---
   3832 C1 6B         [ 2]  584 	cmpb	#107	;cmpqi:	;  c0,
   3834 27 04         [ 3]  585 	beq	L29	; 
   3836 C1 71         [ 2]  586 	cmpb	#113	;cmpqi:	;  c0,
   3838 26 0F         [ 3]  587 	bne	L30	; 
   383A                     588 L29:
                            589 ;----- asm -----
                            590 ;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            591 	; #ENR#[267]                setSwatchField(x, y, 1);
                            592 ;  0 "" 2
                            593 ;--- end asm ---
   383A C6 01         [ 2]  594 	ldb	#1	; ,
   383C E7 E2         [ 6]  595 	stb	,-s	; ,
   383E E6 62         [ 5]  596 	ldb	2,s	; , y
   3840 34 04         [ 6]  597 	pshs	b	; 
   3842 E6 62         [ 5]  598 	ldb	2,s	; , x
   3844 BD 36 0E      [ 8]  599 	jsr	_setSwatchField	; 
   3847 32 62         [ 5]  600 	leas	2,s	; ,,
   3849                     601 L30:
   3849 6C E4         [ 6]  602 	inc	,s	;  x
   384B 33 41         [ 5]  603 	leau	1,u	;  ivtmp.110,, ivtmp.110
   384D E6 E4         [ 4]  604 	ldb	,s	; , x
   384F C1 0A         [ 2]  605 	cmpb	#10	;cmpqi:	; ,
   3851 26 DD         [ 3]  606 	bne	L31	; 
   3853 6C 61         [ 7]  607 	inc	1,s	;  y
   3855 31 2A         [ 5]  608 	leay	10,y	;  ivtmp.101,, ivtmp.101
   3857 E6 61         [ 5]  609 	ldb	1,s	; , y
   3859 C1 0F         [ 2]  610 	cmpb	#15	;cmpqi:	; ,
   385B 10 26 FF CD   [ 6]  611 	lbne	L32	; 
   385F 32 62         [ 5]  612 	leas	2,s	; ,,
   3861 35 E0         [ 8]  613 	puls	y,u,pc	; 
   3863                     614 LC0:
   3863 54                  615 	.byte	0x54
   3864 4F                  616 	.byte	0x4F
   3865 4F                  617 	.byte	0x4F
   3866 20                  618 	.byte	0x20
   3867 4D                  619 	.byte	0x4D
   3868 41                  620 	.byte	0x41
   3869 4E                  621 	.byte	0x4E
   386A 59                  622 	.byte	0x59
   386B 20                  623 	.byte	0x20
   386C 4C                  624 	.byte	0x4C
   386D 49                  625 	.byte	0x49
   386E 4E                  626 	.byte	0x4E
   386F 45                  627 	.byte	0x45
   3870 53                  628 	.byte	0x53
   3871 80                  629 	.byte	0x80
   3872 00                  630 	.byte	0x00
                            631 	.globl _addSplit
   3873                     632 _addSplit:
   3873 32 79         [ 5]  633 	leas	-7,s	; ,,
   3875 E7 61         [ 5]  634 	stb	1,s	;  x0, x0
                            635 ;----- asm -----
                            636 ;  203 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            637 	; #ENR#[143]    lineX0[lineCount] = x3d(x0, y0) + 6;
                            638 ;  0 "" 2
                            639 ;--- end asm ---
   3877 F6 C8 80      [ 5]  640 	ldb	_lineCount	; , lineCount
   387A E7 62         [ 5]  641 	stb	2,s	; , lineCount.11
   387C E6 69         [ 5]  642 	ldb	9,s	; , y0
   387E 34 04         [ 6]  643 	pshs	b	; 
   3880 E6 62         [ 5]  644 	ldb	2,s	; , x0
   3882 BD 36 BE      [ 8]  645 	jsr	_x3d	; 
   3885 E7 61         [ 5]  646 	stb	1,s	; , D.1437
   3887 E6 63         [ 5]  647 	ldb	3,s	; , lineCount.11
   3889 4F            [ 2]  648 	clra		;zero_extendqihi: R:b -> R:d	; ,
   388A 1F 01         [ 6]  649 	tfr	d,x	; , lineCount.11
   388C E6 61         [ 5]  650 	ldb	1,s	; , D.1437
   388E CB 06         [ 2]  651 	addb	#6	; ,
   3890 E7 89 C9 06   [ 8]  652 	stb	_lineX0,x	; , lineX0
                            653 ;----- asm -----
                            654 ;  205 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            655 	; #ENR#[144]    lineY0[lineCount] = y3d(x0, 0, y0) + 3;
                            656 ;  0 "" 2
                            657 ;--- end asm ---
   3894 F6 C8 80      [ 5]  658 	ldb	_lineCount	; , lineCount
   3897 E7 65         [ 5]  659 	stb	5,s	; , lineCount.116
   3899 E6 6A         [ 5]  660 	ldb	10,s	; , y0
   389B 34 04         [ 6]  661 	pshs	b	; 
   389D 6F E2         [ 8]  662 	clr	,-s	; 
   389F E6 64         [ 5]  663 	ldb	4,s	; , x0
   38A1 BD 36 DF      [ 8]  664 	jsr	_y3d	; 
   38A4 E7 63         [ 5]  665 	stb	3,s	; , D.1439
   38A6 E6 67         [ 5]  666 	ldb	7,s	; , lineCount.116
   38A8 4F            [ 2]  667 	clra		;zero_extendqihi: R:b -> R:d	; ,
   38A9 1F 01         [ 6]  668 	tfr	d,x	; , lineCount.116
   38AB E6 63         [ 5]  669 	ldb	3,s	; , D.1439
   38AD CB 03         [ 2]  670 	addb	#3	; ,
   38AF E7 89 C9 7E   [ 8]  671 	stb	_lineY0,x	; , lineY0
                            672 ;----- asm -----
                            673 ;  207 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            674 	; #ENR#[145]    lineX1[lineCount] = x3d(x0, y0 + 1) + 8;
                            675 ;  0 "" 2
                            676 ;--- end asm ---
   38B3 F6 C8 80      [ 5]  677 	ldb	_lineCount	; , lineCount
   38B6 E7 68         [ 5]  678 	stb	8,s	; , lineCount.117
   38B8 E6 6C         [ 5]  679 	ldb	12,s	; , y0
   38BA 5C            [ 2]  680 	incb	; 
   38BB E7 66         [ 5]  681 	stb	6,s	; , D.1441
   38BD 34 04         [ 6]  682 	pshs	b	; 
   38BF E6 65         [ 5]  683 	ldb	5,s	; , x0
   38C1 BD 36 BE      [ 8]  684 	jsr	_x3d	; 
   38C4 E7 64         [ 5]  685 	stb	4,s	; , D.1442
   38C6 E6 69         [ 5]  686 	ldb	9,s	; , lineCount.117
   38C8 4F            [ 2]  687 	clra		;zero_extendqihi: R:b -> R:d	; ,
   38C9 1F 01         [ 6]  688 	tfr	d,x	; , lineCount.117
   38CB E6 64         [ 5]  689 	ldb	4,s	; , D.1442
   38CD CB 08         [ 2]  690 	addb	#8	; ,
   38CF E7 89 C9 F6   [ 8]  691 	stb	_lineX1,x	; , lineX1
                            692 ;----- asm -----
                            693 ;  209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            694 	; #ENR#[146]    lineY1[lineCount] = y3d(x0, 0, y0 + 1) + 0;
                            695 ;  0 "" 2
                            696 ;--- end asm ---
   38D3 F6 C8 80      [ 5]  697 	ldb	_lineCount	; , lineCount
   38D6 E7 6A         [ 5]  698 	stb	10,s	; , lineCount.118
   38D8 E6 67         [ 5]  699 	ldb	7,s	; , D.1441
   38DA 34 04         [ 6]  700 	pshs	b	; 
   38DC 6F E2         [ 8]  701 	clr	,-s	; 
   38DE E6 67         [ 5]  702 	ldb	7,s	; , x0
   38E0 BD 36 DF      [ 8]  703 	jsr	_y3d	; 
   38E3 E7 66         [ 5]  704 	stb	6,s	; , D.1444
   38E5 E6 6C         [ 5]  705 	ldb	12,s	; , lineCount.118
   38E7 4F            [ 2]  706 	clra		;zero_extendqihi: R:b -> R:d	; ,
   38E8 1F 01         [ 6]  707 	tfr	d,x	; , lineCount.118
   38EA E6 66         [ 5]  708 	ldb	6,s	; , D.1444
   38EC E7 89 CA 6E   [ 8]  709 	stb	_lineY1,x	; , lineY1
                            710 ;----- asm -----
                            711 ;  212 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            712 	; #ENR#[148]    lineCount++;
                            713 ;  0 "" 2
                            714 ;--- end asm ---
   38F0 F6 C8 80      [ 5]  715 	ldb	_lineCount	;  lineCount.12, lineCount
   38F3 5C            [ 2]  716 	incb	;  lineCount.12
   38F4 F7 C8 80      [ 5]  717 	stb	_lineCount	;  lineCount.12, lineCount
                            718 ;----- asm -----
                            719 ;  214 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            720 	; #ENR#[149]    if (lineCount >= MAX_LINES) {
                            721 ;  0 "" 2
                            722 ;--- end asm ---
   38F7 32 66         [ 5]  723 	leas	6,s	; ,,
   38F9 C1 77         [ 2]  724 	cmpb	#119	;cmpqi:	;  lineCount.12,
   38FB 23 06         [ 3]  725 	bls	L39	; 
                            726 ;----- asm -----
                            727 ;  216 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            728 	; #ENR#[150]        runtimeError("TOO MANY LINES�");
                            729 ;  0 "" 2
                            730 ;--- end asm ---
   38FD 8E 38 63      [ 3]  731 	ldx	#LC0	; ,
   3900 BD 47 84      [ 8]  732 	jsr	_runtimeError	; 
   3903                     733 L39:
   3903 32 67         [ 5]  734 	leas	7,s	; ,,
   3905 39            [ 5]  735 	rts
                            736 	.globl _addLineImpl
   3906                     737 _addLineImpl:
   3906 32 7A         [ 5]  738 	leas	-6,s	; ,,
   3908 E7 61         [ 5]  739 	stb	1,s	;  x0, x0
                            740 ;----- asm -----
                            741 ;  172 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            742 	; #ENR#[124]    lineX0[lineCount] = x3d(x0, y0);
                            743 ;  0 "" 2
                            744 ;--- end asm ---
   390A F6 C8 80      [ 5]  745 	ldb	_lineCount	; , lineCount
   390D E7 62         [ 5]  746 	stb	2,s	; , lineCount.9
   390F E6 68         [ 5]  747 	ldb	8,s	; , y0
   3911 34 04         [ 6]  748 	pshs	b	; 
   3913 E6 62         [ 5]  749 	ldb	2,s	; , x0
   3915 BD 36 BE      [ 8]  750 	jsr	_x3d	; 
   3918 E7 61         [ 5]  751 	stb	1,s	; , D.1419
   391A E6 63         [ 5]  752 	ldb	3,s	; , lineCount.9
   391C 4F            [ 2]  753 	clra		;zero_extendqihi: R:b -> R:d	; ,
   391D 1F 01         [ 6]  754 	tfr	d,x	; , lineCount.9
   391F E6 61         [ 5]  755 	ldb	1,s	; , D.1419
   3921 E7 89 C9 06   [ 8]  756 	stb	_lineX0,x	; , lineX0
                            757 ;----- asm -----
                            758 ;  174 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            759 	; #ENR#[125]    lineY0[lineCount] = y3d(x0, 0, y0);
                            760 ;  0 "" 2
                            761 ;--- end asm ---
   3925 F6 C8 80      [ 5]  762 	ldb	_lineCount	; , lineCount
   3928 E7 64         [ 5]  763 	stb	4,s	; , lineCount.126
   392A E6 69         [ 5]  764 	ldb	9,s	; , y0
   392C 34 04         [ 6]  765 	pshs	b	; 
   392E 6F E2         [ 8]  766 	clr	,-s	; 
   3930 E6 64         [ 5]  767 	ldb	4,s	; , x0
   3932 BD 36 DF      [ 8]  768 	jsr	_y3d	; 
   3935 E7 63         [ 5]  769 	stb	3,s	; , D.1420
   3937 E6 66         [ 5]  770 	ldb	6,s	; , lineCount.126
   3939 4F            [ 2]  771 	clra		;zero_extendqihi: R:b -> R:d	; ,
   393A 1F 01         [ 6]  772 	tfr	d,x	; , lineCount.126
   393C E6 63         [ 5]  773 	ldb	3,s	; , D.1420
   393E E7 89 C9 7E   [ 8]  774 	stb	_lineY0,x	; , lineY0
                            775 ;----- asm -----
                            776 ;  176 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            777 	; #ENR#[126]    lineX1[lineCount] = x3d(x1, y1);
                            778 ;  0 "" 2
                            779 ;--- end asm ---
   3942 F6 C8 80      [ 5]  780 	ldb	_lineCount	; , lineCount
   3945 E7 67         [ 5]  781 	stb	7,s	; , lineCount.127
   3947 E6 6D         [ 5]  782 	ldb	13,s	; , y1
   3949 34 04         [ 6]  783 	pshs	b	; 
   394B E6 6D         [ 5]  784 	ldb	13,s	; , x1
   394D BD 36 BE      [ 8]  785 	jsr	_x3d	; 
   3950 E7 64         [ 5]  786 	stb	4,s	; , D.1421
   3952 E6 68         [ 5]  787 	ldb	8,s	; , lineCount.127
   3954 4F            [ 2]  788 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3955 1F 01         [ 6]  789 	tfr	d,x	; , lineCount.127
   3957 E6 64         [ 5]  790 	ldb	4,s	; , D.1421
   3959 E7 89 C9 F6   [ 8]  791 	stb	_lineX1,x	; , lineX1
                            792 ;----- asm -----
                            793 ;  178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            794 	; #ENR#[127]    lineY1[lineCount] = y3d(x1, 0, y1);
                            795 ;  0 "" 2
                            796 ;--- end asm ---
   395D F6 C8 80      [ 5]  797 	ldb	_lineCount	; , lineCount
   3960 E7 69         [ 5]  798 	stb	9,s	; , lineCount.128
   3962 E6 6E         [ 5]  799 	ldb	14,s	; , y1
   3964 34 04         [ 6]  800 	pshs	b	; 
   3966 6F E2         [ 8]  801 	clr	,-s	; 
   3968 E6 6F         [ 5]  802 	ldb	15,s	; , x1
   396A BD 36 DF      [ 8]  803 	jsr	_y3d	; 
   396D E7 66         [ 5]  804 	stb	6,s	; , D.1422
   396F E6 6B         [ 5]  805 	ldb	11,s	; , lineCount.128
   3971 4F            [ 2]  806 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3972 1F 01         [ 6]  807 	tfr	d,x	; , lineCount.128
   3974 E6 66         [ 5]  808 	ldb	6,s	; , D.1422
   3976 E7 89 CA 6E   [ 8]  809 	stb	_lineY1,x	; , lineY1
                            810 ;----- asm -----
                            811 ;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            812 	; #ENR#[128]    if (half) {
                            813 ;  0 "" 2
                            814 ;--- end asm ---
   397A 32 66         [ 5]  815 	leas	6,s	; ,,
   397C 6D 6B         [ 7]  816 	tst	11,s	;  half
   397E 27 28         [ 3]  817 	beq	L41	; 
                            818 ;----- asm -----
                            819 ;  182 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            820 	; #ENR#[129]        lineX0[lineCount] -= 1;
                            821 ;  0 "" 2
                            822 ;--- end asm ---
   3980 F6 C8 80      [ 5]  823 	ldb	_lineCount	; , lineCount
   3983 4F            [ 2]  824 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3984 1F 01         [ 6]  825 	tfr	d,x	; , lineCount.129
   3986 6A 89 C9 06   [10]  826 	dec	_lineX0,x	;  lineX0
                            827 ;----- asm -----
                            828 ;  184 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            829 	; #ENR#[130]        lineY0[lineCount] += 4;
                            830 ;  0 "" 2
                            831 ;--- end asm ---
   398A E6 89 C9 7E   [ 8]  832 	ldb	_lineY0,x	; , lineY0
   398E CB 04         [ 2]  833 	addb	#4	; ,
   3990 E7 89 C9 7E   [ 8]  834 	stb	_lineY0,x	; , lineY0
                            835 ;----- asm -----
                            836 ;  186 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            837 	; #ENR#[131]        lineX1[lineCount] -= 6;
                            838 ;  0 "" 2
                            839 ;--- end asm ---
   3994 E6 89 C9 F6   [ 8]  840 	ldb	_lineX1,x	; , lineX1
   3998 CB FA         [ 2]  841 	addb	#-6	; ,
   399A E7 89 C9 F6   [ 8]  842 	stb	_lineX1,x	; , lineX1
                            843 ;----- asm -----
                            844 ;  188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            845 	; #ENR#[132]        lineY1[lineCount] += 3;
                            846 ;  0 "" 2
                            847 ;--- end asm ---
   399E E6 89 CA 6E   [ 8]  848 	ldb	_lineY1,x	; , lineY1
   39A2 CB 03         [ 2]  849 	addb	#3	; ,
   39A4 E7 89 CA 6E   [ 8]  850 	stb	_lineY1,x	; , lineY1
   39A8                     851 L41:
                            852 ;----- asm -----
                            853 ;  192 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            854 	; #ENR#[135]    lineCount++;
                            855 ;  0 "" 2
                            856 ;--- end asm ---
   39A8 F6 C8 80      [ 5]  857 	ldb	_lineCount	;  lineCount.10, lineCount
   39AB 5C            [ 2]  858 	incb	;  lineCount.10
   39AC F7 C8 80      [ 5]  859 	stb	_lineCount	;  lineCount.10, lineCount
                            860 ;----- asm -----
                            861 ;  194 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            862 	; #ENR#[136]    if (lineCount >= MAX_LINES) {
                            863 ;  0 "" 2
                            864 ;--- end asm ---
   39AF C1 77         [ 2]  865 	cmpb	#119	;cmpqi:	;  lineCount.10,
   39B1 23 06         [ 3]  866 	bls	L43	; 
                            867 ;----- asm -----
                            868 ;  196 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            869 	; #ENR#[137]        runtimeError("TOO MANY LINES�");
                            870 ;  0 "" 2
                            871 ;--- end asm ---
   39B3 8E 38 63      [ 3]  872 	ldx	#LC0	; ,
   39B6 BD 47 84      [ 8]  873 	jsr	_runtimeError	; 
   39B9                     874 L43:
   39B9 32 66         [ 5]  875 	leas	6,s	; ,,
   39BB 39            [ 5]  876 	rts
                            877 	.globl _addLine
   39BC                     878 _addLine:
   39BC 32 7B         [ 5]  879 	leas	-5,s	; ,,
   39BE E7 E4         [ 4]  880 	stb	,s	;  x0, x0
                            881 ;----- asm -----
                            882 ;  223 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            883 	; #ENR#[156]    int test = 5;
                            884 ;  0 "" 2
                            885 ;  225 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            886 	; #ENR#[157]    while (x1 - x0 > test) {
                            887 ;  0 "" 2
                            888 ;--- end asm ---
   39C0 E6 68         [ 5]  889 	ldb	8,s	;  D.1461, x1
   39C2 E0 E4         [ 4]  890 	subb	,s	;  D.1461, x0
   39C4 C1 05         [ 2]  891 	cmpb	#5	;cmpqi:	;  D.1461,
   39C6 2F 33         [ 3]  892 	ble	L45	; 
   39C8 E7 62         [ 5]  893 	stb	2,s	;  D.1461, ivtmp.151
   39CA                     894 L47:
                            895 ;----- asm -----
                            896 ;  227 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            897 	; #ENR#[158]        addLineImpl(x0, y0, x0 + test, y1, half);
                            898 ;  0 "" 2
                            899 ;--- end asm ---
   39CA E6 E4         [ 4]  900 	ldb	,s	; , x0
   39CC CB 05         [ 2]  901 	addb	#5	; ,
   39CE E7 63         [ 5]  902 	stb	3,s	; , x0.152
   39D0 E6 6A         [ 5]  903 	ldb	10,s	; , half
   39D2 34 04         [ 6]  904 	pshs	b	; 
   39D4 E6 6A         [ 5]  905 	ldb	10,s	; , y1
   39D6 34 04         [ 6]  906 	pshs	b	; 
   39D8 E6 65         [ 5]  907 	ldb	5,s	; , x0.152
   39DA 34 04         [ 6]  908 	pshs	b	; 
   39DC E6 6A         [ 5]  909 	ldb	10,s	; , y0
   39DE 34 04         [ 6]  910 	pshs	b	; 
   39E0 E6 64         [ 5]  911 	ldb	4,s	; , x0
   39E2 BD 39 06      [ 8]  912 	jsr	_addLineImpl	; 
                            913 ;----- asm -----
                            914 ;  229 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            915 	; #ENR#[159]        x0 += test;
                            916 ;  0 "" 2
                            917 ;--- end asm ---
   39E5 E6 66         [ 5]  918 	ldb	6,s	; , ivtmp.151
   39E7 CB FB         [ 2]  919 	addb	#-5	; ,
   39E9 E7 66         [ 5]  920 	stb	6,s	; , ivtmp.151
   39EB 32 64         [ 5]  921 	leas	4,s	; ,,
   39ED C1 05         [ 2]  922 	cmpb	#5	;cmpqi:	; ,
   39EF 2F 06         [ 3]  923 	ble	L46	; 
   39F1 E6 63         [ 5]  924 	ldb	3,s	; , x0.152
   39F3 E7 E4         [ 4]  925 	stb	,s	; , x0
   39F5 20 D3         [ 3]  926 	bra	L47	; 
   39F7                     927 L46:
   39F7 E6 63         [ 5]  928 	ldb	3,s	; , x0.152
   39F9 E7 E4         [ 4]  929 	stb	,s	; , x0
   39FB                     930 L45:
                            931 ;----- asm -----
                            932 ;  232 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            933 	; #ENR#[161]    while (y1 - y0 > test) {
                            934 ;  0 "" 2
                            935 ;--- end asm ---
   39FB E6 69         [ 5]  936 	ldb	9,s	;  D.1463, y1
   39FD E0 67         [ 5]  937 	subb	7,s	;  D.1463, y0
   39FF C1 05         [ 2]  938 	cmpb	#5	;cmpqi:	;  D.1463,
   3A01 2F 33         [ 3]  939 	ble	L48	; 
   3A03 E7 61         [ 5]  940 	stb	1,s	;  D.1463, ivtmp.143
   3A05                     941 L50:
                            942 ;----- asm -----
                            943 ;  234 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            944 	; #ENR#[162]        addLineImpl(x0, y0, x1, y0 + test, half);
                            945 ;  0 "" 2
                            946 ;--- end asm ---
   3A05 E6 67         [ 5]  947 	ldb	7,s	; , y0
   3A07 CB 05         [ 2]  948 	addb	#5	; ,
   3A09 E7 64         [ 5]  949 	stb	4,s	; , y0.153
   3A0B E6 6A         [ 5]  950 	ldb	10,s	; , half
   3A0D 34 04         [ 6]  951 	pshs	b	; 
   3A0F E6 65         [ 5]  952 	ldb	5,s	; , y0.153
   3A11 34 04         [ 6]  953 	pshs	b	; 
   3A13 E6 6A         [ 5]  954 	ldb	10,s	; , x1
   3A15 34 04         [ 6]  955 	pshs	b	; 
   3A17 E6 6A         [ 5]  956 	ldb	10,s	; , y0
   3A19 34 04         [ 6]  957 	pshs	b	; 
   3A1B E6 64         [ 5]  958 	ldb	4,s	; , x0
   3A1D BD 39 06      [ 8]  959 	jsr	_addLineImpl	; 
                            960 ;----- asm -----
                            961 ;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            962 	; #ENR#[163]        y0 += test;
                            963 ;  0 "" 2
                            964 ;--- end asm ---
   3A20 E6 65         [ 5]  965 	ldb	5,s	; , ivtmp.143
   3A22 CB FB         [ 2]  966 	addb	#-5	; ,
   3A24 E7 65         [ 5]  967 	stb	5,s	; , ivtmp.143
   3A26 32 64         [ 5]  968 	leas	4,s	; ,,
   3A28 C1 05         [ 2]  969 	cmpb	#5	;cmpqi:	; ,
   3A2A 2F 06         [ 3]  970 	ble	L49	; 
   3A2C E6 64         [ 5]  971 	ldb	4,s	; , y0.153
   3A2E E7 67         [ 5]  972 	stb	7,s	; , y0
   3A30 20 D3         [ 3]  973 	bra	L50	; 
   3A32                     974 L49:
   3A32 E6 64         [ 5]  975 	ldb	4,s	; , y0.153
   3A34 E7 67         [ 5]  976 	stb	7,s	; , y0
   3A36                     977 L48:
                            978 ;----- asm -----
                            979 ;  239 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                            980 	; #ENR#[165]    addLineImpl(x0, y0, x1, y1, half);
                            981 ;  0 "" 2
                            982 ;--- end asm ---
   3A36 E6 6A         [ 5]  983 	ldb	10,s	; , half
   3A38 34 04         [ 6]  984 	pshs	b	; 
   3A3A E6 6A         [ 5]  985 	ldb	10,s	; , y1
   3A3C 34 04         [ 6]  986 	pshs	b	; 
   3A3E E6 6A         [ 5]  987 	ldb	10,s	; , x1
   3A40 34 04         [ 6]  988 	pshs	b	; 
   3A42 E6 6A         [ 5]  989 	ldb	10,s	; , y0
   3A44 34 04         [ 6]  990 	pshs	b	; 
   3A46 E6 64         [ 5]  991 	ldb	4,s	; , x0
   3A48 BD 39 06      [ 8]  992 	jsr	_addLineImpl	; 
   3A4B 32 69         [ 5]  993 	leas	9,s	; ,,
   3A4D 39            [ 5]  994 	rts
                            995 	.globl _setupY
   3A4E                     996 _setupY:
   3A4E 32 7B         [ 5]  997 	leas	-5,s	; ,,
                            998 ;----- asm -----
                            999 ;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1000 	; #ENR#[233]    int8_t x = 0;
                           1001 ;  0 "" 2
                           1002 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1003 	; #ENR#[234]    int8_t y = 0;
                           1004 ;  0 "" 2
                           1005 ;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1006 	; #ENR#[235]    for (x = -1; x < LEVEL_WIDTH; x++) {
                           1007 ;  0 "" 2
                           1008 ;--- end asm ---
   3A50 C6 FF         [ 2] 1009 	ldb	#-1	; ,
   3A52 E7 61         [ 5] 1010 	stb	1,s	; , x
   3A54                    1011 L58:
                           1012 ;----- asm -----
                           1013 ;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1014 	; #ENR#[236]        int8_t y0 = -1;
                           1015 ;  0 "" 2
                           1016 ;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1017 	; #ENR#[237]        int8_t y1 = -1;
                           1018 ;  0 "" 2
                           1019 ;  354 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1020 	; #ENR#[238]        for (y = 0; y <= LEVEL_HEIGHT; y++) {
                           1021 ;  0 "" 2
                           1022 ;--- end asm ---
   3A54 6F 62         [ 7] 1023 	clr	2,s	;  y
   3A56 C6 FF         [ 2] 1024 	ldb	#-1	; ,
   3A58 E7 63         [ 5] 1025 	stb	3,s	; , y0
   3A5A E7 64         [ 5] 1026 	stb	4,s	; , y1
   3A5C                    1027 L57:
                           1028 ;----- asm -----
                           1029 ;  356 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1030 	; #ENR#[239]            if (isField(x, y) || isField(x + 1, y)) {
                           1031 ;  0 "" 2
                           1032 ;--- end asm ---
   3A5C E6 62         [ 5] 1033 	ldb	2,s	; , y
   3A5E 34 04         [ 6] 1034 	pshs	b	; 
   3A60 E6 62         [ 5] 1035 	ldb	2,s	; , x
   3A62 BD 36 5F      [ 8] 1036 	jsr	_isField	; 
   3A65 32 61         [ 5] 1037 	leas	1,s	; ,,
   3A67 5D            [ 2] 1038 	tstb	;  D.1524
   3A68 26 13         [ 3] 1039 	bne	L53	; 
   3A6A E6 61         [ 5] 1040 	ldb	1,s	; , x
   3A6C 5C            [ 2] 1041 	incb	; 
   3A6D E7 E4         [ 4] 1042 	stb	,s	; , D.1525
   3A6F E6 62         [ 5] 1043 	ldb	2,s	; , y
   3A71 34 04         [ 6] 1044 	pshs	b	; 
   3A73 E6 61         [ 5] 1045 	ldb	1,s	; , D.1525
   3A75 BD 36 5F      [ 8] 1046 	jsr	_isField	; 
   3A78 32 61         [ 5] 1047 	leas	1,s	; ,,
   3A7A 5D            [ 2] 1048 	tstb	;  D.1526
   3A7B 27 0E         [ 3] 1049 	beq	L54	; 
   3A7D                    1050 L53:
                           1051 ;----- asm -----
                           1052 ;  358 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1053 	; #ENR#[240]                if (y0 < 0) y0 = y;
                           1054 ;  0 "" 2
                           1055 ;--- end asm ---
   3A7D 6D 63         [ 7] 1056 	tst	3,s	;  y0
   3A7F 2C 04         [ 3] 1057 	bge	L55	; 
   3A81 E6 62         [ 5] 1058 	ldb	2,s	; , y
   3A83 E7 63         [ 5] 1059 	stb	3,s	; , y0
   3A85                    1060 L55:
                           1061 ;----- asm -----
                           1062 ;  360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1063 	; #ENR#[241]                y1 = y;
                           1064 ;  0 "" 2
                           1065 ;--- end asm ---
   3A85 E6 62         [ 5] 1066 	ldb	2,s	; , y
   3A87 E7 64         [ 5] 1067 	stb	4,s	; , y1
   3A89 20 1E         [ 3] 1068 	bra	L56	; 
   3A8B                    1069 L54:
                           1070 ;----- asm -----
                           1071 ;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1072 	; #ENR#[243]                if (y0 >= 0) {
                           1073 ;  0 "" 2
                           1074 ;--- end asm ---
   3A8B 6D 63         [ 7] 1075 	tst	3,s	;  y0
   3A8D 2D 1A         [ 3] 1076 	blt	L56	; 
                           1077 ;----- asm -----
                           1078 ;  365 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1079 	; #ENR#[244]                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
                           1080 ;  0 "" 2
                           1081 ;--- end asm ---
   3A8F 6F E2         [ 8] 1082 	clr	,-s	; 
   3A91 E6 65         [ 5] 1083 	ldb	5,s	; , y1
   3A93 5C            [ 2] 1084 	incb	; 
   3A94 34 04         [ 6] 1085 	pshs	b	; 
   3A96 E6 62         [ 5] 1086 	ldb	2,s	; , D.1525
   3A98 34 04         [ 6] 1087 	pshs	b	; 
   3A9A E6 66         [ 5] 1088 	ldb	6,s	; , y0
   3A9C 34 04         [ 6] 1089 	pshs	b	; 
   3A9E E6 64         [ 5] 1090 	ldb	4,s	; , D.1525
   3AA0 BD 39 BC      [ 8] 1091 	jsr	_addLine	; 
                           1092 ;----- asm -----
                           1093 ;  367 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1094 	; #ENR#[245]                    y0 = -1;
                           1095 ;  0 "" 2
                           1096 ;--- end asm ---
   3AA3 C6 FF         [ 2] 1097 	ldb	#-1	; ,
   3AA5 E7 67         [ 5] 1098 	stb	7,s	; , y0
   3AA7 32 64         [ 5] 1099 	leas	4,s	; ,,
   3AA9                    1100 L56:
   3AA9 6C 62         [ 7] 1101 	inc	2,s	;  y
   3AAB E6 62         [ 5] 1102 	ldb	2,s	; , y
   3AAD C1 10         [ 2] 1103 	cmpb	#16	;cmpqi:	; ,
   3AAF 10 26 FF A9   [ 6] 1104 	lbne	L57	; 
   3AB3 6C 61         [ 7] 1105 	inc	1,s	;  x
   3AB5 E6 61         [ 5] 1106 	ldb	1,s	; , x
   3AB7 C1 0A         [ 2] 1107 	cmpb	#10	;cmpqi:	; ,
   3AB9 10 26 FF 97   [ 6] 1108 	lbne	L58	; 
   3ABD 32 65         [ 5] 1109 	leas	5,s	; ,,
   3ABF 39            [ 5] 1110 	rts
                           1111 	.globl _setupX
   3AC0                    1112 _setupX:
   3AC0 34 60         [ 7] 1113 	pshs	y,u	; 
   3AC2 32 79         [ 5] 1114 	leas	-7,s	; ,,
                           1115 ;----- asm -----
                           1116 ;  277 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1117 	; #ENR#[192]    long int index;
                           1118 ;  0 "" 2
                           1119 ;  279 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1120 	; #ENR#[193]    int8_t x = 0;
                           1121 ;  0 "" 2
                           1122 ;  281 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1123 	; #ENR#[194]    int8_t y = 0;
                           1124 ;  0 "" 2
                           1125 ;  283 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1126 	; #ENR#[195]    const char* geometry = level->geometry;
                           1127 ;  0 "" 2
                           1128 ;  285 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1129 	; #ENR#[196]    for (y = -1; y < LEVEL_HEIGHT; y++) {
                           1130 ;  0 "" 2
                           1131 ;--- end asm ---
   3AC4 AE 9F C8 F1   [10] 1132 	ldx	[_level]	; , <variable>.geometry
   3AC8 31 16         [ 5] 1133 	leay	-10,x	;  ivtmp.198,,
   3ACA 6F 66         [ 7] 1134 	clr	6,s	;  ivtmp.192
   3ACC                    1135 L75:
   3ACC E6 66         [ 5] 1136 	ldb	6,s	; , ivtmp.192
   3ACE 5A            [ 2] 1137 	decb	; 
   3ACF E7 62         [ 5] 1138 	stb	2,s	; , y
                           1139 ;----- asm -----
                           1140 ;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1141 	; #ENR#[197]        int8_t x0 = -1;
                           1142 ;  0 "" 2
                           1143 ;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1144 	; #ENR#[198]        int8_t x1 = -1;
                           1145 ;  0 "" 2
                           1146 ;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1147 	; #ENR#[199]        for (x = 0; x <= LEVEL_WIDTH; x++) {
                           1148 ;  0 "" 2
                           1149 ;--- end asm ---
   3AD1 33 A4         [ 4] 1150 	leau	,y	;  ivtmp.201, ivtmp.198
   3AD3 C6 FF         [ 2] 1151 	ldb	#-1	; ,
   3AD5 E7 63         [ 5] 1152 	stb	3,s	; , x0
   3AD7 E7 64         [ 5] 1153 	stb	4,s	; , x1
   3AD9 C6 01         [ 2] 1154 	ldb	#1	; ,
   3ADB E7 65         [ 5] 1155 	stb	5,s	; , ivtmp.190
   3ADD                    1156 L74:
   3ADD E6 65         [ 5] 1157 	ldb	5,s	; , ivtmp.190
   3ADF 5A            [ 2] 1158 	decb	; 
   3AE0 E7 61         [ 5] 1159 	stb	1,s	; , x
                           1160 ;----- asm -----
                           1161 ;  293 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1162 	; #ENR#[200]            char c0 = 0;
                           1163 ;  0 "" 2
                           1164 ;  295 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1165 	; #ENR#[201]            index = (long int) y*LEVEL_WIDTH + (long int)x;
                           1166 ;  0 "" 2
                           1167 ;  297 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1168 	; #ENR#[202]            if (y >= 0 && x < LEVEL_WIDTH) {
                           1169 ;  0 "" 2
                           1170 ;--- end asm ---
   3AE2 6D 62         [ 7] 1171 	tst	2,s	;  y
   3AE4 2D 08         [ 3] 1172 	blt	L63	; 
   3AE6 C1 09         [ 2] 1173 	cmpb	#9	;cmpqi:	; ,
   3AE8 2E 04         [ 3] 1174 	bgt	L63	; 
                           1175 ;----- asm -----
                           1176 ;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1177 	; #ENR#[203]                c0 = geometry[index];
                           1178 ;  0 "" 2
                           1179 ;--- end asm ---
   3AEA E6 C4         [ 4] 1180 	ldb	,u	;  c0,* ivtmp.201
   3AEC 20 01         [ 3] 1181 	bra	L64	; 
   3AEE                    1182 L63:
   3AEE 5F            [ 2] 1183 	clrb	;  c0
   3AEF                    1184 L64:
                           1185 ;----- asm -----
                           1186 ;  302 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1187 	; #ENR#[205]            if (c0 == 'e') {
                           1188 ;  0 "" 2
                           1189 ;--- end asm ---
   3AEF C1 65         [ 2] 1190 	cmpb	#101	;cmpqi:	;  c0,
   3AF1 26 18         [ 3] 1191 	bne	L65	; 
                           1192 ;----- asm -----
                           1193 ;  304 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1194 	; #ENR#[206]                addTarget(x, y);
                           1195 ;  0 "" 2
                           1196 ;--- end asm ---
   3AF3 E6 62         [ 5] 1197 	ldb	2,s	; , y
   3AF5 34 04         [ 6] 1198 	pshs	b	; 
   3AF7 E6 62         [ 5] 1199 	ldb	2,s	; , x
   3AF9 BD 37 03      [ 8] 1200 	jsr	_addTarget	; 
                           1201 ;----- asm -----
                           1202 ;  306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1203 	; #ENR#[207]                endX = x;
                           1204 ;  0 "" 2
                           1205 ;--- end asm ---
   3AFC E6 62         [ 5] 1206 	ldb	2,s	; , x
   3AFE F7 C8 81      [ 5] 1207 	stb	_endX	; , endX
                           1208 ;----- asm -----
                           1209 ;  308 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1210 	; #ENR#[208]                endY = y;
                           1211 ;  0 "" 2
                           1212 ;--- end asm ---
   3B01 E6 63         [ 5] 1213 	ldb	3,s	; , y
   3B03 F7 C8 82      [ 5] 1214 	stb	_endY	; , endY
   3B06 32 61         [ 5] 1215 	leas	1,s	; ,,
   3B08 7E 3B 6E      [ 4] 1216 	jmp	L66	; 
   3B0B                    1217 L65:
   3B0B C1 76         [ 2] 1218 	cmpb	#118	;cmpqi:	;  c0,
   3B0D 26 0E         [ 3] 1219 	bne	L67	; 
                           1220 ;----- asm -----
                           1221 ;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1222 	; #ENR#[210]                addSplit(x, y);
                           1223 ;  0 "" 2
                           1224 ;--- end asm ---
   3B0F E6 62         [ 5] 1225 	ldb	2,s	; , y
   3B11 34 04         [ 6] 1226 	pshs	b	; 
   3B13 E6 62         [ 5] 1227 	ldb	2,s	; , x
   3B15 BD 38 73      [ 8] 1228 	jsr	_addSplit	; 
   3B18 32 61         [ 5] 1229 	leas	1,s	; ,,
   3B1A 7E 3B 6E      [ 4] 1230 	jmp	L66	; 
   3B1D                    1231 L67:
   3B1D C1 73         [ 2] 1232 	cmpb	#115	;cmpqi:	;  c0,
   3B1F 26 17         [ 3] 1233 	bne	L68	; 
                           1234 ;----- asm -----
                           1235 ;  314 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1236 	; #ENR#[212]                addLine(x, y, x + 1, y + 1, 0);
                           1237 ;  0 "" 2
                           1238 ;--- end asm ---
   3B21 6F E2         [ 8] 1239 	clr	,-s	; 
   3B23 E6 67         [ 5] 1240 	ldb	7,s	; , ivtmp.192
   3B25 34 04         [ 6] 1241 	pshs	b	; 
   3B27 E6 67         [ 5] 1242 	ldb	7,s	; , ivtmp.190
   3B29 34 04         [ 6] 1243 	pshs	b	; 
   3B2B E6 65         [ 5] 1244 	ldb	5,s	; , y
   3B2D 34 04         [ 6] 1245 	pshs	b	; 
   3B2F E6 65         [ 5] 1246 	ldb	5,s	; , x
   3B31 BD 39 BC      [ 8] 1247 	jsr	_addLine	; 
   3B34 32 64         [ 5] 1248 	leas	4,s	; ,,
   3B36 20 36         [ 3] 1249 	bra	L66	; 
   3B38                    1250 L68:
   3B38 C1 68         [ 2] 1251 	cmpb	#104	;cmpqi:	;  c0,
   3B3A 26 17         [ 3] 1252 	bne	L69	; 
                           1253 ;----- asm -----
                           1254 ;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1255 	; #ENR#[214]                addLine(x + 1, y, x, y + 1, 0);
                           1256 ;  0 "" 2
                           1257 ;--- end asm ---
   3B3C 6F E2         [ 8] 1258 	clr	,-s	; 
   3B3E E6 67         [ 5] 1259 	ldb	7,s	; , ivtmp.192
   3B40 34 04         [ 6] 1260 	pshs	b	; 
   3B42 E6 63         [ 5] 1261 	ldb	3,s	; , x
   3B44 34 04         [ 6] 1262 	pshs	b	; 
   3B46 E6 65         [ 5] 1263 	ldb	5,s	; , y
   3B48 34 04         [ 6] 1264 	pshs	b	; 
   3B4A E6 69         [ 5] 1265 	ldb	9,s	; , ivtmp.190
   3B4C BD 39 BC      [ 8] 1266 	jsr	_addLine	; 
   3B4F 32 64         [ 5] 1267 	leas	4,s	; ,,
   3B51 20 1B         [ 3] 1268 	bra	L66	; 
   3B53                    1269 L69:
   3B53 C1 66         [ 2] 1270 	cmpb	#102	;cmpqi:	;  c0,
   3B55 26 17         [ 3] 1271 	bne	L66	; 
                           1272 ;----- asm -----
                           1273 ;  320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1274 	; #ENR#[216]                addLine(x, y, x + 1, y, 1);
                           1275 ;  0 "" 2
                           1276 ;--- end asm ---
   3B57 C6 01         [ 2] 1277 	ldb	#1	; ,
   3B59 E7 E2         [ 6] 1278 	stb	,-s	; ,
   3B5B E6 63         [ 5] 1279 	ldb	3,s	; , y
   3B5D 34 04         [ 6] 1280 	pshs	b	; 
   3B5F E6 67         [ 5] 1281 	ldb	7,s	; , ivtmp.190
   3B61 34 04         [ 6] 1282 	pshs	b	; 
   3B63 E6 65         [ 5] 1283 	ldb	5,s	; , y
   3B65 34 04         [ 6] 1284 	pshs	b	; 
   3B67 E6 65         [ 5] 1285 	ldb	5,s	; , x
   3B69 BD 39 BC      [ 8] 1286 	jsr	_addLine	; 
   3B6C 32 64         [ 5] 1287 	leas	4,s	; ,,
   3B6E                    1288 L66:
                           1289 ;----- asm -----
                           1290 ;  323 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1291 	; #ENR#[218]            if (isField(x, y) || isField(x, y + 1)) {
                           1292 ;  0 "" 2
                           1293 ;--- end asm ---
   3B6E E6 62         [ 5] 1294 	ldb	2,s	; , y
   3B70 34 04         [ 6] 1295 	pshs	b	; 
   3B72 E6 62         [ 5] 1296 	ldb	2,s	; , x
   3B74 BD 36 5F      [ 8] 1297 	jsr	_isField	; 
   3B77 32 61         [ 5] 1298 	leas	1,s	; ,,
   3B79 5D            [ 2] 1299 	tstb	;  D.1506
   3B7A 26 10         [ 3] 1300 	bne	L70	; 
   3B7C E6 66         [ 5] 1301 	ldb	6,s	; , ivtmp.192
   3B7E E7 E4         [ 4] 1302 	stb	,s	; , D.1501
   3B80 34 04         [ 6] 1303 	pshs	b	; 
   3B82 E6 62         [ 5] 1304 	ldb	2,s	; , x
   3B84 BD 36 5F      [ 8] 1305 	jsr	_isField	; 
   3B87 32 61         [ 5] 1306 	leas	1,s	; ,,
   3B89 5D            [ 2] 1307 	tstb	;  D.1507
   3B8A 27 0E         [ 3] 1308 	beq	L71	; 
   3B8C                    1309 L70:
                           1310 ;----- asm -----
                           1311 ;  325 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1312 	; #ENR#[219]                if (x0 < 0) x0 = x;
                           1313 ;  0 "" 2
                           1314 ;--- end asm ---
   3B8C 6D 63         [ 7] 1315 	tst	3,s	;  x0
   3B8E 2C 04         [ 3] 1316 	bge	L72	; 
   3B90 E6 61         [ 5] 1317 	ldb	1,s	; , x
   3B92 E7 63         [ 5] 1318 	stb	3,s	; , x0
   3B94                    1319 L72:
                           1320 ;----- asm -----
                           1321 ;  327 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1322 	; #ENR#[220]                x1 = x;
                           1323 ;  0 "" 2
                           1324 ;--- end asm ---
   3B94 E6 61         [ 5] 1325 	ldb	1,s	; , x
   3B96 E7 64         [ 5] 1326 	stb	4,s	; , x1
   3B98 20 1E         [ 3] 1327 	bra	L73	; 
   3B9A                    1328 L71:
                           1329 ;----- asm -----
                           1330 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1331 	; #ENR#[222]                if (x0 >= 0) {
                           1332 ;  0 "" 2
                           1333 ;--- end asm ---
   3B9A 6D 63         [ 7] 1334 	tst	3,s	;  x0
   3B9C 2D 1A         [ 3] 1335 	blt	L73	; 
                           1336 ;----- asm -----
                           1337 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1338 	; #ENR#[223]                    addLine(x0, y + 1, x1 + 1, y + 1, 0);
                           1339 ;  0 "" 2
                           1340 ;--- end asm ---
   3B9E 6F E2         [ 8] 1341 	clr	,-s	; 
   3BA0 E6 61         [ 5] 1342 	ldb	1,s	; , D.1501
   3BA2 34 04         [ 6] 1343 	pshs	b	; 
   3BA4 E6 66         [ 5] 1344 	ldb	6,s	; , x1
   3BA6 5C            [ 2] 1345 	incb	; 
   3BA7 34 04         [ 6] 1346 	pshs	b	; 
   3BA9 E6 63         [ 5] 1347 	ldb	3,s	; , D.1501
   3BAB 34 04         [ 6] 1348 	pshs	b	; 
   3BAD E6 67         [ 5] 1349 	ldb	7,s	; , x0
   3BAF BD 39 BC      [ 8] 1350 	jsr	_addLine	; 
                           1351 ;----- asm -----
                           1352 ;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1353 	; #ENR#[224]                    x0 = -1;
                           1354 ;  0 "" 2
                           1355 ;--- end asm ---
   3BB2 C6 FF         [ 2] 1356 	ldb	#-1	; ,
   3BB4 E7 67         [ 5] 1357 	stb	7,s	; , x0
   3BB6 32 64         [ 5] 1358 	leas	4,s	; ,,
   3BB8                    1359 L73:
   3BB8 6C 65         [ 7] 1360 	inc	5,s	;  ivtmp.190
   3BBA 33 41         [ 5] 1361 	leau	1,u	;  ivtmp.201,, ivtmp.201
   3BBC E6 65         [ 5] 1362 	ldb	5,s	; , ivtmp.190
   3BBE C1 0C         [ 2] 1363 	cmpb	#12	;cmpqi:	; ,
   3BC0 10 26 FF 19   [ 6] 1364 	lbne	L74	; 
   3BC4 6C 66         [ 7] 1365 	inc	6,s	;  ivtmp.192
   3BC6 31 2A         [ 5] 1366 	leay	10,y	;  ivtmp.198,, ivtmp.198
   3BC8 E6 66         [ 5] 1367 	ldb	6,s	; , ivtmp.192
   3BCA C1 10         [ 2] 1368 	cmpb	#16	;cmpqi:	; ,
   3BCC 10 26 FE FC   [ 6] 1369 	lbne	L75	; 
   3BD0 32 67         [ 5] 1370 	leas	7,s	; ,,
   3BD2 35 E0         [ 8] 1371 	puls	y,u,pc	; 
                           1372 	.globl _initLevel
   3BD4                    1373 _initLevel:
                           1374 ;----- asm -----
                           1375 ;  410 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1376 	; #ENR#[275]    lineCount = 0;
                           1377 ;  0 "" 2
                           1378 ;--- end asm ---
   3BD4 7F C8 80      [ 7] 1379 	clr	_lineCount	;  lineCount
                           1380 ;----- asm -----
                           1381 ;  412 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1382 	; #ENR#[276]    setupX();
                           1383 ;  0 "" 2
                           1384 ;--- end asm ---
   3BD7 BD 3A C0      [ 8] 1385 	jsr	_setupX	; 
                           1386 ;----- asm -----
                           1387 ;  414 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1388 	; #ENR#[277]    setupY();
                           1389 ;  0 "" 2
                           1390 ;--- end asm ---
   3BDA BD 3A 4E      [ 8] 1391 	jsr	_setupY	; 
   3BDD 39            [ 5] 1392 	rts
                           1393 	.globl _swatchSwitch
   3BDE                    1394 _swatchSwitch:
   3BDE 34 40         [ 6] 1395 	pshs	u	; 
   3BE0 32 79         [ 5] 1396 	leas	-7,s	; ,,
   3BE2 E7 62         [ 5] 1397 	stb	2,s	;  x, x
                           1398 ;----- asm -----
                           1399 ;  92 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1400 	; #ENR#[75]    for (uint8_t i = 0; i < level->swatches_count; i++) {
                           1401 ;  0 "" 2
                           1402 ;--- end asm ---
   3BE4 BE C8 F1      [ 6] 1403 	ldx	_level	;  level.6, level
   3BE7 6D 04         [ 7] 1404 	tst	4,x	;  <variable>.swatches_count
   3BE9 10 27 00 CC   [ 6] 1405 	lbeq	L82	; 
   3BED 6F 63         [ 7] 1406 	clr	3,s	;  i
   3BEF                    1407 L93:
                           1408 ;----- asm -----
                           1409 ;  94 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1410 	; #ENR#[76]        const struct Swatch* swatch = level->swatches[i];
                           1411 ;  0 "" 2
                           1412 ;--- end asm ---
   3BEF E6 63         [ 5] 1413 	ldb	3,s	; , i
   3BF1 4F            [ 2] 1414 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3BF2 ED E4         [ 5] 1415 	std	,s	; ,
   3BF4 58            [ 2] 1416 	aslb	; 
   3BF5 49            [ 2] 1417 	rola	; 
   3BF6 30 8B         [ 8] 1418 	leax	d,x	;  tmp43, tmp42, level.6
   3BF8 EE 05         [ 6] 1419 	ldu	5,x	;  swatch, <variable>.swatches
                           1420 ;----- asm -----
                           1421 ;  96 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1422 	; #ENR#[77]        if (swatch->position.x == x && swatch->position.y == y) {
                           1423 ;  0 "" 2
                           1424 ;--- end asm ---
   3BFA E6 62         [ 5] 1425 	ldb	2,s	; , x
   3BFC E1 41         [ 5] 1426 	cmpb	1,u	;cmpqi:(R)	; , <variable>.position.x
   3BFE 10 26 00 AA   [ 6] 1427 	lbne	L83	; 
   3C02 E6 6B         [ 5] 1428 	ldb	11,s	; , y
   3C04 E1 42         [ 5] 1429 	cmpb	2,u	;cmpqi:(R)	; , <variable>.position.y
   3C06 10 26 00 A2   [ 6] 1430 	lbne	L83	; 
                           1431 ;----- asm -----
                           1432 ;  98 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1433 	; #ENR#[78]            for (uint8_t j = 0; j < swatch->fields_count; j++) {
                           1434 ;  0 "" 2
                           1435 ;--- end asm ---
   3C0A 6D 43         [ 7] 1436 	tst	3,u	;  <variable>.fields_count
   3C0C 10 27 00 9C   [ 6] 1437 	lbeq	L83	; 
   3C10 6F 64         [ 7] 1438 	clr	4,s	;  j
   3C12                    1439 L92:
                           1440 ;----- asm -----
                           1441 ;  100 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1442 	; #ENR#[79]                const struct SwatchField* field = swatch->fields[j];
                           1443 ;  0 "" 2
                           1444 ;--- end asm ---
   3C12 E6 64         [ 5] 1445 	ldb	4,s	; , j
   3C14 4F            [ 2] 1446 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3C15 C3 00 02      [ 4] 1447 	addd	#2	;  tmp46,
   3C18 58            [ 2] 1448 	aslb	; 
   3C19 49            [ 2] 1449 	rola	; 
   3C1A 30 CB         [ 8] 1450 	leax	d,u	;  tmp48, tmp47, swatch
   3C1C AE 84         [ 5] 1451 	ldx	,x	;  field, <variable>.fields
                           1452 ;----- asm -----
                           1453 ;  102 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1454 	; #ENR#[80]                int8_t xf = field->position.x;
                           1455 ;  0 "" 2
                           1456 ;--- end asm ---
   3C1E E6 01         [ 5] 1457 	ldb	1,x	; , <variable>.position.x
   3C20 E7 65         [ 5] 1458 	stb	5,s	; , xf
                           1459 ;----- asm -----
                           1460 ;  104 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1461 	; #ENR#[81]                int8_t yf = field->position.y;
                           1462 ;  0 "" 2
                           1463 ;--- end asm ---
   3C22 E6 02         [ 5] 1464 	ldb	2,x	; , <variable>.position.y
   3C24 E7 66         [ 5] 1465 	stb	6,s	; , yf
                           1466 ;----- asm -----
                           1467 ;  106 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1468 	; #ENR#[82]                switch (field->action) {
                           1469 ;  0 "" 2
                           1470 ;--- end asm ---
   3C26 E6 84         [ 4] 1471 	ldb	,x	; , <variable>.action
   3C28 C1 04         [ 2] 1472 	cmpb	#4	;cmpqi:	; ,
   3C2A 10 22 00 74   [ 6] 1473 	lbhi	L84	; 
   3C2E 4F            [ 2] 1474 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3C2F ED E4         [ 5] 1475 	std	,s	; ,
   3C31 58            [ 2] 1476 	aslb	; 
   3C32 49            [ 2] 1477 	rola	; 
   3C33 1F 01         [ 6] 1478 	tfr	d,x	; , tmp51
   3C35 6E 99 3C 39   [10] 1479 	jmp	[L90,x]	; , tmp51
   3C39                    1480 L90:
   3C39 3C 43              1481 	.word L85
   3C3B 3C 68              1482 	.word L86
   3C3D 3C 7A              1483 	.word L87
   3C3F 3C 89              1484 	.word L88
   3C41 3C 98              1485 	.word L89
   3C43                    1486 L85:
                           1487 ;----- asm -----
                           1488 ;  110 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1489 	; #ENR#[84]                    setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
                           1490 ;  0 "" 2
                           1491 ;--- end asm ---
   3C43 E6 66         [ 5] 1492 	ldb	6,s	; , yf
   3C45 34 04         [ 6] 1493 	pshs	b	; 
   3C47 E6 66         [ 5] 1494 	ldb	6,s	; , xf
   3C49 BD 35 D7      [ 8] 1495 	jsr	_isSwatchFieldOn	; 
   3C4C 5D            [ 2] 1496 	tstb	;  D.1389
   3C4D 4F            [ 2] 1497 	clra		;zero_extendqihi: R:b -> R:d	;  D.1389, tmp55
   3C4E C3 FF FF      [ 4] 1498 	addd	#-1	;  tmp56,
   3C51 1F 89         [ 6] 1499 	tfr	a,b	; ,
   3C53 4F            [ 2] 1500 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3C54 59            [ 2] 1501 	rolb	; 
   3C55 59            [ 2] 1502 	rolb	; 
   3C56 C4 01         [ 2] 1503 	andb	#1	; ,
   3C58 34 04         [ 6] 1504 	pshs	b	;  tmp54
   3C5A E6 68         [ 5] 1505 	ldb	8,s	; , yf
   3C5C 34 04         [ 6] 1506 	pshs	b	; 
   3C5E E6 68         [ 5] 1507 	ldb	8,s	; , xf
   3C60 BD 36 0E      [ 8] 1508 	jsr	_setSwatchField	; 
                           1509 ;----- asm -----
                           1510 ;  112 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1511 	; #ENR#[85]                    break;
                           1512 ;  0 "" 2
                           1513 ;--- end asm ---
   3C63 32 63         [ 5] 1514 	leas	3,s	; ,,
   3C65 7E 3C A2      [ 4] 1515 	jmp	L84	; 
   3C68                    1516 L86:
                           1517 ;----- asm -----
                           1518 ;  116 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1519 	; #ENR#[87]                    setSwatchField(xf, yf, 1);
                           1520 ;  0 "" 2
                           1521 ;--- end asm ---
   3C68 C6 01         [ 2] 1522 	ldb	#1	; ,
   3C6A E7 E2         [ 6] 1523 	stb	,-s	; ,
   3C6C E6 67         [ 5] 1524 	ldb	7,s	; , yf
   3C6E 34 04         [ 6] 1525 	pshs	b	; 
   3C70 E6 67         [ 5] 1526 	ldb	7,s	; , xf
   3C72 BD 36 0E      [ 8] 1527 	jsr	_setSwatchField	; 
                           1528 ;----- asm -----
                           1529 ;  118 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1530 	; #ENR#[88]                    break;
                           1531 ;  0 "" 2
                           1532 ;--- end asm ---
   3C75 32 62         [ 5] 1533 	leas	2,s	; ,,
   3C77 7E 3C A2      [ 4] 1534 	jmp	L84	; 
   3C7A                    1535 L87:
                           1536 ;----- asm -----
                           1537 ;  122 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1538 	; #ENR#[90]                    setSwatchField(xf, yf, 0);
                           1539 ;  0 "" 2
                           1540 ;--- end asm ---
   3C7A 6F E2         [ 8] 1541 	clr	,-s	; 
   3C7C E6 67         [ 5] 1542 	ldb	7,s	; , yf
   3C7E 34 04         [ 6] 1543 	pshs	b	; 
   3C80 E6 67         [ 5] 1544 	ldb	7,s	; , xf
   3C82 BD 36 0E      [ 8] 1545 	jsr	_setSwatchField	; 
                           1546 ;----- asm -----
                           1547 ;  124 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1548 	; #ENR#[91]                    break;
                           1549 ;  0 "" 2
                           1550 ;--- end asm ---
   3C85 32 62         [ 5] 1551 	leas	2,s	; ,,
   3C87 20 19         [ 3] 1552 	bra	L84	; 
   3C89                    1553 L88:
                           1554 ;----- asm -----
                           1555 ;  128 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1556 	; #ENR#[93]                    blockX = xf;
                           1557 ;  0 "" 2
                           1558 ;--- end asm ---
   3C89 E6 65         [ 5] 1559 	ldb	5,s	; , xf
   3C8B F7 C8 8F      [ 5] 1560 	stb	_blockX	; , blockX
                           1561 ;----- asm -----
                           1562 ;  130 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1563 	; #ENR#[94]                    blockY = yf;
                           1564 ;  0 "" 2
                           1565 ;--- end asm ---
   3C8E E6 66         [ 5] 1566 	ldb	6,s	; , yf
   3C90 F7 C8 90      [ 5] 1567 	stb	_blockY	; , blockY
                           1568 ;----- asm -----
                           1569 ;  132 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1570 	; #ENR#[95]                    setSplitMode();
                           1571 ;  0 "" 2
                           1572 ;--- end asm ---
   3C93 BD 03 EE      [ 8] 1573 	jsr	_setSplitMode	; 
                           1574 ;----- asm -----
                           1575 ;  134 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1576 	; #ENR#[96]                    break;
                           1577 ;  0 "" 2
                           1578 ;--- end asm ---
   3C96 20 0A         [ 3] 1579 	bra	L84	; 
   3C98                    1580 L89:
                           1581 ;----- asm -----
                           1582 ;  138 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1583 	; #ENR#[98]                    blockX2 = xf;
                           1584 ;  0 "" 2
                           1585 ;--- end asm ---
   3C98 E6 65         [ 5] 1586 	ldb	5,s	; , xf
   3C9A F7 C8 91      [ 5] 1587 	stb	_blockX2	; , blockX2
                           1588 ;----- asm -----
                           1589 ;  140 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1590 	; #ENR#[99]                    blockY2 = yf;
                           1591 ;  0 "" 2
                           1592 ;--- end asm ---
   3C9D E6 66         [ 5] 1593 	ldb	6,s	; , yf
   3C9F F7 C8 92      [ 5] 1594 	stb	_blockY2	; , blockY2
                           1595 ;----- asm -----
                           1596 ;  142 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1597 	; #ENR#[100]                    break;
                           1598 ;  0 "" 2
                           1599 ;--- end asm ---
   3CA2                    1600 L84:
   3CA2 6C 64         [ 7] 1601 	inc	4,s	;  j
   3CA4 E6 64         [ 5] 1602 	ldb	4,s	; , j
   3CA6 E1 43         [ 5] 1603 	cmpb	3,u	;cmpqi:(R)	; , <variable>.fields_count
   3CA8 10 25 FF 66   [ 6] 1604 	lblo	L92	; 
   3CAC                    1605 L83:
   3CAC 6C 63         [ 7] 1606 	inc	3,s	;  i
   3CAE BE C8 F1      [ 6] 1607 	ldx	_level	;  level.6, level
   3CB1 E6 63         [ 5] 1608 	ldb	3,s	; , i
   3CB3 E1 04         [ 5] 1609 	cmpb	4,x	;cmpqi:(R)	; , <variable>.swatches_count
   3CB5 10 25 FF 36   [ 6] 1610 	lblo	L93	; 
   3CB9                    1611 L82:
                           1612 ;----- asm -----
                           1613 ;  148 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1614 	; #ENR#[105]    initLevel();
                           1615 ;  0 "" 2
                           1616 ;--- end asm ---
   3CB9 BD 3B D4      [ 8] 1617 	jsr	_initLevel	; 
   3CBC 32 67         [ 5] 1618 	leas	7,s	; ,,
   3CBE 35 C0         [ 7] 1619 	puls	u,pc	; 
                           1620 	.globl _lineCount
                           1621 	.area .data
   C880                    1622 _lineCount:
   C880 00                 1623 	.byte	0	;skip space
                           1624 	.globl _endX
   C881                    1625 _endX:
   C881 00                 1626 	.byte	0	;skip space
                           1627 	.globl _endY
   C882                    1628 _endY:
   C882 00                 1629 	.byte	0	;skip space
                           1630 	.globl _levelNumber
   C883                    1631 _levelNumber:
   C883 00                 1632 	.byte	0	;skip space
                           1633 	.globl _shifts
                           1634 	.area .text
   3CC0                    1635 _shifts:
   3CC0 01                 1636 	.byte	1
   3CC1 02                 1637 	.byte	2
   3CC2 04                 1638 	.byte	4
   3CC3 08                 1639 	.byte	8
   3CC4 10                 1640 	.byte	16
   3CC5 20                 1641 	.byte	32
   3CC6 40                 1642 	.byte	64
   3CC7 80                 1643 	.byte	-128
                           1644 	.area .bss
                           1645 	.globl	_level
   C8F1                    1646 _level:	.blkb	2
                           1647 	.globl	_swatchesOn
   C8F3                    1648 _swatchesOn:	.blkb	19
                           1649 	.globl	_lineX0
   C906                    1650 _lineX0:	.blkb	120
                           1651 	.globl	_lineY0
   C97E                    1652 _lineY0:	.blkb	120
                           1653 	.globl	_lineX1
   C9F6                    1654 _lineX1:	.blkb	120
                           1655 	.globl	_lineY1
   CA6E                    1656 _lineY1:	.blkb	120
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$level$100        005A GR  |   2 A$level$1009       04C3 GR
  2 A$level$101        005C GR  |   2 A$level$1010       04C5 GR
  2 A$level$102        005E GR  |   2 A$level$1023       04C7 GR
  2 A$level$1024       04C9 GR  |   2 A$level$1025       04CB GR
  2 A$level$1026       04CD GR  |   2 A$level$1033       04CF GR
  2 A$level$1034       04D1 GR  |   2 A$level$1035       04D3 GR
  2 A$level$1036       04D5 GR  |   2 A$level$1037       04D8 GR
  2 A$level$1038       04DA GR  |   2 A$level$1039       04DB GR
  2 A$level$1040       04DD GR  |   2 A$level$1041       04DF GR
  2 A$level$1042       04E0 GR  |   2 A$level$1043       04E2 GR
  2 A$level$1044       04E4 GR  |   2 A$level$1045       04E6 GR
  2 A$level$1046       04E8 GR  |   2 A$level$1047       04EB GR
  2 A$level$1048       04ED GR  |   2 A$level$1049       04EE GR
  2 A$level$1056       04F0 GR  |   2 A$level$1057       04F2 GR
  2 A$level$1058       04F4 GR  |   2 A$level$1059       04F6 GR
  2 A$level$1066       04F8 GR  |   2 A$level$1067       04FA GR
  2 A$level$1068       04FC GR  |   2 A$level$1075       04FE GR
  2 A$level$1076       0500 GR  |   2 A$level$1082       0502 GR
  2 A$level$1083       0504 GR  |   2 A$level$1084       0506 GR
  2 A$level$1085       0507 GR  |   2 A$level$1086       0509 GR
  2 A$level$1087       050B GR  |   2 A$level$1088       050D GR
  2 A$level$1089       050F GR  |   2 A$level$1090       0511 GR
  2 A$level$1091       0513 GR  |   2 A$level$1097       0516 GR
  2 A$level$1098       0518 GR  |   2 A$level$1099       051A GR
  2 A$level$1101       051C GR  |   2 A$level$1102       051E GR
  2 A$level$1103       0520 GR  |   2 A$level$1104       0522 GR
  2 A$level$1105       0526 GR  |   2 A$level$1106       0528 GR
  2 A$level$1107       052A GR  |   2 A$level$1108       052C GR
  2 A$level$1109       0530 GR  |   2 A$level$1110       0532 GR
  2 A$level$1113       0533 GR  |   2 A$level$1114       0535 GR
  2 A$level$1132       0537 GR  |   2 A$level$1133       053B GR
  2 A$level$1134       053D GR  |   2 A$level$1136       053F GR
  2 A$level$1137       0541 GR  |   2 A$level$1138       0542 GR
  2 A$level$114        0060 GR  |   2 A$level$115        0062 GR
  2 A$level$1150       0544 GR  |   2 A$level$1151       0546 GR
  2 A$level$1152       0548 GR  |   2 A$level$1153       054A GR
  2 A$level$1154       054C GR  |   2 A$level$1155       054E GR
  2 A$level$1157       0550 GR  |   2 A$level$1158       0552 GR
  2 A$level$1159       0553 GR  |   2 A$level$116        0063 GR
  2 A$level$117        0064 GR  |   2 A$level$1171       0555 GR
  2 A$level$1172       0557 GR  |   2 A$level$1173       0559 GR
  2 A$level$1174       055B GR  |   2 A$level$118        0065 GR
  2 A$level$1180       055D GR  |   2 A$level$1181       055F GR
  2 A$level$1183       0561 GR  |   2 A$level$119        0066 GR
  2 A$level$1190       0562 GR  |   2 A$level$1191       0564 GR
  2 A$level$1197       0566 GR  |   2 A$level$1198       0568 GR
  2 A$level$1199       056A GR  |   2 A$level$120        0067 GR
  2 A$level$1200       056C GR  |   2 A$level$1206       056F GR
  2 A$level$1207       0571 GR  |   2 A$level$121        0068 GR
  2 A$level$1213       0574 GR  |   2 A$level$1214       0576 GR
  2 A$level$1215       0579 GR  |   2 A$level$1216       057B GR
  2 A$level$1218       057E GR  |   2 A$level$1219       0580 GR
  2 A$level$122        006A GR  |   2 A$level$1225       0582 GR
  2 A$level$1226       0584 GR  |   2 A$level$1227       0586 GR
  2 A$level$1228       0588 GR  |   2 A$level$1229       058B GR
  2 A$level$123        006E GR  |   2 A$level$1230       058D GR
  2 A$level$1232       0590 GR  |   2 A$level$1233       0592 GR
  2 A$level$1239       0594 GR  |   2 A$level$124        0070 GR
  2 A$level$1240       0596 GR  |   2 A$level$1241       0598 GR
  2 A$level$1242       059A GR  |   2 A$level$1243       059C GR
  2 A$level$1244       059E GR  |   2 A$level$1245       05A0 GR
  2 A$level$1246       05A2 GR  |   2 A$level$1247       05A4 GR
  2 A$level$1248       05A7 GR  |   2 A$level$1249       05A9 GR
  2 A$level$125        0072 GR  |   2 A$level$1251       05AB GR
  2 A$level$1252       05AD GR  |   2 A$level$1258       05AF GR
  2 A$level$1259       05B1 GR  |   2 A$level$126        0074 GR
  2 A$level$1260       05B3 GR  |   2 A$level$1261       05B5 GR
  2 A$level$1262       05B7 GR  |   2 A$level$1263       05B9 GR
  2 A$level$1264       05BB GR  |   2 A$level$1265       05BD GR
  2 A$level$1266       05BF GR  |   2 A$level$1267       05C2 GR
  2 A$level$1268       05C4 GR  |   2 A$level$127        0077 GR
  2 A$level$1270       05C6 GR  |   2 A$level$1271       05C8 GR
  2 A$level$1277       05CA GR  |   2 A$level$1278       05CC GR
  2 A$level$1279       05CE GR  |   2 A$level$128        0079 GR
  2 A$level$1280       05D0 GR  |   2 A$level$1281       05D2 GR
  2 A$level$1282       05D4 GR  |   2 A$level$1283       05D6 GR
  2 A$level$1284       05D8 GR  |   2 A$level$1285       05DA GR
  2 A$level$1286       05DC GR  |   2 A$level$1287       05DF GR
  2 A$level$129        007B GR  |   2 A$level$1294       05E1 GR
  2 A$level$1295       05E3 GR  |   2 A$level$1296       05E5 GR
  2 A$level$1297       05E7 GR  |   2 A$level$1298       05EA GR
  2 A$level$1299       05EC GR  |   2 A$level$1300       05ED GR
  2 A$level$1301       05EF GR  |   2 A$level$1302       05F1 GR
  2 A$level$1303       05F3 GR  |   2 A$level$1304       05F5 GR
  2 A$level$1305       05F7 GR  |   2 A$level$1306       05FA GR
  2 A$level$1307       05FC GR  |   2 A$level$1308       05FD GR
  2 A$level$131        007D GR  |   2 A$level$1315       05FF GR
  2 A$level$1316       0601 GR  |   2 A$level$1317       0603 GR
  2 A$level$1318       0605 GR  |   2 A$level$132        007F GR
  2 A$level$1325       0607 GR  |   2 A$level$1326       0609 GR
  2 A$level$1327       060B GR  |   2 A$level$1334       060D GR
  2 A$level$1335       060F GR  |   2 A$level$1341       0611 GR
  2 A$level$1342       0613 GR  |   2 A$level$1343       0615 GR
  2 A$level$1344       0617 GR  |   2 A$level$1345       0619 GR
  2 A$level$1346       061A GR  |   2 A$level$1347       061C GR
  2 A$level$1348       061E GR  |   2 A$level$1349       0620 GR
  2 A$level$135        0081 GR  |   2 A$level$1350       0622 GR
  2 A$level$1356       0625 GR  |   2 A$level$1357       0627 GR
  2 A$level$1358       0629 GR  |   2 A$level$136        0083 GR
  2 A$level$1360       062B GR  |   2 A$level$1361       062D GR
  2 A$level$1362       062F GR  |   2 A$level$1363       0631 GR
  2 A$level$1364       0633 GR  |   2 A$level$1365       0637 GR
  2 A$level$1366       0639 GR  |   2 A$level$1367       063B GR
  2 A$level$1368       063D GR  |   2 A$level$1369       063F GR
  2 A$level$137        0085 GR  |   2 A$level$1370       0643 GR
  2 A$level$1371       0645 GR  |   2 A$level$1379       0647 GR
  2 A$level$1385       064A GR  |   2 A$level$1391       064D GR
  2 A$level$1392       0650 GR  |   2 A$level$1395       0651 GR
  2 A$level$1396       0653 GR  |   2 A$level$1397       0655 GR
  2 A$level$1403       0657 GR  |   2 A$level$1404       065A GR
  2 A$level$1405       065C GR  |   2 A$level$1406       0660 GR
  2 A$level$1413       0662 GR  |   2 A$level$1414       0664 GR
  2 A$level$1415       0665 GR  |   2 A$level$1416       0667 GR
  2 A$level$1417       0668 GR  |   2 A$level$1418       0669 GR
  2 A$level$1419       066B GR  |   2 A$level$1425       066D GR
  2 A$level$1426       066F GR  |   2 A$level$1427       0671 GR
  2 A$level$1428       0675 GR  |   2 A$level$1429       0677 GR
  2 A$level$143        0087 GR  |   2 A$level$1430       0679 GR
  2 A$level$1436       067D GR  |   2 A$level$1437       067F GR
  2 A$level$1438       0683 GR  |   2 A$level$144        0089 GR
  2 A$level$1445       0685 GR  |   2 A$level$1446       0687 GR
  2 A$level$1447       0688 GR  |   2 A$level$1448       068B GR
  2 A$level$1449       068C GR  |   2 A$level$145        008B GR
  2 A$level$1450       068D GR  |   2 A$level$1451       068F GR
  2 A$level$1457       0691 GR  |   2 A$level$1458       0693 GR
  2 A$level$146        008C GR  |   2 A$level$1464       0695 GR
  2 A$level$1465       0697 GR  |   2 A$level$147        008E GR
  2 A$level$1471       0699 GR  |   2 A$level$1472       069B GR
  2 A$level$1473       069D GR  |   2 A$level$1474       06A1 GR
  2 A$level$1475       06A2 GR  |   2 A$level$1476       06A4 GR
  2 A$level$1477       06A5 GR  |   2 A$level$1478       06A6 GR
  2 A$level$1479       06A8 GR  |   2 A$level$148        0090 GR
  2 A$level$1492       06B6 GR  |   2 A$level$1493       06B8 GR
  2 A$level$1494       06BA GR  |   2 A$level$1495       06BC GR
  2 A$level$1496       06BF GR  |   2 A$level$1497       06C0 GR
  2 A$level$1498       06C1 GR  |   2 A$level$1499       06C4 GR
  2 A$level$150        0091 GR  |   2 A$level$1500       06C6 GR
  2 A$level$1501       06C7 GR  |   2 A$level$1502       06C8 GR
  2 A$level$1503       06C9 GR  |   2 A$level$1504       06CB GR
  2 A$level$1505       06CD GR  |   2 A$level$1506       06CF GR
  2 A$level$1507       06D1 GR  |   2 A$level$1508       06D3 GR
  2 A$level$1514       06D6 GR  |   2 A$level$1515       06D8 GR
  2 A$level$1522       06DB GR  |   2 A$level$1523       06DD GR
  2 A$level$1524       06DF GR  |   2 A$level$1525       06E1 GR
  2 A$level$1526       06E3 GR  |   2 A$level$1527       06E5 GR
  2 A$level$153        0093 GR  |   2 A$level$1533       06E8 GR
  2 A$level$1534       06EA GR  |   2 A$level$1541       06ED GR
  2 A$level$1542       06EF GR  |   2 A$level$1543       06F1 GR
  2 A$level$1544       06F3 GR  |   2 A$level$1545       06F5 GR
  2 A$level$1551       06F8 GR  |   2 A$level$1552       06FA GR
  2 A$level$1559       06FC GR  |   2 A$level$1560       06FE GR
  2 A$level$1566       0701 GR  |   2 A$level$1567       0703 GR
  2 A$level$1573       0706 GR  |   2 A$level$1579       0709 GR
  2 A$level$1586       070B GR  |   2 A$level$1587       070D GR
  2 A$level$159        0095 GR  |   2 A$level$1593       0710 GR
  2 A$level$1594       0712 GR  |   2 A$level$160        0097 GR
  2 A$level$1601       0715 GR  |   2 A$level$1602       0717 GR
  2 A$level$1603       0719 GR  |   2 A$level$1604       071B GR
  2 A$level$1606       071F GR  |   2 A$level$1607       0721 GR
  2 A$level$1608       0724 GR  |   2 A$level$1609       0726 GR
  2 A$level$161        0099 GR  |   2 A$level$1610       0728 GR
  2 A$level$1617       072C GR  |   2 A$level$1618       072F GR
  2 A$level$1619       0731 GR  |   2 A$level$167        009B GR
  2 A$level$168        009D GR  |   2 A$level$169        009E GR
  2 A$level$170        009F GR  |   2 A$level$171        00A0 GR
  2 A$level$172        00A1 GR  |   2 A$level$173        00A2 GR
  2 A$level$179        00A3 GR  |   2 A$level$180        00A5 GR
  2 A$level$186        00A7 GR  |   2 A$level$187        00AA GR
  2 A$level$188        00AC GR  |   2 A$level$189        00AE GR
  2 A$level$190        00B0 GR  |   2 A$level$191        00B2 GR
  2 A$level$192        00B5 GR  |   2 A$level$193        00B7 GR
  2 A$level$194        00B9 GR  |   2 A$level$201        00BB GR
  2 A$level$202        00BE GR  |   2 A$level$203        00C0 GR
  2 A$level$204        00C2 GR  |   2 A$level$205        00C4 GR
  2 A$level$206        00C6 GR  |   2 A$level$207        00C9 GR
  2 A$level$208        00CA GR  |   2 A$level$209        00CC GR
  2 A$level$211        00CE GR  |   2 A$level$212        00D0 GR
  2 A$level$215        00D2 GR  |   2 A$level$216        00D4 GR
  2 A$level$222        00D6 GR  |   2 A$level$223        00D8 GR
  2 A$level$224        00DA GR  |   2 A$level$225        00DC GR
  2 A$level$226        00DF GR  |   2 A$level$227        00E1 GR
  2 A$level$233        00E3 GR  |   2 A$level$234        00E5 GR
  2 A$level$235        00E7 GR  |   2 A$level$236        00E9 GR
  2 A$level$237        00EB GR  |   2 A$level$238        00ED GR
  2 A$level$239        00EF GR  |   2 A$level$240        00F1 GR
  2 A$level$247        00F3 GR  |   2 A$level$248        00F5 GR
  2 A$level$249        00F7 GR  |   2 A$level$250        00F9 GR
  2 A$level$251        00FC GR  |   2 A$level$252        00FE GR
  2 A$level$253        00FF GR  |   2 A$level$259        0101 GR
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
  2 A$level$356        017A GR  |   2 A$level$36         0004 GR
  2 A$level$362        017C GR  |   2 A$level$363        017F GR
  2 A$level$364        0181 GR  |   2 A$level$365        0184 GR
  2 A$level$366        0186 GR  |   2 A$level$367        0188 GR
  2 A$level$368        018B GR  |   2 A$level$369        018D GR
  2 A$level$37         0006 GR  |   2 A$level$370        018F GR
  2 A$level$371        0190 GR  |   2 A$level$372        0192 GR
  2 A$level$373        0194 GR  |   2 A$level$379        0198 GR
  2 A$level$38         0008 GR  |   2 A$level$380        019B GR
  2 A$level$381        019D GR  |   2 A$level$382        01A0 GR
  2 A$level$383        01A2 GR  |   2 A$level$384        01A4 GR
  2 A$level$385        01A6 GR  |   2 A$level$386        01A9 GR
  2 A$level$387        01AB GR  |   2 A$level$388        01AD GR
  2 A$level$389        01AE GR  |   2 A$level$39         000A GR
  2 A$level$390        01B0 GR  |   2 A$level$391        01B2 GR
  2 A$level$397        01B6 GR  |   2 A$level$398        01B9 GR
  2 A$level$399        01BB GR  |   2 A$level$40         000C GR
  2 A$level$400        01BE GR  |   2 A$level$401        01BF GR
  2 A$level$402        01C1 GR  |   2 A$level$403        01C3 GR
  2 A$level$404        01C4 GR  |   2 A$level$405        01C6 GR
  2 A$level$406        01C8 GR  |   2 A$level$407        01CA GR
  2 A$level$408        01CC GR  |   2 A$level$409        01CF GR
  2 A$level$41         000E GR  |   2 A$level$410        01D1 GR
  2 A$level$411        01D3 GR  |   2 A$level$412        01D4 GR
  2 A$level$413        01D6 GR  |   2 A$level$414        01D8 GR
  2 A$level$42         0010 GR  |   2 A$level$420        01DC GR
  2 A$level$421        01DF GR  |   2 A$level$422        01E2 GR
  2 A$level$423        01E4 GR  |   2 A$level$424        01E6 GR
  2 A$level$425        01E8 GR  |   2 A$level$426        01EA GR
  2 A$level$427        01ED GR  |   2 A$level$428        01EF GR
  2 A$level$429        01F2 GR  |   2 A$level$43         0012 GR
  2 A$level$430        01F3 GR  |   2 A$level$431        01F5 GR
  2 A$level$432        01F7 GR  |   2 A$level$438        01FB GR
  2 A$level$439        01FE GR  |   2 A$level$44         0014 GR
  2 A$level$440        01FF GR  |   2 A$level$441        0201 GR
  2 A$level$447        0204 GR  |   2 A$level$448        0207 GR
  2 A$level$449        0209 GR  |   2 A$level$45         0016 GR
  2 A$level$450        020B GR  |   2 A$level$451        020E GR
  2 A$level$452        0210 GR  |   2 A$level$453        0212 GR
  2 A$level$454        0213 GR  |   2 A$level$455        0215 GR
  2 A$level$456        0219 GR  |   2 A$level$457        021B GR
  2 A$level$46         0017 GR  |   2 A$level$463        021D GR
  2 A$level$464        0220 GR  |   2 A$level$465        0223 GR
  2 A$level$466        0226 GR  |   2 A$level$467        0228 GR
  2 A$level$468        022A GR  |   2 A$level$469        022C GR
  2 A$level$47         0019 GR  |   2 A$level$470        022F GR
  2 A$level$471        0232 GR  |   2 A$level$472        0235 GR
  2 A$level$473        0236 GR  |   2 A$level$474        0238 GR
  2 A$level$475        023C GR  |   2 A$level$476        023F GR
  2 A$level$48         001B GR  |   2 A$level$482        0241 GR
  2 A$level$483        0244 GR  |   2 A$level$484        0247 GR
  2 A$level$485        0249 GR  |   2 A$level$486        024B GR
  2 A$level$487        024D GR  |   2 A$level$488        024F GR
  2 A$level$489        0252 GR  |   2 A$level$49         001C GR
  2 A$level$490        0254 GR  |   2 A$level$491        0256 GR
  2 A$level$492        0257 GR  |   2 A$level$493        0259 GR
  2 A$level$494        025D GR  |   2 A$level$495        025F GR
  2 A$level$50         001E GR  |   2 A$level$501        0261 GR
  2 A$level$502        0264 GR  |   2 A$level$503        0267 GR
  2 A$level$504        0269 GR  |   2 A$level$505        026B GR
  2 A$level$506        026D GR  |   2 A$level$507        026F GR
  2 A$level$508        0272 GR  |   2 A$level$509        0274 GR
  2 A$level$51         0020 GR  |   2 A$level$510        0277 GR
  2 A$level$511        0278 GR  |   2 A$level$512        027A GR
  2 A$level$513        027E GR  |   2 A$level$514        0280 GR
  2 A$level$52         0021 GR  |   2 A$level$520        0282 GR
  2 A$level$521        0285 GR  |   2 A$level$522        0288 GR
  2 A$level$525        028A GR  |   2 A$level$526        028C GR
  2 A$level$53         0022 GR  |   2 A$level$532        028E GR
  2 A$level$539        0291 GR  |   2 A$level$54         0024 GR
  2 A$level$540        0293 GR  |   2 A$level$541        0296 GR
  2 A$level$55         0025 GR  |   2 A$level$559        0298 GR
  2 A$level$56         0026 GR  |   2 A$level$560        029D GR
  2 A$level$567        029F GR  |   2 A$level$568        02A1 GR
  2 A$level$57         0027 GR  |   2 A$level$578        02A3 GR
  2 A$level$58         0028 GR  |   2 A$level$584        02A5 GR
  2 A$level$585        02A7 GR  |   2 A$level$586        02A9 GR
  2 A$level$587        02AB GR  |   2 A$level$59         002A GR
  2 A$level$594        02AD GR  |   2 A$level$595        02AF GR
  2 A$level$596        02B1 GR  |   2 A$level$597        02B3 GR
  2 A$level$598        02B5 GR  |   2 A$level$599        02B7 GR
  2 A$level$60         002C GR  |   2 A$level$600        02BA GR
  2 A$level$602        02BC GR  |   2 A$level$603        02BE GR
  2 A$level$604        02C0 GR  |   2 A$level$605        02C2 GR
  2 A$level$606        02C4 GR  |   2 A$level$607        02C6 GR
  2 A$level$608        02C8 GR  |   2 A$level$609        02CA GR
  2 A$level$61         002E GR  |   2 A$level$610        02CC GR
  2 A$level$611        02CE GR  |   2 A$level$612        02D2 GR
  2 A$level$613        02D4 GR  |   2 A$level$62         0030 GR
  2 A$level$63         0032 GR  |   2 A$level$633        02E6 GR
  2 A$level$634        02E8 GR  |   2 A$level$64         0034 GR
  2 A$level$640        02EA GR  |   2 A$level$641        02ED GR
  2 A$level$642        02EF GR  |   2 A$level$643        02F1 GR
  2 A$level$644        02F3 GR  |   2 A$level$645        02F5 GR
  2 A$level$646        02F8 GR  |   2 A$level$647        02FA GR
  2 A$level$648        02FC GR  |   2 A$level$649        02FD GR
  2 A$level$65         0038 GR  |   2 A$level$650        02FF GR
  2 A$level$651        0301 GR  |   2 A$level$652        0303 GR
  2 A$level$658        0307 GR  |   2 A$level$659        030A GR
  2 A$level$66         003A GR  |   2 A$level$660        030C GR
  2 A$level$661        030E GR  |   2 A$level$662        0310 GR
  2 A$level$663        0312 GR  |   2 A$level$664        0314 GR
  2 A$level$665        0317 GR  |   2 A$level$666        0319 GR
  2 A$level$667        031B GR  |   2 A$level$668        031C GR
  2 A$level$669        031E GR  |   2 A$level$67         003C GR
  2 A$level$670        0320 GR  |   2 A$level$671        0322 GR
  2 A$level$677        0326 GR  |   2 A$level$678        0329 GR
  2 A$level$679        032B GR  |   2 A$level$680        032D GR
  2 A$level$681        032E GR  |   2 A$level$682        0330 GR
  2 A$level$683        0332 GR  |   2 A$level$684        0334 GR
  2 A$level$685        0337 GR  |   2 A$level$686        0339 GR
  2 A$level$687        033B GR  |   2 A$level$688        033C GR
  2 A$level$689        033E GR  |   2 A$level$69         003E GR
  2 A$level$690        0340 GR  |   2 A$level$691        0342 GR
  2 A$level$697        0346 GR  |   2 A$level$698        0349 GR
  2 A$level$699        034B GR  |   2 A$level$700        034D GR
  2 A$level$701        034F GR  |   2 A$level$702        0351 GR
  2 A$level$703        0353 GR  |   2 A$level$704        0356 GR
  2 A$level$705        0358 GR  |   2 A$level$706        035A GR
  2 A$level$707        035B GR  |   2 A$level$708        035D GR
  2 A$level$709        035F GR  |   2 A$level$71         003F GR
  2 A$level$715        0363 GR  |   2 A$level$716        0366 GR
  2 A$level$717        0367 GR  |   2 A$level$72         0041 GR
  2 A$level$723        036A GR  |   2 A$level$724        036C GR
  2 A$level$725        036E GR  |   2 A$level$731        0370 GR
  2 A$level$732        0373 GR  |   2 A$level$734        0376 GR
  2 A$level$735        0378 GR  |   2 A$level$738        0379 GR
  2 A$level$739        037B GR  |   2 A$level$745        037D GR
  2 A$level$746        0380 GR  |   2 A$level$747        0382 GR
  2 A$level$748        0384 GR  |   2 A$level$749        0386 GR
  2 A$level$750        0388 GR  |   2 A$level$751        038B GR
  2 A$level$752        038D GR  |   2 A$level$753        038F GR
  2 A$level$754        0390 GR  |   2 A$level$755        0392 GR
  2 A$level$756        0394 GR  |   2 A$level$762        0398 GR
  2 A$level$763        039B GR  |   2 A$level$764        039D GR
  2 A$level$765        039F GR  |   2 A$level$766        03A1 GR
  2 A$level$767        03A3 GR  |   2 A$level$768        03A5 GR
  2 A$level$769        03A8 GR  |   2 A$level$770        03AA GR
  2 A$level$771        03AC GR  |   2 A$level$772        03AD GR
  2 A$level$773        03AF GR  |   2 A$level$774        03B1 GR
  2 A$level$780        03B5 GR  |   2 A$level$781        03B8 GR
  2 A$level$782        03BA GR  |   2 A$level$783        03BC GR
  2 A$level$784        03BE GR  |   2 A$level$785        03C0 GR
  2 A$level$786        03C3 GR  |   2 A$level$787        03C5 GR
  2 A$level$788        03C7 GR  |   2 A$level$789        03C8 GR
  2 A$level$790        03CA GR  |   2 A$level$791        03CC GR
  2 A$level$797        03D0 GR  |   2 A$level$798        03D3 GR
  2 A$level$799        03D5 GR  |   2 A$level$80         0043 GR
  2 A$level$800        03D7 GR  |   2 A$level$801        03D9 GR
  2 A$level$802        03DB GR  |   2 A$level$803        03DD GR
  2 A$level$804        03E0 GR  |   2 A$level$805        03E2 GR
  2 A$level$806        03E4 GR  |   2 A$level$807        03E5 GR
  2 A$level$808        03E7 GR  |   2 A$level$809        03E9 GR
  2 A$level$81         0046 GR  |   2 A$level$815        03ED GR
  2 A$level$816        03EF GR  |   2 A$level$817        03F1 GR
  2 A$level$82         0047 GR  |   2 A$level$823        03F3 GR
  2 A$level$824        03F6 GR  |   2 A$level$825        03F7 GR
  2 A$level$826        03F9 GR  |   2 A$level$83         0049 GR
  2 A$level$832        03FD GR  |   2 A$level$833        0401 GR
  2 A$level$834        0403 GR  |   2 A$level$840        0407 GR
  2 A$level$841        040B GR  |   2 A$level$842        040D GR
  2 A$level$848        0411 GR  |   2 A$level$849        0415 GR
  2 A$level$850        0417 GR  |   2 A$level$857        041B GR
  2 A$level$858        041E GR  |   2 A$level$859        041F GR
  2 A$level$86         004A GR  |   2 A$level$865        0422 GR
  2 A$level$866        0424 GR  |   2 A$level$87         004C GR
  2 A$level$872        0426 GR  |   2 A$level$873        0429 GR
  2 A$level$875        042C GR  |   2 A$level$876        042E GR
  2 A$level$879        042F GR  |   2 A$level$88         004E GR
  2 A$level$880        0431 GR  |   2 A$level$889        0433 GR
  2 A$level$890        0435 GR  |   2 A$level$891        0437 GR
  2 A$level$892        0439 GR  |   2 A$level$893        043B GR
  2 A$level$900        043D GR  |   2 A$level$901        043F GR
  2 A$level$902        0441 GR  |   2 A$level$903        0443 GR
  2 A$level$904        0445 GR  |   2 A$level$905        0447 GR
  2 A$level$906        0449 GR  |   2 A$level$907        044B GR
  2 A$level$908        044D GR  |   2 A$level$909        044F GR
  2 A$level$910        0451 GR  |   2 A$level$911        0453 GR
  2 A$level$912        0455 GR  |   2 A$level$918        0458 GR
  2 A$level$919        045A GR  |   2 A$level$920        045C GR
  2 A$level$921        045E GR  |   2 A$level$922        0460 GR
  2 A$level$923        0462 GR  |   2 A$level$924        0464 GR
  2 A$level$925        0466 GR  |   2 A$level$926        0468 GR
  2 A$level$928        046A GR  |   2 A$level$929        046C GR
  2 A$level$936        046E GR  |   2 A$level$937        0470 GR
  2 A$level$938        0472 GR  |   2 A$level$939        0474 GR
  2 A$level$94         0050 GR  |   2 A$level$940        0476 GR
  2 A$level$947        0478 GR  |   2 A$level$948        047A GR
  2 A$level$949        047C GR  |   2 A$level$95         0052 GR
  2 A$level$950        047E GR  |   2 A$level$951        0480 GR
  2 A$level$952        0482 GR  |   2 A$level$953        0484 GR
  2 A$level$954        0486 GR  |   2 A$level$955        0488 GR
  2 A$level$956        048A GR  |   2 A$level$957        048C GR
  2 A$level$958        048E GR  |   2 A$level$959        0490 GR
  2 A$level$96         0054 GR  |   2 A$level$965        0493 GR
  2 A$level$966        0495 GR  |   2 A$level$967        0497 GR
  2 A$level$968        0499 GR  |   2 A$level$969        049B GR
  2 A$level$97         0055 GR  |   2 A$level$970        049D GR
  2 A$level$971        049F GR  |   2 A$level$972        04A1 GR
  2 A$level$973        04A3 GR  |   2 A$level$975        04A5 GR
  2 A$level$976        04A7 GR  |   2 A$level$98         0057 GR
  2 A$level$983        04A9 GR  |   2 A$level$984        04AB GR
  2 A$level$985        04AD GR  |   2 A$level$986        04AF GR
  2 A$level$987        04B1 GR  |   2 A$level$988        04B3 GR
  2 A$level$989        04B5 GR  |   2 A$level$99         0059 GR
  2 A$level$990        04B7 GR  |   2 A$level$991        04B9 GR
  2 A$level$992        04BB GR  |   2 A$level$993        04BE GR
  2 A$level$994        04C0 GR  |   2 A$level$997        04C1 GR
  2 L11                00BB R   |   2 L13                00CE R
  2 L15                00F3 R   |   2 L16                0105 R
  2 L17                012C R   |   2 L19                012E R
  2 L2                 003E R   |   2 L28                0291 R
  2 L29                02AD R   |   2 L3                 003F R
  2 L30                02BC R   |   2 L31                02A3 R
  2 L32                029F R   |   2 L39                0376 R
  2 L41                041B R   |   2 L43                042C R
  2 L45                046E R   |   2 L46                046A R
  2 L47                043D R   |   2 L48                04A9 R
  2 L49                04A5 R   |   2 L50                0478 R
  2 L53                04F0 R   |   2 L54                04FE R
  2 L55                04F8 R   |   2 L56                051C R
  2 L57                04CF R   |   2 L58                04C7 R
  2 L63                0561 R   |   2 L64                0562 R
  2 L65                057E R   |   2 L66                05E1 R
  2 L67                0590 R   |   2 L68                05AB R
  2 L69                05C6 R   |   2 L70                05FF R
  2 L71                060D R   |   2 L72                0607 R
  2 L73                062B R   |   2 L74                0550 R
  2 L75                053F R   |   2 L8                 007D R
  2 L82                072C R   |   2 L83                071F R
  2 L84                0715 R   |   2 L85                06B6 R
  2 L86                06DB R   |   2 L87                06ED R
  2 L88                06FC R   |   2 L89                070B R
  2 L90                06AC R   |   2 L92                0685 R
  2 L93                0662 R   |   2 LC0                02D6 R
  2 _addLine           042F GR  |   2 _addLineImpl       0379 GR
  2 _addSplit          02E6 GR  |   2 _addTarget         0176 GR
    _blockX            **** GX  |     _blockX2           **** GX
    _blockY            **** GX  |     _blockY2           **** GX
  3 _endX              0001 GR  |   3 _endY              0002 GR
  2 _getField          0000 GR  |   2 _getShifts         0043 GR
  2 _initLevel         0647 GR  |   2 _initSwatches      028A GR
  2 _isField           00D2 GR  |   2 _isSwatchField     004A GR
  4 _level             0000 GR  |   3 _levelNumber       0003 GR
  3 _lineCount         0000 GR  |   4 _lineX0            0015 GR
  4 _lineX1            0105 GR  |   4 _lineY0            008D GR
  4 _lineY1            017D GR  |     _runtimeError      **** GX
    _setSplitMode      **** GX  |   2 _setSwatchFiel     0081 GR
  2 _setupX            0533 GR  |   2 _setupY            04C1 GR
  2 _shifts            0733 GR  |   2 _swatchSwitch      0651 GR
  4 _swatchesOn        0002 GR  |   2 _x3d               0131 GR
  2 _y3d               0152 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  73B   flags  100
   3 .data            size    4   flags  100
   4 .bss             size  1F5   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

