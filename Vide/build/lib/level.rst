                              1 ;;; gcc for m6809 : Mar 17 2019 11:56:12
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	level.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report -I/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include
                             12 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             13 ; /home/frank/data/projects/bloxorz/Vide/source/level.enr.c
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
                             32 	.globl	_getField
   35D6                      33 _getField:
   35D6 34 60         [ 7]   34 	pshs	y,u	;
   35D8 32 7B         [ 5]   35 	leas	-5,s	;,,
   35DA E7 64         [ 5]   36 	stb	4,s	; x, x
                             37 ;----- asm -----
                             38 ; 25 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                             39 	; #ENR#[24]    char c = 0;
                             40 ; 0 "" 2
                             41 ; 27 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                             42 	; #ENR#[25]    if (x >= 0 && y >= 0 && x < LEVEL_WIDTH && y < LEVEL_HEIGHT) {
                             43 ; 0 "" 2
                             44 ;--- end asm ---
   35DC 5D            [ 2]   45 	tstb	; x
   35DD 2D 36         [ 3]   46 	blt	L2	;
   35DF 6D 6B         [ 7]   47 	tst	11,s	; y
   35E1 2D 32         [ 3]   48 	blt	L2	;
   35E3 C1 09         [ 2]   49 	cmpb	#9	;cmpqi:	; x,
   35E5 2E 2E         [ 3]   50 	bgt	L2	;
   35E7 E6 6B         [ 5]   51 	ldb	11,s	;, y
   35E9 C1 0E         [ 2]   52 	cmpb	#14	;cmpqi:	;,
   35EB 2E 28         [ 3]   53 	bgt	L2	;
                             54 ;----- asm -----
                             55 ; 29 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                             56 	; #ENR#[26]        c = level->geometry[(long int) y*LEVEL_WIDTH + (long int)x];
                             57 ; 0 "" 2
                             58 ;--- end asm ---
   35ED 1D            [ 2]   59 	sex		;extendqihi2: R:b -> R:d	;,
   35EE ED E4         [ 5]   60 	std	,s	;,
   35F0 E6 64         [ 5]   61 	ldb	4,s	;, x
   35F2 1D            [ 2]   62 	sex		;extendqihi2: R:b -> R:d	;,
   35F3 1F 02         [ 6]   63 	tfr	d,y	;, x
   35F5 EC E4         [ 5]   64 	ldd	,s	;,
   35F7 58            [ 2]   65 	aslb	;
   35F8 49            [ 2]   66 	rola	;
   35F9 ED 62         [ 6]   67 	std	2,s	;,
   35FB 58            [ 2]   68 	aslb	;
   35FC 49            [ 2]   69 	rola	;
   35FD 58            [ 2]   70 	aslb	;
   35FE 49            [ 2]   71 	rola	;
   35FF EE 62         [ 6]   72 	ldu	2,s	;,
   3601 30 CB         [ 8]   73 	leax	d,u	; tmp38, tmp37,
   3603 1E 02         [ 8]   74 	exg	d,y	;, x
   3605 30 8B         [ 8]   75 	leax	d,x	; tmp39,, tmp39
   3607 1E 02         [ 8]   76 	exg	d,y	;, x
   3609 1E 01         [ 8]   77 	exg	d,x	;, tmp40
   360B E3 9F C8 F2   [11]   78 	addd	[_level]; addhi3,3	;, <variable>.geometry
   360F 1E 01         [ 8]   79 	exg	d,x	;, tmp40
   3611 E6 84         [ 4]   80 	ldb	,x	; c,
   3613 20 01         [ 3]   81 	bra	L3	;
   3615                      82 L2:
   3615 5F            [ 2]   83 	clrb	; c
   3616                      84 L3:
                             85 ;----- asm -----
                             86 ; 32 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                             87 	; #ENR#[28]	return c;
                             88 ; 0 "" 2
                             89 ;--- end asm ---
   3616 32 65         [ 5]   90 	leas	5,s	;,,
   3618 35 E0         [ 8]   91 	puls	y,u,pc	;
                             92 	.globl	_getShifts
   361A                      93 _getShifts:
                             94 ;----- asm -----
                             95 ; 40 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                             96 	; #ENR#[35]	return shifts[bit];
                             97 ; 0 "" 2
                             98 ;--- end asm ---
   361A 8E 3D 11      [ 3]   99 	ldx	#_shifts	;
   361D 3A            [ 3]  100 	abx
   361E E6 84         [ 4]  101 	ldb	,x	; tmp33
   3620 39            [ 5]  102 	rts
                            103 	.globl	_isSwatchFieldOn
   3621                     104 _isSwatchFieldOn:
   3621 34 40         [ 6]  105 	pshs	u	;
   3623 32 7E         [ 5]  106 	leas	-2,s	;,,
   3625 E7 E4         [ 4]  107 	stb	,s	; x, x
                            108 ;----- asm -----
                            109 ; 46 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            110 	; #ENR#[40]	long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                            111 ; 0 "" 2
                            112 ;--- end asm ---
   3627 E6 66         [ 5]  113 	ldb	6,s	;, y
   3629 86 0A         [ 2]  114 	lda	#10	;mulqihi3	;
   362B 3D            [11]  115 	mul
   362C 1F 01         [ 6]  116 	tfr	d,x	;, tmp33
   362E E6 E4         [ 4]  117 	ldb	,s	;, x
   3630 1D            [ 2]  118 	sex		;extendqihi2: R:b -> R:d	;,
   3631 1F 03         [ 6]  119 	tfr	d,u	;, x
   3633 1E 01         [ 8]  120 	exg	d,x	;, tmp33
   3635 33 CB         [ 8]  121 	leau	d,u	; index,, index
                            122 ;----- asm -----
                            123 ; 48 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            124 	; #ENR#[41]	uint8_t bit = (uint8_t) (index & 7);
                            125 ; 0 "" 2
                            126 ; 50 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            127 	; #ENR#[42]	index >>= 3;
                            128 ; 0 "" 2
                            129 ; 52 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            130 	; #ENR#[43]	return (swatchesOn[index] & getShifts(bit)) > 0;
                            131 ; 0 "" 2
                            132 ;--- end asm ---
   3637 1F 30         [ 6]  133 	tfr	u,d	; index,
   3639 47            [ 2]  134 	asra	;
   363A 56            [ 2]  135 	rorb	;
   363B 47            [ 2]  136 	asra	;
   363C 56            [ 2]  137 	rorb	;
   363D 47            [ 2]  138 	asra	;
   363E 56            [ 2]  139 	rorb	;
   363F 1F 01         [ 6]  140 	tfr	d,x	;, tmp35
   3641 E6 89 C8 F4   [ 8]  141 	ldb	_swatchesOn,x	;, swatchesOn
   3645 E7 61         [ 5]  142 	stb	1,s	;, D.1327
   3647 1F 30         [ 6]  143 	tfr	u,d	;movlsbqihi: R:u -> R:b	; index, index
   3649 C4 07         [ 2]  144 	andb	#7	; tmp38,
   364B BD 36 1A      [ 8]  145 	jsr	_getShifts
   364E E4 61         [ 5]  146 	andb	1,s	; tmp40, D.1327
   3650 27 02         [ 3]  147 	beq	L8	;
   3652 C6 01         [ 2]  148 	ldb	#1	; tmp40,
   3654                     149 L8:
   3654 32 62         [ 5]  150 	leas	2,s	;,,
   3656 35 C0         [ 7]  151 	puls	u,pc	;
                            152 	.globl	_setSwatchField
   3658                     153 _setSwatchField:
   3658 34 20         [ 6]  154 	pshs	y	;
   365A 32 7C         [ 5]  155 	leas	-4,s	;,,
   365C E7 E4         [ 4]  156 	stb	,s	; x, x
                            157 ;----- asm -----
                            158 ; 58 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            159 	; #ENR#[48]	long int index = (long int) y*LEVEL_WIDTH + (long int)x;
                            160 ; 0 "" 2
                            161 ;--- end asm ---
   365E E6 68         [ 5]  162 	ldb	8,s	;, y
   3660 86 0A         [ 2]  163 	lda	#10	;mulqihi3	;
   3662 3D            [11]  164 	mul
   3663 1F 01         [ 6]  165 	tfr	d,x	;, tmp37
   3665 E6 E4         [ 4]  166 	ldb	,s	;, x
   3667 1D            [ 2]  167 	sex		;extendqihi2: R:b -> R:d	;,
                            168 ; Applied peep: 4-2 (tfr exg 1=1, 2=2)
   3668 1F 02         [ 6]  169 	tfr	d,y	;, x
                            170 ; ORG>	tfr	d,y	;, x
                            171 ; ORG>	exg	d,y	;, x
   366A 30 8B         [ 8]  172 	leax	d,x	; index,, index
                            173 ;----- asm -----
                            174 ; 60 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            175 	; #ENR#[49]	uint8_t bit = (uint8_t) (index & 7);
                            176 ; 0 "" 2
                            177 ;--- end asm ---
   366C 1F 10         [ 6]  178 	tfr	x,d	;movlsbqihi: R:x -> R:b	; index, index
   366E C4 07         [ 2]  179 	andb	#7	; index,
   3670 E7 62         [ 5]  180 	stb	2,s	; index, bit
                            181 ;----- asm -----
                            182 ; 62 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            183 	; #ENR#[50]	index >>= 3;
                            184 ; 0 "" 2
                            185 ;--- end asm ---
   3672 1F 10         [ 6]  186 	tfr	x,d	; index, index.44
   3674 47            [ 2]  187 	asra	;
   3675 56            [ 2]  188 	rorb	;
   3676 47            [ 2]  189 	asra	;
   3677 56            [ 2]  190 	rorb	;
   3678 47            [ 2]  191 	asra	;
   3679 56            [ 2]  192 	rorb	;
                            193 ;----- asm -----
                            194 ; 64 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            195 	; #ENR#[51]	if (on) {
                            196 ; 0 "" 2
                            197 ;--- end asm ---
   367A 6D 69         [ 7]  198 	tst	9,s	; on
   367C 27 14         [ 3]  199 	beq	L11	;
                            200 ;----- asm -----
                            201 ; 66 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            202 	; #ENR#[52]		swatchesOn[index] |= getShifts(bit);
                            203 ; 0 "" 2
                            204 ;--- end asm ---
   367E 8E C8 F4      [ 3]  205 	ldx	#_swatchesOn	;,
   3681 31 8B         [ 8]  206 	leay	d,x	; tmp41, index.44,
   3683 E6 A4         [ 4]  207 	ldb	,y	;, swatchesOn
   3685 E7 61         [ 5]  208 	stb	1,s	;, D.1342
   3687 E6 62         [ 5]  209 	ldb	2,s	;, bit
   3689 BD 36 1A      [ 8]  210 	jsr	_getShifts
   368C EA 61         [ 5]  211 	orb	1,s	; tmp44, D.1342
   368E E7 A4         [ 4]  212 	stb	,y	; tmp44, swatchesOn
   3690 20 13         [ 3]  213 	bra	L13	;
   3692                     214 L11:
                            215 ;----- asm -----
                            216 ; 69 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            217 	; #ENR#[54]		swatchesOn[index] &= ~getShifts(bit);
                            218 ; 0 "" 2
                            219 ;--- end asm ---
   3692 8E C8 F4      [ 3]  220 	ldx	#_swatchesOn	;,
   3695 31 8B         [ 8]  221 	leay	d,x	; tmp46, index.44,
   3697 E6 A4         [ 4]  222 	ldb	,y	;, swatchesOn
   3699 E7 63         [ 5]  223 	stb	3,s	;, temp.45
   369B E6 62         [ 5]  224 	ldb	2,s	;, bit
   369D BD 36 1A      [ 8]  225 	jsr	_getShifts
   36A0 53            [ 2]  226 	comb	; tmp49
   36A1 E4 63         [ 5]  227 	andb	3,s	; tmp50, temp.45
   36A3 E7 A4         [ 4]  228 	stb	,y	; tmp50, swatchesOn
   36A5                     229 L13:
   36A5 32 64         [ 5]  230 	leas	4,s	;,,
   36A7 35 A0         [ 7]  231 	puls	y,pc	;
                            232 	.globl	_isField
   36A9                     233 _isField:
   36A9 32 7E         [ 5]  234 	leas	-2,s	;,,
   36AB E7 E4         [ 4]  235 	stb	,s	; x, x
                            236 ;----- asm -----
                            237 ; 76 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            238 	; #ENR#[60]    char c = getField(x, y);
                            239 ; 0 "" 2
                            240 ;--- end asm ---
   36AD E6 64         [ 5]  241 	ldb	4,s	;, y
   36AF 34 04         [ 6]  242 	pshs	b	;
   36B1 E6 61         [ 5]  243 	ldb	1,s	;, x
   36B3 BD 35 D6      [ 8]  244 	jsr	_getField
   36B6 E7 62         [ 5]  245 	stb	2,s	;, c
                            246 ;----- asm -----
                            247 ; 80 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            248 	; #ENR#[63]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
                            249 ; 0 "" 2
                            250 ;--- end asm ---
   36B8 32 61         [ 5]  251 	leas	1,s	;,,
   36BA C1 6C         [ 2]  252 	cmpb	#108	;cmpqi:	;,
   36BC 27 0C         [ 3]  253 	beq	L15	;
   36BE C1 72         [ 2]  254 	cmpb	#114	;cmpqi:	;,
   36C0 27 08         [ 3]  255 	beq	L15	;
   36C2 C1 6B         [ 2]  256 	cmpb	#107	;cmpqi:	;,
   36C4 27 04         [ 3]  257 	beq	L15	;
   36C6 C1 71         [ 2]  258 	cmpb	#113	;cmpqi:	;,
   36C8 26 12         [ 3]  259 	bne	L16	;
   36CA                     260 L15:
                            261 ;----- asm -----
                            262 ; 82 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            263 	; #ENR#[64]		if (isSwatchFieldOn(x, y)) {
                            264 ; 0 "" 2
                            265 ;--- end asm ---
   36CA E6 64         [ 5]  266 	ldb	4,s	;, y
   36CC 34 04         [ 6]  267 	pshs	b	;
   36CE E6 61         [ 5]  268 	ldb	1,s	;, x
   36D0 BD 36 21      [ 8]  269 	jsr	_isSwatchFieldOn
   36D3 32 61         [ 5]  270 	leas	1,s	;,,
   36D5 5D            [ 2]  271 	tstb	; D.1356
   36D6 27 04         [ 3]  272 	beq	L16	;
                            273 ;----- asm -----
                            274 ; 84 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            275 	; #ENR#[65]			c = 'b';
                            276 ; 0 "" 2
                            277 ;--- end asm ---
   36D8 C6 62         [ 2]  278 	ldb	#98	;,
   36DA E7 61         [ 5]  279 	stb	1,s	;, c
   36DC                     280 L16:
                            281 ;----- asm -----
                            282 ; 90 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            283 	; #ENR#[70]    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
                            284 ; 0 "" 2
                            285 ;--- end asm ---
   36DC E6 61         [ 5]  286 	ldb	1,s	;, c
   36DE C1 62         [ 2]  287 	cmpb	#98	;cmpqi:	;,
   36E0 27 21         [ 3]  288 	beq	L17	;
   36E2 C1 65         [ 2]  289 	cmpb	#101	;cmpqi:	;,
   36E4 27 1D         [ 3]  290 	beq	L17	;
   36E6 C1 73         [ 2]  291 	cmpb	#115	;cmpqi:	;,
   36E8 27 19         [ 3]  292 	beq	L17	;
   36EA C1 68         [ 2]  293 	cmpb	#104	;cmpqi:	;,
   36EC 27 15         [ 3]  294 	beq	L17	;
   36EE C1 66         [ 2]  295 	cmpb	#102	;cmpqi:	;,
   36F0 27 11         [ 3]  296 	beq	L17	;
   36F2 C1 76         [ 2]  297 	cmpb	#118	;cmpqi:	;,
   36F4 C8 76         [ 2]  298 	eorb	#118	; tmp34,
   36F6 4F            [ 2]  299 	clra		;zero_extendqihi: R:b -> R:d	; tmp34, tmp35
   36F7 C3 FF FF      [ 4]  300 	addd	#-1; addhi3,3	; tmp36,
   36FA 1F 89         [ 6]  301 	tfr	a,b	;,
   36FC 4F            [ 2]  302 	clra		;zero_extendqihi: R:b -> R:d	;,
   36FD 59            [ 2]  303 	rolb	;
   36FE 59            [ 2]  304 	rolb	;
   36FF C4 01         [ 2]  305 	andb	#1	;,
   3701 20 02         [ 3]  306 	bra	L19	;
   3703                     307 L17:
   3703 C6 01         [ 2]  308 	ldb	#1	; iftmp.5,
   3705                     309 L19:
   3705 32 62         [ 5]  310 	leas	2,s	;,,
   3707 39            [ 5]  311 	rts
                            312 	.globl	_x3d
   3708                     313 _x3d:
   3708 34 40         [ 6]  314 	pshs	u	;
   370A 32 7E         [ 5]  315 	leas	-2,s	;,,
   370C E7 E4         [ 4]  316 	stb	,s	; x, x
                            317 ;----- asm -----
                            318 ; 161 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            319 	; #ENR#[112]    x -= LEVEL_WIDTH / 2 - 4;
                            320 ; 0 "" 2
                            321 ; 163 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            322 	; #ENR#[113]    return 14 * x - 6 * z;
                            323 ; 0 "" 2
                            324 ;--- end asm ---
   370E E6 66         [ 5]  325 	ldb	6,s	;, z
   3710 86 FA         [ 2]  326 	lda	#-6	;mulqihi3	;
   3712 3D            [11]  327 	mul
   3713 1F 01         [ 6]  328 	tfr	d,x	;, tmp31
   3715 E6 E4         [ 4]  329 	ldb	,s	; tmp32, x
   3717 5A            [ 2]  330 	decb	; tmp32
   3718 86 0E         [ 2]  331 	lda	#14	;mulqihi3	;
   371A 3D            [11]  332 	mul
   371B 1F 03         [ 6]  333 	tfr	d,u	;, tmp33
   371D 1F 10         [ 6]  334 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp31,
   371F E7 61         [ 5]  335 	stb	1,s	;,
   3721 1F 30         [ 6]  336 	tfr	u,d	;movlsbqihi: R:u -> R:b	; tmp33, tmp35
   3723 EB 61         [ 5]  337 	addb	1,s	; tmp30,
   3725 32 62         [ 5]  338 	leas	2,s	;,,
   3727 35 C0         [ 7]  339 	puls	u,pc	;
                            340 	.globl	_y3d
   3729                     341 _y3d:
   3729 32 7D         [ 5]  342 	leas	-3,s	;,,
   372B E7 62         [ 5]  343 	stb	2,s	; x, x
                            344 ;----- asm -----
                            345 ; 170 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            346 	; #ENR#[119]    y -= LEVEL_HEIGHT / 2;
                            347 ; 0 "" 2
                            348 ; 172 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            349 	; #ENR#[120]    return 3 * x + 13 * y + 8 * z;
                            350 ; 0 "" 2
                            351 ;--- end asm ---
   372D E6 65         [ 5]  352 	ldb	5,s	; tmp32, y
   372F CB F9         [ 2]  353 	addb	#-7	; tmp32,
   3731 86 0D         [ 2]  354 	lda	#13	;mulqihi3	;
   3733 3D            [11]  355 	mul
   3734 1F 01         [ 6]  356 	tfr	d,x	;, tmp33
   3736 E6 66         [ 5]  357 	ldb	6,s	;, z
   3738 58            [ 2]  358 	aslb	;
   3739 58            [ 2]  359 	aslb	;
   373A 58            [ 2]  360 	aslb	;
   373B E7 61         [ 5]  361 	stb	1,s	;,
   373D 1F 10         [ 6]  362 	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp33, tmp36
   373F EB 61         [ 5]  363 	addb	1,s	; tmp36,
   3741 E7 E4         [ 4]  364 	stb	,s	; tmp36,
   3743 E6 62         [ 5]  365 	ldb	2,s	; tmp38, x
   3745 58            [ 2]  366 	aslb	; tmp38
   3746 EB 62         [ 5]  367 	addb	2,s	; tmp39, x
   3748 EB E4         [ 4]  368 	addb	,s	; tmp31,
   374A 32 63         [ 5]  369 	leas	3,s	;,,
   374C 39            [ 5]  370 	rts
                            371 	.globl	_addTarget
   374D                     372 _addTarget:
   374D 34 40         [ 6]  373 	pshs	u	;
   374F 32 70         [ 5]  374 	leas	-16,s	;,,
   3751 E7 61         [ 5]  375 	stb	1,s	; x, x
                            376 ;----- asm -----
                            377 ; 251 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            378 	; #ENR#[171]    lineX0[lineCount] = x3d(x, y);
                            379 ; 0 "" 2
                            380 ;--- end asm ---
   3753 F6 C8 80      [ 5]  381 	ldb	_lineCount	;, lineCount
   3756 E7 62         [ 5]  382 	stb	2,s	;, lineCount.14
   3758 E6 E8 14      [ 5]  383 	ldb	20,s	;, y
   375B 34 04         [ 6]  384 	pshs	b	;
   375D E6 62         [ 5]  385 	ldb	2,s	;, x
   375F BD 37 08      [ 8]  386 	jsr	_x3d
   3762 E7 61         [ 5]  387 	stb	1,s	;, D.1471
   3764 E6 63         [ 5]  388 	ldb	3,s	;, lineCount.14
   3766 4F            [ 2]  389 	clra		;zero_extendqihi: R:b -> R:d	;,
   3767 1F 01         [ 6]  390 	tfr	d,x	;, lineCount.14
   3769 E6 61         [ 5]  391 	ldb	1,s	;, D.1471
   376B E7 89 C9 07   [ 8]  392 	stb	_lineX0,x	;, lineX0
                            393 ;----- asm -----
                            394 ; 253 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            395 	; #ENR#[172]    lineY0[lineCount] = y3d(x, 0, y);
                            396 ; 0 "" 2
                            397 ;--- end asm ---
   376F F6 C8 80      [ 5]  398 	ldb	_lineCount	;, lineCount
   3772 E7 6B         [ 5]  399 	stb	11,s	;, lineCount.69
   3774 E6 E8 15      [ 5]  400 	ldb	21,s	;, y
   3777 34 04         [ 6]  401 	pshs	b	;
   3779 6F E2         [ 8]  402 	clr	,-s	;
   377B E6 64         [ 5]  403 	ldb	4,s	;, x
   377D BD 37 29      [ 8]  404 	jsr	_y3d
   3780 E7 63         [ 5]  405 	stb	3,s	;, D.1472
   3782 E6 6D         [ 5]  406 	ldb	13,s	;, lineCount.69
   3784 4F            [ 2]  407 	clra		;zero_extendqihi: R:b -> R:d	;,
   3785 1F 01         [ 6]  408 	tfr	d,x	;, lineCount.69
   3787 E6 63         [ 5]  409 	ldb	3,s	;, D.1472
   3789 E7 89 C9 7F   [ 8]  410 	stb	_lineY0,x	;, lineY0
                            411 ;----- asm -----
                            412 ; 255 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            413 	; #ENR#[173]    lineX1[lineCount] = x3d(x + 1, y + 1);
                            414 ; 0 "" 2
                            415 ;--- end asm ---
   378D F6 C8 80      [ 5]  416 	ldb	_lineCount	;, lineCount
   3790 E7 6E         [ 5]  417 	stb	14,s	;, lineCount.70
   3792 E6 E8 17      [ 5]  418 	ldb	23,s	;, y
   3795 5C            [ 2]  419 	incb	;
   3796 E7 66         [ 5]  420 	stb	6,s	;, D.1473
   3798 E6 64         [ 5]  421 	ldb	4,s	;, x
   379A 5C            [ 2]  422 	incb	;
   379B E7 67         [ 5]  423 	stb	7,s	;, D.1474
   379D E6 66         [ 5]  424 	ldb	6,s	;, D.1473
   379F 34 04         [ 6]  425 	pshs	b	;
   37A1 E6 68         [ 5]  426 	ldb	8,s	;, D.1474
   37A3 BD 37 08      [ 8]  427 	jsr	_x3d
   37A6 E7 64         [ 5]  428 	stb	4,s	;, D.1475
   37A8 E6 6F         [ 5]  429 	ldb	15,s	;, lineCount.70
   37AA 4F            [ 2]  430 	clra		;zero_extendqihi: R:b -> R:d	;,
   37AB 1F 01         [ 6]  431 	tfr	d,x	;, lineCount.70
   37AD E6 64         [ 5]  432 	ldb	4,s	;, D.1475
   37AF E7 89 C9 F7   [ 8]  433 	stb	_lineX1,x	;, lineX1
                            434 ;----- asm -----
                            435 ; 257 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            436 	; #ENR#[174]    lineY1[lineCount] = y3d(x + 1, 0, y + 1);
                            437 ; 0 "" 2
                            438 ;--- end asm ---
   37B3 F6 C8 80      [ 5]  439 	ldb	_lineCount	;, lineCount
   37B6 E7 E8 10      [ 5]  440 	stb	16,s	;, lineCount.71
   37B9 E6 67         [ 5]  441 	ldb	7,s	;, D.1473
   37BB 34 04         [ 6]  442 	pshs	b	;
   37BD 6F E2         [ 8]  443 	clr	,-s	;
   37BF E6 6A         [ 5]  444 	ldb	10,s	;, D.1474
   37C1 BD 37 29      [ 8]  445 	jsr	_y3d
   37C4 E7 66         [ 5]  446 	stb	6,s	;, D.1476
   37C6 E6 E8 12      [ 5]  447 	ldb	18,s	;, lineCount.71
   37C9 4F            [ 2]  448 	clra		;zero_extendqihi: R:b -> R:d	;,
   37CA 1F 01         [ 6]  449 	tfr	d,x	;, lineCount.71
   37CC E6 66         [ 5]  450 	ldb	6,s	;, D.1476
   37CE E7 89 CA 6F   [ 8]  451 	stb	_lineY1,x	;, lineY1
                            452 ;----- asm -----
                            453 ; 259 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            454 	; #ENR#[175]    lineCount++;
                            455 ; 0 "" 2
                            456 ;--- end asm ---
   37D2 F6 C8 80      [ 5]  457 	ldb	_lineCount	;, lineCount
   37D5 5C            [ 2]  458 	incb	;
   37D6 E7 6B         [ 5]  459 	stb	11,s	;, lineCount.15
   37D8 F7 C8 80      [ 5]  460 	stb	_lineCount	;, lineCount
                            461 ;----- asm -----
                            462 ; 262 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            463 	; #ENR#[177]    lineX0[lineCount] = x3d(x + 1, y);
                            464 ; 0 "" 2
                            465 ;--- end asm ---
   37DB E6 E8 1A      [ 5]  466 	ldb	26,s	;, y
   37DE 34 04         [ 6]  467 	pshs	b	;
   37E0 E6 6B         [ 5]  468 	ldb	11,s	;, D.1474
   37E2 BD 37 08      [ 8]  469 	jsr	_x3d
   37E5 E7 6D         [ 5]  470 	stb	13,s	;, D.1478
   37E7 E6 6C         [ 5]  471 	ldb	12,s	;, lineCount.15
   37E9 4F            [ 2]  472 	clra		;zero_extendqihi: R:b -> R:d	;,
   37EA 1F 01         [ 6]  473 	tfr	d,x	;, lineCount.15
   37EC 30 89 C9 07   [ 8]  474 	leax	_lineX0,x	; tmp61,, lineCount.15
   37F0 E6 6D         [ 5]  475 	ldb	13,s	;, D.1478
   37F2 E7 84         [ 4]  476 	stb	,x	;, lineX0
                            477 ;----- asm -----
                            478 ; 264 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            479 	; #ENR#[178]    lineY0[lineCount] = y3d(x + 1, 0, y);
                            480 ; 0 "" 2
                            481 ;--- end asm ---
   37F4 F6 C8 80      [ 5]  482 	ldb	_lineCount	;, lineCount
   37F7 E7 E8 14      [ 5]  483 	stb	20,s	;, lineCount.73
   37FA E6 E8 1B      [ 5]  484 	ldb	27,s	;, y
   37FD 34 04         [ 6]  485 	pshs	b	;
   37FF 6F E2         [ 8]  486 	clr	,-s	;
   3801 E6 6D         [ 5]  487 	ldb	13,s	;, D.1474
   3803 BD 37 29      [ 8]  488 	jsr	_y3d
   3806 E7 E8 10      [ 5]  489 	stb	16,s	;, D.1479
   3809 E6 E8 16      [ 5]  490 	ldb	22,s	;, lineCount.73
   380C 4F            [ 2]  491 	clra		;zero_extendqihi: R:b -> R:d	;,
   380D 1F 01         [ 6]  492 	tfr	d,x	;, lineCount.73
   380F 30 89 C9 7F   [ 8]  493 	leax	_lineY0,x	; tmp64,, lineCount.73
   3813 E6 E8 10      [ 5]  494 	ldb	16,s	;, D.1479
   3816 E7 84         [ 4]  495 	stb	,x	;, lineY0
                            496 ;----- asm -----
                            497 ; 266 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            498 	; #ENR#[179]    lineX1[lineCount] = x3d(x, y + 1);
                            499 ; 0 "" 2
                            500 ;--- end asm ---
   3818 F6 C8 80      [ 5]  501 	ldb	_lineCount	;, lineCount
   381B E7 E8 17      [ 5]  502 	stb	23,s	;, lineCount.74
   381E 32 69         [ 5]  503 	leas	9,s	;,,
   3820 E6 63         [ 5]  504 	ldb	3,s	;, D.1473
   3822 34 04         [ 6]  505 	pshs	b	;
   3824 E6 62         [ 5]  506 	ldb	2,s	;, x
   3826 BD 37 08      [ 8]  507 	jsr	_x3d
   3829 E7 69         [ 5]  508 	stb	9,s	;, D.1480
   382B E6 6F         [ 5]  509 	ldb	15,s	;, lineCount.74
   382D 4F            [ 2]  510 	clra		;zero_extendqihi: R:b -> R:d	;,
   382E 1F 01         [ 6]  511 	tfr	d,x	;, lineCount.74
   3830 30 89 C9 F7   [ 8]  512 	leax	_lineX1,x	; tmp67,, lineCount.74
   3834 E6 69         [ 5]  513 	ldb	9,s	;, D.1480
   3836 E7 84         [ 4]  514 	stb	,x	;, lineX1
                            515 ;----- asm -----
                            516 ; 268 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            517 	; #ENR#[180]    lineY1[lineCount] = y3d(x, 0, y + 1);
                            518 ; 0 "" 2
                            519 ;--- end asm ---
   3838 F6 C8 80      [ 5]  520 	ldb	_lineCount	;, lineCount
   383B E7 E8 10      [ 5]  521 	stb	16,s	;, lineCount.75
   383E E6 64         [ 5]  522 	ldb	4,s	;, D.1473
   3840 34 04         [ 6]  523 	pshs	b	;
   3842 6F E2         [ 8]  524 	clr	,-s	;
   3844 E6 64         [ 5]  525 	ldb	4,s	;, x
   3846 BD 37 29      [ 8]  526 	jsr	_y3d
   3849 E7 6C         [ 5]  527 	stb	12,s	;, D.1481
   384B E6 E8 12      [ 5]  528 	ldb	18,s	;, lineCount.75
   384E 4F            [ 2]  529 	clra		;zero_extendqihi: R:b -> R:d	;,
   384F 1F 01         [ 6]  530 	tfr	d,x	;, lineCount.75
   3851 30 89 CA 6F   [ 8]  531 	leax	_lineY1,x	; tmp70,, lineCount.75
   3855 E6 6C         [ 5]  532 	ldb	12,s	;, D.1481
   3857 E7 84         [ 4]  533 	stb	,x	;, lineY1
                            534 ;----- asm -----
                            535 ; 270 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            536 	; #ENR#[181]    lineCount++;
                            537 ; 0 "" 2
                            538 ;--- end asm ---
   3859 7C C8 80      [ 7]  539 	inc	_lineCount	; lineCount
   385C 32 E8 13      [ 5]  540 	leas	19,s	;,,
   385F 35 C0         [ 7]  541 	puls	u,pc	;
                            542 	.globl	_initSwatches
   3861                     543 _initSwatches:
   3861 34 60         [ 7]  544 	pshs	y,u	;
   3863 32 7E         [ 5]  545 	leas	-2,s	;,,
                            546 ;----- asm -----
                            547 ; 383 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            548 	; #ENR#[255]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
                            549 ; 0 "" 2
                            550 ;--- end asm ---
   3865 8E C8 F4      [ 3]  551 	ldx	#_swatchesOn	; ivtmp.110,
   3868                     552 L28:
                            553 ;----- asm -----
                            554 ; 385 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            555 	; #ENR#[256]        swatchesOn[i] = 0;
                            556 ; 0 "" 2
                            557 ;--- end asm ---
   3868 6F 80         [ 8]  558 	clr	,x+	; swatchesOn
   386A 8C C9 07      [ 4]  559 	cmpx	#_swatchesOn+19	;cmphi:	; ivtmp.110,
   386D 26 F9         [ 3]  560 	bne	L28	;
                            561 ;----- asm -----
                            562 ; 389 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            563 	; #ENR#[259]	long int index;
                            564 ; 0 "" 2
                            565 ; 391 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            566 	; #ENR#[260]	int8_t x = 0;
                            567 ; 0 "" 2
                            568 ; 393 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            569 	; #ENR#[261]	int8_t y = 0;
                            570 ; 0 "" 2
                            571 ; 395 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            572 	; #ENR#[262]	const char* geometry = level->geometry;
                            573 ; 0 "" 2
                            574 ; 397 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            575 	; #ENR#[263]	for (y = 0; y < LEVEL_HEIGHT; y++) {
                            576 ; 0 "" 2
                            577 ;--- end asm ---
   386F 10 AE 9F C8 F2[11]  578 	ldy	[_level]	; ivtmp.102, <variable>.geometry
   3874 6F 61         [ 7]  579 	clr	1,s	; y
   3876                     580 L32:
                            581 ;----- asm -----
                            582 ; 399 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            583 	; #ENR#[264]		for (x = 0; x < LEVEL_WIDTH; x++) {
                            584 ; 0 "" 2
                            585 ;--- end asm ---
   3876 33 A4         [ 4]  586 	leau	,y	; ivtmp.111, ivtmp.102
   3878 6F E4         [ 6]  587 	clr	,s	; x
   387A                     588 L31:
                            589 ;----- asm -----
                            590 ; 401 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            591 	; #ENR#[265]			index = (long int) y*LEVEL_WIDTH + (long int)x;
                            592 ; 0 "" 2
                            593 ; 403 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            594 	; #ENR#[266]			char c0 = geometry[index];
                            595 ; 0 "" 2
                            596 ;--- end asm ---
   387A E6 C4         [ 4]  597 	ldb	,u	; c0,* ivtmp.111
                            598 ;----- asm -----
                            599 ; 405 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            600 	; #ENR#[267]			if (c0 == 'k' || c0 == 'q') {
                            601 ; 0 "" 2
                            602 ;--- end asm ---
   387C C1 6B         [ 2]  603 	cmpb	#107	;cmpqi:	; c0,
   387E 27 04         [ 3]  604 	beq	L29	;
   3880 C1 71         [ 2]  605 	cmpb	#113	;cmpqi:	; c0,
   3882 26 0F         [ 3]  606 	bne	L30	;
   3884                     607 L29:
                            608 ;----- asm -----
                            609 ; 407 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            610 	; #ENR#[268]				setSwatchField(x, y, 1);
                            611 ; 0 "" 2
                            612 ;--- end asm ---
   3884 C6 01         [ 2]  613 	ldb	#1	;,
   3886 E7 E2         [ 6]  614 	stb	,-s	;,
   3888 E6 62         [ 5]  615 	ldb	2,s	;, y
   388A 34 04         [ 6]  616 	pshs	b	;
   388C E6 62         [ 5]  617 	ldb	2,s	;, x
   388E BD 36 58      [ 8]  618 	jsr	_setSwatchField
   3891 32 62         [ 5]  619 	leas	2,s	;,,
   3893                     620 L30:
   3893 6C E4         [ 6]  621 	inc	,s	; x
   3895 33 41         [ 5]  622 	leau	1,u	; ivtmp.111,, ivtmp.111
   3897 E6 E4         [ 4]  623 	ldb	,s	;, x
   3899 C1 0A         [ 2]  624 	cmpb	#10	;cmpqi:	;,
   389B 26 DD         [ 3]  625 	bne	L31	;
   389D 6C 61         [ 7]  626 	inc	1,s	; y
   389F 31 2A         [ 5]  627 	leay	10,y	; ivtmp.102,, ivtmp.102
   38A1 E6 61         [ 5]  628 	ldb	1,s	;, y
   38A3 C1 0F         [ 2]  629 	cmpb	#15	;cmpqi:	;,
   38A5 10 26 FF CD   [ 6]  630 	lbne	L32	;
   38A9 32 62         [ 5]  631 	leas	2,s	;,,
   38AB 35 E0         [ 8]  632 	puls	y,u,pc	;
   38AD                     633 LC0:
   38AD 54 4F 4F 20 4D 41   634 	.byte	84,79,79,32,77,65,78,89
        4E 59
   38B5 20 4C 49 4E 45 53   635 	.byte	32,76,73,78,69,83,-128,0
        80 00
                            636 	.globl	_addSplit
   38BD                     637 _addSplit:
   38BD 32 79         [ 5]  638 	leas	-7,s	;,,
   38BF E7 61         [ 5]  639 	stb	1,s	; x0, x0
                            640 ;----- asm -----
                            641 ; 209 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            642 	; #ENR#[144]    lineX0[lineCount] = x3d(x0, y0) + 6;
                            643 ; 0 "" 2
                            644 ;--- end asm ---
   38C1 F6 C8 80      [ 5]  645 	ldb	_lineCount	;, lineCount
   38C4 E7 62         [ 5]  646 	stb	2,s	;, lineCount.12
   38C6 E6 69         [ 5]  647 	ldb	9,s	;, y0
   38C8 34 04         [ 6]  648 	pshs	b	;
   38CA E6 62         [ 5]  649 	ldb	2,s	;, x0
   38CC BD 37 08      [ 8]  650 	jsr	_x3d
   38CF E7 61         [ 5]  651 	stb	1,s	;, D.1439
   38D1 E6 63         [ 5]  652 	ldb	3,s	;, lineCount.12
   38D3 4F            [ 2]  653 	clra		;zero_extendqihi: R:b -> R:d	;,
   38D4 1F 01         [ 6]  654 	tfr	d,x	;, lineCount.12
   38D6 E6 61         [ 5]  655 	ldb	1,s	;, D.1439
   38D8 CB 06         [ 2]  656 	addb	#6	;,
   38DA E7 89 C9 07   [ 8]  657 	stb	_lineX0,x	;, lineX0
                            658 ;----- asm -----
                            659 ; 211 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            660 	; #ENR#[145]    lineY0[lineCount] = y3d(x0, 0, y0) + 3;
                            661 ; 0 "" 2
                            662 ;--- end asm ---
   38DE F6 C8 80      [ 5]  663 	ldb	_lineCount	;, lineCount
   38E1 E7 65         [ 5]  664 	stb	5,s	;, lineCount.117
   38E3 E6 6A         [ 5]  665 	ldb	10,s	;, y0
   38E5 34 04         [ 6]  666 	pshs	b	;
   38E7 6F E2         [ 8]  667 	clr	,-s	;
   38E9 E6 64         [ 5]  668 	ldb	4,s	;, x0
   38EB BD 37 29      [ 8]  669 	jsr	_y3d
   38EE E7 63         [ 5]  670 	stb	3,s	;, D.1441
   38F0 E6 67         [ 5]  671 	ldb	7,s	;, lineCount.117
   38F2 4F            [ 2]  672 	clra		;zero_extendqihi: R:b -> R:d	;,
   38F3 1F 01         [ 6]  673 	tfr	d,x	;, lineCount.117
   38F5 E6 63         [ 5]  674 	ldb	3,s	;, D.1441
   38F7 CB 03         [ 2]  675 	addb	#3	;,
   38F9 E7 89 C9 7F   [ 8]  676 	stb	_lineY0,x	;, lineY0
                            677 ;----- asm -----
                            678 ; 213 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            679 	; #ENR#[146]    lineX1[lineCount] = x3d(x0, y0 + 1) + 8;
                            680 ; 0 "" 2
                            681 ;--- end asm ---
   38FD F6 C8 80      [ 5]  682 	ldb	_lineCount	;, lineCount
   3900 E7 68         [ 5]  683 	stb	8,s	;, lineCount.118
   3902 E6 6C         [ 5]  684 	ldb	12,s	;, y0
   3904 5C            [ 2]  685 	incb	;
   3905 E7 66         [ 5]  686 	stb	6,s	;, D.1443
   3907 34 04         [ 6]  687 	pshs	b	;
   3909 E6 65         [ 5]  688 	ldb	5,s	;, x0
   390B BD 37 08      [ 8]  689 	jsr	_x3d
   390E E7 64         [ 5]  690 	stb	4,s	;, D.1444
   3910 E6 69         [ 5]  691 	ldb	9,s	;, lineCount.118
   3912 4F            [ 2]  692 	clra		;zero_extendqihi: R:b -> R:d	;,
   3913 1F 01         [ 6]  693 	tfr	d,x	;, lineCount.118
   3915 E6 64         [ 5]  694 	ldb	4,s	;, D.1444
   3917 CB 08         [ 2]  695 	addb	#8	;,
   3919 E7 89 C9 F7   [ 8]  696 	stb	_lineX1,x	;, lineX1
                            697 ;----- asm -----
                            698 ; 215 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            699 	; #ENR#[147]    lineY1[lineCount] = y3d(x0, 0, y0 + 1) + 0;
                            700 ; 0 "" 2
                            701 ;--- end asm ---
   391D F6 C8 80      [ 5]  702 	ldb	_lineCount	;, lineCount
   3920 E7 6A         [ 5]  703 	stb	10,s	;, lineCount.119
   3922 E6 67         [ 5]  704 	ldb	7,s	;, D.1443
   3924 34 04         [ 6]  705 	pshs	b	;
   3926 6F E2         [ 8]  706 	clr	,-s	;
   3928 E6 67         [ 5]  707 	ldb	7,s	;, x0
   392A BD 37 29      [ 8]  708 	jsr	_y3d
   392D E7 66         [ 5]  709 	stb	6,s	;, D.1446
   392F E6 6C         [ 5]  710 	ldb	12,s	;, lineCount.119
   3931 4F            [ 2]  711 	clra		;zero_extendqihi: R:b -> R:d	;,
   3932 1F 01         [ 6]  712 	tfr	d,x	;, lineCount.119
   3934 E6 66         [ 5]  713 	ldb	6,s	;, D.1446
   3936 E7 89 CA 6F   [ 8]  714 	stb	_lineY1,x	;, lineY1
                            715 ;----- asm -----
                            716 ; 218 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            717 	; #ENR#[149]    lineCount++;
                            718 ; 0 "" 2
                            719 ;--- end asm ---
   393A F6 C8 80      [ 5]  720 	ldb	_lineCount	; lineCount.13, lineCount
   393D 5C            [ 2]  721 	incb	; lineCount.13
   393E F7 C8 80      [ 5]  722 	stb	_lineCount	; lineCount.13, lineCount
                            723 ;----- asm -----
                            724 ; 220 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            725 	; #ENR#[150]    if (lineCount >= MAX_LINES) {
                            726 ; 0 "" 2
                            727 ;--- end asm ---
   3941 32 66         [ 5]  728 	leas	6,s	;,,
   3943 C1 77         [ 2]  729 	cmpb	#119	;cmpqi:	; lineCount.13,
   3945 23 06         [ 3]  730 	bls	L39	;
                            731 ;----- asm -----
                            732 ; 222 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            733 	; #ENR#[151]        runtimeError("TOO MANY LINES�");
                            734 ; 0 "" 2
                            735 ;--- end asm ---
   3947 8E 38 AD      [ 3]  736 	ldx	#LC0	;,
   394A BD 48 A0      [ 8]  737 	jsr	_runtimeError
   394D                     738 L39:
   394D 32 67         [ 5]  739 	leas	7,s	;,,
   394F 39            [ 5]  740 	rts
                            741 	.globl	_addLineImpl
   3950                     742 _addLineImpl:
   3950 32 7A         [ 5]  743 	leas	-6,s	;,,
   3952 E7 61         [ 5]  744 	stb	1,s	; x0, x0
                            745 ;----- asm -----
                            746 ; 178 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            747 	; #ENR#[125]    lineX0[lineCount] = x3d(x0, y0);
                            748 ; 0 "" 2
                            749 ;--- end asm ---
   3954 F6 C8 80      [ 5]  750 	ldb	_lineCount	;, lineCount
   3957 E7 62         [ 5]  751 	stb	2,s	;, lineCount.10
   3959 E6 68         [ 5]  752 	ldb	8,s	;, y0
   395B 34 04         [ 6]  753 	pshs	b	;
   395D E6 62         [ 5]  754 	ldb	2,s	;, x0
   395F BD 37 08      [ 8]  755 	jsr	_x3d
   3962 E7 61         [ 5]  756 	stb	1,s	;, D.1421
   3964 E6 63         [ 5]  757 	ldb	3,s	;, lineCount.10
   3966 4F            [ 2]  758 	clra		;zero_extendqihi: R:b -> R:d	;,
   3967 1F 01         [ 6]  759 	tfr	d,x	;, lineCount.10
   3969 E6 61         [ 5]  760 	ldb	1,s	;, D.1421
   396B E7 89 C9 07   [ 8]  761 	stb	_lineX0,x	;, lineX0
                            762 ;----- asm -----
                            763 ; 180 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            764 	; #ENR#[126]    lineY0[lineCount] = y3d(x0, 0, y0);
                            765 ; 0 "" 2
                            766 ;--- end asm ---
   396F F6 C8 80      [ 5]  767 	ldb	_lineCount	;, lineCount
   3972 E7 64         [ 5]  768 	stb	4,s	;, lineCount.127
   3974 E6 69         [ 5]  769 	ldb	9,s	;, y0
   3976 34 04         [ 6]  770 	pshs	b	;
   3978 6F E2         [ 8]  771 	clr	,-s	;
   397A E6 64         [ 5]  772 	ldb	4,s	;, x0
   397C BD 37 29      [ 8]  773 	jsr	_y3d
   397F E7 63         [ 5]  774 	stb	3,s	;, D.1422
   3981 E6 66         [ 5]  775 	ldb	6,s	;, lineCount.127
   3983 4F            [ 2]  776 	clra		;zero_extendqihi: R:b -> R:d	;,
   3984 1F 01         [ 6]  777 	tfr	d,x	;, lineCount.127
   3986 E6 63         [ 5]  778 	ldb	3,s	;, D.1422
   3988 E7 89 C9 7F   [ 8]  779 	stb	_lineY0,x	;, lineY0
                            780 ;----- asm -----
                            781 ; 182 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            782 	; #ENR#[127]    lineX1[lineCount] = x3d(x1, y1);
                            783 ; 0 "" 2
                            784 ;--- end asm ---
   398C F6 C8 80      [ 5]  785 	ldb	_lineCount	;, lineCount
   398F E7 67         [ 5]  786 	stb	7,s	;, lineCount.128
   3991 E6 6D         [ 5]  787 	ldb	13,s	;, y1
   3993 34 04         [ 6]  788 	pshs	b	;
   3995 E6 6D         [ 5]  789 	ldb	13,s	;, x1
   3997 BD 37 08      [ 8]  790 	jsr	_x3d
   399A E7 64         [ 5]  791 	stb	4,s	;, D.1423
   399C E6 68         [ 5]  792 	ldb	8,s	;, lineCount.128
   399E 4F            [ 2]  793 	clra		;zero_extendqihi: R:b -> R:d	;,
   399F 1F 01         [ 6]  794 	tfr	d,x	;, lineCount.128
   39A1 E6 64         [ 5]  795 	ldb	4,s	;, D.1423
   39A3 E7 89 C9 F7   [ 8]  796 	stb	_lineX1,x	;, lineX1
                            797 ;----- asm -----
                            798 ; 184 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            799 	; #ENR#[128]    lineY1[lineCount] = y3d(x1, 0, y1);
                            800 ; 0 "" 2
                            801 ;--- end asm ---
   39A7 F6 C8 80      [ 5]  802 	ldb	_lineCount	;, lineCount
   39AA E7 69         [ 5]  803 	stb	9,s	;, lineCount.129
   39AC E6 6E         [ 5]  804 	ldb	14,s	;, y1
   39AE 34 04         [ 6]  805 	pshs	b	;
   39B0 6F E2         [ 8]  806 	clr	,-s	;
   39B2 E6 6F         [ 5]  807 	ldb	15,s	;, x1
   39B4 BD 37 29      [ 8]  808 	jsr	_y3d
   39B7 E7 66         [ 5]  809 	stb	6,s	;, D.1424
   39B9 E6 6B         [ 5]  810 	ldb	11,s	;, lineCount.129
   39BB 4F            [ 2]  811 	clra		;zero_extendqihi: R:b -> R:d	;,
   39BC 1F 01         [ 6]  812 	tfr	d,x	;, lineCount.129
   39BE E6 66         [ 5]  813 	ldb	6,s	;, D.1424
   39C0 E7 89 CA 6F   [ 8]  814 	stb	_lineY1,x	;, lineY1
                            815 ;----- asm -----
                            816 ; 186 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            817 	; #ENR#[129]	if (half) {
                            818 ; 0 "" 2
                            819 ;--- end asm ---
   39C4 32 66         [ 5]  820 	leas	6,s	;,,
   39C6 6D 6B         [ 7]  821 	tst	11,s	; half
   39C8 27 28         [ 3]  822 	beq	L41	;
                            823 ;----- asm -----
                            824 ; 188 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            825 	; #ENR#[130]		lineX0[lineCount] -= 1;
                            826 ; 0 "" 2
                            827 ;--- end asm ---
   39CA F6 C8 80      [ 5]  828 	ldb	_lineCount	;, lineCount
   39CD 4F            [ 2]  829 	clra		;zero_extendqihi: R:b -> R:d	;,
   39CE 1F 01         [ 6]  830 	tfr	d,x	;, lineCount.130
   39D0 6A 89 C9 07   [10]  831 	dec	_lineX0,x	; lineX0
                            832 ;----- asm -----
                            833 ; 190 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            834 	; #ENR#[131]		lineY0[lineCount] += 4;
                            835 ; 0 "" 2
                            836 ;--- end asm ---
   39D4 E6 89 C9 7F   [ 8]  837 	ldb	_lineY0,x	;, lineY0
   39D8 CB 04         [ 2]  838 	addb	#4	;,
   39DA E7 89 C9 7F   [ 8]  839 	stb	_lineY0,x	;, lineY0
                            840 ;----- asm -----
                            841 ; 192 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            842 	; #ENR#[132]		lineX1[lineCount] -= 6;
                            843 ; 0 "" 2
                            844 ;--- end asm ---
   39DE E6 89 C9 F7   [ 8]  845 	ldb	_lineX1,x	;, lineX1
   39E2 CB FA         [ 2]  846 	addb	#-6	;,
   39E4 E7 89 C9 F7   [ 8]  847 	stb	_lineX1,x	;, lineX1
                            848 ;----- asm -----
                            849 ; 194 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            850 	; #ENR#[133]		lineY1[lineCount] += 3;
                            851 ; 0 "" 2
                            852 ;--- end asm ---
   39E8 E6 89 CA 6F   [ 8]  853 	ldb	_lineY1,x	;, lineY1
   39EC CB 03         [ 2]  854 	addb	#3	;,
   39EE E7 89 CA 6F   [ 8]  855 	stb	_lineY1,x	;, lineY1
   39F2                     856 L41:
                            857 ;----- asm -----
                            858 ; 198 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            859 	; #ENR#[136]    lineCount++;
                            860 ; 0 "" 2
                            861 ;--- end asm ---
   39F2 F6 C8 80      [ 5]  862 	ldb	_lineCount	; lineCount.11, lineCount
   39F5 5C            [ 2]  863 	incb	; lineCount.11
   39F6 F7 C8 80      [ 5]  864 	stb	_lineCount	; lineCount.11, lineCount
                            865 ;----- asm -----
                            866 ; 200 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            867 	; #ENR#[137]    if (lineCount >= MAX_LINES) {
                            868 ; 0 "" 2
                            869 ;--- end asm ---
   39F9 C1 77         [ 2]  870 	cmpb	#119	;cmpqi:	; lineCount.11,
   39FB 23 06         [ 3]  871 	bls	L43	;
                            872 ;----- asm -----
                            873 ; 202 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            874 	; #ENR#[138]        runtimeError("TOO MANY LINES�");
                            875 ; 0 "" 2
                            876 ;--- end asm ---
   39FD 8E 38 AD      [ 3]  877 	ldx	#LC0	;,
   3A00 BD 48 A0      [ 8]  878 	jsr	_runtimeError
   3A03                     879 L43:
   3A03 32 66         [ 5]  880 	leas	6,s	;,,
   3A05 39            [ 5]  881 	rts
                            882 	.globl	_addLine
   3A06                     883 _addLine:
   3A06 32 7B         [ 5]  884 	leas	-5,s	;,,
   3A08 E7 E4         [ 4]  885 	stb	,s	; x0, x0
                            886 ;----- asm -----
                            887 ; 229 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            888 	; #ENR#[157]	int test = 5;
                            889 ; 0 "" 2
                            890 ; 231 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            891 	; #ENR#[158]	while (x1 - x0 > test) {
                            892 ; 0 "" 2
                            893 ;--- end asm ---
   3A0A E6 68         [ 5]  894 	ldb	8,s	; D.1463, x1
   3A0C E0 E4         [ 4]  895 	subb	,s	; D.1463, x0
   3A0E C1 05         [ 2]  896 	cmpb	#5	;cmpqi:	; D.1463,
   3A10 2F 33         [ 3]  897 	ble	L45	;
   3A12 E7 62         [ 5]  898 	stb	2,s	; D.1463, ivtmp.152
   3A14                     899 L47:
                            900 ;----- asm -----
                            901 ; 233 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            902 	; #ENR#[159]		addLineImpl(x0, y0, x0 + test, y1, half);
                            903 ; 0 "" 2
                            904 ;--- end asm ---
   3A14 E6 E4         [ 4]  905 	ldb	,s	;, x0
   3A16 CB 05         [ 2]  906 	addb	#5	;,
   3A18 E7 63         [ 5]  907 	stb	3,s	;, x0.153
   3A1A E6 6A         [ 5]  908 	ldb	10,s	;, half
   3A1C 34 04         [ 6]  909 	pshs	b	;
   3A1E E6 6A         [ 5]  910 	ldb	10,s	;, y1
   3A20 34 04         [ 6]  911 	pshs	b	;
   3A22 E6 65         [ 5]  912 	ldb	5,s	;, x0.153
   3A24 34 04         [ 6]  913 	pshs	b	;
   3A26 E6 6A         [ 5]  914 	ldb	10,s	;, y0
   3A28 34 04         [ 6]  915 	pshs	b	;
   3A2A E6 64         [ 5]  916 	ldb	4,s	;, x0
   3A2C BD 39 50      [ 8]  917 	jsr	_addLineImpl
                            918 ;----- asm -----
                            919 ; 235 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            920 	; #ENR#[160]		x0 += test;
                            921 ; 0 "" 2
                            922 ;--- end asm ---
   3A2F E6 66         [ 5]  923 	ldb	6,s	;, ivtmp.152
   3A31 CB FB         [ 2]  924 	addb	#-5	;,
   3A33 E7 66         [ 5]  925 	stb	6,s	;, ivtmp.152
   3A35 32 64         [ 5]  926 	leas	4,s	;,,
   3A37 C1 05         [ 2]  927 	cmpb	#5	;cmpqi:	;,
   3A39 2F 06         [ 3]  928 	ble	L46	;
   3A3B E6 63         [ 5]  929 	ldb	3,s	;, x0.153
   3A3D E7 E4         [ 4]  930 	stb	,s	;, x0
   3A3F 20 D3         [ 3]  931 	bra	L47	;
   3A41                     932 L46:
   3A41 E6 63         [ 5]  933 	ldb	3,s	;, x0.153
   3A43 E7 E4         [ 4]  934 	stb	,s	;, x0
   3A45                     935 L45:
                            936 ;----- asm -----
                            937 ; 238 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            938 	; #ENR#[162]	while (y1 - y0 > test) {
                            939 ; 0 "" 2
                            940 ;--- end asm ---
   3A45 E6 69         [ 5]  941 	ldb	9,s	; D.1465, y1
   3A47 E0 67         [ 5]  942 	subb	7,s	; D.1465, y0
   3A49 C1 05         [ 2]  943 	cmpb	#5	;cmpqi:	; D.1465,
   3A4B 2F 33         [ 3]  944 	ble	L48	;
   3A4D E7 61         [ 5]  945 	stb	1,s	; D.1465, ivtmp.144
   3A4F                     946 L50:
                            947 ;----- asm -----
                            948 ; 240 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            949 	; #ENR#[163]		addLineImpl(x0, y0, x1, y0 + test, half);
                            950 ; 0 "" 2
                            951 ;--- end asm ---
   3A4F E6 67         [ 5]  952 	ldb	7,s	;, y0
   3A51 CB 05         [ 2]  953 	addb	#5	;,
   3A53 E7 64         [ 5]  954 	stb	4,s	;, y0.154
   3A55 E6 6A         [ 5]  955 	ldb	10,s	;, half
   3A57 34 04         [ 6]  956 	pshs	b	;
   3A59 E6 65         [ 5]  957 	ldb	5,s	;, y0.154
   3A5B 34 04         [ 6]  958 	pshs	b	;
   3A5D E6 6A         [ 5]  959 	ldb	10,s	;, x1
   3A5F 34 04         [ 6]  960 	pshs	b	;
   3A61 E6 6A         [ 5]  961 	ldb	10,s	;, y0
   3A63 34 04         [ 6]  962 	pshs	b	;
   3A65 E6 64         [ 5]  963 	ldb	4,s	;, x0
   3A67 BD 39 50      [ 8]  964 	jsr	_addLineImpl
                            965 ;----- asm -----
                            966 ; 242 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            967 	; #ENR#[164]		y0 += test;
                            968 ; 0 "" 2
                            969 ;--- end asm ---
   3A6A E6 65         [ 5]  970 	ldb	5,s	;, ivtmp.144
   3A6C CB FB         [ 2]  971 	addb	#-5	;,
   3A6E E7 65         [ 5]  972 	stb	5,s	;, ivtmp.144
   3A70 32 64         [ 5]  973 	leas	4,s	;,,
   3A72 C1 05         [ 2]  974 	cmpb	#5	;cmpqi:	;,
   3A74 2F 06         [ 3]  975 	ble	L49	;
   3A76 E6 64         [ 5]  976 	ldb	4,s	;, y0.154
   3A78 E7 67         [ 5]  977 	stb	7,s	;, y0
   3A7A 20 D3         [ 3]  978 	bra	L50	;
   3A7C                     979 L49:
   3A7C E6 64         [ 5]  980 	ldb	4,s	;, y0.154
   3A7E E7 67         [ 5]  981 	stb	7,s	;, y0
   3A80                     982 L48:
                            983 ;----- asm -----
                            984 ; 245 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                            985 	; #ENR#[166]	addLineImpl(x0, y0, x1, y1, half);
                            986 ; 0 "" 2
                            987 ;--- end asm ---
   3A80 E6 6A         [ 5]  988 	ldb	10,s	;, half
   3A82 34 04         [ 6]  989 	pshs	b	;
   3A84 E6 6A         [ 5]  990 	ldb	10,s	;, y1
   3A86 34 04         [ 6]  991 	pshs	b	;
   3A88 E6 6A         [ 5]  992 	ldb	10,s	;, x1
   3A8A 34 04         [ 6]  993 	pshs	b	;
   3A8C E6 6A         [ 5]  994 	ldb	10,s	;, y0
   3A8E 34 04         [ 6]  995 	pshs	b	;
   3A90 E6 64         [ 5]  996 	ldb	4,s	;, x0
   3A92 BD 39 50      [ 8]  997 	jsr	_addLineImpl
   3A95 32 69         [ 5]  998 	leas	9,s	;,,
   3A97 39            [ 5]  999 	rts
                           1000 	.globl	_setupY
   3A98                    1001 _setupY:
   3A98 32 7B         [ 5] 1002 	leas	-5,s	;,,
                           1003 ;----- asm -----
                           1004 ; 350 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1005 	; #ENR#[234]	int8_t x = 0;
                           1006 ; 0 "" 2
                           1007 ; 352 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1008 	; #ENR#[235]	int8_t y = 0;
                           1009 ; 0 "" 2
                           1010 ; 354 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1011 	; #ENR#[236]	for (x = -1; x < LEVEL_WIDTH; x++) {
                           1012 ; 0 "" 2
                           1013 ;--- end asm ---
   3A9A C6 FF         [ 2] 1014 	ldb	#-1	;,
   3A9C E7 61         [ 5] 1015 	stb	1,s	;, x
   3A9E                    1016 L58:
                           1017 ;----- asm -----
                           1018 ; 356 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1019 	; #ENR#[237]		int8_t y0 = -1;
                           1020 ; 0 "" 2
                           1021 ; 358 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1022 	; #ENR#[238]		int8_t y1 = -1;
                           1023 ; 0 "" 2
                           1024 ; 360 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1025 	; #ENR#[239]		for (y = 0; y <= LEVEL_HEIGHT; y++) {
                           1026 ; 0 "" 2
                           1027 ;--- end asm ---
   3A9E 6F 62         [ 7] 1028 	clr	2,s	; y
   3AA0 C6 FF         [ 2] 1029 	ldb	#-1	;,
   3AA2 E7 63         [ 5] 1030 	stb	3,s	;, y0
   3AA4 E7 64         [ 5] 1031 	stb	4,s	;, y1
   3AA6                    1032 L57:
                           1033 ;----- asm -----
                           1034 ; 362 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1035 	; #ENR#[240]			if (isField(x, y) || isField(x + 1, y)) {
                           1036 ; 0 "" 2
                           1037 ;--- end asm ---
   3AA6 E6 62         [ 5] 1038 	ldb	2,s	;, y
   3AA8 34 04         [ 6] 1039 	pshs	b	;
   3AAA E6 62         [ 5] 1040 	ldb	2,s	;, x
   3AAC BD 36 A9      [ 8] 1041 	jsr	_isField
   3AAF 32 61         [ 5] 1042 	leas	1,s	;,,
   3AB1 5D            [ 2] 1043 	tstb	; D.1526
   3AB2 26 13         [ 3] 1044 	bne	L53	;
   3AB4 E6 61         [ 5] 1045 	ldb	1,s	;, x
   3AB6 5C            [ 2] 1046 	incb	;
   3AB7 E7 E4         [ 4] 1047 	stb	,s	;, D.1527
   3AB9 E6 62         [ 5] 1048 	ldb	2,s	;, y
   3ABB 34 04         [ 6] 1049 	pshs	b	;
   3ABD E6 61         [ 5] 1050 	ldb	1,s	;, D.1527
   3ABF BD 36 A9      [ 8] 1051 	jsr	_isField
   3AC2 32 61         [ 5] 1052 	leas	1,s	;,,
   3AC4 5D            [ 2] 1053 	tstb	; D.1528
   3AC5 27 0E         [ 3] 1054 	beq	L54	;
   3AC7                    1055 L53:
                           1056 ;----- asm -----
                           1057 ; 364 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1058 	; #ENR#[241]				if (y0 < 0) y0 = y;
                           1059 ; 0 "" 2
                           1060 ;--- end asm ---
   3AC7 6D 63         [ 7] 1061 	tst	3,s	; y0
   3AC9 2C 04         [ 3] 1062 	bge	L55	;
   3ACB E6 62         [ 5] 1063 	ldb	2,s	;, y
   3ACD E7 63         [ 5] 1064 	stb	3,s	;, y0
   3ACF                    1065 L55:
                           1066 ;----- asm -----
                           1067 ; 366 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1068 	; #ENR#[242]				y1 = y;
                           1069 ; 0 "" 2
                           1070 ;--- end asm ---
   3ACF E6 62         [ 5] 1071 	ldb	2,s	;, y
   3AD1 E7 64         [ 5] 1072 	stb	4,s	;, y1
   3AD3 20 1E         [ 3] 1073 	bra	L56	;
   3AD5                    1074 L54:
                           1075 ;----- asm -----
                           1076 ; 369 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1077 	; #ENR#[244]				if (y0 >= 0) {
                           1078 ; 0 "" 2
                           1079 ;--- end asm ---
   3AD5 6D 63         [ 7] 1080 	tst	3,s	; y0
   3AD7 2D 1A         [ 3] 1081 	blt	L56	;
                           1082 ;----- asm -----
                           1083 ; 371 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1084 	; #ENR#[245]					addLine(x + 1, y0, x + 1, y1 + 1, 0);
                           1085 ; 0 "" 2
                           1086 ;--- end asm ---
   3AD9 6F E2         [ 8] 1087 	clr	,-s	;
   3ADB E6 65         [ 5] 1088 	ldb	5,s	;, y1
   3ADD 5C            [ 2] 1089 	incb	;
   3ADE 34 04         [ 6] 1090 	pshs	b	;
   3AE0 E6 62         [ 5] 1091 	ldb	2,s	;, D.1527
   3AE2 34 04         [ 6] 1092 	pshs	b	;
   3AE4 E6 66         [ 5] 1093 	ldb	6,s	;, y0
   3AE6 34 04         [ 6] 1094 	pshs	b	;
   3AE8 E6 64         [ 5] 1095 	ldb	4,s	;, D.1527
   3AEA BD 3A 06      [ 8] 1096 	jsr	_addLine
                           1097 ;----- asm -----
                           1098 ; 373 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1099 	; #ENR#[246]					y0 = -1;
                           1100 ; 0 "" 2
                           1101 ;--- end asm ---
   3AED C6 FF         [ 2] 1102 	ldb	#-1	;,
   3AEF E7 67         [ 5] 1103 	stb	7,s	;, y0
   3AF1 32 64         [ 5] 1104 	leas	4,s	;,,
   3AF3                    1105 L56:
   3AF3 6C 62         [ 7] 1106 	inc	2,s	; y
   3AF5 E6 62         [ 5] 1107 	ldb	2,s	;, y
   3AF7 C1 10         [ 2] 1108 	cmpb	#16	;cmpqi:	;,
   3AF9 10 26 FF A9   [ 6] 1109 	lbne	L57	;
   3AFD 6C 61         [ 7] 1110 	inc	1,s	; x
   3AFF E6 61         [ 5] 1111 	ldb	1,s	;, x
   3B01 C1 0A         [ 2] 1112 	cmpb	#10	;cmpqi:	;,
   3B03 10 26 FF 97   [ 6] 1113 	lbne	L58	;
   3B07 32 65         [ 5] 1114 	leas	5,s	;,,
   3B09 39            [ 5] 1115 	rts
                           1116 	.globl	_setupX
   3B0A                    1117 _setupX:
   3B0A 34 60         [ 7] 1118 	pshs	y,u	;
   3B0C 32 79         [ 5] 1119 	leas	-7,s	;,,
                           1120 ;----- asm -----
                           1121 ; 283 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1122 	; #ENR#[193]	long int index;
                           1123 ; 0 "" 2
                           1124 ; 285 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1125 	; #ENR#[194]	int8_t x = 0;
                           1126 ; 0 "" 2
                           1127 ; 287 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1128 	; #ENR#[195]	int8_t y = 0;
                           1129 ; 0 "" 2
                           1130 ; 289 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1131 	; #ENR#[196]	const char* geometry = level->geometry;
                           1132 ; 0 "" 2
                           1133 ; 291 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1134 	; #ENR#[197]	for (y = -1; y < LEVEL_HEIGHT; y++) {
                           1135 ; 0 "" 2
                           1136 ;--- end asm ---
   3B0E AE 9F C8 F2   [10] 1137 	ldx	[_level]	;, <variable>.geometry
   3B12 31 16         [ 5] 1138 	leay	-10,x	; ivtmp.199,,
   3B14 6F 66         [ 7] 1139 	clr	6,s	; ivtmp.193
   3B16                    1140 L75:
   3B16 E6 66         [ 5] 1141 	ldb	6,s	;, ivtmp.193
   3B18 5A            [ 2] 1142 	decb	;
   3B19 E7 62         [ 5] 1143 	stb	2,s	;, y
                           1144 ;----- asm -----
                           1145 ; 293 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1146 	; #ENR#[198]		int8_t x0 = -1;
                           1147 ; 0 "" 2
                           1148 ; 295 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1149 	; #ENR#[199]		int8_t x1 = -1;
                           1150 ; 0 "" 2
                           1151 ; 297 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1152 	; #ENR#[200]		for (x = 0; x <= LEVEL_WIDTH; x++) {
                           1153 ; 0 "" 2
                           1154 ;--- end asm ---
   3B1B 33 A4         [ 4] 1155 	leau	,y	; ivtmp.202, ivtmp.199
   3B1D C6 FF         [ 2] 1156 	ldb	#-1	;,
   3B1F E7 63         [ 5] 1157 	stb	3,s	;, x0
   3B21 E7 64         [ 5] 1158 	stb	4,s	;, x1
   3B23 C6 01         [ 2] 1159 	ldb	#1	;,
   3B25 E7 65         [ 5] 1160 	stb	5,s	;, ivtmp.191
   3B27                    1161 L74:
   3B27 E6 65         [ 5] 1162 	ldb	5,s	;, ivtmp.191
   3B29 5A            [ 2] 1163 	decb	;
   3B2A E7 61         [ 5] 1164 	stb	1,s	;, x
                           1165 ;----- asm -----
                           1166 ; 299 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1167 	; #ENR#[201]			char c0 = 0;
                           1168 ; 0 "" 2
                           1169 ; 301 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1170 	; #ENR#[202]			index = (long int) y*LEVEL_WIDTH + (long int)x;
                           1171 ; 0 "" 2
                           1172 ; 303 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1173 	; #ENR#[203]			if (y >= 0 && x < LEVEL_WIDTH) {
                           1174 ; 0 "" 2
                           1175 ;--- end asm ---
   3B2C 6D 62         [ 7] 1176 	tst	2,s	; y
   3B2E 2D 08         [ 3] 1177 	blt	L63	;
   3B30 C1 09         [ 2] 1178 	cmpb	#9	;cmpqi:	;,
   3B32 2E 04         [ 3] 1179 	bgt	L63	;
                           1180 ;----- asm -----
                           1181 ; 305 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1182 	; #ENR#[204]				c0 = geometry[index];
                           1183 ; 0 "" 2
                           1184 ;--- end asm ---
   3B34 E6 C4         [ 4] 1185 	ldb	,u	; c0,* ivtmp.202
   3B36 20 01         [ 3] 1186 	bra	L64	;
   3B38                    1187 L63:
   3B38 5F            [ 2] 1188 	clrb	; c0
   3B39                    1189 L64:
                           1190 ;----- asm -----
                           1191 ; 308 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1192 	; #ENR#[206]			if (c0 == 'e') {
                           1193 ; 0 "" 2
                           1194 ;--- end asm ---
   3B39 C1 65         [ 2] 1195 	cmpb	#101	;cmpqi:	; c0,
   3B3B 26 18         [ 3] 1196 	bne	L65	;
                           1197 ;----- asm -----
                           1198 ; 310 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1199 	; #ENR#[207]				addTarget(x, y);
                           1200 ; 0 "" 2
                           1201 ;--- end asm ---
   3B3D E6 62         [ 5] 1202 	ldb	2,s	;, y
   3B3F 34 04         [ 6] 1203 	pshs	b	;
   3B41 E6 62         [ 5] 1204 	ldb	2,s	;, x
   3B43 BD 37 4D      [ 8] 1205 	jsr	_addTarget
                           1206 ;----- asm -----
                           1207 ; 312 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1208 	; #ENR#[208]				endX = x;
                           1209 ; 0 "" 2
                           1210 ;--- end asm ---
   3B46 E6 62         [ 5] 1211 	ldb	2,s	;, x
   3B48 F7 C8 81      [ 5] 1212 	stb	_endX	;, endX
                           1213 ;----- asm -----
                           1214 ; 314 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1215 	; #ENR#[209]				endY = y;
                           1216 ; 0 "" 2
                           1217 ;--- end asm ---
   3B4B E6 63         [ 5] 1218 	ldb	3,s	;, y
   3B4D F7 C8 82      [ 5] 1219 	stb	_endY	;, endY
   3B50 32 61         [ 5] 1220 	leas	1,s	;,,
   3B52 16 00 63      [ 5] 1221 	lbra	L66	;
   3B55                    1222 L65:
   3B55 C1 76         [ 2] 1223 	cmpb	#118	;cmpqi:	; c0,
   3B57 26 0E         [ 3] 1224 	bne	L67	;
                           1225 ;----- asm -----
                           1226 ; 317 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1227 	; #ENR#[211]				addSplit(x, y);
                           1228 ; 0 "" 2
                           1229 ;--- end asm ---
   3B59 E6 62         [ 5] 1230 	ldb	2,s	;, y
   3B5B 34 04         [ 6] 1231 	pshs	b	;
   3B5D E6 62         [ 5] 1232 	ldb	2,s	;, x
   3B5F BD 38 BD      [ 8] 1233 	jsr	_addSplit
   3B62 32 61         [ 5] 1234 	leas	1,s	;,,
   3B64 16 00 51      [ 5] 1235 	lbra	L66	;
   3B67                    1236 L67:
   3B67 C1 73         [ 2] 1237 	cmpb	#115	;cmpqi:	; c0,
   3B69 26 17         [ 3] 1238 	bne	L68	;
                           1239 ;----- asm -----
                           1240 ; 320 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1241 	; #ENR#[213]				addLine(x, y, x + 1, y + 1, 0);
                           1242 ; 0 "" 2
                           1243 ;--- end asm ---
   3B6B 6F E2         [ 8] 1244 	clr	,-s	;
   3B6D E6 67         [ 5] 1245 	ldb	7,s	;, ivtmp.193
   3B6F 34 04         [ 6] 1246 	pshs	b	;
   3B71 E6 67         [ 5] 1247 	ldb	7,s	;, ivtmp.191
   3B73 34 04         [ 6] 1248 	pshs	b	;
   3B75 E6 65         [ 5] 1249 	ldb	5,s	;, y
   3B77 34 04         [ 6] 1250 	pshs	b	;
   3B79 E6 65         [ 5] 1251 	ldb	5,s	;, x
   3B7B BD 3A 06      [ 8] 1252 	jsr	_addLine
   3B7E 32 64         [ 5] 1253 	leas	4,s	;,,
   3B80 20 36         [ 3] 1254 	bra	L66	;
   3B82                    1255 L68:
   3B82 C1 68         [ 2] 1256 	cmpb	#104	;cmpqi:	; c0,
   3B84 26 17         [ 3] 1257 	bne	L69	;
                           1258 ;----- asm -----
                           1259 ; 323 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1260 	; #ENR#[215]				addLine(x + 1, y, x, y + 1, 0);
                           1261 ; 0 "" 2
                           1262 ;--- end asm ---
   3B86 6F E2         [ 8] 1263 	clr	,-s	;
   3B88 E6 67         [ 5] 1264 	ldb	7,s	;, ivtmp.193
   3B8A 34 04         [ 6] 1265 	pshs	b	;
   3B8C E6 63         [ 5] 1266 	ldb	3,s	;, x
   3B8E 34 04         [ 6] 1267 	pshs	b	;
   3B90 E6 65         [ 5] 1268 	ldb	5,s	;, y
   3B92 34 04         [ 6] 1269 	pshs	b	;
   3B94 E6 69         [ 5] 1270 	ldb	9,s	;, ivtmp.191
   3B96 BD 3A 06      [ 8] 1271 	jsr	_addLine
   3B99 32 64         [ 5] 1272 	leas	4,s	;,,
   3B9B 20 1B         [ 3] 1273 	bra	L66	;
   3B9D                    1274 L69:
   3B9D C1 66         [ 2] 1275 	cmpb	#102	;cmpqi:	; c0,
   3B9F 26 17         [ 3] 1276 	bne	L66	;
                           1277 ;----- asm -----
                           1278 ; 326 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1279 	; #ENR#[217]				addLine(x, y, x + 1, y, 1);
                           1280 ; 0 "" 2
                           1281 ;--- end asm ---
   3BA1 C6 01         [ 2] 1282 	ldb	#1	;,
   3BA3 E7 E2         [ 6] 1283 	stb	,-s	;,
   3BA5 E6 63         [ 5] 1284 	ldb	3,s	;, y
   3BA7 34 04         [ 6] 1285 	pshs	b	;
   3BA9 E6 67         [ 5] 1286 	ldb	7,s	;, ivtmp.191
   3BAB 34 04         [ 6] 1287 	pshs	b	;
   3BAD E6 65         [ 5] 1288 	ldb	5,s	;, y
   3BAF 34 04         [ 6] 1289 	pshs	b	;
   3BB1 E6 65         [ 5] 1290 	ldb	5,s	;, x
   3BB3 BD 3A 06      [ 8] 1291 	jsr	_addLine
   3BB6 32 64         [ 5] 1292 	leas	4,s	;,,
   3BB8                    1293 L66:
                           1294 ;----- asm -----
                           1295 ; 329 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1296 	; #ENR#[219]            if (isField(x, y) || isField(x, y + 1)) {
                           1297 ; 0 "" 2
                           1298 ;--- end asm ---
   3BB8 E6 62         [ 5] 1299 	ldb	2,s	;, y
   3BBA 34 04         [ 6] 1300 	pshs	b	;
   3BBC E6 62         [ 5] 1301 	ldb	2,s	;, x
   3BBE BD 36 A9      [ 8] 1302 	jsr	_isField
   3BC1 32 61         [ 5] 1303 	leas	1,s	;,,
   3BC3 5D            [ 2] 1304 	tstb	; D.1508
   3BC4 26 10         [ 3] 1305 	bne	L70	;
   3BC6 E6 66         [ 5] 1306 	ldb	6,s	;, ivtmp.193
   3BC8 E7 E4         [ 4] 1307 	stb	,s	;, D.1503
   3BCA 34 04         [ 6] 1308 	pshs	b	;
   3BCC E6 62         [ 5] 1309 	ldb	2,s	;, x
   3BCE BD 36 A9      [ 8] 1310 	jsr	_isField
   3BD1 32 61         [ 5] 1311 	leas	1,s	;,,
   3BD3 5D            [ 2] 1312 	tstb	; D.1509
   3BD4 27 0E         [ 3] 1313 	beq	L71	;
   3BD6                    1314 L70:
                           1315 ;----- asm -----
                           1316 ; 331 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1317 	; #ENR#[220]				if (x0 < 0) x0 = x;
                           1318 ; 0 "" 2
                           1319 ;--- end asm ---
   3BD6 6D 63         [ 7] 1320 	tst	3,s	; x0
   3BD8 2C 04         [ 3] 1321 	bge	L72	;
   3BDA E6 61         [ 5] 1322 	ldb	1,s	;, x
   3BDC E7 63         [ 5] 1323 	stb	3,s	;, x0
   3BDE                    1324 L72:
                           1325 ;----- asm -----
                           1326 ; 333 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1327 	; #ENR#[221]				x1 = x;
                           1328 ; 0 "" 2
                           1329 ;--- end asm ---
   3BDE E6 61         [ 5] 1330 	ldb	1,s	;, x
   3BE0 E7 64         [ 5] 1331 	stb	4,s	;, x1
   3BE2 20 1E         [ 3] 1332 	bra	L73	;
   3BE4                    1333 L71:
                           1334 ;----- asm -----
                           1335 ; 336 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1336 	; #ENR#[223]				if (x0 >= 0) {
                           1337 ; 0 "" 2
                           1338 ;--- end asm ---
   3BE4 6D 63         [ 7] 1339 	tst	3,s	; x0
   3BE6 2D 1A         [ 3] 1340 	blt	L73	;
                           1341 ;----- asm -----
                           1342 ; 338 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1343 	; #ENR#[224]					addLine(x0, y + 1, x1 + 1, y + 1, 0);
                           1344 ; 0 "" 2
                           1345 ;--- end asm ---
   3BE8 6F E2         [ 8] 1346 	clr	,-s	;
   3BEA E6 61         [ 5] 1347 	ldb	1,s	;, D.1503
   3BEC 34 04         [ 6] 1348 	pshs	b	;
   3BEE E6 66         [ 5] 1349 	ldb	6,s	;, x1
   3BF0 5C            [ 2] 1350 	incb	;
   3BF1 34 04         [ 6] 1351 	pshs	b	;
   3BF3 E6 63         [ 5] 1352 	ldb	3,s	;, D.1503
   3BF5 34 04         [ 6] 1353 	pshs	b	;
   3BF7 E6 67         [ 5] 1354 	ldb	7,s	;, x0
   3BF9 BD 3A 06      [ 8] 1355 	jsr	_addLine
                           1356 ;----- asm -----
                           1357 ; 340 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1358 	; #ENR#[225]					x0 = -1;
                           1359 ; 0 "" 2
                           1360 ;--- end asm ---
   3BFC C6 FF         [ 2] 1361 	ldb	#-1	;,
   3BFE E7 67         [ 5] 1362 	stb	7,s	;, x0
   3C00 32 64         [ 5] 1363 	leas	4,s	;,,
   3C02                    1364 L73:
   3C02 6C 65         [ 7] 1365 	inc	5,s	; ivtmp.191
   3C04 33 41         [ 5] 1366 	leau	1,u	; ivtmp.202,, ivtmp.202
   3C06 E6 65         [ 5] 1367 	ldb	5,s	;, ivtmp.191
   3C08 C1 0C         [ 2] 1368 	cmpb	#12	;cmpqi:	;,
   3C0A 10 26 FF 19   [ 6] 1369 	lbne	L74	;
   3C0E 6C 66         [ 7] 1370 	inc	6,s	; ivtmp.193
   3C10 31 2A         [ 5] 1371 	leay	10,y	; ivtmp.199,, ivtmp.199
   3C12 E6 66         [ 5] 1372 	ldb	6,s	;, ivtmp.193
   3C14 C1 10         [ 2] 1373 	cmpb	#16	;cmpqi:	;,
   3C16 10 26 FE FC   [ 6] 1374 	lbne	L75	;
   3C1A 32 67         [ 5] 1375 	leas	7,s	;,,
   3C1C 35 E0         [ 8] 1376 	puls	y,u,pc	;
                           1377 	.globl	_initLevel
   3C1E                    1378 _initLevel:
                           1379 ;----- asm -----
                           1380 ; 416 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1381 	; #ENR#[276]    lineCount = 0;
                           1382 ; 0 "" 2
                           1383 ;--- end asm ---
   3C1E 7F C8 80      [ 7] 1384 	clr	_lineCount	; lineCount
                           1385 ;----- asm -----
                           1386 ; 418 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1387 	; #ENR#[277]    setupX();
                           1388 ; 0 "" 2
                           1389 ;--- end asm ---
   3C21 BD 3B 0A      [ 8] 1390 	jsr	_setupX
                           1391 ;----- asm -----
                           1392 ; 420 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1393 	; #ENR#[278]    setupY();
                           1394 ; 0 "" 2
                           1395 ;--- end asm ---
   3C24 BD 3A 98      [ 8] 1396 	jsr	_setupY
   3C27 39            [ 5] 1397 	rts
                           1398 	.globl	_swatchSwitch
   3C28                    1399 _swatchSwitch:
   3C28 34 40         [ 6] 1400 	pshs	u	;
   3C2A 32 79         [ 5] 1401 	leas	-7,s	;,,
   3C2C E7 62         [ 5] 1402 	stb	2,s	; x, x
                           1403 ;----- asm -----
                           1404 ; 96 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1405 	; #ENR#[75]	if (splitMode) return;
                           1406 ; 0 "" 2
                           1407 ;--- end asm ---
   3C2E 7D C8 8C      [ 7] 1408 	tst	_splitMode	; splitMode
   3C31 10 26 00 D8   [ 6] 1409 	lbne	L95	;
                           1410 ;----- asm -----
                           1411 ; 98 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1412 	; #ENR#[76]    for (uint8_t i = 0; i < level->swatches_count; i++) {
                           1413 ; 0 "" 2
                           1414 ;--- end asm ---
   3C35 BE C8 F2      [ 6] 1415 	ldx	_level	; level.7, level
   3C38 6D 04         [ 7] 1416 	tst	4,x	; <variable>.swatches_count
   3C3A 10 27 00 CC   [ 6] 1417 	lbeq	L83	;
   3C3E 6F 63         [ 7] 1418 	clr	3,s	; i
   3C40                    1419 L94:
                           1420 ;----- asm -----
                           1421 ; 100 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1422 	; #ENR#[77]        const struct Swatch* swatch = level->swatches[i];
                           1423 ; 0 "" 2
                           1424 ;--- end asm ---
   3C40 E6 63         [ 5] 1425 	ldb	3,s	;, i
   3C42 4F            [ 2] 1426 	clra		;zero_extendqihi: R:b -> R:d	;,
   3C43 ED E4         [ 5] 1427 	std	,s	;,
   3C45 58            [ 2] 1428 	aslb	;
   3C46 49            [ 2] 1429 	rola	;
   3C47 30 8B         [ 8] 1430 	leax	d,x	; tmp43, tmp42, level.7
   3C49 EE 05         [ 6] 1431 	ldu	5,x	; swatch, <variable>.swatches
                           1432 ;----- asm -----
                           1433 ; 102 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1434 	; #ENR#[78]		if (swatch->position.x == x && swatch->position.y == y) {
                           1435 ; 0 "" 2
                           1436 ;--- end asm ---
   3C4B E6 62         [ 5] 1437 	ldb	2,s	;, x
   3C4D E1 41         [ 5] 1438 	cmpb	1,u	;cmpqi:(R)	;, <variable>.position.x
   3C4F 10 26 00 AA   [ 6] 1439 	lbne	L84	;
   3C53 E6 6B         [ 5] 1440 	ldb	11,s	;, y
   3C55 E1 42         [ 5] 1441 	cmpb	2,u	;cmpqi:(R)	;, <variable>.position.y
   3C57 10 26 00 A2   [ 6] 1442 	lbne	L84	;
                           1443 ;----- asm -----
                           1444 ; 104 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1445 	; #ENR#[79]            for (uint8_t j = 0; j < swatch->fields_count; j++) {
                           1446 ; 0 "" 2
                           1447 ;--- end asm ---
   3C5B 6D 43         [ 7] 1448 	tst	3,u	; <variable>.fields_count
   3C5D 10 27 00 9C   [ 6] 1449 	lbeq	L84	;
   3C61 6F 64         [ 7] 1450 	clr	4,s	; j
   3C63                    1451 L93:
                           1452 ;----- asm -----
                           1453 ; 106 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1454 	; #ENR#[80]                const struct SwatchField* field = swatch->fields[j];
                           1455 ; 0 "" 2
                           1456 ;--- end asm ---
   3C63 E6 64         [ 5] 1457 	ldb	4,s	;, j
   3C65 4F            [ 2] 1458 	clra		;zero_extendqihi: R:b -> R:d	;,
   3C66 C3 00 02      [ 4] 1459 	addd	#2; addhi3,3	; tmp46,
   3C69 58            [ 2] 1460 	aslb	;
   3C6A 49            [ 2] 1461 	rola	;
   3C6B 30 CB         [ 8] 1462 	leax	d,u	; tmp48, tmp47, swatch
   3C6D AE 84         [ 5] 1463 	ldx	,x	; field, <variable>.fields
                           1464 ;----- asm -----
                           1465 ; 108 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1466 	; #ENR#[81]		       int8_t xf = field->position.x;
                           1467 ; 0 "" 2
                           1468 ;--- end asm ---
   3C6F E6 01         [ 5] 1469 	ldb	1,x	;, <variable>.position.x
   3C71 E7 65         [ 5] 1470 	stb	5,s	;, xf
                           1471 ;----- asm -----
                           1472 ; 110 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1473 	; #ENR#[82]		       int8_t yf = field->position.y;
                           1474 ; 0 "" 2
                           1475 ;--- end asm ---
   3C73 E6 02         [ 5] 1476 	ldb	2,x	;, <variable>.position.y
   3C75 E7 66         [ 5] 1477 	stb	6,s	;, yf
                           1478 ;----- asm -----
                           1479 ; 112 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1480 	; #ENR#[83]                switch (field->action) {
                           1481 ; 0 "" 2
                           1482 ;--- end asm ---
   3C77 E6 84         [ 4] 1483 	ldb	,x	;, <variable>.action
   3C79 C1 04         [ 2] 1484 	cmpb	#4	;cmpqi:	;,
   3C7B 10 22 00 74   [ 6] 1485 	lbhi	L85	;
   3C7F 4F            [ 2] 1486 	clra		;zero_extendqihi: R:b -> R:d	;,
   3C80 ED E4         [ 5] 1487 	std	,s	;,
   3C82 58            [ 2] 1488 	aslb	;
   3C83 49            [ 2] 1489 	rola	;
   3C84 1F 01         [ 6] 1490 	tfr	d,x	;, tmp51
   3C86 6E 99 3C 8A   [10] 1491 	jmp	[L91,x]	;, tmp51
   3C8A                    1492 L91:
   3C8A 3C 94              1493 	.word	L86
   3C8C 3C B9              1494 	.word	L87
   3C8E 3C CB              1495 	.word	L88
   3C90 3C DA              1496 	.word	L89
   3C92 3C E9              1497 	.word	L90
   3C94                    1498 L86:
                           1499 ;----- asm -----
                           1500 ; 116 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1501 	; #ENR#[85]					setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
                           1502 ; 0 "" 2
                           1503 ;--- end asm ---
   3C94 E6 66         [ 5] 1504 	ldb	6,s	;, yf
   3C96 34 04         [ 6] 1505 	pshs	b	;
   3C98 E6 66         [ 5] 1506 	ldb	6,s	;, xf
   3C9A BD 36 21      [ 8] 1507 	jsr	_isSwatchFieldOn
   3C9D 5D            [ 2] 1508 	tstb	; D.1391
   3C9E 4F            [ 2] 1509 	clra		;zero_extendqihi: R:b -> R:d	; D.1391, tmp55
   3C9F C3 FF FF      [ 4] 1510 	addd	#-1; addhi3,3	; tmp56,
   3CA2 1F 89         [ 6] 1511 	tfr	a,b	;,
   3CA4 4F            [ 2] 1512 	clra		;zero_extendqihi: R:b -> R:d	;,
   3CA5 59            [ 2] 1513 	rolb	;
   3CA6 59            [ 2] 1514 	rolb	;
   3CA7 C4 01         [ 2] 1515 	andb	#1	;,
   3CA9 34 04         [ 6] 1516 	pshs	b	; tmp54
   3CAB E6 68         [ 5] 1517 	ldb	8,s	;, yf
   3CAD 34 04         [ 6] 1518 	pshs	b	;
   3CAF E6 68         [ 5] 1519 	ldb	8,s	;, xf
   3CB1 BD 36 58      [ 8] 1520 	jsr	_setSwatchField
                           1521 ;----- asm -----
                           1522 ; 118 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1523 	; #ENR#[86]					break;
                           1524 ; 0 "" 2
                           1525 ;--- end asm ---
   3CB4 32 63         [ 5] 1526 	leas	3,s	;,,
   3CB6 16 00 3A      [ 5] 1527 	lbra	L85	;
   3CB9                    1528 L87:
                           1529 ;----- asm -----
                           1530 ; 122 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1531 	; #ENR#[88]					setSwatchField(xf, yf, 1);
                           1532 ; 0 "" 2
                           1533 ;--- end asm ---
   3CB9 C6 01         [ 2] 1534 	ldb	#1	;,
   3CBB E7 E2         [ 6] 1535 	stb	,-s	;,
   3CBD E6 67         [ 5] 1536 	ldb	7,s	;, yf
   3CBF 34 04         [ 6] 1537 	pshs	b	;
   3CC1 E6 67         [ 5] 1538 	ldb	7,s	;, xf
   3CC3 BD 36 58      [ 8] 1539 	jsr	_setSwatchField
                           1540 ;----- asm -----
                           1541 ; 124 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1542 	; #ENR#[89]					break;
                           1543 ; 0 "" 2
                           1544 ;--- end asm ---
   3CC6 32 62         [ 5] 1545 	leas	2,s	;,,
   3CC8 16 00 28      [ 5] 1546 	lbra	L85	;
   3CCB                    1547 L88:
                           1548 ;----- asm -----
                           1549 ; 128 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1550 	; #ENR#[91]					setSwatchField(xf, yf, 0);
                           1551 ; 0 "" 2
                           1552 ;--- end asm ---
   3CCB 6F E2         [ 8] 1553 	clr	,-s	;
   3CCD E6 67         [ 5] 1554 	ldb	7,s	;, yf
   3CCF 34 04         [ 6] 1555 	pshs	b	;
   3CD1 E6 67         [ 5] 1556 	ldb	7,s	;, xf
   3CD3 BD 36 58      [ 8] 1557 	jsr	_setSwatchField
                           1558 ;----- asm -----
                           1559 ; 130 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1560 	; #ENR#[92]					break;
                           1561 ; 0 "" 2
                           1562 ;--- end asm ---
   3CD6 32 62         [ 5] 1563 	leas	2,s	;,,
   3CD8 20 19         [ 3] 1564 	bra	L85	;
   3CDA                    1565 L89:
                           1566 ;----- asm -----
                           1567 ; 134 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1568 	; #ENR#[94]					blockX = xf;
                           1569 ; 0 "" 2
                           1570 ;--- end asm ---
   3CDA E6 65         [ 5] 1571 	ldb	5,s	;, xf
   3CDC F7 C8 8D      [ 5] 1572 	stb	_blockX	;, blockX
                           1573 ;----- asm -----
                           1574 ; 136 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1575 	; #ENR#[95]					blockY = yf;
                           1576 ; 0 "" 2
                           1577 ;--- end asm ---
   3CDF E6 66         [ 5] 1578 	ldb	6,s	;, yf
   3CE1 F7 C8 8E      [ 5] 1579 	stb	_blockY	;, blockY
                           1580 ;----- asm -----
                           1581 ; 138 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1582 	; #ENR#[96]					setSplitMode();
                           1583 ; 0 "" 2
                           1584 ;--- end asm ---
   3CE4 BD 03 EE      [ 8] 1585 	jsr	_setSplitMode
                           1586 ;----- asm -----
                           1587 ; 140 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1588 	; #ENR#[97]					break;
                           1589 ; 0 "" 2
                           1590 ;--- end asm ---
   3CE7 20 0A         [ 3] 1591 	bra	L85	;
   3CE9                    1592 L90:
                           1593 ;----- asm -----
                           1594 ; 144 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1595 	; #ENR#[99]					blockX2 = xf;
                           1596 ; 0 "" 2
                           1597 ;--- end asm ---
   3CE9 E6 65         [ 5] 1598 	ldb	5,s	;, xf
   3CEB F7 C8 8F      [ 5] 1599 	stb	_blockX2	;, blockX2
                           1600 ;----- asm -----
                           1601 ; 146 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1602 	; #ENR#[100]					blockY2 = yf;
                           1603 ; 0 "" 2
                           1604 ;--- end asm ---
   3CEE E6 66         [ 5] 1605 	ldb	6,s	;, yf
   3CF0 F7 C8 90      [ 5] 1606 	stb	_blockY2	;, blockY2
                           1607 ;----- asm -----
                           1608 ; 148 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1609 	; #ENR#[101]					break;
                           1610 ; 0 "" 2
                           1611 ;--- end asm ---
   3CF3                    1612 L85:
   3CF3 6C 64         [ 7] 1613 	inc	4,s	; j
   3CF5 E6 64         [ 5] 1614 	ldb	4,s	;, j
   3CF7 E1 43         [ 5] 1615 	cmpb	3,u	;cmpqi:(R)	;, <variable>.fields_count
   3CF9 10 25 FF 66   [ 6] 1616 	lblo	L93	;
   3CFD                    1617 L84:
   3CFD 6C 63         [ 7] 1618 	inc	3,s	; i
   3CFF BE C8 F2      [ 6] 1619 	ldx	_level	; level.7, level
   3D02 E6 63         [ 5] 1620 	ldb	3,s	;, i
   3D04 E1 04         [ 5] 1621 	cmpb	4,x	;cmpqi:(R)	;, <variable>.swatches_count
   3D06 10 25 FF 36   [ 6] 1622 	lblo	L94	;
   3D0A                    1623 L83:
                           1624 ;----- asm -----
                           1625 ; 154 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
                           1626 	; #ENR#[106]	initLevel();
                           1627 ; 0 "" 2
                           1628 ;--- end asm ---
   3D0A BD 3C 1E      [ 8] 1629 	jsr	_initLevel
   3D0D                    1630 L95:
   3D0D 32 67         [ 5] 1631 	leas	7,s	;,,
   3D0F 35 C0         [ 7] 1632 	puls	u,pc	;
                           1633 	.globl	_lineCount
                           1634 	.area	.data
   C880                    1635 _lineCount:
   C880 00                 1636 	.byte	0
                           1637 	.globl	_endX
   C881                    1638 _endX:
   C881 00                 1639 	.byte	0
                           1640 	.globl	_endY
   C882                    1641 _endY:
   C882 00                 1642 	.byte	0
                           1643 	.globl	_levelNumber
   C883                    1644 _levelNumber:
   C883 00                 1645 	.byte	0
                           1646 	.globl	_shifts
                           1647 	.area	.text
   3D11                    1648 _shifts:
   3D11 01                 1649 	.byte	1
   3D12 02                 1650 	.byte	2
   3D13 04                 1651 	.byte	4
   3D14 08                 1652 	.byte	8
   3D15 10                 1653 	.byte	16
   3D16 20                 1654 	.byte	32
   3D17 40                 1655 	.byte	64
   3D18 80                 1656 	.byte	-128
                           1657 	.area	.bss
                           1658 	.globl	_level
   C8F2                    1659 _level:	.blkb	2
                           1660 	.globl	_swatchesOn
   C8F4                    1661 _swatchesOn:	.blkb	19
                           1662 	.globl	_lineX0
   C907                    1663 _lineX0:	.blkb	120
                           1664 	.globl	_lineY0
   C97F                    1665 _lineY0:	.blkb	120
                           1666 	.globl	_lineX1
   C9F7                    1667 _lineX1:	.blkb	120
                           1668 	.globl	_lineY1
   CA6F                    1669 _lineY1:	.blkb	120
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$level$100        0047 GR  |   2 A$level$1002       04C2 GR
  2 A$level$101        0048 GR  |   2 A$level$1014       04C4 GR
  2 A$level$1015       04C6 GR  |   2 A$level$102        004A GR
  2 A$level$1028       04C8 GR  |   2 A$level$1029       04CA GR
  2 A$level$1030       04CC GR  |   2 A$level$1031       04CE GR
  2 A$level$1038       04D0 GR  |   2 A$level$1039       04D2 GR
  2 A$level$1040       04D4 GR  |   2 A$level$1041       04D6 GR
  2 A$level$1042       04D9 GR  |   2 A$level$1043       04DB GR
  2 A$level$1044       04DC GR  |   2 A$level$1045       04DE GR
  2 A$level$1046       04E0 GR  |   2 A$level$1047       04E1 GR
  2 A$level$1048       04E3 GR  |   2 A$level$1049       04E5 GR
  2 A$level$105        004B GR  |   2 A$level$1050       04E7 GR
  2 A$level$1051       04E9 GR  |   2 A$level$1052       04EC GR
  2 A$level$1053       04EE GR  |   2 A$level$1054       04EF GR
  2 A$level$106        004D GR  |   2 A$level$1061       04F1 GR
  2 A$level$1062       04F3 GR  |   2 A$level$1063       04F5 GR
  2 A$level$1064       04F7 GR  |   2 A$level$107        004F GR
  2 A$level$1071       04F9 GR  |   2 A$level$1072       04FB GR
  2 A$level$1073       04FD GR  |   2 A$level$1080       04FF GR
  2 A$level$1081       0501 GR  |   2 A$level$1087       0503 GR
  2 A$level$1088       0505 GR  |   2 A$level$1089       0507 GR
  2 A$level$1090       0508 GR  |   2 A$level$1091       050A GR
  2 A$level$1092       050C GR  |   2 A$level$1093       050E GR
  2 A$level$1094       0510 GR  |   2 A$level$1095       0512 GR
  2 A$level$1096       0514 GR  |   2 A$level$1102       0517 GR
  2 A$level$1103       0519 GR  |   2 A$level$1104       051B GR
  2 A$level$1106       051D GR  |   2 A$level$1107       051F GR
  2 A$level$1108       0521 GR  |   2 A$level$1109       0523 GR
  2 A$level$1110       0527 GR  |   2 A$level$1111       0529 GR
  2 A$level$1112       052B GR  |   2 A$level$1113       052D GR
  2 A$level$1114       0531 GR  |   2 A$level$1115       0533 GR
  2 A$level$1118       0534 GR  |   2 A$level$1119       0536 GR
  2 A$level$113        0051 GR  |   2 A$level$1137       0538 GR
  2 A$level$1138       053C GR  |   2 A$level$1139       053E GR
  2 A$level$114        0053 GR  |   2 A$level$1141       0540 GR
  2 A$level$1142       0542 GR  |   2 A$level$1143       0543 GR
  2 A$level$115        0055 GR  |   2 A$level$1155       0545 GR
  2 A$level$1156       0547 GR  |   2 A$level$1157       0549 GR
  2 A$level$1158       054B GR  |   2 A$level$1159       054D GR
  2 A$level$116        0056 GR  |   2 A$level$1160       054F GR
  2 A$level$1162       0551 GR  |   2 A$level$1163       0553 GR
  2 A$level$1164       0554 GR  |   2 A$level$117        0058 GR
  2 A$level$1176       0556 GR  |   2 A$level$1177       0558 GR
  2 A$level$1178       055A GR  |   2 A$level$1179       055C GR
  2 A$level$118        005A GR  |   2 A$level$1185       055E GR
  2 A$level$1186       0560 GR  |   2 A$level$1188       0562 GR
  2 A$level$119        005B GR  |   2 A$level$1195       0563 GR
  2 A$level$1196       0565 GR  |   2 A$level$120        005D GR
  2 A$level$1202       0567 GR  |   2 A$level$1203       0569 GR
  2 A$level$1204       056B GR  |   2 A$level$1205       056D GR
  2 A$level$121        005F GR  |   2 A$level$1211       0570 GR
  2 A$level$1212       0572 GR  |   2 A$level$1218       0575 GR
  2 A$level$1219       0577 GR  |   2 A$level$1220       057A GR
  2 A$level$1221       057C GR  |   2 A$level$1223       057F GR
  2 A$level$1224       0581 GR  |   2 A$level$1230       0583 GR
  2 A$level$1231       0585 GR  |   2 A$level$1232       0587 GR
  2 A$level$1233       0589 GR  |   2 A$level$1234       058C GR
  2 A$level$1235       058E GR  |   2 A$level$1237       0591 GR
  2 A$level$1238       0593 GR  |   2 A$level$1244       0595 GR
  2 A$level$1245       0597 GR  |   2 A$level$1246       0599 GR
  2 A$level$1247       059B GR  |   2 A$level$1248       059D GR
  2 A$level$1249       059F GR  |   2 A$level$1250       05A1 GR
  2 A$level$1251       05A3 GR  |   2 A$level$1252       05A5 GR
  2 A$level$1253       05A8 GR  |   2 A$level$1254       05AA GR
  2 A$level$1256       05AC GR  |   2 A$level$1257       05AE GR
  2 A$level$1263       05B0 GR  |   2 A$level$1264       05B2 GR
  2 A$level$1265       05B4 GR  |   2 A$level$1266       05B6 GR
  2 A$level$1267       05B8 GR  |   2 A$level$1268       05BA GR
  2 A$level$1269       05BC GR  |   2 A$level$1270       05BE GR
  2 A$level$1271       05C0 GR  |   2 A$level$1272       05C3 GR
  2 A$level$1273       05C5 GR  |   2 A$level$1275       05C7 GR
  2 A$level$1276       05C9 GR  |   2 A$level$1282       05CB GR
  2 A$level$1283       05CD GR  |   2 A$level$1284       05CF GR
  2 A$level$1285       05D1 GR  |   2 A$level$1286       05D3 GR
  2 A$level$1287       05D5 GR  |   2 A$level$1288       05D7 GR
  2 A$level$1289       05D9 GR  |   2 A$level$1290       05DB GR
  2 A$level$1291       05DD GR  |   2 A$level$1292       05E0 GR
  2 A$level$1299       05E2 GR  |   2 A$level$1300       05E4 GR
  2 A$level$1301       05E6 GR  |   2 A$level$1302       05E8 GR
  2 A$level$1303       05EB GR  |   2 A$level$1304       05ED GR
  2 A$level$1305       05EE GR  |   2 A$level$1306       05F0 GR
  2 A$level$1307       05F2 GR  |   2 A$level$1308       05F4 GR
  2 A$level$1309       05F6 GR  |   2 A$level$1310       05F8 GR
  2 A$level$1311       05FB GR  |   2 A$level$1312       05FD GR
  2 A$level$1313       05FE GR  |   2 A$level$1320       0600 GR
  2 A$level$1321       0602 GR  |   2 A$level$1322       0604 GR
  2 A$level$1323       0606 GR  |   2 A$level$133        0061 GR
  2 A$level$1330       0608 GR  |   2 A$level$1331       060A GR
  2 A$level$1332       060C GR  |   2 A$level$1339       060E GR
  2 A$level$134        0063 GR  |   2 A$level$1340       0610 GR
  2 A$level$1346       0612 GR  |   2 A$level$1347       0614 GR
  2 A$level$1348       0616 GR  |   2 A$level$1349       0618 GR
  2 A$level$135        0064 GR  |   2 A$level$1350       061A GR
  2 A$level$1351       061B GR  |   2 A$level$1352       061D GR
  2 A$level$1353       061F GR  |   2 A$level$1354       0621 GR
  2 A$level$1355       0623 GR  |   2 A$level$136        0065 GR
  2 A$level$1361       0626 GR  |   2 A$level$1362       0628 GR
  2 A$level$1363       062A GR  |   2 A$level$1365       062C GR
  2 A$level$1366       062E GR  |   2 A$level$1367       0630 GR
  2 A$level$1368       0632 GR  |   2 A$level$1369       0634 GR
  2 A$level$137        0066 GR  |   2 A$level$1370       0638 GR
  2 A$level$1371       063A GR  |   2 A$level$1372       063C GR
  2 A$level$1373       063E GR  |   2 A$level$1374       0640 GR
  2 A$level$1375       0644 GR  |   2 A$level$1376       0646 GR
  2 A$level$138        0067 GR  |   2 A$level$1384       0648 GR
  2 A$level$139        0068 GR  |   2 A$level$1390       064B GR
  2 A$level$1396       064E GR  |   2 A$level$1397       0651 GR
  2 A$level$140        0069 GR  |   2 A$level$1400       0652 GR
  2 A$level$1401       0654 GR  |   2 A$level$1402       0656 GR
  2 A$level$1408       0658 GR  |   2 A$level$1409       065B GR
  2 A$level$141        006B GR  |   2 A$level$1415       065F GR
  2 A$level$1416       0662 GR  |   2 A$level$1417       0664 GR
  2 A$level$1418       0668 GR  |   2 A$level$142        006F GR
  2 A$level$1425       066A GR  |   2 A$level$1426       066C GR
  2 A$level$1427       066D GR  |   2 A$level$1428       066F GR
  2 A$level$1429       0670 GR  |   2 A$level$143        0071 GR
  2 A$level$1430       0671 GR  |   2 A$level$1431       0673 GR
  2 A$level$1437       0675 GR  |   2 A$level$1438       0677 GR
  2 A$level$1439       0679 GR  |   2 A$level$144        0073 GR
  2 A$level$1440       067D GR  |   2 A$level$1441       067F GR
  2 A$level$1442       0681 GR  |   2 A$level$1448       0685 GR
  2 A$level$1449       0687 GR  |   2 A$level$145        0075 GR
  2 A$level$1450       068B GR  |   2 A$level$1457       068D GR
  2 A$level$1458       068F GR  |   2 A$level$1459       0690 GR
  2 A$level$146        0078 GR  |   2 A$level$1460       0693 GR
  2 A$level$1461       0694 GR  |   2 A$level$1462       0695 GR
  2 A$level$1463       0697 GR  |   2 A$level$1469       0699 GR
  2 A$level$147        007A GR  |   2 A$level$1470       069B GR
  2 A$level$1476       069D GR  |   2 A$level$1477       069F GR
  2 A$level$148        007C GR  |   2 A$level$1483       06A1 GR
  2 A$level$1484       06A3 GR  |   2 A$level$1485       06A5 GR
  2 A$level$1486       06A9 GR  |   2 A$level$1487       06AA GR
  2 A$level$1488       06AC GR  |   2 A$level$1489       06AD GR
  2 A$level$1490       06AE GR  |   2 A$level$1491       06B0 GR
  2 A$level$150        007E GR  |   2 A$level$1504       06BE GR
  2 A$level$1505       06C0 GR  |   2 A$level$1506       06C2 GR
  2 A$level$1507       06C4 GR  |   2 A$level$1508       06C7 GR
  2 A$level$1509       06C8 GR  |   2 A$level$151        0080 GR
  2 A$level$1510       06C9 GR  |   2 A$level$1511       06CC GR
  2 A$level$1512       06CE GR  |   2 A$level$1513       06CF GR
  2 A$level$1514       06D0 GR  |   2 A$level$1515       06D1 GR
  2 A$level$1516       06D3 GR  |   2 A$level$1517       06D5 GR
  2 A$level$1518       06D7 GR  |   2 A$level$1519       06D9 GR
  2 A$level$1520       06DB GR  |   2 A$level$1526       06DE GR
  2 A$level$1527       06E0 GR  |   2 A$level$1534       06E3 GR
  2 A$level$1535       06E5 GR  |   2 A$level$1536       06E7 GR
  2 A$level$1537       06E9 GR  |   2 A$level$1538       06EB GR
  2 A$level$1539       06ED GR  |   2 A$level$154        0082 GR
  2 A$level$1545       06F0 GR  |   2 A$level$1546       06F2 GR
  2 A$level$155        0084 GR  |   2 A$level$1553       06F5 GR
  2 A$level$1554       06F7 GR  |   2 A$level$1555       06F9 GR
  2 A$level$1556       06FB GR  |   2 A$level$1557       06FD GR
  2 A$level$156        0086 GR  |   2 A$level$1563       0700 GR
  2 A$level$1564       0702 GR  |   2 A$level$1571       0704 GR
  2 A$level$1572       0706 GR  |   2 A$level$1578       0709 GR
  2 A$level$1579       070B GR  |   2 A$level$1585       070E GR
  2 A$level$1591       0711 GR  |   2 A$level$1598       0713 GR
  2 A$level$1599       0715 GR  |   2 A$level$1605       0718 GR
  2 A$level$1606       071A GR  |   2 A$level$1613       071D GR
  2 A$level$1614       071F GR  |   2 A$level$1615       0721 GR
  2 A$level$1616       0723 GR  |   2 A$level$1618       0727 GR
  2 A$level$1619       0729 GR  |   2 A$level$162        0088 GR
  2 A$level$1620       072C GR  |   2 A$level$1621       072E GR
  2 A$level$1622       0730 GR  |   2 A$level$1629       0734 GR
  2 A$level$163        008A GR  |   2 A$level$1631       0737 GR
  2 A$level$1632       0739 GR  |   2 A$level$164        008C GR
  2 A$level$165        008D GR  |   2 A$level$166        008F GR
  2 A$level$167        0091 GR  |   2 A$level$169        0092 GR
  2 A$level$172        0094 GR  |   2 A$level$178        0096 GR
  2 A$level$179        0098 GR  |   2 A$level$180        009A GR
  2 A$level$186        009C GR  |   2 A$level$187        009E GR
  2 A$level$188        009F GR  |   2 A$level$189        00A0 GR
  2 A$level$190        00A1 GR  |   2 A$level$191        00A2 GR
  2 A$level$192        00A3 GR  |   2 A$level$198        00A4 GR
  2 A$level$199        00A6 GR  |   2 A$level$205        00A8 GR
  2 A$level$206        00AB GR  |   2 A$level$207        00AD GR
  2 A$level$208        00AF GR  |   2 A$level$209        00B1 GR
  2 A$level$210        00B3 GR  |   2 A$level$211        00B6 GR
  2 A$level$212        00B8 GR  |   2 A$level$213        00BA GR
  2 A$level$220        00BC GR  |   2 A$level$221        00BF GR
  2 A$level$222        00C1 GR  |   2 A$level$223        00C3 GR
  2 A$level$224        00C5 GR  |   2 A$level$225        00C7 GR
  2 A$level$226        00CA GR  |   2 A$level$227        00CB GR
  2 A$level$228        00CD GR  |   2 A$level$230        00CF GR
  2 A$level$231        00D1 GR  |   2 A$level$234        00D3 GR
  2 A$level$235        00D5 GR  |   2 A$level$241        00D7 GR
  2 A$level$242        00D9 GR  |   2 A$level$243        00DB GR
  2 A$level$244        00DD GR  |   2 A$level$245        00E0 GR
  2 A$level$251        00E2 GR  |   2 A$level$252        00E4 GR
  2 A$level$253        00E6 GR  |   2 A$level$254        00E8 GR
  2 A$level$255        00EA GR  |   2 A$level$256        00EC GR
  2 A$level$257        00EE GR  |   2 A$level$258        00F0 GR
  2 A$level$259        00F2 GR  |   2 A$level$266        00F4 GR
  2 A$level$267        00F6 GR  |   2 A$level$268        00F8 GR
  2 A$level$269        00FA GR  |   2 A$level$270        00FD GR
  2 A$level$271        00FF GR  |   2 A$level$272        0100 GR
  2 A$level$278        0102 GR  |   2 A$level$279        0104 GR
  2 A$level$286        0106 GR  |   2 A$level$287        0108 GR
  2 A$level$288        010A GR  |   2 A$level$289        010C GR
  2 A$level$290        010E GR  |   2 A$level$291        0110 GR
  2 A$level$292        0112 GR  |   2 A$level$293        0114 GR
  2 A$level$294        0116 GR  |   2 A$level$295        0118 GR
  2 A$level$296        011A GR  |   2 A$level$297        011C GR
  2 A$level$298        011E GR  |   2 A$level$299        0120 GR
  2 A$level$300        0121 GR  |   2 A$level$301        0124 GR
  2 A$level$302        0126 GR  |   2 A$level$303        0127 GR
  2 A$level$304        0128 GR  |   2 A$level$305        0129 GR
  2 A$level$306        012B GR  |   2 A$level$308        012D GR
  2 A$level$310        012F GR  |   2 A$level$311        0131 GR
  2 A$level$314        0132 GR  |   2 A$level$315        0134 GR
  2 A$level$316        0136 GR  |   2 A$level$325        0138 GR
  2 A$level$326        013A GR  |   2 A$level$327        013C GR
  2 A$level$328        013D GR  |   2 A$level$329        013F GR
  2 A$level$330        0141 GR  |   2 A$level$331        0142 GR
  2 A$level$332        0144 GR  |   2 A$level$333        0145 GR
  2 A$level$334        0147 GR  |   2 A$level$335        0149 GR
  2 A$level$336        014B GR  |   2 A$level$337        014D GR
  2 A$level$338        014F GR  |   2 A$level$339        0151 GR
  2 A$level$34         0000 GR  |   2 A$level$342        0153 GR
  2 A$level$343        0155 GR  |   2 A$level$35         0002 GR
  2 A$level$352        0157 GR  |   2 A$level$353        0159 GR
  2 A$level$354        015B GR  |   2 A$level$355        015D GR
  2 A$level$356        015E GR  |   2 A$level$357        0160 GR
  2 A$level$358        0162 GR  |   2 A$level$359        0163 GR
  2 A$level$36         0004 GR  |   2 A$level$360        0164 GR
  2 A$level$361        0165 GR  |   2 A$level$362        0167 GR
  2 A$level$363        0169 GR  |   2 A$level$364        016B GR
  2 A$level$365        016D GR  |   2 A$level$366        016F GR
  2 A$level$367        0170 GR  |   2 A$level$368        0172 GR
  2 A$level$369        0174 GR  |   2 A$level$370        0176 GR
  2 A$level$373        0177 GR  |   2 A$level$374        0179 GR
  2 A$level$375        017B GR  |   2 A$level$381        017D GR
  2 A$level$382        0180 GR  |   2 A$level$383        0182 GR
  2 A$level$384        0185 GR  |   2 A$level$385        0187 GR
  2 A$level$386        0189 GR  |   2 A$level$387        018C GR
  2 A$level$388        018E GR  |   2 A$level$389        0190 GR
  2 A$level$390        0191 GR  |   2 A$level$391        0193 GR
  2 A$level$392        0195 GR  |   2 A$level$398        0199 GR
  2 A$level$399        019C GR  |   2 A$level$400        019E GR
  2 A$level$401        01A1 GR  |   2 A$level$402        01A3 GR
  2 A$level$403        01A5 GR  |   2 A$level$404        01A7 GR
  2 A$level$405        01AA GR  |   2 A$level$406        01AC GR
  2 A$level$407        01AE GR  |   2 A$level$408        01AF GR
  2 A$level$409        01B1 GR  |   2 A$level$410        01B3 GR
  2 A$level$416        01B7 GR  |   2 A$level$417        01BA GR
  2 A$level$418        01BC GR  |   2 A$level$419        01BF GR
  2 A$level$420        01C0 GR  |   2 A$level$421        01C2 GR
  2 A$level$422        01C4 GR  |   2 A$level$423        01C5 GR
  2 A$level$424        01C7 GR  |   2 A$level$425        01C9 GR
  2 A$level$426        01CB GR  |   2 A$level$427        01CD GR
  2 A$level$428        01D0 GR  |   2 A$level$429        01D2 GR
  2 A$level$430        01D4 GR  |   2 A$level$431        01D5 GR
  2 A$level$432        01D7 GR  |   2 A$level$433        01D9 GR
  2 A$level$439        01DD GR  |   2 A$level$440        01E0 GR
  2 A$level$441        01E3 GR  |   2 A$level$442        01E5 GR
  2 A$level$443        01E7 GR  |   2 A$level$444        01E9 GR
  2 A$level$445        01EB GR  |   2 A$level$446        01EE GR
  2 A$level$447        01F0 GR  |   2 A$level$448        01F3 GR
  2 A$level$449        01F4 GR  |   2 A$level$45         0006 GR
  2 A$level$450        01F6 GR  |   2 A$level$451        01F8 GR
  2 A$level$457        01FC GR  |   2 A$level$458        01FF GR
  2 A$level$459        0200 GR  |   2 A$level$46         0007 GR
  2 A$level$460        0202 GR  |   2 A$level$466        0205 GR
  2 A$level$467        0208 GR  |   2 A$level$468        020A GR
  2 A$level$469        020C GR  |   2 A$level$47         0009 GR
  2 A$level$470        020F GR  |   2 A$level$471        0211 GR
  2 A$level$472        0213 GR  |   2 A$level$473        0214 GR
  2 A$level$474        0216 GR  |   2 A$level$475        021A GR
  2 A$level$476        021C GR  |   2 A$level$48         000B GR
  2 A$level$482        021E GR  |   2 A$level$483        0221 GR
  2 A$level$484        0224 GR  |   2 A$level$485        0227 GR
  2 A$level$486        0229 GR  |   2 A$level$487        022B GR
  2 A$level$488        022D GR  |   2 A$level$489        0230 GR
  2 A$level$49         000D GR  |   2 A$level$490        0233 GR
  2 A$level$491        0236 GR  |   2 A$level$492        0237 GR
  2 A$level$493        0239 GR  |   2 A$level$494        023D GR
  2 A$level$495        0240 GR  |   2 A$level$50         000F GR
  2 A$level$501        0242 GR  |   2 A$level$502        0245 GR
  2 A$level$503        0248 GR  |   2 A$level$504        024A GR
  2 A$level$505        024C GR  |   2 A$level$506        024E GR
  2 A$level$507        0250 GR  |   2 A$level$508        0253 GR
  2 A$level$509        0255 GR  |   2 A$level$51         0011 GR
  2 A$level$510        0257 GR  |   2 A$level$511        0258 GR
  2 A$level$512        025A GR  |   2 A$level$513        025E GR
  2 A$level$514        0260 GR  |   2 A$level$52         0013 GR
  2 A$level$520        0262 GR  |   2 A$level$521        0265 GR
  2 A$level$522        0268 GR  |   2 A$level$523        026A GR
  2 A$level$524        026C GR  |   2 A$level$525        026E GR
  2 A$level$526        0270 GR  |   2 A$level$527        0273 GR
  2 A$level$528        0275 GR  |   2 A$level$529        0278 GR
  2 A$level$53         0015 GR  |   2 A$level$530        0279 GR
  2 A$level$531        027B GR  |   2 A$level$532        027F GR
  2 A$level$533        0281 GR  |   2 A$level$539        0283 GR
  2 A$level$540        0286 GR  |   2 A$level$541        0289 GR
  2 A$level$544        028B GR  |   2 A$level$545        028D GR
  2 A$level$551        028F GR  |   2 A$level$558        0292 GR
  2 A$level$559        0294 GR  |   2 A$level$560        0297 GR
  2 A$level$578        0299 GR  |   2 A$level$579        029E GR
  2 A$level$586        02A0 GR  |   2 A$level$587        02A2 GR
  2 A$level$59         0017 GR  |   2 A$level$597        02A4 GR
  2 A$level$60         0018 GR  |   2 A$level$603        02A6 GR
  2 A$level$604        02A8 GR  |   2 A$level$605        02AA GR
  2 A$level$606        02AC GR  |   2 A$level$61         001A GR
  2 A$level$613        02AE GR  |   2 A$level$614        02B0 GR
  2 A$level$615        02B2 GR  |   2 A$level$616        02B4 GR
  2 A$level$617        02B6 GR  |   2 A$level$618        02B8 GR
  2 A$level$619        02BB GR  |   2 A$level$62         001C GR
  2 A$level$621        02BD GR  |   2 A$level$622        02BF GR
  2 A$level$623        02C1 GR  |   2 A$level$624        02C3 GR
  2 A$level$625        02C5 GR  |   2 A$level$626        02C7 GR
  2 A$level$627        02C9 GR  |   2 A$level$628        02CB GR
  2 A$level$629        02CD GR  |   2 A$level$63         001D GR
  2 A$level$630        02CF GR  |   2 A$level$631        02D3 GR
  2 A$level$632        02D5 GR  |   2 A$level$638        02E7 GR
  2 A$level$639        02E9 GR  |   2 A$level$64         001F GR
  2 A$level$645        02EB GR  |   2 A$level$646        02EE GR
  2 A$level$647        02F0 GR  |   2 A$level$648        02F2 GR
  2 A$level$649        02F4 GR  |   2 A$level$65         0021 GR
  2 A$level$650        02F6 GR  |   2 A$level$651        02F9 GR
  2 A$level$652        02FB GR  |   2 A$level$653        02FD GR
  2 A$level$654        02FE GR  |   2 A$level$655        0300 GR
  2 A$level$656        0302 GR  |   2 A$level$657        0304 GR
  2 A$level$66         0022 GR  |   2 A$level$663        0308 GR
  2 A$level$664        030B GR  |   2 A$level$665        030D GR
  2 A$level$666        030F GR  |   2 A$level$667        0311 GR
  2 A$level$668        0313 GR  |   2 A$level$669        0315 GR
  2 A$level$67         0023 GR  |   2 A$level$670        0318 GR
  2 A$level$671        031A GR  |   2 A$level$672        031C GR
  2 A$level$673        031D GR  |   2 A$level$674        031F GR
  2 A$level$675        0321 GR  |   2 A$level$676        0323 GR
  2 A$level$68         0025 GR  |   2 A$level$682        0327 GR
  2 A$level$683        032A GR  |   2 A$level$684        032C GR
  2 A$level$685        032E GR  |   2 A$level$686        032F GR
  2 A$level$687        0331 GR  |   2 A$level$688        0333 GR
  2 A$level$689        0335 GR  |   2 A$level$69         0026 GR
  2 A$level$690        0338 GR  |   2 A$level$691        033A GR
  2 A$level$692        033C GR  |   2 A$level$693        033D GR
  2 A$level$694        033F GR  |   2 A$level$695        0341 GR
  2 A$level$696        0343 GR  |   2 A$level$70         0027 GR
  2 A$level$702        0347 GR  |   2 A$level$703        034A GR
  2 A$level$704        034C GR  |   2 A$level$705        034E GR
  2 A$level$706        0350 GR  |   2 A$level$707        0352 GR
  2 A$level$708        0354 GR  |   2 A$level$709        0357 GR
  2 A$level$71         0028 GR  |   2 A$level$710        0359 GR
  2 A$level$711        035B GR  |   2 A$level$712        035C GR
  2 A$level$713        035E GR  |   2 A$level$714        0360 GR
  2 A$level$72         0029 GR  |   2 A$level$720        0364 GR
  2 A$level$721        0367 GR  |   2 A$level$722        0368 GR
  2 A$level$728        036B GR  |   2 A$level$729        036D GR
  2 A$level$73         002B GR  |   2 A$level$730        036F GR
  2 A$level$736        0371 GR  |   2 A$level$737        0374 GR
  2 A$level$739        0377 GR  |   2 A$level$74         002D GR
  2 A$level$740        0379 GR  |   2 A$level$743        037A GR
  2 A$level$744        037C GR  |   2 A$level$75         002F GR
  2 A$level$750        037E GR  |   2 A$level$751        0381 GR
  2 A$level$752        0383 GR  |   2 A$level$753        0385 GR
  2 A$level$754        0387 GR  |   2 A$level$755        0389 GR
  2 A$level$756        038C GR  |   2 A$level$757        038E GR
  2 A$level$758        0390 GR  |   2 A$level$759        0391 GR
  2 A$level$76         0031 GR  |   2 A$level$760        0393 GR
  2 A$level$761        0395 GR  |   2 A$level$767        0399 GR
  2 A$level$768        039C GR  |   2 A$level$769        039E GR
  2 A$level$77         0033 GR  |   2 A$level$770        03A0 GR
  2 A$level$771        03A2 GR  |   2 A$level$772        03A4 GR
  2 A$level$773        03A6 GR  |   2 A$level$774        03A9 GR
  2 A$level$775        03AB GR  |   2 A$level$776        03AD GR
  2 A$level$777        03AE GR  |   2 A$level$778        03B0 GR
  2 A$level$779        03B2 GR  |   2 A$level$78         0035 GR
  2 A$level$785        03B6 GR  |   2 A$level$786        03B9 GR
  2 A$level$787        03BB GR  |   2 A$level$788        03BD GR
  2 A$level$789        03BF GR  |   2 A$level$79         0039 GR
  2 A$level$790        03C1 GR  |   2 A$level$791        03C4 GR
  2 A$level$792        03C6 GR  |   2 A$level$793        03C8 GR
  2 A$level$794        03C9 GR  |   2 A$level$795        03CB GR
  2 A$level$796        03CD GR  |   2 A$level$80         003B GR
  2 A$level$802        03D1 GR  |   2 A$level$803        03D4 GR
  2 A$level$804        03D6 GR  |   2 A$level$805        03D8 GR
  2 A$level$806        03DA GR  |   2 A$level$807        03DC GR
  2 A$level$808        03DE GR  |   2 A$level$809        03E1 GR
  2 A$level$81         003D GR  |   2 A$level$810        03E3 GR
  2 A$level$811        03E5 GR  |   2 A$level$812        03E6 GR
  2 A$level$813        03E8 GR  |   2 A$level$814        03EA GR
  2 A$level$820        03EE GR  |   2 A$level$821        03F0 GR
  2 A$level$822        03F2 GR  |   2 A$level$828        03F4 GR
  2 A$level$829        03F7 GR  |   2 A$level$83         003F GR
  2 A$level$830        03F8 GR  |   2 A$level$831        03FA GR
  2 A$level$837        03FE GR  |   2 A$level$838        0402 GR
  2 A$level$839        0404 GR  |   2 A$level$845        0408 GR
  2 A$level$846        040C GR  |   2 A$level$847        040E GR
  2 A$level$853        0412 GR  |   2 A$level$854        0416 GR
  2 A$level$855        0418 GR  |   2 A$level$862        041C GR
  2 A$level$863        041F GR  |   2 A$level$864        0420 GR
  2 A$level$870        0423 GR  |   2 A$level$871        0425 GR
  2 A$level$877        0427 GR  |   2 A$level$878        042A GR
  2 A$level$880        042D GR  |   2 A$level$881        042F GR
  2 A$level$884        0430 GR  |   2 A$level$885        0432 GR
  2 A$level$894        0434 GR  |   2 A$level$895        0436 GR
  2 A$level$896        0438 GR  |   2 A$level$897        043A GR
  2 A$level$898        043C GR  |   2 A$level$90         0040 GR
  2 A$level$905        043E GR  |   2 A$level$906        0440 GR
  2 A$level$907        0442 GR  |   2 A$level$908        0444 GR
  2 A$level$909        0446 GR  |   2 A$level$91         0042 GR
  2 A$level$910        0448 GR  |   2 A$level$911        044A GR
  2 A$level$912        044C GR  |   2 A$level$913        044E GR
  2 A$level$914        0450 GR  |   2 A$level$915        0452 GR
  2 A$level$916        0454 GR  |   2 A$level$917        0456 GR
  2 A$level$923        0459 GR  |   2 A$level$924        045B GR
  2 A$level$925        045D GR  |   2 A$level$926        045F GR
  2 A$level$927        0461 GR  |   2 A$level$928        0463 GR
  2 A$level$929        0465 GR  |   2 A$level$930        0467 GR
  2 A$level$931        0469 GR  |   2 A$level$933        046B GR
  2 A$level$934        046D GR  |   2 A$level$941        046F GR
  2 A$level$942        0471 GR  |   2 A$level$943        0473 GR
  2 A$level$944        0475 GR  |   2 A$level$945        0477 GR
  2 A$level$952        0479 GR  |   2 A$level$953        047B GR
  2 A$level$954        047D GR  |   2 A$level$955        047F GR
  2 A$level$956        0481 GR  |   2 A$level$957        0483 GR
  2 A$level$958        0485 GR  |   2 A$level$959        0487 GR
  2 A$level$960        0489 GR  |   2 A$level$961        048B GR
  2 A$level$962        048D GR  |   2 A$level$963        048F GR
  2 A$level$964        0491 GR  |   2 A$level$970        0494 GR
  2 A$level$971        0496 GR  |   2 A$level$972        0498 GR
  2 A$level$973        049A GR  |   2 A$level$974        049C GR
  2 A$level$975        049E GR  |   2 A$level$976        04A0 GR
  2 A$level$977        04A2 GR  |   2 A$level$978        04A4 GR
  2 A$level$980        04A6 GR  |   2 A$level$981        04A8 GR
  2 A$level$988        04AA GR  |   2 A$level$989        04AC GR
  2 A$level$99         0044 GR  |   2 A$level$990        04AE GR
  2 A$level$991        04B0 GR  |   2 A$level$992        04B2 GR
  2 A$level$993        04B4 GR  |   2 A$level$994        04B6 GR
  2 A$level$995        04B8 GR  |   2 A$level$996        04BA GR
  2 A$level$997        04BC GR  |   2 A$level$998        04BF GR
  2 A$level$999        04C1 GR  |   2 L11                00BC R
  2 L13                00CF R   |   2 L15                00F4 R
  2 L16                0106 R   |   2 L17                012D R
  2 L19                012F R   |   2 L2                 003F R
  2 L28                0292 R   |   2 L29                02AE R
  2 L3                 0040 R   |   2 L30                02BD R
  2 L31                02A4 R   |   2 L32                02A0 R
  2 L39                0377 R   |   2 L41                041C R
  2 L43                042D R   |   2 L45                046F R
  2 L46                046B R   |   2 L47                043E R
  2 L48                04AA R   |   2 L49                04A6 R
  2 L50                0479 R   |   2 L53                04F1 R
  2 L54                04FF R   |   2 L55                04F9 R
  2 L56                051D R   |   2 L57                04D0 R
  2 L58                04C8 R   |   2 L63                0562 R
  2 L64                0563 R   |   2 L65                057F R
  2 L66                05E2 R   |   2 L67                0591 R
  2 L68                05AC R   |   2 L69                05C7 R
  2 L70                0600 R   |   2 L71                060E R
  2 L72                0608 R   |   2 L73                062C R
  2 L74                0551 R   |   2 L75                0540 R
  2 L8                 007E R   |   2 L83                0734 R
  2 L84                0727 R   |   2 L85                071D R
  2 L86                06BE R   |   2 L87                06E3 R
  2 L88                06F5 R   |   2 L89                0704 R
  2 L90                0713 R   |   2 L91                06B4 R
  2 L93                068D R   |   2 L94                066A R
  2 L95                0737 R   |   2 LC0                02D7 R
  2 _addLine           0430 GR  |   2 _addLineImpl       037A GR
  2 _addSplit          02E7 GR  |   2 _addTarget         0177 GR
    _blockX            **** GX  |     _blockX2           **** GX
    _blockY            **** GX  |     _blockY2           **** GX
  3 _endX              0001 GR  |   3 _endY              0002 GR
  2 _getField          0000 GR  |   2 _getShifts         0044 GR
  2 _initLevel         0648 GR  |   2 _initSwatches      028B GR
  2 _isField           00D3 GR  |   2 _isSwatchField     004B GR
  4 _level             0000 GR  |   3 _levelNumber       0003 GR
  3 _lineCount         0000 GR  |   4 _lineX0            0015 GR
  4 _lineX1            0105 GR  |   4 _lineY0            008D GR
  4 _lineY1            017D GR  |     _runtimeError      **** GX
    _setSplitMode      **** GX  |   2 _setSwatchFiel     0082 GR
  2 _setupX            0534 GR  |   2 _setupY            04C2 GR
  2 _shifts            073B GR  |     _splitMode         **** GX
  2 _swatchSwitch      0652 GR  |   4 _swatchesOn        0002 GR
  2 _x3d               0132 GR  |   2 _y3d               0153 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  743   flags  100
   3 .data            size    4   flags  100
   4 .bss             size  1F5   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

