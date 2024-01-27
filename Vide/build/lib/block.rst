                              1 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	block.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -IC:\data\Vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
                             12 ;  -DOMMIT_FRAMEPOINTER=1 C:\data\Vide\..\bloxorz\Vide\source\block.enr.c
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
                             31 	.globl _moveBlockImpl
   0633                      32 _moveBlockImpl:
   0633 32 7F         [ 5]   33 	leas	-1,s	; ,,
   0635 E7 E4         [ 4]   34 	stb	,s	;  move, move
                             35 ;----- asm -----
                             36 ;  29 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             37 	; #ENR#[28]    blockAnimating = 1;
                             38 ;  0 "" 2
                             39 ;--- end asm ---
   0637 C6 01         [ 2]   40 	ldb	#1	; ,
   0639 F7 C8 E5      [ 5]   41 	stb	_blockAnimating	; , blockAnimating
                             42 ;----- asm -----
                             43 ;  31 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             44 	; #ENR#[29]    lastBlockDirection = move;
                             45 ;  0 "" 2
                             46 ;--- end asm ---
   063C E6 E4         [ 4]   47 	ldb	,s	; , move
   063E F7 C8 E4      [ 5]   48 	stb	_lastBlockDirection	; , lastBlockDirection
                             49 ;----- asm -----
                             50 ;  33 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             51 	; #ENR#[30]    if (splitMode)
                             52 ;  0 "" 2
                             53 ;--- end asm ---
   0641 7D C8 E6      [ 7]   54 	tst	_splitMode	;  splitMode
   0644 10 27 00 84   [ 6]   55 	lbeq	L2	; 
                             56 ;----- asm -----
                             57 ;  36 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             58 	; #ENR#[32]        switch (blockOrientation)
                             59 ;  0 "" 2
                             60 ;--- end asm ---
   0648 7D C8 E2      [ 7]   61 	tst	_blockOrientation	;  blockOrientation
   064B 10 26 00 7A   [ 6]   62 	lbne	L30	; 
                             63 ;----- asm -----
                             64 ;  41 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             65 	; #ENR#[35]            switch (move)
                             66 ;  0 "" 2
                             67 ;--- end asm ---
   064F E6 E4         [ 4]   68 	ldb	,s	; , move
   0651 C1 01         [ 2]   69 	cmpb	#1	;cmpqi:	; ,
   0653 10 27 00 41   [ 6]   70 	lbeq	L7	; 
   0657 25 0D         [ 3]   71 	blo	L6	; 
   0659 C1 02         [ 2]   72 	cmpb	#2	;cmpqi:	; ,
   065B 27 22         [ 3]   73 	beq	L8	; 
   065D C1 03         [ 2]   74 	cmpb	#3	;cmpqi:	; ,
   065F 10 26 00 63   [ 6]   75 	lbne	L5	; 
   0663 7E 06 B0      [ 4]   76 	jmp	L31	; 
   0666                      77 L6:
                             78 ;----- asm -----
                             79 ;  46 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             80 	; #ENR#[38]                blockAnimation = height1FallingLeft;
                             81 ;  0 "" 2
                             82 ;--- end asm ---
   0666 8E 35 56      [ 3]   83 	ldx	#_height1FallingLeft	;  tmp29,
   0669 BF C8 EB      [ 6]   84 	stx	_blockAnimation	;  tmp29, blockAnimation
                             85 ;----- asm -----
                             86 ;  48 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             87 	; #ENR#[39]                nextBlockAnimation = height1FallingLeft;
                             88 ;  0 "" 2
                             89 ;--- end asm ---
   066C BF C8 ED      [ 6]   90 	stx	_nextBlockAnimation	;  tmp29, nextBlockAnimation
                             91 ;----- asm -----
                             92 ;  50 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                             93 	; #ENR#[40]                nextBlockX = blockX - 1;
                             94 ;  0 "" 2
                             95 ;--- end asm ---
   066F F6 C8 E7      [ 5]   96 	ldb	_blockX	; , blockX
   0672 5A            [ 2]   97 	decb	; 
   0673 F7 C8 F0      [ 5]   98 	stb	_nextBlockX	; , nextBlockX
                             99 ;----- asm -----
                            100 ;  52 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            101 	; #ENR#[41]                nextBlockY = blockY;
                            102 ;  0 "" 2
                            103 ;--- end asm ---
   0676 F6 C8 E8      [ 5]  104 	ldb	_blockY	; , blockY
   0679 F7 C8 F1      [ 5]  105 	stb	_nextBlockY	; , nextBlockY
                            106 ;----- asm -----
                            107 ;  54 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            108 	; #ENR#[42]                break;
                            109 ;  0 "" 2
                            110 ;--- end asm ---
   067C 7E 06 C6      [ 4]  111 	jmp	L5	; 
   067F                     112 L8:
                            113 ;----- asm -----
                            114 ;  58 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            115 	; #ENR#[44]                blockAnimation = height1FallingRight;
                            116 ;  0 "" 2
                            117 ;--- end asm ---
   067F 8E 35 6E      [ 3]  118 	ldx	#_height1FallingRight	;  tmp31,
   0682 BF C8 EB      [ 6]  119 	stx	_blockAnimation	;  tmp31, blockAnimation
                            120 ;----- asm -----
                            121 ;  60 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            122 	; #ENR#[45]                nextBlockAnimation = height1FallingRight;
                            123 ;  0 "" 2
                            124 ;--- end asm ---
   0685 BF C8 ED      [ 6]  125 	stx	_nextBlockAnimation	;  tmp31, nextBlockAnimation
                            126 ;----- asm -----
                            127 ;  62 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            128 	; #ENR#[46]                nextBlockX = blockX + 1;
                            129 ;  0 "" 2
                            130 ;--- end asm ---
   0688 F6 C8 E7      [ 5]  131 	ldb	_blockX	; , blockX
   068B 5C            [ 2]  132 	incb	; 
   068C F7 C8 F0      [ 5]  133 	stb	_nextBlockX	; , nextBlockX
                            134 ;----- asm -----
                            135 ;  64 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            136 	; #ENR#[47]                nextBlockY = blockY;
                            137 ;  0 "" 2
                            138 ;--- end asm ---
   068F F6 C8 E8      [ 5]  139 	ldb	_blockY	; , blockY
   0692 F7 C8 F1      [ 5]  140 	stb	_nextBlockY	; , nextBlockY
                            141 ;----- asm -----
                            142 ;  66 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            143 	; #ENR#[48]                break;
                            144 ;  0 "" 2
                            145 ;--- end asm ---
   0695 7E 06 C6      [ 4]  146 	jmp	L5	; 
   0698                     147 L7:
                            148 ;----- asm -----
                            149 ;  70 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            150 	; #ENR#[50]                blockAnimation = height1FallingBack;
                            151 ;  0 "" 2
                            152 ;--- end asm ---
   0698 8E 35 86      [ 3]  153 	ldx	#_height1FallingBack	;  tmp33,
   069B BF C8 EB      [ 6]  154 	stx	_blockAnimation	;  tmp33, blockAnimation
                            155 ;----- asm -----
                            156 ;  72 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            157 	; #ENR#[51]                nextBlockAnimation = height1FallingBack;
                            158 ;  0 "" 2
                            159 ;--- end asm ---
   069E BF C8 ED      [ 6]  160 	stx	_nextBlockAnimation	;  tmp33, nextBlockAnimation
                            161 ;----- asm -----
                            162 ;  74 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            163 	; #ENR#[52]                nextBlockX = blockX;
                            164 ;  0 "" 2
                            165 ;--- end asm ---
   06A1 F6 C8 E7      [ 5]  166 	ldb	_blockX	; , blockX
   06A4 F7 C8 F0      [ 5]  167 	stb	_nextBlockX	; , nextBlockX
                            168 ;----- asm -----
                            169 ;  76 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            170 	; #ENR#[53]                nextBlockY = blockY + 1;
                            171 ;  0 "" 2
                            172 ;--- end asm ---
   06A7 F6 C8 E8      [ 5]  173 	ldb	_blockY	; , blockY
   06AA 5C            [ 2]  174 	incb	; 
   06AB F7 C8 F1      [ 5]  175 	stb	_nextBlockY	; , nextBlockY
                            176 ;----- asm -----
                            177 ;  78 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            178 	; #ENR#[54]                break;
                            179 ;  0 "" 2
                            180 ;--- end asm ---
   06AE 20 16         [ 3]  181 	bra	L5	; 
   06B0                     182 L31:
                            183 ;----- asm -----
                            184 ;  82 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            185 	; #ENR#[56]                blockAnimation = height1FallingFront;
                            186 ;  0 "" 2
                            187 ;--- end asm ---
   06B0 8E 35 9E      [ 3]  188 	ldx	#_height1FallingFront	;  tmp35,
   06B3 BF C8 EB      [ 6]  189 	stx	_blockAnimation	;  tmp35, blockAnimation
                            190 ;----- asm -----
                            191 ;  84 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            192 	; #ENR#[57]                nextBlockAnimation = height1FallingFront;
                            193 ;  0 "" 2
                            194 ;--- end asm ---
   06B6 BF C8 ED      [ 6]  195 	stx	_nextBlockAnimation	;  tmp35, nextBlockAnimation
                            196 ;----- asm -----
                            197 ;  86 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            198 	; #ENR#[58]                nextBlockX = blockX;
                            199 ;  0 "" 2
                            200 ;--- end asm ---
   06B9 F6 C8 E7      [ 5]  201 	ldb	_blockX	; , blockX
   06BC F7 C8 F0      [ 5]  202 	stb	_nextBlockX	; , nextBlockX
                            203 ;----- asm -----
                            204 ;  88 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            205 	; #ENR#[59]                nextBlockY = blockY - 1;
                            206 ;  0 "" 2
                            207 ;--- end asm ---
   06BF F6 C8 E8      [ 5]  208 	ldb	_blockY	; , blockY
   06C2 5A            [ 2]  209 	decb	; 
   06C3 F7 C8 F1      [ 5]  210 	stb	_nextBlockY	; , nextBlockY
                            211 ;----- asm -----
                            212 ;  90 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            213 	; #ENR#[60]                break;
                            214 ;  0 "" 2
                            215 ;--- end asm ---
   06C6                     216 L5:
                            217 ;----- asm -----
                            218 ;  93 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            219 	; #ENR#[62]            break;
                            220 ;  0 "" 2
                            221 ;--- end asm ---
   06C6 7E 08 8D      [ 4]  222 	jmp	L29	; 
   06C9                     223 L30:
                            224 ;----- asm -----
                            225 ;  97 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            226 	; #ENR#[64]            break;
                            227 ;  0 "" 2
                            228 ;--- end asm ---
   06C9 7E 08 8D      [ 4]  229 	jmp	L29	; 
   06CC                     230 L2:
                            231 ;----- asm -----
                            232 ;  103 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            233 	; #ENR#[69]        switch (blockOrientation)
                            234 ;  0 "" 2
                            235 ;--- end asm ---
   06CC F6 C8 E2      [ 5]  236 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   06CF C1 01         [ 2]  237 	cmpb	#1	;cmpqi:	;  blockOrientation,
   06D1 10 27 00 A7   [ 6]  238 	lbeq	L12	; 
   06D5 25 09         [ 3]  239 	blo	L11	; 
   06D7 C1 02         [ 2]  240 	cmpb	#2	;cmpqi:	;  blockOrientation,
   06D9 10 26 01 B0   [ 6]  241 	lbne	L29	; 
   06DD 7E 08 06      [ 4]  242 	jmp	L32	; 
   06E0                     243 L11:
                            244 ;----- asm -----
                            245 ;  108 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            246 	; #ENR#[72]            switch (move)
                            247 ;  0 "" 2
                            248 ;--- end asm ---
   06E0 E6 E4         [ 4]  249 	ldb	,s	; , move
   06E2 C1 01         [ 2]  250 	cmpb	#1	;cmpqi:	; ,
   06E4 10 27 00 52   [ 6]  251 	lbeq	L16	; 
   06E8 25 0D         [ 3]  252 	blo	L15	; 
   06EA C1 02         [ 2]  253 	cmpb	#2	;cmpqi:	; ,
   06EC 27 2B         [ 3]  254 	beq	L17	; 
   06EE C1 03         [ 2]  255 	cmpb	#3	;cmpqi:	; ,
   06F0 10 26 00 85   [ 6]  256 	lbne	L14	; 
   06F4 7E 07 5A      [ 4]  257 	jmp	L33	; 
   06F7                     258 L15:
                            259 ;----- asm -----
                            260 ;  113 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            261 	; #ENR#[75]                blockAnimation = height2FallingLeft;
                            262 ;  0 "" 2
                            263 ;--- end asm ---
   06F7 8E 34 36      [ 3]  264 	ldx	#_height2FallingLeft	; ,
   06FA BF C8 EB      [ 6]  265 	stx	_blockAnimation	; , blockAnimation
                            266 ;----- asm -----
                            267 ;  115 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            268 	; #ENR#[76]                nextBlockAnimation = width2RollingFront;
                            269 ;  0 "" 2
                            270 ;--- end asm ---
   06FD 8E 35 26      [ 3]  271 	ldx	#_width2RollingFront	; ,
   0700 BF C8 ED      [ 6]  272 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            273 ;----- asm -----
                            274 ;  117 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            275 	; #ENR#[77]                nextBlockX = blockX - 2;
                            276 ;  0 "" 2
                            277 ;--- end asm ---
   0703 F6 C8 E7      [ 5]  278 	ldb	_blockX	; , blockX
   0706 CB FE         [ 2]  279 	addb	#-2	; ,
   0708 F7 C8 F0      [ 5]  280 	stb	_nextBlockX	; , nextBlockX
                            281 ;----- asm -----
                            282 ;  119 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            283 	; #ENR#[78]                nextBlockY = blockY;
                            284 ;  0 "" 2
                            285 ;--- end asm ---
   070B F6 C8 E8      [ 5]  286 	ldb	_blockY	; , blockY
   070E F7 C8 F1      [ 5]  287 	stb	_nextBlockY	; , nextBlockY
                            288 ;----- asm -----
                            289 ;  121 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            290 	; #ENR#[79]                blockOrientation = Horizontal;
                            291 ;  0 "" 2
                            292 ;--- end asm ---
   0711 C6 02         [ 2]  293 	ldb	#2	; ,
   0713 F7 C8 E2      [ 5]  294 	stb	_blockOrientation	; , blockOrientation
                            295 ;----- asm -----
                            296 ;  123 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            297 	; #ENR#[80]                break;
                            298 ;  0 "" 2
                            299 ;--- end asm ---
   0716 7E 07 79      [ 4]  300 	jmp	L14	; 
   0719                     301 L17:
                            302 ;----- asm -----
                            303 ;  127 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            304 	; #ENR#[82]                blockAnimation = height2FallingRight;
                            305 ;  0 "" 2
                            306 ;--- end asm ---
   0719 8E 34 66      [ 3]  307 	ldx	#_height2FallingRight	; ,
   071C BF C8 EB      [ 6]  308 	stx	_blockAnimation	; , blockAnimation
                            309 ;----- asm -----
                            310 ;  129 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            311 	; #ENR#[83]                nextBlockAnimation = width2RollingFront;
                            312 ;  0 "" 2
                            313 ;--- end asm ---
   071F 8E 35 26      [ 3]  314 	ldx	#_width2RollingFront	; ,
   0722 BF C8 ED      [ 6]  315 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            316 ;----- asm -----
                            317 ;  131 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            318 	; #ENR#[84]                nextBlockX = blockX + 1;
                            319 ;  0 "" 2
                            320 ;--- end asm ---
   0725 F6 C8 E7      [ 5]  321 	ldb	_blockX	; , blockX
   0728 5C            [ 2]  322 	incb	; 
   0729 F7 C8 F0      [ 5]  323 	stb	_nextBlockX	; , nextBlockX
                            324 ;----- asm -----
                            325 ;  133 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            326 	; #ENR#[85]                nextBlockY = blockY;
                            327 ;  0 "" 2
                            328 ;--- end asm ---
   072C F6 C8 E8      [ 5]  329 	ldb	_blockY	; , blockY
   072F F7 C8 F1      [ 5]  330 	stb	_nextBlockY	; , nextBlockY
                            331 ;----- asm -----
                            332 ;  135 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            333 	; #ENR#[86]                blockOrientation = Horizontal;
                            334 ;  0 "" 2
                            335 ;--- end asm ---
   0732 C6 02         [ 2]  336 	ldb	#2	; ,
   0734 F7 C8 E2      [ 5]  337 	stb	_blockOrientation	; , blockOrientation
                            338 ;----- asm -----
                            339 ;  137 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            340 	; #ENR#[87]                break;
                            341 ;  0 "" 2
                            342 ;--- end asm ---
   0737 7E 07 79      [ 4]  343 	jmp	L14	; 
   073A                     344 L16:
                            345 ;----- asm -----
                            346 ;  141 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            347 	; #ENR#[89]                blockAnimation = height2FallingBack;
                            348 ;  0 "" 2
                            349 ;--- end asm ---
   073A 8E 34 96      [ 3]  350 	ldx	#_height2FallingBack	; ,
   073D BF C8 EB      [ 6]  351 	stx	_blockAnimation	; , blockAnimation
                            352 ;----- asm -----
                            353 ;  143 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            354 	; #ENR#[90]                nextBlockAnimation = depth2RollingLeft;
                            355 ;  0 "" 2
                            356 ;--- end asm ---
   0740 8E 34 F6      [ 3]  357 	ldx	#_depth2RollingLeft	; ,
   0743 BF C8 ED      [ 6]  358 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            359 ;----- asm -----
                            360 ;  145 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            361 	; #ENR#[91]                nextBlockX = blockX;
                            362 ;  0 "" 2
                            363 ;--- end asm ---
   0746 F6 C8 E7      [ 5]  364 	ldb	_blockX	; , blockX
   0749 F7 C8 F0      [ 5]  365 	stb	_nextBlockX	; , nextBlockX
                            366 ;----- asm -----
                            367 ;  147 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            368 	; #ENR#[92]                nextBlockY = blockY + 1;
                            369 ;  0 "" 2
                            370 ;--- end asm ---
   074C F6 C8 E8      [ 5]  371 	ldb	_blockY	; , blockY
   074F 5C            [ 2]  372 	incb	; 
   0750 F7 C8 F1      [ 5]  373 	stb	_nextBlockY	; , nextBlockY
                            374 ;----- asm -----
                            375 ;  149 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            376 	; #ENR#[93]                blockOrientation = Vertical;
                            377 ;  0 "" 2
                            378 ;--- end asm ---
   0753 C6 01         [ 2]  379 	ldb	#1	; ,
   0755 F7 C8 E2      [ 5]  380 	stb	_blockOrientation	; , blockOrientation
                            381 ;----- asm -----
                            382 ;  151 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            383 	; #ENR#[94]                break;
                            384 ;  0 "" 2
                            385 ;--- end asm ---
   0758 20 1F         [ 3]  386 	bra	L14	; 
   075A                     387 L33:
                            388 ;----- asm -----
                            389 ;  155 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            390 	; #ENR#[96]                blockAnimation = height2FallingFront;
                            391 ;  0 "" 2
                            392 ;--- end asm ---
   075A 8E 34 C6      [ 3]  393 	ldx	#_height2FallingFront	; ,
   075D BF C8 EB      [ 6]  394 	stx	_blockAnimation	; , blockAnimation
                            395 ;----- asm -----
                            396 ;  157 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            397 	; #ENR#[97]                nextBlockAnimation = depth2RollingLeft;
                            398 ;  0 "" 2
                            399 ;--- end asm ---
   0760 8E 34 F6      [ 3]  400 	ldx	#_depth2RollingLeft	; ,
   0763 BF C8 ED      [ 6]  401 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            402 ;----- asm -----
                            403 ;  159 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            404 	; #ENR#[98]                nextBlockX = blockX;
                            405 ;  0 "" 2
                            406 ;--- end asm ---
   0766 F6 C8 E7      [ 5]  407 	ldb	_blockX	; , blockX
   0769 F7 C8 F0      [ 5]  408 	stb	_nextBlockX	; , nextBlockX
                            409 ;----- asm -----
                            410 ;  161 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            411 	; #ENR#[99]                nextBlockY = blockY - 2;
                            412 ;  0 "" 2
                            413 ;--- end asm ---
   076C F6 C8 E8      [ 5]  414 	ldb	_blockY	; , blockY
   076F CB FE         [ 2]  415 	addb	#-2	; ,
   0771 F7 C8 F1      [ 5]  416 	stb	_nextBlockY	; , nextBlockY
                            417 ;----- asm -----
                            418 ;  163 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            419 	; #ENR#[100]                blockOrientation = Vertical;
                            420 ;  0 "" 2
                            421 ;--- end asm ---
   0774 C6 01         [ 2]  422 	ldb	#1	; ,
   0776 F7 C8 E2      [ 5]  423 	stb	_blockOrientation	; , blockOrientation
                            424 ;----- asm -----
                            425 ;  165 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            426 	; #ENR#[101]                break;
                            427 ;  0 "" 2
                            428 ;--- end asm ---
   0779                     429 L14:
                            430 ;----- asm -----
                            431 ;  168 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            432 	; #ENR#[103]            break;
                            433 ;  0 "" 2
                            434 ;--- end asm ---
   0779 7E 08 8D      [ 4]  435 	jmp	L29	; 
   077C                     436 L12:
                            437 ;----- asm -----
                            438 ;  172 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            439 	; #ENR#[105]            switch (move)
                            440 ;  0 "" 2
                            441 ;--- end asm ---
   077C E6 E4         [ 4]  442 	ldb	,s	; , move
   077E C1 01         [ 2]  443 	cmpb	#1	;cmpqi:	; ,
   0780 10 27 00 44   [ 6]  444 	lbeq	L21	; 
   0784 25 0D         [ 3]  445 	blo	L20	; 
   0786 C1 02         [ 2]  446 	cmpb	#2	;cmpqi:	; ,
   0788 27 22         [ 3]  447 	beq	L22	; 
   078A C1 03         [ 2]  448 	cmpb	#3	;cmpqi:	; ,
   078C 10 26 00 73   [ 6]  449 	lbne	L19	; 
   0790 7E 07 E7      [ 4]  450 	jmp	L34	; 
   0793                     451 L20:
                            452 ;----- asm -----
                            453 ;  177 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            454 	; #ENR#[108]                blockAnimation = depth2RollingLeft;
                            455 ;  0 "" 2
                            456 ;--- end asm ---
   0793 8E 34 F6      [ 3]  457 	ldx	#_depth2RollingLeft	;  tmp46,
   0796 BF C8 EB      [ 6]  458 	stx	_blockAnimation	;  tmp46, blockAnimation
                            459 ;----- asm -----
                            460 ;  179 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            461 	; #ENR#[109]                nextBlockAnimation = depth2RollingLeft;
                            462 ;  0 "" 2
                            463 ;--- end asm ---
   0799 BF C8 ED      [ 6]  464 	stx	_nextBlockAnimation	;  tmp46, nextBlockAnimation
                            465 ;----- asm -----
                            466 ;  181 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            467 	; #ENR#[110]                nextBlockX = blockX - 1;
                            468 ;  0 "" 2
                            469 ;--- end asm ---
   079C F6 C8 E7      [ 5]  470 	ldb	_blockX	; , blockX
   079F 5A            [ 2]  471 	decb	; 
   07A0 F7 C8 F0      [ 5]  472 	stb	_nextBlockX	; , nextBlockX
                            473 ;----- asm -----
                            474 ;  183 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            475 	; #ENR#[111]                nextBlockY = blockY;
                            476 ;  0 "" 2
                            477 ;--- end asm ---
   07A3 F6 C8 E8      [ 5]  478 	ldb	_blockY	; , blockY
   07A6 F7 C8 F1      [ 5]  479 	stb	_nextBlockY	; , nextBlockY
                            480 ;----- asm -----
                            481 ;  185 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            482 	; #ENR#[112]                break;
                            483 ;  0 "" 2
                            484 ;--- end asm ---
   07A9 7E 08 03      [ 4]  485 	jmp	L19	; 
   07AC                     486 L22:
                            487 ;----- asm -----
                            488 ;  189 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            489 	; #ENR#[114]                blockAnimation = depth2RollingRight;
                            490 ;  0 "" 2
                            491 ;--- end asm ---
   07AC 8E 35 0E      [ 3]  492 	ldx	#_depth2RollingRight	; ,
   07AF BF C8 EB      [ 6]  493 	stx	_blockAnimation	; , blockAnimation
                            494 ;----- asm -----
                            495 ;  191 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            496 	; #ENR#[115]                nextBlockAnimation = depth2RollingLeft;
                            497 ;  0 "" 2
                            498 ;--- end asm ---
   07B2 8E 34 F6      [ 3]  499 	ldx	#_depth2RollingLeft	; ,
   07B5 BF C8 ED      [ 6]  500 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            501 ;----- asm -----
                            502 ;  193 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            503 	; #ENR#[116]                nextBlockX = blockX + 1;
                            504 ;  0 "" 2
                            505 ;--- end asm ---
   07B8 F6 C8 E7      [ 5]  506 	ldb	_blockX	; , blockX
   07BB 5C            [ 2]  507 	incb	; 
   07BC F7 C8 F0      [ 5]  508 	stb	_nextBlockX	; , nextBlockX
                            509 ;----- asm -----
                            510 ;  195 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            511 	; #ENR#[117]                nextBlockY = blockY;
                            512 ;  0 "" 2
                            513 ;--- end asm ---
   07BF F6 C8 E8      [ 5]  514 	ldb	_blockY	; , blockY
   07C2 F7 C8 F1      [ 5]  515 	stb	_nextBlockY	; , nextBlockY
                            516 ;----- asm -----
                            517 ;  197 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            518 	; #ENR#[118]                break;
                            519 ;  0 "" 2
                            520 ;--- end asm ---
   07C5 7E 08 03      [ 4]  521 	jmp	L19	; 
   07C8                     522 L21:
                            523 ;----- asm -----
                            524 ;  201 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            525 	; #ENR#[120]                blockAnimation = height2RisingBack;
                            526 ;  0 "" 2
                            527 ;--- end asm ---
   07C8 8E 34 DE      [ 3]  528 	ldx	#_height2RisingBack	; ,
   07CB BF C8 EB      [ 6]  529 	stx	_blockAnimation	; , blockAnimation
                            530 ;----- asm -----
                            531 ;  203 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            532 	; #ENR#[121]                nextBlockAnimation = height2FallingFront;
                            533 ;  0 "" 2
                            534 ;--- end asm ---
   07CE 8E 34 C6      [ 3]  535 	ldx	#_height2FallingFront	; ,
   07D1 BF C8 ED      [ 6]  536 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            537 ;----- asm -----
                            538 ;  205 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            539 	; #ENR#[122]                nextBlockX = blockX;
                            540 ;  0 "" 2
                            541 ;--- end asm ---
   07D4 F6 C8 E7      [ 5]  542 	ldb	_blockX	; , blockX
   07D7 F7 C8 F0      [ 5]  543 	stb	_nextBlockX	; , nextBlockX
                            544 ;----- asm -----
                            545 ;  207 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            546 	; #ENR#[123]                nextBlockY = blockY + 2;
                            547 ;  0 "" 2
                            548 ;--- end asm ---
   07DA F6 C8 E8      [ 5]  549 	ldb	_blockY	; , blockY
   07DD CB 02         [ 2]  550 	addb	#2	; ,
   07DF F7 C8 F1      [ 5]  551 	stb	_nextBlockY	; , nextBlockY
                            552 ;----- asm -----
                            553 ;  209 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            554 	; #ENR#[124]                blockOrientation = Standing;
                            555 ;  0 "" 2
                            556 ;--- end asm ---
   07E2 7F C8 E2      [ 7]  557 	clr	_blockOrientation	;  blockOrientation
                            558 ;----- asm -----
                            559 ;  211 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            560 	; #ENR#[125]                break;
                            561 ;  0 "" 2
                            562 ;--- end asm ---
   07E5 20 1C         [ 3]  563 	bra	L19	; 
   07E7                     564 L34:
                            565 ;----- asm -----
                            566 ;  215 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            567 	; #ENR#[127]                blockAnimation = height2RisingFront;
                            568 ;  0 "" 2
                            569 ;--- end asm ---
   07E7 8E 34 AE      [ 3]  570 	ldx	#_height2RisingFront	; ,
   07EA BF C8 EB      [ 6]  571 	stx	_blockAnimation	; , blockAnimation
                            572 ;----- asm -----
                            573 ;  217 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            574 	; #ENR#[128]                nextBlockAnimation = height2FallingFront;
                            575 ;  0 "" 2
                            576 ;--- end asm ---
   07ED 8E 34 C6      [ 3]  577 	ldx	#_height2FallingFront	; ,
   07F0 BF C8 ED      [ 6]  578 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            579 ;----- asm -----
                            580 ;  219 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            581 	; #ENR#[129]                nextBlockX = blockX;
                            582 ;  0 "" 2
                            583 ;--- end asm ---
   07F3 F6 C8 E7      [ 5]  584 	ldb	_blockX	; , blockX
   07F6 F7 C8 F0      [ 5]  585 	stb	_nextBlockX	; , nextBlockX
                            586 ;----- asm -----
                            587 ;  221 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            588 	; #ENR#[130]                nextBlockY = blockY - 1;
                            589 ;  0 "" 2
                            590 ;--- end asm ---
   07F9 F6 C8 E8      [ 5]  591 	ldb	_blockY	; , blockY
   07FC 5A            [ 2]  592 	decb	; 
   07FD F7 C8 F1      [ 5]  593 	stb	_nextBlockY	; , nextBlockY
                            594 ;----- asm -----
                            595 ;  223 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            596 	; #ENR#[131]                blockOrientation = Standing;
                            597 ;  0 "" 2
                            598 ;--- end asm ---
   0800 7F C8 E2      [ 7]  599 	clr	_blockOrientation	;  blockOrientation
                            600 ;----- asm -----
                            601 ;  225 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            602 	; #ENR#[132]                break;
                            603 ;  0 "" 2
                            604 ;--- end asm ---
   0803                     605 L19:
                            606 ;----- asm -----
                            607 ;  228 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            608 	; #ENR#[134]            break;
                            609 ;  0 "" 2
                            610 ;--- end asm ---
   0803 7E 08 8D      [ 4]  611 	jmp	L29	; 
   0806                     612 L32:
                            613 ;----- asm -----
                            614 ;  232 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            615 	; #ENR#[136]            switch (move)
                            616 ;  0 "" 2
                            617 ;--- end asm ---
   0806 E6 E4         [ 4]  618 	ldb	,s	; , move
   0808 C1 01         [ 2]  619 	cmpb	#1	;cmpqi:	; ,
   080A 10 27 00 4E   [ 6]  620 	lbeq	L26	; 
   080E 25 0D         [ 3]  621 	blo	L25	; 
   0810 C1 02         [ 2]  622 	cmpb	#2	;cmpqi:	; ,
   0812 27 28         [ 3]  623 	beq	L27	; 
   0814 C1 03         [ 2]  624 	cmpb	#3	;cmpqi:	; ,
   0816 10 26 00 73   [ 6]  625 	lbne	L24	; 
   081A 7E 08 74      [ 4]  626 	jmp	L35	; 
   081D                     627 L25:
                            628 ;----- asm -----
                            629 ;  237 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            630 	; #ENR#[139]                blockAnimation = height2RisingLeft;
                            631 ;  0 "" 2
                            632 ;--- end asm ---
   081D 8E 34 7E      [ 3]  633 	ldx	#_height2RisingLeft	; ,
   0820 BF C8 EB      [ 6]  634 	stx	_blockAnimation	; , blockAnimation
                            635 ;----- asm -----
                            636 ;  239 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            637 	; #ENR#[140]                nextBlockAnimation = height2FallingRight;
                            638 ;  0 "" 2
                            639 ;--- end asm ---
   0823 8E 34 66      [ 3]  640 	ldx	#_height2FallingRight	; ,
   0826 BF C8 ED      [ 6]  641 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            642 ;----- asm -----
                            643 ;  241 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            644 	; #ENR#[141]                nextBlockX = blockX - 1;
                            645 ;  0 "" 2
                            646 ;--- end asm ---
   0829 F6 C8 E7      [ 5]  647 	ldb	_blockX	; , blockX
   082C 5A            [ 2]  648 	decb	; 
   082D F7 C8 F0      [ 5]  649 	stb	_nextBlockX	; , nextBlockX
                            650 ;----- asm -----
                            651 ;  243 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            652 	; #ENR#[142]                nextBlockY = blockY;
                            653 ;  0 "" 2
                            654 ;--- end asm ---
   0830 F6 C8 E8      [ 5]  655 	ldb	_blockY	; , blockY
   0833 F7 C8 F1      [ 5]  656 	stb	_nextBlockY	; , nextBlockY
                            657 ;----- asm -----
                            658 ;  245 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            659 	; #ENR#[143]                blockOrientation = Standing;
                            660 ;  0 "" 2
                            661 ;--- end asm ---
   0836 7F C8 E2      [ 7]  662 	clr	_blockOrientation	;  blockOrientation
                            663 ;----- asm -----
                            664 ;  247 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            665 	; #ENR#[144]                break;
                            666 ;  0 "" 2
                            667 ;--- end asm ---
   0839 7E 08 8D      [ 4]  668 	jmp	L24	; 
   083C                     669 L27:
                            670 ;----- asm -----
                            671 ;  251 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            672 	; #ENR#[146]                blockAnimation = height2RisingRight;
                            673 ;  0 "" 2
                            674 ;--- end asm ---
   083C 8E 34 4E      [ 3]  675 	ldx	#_height2RisingRight	; ,
   083F BF C8 EB      [ 6]  676 	stx	_blockAnimation	; , blockAnimation
                            677 ;----- asm -----
                            678 ;  253 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            679 	; #ENR#[147]                nextBlockAnimation = height2FallingLeft;
                            680 ;  0 "" 2
                            681 ;--- end asm ---
   0842 8E 34 36      [ 3]  682 	ldx	#_height2FallingLeft	; ,
   0845 BF C8 ED      [ 6]  683 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            684 ;----- asm -----
                            685 ;  255 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            686 	; #ENR#[148]                nextBlockX = blockX + 2;
                            687 ;  0 "" 2
                            688 ;--- end asm ---
   0848 F6 C8 E7      [ 5]  689 	ldb	_blockX	; , blockX
   084B CB 02         [ 2]  690 	addb	#2	; ,
   084D F7 C8 F0      [ 5]  691 	stb	_nextBlockX	; , nextBlockX
                            692 ;----- asm -----
                            693 ;  257 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            694 	; #ENR#[149]                nextBlockY = blockY;
                            695 ;  0 "" 2
                            696 ;--- end asm ---
   0850 F6 C8 E8      [ 5]  697 	ldb	_blockY	; , blockY
   0853 F7 C8 F1      [ 5]  698 	stb	_nextBlockY	; , nextBlockY
                            699 ;----- asm -----
                            700 ;  259 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            701 	; #ENR#[150]                blockOrientation = Standing;
                            702 ;  0 "" 2
                            703 ;--- end asm ---
   0856 7F C8 E2      [ 7]  704 	clr	_blockOrientation	;  blockOrientation
                            705 ;----- asm -----
                            706 ;  261 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            707 	; #ENR#[151]                break;
                            708 ;  0 "" 2
                            709 ;--- end asm ---
   0859 7E 08 8D      [ 4]  710 	jmp	L24	; 
   085C                     711 L26:
                            712 ;----- asm -----
                            713 ;  265 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            714 	; #ENR#[153]                blockAnimation = width2RollingBack;
                            715 ;  0 "" 2
                            716 ;--- end asm ---
   085C 8E 35 3E      [ 3]  717 	ldx	#_width2RollingBack	;  tmp58,
   085F BF C8 EB      [ 6]  718 	stx	_blockAnimation	;  tmp58, blockAnimation
                            719 ;----- asm -----
                            720 ;  267 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            721 	; #ENR#[154]                nextBlockAnimation = width2RollingBack;
                            722 ;  0 "" 2
                            723 ;--- end asm ---
   0862 BF C8 ED      [ 6]  724 	stx	_nextBlockAnimation	;  tmp58, nextBlockAnimation
                            725 ;----- asm -----
                            726 ;  269 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            727 	; #ENR#[155]                nextBlockX = blockX;
                            728 ;  0 "" 2
                            729 ;--- end asm ---
   0865 F6 C8 E7      [ 5]  730 	ldb	_blockX	; , blockX
   0868 F7 C8 F0      [ 5]  731 	stb	_nextBlockX	; , nextBlockX
                            732 ;----- asm -----
                            733 ;  271 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            734 	; #ENR#[156]                nextBlockY = blockY + 1;
                            735 ;  0 "" 2
                            736 ;--- end asm ---
   086B F6 C8 E8      [ 5]  737 	ldb	_blockY	; , blockY
   086E 5C            [ 2]  738 	incb	; 
   086F F7 C8 F1      [ 5]  739 	stb	_nextBlockY	; , nextBlockY
                            740 ;----- asm -----
                            741 ;  273 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            742 	; #ENR#[157]                break;
                            743 ;  0 "" 2
                            744 ;--- end asm ---
   0872 20 19         [ 3]  745 	bra	L24	; 
   0874                     746 L35:
                            747 ;----- asm -----
                            748 ;  277 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            749 	; #ENR#[159]                blockAnimation = width2RollingFront;
                            750 ;  0 "" 2
                            751 ;--- end asm ---
   0874 8E 35 26      [ 3]  752 	ldx	#_width2RollingFront	; ,
   0877 BF C8 EB      [ 6]  753 	stx	_blockAnimation	; , blockAnimation
                            754 ;----- asm -----
                            755 ;  279 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            756 	; #ENR#[160]                nextBlockAnimation = width2RollingBack;
                            757 ;  0 "" 2
                            758 ;--- end asm ---
   087A 8E 35 3E      [ 3]  759 	ldx	#_width2RollingBack	; ,
   087D BF C8 ED      [ 6]  760 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            761 ;----- asm -----
                            762 ;  281 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            763 	; #ENR#[161]                nextBlockX = blockX;
                            764 ;  0 "" 2
                            765 ;--- end asm ---
   0880 F6 C8 E7      [ 5]  766 	ldb	_blockX	; , blockX
   0883 F7 C8 F0      [ 5]  767 	stb	_nextBlockX	; , nextBlockX
                            768 ;----- asm -----
                            769 ;  283 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            770 	; #ENR#[162]                nextBlockY = blockY - 1;
                            771 ;  0 "" 2
                            772 ;--- end asm ---
   0886 F6 C8 E8      [ 5]  773 	ldb	_blockY	; , blockY
   0889 5A            [ 2]  774 	decb	; 
   088A F7 C8 F1      [ 5]  775 	stb	_nextBlockY	; , nextBlockY
                            776 ;----- asm -----
                            777 ;  285 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            778 	; #ENR#[163]                break;
                            779 ;  0 "" 2
                            780 ;--- end asm ---
   088D                     781 L24:
                            782 ;----- asm -----
                            783 ;  288 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            784 	; #ENR#[165]            break;
                            785 ;  0 "" 2
                            786 ;--- end asm ---
   088D                     787 L29:
   088D 32 61         [ 5]  788 	leas	1,s	; ,,
   088F 39            [ 5]  789 	rts
                            790 	.globl _Draw_VLpo
   0890                     791 _Draw_VLpo:
                            792 ;----- asm -----
                            793 ;  296 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            794 	; #ENR#[172]    (void)x;
                            795 ;  0 "" 2
                            796 ;  298 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   0890 EC 01         [ 6]  797 	                    LDD      1,X                          ;Get next coordinate pair  
                            798 ;  0 "" 2
                            799 ;  299 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   0892                     800 	shiftOff1:  
                            801 ;  0 "" 2
                            802 ;  300 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   0892 97 01         [ 4]  803 	                    STA      *0xd001                  ;Send Y to A/D  
                            804 ;  0 "" 2
                            805 ;  301 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   0894 0F 00         [ 6]  806 	                    CLR      *0xd000                  ;Enable mux  
                            807 ;  0 "" 2
                            808 ;  302 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   0896 A6 84         [ 4]  809 	                    LDA      ,X                           ;Get pattern byte  
                            810 ;  0 "" 2
                            811 ;  303 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   0898 0C 00         [ 6]  812 	                    INC      *0xd000                  ;Disable mux  
                            813 ;  0 "" 2
                            814 ;  304 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   089A D7 01         [ 4]  815 	                    STB      *0xd001                  ;Send X to A/D  
                            816 ;  0 "" 2
                            817 ;  305 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   089C C6 00         [ 2]  818 	                    ldb      #0  
                            819 ;  0 "" 2
                            820 ;  306 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   089E 97 0A         [ 4]  821 	                    STA      *0xd00a               ;Store pattern in shift register  
                            822 ;  0 "" 2
                            823 ;  307 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08A0 D7 05         [ 4]  824 	                    STB      *0xd005               ;Clear T1H  
                            825 ;  0 "" 2
                            826 ;  309 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08A2 30 03         [ 5]  827 	                    LEAX     3,X                          ;Advance to next point in list  
                            828 ;  0 "" 2
                            829 ;  311 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08A4 1F 88         [ 6]  830 		    tfr a,a    ; 6 
                            831 ;  0 "" 2
                            832 ;  312 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08A6 1F 88         [ 6]  833 		    tfr a,a    ; 6 
                            834 ;  0 "" 2
                            835 ;  313 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08A8 1F 88         [ 6]  836 		    tfr a,a    ; 6 
                            837 ;  0 "" 2
                            838 ;  314 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08AA 1F 88         [ 6]  839 		    tfr a,a    ; 6 
                            840 ;  0 "" 2
                            841 ;  316 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08AC A6 84         [ 4]  842 	                    LDA      ,X                           ;Get next pattern byte  
                            843 ;  0 "" 2
                            844 ;  318 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08AE 2E 29         [ 3]  845 	                    bgt      macroEnd2  
                            846 ;  0 "" 2
                            847 ;  320 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08B0 EC 01         [ 6]  848 	                    LDD      1,X                          ;Get next coordinate pair  
                            849 ;  0 "" 2
                            850 ;  321 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08B2                     851 	shiftOn1:  
                            852 ;  0 "" 2
                            853 ;  322 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08B2 97 01         [ 4]  854 	                    STA      *0xd001                  ;Send Y to A/D  
                            855 ;  0 "" 2
                            856 ;  323 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08B4 0F 00         [ 6]  857 	                    CLR      *0xd000                  ;Enable mux  
                            858 ;  0 "" 2
                            859 ;  324 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08B6 A6 84         [ 4]  860 	                    LDA      ,X                           ;Get pattern byte  
                            861 ;  0 "" 2
                            862 ;  325 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08B8 0C 00         [ 6]  863 	                    INC      *0xd000                  ;Disable mux  
                            864 ;  0 "" 2
                            865 ;  326 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08BA D7 01         [ 4]  866 	                    STB      *0xd001                  ;Send X to A/D  
                            867 ;  0 "" 2
                            868 ;  327 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08BC C6 00         [ 2]  869 	                    ldb      #0  
                            870 ;  0 "" 2
                            871 ;  328 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08BE 97 0A         [ 4]  872 	                    STA      *0xd00a               ;Store pattern in shift register  
                            873 ;  0 "" 2
                            874 ;  329 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08C0 D7 05         [ 4]  875 	                    STB      *0xd005               ;Clear T1H  
                            876 ;  0 "" 2
                            877 ;  330 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08C2 30 03         [ 5]  878 	                    LEAX     3,X                          ;Advance to next point in list  
                            879 ;  0 "" 2
                            880 ;  332 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08C4 EC 01         [ 6]  881 	                    LDD      1,X                          ;Get next coordinate pair  
                            882 ;  0 "" 2
                            883 ;  333 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08C6 1F 88         [ 6]  884 		    tfr a,a    ; 6 
                            885 ;  0 "" 2
                            886 ;  334 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08C8 1F 88         [ 6]  887 		    tfr a,a    ; 6 
                            888 ;  0 "" 2
                            889 ;  335 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08CA 1F 88         [ 6]  890 		    tfr a,a    ; 6 
                            891 ;  0 "" 2
                            892 ;  336 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08CC 12            [ 2]  893 		    nop    ; 6 
                            894 ;  0 "" 2
                            895 ;  338 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08CD 6D 84         [ 6]  896 	                    tst      ,X  
                            897 ;  0 "" 2
                            898 ;  339 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08CF 27 C1         [ 3]  899 	                    beq      shiftOff1  
                            900 ;  0 "" 2
                            901 ;  340 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08D1 2B DF         [ 3]  902 	                    bmi      shiftOn1  
                            903 ;  0 "" 2
                            904 ;  341 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08D3 1F 88         [ 6]  905 		    tfr a,a    ; 6 
                            906 ;  0 "" 2
                            907 ;  342 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08D5 C6 00         [ 2]  908 	                    ldb      #0  
                            909 ;  0 "" 2
                            910 ;  343 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08D7 D7 0A         [ 4]  911 	                    STB      *0xd00a               ;Clear shift register (blank output)  
                            912 ;  0 "" 2
                            913 ;  344 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
   08D9                     914 	macroEnd2:  
                            915 ;  0 "" 2
                            916 ;--- end asm ---
   08D9 39            [ 5]  917 	rts
                            918 	.globl _doBlockAnimation
   08DA                     919 _doBlockAnimation:
                            920 ;----- asm -----
                            921 ;  410 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            922 	; #ENR#[267]    if (blockAnimating)
                            923 ;  0 "" 2
                            924 ;--- end asm ---
   08DA 7D C8 E5      [ 7]  925 	tst	_blockAnimating	;  blockAnimating
   08DD 27 23         [ 3]  926 	beq	L40	; 
                            927 ;----- asm -----
                            928 ;  413 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            929 	; #ENR#[269]        if (++blockAnimationStep == BLOCK_STEPS_COUNT)
                            930 ;  0 "" 2
                            931 ;--- end asm ---
   08DF F6 C8 EF      [ 5]  932 	ldb	_blockAnimationStep	;  blockAnimationStep.25, blockAnimationStep
   08E2 5C            [ 2]  933 	incb	;  blockAnimationStep.25
   08E3 F7 C8 EF      [ 5]  934 	stb	_blockAnimationStep	;  blockAnimationStep.25, blockAnimationStep
   08E6 C1 0C         [ 2]  935 	cmpb	#12	;cmpqi:	;  blockAnimationStep.25,
   08E8 26 18         [ 3]  936 	bne	L40	; 
                            937 ;----- asm -----
                            938 ;  416 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            939 	; #ENR#[271]            blockX = nextBlockX;
                            940 ;  0 "" 2
                            941 ;--- end asm ---
   08EA F6 C8 F0      [ 5]  942 	ldb	_nextBlockX	; , nextBlockX
   08ED F7 C8 E7      [ 5]  943 	stb	_blockX	; , blockX
                            944 ;----- asm -----
                            945 ;  418 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            946 	; #ENR#[272]            blockY = nextBlockY;
                            947 ;  0 "" 2
                            948 ;--- end asm ---
   08F0 F6 C8 F1      [ 5]  949 	ldb	_nextBlockY	; , nextBlockY
   08F3 F7 C8 E8      [ 5]  950 	stb	_blockY	; , blockY
                            951 ;----- asm -----
                            952 ;  420 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            953 	; #ENR#[273]            blockAnimationStep = 0;
                            954 ;  0 "" 2
                            955 ;--- end asm ---
   08F6 7F C8 EF      [ 7]  956 	clr	_blockAnimationStep	;  blockAnimationStep
                            957 ;----- asm -----
                            958 ;  422 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            959 	; #ENR#[274]            blockAnimation = nextBlockAnimation;
                            960 ;  0 "" 2
                            961 ;--- end asm ---
   08F9 BE C8 ED      [ 6]  962 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   08FC BF C8 EB      [ 6]  963 	stx	_blockAnimation	; , blockAnimation
                            964 ;----- asm -----
                            965 ;  424 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            966 	; #ENR#[275]            blockAnimating = 0;
                            967 ;  0 "" 2
                            968 ;--- end asm ---
   08FF 7F C8 E5      [ 7]  969 	clr	_blockAnimating	;  blockAnimating
   0902                     970 L40:
   0902 39            [ 5]  971 	rts
                            972 	.globl _blockStartLevel
   0903                     973 _blockStartLevel:
                            974 ;----- asm -----
                            975 ;  432 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            976 	; #ENR#[282]    blockAnimation = height2FallingLeft;
                            977 ;  0 "" 2
                            978 ;--- end asm ---
   0903 8E 34 36      [ 3]  979 	ldx	#_height2FallingLeft	; ,
   0906 BF C8 EB      [ 6]  980 	stx	_blockAnimation	; , blockAnimation
                            981 ;----- asm -----
                            982 ;  434 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            983 	; #ENR#[283]    blockAnimationStep = 0;
                            984 ;  0 "" 2
                            985 ;--- end asm ---
   0909 7F C8 EF      [ 7]  986 	clr	_blockAnimationStep	;  blockAnimationStep
                            987 ;----- asm -----
                            988 ;  436 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            989 	; #ENR#[284]    blockAnimating = 0;
                            990 ;  0 "" 2
                            991 ;--- end asm ---
   090C 7F C8 E5      [ 7]  992 	clr	_blockAnimating	;  blockAnimating
                            993 ;----- asm -----
                            994 ;  438 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                            995 	; #ENR#[285]    blockOrientation = Standing;
                            996 ;  0 "" 2
                            997 ;--- end asm ---
   090F 7F C8 E2      [ 7]  998 	clr	_blockOrientation	;  blockOrientation
                            999 ;----- asm -----
                           1000 ;  440 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1001 	; #ENR#[286]    splitMode = 0;
                           1002 ;  0 "" 2
                           1003 ;--- end asm ---
   0912 7F C8 E6      [ 7] 1004 	clr	_splitMode	;  splitMode
   0915 39            [ 5] 1005 	rts
                           1006 	.globl _setSplitMode
   0916                    1007 _setSplitMode:
                           1008 ;----- asm -----
                           1009 ;  446 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1010 	; #ENR#[291]    blockAnimation = height1FallingLeft;
                           1011 ;  0 "" 2
                           1012 ;--- end asm ---
   0916 8E 35 56      [ 3] 1013 	ldx	#_height1FallingLeft	; ,
   0919 BF C8 EB      [ 6] 1014 	stx	_blockAnimation	; , blockAnimation
                           1015 ;----- asm -----
                           1016 ;  448 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1017 	; #ENR#[292]    blockOrientation = Standing;
                           1018 ;  0 "" 2
                           1019 ;--- end asm ---
   091C 7F C8 E2      [ 7] 1020 	clr	_blockOrientation	;  blockOrientation
                           1021 ;----- asm -----
                           1022 ;  450 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1023 	; #ENR#[293]    splitMode = 1;
                           1024 ;  0 "" 2
                           1025 ;--- end asm ---
   091F C6 01         [ 2] 1026 	ldb	#1	; ,
   0921 F7 C8 E6      [ 5] 1027 	stb	_splitMode	; , splitMode
   0924 39            [ 5] 1028 	rts
                           1029 	.globl _testMerge
   0925                    1030 _testMerge:
   0925 32 7C         [ 5] 1031 	leas	-4,s	; ,,
                           1032 ;----- asm -----
                           1033 ;  456 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1034 	; #ENR#[298]    if (blockY == blockY2)
                           1035 ;  0 "" 2
                           1036 ;--- end asm ---
   0927 F6 C8 E8      [ 5] 1037 	ldb	_blockY	; , blockY
   092A E7 E4         [ 4] 1038 	stb	,s	; , blockY.29
   092C F6 C8 EA      [ 5] 1039 	ldb	_blockY2	; , blockY2
   092F E7 61         [ 5] 1040 	stb	1,s	; , blockY2.30
   0931 E6 E4         [ 4] 1041 	ldb	,s	; , blockY.29
   0933 E1 61         [ 5] 1042 	cmpb	1,s	;cmpqi:	; , blockY2.30
   0935 10 26 00 3F   [ 6] 1043 	lbne	L46	; 
                           1044 ;----- asm -----
                           1045 ;  459 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1046 	; #ENR#[300]        if (blockX == blockX2 + 1)
                           1047 ;  0 "" 2
                           1048 ;--- end asm ---
   0939 F6 C8 E9      [ 5] 1049 	ldb	_blockX2	; , blockX2
   093C E7 62         [ 5] 1050 	stb	2,s	; , blockX2.31
   093E F6 C8 E7      [ 5] 1051 	ldb	_blockX	; , blockX
   0941 E7 63         [ 5] 1052 	stb	3,s	; , blockX.32
   0943 E6 62         [ 5] 1053 	ldb	2,s	;  tmp31, blockX2.31
   0945 5C            [ 2] 1054 	incb	;  tmp31
   0946 E1 63         [ 5] 1055 	cmpb	3,s	;cmpqi:	;  tmp31, blockX.32
   0948 26 14         [ 3] 1056 	bne	L47	; 
                           1057 ;----- asm -----
                           1058 ;  462 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1059 	; #ENR#[302]            blockAnimation = width2RollingFront;
                           1060 ;  0 "" 2
                           1061 ;--- end asm ---
   094A 8E 35 26      [ 3] 1062 	ldx	#_width2RollingFront	; ,
   094D BF C8 EB      [ 6] 1063 	stx	_blockAnimation	; , blockAnimation
                           1064 ;----- asm -----
                           1065 ;  464 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1066 	; #ENR#[303]            blockOrientation = Horizontal;
                           1067 ;  0 "" 2
                           1068 ;--- end asm ---
   0950 C6 02         [ 2] 1069 	ldb	#2	; ,
   0952 F7 C8 E2      [ 5] 1070 	stb	_blockOrientation	; , blockOrientation
                           1071 ;----- asm -----
                           1072 ;  466 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1073 	; #ENR#[304]            blockX--;
                           1074 ;  0 "" 2
                           1075 ;--- end asm ---
   0955 7A C8 E7      [ 7] 1076 	dec	_blockX	;  blockX
                           1077 ;----- asm -----
                           1078 ;  468 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1079 	; #ENR#[305]            splitMode = 0;
                           1080 ;  0 "" 2
                           1081 ;--- end asm ---
   0958 7F C8 E6      [ 7] 1082 	clr	_splitMode	;  splitMode
   095B 7E 09 B4      [ 4] 1083 	jmp	L50	; 
   095E                    1084 L47:
   095E E6 62         [ 5] 1085 	ldb	2,s	;  tmp33, blockX2.31
   0960 5A            [ 2] 1086 	decb	;  tmp33
   0961 E1 63         [ 5] 1087 	cmpb	3,s	;cmpqi:(R)	;  tmp33, blockX.32
   0963 10 26 00 4D   [ 6] 1088 	lbne	L50	; 
                           1089 ;----- asm -----
                           1090 ;  473 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1091 	; #ENR#[309]            blockAnimation = width2RollingFront;
                           1092 ;  0 "" 2
                           1093 ;--- end asm ---
   0967 8E 35 26      [ 3] 1094 	ldx	#_width2RollingFront	; ,
   096A BF C8 EB      [ 6] 1095 	stx	_blockAnimation	; , blockAnimation
                           1096 ;----- asm -----
                           1097 ;  475 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1098 	; #ENR#[310]            blockOrientation = Horizontal;
                           1099 ;  0 "" 2
                           1100 ;--- end asm ---
   096D C6 02         [ 2] 1101 	ldb	#2	; ,
   096F F7 C8 E2      [ 5] 1102 	stb	_blockOrientation	; , blockOrientation
                           1103 ;----- asm -----
                           1104 ;  477 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1105 	; #ENR#[311]            splitMode = 0;
                           1106 ;  0 "" 2
                           1107 ;--- end asm ---
   0972 7F C8 E6      [ 7] 1108 	clr	_splitMode	;  splitMode
   0975 7E 09 B4      [ 4] 1109 	jmp	L50	; 
   0978                    1110 L46:
   0978 F6 C8 E7      [ 5] 1111 	ldb	_blockX	; , blockX
   097B F1 C8 E9      [ 5] 1112 	cmpb	_blockX2	;cmpqi:	; , blockX2
   097E 10 26 00 32   [ 6] 1113 	lbne	L50	; 
                           1114 ;----- asm -----
                           1115 ;  483 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1116 	; #ENR#[316]        if (blockY == blockY2 + 1)
                           1117 ;  0 "" 2
                           1118 ;--- end asm ---
   0982 E6 61         [ 5] 1119 	ldb	1,s	;  tmp35, blockY2.30
   0984 5C            [ 2] 1120 	incb	;  tmp35
   0985 E1 E4         [ 4] 1121 	cmpb	,s	;cmpqi:(R)	;  tmp35, blockY.29
   0987 26 16         [ 3] 1122 	bne	L49	; 
                           1123 ;----- asm -----
                           1124 ;  486 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1125 	; #ENR#[318]            blockAnimation = depth2RollingLeft;
                           1126 ;  0 "" 2
                           1127 ;--- end asm ---
   0989 8E 34 F6      [ 3] 1128 	ldx	#_depth2RollingLeft	; ,
   098C BF C8 EB      [ 6] 1129 	stx	_blockAnimation	; , blockAnimation
                           1130 ;----- asm -----
                           1131 ;  488 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1132 	; #ENR#[319]            blockOrientation = Vertical;
                           1133 ;  0 "" 2
                           1134 ;--- end asm ---
   098F C6 01         [ 2] 1135 	ldb	#1	; ,
   0991 F7 C8 E2      [ 5] 1136 	stb	_blockOrientation	; , blockOrientation
                           1137 ;----- asm -----
                           1138 ;  490 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1139 	; #ENR#[320]            blockY--;
                           1140 ;  0 "" 2
                           1141 ;--- end asm ---
   0994 E6 E4         [ 4] 1142 	ldb	,s	; , blockY.29
   0996 5A            [ 2] 1143 	decb	; 
   0997 F7 C8 E8      [ 5] 1144 	stb	_blockY	; , blockY
                           1145 ;----- asm -----
                           1146 ;  492 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1147 	; #ENR#[321]            splitMode = 0;
                           1148 ;  0 "" 2
                           1149 ;--- end asm ---
   099A 7F C8 E6      [ 7] 1150 	clr	_splitMode	;  splitMode
   099D 20 15         [ 3] 1151 	bra	L50	; 
   099F                    1152 L49:
   099F E6 61         [ 5] 1153 	ldb	1,s	;  tmp37, blockY2.30
   09A1 5A            [ 2] 1154 	decb	;  tmp37
   09A2 E1 E4         [ 4] 1155 	cmpb	,s	;cmpqi:(R)	;  tmp37, blockY.29
   09A4 26 0E         [ 3] 1156 	bne	L50	; 
                           1157 ;----- asm -----
                           1158 ;  497 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1159 	; #ENR#[325]            blockAnimation = depth2RollingLeft;
                           1160 ;  0 "" 2
                           1161 ;--- end asm ---
   09A6 8E 34 F6      [ 3] 1162 	ldx	#_depth2RollingLeft	; ,
   09A9 BF C8 EB      [ 6] 1163 	stx	_blockAnimation	; , blockAnimation
                           1164 ;----- asm -----
                           1165 ;  499 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1166 	; #ENR#[326]            blockOrientation = Vertical;
                           1167 ;  0 "" 2
                           1168 ;--- end asm ---
   09AC C6 01         [ 2] 1169 	ldb	#1	; ,
   09AE F7 C8 E2      [ 5] 1170 	stb	_blockOrientation	; , blockOrientation
                           1171 ;----- asm -----
                           1172 ;  501 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1173 	; #ENR#[327]            ;
                           1174 ;  0 "" 2
                           1175 ;  503 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1176 	; #ENR#[328]            splitMode = 0;
                           1177 ;  0 "" 2
                           1178 ;--- end asm ---
   09B1 7F C8 E6      [ 7] 1179 	clr	_splitMode	;  splitMode
   09B4                    1180 L50:
   09B4 32 64         [ 5] 1181 	leas	4,s	; ,,
   09B6 39            [ 5] 1182 	rts
                           1183 	.globl _swapSplit
   09B7                    1184 _swapSplit:
   09B7 32 7E         [ 5] 1185 	leas	-2,s	; ,,
                           1186 ;----- asm -----
                           1187 ;  511 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1188 	; #ENR#[335]    int8_t xt = blockX;
                           1189 ;  0 "" 2
                           1190 ;--- end asm ---
   09B9 F6 C8 E7      [ 5] 1191 	ldb	_blockX	; , blockX
   09BC E7 E4         [ 4] 1192 	stb	,s	; , xt
                           1193 ;----- asm -----
                           1194 ;  513 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1195 	; #ENR#[336]    int8_t yt = blockY;
                           1196 ;  0 "" 2
                           1197 ;--- end asm ---
   09BE F6 C8 E8      [ 5] 1198 	ldb	_blockY	; , blockY
   09C1 E7 61         [ 5] 1199 	stb	1,s	; , yt
                           1200 ;----- asm -----
                           1201 ;  515 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1202 	; #ENR#[337]    blockX = blockX2;
                           1203 ;  0 "" 2
                           1204 ;--- end asm ---
   09C3 F6 C8 E9      [ 5] 1205 	ldb	_blockX2	; , blockX2
   09C6 F7 C8 E7      [ 5] 1206 	stb	_blockX	; , blockX
                           1207 ;----- asm -----
                           1208 ;  517 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1209 	; #ENR#[338]    blockY = blockY2;
                           1210 ;  0 "" 2
                           1211 ;--- end asm ---
   09C9 F6 C8 EA      [ 5] 1212 	ldb	_blockY2	; , blockY2
   09CC F7 C8 E8      [ 5] 1213 	stb	_blockY	; , blockY
                           1214 ;----- asm -----
                           1215 ;  519 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1216 	; #ENR#[339]    blockX2 = xt;
                           1217 ;  0 "" 2
                           1218 ;--- end asm ---
   09CF E6 E4         [ 4] 1219 	ldb	,s	; , xt
   09D1 F7 C8 E9      [ 5] 1220 	stb	_blockX2	; , blockX2
                           1221 ;----- asm -----
                           1222 ;  521 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1223 	; #ENR#[340]    blockY2 = yt;
                           1224 ;  0 "" 2
                           1225 ;--- end asm ---
   09D4 E6 61         [ 5] 1226 	ldb	1,s	; , yt
   09D6 F7 C8 EA      [ 5] 1227 	stb	_blockY2	; , blockY2
   09D9 32 62         [ 5] 1228 	leas	2,s	; ,,
   09DB 39            [ 5] 1229 	rts
                           1230 	.globl _drawBlock
   09DC                    1231 _drawBlock:
   09DC 34 40         [ 6] 1232 	pshs	u	; 
   09DE 32 79         [ 5] 1233 	leas	-7,s	; ,,
   09E0 E7 62         [ 5] 1234 	stb	2,s	;  yofs, yofs
                           1235 ;----- asm -----
                           1236 ;  350 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1237 	; #ENR#[225]    intens(0x63);
                           1238 ;  0 "" 2
                           1239 ;--- end asm ---
   09E2 C6 63         [ 2] 1240 	ldb	#99	; ,
   09E4 E7 65         [ 5] 1241 	stb	5,s	; , a
                           1242 ;----- asm -----
                           1243 ;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   09E6 A6 65         [ 5] 1244 	lda 5,s	;  a
   09E8 BD F2 AB      [ 8] 1245 	jsr ___Intensity_a; BIOS call
                           1246 ;  0 "" 2
                           1247 ;  352 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1248 	; #ENR#[226]    int8_t yy = y3d(blockX, 0, blockY);
                           1249 ;  0 "" 2
                           1250 ;--- end asm ---
   09EB F6 C8 E8      [ 5] 1251 	ldb	_blockY	; , blockY
   09EE E7 E2         [ 6] 1252 	stb	,-s	; ,
   09F0 6F E2         [ 8] 1253 	clr	,-s	; 
   09F2 F6 C8 E7      [ 5] 1254 	ldb	_blockX	; , blockX
   09F5 BD 43 EC      [ 8] 1255 	jsr	_y3d	; 
   09F8 E7 65         [ 5] 1256 	stb	5,s	; , yy
                           1257 ;----- asm -----
                           1258 ;  355 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1259 	; #ENR#[228]    if (yofs < -30)
                           1260 ;  0 "" 2
                           1261 ;--- end asm ---
   09FA 32 62         [ 5] 1262 	leas	2,s	; ,,
   09FC E6 62         [ 5] 1263 	ldb	2,s	; , yofs
   09FE C1 E2         [ 2] 1264 	cmpb	#-30	;cmpqi:	; ,
   0A00 2C 31         [ 3] 1265 	bge	L54	; 
                           1266 ;----- asm -----
                           1267 ;  358 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1268 	; #ENR#[230]        positd(0, yofs);
                           1269 ;  0 "" 2
                           1270 ;--- end asm ---
   0A02 C6 80         [ 2] 1271 	ldb	#-128	; ,
   0A04 D7 04         [ 4] 1272 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0A06 E6 62         [ 5] 1273 	ldb	2,s	; , yofs
   0A08 E7 66         [ 5] 1274 	stb	6,s	; , a
   0A0A 6F 65         [ 7] 1275 	clr	5,s	;  b
                           1276 ;----- asm -----
                           1277 ;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A0C A6 66         [ 5] 1278 	lda 6,s	;  a
   0A0E E6 65         [ 5] 1279 	ldb 5,s	;  b
   0A10 BD F3 12      [ 8] 1280 	jsr ___Moveto_d; BIOS call
                           1281 ;  0 "" 2
                           1282 ;  360 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1283 	; #ENR#[231]        positd(x3d(blockX, blockY), yy);
                           1284 ;  0 "" 2
                           1285 ;--- end asm ---
   0A13 F6 C8 E8      [ 5] 1286 	ldb	_blockY	; , blockY
   0A16 E7 E2         [ 6] 1287 	stb	,-s	; ,
   0A18 F6 C8 E7      [ 5] 1288 	ldb	_blockX	; , blockX
   0A1B BD 43 CB      [ 8] 1289 	jsr	_x3d	; 
   0A1E E7 67         [ 5] 1290 	stb	7,s	; , b
   0A20 C6 80         [ 2] 1291 	ldb	#-128	; ,
   0A22 D7 04         [ 4] 1292 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0A24 E6 64         [ 5] 1293 	ldb	4,s	; , yy
   0A26 E7 66         [ 5] 1294 	stb	6,s	; , a
                           1295 ;----- asm -----
                           1296 ;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A28 A6 66         [ 5] 1297 	lda 6,s	;  a
   0A2A E6 67         [ 5] 1298 	ldb 7,s	;  b
   0A2C BD F3 12      [ 8] 1299 	jsr ___Moveto_d; BIOS call
                           1300 ;  0 "" 2
                           1301 ;--- end asm ---
   0A2F 32 61         [ 5] 1302 	leas	1,s	; ,,
   0A31 20 20         [ 3] 1303 	bra	L55	; 
   0A33                    1304 L54:
                           1305 ;----- asm -----
                           1306 ;  365 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1307 	; #ENR#[235]        positd(x3d(blockX, blockY), yy + yofs);
                           1308 ;  0 "" 2
                           1309 ;--- end asm ---
   0A33 F6 C8 E8      [ 5] 1310 	ldb	_blockY	; , blockY
   0A36 E7 E2         [ 6] 1311 	stb	,-s	; ,
   0A38 F6 C8 E7      [ 5] 1312 	ldb	_blockX	; , blockX
   0A3B BD 43 CB      [ 8] 1313 	jsr	_x3d	; 
   0A3E E7 66         [ 5] 1314 	stb	6,s	; , b
   0A40 C6 80         [ 2] 1315 	ldb	#-128	; ,
   0A42 D7 04         [ 4] 1316 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0A44 E6 64         [ 5] 1317 	ldb	4,s	; , yy
   0A46 EB 63         [ 5] 1318 	addb	3,s	; , yofs
   0A48 E7 67         [ 5] 1319 	stb	7,s	; , a
                           1320 ;----- asm -----
                           1321 ;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A4A A6 67         [ 5] 1322 	lda 7,s	;  a
   0A4C E6 66         [ 5] 1323 	ldb 6,s	;  b
   0A4E BD F3 12      [ 8] 1324 	jsr ___Moveto_d; BIOS call
                           1325 ;  0 "" 2
                           1326 ;--- end asm ---
   0A51 32 61         [ 5] 1327 	leas	1,s	; ,,
   0A53                    1328 L55:
                           1329 ;----- asm -----
                           1330 ;  369 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1331 	; #ENR#[238]    dp_VIA_t1_cnt_lo = 0x7f / FACTOR; // scale
                           1332 ;  0 "" 2
                           1333 ;--- end asm ---
   0A53 C6 2A         [ 2] 1334 	ldb	#42	; ,
   0A55 D7 04         [ 4] 1335 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1336 ;----- asm -----
                           1337 ;  372 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1338 	; #ENR#[240]    Draw_VLpo((void *)(blockAnimation[blockAnimationStep]));
                           1339 ;  0 "" 2
                           1340 ;--- end asm ---
   0A57 F6 C8 EF      [ 5] 1341 	ldb	_blockAnimationStep	; , blockAnimationStep
   0A5A 1D            [ 2] 1342 	sex		;extendqihi2: R:b -> R:d	; ,
   0A5B ED E4         [ 5] 1343 	std	,s	; ,
   0A5D 58            [ 2] 1344 	aslb	; 
   0A5E 49            [ 2] 1345 	rola	; 
   0A5F FE C8 EB      [ 6] 1346 	ldu	_blockAnimation	; , blockAnimation
   0A62 30 CB         [ 8] 1347 	leax	d,u	;  tmp37, tmp36,
   0A64 AE 84         [ 5] 1348 	ldx	,x	; ,
   0A66 BD 08 90      [ 8] 1349 	jsr	_Draw_VLpo	; 
                           1350 ;----- asm -----
                           1351 ;  376 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1352 	; #ENR#[243]    if (splitMode)
                           1353 ;  0 "" 2
                           1354 ;--- end asm ---
   0A69 7D C8 E6      [ 7] 1355 	tst	_splitMode	;  splitMode
   0A6C 10 27 00 7E   [ 6] 1356 	lbeq	L59	; 
                           1357 ;----- asm -----
                           1358 ;  379 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1359 	; #ENR#[245]        zergnd();
                           1360 ;  0 "" 2
                           1361 ;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A70 BD F3 54      [ 8] 1362 	jsr ___Reset0Ref; BIOS call
                           1363 ;  0 "" 2
                           1364 ;  381 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1365 	; #ENR#[246]        intens(0x35);
                           1366 ;  0 "" 2
                           1367 ;--- end asm ---
   0A73 C6 35         [ 2] 1368 	ldb	#53	; ,
   0A75 E7 66         [ 5] 1369 	stb	6,s	; , a
                           1370 ;----- asm -----
                           1371 ;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A77 A6 66         [ 5] 1372 	lda 6,s	;  a
   0A79 BD F2 AB      [ 8] 1373 	jsr ___Intensity_a; BIOS call
                           1374 ;  0 "" 2
                           1375 ;  383 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1376 	; #ENR#[247]        yy = y3d(blockX2, 0, blockY2);
                           1377 ;  0 "" 2
                           1378 ;--- end asm ---
   0A7C F6 C8 EA      [ 5] 1379 	ldb	_blockY2	; , blockY2
   0A7F E7 E2         [ 6] 1380 	stb	,-s	; ,
   0A81 6F E2         [ 8] 1381 	clr	,-s	; 
   0A83 F6 C8 E9      [ 5] 1382 	ldb	_blockX2	; , blockX2
   0A86 BD 43 EC      [ 8] 1383 	jsr	_y3d	; 
   0A89 E7 66         [ 5] 1384 	stb	6,s	; , yy.133
                           1385 ;----- asm -----
                           1386 ;  386 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1387 	; #ENR#[249]        if (yofs < -50)
                           1388 ;  0 "" 2
                           1389 ;--- end asm ---
   0A8B 32 62         [ 5] 1390 	leas	2,s	; ,,
   0A8D E6 62         [ 5] 1391 	ldb	2,s	; , yofs
   0A8F C1 CE         [ 2] 1392 	cmpb	#-50	;cmpqi:	; ,
   0A91 2C 31         [ 3] 1393 	bge	L57	; 
                           1394 ;----- asm -----
                           1395 ;  389 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1396 	; #ENR#[251]            positd(0, yofs);
                           1397 ;  0 "" 2
                           1398 ;--- end asm ---
   0A93 C6 80         [ 2] 1399 	ldb	#-128	; ,
   0A95 D7 04         [ 4] 1400 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0A97 E6 62         [ 5] 1401 	ldb	2,s	; , yofs
   0A99 E7 65         [ 5] 1402 	stb	5,s	; , a
   0A9B 6F 66         [ 7] 1403 	clr	6,s	;  b
                           1404 ;----- asm -----
                           1405 ;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A9D A6 65         [ 5] 1406 	lda 5,s	;  a
   0A9F E6 66         [ 5] 1407 	ldb 6,s	;  b
   0AA1 BD F3 12      [ 8] 1408 	jsr ___Moveto_d; BIOS call
                           1409 ;  0 "" 2
                           1410 ;  391 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1411 	; #ENR#[252]            positd(x3d(blockX2, blockY2), yy);
                           1412 ;  0 "" 2
                           1413 ;--- end asm ---
   0AA4 F6 C8 EA      [ 5] 1414 	ldb	_blockY2	; , blockY2
   0AA7 E7 E2         [ 6] 1415 	stb	,-s	; ,
   0AA9 F6 C8 E9      [ 5] 1416 	ldb	_blockX2	; , blockX2
   0AAC BD 43 CB      [ 8] 1417 	jsr	_x3d	; 
   0AAF E7 66         [ 5] 1418 	stb	6,s	; , b
   0AB1 C6 80         [ 2] 1419 	ldb	#-128	; ,
   0AB3 D7 04         [ 4] 1420 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0AB5 E6 65         [ 5] 1421 	ldb	5,s	; , yy.133
   0AB7 E7 67         [ 5] 1422 	stb	7,s	; , a
                           1423 ;----- asm -----
                           1424 ;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0AB9 A6 67         [ 5] 1425 	lda 7,s	;  a
   0ABB E6 66         [ 5] 1426 	ldb 6,s	;  b
   0ABD BD F3 12      [ 8] 1427 	jsr ___Moveto_d; BIOS call
                           1428 ;  0 "" 2
                           1429 ;--- end asm ---
   0AC0 32 61         [ 5] 1430 	leas	1,s	; ,,
   0AC2 20 20         [ 3] 1431 	bra	L58	; 
   0AC4                    1432 L57:
                           1433 ;----- asm -----
                           1434 ;  396 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1435 	; #ENR#[256]            positd(x3d(blockX2, blockY2), yy + yofs);
                           1436 ;  0 "" 2
                           1437 ;--- end asm ---
   0AC4 F6 C8 EA      [ 5] 1438 	ldb	_blockY2	; , blockY2
   0AC7 E7 E2         [ 6] 1439 	stb	,-s	; ,
   0AC9 F6 C8 E9      [ 5] 1440 	ldb	_blockX2	; , blockX2
   0ACC BD 43 CB      [ 8] 1441 	jsr	_x3d	; 
   0ACF E7 67         [ 5] 1442 	stb	7,s	; , b
   0AD1 C6 80         [ 2] 1443 	ldb	#-128	; ,
   0AD3 D7 04         [ 4] 1444 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0AD5 E6 65         [ 5] 1445 	ldb	5,s	; , yy.133
   0AD7 EB 63         [ 5] 1446 	addb	3,s	; , yofs
   0AD9 E7 66         [ 5] 1447 	stb	6,s	; , a
                           1448 ;----- asm -----
                           1449 ;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0ADB A6 66         [ 5] 1450 	lda 6,s	;  a
   0ADD E6 67         [ 5] 1451 	ldb 7,s	;  b
   0ADF BD F3 12      [ 8] 1452 	jsr ___Moveto_d; BIOS call
                           1453 ;  0 "" 2
                           1454 ;--- end asm ---
   0AE2 32 61         [ 5] 1455 	leas	1,s	; ,,
   0AE4                    1456 L58:
                           1457 ;----- asm -----
                           1458 ;  400 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1459 	; #ENR#[259]        dp_VIA_t1_cnt_lo = 0x7f / FACTOR; // scale
                           1460 ;  0 "" 2
                           1461 ;--- end asm ---
   0AE4 C6 2A         [ 2] 1462 	ldb	#42	; ,
   0AE6 D7 04         [ 4] 1463 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1464 ;----- asm -----
                           1465 ;  403 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
                           1466 	; #ENR#[261]        Draw_VLpo((void *)(height1FallingLeft[0]));
                           1467 ;  0 "" 2
                           1468 ;--- end asm ---
   0AE8 BE 35 56      [ 6] 1469 	ldx	_height1FallingLeft	; , height1FallingLeft
   0AEB BD 08 90      [ 8] 1470 	jsr	_Draw_VLpo	; 
   0AEE                    1471 L59:
   0AEE 32 67         [ 5] 1472 	leas	7,s	; ,,
   0AF0 35 C0         [ 7] 1473 	puls	u,pc	; 
                           1474 	.globl _height2FallingLeft0
   0AF2                    1475 _height2FallingLeft0:
   0AF2 FF                 1476 	.byte	-1
   0AF3 09                 1477 	.byte	9
   0AF4 2A                 1478 	.byte	42
   0AF5 FF                 1479 	.byte	-1
   0AF6 18                 1480 	.byte	24
   0AF7 EE                 1481 	.byte	-18
   0AF8 FF                 1482 	.byte	-1
   0AF9 F7                 1483 	.byte	-9
   0AFA D9                 1484 	.byte	-39
   0AFB FF                 1485 	.byte	-1
   0AFC E8                 1486 	.byte	-24
   0AFD 0F                 1487 	.byte	15
   0AFE FF                 1488 	.byte	-1
   0AFF 4E                 1489 	.byte	78
   0B00 00                 1490 	.byte	0
   0B01 00                 1491 	.byte	0
   0B02 BB                 1492 	.byte	-69
   0B03 2A                 1493 	.byte	42
   0B04 FF                 1494 	.byte	-1
   0B05 4E                 1495 	.byte	78
   0B06 00                 1496 	.byte	0
   0B07 00                 1497 	.byte	0
   0B08 CA                 1498 	.byte	-54
   0B09 EE                 1499 	.byte	-18
   0B0A FF                 1500 	.byte	-1
   0B0B 4E                 1501 	.byte	78
   0B0C 00                 1502 	.byte	0
   0B0D 00                 1503 	.byte	0
   0B0E A9                 1504 	.byte	-87
   0B0F D9                 1505 	.byte	-39
   0B10 FF                 1506 	.byte	-1
   0B11 4E                 1507 	.byte	78
   0B12 00                 1508 	.byte	0
   0B13 00                 1509 	.byte	0
   0B14 E8                 1510 	.byte	-24
   0B15 0F                 1511 	.byte	15
   0B16 FF                 1512 	.byte	-1
   0B17 09                 1513 	.byte	9
   0B18 2A                 1514 	.byte	42
   0B19 FF                 1515 	.byte	-1
   0B1A 18                 1516 	.byte	24
   0B1B EE                 1517 	.byte	-18
   0B1C FF                 1518 	.byte	-1
   0B1D F7                 1519 	.byte	-9
   0B1E D9                 1520 	.byte	-39
   0B1F FF                 1521 	.byte	-1
   0B20 E8                 1522 	.byte	-24
   0B21 0F                 1523 	.byte	15
   0B22 01                 1524 	.byte	1
                           1525 	.globl _height2RisingRight0
   0B23                    1526 _height2RisingRight0:
   0B23 00                 1527 	.byte	0
   0B24 12                 1528 	.byte	18
   0B25 54                 1529 	.byte	84
   0B26 FF                 1530 	.byte	-1
   0B27 27                 1531 	.byte	39
   0B28 06                 1532 	.byte	6
   0B29 FF                 1533 	.byte	-1
   0B2A 18                 1534 	.byte	24
   0B2B EE                 1535 	.byte	-18
   0B2C FF                 1536 	.byte	-1
   0B2D D9                 1537 	.byte	-39
   0B2E FA                 1538 	.byte	-6
   0B2F FF                 1539 	.byte	-1
   0B30 E8                 1540 	.byte	-24
   0B31 12                 1541 	.byte	18
   0B32 FF                 1542 	.byte	-1
   0B33 F7                 1543 	.byte	-9
   0B34 AC                 1544 	.byte	-84
   0B35 00                 1545 	.byte	0
   0B36 30                 1546 	.byte	48
   0B37 5A                 1547 	.byte	90
   0B38 FF                 1548 	.byte	-1
   0B39 FA                 1549 	.byte	-6
   0B3A AC                 1550 	.byte	-84
   0B3B 00                 1551 	.byte	0
   0B3C 1E                 1552 	.byte	30
   0B3D 42                 1553 	.byte	66
   0B3E FF                 1554 	.byte	-1
   0B3F FA                 1555 	.byte	-6
   0B40 AF                 1556 	.byte	-81
   0B41 00                 1557 	.byte	0
   0B42 DF                 1558 	.byte	-33
   0B43 4B                 1559 	.byte	75
   0B44 FF                 1560 	.byte	-1
   0B45 F7                 1561 	.byte	-9
   0B46 AF                 1562 	.byte	-81
   0B47 00                 1563 	.byte	0
   0B48 E8                 1564 	.byte	-24
   0B49 0F                 1565 	.byte	15
   0B4A FF                 1566 	.byte	-1
   0B4B 2A                 1567 	.byte	42
   0B4C 06                 1568 	.byte	6
   0B4D FF                 1569 	.byte	-1
   0B4E 18                 1570 	.byte	24
   0B4F F1                 1571 	.byte	-15
   0B50 FF                 1572 	.byte	-1
   0B51 D6                 1573 	.byte	-42
   0B52 FA                 1574 	.byte	-6
   0B53 FF                 1575 	.byte	-1
   0B54 E8                 1576 	.byte	-24
   0B55 0F                 1577 	.byte	15
   0B56 01                 1578 	.byte	1
                           1579 	.globl _height2FallingRight0
   0B57                    1580 _height2FallingRight0:
   0B57 FF                 1581 	.byte	-1
   0B58 09                 1582 	.byte	9
   0B59 2A                 1583 	.byte	42
   0B5A FF                 1584 	.byte	-1
   0B5B 18                 1585 	.byte	24
   0B5C EE                 1586 	.byte	-18
   0B5D FF                 1587 	.byte	-1
   0B5E F7                 1588 	.byte	-9
   0B5F D9                 1589 	.byte	-39
   0B60 FF                 1590 	.byte	-1
   0B61 E8                 1591 	.byte	-24
   0B62 0F                 1592 	.byte	15
   0B63 FF                 1593 	.byte	-1
   0B64 4E                 1594 	.byte	78
   0B65 00                 1595 	.byte	0
   0B66 00                 1596 	.byte	0
   0B67 BB                 1597 	.byte	-69
   0B68 2A                 1598 	.byte	42
   0B69 FF                 1599 	.byte	-1
   0B6A 4E                 1600 	.byte	78
   0B6B 00                 1601 	.byte	0
   0B6C 00                 1602 	.byte	0
   0B6D CA                 1603 	.byte	-54
   0B6E EE                 1604 	.byte	-18
   0B6F FF                 1605 	.byte	-1
   0B70 4E                 1606 	.byte	78
   0B71 00                 1607 	.byte	0
   0B72 00                 1608 	.byte	0
   0B73 A9                 1609 	.byte	-87
   0B74 D9                 1610 	.byte	-39
   0B75 FF                 1611 	.byte	-1
   0B76 4E                 1612 	.byte	78
   0B77 00                 1613 	.byte	0
   0B78 00                 1614 	.byte	0
   0B79 E8                 1615 	.byte	-24
   0B7A 0F                 1616 	.byte	15
   0B7B FF                 1617 	.byte	-1
   0B7C 09                 1618 	.byte	9
   0B7D 2A                 1619 	.byte	42
   0B7E FF                 1620 	.byte	-1
   0B7F 18                 1621 	.byte	24
   0B80 EE                 1622 	.byte	-18
   0B81 FF                 1623 	.byte	-1
   0B82 F7                 1624 	.byte	-9
   0B83 D9                 1625 	.byte	-39
   0B84 FF                 1626 	.byte	-1
   0B85 E8                 1627 	.byte	-24
   0B86 0F                 1628 	.byte	15
   0B87 01                 1629 	.byte	1
                           1630 	.globl _height2RisingLeft0
   0B88                    1631 _height2RisingLeft0:
   0B88 00                 1632 	.byte	0
   0B89 24                 1633 	.byte	36
   0B8A FD                 1634 	.byte	-3
   0B8B FF                 1635 	.byte	-1
   0B8C DC                 1636 	.byte	-36
   0B8D 03                 1637 	.byte	3
   0B8E FF                 1638 	.byte	-1
   0B8F 18                 1639 	.byte	24
   0B90 F1                 1640 	.byte	-15
   0B91 FF                 1641 	.byte	-1
   0B92 24                 1642 	.byte	36
   0B93 FA                 1643 	.byte	-6
   0B94 FF                 1644 	.byte	-1
   0B95 E8                 1645 	.byte	-24
   0B96 12                 1646 	.byte	18
   0B97 FF                 1647 	.byte	-1
   0B98 1E                 1648 	.byte	30
   0B99 51                 1649 	.byte	81
   0B9A 00                 1650 	.byte	0
   0B9B BE                 1651 	.byte	-66
   0B9C B2                 1652 	.byte	-78
   0B9D FF                 1653 	.byte	-1
   0B9E 1B                 1654 	.byte	27
   0B9F 54                 1655 	.byte	84
   0BA0 00                 1656 	.byte	0
   0BA1 FD                 1657 	.byte	-3
   0BA2 9D                 1658 	.byte	-99
   0BA3 FF                 1659 	.byte	-1
   0BA4 1B                 1660 	.byte	27
   0BA5 51                 1661 	.byte	81
   0BA6 00                 1662 	.byte	0
   0BA7 09                 1663 	.byte	9
   0BA8 A9                 1664 	.byte	-87
   0BA9 FF                 1665 	.byte	-1
   0BAA 1E                 1666 	.byte	30
   0BAB 51                 1667 	.byte	81
   0BAC 00                 1668 	.byte	0
   0BAD E8                 1669 	.byte	-24
   0BAE 12                 1670 	.byte	18
   0BAF FF                 1671 	.byte	-1
   0BB0 D9                 1672 	.byte	-39
   0BB1 06                 1673 	.byte	6
   0BB2 FF                 1674 	.byte	-1
   0BB3 18                 1675 	.byte	24
   0BB4 EE                 1676 	.byte	-18
   0BB5 FF                 1677 	.byte	-1
   0BB6 27                 1678 	.byte	39
   0BB7 FA                 1679 	.byte	-6
   0BB8 FF                 1680 	.byte	-1
   0BB9 E8                 1681 	.byte	-24
   0BBA 12                 1682 	.byte	18
   0BBB 01                 1683 	.byte	1
                           1684 	.globl _height2FallingBack0
   0BBC                    1685 _height2FallingBack0:
   0BBC FF                 1686 	.byte	-1
   0BBD 09                 1687 	.byte	9
   0BBE 2A                 1688 	.byte	42
   0BBF FF                 1689 	.byte	-1
   0BC0 18                 1690 	.byte	24
   0BC1 EE                 1691 	.byte	-18
   0BC2 FF                 1692 	.byte	-1
   0BC3 F7                 1693 	.byte	-9
   0BC4 D9                 1694 	.byte	-39
   0BC5 FF                 1695 	.byte	-1
   0BC6 E8                 1696 	.byte	-24
   0BC7 0F                 1697 	.byte	15
   0BC8 FF                 1698 	.byte	-1
   0BC9 4E                 1699 	.byte	78
   0BCA 00                 1700 	.byte	0
   0BCB 00                 1701 	.byte	0
   0BCC BB                 1702 	.byte	-69
   0BCD 2A                 1703 	.byte	42
   0BCE FF                 1704 	.byte	-1
   0BCF 4E                 1705 	.byte	78
   0BD0 00                 1706 	.byte	0
   0BD1 00                 1707 	.byte	0
   0BD2 CA                 1708 	.byte	-54
   0BD3 EE                 1709 	.byte	-18
   0BD4 FF                 1710 	.byte	-1
   0BD5 4E                 1711 	.byte	78
   0BD6 00                 1712 	.byte	0
   0BD7 00                 1713 	.byte	0
   0BD8 A9                 1714 	.byte	-87
   0BD9 D9                 1715 	.byte	-39
   0BDA FF                 1716 	.byte	-1
   0BDB 4E                 1717 	.byte	78
   0BDC 00                 1718 	.byte	0
   0BDD 00                 1719 	.byte	0
   0BDE E8                 1720 	.byte	-24
   0BDF 0F                 1721 	.byte	15
   0BE0 FF                 1722 	.byte	-1
   0BE1 09                 1723 	.byte	9
   0BE2 2A                 1724 	.byte	42
   0BE3 FF                 1725 	.byte	-1
   0BE4 18                 1726 	.byte	24
   0BE5 EE                 1727 	.byte	-18
   0BE6 FF                 1728 	.byte	-1
   0BE7 F7                 1729 	.byte	-9
   0BE8 D9                 1730 	.byte	-39
   0BE9 FF                 1731 	.byte	-1
   0BEA E8                 1732 	.byte	-24
   0BEB 0F                 1733 	.byte	15
   0BEC 01                 1734 	.byte	1
                           1735 	.globl _height2RisingFront0
   0BED                    1736 _height2RisingFront0:
   0BED 00                 1737 	.byte	0
   0BEE 24                 1738 	.byte	36
   0BEF 03                 1739 	.byte	3
   0BF0 FF                 1740 	.byte	-1
   0BF1 09                 1741 	.byte	9
   0BF2 2A                 1742 	.byte	42
   0BF3 FF                 1743 	.byte	-1
   0BF4 DC                 1744 	.byte	-36
   0BF5 FD                 1745 	.byte	-3
   0BF6 FF                 1746 	.byte	-1
   0BF7 F7                 1747 	.byte	-9
   0BF8 D6                 1748 	.byte	-42
   0BF9 FF                 1749 	.byte	-1
   0BFA 24                 1750 	.byte	36
   0BFB 03                 1751 	.byte	3
   0BFC FF                 1752 	.byte	-1
   0BFD 39                 1753 	.byte	57
   0BFE DF                 1754 	.byte	-33
   0BFF 00                 1755 	.byte	0
   0C00 D0                 1756 	.byte	-48
   0C01 4B                 1757 	.byte	75
   0C02 FF                 1758 	.byte	-1
   0C03 39                 1759 	.byte	57
   0C04 DC                 1760 	.byte	-36
   0C05 00                 1761 	.byte	0
   0C06 A3                 1762 	.byte	-93
   0C07 21                 1763 	.byte	33
   0C08 FF                 1764 	.byte	-1
   0C09 39                 1765 	.byte	57
   0C0A DC                 1766 	.byte	-36
   0C0B 00                 1767 	.byte	0
   0C0C BE                 1768 	.byte	-66
   0C0D FA                 1769 	.byte	-6
   0C0E FF                 1770 	.byte	-1
   0C0F 39                 1771 	.byte	57
   0C10 DF                 1772 	.byte	-33
   0C11 00                 1773 	.byte	0
   0C12 24                 1774 	.byte	36
   0C13 03                 1775 	.byte	3
   0C14 FF                 1776 	.byte	-1
   0C15 09                 1777 	.byte	9
   0C16 27                 1778 	.byte	39
   0C17 FF                 1779 	.byte	-1
   0C18 DC                 1780 	.byte	-36
   0C19 FD                 1781 	.byte	-3
   0C1A FF                 1782 	.byte	-1
   0C1B F7                 1783 	.byte	-9
   0C1C D9                 1784 	.byte	-39
   0C1D FF                 1785 	.byte	-1
   0C1E 24                 1786 	.byte	36
   0C1F 03                 1787 	.byte	3
   0C20 01                 1788 	.byte	1
                           1789 	.globl _height2FallingFront0
   0C21                    1790 _height2FallingFront0:
   0C21 FF                 1791 	.byte	-1
   0C22 09                 1792 	.byte	9
   0C23 2A                 1793 	.byte	42
   0C24 FF                 1794 	.byte	-1
   0C25 18                 1795 	.byte	24
   0C26 EE                 1796 	.byte	-18
   0C27 FF                 1797 	.byte	-1
   0C28 F7                 1798 	.byte	-9
   0C29 D9                 1799 	.byte	-39
   0C2A FF                 1800 	.byte	-1
   0C2B E8                 1801 	.byte	-24
   0C2C 0F                 1802 	.byte	15
   0C2D FF                 1803 	.byte	-1
   0C2E 4E                 1804 	.byte	78
   0C2F 00                 1805 	.byte	0
   0C30 00                 1806 	.byte	0
   0C31 BB                 1807 	.byte	-69
   0C32 2A                 1808 	.byte	42
   0C33 FF                 1809 	.byte	-1
   0C34 4E                 1810 	.byte	78
   0C35 00                 1811 	.byte	0
   0C36 00                 1812 	.byte	0
   0C37 CA                 1813 	.byte	-54
   0C38 EE                 1814 	.byte	-18
   0C39 FF                 1815 	.byte	-1
   0C3A 4E                 1816 	.byte	78
   0C3B 00                 1817 	.byte	0
   0C3C 00                 1818 	.byte	0
   0C3D A9                 1819 	.byte	-87
   0C3E D9                 1820 	.byte	-39
   0C3F FF                 1821 	.byte	-1
   0C40 4E                 1822 	.byte	78
   0C41 00                 1823 	.byte	0
   0C42 00                 1824 	.byte	0
   0C43 E8                 1825 	.byte	-24
   0C44 0F                 1826 	.byte	15
   0C45 FF                 1827 	.byte	-1
   0C46 09                 1828 	.byte	9
   0C47 2A                 1829 	.byte	42
   0C48 FF                 1830 	.byte	-1
   0C49 18                 1831 	.byte	24
   0C4A EE                 1832 	.byte	-18
   0C4B FF                 1833 	.byte	-1
   0C4C F7                 1834 	.byte	-9
   0C4D D9                 1835 	.byte	-39
   0C4E FF                 1836 	.byte	-1
   0C4F E8                 1837 	.byte	-24
   0C50 0F                 1838 	.byte	15
   0C51 01                 1839 	.byte	1
                           1840 	.globl _height2RisingBack0
   0C52                    1841 _height2RisingBack0:
   0C52 00                 1842 	.byte	0
   0C53 30                 1843 	.byte	48
   0C54 DF                 1844 	.byte	-33
   0C55 FF                 1845 	.byte	-1
   0C56 09                 1846 	.byte	9
   0C57 27                 1847 	.byte	39
   0C58 FF                 1848 	.byte	-1
   0C59 2A                 1849 	.byte	42
   0C5A FD                 1850 	.byte	-3
   0C5B FF                 1851 	.byte	-1
   0C5C F7                 1852 	.byte	-9
   0C5D D9                 1853 	.byte	-39
   0C5E FF                 1854 	.byte	-1
   0C5F D6                 1855 	.byte	-42
   0C60 03                 1856 	.byte	3
   0C61 FF                 1857 	.byte	-1
   0C62 DC                 1858 	.byte	-36
   0C63 21                 1859 	.byte	33
   0C64 00                 1860 	.byte	0
   0C65 2D                 1861 	.byte	45
   0C66 06                 1862 	.byte	6
   0C67 FF                 1863 	.byte	-1
   0C68 DC                 1864 	.byte	-36
   0C69 24                 1865 	.byte	36
   0C6A 00                 1866 	.byte	0
   0C6B 4E                 1867 	.byte	78
   0C6C D9                 1868 	.byte	-39
   0C6D FF                 1869 	.byte	-1
   0C6E D9                 1870 	.byte	-39
   0C6F 24                 1871 	.byte	36
   0C70 00                 1872 	.byte	0
   0C71 1E                 1873 	.byte	30
   0C72 B5                 1874 	.byte	-75
   0C73 FF                 1875 	.byte	-1
   0C74 D9                 1876 	.byte	-39
   0C75 24                 1877 	.byte	36
   0C76 00                 1878 	.byte	0
   0C77 D9                 1879 	.byte	-39
   0C78 00                 1880 	.byte	0
   0C79 FF                 1881 	.byte	-1
   0C7A 09                 1882 	.byte	9
   0C7B 2A                 1883 	.byte	42
   0C7C FF                 1884 	.byte	-1
   0C7D 27                 1885 	.byte	39
   0C7E FD                 1886 	.byte	-3
   0C7F FF                 1887 	.byte	-1
   0C80 F7                 1888 	.byte	-9
   0C81 D9                 1889 	.byte	-39
   0C82 FF                 1890 	.byte	-1
   0C83 D9                 1891 	.byte	-39
   0C84 00                 1892 	.byte	0
   0C85 01                 1893 	.byte	1
                           1894 	.globl _depth2RollingLeft0
   0C86                    1895 _depth2RollingLeft0:
   0C86 FF                 1896 	.byte	-1
   0C87 09                 1897 	.byte	9
   0C88 2A                 1898 	.byte	42
   0C89 FF                 1899 	.byte	-1
   0C8A 30                 1900 	.byte	48
   0C8B DC                 1901 	.byte	-36
   0C8C FF                 1902 	.byte	-1
   0C8D F7                 1903 	.byte	-9
   0C8E D9                 1904 	.byte	-39
   0C8F FF                 1905 	.byte	-1
   0C90 D0                 1906 	.byte	-48
   0C91 21                 1907 	.byte	33
   0C92 FF                 1908 	.byte	-1
   0C93 27                 1909 	.byte	39
   0C94 00                 1910 	.byte	0
   0C95 00                 1911 	.byte	0
   0C96 E2                 1912 	.byte	-30
   0C97 2A                 1913 	.byte	42
   0C98 FF                 1914 	.byte	-1
   0C99 27                 1915 	.byte	39
   0C9A 00                 1916 	.byte	0
   0C9B 00                 1917 	.byte	0
   0C9C 09                 1918 	.byte	9
   0C9D DC                 1919 	.byte	-36
   0C9E FF                 1920 	.byte	-1
   0C9F 27                 1921 	.byte	39
   0CA0 00                 1922 	.byte	0
   0CA1 00                 1923 	.byte	0
   0CA2 D0                 1924 	.byte	-48
   0CA3 D9                 1925 	.byte	-39
   0CA4 FF                 1926 	.byte	-1
   0CA5 27                 1927 	.byte	39
   0CA6 00                 1928 	.byte	0
   0CA7 00                 1929 	.byte	0
   0CA8 D0                 1930 	.byte	-48
   0CA9 21                 1931 	.byte	33
   0CAA FF                 1932 	.byte	-1
   0CAB 09                 1933 	.byte	9
   0CAC 2A                 1934 	.byte	42
   0CAD FF                 1935 	.byte	-1
   0CAE 30                 1936 	.byte	48
   0CAF DC                 1937 	.byte	-36
   0CB0 FF                 1938 	.byte	-1
   0CB1 F7                 1939 	.byte	-9
   0CB2 D9                 1940 	.byte	-39
   0CB3 FF                 1941 	.byte	-1
   0CB4 D0                 1942 	.byte	-48
   0CB5 21                 1943 	.byte	33
   0CB6 01                 1944 	.byte	1
                           1945 	.globl _depth2RollingRight0
   0CB7                    1946 _depth2RollingRight0:
   0CB7 FF                 1947 	.byte	-1
   0CB8 09                 1948 	.byte	9
   0CB9 2A                 1949 	.byte	42
   0CBA FF                 1950 	.byte	-1
   0CBB 30                 1951 	.byte	48
   0CBC DC                 1952 	.byte	-36
   0CBD FF                 1953 	.byte	-1
   0CBE F7                 1954 	.byte	-9
   0CBF D9                 1955 	.byte	-39
   0CC0 FF                 1956 	.byte	-1
   0CC1 D0                 1957 	.byte	-48
   0CC2 21                 1958 	.byte	33
   0CC3 FF                 1959 	.byte	-1
   0CC4 27                 1960 	.byte	39
   0CC5 00                 1961 	.byte	0
   0CC6 00                 1962 	.byte	0
   0CC7 E2                 1963 	.byte	-30
   0CC8 2A                 1964 	.byte	42
   0CC9 FF                 1965 	.byte	-1
   0CCA 27                 1966 	.byte	39
   0CCB 00                 1967 	.byte	0
   0CCC 00                 1968 	.byte	0
   0CCD 09                 1969 	.byte	9
   0CCE DC                 1970 	.byte	-36
   0CCF FF                 1971 	.byte	-1
   0CD0 27                 1972 	.byte	39
   0CD1 00                 1973 	.byte	0
   0CD2 00                 1974 	.byte	0
   0CD3 D0                 1975 	.byte	-48
   0CD4 D9                 1976 	.byte	-39
   0CD5 FF                 1977 	.byte	-1
   0CD6 27                 1978 	.byte	39
   0CD7 00                 1979 	.byte	0
   0CD8 00                 1980 	.byte	0
   0CD9 D0                 1981 	.byte	-48
   0CDA 21                 1982 	.byte	33
   0CDB FF                 1983 	.byte	-1
   0CDC 09                 1984 	.byte	9
   0CDD 2A                 1985 	.byte	42
   0CDE FF                 1986 	.byte	-1
   0CDF 30                 1987 	.byte	48
   0CE0 DC                 1988 	.byte	-36
   0CE1 FF                 1989 	.byte	-1
   0CE2 F7                 1990 	.byte	-9
   0CE3 D9                 1991 	.byte	-39
   0CE4 FF                 1992 	.byte	-1
   0CE5 D0                 1993 	.byte	-48
   0CE6 21                 1994 	.byte	33
   0CE7 01                 1995 	.byte	1
                           1996 	.globl _width2RollingFront0
   0CE8                    1997 _width2RollingFront0:
   0CE8 FF                 1998 	.byte	-1
   0CE9 12                 1999 	.byte	18
   0CEA 54                 2000 	.byte	84
   0CEB FF                 2001 	.byte	-1
   0CEC 18                 2002 	.byte	24
   0CED EE                 2003 	.byte	-18
   0CEE FF                 2004 	.byte	-1
   0CEF EE                 2005 	.byte	-18
   0CF0 AF                 2006 	.byte	-81
   0CF1 FF                 2007 	.byte	-1
   0CF2 E8                 2008 	.byte	-24
   0CF3 0F                 2009 	.byte	15
   0CF4 FF                 2010 	.byte	-1
   0CF5 27                 2011 	.byte	39
   0CF6 00                 2012 	.byte	0
   0CF7 00                 2013 	.byte	0
   0CF8 EB                 2014 	.byte	-21
   0CF9 54                 2015 	.byte	84
   0CFA FF                 2016 	.byte	-1
   0CFB 27                 2017 	.byte	39
   0CFC 00                 2018 	.byte	0
   0CFD 00                 2019 	.byte	0
   0CFE F1                 2020 	.byte	-15
   0CFF EE                 2021 	.byte	-18
   0D00 FF                 2022 	.byte	-1
   0D01 27                 2023 	.byte	39
   0D02 00                 2024 	.byte	0
   0D03 00                 2025 	.byte	0
   0D04 C7                 2026 	.byte	-57
   0D05 AF                 2027 	.byte	-81
   0D06 FF                 2028 	.byte	-1
   0D07 27                 2029 	.byte	39
   0D08 00                 2030 	.byte	0
   0D09 00                 2031 	.byte	0
   0D0A E8                 2032 	.byte	-24
   0D0B 0F                 2033 	.byte	15
   0D0C FF                 2034 	.byte	-1
   0D0D 12                 2035 	.byte	18
   0D0E 54                 2036 	.byte	84
   0D0F FF                 2037 	.byte	-1
   0D10 18                 2038 	.byte	24
   0D11 EE                 2039 	.byte	-18
   0D12 FF                 2040 	.byte	-1
   0D13 EE                 2041 	.byte	-18
   0D14 AF                 2042 	.byte	-81
   0D15 FF                 2043 	.byte	-1
   0D16 E8                 2044 	.byte	-24
   0D17 0F                 2045 	.byte	15
   0D18 01                 2046 	.byte	1
                           2047 	.globl _width2RollingBack0
   0D19                    2048 _width2RollingBack0:
   0D19 FF                 2049 	.byte	-1
   0D1A 12                 2050 	.byte	18
   0D1B 54                 2051 	.byte	84
   0D1C FF                 2052 	.byte	-1
   0D1D 18                 2053 	.byte	24
   0D1E EE                 2054 	.byte	-18
   0D1F FF                 2055 	.byte	-1
   0D20 EE                 2056 	.byte	-18
   0D21 AF                 2057 	.byte	-81
   0D22 FF                 2058 	.byte	-1
   0D23 E8                 2059 	.byte	-24
   0D24 0F                 2060 	.byte	15
   0D25 FF                 2061 	.byte	-1
   0D26 27                 2062 	.byte	39
   0D27 00                 2063 	.byte	0
   0D28 00                 2064 	.byte	0
   0D29 EB                 2065 	.byte	-21
   0D2A 54                 2066 	.byte	84
   0D2B FF                 2067 	.byte	-1
   0D2C 27                 2068 	.byte	39
   0D2D 00                 2069 	.byte	0
   0D2E 00                 2070 	.byte	0
   0D2F F1                 2071 	.byte	-15
   0D30 EE                 2072 	.byte	-18
   0D31 FF                 2073 	.byte	-1
   0D32 27                 2074 	.byte	39
   0D33 00                 2075 	.byte	0
   0D34 00                 2076 	.byte	0
   0D35 C7                 2077 	.byte	-57
   0D36 AF                 2078 	.byte	-81
   0D37 FF                 2079 	.byte	-1
   0D38 27                 2080 	.byte	39
   0D39 00                 2081 	.byte	0
   0D3A 00                 2082 	.byte	0
   0D3B E8                 2083 	.byte	-24
   0D3C 0F                 2084 	.byte	15
   0D3D FF                 2085 	.byte	-1
   0D3E 12                 2086 	.byte	18
   0D3F 54                 2087 	.byte	84
   0D40 FF                 2088 	.byte	-1
   0D41 18                 2089 	.byte	24
   0D42 EE                 2090 	.byte	-18
   0D43 FF                 2091 	.byte	-1
   0D44 EE                 2092 	.byte	-18
   0D45 AF                 2093 	.byte	-81
   0D46 FF                 2094 	.byte	-1
   0D47 E8                 2095 	.byte	-24
   0D48 0F                 2096 	.byte	15
   0D49 01                 2097 	.byte	1
                           2098 	.globl _height1FallingLeft0
   0D4A                    2099 _height1FallingLeft0:
   0D4A FF                 2100 	.byte	-1
   0D4B 09                 2101 	.byte	9
   0D4C 2A                 2102 	.byte	42
   0D4D FF                 2103 	.byte	-1
   0D4E 18                 2104 	.byte	24
   0D4F EE                 2105 	.byte	-18
   0D50 FF                 2106 	.byte	-1
   0D51 F7                 2107 	.byte	-9
   0D52 D9                 2108 	.byte	-39
   0D53 FF                 2109 	.byte	-1
   0D54 E8                 2110 	.byte	-24
   0D55 0F                 2111 	.byte	15
   0D56 FF                 2112 	.byte	-1
   0D57 27                 2113 	.byte	39
   0D58 00                 2114 	.byte	0
   0D59 00                 2115 	.byte	0
   0D5A E2                 2116 	.byte	-30
   0D5B 2A                 2117 	.byte	42
   0D5C FF                 2118 	.byte	-1
   0D5D 27                 2119 	.byte	39
   0D5E 00                 2120 	.byte	0
   0D5F 00                 2121 	.byte	0
   0D60 F1                 2122 	.byte	-15
   0D61 EE                 2123 	.byte	-18
   0D62 FF                 2124 	.byte	-1
   0D63 27                 2125 	.byte	39
   0D64 00                 2126 	.byte	0
   0D65 00                 2127 	.byte	0
   0D66 D0                 2128 	.byte	-48
   0D67 D9                 2129 	.byte	-39
   0D68 FF                 2130 	.byte	-1
   0D69 27                 2131 	.byte	39
   0D6A 00                 2132 	.byte	0
   0D6B 00                 2133 	.byte	0
   0D6C E8                 2134 	.byte	-24
   0D6D 0F                 2135 	.byte	15
   0D6E FF                 2136 	.byte	-1
   0D6F 09                 2137 	.byte	9
   0D70 2A                 2138 	.byte	42
   0D71 FF                 2139 	.byte	-1
   0D72 18                 2140 	.byte	24
   0D73 EE                 2141 	.byte	-18
   0D74 FF                 2142 	.byte	-1
   0D75 F7                 2143 	.byte	-9
   0D76 D9                 2144 	.byte	-39
   0D77 FF                 2145 	.byte	-1
   0D78 E8                 2146 	.byte	-24
   0D79 0F                 2147 	.byte	15
   0D7A 01                 2148 	.byte	1
                           2149 	.globl _height1FallingRight0
   0D7B                    2150 _height1FallingRight0:
   0D7B FF                 2151 	.byte	-1
   0D7C 09                 2152 	.byte	9
   0D7D 2A                 2153 	.byte	42
   0D7E FF                 2154 	.byte	-1
   0D7F 18                 2155 	.byte	24
   0D80 EE                 2156 	.byte	-18
   0D81 FF                 2157 	.byte	-1
   0D82 F7                 2158 	.byte	-9
   0D83 D9                 2159 	.byte	-39
   0D84 FF                 2160 	.byte	-1
   0D85 E8                 2161 	.byte	-24
   0D86 0F                 2162 	.byte	15
   0D87 FF                 2163 	.byte	-1
   0D88 27                 2164 	.byte	39
   0D89 00                 2165 	.byte	0
   0D8A 00                 2166 	.byte	0
   0D8B E2                 2167 	.byte	-30
   0D8C 2A                 2168 	.byte	42
   0D8D FF                 2169 	.byte	-1
   0D8E 27                 2170 	.byte	39
   0D8F 00                 2171 	.byte	0
   0D90 00                 2172 	.byte	0
   0D91 F1                 2173 	.byte	-15
   0D92 EE                 2174 	.byte	-18
   0D93 FF                 2175 	.byte	-1
   0D94 27                 2176 	.byte	39
   0D95 00                 2177 	.byte	0
   0D96 00                 2178 	.byte	0
   0D97 D0                 2179 	.byte	-48
   0D98 D9                 2180 	.byte	-39
   0D99 FF                 2181 	.byte	-1
   0D9A 27                 2182 	.byte	39
   0D9B 00                 2183 	.byte	0
   0D9C 00                 2184 	.byte	0
   0D9D E8                 2185 	.byte	-24
   0D9E 0F                 2186 	.byte	15
   0D9F FF                 2187 	.byte	-1
   0DA0 09                 2188 	.byte	9
   0DA1 2A                 2189 	.byte	42
   0DA2 FF                 2190 	.byte	-1
   0DA3 18                 2191 	.byte	24
   0DA4 EE                 2192 	.byte	-18
   0DA5 FF                 2193 	.byte	-1
   0DA6 F7                 2194 	.byte	-9
   0DA7 D9                 2195 	.byte	-39
   0DA8 FF                 2196 	.byte	-1
   0DA9 E8                 2197 	.byte	-24
   0DAA 0F                 2198 	.byte	15
   0DAB 01                 2199 	.byte	1
                           2200 	.globl _height1FallingBack0
   0DAC                    2201 _height1FallingBack0:
   0DAC FF                 2202 	.byte	-1
   0DAD 09                 2203 	.byte	9
   0DAE 2A                 2204 	.byte	42
   0DAF FF                 2205 	.byte	-1
   0DB0 18                 2206 	.byte	24
   0DB1 EE                 2207 	.byte	-18
   0DB2 FF                 2208 	.byte	-1
   0DB3 F7                 2209 	.byte	-9
   0DB4 D9                 2210 	.byte	-39
   0DB5 FF                 2211 	.byte	-1
   0DB6 E8                 2212 	.byte	-24
   0DB7 0F                 2213 	.byte	15
   0DB8 FF                 2214 	.byte	-1
   0DB9 27                 2215 	.byte	39
   0DBA 00                 2216 	.byte	0
   0DBB 00                 2217 	.byte	0
   0DBC E2                 2218 	.byte	-30
   0DBD 2A                 2219 	.byte	42
   0DBE FF                 2220 	.byte	-1
   0DBF 27                 2221 	.byte	39
   0DC0 00                 2222 	.byte	0
   0DC1 00                 2223 	.byte	0
   0DC2 F1                 2224 	.byte	-15
   0DC3 EE                 2225 	.byte	-18
   0DC4 FF                 2226 	.byte	-1
   0DC5 27                 2227 	.byte	39
   0DC6 00                 2228 	.byte	0
   0DC7 00                 2229 	.byte	0
   0DC8 D0                 2230 	.byte	-48
   0DC9 D9                 2231 	.byte	-39
   0DCA FF                 2232 	.byte	-1
   0DCB 27                 2233 	.byte	39
   0DCC 00                 2234 	.byte	0
   0DCD 00                 2235 	.byte	0
   0DCE E8                 2236 	.byte	-24
   0DCF 0F                 2237 	.byte	15
   0DD0 FF                 2238 	.byte	-1
   0DD1 09                 2239 	.byte	9
   0DD2 2A                 2240 	.byte	42
   0DD3 FF                 2241 	.byte	-1
   0DD4 18                 2242 	.byte	24
   0DD5 EE                 2243 	.byte	-18
   0DD6 FF                 2244 	.byte	-1
   0DD7 F7                 2245 	.byte	-9
   0DD8 D9                 2246 	.byte	-39
   0DD9 FF                 2247 	.byte	-1
   0DDA E8                 2248 	.byte	-24
   0DDB 0F                 2249 	.byte	15
   0DDC 01                 2250 	.byte	1
                           2251 	.globl _height1FallingFront0
   0DDD                    2252 _height1FallingFront0:
   0DDD FF                 2253 	.byte	-1
   0DDE 09                 2254 	.byte	9
   0DDF 2A                 2255 	.byte	42
   0DE0 FF                 2256 	.byte	-1
   0DE1 18                 2257 	.byte	24
   0DE2 EE                 2258 	.byte	-18
   0DE3 FF                 2259 	.byte	-1
   0DE4 F7                 2260 	.byte	-9
   0DE5 D9                 2261 	.byte	-39
   0DE6 FF                 2262 	.byte	-1
   0DE7 E8                 2263 	.byte	-24
   0DE8 0F                 2264 	.byte	15
   0DE9 FF                 2265 	.byte	-1
   0DEA 27                 2266 	.byte	39
   0DEB 00                 2267 	.byte	0
   0DEC 00                 2268 	.byte	0
   0DED E2                 2269 	.byte	-30
   0DEE 2A                 2270 	.byte	42
   0DEF FF                 2271 	.byte	-1
   0DF0 27                 2272 	.byte	39
   0DF1 00                 2273 	.byte	0
   0DF2 00                 2274 	.byte	0
   0DF3 F1                 2275 	.byte	-15
   0DF4 EE                 2276 	.byte	-18
   0DF5 FF                 2277 	.byte	-1
   0DF6 27                 2278 	.byte	39
   0DF7 00                 2279 	.byte	0
   0DF8 00                 2280 	.byte	0
   0DF9 D0                 2281 	.byte	-48
   0DFA D9                 2282 	.byte	-39
   0DFB FF                 2283 	.byte	-1
   0DFC 27                 2284 	.byte	39
   0DFD 00                 2285 	.byte	0
   0DFE 00                 2286 	.byte	0
   0DFF E8                 2287 	.byte	-24
   0E00 0F                 2288 	.byte	15
   0E01 FF                 2289 	.byte	-1
   0E02 09                 2290 	.byte	9
   0E03 2A                 2291 	.byte	42
   0E04 FF                 2292 	.byte	-1
   0E05 18                 2293 	.byte	24
   0E06 EE                 2294 	.byte	-18
   0E07 FF                 2295 	.byte	-1
   0E08 F7                 2296 	.byte	-9
   0E09 D9                 2297 	.byte	-39
   0E0A FF                 2298 	.byte	-1
   0E0B E8                 2299 	.byte	-24
   0E0C 0F                 2300 	.byte	15
   0E0D 01                 2301 	.byte	1
                           2302 	.globl _height2FallingLeft1
   0E0E                    2303 _height2FallingLeft1:
   0E0E FF                 2304 	.byte	-1
   0E0F 0F                 2305 	.byte	15
   0E10 2A                 2306 	.byte	42
   0E11 FF                 2307 	.byte	-1
   0E12 18                 2308 	.byte	24
   0E13 EE                 2309 	.byte	-18
   0E14 FF                 2310 	.byte	-1
   0E15 F1                 2311 	.byte	-15
   0E16 D9                 2312 	.byte	-39
   0E17 FF                 2313 	.byte	-1
   0E18 E8                 2314 	.byte	-24
   0E19 0F                 2315 	.byte	15
   0E1A FF                 2316 	.byte	-1
   0E1B 4B                 2317 	.byte	75
   0E1C F7                 2318 	.byte	-9
   0E1D 00                 2319 	.byte	0
   0E1E C4                 2320 	.byte	-60
   0E1F 33                 2321 	.byte	51
   0E20 FF                 2322 	.byte	-1
   0E21 4B                 2323 	.byte	75
   0E22 F4                 2324 	.byte	-12
   0E23 00                 2325 	.byte	0
   0E24 CD                 2326 	.byte	-51
   0E25 FA                 2327 	.byte	-6
   0E26 FF                 2328 	.byte	-1
   0E27 4B                 2329 	.byte	75
   0E28 F4                 2330 	.byte	-12
   0E29 00                 2331 	.byte	0
   0E2A A6                 2332 	.byte	-90
   0E2B E5                 2333 	.byte	-27
   0E2C FF                 2334 	.byte	-1
   0E2D 4B                 2335 	.byte	75
   0E2E F4                 2336 	.byte	-12
   0E2F 00                 2337 	.byte	0
   0E30 E8                 2338 	.byte	-24
   0E31 12                 2339 	.byte	18
   0E32 FF                 2340 	.byte	-1
   0E33 0F                 2341 	.byte	15
   0E34 27                 2342 	.byte	39
   0E35 FF                 2343 	.byte	-1
   0E36 18                 2344 	.byte	24
   0E37 EE                 2345 	.byte	-18
   0E38 FF                 2346 	.byte	-1
   0E39 F1                 2347 	.byte	-15
   0E3A D9                 2348 	.byte	-39
   0E3B FF                 2349 	.byte	-1
   0E3C E8                 2350 	.byte	-24
   0E3D 12                 2351 	.byte	18
   0E3E 01                 2352 	.byte	1
                           2353 	.globl _height2RisingRight1
   0E3F                    2354 _height2RisingRight1:
   0E3F 00                 2355 	.byte	0
   0E40 12                 2356 	.byte	18
   0E41 54                 2357 	.byte	84
   0E42 FF                 2358 	.byte	-1
   0E43 27                 2359 	.byte	39
   0E44 0C                 2360 	.byte	12
   0E45 FF                 2361 	.byte	-1
   0E46 18                 2362 	.byte	24
   0E47 EE                 2363 	.byte	-18
   0E48 FF                 2364 	.byte	-1
   0E49 D9                 2365 	.byte	-39
   0E4A F4                 2366 	.byte	-12
   0E4B FF                 2367 	.byte	-1
   0E4C E8                 2368 	.byte	-24
   0E4D 12                 2369 	.byte	18
   0E4E FF                 2370 	.byte	-1
   0E4F 03                 2371 	.byte	3
   0E50 AF                 2372 	.byte	-81
   0E51 00                 2373 	.byte	0
   0E52 24                 2374 	.byte	36
   0E53 5D                 2375 	.byte	93
   0E54 FF                 2376 	.byte	-1
   0E55 03                 2377 	.byte	3
   0E56 AF                 2378 	.byte	-81
   0E57 00                 2379 	.byte	0
   0E58 15                 2380 	.byte	21
   0E59 3F                 2381 	.byte	63
   0E5A FF                 2382 	.byte	-1
   0E5B 03                 2383 	.byte	3
   0E5C B2                 2384 	.byte	-78
   0E5D 00                 2385 	.byte	0
   0E5E D6                 2386 	.byte	-42
   0E5F 42                 2387 	.byte	66
   0E60 FF                 2388 	.byte	-1
   0E61 03                 2389 	.byte	3
   0E62 B2                 2390 	.byte	-78
   0E63 00                 2391 	.byte	0
   0E64 E8                 2392 	.byte	-24
   0E65 0F                 2393 	.byte	15
   0E66 FF                 2394 	.byte	-1
   0E67 27                 2395 	.byte	39
   0E68 0C                 2396 	.byte	12
   0E69 FF                 2397 	.byte	-1
   0E6A 18                 2398 	.byte	24
   0E6B F1                 2399 	.byte	-15
   0E6C FF                 2400 	.byte	-1
   0E6D D9                 2401 	.byte	-39
   0E6E F4                 2402 	.byte	-12
   0E6F FF                 2403 	.byte	-1
   0E70 E8                 2404 	.byte	-24
   0E71 0F                 2405 	.byte	15
   0E72 01                 2406 	.byte	1
                           2407 	.globl _height2FallingRight1
   0E73                    2408 _height2FallingRight1:
   0E73 00                 2409 	.byte	0
   0E74 06                 2410 	.byte	6
   0E75 00                 2411 	.byte	0
   0E76 FF                 2412 	.byte	-1
   0E77 03                 2413 	.byte	3
   0E78 2A                 2414 	.byte	42
   0E79 FF                 2415 	.byte	-1
   0E7A 18                 2416 	.byte	24
   0E7B EE                 2417 	.byte	-18
   0E7C FF                 2418 	.byte	-1
   0E7D FD                 2419 	.byte	-3
   0E7E D9                 2420 	.byte	-39
   0E7F FF                 2421 	.byte	-1
   0E80 E8                 2422 	.byte	-24
   0E81 0F                 2423 	.byte	15
   0E82 FF                 2424 	.byte	-1
   0E83 4E                 2425 	.byte	78
   0E84 0C                 2426 	.byte	12
   0E85 00                 2427 	.byte	0
   0E86 B5                 2428 	.byte	-75
   0E87 1E                 2429 	.byte	30
   0E88 FF                 2430 	.byte	-1
   0E89 51                 2431 	.byte	81
   0E8A 0C                 2432 	.byte	12
   0E8B 00                 2433 	.byte	0
   0E8C C7                 2434 	.byte	-57
   0E8D E2                 2435 	.byte	-30
   0E8E FF                 2436 	.byte	-1
   0E8F 51                 2437 	.byte	81
   0E90 0C                 2438 	.byte	12
   0E91 00                 2439 	.byte	0
   0E92 AC                 2440 	.byte	-84
   0E93 CD                 2441 	.byte	-51
   0E94 FF                 2442 	.byte	-1
   0E95 4E                 2443 	.byte	78
   0E96 0C                 2444 	.byte	12
   0E97 00                 2445 	.byte	0
   0E98 E8                 2446 	.byte	-24
   0E99 0F                 2447 	.byte	15
   0E9A FF                 2448 	.byte	-1
   0E9B 06                 2449 	.byte	6
   0E9C 2A                 2450 	.byte	42
   0E9D FF                 2451 	.byte	-1
   0E9E 18                 2452 	.byte	24
   0E9F EE                 2453 	.byte	-18
   0EA0 FF                 2454 	.byte	-1
   0EA1 FA                 2455 	.byte	-6
   0EA2 D9                 2456 	.byte	-39
   0EA3 FF                 2457 	.byte	-1
   0EA4 E8                 2458 	.byte	-24
   0EA5 0F                 2459 	.byte	15
   0EA6 01                 2460 	.byte	1
                           2461 	.globl _height2RisingLeft1
   0EA7                    2462 _height2RisingLeft1:
   0EA7 00                 2463 	.byte	0
   0EA8 24                 2464 	.byte	36
   0EA9 F7                 2465 	.byte	-9
   0EAA FF                 2466 	.byte	-1
   0EAB DC                 2467 	.byte	-36
   0EAC 09                 2468 	.byte	9
   0EAD FF                 2469 	.byte	-1
   0EAE 18                 2470 	.byte	24
   0EAF F1                 2471 	.byte	-15
   0EB0 FF                 2472 	.byte	-1
   0EB1 24                 2473 	.byte	36
   0EB2 F4                 2474 	.byte	-12
   0EB3 FF                 2475 	.byte	-1
   0EB4 E8                 2476 	.byte	-24
   0EB5 12                 2477 	.byte	18
   0EB6 FF                 2478 	.byte	-1
   0EB7 24                 2479 	.byte	36
   0EB8 4E                 2480 	.byte	78
   0EB9 00                 2481 	.byte	0
   0EBA B8                 2482 	.byte	-72
   0EBB BB                 2483 	.byte	-69
   0EBC FF                 2484 	.byte	-1
   0EBD 27                 2485 	.byte	39
   0EBE 51                 2486 	.byte	81
   0EBF 00                 2487 	.byte	0
   0EC0 F1                 2488 	.byte	-15
   0EC1 A0                 2489 	.byte	-96
   0EC2 FF                 2490 	.byte	-1
   0EC3 27                 2491 	.byte	39
   0EC4 4E                 2492 	.byte	78
   0EC5 00                 2493 	.byte	0
   0EC6 FD                 2494 	.byte	-3
   0EC7 A6                 2495 	.byte	-90
   0EC8 FF                 2496 	.byte	-1
   0EC9 24                 2497 	.byte	36
   0ECA 4E                 2498 	.byte	78
   0ECB 00                 2499 	.byte	0
   0ECC E8                 2500 	.byte	-24
   0ECD 12                 2501 	.byte	18
   0ECE FF                 2502 	.byte	-1
   0ECF DF                 2503 	.byte	-33
   0ED0 0C                 2504 	.byte	12
   0ED1 FF                 2505 	.byte	-1
   0ED2 18                 2506 	.byte	24
   0ED3 EE                 2507 	.byte	-18
   0ED4 FF                 2508 	.byte	-1
   0ED5 21                 2509 	.byte	33
   0ED6 F4                 2510 	.byte	-12
   0ED7 FF                 2511 	.byte	-1
   0ED8 E8                 2512 	.byte	-24
   0ED9 12                 2513 	.byte	18
   0EDA 01                 2514 	.byte	1
                           2515 	.globl _height2FallingBack1
   0EDB                    2516 _height2FallingBack1:
   0EDB 00                 2517 	.byte	0
   0EDC 06                 2518 	.byte	6
   0EDD 00                 2519 	.byte	0
   0EDE FF                 2520 	.byte	-1
   0EDF 09                 2521 	.byte	9
   0EE0 2A                 2522 	.byte	42
   0EE1 FF                 2523 	.byte	-1
   0EE2 12                 2524 	.byte	18
   0EE3 EE                 2525 	.byte	-18
   0EE4 FF                 2526 	.byte	-1
   0EE5 F7                 2527 	.byte	-9
   0EE6 D9                 2528 	.byte	-39
   0EE7 FF                 2529 	.byte	-1
   0EE8 EE                 2530 	.byte	-18
   0EE9 0F                 2531 	.byte	15
   0EEA FF                 2532 	.byte	-1
   0EEB 54                 2533 	.byte	84
   0EEC FD                 2534 	.byte	-3
   0EED 00                 2535 	.byte	0
   0EEE B5                 2536 	.byte	-75
   0EEF 2D                 2537 	.byte	45
   0EF0 FF                 2538 	.byte	-1
   0EF1 54                 2539 	.byte	84
   0EF2 FA                 2540 	.byte	-6
   0EF3 00                 2541 	.byte	0
   0EF4 BE                 2542 	.byte	-66
   0EF5 F4                 2543 	.byte	-12
   0EF6 FF                 2544 	.byte	-1
   0EF7 54                 2545 	.byte	84
   0EF8 FA                 2546 	.byte	-6
   0EF9 00                 2547 	.byte	0
   0EFA A3                 2548 	.byte	-93
   0EFB DF                 2549 	.byte	-33
   0EFC FF                 2550 	.byte	-1
   0EFD 54                 2551 	.byte	84
   0EFE FA                 2552 	.byte	-6
   0EFF 00                 2553 	.byte	0
   0F00 EE                 2554 	.byte	-18
   0F01 12                 2555 	.byte	18
   0F02 FF                 2556 	.byte	-1
   0F03 09                 2557 	.byte	9
   0F04 27                 2558 	.byte	39
   0F05 FF                 2559 	.byte	-1
   0F06 12                 2560 	.byte	18
   0F07 EE                 2561 	.byte	-18
   0F08 FF                 2562 	.byte	-1
   0F09 F7                 2563 	.byte	-9
   0F0A D9                 2564 	.byte	-39
   0F0B FF                 2565 	.byte	-1
   0F0C EE                 2566 	.byte	-18
   0F0D 12                 2567 	.byte	18
   0F0E 01                 2568 	.byte	1
                           2569 	.globl _height2RisingFront1
   0F0F                    2570 _height2RisingFront1:
   0F0F 00                 2571 	.byte	0
   0F10 1E                 2572 	.byte	30
   0F11 06                 2573 	.byte	6
   0F12 FF                 2574 	.byte	-1
   0F13 09                 2575 	.byte	9
   0F14 2A                 2576 	.byte	42
   0F15 FF                 2577 	.byte	-1
   0F16 E2                 2578 	.byte	-30
   0F17 FA                 2579 	.byte	-6
   0F18 FF                 2580 	.byte	-1
   0F19 F7                 2581 	.byte	-9
   0F1A D6                 2582 	.byte	-42
   0F1B FF                 2583 	.byte	-1
   0F1C 1E                 2584 	.byte	30
   0F1D 06                 2585 	.byte	6
   0F1E FF                 2586 	.byte	-1
   0F1F 45                 2587 	.byte	69
   0F20 DF                 2588 	.byte	-33
   0F21 00                 2589 	.byte	0
   0F22 C4                 2590 	.byte	-60
   0F23 4B                 2591 	.byte	75
   0F24 FF                 2592 	.byte	-1
   0F25 45                 2593 	.byte	69
   0F26 DC                 2594 	.byte	-36
   0F27 00                 2595 	.byte	0
   0F28 9D                 2596 	.byte	-99
   0F29 1E                 2597 	.byte	30
   0F2A FF                 2598 	.byte	-1
   0F2B 42                 2599 	.byte	66
   0F2C DC                 2600 	.byte	-36
   0F2D 00                 2601 	.byte	0
   0F2E B5                 2602 	.byte	-75
   0F2F FA                 2603 	.byte	-6
   0F30 FF                 2604 	.byte	-1
   0F31 42                 2605 	.byte	66
   0F32 DF                 2606 	.byte	-33
   0F33 00                 2607 	.byte	0
   0F34 21                 2608 	.byte	33
   0F35 06                 2609 	.byte	6
   0F36 FF                 2610 	.byte	-1
   0F37 09                 2611 	.byte	9
   0F38 27                 2612 	.byte	39
   0F39 FF                 2613 	.byte	-1
   0F3A DF                 2614 	.byte	-33
   0F3B FA                 2615 	.byte	-6
   0F3C FF                 2616 	.byte	-1
   0F3D F7                 2617 	.byte	-9
   0F3E D9                 2618 	.byte	-39
   0F3F FF                 2619 	.byte	-1
   0F40 21                 2620 	.byte	33
   0F41 06                 2621 	.byte	6
   0F42 01                 2622 	.byte	1
                           2623 	.globl _height2FallingFront1
   0F43                    2624 _height2FallingFront1:
   0F43 FF                 2625 	.byte	-1
   0F44 09                 2626 	.byte	9
   0F45 2A                 2627 	.byte	42
   0F46 FF                 2628 	.byte	-1
   0F47 1E                 2629 	.byte	30
   0F48 EE                 2630 	.byte	-18
   0F49 FF                 2631 	.byte	-1
   0F4A F7                 2632 	.byte	-9
   0F4B D9                 2633 	.byte	-39
   0F4C FF                 2634 	.byte	-1
   0F4D E2                 2635 	.byte	-30
   0F4E 0F                 2636 	.byte	15
   0F4F FF                 2637 	.byte	-1
   0F50 48                 2638 	.byte	72
   0F51 06                 2639 	.byte	6
   0F52 00                 2640 	.byte	0
   0F53 C1                 2641 	.byte	-63
   0F54 24                 2642 	.byte	36
   0F55 FF                 2643 	.byte	-1
   0F56 48                 2644 	.byte	72
   0F57 06                 2645 	.byte	6
   0F58 00                 2646 	.byte	0
   0F59 D6                 2647 	.byte	-42
   0F5A E8                 2648 	.byte	-24
   0F5B FF                 2649 	.byte	-1
   0F5C 45                 2650 	.byte	69
   0F5D 06                 2651 	.byte	6
   0F5E 00                 2652 	.byte	0
   0F5F B2                 2653 	.byte	-78
   0F60 D3                 2654 	.byte	-45
   0F61 FF                 2655 	.byte	-1
   0F62 45                 2656 	.byte	69
   0F63 06                 2657 	.byte	6
   0F64 00                 2658 	.byte	0
   0F65 E5                 2659 	.byte	-27
   0F66 0F                 2660 	.byte	15
   0F67 FF                 2661 	.byte	-1
   0F68 09                 2662 	.byte	9
   0F69 2A                 2663 	.byte	42
   0F6A FF                 2664 	.byte	-1
   0F6B 1B                 2665 	.byte	27
   0F6C EE                 2666 	.byte	-18
   0F6D FF                 2667 	.byte	-1
   0F6E F7                 2668 	.byte	-9
   0F6F D9                 2669 	.byte	-39
   0F70 FF                 2670 	.byte	-1
   0F71 E5                 2671 	.byte	-27
   0F72 0F                 2672 	.byte	15
   0F73 01                 2673 	.byte	1
                           2674 	.globl _height2RisingBack1
   0F74                    2675 _height2RisingBack1:
   0F74 00                 2676 	.byte	0
   0F75 30                 2677 	.byte	48
   0F76 DF                 2678 	.byte	-33
   0F77 FF                 2679 	.byte	-1
   0F78 09                 2680 	.byte	9
   0F79 27                 2681 	.byte	39
   0F7A FF                 2682 	.byte	-1
   0F7B 2D                 2683 	.byte	45
   0F7C FA                 2684 	.byte	-6
   0F7D FF                 2685 	.byte	-1
   0F7E F7                 2686 	.byte	-9
   0F7F D9                 2687 	.byte	-39
   0F80 FF                 2688 	.byte	-1
   0F81 D3                 2689 	.byte	-45
   0F82 06                 2690 	.byte	6
   0F83 FF                 2691 	.byte	-1
   0F84 E5                 2692 	.byte	-27
   0F85 21                 2693 	.byte	33
   0F86 00                 2694 	.byte	0
   0F87 24                 2695 	.byte	36
   0F88 06                 2696 	.byte	6
   0F89 FF                 2697 	.byte	-1
   0F8A E5                 2698 	.byte	-27
   0F8B 24                 2699 	.byte	36
   0F8C 00                 2700 	.byte	0
   0F8D 48                 2701 	.byte	72
   0F8E D6                 2702 	.byte	-42
   0F8F FF                 2703 	.byte	-1
   0F90 E5                 2704 	.byte	-27
   0F91 24                 2705 	.byte	36
   0F92 00                 2706 	.byte	0
   0F93 12                 2707 	.byte	18
   0F94 B5                 2708 	.byte	-75
   0F95 FF                 2709 	.byte	-1
   0F96 E5                 2710 	.byte	-27
   0F97 24                 2711 	.byte	36
   0F98 00                 2712 	.byte	0
   0F99 D3                 2713 	.byte	-45
   0F9A 03                 2714 	.byte	3
   0F9B FF                 2715 	.byte	-1
   0F9C 09                 2716 	.byte	9
   0F9D 2A                 2717 	.byte	42
   0F9E FF                 2718 	.byte	-1
   0F9F 2D                 2719 	.byte	45
   0FA0 FA                 2720 	.byte	-6
   0FA1 FF                 2721 	.byte	-1
   0FA2 F7                 2722 	.byte	-9
   0FA3 D9                 2723 	.byte	-39
   0FA4 FF                 2724 	.byte	-1
   0FA5 D3                 2725 	.byte	-45
   0FA6 03                 2726 	.byte	3
   0FA7 01                 2727 	.byte	1
                           2728 	.globl _depth2RollingLeft1
   0FA8                    2729 _depth2RollingLeft1:
   0FA8 FF                 2730 	.byte	-1
   0FA9 0F                 2731 	.byte	15
   0FAA 2A                 2732 	.byte	42
   0FAB FF                 2733 	.byte	-1
   0FAC 30                 2734 	.byte	48
   0FAD DC                 2735 	.byte	-36
   0FAE FF                 2736 	.byte	-1
   0FAF F1                 2737 	.byte	-15
   0FB0 D9                 2738 	.byte	-39
   0FB1 FF                 2739 	.byte	-1
   0FB2 D0                 2740 	.byte	-48
   0FB3 21                 2741 	.byte	33
   0FB4 FF                 2742 	.byte	-1
   0FB5 24                 2743 	.byte	36
   0FB6 FD                 2744 	.byte	-3
   0FB7 00                 2745 	.byte	0
   0FB8 EB                 2746 	.byte	-21
   0FB9 2D                 2747 	.byte	45
   0FBA FF                 2748 	.byte	-1
   0FBB 24                 2749 	.byte	36
   0FBC FA                 2750 	.byte	-6
   0FBD 00                 2751 	.byte	0
   0FBE 0C                 2752 	.byte	12
   0FBF E2                 2753 	.byte	-30
   0FC0 FF                 2754 	.byte	-1
   0FC1 24                 2755 	.byte	36
   0FC2 FA                 2756 	.byte	-6
   0FC3 00                 2757 	.byte	0
   0FC4 CD                 2758 	.byte	-51
   0FC5 DF                 2759 	.byte	-33
   0FC6 FF                 2760 	.byte	-1
   0FC7 24                 2761 	.byte	36
   0FC8 FA                 2762 	.byte	-6
   0FC9 00                 2763 	.byte	0
   0FCA D0                 2764 	.byte	-48
   0FCB 24                 2765 	.byte	36
   0FCC FF                 2766 	.byte	-1
   0FCD 0F                 2767 	.byte	15
   0FCE 27                 2768 	.byte	39
   0FCF FF                 2769 	.byte	-1
   0FD0 30                 2770 	.byte	48
   0FD1 DC                 2771 	.byte	-36
   0FD2 FF                 2772 	.byte	-1
   0FD3 F1                 2773 	.byte	-15
   0FD4 D9                 2774 	.byte	-39
   0FD5 FF                 2775 	.byte	-1
   0FD6 D0                 2776 	.byte	-48
   0FD7 24                 2777 	.byte	36
   0FD8 01                 2778 	.byte	1
                           2779 	.globl _depth2RollingRight1
   0FD9                    2780 _depth2RollingRight1:
   0FD9 00                 2781 	.byte	0
   0FDA 06                 2782 	.byte	6
   0FDB 00                 2783 	.byte	0
   0FDC FF                 2784 	.byte	-1
   0FDD 03                 2785 	.byte	3
   0FDE 2A                 2786 	.byte	42
   0FDF FF                 2787 	.byte	-1
   0FE0 30                 2788 	.byte	48
   0FE1 DC                 2789 	.byte	-36
   0FE2 FF                 2790 	.byte	-1
   0FE3 FD                 2791 	.byte	-3
   0FE4 D9                 2792 	.byte	-39
   0FE5 FF                 2793 	.byte	-1
   0FE6 D0                 2794 	.byte	-48
   0FE7 21                 2795 	.byte	33
   0FE8 FF                 2796 	.byte	-1
   0FE9 27                 2797 	.byte	39
   0FEA 06                 2798 	.byte	6
   0FEB 00                 2799 	.byte	0
   0FEC DC                 2800 	.byte	-36
   0FED 24                 2801 	.byte	36
   0FEE FF                 2802 	.byte	-1
   0FEF 27                 2803 	.byte	39
   0FF0 06                 2804 	.byte	6
   0FF1 00                 2805 	.byte	0
   0FF2 09                 2806 	.byte	9
   0FF3 D6                 2807 	.byte	-42
   0FF4 FF                 2808 	.byte	-1
   0FF5 27                 2809 	.byte	39
   0FF6 06                 2810 	.byte	6
   0FF7 00                 2811 	.byte	0
   0FF8 D6                 2812 	.byte	-42
   0FF9 D3                 2813 	.byte	-45
   0FFA FF                 2814 	.byte	-1
   0FFB 27                 2815 	.byte	39
   0FFC 06                 2816 	.byte	6
   0FFD 00                 2817 	.byte	0
   0FFE D0                 2818 	.byte	-48
   0FFF 21                 2819 	.byte	33
   1000 FF                 2820 	.byte	-1
   1001 03                 2821 	.byte	3
   1002 2A                 2822 	.byte	42
   1003 FF                 2823 	.byte	-1
   1004 30                 2824 	.byte	48
   1005 DC                 2825 	.byte	-36
   1006 FF                 2826 	.byte	-1
   1007 FD                 2827 	.byte	-3
   1008 D9                 2828 	.byte	-39
   1009 FF                 2829 	.byte	-1
   100A D0                 2830 	.byte	-48
   100B 21                 2831 	.byte	33
   100C 01                 2832 	.byte	1
                           2833 	.globl _width2RollingFront1
   100D                    2834 _width2RollingFront1:
   100D FF                 2835 	.byte	-1
   100E 12                 2836 	.byte	18
   100F 54                 2837 	.byte	84
   1010 FF                 2838 	.byte	-1
   1011 1E                 2839 	.byte	30
   1012 EE                 2840 	.byte	-18
   1013 FF                 2841 	.byte	-1
   1014 EE                 2842 	.byte	-18
   1015 AF                 2843 	.byte	-81
   1016 FF                 2844 	.byte	-1
   1017 E2                 2845 	.byte	-30
   1018 0F                 2846 	.byte	15
   1019 FF                 2847 	.byte	-1
   101A 24                 2848 	.byte	36
   101B 03                 2849 	.byte	3
   101C 00                 2850 	.byte	0
   101D EE                 2851 	.byte	-18
   101E 51                 2852 	.byte	81
   101F FF                 2853 	.byte	-1
   1020 24                 2854 	.byte	36
   1021 03                 2855 	.byte	3
   1022 00                 2856 	.byte	0
   1023 FA                 2857 	.byte	-6
   1024 EB                 2858 	.byte	-21
   1025 FF                 2859 	.byte	-1
   1026 21                 2860 	.byte	33
   1027 03                 2861 	.byte	3
   1028 00                 2862 	.byte	0
   1029 CD                 2863 	.byte	-51
   102A AC                 2864 	.byte	-84
   102B FF                 2865 	.byte	-1
   102C 21                 2866 	.byte	33
   102D 03                 2867 	.byte	3
   102E 00                 2868 	.byte	0
   102F E5                 2869 	.byte	-27
   1030 0F                 2870 	.byte	15
   1031 FF                 2871 	.byte	-1
   1032 12                 2872 	.byte	18
   1033 54                 2873 	.byte	84
   1034 FF                 2874 	.byte	-1
   1035 1B                 2875 	.byte	27
   1036 EE                 2876 	.byte	-18
   1037 FF                 2877 	.byte	-1
   1038 EE                 2878 	.byte	-18
   1039 AF                 2879 	.byte	-81
   103A FF                 2880 	.byte	-1
   103B E5                 2881 	.byte	-27
   103C 0F                 2882 	.byte	15
   103D 01                 2883 	.byte	1
                           2884 	.globl _width2RollingBack1
   103E                    2885 _width2RollingBack1:
   103E 00                 2886 	.byte	0
   103F 06                 2887 	.byte	6
   1040 00                 2888 	.byte	0
   1041 FF                 2889 	.byte	-1
   1042 12                 2890 	.byte	18
   1043 54                 2891 	.byte	84
   1044 FF                 2892 	.byte	-1
   1045 12                 2893 	.byte	18
   1046 EE                 2894 	.byte	-18
   1047 FF                 2895 	.byte	-1
   1048 EE                 2896 	.byte	-18
   1049 AF                 2897 	.byte	-81
   104A FF                 2898 	.byte	-1
   104B EE                 2899 	.byte	-18
   104C 0F                 2900 	.byte	15
   104D FF                 2901 	.byte	-1
   104E 2A                 2902 	.byte	42
   104F 00                 2903 	.byte	0
   1050 00                 2904 	.byte	0
   1051 E8                 2905 	.byte	-24
   1052 54                 2906 	.byte	84
   1053 FF                 2907 	.byte	-1
   1054 2A                 2908 	.byte	42
   1055 FD                 2909 	.byte	-3
   1056 00                 2910 	.byte	0
   1057 E8                 2911 	.byte	-24
   1058 F1                 2912 	.byte	-15
   1059 FF                 2913 	.byte	-1
   105A 2A                 2914 	.byte	42
   105B FD                 2915 	.byte	-3
   105C 00                 2916 	.byte	0
   105D C4                 2917 	.byte	-60
   105E B2                 2918 	.byte	-78
   105F FF                 2919 	.byte	-1
   1060 2A                 2920 	.byte	42
   1061 FD                 2921 	.byte	-3
   1062 00                 2922 	.byte	0
   1063 EE                 2923 	.byte	-18
   1064 12                 2924 	.byte	18
   1065 FF                 2925 	.byte	-1
   1066 12                 2926 	.byte	18
   1067 51                 2927 	.byte	81
   1068 FF                 2928 	.byte	-1
   1069 12                 2929 	.byte	18
   106A EE                 2930 	.byte	-18
   106B FF                 2931 	.byte	-1
   106C EE                 2932 	.byte	-18
   106D AF                 2933 	.byte	-81
   106E FF                 2934 	.byte	-1
   106F EE                 2935 	.byte	-18
   1070 12                 2936 	.byte	18
   1071 01                 2937 	.byte	1
                           2938 	.globl _height1FallingLeft1
   1072                    2939 _height1FallingLeft1:
   1072 FF                 2940 	.byte	-1
   1073 0F                 2941 	.byte	15
   1074 2A                 2942 	.byte	42
   1075 FF                 2943 	.byte	-1
   1076 18                 2944 	.byte	24
   1077 EE                 2945 	.byte	-18
   1078 FF                 2946 	.byte	-1
   1079 F1                 2947 	.byte	-15
   107A D9                 2948 	.byte	-39
   107B FF                 2949 	.byte	-1
   107C E8                 2950 	.byte	-24
   107D 0F                 2951 	.byte	15
   107E FF                 2952 	.byte	-1
   107F 24                 2953 	.byte	36
   1080 FD                 2954 	.byte	-3
   1081 00                 2955 	.byte	0
   1082 EB                 2956 	.byte	-21
   1083 2D                 2957 	.byte	45
   1084 FF                 2958 	.byte	-1
   1085 24                 2959 	.byte	36
   1086 FA                 2960 	.byte	-6
   1087 00                 2961 	.byte	0
   1088 F4                 2962 	.byte	-12
   1089 F4                 2963 	.byte	-12
   108A FF                 2964 	.byte	-1
   108B 24                 2965 	.byte	36
   108C FA                 2966 	.byte	-6
   108D 00                 2967 	.byte	0
   108E CD                 2968 	.byte	-51
   108F DF                 2969 	.byte	-33
   1090 FF                 2970 	.byte	-1
   1091 24                 2971 	.byte	36
   1092 FA                 2972 	.byte	-6
   1093 00                 2973 	.byte	0
   1094 E8                 2974 	.byte	-24
   1095 12                 2975 	.byte	18
   1096 FF                 2976 	.byte	-1
   1097 0F                 2977 	.byte	15
   1098 27                 2978 	.byte	39
   1099 FF                 2979 	.byte	-1
   109A 18                 2980 	.byte	24
   109B EE                 2981 	.byte	-18
   109C FF                 2982 	.byte	-1
   109D F1                 2983 	.byte	-15
   109E D9                 2984 	.byte	-39
   109F FF                 2985 	.byte	-1
   10A0 E8                 2986 	.byte	-24
   10A1 12                 2987 	.byte	18
   10A2 01                 2988 	.byte	1
                           2989 	.globl _height1FallingRight1
   10A3                    2990 _height1FallingRight1:
   10A3 00                 2991 	.byte	0
   10A4 06                 2992 	.byte	6
   10A5 00                 2993 	.byte	0
   10A6 FF                 2994 	.byte	-1
   10A7 03                 2995 	.byte	3
   10A8 2A                 2996 	.byte	42
   10A9 FF                 2997 	.byte	-1
   10AA 18                 2998 	.byte	24
   10AB EE                 2999 	.byte	-18
   10AC FF                 3000 	.byte	-1
   10AD FD                 3001 	.byte	-3
   10AE D9                 3002 	.byte	-39
   10AF FF                 3003 	.byte	-1
   10B0 E8                 3004 	.byte	-24
   10B1 0F                 3005 	.byte	15
   10B2 FF                 3006 	.byte	-1
   10B3 27                 3007 	.byte	39
   10B4 06                 3008 	.byte	6
   10B5 00                 3009 	.byte	0
   10B6 DC                 3010 	.byte	-36
   10B7 24                 3011 	.byte	36
   10B8 FF                 3012 	.byte	-1
   10B9 27                 3013 	.byte	39
   10BA 06                 3014 	.byte	6
   10BB 00                 3015 	.byte	0
   10BC F1                 3016 	.byte	-15
   10BD E8                 3017 	.byte	-24
   10BE FF                 3018 	.byte	-1
   10BF 27                 3019 	.byte	39
   10C0 06                 3020 	.byte	6
   10C1 00                 3021 	.byte	0
   10C2 D6                 3022 	.byte	-42
   10C3 D3                 3023 	.byte	-45
   10C4 FF                 3024 	.byte	-1
   10C5 27                 3025 	.byte	39
   10C6 06                 3026 	.byte	6
   10C7 00                 3027 	.byte	0
   10C8 E8                 3028 	.byte	-24
   10C9 0F                 3029 	.byte	15
   10CA FF                 3030 	.byte	-1
   10CB 03                 3031 	.byte	3
   10CC 2A                 3032 	.byte	42
   10CD FF                 3033 	.byte	-1
   10CE 18                 3034 	.byte	24
   10CF EE                 3035 	.byte	-18
   10D0 FF                 3036 	.byte	-1
   10D1 FD                 3037 	.byte	-3
   10D2 D9                 3038 	.byte	-39
   10D3 FF                 3039 	.byte	-1
   10D4 E8                 3040 	.byte	-24
   10D5 0F                 3041 	.byte	15
   10D6 01                 3042 	.byte	1
                           3043 	.globl _height1FallingBack1
   10D7                    3044 _height1FallingBack1:
   10D7 00                 3045 	.byte	0
   10D8 06                 3046 	.byte	6
   10D9 00                 3047 	.byte	0
   10DA FF                 3048 	.byte	-1
   10DB 09                 3049 	.byte	9
   10DC 2A                 3050 	.byte	42
   10DD FF                 3051 	.byte	-1
   10DE 12                 3052 	.byte	18
   10DF EE                 3053 	.byte	-18
   10E0 FF                 3054 	.byte	-1
   10E1 F7                 3055 	.byte	-9
   10E2 D9                 3056 	.byte	-39
   10E3 FF                 3057 	.byte	-1
   10E4 EE                 3058 	.byte	-18
   10E5 0F                 3059 	.byte	15
   10E6 FF                 3060 	.byte	-1
   10E7 2A                 3061 	.byte	42
   10E8 00                 3062 	.byte	0
   10E9 00                 3063 	.byte	0
   10EA DF                 3064 	.byte	-33
   10EB 2A                 3065 	.byte	42
   10EC FF                 3066 	.byte	-1
   10ED 2A                 3067 	.byte	42
   10EE FD                 3068 	.byte	-3
   10EF 00                 3069 	.byte	0
   10F0 E8                 3070 	.byte	-24
   10F1 F1                 3071 	.byte	-15
   10F2 FF                 3072 	.byte	-1
   10F3 2A                 3073 	.byte	42
   10F4 FD                 3074 	.byte	-3
   10F5 00                 3075 	.byte	0
   10F6 CD                 3076 	.byte	-51
   10F7 DC                 3077 	.byte	-36
   10F8 FF                 3078 	.byte	-1
   10F9 2A                 3079 	.byte	42
   10FA FD                 3080 	.byte	-3
   10FB 00                 3081 	.byte	0
   10FC EE                 3082 	.byte	-18
   10FD 12                 3083 	.byte	18
   10FE FF                 3084 	.byte	-1
   10FF 09                 3085 	.byte	9
   1100 27                 3086 	.byte	39
   1101 FF                 3087 	.byte	-1
   1102 12                 3088 	.byte	18
   1103 EE                 3089 	.byte	-18
   1104 FF                 3090 	.byte	-1
   1105 F7                 3091 	.byte	-9
   1106 D9                 3092 	.byte	-39
   1107 FF                 3093 	.byte	-1
   1108 EE                 3094 	.byte	-18
   1109 12                 3095 	.byte	18
   110A 01                 3096 	.byte	1
                           3097 	.globl _height1FallingFront1
   110B                    3098 _height1FallingFront1:
   110B FF                 3099 	.byte	-1
   110C 09                 3100 	.byte	9
   110D 2A                 3101 	.byte	42
   110E FF                 3102 	.byte	-1
   110F 1E                 3103 	.byte	30
   1110 EE                 3104 	.byte	-18
   1111 FF                 3105 	.byte	-1
   1112 F7                 3106 	.byte	-9
   1113 D9                 3107 	.byte	-39
   1114 FF                 3108 	.byte	-1
   1115 E2                 3109 	.byte	-30
   1116 0F                 3110 	.byte	15
   1117 FF                 3111 	.byte	-1
   1118 24                 3112 	.byte	36
   1119 03                 3113 	.byte	3
   111A 00                 3114 	.byte	0
   111B E5                 3115 	.byte	-27
   111C 27                 3116 	.byte	39
   111D FF                 3117 	.byte	-1
   111E 24                 3118 	.byte	36
   111F 03                 3119 	.byte	3
   1120 00                 3120 	.byte	0
   1121 FA                 3121 	.byte	-6
   1122 EB                 3122 	.byte	-21
   1123 FF                 3123 	.byte	-1
   1124 21                 3124 	.byte	33
   1125 03                 3125 	.byte	3
   1126 00                 3126 	.byte	0
   1127 D6                 3127 	.byte	-42
   1128 D6                 3128 	.byte	-42
   1129 FF                 3129 	.byte	-1
   112A 21                 3130 	.byte	33
   112B 03                 3131 	.byte	3
   112C 00                 3132 	.byte	0
   112D E5                 3133 	.byte	-27
   112E 0F                 3134 	.byte	15
   112F FF                 3135 	.byte	-1
   1130 09                 3136 	.byte	9
   1131 2A                 3137 	.byte	42
   1132 FF                 3138 	.byte	-1
   1133 1B                 3139 	.byte	27
   1134 EE                 3140 	.byte	-18
   1135 FF                 3141 	.byte	-1
   1136 F7                 3142 	.byte	-9
   1137 D9                 3143 	.byte	-39
   1138 FF                 3144 	.byte	-1
   1139 E5                 3145 	.byte	-27
   113A 0F                 3146 	.byte	15
   113B 01                 3147 	.byte	1
                           3148 	.globl _height2FallingLeft2
   113C                    3149 _height2FallingLeft2:
   113C FF                 3150 	.byte	-1
   113D 12                 3151 	.byte	18
   113E 2A                 3152 	.byte	42
   113F FF                 3153 	.byte	-1
   1140 18                 3154 	.byte	24
   1141 EE                 3155 	.byte	-18
   1142 FF                 3156 	.byte	-1
   1143 EE                 3157 	.byte	-18
   1144 D9                 3158 	.byte	-39
   1145 FF                 3159 	.byte	-1
   1146 E8                 3160 	.byte	-24
   1147 0F                 3161 	.byte	15
   1148 FF                 3162 	.byte	-1
   1149 48                 3163 	.byte	72
   114A EE                 3164 	.byte	-18
   114B 00                 3165 	.byte	0
   114C CA                 3166 	.byte	-54
   114D 3C                 3167 	.byte	60
   114E FF                 3168 	.byte	-1
   114F 48                 3169 	.byte	72
   1150 E8                 3170 	.byte	-24
   1151 00                 3171 	.byte	0
   1152 D0                 3172 	.byte	-48
   1153 06                 3173 	.byte	6
   1154 FF                 3174 	.byte	-1
   1155 48                 3175 	.byte	72
   1156 E8                 3176 	.byte	-24
   1157 00                 3177 	.byte	0
   1158 A6                 3178 	.byte	-90
   1159 F1                 3179 	.byte	-15
   115A FF                 3180 	.byte	-1
   115B 48                 3181 	.byte	72
   115C EB                 3182 	.byte	-21
   115D 00                 3183 	.byte	0
   115E E8                 3184 	.byte	-24
   115F 12                 3185 	.byte	18
   1160 FF                 3186 	.byte	-1
   1161 12                 3187 	.byte	18
   1162 24                 3188 	.byte	36
   1163 FF                 3189 	.byte	-1
   1164 18                 3190 	.byte	24
   1165 EE                 3191 	.byte	-18
   1166 FF                 3192 	.byte	-1
   1167 EE                 3193 	.byte	-18
   1168 DC                 3194 	.byte	-36
   1169 FF                 3195 	.byte	-1
   116A E8                 3196 	.byte	-24
   116B 12                 3197 	.byte	18
   116C 01                 3198 	.byte	1
                           3199 	.globl _height2RisingRight2
   116D                    3200 _height2RisingRight2:
   116D 00                 3201 	.byte	0
   116E 12                 3202 	.byte	18
   116F 54                 3203 	.byte	84
   1170 FF                 3204 	.byte	-1
   1171 27                 3205 	.byte	39
   1172 0F                 3206 	.byte	15
   1173 FF                 3207 	.byte	-1
   1174 18                 3208 	.byte	24
   1175 EE                 3209 	.byte	-18
   1176 FF                 3210 	.byte	-1
   1177 D9                 3211 	.byte	-39
   1178 F1                 3212 	.byte	-15
   1179 FF                 3213 	.byte	-1
   117A E8                 3214 	.byte	-24
   117B 12                 3215 	.byte	18
   117C FF                 3216 	.byte	-1
   117D 0C                 3217 	.byte	12
   117E B2                 3218 	.byte	-78
   117F 00                 3219 	.byte	0
   1180 1B                 3220 	.byte	27
   1181 5D                 3221 	.byte	93
   1182 FF                 3222 	.byte	-1
   1183 0F                 3223 	.byte	15
   1184 B2                 3224 	.byte	-78
   1185 00                 3225 	.byte	0
   1186 09                 3226 	.byte	9
   1187 3C                 3227 	.byte	60
   1188 FF                 3228 	.byte	-1
   1189 0F                 3229 	.byte	15
   118A B2                 3230 	.byte	-78
   118B 00                 3231 	.byte	0
   118C CA                 3232 	.byte	-54
   118D 3F                 3233 	.byte	63
   118E FF                 3234 	.byte	-1
   118F 0C                 3235 	.byte	12
   1190 B5                 3236 	.byte	-75
   1191 00                 3237 	.byte	0
   1192 E8                 3238 	.byte	-24
   1193 0F                 3239 	.byte	15
   1194 FF                 3240 	.byte	-1
   1195 2A                 3241 	.byte	42
   1196 0F                 3242 	.byte	15
   1197 FF                 3243 	.byte	-1
   1198 18                 3244 	.byte	24
   1199 EE                 3245 	.byte	-18
   119A FF                 3246 	.byte	-1
   119B D6                 3247 	.byte	-42
   119C F4                 3248 	.byte	-12
   119D FF                 3249 	.byte	-1
   119E E8                 3250 	.byte	-24
   119F 0F                 3251 	.byte	15
   11A0 01                 3252 	.byte	1
                           3253 	.globl _height2FallingRight2
   11A1                    3254 _height2FallingRight2:
   11A1 00                 3255 	.byte	0
   11A2 09                 3256 	.byte	9
   11A3 00                 3257 	.byte	0
   11A4 FF                 3258 	.byte	-1
   11A5 00                 3259 	.byte	0
   11A6 2A                 3260 	.byte	42
   11A7 FF                 3261 	.byte	-1
   11A8 18                 3262 	.byte	24
   11A9 EE                 3263 	.byte	-18
   11AA FF                 3264 	.byte	-1
   11AB 00                 3265 	.byte	0
   11AC D9                 3266 	.byte	-39
   11AD FF                 3267 	.byte	-1
   11AE E8                 3268 	.byte	-24
   11AF 0F                 3269 	.byte	15
   11B0 FF                 3270 	.byte	-1
   11B1 51                 3271 	.byte	81
   11B2 18                 3272 	.byte	24
   11B3 00                 3273 	.byte	0
   11B4 AF                 3274 	.byte	-81
   11B5 12                 3275 	.byte	18
   11B6 FF                 3276 	.byte	-1
   11B7 51                 3277 	.byte	81
   11B8 15                 3278 	.byte	21
   11B9 00                 3279 	.byte	0
   11BA C7                 3280 	.byte	-57
   11BB D9                 3281 	.byte	-39
   11BC FF                 3282 	.byte	-1
   11BD 51                 3283 	.byte	81
   11BE 15                 3284 	.byte	21
   11BF 00                 3285 	.byte	0
   11C0 AF                 3286 	.byte	-81
   11C1 C4                 3287 	.byte	-60
   11C2 FF                 3288 	.byte	-1
   11C3 51                 3289 	.byte	81
   11C4 15                 3290 	.byte	21
   11C5 00                 3291 	.byte	0
   11C6 E8                 3292 	.byte	-24
   11C7 12                 3293 	.byte	18
   11C8 FF                 3294 	.byte	-1
   11C9 00                 3295 	.byte	0
   11CA 27                 3296 	.byte	39
   11CB FF                 3297 	.byte	-1
   11CC 18                 3298 	.byte	24
   11CD EE                 3299 	.byte	-18
   11CE FF                 3300 	.byte	-1
   11CF 00                 3301 	.byte	0
   11D0 D9                 3302 	.byte	-39
   11D1 FF                 3303 	.byte	-1
   11D2 E8                 3304 	.byte	-24
   11D3 12                 3305 	.byte	18
   11D4 01                 3306 	.byte	1
                           3307 	.globl _height2RisingLeft2
   11D5                    3308 _height2RisingLeft2:
   11D5 00                 3309 	.byte	0
   11D6 21                 3310 	.byte	33
   11D7 F4                 3311 	.byte	-12
   11D8 FF                 3312 	.byte	-1
   11D9 DF                 3313 	.byte	-33
   11DA 0C                 3314 	.byte	12
   11DB FF                 3315 	.byte	-1
   11DC 18                 3316 	.byte	24
   11DD F1                 3317 	.byte	-15
   11DE FF                 3318 	.byte	-1
   11DF 21                 3319 	.byte	33
   11E0 F1                 3320 	.byte	-15
   11E1 FF                 3321 	.byte	-1
   11E2 E8                 3322 	.byte	-24
   11E3 12                 3323 	.byte	18
   11E4 FF                 3324 	.byte	-1
   11E5 2D                 3325 	.byte	45
   11E6 4B                 3326 	.byte	75
   11E7 00                 3327 	.byte	0
   11E8 B2                 3328 	.byte	-78
   11E9 C1                 3329 	.byte	-63
   11EA FF                 3330 	.byte	-1
   11EB 2D                 3331 	.byte	45
   11EC 4E                 3332 	.byte	78
   11ED 00                 3333 	.byte	0
   11EE EB                 3334 	.byte	-21
   11EF A3                 3335 	.byte	-93
   11F0 FF                 3336 	.byte	-1
   11F1 2D                 3337 	.byte	45
   11F2 4B                 3338 	.byte	75
   11F3 00                 3339 	.byte	0
   11F4 F4                 3340 	.byte	-12
   11F5 A6                 3341 	.byte	-90
   11F6 FF                 3342 	.byte	-1
   11F7 2D                 3343 	.byte	45
   11F8 4B                 3344 	.byte	75
   11F9 00                 3345 	.byte	0
   11FA E8                 3346 	.byte	-24
   11FB 12                 3347 	.byte	18
   11FC FF                 3348 	.byte	-1
   11FD DF                 3349 	.byte	-33
   11FE 0F                 3350 	.byte	15
   11FF FF                 3351 	.byte	-1
   1200 18                 3352 	.byte	24
   1201 EE                 3353 	.byte	-18
   1202 FF                 3354 	.byte	-1
   1203 21                 3355 	.byte	33
   1204 F1                 3356 	.byte	-15
   1205 FF                 3357 	.byte	-1
   1206 E8                 3358 	.byte	-24
   1207 12                 3359 	.byte	18
   1208 01                 3360 	.byte	1
                           3361 	.globl _height2FallingBack2
   1209                    3362 _height2FallingBack2:
   1209 00                 3363 	.byte	0
   120A 0C                 3364 	.byte	12
   120B 00                 3365 	.byte	0
   120C FF                 3366 	.byte	-1
   120D 09                 3367 	.byte	9
   120E 2A                 3368 	.byte	42
   120F FF                 3369 	.byte	-1
   1210 0C                 3370 	.byte	12
   1211 EE                 3371 	.byte	-18
   1212 FF                 3372 	.byte	-1
   1213 F7                 3373 	.byte	-9
   1214 D9                 3374 	.byte	-39
   1215 FF                 3375 	.byte	-1
   1216 F4                 3376 	.byte	-12
   1217 0F                 3377 	.byte	15
   1218 FF                 3378 	.byte	-1
   1219 57                 3379 	.byte	87
   121A FA                 3380 	.byte	-6
   121B 00                 3381 	.byte	0
   121C B2                 3382 	.byte	-78
   121D 30                 3383 	.byte	48
   121E FF                 3384 	.byte	-1
   121F 57                 3385 	.byte	87
   1220 F7                 3386 	.byte	-9
   1221 00                 3387 	.byte	0
   1222 B5                 3388 	.byte	-75
   1223 F7                 3389 	.byte	-9
   1224 FF                 3390 	.byte	-1
   1225 57                 3391 	.byte	87
   1226 F7                 3392 	.byte	-9
   1227 00                 3393 	.byte	0
   1228 A0                 3394 	.byte	-96
   1229 E2                 3395 	.byte	-30
   122A FF                 3396 	.byte	-1
   122B 57                 3397 	.byte	87
   122C F7                 3398 	.byte	-9
   122D 00                 3399 	.byte	0
   122E F4                 3400 	.byte	-12
   122F 12                 3401 	.byte	18
   1230 FF                 3402 	.byte	-1
   1231 09                 3403 	.byte	9
   1232 27                 3404 	.byte	39
   1233 FF                 3405 	.byte	-1
   1234 0C                 3406 	.byte	12
   1235 EE                 3407 	.byte	-18
   1236 FF                 3408 	.byte	-1
   1237 F7                 3409 	.byte	-9
   1238 D9                 3410 	.byte	-39
   1239 FF                 3411 	.byte	-1
   123A F4                 3412 	.byte	-12
   123B 12                 3413 	.byte	18
   123C 01                 3414 	.byte	1
                           3415 	.globl _height2RisingFront2
   123D                    3416 _height2RisingFront2:
   123D 00                 3417 	.byte	0
   123E 1B                 3418 	.byte	27
   123F 06                 3419 	.byte	6
   1240 FF                 3420 	.byte	-1
   1241 09                 3421 	.byte	9
   1242 2A                 3422 	.byte	42
   1243 FF                 3423 	.byte	-1
   1244 E5                 3424 	.byte	-27
   1245 FA                 3425 	.byte	-6
   1246 FF                 3426 	.byte	-1
   1247 F7                 3427 	.byte	-9
   1248 D6                 3428 	.byte	-42
   1249 FF                 3429 	.byte	-1
   124A 1B                 3430 	.byte	27
   124B 06                 3431 	.byte	6
   124C FF                 3432 	.byte	-1
   124D 4B                 3433 	.byte	75
   124E E2                 3434 	.byte	-30
   124F 00                 3435 	.byte	0
   1250 BE                 3436 	.byte	-66
   1251 48                 3437 	.byte	72
   1252 FF                 3438 	.byte	-1
   1253 4B                 3439 	.byte	75
   1254 DF                 3440 	.byte	-33
   1255 00                 3441 	.byte	0
   1256 9A                 3442 	.byte	-102
   1257 1B                 3443 	.byte	27
   1258 FF                 3444 	.byte	-1
   1259 4B                 3445 	.byte	75
   125A DF                 3446 	.byte	-33
   125B 00                 3447 	.byte	0
   125C AC                 3448 	.byte	-84
   125D F7                 3449 	.byte	-9
   125E FF                 3450 	.byte	-1
   125F 4B                 3451 	.byte	75
   1260 E2                 3452 	.byte	-30
   1261 00                 3453 	.byte	0
   1262 1B                 3454 	.byte	27
   1263 06                 3455 	.byte	6
   1264 FF                 3456 	.byte	-1
   1265 09                 3457 	.byte	9
   1266 27                 3458 	.byte	39
   1267 FF                 3459 	.byte	-1
   1268 E5                 3460 	.byte	-27
   1269 FA                 3461 	.byte	-6
   126A FF                 3462 	.byte	-1
   126B F7                 3463 	.byte	-9
   126C D9                 3464 	.byte	-39
   126D FF                 3465 	.byte	-1
   126E 1B                 3466 	.byte	27
   126F 06                 3467 	.byte	6
   1270 01                 3468 	.byte	1
                           3469 	.globl _height2FallingFront2
   1271                    3470 _height2FallingFront2:
   1271 FF                 3471 	.byte	-1
   1272 09                 3472 	.byte	9
   1273 2A                 3473 	.byte	42
   1274 FF                 3474 	.byte	-1
   1275 21                 3475 	.byte	33
   1276 EE                 3476 	.byte	-18
   1277 FF                 3477 	.byte	-1
   1278 F7                 3478 	.byte	-9
   1279 D9                 3479 	.byte	-39
   127A FF                 3480 	.byte	-1
   127B DF                 3481 	.byte	-33
   127C 0F                 3482 	.byte	15
   127D FF                 3483 	.byte	-1
   127E 3F                 3484 	.byte	63
   127F 09                 3485 	.byte	9
   1280 00                 3486 	.byte	0
   1281 CA                 3487 	.byte	-54
   1282 21                 3488 	.byte	33
   1283 FF                 3489 	.byte	-1
   1284 3F                 3490 	.byte	63
   1285 09                 3491 	.byte	9
   1286 00                 3492 	.byte	0
   1287 E2                 3493 	.byte	-30
   1288 E5                 3494 	.byte	-27
   1289 FF                 3495 	.byte	-1
   128A 3F                 3496 	.byte	63
   128B 09                 3497 	.byte	9
   128C 00                 3498 	.byte	0
   128D B8                 3499 	.byte	-72
   128E D0                 3500 	.byte	-48
   128F FF                 3501 	.byte	-1
   1290 3F                 3502 	.byte	63
   1291 09                 3503 	.byte	9
   1292 00                 3504 	.byte	0
   1293 DF                 3505 	.byte	-33
   1294 0F                 3506 	.byte	15
   1295 FF                 3507 	.byte	-1
   1296 09                 3508 	.byte	9
   1297 2A                 3509 	.byte	42
   1298 FF                 3510 	.byte	-1
   1299 21                 3511 	.byte	33
   129A EE                 3512 	.byte	-18
   129B FF                 3513 	.byte	-1
   129C F7                 3514 	.byte	-9
   129D D9                 3515 	.byte	-39
   129E FF                 3516 	.byte	-1
   129F DF                 3517 	.byte	-33
   12A0 0F                 3518 	.byte	15
   12A1 01                 3519 	.byte	1
                           3520 	.globl _height2RisingBack2
   12A2                    3521 _height2RisingBack2:
   12A2 00                 3522 	.byte	0
   12A3 30                 3523 	.byte	48
   12A4 DF                 3524 	.byte	-33
   12A5 FF                 3525 	.byte	-1
   12A6 09                 3526 	.byte	9
   12A7 27                 3527 	.byte	39
   12A8 FF                 3528 	.byte	-1
   12A9 2D                 3529 	.byte	45
   12AA FA                 3530 	.byte	-6
   12AB FF                 3531 	.byte	-1
   12AC F7                 3532 	.byte	-9
   12AD D9                 3533 	.byte	-39
   12AE FF                 3534 	.byte	-1
   12AF D3                 3535 	.byte	-45
   12B0 06                 3536 	.byte	6
   12B1 FF                 3537 	.byte	-1
   12B2 F1                 3538 	.byte	-15
   12B3 21                 3539 	.byte	33
   12B4 00                 3540 	.byte	0
   12B5 18                 3541 	.byte	24
   12B6 06                 3542 	.byte	6
   12B7 FF                 3543 	.byte	-1
   12B8 F1                 3544 	.byte	-15
   12B9 21                 3545 	.byte	33
   12BA 00                 3546 	.byte	0
   12BB 3C                 3547 	.byte	60
   12BC D9                 3548 	.byte	-39
   12BD FF                 3549 	.byte	-1
   12BE F1                 3550 	.byte	-15
   12BF 21                 3551 	.byte	33
   12C0 00                 3552 	.byte	0
   12C1 06                 3553 	.byte	6
   12C2 B8                 3554 	.byte	-72
   12C3 FF                 3555 	.byte	-1
   12C4 F1                 3556 	.byte	-15
   12C5 21                 3557 	.byte	33
   12C6 00                 3558 	.byte	0
   12C7 D3                 3559 	.byte	-45
   12C8 06                 3560 	.byte	6
   12C9 FF                 3561 	.byte	-1
   12CA 09                 3562 	.byte	9
   12CB 27                 3563 	.byte	39
   12CC FF                 3564 	.byte	-1
   12CD 2D                 3565 	.byte	45
   12CE FA                 3566 	.byte	-6
   12CF FF                 3567 	.byte	-1
   12D0 F7                 3568 	.byte	-9
   12D1 D9                 3569 	.byte	-39
   12D2 FF                 3570 	.byte	-1
   12D3 D3                 3571 	.byte	-45
   12D4 06                 3572 	.byte	6
   12D5 01                 3573 	.byte	1
                           3574 	.globl _depth2RollingLeft2
   12D6                    3575 _depth2RollingLeft2:
   12D6 FF                 3576 	.byte	-1
   12D7 12                 3577 	.byte	18
   12D8 2A                 3578 	.byte	42
   12D9 FF                 3579 	.byte	-1
   12DA 30                 3580 	.byte	48
   12DB DC                 3581 	.byte	-36
   12DC FF                 3582 	.byte	-1
   12DD EE                 3583 	.byte	-18
   12DE D9                 3584 	.byte	-39
   12DF FF                 3585 	.byte	-1
   12E0 D0                 3586 	.byte	-48
   12E1 21                 3587 	.byte	33
   12E2 FF                 3588 	.byte	-1
   12E3 24                 3589 	.byte	36
   12E4 F7                 3590 	.byte	-9
   12E5 00                 3591 	.byte	0
   12E6 EE                 3592 	.byte	-18
   12E7 33                 3593 	.byte	51
   12E8 FF                 3594 	.byte	-1
   12E9 24                 3595 	.byte	36
   12EA F4                 3596 	.byte	-12
   12EB 00                 3597 	.byte	0
   12EC 0C                 3598 	.byte	12
   12ED E8                 3599 	.byte	-24
   12EE FF                 3600 	.byte	-1
   12EF 24                 3601 	.byte	36
   12F0 F7                 3602 	.byte	-9
   12F1 00                 3603 	.byte	0
   12F2 CA                 3604 	.byte	-54
   12F3 E2                 3605 	.byte	-30
   12F4 FF                 3606 	.byte	-1
   12F5 24                 3607 	.byte	36
   12F6 F4                 3608 	.byte	-12
   12F7 00                 3609 	.byte	0
   12F8 D0                 3610 	.byte	-48
   12F9 24                 3611 	.byte	36
   12FA FF                 3612 	.byte	-1
   12FB 12                 3613 	.byte	18
   12FC 27                 3614 	.byte	39
   12FD FF                 3615 	.byte	-1
   12FE 30                 3616 	.byte	48
   12FF DF                 3617 	.byte	-33
   1300 FF                 3618 	.byte	-1
   1301 EE                 3619 	.byte	-18
   1302 D6                 3620 	.byte	-42
   1303 FF                 3621 	.byte	-1
   1304 D0                 3622 	.byte	-48
   1305 24                 3623 	.byte	36
   1306 01                 3624 	.byte	1
                           3625 	.globl _depth2RollingRight2
   1307                    3626 _depth2RollingRight2:
   1307 00                 3627 	.byte	0
   1308 09                 3628 	.byte	9
   1309 00                 3629 	.byte	0
   130A FF                 3630 	.byte	-1
   130B 00                 3631 	.byte	0
   130C 2A                 3632 	.byte	42
   130D FF                 3633 	.byte	-1
   130E 30                 3634 	.byte	48
   130F DC                 3635 	.byte	-36
   1310 FF                 3636 	.byte	-1
   1311 00                 3637 	.byte	0
   1312 D9                 3638 	.byte	-39
   1313 FF                 3639 	.byte	-1
   1314 D0                 3640 	.byte	-48
   1315 21                 3641 	.byte	33
   1316 FF                 3642 	.byte	-1
   1317 2A                 3643 	.byte	42
   1318 0C                 3644 	.byte	12
   1319 00                 3645 	.byte	0
   131A D6                 3646 	.byte	-42
   131B 1E                 3647 	.byte	30
   131C FF                 3648 	.byte	-1
   131D 27                 3649 	.byte	39
   131E 0C                 3650 	.byte	12
   131F 00                 3651 	.byte	0
   1320 09                 3652 	.byte	9
   1321 D0                 3653 	.byte	-48
   1322 FF                 3654 	.byte	-1
   1323 27                 3655 	.byte	39
   1324 0C                 3656 	.byte	12
   1325 00                 3657 	.byte	0
   1326 D9                 3658 	.byte	-39
   1327 CD                 3659 	.byte	-51
   1328 FF                 3660 	.byte	-1
   1329 2A                 3661 	.byte	42
   132A 0C                 3662 	.byte	12
   132B 00                 3663 	.byte	0
   132C D0                 3664 	.byte	-48
   132D 21                 3665 	.byte	33
   132E FF                 3666 	.byte	-1
   132F FD                 3667 	.byte	-3
   1330 2A                 3668 	.byte	42
   1331 FF                 3669 	.byte	-1
   1332 30                 3670 	.byte	48
   1333 DC                 3671 	.byte	-36
   1334 FF                 3672 	.byte	-1
   1335 03                 3673 	.byte	3
   1336 D9                 3674 	.byte	-39
   1337 FF                 3675 	.byte	-1
   1338 D0                 3676 	.byte	-48
   1339 21                 3677 	.byte	33
   133A 01                 3678 	.byte	1
                           3679 	.globl _width2RollingFront2
   133B                    3680 _width2RollingFront2:
   133B FF                 3681 	.byte	-1
   133C 12                 3682 	.byte	18
   133D 54                 3683 	.byte	84
   133E FF                 3684 	.byte	-1
   133F 21                 3685 	.byte	33
   1340 EE                 3686 	.byte	-18
   1341 FF                 3687 	.byte	-1
   1342 EE                 3688 	.byte	-18
   1343 AF                 3689 	.byte	-81
   1344 FF                 3690 	.byte	-1
   1345 DF                 3691 	.byte	-33
   1346 0F                 3692 	.byte	15
   1347 FF                 3693 	.byte	-1
   1348 1E                 3694 	.byte	30
   1349 06                 3695 	.byte	6
   134A 00                 3696 	.byte	0
   134B F4                 3697 	.byte	-12
   134C 4E                 3698 	.byte	78
   134D FF                 3699 	.byte	-1
   134E 1E                 3700 	.byte	30
   134F 06                 3701 	.byte	6
   1350 00                 3702 	.byte	0
   1351 03                 3703 	.byte	3
   1352 E8                 3704 	.byte	-24
   1353 FF                 3705 	.byte	-1
   1354 21                 3706 	.byte	33
   1355 06                 3707 	.byte	6
   1356 00                 3708 	.byte	0
   1357 CD                 3709 	.byte	-51
   1358 A9                 3710 	.byte	-87
   1359 FF                 3711 	.byte	-1
   135A 21                 3712 	.byte	33
   135B 06                 3713 	.byte	6
   135C 00                 3714 	.byte	0
   135D DC                 3715 	.byte	-36
   135E 0F                 3716 	.byte	15
   135F FF                 3717 	.byte	-1
   1360 12                 3718 	.byte	18
   1361 54                 3719 	.byte	84
   1362 FF                 3720 	.byte	-1
   1363 24                 3721 	.byte	36
   1364 EE                 3722 	.byte	-18
   1365 FF                 3723 	.byte	-1
   1366 EE                 3724 	.byte	-18
   1367 AF                 3725 	.byte	-81
   1368 FF                 3726 	.byte	-1
   1369 DC                 3727 	.byte	-36
   136A 0F                 3728 	.byte	15
   136B 01                 3729 	.byte	1
                           3730 	.globl _width2RollingBack2
   136C                    3731 _width2RollingBack2:
   136C 00                 3732 	.byte	0
   136D 0C                 3733 	.byte	12
   136E 00                 3734 	.byte	0
   136F FF                 3735 	.byte	-1
   1370 12                 3736 	.byte	18
   1371 54                 3737 	.byte	84
   1372 FF                 3738 	.byte	-1
   1373 0C                 3739 	.byte	12
   1374 EE                 3740 	.byte	-18
   1375 FF                 3741 	.byte	-1
   1376 EE                 3742 	.byte	-18
   1377 AF                 3743 	.byte	-81
   1378 FF                 3744 	.byte	-1
   1379 F4                 3745 	.byte	-12
   137A 0F                 3746 	.byte	15
   137B FF                 3747 	.byte	-1
   137C 2A                 3748 	.byte	42
   137D FD                 3749 	.byte	-3
   137E 00                 3750 	.byte	0
   137F E8                 3751 	.byte	-24
   1380 57                 3752 	.byte	87
   1381 FF                 3753 	.byte	-1
   1382 2A                 3754 	.byte	42
   1383 FA                 3755 	.byte	-6
   1384 00                 3756 	.byte	0
   1385 E2                 3757 	.byte	-30
   1386 F4                 3758 	.byte	-12
   1387 FF                 3759 	.byte	-1
   1388 2D                 3760 	.byte	45
   1389 FA                 3761 	.byte	-6
   138A 00                 3762 	.byte	0
   138B C1                 3763 	.byte	-63
   138C B5                 3764 	.byte	-75
   138D FF                 3765 	.byte	-1
   138E 2D                 3766 	.byte	45
   138F FA                 3767 	.byte	-6
   1390 00                 3768 	.byte	0
   1391 F1                 3769 	.byte	-15
   1392 12                 3770 	.byte	18
   1393 FF                 3771 	.byte	-1
   1394 12                 3772 	.byte	18
   1395 51                 3773 	.byte	81
   1396 FF                 3774 	.byte	-1
   1397 0F                 3775 	.byte	15
   1398 EE                 3776 	.byte	-18
   1399 FF                 3777 	.byte	-1
   139A EE                 3778 	.byte	-18
   139B AF                 3779 	.byte	-81
   139C FF                 3780 	.byte	-1
   139D F1                 3781 	.byte	-15
   139E 12                 3782 	.byte	18
   139F 01                 3783 	.byte	1
                           3784 	.globl _height1FallingLeft2
   13A0                    3785 _height1FallingLeft2:
   13A0 FF                 3786 	.byte	-1
   13A1 12                 3787 	.byte	18
   13A2 2A                 3788 	.byte	42
   13A3 FF                 3789 	.byte	-1
   13A4 18                 3790 	.byte	24
   13A5 EE                 3791 	.byte	-18
   13A6 FF                 3792 	.byte	-1
   13A7 EE                 3793 	.byte	-18
   13A8 D9                 3794 	.byte	-39
   13A9 FF                 3795 	.byte	-1
   13AA E8                 3796 	.byte	-24
   13AB 0F                 3797 	.byte	15
   13AC FF                 3798 	.byte	-1
   13AD 24                 3799 	.byte	36
   13AE F7                 3800 	.byte	-9
   13AF 00                 3801 	.byte	0
   13B0 EE                 3802 	.byte	-18
   13B1 33                 3803 	.byte	51
   13B2 FF                 3804 	.byte	-1
   13B3 24                 3805 	.byte	36
   13B4 F4                 3806 	.byte	-12
   13B5 00                 3807 	.byte	0
   13B6 F4                 3808 	.byte	-12
   13B7 FA                 3809 	.byte	-6
   13B8 FF                 3810 	.byte	-1
   13B9 24                 3811 	.byte	36
   13BA F4                 3812 	.byte	-12
   13BB 00                 3813 	.byte	0
   13BC CA                 3814 	.byte	-54
   13BD E5                 3815 	.byte	-27
   13BE FF                 3816 	.byte	-1
   13BF 24                 3817 	.byte	36
   13C0 F4                 3818 	.byte	-12
   13C1 00                 3819 	.byte	0
   13C2 E8                 3820 	.byte	-24
   13C3 12                 3821 	.byte	18
   13C4 FF                 3822 	.byte	-1
   13C5 12                 3823 	.byte	18
   13C6 27                 3824 	.byte	39
   13C7 FF                 3825 	.byte	-1
   13C8 18                 3826 	.byte	24
   13C9 EE                 3827 	.byte	-18
   13CA FF                 3828 	.byte	-1
   13CB EE                 3829 	.byte	-18
   13CC D9                 3830 	.byte	-39
   13CD FF                 3831 	.byte	-1
   13CE E8                 3832 	.byte	-24
   13CF 12                 3833 	.byte	18
   13D0 01                 3834 	.byte	1
                           3835 	.globl _height1FallingRight2
   13D1                    3836 _height1FallingRight2:
   13D1 00                 3837 	.byte	0
   13D2 09                 3838 	.byte	9
   13D3 00                 3839 	.byte	0
   13D4 FF                 3840 	.byte	-1
   13D5 00                 3841 	.byte	0
   13D6 2A                 3842 	.byte	42
   13D7 FF                 3843 	.byte	-1
   13D8 18                 3844 	.byte	24
   13D9 EE                 3845 	.byte	-18
   13DA FF                 3846 	.byte	-1
   13DB 00                 3847 	.byte	0
   13DC D9                 3848 	.byte	-39
   13DD FF                 3849 	.byte	-1
   13DE E8                 3850 	.byte	-24
   13DF 0F                 3851 	.byte	15
   13E0 FF                 3852 	.byte	-1
   13E1 2A                 3853 	.byte	42
   13E2 0C                 3854 	.byte	12
   13E3 00                 3855 	.byte	0
   13E4 D6                 3856 	.byte	-42
   13E5 1E                 3857 	.byte	30
   13E6 FF                 3858 	.byte	-1
   13E7 27                 3859 	.byte	39
   13E8 0C                 3860 	.byte	12
   13E9 00                 3861 	.byte	0
   13EA F1                 3862 	.byte	-15
   13EB E2                 3863 	.byte	-30
   13EC FF                 3864 	.byte	-1
   13ED 27                 3865 	.byte	39
   13EE 0C                 3866 	.byte	12
   13EF 00                 3867 	.byte	0
   13F0 D9                 3868 	.byte	-39
   13F1 CD                 3869 	.byte	-51
   13F2 FF                 3870 	.byte	-1
   13F3 2A                 3871 	.byte	42
   13F4 0C                 3872 	.byte	12
   13F5 00                 3873 	.byte	0
   13F6 E8                 3874 	.byte	-24
   13F7 0F                 3875 	.byte	15
   13F8 FF                 3876 	.byte	-1
   13F9 FD                 3877 	.byte	-3
   13FA 2A                 3878 	.byte	42
   13FB FF                 3879 	.byte	-1
   13FC 18                 3880 	.byte	24
   13FD EE                 3881 	.byte	-18
   13FE FF                 3882 	.byte	-1
   13FF 03                 3883 	.byte	3
   1400 D9                 3884 	.byte	-39
   1401 FF                 3885 	.byte	-1
   1402 E8                 3886 	.byte	-24
   1403 0F                 3887 	.byte	15
   1404 01                 3888 	.byte	1
                           3889 	.globl _height1FallingBack2
   1405                    3890 _height1FallingBack2:
   1405 00                 3891 	.byte	0
   1406 0C                 3892 	.byte	12
   1407 00                 3893 	.byte	0
   1408 FF                 3894 	.byte	-1
   1409 09                 3895 	.byte	9
   140A 2A                 3896 	.byte	42
   140B FF                 3897 	.byte	-1
   140C 0C                 3898 	.byte	12
   140D EE                 3899 	.byte	-18
   140E FF                 3900 	.byte	-1
   140F F7                 3901 	.byte	-9
   1410 D9                 3902 	.byte	-39
   1411 FF                 3903 	.byte	-1
   1412 F4                 3904 	.byte	-12
   1413 0F                 3905 	.byte	15
   1414 FF                 3906 	.byte	-1
   1415 2A                 3907 	.byte	42
   1416 FD                 3908 	.byte	-3
   1417 00                 3909 	.byte	0
   1418 DF                 3910 	.byte	-33
   1419 2D                 3911 	.byte	45
   141A FF                 3912 	.byte	-1
   141B 2A                 3913 	.byte	42
   141C FA                 3914 	.byte	-6
   141D 00                 3915 	.byte	0
   141E E2                 3916 	.byte	-30
   141F F4                 3917 	.byte	-12
   1420 FF                 3918 	.byte	-1
   1421 2D                 3919 	.byte	45
   1422 FA                 3920 	.byte	-6
   1423 00                 3921 	.byte	0
   1424 CA                 3922 	.byte	-54
   1425 DF                 3923 	.byte	-33
   1426 FF                 3924 	.byte	-1
   1427 2D                 3925 	.byte	45
   1428 FA                 3926 	.byte	-6
   1429 00                 3927 	.byte	0
   142A F1                 3928 	.byte	-15
   142B 12                 3929 	.byte	18
   142C FF                 3930 	.byte	-1
   142D 09                 3931 	.byte	9
   142E 27                 3932 	.byte	39
   142F FF                 3933 	.byte	-1
   1430 0F                 3934 	.byte	15
   1431 EE                 3935 	.byte	-18
   1432 FF                 3936 	.byte	-1
   1433 F7                 3937 	.byte	-9
   1434 D9                 3938 	.byte	-39
   1435 FF                 3939 	.byte	-1
   1436 F1                 3940 	.byte	-15
   1437 12                 3941 	.byte	18
   1438 01                 3942 	.byte	1
                           3943 	.globl _height1FallingFront2
   1439                    3944 _height1FallingFront2:
   1439 FF                 3945 	.byte	-1
   143A 09                 3946 	.byte	9
   143B 2A                 3947 	.byte	42
   143C FF                 3948 	.byte	-1
   143D 21                 3949 	.byte	33
   143E EE                 3950 	.byte	-18
   143F FF                 3951 	.byte	-1
   1440 F7                 3952 	.byte	-9
   1441 D9                 3953 	.byte	-39
   1442 FF                 3954 	.byte	-1
   1443 DF                 3955 	.byte	-33
   1444 0F                 3956 	.byte	15
   1445 FF                 3957 	.byte	-1
   1446 1E                 3958 	.byte	30
   1447 06                 3959 	.byte	6
   1448 00                 3960 	.byte	0
   1449 EB                 3961 	.byte	-21
   144A 24                 3962 	.byte	36
   144B FF                 3963 	.byte	-1
   144C 1E                 3964 	.byte	30
   144D 06                 3965 	.byte	6
   144E 00                 3966 	.byte	0
   144F 03                 3967 	.byte	3
   1450 E8                 3968 	.byte	-24
   1451 FF                 3969 	.byte	-1
   1452 21                 3970 	.byte	33
   1453 06                 3971 	.byte	6
   1454 00                 3972 	.byte	0
   1455 D6                 3973 	.byte	-42
   1456 D3                 3974 	.byte	-45
   1457 FF                 3975 	.byte	-1
   1458 21                 3976 	.byte	33
   1459 06                 3977 	.byte	6
   145A 00                 3978 	.byte	0
   145B DC                 3979 	.byte	-36
   145C 0F                 3980 	.byte	15
   145D FF                 3981 	.byte	-1
   145E 09                 3982 	.byte	9
   145F 2A                 3983 	.byte	42
   1460 FF                 3984 	.byte	-1
   1461 24                 3985 	.byte	36
   1462 EE                 3986 	.byte	-18
   1463 FF                 3987 	.byte	-1
   1464 F7                 3988 	.byte	-9
   1465 D9                 3989 	.byte	-39
   1466 FF                 3990 	.byte	-1
   1467 DC                 3991 	.byte	-36
   1468 0F                 3992 	.byte	15
   1469 01                 3993 	.byte	1
                           3994 	.globl _height2FallingLeft3
   146A                    3995 _height2FallingLeft3:
   146A FF                 3996 	.byte	-1
   146B 18                 3997 	.byte	24
   146C 27                 3998 	.byte	39
   146D FF                 3999 	.byte	-1
   146E 18                 4000 	.byte	24
   146F EE                 4001 	.byte	-18
   1470 FF                 4002 	.byte	-1
   1471 E8                 4003 	.byte	-24
   1472 DC                 4004 	.byte	-36
   1473 FF                 4005 	.byte	-1
   1474 E8                 4006 	.byte	-24
   1475 0F                 4007 	.byte	15
   1476 FF                 4008 	.byte	-1
   1477 42                 4009 	.byte	66
   1478 E2                 4010 	.byte	-30
   1479 00                 4011 	.byte	0
   147A D6                 4012 	.byte	-42
   147B 45                 4013 	.byte	69
   147C FF                 4014 	.byte	-1
   147D 3F                 4015 	.byte	63
   147E DF                 4016 	.byte	-33
   147F 00                 4017 	.byte	0
   1480 D9                 4018 	.byte	-39
   1481 0F                 4019 	.byte	15
   1482 FF                 4020 	.byte	-1
   1483 3F                 4021 	.byte	63
   1484 E2                 4022 	.byte	-30
   1485 00                 4023 	.byte	0
   1486 A9                 4024 	.byte	-87
   1487 FA                 4025 	.byte	-6
   1488 FF                 4026 	.byte	-1
   1489 42                 4027 	.byte	66
   148A DF                 4028 	.byte	-33
   148B 00                 4029 	.byte	0
   148C E8                 4030 	.byte	-24
   148D 12                 4031 	.byte	18
   148E FF                 4032 	.byte	-1
   148F 15                 4033 	.byte	21
   1490 24                 4034 	.byte	36
   1491 FF                 4035 	.byte	-1
   1492 18                 4036 	.byte	24
   1493 F1                 4037 	.byte	-15
   1494 FF                 4038 	.byte	-1
   1495 EB                 4039 	.byte	-21
   1496 D9                 4040 	.byte	-39
   1497 FF                 4041 	.byte	-1
   1498 E8                 4042 	.byte	-24
   1499 12                 4043 	.byte	18
   149A 01                 4044 	.byte	1
                           4045 	.globl _height2RisingRight3
   149B                    4046 _height2RisingRight3:
   149B 00                 4047 	.byte	0
   149C 12                 4048 	.byte	18
   149D 54                 4049 	.byte	84
   149E FF                 4050 	.byte	-1
   149F 27                 4051 	.byte	39
   14A0 15                 4052 	.byte	21
   14A1 FF                 4053 	.byte	-1
   14A2 18                 4054 	.byte	24
   14A3 EE                 4055 	.byte	-18
   14A4 FF                 4056 	.byte	-1
   14A5 D9                 4057 	.byte	-39
   14A6 EB                 4058 	.byte	-21
   14A7 FF                 4059 	.byte	-1
   14A8 E8                 4060 	.byte	-24
   14A9 12                 4061 	.byte	18
   14AA FF                 4062 	.byte	-1
   14AB 18                 4063 	.byte	24
   14AC B8                 4064 	.byte	-72
   14AD 00                 4065 	.byte	0
   14AE 0F                 4066 	.byte	15
   14AF 5D                 4067 	.byte	93
   14B0 FF                 4068 	.byte	-1
   14B1 18                 4069 	.byte	24
   14B2 B8                 4070 	.byte	-72
   14B3 00                 4071 	.byte	0
   14B4 00                 4072 	.byte	0
   14B5 36                 4073 	.byte	54
   14B6 FF                 4074 	.byte	-1
   14B7 18                 4075 	.byte	24
   14B8 B8                 4076 	.byte	-72
   14B9 00                 4077 	.byte	0
   14BA C1                 4078 	.byte	-63
   14BB 33                 4079 	.byte	51
   14BC FF                 4080 	.byte	-1
   14BD 18                 4081 	.byte	24
   14BE BB                 4082 	.byte	-69
   14BF 00                 4083 	.byte	0
   14C0 E8                 4084 	.byte	-24
   14C1 0F                 4085 	.byte	15
   14C2 FF                 4086 	.byte	-1
   14C3 27                 4087 	.byte	39
   14C4 15                 4088 	.byte	21
   14C5 FF                 4089 	.byte	-1
   14C6 18                 4090 	.byte	24
   14C7 EE                 4091 	.byte	-18
   14C8 FF                 4092 	.byte	-1
   14C9 D9                 4093 	.byte	-39
   14CA EE                 4094 	.byte	-18
   14CB FF                 4095 	.byte	-1
   14CC E8                 4096 	.byte	-24
   14CD 0F                 4097 	.byte	15
   14CE 01                 4098 	.byte	1
                           4099 	.globl _height2FallingRight3
   14CF                    4100 _height2FallingRight3:
   14CF 00                 4101 	.byte	0
   14D0 0F                 4102 	.byte	15
   14D1 03                 4103 	.byte	3
   14D2 FF                 4104 	.byte	-1
   14D3 FA                 4105 	.byte	-6
   14D4 27                 4106 	.byte	39
   14D5 FF                 4107 	.byte	-1
   14D6 18                 4108 	.byte	24
   14D7 EE                 4109 	.byte	-18
   14D8 FF                 4110 	.byte	-1
   14D9 06                 4111 	.byte	6
   14DA DC                 4112 	.byte	-36
   14DB FF                 4113 	.byte	-1
   14DC E8                 4114 	.byte	-24
   14DD 0F                 4115 	.byte	15
   14DE FF                 4116 	.byte	-1
   14DF 51                 4117 	.byte	81
   14E0 21                 4118 	.byte	33
   14E1 00                 4119 	.byte	0
   14E2 A9                 4120 	.byte	-87
   14E3 06                 4121 	.byte	6
   14E4 FF                 4122 	.byte	-1
   14E5 4E                 4123 	.byte	78
   14E6 21                 4124 	.byte	33
   14E7 00                 4125 	.byte	0
   14E8 CA                 4126 	.byte	-54
   14E9 CD                 4127 	.byte	-51
   14EA FF                 4128 	.byte	-1
   14EB 4E                 4129 	.byte	78
   14EC 21                 4130 	.byte	33
   14ED 00                 4131 	.byte	0
   14EE B8                 4132 	.byte	-72
   14EF BB                 4133 	.byte	-69
   14F0 FF                 4134 	.byte	-1
   14F1 51                 4135 	.byte	81
   14F2 1E                 4136 	.byte	30
   14F3 00                 4137 	.byte	0
   14F4 E8                 4138 	.byte	-24
   14F5 12                 4139 	.byte	18
   14F6 FF                 4140 	.byte	-1
   14F7 F7                 4141 	.byte	-9
   14F8 27                 4142 	.byte	39
   14F9 FF                 4143 	.byte	-1
   14FA 18                 4144 	.byte	24
   14FB EE                 4145 	.byte	-18
   14FC FF                 4146 	.byte	-1
   14FD 09                 4147 	.byte	9
   14FE D9                 4148 	.byte	-39
   14FF FF                 4149 	.byte	-1
   1500 E8                 4150 	.byte	-24
   1501 12                 4151 	.byte	18
   1502 01                 4152 	.byte	1
                           4153 	.globl _height2RisingLeft3
   1503                    4154 _height2RisingLeft3:
   1503 00                 4155 	.byte	0
   1504 1E                 4156 	.byte	30
   1505 EE                 4157 	.byte	-18
   1506 FF                 4158 	.byte	-1
   1507 E2                 4159 	.byte	-30
   1508 12                 4160 	.byte	18
   1509 FF                 4161 	.byte	-1
   150A 18                 4162 	.byte	24
   150B F1                 4163 	.byte	-15
   150C FF                 4164 	.byte	-1
   150D 1E                 4165 	.byte	30
   150E EB                 4166 	.byte	-21
   150F FF                 4167 	.byte	-1
   1510 E8                 4168 	.byte	-24
   1511 12                 4169 	.byte	18
   1512 FF                 4170 	.byte	-1
   1513 36                 4171 	.byte	54
   1514 45                 4172 	.byte	69
   1515 00                 4173 	.byte	0
   1516 AC                 4174 	.byte	-84
   1517 CD                 4175 	.byte	-51
   1518 FF                 4176 	.byte	-1
   1519 36                 4177 	.byte	54
   151A 48                 4178 	.byte	72
   151B 00                 4179 	.byte	0
   151C E2                 4180 	.byte	-30
   151D A9                 4181 	.byte	-87
   151E FF                 4182 	.byte	-1
   151F 36                 4183 	.byte	54
   1520 45                 4184 	.byte	69
   1521 00                 4185 	.byte	0
   1522 E8                 4186 	.byte	-24
   1523 A6                 4187 	.byte	-90
   1524 FF                 4188 	.byte	-1
   1525 36                 4189 	.byte	54
   1526 45                 4190 	.byte	69
   1527 00                 4191 	.byte	0
   1528 E8                 4192 	.byte	-24
   1529 12                 4193 	.byte	18
   152A FF                 4194 	.byte	-1
   152B E2                 4195 	.byte	-30
   152C 15                 4196 	.byte	21
   152D FF                 4197 	.byte	-1
   152E 18                 4198 	.byte	24
   152F EE                 4199 	.byte	-18
   1530 FF                 4200 	.byte	-1
   1531 1E                 4201 	.byte	30
   1532 EB                 4202 	.byte	-21
   1533 FF                 4203 	.byte	-1
   1534 E8                 4204 	.byte	-24
   1535 12                 4205 	.byte	18
   1536 01                 4206 	.byte	1
                           4207 	.globl _height2FallingBack3
   1537                    4208 _height2FallingBack3:
   1537 00                 4209 	.byte	0
   1538 12                 4210 	.byte	18
   1539 00                 4211 	.byte	0
   153A FF                 4212 	.byte	-1
   153B 09                 4213 	.byte	9
   153C 2A                 4214 	.byte	42
   153D FF                 4215 	.byte	-1
   153E 06                 4216 	.byte	6
   153F EE                 4217 	.byte	-18
   1540 FF                 4218 	.byte	-1
   1541 F7                 4219 	.byte	-9
   1542 D9                 4220 	.byte	-39
   1543 FF                 4221 	.byte	-1
   1544 FA                 4222 	.byte	-6
   1545 0F                 4223 	.byte	15
   1546 FF                 4224 	.byte	-1
   1547 5A                 4225 	.byte	90
   1548 F4                 4226 	.byte	-12
   1549 00                 4227 	.byte	0
   154A AF                 4228 	.byte	-81
   154B 36                 4229 	.byte	54
   154C FF                 4230 	.byte	-1
   154D 5A                 4231 	.byte	90
   154E F1                 4232 	.byte	-15
   154F 00                 4233 	.byte	0
   1550 AC                 4234 	.byte	-84
   1551 FD                 4235 	.byte	-3
   1552 FF                 4236 	.byte	-1
   1553 5A                 4237 	.byte	90
   1554 F1                 4238 	.byte	-15
   1555 00                 4239 	.byte	0
   1556 9D                 4240 	.byte	-99
   1557 E8                 4241 	.byte	-24
   1558 FF                 4242 	.byte	-1
   1559 5A                 4243 	.byte	90
   155A F1                 4244 	.byte	-15
   155B 00                 4245 	.byte	0
   155C FA                 4246 	.byte	-6
   155D 12                 4247 	.byte	18
   155E FF                 4248 	.byte	-1
   155F 09                 4249 	.byte	9
   1560 27                 4250 	.byte	39
   1561 FF                 4251 	.byte	-1
   1562 06                 4252 	.byte	6
   1563 EE                 4253 	.byte	-18
   1564 FF                 4254 	.byte	-1
   1565 F7                 4255 	.byte	-9
   1566 D9                 4256 	.byte	-39
   1567 FF                 4257 	.byte	-1
   1568 FA                 4258 	.byte	-6
   1569 12                 4259 	.byte	18
   156A 01                 4260 	.byte	1
                           4261 	.globl _height2RisingFront3
   156B                    4262 _height2RisingFront3:
   156B 00                 4263 	.byte	0
   156C 15                 4264 	.byte	21
   156D 09                 4265 	.byte	9
   156E FF                 4266 	.byte	-1
   156F 09                 4267 	.byte	9
   1570 2A                 4268 	.byte	42
   1571 FF                 4269 	.byte	-1
   1572 EB                 4270 	.byte	-21
   1573 F7                 4271 	.byte	-9
   1574 FF                 4272 	.byte	-1
   1575 F7                 4273 	.byte	-9
   1576 D6                 4274 	.byte	-42
   1577 FF                 4275 	.byte	-1
   1578 15                 4276 	.byte	21
   1579 09                 4277 	.byte	9
   157A FF                 4278 	.byte	-1
   157B 51                 4279 	.byte	81
   157C E5                 4280 	.byte	-27
   157D 00                 4281 	.byte	0
   157E B8                 4282 	.byte	-72
   157F 45                 4283 	.byte	69
   1580 FF                 4284 	.byte	-1
   1581 51                 4285 	.byte	81
   1582 E2                 4286 	.byte	-30
   1583 00                 4287 	.byte	0
   1584 9A                 4288 	.byte	-102
   1585 15                 4289 	.byte	21
   1586 FF                 4290 	.byte	-1
   1587 51                 4291 	.byte	81
   1588 E2                 4292 	.byte	-30
   1589 00                 4293 	.byte	0
   158A A6                 4294 	.byte	-90
   158B F4                 4295 	.byte	-12
   158C FF                 4296 	.byte	-1
   158D 51                 4297 	.byte	81
   158E E5                 4298 	.byte	-27
   158F 00                 4299 	.byte	0
   1590 15                 4300 	.byte	21
   1591 09                 4301 	.byte	9
   1592 FF                 4302 	.byte	-1
   1593 09                 4303 	.byte	9
   1594 27                 4304 	.byte	39
   1595 FF                 4305 	.byte	-1
   1596 EB                 4306 	.byte	-21
   1597 F7                 4307 	.byte	-9
   1598 FF                 4308 	.byte	-1
   1599 F7                 4309 	.byte	-9
   159A D9                 4310 	.byte	-39
   159B FF                 4311 	.byte	-1
   159C 15                 4312 	.byte	21
   159D 09                 4313 	.byte	9
   159E 01                 4314 	.byte	1
                           4315 	.globl _height2FallingFront3
   159F                    4316 _height2FallingFront3:
   159F FF                 4317 	.byte	-1
   15A0 09                 4318 	.byte	9
   15A1 2A                 4319 	.byte	42
   15A2 FF                 4320 	.byte	-1
   15A3 24                 4321 	.byte	36
   15A4 EE                 4322 	.byte	-18
   15A5 FF                 4323 	.byte	-1
   15A6 F7                 4324 	.byte	-9
   15A7 D9                 4325 	.byte	-39
   15A8 FF                 4326 	.byte	-1
   15A9 DC                 4327 	.byte	-36
   15AA 0F                 4328 	.byte	15
   15AB FF                 4329 	.byte	-1
   15AC 36                 4330 	.byte	54
   15AD 0F                 4331 	.byte	15
   15AE 00                 4332 	.byte	0
   15AF D3                 4333 	.byte	-45
   15B0 1B                 4334 	.byte	27
   15B1 FF                 4335 	.byte	-1
   15B2 36                 4336 	.byte	54
   15B3 0F                 4337 	.byte	15
   15B4 00                 4338 	.byte	0
   15B5 EE                 4339 	.byte	-18
   15B6 DF                 4340 	.byte	-33
   15B7 FF                 4341 	.byte	-1
   15B8 36                 4342 	.byte	54
   15B9 0F                 4343 	.byte	15
   15BA 00                 4344 	.byte	0
   15BB C1                 4345 	.byte	-63
   15BC CA                 4346 	.byte	-54
   15BD FF                 4347 	.byte	-1
   15BE 36                 4348 	.byte	54
   15BF 0F                 4349 	.byte	15
   15C0 00                 4350 	.byte	0
   15C1 DC                 4351 	.byte	-36
   15C2 0F                 4352 	.byte	15
   15C3 FF                 4353 	.byte	-1
   15C4 09                 4354 	.byte	9
   15C5 2A                 4355 	.byte	42
   15C6 FF                 4356 	.byte	-1
   15C7 24                 4357 	.byte	36
   15C8 EE                 4358 	.byte	-18
   15C9 FF                 4359 	.byte	-1
   15CA F7                 4360 	.byte	-9
   15CB D9                 4361 	.byte	-39
   15CC FF                 4362 	.byte	-1
   15CD DC                 4363 	.byte	-36
   15CE 0F                 4364 	.byte	15
   15CF 01                 4365 	.byte	1
                           4366 	.globl _height2RisingBack3
   15D0                    4367 _height2RisingBack3:
   15D0 00                 4368 	.byte	0
   15D1 30                 4369 	.byte	48
   15D2 DF                 4370 	.byte	-33
   15D3 FF                 4371 	.byte	-1
   15D4 09                 4372 	.byte	9
   15D5 27                 4373 	.byte	39
   15D6 FF                 4374 	.byte	-1
   15D7 2D                 4375 	.byte	45
   15D8 FA                 4376 	.byte	-6
   15D9 FF                 4377 	.byte	-1
   15DA F7                 4378 	.byte	-9
   15DB D6                 4379 	.byte	-42
   15DC FF                 4380 	.byte	-1
   15DD D3                 4381 	.byte	-45
   15DE 09                 4382 	.byte	9
   15DF FF                 4383 	.byte	-1
   15E0 FD                 4384 	.byte	-3
   15E1 1E                 4385 	.byte	30
   15E2 00                 4386 	.byte	0
   15E3 0C                 4387 	.byte	12
   15E4 09                 4388 	.byte	9
   15E5 FF                 4389 	.byte	-1
   15E6 FD                 4390 	.byte	-3
   15E7 1E                 4391 	.byte	30
   15E8 00                 4392 	.byte	0
   15E9 30                 4393 	.byte	48
   15EA DC                 4394 	.byte	-36
   15EB FF                 4395 	.byte	-1
   15EC FD                 4396 	.byte	-3
   15ED 1B                 4397 	.byte	27
   15EE 00                 4398 	.byte	0
   15EF FA                 4399 	.byte	-6
   15F0 BB                 4400 	.byte	-69
   15F1 FF                 4401 	.byte	-1
   15F2 FD                 4402 	.byte	-3
   15F3 1E                 4403 	.byte	30
   15F4 00                 4404 	.byte	0
   15F5 D3                 4405 	.byte	-45
   15F6 09                 4406 	.byte	9
   15F7 FF                 4407 	.byte	-1
   15F8 09                 4408 	.byte	9
   15F9 27                 4409 	.byte	39
   15FA FF                 4410 	.byte	-1
   15FB 2D                 4411 	.byte	45
   15FC F7                 4412 	.byte	-9
   15FD FF                 4413 	.byte	-1
   15FE F7                 4414 	.byte	-9
   15FF D9                 4415 	.byte	-39
   1600 FF                 4416 	.byte	-1
   1601 D3                 4417 	.byte	-45
   1602 09                 4418 	.byte	9
   1603 01                 4419 	.byte	1
                           4420 	.globl _depth2RollingLeft3
   1604                    4421 _depth2RollingLeft3:
   1604 FF                 4422 	.byte	-1
   1605 18                 4423 	.byte	24
   1606 27                 4424 	.byte	39
   1607 FF                 4425 	.byte	-1
   1608 30                 4426 	.byte	48
   1609 DC                 4427 	.byte	-36
   160A FF                 4428 	.byte	-1
   160B E8                 4429 	.byte	-24
   160C DC                 4430 	.byte	-36
   160D FF                 4431 	.byte	-1
   160E D0                 4432 	.byte	-48
   160F 21                 4433 	.byte	33
   1610 FF                 4434 	.byte	-1
   1611 21                 4435 	.byte	33
   1612 F4                 4436 	.byte	-12
   1613 00                 4437 	.byte	0
   1614 F7                 4438 	.byte	-9
   1615 33                 4439 	.byte	51
   1616 FF                 4440 	.byte	-1
   1617 21                 4441 	.byte	33
   1618 F1                 4442 	.byte	-15
   1619 00                 4443 	.byte	0
   161A 0F                 4444 	.byte	15
   161B EB                 4445 	.byte	-21
   161C FF                 4446 	.byte	-1
   161D 21                 4447 	.byte	33
   161E F4                 4448 	.byte	-12
   161F 00                 4449 	.byte	0
   1620 C7                 4450 	.byte	-57
   1621 E8                 4451 	.byte	-24
   1622 FF                 4452 	.byte	-1
   1623 21                 4453 	.byte	33
   1624 F1                 4454 	.byte	-15
   1625 00                 4455 	.byte	0
   1626 D0                 4456 	.byte	-48
   1627 24                 4457 	.byte	36
   1628 FF                 4458 	.byte	-1
   1629 18                 4459 	.byte	24
   162A 24                 4460 	.byte	36
   162B FF                 4461 	.byte	-1
   162C 30                 4462 	.byte	48
   162D DF                 4463 	.byte	-33
   162E FF                 4464 	.byte	-1
   162F E8                 4465 	.byte	-24
   1630 D9                 4466 	.byte	-39
   1631 FF                 4467 	.byte	-1
   1632 D0                 4468 	.byte	-48
   1633 24                 4469 	.byte	36
   1634 01                 4470 	.byte	1
                           4471 	.globl _depth2RollingRight3
   1635                    4472 _depth2RollingRight3:
   1635 00                 4473 	.byte	0
   1636 0F                 4474 	.byte	15
   1637 03                 4475 	.byte	3
   1638 FF                 4476 	.byte	-1
   1639 FA                 4477 	.byte	-6
   163A 27                 4478 	.byte	39
   163B FF                 4479 	.byte	-1
   163C 30                 4480 	.byte	48
   163D DC                 4481 	.byte	-36
   163E FF                 4482 	.byte	-1
   163F 06                 4483 	.byte	6
   1640 DC                 4484 	.byte	-36
   1641 FF                 4485 	.byte	-1
   1642 D0                 4486 	.byte	-48
   1643 21                 4487 	.byte	33
   1644 FF                 4488 	.byte	-1
   1645 27                 4489 	.byte	39
   1646 0F                 4490 	.byte	15
   1647 00                 4491 	.byte	0
   1648 D3                 4492 	.byte	-45
   1649 18                 4493 	.byte	24
   164A FF                 4494 	.byte	-1
   164B 27                 4495 	.byte	39
   164C 0F                 4496 	.byte	15
   164D 00                 4497 	.byte	0
   164E 09                 4498 	.byte	9
   164F CD                 4499 	.byte	-51
   1650 FF                 4500 	.byte	-1
   1651 27                 4501 	.byte	39
   1652 0F                 4502 	.byte	15
   1653 00                 4503 	.byte	0
   1654 DF                 4504 	.byte	-33
   1655 CD                 4505 	.byte	-51
   1656 FF                 4506 	.byte	-1
   1657 27                 4507 	.byte	39
   1658 0F                 4508 	.byte	15
   1659 00                 4509 	.byte	0
   165A D0                 4510 	.byte	-48
   165B 21                 4511 	.byte	33
   165C FF                 4512 	.byte	-1
   165D FA                 4513 	.byte	-6
   165E 27                 4514 	.byte	39
   165F FF                 4515 	.byte	-1
   1660 30                 4516 	.byte	48
   1661 DC                 4517 	.byte	-36
   1662 FF                 4518 	.byte	-1
   1663 06                 4519 	.byte	6
   1664 DC                 4520 	.byte	-36
   1665 FF                 4521 	.byte	-1
   1666 D0                 4522 	.byte	-48
   1667 21                 4523 	.byte	33
   1668 01                 4524 	.byte	1
                           4525 	.globl _width2RollingFront3
   1669                    4526 _width2RollingFront3:
   1669 FF                 4527 	.byte	-1
   166A 12                 4528 	.byte	18
   166B 54                 4529 	.byte	84
   166C FF                 4530 	.byte	-1
   166D 24                 4531 	.byte	36
   166E EE                 4532 	.byte	-18
   166F FF                 4533 	.byte	-1
   1670 EE                 4534 	.byte	-18
   1671 AF                 4535 	.byte	-81
   1672 FF                 4536 	.byte	-1
   1673 DC                 4537 	.byte	-36
   1674 0F                 4538 	.byte	15
   1675 FF                 4539 	.byte	-1
   1676 1B                 4540 	.byte	27
   1677 06                 4541 	.byte	6
   1678 00                 4542 	.byte	0
   1679 F7                 4543 	.byte	-9
   167A 4E                 4544 	.byte	78
   167B FF                 4545 	.byte	-1
   167C 1B                 4546 	.byte	27
   167D 06                 4547 	.byte	6
   167E 00                 4548 	.byte	0
   167F 09                 4549 	.byte	9
   1680 E8                 4550 	.byte	-24
   1681 FF                 4551 	.byte	-1
   1682 1B                 4552 	.byte	27
   1683 09                 4553 	.byte	9
   1684 00                 4554 	.byte	0
   1685 D3                 4555 	.byte	-45
   1686 A6                 4556 	.byte	-90
   1687 FF                 4557 	.byte	-1
   1688 1B                 4558 	.byte	27
   1689 09                 4559 	.byte	9
   168A 00                 4560 	.byte	0
   168B DC                 4561 	.byte	-36
   168C 0C                 4562 	.byte	12
   168D FF                 4563 	.byte	-1
   168E 12                 4564 	.byte	18
   168F 54                 4565 	.byte	84
   1690 FF                 4566 	.byte	-1
   1691 24                 4567 	.byte	36
   1692 F1                 4568 	.byte	-15
   1693 FF                 4569 	.byte	-1
   1694 EE                 4570 	.byte	-18
   1695 AF                 4571 	.byte	-81
   1696 FF                 4572 	.byte	-1
   1697 DC                 4573 	.byte	-36
   1698 0C                 4574 	.byte	12
   1699 01                 4575 	.byte	1
                           4576 	.globl _width2RollingBack3
   169A                    4577 _width2RollingBack3:
   169A 00                 4578 	.byte	0
   169B 12                 4579 	.byte	18
   169C 00                 4580 	.byte	0
   169D FF                 4581 	.byte	-1
   169E 12                 4582 	.byte	18
   169F 54                 4583 	.byte	84
   16A0 FF                 4584 	.byte	-1
   16A1 06                 4585 	.byte	6
   16A2 EE                 4586 	.byte	-18
   16A3 FF                 4587 	.byte	-1
   16A4 EE                 4588 	.byte	-18
   16A5 AF                 4589 	.byte	-81
   16A6 FF                 4590 	.byte	-1
   16A7 FA                 4591 	.byte	-6
   16A8 0F                 4592 	.byte	15
   16A9 FF                 4593 	.byte	-1
   16AA 2D                 4594 	.byte	45
   16AB FA                 4595 	.byte	-6
   16AC 00                 4596 	.byte	0
   16AD E5                 4597 	.byte	-27
   16AE 5A                 4598 	.byte	90
   16AF FF                 4599 	.byte	-1
   16B0 2D                 4600 	.byte	45
   16B1 F7                 4601 	.byte	-9
   16B2 00                 4602 	.byte	0
   16B3 D9                 4603 	.byte	-39
   16B4 F7                 4604 	.byte	-9
   16B5 FF                 4605 	.byte	-1
   16B6 2D                 4606 	.byte	45
   16B7 FA                 4607 	.byte	-6
   16B8 00                 4608 	.byte	0
   16B9 C1                 4609 	.byte	-63
   16BA B5                 4610 	.byte	-75
   16BB FF                 4611 	.byte	-1
   16BC 2D                 4612 	.byte	45
   16BD FA                 4613 	.byte	-6
   16BE 00                 4614 	.byte	0
   16BF FA                 4615 	.byte	-6
   16C0 0F                 4616 	.byte	15
   16C1 FF                 4617 	.byte	-1
   16C2 12                 4618 	.byte	18
   16C3 51                 4619 	.byte	81
   16C4 FF                 4620 	.byte	-1
   16C5 06                 4621 	.byte	6
   16C6 F1                 4622 	.byte	-15
   16C7 FF                 4623 	.byte	-1
   16C8 EE                 4624 	.byte	-18
   16C9 AF                 4625 	.byte	-81
   16CA FF                 4626 	.byte	-1
   16CB FA                 4627 	.byte	-6
   16CC 0F                 4628 	.byte	15
   16CD 01                 4629 	.byte	1
                           4630 	.globl _height1FallingLeft3
   16CE                    4631 _height1FallingLeft3:
   16CE FF                 4632 	.byte	-1
   16CF 18                 4633 	.byte	24
   16D0 27                 4634 	.byte	39
   16D1 FF                 4635 	.byte	-1
   16D2 18                 4636 	.byte	24
   16D3 EE                 4637 	.byte	-18
   16D4 FF                 4638 	.byte	-1
   16D5 E8                 4639 	.byte	-24
   16D6 DC                 4640 	.byte	-36
   16D7 FF                 4641 	.byte	-1
   16D8 E8                 4642 	.byte	-24
   16D9 0F                 4643 	.byte	15
   16DA FF                 4644 	.byte	-1
   16DB 21                 4645 	.byte	33
   16DC F4                 4646 	.byte	-12
   16DD 00                 4647 	.byte	0
   16DE F7                 4648 	.byte	-9
   16DF 33                 4649 	.byte	51
   16E0 FF                 4650 	.byte	-1
   16E1 21                 4651 	.byte	33
   16E2 F1                 4652 	.byte	-15
   16E3 00                 4653 	.byte	0
   16E4 F7                 4654 	.byte	-9
   16E5 FD                 4655 	.byte	-3
   16E6 FF                 4656 	.byte	-1
   16E7 21                 4657 	.byte	33
   16E8 F1                 4658 	.byte	-15
   16E9 00                 4659 	.byte	0
   16EA C7                 4660 	.byte	-57
   16EB EB                 4661 	.byte	-21
   16EC FF                 4662 	.byte	-1
   16ED 21                 4663 	.byte	33
   16EE F1                 4664 	.byte	-15
   16EF 00                 4665 	.byte	0
   16F0 E8                 4666 	.byte	-24
   16F1 12                 4667 	.byte	18
   16F2 FF                 4668 	.byte	-1
   16F3 18                 4669 	.byte	24
   16F4 24                 4670 	.byte	36
   16F5 FF                 4671 	.byte	-1
   16F6 18                 4672 	.byte	24
   16F7 EE                 4673 	.byte	-18
   16F8 FF                 4674 	.byte	-1
   16F9 E8                 4675 	.byte	-24
   16FA DC                 4676 	.byte	-36
   16FB FF                 4677 	.byte	-1
   16FC E8                 4678 	.byte	-24
   16FD 12                 4679 	.byte	18
   16FE 01                 4680 	.byte	1
                           4681 	.globl _height1FallingRight3
   16FF                    4682 _height1FallingRight3:
   16FF 00                 4683 	.byte	0
   1700 0F                 4684 	.byte	15
   1701 03                 4685 	.byte	3
   1702 FF                 4686 	.byte	-1
   1703 FA                 4687 	.byte	-6
   1704 27                 4688 	.byte	39
   1705 FF                 4689 	.byte	-1
   1706 18                 4690 	.byte	24
   1707 EE                 4691 	.byte	-18
   1708 FF                 4692 	.byte	-1
   1709 06                 4693 	.byte	6
   170A DC                 4694 	.byte	-36
   170B FF                 4695 	.byte	-1
   170C E8                 4696 	.byte	-24
   170D 0F                 4697 	.byte	15
   170E FF                 4698 	.byte	-1
   170F 27                 4699 	.byte	39
   1710 0F                 4700 	.byte	15
   1711 00                 4701 	.byte	0
   1712 D3                 4702 	.byte	-45
   1713 18                 4703 	.byte	24
   1714 FF                 4704 	.byte	-1
   1715 27                 4705 	.byte	39
   1716 0F                 4706 	.byte	15
   1717 00                 4707 	.byte	0
   1718 F1                 4708 	.byte	-15
   1719 DF                 4709 	.byte	-33
   171A FF                 4710 	.byte	-1
   171B 27                 4711 	.byte	39
   171C 0F                 4712 	.byte	15
   171D 00                 4713 	.byte	0
   171E DF                 4714 	.byte	-33
   171F CD                 4715 	.byte	-51
   1720 FF                 4716 	.byte	-1
   1721 27                 4717 	.byte	39
   1722 0C                 4718 	.byte	12
   1723 00                 4719 	.byte	0
   1724 E8                 4720 	.byte	-24
   1725 12                 4721 	.byte	18
   1726 FF                 4722 	.byte	-1
   1727 FA                 4723 	.byte	-6
   1728 27                 4724 	.byte	39
   1729 FF                 4725 	.byte	-1
   172A 18                 4726 	.byte	24
   172B EE                 4727 	.byte	-18
   172C FF                 4728 	.byte	-1
   172D 06                 4729 	.byte	6
   172E D9                 4730 	.byte	-39
   172F FF                 4731 	.byte	-1
   1730 E8                 4732 	.byte	-24
   1731 12                 4733 	.byte	18
   1732 01                 4734 	.byte	1
                           4735 	.globl _height1FallingBack3
   1733                    4736 _height1FallingBack3:
   1733 00                 4737 	.byte	0
   1734 12                 4738 	.byte	18
   1735 00                 4739 	.byte	0
   1736 FF                 4740 	.byte	-1
   1737 09                 4741 	.byte	9
   1738 2A                 4742 	.byte	42
   1739 FF                 4743 	.byte	-1
   173A 06                 4744 	.byte	6
   173B EE                 4745 	.byte	-18
   173C FF                 4746 	.byte	-1
   173D F7                 4747 	.byte	-9
   173E D9                 4748 	.byte	-39
   173F FF                 4749 	.byte	-1
   1740 FA                 4750 	.byte	-6
   1741 0F                 4751 	.byte	15
   1742 FF                 4752 	.byte	-1
   1743 2D                 4753 	.byte	45
   1744 FA                 4754 	.byte	-6
   1745 00                 4755 	.byte	0
   1746 DC                 4756 	.byte	-36
   1747 30                 4757 	.byte	48
   1748 FF                 4758 	.byte	-1
   1749 2D                 4759 	.byte	45
   174A F7                 4760 	.byte	-9
   174B 00                 4761 	.byte	0
   174C D9                 4762 	.byte	-39
   174D F7                 4763 	.byte	-9
   174E FF                 4764 	.byte	-1
   174F 2D                 4765 	.byte	45
   1750 FA                 4766 	.byte	-6
   1751 00                 4767 	.byte	0
   1752 CA                 4768 	.byte	-54
   1753 DF                 4769 	.byte	-33
   1754 FF                 4770 	.byte	-1
   1755 2D                 4771 	.byte	45
   1756 FA                 4772 	.byte	-6
   1757 00                 4773 	.byte	0
   1758 FA                 4774 	.byte	-6
   1759 0F                 4775 	.byte	15
   175A FF                 4776 	.byte	-1
   175B 09                 4777 	.byte	9
   175C 27                 4778 	.byte	39
   175D FF                 4779 	.byte	-1
   175E 06                 4780 	.byte	6
   175F F1                 4781 	.byte	-15
   1760 FF                 4782 	.byte	-1
   1761 F7                 4783 	.byte	-9
   1762 D9                 4784 	.byte	-39
   1763 FF                 4785 	.byte	-1
   1764 FA                 4786 	.byte	-6
   1765 0F                 4787 	.byte	15
   1766 01                 4788 	.byte	1
                           4789 	.globl _height1FallingFront3
   1767                    4790 _height1FallingFront3:
   1767 FF                 4791 	.byte	-1
   1768 09                 4792 	.byte	9
   1769 2A                 4793 	.byte	42
   176A FF                 4794 	.byte	-1
   176B 24                 4795 	.byte	36
   176C EE                 4796 	.byte	-18
   176D FF                 4797 	.byte	-1
   176E F7                 4798 	.byte	-9
   176F D9                 4799 	.byte	-39
   1770 FF                 4800 	.byte	-1
   1771 DC                 4801 	.byte	-36
   1772 0F                 4802 	.byte	15
   1773 FF                 4803 	.byte	-1
   1774 1B                 4804 	.byte	27
   1775 06                 4805 	.byte	6
   1776 00                 4806 	.byte	0
   1777 EE                 4807 	.byte	-18
   1778 24                 4808 	.byte	36
   1779 FF                 4809 	.byte	-1
   177A 1B                 4810 	.byte	27
   177B 06                 4811 	.byte	6
   177C 00                 4812 	.byte	0
   177D 09                 4813 	.byte	9
   177E E8                 4814 	.byte	-24
   177F FF                 4815 	.byte	-1
   1780 1B                 4816 	.byte	27
   1781 09                 4817 	.byte	9
   1782 00                 4818 	.byte	0
   1783 DC                 4819 	.byte	-36
   1784 D0                 4820 	.byte	-48
   1785 FF                 4821 	.byte	-1
   1786 1B                 4822 	.byte	27
   1787 09                 4823 	.byte	9
   1788 00                 4824 	.byte	0
   1789 DC                 4825 	.byte	-36
   178A 0C                 4826 	.byte	12
   178B FF                 4827 	.byte	-1
   178C 09                 4828 	.byte	9
   178D 2A                 4829 	.byte	42
   178E FF                 4830 	.byte	-1
   178F 24                 4831 	.byte	36
   1790 F1                 4832 	.byte	-15
   1791 FF                 4833 	.byte	-1
   1792 F7                 4834 	.byte	-9
   1793 D9                 4835 	.byte	-39
   1794 FF                 4836 	.byte	-1
   1795 DC                 4837 	.byte	-36
   1796 0C                 4838 	.byte	12
   1797 01                 4839 	.byte	1
                           4840 	.globl _height2FallingLeft4
   1798                    4841 _height2FallingLeft4:
   1798 FF                 4842 	.byte	-1
   1799 1B                 4843 	.byte	27
   179A 24                 4844 	.byte	36
   179B FF                 4845 	.byte	-1
   179C 18                 4846 	.byte	24
   179D EE                 4847 	.byte	-18
   179E FF                 4848 	.byte	-1
   179F E5                 4849 	.byte	-27
   17A0 DF                 4850 	.byte	-33
   17A1 FF                 4851 	.byte	-1
   17A2 E8                 4852 	.byte	-24
   17A3 0F                 4853 	.byte	15
   17A4 FF                 4854 	.byte	-1
   17A5 3C                 4855 	.byte	60
   17A6 D9                 4856 	.byte	-39
   17A7 00                 4857 	.byte	0
   17A8 DF                 4858 	.byte	-33
   17A9 4B                 4859 	.byte	75
   17AA FF                 4860 	.byte	-1
   17AB 3C                 4861 	.byte	60
   17AC D9                 4862 	.byte	-39
   17AD 00                 4863 	.byte	0
   17AE DC                 4864 	.byte	-36
   17AF 15                 4865 	.byte	21
   17B0 FF                 4866 	.byte	-1
   17B1 3C                 4867 	.byte	60
   17B2 D9                 4868 	.byte	-39
   17B3 00                 4869 	.byte	0
   17B4 A9                 4870 	.byte	-87
   17B5 06                 4871 	.byte	6
   17B6 FF                 4872 	.byte	-1
   17B7 3C                 4873 	.byte	60
   17B8 D6                 4874 	.byte	-42
   17B9 00                 4875 	.byte	0
   17BA E8                 4876 	.byte	-24
   17BB 12                 4877 	.byte	18
   17BC FF                 4878 	.byte	-1
   17BD 1B                 4879 	.byte	27
   17BE 24                 4880 	.byte	36
   17BF FF                 4881 	.byte	-1
   17C0 18                 4882 	.byte	24
   17C1 EE                 4883 	.byte	-18
   17C2 FF                 4884 	.byte	-1
   17C3 E5                 4885 	.byte	-27
   17C4 DC                 4886 	.byte	-36
   17C5 FF                 4887 	.byte	-1
   17C6 E8                 4888 	.byte	-24
   17C7 12                 4889 	.byte	18
   17C8 01                 4890 	.byte	1
                           4891 	.globl _height2RisingRight4
   17C9                    4892 _height2RisingRight4:
   17C9 00                 4893 	.byte	0
   17CA 12                 4894 	.byte	18
   17CB 54                 4895 	.byte	84
   17CC FF                 4896 	.byte	-1
   17CD 24                 4897 	.byte	36
   17CE 1B                 4898 	.byte	27
   17CF FF                 4899 	.byte	-1
   17D0 18                 4900 	.byte	24
   17D1 EE                 4901 	.byte	-18
   17D2 FF                 4902 	.byte	-1
   17D3 DC                 4903 	.byte	-36
   17D4 E5                 4904 	.byte	-27
   17D5 FF                 4905 	.byte	-1
   17D6 E8                 4906 	.byte	-24
   17D7 12                 4907 	.byte	18
   17D8 FF                 4908 	.byte	-1
   17D9 21                 4909 	.byte	33
   17DA BE                 4910 	.byte	-66
   17DB 00                 4911 	.byte	0
   17DC 03                 4912 	.byte	3
   17DD 5D                 4913 	.byte	93
   17DE FF                 4914 	.byte	-1
   17DF 21                 4915 	.byte	33
   17E0 BB                 4916 	.byte	-69
   17E1 00                 4917 	.byte	0
   17E2 F7                 4918 	.byte	-9
   17E3 33                 4919 	.byte	51
   17E4 FF                 4920 	.byte	-1
   17E5 21                 4921 	.byte	33
   17E6 BB                 4922 	.byte	-69
   17E7 00                 4923 	.byte	0
   17E8 BB                 4924 	.byte	-69
   17E9 2A                 4925 	.byte	42
   17EA FF                 4926 	.byte	-1
   17EB 21                 4927 	.byte	33
   17EC BE                 4928 	.byte	-66
   17ED 00                 4929 	.byte	0
   17EE E8                 4930 	.byte	-24
   17EF 12                 4931 	.byte	18
   17F0 FF                 4932 	.byte	-1
   17F1 24                 4933 	.byte	36
   17F2 18                 4934 	.byte	24
   17F3 FF                 4935 	.byte	-1
   17F4 18                 4936 	.byte	24
   17F5 EE                 4937 	.byte	-18
   17F6 FF                 4938 	.byte	-1
   17F7 DC                 4939 	.byte	-36
   17F8 E8                 4940 	.byte	-24
   17F9 FF                 4941 	.byte	-1
   17FA E8                 4942 	.byte	-24
   17FB 12                 4943 	.byte	18
   17FC 01                 4944 	.byte	1
                           4945 	.globl _height2FallingRight4
   17FD                    4946 _height2FallingRight4:
   17FD 00                 4947 	.byte	0
   17FE 15                 4948 	.byte	21
   17FF 06                 4949 	.byte	6
   1800 FF                 4950 	.byte	-1
   1801 F4                 4951 	.byte	-12
   1802 24                 4952 	.byte	36
   1803 FF                 4953 	.byte	-1
   1804 18                 4954 	.byte	24
   1805 EE                 4955 	.byte	-18
   1806 FF                 4956 	.byte	-1
   1807 0C                 4957 	.byte	12
   1808 DF                 4958 	.byte	-33
   1809 FF                 4959 	.byte	-1
   180A E8                 4960 	.byte	-24
   180B 0F                 4961 	.byte	15
   180C FF                 4962 	.byte	-1
   180D 4B                 4963 	.byte	75
   180E 2A                 4964 	.byte	42
   180F 00                 4965 	.byte	0
   1810 A9                 4966 	.byte	-87
   1811 FA                 4967 	.byte	-6
   1812 FF                 4968 	.byte	-1
   1813 4E                 4969 	.byte	78
   1814 2A                 4970 	.byte	42
   1815 00                 4971 	.byte	0
   1816 CA                 4972 	.byte	-54
   1817 C4                 4973 	.byte	-60
   1818 FF                 4974 	.byte	-1
   1819 4E                 4975 	.byte	78
   181A 2A                 4976 	.byte	42
   181B 00                 4977 	.byte	0
   181C BE                 4978 	.byte	-66
   181D B5                 4979 	.byte	-75
   181E FF                 4980 	.byte	-1
   181F 4B                 4981 	.byte	75
   1820 27                 4982 	.byte	39
   1821 00                 4983 	.byte	0
   1822 E8                 4984 	.byte	-24
   1823 12                 4985 	.byte	18
   1824 FF                 4986 	.byte	-1
   1825 F7                 4987 	.byte	-9
   1826 24                 4988 	.byte	36
   1827 FF                 4989 	.byte	-1
   1828 18                 4990 	.byte	24
   1829 EE                 4991 	.byte	-18
   182A FF                 4992 	.byte	-1
   182B 09                 4993 	.byte	9
   182C DC                 4994 	.byte	-36
   182D FF                 4995 	.byte	-1
   182E E8                 4996 	.byte	-24
   182F 12                 4997 	.byte	18
   1830 01                 4998 	.byte	1
                           4999 	.globl _height2RisingLeft4
   1831                    5000 _height2RisingLeft4:
   1831 00                 5001 	.byte	0
   1832 18                 5002 	.byte	24
   1833 E8                 5003 	.byte	-24
   1834 FF                 5004 	.byte	-1
   1835 E8                 5005 	.byte	-24
   1836 18                 5006 	.byte	24
   1837 FF                 5007 	.byte	-1
   1838 18                 5008 	.byte	24
   1839 F1                 5009 	.byte	-15
   183A FF                 5010 	.byte	-1
   183B 18                 5011 	.byte	24
   183C E5                 5012 	.byte	-27
   183D FF                 5013 	.byte	-1
   183E E8                 5014 	.byte	-24
   183F 12                 5015 	.byte	18
   1840 FF                 5016 	.byte	-1
   1841 3F                 5017 	.byte	63
   1842 42                 5018 	.byte	66
   1843 00                 5019 	.byte	0
   1844 A9                 5020 	.byte	-87
   1845 D6                 5021 	.byte	-42
   1846 FF                 5022 	.byte	-1
   1847 3F                 5023 	.byte	63
   1848 42                 5024 	.byte	66
   1849 00                 5025 	.byte	0
   184A D9                 5026 	.byte	-39
   184B AF                 5027 	.byte	-81
   184C FF                 5028 	.byte	-1
   184D 3F                 5029 	.byte	63
   184E 3F                 5030 	.byte	63
   184F 00                 5031 	.byte	0
   1850 D9                 5032 	.byte	-39
   1851 A6                 5033 	.byte	-90
   1852 FF                 5034 	.byte	-1
   1853 3F                 5035 	.byte	63
   1854 42                 5036 	.byte	66
   1855 00                 5037 	.byte	0
   1856 E8                 5038 	.byte	-24
   1857 12                 5039 	.byte	18
   1858 FF                 5040 	.byte	-1
   1859 E8                 5041 	.byte	-24
   185A 18                 5042 	.byte	24
   185B FF                 5043 	.byte	-1
   185C 18                 5044 	.byte	24
   185D EE                 5045 	.byte	-18
   185E FF                 5046 	.byte	-1
   185F 18                 5047 	.byte	24
   1860 E8                 5048 	.byte	-24
   1861 FF                 5049 	.byte	-1
   1862 E8                 5050 	.byte	-24
   1863 12                 5051 	.byte	18
   1864 01                 5052 	.byte	1
                           5053 	.globl _height2FallingBack4
   1865                    5054 _height2FallingBack4:
   1865 00                 5055 	.byte	0
   1866 18                 5056 	.byte	24
   1867 00                 5057 	.byte	0
   1868 FF                 5058 	.byte	-1
   1869 09                 5059 	.byte	9
   186A 27                 5060 	.byte	39
   186B FF                 5061 	.byte	-1
   186C 00                 5062 	.byte	0
   186D F1                 5063 	.byte	-15
   186E FF                 5064 	.byte	-1
   186F F7                 5065 	.byte	-9
   1870 D9                 5066 	.byte	-39
   1871 FF                 5067 	.byte	-1
   1872 00                 5068 	.byte	0
   1873 0F                 5069 	.byte	15
   1874 FF                 5070 	.byte	-1
   1875 5A                 5071 	.byte	90
   1876 EE                 5072 	.byte	-18
   1877 00                 5073 	.byte	0
   1878 AF                 5074 	.byte	-81
   1879 39                 5075 	.byte	57
   187A FF                 5076 	.byte	-1
   187B 5A                 5077 	.byte	90
   187C EE                 5078 	.byte	-18
   187D 00                 5079 	.byte	0
   187E A6                 5080 	.byte	-90
   187F 03                 5081 	.byte	3
   1880 FF                 5082 	.byte	-1
   1881 5D                 5083 	.byte	93
   1882 EE                 5084 	.byte	-18
   1883 00                 5085 	.byte	0
   1884 9A                 5086 	.byte	-102
   1885 EB                 5087 	.byte	-21
   1886 FF                 5088 	.byte	-1
   1887 5D                 5089 	.byte	93
   1888 EE                 5090 	.byte	-18
   1889 00                 5091 	.byte	0
   188A FD                 5092 	.byte	-3
   188B 0F                 5093 	.byte	15
   188C FF                 5094 	.byte	-1
   188D 09                 5095 	.byte	9
   188E 27                 5096 	.byte	39
   188F FF                 5097 	.byte	-1
   1890 03                 5098 	.byte	3
   1891 F1                 5099 	.byte	-15
   1892 FF                 5100 	.byte	-1
   1893 F7                 5101 	.byte	-9
   1894 D9                 5102 	.byte	-39
   1895 FF                 5103 	.byte	-1
   1896 FD                 5104 	.byte	-3
   1897 0F                 5105 	.byte	15
   1898 01                 5106 	.byte	1
                           5107 	.globl _height2RisingFront4
   1899                    5108 _height2RisingFront4:
   1899 00                 5109 	.byte	0
   189A 0F                 5110 	.byte	15
   189B 0C                 5111 	.byte	12
   189C FF                 5112 	.byte	-1
   189D 09                 5113 	.byte	9
   189E 2A                 5114 	.byte	42
   189F FF                 5115 	.byte	-1
   18A0 F1                 5116 	.byte	-15
   18A1 F4                 5117 	.byte	-12
   18A2 FF                 5118 	.byte	-1
   18A3 F7                 5119 	.byte	-9
   18A4 D6                 5120 	.byte	-42
   18A5 FF                 5121 	.byte	-1
   18A6 0F                 5122 	.byte	15
   18A7 0C                 5123 	.byte	12
   18A8 FF                 5124 	.byte	-1
   18A9 57                 5125 	.byte	87
   18AA E5                 5126 	.byte	-27
   18AB 00                 5127 	.byte	0
   18AC B2                 5128 	.byte	-78
   18AD 45                 5129 	.byte	69
   18AE FF                 5130 	.byte	-1
   18AF 57                 5131 	.byte	87
   18B0 E2                 5132 	.byte	-30
   18B1 00                 5133 	.byte	0
   18B2 9A                 5134 	.byte	-102
   18B3 12                 5135 	.byte	18
   18B4 FF                 5136 	.byte	-1
   18B5 57                 5137 	.byte	87
   18B6 E2                 5138 	.byte	-30
   18B7 00                 5139 	.byte	0
   18B8 A0                 5140 	.byte	-96
   18B9 F4                 5141 	.byte	-12
   18BA FF                 5142 	.byte	-1
   18BB 57                 5143 	.byte	87
   18BC E5                 5144 	.byte	-27
   18BD 00                 5145 	.byte	0
   18BE 0F                 5146 	.byte	15
   18BF 0C                 5147 	.byte	12
   18C0 FF                 5148 	.byte	-1
   18C1 09                 5149 	.byte	9
   18C2 27                 5150 	.byte	39
   18C3 FF                 5151 	.byte	-1
   18C4 F1                 5152 	.byte	-15
   18C5 F4                 5153 	.byte	-12
   18C6 FF                 5154 	.byte	-1
   18C7 F7                 5155 	.byte	-9
   18C8 D9                 5156 	.byte	-39
   18C9 FF                 5157 	.byte	-1
   18CA 0F                 5158 	.byte	15
   18CB 0C                 5159 	.byte	12
   18CC 01                 5160 	.byte	1
                           5161 	.globl _height2FallingFront4
   18CD                    5162 _height2FallingFront4:
   18CD FF                 5163 	.byte	-1
   18CE 09                 5164 	.byte	9
   18CF 2A                 5165 	.byte	42
   18D0 FF                 5166 	.byte	-1
   18D1 27                 5167 	.byte	39
   18D2 F1                 5168 	.byte	-15
   18D3 FF                 5169 	.byte	-1
   18D4 F7                 5170 	.byte	-9
   18D5 D9                 5171 	.byte	-39
   18D6 FF                 5172 	.byte	-1
   18D7 D9                 5173 	.byte	-39
   18D8 0C                 5174 	.byte	12
   18D9 FF                 5175 	.byte	-1
   18DA 2D                 5176 	.byte	45
   18DB 12                 5177 	.byte	18
   18DC 00                 5178 	.byte	0
   18DD DC                 5179 	.byte	-36
   18DE 18                 5180 	.byte	24
   18DF FF                 5181 	.byte	-1
   18E0 2D                 5182 	.byte	45
   18E1 12                 5183 	.byte	18
   18E2 00                 5184 	.byte	0
   18E3 FA                 5185 	.byte	-6
   18E4 DF                 5186 	.byte	-33
   18E5 FF                 5187 	.byte	-1
   18E6 2D                 5188 	.byte	45
   18E7 12                 5189 	.byte	18
   18E8 00                 5190 	.byte	0
   18E9 CA                 5191 	.byte	-54
   18EA C7                 5192 	.byte	-57
   18EB FF                 5193 	.byte	-1
   18EC 2D                 5194 	.byte	45
   18ED 0F                 5195 	.byte	15
   18EE 00                 5196 	.byte	0
   18EF D9                 5197 	.byte	-39
   18F0 0F                 5198 	.byte	15
   18F1 FF                 5199 	.byte	-1
   18F2 09                 5200 	.byte	9
   18F3 2A                 5201 	.byte	42
   18F4 FF                 5202 	.byte	-1
   18F5 27                 5203 	.byte	39
   18F6 F1                 5204 	.byte	-15
   18F7 FF                 5205 	.byte	-1
   18F8 F7                 5206 	.byte	-9
   18F9 D6                 5207 	.byte	-42
   18FA FF                 5208 	.byte	-1
   18FB D9                 5209 	.byte	-39
   18FC 0F                 5210 	.byte	15
   18FD 01                 5211 	.byte	1
                           5212 	.globl _height2RisingBack4
   18FE                    5213 _height2RisingBack4:
   18FE 00                 5214 	.byte	0
   18FF 30                 5215 	.byte	48
   1900 DF                 5216 	.byte	-33
   1901 FF                 5217 	.byte	-1
   1902 09                 5218 	.byte	9
   1903 27                 5219 	.byte	39
   1904 FF                 5220 	.byte	-1
   1905 2D                 5221 	.byte	45
   1906 F7                 5222 	.byte	-9
   1907 FF                 5223 	.byte	-1
   1908 F7                 5224 	.byte	-9
   1909 D6                 5225 	.byte	-42
   190A FF                 5226 	.byte	-1
   190B D3                 5227 	.byte	-45
   190C 0C                 5228 	.byte	12
   190D FF                 5229 	.byte	-1
   190E 09                 5230 	.byte	9
   190F 1E                 5231 	.byte	30
   1910 00                 5232 	.byte	0
   1911 00                 5233 	.byte	0
   1912 09                 5234 	.byte	9
   1913 FF                 5235 	.byte	-1
   1914 09                 5236 	.byte	9
   1915 1E                 5237 	.byte	30
   1916 00                 5238 	.byte	0
   1917 24                 5239 	.byte	36
   1918 D9                 5240 	.byte	-39
   1919 FF                 5241 	.byte	-1
   191A 09                 5242 	.byte	9
   191B 1B                 5243 	.byte	27
   191C 00                 5244 	.byte	0
   191D EE                 5245 	.byte	-18
   191E BB                 5246 	.byte	-69
   191F FF                 5247 	.byte	-1
   1920 09                 5248 	.byte	9
   1921 1E                 5249 	.byte	30
   1922 00                 5250 	.byte	0
   1923 D3                 5251 	.byte	-45
   1924 0C                 5252 	.byte	12
   1925 FF                 5253 	.byte	-1
   1926 09                 5254 	.byte	9
   1927 27                 5255 	.byte	39
   1928 FF                 5256 	.byte	-1
   1929 2D                 5257 	.byte	45
   192A F4                 5258 	.byte	-12
   192B FF                 5259 	.byte	-1
   192C F7                 5260 	.byte	-9
   192D D9                 5261 	.byte	-39
   192E FF                 5262 	.byte	-1
   192F D3                 5263 	.byte	-45
   1930 0C                 5264 	.byte	12
   1931 01                 5265 	.byte	1
                           5266 	.globl _depth2RollingLeft4
   1932                    5267 _depth2RollingLeft4:
   1932 FF                 5268 	.byte	-1
   1933 1B                 5269 	.byte	27
   1934 24                 5270 	.byte	36
   1935 FF                 5271 	.byte	-1
   1936 30                 5272 	.byte	48
   1937 DC                 5273 	.byte	-36
   1938 FF                 5274 	.byte	-1
   1939 E5                 5275 	.byte	-27
   193A DF                 5276 	.byte	-33
   193B FF                 5277 	.byte	-1
   193C D0                 5278 	.byte	-48
   193D 21                 5279 	.byte	33
   193E FF                 5280 	.byte	-1
   193F 1E                 5281 	.byte	30
   1940 EE                 5282 	.byte	-18
   1941 00                 5283 	.byte	0
   1942 FD                 5284 	.byte	-3
   1943 36                 5285 	.byte	54
   1944 FF                 5286 	.byte	-1
   1945 1E                 5287 	.byte	30
   1946 EB                 5288 	.byte	-21
   1947 00                 5289 	.byte	0
   1948 12                 5290 	.byte	18
   1949 F1                 5291 	.byte	-15
   194A FF                 5292 	.byte	-1
   194B 1E                 5293 	.byte	30
   194C EE                 5294 	.byte	-18
   194D 00                 5295 	.byte	0
   194E C7                 5296 	.byte	-57
   194F F1                 5297 	.byte	-15
   1950 FF                 5298 	.byte	-1
   1951 1E                 5299 	.byte	30
   1952 EB                 5300 	.byte	-21
   1953 00                 5301 	.byte	0
   1954 D0                 5302 	.byte	-48
   1955 24                 5303 	.byte	36
   1956 FF                 5304 	.byte	-1
   1957 1B                 5305 	.byte	27
   1958 21                 5306 	.byte	33
   1959 FF                 5307 	.byte	-1
   195A 30                 5308 	.byte	48
   195B DF                 5309 	.byte	-33
   195C FF                 5310 	.byte	-1
   195D E5                 5311 	.byte	-27
   195E DC                 5312 	.byte	-36
   195F FF                 5313 	.byte	-1
   1960 D0                 5314 	.byte	-48
   1961 24                 5315 	.byte	36
   1962 01                 5316 	.byte	1
                           5317 	.globl _depth2RollingRight4
   1963                    5318 _depth2RollingRight4:
   1963 00                 5319 	.byte	0
   1964 15                 5320 	.byte	21
   1965 06                 5321 	.byte	6
   1966 FF                 5322 	.byte	-1
   1967 F4                 5323 	.byte	-12
   1968 24                 5324 	.byte	36
   1969 FF                 5325 	.byte	-1
   196A 30                 5326 	.byte	48
   196B DC                 5327 	.byte	-36
   196C FF                 5328 	.byte	-1
   196D 0C                 5329 	.byte	12
   196E DF                 5330 	.byte	-33
   196F FF                 5331 	.byte	-1
   1970 D0                 5332 	.byte	-48
   1971 21                 5333 	.byte	33
   1972 FF                 5334 	.byte	-1
   1973 27                 5335 	.byte	39
   1974 15                 5336 	.byte	21
   1975 00                 5337 	.byte	0
   1976 CD                 5338 	.byte	-51
   1977 0F                 5339 	.byte	15
   1978 FF                 5340 	.byte	-1
   1979 27                 5341 	.byte	39
   197A 15                 5342 	.byte	21
   197B 00                 5343 	.byte	0
   197C 09                 5344 	.byte	9
   197D C7                 5345 	.byte	-57
   197E FF                 5346 	.byte	-1
   197F 27                 5347 	.byte	39
   1980 15                 5348 	.byte	21
   1981 00                 5349 	.byte	0
   1982 E5                 5350 	.byte	-27
   1983 CA                 5351 	.byte	-54
   1984 FF                 5352 	.byte	-1
   1985 27                 5353 	.byte	39
   1986 15                 5354 	.byte	21
   1987 00                 5355 	.byte	0
   1988 D0                 5356 	.byte	-48
   1989 21                 5357 	.byte	33
   198A FF                 5358 	.byte	-1
   198B F4                 5359 	.byte	-12
   198C 24                 5360 	.byte	36
   198D FF                 5361 	.byte	-1
   198E 30                 5362 	.byte	48
   198F DC                 5363 	.byte	-36
   1990 FF                 5364 	.byte	-1
   1991 0C                 5365 	.byte	12
   1992 DF                 5366 	.byte	-33
   1993 FF                 5367 	.byte	-1
   1994 D0                 5368 	.byte	-48
   1995 21                 5369 	.byte	33
   1996 01                 5370 	.byte	1
                           5371 	.globl _width2RollingFront4
   1997                    5372 _width2RollingFront4:
   1997 FF                 5373 	.byte	-1
   1998 12                 5374 	.byte	18
   1999 54                 5375 	.byte	84
   199A FF                 5376 	.byte	-1
   199B 27                 5377 	.byte	39
   199C F1                 5378 	.byte	-15
   199D FF                 5379 	.byte	-1
   199E EE                 5380 	.byte	-18
   199F AF                 5381 	.byte	-81
   19A0 FF                 5382 	.byte	-1
   19A1 D9                 5383 	.byte	-39
   19A2 0C                 5384 	.byte	12
   19A3 FF                 5385 	.byte	-1
   19A4 15                 5386 	.byte	21
   19A5 09                 5387 	.byte	9
   19A6 00                 5388 	.byte	0
   19A7 FD                 5389 	.byte	-3
   19A8 4B                 5390 	.byte	75
   19A9 FF                 5391 	.byte	-1
   19AA 15                 5392 	.byte	21
   19AB 09                 5393 	.byte	9
   19AC 00                 5394 	.byte	0
   19AD 12                 5395 	.byte	18
   19AE E8                 5396 	.byte	-24
   19AF FF                 5397 	.byte	-1
   19B0 18                 5398 	.byte	24
   19B1 09                 5399 	.byte	9
   19B2 00                 5400 	.byte	0
   19B3 D6                 5401 	.byte	-42
   19B4 A6                 5402 	.byte	-90
   19B5 FF                 5403 	.byte	-1
   19B6 18                 5404 	.byte	24
   19B7 09                 5405 	.byte	9
   19B8 00                 5406 	.byte	0
   19B9 D6                 5407 	.byte	-42
   19BA 0C                 5408 	.byte	12
   19BB FF                 5409 	.byte	-1
   19BC 12                 5410 	.byte	18
   19BD 54                 5411 	.byte	84
   19BE FF                 5412 	.byte	-1
   19BF 2A                 5413 	.byte	42
   19C0 F1                 5414 	.byte	-15
   19C1 FF                 5415 	.byte	-1
   19C2 EE                 5416 	.byte	-18
   19C3 AF                 5417 	.byte	-81
   19C4 FF                 5418 	.byte	-1
   19C5 D6                 5419 	.byte	-42
   19C6 0C                 5420 	.byte	12
   19C7 01                 5421 	.byte	1
                           5422 	.globl _width2RollingBack4
   19C8                    5423 _width2RollingBack4:
   19C8 00                 5424 	.byte	0
   19C9 18                 5425 	.byte	24
   19CA 00                 5426 	.byte	0
   19CB FF                 5427 	.byte	-1
   19CC 12                 5428 	.byte	18
   19CD 51                 5429 	.byte	81
   19CE FF                 5430 	.byte	-1
   19CF 00                 5431 	.byte	0
   19D0 F1                 5432 	.byte	-15
   19D1 FF                 5433 	.byte	-1
   19D2 EE                 5434 	.byte	-18
   19D3 AF                 5435 	.byte	-81
   19D4 FF                 5436 	.byte	-1
   19D5 00                 5437 	.byte	0
   19D6 0F                 5438 	.byte	15
   19D7 FF                 5439 	.byte	-1
   19D8 2D                 5440 	.byte	45
   19D9 F7                 5441 	.byte	-9
   19DA 00                 5442 	.byte	0
   19DB E5                 5443 	.byte	-27
   19DC 5A                 5444 	.byte	90
   19DD FF                 5445 	.byte	-1
   19DE 2D                 5446 	.byte	45
   19DF F7                 5447 	.byte	-9
   19E0 00                 5448 	.byte	0
   19E1 D3                 5449 	.byte	-45
   19E2 FA                 5450 	.byte	-6
   19E3 FF                 5451 	.byte	-1
   19E4 2D                 5452 	.byte	45
   19E5 F7                 5453 	.byte	-9
   19E6 00                 5454 	.byte	0
   19E7 C1                 5455 	.byte	-63
   19E8 B8                 5456 	.byte	-72
   19E9 FF                 5457 	.byte	-1
   19EA 2D                 5458 	.byte	45
   19EB F7                 5459 	.byte	-9
   19EC 00                 5460 	.byte	0
   19ED 00                 5461 	.byte	0
   19EE 0F                 5462 	.byte	15
   19EF FF                 5463 	.byte	-1
   19F0 12                 5464 	.byte	18
   19F1 51                 5465 	.byte	81
   19F2 FF                 5466 	.byte	-1
   19F3 00                 5467 	.byte	0
   19F4 F1                 5468 	.byte	-15
   19F5 FF                 5469 	.byte	-1
   19F6 EE                 5470 	.byte	-18
   19F7 AF                 5471 	.byte	-81
   19F8 FF                 5472 	.byte	-1
   19F9 00                 5473 	.byte	0
   19FA 0F                 5474 	.byte	15
   19FB 01                 5475 	.byte	1
                           5476 	.globl _height1FallingLeft4
   19FC                    5477 _height1FallingLeft4:
   19FC FF                 5478 	.byte	-1
   19FD 1B                 5479 	.byte	27
   19FE 24                 5480 	.byte	36
   19FF FF                 5481 	.byte	-1
   1A00 18                 5482 	.byte	24
   1A01 EE                 5483 	.byte	-18
   1A02 FF                 5484 	.byte	-1
   1A03 E5                 5485 	.byte	-27
   1A04 DF                 5486 	.byte	-33
   1A05 FF                 5487 	.byte	-1
   1A06 E8                 5488 	.byte	-24
   1A07 0F                 5489 	.byte	15
   1A08 FF                 5490 	.byte	-1
   1A09 1E                 5491 	.byte	30
   1A0A EE                 5492 	.byte	-18
   1A0B 00                 5493 	.byte	0
   1A0C FD                 5494 	.byte	-3
   1A0D 36                 5495 	.byte	54
   1A0E FF                 5496 	.byte	-1
   1A0F 1E                 5497 	.byte	30
   1A10 EB                 5498 	.byte	-21
   1A11 00                 5499 	.byte	0
   1A12 FA                 5500 	.byte	-6
   1A13 03                 5501 	.byte	3
   1A14 FF                 5502 	.byte	-1
   1A15 1E                 5503 	.byte	30
   1A16 EE                 5504 	.byte	-18
   1A17 00                 5505 	.byte	0
   1A18 C7                 5506 	.byte	-57
   1A19 F1                 5507 	.byte	-15
   1A1A FF                 5508 	.byte	-1
   1A1B 1E                 5509 	.byte	30
   1A1C EB                 5510 	.byte	-21
   1A1D 00                 5511 	.byte	0
   1A1E E8                 5512 	.byte	-24
   1A1F 12                 5513 	.byte	18
   1A20 FF                 5514 	.byte	-1
   1A21 1B                 5515 	.byte	27
   1A22 21                 5516 	.byte	33
   1A23 FF                 5517 	.byte	-1
   1A24 18                 5518 	.byte	24
   1A25 F1                 5519 	.byte	-15
   1A26 FF                 5520 	.byte	-1
   1A27 E5                 5521 	.byte	-27
   1A28 DC                 5522 	.byte	-36
   1A29 FF                 5523 	.byte	-1
   1A2A E8                 5524 	.byte	-24
   1A2B 12                 5525 	.byte	18
   1A2C 01                 5526 	.byte	1
                           5527 	.globl _height1FallingRight4
   1A2D                    5528 _height1FallingRight4:
   1A2D 00                 5529 	.byte	0
   1A2E 15                 5530 	.byte	21
   1A2F 06                 5531 	.byte	6
   1A30 FF                 5532 	.byte	-1
   1A31 F4                 5533 	.byte	-12
   1A32 24                 5534 	.byte	36
   1A33 FF                 5535 	.byte	-1
   1A34 18                 5536 	.byte	24
   1A35 EE                 5537 	.byte	-18
   1A36 FF                 5538 	.byte	-1
   1A37 0C                 5539 	.byte	12
   1A38 DF                 5540 	.byte	-33
   1A39 FF                 5541 	.byte	-1
   1A3A E8                 5542 	.byte	-24
   1A3B 0F                 5543 	.byte	15
   1A3C FF                 5544 	.byte	-1
   1A3D 27                 5545 	.byte	39
   1A3E 15                 5546 	.byte	21
   1A3F 00                 5547 	.byte	0
   1A40 CD                 5548 	.byte	-51
   1A41 0F                 5549 	.byte	15
   1A42 FF                 5550 	.byte	-1
   1A43 27                 5551 	.byte	39
   1A44 15                 5552 	.byte	21
   1A45 00                 5553 	.byte	0
   1A46 F1                 5554 	.byte	-15
   1A47 D9                 5555 	.byte	-39
   1A48 FF                 5556 	.byte	-1
   1A49 27                 5557 	.byte	39
   1A4A 15                 5558 	.byte	21
   1A4B 00                 5559 	.byte	0
   1A4C E5                 5560 	.byte	-27
   1A4D CA                 5561 	.byte	-54
   1A4E FF                 5562 	.byte	-1
   1A4F 27                 5563 	.byte	39
   1A50 12                 5564 	.byte	18
   1A51 00                 5565 	.byte	0
   1A52 E8                 5566 	.byte	-24
   1A53 12                 5567 	.byte	18
   1A54 FF                 5568 	.byte	-1
   1A55 F4                 5569 	.byte	-12
   1A56 24                 5570 	.byte	36
   1A57 FF                 5571 	.byte	-1
   1A58 18                 5572 	.byte	24
   1A59 EE                 5573 	.byte	-18
   1A5A FF                 5574 	.byte	-1
   1A5B 0C                 5575 	.byte	12
   1A5C DC                 5576 	.byte	-36
   1A5D FF                 5577 	.byte	-1
   1A5E E8                 5578 	.byte	-24
   1A5F 12                 5579 	.byte	18
   1A60 01                 5580 	.byte	1
                           5581 	.globl _height1FallingBack4
   1A61                    5582 _height1FallingBack4:
   1A61 00                 5583 	.byte	0
   1A62 18                 5584 	.byte	24
   1A63 00                 5585 	.byte	0
   1A64 FF                 5586 	.byte	-1
   1A65 09                 5587 	.byte	9
   1A66 27                 5588 	.byte	39
   1A67 FF                 5589 	.byte	-1
   1A68 00                 5590 	.byte	0
   1A69 F1                 5591 	.byte	-15
   1A6A FF                 5592 	.byte	-1
   1A6B F7                 5593 	.byte	-9
   1A6C D9                 5594 	.byte	-39
   1A6D FF                 5595 	.byte	-1
   1A6E 00                 5596 	.byte	0
   1A6F 0F                 5597 	.byte	15
   1A70 FF                 5598 	.byte	-1
   1A71 2D                 5599 	.byte	45
   1A72 F7                 5600 	.byte	-9
   1A73 00                 5601 	.byte	0
   1A74 DC                 5602 	.byte	-36
   1A75 30                 5603 	.byte	48
   1A76 FF                 5604 	.byte	-1
   1A77 2D                 5605 	.byte	45
   1A78 F7                 5606 	.byte	-9
   1A79 00                 5607 	.byte	0
   1A7A D3                 5608 	.byte	-45
   1A7B FA                 5609 	.byte	-6
   1A7C FF                 5610 	.byte	-1
   1A7D 2D                 5611 	.byte	45
   1A7E F7                 5612 	.byte	-9
   1A7F 00                 5613 	.byte	0
   1A80 CA                 5614 	.byte	-54
   1A81 E2                 5615 	.byte	-30
   1A82 FF                 5616 	.byte	-1
   1A83 2D                 5617 	.byte	45
   1A84 F7                 5618 	.byte	-9
   1A85 00                 5619 	.byte	0
   1A86 00                 5620 	.byte	0
   1A87 0F                 5621 	.byte	15
   1A88 FF                 5622 	.byte	-1
   1A89 09                 5623 	.byte	9
   1A8A 27                 5624 	.byte	39
   1A8B FF                 5625 	.byte	-1
   1A8C 00                 5626 	.byte	0
   1A8D F1                 5627 	.byte	-15
   1A8E FF                 5628 	.byte	-1
   1A8F F7                 5629 	.byte	-9
   1A90 D9                 5630 	.byte	-39
   1A91 FF                 5631 	.byte	-1
   1A92 00                 5632 	.byte	0
   1A93 0F                 5633 	.byte	15
   1A94 01                 5634 	.byte	1
                           5635 	.globl _height1FallingFront4
   1A95                    5636 _height1FallingFront4:
   1A95 FF                 5637 	.byte	-1
   1A96 09                 5638 	.byte	9
   1A97 2A                 5639 	.byte	42
   1A98 FF                 5640 	.byte	-1
   1A99 27                 5641 	.byte	39
   1A9A F1                 5642 	.byte	-15
   1A9B FF                 5643 	.byte	-1
   1A9C F7                 5644 	.byte	-9
   1A9D D9                 5645 	.byte	-39
   1A9E FF                 5646 	.byte	-1
   1A9F D9                 5647 	.byte	-39
   1AA0 0C                 5648 	.byte	12
   1AA1 FF                 5649 	.byte	-1
   1AA2 15                 5650 	.byte	21
   1AA3 09                 5651 	.byte	9
   1AA4 00                 5652 	.byte	0
   1AA5 F4                 5653 	.byte	-12
   1AA6 21                 5654 	.byte	33
   1AA7 FF                 5655 	.byte	-1
   1AA8 15                 5656 	.byte	21
   1AA9 09                 5657 	.byte	9
   1AAA 00                 5658 	.byte	0
   1AAB 12                 5659 	.byte	18
   1AAC E8                 5660 	.byte	-24
   1AAD FF                 5661 	.byte	-1
   1AAE 18                 5662 	.byte	24
   1AAF 09                 5663 	.byte	9
   1AB0 00                 5664 	.byte	0
   1AB1 DF                 5665 	.byte	-33
   1AB2 D0                 5666 	.byte	-48
   1AB3 FF                 5667 	.byte	-1
   1AB4 18                 5668 	.byte	24
   1AB5 09                 5669 	.byte	9
   1AB6 00                 5670 	.byte	0
   1AB7 D6                 5671 	.byte	-42
   1AB8 0C                 5672 	.byte	12
   1AB9 FF                 5673 	.byte	-1
   1ABA 09                 5674 	.byte	9
   1ABB 2A                 5675 	.byte	42
   1ABC FF                 5676 	.byte	-1
   1ABD 2A                 5677 	.byte	42
   1ABE F1                 5678 	.byte	-15
   1ABF FF                 5679 	.byte	-1
   1AC0 F7                 5680 	.byte	-9
   1AC1 D9                 5681 	.byte	-39
   1AC2 FF                 5682 	.byte	-1
   1AC3 D6                 5683 	.byte	-42
   1AC4 0C                 5684 	.byte	12
   1AC5 01                 5685 	.byte	1
                           5686 	.globl _height2FallingLeft5
   1AC6                    5687 _height2FallingLeft5:
   1AC6 FF                 5688 	.byte	-1
   1AC7 1E                 5689 	.byte	30
   1AC8 21                 5690 	.byte	33
   1AC9 FF                 5691 	.byte	-1
   1ACA 18                 5692 	.byte	24
   1ACB EE                 5693 	.byte	-18
   1ACC FF                 5694 	.byte	-1
   1ACD E2                 5695 	.byte	-30
   1ACE E2                 5696 	.byte	-30
   1ACF FF                 5697 	.byte	-1
   1AD0 E8                 5698 	.byte	-24
   1AD1 0F                 5699 	.byte	15
   1AD2 FF                 5700 	.byte	-1
   1AD3 33                 5701 	.byte	51
   1AD4 D0                 5702 	.byte	-48
   1AD5 00                 5703 	.byte	0
   1AD6 EB                 5704 	.byte	-21
   1AD7 51                 5705 	.byte	81
   1AD8 FF                 5706 	.byte	-1
   1AD9 33                 5707 	.byte	51
   1ADA D0                 5708 	.byte	-48
   1ADB 00                 5709 	.byte	0
   1ADC E5                 5710 	.byte	-27
   1ADD 1E                 5711 	.byte	30
   1ADE FF                 5712 	.byte	-1
   1ADF 33                 5713 	.byte	51
   1AE0 D0                 5714 	.byte	-48
   1AE1 00                 5715 	.byte	0
   1AE2 AF                 5716 	.byte	-81
   1AE3 12                 5717 	.byte	18
   1AE4 FF                 5718 	.byte	-1
   1AE5 33                 5719 	.byte	51
   1AE6 CD                 5720 	.byte	-51
   1AE7 00                 5721 	.byte	0
   1AE8 E8                 5722 	.byte	-24
   1AE9 12                 5723 	.byte	18
   1AEA FF                 5724 	.byte	-1
   1AEB 1E                 5725 	.byte	30
   1AEC 21                 5726 	.byte	33
   1AED FF                 5727 	.byte	-1
   1AEE 18                 5728 	.byte	24
   1AEF EE                 5729 	.byte	-18
   1AF0 FF                 5730 	.byte	-1
   1AF1 E2                 5731 	.byte	-30
   1AF2 DF                 5732 	.byte	-33
   1AF3 FF                 5733 	.byte	-1
   1AF4 E8                 5734 	.byte	-24
   1AF5 12                 5735 	.byte	18
   1AF6 01                 5736 	.byte	1
                           5737 	.globl _height2RisingRight5
   1AF7                    5738 _height2RisingRight5:
   1AF7 00                 5739 	.byte	0
   1AF8 12                 5740 	.byte	18
   1AF9 54                 5741 	.byte	84
   1AFA FF                 5742 	.byte	-1
   1AFB 21                 5743 	.byte	33
   1AFC 1E                 5744 	.byte	30
   1AFD FF                 5745 	.byte	-1
   1AFE 18                 5746 	.byte	24
   1AFF EE                 5747 	.byte	-18
   1B00 FF                 5748 	.byte	-1
   1B01 DF                 5749 	.byte	-33
   1B02 E2                 5750 	.byte	-30
   1B03 FF                 5751 	.byte	-1
   1B04 E8                 5752 	.byte	-24
   1B05 12                 5753 	.byte	18
   1B06 FF                 5754 	.byte	-1
   1B07 2A                 5755 	.byte	42
   1B08 C4                 5756 	.byte	-60
   1B09 00                 5757 	.byte	0
   1B0A F7                 5758 	.byte	-9
   1B0B 5A                 5759 	.byte	90
   1B0C FF                 5760 	.byte	-1
   1B0D 2A                 5761 	.byte	42
   1B0E C4                 5762 	.byte	-60
   1B0F 00                 5763 	.byte	0
   1B10 EE                 5764 	.byte	-18
   1B11 2A                 5765 	.byte	42
   1B12 FF                 5766 	.byte	-1
   1B13 2A                 5767 	.byte	42
   1B14 C4                 5768 	.byte	-60
   1B15 00                 5769 	.byte	0
   1B16 B5                 5770 	.byte	-75
   1B17 1E                 5771 	.byte	30
   1B18 FF                 5772 	.byte	-1
   1B19 2A                 5773 	.byte	42
   1B1A C4                 5774 	.byte	-60
   1B1B 00                 5775 	.byte	0
   1B1C E8                 5776 	.byte	-24
   1B1D 12                 5777 	.byte	18
   1B1E FF                 5778 	.byte	-1
   1B1F 21                 5779 	.byte	33
   1B20 1E                 5780 	.byte	30
   1B21 FF                 5781 	.byte	-1
   1B22 18                 5782 	.byte	24
   1B23 EE                 5783 	.byte	-18
   1B24 FF                 5784 	.byte	-1
   1B25 DF                 5785 	.byte	-33
   1B26 E2                 5786 	.byte	-30
   1B27 FF                 5787 	.byte	-1
   1B28 E8                 5788 	.byte	-24
   1B29 12                 5789 	.byte	18
   1B2A 01                 5790 	.byte	1
                           5791 	.globl _height2FallingRight5
   1B2B                    5792 _height2FallingRight5:
   1B2B 00                 5793 	.byte	0
   1B2C 1B                 5794 	.byte	27
   1B2D 09                 5795 	.byte	9
   1B2E FF                 5796 	.byte	-1
   1B2F EE                 5797 	.byte	-18
   1B30 21                 5798 	.byte	33
   1B31 FF                 5799 	.byte	-1
   1B32 18                 5800 	.byte	24
   1B33 EE                 5801 	.byte	-18
   1B34 FF                 5802 	.byte	-1
   1B35 12                 5803 	.byte	18
   1B36 E2                 5804 	.byte	-30
   1B37 FF                 5805 	.byte	-1
   1B38 E8                 5806 	.byte	-24
   1B39 0F                 5807 	.byte	15
   1B3A FF                 5808 	.byte	-1
   1B3B 48                 5809 	.byte	72
   1B3C 33                 5810 	.byte	51
   1B3D 00                 5811 	.byte	0
   1B3E A6                 5812 	.byte	-90
   1B3F EE                 5813 	.byte	-18
   1B40 FF                 5814 	.byte	-1
   1B41 48                 5815 	.byte	72
   1B42 33                 5816 	.byte	51
   1B43 00                 5817 	.byte	0
   1B44 D0                 5818 	.byte	-48
   1B45 BB                 5819 	.byte	-69
   1B46 FF                 5820 	.byte	-1
   1B47 48                 5821 	.byte	72
   1B48 33                 5822 	.byte	51
   1B49 00                 5823 	.byte	0
   1B4A CA                 5824 	.byte	-54
   1B4B AF                 5825 	.byte	-81
   1B4C FF                 5826 	.byte	-1
   1B4D 48                 5827 	.byte	72
   1B4E 30                 5828 	.byte	48
   1B4F 00                 5829 	.byte	0
   1B50 E8                 5830 	.byte	-24
   1B51 12                 5831 	.byte	18
   1B52 FF                 5832 	.byte	-1
   1B53 EE                 5833 	.byte	-18
   1B54 21                 5834 	.byte	33
   1B55 FF                 5835 	.byte	-1
   1B56 18                 5836 	.byte	24
   1B57 EE                 5837 	.byte	-18
   1B58 FF                 5838 	.byte	-1
   1B59 12                 5839 	.byte	18
   1B5A DF                 5840 	.byte	-33
   1B5B FF                 5841 	.byte	-1
   1B5C E8                 5842 	.byte	-24
   1B5D 12                 5843 	.byte	18
   1B5E 01                 5844 	.byte	1
                           5845 	.globl _height2RisingLeft5
   1B5F                    5846 _height2RisingLeft5:
   1B5F 00                 5847 	.byte	0
   1B60 15                 5848 	.byte	21
   1B61 E5                 5849 	.byte	-27
   1B62 FF                 5850 	.byte	-1
   1B63 EB                 5851 	.byte	-21
   1B64 1B                 5852 	.byte	27
   1B65 FF                 5853 	.byte	-1
   1B66 18                 5854 	.byte	24
   1B67 F1                 5855 	.byte	-15
   1B68 FF                 5856 	.byte	-1
   1B69 15                 5857 	.byte	21
   1B6A E2                 5858 	.byte	-30
   1B6B FF                 5859 	.byte	-1
   1B6C E8                 5860 	.byte	-24
   1B6D 12                 5861 	.byte	18
   1B6E FF                 5862 	.byte	-1
   1B6F 45                 5863 	.byte	69
   1B70 39                 5864 	.byte	57
   1B71 00                 5865 	.byte	0
   1B72 A6                 5866 	.byte	-90
   1B73 E2                 5867 	.byte	-30
   1B74 FF                 5868 	.byte	-1
   1B75 45                 5869 	.byte	69
   1B76 3C                 5870 	.byte	60
   1B77 00                 5871 	.byte	0
   1B78 D3                 5872 	.byte	-45
   1B79 B5                 5873 	.byte	-75
   1B7A FF                 5874 	.byte	-1
   1B7B 45                 5875 	.byte	69
   1B7C 39                 5876 	.byte	57
   1B7D 00                 5877 	.byte	0
   1B7E D0                 5878 	.byte	-48
   1B7F A9                 5879 	.byte	-87
   1B80 FF                 5880 	.byte	-1
   1B81 45                 5881 	.byte	69
   1B82 39                 5882 	.byte	57
   1B83 00                 5883 	.byte	0
   1B84 E8                 5884 	.byte	-24
   1B85 12                 5885 	.byte	18
   1B86 FF                 5886 	.byte	-1
   1B87 EB                 5887 	.byte	-21
   1B88 1E                 5888 	.byte	30
   1B89 FF                 5889 	.byte	-1
   1B8A 18                 5890 	.byte	24
   1B8B EE                 5891 	.byte	-18
   1B8C FF                 5892 	.byte	-1
   1B8D 15                 5893 	.byte	21
   1B8E E2                 5894 	.byte	-30
   1B8F FF                 5895 	.byte	-1
   1B90 E8                 5896 	.byte	-24
   1B91 12                 5897 	.byte	18
   1B92 01                 5898 	.byte	1
                           5899 	.globl _height2FallingBack5
   1B93                    5900 _height2FallingBack5:
   1B93 00                 5901 	.byte	0
   1B94 1E                 5902 	.byte	30
   1B95 00                 5903 	.byte	0
   1B96 FF                 5904 	.byte	-1
   1B97 09                 5905 	.byte	9
   1B98 27                 5906 	.byte	39
   1B99 FF                 5907 	.byte	-1
   1B9A FA                 5908 	.byte	-6
   1B9B F1                 5909 	.byte	-15
   1B9C FF                 5910 	.byte	-1
   1B9D F7                 5911 	.byte	-9
   1B9E D9                 5912 	.byte	-39
   1B9F FF                 5913 	.byte	-1
   1BA0 06                 5914 	.byte	6
   1BA1 0F                 5915 	.byte	15
   1BA2 FF                 5916 	.byte	-1
   1BA3 5A                 5917 	.byte	90
   1BA4 E8                 5918 	.byte	-24
   1BA5 00                 5919 	.byte	0
   1BA6 AF                 5920 	.byte	-81
   1BA7 3F                 5921 	.byte	63
   1BA8 FF                 5922 	.byte	-1
   1BA9 5A                 5923 	.byte	90
   1BAA E8                 5924 	.byte	-24
   1BAB 00                 5925 	.byte	0
   1BAC A0                 5926 	.byte	-96
   1BAD 09                 5927 	.byte	9
   1BAE FF                 5928 	.byte	-1
   1BAF 5A                 5929 	.byte	90
   1BB0 EB                 5930 	.byte	-21
   1BB1 00                 5931 	.byte	0
   1BB2 9D                 5932 	.byte	-99
   1BB3 EE                 5933 	.byte	-18
   1BB4 FF                 5934 	.byte	-1
   1BB5 5A                 5935 	.byte	90
   1BB6 EB                 5936 	.byte	-21
   1BB7 00                 5937 	.byte	0
   1BB8 06                 5938 	.byte	6
   1BB9 0C                 5939 	.byte	12
   1BBA FF                 5940 	.byte	-1
   1BBB 09                 5941 	.byte	9
   1BBC 27                 5942 	.byte	39
   1BBD FF                 5943 	.byte	-1
   1BBE FA                 5944 	.byte	-6
   1BBF F4                 5945 	.byte	-12
   1BC0 FF                 5946 	.byte	-1
   1BC1 F7                 5947 	.byte	-9
   1BC2 D9                 5948 	.byte	-39
   1BC3 FF                 5949 	.byte	-1
   1BC4 06                 5950 	.byte	6
   1BC5 0C                 5951 	.byte	12
   1BC6 01                 5952 	.byte	1
                           5953 	.globl _height2RisingFront5
   1BC7                    5954 _height2RisingFront5:
   1BC7 00                 5955 	.byte	0
   1BC8 0C                 5956 	.byte	12
   1BC9 0C                 5957 	.byte	12
   1BCA FF                 5958 	.byte	-1
   1BCB 09                 5959 	.byte	9
   1BCC 2A                 5960 	.byte	42
   1BCD FF                 5961 	.byte	-1
   1BCE F4                 5962 	.byte	-12
   1BCF F4                 5963 	.byte	-12
   1BD0 FF                 5964 	.byte	-1
   1BD1 F7                 5965 	.byte	-9
   1BD2 D6                 5966 	.byte	-42
   1BD3 FF                 5967 	.byte	-1
   1BD4 0C                 5968 	.byte	12
   1BD5 0C                 5969 	.byte	12
   1BD6 FF                 5970 	.byte	-1
   1BD7 57                 5971 	.byte	87
   1BD8 EB                 5972 	.byte	-21
   1BD9 00                 5973 	.byte	0
   1BDA B2                 5974 	.byte	-78
   1BDB 3F                 5975 	.byte	63
   1BDC FF                 5976 	.byte	-1
   1BDD 57                 5977 	.byte	87
   1BDE E8                 5978 	.byte	-24
   1BDF 00                 5979 	.byte	0
   1BE0 9D                 5980 	.byte	-99
   1BE1 0C                 5981 	.byte	12
   1BE2 FF                 5982 	.byte	-1
   1BE3 5A                 5983 	.byte	90
   1BE4 E8                 5984 	.byte	-24
   1BE5 00                 5985 	.byte	0
   1BE6 9D                 5986 	.byte	-99
   1BE7 EE                 5987 	.byte	-18
   1BE8 FF                 5988 	.byte	-1
   1BE9 5A                 5989 	.byte	90
   1BEA EB                 5990 	.byte	-21
   1BEB 00                 5991 	.byte	0
   1BEC 09                 5992 	.byte	9
   1BED 0C                 5993 	.byte	12
   1BEE FF                 5994 	.byte	-1
   1BEF 09                 5995 	.byte	9
   1BF0 27                 5996 	.byte	39
   1BF1 FF                 5997 	.byte	-1
   1BF2 F7                 5998 	.byte	-9
   1BF3 F4                 5999 	.byte	-12
   1BF4 FF                 6000 	.byte	-1
   1BF5 F7                 6001 	.byte	-9
   1BF6 D9                 6002 	.byte	-39
   1BF7 FF                 6003 	.byte	-1
   1BF8 09                 6004 	.byte	9
   1BF9 0C                 6005 	.byte	12
   1BFA 01                 6006 	.byte	1
                           6007 	.globl _height2FallingFront5
   1BFB                    6008 _height2FallingFront5:
   1BFB FF                 6009 	.byte	-1
   1BFC 09                 6010 	.byte	9
   1BFD 2A                 6011 	.byte	42
   1BFE FF                 6012 	.byte	-1
   1BFF 2A                 6013 	.byte	42
   1C00 F1                 6014 	.byte	-15
   1C01 FF                 6015 	.byte	-1
   1C02 F7                 6016 	.byte	-9
   1C03 D9                 6017 	.byte	-39
   1C04 FF                 6018 	.byte	-1
   1C05 D6                 6019 	.byte	-42
   1C06 0C                 6020 	.byte	12
   1C07 FF                 6021 	.byte	-1
   1C08 21                 6022 	.byte	33
   1C09 15                 6023 	.byte	21
   1C0A 00                 6024 	.byte	0
   1C0B E8                 6025 	.byte	-24
   1C0C 15                 6026 	.byte	21
   1C0D FF                 6027 	.byte	-1
   1C0E 21                 6028 	.byte	33
   1C0F 15                 6029 	.byte	21
   1C10 00                 6030 	.byte	0
   1C11 09                 6031 	.byte	9
   1C12 DC                 6032 	.byte	-36
   1C13 FF                 6033 	.byte	-1
   1C14 21                 6034 	.byte	33
   1C15 18                 6035 	.byte	24
   1C16 00                 6036 	.byte	0
   1C17 D6                 6037 	.byte	-42
   1C18 C1                 6038 	.byte	-63
   1C19 FF                 6039 	.byte	-1
   1C1A 21                 6040 	.byte	33
   1C1B 15                 6041 	.byte	21
   1C1C 00                 6042 	.byte	0
   1C1D D6                 6043 	.byte	-42
   1C1E 0C                 6044 	.byte	12
   1C1F FF                 6045 	.byte	-1
   1C20 09                 6046 	.byte	9
   1C21 2A                 6047 	.byte	42
   1C22 FF                 6048 	.byte	-1
   1C23 2A                 6049 	.byte	42
   1C24 F4                 6050 	.byte	-12
   1C25 FF                 6051 	.byte	-1
   1C26 F7                 6052 	.byte	-9
   1C27 D6                 6053 	.byte	-42
   1C28 FF                 6054 	.byte	-1
   1C29 D6                 6055 	.byte	-42
   1C2A 0C                 6056 	.byte	12
   1C2B 01                 6057 	.byte	1
                           6058 	.globl _height2RisingBack5
   1C2C                    6059 _height2RisingBack5:
   1C2C 00                 6060 	.byte	0
   1C2D 30                 6061 	.byte	48
   1C2E DF                 6062 	.byte	-33
   1C2F FF                 6063 	.byte	-1
   1C30 09                 6064 	.byte	9
   1C31 27                 6065 	.byte	39
   1C32 FF                 6066 	.byte	-1
   1C33 2D                 6067 	.byte	45
   1C34 F7                 6068 	.byte	-9
   1C35 FF                 6069 	.byte	-1
   1C36 F7                 6070 	.byte	-9
   1C37 D6                 6071 	.byte	-42
   1C38 FF                 6072 	.byte	-1
   1C39 D3                 6073 	.byte	-45
   1C3A 0C                 6074 	.byte	12
   1C3B FF                 6075 	.byte	-1
   1C3C 15                 6076 	.byte	21
   1C3D 18                 6077 	.byte	24
   1C3E 00                 6078 	.byte	0
   1C3F F4                 6079 	.byte	-12
   1C40 0F                 6080 	.byte	15
   1C41 FF                 6081 	.byte	-1
   1C42 15                 6082 	.byte	21
   1C43 18                 6083 	.byte	24
   1C44 00                 6084 	.byte	0
   1C45 18                 6085 	.byte	24
   1C46 DF                 6086 	.byte	-33
   1C47 FF                 6087 	.byte	-1
   1C48 15                 6088 	.byte	21
   1C49 15                 6089 	.byte	21
   1C4A 00                 6090 	.byte	0
   1C4B E2                 6091 	.byte	-30
   1C4C C1                 6092 	.byte	-63
   1C4D FF                 6093 	.byte	-1
   1C4E 15                 6094 	.byte	21
   1C4F 18                 6095 	.byte	24
   1C50 00                 6096 	.byte	0
   1C51 D3                 6097 	.byte	-45
   1C52 0C                 6098 	.byte	12
   1C53 FF                 6099 	.byte	-1
   1C54 09                 6100 	.byte	9
   1C55 27                 6101 	.byte	39
   1C56 FF                 6102 	.byte	-1
   1C57 2D                 6103 	.byte	45
   1C58 F4                 6104 	.byte	-12
   1C59 FF                 6105 	.byte	-1
   1C5A F7                 6106 	.byte	-9
   1C5B D9                 6107 	.byte	-39
   1C5C FF                 6108 	.byte	-1
   1C5D D3                 6109 	.byte	-45
   1C5E 0C                 6110 	.byte	12
   1C5F 01                 6111 	.byte	1
                           6112 	.globl _depth2RollingLeft5
   1C60                    6113 _depth2RollingLeft5:
   1C60 FF                 6114 	.byte	-1
   1C61 1E                 6115 	.byte	30
   1C62 21                 6116 	.byte	33
   1C63 FF                 6117 	.byte	-1
   1C64 30                 6118 	.byte	48
   1C65 DF                 6119 	.byte	-33
   1C66 FF                 6120 	.byte	-1
   1C67 E2                 6121 	.byte	-30
   1C68 DF                 6122 	.byte	-33
   1C69 FF                 6123 	.byte	-1
   1C6A D0                 6124 	.byte	-48
   1C6B 21                 6125 	.byte	33
   1C6C FF                 6126 	.byte	-1
   1C6D 18                 6127 	.byte	24
   1C6E E8                 6128 	.byte	-24
   1C6F 00                 6129 	.byte	0
   1C70 06                 6130 	.byte	6
   1C71 39                 6131 	.byte	57
   1C72 FF                 6132 	.byte	-1
   1C73 1B                 6133 	.byte	27
   1C74 E8                 6134 	.byte	-24
   1C75 00                 6135 	.byte	0
   1C76 15                 6136 	.byte	21
   1C77 F7                 6137 	.byte	-9
   1C78 FF                 6138 	.byte	-1
   1C79 1B                 6139 	.byte	27
   1C7A E8                 6140 	.byte	-24
   1C7B 00                 6141 	.byte	0
   1C7C C7                 6142 	.byte	-57
   1C7D F7                 6143 	.byte	-9
   1C7E FF                 6144 	.byte	-1
   1C7F 18                 6145 	.byte	24
   1C80 E5                 6146 	.byte	-27
   1C81 00                 6147 	.byte	0
   1C82 D0                 6148 	.byte	-48
   1C83 24                 6149 	.byte	36
   1C84 FF                 6150 	.byte	-1
   1C85 21                 6151 	.byte	33
   1C86 21                 6152 	.byte	33
   1C87 FF                 6153 	.byte	-1
   1C88 30                 6154 	.byte	48
   1C89 DF                 6155 	.byte	-33
   1C8A FF                 6156 	.byte	-1
   1C8B DF                 6157 	.byte	-33
   1C8C DC                 6158 	.byte	-36
   1C8D FF                 6159 	.byte	-1
   1C8E D0                 6160 	.byte	-48
   1C8F 24                 6161 	.byte	36
   1C90 01                 6162 	.byte	1
                           6163 	.globl _depth2RollingRight5
   1C91                    6164 _depth2RollingRight5:
   1C91 00                 6165 	.byte	0
   1C92 1B                 6166 	.byte	27
   1C93 09                 6167 	.byte	9
   1C94 FF                 6168 	.byte	-1
   1C95 EE                 6169 	.byte	-18
   1C96 21                 6170 	.byte	33
   1C97 FF                 6171 	.byte	-1
   1C98 30                 6172 	.byte	48
   1C99 DC                 6173 	.byte	-36
   1C9A FF                 6174 	.byte	-1
   1C9B 12                 6175 	.byte	18
   1C9C E2                 6176 	.byte	-30
   1C9D FF                 6177 	.byte	-1
   1C9E D0                 6178 	.byte	-48
   1C9F 21                 6179 	.byte	33
   1CA0 FF                 6180 	.byte	-1
   1CA1 24                 6181 	.byte	36
   1CA2 18                 6182 	.byte	24
   1CA3 00                 6183 	.byte	0
   1CA4 CA                 6184 	.byte	-54
   1CA5 09                 6185 	.byte	9
   1CA6 FF                 6186 	.byte	-1
   1CA7 24                 6187 	.byte	36
   1CA8 1B                 6188 	.byte	27
   1CA9 00                 6189 	.byte	0
   1CAA 0C                 6190 	.byte	12
   1CAB C1                 6191 	.byte	-63
   1CAC FF                 6192 	.byte	-1
   1CAD 24                 6193 	.byte	36
   1CAE 1B                 6194 	.byte	27
   1CAF 00                 6195 	.byte	0
   1CB0 EE                 6196 	.byte	-18
   1CB1 C7                 6197 	.byte	-57
   1CB2 FF                 6198 	.byte	-1
   1CB3 24                 6199 	.byte	36
   1CB4 18                 6200 	.byte	24
   1CB5 00                 6201 	.byte	0
   1CB6 D0                 6202 	.byte	-48
   1CB7 21                 6203 	.byte	33
   1CB8 FF                 6204 	.byte	-1
   1CB9 EE                 6205 	.byte	-18
   1CBA 24                 6206 	.byte	36
   1CBB FF                 6207 	.byte	-1
   1CBC 30                 6208 	.byte	48
   1CBD DC                 6209 	.byte	-36
   1CBE FF                 6210 	.byte	-1
   1CBF 12                 6211 	.byte	18
   1CC0 DF                 6212 	.byte	-33
   1CC1 FF                 6213 	.byte	-1
   1CC2 D0                 6214 	.byte	-48
   1CC3 21                 6215 	.byte	33
   1CC4 01                 6216 	.byte	1
                           6217 	.globl _width2RollingFront5
   1CC5                    6218 _width2RollingFront5:
   1CC5 FF                 6219 	.byte	-1
   1CC6 12                 6220 	.byte	18
   1CC7 54                 6221 	.byte	84
   1CC8 FF                 6222 	.byte	-1
   1CC9 2A                 6223 	.byte	42
   1CCA F1                 6224 	.byte	-15
   1CCB FF                 6225 	.byte	-1
   1CCC EE                 6226 	.byte	-18
   1CCD AF                 6227 	.byte	-81
   1CCE FF                 6228 	.byte	-1
   1CCF D6                 6229 	.byte	-42
   1CD0 0C                 6230 	.byte	12
   1CD1 FF                 6231 	.byte	-1
   1CD2 0F                 6232 	.byte	15
   1CD3 0C                 6233 	.byte	12
   1CD4 00                 6234 	.byte	0
   1CD5 03                 6235 	.byte	3
   1CD6 48                 6236 	.byte	72
   1CD7 FF                 6237 	.byte	-1
   1CD8 0F                 6238 	.byte	15
   1CD9 0C                 6239 	.byte	12
   1CDA 00                 6240 	.byte	0
   1CDB 1B                 6241 	.byte	27
   1CDC E5                 6242 	.byte	-27
   1CDD FF                 6243 	.byte	-1
   1CDE 12                 6244 	.byte	18
   1CDF 0C                 6245 	.byte	12
   1CE0 00                 6246 	.byte	0
   1CE1 DC                 6247 	.byte	-36
   1CE2 A3                 6248 	.byte	-93
   1CE3 FF                 6249 	.byte	-1
   1CE4 12                 6250 	.byte	18
   1CE5 0C                 6251 	.byte	12
   1CE6 00                 6252 	.byte	0
   1CE7 D3                 6253 	.byte	-45
   1CE8 0C                 6254 	.byte	12
   1CE9 FF                 6255 	.byte	-1
   1CEA 12                 6256 	.byte	18
   1CEB 54                 6257 	.byte	84
   1CEC FF                 6258 	.byte	-1
   1CED 2D                 6259 	.byte	45
   1CEE F1                 6260 	.byte	-15
   1CEF FF                 6261 	.byte	-1
   1CF0 EE                 6262 	.byte	-18
   1CF1 AF                 6263 	.byte	-81
   1CF2 FF                 6264 	.byte	-1
   1CF3 D3                 6265 	.byte	-45
   1CF4 0C                 6266 	.byte	12
   1CF5 01                 6267 	.byte	1
                           6268 	.globl _width2RollingBack5
   1CF6                    6269 _width2RollingBack5:
   1CF6 00                 6270 	.byte	0
   1CF7 1E                 6271 	.byte	30
   1CF8 00                 6272 	.byte	0
   1CF9 FF                 6273 	.byte	-1
   1CFA 12                 6274 	.byte	18
   1CFB 51                 6275 	.byte	81
   1CFC FF                 6276 	.byte	-1
   1CFD FA                 6277 	.byte	-6
   1CFE F1                 6278 	.byte	-15
   1CFF FF                 6279 	.byte	-1
   1D00 EE                 6280 	.byte	-18
   1D01 AF                 6281 	.byte	-81
   1D02 FF                 6282 	.byte	-1
   1D03 06                 6283 	.byte	6
   1D04 0F                 6284 	.byte	15
   1D05 FF                 6285 	.byte	-1
   1D06 2D                 6286 	.byte	45
   1D07 F4                 6287 	.byte	-12
   1D08 00                 6288 	.byte	0
   1D09 E5                 6289 	.byte	-27
   1D0A 5D                 6290 	.byte	93
   1D0B FF                 6291 	.byte	-1
   1D0C 2D                 6292 	.byte	45
   1D0D F4                 6293 	.byte	-12
   1D0E 00                 6294 	.byte	0
   1D0F CD                 6295 	.byte	-51
   1D10 FD                 6296 	.byte	-3
   1D11 FF                 6297 	.byte	-1
   1D12 2D                 6298 	.byte	45
   1D13 F4                 6299 	.byte	-12
   1D14 00                 6300 	.byte	0
   1D15 C1                 6301 	.byte	-63
   1D16 BB                 6302 	.byte	-69
   1D17 FF                 6303 	.byte	-1
   1D18 2D                 6304 	.byte	45
   1D19 F4                 6305 	.byte	-12
   1D1A 00                 6306 	.byte	0
   1D1B 06                 6307 	.byte	6
   1D1C 0F                 6308 	.byte	15
   1D1D FF                 6309 	.byte	-1
   1D1E 12                 6310 	.byte	18
   1D1F 51                 6311 	.byte	81
   1D20 FF                 6312 	.byte	-1
   1D21 FA                 6313 	.byte	-6
   1D22 F1                 6314 	.byte	-15
   1D23 FF                 6315 	.byte	-1
   1D24 EE                 6316 	.byte	-18
   1D25 AF                 6317 	.byte	-81
   1D26 FF                 6318 	.byte	-1
   1D27 06                 6319 	.byte	6
   1D28 0F                 6320 	.byte	15
   1D29 01                 6321 	.byte	1
                           6322 	.globl _height1FallingLeft5
   1D2A                    6323 _height1FallingLeft5:
   1D2A FF                 6324 	.byte	-1
   1D2B 1E                 6325 	.byte	30
   1D2C 21                 6326 	.byte	33
   1D2D FF                 6327 	.byte	-1
   1D2E 18                 6328 	.byte	24
   1D2F EE                 6329 	.byte	-18
   1D30 FF                 6330 	.byte	-1
   1D31 E2                 6331 	.byte	-30
   1D32 E2                 6332 	.byte	-30
   1D33 FF                 6333 	.byte	-1
   1D34 E8                 6334 	.byte	-24
   1D35 0F                 6335 	.byte	15
   1D36 FF                 6336 	.byte	-1
   1D37 18                 6337 	.byte	24
   1D38 E8                 6338 	.byte	-24
   1D39 00                 6339 	.byte	0
   1D3A 06                 6340 	.byte	6
   1D3B 39                 6341 	.byte	57
   1D3C FF                 6342 	.byte	-1
   1D3D 1B                 6343 	.byte	27
   1D3E E8                 6344 	.byte	-24
   1D3F 00                 6345 	.byte	0
   1D40 FD                 6346 	.byte	-3
   1D41 06                 6347 	.byte	6
   1D42 FF                 6348 	.byte	-1
   1D43 1B                 6349 	.byte	27
   1D44 EB                 6350 	.byte	-21
   1D45 00                 6351 	.byte	0
   1D46 C7                 6352 	.byte	-57
   1D47 F7                 6353 	.byte	-9
   1D48 FF                 6354 	.byte	-1
   1D49 18                 6355 	.byte	24
   1D4A E5                 6356 	.byte	-27
   1D4B 00                 6357 	.byte	0
   1D4C E8                 6358 	.byte	-24
   1D4D 12                 6359 	.byte	18
   1D4E FF                 6360 	.byte	-1
   1D4F 21                 6361 	.byte	33
   1D50 21                 6362 	.byte	33
   1D51 FF                 6363 	.byte	-1
   1D52 18                 6364 	.byte	24
   1D53 F1                 6365 	.byte	-15
   1D54 FF                 6366 	.byte	-1
   1D55 DF                 6367 	.byte	-33
   1D56 DC                 6368 	.byte	-36
   1D57 FF                 6369 	.byte	-1
   1D58 E8                 6370 	.byte	-24
   1D59 12                 6371 	.byte	18
   1D5A 01                 6372 	.byte	1
                           6373 	.globl _height1FallingRight5
   1D5B                    6374 _height1FallingRight5:
   1D5B 00                 6375 	.byte	0
   1D5C 1B                 6376 	.byte	27
   1D5D 09                 6377 	.byte	9
   1D5E FF                 6378 	.byte	-1
   1D5F EE                 6379 	.byte	-18
   1D60 21                 6380 	.byte	33
   1D61 FF                 6381 	.byte	-1
   1D62 18                 6382 	.byte	24
   1D63 EE                 6383 	.byte	-18
   1D64 FF                 6384 	.byte	-1
   1D65 12                 6385 	.byte	18
   1D66 E2                 6386 	.byte	-30
   1D67 FF                 6387 	.byte	-1
   1D68 E8                 6388 	.byte	-24
   1D69 0F                 6389 	.byte	15
   1D6A FF                 6390 	.byte	-1
   1D6B 24                 6391 	.byte	36
   1D6C 18                 6392 	.byte	24
   1D6D 00                 6393 	.byte	0
   1D6E CA                 6394 	.byte	-54
   1D6F 09                 6395 	.byte	9
   1D70 FF                 6396 	.byte	-1
   1D71 24                 6397 	.byte	36
   1D72 1B                 6398 	.byte	27
   1D73 00                 6399 	.byte	0
   1D74 F4                 6400 	.byte	-12
   1D75 D3                 6401 	.byte	-45
   1D76 FF                 6402 	.byte	-1
   1D77 24                 6403 	.byte	36
   1D78 1B                 6404 	.byte	27
   1D79 00                 6405 	.byte	0
   1D7A EE                 6406 	.byte	-18
   1D7B C7                 6407 	.byte	-57
   1D7C FF                 6408 	.byte	-1
   1D7D 24                 6409 	.byte	36
   1D7E 15                 6410 	.byte	21
   1D7F 00                 6411 	.byte	0
   1D80 E8                 6412 	.byte	-24
   1D81 12                 6413 	.byte	18
   1D82 FF                 6414 	.byte	-1
   1D83 EE                 6415 	.byte	-18
   1D84 24                 6416 	.byte	36
   1D85 FF                 6417 	.byte	-1
   1D86 18                 6418 	.byte	24
   1D87 EE                 6419 	.byte	-18
   1D88 FF                 6420 	.byte	-1
   1D89 12                 6421 	.byte	18
   1D8A DC                 6422 	.byte	-36
   1D8B FF                 6423 	.byte	-1
   1D8C E8                 6424 	.byte	-24
   1D8D 12                 6425 	.byte	18
   1D8E 01                 6426 	.byte	1
                           6427 	.globl _height1FallingBack5
   1D8F                    6428 _height1FallingBack5:
   1D8F 00                 6429 	.byte	0
   1D90 1E                 6430 	.byte	30
   1D91 00                 6431 	.byte	0
   1D92 FF                 6432 	.byte	-1
   1D93 09                 6433 	.byte	9
   1D94 27                 6434 	.byte	39
   1D95 FF                 6435 	.byte	-1
   1D96 FA                 6436 	.byte	-6
   1D97 F1                 6437 	.byte	-15
   1D98 FF                 6438 	.byte	-1
   1D99 F7                 6439 	.byte	-9
   1D9A D9                 6440 	.byte	-39
   1D9B FF                 6441 	.byte	-1
   1D9C 06                 6442 	.byte	6
   1D9D 0F                 6443 	.byte	15
   1D9E FF                 6444 	.byte	-1
   1D9F 2D                 6445 	.byte	45
   1DA0 F4                 6446 	.byte	-12
   1DA1 00                 6447 	.byte	0
   1DA2 DC                 6448 	.byte	-36
   1DA3 33                 6449 	.byte	51
   1DA4 FF                 6450 	.byte	-1
   1DA5 2D                 6451 	.byte	45
   1DA6 F4                 6452 	.byte	-12
   1DA7 00                 6453 	.byte	0
   1DA8 CD                 6454 	.byte	-51
   1DA9 FD                 6455 	.byte	-3
   1DAA FF                 6456 	.byte	-1
   1DAB 2D                 6457 	.byte	45
   1DAC F4                 6458 	.byte	-12
   1DAD 00                 6459 	.byte	0
   1DAE CA                 6460 	.byte	-54
   1DAF E5                 6461 	.byte	-27
   1DB0 FF                 6462 	.byte	-1
   1DB1 2D                 6463 	.byte	45
   1DB2 F4                 6464 	.byte	-12
   1DB3 00                 6465 	.byte	0
   1DB4 06                 6466 	.byte	6
   1DB5 0F                 6467 	.byte	15
   1DB6 FF                 6468 	.byte	-1
   1DB7 09                 6469 	.byte	9
   1DB8 27                 6470 	.byte	39
   1DB9 FF                 6471 	.byte	-1
   1DBA FA                 6472 	.byte	-6
   1DBB F1                 6473 	.byte	-15
   1DBC FF                 6474 	.byte	-1
   1DBD F7                 6475 	.byte	-9
   1DBE D9                 6476 	.byte	-39
   1DBF FF                 6477 	.byte	-1
   1DC0 06                 6478 	.byte	6
   1DC1 0F                 6479 	.byte	15
   1DC2 01                 6480 	.byte	1
                           6481 	.globl _height1FallingFront5
   1DC3                    6482 _height1FallingFront5:
   1DC3 FF                 6483 	.byte	-1
   1DC4 09                 6484 	.byte	9
   1DC5 2A                 6485 	.byte	42
   1DC6 FF                 6486 	.byte	-1
   1DC7 2A                 6487 	.byte	42
   1DC8 F1                 6488 	.byte	-15
   1DC9 FF                 6489 	.byte	-1
   1DCA F7                 6490 	.byte	-9
   1DCB D9                 6491 	.byte	-39
   1DCC FF                 6492 	.byte	-1
   1DCD D6                 6493 	.byte	-42
   1DCE 0C                 6494 	.byte	12
   1DCF FF                 6495 	.byte	-1
   1DD0 0F                 6496 	.byte	15
   1DD1 0C                 6497 	.byte	12
   1DD2 00                 6498 	.byte	0
   1DD3 FA                 6499 	.byte	-6
   1DD4 1E                 6500 	.byte	30
   1DD5 FF                 6501 	.byte	-1
   1DD6 0F                 6502 	.byte	15
   1DD7 0C                 6503 	.byte	12
   1DD8 00                 6504 	.byte	0
   1DD9 1B                 6505 	.byte	27
   1DDA E5                 6506 	.byte	-27
   1DDB FF                 6507 	.byte	-1
   1DDC 12                 6508 	.byte	18
   1DDD 0C                 6509 	.byte	12
   1DDE 00                 6510 	.byte	0
   1DDF E5                 6511 	.byte	-27
   1DE0 CD                 6512 	.byte	-51
   1DE1 FF                 6513 	.byte	-1
   1DE2 12                 6514 	.byte	18
   1DE3 0C                 6515 	.byte	12
   1DE4 00                 6516 	.byte	0
   1DE5 D3                 6517 	.byte	-45
   1DE6 0C                 6518 	.byte	12
   1DE7 FF                 6519 	.byte	-1
   1DE8 09                 6520 	.byte	9
   1DE9 2A                 6521 	.byte	42
   1DEA FF                 6522 	.byte	-1
   1DEB 2D                 6523 	.byte	45
   1DEC F1                 6524 	.byte	-15
   1DED FF                 6525 	.byte	-1
   1DEE F7                 6526 	.byte	-9
   1DEF D9                 6527 	.byte	-39
   1DF0 FF                 6528 	.byte	-1
   1DF1 D3                 6529 	.byte	-45
   1DF2 0C                 6530 	.byte	12
   1DF3 01                 6531 	.byte	1
                           6532 	.globl _height2FallingLeft6
   1DF4                    6533 _height2FallingLeft6:
   1DF4 FF                 6534 	.byte	-1
   1DF5 21                 6535 	.byte	33
   1DF6 1E                 6536 	.byte	30
   1DF7 FF                 6537 	.byte	-1
   1DF8 18                 6538 	.byte	24
   1DF9 EE                 6539 	.byte	-18
   1DFA FF                 6540 	.byte	-1
   1DFB DF                 6541 	.byte	-33
   1DFC E5                 6542 	.byte	-27
   1DFD FF                 6543 	.byte	-1
   1DFE E8                 6544 	.byte	-24
   1DFF 0F                 6545 	.byte	15
   1E00 FF                 6546 	.byte	-1
   1E01 2A                 6547 	.byte	42
   1E02 C7                 6548 	.byte	-57
   1E03 00                 6549 	.byte	0
   1E04 F7                 6550 	.byte	-9
   1E05 57                 6551 	.byte	87
   1E06 FF                 6552 	.byte	-1
   1E07 2A                 6553 	.byte	42
   1E08 C7                 6554 	.byte	-57
   1E09 00                 6555 	.byte	0
   1E0A EE                 6556 	.byte	-18
   1E0B 27                 6557 	.byte	39
   1E0C FF                 6558 	.byte	-1
   1E0D 2A                 6559 	.byte	42
   1E0E C7                 6560 	.byte	-57
   1E0F 00                 6561 	.byte	0
   1E10 B5                 6562 	.byte	-75
   1E11 1E                 6563 	.byte	30
   1E12 FF                 6564 	.byte	-1
   1E13 2A                 6565 	.byte	42
   1E14 C4                 6566 	.byte	-60
   1E15 00                 6567 	.byte	0
   1E16 E8                 6568 	.byte	-24
   1E17 12                 6569 	.byte	18
   1E18 FF                 6570 	.byte	-1
   1E19 21                 6571 	.byte	33
   1E1A 1E                 6572 	.byte	30
   1E1B FF                 6573 	.byte	-1
   1E1C 18                 6574 	.byte	24
   1E1D EE                 6575 	.byte	-18
   1E1E FF                 6576 	.byte	-1
   1E1F DF                 6577 	.byte	-33
   1E20 E2                 6578 	.byte	-30
   1E21 FF                 6579 	.byte	-1
   1E22 E8                 6580 	.byte	-24
   1E23 12                 6581 	.byte	18
   1E24 01                 6582 	.byte	1
                           6583 	.globl _height2RisingRight6
   1E25                    6584 _height2RisingRight6:
   1E25 00                 6585 	.byte	0
   1E26 12                 6586 	.byte	18
   1E27 54                 6587 	.byte	84
   1E28 FF                 6588 	.byte	-1
   1E29 1E                 6589 	.byte	30
   1E2A 21                 6590 	.byte	33
   1E2B FF                 6591 	.byte	-1
   1E2C 18                 6592 	.byte	24
   1E2D EE                 6593 	.byte	-18
   1E2E FF                 6594 	.byte	-1
   1E2F E2                 6595 	.byte	-30
   1E30 DF                 6596 	.byte	-33
   1E31 FF                 6597 	.byte	-1
   1E32 E8                 6598 	.byte	-24
   1E33 12                 6599 	.byte	18
   1E34 FF                 6600 	.byte	-1
   1E35 33                 6601 	.byte	51
   1E36 CD                 6602 	.byte	-51
   1E37 00                 6603 	.byte	0
   1E38 EB                 6604 	.byte	-21
   1E39 54                 6605 	.byte	84
   1E3A FF                 6606 	.byte	-1
   1E3B 33                 6607 	.byte	51
   1E3C CD                 6608 	.byte	-51
   1E3D 00                 6609 	.byte	0
   1E3E E5                 6610 	.byte	-27
   1E3F 21                 6611 	.byte	33
   1E40 FF                 6612 	.byte	-1
   1E41 33                 6613 	.byte	51
   1E42 CD                 6614 	.byte	-51
   1E43 00                 6615 	.byte	0
   1E44 AF                 6616 	.byte	-81
   1E45 12                 6617 	.byte	18
   1E46 FF                 6618 	.byte	-1
   1E47 33                 6619 	.byte	51
   1E48 CD                 6620 	.byte	-51
   1E49 00                 6621 	.byte	0
   1E4A E8                 6622 	.byte	-24
   1E4B 12                 6623 	.byte	18
   1E4C FF                 6624 	.byte	-1
   1E4D 1E                 6625 	.byte	30
   1E4E 21                 6626 	.byte	33
   1E4F FF                 6627 	.byte	-1
   1E50 18                 6628 	.byte	24
   1E51 EE                 6629 	.byte	-18
   1E52 FF                 6630 	.byte	-1
   1E53 E2                 6631 	.byte	-30
   1E54 DF                 6632 	.byte	-33
   1E55 FF                 6633 	.byte	-1
   1E56 E8                 6634 	.byte	-24
   1E57 12                 6635 	.byte	18
   1E58 01                 6636 	.byte	1
                           6637 	.globl _height2FallingRight6
   1E59                    6638 _height2FallingRight6:
   1E59 00                 6639 	.byte	0
   1E5A 1E                 6640 	.byte	30
   1E5B 0C                 6641 	.byte	12
   1E5C FF                 6642 	.byte	-1
   1E5D EB                 6643 	.byte	-21
   1E5E 1E                 6644 	.byte	30
   1E5F FF                 6645 	.byte	-1
   1E60 18                 6646 	.byte	24
   1E61 EE                 6647 	.byte	-18
   1E62 FF                 6648 	.byte	-1
   1E63 15                 6649 	.byte	21
   1E64 E5                 6650 	.byte	-27
   1E65 FF                 6651 	.byte	-1
   1E66 E8                 6652 	.byte	-24
   1E67 0F                 6653 	.byte	15
   1E68 FF                 6654 	.byte	-1
   1E69 45                 6655 	.byte	69
   1E6A 3C                 6656 	.byte	60
   1E6B 00                 6657 	.byte	0
   1E6C A6                 6658 	.byte	-90
   1E6D E2                 6659 	.byte	-30
   1E6E FF                 6660 	.byte	-1
   1E6F 45                 6661 	.byte	69
   1E70 3C                 6662 	.byte	60
   1E71 00                 6663 	.byte	0
   1E72 D3                 6664 	.byte	-45
   1E73 B2                 6665 	.byte	-78
   1E74 FF                 6666 	.byte	-1
   1E75 45                 6667 	.byte	69
   1E76 3C                 6668 	.byte	60
   1E77 00                 6669 	.byte	0
   1E78 D0                 6670 	.byte	-48
   1E79 A9                 6671 	.byte	-87
   1E7A FF                 6672 	.byte	-1
   1E7B 45                 6673 	.byte	69
   1E7C 39                 6674 	.byte	57
   1E7D 00                 6675 	.byte	0
   1E7E E8                 6676 	.byte	-24
   1E7F 12                 6677 	.byte	18
   1E80 FF                 6678 	.byte	-1
   1E81 EB                 6679 	.byte	-21
   1E82 1E                 6680 	.byte	30
   1E83 FF                 6681 	.byte	-1
   1E84 18                 6682 	.byte	24
   1E85 EE                 6683 	.byte	-18
   1E86 FF                 6684 	.byte	-1
   1E87 15                 6685 	.byte	21
   1E88 E2                 6686 	.byte	-30
   1E89 FF                 6687 	.byte	-1
   1E8A E8                 6688 	.byte	-24
   1E8B 12                 6689 	.byte	18
   1E8C 01                 6690 	.byte	1
                           6691 	.globl _height2RisingLeft6
   1E8D                    6692 _height2RisingLeft6:
   1E8D 00                 6693 	.byte	0
   1E8E 12                 6694 	.byte	18
   1E8F E2                 6695 	.byte	-30
   1E90 FF                 6696 	.byte	-1
   1E91 EE                 6697 	.byte	-18
   1E92 1E                 6698 	.byte	30
   1E93 FF                 6699 	.byte	-1
   1E94 18                 6700 	.byte	24
   1E95 F1                 6701 	.byte	-15
   1E96 FF                 6702 	.byte	-1
   1E97 12                 6703 	.byte	18
   1E98 DF                 6704 	.byte	-33
   1E99 FF                 6705 	.byte	-1
   1E9A E8                 6706 	.byte	-24
   1E9B 12                 6707 	.byte	18
   1E9C FF                 6708 	.byte	-1
   1E9D 48                 6709 	.byte	72
   1E9E 30                 6710 	.byte	48
   1E9F 00                 6711 	.byte	0
   1EA0 A6                 6712 	.byte	-90
   1EA1 EE                 6713 	.byte	-18
   1EA2 FF                 6714 	.byte	-1
   1EA3 48                 6715 	.byte	72
   1EA4 33                 6716 	.byte	51
   1EA5 00                 6717 	.byte	0
   1EA6 D0                 6718 	.byte	-48
   1EA7 BE                 6719 	.byte	-66
   1EA8 FF                 6720 	.byte	-1
   1EA9 48                 6721 	.byte	72
   1EAA 30                 6722 	.byte	48
   1EAB 00                 6723 	.byte	0
   1EAC CA                 6724 	.byte	-54
   1EAD AF                 6725 	.byte	-81
   1EAE FF                 6726 	.byte	-1
   1EAF 48                 6727 	.byte	72
   1EB0 30                 6728 	.byte	48
   1EB1 00                 6729 	.byte	0
   1EB2 E8                 6730 	.byte	-24
   1EB3 12                 6731 	.byte	18
   1EB4 FF                 6732 	.byte	-1
   1EB5 EE                 6733 	.byte	-18
   1EB6 21                 6734 	.byte	33
   1EB7 FF                 6735 	.byte	-1
   1EB8 18                 6736 	.byte	24
   1EB9 EE                 6737 	.byte	-18
   1EBA FF                 6738 	.byte	-1
   1EBB 12                 6739 	.byte	18
   1EBC DF                 6740 	.byte	-33
   1EBD FF                 6741 	.byte	-1
   1EBE E8                 6742 	.byte	-24
   1EBF 12                 6743 	.byte	18
   1EC0 01                 6744 	.byte	1
                           6745 	.globl _height2FallingBack6
   1EC1                    6746 _height2FallingBack6:
   1EC1 00                 6747 	.byte	0
   1EC2 24                 6748 	.byte	36
   1EC3 FD                 6749 	.byte	-3
   1EC4 FF                 6750 	.byte	-1
   1EC5 09                 6751 	.byte	9
   1EC6 27                 6752 	.byte	39
   1EC7 FF                 6753 	.byte	-1
   1EC8 F4                 6754 	.byte	-12
   1EC9 F4                 6755 	.byte	-12
   1ECA FF                 6756 	.byte	-1
   1ECB F7                 6757 	.byte	-9
   1ECC D9                 6758 	.byte	-39
   1ECD FF                 6759 	.byte	-1
   1ECE 0C                 6760 	.byte	12
   1ECF 0C                 6761 	.byte	12
   1ED0 FF                 6762 	.byte	-1
   1ED1 57                 6763 	.byte	87
   1ED2 E8                 6764 	.byte	-24
   1ED3 00                 6765 	.byte	0
   1ED4 B2                 6766 	.byte	-78
   1ED5 3F                 6767 	.byte	63
   1ED6 FF                 6768 	.byte	-1
   1ED7 57                 6769 	.byte	87
   1ED8 E8                 6770 	.byte	-24
   1ED9 00                 6771 	.byte	0
   1EDA 9D                 6772 	.byte	-99
   1EDB 0C                 6773 	.byte	12
   1EDC FF                 6774 	.byte	-1
   1EDD 5A                 6775 	.byte	90
   1EDE E8                 6776 	.byte	-24
   1EDF 00                 6777 	.byte	0
   1EE0 9D                 6778 	.byte	-99
   1EE1 F1                 6779 	.byte	-15
   1EE2 FF                 6780 	.byte	-1
   1EE3 5A                 6781 	.byte	90
   1EE4 E8                 6782 	.byte	-24
   1EE5 00                 6783 	.byte	0
   1EE6 09                 6784 	.byte	9
   1EE7 0C                 6785 	.byte	12
   1EE8 FF                 6786 	.byte	-1
   1EE9 09                 6787 	.byte	9
   1EEA 27                 6788 	.byte	39
   1EEB FF                 6789 	.byte	-1
   1EEC F7                 6790 	.byte	-9
   1EED F4                 6791 	.byte	-12
   1EEE FF                 6792 	.byte	-1
   1EEF F7                 6793 	.byte	-9
   1EF0 D9                 6794 	.byte	-39
   1EF1 FF                 6795 	.byte	-1
   1EF2 09                 6796 	.byte	9
   1EF3 0C                 6797 	.byte	12
   1EF4 01                 6798 	.byte	1
                           6799 	.globl _height2RisingFront6
   1EF5                    6800 _height2RisingFront6:
   1EF5 00                 6801 	.byte	0
   1EF6 06                 6802 	.byte	6
   1EF7 0F                 6803 	.byte	15
   1EF8 FF                 6804 	.byte	-1
   1EF9 09                 6805 	.byte	9
   1EFA 2A                 6806 	.byte	42
   1EFB FF                 6807 	.byte	-1
   1EFC FA                 6808 	.byte	-6
   1EFD F1                 6809 	.byte	-15
   1EFE FF                 6810 	.byte	-1
   1EFF F7                 6811 	.byte	-9
   1F00 D6                 6812 	.byte	-42
   1F01 FF                 6813 	.byte	-1
   1F02 06                 6814 	.byte	6
   1F03 0F                 6815 	.byte	15
   1F04 FF                 6816 	.byte	-1
   1F05 5A                 6817 	.byte	90
   1F06 EB                 6818 	.byte	-21
   1F07 00                 6819 	.byte	0
   1F08 AF                 6820 	.byte	-81
   1F09 3F                 6821 	.byte	63
   1F0A FF                 6822 	.byte	-1
   1F0B 5A                 6823 	.byte	90
   1F0C E8                 6824 	.byte	-24
   1F0D 00                 6825 	.byte	0
   1F0E A0                 6826 	.byte	-96
   1F0F 09                 6827 	.byte	9
   1F10 FF                 6828 	.byte	-1
   1F11 5A                 6829 	.byte	90
   1F12 EB                 6830 	.byte	-21
   1F13 00                 6831 	.byte	0
   1F14 9D                 6832 	.byte	-99
   1F15 EB                 6833 	.byte	-21
   1F16 FF                 6834 	.byte	-1
   1F17 5A                 6835 	.byte	90
   1F18 EE                 6836 	.byte	-18
   1F19 00                 6837 	.byte	0
   1F1A 06                 6838 	.byte	6
   1F1B 0C                 6839 	.byte	12
   1F1C FF                 6840 	.byte	-1
   1F1D 09                 6841 	.byte	9
   1F1E 27                 6842 	.byte	39
   1F1F FF                 6843 	.byte	-1
   1F20 FA                 6844 	.byte	-6
   1F21 F4                 6845 	.byte	-12
   1F22 FF                 6846 	.byte	-1
   1F23 F7                 6847 	.byte	-9
   1F24 D9                 6848 	.byte	-39
   1F25 FF                 6849 	.byte	-1
   1F26 06                 6850 	.byte	6
   1F27 0C                 6851 	.byte	12
   1F28 01                 6852 	.byte	1
                           6853 	.globl _height2FallingFront6
   1F29                    6854 _height2FallingFront6:
   1F29 FF                 6855 	.byte	-1
   1F2A 09                 6856 	.byte	9
   1F2B 2A                 6857 	.byte	42
   1F2C FF                 6858 	.byte	-1
   1F2D 2D                 6859 	.byte	45
   1F2E F4                 6860 	.byte	-12
   1F2F FF                 6861 	.byte	-1
   1F30 F7                 6862 	.byte	-9
   1F31 D9                 6863 	.byte	-39
   1F32 FF                 6864 	.byte	-1
   1F33 D3                 6865 	.byte	-45
   1F34 09                 6866 	.byte	9
   1F35 FF                 6867 	.byte	-1
   1F36 15                 6868 	.byte	21
   1F37 18                 6869 	.byte	24
   1F38 00                 6870 	.byte	0
   1F39 F4                 6871 	.byte	-12
   1F3A 12                 6872 	.byte	18
   1F3B FF                 6873 	.byte	-1
   1F3C 15                 6874 	.byte	21
   1F3D 18                 6875 	.byte	24
   1F3E 00                 6876 	.byte	0
   1F3F 18                 6877 	.byte	24
   1F40 DC                 6878 	.byte	-36
   1F41 FF                 6879 	.byte	-1
   1F42 15                 6880 	.byte	21
   1F43 18                 6881 	.byte	24
   1F44 00                 6882 	.byte	0
   1F45 E2                 6883 	.byte	-30
   1F46 C1                 6884 	.byte	-63
   1F47 FF                 6885 	.byte	-1
   1F48 15                 6886 	.byte	21
   1F49 15                 6887 	.byte	21
   1F4A 00                 6888 	.byte	0
   1F4B D3                 6889 	.byte	-45
   1F4C 0C                 6890 	.byte	12
   1F4D FF                 6891 	.byte	-1
   1F4E 09                 6892 	.byte	9
   1F4F 2A                 6893 	.byte	42
   1F50 FF                 6894 	.byte	-1
   1F51 2D                 6895 	.byte	45
   1F52 F4                 6896 	.byte	-12
   1F53 FF                 6897 	.byte	-1
   1F54 F7                 6898 	.byte	-9
   1F55 D6                 6899 	.byte	-42
   1F56 FF                 6900 	.byte	-1
   1F57 D3                 6901 	.byte	-45
   1F58 0C                 6902 	.byte	12
   1F59 01                 6903 	.byte	1
                           6904 	.globl _height2RisingBack6
   1F5A                    6905 _height2RisingBack6:
   1F5A 00                 6906 	.byte	0
   1F5B 30                 6907 	.byte	48
   1F5C DF                 6908 	.byte	-33
   1F5D FF                 6909 	.byte	-1
   1F5E 09                 6910 	.byte	9
   1F5F 27                 6911 	.byte	39
   1F60 FF                 6912 	.byte	-1
   1F61 2A                 6913 	.byte	42
   1F62 F4                 6914 	.byte	-12
   1F63 FF                 6915 	.byte	-1
   1F64 F7                 6916 	.byte	-9
   1F65 D6                 6917 	.byte	-42
   1F66 FF                 6918 	.byte	-1
   1F67 D6                 6919 	.byte	-42
   1F68 0F                 6920 	.byte	15
   1F69 FF                 6921 	.byte	-1
   1F6A 21                 6922 	.byte	33
   1F6B 15                 6923 	.byte	21
   1F6C 00                 6924 	.byte	0
   1F6D E8                 6925 	.byte	-24
   1F6E 12                 6926 	.byte	18
   1F6F FF                 6927 	.byte	-1
   1F70 21                 6928 	.byte	33
   1F71 15                 6929 	.byte	21
   1F72 00                 6930 	.byte	0
   1F73 09                 6931 	.byte	9
   1F74 DF                 6932 	.byte	-33
   1F75 FF                 6933 	.byte	-1
   1F76 21                 6934 	.byte	33
   1F77 15                 6935 	.byte	21
   1F78 00                 6936 	.byte	0
   1F79 D6                 6937 	.byte	-42
   1F7A C1                 6938 	.byte	-63
   1F7B FF                 6939 	.byte	-1
   1F7C 21                 6940 	.byte	33
   1F7D 18                 6941 	.byte	24
   1F7E 00                 6942 	.byte	0
   1F7F D6                 6943 	.byte	-42
   1F80 0C                 6944 	.byte	12
   1F81 FF                 6945 	.byte	-1
   1F82 09                 6946 	.byte	9
   1F83 27                 6947 	.byte	39
   1F84 FF                 6948 	.byte	-1
   1F85 2A                 6949 	.byte	42
   1F86 F4                 6950 	.byte	-12
   1F87 FF                 6951 	.byte	-1
   1F88 F7                 6952 	.byte	-9
   1F89 D9                 6953 	.byte	-39
   1F8A FF                 6954 	.byte	-1
   1F8B D6                 6955 	.byte	-42
   1F8C 0C                 6956 	.byte	12
   1F8D 01                 6957 	.byte	1
                           6958 	.globl _depth2RollingLeft6
   1F8E                    6959 _depth2RollingLeft6:
   1F8E FF                 6960 	.byte	-1
   1F8F 21                 6961 	.byte	33
   1F90 1E                 6962 	.byte	30
   1F91 FF                 6963 	.byte	-1
   1F92 30                 6964 	.byte	48
   1F93 DF                 6965 	.byte	-33
   1F94 FF                 6966 	.byte	-1
   1F95 DF                 6967 	.byte	-33
   1F96 E2                 6968 	.byte	-30
   1F97 FF                 6969 	.byte	-1
   1F98 D0                 6970 	.byte	-48
   1F99 21                 6971 	.byte	33
   1F9A FF                 6972 	.byte	-1
   1F9B 15                 6973 	.byte	21
   1F9C E5                 6974 	.byte	-27
   1F9D 00                 6975 	.byte	0
   1F9E 0C                 6976 	.byte	12
   1F9F 39                 6977 	.byte	57
   1FA0 FF                 6978 	.byte	-1
   1FA1 15                 6979 	.byte	21
   1FA2 E2                 6980 	.byte	-30
   1FA3 00                 6981 	.byte	0
   1FA4 1B                 6982 	.byte	27
   1FA5 FD                 6983 	.byte	-3
   1FA6 FF                 6984 	.byte	-1
   1FA7 15                 6985 	.byte	21
   1FA8 E2                 6986 	.byte	-30
   1FA9 00                 6987 	.byte	0
   1FAA CA                 6988 	.byte	-54
   1FAB 00                 6989 	.byte	0
   1FAC FF                 6990 	.byte	-1
   1FAD 15                 6991 	.byte	21
   1FAE E2                 6992 	.byte	-30
   1FAF 00                 6993 	.byte	0
   1FB0 D0                 6994 	.byte	-48
   1FB1 24                 6995 	.byte	36
   1FB2 FF                 6996 	.byte	-1
   1FB3 21                 6997 	.byte	33
   1FB4 1B                 6998 	.byte	27
   1FB5 FF                 6999 	.byte	-1
   1FB6 30                 7000 	.byte	48
   1FB7 DF                 7001 	.byte	-33
   1FB8 FF                 7002 	.byte	-1
   1FB9 DF                 7003 	.byte	-33
   1FBA E2                 7004 	.byte	-30
   1FBB FF                 7005 	.byte	-1
   1FBC D0                 7006 	.byte	-48
   1FBD 24                 7007 	.byte	36
   1FBE 01                 7008 	.byte	1
                           7009 	.globl _depth2RollingRight6
   1FBF                    7010 _depth2RollingRight6:
   1FBF 00                 7011 	.byte	0
   1FC0 1E                 7012 	.byte	30
   1FC1 0C                 7013 	.byte	12
   1FC2 FF                 7014 	.byte	-1
   1FC3 EB                 7015 	.byte	-21
   1FC4 1E                 7016 	.byte	30
   1FC5 FF                 7017 	.byte	-1
   1FC6 30                 7018 	.byte	48
   1FC7 DC                 7019 	.byte	-36
   1FC8 FF                 7020 	.byte	-1
   1FC9 15                 7021 	.byte	21
   1FCA E5                 7022 	.byte	-27
   1FCB FF                 7023 	.byte	-1
   1FCC D0                 7024 	.byte	-48
   1FCD 21                 7025 	.byte	33
   1FCE FF                 7026 	.byte	-1
   1FCF 21                 7027 	.byte	33
   1FD0 1E                 7028 	.byte	30
   1FD1 00                 7029 	.byte	0
   1FD2 CA                 7030 	.byte	-54
   1FD3 00                 7031 	.byte	0
   1FD4 FF                 7032 	.byte	-1
   1FD5 21                 7033 	.byte	33
   1FD6 1E                 7034 	.byte	30
   1FD7 00                 7035 	.byte	0
   1FD8 0F                 7036 	.byte	15
   1FD9 BE                 7037 	.byte	-66
   1FDA FF                 7038 	.byte	-1
   1FDB 21                 7039 	.byte	33
   1FDC 1E                 7040 	.byte	30
   1FDD 00                 7041 	.byte	0
   1FDE F4                 7042 	.byte	-12
   1FDF C7                 7043 	.byte	-57
   1FE0 FF                 7044 	.byte	-1
   1FE1 21                 7045 	.byte	33
   1FE2 1B                 7046 	.byte	27
   1FE3 00                 7047 	.byte	0
   1FE4 D0                 7048 	.byte	-48
   1FE5 24                 7049 	.byte	36
   1FE6 FF                 7050 	.byte	-1
   1FE7 EB                 7051 	.byte	-21
   1FE8 1E                 7052 	.byte	30
   1FE9 FF                 7053 	.byte	-1
   1FEA 30                 7054 	.byte	48
   1FEB DC                 7055 	.byte	-36
   1FEC FF                 7056 	.byte	-1
   1FED 15                 7057 	.byte	21
   1FEE E2                 7058 	.byte	-30
   1FEF FF                 7059 	.byte	-1
   1FF0 D0                 7060 	.byte	-48
   1FF1 24                 7061 	.byte	36
   1FF2 01                 7062 	.byte	1
                           7063 	.globl _width2RollingFront6
   1FF3                    7064 _width2RollingFront6:
   1FF3 FF                 7065 	.byte	-1
   1FF4 12                 7066 	.byte	18
   1FF5 54                 7067 	.byte	84
   1FF6 FF                 7068 	.byte	-1
   1FF7 2D                 7069 	.byte	45
   1FF8 F4                 7070 	.byte	-12
   1FF9 FF                 7071 	.byte	-1
   1FFA EE                 7072 	.byte	-18
   1FFB AF                 7073 	.byte	-81
   1FFC FF                 7074 	.byte	-1
   1FFD D3                 7075 	.byte	-45
   1FFE 09                 7076 	.byte	9
   1FFF FF                 7077 	.byte	-1
   2000 0C                 7078 	.byte	12
   2001 0C                 7079 	.byte	12
   2002 00                 7080 	.byte	0
   2003 06                 7081 	.byte	6
   2004 48                 7082 	.byte	72
   2005 FF                 7083 	.byte	-1
   2006 0C                 7084 	.byte	12
   2007 0C                 7085 	.byte	12
   2008 00                 7086 	.byte	0
   2009 21                 7087 	.byte	33
   200A E8                 7088 	.byte	-24
   200B FF                 7089 	.byte	-1
   200C 09                 7090 	.byte	9
   200D 0C                 7091 	.byte	12
   200E 00                 7092 	.byte	0
   200F E5                 7093 	.byte	-27
   2010 A3                 7094 	.byte	-93
   2011 FF                 7095 	.byte	-1
   2012 09                 7096 	.byte	9
   2013 09                 7097 	.byte	9
   2014 00                 7098 	.byte	0
   2015 D6                 7099 	.byte	-42
   2016 0C                 7100 	.byte	12
   2017 FF                 7101 	.byte	-1
   2018 12                 7102 	.byte	18
   2019 54                 7103 	.byte	84
   201A FF                 7104 	.byte	-1
   201B 2A                 7105 	.byte	42
   201C F4                 7106 	.byte	-12
   201D FF                 7107 	.byte	-1
   201E EE                 7108 	.byte	-18
   201F AC                 7109 	.byte	-84
   2020 FF                 7110 	.byte	-1
   2021 D6                 7111 	.byte	-42
   2022 0C                 7112 	.byte	12
   2023 01                 7113 	.byte	1
                           7114 	.globl _width2RollingBack6
   2024                    7115 _width2RollingBack6:
   2024 00                 7116 	.byte	0
   2025 24                 7117 	.byte	36
   2026 FD                 7118 	.byte	-3
   2027 FF                 7119 	.byte	-1
   2028 12                 7120 	.byte	18
   2029 51                 7121 	.byte	81
   202A FF                 7122 	.byte	-1
   202B F4                 7123 	.byte	-12
   202C F4                 7124 	.byte	-12
   202D FF                 7125 	.byte	-1
   202E EE                 7126 	.byte	-18
   202F AF                 7127 	.byte	-81
   2030 FF                 7128 	.byte	-1
   2031 0C                 7129 	.byte	12
   2032 0C                 7130 	.byte	12
   2033 FF                 7131 	.byte	-1
   2034 2A                 7132 	.byte	42
   2035 F4                 7133 	.byte	-12
   2036 00                 7134 	.byte	0
   2037 E8                 7135 	.byte	-24
   2038 5D                 7136 	.byte	93
   2039 FF                 7137 	.byte	-1
   203A 2A                 7138 	.byte	42
   203B F4                 7139 	.byte	-12
   203C 00                 7140 	.byte	0
   203D CA                 7141 	.byte	-54
   203E 00                 7142 	.byte	0
   203F FF                 7143 	.byte	-1
   2040 2D                 7144 	.byte	45
   2041 F4                 7145 	.byte	-12
   2042 00                 7146 	.byte	0
   2043 C1                 7147 	.byte	-63
   2044 BB                 7148 	.byte	-69
   2045 FF                 7149 	.byte	-1
   2046 2D                 7150 	.byte	45
   2047 F4                 7151 	.byte	-12
   2048 00                 7152 	.byte	0
   2049 09                 7153 	.byte	9
   204A 0C                 7154 	.byte	12
   204B FF                 7155 	.byte	-1
   204C 12                 7156 	.byte	18
   204D 51                 7157 	.byte	81
   204E FF                 7158 	.byte	-1
   204F F7                 7159 	.byte	-9
   2050 F4                 7160 	.byte	-12
   2051 FF                 7161 	.byte	-1
   2052 EE                 7162 	.byte	-18
   2053 AF                 7163 	.byte	-81
   2054 FF                 7164 	.byte	-1
   2055 09                 7165 	.byte	9
   2056 0C                 7166 	.byte	12
   2057 01                 7167 	.byte	1
                           7168 	.globl _height1FallingLeft6
   2058                    7169 _height1FallingLeft6:
   2058 FF                 7170 	.byte	-1
   2059 21                 7171 	.byte	33
   205A 1E                 7172 	.byte	30
   205B FF                 7173 	.byte	-1
   205C 18                 7174 	.byte	24
   205D EE                 7175 	.byte	-18
   205E FF                 7176 	.byte	-1
   205F DF                 7177 	.byte	-33
   2060 E5                 7178 	.byte	-27
   2061 FF                 7179 	.byte	-1
   2062 E8                 7180 	.byte	-24
   2063 0F                 7181 	.byte	15
   2064 FF                 7182 	.byte	-1
   2065 15                 7183 	.byte	21
   2066 E5                 7184 	.byte	-27
   2067 00                 7185 	.byte	0
   2068 0C                 7186 	.byte	12
   2069 39                 7187 	.byte	57
   206A FF                 7188 	.byte	-1
   206B 15                 7189 	.byte	21
   206C E2                 7190 	.byte	-30
   206D 00                 7191 	.byte	0
   206E 03                 7192 	.byte	3
   206F 0C                 7193 	.byte	12
   2070 FF                 7194 	.byte	-1
   2071 15                 7195 	.byte	21
   2072 E5                 7196 	.byte	-27
   2073 00                 7197 	.byte	0
   2074 CA                 7198 	.byte	-54
   2075 00                 7199 	.byte	0
   2076 FF                 7200 	.byte	-1
   2077 15                 7201 	.byte	21
   2078 E2                 7202 	.byte	-30
   2079 00                 7203 	.byte	0
   207A E8                 7204 	.byte	-24
   207B 12                 7205 	.byte	18
   207C FF                 7206 	.byte	-1
   207D 21                 7207 	.byte	33
   207E 1B                 7208 	.byte	27
   207F FF                 7209 	.byte	-1
   2080 18                 7210 	.byte	24
   2081 F1                 7211 	.byte	-15
   2082 FF                 7212 	.byte	-1
   2083 DF                 7213 	.byte	-33
   2084 E2                 7214 	.byte	-30
   2085 FF                 7215 	.byte	-1
   2086 E8                 7216 	.byte	-24
   2087 12                 7217 	.byte	18
   2088 01                 7218 	.byte	1
                           7219 	.globl _height1FallingRight6
   2089                    7220 _height1FallingRight6:
   2089 00                 7221 	.byte	0
   208A 1E                 7222 	.byte	30
   208B 0C                 7223 	.byte	12
   208C FF                 7224 	.byte	-1
   208D EB                 7225 	.byte	-21
   208E 1E                 7226 	.byte	30
   208F FF                 7227 	.byte	-1
   2090 18                 7228 	.byte	24
   2091 EE                 7229 	.byte	-18
   2092 FF                 7230 	.byte	-1
   2093 15                 7231 	.byte	21
   2094 E5                 7232 	.byte	-27
   2095 FF                 7233 	.byte	-1
   2096 E8                 7234 	.byte	-24
   2097 0F                 7235 	.byte	15
   2098 FF                 7236 	.byte	-1
   2099 21                 7237 	.byte	33
   209A 1E                 7238 	.byte	30
   209B 00                 7239 	.byte	0
   209C CA                 7240 	.byte	-54
   209D 00                 7241 	.byte	0
   209E FF                 7242 	.byte	-1
   209F 21                 7243 	.byte	33
   20A0 1E                 7244 	.byte	30
   20A1 00                 7245 	.byte	0
   20A2 F7                 7246 	.byte	-9
   20A3 D0                 7247 	.byte	-48
   20A4 FF                 7248 	.byte	-1
   20A5 21                 7249 	.byte	33
   20A6 1E                 7250 	.byte	30
   20A7 00                 7251 	.byte	0
   20A8 F4                 7252 	.byte	-12
   20A9 C7                 7253 	.byte	-57
   20AA FF                 7254 	.byte	-1
   20AB 21                 7255 	.byte	33
   20AC 1B                 7256 	.byte	27
   20AD 00                 7257 	.byte	0
   20AE E8                 7258 	.byte	-24
   20AF 12                 7259 	.byte	18
   20B0 FF                 7260 	.byte	-1
   20B1 EB                 7261 	.byte	-21
   20B2 1E                 7262 	.byte	30
   20B3 FF                 7263 	.byte	-1
   20B4 18                 7264 	.byte	24
   20B5 EE                 7265 	.byte	-18
   20B6 FF                 7266 	.byte	-1
   20B7 15                 7267 	.byte	21
   20B8 E2                 7268 	.byte	-30
   20B9 FF                 7269 	.byte	-1
   20BA E8                 7270 	.byte	-24
   20BB 12                 7271 	.byte	18
   20BC 01                 7272 	.byte	1
                           7273 	.globl _height1FallingBack6
   20BD                    7274 _height1FallingBack6:
   20BD 00                 7275 	.byte	0
   20BE 24                 7276 	.byte	36
   20BF FD                 7277 	.byte	-3
   20C0 FF                 7278 	.byte	-1
   20C1 09                 7279 	.byte	9
   20C2 27                 7280 	.byte	39
   20C3 FF                 7281 	.byte	-1
   20C4 F4                 7282 	.byte	-12
   20C5 F4                 7283 	.byte	-12
   20C6 FF                 7284 	.byte	-1
   20C7 F7                 7285 	.byte	-9
   20C8 D9                 7286 	.byte	-39
   20C9 FF                 7287 	.byte	-1
   20CA 0C                 7288 	.byte	12
   20CB 0C                 7289 	.byte	12
   20CC FF                 7290 	.byte	-1
   20CD 2A                 7291 	.byte	42
   20CE F4                 7292 	.byte	-12
   20CF 00                 7293 	.byte	0
   20D0 DF                 7294 	.byte	-33
   20D1 33                 7295 	.byte	51
   20D2 FF                 7296 	.byte	-1
   20D3 2A                 7297 	.byte	42
   20D4 F4                 7298 	.byte	-12
   20D5 00                 7299 	.byte	0
   20D6 CA                 7300 	.byte	-54
   20D7 00                 7301 	.byte	0
   20D8 FF                 7302 	.byte	-1
   20D9 2D                 7303 	.byte	45
   20DA F4                 7304 	.byte	-12
   20DB 00                 7305 	.byte	0
   20DC CA                 7306 	.byte	-54
   20DD E5                 7307 	.byte	-27
   20DE FF                 7308 	.byte	-1
   20DF 2D                 7309 	.byte	45
   20E0 F4                 7310 	.byte	-12
   20E1 00                 7311 	.byte	0
   20E2 09                 7312 	.byte	9
   20E3 0C                 7313 	.byte	12
   20E4 FF                 7314 	.byte	-1
   20E5 09                 7315 	.byte	9
   20E6 27                 7316 	.byte	39
   20E7 FF                 7317 	.byte	-1
   20E8 F7                 7318 	.byte	-9
   20E9 F4                 7319 	.byte	-12
   20EA FF                 7320 	.byte	-1
   20EB F7                 7321 	.byte	-9
   20EC D9                 7322 	.byte	-39
   20ED FF                 7323 	.byte	-1
   20EE 09                 7324 	.byte	9
   20EF 0C                 7325 	.byte	12
   20F0 01                 7326 	.byte	1
                           7327 	.globl _height1FallingFront6
   20F1                    7328 _height1FallingFront6:
   20F1 FF                 7329 	.byte	-1
   20F2 09                 7330 	.byte	9
   20F3 2A                 7331 	.byte	42
   20F4 FF                 7332 	.byte	-1
   20F5 2D                 7333 	.byte	45
   20F6 F4                 7334 	.byte	-12
   20F7 FF                 7335 	.byte	-1
   20F8 F7                 7336 	.byte	-9
   20F9 D9                 7337 	.byte	-39
   20FA FF                 7338 	.byte	-1
   20FB D3                 7339 	.byte	-45
   20FC 09                 7340 	.byte	9
   20FD FF                 7341 	.byte	-1
   20FE 0C                 7342 	.byte	12
   20FF 0C                 7343 	.byte	12
   2100 00                 7344 	.byte	0
   2101 FD                 7345 	.byte	-3
   2102 1E                 7346 	.byte	30
   2103 FF                 7347 	.byte	-1
   2104 0C                 7348 	.byte	12
   2105 0C                 7349 	.byte	12
   2106 00                 7350 	.byte	0
   2107 21                 7351 	.byte	33
   2108 E8                 7352 	.byte	-24
   2109 FF                 7353 	.byte	-1
   210A 09                 7354 	.byte	9
   210B 0C                 7355 	.byte	12
   210C 00                 7356 	.byte	0
   210D EE                 7357 	.byte	-18
   210E CD                 7358 	.byte	-51
   210F FF                 7359 	.byte	-1
   2110 09                 7360 	.byte	9
   2111 09                 7361 	.byte	9
   2112 00                 7362 	.byte	0
   2113 D6                 7363 	.byte	-42
   2114 0C                 7364 	.byte	12
   2115 FF                 7365 	.byte	-1
   2116 09                 7366 	.byte	9
   2117 2A                 7367 	.byte	42
   2118 FF                 7368 	.byte	-1
   2119 2A                 7369 	.byte	42
   211A F4                 7370 	.byte	-12
   211B FF                 7371 	.byte	-1
   211C F7                 7372 	.byte	-9
   211D D6                 7373 	.byte	-42
   211E FF                 7374 	.byte	-1
   211F D6                 7375 	.byte	-42
   2120 0C                 7376 	.byte	12
   2121 01                 7377 	.byte	1
                           7378 	.globl _height2FallingLeft7
   2122                    7379 _height2FallingLeft7:
   2122 FF                 7380 	.byte	-1
   2123 24                 7381 	.byte	36
   2124 1B                 7382 	.byte	27
   2125 FF                 7383 	.byte	-1
   2126 18                 7384 	.byte	24
   2127 EE                 7385 	.byte	-18
   2128 FF                 7386 	.byte	-1
   2129 DC                 7387 	.byte	-36
   212A E8                 7388 	.byte	-24
   212B FF                 7389 	.byte	-1
   212C E8                 7390 	.byte	-24
   212D 0F                 7391 	.byte	15
   212E FF                 7392 	.byte	-1
   212F 21                 7393 	.byte	33
   2130 C1                 7394 	.byte	-63
   2131 00                 7395 	.byte	0
   2132 03                 7396 	.byte	3
   2133 5A                 7397 	.byte	90
   2134 FF                 7398 	.byte	-1
   2135 21                 7399 	.byte	33
   2136 BE                 7400 	.byte	-66
   2137 00                 7401 	.byte	0
   2138 F7                 7402 	.byte	-9
   2139 30                 7403 	.byte	48
   213A FF                 7404 	.byte	-1
   213B 21                 7405 	.byte	33
   213C BE                 7406 	.byte	-66
   213D 00                 7407 	.byte	0
   213E BB                 7408 	.byte	-69
   213F 2A                 7409 	.byte	42
   2140 FF                 7410 	.byte	-1
   2141 21                 7411 	.byte	33
   2142 BE                 7412 	.byte	-66
   2143 00                 7413 	.byte	0
   2144 E8                 7414 	.byte	-24
   2145 12                 7415 	.byte	18
   2146 FF                 7416 	.byte	-1
   2147 24                 7417 	.byte	36
   2148 18                 7418 	.byte	24
   2149 FF                 7419 	.byte	-1
   214A 18                 7420 	.byte	24
   214B EE                 7421 	.byte	-18
   214C FF                 7422 	.byte	-1
   214D DC                 7423 	.byte	-36
   214E E8                 7424 	.byte	-24
   214F FF                 7425 	.byte	-1
   2150 E8                 7426 	.byte	-24
   2151 12                 7427 	.byte	18
   2152 01                 7428 	.byte	1
                           7429 	.globl _height2RisingRight7
   2153                    7430 _height2RisingRight7:
   2153 00                 7431 	.byte	0
   2154 12                 7432 	.byte	18
   2155 54                 7433 	.byte	84
   2156 FF                 7434 	.byte	-1
   2157 1B                 7435 	.byte	27
   2158 24                 7436 	.byte	36
   2159 FF                 7437 	.byte	-1
   215A 18                 7438 	.byte	24
   215B EE                 7439 	.byte	-18
   215C FF                 7440 	.byte	-1
   215D E5                 7441 	.byte	-27
   215E DC                 7442 	.byte	-36
   215F FF                 7443 	.byte	-1
   2160 E8                 7444 	.byte	-24
   2161 12                 7445 	.byte	18
   2162 FF                 7446 	.byte	-1
   2163 3C                 7447 	.byte	60
   2164 D6                 7448 	.byte	-42
   2165 00                 7449 	.byte	0
   2166 DF                 7450 	.byte	-33
   2167 4E                 7451 	.byte	78
   2168 FF                 7452 	.byte	-1
   2169 3C                 7453 	.byte	60
   216A D6                 7454 	.byte	-42
   216B 00                 7455 	.byte	0
   216C DC                 7456 	.byte	-36
   216D 18                 7457 	.byte	24
   216E FF                 7458 	.byte	-1
   216F 3C                 7459 	.byte	60
   2170 D6                 7460 	.byte	-42
   2171 00                 7461 	.byte	0
   2172 A9                 7462 	.byte	-87
   2173 06                 7463 	.byte	6
   2174 FF                 7464 	.byte	-1
   2175 3C                 7465 	.byte	60
   2176 D6                 7466 	.byte	-42
   2177 00                 7467 	.byte	0
   2178 E8                 7468 	.byte	-24
   2179 12                 7469 	.byte	18
   217A FF                 7470 	.byte	-1
   217B 1B                 7471 	.byte	27
   217C 24                 7472 	.byte	36
   217D FF                 7473 	.byte	-1
   217E 18                 7474 	.byte	24
   217F EE                 7475 	.byte	-18
   2180 FF                 7476 	.byte	-1
   2181 E5                 7477 	.byte	-27
   2182 DC                 7478 	.byte	-36
   2183 FF                 7479 	.byte	-1
   2184 E8                 7480 	.byte	-24
   2185 12                 7481 	.byte	18
   2186 01                 7482 	.byte	1
                           7483 	.globl _height2FallingRight7
   2187                    7484 _height2FallingRight7:
   2187 00                 7485 	.byte	0
   2188 21                 7486 	.byte	33
   2189 0F                 7487 	.byte	15
   218A FF                 7488 	.byte	-1
   218B E8                 7489 	.byte	-24
   218C 1B                 7490 	.byte	27
   218D FF                 7491 	.byte	-1
   218E 18                 7492 	.byte	24
   218F EE                 7493 	.byte	-18
   2190 FF                 7494 	.byte	-1
   2191 18                 7495 	.byte	24
   2192 E8                 7496 	.byte	-24
   2193 FF                 7497 	.byte	-1
   2194 E8                 7498 	.byte	-24
   2195 0F                 7499 	.byte	15
   2196 FF                 7500 	.byte	-1
   2197 3F                 7501 	.byte	63
   2198 45                 7502 	.byte	69
   2199 00                 7503 	.byte	0
   219A A9                 7504 	.byte	-87
   219B D6                 7505 	.byte	-42
   219C FF                 7506 	.byte	-1
   219D 3F                 7507 	.byte	63
   219E 42                 7508 	.byte	66
   219F 00                 7509 	.byte	0
   21A0 D9                 7510 	.byte	-39
   21A1 AC                 7511 	.byte	-84
   21A2 FF                 7512 	.byte	-1
   21A3 3F                 7513 	.byte	63
   21A4 42                 7514 	.byte	66
   21A5 00                 7515 	.byte	0
   21A6 D9                 7516 	.byte	-39
   21A7 A6                 7517 	.byte	-90
   21A8 FF                 7518 	.byte	-1
   21A9 3F                 7519 	.byte	63
   21AA 42                 7520 	.byte	66
   21AB 00                 7521 	.byte	0
   21AC E8                 7522 	.byte	-24
   21AD 12                 7523 	.byte	18
   21AE FF                 7524 	.byte	-1
   21AF E8                 7525 	.byte	-24
   21B0 18                 7526 	.byte	24
   21B1 FF                 7527 	.byte	-1
   21B2 18                 7528 	.byte	24
   21B3 EE                 7529 	.byte	-18
   21B4 FF                 7530 	.byte	-1
   21B5 18                 7531 	.byte	24
   21B6 E8                 7532 	.byte	-24
   21B7 FF                 7533 	.byte	-1
   21B8 E8                 7534 	.byte	-24
   21B9 12                 7535 	.byte	18
   21BA 01                 7536 	.byte	1
                           7537 	.globl _height2RisingLeft7
   21BB                    7538 _height2RisingLeft7:
   21BB 00                 7539 	.byte	0
   21BC 0C                 7540 	.byte	12
   21BD DF                 7541 	.byte	-33
   21BE FF                 7542 	.byte	-1
   21BF F4                 7543 	.byte	-12
   21C0 21                 7544 	.byte	33
   21C1 FF                 7545 	.byte	-1
   21C2 18                 7546 	.byte	24
   21C3 F1                 7547 	.byte	-15
   21C4 FF                 7548 	.byte	-1
   21C5 0C                 7549 	.byte	12
   21C6 DC                 7550 	.byte	-36
   21C7 FF                 7551 	.byte	-1
   21C8 E8                 7552 	.byte	-24
   21C9 12                 7553 	.byte	18
   21CA FF                 7554 	.byte	-1
   21CB 4B                 7555 	.byte	75
   21CC 27                 7556 	.byte	39
   21CD 00                 7557 	.byte	0
   21CE A9                 7558 	.byte	-87
   21CF FA                 7559 	.byte	-6
   21D0 FF                 7560 	.byte	-1
   21D1 4E                 7561 	.byte	78
   21D2 2A                 7562 	.byte	42
   21D3 00                 7563 	.byte	0
   21D4 CA                 7564 	.byte	-54
   21D5 C7                 7565 	.byte	-57
   21D6 FF                 7566 	.byte	-1
   21D7 4E                 7567 	.byte	78
   21D8 27                 7568 	.byte	39
   21D9 00                 7569 	.byte	0
   21DA BE                 7570 	.byte	-66
   21DB B5                 7571 	.byte	-75
   21DC FF                 7572 	.byte	-1
   21DD 4B                 7573 	.byte	75
   21DE 2A                 7574 	.byte	42
   21DF 00                 7575 	.byte	0
   21E0 E8                 7576 	.byte	-24
   21E1 0F                 7577 	.byte	15
   21E2 FF                 7578 	.byte	-1
   21E3 F7                 7579 	.byte	-9
   21E4 24                 7580 	.byte	36
   21E5 FF                 7581 	.byte	-1
   21E6 18                 7582 	.byte	24
   21E7 EE                 7583 	.byte	-18
   21E8 FF                 7584 	.byte	-1
   21E9 09                 7585 	.byte	9
   21EA DF                 7586 	.byte	-33
   21EB FF                 7587 	.byte	-1
   21EC E8                 7588 	.byte	-24
   21ED 0F                 7589 	.byte	15
   21EE 01                 7590 	.byte	1
                           7591 	.globl _height2FallingBack7
   21EF                    7592 _height2FallingBack7:
   21EF 00                 7593 	.byte	0
   21F0 27                 7594 	.byte	39
   21F1 FD                 7595 	.byte	-3
   21F2 FF                 7596 	.byte	-1
   21F3 09                 7597 	.byte	9
   21F4 27                 7598 	.byte	39
   21F5 FF                 7599 	.byte	-1
   21F6 F1                 7600 	.byte	-15
   21F7 F4                 7601 	.byte	-12
   21F8 FF                 7602 	.byte	-1
   21F9 F7                 7603 	.byte	-9
   21FA D9                 7604 	.byte	-39
   21FB FF                 7605 	.byte	-1
   21FC 0F                 7606 	.byte	15
   21FD 0C                 7607 	.byte	12
   21FE FF                 7608 	.byte	-1
   21FF 57                 7609 	.byte	87
   2200 E2                 7610 	.byte	-30
   2201 00                 7611 	.byte	0
   2202 B2                 7612 	.byte	-78
   2203 45                 7613 	.byte	69
   2204 FF                 7614 	.byte	-1
   2205 57                 7615 	.byte	87
   2206 E2                 7616 	.byte	-30
   2207 00                 7617 	.byte	0
   2208 9A                 7618 	.byte	-102
   2209 12                 7619 	.byte	18
   220A FF                 7620 	.byte	-1
   220B 57                 7621 	.byte	87
   220C E5                 7622 	.byte	-27
   220D 00                 7623 	.byte	0
   220E A0                 7624 	.byte	-96
   220F F4                 7625 	.byte	-12
   2210 FF                 7626 	.byte	-1
   2211 57                 7627 	.byte	87
   2212 E2                 7628 	.byte	-30
   2213 00                 7629 	.byte	0
   2214 0F                 7630 	.byte	15
   2215 0C                 7631 	.byte	12
   2216 FF                 7632 	.byte	-1
   2217 09                 7633 	.byte	9
   2218 27                 7634 	.byte	39
   2219 FF                 7635 	.byte	-1
   221A F1                 7636 	.byte	-15
   221B F7                 7637 	.byte	-9
   221C FF                 7638 	.byte	-1
   221D F7                 7639 	.byte	-9
   221E D6                 7640 	.byte	-42
   221F FF                 7641 	.byte	-1
   2220 0F                 7642 	.byte	15
   2221 0C                 7643 	.byte	12
   2222 01                 7644 	.byte	1
                           7645 	.globl _height2RisingFront7
   2223                    7646 _height2RisingFront7:
   2223 00                 7647 	.byte	0
   2224 00                 7648 	.byte	0
   2225 0F                 7649 	.byte	15
   2226 FF                 7650 	.byte	-1
   2227 09                 7651 	.byte	9
   2228 2A                 7652 	.byte	42
   2229 FF                 7653 	.byte	-1
   222A 00                 7654 	.byte	0
   222B F1                 7655 	.byte	-15
   222C FF                 7656 	.byte	-1
   222D F7                 7657 	.byte	-9
   222E D6                 7658 	.byte	-42
   222F FF                 7659 	.byte	-1
   2230 00                 7660 	.byte	0
   2231 0F                 7661 	.byte	15
   2232 FF                 7662 	.byte	-1
   2233 5A                 7663 	.byte	90
   2234 F1                 7664 	.byte	-15
   2235 00                 7665 	.byte	0
   2236 AF                 7666 	.byte	-81
   2237 39                 7667 	.byte	57
   2238 FF                 7668 	.byte	-1
   2239 5A                 7669 	.byte	90
   223A EE                 7670 	.byte	-18
   223B 00                 7671 	.byte	0
   223C A6                 7672 	.byte	-90
   223D 03                 7673 	.byte	3
   223E FF                 7674 	.byte	-1
   223F 5D                 7675 	.byte	93
   2240 EE                 7676 	.byte	-18
   2241 00                 7677 	.byte	0
   2242 9A                 7678 	.byte	-102
   2243 E8                 7679 	.byte	-24
   2244 FF                 7680 	.byte	-1
   2245 5D                 7681 	.byte	93
   2246 F1                 7682 	.byte	-15
   2247 00                 7683 	.byte	0
   2248 FD                 7684 	.byte	-3
   2249 0F                 7685 	.byte	15
   224A FF                 7686 	.byte	-1
   224B 09                 7687 	.byte	9
   224C 27                 7688 	.byte	39
   224D FF                 7689 	.byte	-1
   224E 03                 7690 	.byte	3
   224F F1                 7691 	.byte	-15
   2250 FF                 7692 	.byte	-1
   2251 F7                 7693 	.byte	-9
   2252 D9                 7694 	.byte	-39
   2253 FF                 7695 	.byte	-1
   2254 FD                 7696 	.byte	-3
   2255 0F                 7697 	.byte	15
   2256 01                 7698 	.byte	1
                           7699 	.globl _height2FallingFront7
   2257                    7700 _height2FallingFront7:
   2257 FF                 7701 	.byte	-1
   2258 09                 7702 	.byte	9
   2259 2A                 7703 	.byte	42
   225A FF                 7704 	.byte	-1
   225B 2D                 7705 	.byte	45
   225C F4                 7706 	.byte	-12
   225D FF                 7707 	.byte	-1
   225E F7                 7708 	.byte	-9
   225F D9                 7709 	.byte	-39
   2260 FF                 7710 	.byte	-1
   2261 D3                 7711 	.byte	-45
   2262 09                 7712 	.byte	9
   2263 FF                 7713 	.byte	-1
   2264 09                 7714 	.byte	9
   2265 1E                 7715 	.byte	30
   2266 00                 7716 	.byte	0
   2267 00                 7717 	.byte	0
   2268 0C                 7718 	.byte	12
   2269 FF                 7719 	.byte	-1
   226A 09                 7720 	.byte	9
   226B 1E                 7721 	.byte	30
   226C 00                 7722 	.byte	0
   226D 24                 7723 	.byte	36
   226E D6                 7724 	.byte	-42
   226F FF                 7725 	.byte	-1
   2270 09                 7726 	.byte	9
   2271 1E                 7727 	.byte	30
   2272 00                 7728 	.byte	0
   2273 EE                 7729 	.byte	-18
   2274 BB                 7730 	.byte	-69
   2275 FF                 7731 	.byte	-1
   2276 09                 7732 	.byte	9
   2277 1B                 7733 	.byte	27
   2278 00                 7734 	.byte	0
   2279 D3                 7735 	.byte	-45
   227A 0C                 7736 	.byte	12
   227B FF                 7737 	.byte	-1
   227C 09                 7738 	.byte	9
   227D 2A                 7739 	.byte	42
   227E FF                 7740 	.byte	-1
   227F 2D                 7741 	.byte	45
   2280 F4                 7742 	.byte	-12
   2281 FF                 7743 	.byte	-1
   2282 F7                 7744 	.byte	-9
   2283 D6                 7745 	.byte	-42
   2284 FF                 7746 	.byte	-1
   2285 D3                 7747 	.byte	-45
   2286 0C                 7748 	.byte	12
   2287 01                 7749 	.byte	1
                           7750 	.globl _height2RisingBack7
   2288                    7751 _height2RisingBack7:
   2288 00                 7752 	.byte	0
   2289 30                 7753 	.byte	48
   228A DF                 7754 	.byte	-33
   228B FF                 7755 	.byte	-1
   228C 09                 7756 	.byte	9
   228D 27                 7757 	.byte	39
   228E FF                 7758 	.byte	-1
   228F 27                 7759 	.byte	39
   2290 F4                 7760 	.byte	-12
   2291 FF                 7761 	.byte	-1
   2292 F7                 7762 	.byte	-9
   2293 D6                 7763 	.byte	-42
   2294 FF                 7764 	.byte	-1
   2295 D9                 7765 	.byte	-39
   2296 0F                 7766 	.byte	15
   2297 FF                 7767 	.byte	-1
   2298 2D                 7768 	.byte	45
   2299 12                 7769 	.byte	18
   229A 00                 7770 	.byte	0
   229B DC                 7771 	.byte	-36
   229C 15                 7772 	.byte	21
   229D FF                 7773 	.byte	-1
   229E 2D                 7774 	.byte	45
   229F 12                 7775 	.byte	18
   22A0 00                 7776 	.byte	0
   22A1 FA                 7777 	.byte	-6
   22A2 E2                 7778 	.byte	-30
   22A3 FF                 7779 	.byte	-1
   22A4 2D                 7780 	.byte	45
   22A5 0F                 7781 	.byte	15
   22A6 00                 7782 	.byte	0
   22A7 CA                 7783 	.byte	-54
   22A8 C7                 7784 	.byte	-57
   22A9 FF                 7785 	.byte	-1
   22AA 2D                 7786 	.byte	45
   22AB 12                 7787 	.byte	18
   22AC 00                 7788 	.byte	0
   22AD D9                 7789 	.byte	-39
   22AE 0F                 7790 	.byte	15
   22AF FF                 7791 	.byte	-1
   22B0 09                 7792 	.byte	9
   22B1 27                 7793 	.byte	39
   22B2 FF                 7794 	.byte	-1
   22B3 27                 7795 	.byte	39
   22B4 F1                 7796 	.byte	-15
   22B5 FF                 7797 	.byte	-1
   22B6 F7                 7798 	.byte	-9
   22B7 D9                 7799 	.byte	-39
   22B8 FF                 7800 	.byte	-1
   22B9 D9                 7801 	.byte	-39
   22BA 0F                 7802 	.byte	15
   22BB 01                 7803 	.byte	1
                           7804 	.globl _depth2RollingLeft7
   22BC                    7805 _depth2RollingLeft7:
   22BC FF                 7806 	.byte	-1
   22BD 24                 7807 	.byte	36
   22BE 1B                 7808 	.byte	27
   22BF FF                 7809 	.byte	-1
   22C0 30                 7810 	.byte	48
   22C1 DF                 7811 	.byte	-33
   22C2 FF                 7812 	.byte	-1
   22C3 DC                 7813 	.byte	-36
   22C4 E5                 7814 	.byte	-27
   22C5 FF                 7815 	.byte	-1
   22C6 D0                 7816 	.byte	-48
   22C7 21                 7817 	.byte	33
   22C8 FF                 7818 	.byte	-1
   22C9 12                 7819 	.byte	18
   22CA E2                 7820 	.byte	-30
   22CB 00                 7821 	.byte	0
   22CC 12                 7822 	.byte	18
   22CD 39                 7823 	.byte	57
   22CE FF                 7824 	.byte	-1
   22CF 12                 7825 	.byte	18
   22D0 DF                 7826 	.byte	-33
   22D1 00                 7827 	.byte	0
   22D2 1E                 7828 	.byte	30
   22D3 00                 7829 	.byte	0
   22D4 FF                 7830 	.byte	-1
   22D5 12                 7831 	.byte	18
   22D6 DC                 7832 	.byte	-36
   22D7 00                 7833 	.byte	0
   22D8 CA                 7834 	.byte	-54
   22D9 09                 7835 	.byte	9
   22DA FF                 7836 	.byte	-1
   22DB 12                 7837 	.byte	18
   22DC DF                 7838 	.byte	-33
   22DD 00                 7839 	.byte	0
   22DE D0                 7840 	.byte	-48
   22DF 24                 7841 	.byte	36
   22E0 FF                 7842 	.byte	-1
   22E1 24                 7843 	.byte	36
   22E2 18                 7844 	.byte	24
   22E3 FF                 7845 	.byte	-1
   22E4 30                 7846 	.byte	48
   22E5 DC                 7847 	.byte	-36
   22E6 FF                 7848 	.byte	-1
   22E7 DC                 7849 	.byte	-36
   22E8 E8                 7850 	.byte	-24
   22E9 FF                 7851 	.byte	-1
   22EA D0                 7852 	.byte	-48
   22EB 24                 7853 	.byte	36
   22EC 01                 7854 	.byte	1
                           7855 	.globl _depth2RollingRight7
   22ED                    7856 _depth2RollingRight7:
   22ED 00                 7857 	.byte	0
   22EE 21                 7858 	.byte	33
   22EF 0F                 7859 	.byte	15
   22F0 FF                 7860 	.byte	-1
   22F1 E8                 7861 	.byte	-24
   22F2 1B                 7862 	.byte	27
   22F3 FF                 7863 	.byte	-1
   22F4 30                 7864 	.byte	48
   22F5 DC                 7865 	.byte	-36
   22F6 FF                 7866 	.byte	-1
   22F7 18                 7867 	.byte	24
   22F8 E8                 7868 	.byte	-24
   22F9 FF                 7869 	.byte	-1
   22FA D0                 7870 	.byte	-48
   22FB 21                 7871 	.byte	33
   22FC FF                 7872 	.byte	-1
   22FD 21                 7873 	.byte	33
   22FE 24                 7874 	.byte	36
   22FF 00                 7875 	.byte	0
   2300 C7                 7876 	.byte	-57
   2301 F7                 7877 	.byte	-9
   2302 FF                 7878 	.byte	-1
   2303 1E                 7879 	.byte	30
   2304 21                 7880 	.byte	33
   2305 00                 7881 	.byte	0
   2306 12                 7882 	.byte	18
   2307 BB                 7883 	.byte	-69
   2308 FF                 7884 	.byte	-1
   2309 1E                 7885 	.byte	30
   230A 21                 7886 	.byte	33
   230B 00                 7887 	.byte	0
   230C FA                 7888 	.byte	-6
   230D C7                 7889 	.byte	-57
   230E FF                 7890 	.byte	-1
   230F 21                 7891 	.byte	33
   2310 21                 7892 	.byte	33
   2311 00                 7893 	.byte	0
   2312 D0                 7894 	.byte	-48
   2313 24                 7895 	.byte	36
   2314 FF                 7896 	.byte	-1
   2315 E5                 7897 	.byte	-27
   2316 18                 7898 	.byte	24
   2317 FF                 7899 	.byte	-1
   2318 30                 7900 	.byte	48
   2319 DC                 7901 	.byte	-36
   231A FF                 7902 	.byte	-1
   231B 1B                 7903 	.byte	27
   231C E8                 7904 	.byte	-24
   231D FF                 7905 	.byte	-1
   231E D0                 7906 	.byte	-48
   231F 24                 7907 	.byte	36
   2320 01                 7908 	.byte	1
                           7909 	.globl _width2RollingFront7
   2321                    7910 _width2RollingFront7:
   2321 FF                 7911 	.byte	-1
   2322 12                 7912 	.byte	18
   2323 54                 7913 	.byte	84
   2324 FF                 7914 	.byte	-1
   2325 2D                 7915 	.byte	45
   2326 F4                 7916 	.byte	-12
   2327 FF                 7917 	.byte	-1
   2328 EE                 7918 	.byte	-18
   2329 AF                 7919 	.byte	-81
   232A FF                 7920 	.byte	-1
   232B D3                 7921 	.byte	-45
   232C 09                 7922 	.byte	9
   232D FF                 7923 	.byte	-1
   232E 06                 7924 	.byte	6
   232F 0F                 7925 	.byte	15
   2330 00                 7926 	.byte	0
   2331 0C                 7927 	.byte	12
   2332 45                 7928 	.byte	69
   2333 FF                 7929 	.byte	-1
   2334 06                 7930 	.byte	6
   2335 0F                 7931 	.byte	15
   2336 00                 7932 	.byte	0
   2337 27                 7933 	.byte	39
   2338 E5                 7934 	.byte	-27
   2339 FF                 7935 	.byte	-1
   233A 06                 7936 	.byte	6
   233B 0F                 7937 	.byte	15
   233C 00                 7938 	.byte	0
   233D E8                 7939 	.byte	-24
   233E A0                 7940 	.byte	-96
   233F FF                 7941 	.byte	-1
   2340 06                 7942 	.byte	6
   2341 0C                 7943 	.byte	12
   2342 00                 7944 	.byte	0
   2343 D3                 7945 	.byte	-45
   2344 0C                 7946 	.byte	12
   2345 FF                 7947 	.byte	-1
   2346 12                 7948 	.byte	18
   2347 54                 7949 	.byte	84
   2348 FF                 7950 	.byte	-1
   2349 2D                 7951 	.byte	45
   234A F4                 7952 	.byte	-12
   234B FF                 7953 	.byte	-1
   234C EE                 7954 	.byte	-18
   234D AC                 7955 	.byte	-84
   234E FF                 7956 	.byte	-1
   234F D3                 7957 	.byte	-45
   2350 0C                 7958 	.byte	12
   2351 01                 7959 	.byte	1
                           7960 	.globl _width2RollingBack7
   2352                    7961 _width2RollingBack7:
   2352 00                 7962 	.byte	0
   2353 27                 7963 	.byte	39
   2354 FD                 7964 	.byte	-3
   2355 FF                 7965 	.byte	-1
   2356 12                 7966 	.byte	18
   2357 51                 7967 	.byte	81
   2358 FF                 7968 	.byte	-1
   2359 F1                 7969 	.byte	-15
   235A F4                 7970 	.byte	-12
   235B FF                 7971 	.byte	-1
   235C EE                 7972 	.byte	-18
   235D AF                 7973 	.byte	-81
   235E FF                 7974 	.byte	-1
   235F 0F                 7975 	.byte	15
   2360 0C                 7976 	.byte	12
   2361 FF                 7977 	.byte	-1
   2362 2D                 7978 	.byte	45
   2363 F1                 7979 	.byte	-15
   2364 00                 7980 	.byte	0
   2365 E5                 7981 	.byte	-27
   2366 60                 7982 	.byte	96
   2367 FF                 7983 	.byte	-1
   2368 2D                 7984 	.byte	45
   2369 F1                 7985 	.byte	-15
   236A 00                 7986 	.byte	0
   236B C4                 7987 	.byte	-60
   236C 03                 7988 	.byte	3
   236D FF                 7989 	.byte	-1
   236E 2A                 7990 	.byte	42
   236F F1                 7991 	.byte	-15
   2370 00                 7992 	.byte	0
   2371 C4                 7993 	.byte	-60
   2372 BE                 7994 	.byte	-66
   2373 FF                 7995 	.byte	-1
   2374 2A                 7996 	.byte	42
   2375 F1                 7997 	.byte	-15
   2376 00                 7998 	.byte	0
   2377 12                 7999 	.byte	18
   2378 0C                 8000 	.byte	12
   2379 FF                 8001 	.byte	-1
   237A 12                 8002 	.byte	18
   237B 51                 8003 	.byte	81
   237C FF                 8004 	.byte	-1
   237D EE                 8005 	.byte	-18
   237E F4                 8006 	.byte	-12
   237F FF                 8007 	.byte	-1
   2380 EE                 8008 	.byte	-18
   2381 AF                 8009 	.byte	-81
   2382 FF                 8010 	.byte	-1
   2383 12                 8011 	.byte	18
   2384 0C                 8012 	.byte	12
   2385 01                 8013 	.byte	1
                           8014 	.globl _height1FallingLeft7
   2386                    8015 _height1FallingLeft7:
   2386 FF                 8016 	.byte	-1
   2387 24                 8017 	.byte	36
   2388 1B                 8018 	.byte	27
   2389 FF                 8019 	.byte	-1
   238A 18                 8020 	.byte	24
   238B EE                 8021 	.byte	-18
   238C FF                 8022 	.byte	-1
   238D DC                 8023 	.byte	-36
   238E E8                 8024 	.byte	-24
   238F FF                 8025 	.byte	-1
   2390 E8                 8026 	.byte	-24
   2391 0F                 8027 	.byte	15
   2392 FF                 8028 	.byte	-1
   2393 12                 8029 	.byte	18
   2394 E2                 8030 	.byte	-30
   2395 00                 8031 	.byte	0
   2396 12                 8032 	.byte	18
   2397 39                 8033 	.byte	57
   2398 FF                 8034 	.byte	-1
   2399 12                 8035 	.byte	18
   239A DF                 8036 	.byte	-33
   239B 00                 8037 	.byte	0
   239C 06                 8038 	.byte	6
   239D 0F                 8039 	.byte	15
   239E FF                 8040 	.byte	-1
   239F 12                 8041 	.byte	18
   23A0 DF                 8042 	.byte	-33
   23A1 00                 8043 	.byte	0
   23A2 CA                 8044 	.byte	-54
   23A3 09                 8045 	.byte	9
   23A4 FF                 8046 	.byte	-1
   23A5 12                 8047 	.byte	18
   23A6 DF                 8048 	.byte	-33
   23A7 00                 8049 	.byte	0
   23A8 E8                 8050 	.byte	-24
   23A9 12                 8051 	.byte	18
   23AA FF                 8052 	.byte	-1
   23AB 24                 8053 	.byte	36
   23AC 18                 8054 	.byte	24
   23AD FF                 8055 	.byte	-1
   23AE 18                 8056 	.byte	24
   23AF EE                 8057 	.byte	-18
   23B0 FF                 8058 	.byte	-1
   23B1 DC                 8059 	.byte	-36
   23B2 E8                 8060 	.byte	-24
   23B3 FF                 8061 	.byte	-1
   23B4 E8                 8062 	.byte	-24
   23B5 12                 8063 	.byte	18
   23B6 01                 8064 	.byte	1
                           8065 	.globl _height1FallingRight7
   23B7                    8066 _height1FallingRight7:
   23B7 00                 8067 	.byte	0
   23B8 21                 8068 	.byte	33
   23B9 0F                 8069 	.byte	15
   23BA FF                 8070 	.byte	-1
   23BB E8                 8071 	.byte	-24
   23BC 1B                 8072 	.byte	27
   23BD FF                 8073 	.byte	-1
   23BE 18                 8074 	.byte	24
   23BF EE                 8075 	.byte	-18
   23C0 FF                 8076 	.byte	-1
   23C1 18                 8077 	.byte	24
   23C2 E8                 8078 	.byte	-24
   23C3 FF                 8079 	.byte	-1
   23C4 E8                 8080 	.byte	-24
   23C5 0F                 8081 	.byte	15
   23C6 FF                 8082 	.byte	-1
   23C7 21                 8083 	.byte	33
   23C8 24                 8084 	.byte	36
   23C9 00                 8085 	.byte	0
   23CA C7                 8086 	.byte	-57
   23CB F7                 8087 	.byte	-9
   23CC FF                 8088 	.byte	-1
   23CD 1E                 8089 	.byte	30
   23CE 21                 8090 	.byte	33
   23CF 00                 8091 	.byte	0
   23D0 FA                 8092 	.byte	-6
   23D1 CD                 8093 	.byte	-51
   23D2 FF                 8094 	.byte	-1
   23D3 1E                 8095 	.byte	30
   23D4 21                 8096 	.byte	33
   23D5 00                 8097 	.byte	0
   23D6 FA                 8098 	.byte	-6
   23D7 C7                 8099 	.byte	-57
   23D8 FF                 8100 	.byte	-1
   23D9 21                 8101 	.byte	33
   23DA 21                 8102 	.byte	33
   23DB 00                 8103 	.byte	0
   23DC E8                 8104 	.byte	-24
   23DD 12                 8105 	.byte	18
   23DE FF                 8106 	.byte	-1
   23DF E5                 8107 	.byte	-27
   23E0 18                 8108 	.byte	24
   23E1 FF                 8109 	.byte	-1
   23E2 18                 8110 	.byte	24
   23E3 EE                 8111 	.byte	-18
   23E4 FF                 8112 	.byte	-1
   23E5 1B                 8113 	.byte	27
   23E6 E8                 8114 	.byte	-24
   23E7 FF                 8115 	.byte	-1
   23E8 E8                 8116 	.byte	-24
   23E9 12                 8117 	.byte	18
   23EA 01                 8118 	.byte	1
                           8119 	.globl _height1FallingBack7
   23EB                    8120 _height1FallingBack7:
   23EB 00                 8121 	.byte	0
   23EC 27                 8122 	.byte	39
   23ED FD                 8123 	.byte	-3
   23EE FF                 8124 	.byte	-1
   23EF 09                 8125 	.byte	9
   23F0 27                 8126 	.byte	39
   23F1 FF                 8127 	.byte	-1
   23F2 F1                 8128 	.byte	-15
   23F3 F4                 8129 	.byte	-12
   23F4 FF                 8130 	.byte	-1
   23F5 F7                 8131 	.byte	-9
   23F6 D9                 8132 	.byte	-39
   23F7 FF                 8133 	.byte	-1
   23F8 0F                 8134 	.byte	15
   23F9 0C                 8135 	.byte	12
   23FA FF                 8136 	.byte	-1
   23FB 2D                 8137 	.byte	45
   23FC F1                 8138 	.byte	-15
   23FD 00                 8139 	.byte	0
   23FE DC                 8140 	.byte	-36
   23FF 36                 8141 	.byte	54
   2400 FF                 8142 	.byte	-1
   2401 2D                 8143 	.byte	45
   2402 F1                 8144 	.byte	-15
   2403 00                 8145 	.byte	0
   2404 C4                 8146 	.byte	-60
   2405 03                 8147 	.byte	3
   2406 FF                 8148 	.byte	-1
   2407 2A                 8149 	.byte	42
   2408 F1                 8150 	.byte	-15
   2409 00                 8151 	.byte	0
   240A CD                 8152 	.byte	-51
   240B E8                 8153 	.byte	-24
   240C FF                 8154 	.byte	-1
   240D 2A                 8155 	.byte	42
   240E F1                 8156 	.byte	-15
   240F 00                 8157 	.byte	0
   2410 12                 8158 	.byte	18
   2411 0C                 8159 	.byte	12
   2412 FF                 8160 	.byte	-1
   2413 09                 8161 	.byte	9
   2414 27                 8162 	.byte	39
   2415 FF                 8163 	.byte	-1
   2416 EE                 8164 	.byte	-18
   2417 F4                 8165 	.byte	-12
   2418 FF                 8166 	.byte	-1
   2419 F7                 8167 	.byte	-9
   241A D9                 8168 	.byte	-39
   241B FF                 8169 	.byte	-1
   241C 12                 8170 	.byte	18
   241D 0C                 8171 	.byte	12
   241E 01                 8172 	.byte	1
                           8173 	.globl _height1FallingFront7
   241F                    8174 _height1FallingFront7:
   241F FF                 8175 	.byte	-1
   2420 09                 8176 	.byte	9
   2421 2A                 8177 	.byte	42
   2422 FF                 8178 	.byte	-1
   2423 2D                 8179 	.byte	45
   2424 F4                 8180 	.byte	-12
   2425 FF                 8181 	.byte	-1
   2426 F7                 8182 	.byte	-9
   2427 D9                 8183 	.byte	-39
   2428 FF                 8184 	.byte	-1
   2429 D3                 8185 	.byte	-45
   242A 09                 8186 	.byte	9
   242B FF                 8187 	.byte	-1
   242C 06                 8188 	.byte	6
   242D 0F                 8189 	.byte	15
   242E 00                 8190 	.byte	0
   242F 03                 8191 	.byte	3
   2430 1B                 8192 	.byte	27
   2431 FF                 8193 	.byte	-1
   2432 06                 8194 	.byte	6
   2433 0F                 8195 	.byte	15
   2434 00                 8196 	.byte	0
   2435 27                 8197 	.byte	39
   2436 E5                 8198 	.byte	-27
   2437 FF                 8199 	.byte	-1
   2438 06                 8200 	.byte	6
   2439 0F                 8201 	.byte	15
   243A 00                 8202 	.byte	0
   243B F1                 8203 	.byte	-15
   243C CA                 8204 	.byte	-54
   243D FF                 8205 	.byte	-1
   243E 06                 8206 	.byte	6
   243F 0C                 8207 	.byte	12
   2440 00                 8208 	.byte	0
   2441 D3                 8209 	.byte	-45
   2442 0C                 8210 	.byte	12
   2443 FF                 8211 	.byte	-1
   2444 09                 8212 	.byte	9
   2445 2A                 8213 	.byte	42
   2446 FF                 8214 	.byte	-1
   2447 2D                 8215 	.byte	45
   2448 F4                 8216 	.byte	-12
   2449 FF                 8217 	.byte	-1
   244A F7                 8218 	.byte	-9
   244B D6                 8219 	.byte	-42
   244C FF                 8220 	.byte	-1
   244D D3                 8221 	.byte	-45
   244E 0C                 8222 	.byte	12
   244F 01                 8223 	.byte	1
                           8224 	.globl _height2FallingLeft8
   2450                    8225 _height2FallingLeft8:
   2450 FF                 8226 	.byte	-1
   2451 27                 8227 	.byte	39
   2452 15                 8228 	.byte	21
   2453 FF                 8229 	.byte	-1
   2454 18                 8230 	.byte	24
   2455 EE                 8231 	.byte	-18
   2456 FF                 8232 	.byte	-1
   2457 D9                 8233 	.byte	-39
   2458 EE                 8234 	.byte	-18
   2459 FF                 8235 	.byte	-1
   245A E8                 8236 	.byte	-24
   245B 0F                 8237 	.byte	15
   245C FF                 8238 	.byte	-1
   245D 18                 8239 	.byte	24
   245E BB                 8240 	.byte	-69
   245F 00                 8241 	.byte	0
   2460 0F                 8242 	.byte	15
   2461 5A                 8243 	.byte	90
   2462 FF                 8244 	.byte	-1
   2463 18                 8245 	.byte	24
   2464 BB                 8246 	.byte	-69
   2465 00                 8247 	.byte	0
   2466 00                 8248 	.byte	0
   2467 33                 8249 	.byte	51
   2468 FF                 8250 	.byte	-1
   2469 18                 8251 	.byte	24
   246A BB                 8252 	.byte	-69
   246B 00                 8253 	.byte	0
   246C C1                 8254 	.byte	-63
   246D 33                 8255 	.byte	51
   246E FF                 8256 	.byte	-1
   246F 18                 8257 	.byte	24
   2470 B8                 8258 	.byte	-72
   2471 00                 8259 	.byte	0
   2472 E8                 8260 	.byte	-24
   2473 12                 8261 	.byte	18
   2474 FF                 8262 	.byte	-1
   2475 27                 8263 	.byte	39
   2476 15                 8264 	.byte	21
   2477 FF                 8265 	.byte	-1
   2478 18                 8266 	.byte	24
   2479 EE                 8267 	.byte	-18
   247A FF                 8268 	.byte	-1
   247B D9                 8269 	.byte	-39
   247C EB                 8270 	.byte	-21
   247D FF                 8271 	.byte	-1
   247E E8                 8272 	.byte	-24
   247F 12                 8273 	.byte	18
   2480 01                 8274 	.byte	1
                           8275 	.globl _height2RisingRight8
   2481                    8276 _height2RisingRight8:
   2481 00                 8277 	.byte	0
   2482 12                 8278 	.byte	18
   2483 54                 8279 	.byte	84
   2484 FF                 8280 	.byte	-1
   2485 18                 8281 	.byte	24
   2486 27                 8282 	.byte	39
   2487 FF                 8283 	.byte	-1
   2488 18                 8284 	.byte	24
   2489 EE                 8285 	.byte	-18
   248A FF                 8286 	.byte	-1
   248B E8                 8287 	.byte	-24
   248C D9                 8288 	.byte	-39
   248D FF                 8289 	.byte	-1
   248E E8                 8290 	.byte	-24
   248F 12                 8291 	.byte	18
   2490 FF                 8292 	.byte	-1
   2491 42                 8293 	.byte	66
   2492 DF                 8294 	.byte	-33
   2493 00                 8295 	.byte	0
   2494 D6                 8296 	.byte	-42
   2495 48                 8297 	.byte	72
   2496 FF                 8298 	.byte	-1
   2497 3F                 8299 	.byte	63
   2498 DF                 8300 	.byte	-33
   2499 00                 8301 	.byte	0
   249A D9                 8302 	.byte	-39
   249B 0F                 8303 	.byte	15
   249C FF                 8304 	.byte	-1
   249D 3F                 8305 	.byte	63
   249E DF                 8306 	.byte	-33
   249F 00                 8307 	.byte	0
   24A0 A9                 8308 	.byte	-87
   24A1 FA                 8309 	.byte	-6
   24A2 FF                 8310 	.byte	-1
   24A3 42                 8311 	.byte	66
   24A4 DF                 8312 	.byte	-33
   24A5 00                 8313 	.byte	0
   24A6 E8                 8314 	.byte	-24
   24A7 12                 8315 	.byte	18
   24A8 FF                 8316 	.byte	-1
   24A9 15                 8317 	.byte	21
   24AA 27                 8318 	.byte	39
   24AB FF                 8319 	.byte	-1
   24AC 18                 8320 	.byte	24
   24AD EE                 8321 	.byte	-18
   24AE FF                 8322 	.byte	-1
   24AF EB                 8323 	.byte	-21
   24B0 D9                 8324 	.byte	-39
   24B1 FF                 8325 	.byte	-1
   24B2 E8                 8326 	.byte	-24
   24B3 12                 8327 	.byte	18
   24B4 01                 8328 	.byte	1
                           8329 	.globl _height2FallingRight8
   24B5                    8330 _height2FallingRight8:
   24B5 00                 8331 	.byte	0
   24B6 27                 8332 	.byte	39
   24B7 15                 8333 	.byte	21
   24B8 FF                 8334 	.byte	-1
   24B9 E2                 8335 	.byte	-30
   24BA 15                 8336 	.byte	21
   24BB FF                 8337 	.byte	-1
   24BC 18                 8338 	.byte	24
   24BD EE                 8339 	.byte	-18
   24BE FF                 8340 	.byte	-1
   24BF 1E                 8341 	.byte	30
   24C0 EB                 8342 	.byte	-21
   24C1 FF                 8343 	.byte	-1
   24C2 E8                 8344 	.byte	-24
   24C3 12                 8345 	.byte	18
   24C4 FF                 8346 	.byte	-1
   24C5 36                 8347 	.byte	54
   24C6 48                 8348 	.byte	72
   24C7 00                 8349 	.byte	0
   24C8 AC                 8350 	.byte	-84
   24C9 CD                 8351 	.byte	-51
   24CA FF                 8352 	.byte	-1
   24CB 36                 8353 	.byte	54
   24CC 48                 8354 	.byte	72
   24CD 00                 8355 	.byte	0
   24CE E2                 8356 	.byte	-30
   24CF A6                 8357 	.byte	-90
   24D0 FF                 8358 	.byte	-1
   24D1 36                 8359 	.byte	54
   24D2 48                 8360 	.byte	72
   24D3 00                 8361 	.byte	0
   24D4 E8                 8362 	.byte	-24
   24D5 A3                 8363 	.byte	-93
   24D6 FF                 8364 	.byte	-1
   24D7 36                 8365 	.byte	54
   24D8 48                 8366 	.byte	72
   24D9 00                 8367 	.byte	0
   24DA E8                 8368 	.byte	-24
   24DB 12                 8369 	.byte	18
   24DC FF                 8370 	.byte	-1
   24DD E2                 8371 	.byte	-30
   24DE 15                 8372 	.byte	21
   24DF FF                 8373 	.byte	-1
   24E0 18                 8374 	.byte	24
   24E1 EE                 8375 	.byte	-18
   24E2 FF                 8376 	.byte	-1
   24E3 1E                 8377 	.byte	30
   24E4 EB                 8378 	.byte	-21
   24E5 FF                 8379 	.byte	-1
   24E6 E8                 8380 	.byte	-24
   24E7 12                 8381 	.byte	18
   24E8 01                 8382 	.byte	1
                           8383 	.globl _height2RisingLeft8
   24E9                    8384 _height2RisingLeft8:
   24E9 00                 8385 	.byte	0
   24EA 06                 8386 	.byte	6
   24EB DC                 8387 	.byte	-36
   24EC FF                 8388 	.byte	-1
   24ED FA                 8389 	.byte	-6
   24EE 24                 8390 	.byte	36
   24EF FF                 8391 	.byte	-1
   24F0 18                 8392 	.byte	24
   24F1 F1                 8393 	.byte	-15
   24F2 FF                 8394 	.byte	-1
   24F3 06                 8395 	.byte	6
   24F4 D9                 8396 	.byte	-39
   24F5 FF                 8397 	.byte	-1
   24F6 E8                 8398 	.byte	-24
   24F7 12                 8399 	.byte	18
   24F8 FF                 8400 	.byte	-1
   24F9 51                 8401 	.byte	81
   24FA 21                 8402 	.byte	33
   24FB 00                 8403 	.byte	0
   24FC A9                 8404 	.byte	-87
   24FD 03                 8405 	.byte	3
   24FE FF                 8406 	.byte	-1
   24FF 4E                 8407 	.byte	78
   2500 21                 8408 	.byte	33
   2501 00                 8409 	.byte	0
   2502 CA                 8410 	.byte	-54
   2503 D0                 8411 	.byte	-48
   2504 FF                 8412 	.byte	-1
   2505 4E                 8413 	.byte	78
   2506 1E                 8414 	.byte	30
   2507 00                 8415 	.byte	0
   2508 B8                 8416 	.byte	-72
   2509 BB                 8417 	.byte	-69
   250A FF                 8418 	.byte	-1
   250B 51                 8419 	.byte	81
   250C 21                 8420 	.byte	33
   250D 00                 8421 	.byte	0
   250E E8                 8422 	.byte	-24
   250F 12                 8423 	.byte	18
   2510 FF                 8424 	.byte	-1
   2511 F7                 8425 	.byte	-9
   2512 24                 8426 	.byte	36
   2513 FF                 8427 	.byte	-1
   2514 18                 8428 	.byte	24
   2515 EE                 8429 	.byte	-18
   2516 FF                 8430 	.byte	-1
   2517 09                 8431 	.byte	9
   2518 DC                 8432 	.byte	-36
   2519 FF                 8433 	.byte	-1
   251A E8                 8434 	.byte	-24
   251B 12                 8435 	.byte	18
   251C 01                 8436 	.byte	1
                           8437 	.globl _height2FallingBack8
   251D                    8438 _height2FallingBack8:
   251D 00                 8439 	.byte	0
   251E 2D                 8440 	.byte	45
   251F FA                 8441 	.byte	-6
   2520 FF                 8442 	.byte	-1
   2521 09                 8443 	.byte	9
   2522 27                 8444 	.byte	39
   2523 FF                 8445 	.byte	-1
   2524 EB                 8446 	.byte	-21
   2525 F7                 8447 	.byte	-9
   2526 FF                 8448 	.byte	-1
   2527 F7                 8449 	.byte	-9
   2528 D9                 8450 	.byte	-39
   2529 FF                 8451 	.byte	-1
   252A 15                 8452 	.byte	21
   252B 09                 8453 	.byte	9
   252C FF                 8454 	.byte	-1
   252D 51                 8455 	.byte	81
   252E E2                 8456 	.byte	-30
   252F 00                 8457 	.byte	0
   2530 B8                 8458 	.byte	-72
   2531 45                 8459 	.byte	69
   2532 FF                 8460 	.byte	-1
   2533 51                 8461 	.byte	81
   2534 E2                 8462 	.byte	-30
   2535 00                 8463 	.byte	0
   2536 9A                 8464 	.byte	-102
   2537 15                 8465 	.byte	21
   2538 FF                 8466 	.byte	-1
   2539 51                 8467 	.byte	81
   253A E5                 8468 	.byte	-27
   253B 00                 8469 	.byte	0
   253C A6                 8470 	.byte	-90
   253D F4                 8471 	.byte	-12
   253E FF                 8472 	.byte	-1
   253F 51                 8473 	.byte	81
   2540 E2                 8474 	.byte	-30
   2541 00                 8475 	.byte	0
   2542 15                 8476 	.byte	21
   2543 09                 8477 	.byte	9
   2544 FF                 8478 	.byte	-1
   2545 09                 8479 	.byte	9
   2546 27                 8480 	.byte	39
   2547 FF                 8481 	.byte	-1
   2548 EB                 8482 	.byte	-21
   2549 FA                 8483 	.byte	-6
   254A FF                 8484 	.byte	-1
   254B F7                 8485 	.byte	-9
   254C D6                 8486 	.byte	-42
   254D FF                 8487 	.byte	-1
   254E 15                 8488 	.byte	21
   254F 09                 8489 	.byte	9
   2550 01                 8490 	.byte	1
                           8491 	.globl _height2RisingFront8
   2551                    8492 _height2RisingFront8:
   2551 00                 8493 	.byte	0
   2552 FD                 8494 	.byte	-3
   2553 12                 8495 	.byte	18
   2554 FF                 8496 	.byte	-1
   2555 06                 8497 	.byte	6
   2556 2A                 8498 	.byte	42
   2557 FF                 8499 	.byte	-1
   2558 06                 8500 	.byte	6
   2559 EE                 8501 	.byte	-18
   255A FF                 8502 	.byte	-1
   255B F7                 8503 	.byte	-9
   255C D6                 8504 	.byte	-42
   255D FF                 8505 	.byte	-1
   255E FD                 8506 	.byte	-3
   255F 12                 8507 	.byte	18
   2560 FF                 8508 	.byte	-1
   2561 57                 8509 	.byte	87
   2562 F1                 8510 	.byte	-15
   2563 00                 8511 	.byte	0
   2564 AF                 8512 	.byte	-81
   2565 39                 8513 	.byte	57
   2566 FF                 8514 	.byte	-1
   2567 5A                 8515 	.byte	90
   2568 F1                 8516 	.byte	-15
   2569 00                 8517 	.byte	0
   256A AC                 8518 	.byte	-84
   256B FD                 8519 	.byte	-3
   256C FF                 8520 	.byte	-1
   256D 5A                 8521 	.byte	90
   256E F1                 8522 	.byte	-15
   256F 00                 8523 	.byte	0
   2570 9D                 8524 	.byte	-99
   2571 E5                 8525 	.byte	-27
   2572 FF                 8526 	.byte	-1
   2573 5A                 8527 	.byte	90
   2574 F4                 8528 	.byte	-12
   2575 00                 8529 	.byte	0
   2576 FA                 8530 	.byte	-6
   2577 0F                 8531 	.byte	15
   2578 FF                 8532 	.byte	-1
   2579 09                 8533 	.byte	9
   257A 2A                 8534 	.byte	42
   257B FF                 8535 	.byte	-1
   257C 06                 8536 	.byte	6
   257D EE                 8537 	.byte	-18
   257E FF                 8538 	.byte	-1
   257F F7                 8539 	.byte	-9
   2580 D9                 8540 	.byte	-39
   2581 FF                 8541 	.byte	-1
   2582 FA                 8542 	.byte	-6
   2583 0F                 8543 	.byte	15
   2584 01                 8544 	.byte	1
                           8545 	.globl _height2FallingFront8
   2585                    8546 _height2FallingFront8:
   2585 FF                 8547 	.byte	-1
   2586 09                 8548 	.byte	9
   2587 2A                 8549 	.byte	42
   2588 FF                 8550 	.byte	-1
   2589 2D                 8551 	.byte	45
   258A F7                 8552 	.byte	-9
   258B FF                 8553 	.byte	-1
   258C F7                 8554 	.byte	-9
   258D D9                 8555 	.byte	-39
   258E FF                 8556 	.byte	-1
   258F D3                 8557 	.byte	-45
   2590 06                 8558 	.byte	6
   2591 FF                 8559 	.byte	-1
   2592 00                 8560 	.byte	0
   2593 1E                 8561 	.byte	30
   2594 00                 8562 	.byte	0
   2595 09                 8563 	.byte	9
   2596 0C                 8564 	.byte	12
   2597 FF                 8565 	.byte	-1
   2598 FD                 8566 	.byte	-3
   2599 1E                 8567 	.byte	30
   259A 00                 8568 	.byte	0
   259B 30                 8569 	.byte	48
   259C D9                 8570 	.byte	-39
   259D FF                 8571 	.byte	-1
   259E FD                 8572 	.byte	-3
   259F 1E                 8573 	.byte	30
   25A0 00                 8574 	.byte	0
   25A1 FA                 8575 	.byte	-6
   25A2 BB                 8576 	.byte	-69
   25A3 FF                 8577 	.byte	-1
   25A4 FD                 8578 	.byte	-3
   25A5 1B                 8579 	.byte	27
   25A6 00                 8580 	.byte	0
   25A7 D6                 8581 	.byte	-42
   25A8 09                 8582 	.byte	9
   25A9 FF                 8583 	.byte	-1
   25AA 06                 8584 	.byte	6
   25AB 2A                 8585 	.byte	42
   25AC FF                 8586 	.byte	-1
   25AD 2D                 8587 	.byte	45
   25AE F7                 8588 	.byte	-9
   25AF FF                 8589 	.byte	-1
   25B0 F7                 8590 	.byte	-9
   25B1 D6                 8591 	.byte	-42
   25B2 FF                 8592 	.byte	-1
   25B3 D6                 8593 	.byte	-42
   25B4 09                 8594 	.byte	9
   25B5 01                 8595 	.byte	1
                           8596 	.globl _height2RisingBack8
   25B6                    8597 _height2RisingBack8:
   25B6 00                 8598 	.byte	0
   25B7 30                 8599 	.byte	48
   25B8 DF                 8600 	.byte	-33
   25B9 FF                 8601 	.byte	-1
   25BA 09                 8602 	.byte	9
   25BB 27                 8603 	.byte	39
   25BC FF                 8604 	.byte	-1
   25BD 24                 8605 	.byte	36
   25BE F1                 8606 	.byte	-15
   25BF FF                 8607 	.byte	-1
   25C0 F7                 8608 	.byte	-9
   25C1 D6                 8609 	.byte	-42
   25C2 FF                 8610 	.byte	-1
   25C3 DC                 8611 	.byte	-36
   25C4 12                 8612 	.byte	18
   25C5 FF                 8613 	.byte	-1
   25C6 36                 8614 	.byte	54
   25C7 0F                 8615 	.byte	15
   25C8 00                 8616 	.byte	0
   25C9 D3                 8617 	.byte	-45
   25CA 18                 8618 	.byte	24
   25CB FF                 8619 	.byte	-1
   25CC 36                 8620 	.byte	54
   25CD 0F                 8621 	.byte	15
   25CE 00                 8622 	.byte	0
   25CF EE                 8623 	.byte	-18
   25D0 E2                 8624 	.byte	-30
   25D1 FF                 8625 	.byte	-1
   25D2 36                 8626 	.byte	54
   25D3 0C                 8627 	.byte	12
   25D4 00                 8628 	.byte	0
   25D5 C1                 8629 	.byte	-63
   25D6 CA                 8630 	.byte	-54
   25D7 FF                 8631 	.byte	-1
   25D8 36                 8632 	.byte	54
   25D9 0F                 8633 	.byte	15
   25DA 00                 8634 	.byte	0
   25DB DC                 8635 	.byte	-36
   25DC 12                 8636 	.byte	18
   25DD FF                 8637 	.byte	-1
   25DE 09                 8638 	.byte	9
   25DF 27                 8639 	.byte	39
   25E0 FF                 8640 	.byte	-1
   25E1 24                 8641 	.byte	36
   25E2 EE                 8642 	.byte	-18
   25E3 FF                 8643 	.byte	-1
   25E4 F7                 8644 	.byte	-9
   25E5 D9                 8645 	.byte	-39
   25E6 FF                 8646 	.byte	-1
   25E7 DC                 8647 	.byte	-36
   25E8 12                 8648 	.byte	18
   25E9 01                 8649 	.byte	1
                           8650 	.globl _depth2RollingLeft8
   25EA                    8651 _depth2RollingLeft8:
   25EA FF                 8652 	.byte	-1
   25EB 27                 8653 	.byte	39
   25EC 15                 8654 	.byte	21
   25ED FF                 8655 	.byte	-1
   25EE 30                 8656 	.byte	48
   25EF DF                 8657 	.byte	-33
   25F0 FF                 8658 	.byte	-1
   25F1 D9                 8659 	.byte	-39
   25F2 EB                 8660 	.byte	-21
   25F3 FF                 8661 	.byte	-1
   25F4 D0                 8662 	.byte	-48
   25F5 21                 8663 	.byte	33
   25F6 FF                 8664 	.byte	-1
   25F7 0C                 8665 	.byte	12
   25F8 DF                 8666 	.byte	-33
   25F9 00                 8667 	.byte	0
   25FA 1B                 8668 	.byte	27
   25FB 36                 8669 	.byte	54
   25FC FF                 8670 	.byte	-1
   25FD 0C                 8671 	.byte	12
   25FE DF                 8672 	.byte	-33
   25FF 00                 8673 	.byte	0
   2600 24                 8674 	.byte	36
   2601 00                 8675 	.byte	0
   2602 FF                 8676 	.byte	-1
   2603 0C                 8677 	.byte	12
   2604 DC                 8678 	.byte	-36
   2605 00                 8679 	.byte	0
   2606 CD                 8680 	.byte	-51
   2607 0F                 8681 	.byte	15
   2608 FF                 8682 	.byte	-1
   2609 0C                 8683 	.byte	12
   260A DC                 8684 	.byte	-36
   260B 00                 8685 	.byte	0
   260C D0                 8686 	.byte	-48
   260D 24                 8687 	.byte	36
   260E FF                 8688 	.byte	-1
   260F 27                 8689 	.byte	39
   2610 15                 8690 	.byte	21
   2611 FF                 8691 	.byte	-1
   2612 30                 8692 	.byte	48
   2613 DC                 8693 	.byte	-36
   2614 FF                 8694 	.byte	-1
   2615 D9                 8695 	.byte	-39
   2616 EB                 8696 	.byte	-21
   2617 FF                 8697 	.byte	-1
   2618 D0                 8698 	.byte	-48
   2619 24                 8699 	.byte	36
   261A 01                 8700 	.byte	1
                           8701 	.globl _depth2RollingRight8
   261B                    8702 _depth2RollingRight8:
   261B 00                 8703 	.byte	0
   261C 27                 8704 	.byte	39
   261D 15                 8705 	.byte	21
   261E FF                 8706 	.byte	-1
   261F E2                 8707 	.byte	-30
   2620 15                 8708 	.byte	21
   2621 FF                 8709 	.byte	-1
   2622 30                 8710 	.byte	48
   2623 DC                 8711 	.byte	-36
   2624 FF                 8712 	.byte	-1
   2625 1E                 8713 	.byte	30
   2626 EE                 8714 	.byte	-18
   2627 FF                 8715 	.byte	-1
   2628 D0                 8716 	.byte	-48
   2629 21                 8717 	.byte	33
   262A FF                 8718 	.byte	-1
   262B 1B                 8719 	.byte	27
   262C 24                 8720 	.byte	36
   262D 00                 8721 	.byte	0
   262E C7                 8722 	.byte	-57
   262F F1                 8723 	.byte	-15
   2630 FF                 8724 	.byte	-1
   2631 1B                 8725 	.byte	27
   2632 24                 8726 	.byte	36
   2633 00                 8727 	.byte	0
   2634 15                 8728 	.byte	21
   2635 B8                 8729 	.byte	-72
   2636 FF                 8730 	.byte	-1
   2637 1B                 8731 	.byte	27
   2638 24                 8732 	.byte	36
   2639 00                 8733 	.byte	0
   263A 03                 8734 	.byte	3
   263B CA                 8735 	.byte	-54
   263C FF                 8736 	.byte	-1
   263D 1B                 8737 	.byte	27
   263E 21                 8738 	.byte	33
   263F 00                 8739 	.byte	0
   2640 D0                 8740 	.byte	-48
   2641 24                 8741 	.byte	36
   2642 FF                 8742 	.byte	-1
   2643 E2                 8743 	.byte	-30
   2644 15                 8744 	.byte	21
   2645 FF                 8745 	.byte	-1
   2646 30                 8746 	.byte	48
   2647 DC                 8747 	.byte	-36
   2648 FF                 8748 	.byte	-1
   2649 1E                 8749 	.byte	30
   264A EB                 8750 	.byte	-21
   264B FF                 8751 	.byte	-1
   264C D0                 8752 	.byte	-48
   264D 24                 8753 	.byte	36
   264E 01                 8754 	.byte	1
                           8755 	.globl _width2RollingFront8
   264F                    8756 _width2RollingFront8:
   264F FF                 8757 	.byte	-1
   2650 12                 8758 	.byte	18
   2651 54                 8759 	.byte	84
   2652 FF                 8760 	.byte	-1
   2653 2D                 8761 	.byte	45
   2654 F7                 8762 	.byte	-9
   2655 FF                 8763 	.byte	-1
   2656 EE                 8764 	.byte	-18
   2657 AF                 8765 	.byte	-81
   2658 FF                 8766 	.byte	-1
   2659 D3                 8767 	.byte	-45
   265A 06                 8768 	.byte	6
   265B FF                 8769 	.byte	-1
   265C 00                 8770 	.byte	0
   265D 0F                 8771 	.byte	15
   265E 00                 8772 	.byte	0
   265F 12                 8773 	.byte	18
   2660 45                 8774 	.byte	69
   2661 FF                 8775 	.byte	-1
   2662 00                 8776 	.byte	0
   2663 0F                 8777 	.byte	15
   2664 00                 8778 	.byte	0
   2665 2D                 8779 	.byte	45
   2666 E8                 8780 	.byte	-24
   2667 FF                 8781 	.byte	-1
   2668 00                 8782 	.byte	0
   2669 0F                 8783 	.byte	15
   266A 00                 8784 	.byte	0
   266B EE                 8785 	.byte	-18
   266C A0                 8786 	.byte	-96
   266D FF                 8787 	.byte	-1
   266E 00                 8788 	.byte	0
   266F 0C                 8789 	.byte	12
   2670 00                 8790 	.byte	0
   2671 D3                 8791 	.byte	-45
   2672 09                 8792 	.byte	9
   2673 FF                 8793 	.byte	-1
   2674 12                 8794 	.byte	18
   2675 54                 8795 	.byte	84
   2676 FF                 8796 	.byte	-1
   2677 2D                 8797 	.byte	45
   2678 F7                 8798 	.byte	-9
   2679 FF                 8799 	.byte	-1
   267A EE                 8800 	.byte	-18
   267B AC                 8801 	.byte	-84
   267C FF                 8802 	.byte	-1
   267D D3                 8803 	.byte	-45
   267E 09                 8804 	.byte	9
   267F 01                 8805 	.byte	1
                           8806 	.globl _width2RollingBack8
   2680                    8807 _width2RollingBack8:
   2680 00                 8808 	.byte	0
   2681 2D                 8809 	.byte	45
   2682 FA                 8810 	.byte	-6
   2683 FF                 8811 	.byte	-1
   2684 12                 8812 	.byte	18
   2685 51                 8813 	.byte	81
   2686 FF                 8814 	.byte	-1
   2687 EB                 8815 	.byte	-21
   2688 F7                 8816 	.byte	-9
   2689 FF                 8817 	.byte	-1
   268A EE                 8818 	.byte	-18
   268B AF                 8819 	.byte	-81
   268C FF                 8820 	.byte	-1
   268D 15                 8821 	.byte	21
   268E 09                 8822 	.byte	9
   268F FF                 8823 	.byte	-1
   2690 2A                 8824 	.byte	42
   2691 F1                 8825 	.byte	-15
   2692 00                 8826 	.byte	0
   2693 E8                 8827 	.byte	-24
   2694 60                 8828 	.byte	96
   2695 FF                 8829 	.byte	-1
   2696 2A                 8830 	.byte	42
   2697 F1                 8831 	.byte	-15
   2698 00                 8832 	.byte	0
   2699 C1                 8833 	.byte	-63
   269A 06                 8834 	.byte	6
   269B FF                 8835 	.byte	-1
   269C 27                 8836 	.byte	39
   269D F1                 8837 	.byte	-15
   269E 00                 8838 	.byte	0
   269F C7                 8839 	.byte	-57
   26A0 BE                 8840 	.byte	-66
   26A1 FF                 8841 	.byte	-1
   26A2 27                 8842 	.byte	39
   26A3 F1                 8843 	.byte	-15
   26A4 00                 8844 	.byte	0
   26A5 18                 8845 	.byte	24
   26A6 09                 8846 	.byte	9
   26A7 FF                 8847 	.byte	-1
   26A8 12                 8848 	.byte	18
   26A9 51                 8849 	.byte	81
   26AA FF                 8850 	.byte	-1
   26AB E8                 8851 	.byte	-24
   26AC F7                 8852 	.byte	-9
   26AD FF                 8853 	.byte	-1
   26AE EE                 8854 	.byte	-18
   26AF AF                 8855 	.byte	-81
   26B0 FF                 8856 	.byte	-1
   26B1 18                 8857 	.byte	24
   26B2 09                 8858 	.byte	9
   26B3 01                 8859 	.byte	1
                           8860 	.globl _height1FallingLeft8
   26B4                    8861 _height1FallingLeft8:
   26B4 FF                 8862 	.byte	-1
   26B5 27                 8863 	.byte	39
   26B6 15                 8864 	.byte	21
   26B7 FF                 8865 	.byte	-1
   26B8 18                 8866 	.byte	24
   26B9 EE                 8867 	.byte	-18
   26BA FF                 8868 	.byte	-1
   26BB D9                 8869 	.byte	-39
   26BC EE                 8870 	.byte	-18
   26BD FF                 8871 	.byte	-1
   26BE E8                 8872 	.byte	-24
   26BF 0F                 8873 	.byte	15
   26C0 FF                 8874 	.byte	-1
   26C1 0C                 8875 	.byte	12
   26C2 DF                 8876 	.byte	-33
   26C3 00                 8877 	.byte	0
   26C4 1B                 8878 	.byte	27
   26C5 36                 8879 	.byte	54
   26C6 FF                 8880 	.byte	-1
   26C7 0C                 8881 	.byte	12
   26C8 DF                 8882 	.byte	-33
   26C9 00                 8883 	.byte	0
   26CA 0C                 8884 	.byte	12
   26CB 0F                 8885 	.byte	15
   26CC FF                 8886 	.byte	-1
   26CD 0C                 8887 	.byte	12
   26CE DF                 8888 	.byte	-33
   26CF 00                 8889 	.byte	0
   26D0 CD                 8890 	.byte	-51
   26D1 0F                 8891 	.byte	15
   26D2 FF                 8892 	.byte	-1
   26D3 0C                 8893 	.byte	12
   26D4 DC                 8894 	.byte	-36
   26D5 00                 8895 	.byte	0
   26D6 E8                 8896 	.byte	-24
   26D7 12                 8897 	.byte	18
   26D8 FF                 8898 	.byte	-1
   26D9 27                 8899 	.byte	39
   26DA 15                 8900 	.byte	21
   26DB FF                 8901 	.byte	-1
   26DC 18                 8902 	.byte	24
   26DD EE                 8903 	.byte	-18
   26DE FF                 8904 	.byte	-1
   26DF D9                 8905 	.byte	-39
   26E0 EB                 8906 	.byte	-21
   26E1 FF                 8907 	.byte	-1
   26E2 E8                 8908 	.byte	-24
   26E3 12                 8909 	.byte	18
   26E4 01                 8910 	.byte	1
                           8911 	.globl _height1FallingRight8
   26E5                    8912 _height1FallingRight8:
   26E5 00                 8913 	.byte	0
   26E6 27                 8914 	.byte	39
   26E7 15                 8915 	.byte	21
   26E8 FF                 8916 	.byte	-1
   26E9 E2                 8917 	.byte	-30
   26EA 15                 8918 	.byte	21
   26EB FF                 8919 	.byte	-1
   26EC 18                 8920 	.byte	24
   26ED EE                 8921 	.byte	-18
   26EE FF                 8922 	.byte	-1
   26EF 1E                 8923 	.byte	30
   26F0 EB                 8924 	.byte	-21
   26F1 FF                 8925 	.byte	-1
   26F2 E8                 8926 	.byte	-24
   26F3 12                 8927 	.byte	18
   26F4 FF                 8928 	.byte	-1
   26F5 1B                 8929 	.byte	27
   26F6 24                 8930 	.byte	36
   26F7 00                 8931 	.byte	0
   26F8 C7                 8932 	.byte	-57
   26F9 F1                 8933 	.byte	-15
   26FA FF                 8934 	.byte	-1
   26FB 1B                 8935 	.byte	27
   26FC 24                 8936 	.byte	36
   26FD 00                 8937 	.byte	0
   26FE FD                 8938 	.byte	-3
   26FF CA                 8939 	.byte	-54
   2700 FF                 8940 	.byte	-1
   2701 1B                 8941 	.byte	27
   2702 24                 8942 	.byte	36
   2703 00                 8943 	.byte	0
   2704 03                 8944 	.byte	3
   2705 C7                 8945 	.byte	-57
   2706 FF                 8946 	.byte	-1
   2707 1B                 8947 	.byte	27
   2708 24                 8948 	.byte	36
   2709 00                 8949 	.byte	0
   270A E8                 8950 	.byte	-24
   270B 12                 8951 	.byte	18
   270C FF                 8952 	.byte	-1
   270D E2                 8953 	.byte	-30
   270E 15                 8954 	.byte	21
   270F FF                 8955 	.byte	-1
   2710 18                 8956 	.byte	24
   2711 EE                 8957 	.byte	-18
   2712 FF                 8958 	.byte	-1
   2713 1E                 8959 	.byte	30
   2714 EB                 8960 	.byte	-21
   2715 FF                 8961 	.byte	-1
   2716 E8                 8962 	.byte	-24
   2717 12                 8963 	.byte	18
   2718 01                 8964 	.byte	1
                           8965 	.globl _height1FallingBack8
   2719                    8966 _height1FallingBack8:
   2719 00                 8967 	.byte	0
   271A 2D                 8968 	.byte	45
   271B FA                 8969 	.byte	-6
   271C FF                 8970 	.byte	-1
   271D 09                 8971 	.byte	9
   271E 27                 8972 	.byte	39
   271F FF                 8973 	.byte	-1
   2720 EB                 8974 	.byte	-21
   2721 F7                 8975 	.byte	-9
   2722 FF                 8976 	.byte	-1
   2723 F7                 8977 	.byte	-9
   2724 D9                 8978 	.byte	-39
   2725 FF                 8979 	.byte	-1
   2726 15                 8980 	.byte	21
   2727 09                 8981 	.byte	9
   2728 FF                 8982 	.byte	-1
   2729 2A                 8983 	.byte	42
   272A F1                 8984 	.byte	-15
   272B 00                 8985 	.byte	0
   272C DF                 8986 	.byte	-33
   272D 36                 8987 	.byte	54
   272E FF                 8988 	.byte	-1
   272F 2A                 8989 	.byte	42
   2730 F1                 8990 	.byte	-15
   2731 00                 8991 	.byte	0
   2732 C1                 8992 	.byte	-63
   2733 06                 8993 	.byte	6
   2734 FF                 8994 	.byte	-1
   2735 27                 8995 	.byte	39
   2736 F1                 8996 	.byte	-15
   2737 00                 8997 	.byte	0
   2738 D0                 8998 	.byte	-48
   2739 E8                 8999 	.byte	-24
   273A FF                 9000 	.byte	-1
   273B 27                 9001 	.byte	39
   273C F1                 9002 	.byte	-15
   273D 00                 9003 	.byte	0
   273E 18                 9004 	.byte	24
   273F 09                 9005 	.byte	9
   2740 FF                 9006 	.byte	-1
   2741 09                 9007 	.byte	9
   2742 27                 9008 	.byte	39
   2743 FF                 9009 	.byte	-1
   2744 E8                 9010 	.byte	-24
   2745 F7                 9011 	.byte	-9
   2746 FF                 9012 	.byte	-1
   2747 F7                 9013 	.byte	-9
   2748 D9                 9014 	.byte	-39
   2749 FF                 9015 	.byte	-1
   274A 18                 9016 	.byte	24
   274B 09                 9017 	.byte	9
   274C 01                 9018 	.byte	1
                           9019 	.globl _height1FallingFront8
   274D                    9020 _height1FallingFront8:
   274D FF                 9021 	.byte	-1
   274E 09                 9022 	.byte	9
   274F 2A                 9023 	.byte	42
   2750 FF                 9024 	.byte	-1
   2751 2D                 9025 	.byte	45
   2752 F7                 9026 	.byte	-9
   2753 FF                 9027 	.byte	-1
   2754 F7                 9028 	.byte	-9
   2755 D9                 9029 	.byte	-39
   2756 FF                 9030 	.byte	-1
   2757 D3                 9031 	.byte	-45
   2758 06                 9032 	.byte	6
   2759 FF                 9033 	.byte	-1
   275A 00                 9034 	.byte	0
   275B 0F                 9035 	.byte	15
   275C 00                 9036 	.byte	0
   275D 09                 9037 	.byte	9
   275E 1B                 9038 	.byte	27
   275F FF                 9039 	.byte	-1
   2760 00                 9040 	.byte	0
   2761 0F                 9041 	.byte	15
   2762 00                 9042 	.byte	0
   2763 2D                 9043 	.byte	45
   2764 E8                 9044 	.byte	-24
   2765 FF                 9045 	.byte	-1
   2766 00                 9046 	.byte	0
   2767 0F                 9047 	.byte	15
   2768 00                 9048 	.byte	0
   2769 F7                 9049 	.byte	-9
   276A CA                 9050 	.byte	-54
   276B FF                 9051 	.byte	-1
   276C 00                 9052 	.byte	0
   276D 0C                 9053 	.byte	12
   276E 00                 9054 	.byte	0
   276F D3                 9055 	.byte	-45
   2770 09                 9056 	.byte	9
   2771 FF                 9057 	.byte	-1
   2772 09                 9058 	.byte	9
   2773 2A                 9059 	.byte	42
   2774 FF                 9060 	.byte	-1
   2775 2D                 9061 	.byte	45
   2776 F7                 9062 	.byte	-9
   2777 FF                 9063 	.byte	-1
   2778 F7                 9064 	.byte	-9
   2779 D6                 9065 	.byte	-42
   277A FF                 9066 	.byte	-1
   277B D3                 9067 	.byte	-45
   277C 09                 9068 	.byte	9
   277D 01                 9069 	.byte	1
                           9070 	.globl _height2FallingLeft9
   277E                    9071 _height2FallingLeft9:
   277E FF                 9072 	.byte	-1
   277F 27                 9073 	.byte	39
   2780 0F                 9074 	.byte	15
   2781 FF                 9075 	.byte	-1
   2782 18                 9076 	.byte	24
   2783 F1                 9077 	.byte	-15
   2784 FF                 9078 	.byte	-1
   2785 D9                 9079 	.byte	-39
   2786 F1                 9080 	.byte	-15
   2787 FF                 9081 	.byte	-1
   2788 E8                 9082 	.byte	-24
   2789 0F                 9083 	.byte	15
   278A FF                 9084 	.byte	-1
   278B 0C                 9085 	.byte	12
   278C B5                 9086 	.byte	-75
   278D 00                 9087 	.byte	0
   278E 1B                 9088 	.byte	27
   278F 5A                 9089 	.byte	90
   2790 FF                 9090 	.byte	-1
   2791 0F                 9091 	.byte	15
   2792 B5                 9092 	.byte	-75
   2793 00                 9093 	.byte	0
   2794 09                 9094 	.byte	9
   2795 3C                 9095 	.byte	60
   2796 FF                 9096 	.byte	-1
   2797 0F                 9097 	.byte	15
   2798 B2                 9098 	.byte	-78
   2799 00                 9099 	.byte	0
   279A CA                 9100 	.byte	-54
   279B 3F                 9101 	.byte	63
   279C FF                 9102 	.byte	-1
   279D 0C                 9103 	.byte	12
   279E B2                 9104 	.byte	-78
   279F 00                 9105 	.byte	0
   27A0 E8                 9106 	.byte	-24
   27A1 12                 9107 	.byte	18
   27A2 FF                 9108 	.byte	-1
   27A3 2A                 9109 	.byte	42
   27A4 0F                 9110 	.byte	15
   27A5 FF                 9111 	.byte	-1
   27A6 18                 9112 	.byte	24
   27A7 EE                 9113 	.byte	-18
   27A8 FF                 9114 	.byte	-1
   27A9 D6                 9115 	.byte	-42
   27AA F1                 9116 	.byte	-15
   27AB FF                 9117 	.byte	-1
   27AC E8                 9118 	.byte	-24
   27AD 12                 9119 	.byte	18
   27AE 01                 9120 	.byte	1
                           9121 	.globl _height2RisingRight9
   27AF                    9122 _height2RisingRight9:
   27AF 00                 9123 	.byte	0
   27B0 12                 9124 	.byte	18
   27B1 54                 9125 	.byte	84
   27B2 FF                 9126 	.byte	-1
   27B3 12                 9127 	.byte	18
   27B4 2A                 9128 	.byte	42
   27B5 FF                 9129 	.byte	-1
   27B6 18                 9130 	.byte	24
   27B7 EE                 9131 	.byte	-18
   27B8 FF                 9132 	.byte	-1
   27B9 EE                 9133 	.byte	-18
   27BA D6                 9134 	.byte	-42
   27BB FF                 9135 	.byte	-1
   27BC E8                 9136 	.byte	-24
   27BD 12                 9137 	.byte	18
   27BE FF                 9138 	.byte	-1
   27BF 48                 9139 	.byte	72
   27C0 EB                 9140 	.byte	-21
   27C1 00                 9141 	.byte	0
   27C2 CA                 9142 	.byte	-54
   27C3 3F                 9143 	.byte	63
   27C4 FF                 9144 	.byte	-1
   27C5 48                 9145 	.byte	72
   27C6 E8                 9146 	.byte	-24
   27C7 00                 9147 	.byte	0
   27C8 D0                 9148 	.byte	-48
   27C9 06                 9149 	.byte	6
   27CA FF                 9150 	.byte	-1
   27CB 48                 9151 	.byte	72
   27CC E8                 9152 	.byte	-24
   27CD 00                 9153 	.byte	0
   27CE A6                 9154 	.byte	-90
   27CF EE                 9155 	.byte	-18
   27D0 FF                 9156 	.byte	-1
   27D1 48                 9157 	.byte	72
   27D2 EB                 9158 	.byte	-21
   27D3 00                 9159 	.byte	0
   27D4 E8                 9160 	.byte	-24
   27D5 12                 9161 	.byte	18
   27D6 FF                 9162 	.byte	-1
   27D7 12                 9163 	.byte	18
   27D8 27                 9164 	.byte	39
   27D9 FF                 9165 	.byte	-1
   27DA 18                 9166 	.byte	24
   27DB EE                 9167 	.byte	-18
   27DC FF                 9168 	.byte	-1
   27DD EE                 9169 	.byte	-18
   27DE D9                 9170 	.byte	-39
   27DF FF                 9171 	.byte	-1
   27E0 E8                 9172 	.byte	-24
   27E1 12                 9173 	.byte	18
   27E2 01                 9174 	.byte	1
                           9175 	.globl _height2FallingRight9
   27E3                    9176 _height2FallingRight9:
   27E3 00                 9177 	.byte	0
   27E4 2A                 9178 	.byte	42
   27E5 1B                 9179 	.byte	27
   27E6 FF                 9180 	.byte	-1
   27E7 DF                 9181 	.byte	-33
   27E8 0F                 9182 	.byte	15
   27E9 FF                 9183 	.byte	-1
   27EA 18                 9184 	.byte	24
   27EB EE                 9185 	.byte	-18
   27EC FF                 9186 	.byte	-1
   27ED 21                 9187 	.byte	33
   27EE F1                 9188 	.byte	-15
   27EF FF                 9189 	.byte	-1
   27F0 E8                 9190 	.byte	-24
   27F1 12                 9191 	.byte	18
   27F2 FF                 9192 	.byte	-1
   27F3 2D                 9193 	.byte	45
   27F4 4E                 9194 	.byte	78
   27F5 00                 9195 	.byte	0
   27F6 B2                 9196 	.byte	-78
   27F7 C1                 9197 	.byte	-63
   27F8 FF                 9198 	.byte	-1
   27F9 2D                 9199 	.byte	45
   27FA 4E                 9200 	.byte	78
   27FB 00                 9201 	.byte	0
   27FC EB                 9202 	.byte	-21
   27FD A0                 9203 	.byte	-96
   27FE FF                 9204 	.byte	-1
   27FF 2D                 9205 	.byte	45
   2800 4E                 9206 	.byte	78
   2801 00                 9207 	.byte	0
   2802 F4                 9208 	.byte	-12
   2803 A3                 9209 	.byte	-93
   2804 FF                 9210 	.byte	-1
   2805 2D                 9211 	.byte	45
   2806 4E                 9212 	.byte	78
   2807 00                 9213 	.byte	0
   2808 E8                 9214 	.byte	-24
   2809 12                 9215 	.byte	18
   280A FF                 9216 	.byte	-1
   280B DF                 9217 	.byte	-33
   280C 0F                 9218 	.byte	15
   280D FF                 9219 	.byte	-1
   280E 18                 9220 	.byte	24
   280F EE                 9221 	.byte	-18
   2810 FF                 9222 	.byte	-1
   2811 21                 9223 	.byte	33
   2812 F1                 9224 	.byte	-15
   2813 FF                 9225 	.byte	-1
   2814 E8                 9226 	.byte	-24
   2815 12                 9227 	.byte	18
   2816 01                 9228 	.byte	1
                           9229 	.globl _height2RisingLeft9
   2817                    9230 _height2RisingLeft9:
   2817 00                 9231 	.byte	0
   2818 00                 9232 	.byte	0
   2819 D9                 9233 	.byte	-39
   281A FF                 9234 	.byte	-1
   281B 00                 9235 	.byte	0
   281C 27                 9236 	.byte	39
   281D FF                 9237 	.byte	-1
   281E 18                 9238 	.byte	24
   281F F1                 9239 	.byte	-15
   2820 FF                 9240 	.byte	-1
   2821 00                 9241 	.byte	0
   2822 D6                 9242 	.byte	-42
   2823 FF                 9243 	.byte	-1
   2824 E8                 9244 	.byte	-24
   2825 12                 9245 	.byte	18
   2826 FF                 9246 	.byte	-1
   2827 51                 9247 	.byte	81
   2828 18                 9248 	.byte	24
   2829 00                 9249 	.byte	0
   282A AF                 9250 	.byte	-81
   282B 0F                 9251 	.byte	15
   282C FF                 9252 	.byte	-1
   282D 51                 9253 	.byte	81
   282E 15                 9254 	.byte	21
   282F 00                 9255 	.byte	0
   2830 C7                 9256 	.byte	-57
   2831 DC                 9257 	.byte	-36
   2832 FF                 9258 	.byte	-1
   2833 51                 9259 	.byte	81
   2834 12                 9260 	.byte	18
   2835 00                 9261 	.byte	0
   2836 AF                 9262 	.byte	-81
   2837 C4                 9263 	.byte	-60
   2838 FF                 9264 	.byte	-1
   2839 51                 9265 	.byte	81
   283A 18                 9266 	.byte	24
   283B 00                 9267 	.byte	0
   283C E8                 9268 	.byte	-24
   283D 12                 9269 	.byte	18
   283E FF                 9270 	.byte	-1
   283F 00                 9271 	.byte	0
   2840 24                 9272 	.byte	36
   2841 FF                 9273 	.byte	-1
   2842 18                 9274 	.byte	24
   2843 EE                 9275 	.byte	-18
   2844 FF                 9276 	.byte	-1
   2845 00                 9277 	.byte	0
   2846 DC                 9278 	.byte	-36
   2847 FF                 9279 	.byte	-1
   2848 E8                 9280 	.byte	-24
   2849 12                 9281 	.byte	18
   284A 01                 9282 	.byte	1
                           9283 	.globl _height2FallingBack9
   284B                    9284 _height2FallingBack9:
   284B 00                 9285 	.byte	0
   284C 33                 9286 	.byte	51
   284D F7                 9287 	.byte	-9
   284E FF                 9288 	.byte	-1
   284F 09                 9289 	.byte	9
   2850 27                 9290 	.byte	39
   2851 FF                 9291 	.byte	-1
   2852 E5                 9292 	.byte	-27
   2853 FA                 9293 	.byte	-6
   2854 FF                 9294 	.byte	-1
   2855 F7                 9295 	.byte	-9
   2856 D9                 9296 	.byte	-39
   2857 FF                 9297 	.byte	-1
   2858 1B                 9298 	.byte	27
   2859 06                 9299 	.byte	6
   285A FF                 9300 	.byte	-1
   285B 4B                 9301 	.byte	75
   285C DF                 9302 	.byte	-33
   285D 00                 9303 	.byte	0
   285E BE                 9304 	.byte	-66
   285F 48                 9305 	.byte	72
   2860 FF                 9306 	.byte	-1
   2861 4B                 9307 	.byte	75
   2862 E2                 9308 	.byte	-30
   2863 00                 9309 	.byte	0
   2864 9A                 9310 	.byte	-102
   2865 18                 9311 	.byte	24
   2866 FF                 9312 	.byte	-1
   2867 4B                 9313 	.byte	75
   2868 E2                 9314 	.byte	-30
   2869 00                 9315 	.byte	0
   286A AC                 9316 	.byte	-84
   286B F7                 9317 	.byte	-9
   286C FF                 9318 	.byte	-1
   286D 4B                 9319 	.byte	75
   286E DF                 9320 	.byte	-33
   286F 00                 9321 	.byte	0
   2870 1B                 9322 	.byte	27
   2871 06                 9323 	.byte	6
   2872 FF                 9324 	.byte	-1
   2873 09                 9325 	.byte	9
   2874 2A                 9326 	.byte	42
   2875 FF                 9327 	.byte	-1
   2876 E5                 9328 	.byte	-27
   2877 FA                 9329 	.byte	-6
   2878 FF                 9330 	.byte	-1
   2879 F7                 9331 	.byte	-9
   287A D6                 9332 	.byte	-42
   287B FF                 9333 	.byte	-1
   287C 1B                 9334 	.byte	27
   287D 06                 9335 	.byte	6
   287E 01                 9336 	.byte	1
                           9337 	.globl _height2RisingFront9
   287F                    9338 _height2RisingFront9:
   287F 00                 9339 	.byte	0
   2880 F7                 9340 	.byte	-9
   2881 12                 9341 	.byte	18
   2882 FF                 9342 	.byte	-1
   2883 09                 9343 	.byte	9
   2884 2A                 9344 	.byte	42
   2885 FF                 9345 	.byte	-1
   2886 09                 9346 	.byte	9
   2887 EE                 9347 	.byte	-18
   2888 FF                 9348 	.byte	-1
   2889 F7                 9349 	.byte	-9
   288A D6                 9350 	.byte	-42
   288B FF                 9351 	.byte	-1
   288C F7                 9352 	.byte	-9
   288D 12                 9353 	.byte	18
   288E FF                 9354 	.byte	-1
   288F 54                 9355 	.byte	84
   2890 F7                 9356 	.byte	-9
   2891 00                 9357 	.byte	0
   2892 B5                 9358 	.byte	-75
   2893 33                 9359 	.byte	51
   2894 FF                 9360 	.byte	-1
   2895 54                 9361 	.byte	84
   2896 F7                 9362 	.byte	-9
   2897 00                 9363 	.byte	0
   2898 B5                 9364 	.byte	-75
   2899 F7                 9365 	.byte	-9
   289A FF                 9366 	.byte	-1
   289B 57                 9367 	.byte	87
   289C F7                 9368 	.byte	-9
   289D 00                 9369 	.byte	0
   289E A0                 9370 	.byte	-96
   289F DF                 9371 	.byte	-33
   28A0 FF                 9372 	.byte	-1
   28A1 57                 9373 	.byte	87
   28A2 FA                 9374 	.byte	-6
   28A3 00                 9375 	.byte	0
   28A4 F4                 9376 	.byte	-12
   28A5 0F                 9377 	.byte	15
   28A6 FF                 9378 	.byte	-1
   28A7 09                 9379 	.byte	9
   28A8 2A                 9380 	.byte	42
   28A9 FF                 9381 	.byte	-1
   28AA 0C                 9382 	.byte	12
   28AB EE                 9383 	.byte	-18
   28AC FF                 9384 	.byte	-1
   28AD F7                 9385 	.byte	-9
   28AE D9                 9386 	.byte	-39
   28AF FF                 9387 	.byte	-1
   28B0 F4                 9388 	.byte	-12
   28B1 0F                 9389 	.byte	15
   28B2 01                 9390 	.byte	1
                           9391 	.globl _height2FallingFront9
   28B3                    9392 _height2FallingFront9:
   28B3 FF                 9393 	.byte	-1
   28B4 09                 9394 	.byte	9
   28B5 2A                 9395 	.byte	42
   28B6 FF                 9396 	.byte	-1
   28B7 2D                 9397 	.byte	45
   28B8 FA                 9398 	.byte	-6
   28B9 FF                 9399 	.byte	-1
   28BA F7                 9400 	.byte	-9
   28BB D9                 9401 	.byte	-39
   28BC FF                 9402 	.byte	-1
   28BD D3                 9403 	.byte	-45
   28BE 03                 9404 	.byte	3
   28BF FF                 9405 	.byte	-1
   28C0 F4                 9406 	.byte	-12
   28C1 21                 9407 	.byte	33
   28C2 00                 9408 	.byte	0
   28C3 15                 9409 	.byte	21
   28C4 09                 9410 	.byte	9
   28C5 FF                 9411 	.byte	-1
   28C6 F4                 9412 	.byte	-12
   28C7 21                 9413 	.byte	33
   28C8 00                 9414 	.byte	0
   28C9 39                 9415 	.byte	57
   28CA D9                 9416 	.byte	-39
   28CB FF                 9417 	.byte	-1
   28CC F1                 9418 	.byte	-15
   28CD 21                 9419 	.byte	33
   28CE 00                 9420 	.byte	0
   28CF 06                 9421 	.byte	6
   28D0 B8                 9422 	.byte	-72
   28D1 FF                 9423 	.byte	-1
   28D2 F1                 9424 	.byte	-15
   28D3 1E                 9425 	.byte	30
   28D4 00                 9426 	.byte	0
   28D5 D6                 9427 	.byte	-42
   28D6 06                 9428 	.byte	6
   28D7 FF                 9429 	.byte	-1
   28D8 09                 9430 	.byte	9
   28D9 2A                 9431 	.byte	42
   28DA FF                 9432 	.byte	-1
   28DB 2A                 9433 	.byte	42
   28DC FA                 9434 	.byte	-6
   28DD FF                 9435 	.byte	-1
   28DE F7                 9436 	.byte	-9
   28DF D6                 9437 	.byte	-42
   28E0 FF                 9438 	.byte	-1
   28E1 D6                 9439 	.byte	-42
   28E2 06                 9440 	.byte	6
   28E3 01                 9441 	.byte	1
                           9442 	.globl _height2RisingBack9
   28E4                    9443 _height2RisingBack9:
   28E4 00                 9444 	.byte	0
   28E5 30                 9445 	.byte	48
   28E6 DF                 9446 	.byte	-33
   28E7 FF                 9447 	.byte	-1
   28E8 09                 9448 	.byte	9
   28E9 27                 9449 	.byte	39
   28EA FF                 9450 	.byte	-1
   28EB 21                 9451 	.byte	33
   28EC F1                 9452 	.byte	-15
   28ED FF                 9453 	.byte	-1
   28EE F7                 9454 	.byte	-9
   28EF D6                 9455 	.byte	-42
   28F0 FF                 9456 	.byte	-1
   28F1 DF                 9457 	.byte	-33
   28F2 12                 9458 	.byte	18
   28F3 FF                 9459 	.byte	-1
   28F4 3F                 9460 	.byte	63
   28F5 09                 9461 	.byte	9
   28F6 00                 9462 	.byte	0
   28F7 CA                 9463 	.byte	-54
   28F8 1E                 9464 	.byte	30
   28F9 FF                 9465 	.byte	-1
   28FA 3F                 9466 	.byte	63
   28FB 09                 9467 	.byte	9
   28FC 00                 9468 	.byte	0
   28FD E2                 9469 	.byte	-30
   28FE E8                 9470 	.byte	-24
   28FF FF                 9471 	.byte	-1
   2900 3F                 9472 	.byte	63
   2901 09                 9473 	.byte	9
   2902 00                 9474 	.byte	0
   2903 B8                 9475 	.byte	-72
   2904 CD                 9476 	.byte	-51
   2905 FF                 9477 	.byte	-1
   2906 3F                 9478 	.byte	63
   2907 09                 9479 	.byte	9
   2908 00                 9480 	.byte	0
   2909 DF                 9481 	.byte	-33
   290A 12                 9482 	.byte	18
   290B FF                 9483 	.byte	-1
   290C 09                 9484 	.byte	9
   290D 27                 9485 	.byte	39
   290E FF                 9486 	.byte	-1
   290F 21                 9487 	.byte	33
   2910 F1                 9488 	.byte	-15
   2911 FF                 9489 	.byte	-1
   2912 F7                 9490 	.byte	-9
   2913 D6                 9491 	.byte	-42
   2914 FF                 9492 	.byte	-1
   2915 DF                 9493 	.byte	-33
   2916 12                 9494 	.byte	18
   2917 01                 9495 	.byte	1
                           9496 	.globl _depth2RollingLeft9
   2918                    9497 _depth2RollingLeft9:
   2918 FF                 9498 	.byte	-1
   2919 27                 9499 	.byte	39
   291A 0F                 9500 	.byte	15
   291B FF                 9501 	.byte	-1
   291C 30                 9502 	.byte	48
   291D DF                 9503 	.byte	-33
   291E FF                 9504 	.byte	-1
   291F D9                 9505 	.byte	-39
   2920 F1                 9506 	.byte	-15
   2921 FF                 9507 	.byte	-1
   2922 D0                 9508 	.byte	-48
   2923 21                 9509 	.byte	33
   2924 FF                 9510 	.byte	-1
   2925 06                 9511 	.byte	6
   2926 DC                 9512 	.byte	-36
   2927 00                 9513 	.byte	0
   2928 21                 9514 	.byte	33
   2929 33                 9515 	.byte	51
   292A FF                 9516 	.byte	-1
   292B 06                 9517 	.byte	6
   292C DC                 9518 	.byte	-36
   292D 00                 9519 	.byte	0
   292E 2A                 9520 	.byte	42
   292F 03                 9521 	.byte	3
   2930 FF                 9522 	.byte	-1
   2931 06                 9523 	.byte	6
   2932 D9                 9524 	.byte	-39
   2933 00                 9525 	.byte	0
   2934 D3                 9526 	.byte	-45
   2935 18                 9527 	.byte	24
   2936 FF                 9528 	.byte	-1
   2937 06                 9529 	.byte	6
   2938 D9                 9530 	.byte	-39
   2939 00                 9531 	.byte	0
   293A D0                 9532 	.byte	-48
   293B 24                 9533 	.byte	36
   293C FF                 9534 	.byte	-1
   293D 27                 9535 	.byte	39
   293E 0F                 9536 	.byte	15
   293F FF                 9537 	.byte	-1
   2940 30                 9538 	.byte	48
   2941 DC                 9539 	.byte	-36
   2942 FF                 9540 	.byte	-1
   2943 D9                 9541 	.byte	-39
   2944 F1                 9542 	.byte	-15
   2945 FF                 9543 	.byte	-1
   2946 D0                 9544 	.byte	-48
   2947 24                 9545 	.byte	36
   2948 01                 9546 	.byte	1
                           9547 	.globl _depth2RollingRight9
   2949                    9548 _depth2RollingRight9:
   2949 00                 9549 	.byte	0
   294A 2A                 9550 	.byte	42
   294B 1B                 9551 	.byte	27
   294C FF                 9552 	.byte	-1
   294D DF                 9553 	.byte	-33
   294E 0F                 9554 	.byte	15
   294F FF                 9555 	.byte	-1
   2950 30                 9556 	.byte	48
   2951 DC                 9557 	.byte	-36
   2952 FF                 9558 	.byte	-1
   2953 21                 9559 	.byte	33
   2954 F4                 9560 	.byte	-12
   2955 FF                 9561 	.byte	-1
   2956 D0                 9562 	.byte	-48
   2957 21                 9563 	.byte	33
   2958 FF                 9564 	.byte	-1
   2959 18                 9565 	.byte	24
   295A 27                 9566 	.byte	39
   295B 00                 9567 	.byte	0
   295C C7                 9568 	.byte	-57
   295D E8                 9569 	.byte	-24
   295E FF                 9570 	.byte	-1
   295F 18                 9571 	.byte	24
   2960 27                 9572 	.byte	39
   2961 00                 9573 	.byte	0
   2962 18                 9574 	.byte	24
   2963 B5                 9575 	.byte	-75
   2964 FF                 9576 	.byte	-1
   2965 18                 9577 	.byte	24
   2966 27                 9578 	.byte	39
   2967 00                 9579 	.byte	0
   2968 09                 9580 	.byte	9
   2969 CD                 9581 	.byte	-51
   296A FF                 9582 	.byte	-1
   296B 18                 9583 	.byte	24
   296C 24                 9584 	.byte	36
   296D 00                 9585 	.byte	0
   296E D0                 9586 	.byte	-48
   296F 24                 9587 	.byte	36
   2970 FF                 9588 	.byte	-1
   2971 DF                 9589 	.byte	-33
   2972 0F                 9590 	.byte	15
   2973 FF                 9591 	.byte	-1
   2974 30                 9592 	.byte	48
   2975 DC                 9593 	.byte	-36
   2976 FF                 9594 	.byte	-1
   2977 21                 9595 	.byte	33
   2978 F1                 9596 	.byte	-15
   2979 FF                 9597 	.byte	-1
   297A D0                 9598 	.byte	-48
   297B 24                 9599 	.byte	36
   297C 01                 9600 	.byte	1
                           9601 	.globl _width2RollingFront9
   297D                    9602 _width2RollingFront9:
   297D FF                 9603 	.byte	-1
   297E 12                 9604 	.byte	18
   297F 54                 9605 	.byte	84
   2980 FF                 9606 	.byte	-1
   2981 2D                 9607 	.byte	45
   2982 FA                 9608 	.byte	-6
   2983 FF                 9609 	.byte	-1
   2984 EE                 9610 	.byte	-18
   2985 AF                 9611 	.byte	-81
   2986 FF                 9612 	.byte	-1
   2987 D3                 9613 	.byte	-45
   2988 03                 9614 	.byte	3
   2989 FF                 9615 	.byte	-1
   298A FD                 9616 	.byte	-3
   298B 12                 9617 	.byte	18
   298C 00                 9618 	.byte	0
   298D 15                 9619 	.byte	21
   298E 42                 9620 	.byte	66
   298F FF                 9621 	.byte	-1
   2990 FA                 9622 	.byte	-6
   2991 12                 9623 	.byte	18
   2992 00                 9624 	.byte	0
   2993 33                 9625 	.byte	51
   2994 E8                 9626 	.byte	-24
   2995 FF                 9627 	.byte	-1
   2996 FA                 9628 	.byte	-6
   2997 0F                 9629 	.byte	15
   2998 00                 9630 	.byte	0
   2999 F4                 9631 	.byte	-12
   299A A0                 9632 	.byte	-96
   299B FF                 9633 	.byte	-1
   299C FA                 9634 	.byte	-6
   299D 0C                 9635 	.byte	12
   299E 00                 9636 	.byte	0
   299F D6                 9637 	.byte	-42
   29A0 09                 9638 	.byte	9
   29A1 FF                 9639 	.byte	-1
   29A2 0F                 9640 	.byte	15
   29A3 54                 9641 	.byte	84
   29A4 FF                 9642 	.byte	-1
   29A5 2D                 9643 	.byte	45
   29A6 F7                 9644 	.byte	-9
   29A7 FF                 9645 	.byte	-1
   29A8 EE                 9646 	.byte	-18
   29A9 AC                 9647 	.byte	-84
   29AA FF                 9648 	.byte	-1
   29AB D6                 9649 	.byte	-42
   29AC 09                 9650 	.byte	9
   29AD 01                 9651 	.byte	1
                           9652 	.globl _width2RollingBack9
   29AE                    9653 _width2RollingBack9:
   29AE 00                 9654 	.byte	0
   29AF 33                 9655 	.byte	51
   29B0 F7                 9656 	.byte	-9
   29B1 FF                 9657 	.byte	-1
   29B2 12                 9658 	.byte	18
   29B3 51                 9659 	.byte	81
   29B4 FF                 9660 	.byte	-1
   29B5 E5                 9661 	.byte	-27
   29B6 FA                 9662 	.byte	-6
   29B7 FF                 9663 	.byte	-1
   29B8 EE                 9664 	.byte	-18
   29B9 AF                 9665 	.byte	-81
   29BA FF                 9666 	.byte	-1
   29BB 1B                 9667 	.byte	27
   29BC 06                 9668 	.byte	6
   29BD FF                 9669 	.byte	-1
   29BE 24                 9670 	.byte	36
   29BF F1                 9671 	.byte	-15
   29C0 00                 9672 	.byte	0
   29C1 EE                 9673 	.byte	-18
   29C2 60                 9674 	.byte	96
   29C3 FF                 9675 	.byte	-1
   29C4 24                 9676 	.byte	36
   29C5 F1                 9677 	.byte	-15
   29C6 00                 9678 	.byte	0
   29C7 C1                 9679 	.byte	-63
   29C8 09                 9680 	.byte	9
   29C9 FF                 9681 	.byte	-1
   29CA 24                 9682 	.byte	36
   29CB EE                 9683 	.byte	-18
   29CC 00                 9684 	.byte	0
   29CD CA                 9685 	.byte	-54
   29CE C1                 9686 	.byte	-63
   29CF FF                 9687 	.byte	-1
   29D0 24                 9688 	.byte	36
   29D1 EE                 9689 	.byte	-18
   29D2 00                 9690 	.byte	0
   29D3 1B                 9691 	.byte	27
   29D4 09                 9692 	.byte	9
   29D5 FF                 9693 	.byte	-1
   29D6 12                 9694 	.byte	18
   29D7 51                 9695 	.byte	81
   29D8 FF                 9696 	.byte	-1
   29D9 E5                 9697 	.byte	-27
   29DA F7                 9698 	.byte	-9
   29DB FF                 9699 	.byte	-1
   29DC EE                 9700 	.byte	-18
   29DD AF                 9701 	.byte	-81
   29DE FF                 9702 	.byte	-1
   29DF 1B                 9703 	.byte	27
   29E0 09                 9704 	.byte	9
   29E1 01                 9705 	.byte	1
                           9706 	.globl _height1FallingLeft9
   29E2                    9707 _height1FallingLeft9:
   29E2 FF                 9708 	.byte	-1
   29E3 27                 9709 	.byte	39
   29E4 0F                 9710 	.byte	15
   29E5 FF                 9711 	.byte	-1
   29E6 18                 9712 	.byte	24
   29E7 F1                 9713 	.byte	-15
   29E8 FF                 9714 	.byte	-1
   29E9 D9                 9715 	.byte	-39
   29EA F1                 9716 	.byte	-15
   29EB FF                 9717 	.byte	-1
   29EC E8                 9718 	.byte	-24
   29ED 0F                 9719 	.byte	15
   29EE FF                 9720 	.byte	-1
   29EF 06                 9721 	.byte	6
   29F0 DC                 9722 	.byte	-36
   29F1 00                 9723 	.byte	0
   29F2 21                 9724 	.byte	33
   29F3 33                 9725 	.byte	51
   29F4 FF                 9726 	.byte	-1
   29F5 06                 9727 	.byte	6
   29F6 DC                 9728 	.byte	-36
   29F7 00                 9729 	.byte	0
   29F8 12                 9730 	.byte	18
   29F9 15                 9731 	.byte	21
   29FA FF                 9732 	.byte	-1
   29FB 06                 9733 	.byte	6
   29FC D9                 9734 	.byte	-39
   29FD 00                 9735 	.byte	0
   29FE D3                 9736 	.byte	-45
   29FF 18                 9737 	.byte	24
   2A00 FF                 9738 	.byte	-1
   2A01 06                 9739 	.byte	6
   2A02 D9                 9740 	.byte	-39
   2A03 00                 9741 	.byte	0
   2A04 E8                 9742 	.byte	-24
   2A05 12                 9743 	.byte	18
   2A06 FF                 9744 	.byte	-1
   2A07 27                 9745 	.byte	39
   2A08 0F                 9746 	.byte	15
   2A09 FF                 9747 	.byte	-1
   2A0A 18                 9748 	.byte	24
   2A0B EE                 9749 	.byte	-18
   2A0C FF                 9750 	.byte	-1
   2A0D D9                 9751 	.byte	-39
   2A0E F1                 9752 	.byte	-15
   2A0F FF                 9753 	.byte	-1
   2A10 E8                 9754 	.byte	-24
   2A11 12                 9755 	.byte	18
   2A12 01                 9756 	.byte	1
                           9757 	.globl _height1FallingRight9
   2A13                    9758 _height1FallingRight9:
   2A13 00                 9759 	.byte	0
   2A14 2A                 9760 	.byte	42
   2A15 1B                 9761 	.byte	27
   2A16 FF                 9762 	.byte	-1
   2A17 DF                 9763 	.byte	-33
   2A18 0F                 9764 	.byte	15
   2A19 FF                 9765 	.byte	-1
   2A1A 18                 9766 	.byte	24
   2A1B EE                 9767 	.byte	-18
   2A1C FF                 9768 	.byte	-1
   2A1D 21                 9769 	.byte	33
   2A1E F1                 9770 	.byte	-15
   2A1F FF                 9771 	.byte	-1
   2A20 E8                 9772 	.byte	-24
   2A21 12                 9773 	.byte	18
   2A22 FF                 9774 	.byte	-1
   2A23 18                 9775 	.byte	24
   2A24 27                 9776 	.byte	39
   2A25 00                 9777 	.byte	0
   2A26 C7                 9778 	.byte	-57
   2A27 E8                 9779 	.byte	-24
   2A28 FF                 9780 	.byte	-1
   2A29 18                 9781 	.byte	24
   2A2A 27                 9782 	.byte	39
   2A2B 00                 9783 	.byte	0
   2A2C 00                 9784 	.byte	0
   2A2D C7                 9785 	.byte	-57
   2A2E FF                 9786 	.byte	-1
   2A2F 18                 9787 	.byte	24
   2A30 27                 9788 	.byte	39
   2A31 00                 9789 	.byte	0
   2A32 09                 9790 	.byte	9
   2A33 CA                 9791 	.byte	-54
   2A34 FF                 9792 	.byte	-1
   2A35 18                 9793 	.byte	24
   2A36 27                 9794 	.byte	39
   2A37 00                 9795 	.byte	0
   2A38 E8                 9796 	.byte	-24
   2A39 12                 9797 	.byte	18
   2A3A FF                 9798 	.byte	-1
   2A3B DF                 9799 	.byte	-33
   2A3C 0F                 9800 	.byte	15
   2A3D FF                 9801 	.byte	-1
   2A3E 18                 9802 	.byte	24
   2A3F EE                 9803 	.byte	-18
   2A40 FF                 9804 	.byte	-1
   2A41 21                 9805 	.byte	33
   2A42 F1                 9806 	.byte	-15
   2A43 FF                 9807 	.byte	-1
   2A44 E8                 9808 	.byte	-24
   2A45 12                 9809 	.byte	18
   2A46 01                 9810 	.byte	1
                           9811 	.globl _height1FallingBack9
   2A47                    9812 _height1FallingBack9:
   2A47 00                 9813 	.byte	0
   2A48 33                 9814 	.byte	51
   2A49 F7                 9815 	.byte	-9
   2A4A FF                 9816 	.byte	-1
   2A4B 09                 9817 	.byte	9
   2A4C 27                 9818 	.byte	39
   2A4D FF                 9819 	.byte	-1
   2A4E E5                 9820 	.byte	-27
   2A4F FA                 9821 	.byte	-6
   2A50 FF                 9822 	.byte	-1
   2A51 F7                 9823 	.byte	-9
   2A52 D9                 9824 	.byte	-39
   2A53 FF                 9825 	.byte	-1
   2A54 1B                 9826 	.byte	27
   2A55 06                 9827 	.byte	6
   2A56 FF                 9828 	.byte	-1
   2A57 24                 9829 	.byte	36
   2A58 F1                 9830 	.byte	-15
   2A59 00                 9831 	.byte	0
   2A5A E5                 9832 	.byte	-27
   2A5B 36                 9833 	.byte	54
   2A5C FF                 9834 	.byte	-1
   2A5D 24                 9835 	.byte	36
   2A5E F1                 9836 	.byte	-15
   2A5F 00                 9837 	.byte	0
   2A60 C1                 9838 	.byte	-63
   2A61 09                 9839 	.byte	9
   2A62 FF                 9840 	.byte	-1
   2A63 24                 9841 	.byte	36
   2A64 EE                 9842 	.byte	-18
   2A65 00                 9843 	.byte	0
   2A66 D3                 9844 	.byte	-45
   2A67 EB                 9845 	.byte	-21
   2A68 FF                 9846 	.byte	-1
   2A69 24                 9847 	.byte	36
   2A6A EE                 9848 	.byte	-18
   2A6B 00                 9849 	.byte	0
   2A6C 1B                 9850 	.byte	27
   2A6D 09                 9851 	.byte	9
   2A6E FF                 9852 	.byte	-1
   2A6F 09                 9853 	.byte	9
   2A70 27                 9854 	.byte	39
   2A71 FF                 9855 	.byte	-1
   2A72 E5                 9856 	.byte	-27
   2A73 F7                 9857 	.byte	-9
   2A74 FF                 9858 	.byte	-1
   2A75 F7                 9859 	.byte	-9
   2A76 D9                 9860 	.byte	-39
   2A77 FF                 9861 	.byte	-1
   2A78 1B                 9862 	.byte	27
   2A79 09                 9863 	.byte	9
   2A7A 01                 9864 	.byte	1
                           9865 	.globl _height1FallingFront9
   2A7B                    9866 _height1FallingFront9:
   2A7B FF                 9867 	.byte	-1
   2A7C 09                 9868 	.byte	9
   2A7D 2A                 9869 	.byte	42
   2A7E FF                 9870 	.byte	-1
   2A7F 2D                 9871 	.byte	45
   2A80 FA                 9872 	.byte	-6
   2A81 FF                 9873 	.byte	-1
   2A82 F7                 9874 	.byte	-9
   2A83 D9                 9875 	.byte	-39
   2A84 FF                 9876 	.byte	-1
   2A85 D3                 9877 	.byte	-45
   2A86 03                 9878 	.byte	3
   2A87 FF                 9879 	.byte	-1
   2A88 FD                 9880 	.byte	-3
   2A89 12                 9881 	.byte	18
   2A8A 00                 9882 	.byte	0
   2A8B 0C                 9883 	.byte	12
   2A8C 18                 9884 	.byte	24
   2A8D FF                 9885 	.byte	-1
   2A8E FA                 9886 	.byte	-6
   2A8F 12                 9887 	.byte	18
   2A90 00                 9888 	.byte	0
   2A91 33                 9889 	.byte	51
   2A92 E8                 9890 	.byte	-24
   2A93 FF                 9891 	.byte	-1
   2A94 FA                 9892 	.byte	-6
   2A95 0F                 9893 	.byte	15
   2A96 00                 9894 	.byte	0
   2A97 FD                 9895 	.byte	-3
   2A98 CA                 9896 	.byte	-54
   2A99 FF                 9897 	.byte	-1
   2A9A FA                 9898 	.byte	-6
   2A9B 0C                 9899 	.byte	12
   2A9C 00                 9900 	.byte	0
   2A9D D6                 9901 	.byte	-42
   2A9E 09                 9902 	.byte	9
   2A9F FF                 9903 	.byte	-1
   2AA0 06                 9904 	.byte	6
   2AA1 2A                 9905 	.byte	42
   2AA2 FF                 9906 	.byte	-1
   2AA3 2D                 9907 	.byte	45
   2AA4 F7                 9908 	.byte	-9
   2AA5 FF                 9909 	.byte	-1
   2AA6 F7                 9910 	.byte	-9
   2AA7 D6                 9911 	.byte	-42
   2AA8 FF                 9912 	.byte	-1
   2AA9 D6                 9913 	.byte	-42
   2AAA 09                 9914 	.byte	9
   2AAB 01                 9915 	.byte	1
                           9916 	.globl _height2FallingLeft10
   2AAC                    9917 _height2FallingLeft10:
   2AAC FF                 9918 	.byte	-1
   2AAD 27                 9919 	.byte	39
   2AAE 0C                 9920 	.byte	12
   2AAF FF                 9921 	.byte	-1
   2AB0 18                 9922 	.byte	24
   2AB1 F1                 9923 	.byte	-15
   2AB2 FF                 9924 	.byte	-1
   2AB3 D9                 9925 	.byte	-39
   2AB4 F4                 9926 	.byte	-12
   2AB5 FF                 9927 	.byte	-1
   2AB6 E8                 9928 	.byte	-24
   2AB7 0F                 9929 	.byte	15
   2AB8 FF                 9930 	.byte	-1
   2AB9 03                 9931 	.byte	3
   2ABA B2                 9932 	.byte	-78
   2ABB 00                 9933 	.byte	0
   2ABC 24                 9934 	.byte	36
   2ABD 5A                 9935 	.byte	90
   2ABE FF                 9936 	.byte	-1
   2ABF 03                 9937 	.byte	3
   2AC0 B2                 9938 	.byte	-78
   2AC1 00                 9939 	.byte	0
   2AC2 15                 9940 	.byte	21
   2AC3 3F                 9941 	.byte	63
   2AC4 FF                 9942 	.byte	-1
   2AC5 03                 9943 	.byte	3
   2AC6 AF                 9944 	.byte	-81
   2AC7 00                 9945 	.byte	0
   2AC8 D6                 9946 	.byte	-42
   2AC9 45                 9947 	.byte	69
   2ACA FF                 9948 	.byte	-1
   2ACB 03                 9949 	.byte	3
   2ACC AF                 9950 	.byte	-81
   2ACD 00                 9951 	.byte	0
   2ACE E8                 9952 	.byte	-24
   2ACF 12                 9953 	.byte	18
   2AD0 FF                 9954 	.byte	-1
   2AD1 27                 9955 	.byte	39
   2AD2 0C                 9956 	.byte	12
   2AD3 FF                 9957 	.byte	-1
   2AD4 18                 9958 	.byte	24
   2AD5 EE                 9959 	.byte	-18
   2AD6 FF                 9960 	.byte	-1
   2AD7 D9                 9961 	.byte	-39
   2AD8 F4                 9962 	.byte	-12
   2AD9 FF                 9963 	.byte	-1
   2ADA E8                 9964 	.byte	-24
   2ADB 12                 9965 	.byte	18
   2ADC 01                 9966 	.byte	1
                           9967 	.globl _height2RisingRight10
   2ADD                    9968 _height2RisingRight10:
   2ADD 00                 9969 	.byte	0
   2ADE 12                 9970 	.byte	18
   2ADF 54                 9971 	.byte	84
   2AE0 FF                 9972 	.byte	-1
   2AE1 0F                 9973 	.byte	15
   2AE2 2A                 9974 	.byte	42
   2AE3 FF                 9975 	.byte	-1
   2AE4 18                 9976 	.byte	24
   2AE5 EE                 9977 	.byte	-18
   2AE6 FF                 9978 	.byte	-1
   2AE7 F1                 9979 	.byte	-15
   2AE8 D6                 9980 	.byte	-42
   2AE9 FF                 9981 	.byte	-1
   2AEA E8                 9982 	.byte	-24
   2AEB 12                 9983 	.byte	18
   2AEC FF                 9984 	.byte	-1
   2AED 4B                 9985 	.byte	75
   2AEE F4                 9986 	.byte	-12
   2AEF 00                 9987 	.byte	0
   2AF0 C4                 9988 	.byte	-60
   2AF1 36                 9989 	.byte	54
   2AF2 FF                 9990 	.byte	-1
   2AF3 4B                 9991 	.byte	75
   2AF4 F4                 9992 	.byte	-12
   2AF5 00                 9993 	.byte	0
   2AF6 CD                 9994 	.byte	-51
   2AF7 FA                 9995 	.byte	-6
   2AF8 FF                 9996 	.byte	-1
   2AF9 4B                 9997 	.byte	75
   2AFA F4                 9998 	.byte	-12
   2AFB 00                 9999 	.byte	0
   2AFC A6                10000 	.byte	-90
   2AFD E2                10001 	.byte	-30
   2AFE FF                10002 	.byte	-1
   2AFF 4B                10003 	.byte	75
   2B00 F4                10004 	.byte	-12
   2B01 00                10005 	.byte	0
   2B02 E8                10006 	.byte	-24
   2B03 12                10007 	.byte	18
   2B04 FF                10008 	.byte	-1
   2B05 0F                10009 	.byte	15
   2B06 2A                10010 	.byte	42
   2B07 FF                10011 	.byte	-1
   2B08 18                10012 	.byte	24
   2B09 EE                10013 	.byte	-18
   2B0A FF                10014 	.byte	-1
   2B0B F1                10015 	.byte	-15
   2B0C D6                10016 	.byte	-42
   2B0D FF                10017 	.byte	-1
   2B0E E8                10018 	.byte	-24
   2B0F 12                10019 	.byte	18
   2B10 01                10020 	.byte	1
                          10021 	.globl _height2FallingRight10
   2B11                   10022 _height2FallingRight10:
   2B11 00                10023 	.byte	0
   2B12 2D                10024 	.byte	45
   2B13 1E                10025 	.byte	30
   2B14 FF                10026 	.byte	-1
   2B15 DC                10027 	.byte	-36
   2B16 0C                10028 	.byte	12
   2B17 FF                10029 	.byte	-1
   2B18 18                10030 	.byte	24
   2B19 EE                10031 	.byte	-18
   2B1A FF                10032 	.byte	-1
   2B1B 24                10033 	.byte	36
   2B1C F4                10034 	.byte	-12
   2B1D FF                10035 	.byte	-1
   2B1E E8                10036 	.byte	-24
   2B1F 12                10037 	.byte	18
   2B20 FF                10038 	.byte	-1
   2B21 24                10039 	.byte	36
   2B22 51                10040 	.byte	81
   2B23 00                10041 	.byte	0
   2B24 B8                10042 	.byte	-72
   2B25 BB                10043 	.byte	-69
   2B26 FF                10044 	.byte	-1
   2B27 27                10045 	.byte	39
   2B28 51                10046 	.byte	81
   2B29 00                10047 	.byte	0
   2B2A F1                10048 	.byte	-15
   2B2B 9D                10049 	.byte	-99
   2B2C FF                10050 	.byte	-1
   2B2D 27                10051 	.byte	39
   2B2E 51                10052 	.byte	81
   2B2F 00                10053 	.byte	0
   2B30 FD                10054 	.byte	-3
   2B31 A3                10055 	.byte	-93
   2B32 FF                10056 	.byte	-1
   2B33 24                10057 	.byte	36
   2B34 51                10058 	.byte	81
   2B35 00                10059 	.byte	0
   2B36 E8                10060 	.byte	-24
   2B37 12                10061 	.byte	18
   2B38 FF                10062 	.byte	-1
   2B39 DF                10063 	.byte	-33
   2B3A 0C                10064 	.byte	12
   2B3B FF                10065 	.byte	-1
   2B3C 18                10066 	.byte	24
   2B3D EE                10067 	.byte	-18
   2B3E FF                10068 	.byte	-1
   2B3F 21                10069 	.byte	33
   2B40 F4                10070 	.byte	-12
   2B41 FF                10071 	.byte	-1
   2B42 E8                10072 	.byte	-24
   2B43 12                10073 	.byte	18
   2B44 01                10074 	.byte	1
                          10075 	.globl _height2RisingLeft10
   2B45                   10076 _height2RisingLeft10:
   2B45 00                10077 	.byte	0
   2B46 00                10078 	.byte	0
   2B47 D9                10079 	.byte	-39
   2B48 FF                10080 	.byte	-1
   2B49 00                10081 	.byte	0
   2B4A 27                10082 	.byte	39
   2B4B FF                10083 	.byte	-1
   2B4C 18                10084 	.byte	24
   2B4D F1                10085 	.byte	-15
   2B4E FF                10086 	.byte	-1
   2B4F FD                10087 	.byte	-3
   2B50 D6                10088 	.byte	-42
   2B51 FF                10089 	.byte	-1
   2B52 EB                10090 	.byte	-21
   2B53 12                10091 	.byte	18
   2B54 FF                10092 	.byte	-1
   2B55 4B                10093 	.byte	75
   2B56 0C                10094 	.byte	12
   2B57 00                10095 	.byte	0
   2B58 B5                10096 	.byte	-75
   2B59 1B                10097 	.byte	27
   2B5A FF                10098 	.byte	-1
   2B5B 51                10099 	.byte	81
   2B5C 0C                10100 	.byte	12
   2B5D 00                10101 	.byte	0
   2B5E C7                10102 	.byte	-57
   2B5F E5                10103 	.byte	-27
   2B60 FF                10104 	.byte	-1
   2B61 51                10105 	.byte	81
   2B62 0C                10106 	.byte	12
   2B63 00                10107 	.byte	0
   2B64 AC                10108 	.byte	-84
   2B65 CA                10109 	.byte	-54
   2B66 FF                10110 	.byte	-1
   2B67 4E                10111 	.byte	78
   2B68 0C                10112 	.byte	12
   2B69 00                10113 	.byte	0
   2B6A E8                10114 	.byte	-24
   2B6B 12                10115 	.byte	18
   2B6C FF                10116 	.byte	-1
   2B6D 06                10117 	.byte	6
   2B6E 27                10118 	.byte	39
   2B6F FF                10119 	.byte	-1
   2B70 18                10120 	.byte	24
   2B71 F1                10121 	.byte	-15
   2B72 FF                10122 	.byte	-1
   2B73 FA                10123 	.byte	-6
   2B74 D6                10124 	.byte	-42
   2B75 FF                10125 	.byte	-1
   2B76 E8                10126 	.byte	-24
   2B77 12                10127 	.byte	18
   2B78 01                10128 	.byte	1
                          10129 	.globl _height2FallingBack10
   2B79                   10130 _height2FallingBack10:
   2B79 00                10131 	.byte	0
   2B7A 36                10132 	.byte	54
   2B7B F7                10133 	.byte	-9
   2B7C FF                10134 	.byte	-1
   2B7D 09                10135 	.byte	9
   2B7E 27                10136 	.byte	39
   2B7F FF                10137 	.byte	-1
   2B80 E2                10138 	.byte	-30
   2B81 FA                10139 	.byte	-6
   2B82 FF                10140 	.byte	-1
   2B83 F7                10141 	.byte	-9
   2B84 D9                10142 	.byte	-39
   2B85 FF                10143 	.byte	-1
   2B86 1E                10144 	.byte	30
   2B87 06                10145 	.byte	6
   2B88 FF                10146 	.byte	-1
   2B89 45                10147 	.byte	69
   2B8A DC                10148 	.byte	-36
   2B8B 00                10149 	.byte	0
   2B8C C4                10150 	.byte	-60
   2B8D 4B                10151 	.byte	75
   2B8E FF                10152 	.byte	-1
   2B8F 45                10153 	.byte	69
   2B90 DF                10154 	.byte	-33
   2B91 00                10155 	.byte	0
   2B92 9D                10156 	.byte	-99
   2B93 1B                10157 	.byte	27
   2B94 FF                10158 	.byte	-1
   2B95 42                10159 	.byte	66
   2B96 DF                10160 	.byte	-33
   2B97 00                10161 	.byte	0
   2B98 B5                10162 	.byte	-75
   2B99 FA                10163 	.byte	-6
   2B9A FF                10164 	.byte	-1
   2B9B 42                10165 	.byte	66
   2B9C DC                10166 	.byte	-36
   2B9D 00                10167 	.byte	0
   2B9E 21                10168 	.byte	33
   2B9F 06                10169 	.byte	6
   2BA0 FF                10170 	.byte	-1
   2BA1 09                10171 	.byte	9
   2BA2 2A                10172 	.byte	42
   2BA3 FF                10173 	.byte	-1
   2BA4 DF                10174 	.byte	-33
   2BA5 FA                10175 	.byte	-6
   2BA6 FF                10176 	.byte	-1
   2BA7 F7                10177 	.byte	-9
   2BA8 D6                10178 	.byte	-42
   2BA9 FF                10179 	.byte	-1
   2BAA 21                10180 	.byte	33
   2BAB 06                10181 	.byte	6
   2BAC 01                10182 	.byte	1
                          10183 	.globl _height2RisingFront10
   2BAD                   10184 _height2RisingFront10:
   2BAD 00                10185 	.byte	0
   2BAE F1                10186 	.byte	-15
   2BAF 12                10187 	.byte	18
   2BB0 FF                10188 	.byte	-1
   2BB1 09                10189 	.byte	9
   2BB2 2A                10190 	.byte	42
   2BB3 FF                10191 	.byte	-1
   2BB4 0F                10192 	.byte	15
   2BB5 EE                10193 	.byte	-18
   2BB6 FF                10194 	.byte	-1
   2BB7 F7                10195 	.byte	-9
   2BB8 D6                10196 	.byte	-42
   2BB9 FF                10197 	.byte	-1
   2BBA F1                10198 	.byte	-15
   2BBB 12                10199 	.byte	18
   2BBC FF                10200 	.byte	-1
   2BBD 51                10201 	.byte	81
   2BBE FA                10202 	.byte	-6
   2BBF 00                10203 	.byte	0
   2BC0 B8                10204 	.byte	-72
   2BC1 30                10205 	.byte	48
   2BC2 FF                10206 	.byte	-1
   2BC3 51                10207 	.byte	81
   2BC4 FA                10208 	.byte	-6
   2BC5 00                10209 	.byte	0
   2BC6 BE                10210 	.byte	-66
   2BC7 F4                10211 	.byte	-12
   2BC8 FF                10212 	.byte	-1
   2BC9 54                10213 	.byte	84
   2BCA FA                10214 	.byte	-6
   2BCB 00                10215 	.byte	0
   2BCC A3                10216 	.byte	-93
   2BCD DC                10217 	.byte	-36
   2BCE FF                10218 	.byte	-1
   2BCF 54                10219 	.byte	84
   2BD0 FD                10220 	.byte	-3
   2BD1 00                10221 	.byte	0
   2BD2 EE                10222 	.byte	-18
   2BD3 0F                10223 	.byte	15
   2BD4 FF                10224 	.byte	-1
   2BD5 09                10225 	.byte	9
   2BD6 2A                10226 	.byte	42
   2BD7 FF                10227 	.byte	-1
   2BD8 12                10228 	.byte	18
   2BD9 EE                10229 	.byte	-18
   2BDA FF                10230 	.byte	-1
   2BDB F7                10231 	.byte	-9
   2BDC D9                10232 	.byte	-39
   2BDD FF                10233 	.byte	-1
   2BDE EE                10234 	.byte	-18
   2BDF 0F                10235 	.byte	15
   2BE0 01                10236 	.byte	1
                          10237 	.globl _height2FallingFront10
   2BE1                   10238 _height2FallingFront10:
   2BE1 FF                10239 	.byte	-1
   2BE2 09                10240 	.byte	9
   2BE3 2A                10241 	.byte	42
   2BE4 FF                10242 	.byte	-1
   2BE5 2D                10243 	.byte	45
   2BE6 FA                10244 	.byte	-6
   2BE7 FF                10245 	.byte	-1
   2BE8 F7                10246 	.byte	-9
   2BE9 D9                10247 	.byte	-39
   2BEA FF                10248 	.byte	-1
   2BEB D3                10249 	.byte	-45
   2BEC 03                10250 	.byte	3
   2BED FF                10251 	.byte	-1
   2BEE E8                10252 	.byte	-24
   2BEF 24                10253 	.byte	36
   2BF0 00                10254 	.byte	0
   2BF1 21                10255 	.byte	33
   2BF2 06                10256 	.byte	6
   2BF3 FF                10257 	.byte	-1
   2BF4 E8                10258 	.byte	-24
   2BF5 24                10259 	.byte	36
   2BF6 00                10260 	.byte	0
   2BF7 45                10261 	.byte	69
   2BF8 D6                10262 	.byte	-42
   2BF9 FF                10263 	.byte	-1
   2BFA E5                10264 	.byte	-27
   2BFB 24                10265 	.byte	36
   2BFC 00                10266 	.byte	0
   2BFD 12                10267 	.byte	18
   2BFE B5                10268 	.byte	-75
   2BFF FF                10269 	.byte	-1
   2C00 E5                10270 	.byte	-27
   2C01 21                10271 	.byte	33
   2C02 00                10272 	.byte	0
   2C03 D6                10273 	.byte	-42
   2C04 06                10274 	.byte	6
   2C05 FF                10275 	.byte	-1
   2C06 09                10276 	.byte	9
   2C07 2A                10277 	.byte	42
   2C08 FF                10278 	.byte	-1
   2C09 2A                10279 	.byte	42
   2C0A FA                10280 	.byte	-6
   2C0B FF                10281 	.byte	-1
   2C0C F7                10282 	.byte	-9
   2C0D D6                10283 	.byte	-42
   2C0E FF                10284 	.byte	-1
   2C0F D6                10285 	.byte	-42
   2C10 06                10286 	.byte	6
   2C11 01                10287 	.byte	1
                          10288 	.globl _height2RisingBack10
   2C12                   10289 _height2RisingBack10:
   2C12 00                10290 	.byte	0
   2C13 30                10291 	.byte	48
   2C14 DF                10292 	.byte	-33
   2C15 FF                10293 	.byte	-1
   2C16 09                10294 	.byte	9
   2C17 27                10295 	.byte	39
   2C18 FF                10296 	.byte	-1
   2C19 1E                10297 	.byte	30
   2C1A F1                10298 	.byte	-15
   2C1B FF                10299 	.byte	-1
   2C1C F7                10300 	.byte	-9
   2C1D D6                10301 	.byte	-42
   2C1E FF                10302 	.byte	-1
   2C1F E2                10303 	.byte	-30
   2C20 12                10304 	.byte	18
   2C21 FF                10305 	.byte	-1
   2C22 48                10306 	.byte	72
   2C23 06                10307 	.byte	6
   2C24 00                10308 	.byte	0
   2C25 C1                10309 	.byte	-63
   2C26 21                10310 	.byte	33
   2C27 FF                10311 	.byte	-1
   2C28 48                10312 	.byte	72
   2C29 06                10313 	.byte	6
   2C2A 00                10314 	.byte	0
   2C2B D6                10315 	.byte	-42
   2C2C EB                10316 	.byte	-21
   2C2D FF                10317 	.byte	-1
   2C2E 45                10318 	.byte	69
   2C2F 06                10319 	.byte	6
   2C30 00                10320 	.byte	0
   2C31 B2                10321 	.byte	-78
   2C32 D0                10322 	.byte	-48
   2C33 FF                10323 	.byte	-1
   2C34 45                10324 	.byte	69
   2C35 06                10325 	.byte	6
   2C36 00                10326 	.byte	0
   2C37 E5                10327 	.byte	-27
   2C38 12                10328 	.byte	18
   2C39 FF                10329 	.byte	-1
   2C3A 09                10330 	.byte	9
   2C3B 27                10331 	.byte	39
   2C3C FF                10332 	.byte	-1
   2C3D 1B                10333 	.byte	27
   2C3E F1                10334 	.byte	-15
   2C3F FF                10335 	.byte	-1
   2C40 F7                10336 	.byte	-9
   2C41 D6                10337 	.byte	-42
   2C42 FF                10338 	.byte	-1
   2C43 E5                10339 	.byte	-27
   2C44 12                10340 	.byte	18
   2C45 01                10341 	.byte	1
                          10342 	.globl _depth2RollingLeft10
   2C46                   10343 _depth2RollingLeft10:
   2C46 FF                10344 	.byte	-1
   2C47 27                10345 	.byte	39
   2C48 0C                10346 	.byte	12
   2C49 FF                10347 	.byte	-1
   2C4A 30                10348 	.byte	48
   2C4B DF                10349 	.byte	-33
   2C4C FF                10350 	.byte	-1
   2C4D D9                10351 	.byte	-39
   2C4E F4                10352 	.byte	-12
   2C4F FF                10353 	.byte	-1
   2C50 D0                10354 	.byte	-48
   2C51 21                10355 	.byte	33
   2C52 FF                10356 	.byte	-1
   2C53 00                10357 	.byte	0
   2C54 D9                10358 	.byte	-39
   2C55 00                10359 	.byte	0
   2C56 27                10360 	.byte	39
   2C57 33                10361 	.byte	51
   2C58 FF                10362 	.byte	-1
   2C59 03                10363 	.byte	3
   2C5A D9                10364 	.byte	-39
   2C5B 00                10365 	.byte	0
   2C5C 2D                10366 	.byte	45
   2C5D 06                10367 	.byte	6
   2C5E FF                10368 	.byte	-1
   2C5F 03                10369 	.byte	3
   2C60 D6                10370 	.byte	-42
   2C61 00                10371 	.byte	0
   2C62 D6                10372 	.byte	-42
   2C63 1E                10373 	.byte	30
   2C64 FF                10374 	.byte	-1
   2C65 00                10375 	.byte	0
   2C66 D6                10376 	.byte	-42
   2C67 00                10377 	.byte	0
   2C68 D0                10378 	.byte	-48
   2C69 24                10379 	.byte	36
   2C6A FF                10380 	.byte	-1
   2C6B 2A                10381 	.byte	42
   2C6C 0C                10382 	.byte	12
   2C6D FF                10383 	.byte	-1
   2C6E 30                10384 	.byte	48
   2C6F DC                10385 	.byte	-36
   2C70 FF                10386 	.byte	-1
   2C71 D6                10387 	.byte	-42
   2C72 F4                10388 	.byte	-12
   2C73 FF                10389 	.byte	-1
   2C74 D0                10390 	.byte	-48
   2C75 24                10391 	.byte	36
   2C76 01                10392 	.byte	1
                          10393 	.globl _depth2RollingRight10
   2C77                   10394 _depth2RollingRight10:
   2C77 00                10395 	.byte	0
   2C78 2D                10396 	.byte	45
   2C79 1E                10397 	.byte	30
   2C7A FF                10398 	.byte	-1
   2C7B DC                10399 	.byte	-36
   2C7C 0C                10400 	.byte	12
   2C7D FF                10401 	.byte	-1
   2C7E 30                10402 	.byte	48
   2C7F DC                10403 	.byte	-36
   2C80 FF                10404 	.byte	-1
   2C81 24                10405 	.byte	36
   2C82 F7                10406 	.byte	-9
   2C83 FF                10407 	.byte	-1
   2C84 D0                10408 	.byte	-48
   2C85 21                10409 	.byte	33
   2C86 FF                10410 	.byte	-1
   2C87 12                10411 	.byte	18
   2C88 2A                10412 	.byte	42
   2C89 00                10413 	.byte	0
   2C8A CA                10414 	.byte	-54
   2C8B E2                10415 	.byte	-30
   2C8C FF                10416 	.byte	-1
   2C8D 12                10417 	.byte	18
   2C8E 2A                10418 	.byte	42
   2C8F 00                10419 	.byte	0
   2C90 1E                10420 	.byte	30
   2C91 B2                10421 	.byte	-78
   2C92 FF                10422 	.byte	-1
   2C93 12                10423 	.byte	18
   2C94 2A                10424 	.byte	42
   2C95 00                10425 	.byte	0
   2C96 12                10426 	.byte	18
   2C97 CD                10427 	.byte	-51
   2C98 FF                10428 	.byte	-1
   2C99 12                10429 	.byte	18
   2C9A 27                10430 	.byte	39
   2C9B 00                10431 	.byte	0
   2C9C D0                10432 	.byte	-48
   2C9D 24                10433 	.byte	36
   2C9E FF                10434 	.byte	-1
   2C9F DC                10435 	.byte	-36
   2CA0 0C                10436 	.byte	12
   2CA1 FF                10437 	.byte	-1
   2CA2 30                10438 	.byte	48
   2CA3 DC                10439 	.byte	-36
   2CA4 FF                10440 	.byte	-1
   2CA5 24                10441 	.byte	36
   2CA6 F4                10442 	.byte	-12
   2CA7 FF                10443 	.byte	-1
   2CA8 D0                10444 	.byte	-48
   2CA9 24                10445 	.byte	36
   2CAA 01                10446 	.byte	1
                          10447 	.globl _width2RollingFront10
   2CAB                   10448 _width2RollingFront10:
   2CAB FF                10449 	.byte	-1
   2CAC 12                10450 	.byte	18
   2CAD 54                10451 	.byte	84
   2CAE FF                10452 	.byte	-1
   2CAF 2D                10453 	.byte	45
   2CB0 FA                10454 	.byte	-6
   2CB1 FF                10455 	.byte	-1
   2CB2 EE                10456 	.byte	-18
   2CB3 AF                10457 	.byte	-81
   2CB4 FF                10458 	.byte	-1
   2CB5 D3                10459 	.byte	-45
   2CB6 03                10460 	.byte	3
   2CB7 FF                10461 	.byte	-1
   2CB8 F7                10462 	.byte	-9
   2CB9 12                10463 	.byte	18
   2CBA 00                10464 	.byte	0
   2CBB 1B                10465 	.byte	27
   2CBC 42                10466 	.byte	66
   2CBD FF                10467 	.byte	-1
   2CBE F4                10468 	.byte	-12
   2CBF 12                10469 	.byte	18
   2CC0 00                10470 	.byte	0
   2CC1 39                10471 	.byte	57
   2CC2 E8                10472 	.byte	-24
   2CC3 FF                10473 	.byte	-1
   2CC4 F1                10474 	.byte	-15
   2CC5 12                10475 	.byte	18
   2CC6 00                10476 	.byte	0
   2CC7 FD                10477 	.byte	-3
   2CC8 9D                10478 	.byte	-99
   2CC9 FF                10479 	.byte	-1
   2CCA F1                10480 	.byte	-15
   2CCB 0F                10481 	.byte	15
   2CCC 00                10482 	.byte	0
   2CCD D9                10483 	.byte	-39
   2CCE 06                10484 	.byte	6
   2CCF FF                10485 	.byte	-1
   2CD0 0F                10486 	.byte	15
   2CD1 54                10487 	.byte	84
   2CD2 FF                10488 	.byte	-1
   2CD3 2A                10489 	.byte	42
   2CD4 FA                10490 	.byte	-6
   2CD5 FF                10491 	.byte	-1
   2CD6 EE                10492 	.byte	-18
   2CD7 AC                10493 	.byte	-84
   2CD8 FF                10494 	.byte	-1
   2CD9 D9                10495 	.byte	-39
   2CDA 06                10496 	.byte	6
   2CDB 01                10497 	.byte	1
                          10498 	.globl _width2RollingBack10
   2CDC                   10499 _width2RollingBack10:
   2CDC 00                10500 	.byte	0
   2CDD 36                10501 	.byte	54
   2CDE F7                10502 	.byte	-9
   2CDF FF                10503 	.byte	-1
   2CE0 12                10504 	.byte	18
   2CE1 51                10505 	.byte	81
   2CE2 FF                10506 	.byte	-1
   2CE3 E2                10507 	.byte	-30
   2CE4 FA                10508 	.byte	-6
   2CE5 FF                10509 	.byte	-1
   2CE6 EE                10510 	.byte	-18
   2CE7 AF                10511 	.byte	-81
   2CE8 FF                10512 	.byte	-1
   2CE9 1E                10513 	.byte	30
   2CEA 06                10514 	.byte	6
   2CEB FF                10515 	.byte	-1
   2CEC 24                10516 	.byte	36
   2CED EE                10517 	.byte	-18
   2CEE 00                10518 	.byte	0
   2CEF EE                10519 	.byte	-18
   2CF0 63                10520 	.byte	99
   2CF1 FF                10521 	.byte	-1
   2CF2 24                10522 	.byte	36
   2CF3 EE                10523 	.byte	-18
   2CF4 00                10524 	.byte	0
   2CF5 BE                10525 	.byte	-66
   2CF6 0C                10526 	.byte	12
   2CF7 FF                10527 	.byte	-1
   2CF8 21                10528 	.byte	33
   2CF9 EE                10529 	.byte	-18
   2CFA 00                10530 	.byte	0
   2CFB CD                10531 	.byte	-51
   2CFC C1                10532 	.byte	-63
   2CFD FF                10533 	.byte	-1
   2CFE 21                10534 	.byte	33
   2CFF EE                10535 	.byte	-18
   2D00 00                10536 	.byte	0
   2D01 21                10537 	.byte	33
   2D02 06                10538 	.byte	6
   2D03 FF                10539 	.byte	-1
   2D04 12                10540 	.byte	18
   2D05 51                10541 	.byte	81
   2D06 FF                10542 	.byte	-1
   2D07 DF                10543 	.byte	-33
   2D08 FA                10544 	.byte	-6
   2D09 FF                10545 	.byte	-1
   2D0A EE                10546 	.byte	-18
   2D0B AF                10547 	.byte	-81
   2D0C FF                10548 	.byte	-1
   2D0D 21                10549 	.byte	33
   2D0E 06                10550 	.byte	6
   2D0F 01                10551 	.byte	1
                          10552 	.globl _height1FallingLeft10
   2D10                   10553 _height1FallingLeft10:
   2D10 FF                10554 	.byte	-1
   2D11 27                10555 	.byte	39
   2D12 0C                10556 	.byte	12
   2D13 FF                10557 	.byte	-1
   2D14 18                10558 	.byte	24
   2D15 F1                10559 	.byte	-15
   2D16 FF                10560 	.byte	-1
   2D17 D9                10561 	.byte	-39
   2D18 F4                10562 	.byte	-12
   2D19 FF                10563 	.byte	-1
   2D1A E8                10564 	.byte	-24
   2D1B 0F                10565 	.byte	15
   2D1C FF                10566 	.byte	-1
   2D1D 00                10567 	.byte	0
   2D1E D9                10568 	.byte	-39
   2D1F 00                10569 	.byte	0
   2D20 27                10570 	.byte	39
   2D21 33                10571 	.byte	51
   2D22 FF                10572 	.byte	-1
   2D23 03                10573 	.byte	3
   2D24 D9                10574 	.byte	-39
   2D25 00                10575 	.byte	0
   2D26 15                10576 	.byte	21
   2D27 18                10577 	.byte	24
   2D28 FF                10578 	.byte	-1
   2D29 03                10579 	.byte	3
   2D2A D6                10580 	.byte	-42
   2D2B 00                10581 	.byte	0
   2D2C D6                10582 	.byte	-42
   2D2D 1E                10583 	.byte	30
   2D2E FF                10584 	.byte	-1
   2D2F 00                10585 	.byte	0
   2D30 D6                10586 	.byte	-42
   2D31 00                10587 	.byte	0
   2D32 E8                10588 	.byte	-24
   2D33 12                10589 	.byte	18
   2D34 FF                10590 	.byte	-1
   2D35 2A                10591 	.byte	42
   2D36 0C                10592 	.byte	12
   2D37 FF                10593 	.byte	-1
   2D38 18                10594 	.byte	24
   2D39 EE                10595 	.byte	-18
   2D3A FF                10596 	.byte	-1
   2D3B D6                10597 	.byte	-42
   2D3C F4                10598 	.byte	-12
   2D3D FF                10599 	.byte	-1
   2D3E E8                10600 	.byte	-24
   2D3F 12                10601 	.byte	18
   2D40 01                10602 	.byte	1
                          10603 	.globl _height1FallingRight10
   2D41                   10604 _height1FallingRight10:
   2D41 00                10605 	.byte	0
   2D42 2D                10606 	.byte	45
   2D43 1E                10607 	.byte	30
   2D44 FF                10608 	.byte	-1
   2D45 DC                10609 	.byte	-36
   2D46 0C                10610 	.byte	12
   2D47 FF                10611 	.byte	-1
   2D48 18                10612 	.byte	24
   2D49 EE                10613 	.byte	-18
   2D4A FF                10614 	.byte	-1
   2D4B 24                10615 	.byte	36
   2D4C F4                10616 	.byte	-12
   2D4D FF                10617 	.byte	-1
   2D4E E8                10618 	.byte	-24
   2D4F 12                10619 	.byte	18
   2D50 FF                10620 	.byte	-1
   2D51 12                10621 	.byte	18
   2D52 2A                10622 	.byte	42
   2D53 00                10623 	.byte	0
   2D54 CA                10624 	.byte	-54
   2D55 E2                10625 	.byte	-30
   2D56 FF                10626 	.byte	-1
   2D57 12                10627 	.byte	18
   2D58 2A                10628 	.byte	42
   2D59 00                10629 	.byte	0
   2D5A 06                10630 	.byte	6
   2D5B C4                10631 	.byte	-60
   2D5C FF                10632 	.byte	-1
   2D5D 12                10633 	.byte	18
   2D5E 2A                10634 	.byte	42
   2D5F 00                10635 	.byte	0
   2D60 12                10636 	.byte	18
   2D61 CA                10637 	.byte	-54
   2D62 FF                10638 	.byte	-1
   2D63 12                10639 	.byte	18
   2D64 2A                10640 	.byte	42
   2D65 00                10641 	.byte	0
   2D66 E8                10642 	.byte	-24
   2D67 12                10643 	.byte	18
   2D68 FF                10644 	.byte	-1
   2D69 DC                10645 	.byte	-36
   2D6A 0C                10646 	.byte	12
   2D6B FF                10647 	.byte	-1
   2D6C 18                10648 	.byte	24
   2D6D EE                10649 	.byte	-18
   2D6E FF                10650 	.byte	-1
   2D6F 24                10651 	.byte	36
   2D70 F4                10652 	.byte	-12
   2D71 FF                10653 	.byte	-1
   2D72 E8                10654 	.byte	-24
   2D73 12                10655 	.byte	18
   2D74 01                10656 	.byte	1
                          10657 	.globl _height1FallingBack10
   2D75                   10658 _height1FallingBack10:
   2D75 00                10659 	.byte	0
   2D76 36                10660 	.byte	54
   2D77 F7                10661 	.byte	-9
   2D78 FF                10662 	.byte	-1
   2D79 09                10663 	.byte	9
   2D7A 27                10664 	.byte	39
   2D7B FF                10665 	.byte	-1
   2D7C E2                10666 	.byte	-30
   2D7D FA                10667 	.byte	-6
   2D7E FF                10668 	.byte	-1
   2D7F F7                10669 	.byte	-9
   2D80 D9                10670 	.byte	-39
   2D81 FF                10671 	.byte	-1
   2D82 1E                10672 	.byte	30
   2D83 06                10673 	.byte	6
   2D84 FF                10674 	.byte	-1
   2D85 24                10675 	.byte	36
   2D86 EE                10676 	.byte	-18
   2D87 00                10677 	.byte	0
   2D88 E5                10678 	.byte	-27
   2D89 39                10679 	.byte	57
   2D8A FF                10680 	.byte	-1
   2D8B 24                10681 	.byte	36
   2D8C EE                10682 	.byte	-18
   2D8D 00                10683 	.byte	0
   2D8E BE                10684 	.byte	-66
   2D8F 0C                10685 	.byte	12
   2D90 FF                10686 	.byte	-1
   2D91 21                10687 	.byte	33
   2D92 EE                10688 	.byte	-18
   2D93 00                10689 	.byte	0
   2D94 D6                10690 	.byte	-42
   2D95 EB                10691 	.byte	-21
   2D96 FF                10692 	.byte	-1
   2D97 21                10693 	.byte	33
   2D98 EE                10694 	.byte	-18
   2D99 00                10695 	.byte	0
   2D9A 21                10696 	.byte	33
   2D9B 06                10697 	.byte	6
   2D9C FF                10698 	.byte	-1
   2D9D 09                10699 	.byte	9
   2D9E 27                10700 	.byte	39
   2D9F FF                10701 	.byte	-1
   2DA0 DF                10702 	.byte	-33
   2DA1 FA                10703 	.byte	-6
   2DA2 FF                10704 	.byte	-1
   2DA3 F7                10705 	.byte	-9
   2DA4 D9                10706 	.byte	-39
   2DA5 FF                10707 	.byte	-1
   2DA6 21                10708 	.byte	33
   2DA7 06                10709 	.byte	6
   2DA8 01                10710 	.byte	1
                          10711 	.globl _height1FallingFront10
   2DA9                   10712 _height1FallingFront10:
   2DA9 FF                10713 	.byte	-1
   2DAA 09                10714 	.byte	9
   2DAB 2A                10715 	.byte	42
   2DAC FF                10716 	.byte	-1
   2DAD 2D                10717 	.byte	45
   2DAE FA                10718 	.byte	-6
   2DAF FF                10719 	.byte	-1
   2DB0 F7                10720 	.byte	-9
   2DB1 D9                10721 	.byte	-39
   2DB2 FF                10722 	.byte	-1
   2DB3 D3                10723 	.byte	-45
   2DB4 03                10724 	.byte	3
   2DB5 FF                10725 	.byte	-1
   2DB6 F7                10726 	.byte	-9
   2DB7 12                10727 	.byte	18
   2DB8 00                10728 	.byte	0
   2DB9 12                10729 	.byte	18
   2DBA 18                10730 	.byte	24
   2DBB FF                10731 	.byte	-1
   2DBC F7                10732 	.byte	-9
   2DBD 12                10733 	.byte	18
   2DBE 00                10734 	.byte	0
   2DBF 36                10735 	.byte	54
   2DC0 E8                10736 	.byte	-24
   2DC1 FF                10737 	.byte	-1
   2DC2 F1                10738 	.byte	-15
   2DC3 12                10739 	.byte	18
   2DC4 00                10740 	.byte	0
   2DC5 06                10741 	.byte	6
   2DC6 C7                10742 	.byte	-57
   2DC7 FF                10743 	.byte	-1
   2DC8 F1                10744 	.byte	-15
   2DC9 0F                10745 	.byte	15
   2DCA 00                10746 	.byte	0
   2DCB D9                10747 	.byte	-39
   2DCC 06                10748 	.byte	6
   2DCD FF                10749 	.byte	-1
   2DCE 09                10750 	.byte	9
   2DCF 2A                10751 	.byte	42
   2DD0 FF                10752 	.byte	-1
   2DD1 27                10753 	.byte	39
   2DD2 FA                10754 	.byte	-6
   2DD3 FF                10755 	.byte	-1
   2DD4 F7                10756 	.byte	-9
   2DD5 D6                10757 	.byte	-42
   2DD6 FF                10758 	.byte	-1
   2DD7 D9                10759 	.byte	-39
   2DD8 06                10760 	.byte	6
   2DD9 01                10761 	.byte	1
                          10762 	.globl _height2FallingLeft11
   2DDA                   10763 _height2FallingLeft11:
   2DDA FF                10764 	.byte	-1
   2DDB 27                10765 	.byte	39
   2DDC 06                10766 	.byte	6
   2DDD FF                10767 	.byte	-1
   2DDE 18                10768 	.byte	24
   2DDF F1                10769 	.byte	-15
   2DE0 FF                10770 	.byte	-1
   2DE1 D9                10771 	.byte	-39
   2DE2 FA                10772 	.byte	-6
   2DE3 FF                10773 	.byte	-1
   2DE4 E8                10774 	.byte	-24
   2DE5 0F                10775 	.byte	15
   2DE6 FF                10776 	.byte	-1
   2DE7 FA                10777 	.byte	-6
   2DE8 AF                10778 	.byte	-81
   2DE9 00                10779 	.byte	0
   2DEA 2D                10780 	.byte	45
   2DEB 57                10781 	.byte	87
   2DEC FF                10782 	.byte	-1
   2DED FA                10783 	.byte	-6
   2DEE AF                10784 	.byte	-81
   2DEF 00                10785 	.byte	0
   2DF0 1E                10786 	.byte	30
   2DF1 42                10787 	.byte	66
   2DF2 FF                10788 	.byte	-1
   2DF3 FA                10789 	.byte	-6
   2DF4 AC                10790 	.byte	-84
   2DF5 00                10791 	.byte	0
   2DF6 DF                10792 	.byte	-33
   2DF7 4E                10793 	.byte	78
   2DF8 FF                10794 	.byte	-1
   2DF9 F7                10795 	.byte	-9
   2DFA AC                10796 	.byte	-84
   2DFB 00                10797 	.byte	0
   2DFC EB                10798 	.byte	-21
   2DFD 12                10799 	.byte	18
   2DFE FF                10800 	.byte	-1
   2DFF 27                10801 	.byte	39
   2E00 06                10802 	.byte	6
   2E01 FF                10803 	.byte	-1
   2E02 18                10804 	.byte	24
   2E03 EE                10805 	.byte	-18
   2E04 FF                10806 	.byte	-1
   2E05 D6                10807 	.byte	-42
   2E06 FA                10808 	.byte	-6
   2E07 FF                10809 	.byte	-1
   2E08 EB                10810 	.byte	-21
   2E09 12                10811 	.byte	18
   2E0A 01                10812 	.byte	1
                          10813 	.globl _height2RisingRight11
   2E0B                   10814 _height2RisingRight11:
   2E0B 00                10815 	.byte	0
   2E0C 12                10816 	.byte	18
   2E0D 54                10817 	.byte	84
   2E0E FF                10818 	.byte	-1
   2E0F 09                10819 	.byte	9
   2E10 2A                10820 	.byte	42
   2E11 FF                10821 	.byte	-1
   2E12 18                10822 	.byte	24
   2E13 EE                10823 	.byte	-18
   2E14 FF                10824 	.byte	-1
   2E15 F7                10825 	.byte	-9
   2E16 D6                10826 	.byte	-42
   2E17 FF                10827 	.byte	-1
   2E18 E8                10828 	.byte	-24
   2E19 12                10829 	.byte	18
   2E1A FF                10830 	.byte	-1
   2E1B 4E                10831 	.byte	78
   2E1C 00                10832 	.byte	0
   2E1D 00                10833 	.byte	0
   2E1E BB                10834 	.byte	-69
   2E1F 2A                10835 	.byte	42
   2E20 FF                10836 	.byte	-1
   2E21 4E                10837 	.byte	78
   2E22 00                10838 	.byte	0
   2E23 00                10839 	.byte	0
   2E24 CA                10840 	.byte	-54
   2E25 EE                10841 	.byte	-18
   2E26 FF                10842 	.byte	-1
   2E27 4E                10843 	.byte	78
   2E28 00                10844 	.byte	0
   2E29 00                10845 	.byte	0
   2E2A A9                10846 	.byte	-87
   2E2B D6                10847 	.byte	-42
   2E2C FF                10848 	.byte	-1
   2E2D 4E                10849 	.byte	78
   2E2E 00                10850 	.byte	0
   2E2F 00                10851 	.byte	0
   2E30 E8                10852 	.byte	-24
   2E31 12                10853 	.byte	18
   2E32 FF                10854 	.byte	-1
   2E33 09                10855 	.byte	9
   2E34 2A                10856 	.byte	42
   2E35 FF                10857 	.byte	-1
   2E36 18                10858 	.byte	24
   2E37 EE                10859 	.byte	-18
   2E38 FF                10860 	.byte	-1
   2E39 F7                10861 	.byte	-9
   2E3A D6                10862 	.byte	-42
   2E3B FF                10863 	.byte	-1
   2E3C E8                10864 	.byte	-24
   2E3D 12                10865 	.byte	18
   2E3E 01                10866 	.byte	1
                          10867 	.globl _height2FallingRight11
   2E3F                   10868 _height2FallingRight11:
   2E3F 00                10869 	.byte	0
   2E40 2D                10870 	.byte	45
   2E41 24                10871 	.byte	36
   2E42 FF                10872 	.byte	-1
   2E43 DC                10873 	.byte	-36
   2E44 06                10874 	.byte	6
   2E45 FF                10875 	.byte	-1
   2E46 18                10876 	.byte	24
   2E47 EE                10877 	.byte	-18
   2E48 FF                10878 	.byte	-1
   2E49 24                10879 	.byte	36
   2E4A FA                10880 	.byte	-6
   2E4B FF                10881 	.byte	-1
   2E4C E8                10882 	.byte	-24
   2E4D 12                10883 	.byte	18
   2E4E FF                10884 	.byte	-1
   2E4F 1E                10885 	.byte	30
   2E50 54                10886 	.byte	84
   2E51 00                10887 	.byte	0
   2E52 BE                10888 	.byte	-66
   2E53 B2                10889 	.byte	-78
   2E54 FF                10890 	.byte	-1
   2E55 1B                10891 	.byte	27
   2E56 54                10892 	.byte	84
   2E57 00                10893 	.byte	0
   2E58 FD                10894 	.byte	-3
   2E59 9A                10895 	.byte	-102
   2E5A FF                10896 	.byte	-1
   2E5B 1B                10897 	.byte	27
   2E5C 54                10898 	.byte	84
   2E5D 00                10899 	.byte	0
   2E5E 09                10900 	.byte	9
   2E5F A6                10901 	.byte	-90
   2E60 FF                10902 	.byte	-1
   2E61 1E                10903 	.byte	30
   2E62 54                10904 	.byte	84
   2E63 00                10905 	.byte	0
   2E64 E8                10906 	.byte	-24
   2E65 12                10907 	.byte	18
   2E66 FF                10908 	.byte	-1
   2E67 D9                10909 	.byte	-39
   2E68 06                10910 	.byte	6
   2E69 FF                10911 	.byte	-1
   2E6A 18                10912 	.byte	24
   2E6B EE                10913 	.byte	-18
   2E6C FF                10914 	.byte	-1
   2E6D 27                10915 	.byte	39
   2E6E FA                10916 	.byte	-6
   2E6F FF                10917 	.byte	-1
   2E70 E8                10918 	.byte	-24
   2E71 12                10919 	.byte	18
   2E72 01                10920 	.byte	1
                          10921 	.globl _height2RisingLeft11
   2E73                   10922 _height2RisingLeft11:
   2E73 00                10923 	.byte	0
   2E74 FA                10924 	.byte	-6
   2E75 D9                10925 	.byte	-39
   2E76 FF                10926 	.byte	-1
   2E77 06                10927 	.byte	6
   2E78 27                10928 	.byte	39
   2E79 FF                10929 	.byte	-1
   2E7A 18                10930 	.byte	24
   2E7B F1                10931 	.byte	-15
   2E7C FF                10932 	.byte	-1
   2E7D F7                10933 	.byte	-9
   2E7E D6                10934 	.byte	-42
   2E7F FF                10935 	.byte	-1
   2E80 EB                10936 	.byte	-21
   2E81 12                10937 	.byte	18
   2E82 FF                10938 	.byte	-1
   2E83 4B                10939 	.byte	75
   2E84 00                10940 	.byte	0
   2E85 00                10941 	.byte	0
   2E86 BB                10942 	.byte	-69
   2E87 27                10943 	.byte	39
   2E88 FF                10944 	.byte	-1
   2E89 4E                10945 	.byte	78
   2E8A 00                10946 	.byte	0
   2E8B 00                10947 	.byte	0
   2E8C CA                10948 	.byte	-54
   2E8D F1                10949 	.byte	-15
   2E8E FF                10950 	.byte	-1
   2E8F 4E                10951 	.byte	78
   2E90 00                10952 	.byte	0
   2E91 00                10953 	.byte	0
   2E92 A9                10954 	.byte	-87
   2E93 D6                10955 	.byte	-42
   2E94 FF                10956 	.byte	-1
   2E95 4E                10957 	.byte	78
   2E96 00                10958 	.byte	0
   2E97 00                10959 	.byte	0
   2E98 E8                10960 	.byte	-24
   2E99 12                10961 	.byte	18
   2E9A FF                10962 	.byte	-1
   2E9B 09                10963 	.byte	9
   2E9C 27                10964 	.byte	39
   2E9D FF                10965 	.byte	-1
   2E9E 18                10966 	.byte	24
   2E9F F1                10967 	.byte	-15
   2EA0 FF                10968 	.byte	-1
   2EA1 F7                10969 	.byte	-9
   2EA2 D6                10970 	.byte	-42
   2EA3 FF                10971 	.byte	-1
   2EA4 E8                10972 	.byte	-24
   2EA5 12                10973 	.byte	18
   2EA6 01                10974 	.byte	1
                          10975 	.globl _height2FallingBack11
   2EA7                   10976 _height2FallingBack11:
   2EA7 00                10977 	.byte	0
   2EA8 3C                10978 	.byte	60
   2EA9 F4                10979 	.byte	-12
   2EAA FF                10980 	.byte	-1
   2EAB 09                10981 	.byte	9
   2EAC 27                10982 	.byte	39
   2EAD FF                10983 	.byte	-1
   2EAE DC                10984 	.byte	-36
   2EAF FD                10985 	.byte	-3
   2EB0 FF                10986 	.byte	-1
   2EB1 F7                10987 	.byte	-9
   2EB2 D9                10988 	.byte	-39
   2EB3 FF                10989 	.byte	-1
   2EB4 24                10990 	.byte	36
   2EB5 03                10991 	.byte	3
   2EB6 FF                10992 	.byte	-1
   2EB7 39                10993 	.byte	57
   2EB8 DC                10994 	.byte	-36
   2EB9 00                10995 	.byte	0
   2EBA D0                10996 	.byte	-48
   2EBB 4B                10997 	.byte	75
   2EBC FF                10998 	.byte	-1
   2EBD 39                10999 	.byte	57
   2EBE DF                11000 	.byte	-33
   2EBF 00                11001 	.byte	0
   2EC0 A3                11002 	.byte	-93
   2EC1 1E                11003 	.byte	30
   2EC2 FF                11004 	.byte	-1
   2EC3 39                11005 	.byte	57
   2EC4 DF                11006 	.byte	-33
   2EC5 00                11007 	.byte	0
   2EC6 BE                11008 	.byte	-66
   2EC7 FA                11009 	.byte	-6
   2EC8 FF                11010 	.byte	-1
   2EC9 39                11011 	.byte	57
   2ECA DC                11012 	.byte	-36
   2ECB 00                11013 	.byte	0
   2ECC 24                11014 	.byte	36
   2ECD 03                11015 	.byte	3
   2ECE FF                11016 	.byte	-1
   2ECF 09                11017 	.byte	9
   2ED0 2A                11018 	.byte	42
   2ED1 FF                11019 	.byte	-1
   2ED2 DC                11020 	.byte	-36
   2ED3 FD                11021 	.byte	-3
   2ED4 FF                11022 	.byte	-1
   2ED5 F7                11023 	.byte	-9
   2ED6 D6                11024 	.byte	-42
   2ED7 FF                11025 	.byte	-1
   2ED8 24                11026 	.byte	36
   2ED9 03                11027 	.byte	3
   2EDA 01                11028 	.byte	1
                          11029 	.globl _height2RisingFront11
   2EDB                   11030 _height2RisingFront11:
   2EDB 00                11031 	.byte	0
   2EDC EB                11032 	.byte	-21
   2EDD 12                11033 	.byte	18
   2EDE FF                11034 	.byte	-1
   2EDF 09                11035 	.byte	9
   2EE0 2A                11036 	.byte	42
   2EE1 FF                11037 	.byte	-1
   2EE2 15                11038 	.byte	21
   2EE3 EE                11039 	.byte	-18
   2EE4 FF                11040 	.byte	-1
   2EE5 F7                11041 	.byte	-9
   2EE6 D6                11042 	.byte	-42
   2EE7 FF                11043 	.byte	-1
   2EE8 EB                11044 	.byte	-21
   2EE9 12                11045 	.byte	18
   2EEA FF                11046 	.byte	-1
   2EEB 4B                11047 	.byte	75
   2EEC 00                11048 	.byte	0
   2EED 00                11049 	.byte	0
   2EEE BE                11050 	.byte	-66
   2EEF 2A                11051 	.byte	42
   2EF0 FF                11052 	.byte	-1
   2EF1 4B                11053 	.byte	75
   2EF2 00                11054 	.byte	0
   2EF3 00                11055 	.byte	0
   2EF4 CA                11056 	.byte	-54
   2EF5 EE                11057 	.byte	-18
   2EF6 FF                11058 	.byte	-1
   2EF7 4E                11059 	.byte	78
   2EF8 00                11060 	.byte	0
   2EF9 00                11061 	.byte	0
   2EFA A9                11062 	.byte	-87
   2EFB D6                11063 	.byte	-42
   2EFC FF                11064 	.byte	-1
   2EFD 4E                11065 	.byte	78
   2EFE 00                11066 	.byte	0
   2EFF 00                11067 	.byte	0
   2F00 E8                11068 	.byte	-24
   2F01 12                11069 	.byte	18
   2F02 FF                11070 	.byte	-1
   2F03 09                11071 	.byte	9
   2F04 2A                11072 	.byte	42
   2F05 FF                11073 	.byte	-1
   2F06 18                11074 	.byte	24
   2F07 EE                11075 	.byte	-18
   2F08 FF                11076 	.byte	-1
   2F09 F7                11077 	.byte	-9
   2F0A D6                11078 	.byte	-42
   2F0B FF                11079 	.byte	-1
   2F0C E8                11080 	.byte	-24
   2F0D 12                11081 	.byte	18
   2F0E 01                11082 	.byte	1
                          11083 	.globl _height2FallingFront11
   2F0F                   11084 _height2FallingFront11:
   2F0F FF                11085 	.byte	-1
   2F10 09                11086 	.byte	9
   2F11 2A                11087 	.byte	42
   2F12 FF                11088 	.byte	-1
   2F13 2A                11089 	.byte	42
   2F14 FD                11090 	.byte	-3
   2F15 FF                11091 	.byte	-1
   2F16 F7                11092 	.byte	-9
   2F17 D9                11093 	.byte	-39
   2F18 FF                11094 	.byte	-1
   2F19 D6                11095 	.byte	-42
   2F1A 00                11096 	.byte	0
   2F1B FF                11097 	.byte	-1
   2F1C DF                11098 	.byte	-33
   2F1D 24                11099 	.byte	36
   2F1E 00                11100 	.byte	0
   2F1F 2A                11101 	.byte	42
   2F20 06                11102 	.byte	6
   2F21 FF                11103 	.byte	-1
   2F22 DF                11104 	.byte	-33
   2F23 24                11105 	.byte	36
   2F24 00                11106 	.byte	0
   2F25 4B                11107 	.byte	75
   2F26 D9                11108 	.byte	-39
   2F27 FF                11109 	.byte	-1
   2F28 D9                11110 	.byte	-39
   2F29 24                11111 	.byte	36
   2F2A 00                11112 	.byte	0
   2F2B 1E                11113 	.byte	30
   2F2C B5                11114 	.byte	-75
   2F2D FF                11115 	.byte	-1
   2F2E D9                11116 	.byte	-39
   2F2F 21                11117 	.byte	33
   2F30 00                11118 	.byte	0
   2F31 DC                11119 	.byte	-36
   2F32 03                11120 	.byte	3
   2F33 FF                11121 	.byte	-1
   2F34 09                11122 	.byte	9
   2F35 2A                11123 	.byte	42
   2F36 FF                11124 	.byte	-1
   2F37 24                11125 	.byte	36
   2F38 FD                11126 	.byte	-3
   2F39 FF                11127 	.byte	-1
   2F3A F7                11128 	.byte	-9
   2F3B D6                11129 	.byte	-42
   2F3C FF                11130 	.byte	-1
   2F3D DC                11131 	.byte	-36
   2F3E 03                11132 	.byte	3
   2F3F 01                11133 	.byte	1
                          11134 	.globl _height2RisingBack11
   2F40                   11135 _height2RisingBack11:
   2F40 00                11136 	.byte	0
   2F41 30                11137 	.byte	48
   2F42 DF                11138 	.byte	-33
   2F43 FF                11139 	.byte	-1
   2F44 09                11140 	.byte	9
   2F45 27                11141 	.byte	39
   2F46 FF                11142 	.byte	-1
   2F47 18                11143 	.byte	24
   2F48 F1                11144 	.byte	-15
   2F49 FF                11145 	.byte	-1
   2F4A F7                11146 	.byte	-9
   2F4B D6                11147 	.byte	-42
   2F4C FF                11148 	.byte	-1
   2F4D E8                11149 	.byte	-24
   2F4E 12                11150 	.byte	18
   2F4F FF                11151 	.byte	-1
   2F50 4E                11152 	.byte	78
   2F51 00                11153 	.byte	0
   2F52 00                11154 	.byte	0
   2F53 BB                11155 	.byte	-69
   2F54 27                11156 	.byte	39
   2F55 FF                11157 	.byte	-1
   2F56 4E                11158 	.byte	78
   2F57 00                11159 	.byte	0
   2F58 00                11160 	.byte	0
   2F59 CA                11161 	.byte	-54
   2F5A F1                11162 	.byte	-15
   2F5B FF                11163 	.byte	-1
   2F5C 4E                11164 	.byte	78
   2F5D 00                11165 	.byte	0
   2F5E 00                11166 	.byte	0
   2F5F A9                11167 	.byte	-87
   2F60 D6                11168 	.byte	-42
   2F61 FF                11169 	.byte	-1
   2F62 4E                11170 	.byte	78
   2F63 00                11171 	.byte	0
   2F64 00                11172 	.byte	0
   2F65 E8                11173 	.byte	-24
   2F66 12                11174 	.byte	18
   2F67 FF                11175 	.byte	-1
   2F68 09                11176 	.byte	9
   2F69 27                11177 	.byte	39
   2F6A FF                11178 	.byte	-1
   2F6B 18                11179 	.byte	24
   2F6C F1                11180 	.byte	-15
   2F6D FF                11181 	.byte	-1
   2F6E F7                11182 	.byte	-9
   2F6F D6                11183 	.byte	-42
   2F70 FF                11184 	.byte	-1
   2F71 E8                11185 	.byte	-24
   2F72 12                11186 	.byte	18
   2F73 01                11187 	.byte	1
                          11188 	.globl _depth2RollingLeft11
   2F74                   11189 _depth2RollingLeft11:
   2F74 FF                11190 	.byte	-1
   2F75 27                11191 	.byte	39
   2F76 06                11192 	.byte	6
   2F77 FF                11193 	.byte	-1
   2F78 30                11194 	.byte	48
   2F79 DF                11195 	.byte	-33
   2F7A FF                11196 	.byte	-1
   2F7B D9                11197 	.byte	-39
   2F7C FA                11198 	.byte	-6
   2F7D FF                11199 	.byte	-1
   2F7E D0                11200 	.byte	-48
   2F7F 21                11201 	.byte	33
   2F80 FF                11202 	.byte	-1
   2F81 00                11203 	.byte	0
   2F82 D9                11204 	.byte	-39
   2F83 00                11205 	.byte	0
   2F84 27                11206 	.byte	39
   2F85 2D                11207 	.byte	45
   2F86 FF                11208 	.byte	-1
   2F87 FD                11209 	.byte	-3
   2F88 D9                11210 	.byte	-39
   2F89 00                11211 	.byte	0
   2F8A 33                11212 	.byte	51
   2F8B 06                11213 	.byte	6
   2F8C FF                11214 	.byte	-1
   2F8D FD                11215 	.byte	-3
   2F8E D6                11216 	.byte	-42
   2F8F 00                11217 	.byte	0
   2F90 DC                11218 	.byte	-36
   2F91 24                11219 	.byte	36
   2F92 FF                11220 	.byte	-1
   2F93 FD                11221 	.byte	-3
   2F94 D6                11222 	.byte	-42
   2F95 00                11223 	.byte	0
   2F96 D3                11224 	.byte	-45
   2F97 24                11225 	.byte	36
   2F98 FF                11226 	.byte	-1
   2F99 24                11227 	.byte	36
   2F9A 06                11228 	.byte	6
   2F9B FF                11229 	.byte	-1
   2F9C 30                11230 	.byte	48
   2F9D DC                11231 	.byte	-36
   2F9E FF                11232 	.byte	-1
   2F9F D9                11233 	.byte	-39
   2FA0 FA                11234 	.byte	-6
   2FA1 FF                11235 	.byte	-1
   2FA2 D3                11236 	.byte	-45
   2FA3 24                11237 	.byte	36
   2FA4 01                11238 	.byte	1
                          11239 	.globl _depth2RollingRight11
   2FA5                   11240 _depth2RollingRight11:
   2FA5 00                11241 	.byte	0
   2FA6 2D                11242 	.byte	45
   2FA7 24                11243 	.byte	36
   2FA8 FF                11244 	.byte	-1
   2FA9 DC                11245 	.byte	-36
   2FAA 06                11246 	.byte	6
   2FAB FF                11247 	.byte	-1
   2FAC 30                11248 	.byte	48
   2FAD DC                11249 	.byte	-36
   2FAE FF                11250 	.byte	-1
   2FAF 24                11251 	.byte	36
   2FB0 FA                11252 	.byte	-6
   2FB1 FF                11253 	.byte	-1
   2FB2 D0                11254 	.byte	-48
   2FB3 24                11255 	.byte	36
   2FB4 FF                11256 	.byte	-1
   2FB5 0F                11257 	.byte	15
   2FB6 2A                11258 	.byte	42
   2FB7 00                11259 	.byte	0
   2FB8 CD                11260 	.byte	-51
   2FB9 DC                11261 	.byte	-36
   2FBA FF                11262 	.byte	-1
   2FBB 0F                11263 	.byte	15
   2FBC 2A                11264 	.byte	42
   2FBD 00                11265 	.byte	0
   2FBE 21                11266 	.byte	33
   2FBF B2                11267 	.byte	-78
   2FC0 FF                11268 	.byte	-1
   2FC1 0F                11269 	.byte	15
   2FC2 2A                11270 	.byte	42
   2FC3 00                11271 	.byte	0
   2FC4 15                11272 	.byte	21
   2FC5 D0                11273 	.byte	-48
   2FC6 FF                11274 	.byte	-1
   2FC7 0F                11275 	.byte	15
   2FC8 2A                11276 	.byte	42
   2FC9 00                11277 	.byte	0
   2FCA D0                11278 	.byte	-48
   2FCB 24                11279 	.byte	36
   2FCC FF                11280 	.byte	-1
   2FCD DC                11281 	.byte	-36
   2FCE 06                11282 	.byte	6
   2FCF FF                11283 	.byte	-1
   2FD0 30                11284 	.byte	48
   2FD1 DC                11285 	.byte	-36
   2FD2 FF                11286 	.byte	-1
   2FD3 24                11287 	.byte	36
   2FD4 FA                11288 	.byte	-6
   2FD5 FF                11289 	.byte	-1
   2FD6 D0                11290 	.byte	-48
   2FD7 24                11291 	.byte	36
   2FD8 01                11292 	.byte	1
                          11293 	.globl _width2RollingFront11
   2FD9                   11294 _width2RollingFront11:
   2FD9 FF                11295 	.byte	-1
   2FDA 12                11296 	.byte	18
   2FDB 54                11297 	.byte	84
   2FDC FF                11298 	.byte	-1
   2FDD 2A                11299 	.byte	42
   2FDE FD                11300 	.byte	-3
   2FDF FF                11301 	.byte	-1
   2FE0 EE                11302 	.byte	-18
   2FE1 AF                11303 	.byte	-81
   2FE2 FF                11304 	.byte	-1
   2FE3 D6                11305 	.byte	-42
   2FE4 00                11306 	.byte	0
   2FE5 FF                11307 	.byte	-1
   2FE6 F1                11308 	.byte	-15
   2FE7 12                11309 	.byte	18
   2FE8 00                11310 	.byte	0
   2FE9 21                11311 	.byte	33
   2FEA 42                11312 	.byte	66
   2FEB FF                11313 	.byte	-1
   2FEC EE                11314 	.byte	-18
   2FED 12                11315 	.byte	18
   2FEE 00                11316 	.byte	0
   2FEF 3C                11317 	.byte	60
   2FF0 EB                11318 	.byte	-21
   2FF1 FF                11319 	.byte	-1
   2FF2 EE                11320 	.byte	-18
   2FF3 12                11321 	.byte	18
   2FF4 00                11322 	.byte	0
   2FF5 00                11323 	.byte	0
   2FF6 9D                11324 	.byte	-99
   2FF7 FF                11325 	.byte	-1
   2FF8 EE                11326 	.byte	-18
   2FF9 0F                11327 	.byte	15
   2FFA 00                11328 	.byte	0
   2FFB D9                11329 	.byte	-39
   2FFC 03                11330 	.byte	3
   2FFD FF                11331 	.byte	-1
   2FFE 0F                11332 	.byte	15
   2FFF 54                11333 	.byte	84
   3000 FF                11334 	.byte	-1
   3001 2A                11335 	.byte	42
   3002 FD                11336 	.byte	-3
   3003 FF                11337 	.byte	-1
   3004 EE                11338 	.byte	-18
   3005 AC                11339 	.byte	-84
   3006 FF                11340 	.byte	-1
   3007 D9                11341 	.byte	-39
   3008 03                11342 	.byte	3
   3009 01                11343 	.byte	1
                          11344 	.globl _width2RollingBack11
   300A                   11345 _width2RollingBack11:
   300A 00                11346 	.byte	0
   300B 3C                11347 	.byte	60
   300C F4                11348 	.byte	-12
   300D FF                11349 	.byte	-1
   300E 12                11350 	.byte	18
   300F 51                11351 	.byte	81
   3010 FF                11352 	.byte	-1
   3011 DC                11353 	.byte	-36
   3012 FD                11354 	.byte	-3
   3013 FF                11355 	.byte	-1
   3014 EE                11356 	.byte	-18
   3015 AF                11357 	.byte	-81
   3016 FF                11358 	.byte	-1
   3017 24                11359 	.byte	36
   3018 03                11360 	.byte	3
   3019 FF                11361 	.byte	-1
   301A 1B                11362 	.byte	27
   301B EE                11363 	.byte	-18
   301C 00                11364 	.byte	0
   301D F7                11365 	.byte	-9
   301E 63                11366 	.byte	99
   301F FF                11367 	.byte	-1
   3020 1B                11368 	.byte	27
   3021 EE                11369 	.byte	-18
   3022 00                11370 	.byte	0
   3023 C1                11371 	.byte	-63
   3024 0F                11372 	.byte	15
   3025 FF                11373 	.byte	-1
   3026 1E                11374 	.byte	30
   3027 EE                11375 	.byte	-18
   3028 00                11376 	.byte	0
   3029 D0                11377 	.byte	-48
   302A C1                11378 	.byte	-63
   302B FF                11379 	.byte	-1
   302C 1E                11380 	.byte	30
   302D EE                11381 	.byte	-18
   302E 00                11382 	.byte	0
   302F 21                11383 	.byte	33
   3030 03                11384 	.byte	3
   3031 FF                11385 	.byte	-1
   3032 12                11386 	.byte	18
   3033 51                11387 	.byte	81
   3034 FF                11388 	.byte	-1
   3035 DF                11389 	.byte	-33
   3036 FD                11390 	.byte	-3
   3037 FF                11391 	.byte	-1
   3038 EE                11392 	.byte	-18
   3039 AF                11393 	.byte	-81
   303A FF                11394 	.byte	-1
   303B 21                11395 	.byte	33
   303C 03                11396 	.byte	3
   303D 01                11397 	.byte	1
                          11398 	.globl _height1FallingLeft11
   303E                   11399 _height1FallingLeft11:
   303E FF                11400 	.byte	-1
   303F 27                11401 	.byte	39
   3040 06                11402 	.byte	6
   3041 FF                11403 	.byte	-1
   3042 18                11404 	.byte	24
   3043 F1                11405 	.byte	-15
   3044 FF                11406 	.byte	-1
   3045 D9                11407 	.byte	-39
   3046 FA                11408 	.byte	-6
   3047 FF                11409 	.byte	-1
   3048 E8                11410 	.byte	-24
   3049 0F                11411 	.byte	15
   304A FF                11412 	.byte	-1
   304B 00                11413 	.byte	0
   304C D9                11414 	.byte	-39
   304D 00                11415 	.byte	0
   304E 27                11416 	.byte	39
   304F 2D                11417 	.byte	45
   3050 FF                11418 	.byte	-1
   3051 FD                11419 	.byte	-3
   3052 D9                11420 	.byte	-39
   3053 00                11421 	.byte	0
   3054 1B                11422 	.byte	27
   3055 18                11423 	.byte	24
   3056 FF                11424 	.byte	-1
   3057 FD                11425 	.byte	-3
   3058 D6                11426 	.byte	-42
   3059 00                11427 	.byte	0
   305A DC                11428 	.byte	-36
   305B 24                11429 	.byte	36
   305C FF                11430 	.byte	-1
   305D FD                11431 	.byte	-3
   305E D6                11432 	.byte	-42
   305F 00                11433 	.byte	0
   3060 EB                11434 	.byte	-21
   3061 12                11435 	.byte	18
   3062 FF                11436 	.byte	-1
   3063 24                11437 	.byte	36
   3064 06                11438 	.byte	6
   3065 FF                11439 	.byte	-1
   3066 18                11440 	.byte	24
   3067 EE                11441 	.byte	-18
   3068 FF                11442 	.byte	-1
   3069 D9                11443 	.byte	-39
   306A FA                11444 	.byte	-6
   306B FF                11445 	.byte	-1
   306C EB                11446 	.byte	-21
   306D 12                11447 	.byte	18
   306E 01                11448 	.byte	1
                          11449 	.globl _height1FallingRight11
   306F                   11450 _height1FallingRight11:
   306F 00                11451 	.byte	0
   3070 2D                11452 	.byte	45
   3071 24                11453 	.byte	36
   3072 FF                11454 	.byte	-1
   3073 DC                11455 	.byte	-36
   3074 06                11456 	.byte	6
   3075 FF                11457 	.byte	-1
   3076 18                11458 	.byte	24
   3077 EE                11459 	.byte	-18
   3078 FF                11460 	.byte	-1
   3079 24                11461 	.byte	36
   307A FA                11462 	.byte	-6
   307B FF                11463 	.byte	-1
   307C E8                11464 	.byte	-24
   307D 12                11465 	.byte	18
   307E FF                11466 	.byte	-1
   307F 0F                11467 	.byte	15
   3080 2A                11468 	.byte	42
   3081 00                11469 	.byte	0
   3082 CD                11470 	.byte	-51
   3083 DC                11471 	.byte	-36
   3084 FF                11472 	.byte	-1
   3085 0F                11473 	.byte	15
   3086 2A                11474 	.byte	42
   3087 00                11475 	.byte	0
   3088 09                11476 	.byte	9
   3089 C4                11477 	.byte	-60
   308A FF                11478 	.byte	-1
   308B 0F                11479 	.byte	15
   308C 2A                11480 	.byte	42
   308D 00                11481 	.byte	0
   308E 15                11482 	.byte	21
   308F D0                11483 	.byte	-48
   3090 FF                11484 	.byte	-1
   3091 0F                11485 	.byte	15
   3092 2A                11486 	.byte	42
   3093 00                11487 	.byte	0
   3094 E8                11488 	.byte	-24
   3095 12                11489 	.byte	18
   3096 FF                11490 	.byte	-1
   3097 DC                11491 	.byte	-36
   3098 06                11492 	.byte	6
   3099 FF                11493 	.byte	-1
   309A 18                11494 	.byte	24
   309B EE                11495 	.byte	-18
   309C FF                11496 	.byte	-1
   309D 24                11497 	.byte	36
   309E FA                11498 	.byte	-6
   309F FF                11499 	.byte	-1
   30A0 E8                11500 	.byte	-24
   30A1 12                11501 	.byte	18
   30A2 01                11502 	.byte	1
                          11503 	.globl _height1FallingBack11
   30A3                   11504 _height1FallingBack11:
   30A3 00                11505 	.byte	0
   30A4 3C                11506 	.byte	60
   30A5 F4                11507 	.byte	-12
   30A6 FF                11508 	.byte	-1
   30A7 09                11509 	.byte	9
   30A8 27                11510 	.byte	39
   30A9 FF                11511 	.byte	-1
   30AA DC                11512 	.byte	-36
   30AB FD                11513 	.byte	-3
   30AC FF                11514 	.byte	-1
   30AD F7                11515 	.byte	-9
   30AE D9                11516 	.byte	-39
   30AF FF                11517 	.byte	-1
   30B0 24                11518 	.byte	36
   30B1 03                11519 	.byte	3
   30B2 FF                11520 	.byte	-1
   30B3 1B                11521 	.byte	27
   30B4 EE                11522 	.byte	-18
   30B5 00                11523 	.byte	0
   30B6 EE                11524 	.byte	-18
   30B7 39                11525 	.byte	57
   30B8 FF                11526 	.byte	-1
   30B9 1B                11527 	.byte	27
   30BA EE                11528 	.byte	-18
   30BB 00                11529 	.byte	0
   30BC C1                11530 	.byte	-63
   30BD 0F                11531 	.byte	15
   30BE FF                11532 	.byte	-1
   30BF 1E                11533 	.byte	30
   30C0 EE                11534 	.byte	-18
   30C1 00                11535 	.byte	0
   30C2 D9                11536 	.byte	-39
   30C3 EB                11537 	.byte	-21
   30C4 FF                11538 	.byte	-1
   30C5 1E                11539 	.byte	30
   30C6 EE                11540 	.byte	-18
   30C7 00                11541 	.byte	0
   30C8 21                11542 	.byte	33
   30C9 03                11543 	.byte	3
   30CA FF                11544 	.byte	-1
   30CB 09                11545 	.byte	9
   30CC 27                11546 	.byte	39
   30CD FF                11547 	.byte	-1
   30CE DF                11548 	.byte	-33
   30CF FD                11549 	.byte	-3
   30D0 FF                11550 	.byte	-1
   30D1 F7                11551 	.byte	-9
   30D2 D9                11552 	.byte	-39
   30D3 FF                11553 	.byte	-1
   30D4 21                11554 	.byte	33
   30D5 03                11555 	.byte	3
   30D6 01                11556 	.byte	1
                          11557 	.globl _height1FallingFront11
   30D7                   11558 _height1FallingFront11:
   30D7 FF                11559 	.byte	-1
   30D8 09                11560 	.byte	9
   30D9 2A                11561 	.byte	42
   30DA FF                11562 	.byte	-1
   30DB 2A                11563 	.byte	42
   30DC FD                11564 	.byte	-3
   30DD FF                11565 	.byte	-1
   30DE F7                11566 	.byte	-9
   30DF D9                11567 	.byte	-39
   30E0 FF                11568 	.byte	-1
   30E1 D6                11569 	.byte	-42
   30E2 00                11570 	.byte	0
   30E3 FF                11571 	.byte	-1
   30E4 F1                11572 	.byte	-15
   30E5 12                11573 	.byte	18
   30E6 00                11574 	.byte	0
   30E7 18                11575 	.byte	24
   30E8 18                11576 	.byte	24
   30E9 FF                11577 	.byte	-1
   30EA F1                11578 	.byte	-15
   30EB 12                11579 	.byte	18
   30EC 00                11580 	.byte	0
   30ED 39                11581 	.byte	57
   30EE EB                11582 	.byte	-21
   30EF FF                11583 	.byte	-1
   30F0 EE                11584 	.byte	-18
   30F1 12                11585 	.byte	18
   30F2 00                11586 	.byte	0
   30F3 09                11587 	.byte	9
   30F4 C7                11588 	.byte	-57
   30F5 FF                11589 	.byte	-1
   30F6 EE                11590 	.byte	-18
   30F7 0F                11591 	.byte	15
   30F8 00                11592 	.byte	0
   30F9 D9                11593 	.byte	-39
   30FA 03                11594 	.byte	3
   30FB FF                11595 	.byte	-1
   30FC 09                11596 	.byte	9
   30FD 2A                11597 	.byte	42
   30FE FF                11598 	.byte	-1
   30FF 27                11599 	.byte	39
   3100 FD                11600 	.byte	-3
   3101 FF                11601 	.byte	-1
   3102 F7                11602 	.byte	-9
   3103 D6                11603 	.byte	-42
   3104 FF                11604 	.byte	-1
   3105 D9                11605 	.byte	-39
   3106 03                11606 	.byte	3
   3107 01                11607 	.byte	1
                          11608 	.globl _height2FallingLeft12
   3108                   11609 _height2FallingLeft12:
   3108 FF                11610 	.byte	-1
   3109 27                11611 	.byte	39
   310A 00                11612 	.byte	0
   310B FF                11613 	.byte	-1
   310C 18                11614 	.byte	24
   310D F1                11615 	.byte	-15
   310E FF                11616 	.byte	-1
   310F D9                11617 	.byte	-39
   3110 00                11618 	.byte	0
   3111 FF                11619 	.byte	-1
   3112 E8                11620 	.byte	-24
   3113 0F                11621 	.byte	15
   3114 FF                11622 	.byte	-1
   3115 F1                11623 	.byte	-15
   3116 AF                11624 	.byte	-81
   3117 00                11625 	.byte	0
   3118 36                11626 	.byte	54
   3119 51                11627 	.byte	81
   311A FF                11628 	.byte	-1
   311B EE                11629 	.byte	-18
   311C AF                11630 	.byte	-81
   311D 00                11631 	.byte	0
   311E 2A                11632 	.byte	42
   311F 42                11633 	.byte	66
   3120 FF                11634 	.byte	-1
   3121 EE                11635 	.byte	-18
   3122 AC                11636 	.byte	-84
   3123 00                11637 	.byte	0
   3124 EB                11638 	.byte	-21
   3125 54                11639 	.byte	84
   3126 FF                11640 	.byte	-1
   3127 EE                11641 	.byte	-18
   3128 AC                11642 	.byte	-84
   3129 00                11643 	.byte	0
   312A EB                11644 	.byte	-21
   312B 12                11645 	.byte	18
   312C FF                11646 	.byte	-1
   312D 24                11647 	.byte	36
   312E 00                11648 	.byte	0
   312F FF                11649 	.byte	-1
   3130 18                11650 	.byte	24
   3131 EE                11651 	.byte	-18
   3132 FF                11652 	.byte	-1
   3133 D9                11653 	.byte	-39
   3134 00                11654 	.byte	0
   3135 FF                11655 	.byte	-1
   3136 EB                11656 	.byte	-21
   3137 12                11657 	.byte	18
   3138 01                11658 	.byte	1
                          11659 	.globl _height2RisingRight12
   3139                   11660 _height2RisingRight12:
   3139 00                11661 	.byte	0
   313A 12                11662 	.byte	18
   313B 54                11663 	.byte	84
   313C FF                11664 	.byte	-1
   313D 03                11665 	.byte	3
   313E 2A                11666 	.byte	42
   313F FF                11667 	.byte	-1
   3140 18                11668 	.byte	24
   3141 EE                11669 	.byte	-18
   3142 FF                11670 	.byte	-1
   3143 FD                11671 	.byte	-3
   3144 D6                11672 	.byte	-42
   3145 FF                11673 	.byte	-1
   3146 E8                11674 	.byte	-24
   3147 12                11675 	.byte	18
   3148 FF                11676 	.byte	-1
   3149 51                11677 	.byte	81
   314A 0C                11678 	.byte	12
   314B 00                11679 	.byte	0
   314C B2                11680 	.byte	-78
   314D 1E                11681 	.byte	30
   314E FF                11682 	.byte	-1
   314F 51                11683 	.byte	81
   3150 0C                11684 	.byte	12
   3151 00                11685 	.byte	0
   3152 C7                11686 	.byte	-57
   3153 E2                11687 	.byte	-30
   3154 FF                11688 	.byte	-1
   3155 51                11689 	.byte	81
   3156 0C                11690 	.byte	12
   3157 00                11691 	.byte	0
   3158 AC                11692 	.byte	-84
   3159 CA                11693 	.byte	-54
   315A FF                11694 	.byte	-1
   315B 51                11695 	.byte	81
   315C 0C                11696 	.byte	12
   315D 00                11697 	.byte	0
   315E E8                11698 	.byte	-24
   315F 12                11699 	.byte	18
   3160 FF                11700 	.byte	-1
   3161 03                11701 	.byte	3
   3162 2A                11702 	.byte	42
   3163 FF                11703 	.byte	-1
   3164 18                11704 	.byte	24
   3165 EE                11705 	.byte	-18
   3166 FF                11706 	.byte	-1
   3167 FD                11707 	.byte	-3
   3168 D6                11708 	.byte	-42
   3169 FF                11709 	.byte	-1
   316A E8                11710 	.byte	-24
   316B 12                11711 	.byte	18
   316C 01                11712 	.byte	1
                          11713 	.globl _height2FallingRight12
   316D                   11714 _height2FallingRight12:
   316D 00                11715 	.byte	0
   316E 30                11716 	.byte	48
   316F 2A                11717 	.byte	42
   3170 FF                11718 	.byte	-1
   3171 D9                11719 	.byte	-39
   3172 00                11720 	.byte	0
   3173 FF                11721 	.byte	-1
   3174 18                11722 	.byte	24
   3175 EE                11723 	.byte	-18
   3176 FF                11724 	.byte	-1
   3177 27                11725 	.byte	39
   3178 00                11726 	.byte	0
   3179 FF                11727 	.byte	-1
   317A E8                11728 	.byte	-24
   317B 12                11729 	.byte	18
   317C FF                11730 	.byte	-1
   317D 12                11731 	.byte	18
   317E 54                11732 	.byte	84
   317F 00                11733 	.byte	0
   3180 C7                11734 	.byte	-57
   3181 AC                11735 	.byte	-84
   3182 FF                11736 	.byte	-1
   3183 12                11737 	.byte	18
   3184 54                11738 	.byte	84
   3185 00                11739 	.byte	0
   3186 06                11740 	.byte	6
   3187 9A                11741 	.byte	-102
   3188 FF                11742 	.byte	-1
   3189 12                11743 	.byte	18
   318A 54                11744 	.byte	84
   318B 00                11745 	.byte	0
   318C 15                11746 	.byte	21
   318D AC                11747 	.byte	-84
   318E FF                11748 	.byte	-1
   318F 12                11749 	.byte	18
   3190 54                11750 	.byte	84
   3191 00                11751 	.byte	0
   3192 E8                11752 	.byte	-24
   3193 12                11753 	.byte	18
   3194 FF                11754 	.byte	-1
   3195 D9                11755 	.byte	-39
   3196 00                11756 	.byte	0
   3197 FF                11757 	.byte	-1
   3198 18                11758 	.byte	24
   3199 EE                11759 	.byte	-18
   319A FF                11760 	.byte	-1
   319B 27                11761 	.byte	39
   319C 00                11762 	.byte	0
   319D FF                11763 	.byte	-1
   319E E8                11764 	.byte	-24
   319F 12                11765 	.byte	18
   31A0 01                11766 	.byte	1
                          11767 	.globl _height2RisingLeft12
   31A1                   11768 _height2RisingLeft12:
   31A1 00                11769 	.byte	0
   31A2 F4                11770 	.byte	-12
   31A3 D9                11771 	.byte	-39
   31A4 FF                11772 	.byte	-1
   31A5 0C                11773 	.byte	12
   31A6 27                11774 	.byte	39
   31A7 FF                11775 	.byte	-1
   31A8 18                11776 	.byte	24
   31A9 F1                11777 	.byte	-15
   31AA FF                11778 	.byte	-1
   31AB F1                11779 	.byte	-15
   31AC D6                11780 	.byte	-42
   31AD FF                11781 	.byte	-1
   31AE EB                11782 	.byte	-21
   31AF 12                11783 	.byte	18
   31B0 FF                11784 	.byte	-1
   31B1 48                11785 	.byte	72
   31B2 F4                11786 	.byte	-12
   31B3 00                11787 	.byte	0
   31B4 C4                11788 	.byte	-60
   31B5 33                11789 	.byte	51
   31B6 FF                11790 	.byte	-1
   31B7 4B                11791 	.byte	75
   31B8 F7                11792 	.byte	-9
   31B9 00                11793 	.byte	0
   31BA CD                11794 	.byte	-51
   31BB FA                11795 	.byte	-6
   31BC FF                11796 	.byte	-1
   31BD 4B                11797 	.byte	75
   31BE F4                11798 	.byte	-12
   31BF 00                11799 	.byte	0
   31C0 A6                11800 	.byte	-90
   31C1 E2                11801 	.byte	-30
   31C2 FF                11802 	.byte	-1
   31C3 4B                11803 	.byte	75
   31C4 F4                11804 	.byte	-12
   31C5 00                11805 	.byte	0
   31C6 E8                11806 	.byte	-24
   31C7 12                11807 	.byte	18
   31C8 FF                11808 	.byte	-1
   31C9 0F                11809 	.byte	15
   31CA 2A                11810 	.byte	42
   31CB FF                11811 	.byte	-1
   31CC 18                11812 	.byte	24
   31CD EE                11813 	.byte	-18
   31CE FF                11814 	.byte	-1
   31CF F1                11815 	.byte	-15
   31D0 D6                11816 	.byte	-42
   31D1 FF                11817 	.byte	-1
   31D2 E8                11818 	.byte	-24
   31D3 12                11819 	.byte	18
   31D4 01                11820 	.byte	1
                          11821 	.globl _height2FallingBack12
   31D5                   11822 _height2FallingBack12:
   31D5 00                11823 	.byte	0
   31D6 3F                11824 	.byte	63
   31D7 F1                11825 	.byte	-15
   31D8 FF                11826 	.byte	-1
   31D9 09                11827 	.byte	9
   31DA 27                11828 	.byte	39
   31DB FF                11829 	.byte	-1
   31DC D9                11830 	.byte	-39
   31DD 00                11831 	.byte	0
   31DE FF                11832 	.byte	-1
   31DF F7                11833 	.byte	-9
   31E0 D9                11834 	.byte	-39
   31E1 FF                11835 	.byte	-1
   31E2 27                11836 	.byte	39
   31E3 00                11837 	.byte	0
   31E4 FF                11838 	.byte	-1
   31E5 30                11839 	.byte	48
   31E6 DC                11840 	.byte	-36
   31E7 00                11841 	.byte	0
   31E8 D9                11842 	.byte	-39
   31E9 4B                11843 	.byte	75
   31EA FF                11844 	.byte	-1
   31EB 30                11845 	.byte	48
   31EC DF                11846 	.byte	-33
   31ED 00                11847 	.byte	0
   31EE A9                11848 	.byte	-87
   31EF 21                11849 	.byte	33
   31F0 FF                11850 	.byte	-1
   31F1 30                11851 	.byte	48
   31F2 DF                11852 	.byte	-33
   31F3 00                11853 	.byte	0
   31F4 C7                11854 	.byte	-57
   31F5 FA                11855 	.byte	-6
   31F6 FF                11856 	.byte	-1
   31F7 30                11857 	.byte	48
   31F8 DC                11858 	.byte	-36
   31F9 00                11859 	.byte	0
   31FA 27                11860 	.byte	39
   31FB 00                11861 	.byte	0
   31FC FF                11862 	.byte	-1
   31FD 09                11863 	.byte	9
   31FE 2A                11864 	.byte	42
   31FF FF                11865 	.byte	-1
   3200 D9                11866 	.byte	-39
   3201 00                11867 	.byte	0
   3202 FF                11868 	.byte	-1
   3203 F7                11869 	.byte	-9
   3204 D6                11870 	.byte	-42
   3205 FF                11871 	.byte	-1
   3206 27                11872 	.byte	39
   3207 00                11873 	.byte	0
   3208 01                11874 	.byte	1
                          11875 	.globl _height2RisingFront12
   3209                   11876 _height2RisingFront12:
   3209 00                11877 	.byte	0
   320A E5                11878 	.byte	-27
   320B 12                11879 	.byte	18
   320C FF                11880 	.byte	-1
   320D 09                11881 	.byte	9
   320E 2A                11882 	.byte	42
   320F FF                11883 	.byte	-1
   3210 1B                11884 	.byte	27
   3211 EE                11885 	.byte	-18
   3212 FF                11886 	.byte	-1
   3213 F7                11887 	.byte	-9
   3214 D6                11888 	.byte	-42
   3215 FF                11889 	.byte	-1
   3216 E5                11890 	.byte	-27
   3217 12                11891 	.byte	18
   3218 FF                11892 	.byte	-1
   3219 45                11893 	.byte	69
   321A 06                11894 	.byte	6
   321B 00                11895 	.byte	0
   321C C4                11896 	.byte	-60
   321D 24                11897 	.byte	36
   321E FF                11898 	.byte	-1
   321F 45                11899 	.byte	69
   3220 06                11900 	.byte	6
   3221 00                11901 	.byte	0
   3222 D6                11902 	.byte	-42
   3223 E8                11903 	.byte	-24
   3224 FF                11904 	.byte	-1
   3225 48                11905 	.byte	72
   3226 06                11906 	.byte	6
   3227 00                11907 	.byte	0
   3228 AF                11908 	.byte	-81
   3229 D0                11909 	.byte	-48
   322A FF                11910 	.byte	-1
   322B 48                11911 	.byte	72
   322C 06                11912 	.byte	6
   322D 00                11913 	.byte	0
   322E E2                11914 	.byte	-30
   322F 12                11915 	.byte	18
   3230 FF                11916 	.byte	-1
   3231 09                11917 	.byte	9
   3232 2A                11918 	.byte	42
   3233 FF                11919 	.byte	-1
   3234 1E                11920 	.byte	30
   3235 EE                11921 	.byte	-18
   3236 FF                11922 	.byte	-1
   3237 F7                11923 	.byte	-9
   3238 D6                11924 	.byte	-42
   3239 FF                11925 	.byte	-1
   323A E2                11926 	.byte	-30
   323B 12                11927 	.byte	18
   323C 01                11928 	.byte	1
                          11929 	.globl _height2FallingFront12
   323D                   11930 _height2FallingFront12:
   323D FF                11931 	.byte	-1
   323E 09                11932 	.byte	9
   323F 2A                11933 	.byte	42
   3240 FF                11934 	.byte	-1
   3241 27                11935 	.byte	39
   3242 00                11936 	.byte	0
   3243 FF                11937 	.byte	-1
   3244 F7                11938 	.byte	-9
   3245 D6                11939 	.byte	-42
   3246 FF                11940 	.byte	-1
   3247 D9                11941 	.byte	-39
   3248 00                11942 	.byte	0
   3249 FF                11943 	.byte	-1
   324A D3                11944 	.byte	-45
   324B 24                11945 	.byte	36
   324C 00                11946 	.byte	0
   324D 36                11947 	.byte	54
   324E 06                11948 	.byte	6
   324F FF                11949 	.byte	-1
   3250 D3                11950 	.byte	-45
   3251 24                11951 	.byte	36
   3252 00                11952 	.byte	0
   3253 54                11953 	.byte	84
   3254 DC                11954 	.byte	-36
   3255 FF                11955 	.byte	-1
   3256 D0                11956 	.byte	-48
   3257 24                11957 	.byte	36
   3258 00                11958 	.byte	0
   3259 27                11959 	.byte	39
   325A B2                11960 	.byte	-78
   325B FF                11961 	.byte	-1
   325C D3                11962 	.byte	-45
   325D 24                11963 	.byte	36
   325E 00                11964 	.byte	0
   325F D9                11965 	.byte	-39
   3260 00                11966 	.byte	0
   3261 FF                11967 	.byte	-1
   3262 09                11968 	.byte	9
   3263 2A                11969 	.byte	42
   3264 FF                11970 	.byte	-1
   3265 24                11971 	.byte	36
   3266 00                11972 	.byte	0
   3267 FF                11973 	.byte	-1
   3268 FA                11974 	.byte	-6
   3269 D6                11975 	.byte	-42
   326A FF                11976 	.byte	-1
   326B D9                11977 	.byte	-39
   326C 00                11978 	.byte	0
   326D 01                11979 	.byte	1
                          11980 	.globl _height2RisingBack12
   326E                   11981 _height2RisingBack12:
   326E 00                11982 	.byte	0
   326F 30                11983 	.byte	48
   3270 DF                11984 	.byte	-33
   3271 FF                11985 	.byte	-1
   3272 09                11986 	.byte	9
   3273 27                11987 	.byte	39
   3274 FF                11988 	.byte	-1
   3275 12                11989 	.byte	18
   3276 F1                11990 	.byte	-15
   3277 FF                11991 	.byte	-1
   3278 F7                11992 	.byte	-9
   3279 D6                11993 	.byte	-42
   327A FF                11994 	.byte	-1
   327B EE                11995 	.byte	-18
   327C 12                11996 	.byte	18
   327D FF                11997 	.byte	-1
   327E 54                11998 	.byte	84
   327F FA                11999 	.byte	-6
   3280 00                12000 	.byte	0
   3281 B5                12001 	.byte	-75
   3282 2D                12002 	.byte	45
   3283 FF                12003 	.byte	-1
   3284 54                12004 	.byte	84
   3285 FA                12005 	.byte	-6
   3286 00                12006 	.byte	0
   3287 BE                12007 	.byte	-66
   3288 F7                12008 	.byte	-9
   3289 FF                12009 	.byte	-1
   328A 54                12010 	.byte	84
   328B FA                12011 	.byte	-6
   328C 00                12012 	.byte	0
   328D A3                12013 	.byte	-93
   328E DC                12014 	.byte	-36
   328F FF                12015 	.byte	-1
   3290 54                12016 	.byte	84
   3291 FA                12017 	.byte	-6
   3292 00                12018 	.byte	0
   3293 EE                12019 	.byte	-18
   3294 12                12020 	.byte	18
   3295 FF                12021 	.byte	-1
   3296 09                12022 	.byte	9
   3297 27                12023 	.byte	39
   3298 FF                12024 	.byte	-1
   3299 12                12025 	.byte	18
   329A F1                12026 	.byte	-15
   329B FF                12027 	.byte	-1
   329C F7                12028 	.byte	-9
   329D D6                12029 	.byte	-42
   329E FF                12030 	.byte	-1
   329F EE                12031 	.byte	-18
   32A0 12                12032 	.byte	18
   32A1 01                12033 	.byte	1
                          12034 	.globl _depth2RollingLeft12
   32A2                   12035 _depth2RollingLeft12:
   32A2 FF                12036 	.byte	-1
   32A3 27                12037 	.byte	39
   32A4 00                12038 	.byte	0
   32A5 FF                12039 	.byte	-1
   32A6 30                12040 	.byte	48
   32A7 DF                12041 	.byte	-33
   32A8 FF                12042 	.byte	-1
   32A9 D9                12043 	.byte	-39
   32AA 00                12044 	.byte	0
   32AB FF                12045 	.byte	-1
   32AC D0                12046 	.byte	-48
   32AD 21                12047 	.byte	33
   32AE FF                12048 	.byte	-1
   32AF FA                12049 	.byte	-6
   32B0 D9                12050 	.byte	-39
   32B1 00                12051 	.byte	0
   32B2 2D                12052 	.byte	45
   32B3 27                12053 	.byte	39
   32B4 FF                12054 	.byte	-1
   32B5 F7                12055 	.byte	-9
   32B6 D9                12056 	.byte	-39
   32B7 00                12057 	.byte	0
   32B8 39                12058 	.byte	57
   32B9 06                12059 	.byte	6
   32BA FF                12060 	.byte	-1
   32BB F7                12061 	.byte	-9
   32BC D6                12062 	.byte	-42
   32BD 00                12063 	.byte	0
   32BE E2                12064 	.byte	-30
   32BF 2A                12065 	.byte	42
   32C0 FF                12066 	.byte	-1
   32C1 F7                12067 	.byte	-9
   32C2 D6                12068 	.byte	-42
   32C3 00                12069 	.byte	0
   32C4 D3                12070 	.byte	-45
   32C5 24                12071 	.byte	36
   32C6 FF                12072 	.byte	-1
   32C7 24                12073 	.byte	36
   32C8 00                12074 	.byte	0
   32C9 FF                12075 	.byte	-1
   32CA 30                12076 	.byte	48
   32CB DC                12077 	.byte	-36
   32CC FF                12078 	.byte	-1
   32CD D9                12079 	.byte	-39
   32CE 00                12080 	.byte	0
   32CF FF                12081 	.byte	-1
   32D0 D3                12082 	.byte	-45
   32D1 24                12083 	.byte	36
   32D2 01                12084 	.byte	1
                          12085 	.globl _depth2RollingRight12
   32D3                   12086 _depth2RollingRight12:
   32D3 00                12087 	.byte	0
   32D4 30                12088 	.byte	48
   32D5 2A                12089 	.byte	42
   32D6 FF                12090 	.byte	-1
   32D7 D9                12091 	.byte	-39
   32D8 00                12092 	.byte	0
   32D9 FF                12093 	.byte	-1
   32DA 30                12094 	.byte	48
   32DB DC                12095 	.byte	-36
   32DC FF                12096 	.byte	-1
   32DD 27                12097 	.byte	39
   32DE 00                12098 	.byte	0
   32DF FF                12099 	.byte	-1
   32E0 D0                12100 	.byte	-48
   32E1 24                12101 	.byte	36
   32E2 FF                12102 	.byte	-1
   32E3 09                12103 	.byte	9
   32E4 2A                12104 	.byte	42
   32E5 00                12105 	.byte	0
   32E6 D0                12106 	.byte	-48
   32E7 D6                12107 	.byte	-42
   32E8 FF                12108 	.byte	-1
   32E9 09                12109 	.byte	9
   32EA 2A                12110 	.byte	42
   32EB 00                12111 	.byte	0
   32EC 27                12112 	.byte	39
   32ED B2                12113 	.byte	-78
   32EE FF                12114 	.byte	-1
   32EF 09                12115 	.byte	9
   32F0 2A                12116 	.byte	42
   32F1 00                12117 	.byte	0
   32F2 1E                12118 	.byte	30
   32F3 D6                12119 	.byte	-42
   32F4 FF                12120 	.byte	-1
   32F5 09                12121 	.byte	9
   32F6 2A                12122 	.byte	42
   32F7 00                12123 	.byte	0
   32F8 D0                12124 	.byte	-48
   32F9 24                12125 	.byte	36
   32FA FF                12126 	.byte	-1
   32FB D9                12127 	.byte	-39
   32FC 00                12128 	.byte	0
   32FD FF                12129 	.byte	-1
   32FE 30                12130 	.byte	48
   32FF DC                12131 	.byte	-36
   3300 FF                12132 	.byte	-1
   3301 27                12133 	.byte	39
   3302 00                12134 	.byte	0
   3303 FF                12135 	.byte	-1
   3304 D0                12136 	.byte	-48
   3305 24                12137 	.byte	36
   3306 01                12138 	.byte	1
                          12139 	.globl _width2RollingFront12
   3307                   12140 _width2RollingFront12:
   3307 FF                12141 	.byte	-1
   3308 12                12142 	.byte	18
   3309 54                12143 	.byte	84
   330A FF                12144 	.byte	-1
   330B 27                12145 	.byte	39
   330C 00                12146 	.byte	0
   330D FF                12147 	.byte	-1
   330E EE                12148 	.byte	-18
   330F AC                12149 	.byte	-84
   3310 FF                12150 	.byte	-1
   3311 D9                12151 	.byte	-39
   3312 00                12152 	.byte	0
   3313 FF                12153 	.byte	-1
   3314 EB                12154 	.byte	-21
   3315 12                12155 	.byte	18
   3316 00                12156 	.byte	0
   3317 27                12157 	.byte	39
   3318 42                12158 	.byte	66
   3319 FF                12159 	.byte	-1
   331A EB                12160 	.byte	-21
   331B 12                12161 	.byte	18
   331C 00                12162 	.byte	0
   331D 3C                12163 	.byte	60
   331E EE                12164 	.byte	-18
   331F FF                12165 	.byte	-1
   3320 E8                12166 	.byte	-24
   3321 12                12167 	.byte	18
   3322 00                12168 	.byte	0
   3323 06                12169 	.byte	6
   3324 9A                12170 	.byte	-102
   3325 FF                12171 	.byte	-1
   3326 E8                12172 	.byte	-24
   3327 12                12173 	.byte	18
   3328 00                12174 	.byte	0
   3329 DC                12175 	.byte	-36
   332A 00                12176 	.byte	0
   332B FF                12177 	.byte	-1
   332C 12                12178 	.byte	18
   332D 54                12179 	.byte	84
   332E FF                12180 	.byte	-1
   332F 24                12181 	.byte	36
   3330 00                12182 	.byte	0
   3331 FF                12183 	.byte	-1
   3332 EE                12184 	.byte	-18
   3333 AC                12185 	.byte	-84
   3334 FF                12186 	.byte	-1
   3335 DC                12187 	.byte	-36
   3336 00                12188 	.byte	0
   3337 01                12189 	.byte	1
                          12190 	.globl _width2RollingBack12
   3338                   12191 _width2RollingBack12:
   3338 00                12192 	.byte	0
   3339 3F                12193 	.byte	63
   333A F1                12194 	.byte	-15
   333B FF                12195 	.byte	-1
   333C 12                12196 	.byte	18
   333D 51                12197 	.byte	81
   333E FF                12198 	.byte	-1
   333F D9                12199 	.byte	-39
   3340 00                12200 	.byte	0
   3341 FF                12201 	.byte	-1
   3342 EE                12202 	.byte	-18
   3343 AF                12203 	.byte	-81
   3344 FF                12204 	.byte	-1
   3345 27                12205 	.byte	39
   3346 00                12206 	.byte	0
   3347 FF                12207 	.byte	-1
   3348 18                12208 	.byte	24
   3349 EE                12209 	.byte	-18
   334A 00                12210 	.byte	0
   334B FA                12211 	.byte	-6
   334C 63                12212 	.byte	99
   334D FF                12213 	.byte	-1
   334E 18                12214 	.byte	24
   334F EE                12215 	.byte	-18
   3350 00                12216 	.byte	0
   3351 C1                12217 	.byte	-63
   3352 12                12218 	.byte	18
   3353 FF                12219 	.byte	-1
   3354 18                12220 	.byte	24
   3355 EE                12221 	.byte	-18
   3356 00                12222 	.byte	0
   3357 D6                12223 	.byte	-42
   3358 C1                12224 	.byte	-63
   3359 FF                12225 	.byte	-1
   335A 18                12226 	.byte	24
   335B EE                12227 	.byte	-18
   335C 00                12228 	.byte	0
   335D 27                12229 	.byte	39
   335E 00                12230 	.byte	0
   335F FF                12231 	.byte	-1
   3360 12                12232 	.byte	18
   3361 51                12233 	.byte	81
   3362 FF                12234 	.byte	-1
   3363 D9                12235 	.byte	-39
   3364 00                12236 	.byte	0
   3365 FF                12237 	.byte	-1
   3366 EE                12238 	.byte	-18
   3367 AF                12239 	.byte	-81
   3368 FF                12240 	.byte	-1
   3369 27                12241 	.byte	39
   336A 00                12242 	.byte	0
   336B 01                12243 	.byte	1
                          12244 	.globl _height1FallingLeft12
   336C                   12245 _height1FallingLeft12:
   336C FF                12246 	.byte	-1
   336D 27                12247 	.byte	39
   336E 00                12248 	.byte	0
   336F FF                12249 	.byte	-1
   3370 18                12250 	.byte	24
   3371 F1                12251 	.byte	-15
   3372 FF                12252 	.byte	-1
   3373 D9                12253 	.byte	-39
   3374 00                12254 	.byte	0
   3375 FF                12255 	.byte	-1
   3376 E8                12256 	.byte	-24
   3377 0F                12257 	.byte	15
   3378 FF                12258 	.byte	-1
   3379 FA                12259 	.byte	-6
   337A D9                12260 	.byte	-39
   337B 00                12261 	.byte	0
   337C 2D                12262 	.byte	45
   337D 27                12263 	.byte	39
   337E FF                12264 	.byte	-1
   337F F7                12265 	.byte	-9
   3380 D9                12266 	.byte	-39
   3381 00                12267 	.byte	0
   3382 21                12268 	.byte	33
   3383 18                12269 	.byte	24
   3384 FF                12270 	.byte	-1
   3385 F7                12271 	.byte	-9
   3386 D6                12272 	.byte	-42
   3387 00                12273 	.byte	0
   3388 E2                12274 	.byte	-30
   3389 2A                12275 	.byte	42
   338A FF                12276 	.byte	-1
   338B F7                12277 	.byte	-9
   338C D6                12278 	.byte	-42
   338D 00                12279 	.byte	0
   338E EB                12280 	.byte	-21
   338F 12                12281 	.byte	18
   3390 FF                12282 	.byte	-1
   3391 24                12283 	.byte	36
   3392 00                12284 	.byte	0
   3393 FF                12285 	.byte	-1
   3394 18                12286 	.byte	24
   3395 EE                12287 	.byte	-18
   3396 FF                12288 	.byte	-1
   3397 D9                12289 	.byte	-39
   3398 00                12290 	.byte	0
   3399 FF                12291 	.byte	-1
   339A EB                12292 	.byte	-21
   339B 12                12293 	.byte	18
   339C 01                12294 	.byte	1
                          12295 	.globl _height1FallingRight12
   339D                   12296 _height1FallingRight12:
   339D 00                12297 	.byte	0
   339E 30                12298 	.byte	48
   339F 2A                12299 	.byte	42
   33A0 FF                12300 	.byte	-1
   33A1 D9                12301 	.byte	-39
   33A2 00                12302 	.byte	0
   33A3 FF                12303 	.byte	-1
   33A4 18                12304 	.byte	24
   33A5 EE                12305 	.byte	-18
   33A6 FF                12306 	.byte	-1
   33A7 27                12307 	.byte	39
   33A8 00                12308 	.byte	0
   33A9 FF                12309 	.byte	-1
   33AA E8                12310 	.byte	-24
   33AB 12                12311 	.byte	18
   33AC FF                12312 	.byte	-1
   33AD 09                12313 	.byte	9
   33AE 2A                12314 	.byte	42
   33AF 00                12315 	.byte	0
   33B0 D0                12316 	.byte	-48
   33B1 D6                12317 	.byte	-42
   33B2 FF                12318 	.byte	-1
   33B3 09                12319 	.byte	9
   33B4 2A                12320 	.byte	42
   33B5 00                12321 	.byte	0
   33B6 0F                12322 	.byte	15
   33B7 C4                12323 	.byte	-60
   33B8 FF                12324 	.byte	-1
   33B9 09                12325 	.byte	9
   33BA 2A                12326 	.byte	42
   33BB 00                12327 	.byte	0
   33BC 1E                12328 	.byte	30
   33BD D6                12329 	.byte	-42
   33BE FF                12330 	.byte	-1
   33BF 09                12331 	.byte	9
   33C0 2A                12332 	.byte	42
   33C1 00                12333 	.byte	0
   33C2 E8                12334 	.byte	-24
   33C3 12                12335 	.byte	18
   33C4 FF                12336 	.byte	-1
   33C5 D9                12337 	.byte	-39
   33C6 00                12338 	.byte	0
   33C7 FF                12339 	.byte	-1
   33C8 18                12340 	.byte	24
   33C9 EE                12341 	.byte	-18
   33CA FF                12342 	.byte	-1
   33CB 27                12343 	.byte	39
   33CC 00                12344 	.byte	0
   33CD FF                12345 	.byte	-1
   33CE E8                12346 	.byte	-24
   33CF 12                12347 	.byte	18
   33D0 01                12348 	.byte	1
                          12349 	.globl _height1FallingBack12
   33D1                   12350 _height1FallingBack12:
   33D1 00                12351 	.byte	0
   33D2 3F                12352 	.byte	63
   33D3 F1                12353 	.byte	-15
   33D4 FF                12354 	.byte	-1
   33D5 09                12355 	.byte	9
   33D6 27                12356 	.byte	39
   33D7 FF                12357 	.byte	-1
   33D8 D9                12358 	.byte	-39
   33D9 00                12359 	.byte	0
   33DA FF                12360 	.byte	-1
   33DB F7                12361 	.byte	-9
   33DC D9                12362 	.byte	-39
   33DD FF                12363 	.byte	-1
   33DE 27                12364 	.byte	39
   33DF 00                12365 	.byte	0
   33E0 FF                12366 	.byte	-1
   33E1 18                12367 	.byte	24
   33E2 EE                12368 	.byte	-18
   33E3 00                12369 	.byte	0
   33E4 F1                12370 	.byte	-15
   33E5 39                12371 	.byte	57
   33E6 FF                12372 	.byte	-1
   33E7 18                12373 	.byte	24
   33E8 EE                12374 	.byte	-18
   33E9 00                12375 	.byte	0
   33EA C1                12376 	.byte	-63
   33EB 12                12377 	.byte	18
   33EC FF                12378 	.byte	-1
   33ED 18                12379 	.byte	24
   33EE EE                12380 	.byte	-18
   33EF 00                12381 	.byte	0
   33F0 DF                12382 	.byte	-33
   33F1 EB                12383 	.byte	-21
   33F2 FF                12384 	.byte	-1
   33F3 18                12385 	.byte	24
   33F4 EE                12386 	.byte	-18
   33F5 00                12387 	.byte	0
   33F6 27                12388 	.byte	39
   33F7 00                12389 	.byte	0
   33F8 FF                12390 	.byte	-1
   33F9 09                12391 	.byte	9
   33FA 27                12392 	.byte	39
   33FB FF                12393 	.byte	-1
   33FC D9                12394 	.byte	-39
   33FD 00                12395 	.byte	0
   33FE FF                12396 	.byte	-1
   33FF F7                12397 	.byte	-9
   3400 D9                12398 	.byte	-39
   3401 FF                12399 	.byte	-1
   3402 27                12400 	.byte	39
   3403 00                12401 	.byte	0
   3404 01                12402 	.byte	1
                          12403 	.globl _height1FallingFront12
   3405                   12404 _height1FallingFront12:
   3405 FF                12405 	.byte	-1
   3406 09                12406 	.byte	9
   3407 2A                12407 	.byte	42
   3408 FF                12408 	.byte	-1
   3409 27                12409 	.byte	39
   340A 00                12410 	.byte	0
   340B FF                12411 	.byte	-1
   340C F7                12412 	.byte	-9
   340D D6                12413 	.byte	-42
   340E FF                12414 	.byte	-1
   340F D9                12415 	.byte	-39
   3410 00                12416 	.byte	0
   3411 FF                12417 	.byte	-1
   3412 EB                12418 	.byte	-21
   3413 12                12419 	.byte	18
   3414 00                12420 	.byte	0
   3415 1E                12421 	.byte	30
   3416 18                12422 	.byte	24
   3417 FF                12423 	.byte	-1
   3418 EB                12424 	.byte	-21
   3419 12                12425 	.byte	18
   341A 00                12426 	.byte	0
   341B 3C                12427 	.byte	60
   341C EE                12428 	.byte	-18
   341D FF                12429 	.byte	-1
   341E E8                12430 	.byte	-24
   341F 12                12431 	.byte	18
   3420 00                12432 	.byte	0
   3421 0F                12433 	.byte	15
   3422 C4                12434 	.byte	-60
   3423 FF                12435 	.byte	-1
   3424 E8                12436 	.byte	-24
   3425 12                12437 	.byte	18
   3426 00                12438 	.byte	0
   3427 DC                12439 	.byte	-36
   3428 00                12440 	.byte	0
   3429 FF                12441 	.byte	-1
   342A 09                12442 	.byte	9
   342B 2A                12443 	.byte	42
   342C FF                12444 	.byte	-1
   342D 24                12445 	.byte	36
   342E 00                12446 	.byte	0
   342F FF                12447 	.byte	-1
   3430 F7                12448 	.byte	-9
   3431 D6                12449 	.byte	-42
   3432 FF                12450 	.byte	-1
   3433 DC                12451 	.byte	-36
   3434 00                12452 	.byte	0
   3435 01                12453 	.byte	1
                          12454 	.globl _height2FallingLeft
                          12455 	.area	.text
   3436                   12456 _height2FallingLeft:
   3436 0A F2             12457 	.word	_height2FallingLeft0
   3438 0E 0E             12458 	.word	_height2FallingLeft1
   343A 11 3C             12459 	.word	_height2FallingLeft2
   343C 14 6A             12460 	.word	_height2FallingLeft3
   343E 17 98             12461 	.word	_height2FallingLeft4
   3440 1A C6             12462 	.word	_height2FallingLeft5
   3442 1D F4             12463 	.word	_height2FallingLeft6
   3444 21 22             12464 	.word	_height2FallingLeft7
   3446 24 50             12465 	.word	_height2FallingLeft8
   3448 27 7E             12466 	.word	_height2FallingLeft9
   344A 2A AC             12467 	.word	_height2FallingLeft10
   344C 2D DA             12468 	.word	_height2FallingLeft11
                          12469 	.globl _height2RisingRight
   344E                   12470 _height2RisingRight:
   344E 0B 23             12471 	.word	_height2RisingRight0
   3450 0E 3F             12472 	.word	_height2RisingRight1
   3452 11 6D             12473 	.word	_height2RisingRight2
   3454 14 9B             12474 	.word	_height2RisingRight3
   3456 17 C9             12475 	.word	_height2RisingRight4
   3458 1A F7             12476 	.word	_height2RisingRight5
   345A 1E 25             12477 	.word	_height2RisingRight6
   345C 21 53             12478 	.word	_height2RisingRight7
   345E 24 81             12479 	.word	_height2RisingRight8
   3460 27 AF             12480 	.word	_height2RisingRight9
   3462 2A DD             12481 	.word	_height2RisingRight10
   3464 2E 0B             12482 	.word	_height2RisingRight11
                          12483 	.globl _height2FallingRight
   3466                   12484 _height2FallingRight:
   3466 0B 57             12485 	.word	_height2FallingRight0
   3468 0E 73             12486 	.word	_height2FallingRight1
   346A 11 A1             12487 	.word	_height2FallingRight2
   346C 14 CF             12488 	.word	_height2FallingRight3
   346E 17 FD             12489 	.word	_height2FallingRight4
   3470 1B 2B             12490 	.word	_height2FallingRight5
   3472 1E 59             12491 	.word	_height2FallingRight6
   3474 21 87             12492 	.word	_height2FallingRight7
   3476 24 B5             12493 	.word	_height2FallingRight8
   3478 27 E3             12494 	.word	_height2FallingRight9
   347A 2B 11             12495 	.word	_height2FallingRight10
   347C 2E 3F             12496 	.word	_height2FallingRight11
                          12497 	.globl _height2RisingLeft
   347E                   12498 _height2RisingLeft:
   347E 0B 88             12499 	.word	_height2RisingLeft0
   3480 0E A7             12500 	.word	_height2RisingLeft1
   3482 11 D5             12501 	.word	_height2RisingLeft2
   3484 15 03             12502 	.word	_height2RisingLeft3
   3486 18 31             12503 	.word	_height2RisingLeft4
   3488 1B 5F             12504 	.word	_height2RisingLeft5
   348A 1E 8D             12505 	.word	_height2RisingLeft6
   348C 21 BB             12506 	.word	_height2RisingLeft7
   348E 24 E9             12507 	.word	_height2RisingLeft8
   3490 28 17             12508 	.word	_height2RisingLeft9
   3492 2B 45             12509 	.word	_height2RisingLeft10
   3494 2E 73             12510 	.word	_height2RisingLeft11
                          12511 	.globl _height2FallingBack
   3496                   12512 _height2FallingBack:
   3496 0B BC             12513 	.word	_height2FallingBack0
   3498 0E DB             12514 	.word	_height2FallingBack1
   349A 12 09             12515 	.word	_height2FallingBack2
   349C 15 37             12516 	.word	_height2FallingBack3
   349E 18 65             12517 	.word	_height2FallingBack4
   34A0 1B 93             12518 	.word	_height2FallingBack5
   34A2 1E C1             12519 	.word	_height2FallingBack6
   34A4 21 EF             12520 	.word	_height2FallingBack7
   34A6 25 1D             12521 	.word	_height2FallingBack8
   34A8 28 4B             12522 	.word	_height2FallingBack9
   34AA 2B 79             12523 	.word	_height2FallingBack10
   34AC 2E A7             12524 	.word	_height2FallingBack11
                          12525 	.globl _height2RisingFront
   34AE                   12526 _height2RisingFront:
   34AE 0B ED             12527 	.word	_height2RisingFront0
   34B0 0F 0F             12528 	.word	_height2RisingFront1
   34B2 12 3D             12529 	.word	_height2RisingFront2
   34B4 15 6B             12530 	.word	_height2RisingFront3
   34B6 18 99             12531 	.word	_height2RisingFront4
   34B8 1B C7             12532 	.word	_height2RisingFront5
   34BA 1E F5             12533 	.word	_height2RisingFront6
   34BC 22 23             12534 	.word	_height2RisingFront7
   34BE 25 51             12535 	.word	_height2RisingFront8
   34C0 28 7F             12536 	.word	_height2RisingFront9
   34C2 2B AD             12537 	.word	_height2RisingFront10
   34C4 2E DB             12538 	.word	_height2RisingFront11
                          12539 	.globl _height2FallingFront
   34C6                   12540 _height2FallingFront:
   34C6 0C 21             12541 	.word	_height2FallingFront0
   34C8 0F 43             12542 	.word	_height2FallingFront1
   34CA 12 71             12543 	.word	_height2FallingFront2
   34CC 15 9F             12544 	.word	_height2FallingFront3
   34CE 18 CD             12545 	.word	_height2FallingFront4
   34D0 1B FB             12546 	.word	_height2FallingFront5
   34D2 1F 29             12547 	.word	_height2FallingFront6
   34D4 22 57             12548 	.word	_height2FallingFront7
   34D6 25 85             12549 	.word	_height2FallingFront8
   34D8 28 B3             12550 	.word	_height2FallingFront9
   34DA 2B E1             12551 	.word	_height2FallingFront10
   34DC 2F 0F             12552 	.word	_height2FallingFront11
                          12553 	.globl _height2RisingBack
   34DE                   12554 _height2RisingBack:
   34DE 0C 52             12555 	.word	_height2RisingBack0
   34E0 0F 74             12556 	.word	_height2RisingBack1
   34E2 12 A2             12557 	.word	_height2RisingBack2
   34E4 15 D0             12558 	.word	_height2RisingBack3
   34E6 18 FE             12559 	.word	_height2RisingBack4
   34E8 1C 2C             12560 	.word	_height2RisingBack5
   34EA 1F 5A             12561 	.word	_height2RisingBack6
   34EC 22 88             12562 	.word	_height2RisingBack7
   34EE 25 B6             12563 	.word	_height2RisingBack8
   34F0 28 E4             12564 	.word	_height2RisingBack9
   34F2 2C 12             12565 	.word	_height2RisingBack10
   34F4 2F 40             12566 	.word	_height2RisingBack11
                          12567 	.globl _depth2RollingLeft
   34F6                   12568 _depth2RollingLeft:
   34F6 0C 86             12569 	.word	_depth2RollingLeft0
   34F8 0F A8             12570 	.word	_depth2RollingLeft1
   34FA 12 D6             12571 	.word	_depth2RollingLeft2
   34FC 16 04             12572 	.word	_depth2RollingLeft3
   34FE 19 32             12573 	.word	_depth2RollingLeft4
   3500 1C 60             12574 	.word	_depth2RollingLeft5
   3502 1F 8E             12575 	.word	_depth2RollingLeft6
   3504 22 BC             12576 	.word	_depth2RollingLeft7
   3506 25 EA             12577 	.word	_depth2RollingLeft8
   3508 29 18             12578 	.word	_depth2RollingLeft9
   350A 2C 46             12579 	.word	_depth2RollingLeft10
   350C 2F 74             12580 	.word	_depth2RollingLeft11
                          12581 	.globl _depth2RollingRight
   350E                   12582 _depth2RollingRight:
   350E 0C B7             12583 	.word	_depth2RollingRight0
   3510 0F D9             12584 	.word	_depth2RollingRight1
   3512 13 07             12585 	.word	_depth2RollingRight2
   3514 16 35             12586 	.word	_depth2RollingRight3
   3516 19 63             12587 	.word	_depth2RollingRight4
   3518 1C 91             12588 	.word	_depth2RollingRight5
   351A 1F BF             12589 	.word	_depth2RollingRight6
   351C 22 ED             12590 	.word	_depth2RollingRight7
   351E 26 1B             12591 	.word	_depth2RollingRight8
   3520 29 49             12592 	.word	_depth2RollingRight9
   3522 2C 77             12593 	.word	_depth2RollingRight10
   3524 2F A5             12594 	.word	_depth2RollingRight11
                          12595 	.globl _width2RollingFront
   3526                   12596 _width2RollingFront:
   3526 0C E8             12597 	.word	_width2RollingFront0
   3528 10 0D             12598 	.word	_width2RollingFront1
   352A 13 3B             12599 	.word	_width2RollingFront2
   352C 16 69             12600 	.word	_width2RollingFront3
   352E 19 97             12601 	.word	_width2RollingFront4
   3530 1C C5             12602 	.word	_width2RollingFront5
   3532 1F F3             12603 	.word	_width2RollingFront6
   3534 23 21             12604 	.word	_width2RollingFront7
   3536 26 4F             12605 	.word	_width2RollingFront8
   3538 29 7D             12606 	.word	_width2RollingFront9
   353A 2C AB             12607 	.word	_width2RollingFront10
   353C 2F D9             12608 	.word	_width2RollingFront11
                          12609 	.globl _width2RollingBack
   353E                   12610 _width2RollingBack:
   353E 0D 19             12611 	.word	_width2RollingBack0
   3540 10 3E             12612 	.word	_width2RollingBack1
   3542 13 6C             12613 	.word	_width2RollingBack2
   3544 16 9A             12614 	.word	_width2RollingBack3
   3546 19 C8             12615 	.word	_width2RollingBack4
   3548 1C F6             12616 	.word	_width2RollingBack5
   354A 20 24             12617 	.word	_width2RollingBack6
   354C 23 52             12618 	.word	_width2RollingBack7
   354E 26 80             12619 	.word	_width2RollingBack8
   3550 29 AE             12620 	.word	_width2RollingBack9
   3552 2C DC             12621 	.word	_width2RollingBack10
   3554 30 0A             12622 	.word	_width2RollingBack11
                          12623 	.globl _height1FallingLeft
   3556                   12624 _height1FallingLeft:
   3556 0D 4A             12625 	.word	_height1FallingLeft0
   3558 10 72             12626 	.word	_height1FallingLeft1
   355A 13 A0             12627 	.word	_height1FallingLeft2
   355C 16 CE             12628 	.word	_height1FallingLeft3
   355E 19 FC             12629 	.word	_height1FallingLeft4
   3560 1D 2A             12630 	.word	_height1FallingLeft5
   3562 20 58             12631 	.word	_height1FallingLeft6
   3564 23 86             12632 	.word	_height1FallingLeft7
   3566 26 B4             12633 	.word	_height1FallingLeft8
   3568 29 E2             12634 	.word	_height1FallingLeft9
   356A 2D 10             12635 	.word	_height1FallingLeft10
   356C 30 3E             12636 	.word	_height1FallingLeft11
                          12637 	.globl _height1FallingRight
   356E                   12638 _height1FallingRight:
   356E 0D 7B             12639 	.word	_height1FallingRight0
   3570 10 A3             12640 	.word	_height1FallingRight1
   3572 13 D1             12641 	.word	_height1FallingRight2
   3574 16 FF             12642 	.word	_height1FallingRight3
   3576 1A 2D             12643 	.word	_height1FallingRight4
   3578 1D 5B             12644 	.word	_height1FallingRight5
   357A 20 89             12645 	.word	_height1FallingRight6
   357C 23 B7             12646 	.word	_height1FallingRight7
   357E 26 E5             12647 	.word	_height1FallingRight8
   3580 2A 13             12648 	.word	_height1FallingRight9
   3582 2D 41             12649 	.word	_height1FallingRight10
   3584 30 6F             12650 	.word	_height1FallingRight11
                          12651 	.globl _height1FallingBack
   3586                   12652 _height1FallingBack:
   3586 0D AC             12653 	.word	_height1FallingBack0
   3588 10 D7             12654 	.word	_height1FallingBack1
   358A 14 05             12655 	.word	_height1FallingBack2
   358C 17 33             12656 	.word	_height1FallingBack3
   358E 1A 61             12657 	.word	_height1FallingBack4
   3590 1D 8F             12658 	.word	_height1FallingBack5
   3592 20 BD             12659 	.word	_height1FallingBack6
   3594 23 EB             12660 	.word	_height1FallingBack7
   3596 27 19             12661 	.word	_height1FallingBack8
   3598 2A 47             12662 	.word	_height1FallingBack9
   359A 2D 75             12663 	.word	_height1FallingBack10
   359C 30 A3             12664 	.word	_height1FallingBack11
                          12665 	.globl _height1FallingFront
   359E                   12666 _height1FallingFront:
   359E 0D DD             12667 	.word	_height1FallingFront0
   35A0 11 0B             12668 	.word	_height1FallingFront1
   35A2 14 39             12669 	.word	_height1FallingFront2
   35A4 17 67             12670 	.word	_height1FallingFront3
   35A6 1A 95             12671 	.word	_height1FallingFront4
   35A8 1D C3             12672 	.word	_height1FallingFront5
   35AA 20 F1             12673 	.word	_height1FallingFront6
   35AC 24 1F             12674 	.word	_height1FallingFront7
   35AE 27 4D             12675 	.word	_height1FallingFront8
   35B0 2A 7B             12676 	.word	_height1FallingFront9
   35B2 2D A9             12677 	.word	_height1FallingFront10
   35B4 30 D7             12678 	.word	_height1FallingFront11
                          12679 	.area .bss
                          12680 	.globl	_blockOrientation
   C8E2                   12681 _blockOrientation:	.blkb	1
                          12682 	.globl	_blockYOfs
   C8E3                   12683 _blockYOfs:	.blkb	1
                          12684 	.globl	_lastBlockDirection
   C8E4                   12685 _lastBlockDirection:	.blkb	1
                          12686 	.globl	_blockAnimating
   C8E5                   12687 _blockAnimating:	.blkb	1
                          12688 	.globl	_splitMode
   C8E6                   12689 _splitMode:	.blkb	1
                          12690 	.globl	_blockX
   C8E7                   12691 _blockX:	.blkb	1
                          12692 	.globl	_blockY
   C8E8                   12693 _blockY:	.blkb	1
                          12694 	.globl	_blockX2
   C8E9                   12695 _blockX2:	.blkb	1
                          12696 	.globl	_blockY2
   C8EA                   12697 _blockY2:	.blkb	1
                          12698 	.globl	_blockAnimation
   C8EB                   12699 _blockAnimation:	.blkb	2
                          12700 	.globl	_nextBlockAnimation
   C8ED                   12701 _nextBlockAnimation:	.blkb	2
                          12702 	.globl	_blockAnimationStep
   C8EF                   12703 _blockAnimationStep:	.blkb	1
                          12704 	.globl	_nextBlockX
   C8F0                   12705 _nextBlockX:	.blkb	1
                          12706 	.globl	_nextBlockY
   C8F1                   12707 _nextBlockY:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$block$1004       02DF GR  |   2 A$block$1005       02E2 GR
  2 A$block$1013       02E3 GR  |   2 A$block$1014       02E6 GR
  2 A$block$1020       02E9 GR  |   2 A$block$1026       02EC GR
  2 A$block$1027       02EE GR  |   2 A$block$1028       02F1 GR
  2 A$block$1031       02F2 GR  |   2 A$block$1037       02F4 GR
  2 A$block$1038       02F7 GR  |   2 A$block$1039       02F9 GR
  2 A$block$104        0043 GR  |   2 A$block$1040       02FC GR
  2 A$block$1041       02FE GR  |   2 A$block$1042       0300 GR
  2 A$block$1043       0302 GR  |   2 A$block$1049       0306 GR
  2 A$block$105        0046 GR  |   2 A$block$1050       0309 GR
  2 A$block$1051       030B GR  |   2 A$block$1052       030E GR
  2 A$block$1053       0310 GR  |   2 A$block$1054       0312 GR
  2 A$block$1055       0313 GR  |   2 A$block$1056       0315 GR
  2 A$block$1062       0317 GR  |   2 A$block$1063       031A GR
  2 A$block$1069       031D GR  |   2 A$block$1070       031F GR
  2 A$block$1076       0322 GR  |   2 A$block$1082       0325 GR
  2 A$block$1083       0328 GR  |   2 A$block$1085       032B GR
  2 A$block$1086       032D GR  |   2 A$block$1087       032E GR
  2 A$block$1088       0330 GR  |   2 A$block$1094       0334 GR
  2 A$block$1095       0337 GR  |   2 A$block$1101       033A GR
  2 A$block$1102       033C GR  |   2 A$block$1108       033F GR
  2 A$block$1109       0342 GR  |   2 A$block$111        0049 GR
  2 A$block$1111       0345 GR  |   2 A$block$1112       0348 GR
  2 A$block$1113       034B GR  |   2 A$block$1119       034F GR
  2 A$block$1120       0351 GR  |   2 A$block$1121       0352 GR
  2 A$block$1122       0354 GR  |   2 A$block$1128       0356 GR
  2 A$block$1129       0359 GR  |   2 A$block$1135       035C GR
  2 A$block$1136       035E GR  |   2 A$block$1142       0361 GR
  2 A$block$1143       0363 GR  |   2 A$block$1144       0364 GR
  2 A$block$1150       0367 GR  |   2 A$block$1151       036A GR
  2 A$block$1153       036C GR  |   2 A$block$1154       036E GR
  2 A$block$1155       036F GR  |   2 A$block$1156       0371 GR
  2 A$block$1162       0373 GR  |   2 A$block$1163       0376 GR
  2 A$block$1169       0379 GR  |   2 A$block$1170       037B GR
  2 A$block$1179       037E GR  |   2 A$block$118        004C GR
  2 A$block$1181       0381 GR  |   2 A$block$1182       0383 GR
  2 A$block$1185       0384 GR  |   2 A$block$119        004F GR
  2 A$block$1191       0386 GR  |   2 A$block$1192       0389 GR
  2 A$block$1198       038B GR  |   2 A$block$1199       038E GR
  2 A$block$1205       0390 GR  |   2 A$block$1206       0393 GR
  2 A$block$1212       0396 GR  |   2 A$block$1213       0399 GR
  2 A$block$1219       039C GR  |   2 A$block$1220       039E GR
  2 A$block$1226       03A1 GR  |   2 A$block$1227       03A3 GR
  2 A$block$1228       03A6 GR  |   2 A$block$1229       03A8 GR
  2 A$block$1232       03A9 GR  |   2 A$block$1233       03AB GR
  2 A$block$1234       03AD GR  |   2 A$block$1240       03AF GR
  2 A$block$1241       03B1 GR  |   2 A$block$1244       03B3 GR
  2 A$block$1245       03B5 GR  |   2 A$block$125        0052 GR
  2 A$block$1251       03B8 GR  |   2 A$block$1252       03BB GR
  2 A$block$1253       03BD GR  |   2 A$block$1254       03BF GR
  2 A$block$1255       03C2 GR  |   2 A$block$1256       03C5 GR
  2 A$block$1262       03C7 GR  |   2 A$block$1263       03C9 GR
  2 A$block$1264       03CB GR  |   2 A$block$1265       03CD GR
  2 A$block$1271       03CF GR  |   2 A$block$1272       03D1 GR
  2 A$block$1273       03D3 GR  |   2 A$block$1274       03D5 GR
  2 A$block$1275       03D7 GR  |   2 A$block$1278       03D9 GR
  2 A$block$1279       03DB GR  |   2 A$block$1280       03DD GR
  2 A$block$1286       03E0 GR  |   2 A$block$1287       03E3 GR
  2 A$block$1288       03E5 GR  |   2 A$block$1289       03E8 GR
  2 A$block$1290       03EB GR  |   2 A$block$1291       03ED GR
  2 A$block$1292       03EF GR  |   2 A$block$1293       03F1 GR
  2 A$block$1294       03F3 GR  |   2 A$block$1297       03F5 GR
  2 A$block$1298       03F7 GR  |   2 A$block$1299       03F9 GR
  2 A$block$1302       03FC GR  |   2 A$block$1303       03FE GR
  2 A$block$131        0055 GR  |   2 A$block$1310       0400 GR
  2 A$block$1311       0403 GR  |   2 A$block$1312       0405 GR
  2 A$block$1313       0408 GR  |   2 A$block$1314       040B GR
  2 A$block$1315       040D GR  |   2 A$block$1316       040F GR
  2 A$block$1317       0411 GR  |   2 A$block$1318       0413 GR
  2 A$block$1319       0415 GR  |   2 A$block$132        0058 GR
  2 A$block$1322       0417 GR  |   2 A$block$1323       0419 GR
  2 A$block$1324       041B GR  |   2 A$block$1327       041E GR
  2 A$block$133        0059 GR  |   2 A$block$1334       0420 GR
  2 A$block$1335       0422 GR  |   2 A$block$1341       0424 GR
  2 A$block$1342       0427 GR  |   2 A$block$1343       0428 GR
  2 A$block$1344       042A GR  |   2 A$block$1345       042B GR
  2 A$block$1346       042C GR  |   2 A$block$1347       042F GR
  2 A$block$1348       0431 GR  |   2 A$block$1349       0433 GR
  2 A$block$1355       0436 GR  |   2 A$block$1356       0439 GR
  2 A$block$1362       043D GR  |   2 A$block$1368       0440 GR
  2 A$block$1369       0442 GR  |   2 A$block$1372       0444 GR
  2 A$block$1373       0446 GR  |   2 A$block$1379       0449 GR
  2 A$block$1380       044C GR  |   2 A$block$1381       044E GR
  2 A$block$1382       0450 GR  |   2 A$block$1383       0453 GR
  2 A$block$1384       0456 GR  |   2 A$block$139        005C GR
  2 A$block$1390       0458 GR  |   2 A$block$1391       045A GR
  2 A$block$1392       045C GR  |   2 A$block$1393       045E GR
  2 A$block$1399       0460 GR  |   2 A$block$140        005F GR
  2 A$block$1400       0462 GR  |   2 A$block$1401       0464 GR
  2 A$block$1402       0466 GR  |   2 A$block$1403       0468 GR
  2 A$block$1406       046A GR  |   2 A$block$1407       046C GR
  2 A$block$1408       046E GR  |   2 A$block$1414       0471 GR
  2 A$block$1415       0474 GR  |   2 A$block$1416       0476 GR
  2 A$block$1417       0479 GR  |   2 A$block$1418       047C GR
  2 A$block$1419       047E GR  |   2 A$block$1420       0480 GR
  2 A$block$1421       0482 GR  |   2 A$block$1422       0484 GR
  2 A$block$1425       0486 GR  |   2 A$block$1426       0488 GR
  2 A$block$1427       048A GR  |   2 A$block$1430       048D GR
  2 A$block$1431       048F GR  |   2 A$block$1438       0491 GR
  2 A$block$1439       0494 GR  |   2 A$block$1440       0496 GR
  2 A$block$1441       0499 GR  |   2 A$block$1442       049C GR
  2 A$block$1443       049E GR  |   2 A$block$1444       04A0 GR
  2 A$block$1445       04A2 GR  |   2 A$block$1446       04A4 GR
  2 A$block$1447       04A6 GR  |   2 A$block$1450       04A8 GR
  2 A$block$1451       04AA GR  |   2 A$block$1452       04AC GR
  2 A$block$1455       04AF GR  |   2 A$block$146        0062 GR
  2 A$block$1462       04B1 GR  |   2 A$block$1463       04B3 GR
  2 A$block$1469       04B5 GR  |   2 A$block$1470       04B8 GR
  2 A$block$1472       04BB GR  |   2 A$block$1473       04BD GR
  2 A$block$153        0065 GR  |   2 A$block$154        0068 GR
  2 A$block$160        006B GR  |   2 A$block$166        006E GR
  2 A$block$167        0071 GR  |   2 A$block$173        0074 GR
  2 A$block$174        0077 GR  |   2 A$block$175        0078 GR
  2 A$block$181        007B GR  |   2 A$block$188        007D GR
  2 A$block$189        0080 GR  |   2 A$block$195        0083 GR
  2 A$block$201        0086 GR  |   2 A$block$202        0089 GR
  2 A$block$208        008C GR  |   2 A$block$209        008F GR
  2 A$block$210        0090 GR  |   2 A$block$222        0093 GR
  2 A$block$229        0096 GR  |   2 A$block$236        0099 GR
  2 A$block$237        009C GR  |   2 A$block$238        009E GR
  2 A$block$239        00A2 GR  |   2 A$block$240        00A4 GR
  2 A$block$241        00A6 GR  |   2 A$block$242        00AA GR
  2 A$block$249        00AD GR  |   2 A$block$250        00AF GR
  2 A$block$251        00B1 GR  |   2 A$block$252        00B5 GR
  2 A$block$253        00B7 GR  |   2 A$block$254        00B9 GR
  2 A$block$255        00BB GR  |   2 A$block$256        00BD GR
  2 A$block$257        00C1 GR  |   2 A$block$264        00C4 GR
  2 A$block$265        00C7 GR  |   2 A$block$271        00CA GR
  2 A$block$272        00CD GR  |   2 A$block$278        00D0 GR
  2 A$block$279        00D3 GR  |   2 A$block$280        00D5 GR
  2 A$block$286        00D8 GR  |   2 A$block$287        00DB GR
  2 A$block$293        00DE GR  |   2 A$block$294        00E0 GR
  2 A$block$300        00E3 GR  |   2 A$block$307        00E6 GR
  2 A$block$308        00E9 GR  |   2 A$block$314        00EC GR
  2 A$block$315        00EF GR  |   2 A$block$321        00F2 GR
  2 A$block$322        00F5 GR  |   2 A$block$323        00F6 GR
  2 A$block$329        00F9 GR  |   2 A$block$33         0000 GR
  2 A$block$330        00FC GR  |   2 A$block$336        00FF GR
  2 A$block$337        0101 GR  |   2 A$block$34         0002 GR
  2 A$block$343        0104 GR  |   2 A$block$350        0107 GR
  2 A$block$351        010A GR  |   2 A$block$357        010D GR
  2 A$block$358        0110 GR  |   2 A$block$364        0113 GR
  2 A$block$365        0116 GR  |   2 A$block$371        0119 GR
  2 A$block$372        011C GR  |   2 A$block$373        011D GR
  2 A$block$379        0120 GR  |   2 A$block$380        0122 GR
  2 A$block$386        0125 GR  |   2 A$block$393        0127 GR
  2 A$block$394        012A GR  |   2 A$block$40         0004 GR
  2 A$block$400        012D GR  |   2 A$block$401        0130 GR
  2 A$block$407        0133 GR  |   2 A$block$408        0136 GR
  2 A$block$41         0006 GR  |   2 A$block$414        0139 GR
  2 A$block$415        013C GR  |   2 A$block$416        013E GR
  2 A$block$422        0141 GR  |   2 A$block$423        0143 GR
  2 A$block$435        0146 GR  |   2 A$block$442        0149 GR
  2 A$block$443        014B GR  |   2 A$block$444        014D GR
  2 A$block$445        0151 GR  |   2 A$block$446        0153 GR
  2 A$block$447        0155 GR  |   2 A$block$448        0157 GR
  2 A$block$449        0159 GR  |   2 A$block$450        015D GR
  2 A$block$457        0160 GR  |   2 A$block$458        0163 GR
  2 A$block$464        0166 GR  |   2 A$block$47         0009 GR
  2 A$block$470        0169 GR  |   2 A$block$471        016C GR
  2 A$block$472        016D GR  |   2 A$block$478        0170 GR
  2 A$block$479        0173 GR  |   2 A$block$48         000B GR
  2 A$block$485        0176 GR  |   2 A$block$492        0179 GR
  2 A$block$493        017C GR  |   2 A$block$499        017F GR
  2 A$block$500        0182 GR  |   2 A$block$506        0185 GR
  2 A$block$507        0188 GR  |   2 A$block$508        0189 GR
  2 A$block$514        018C GR  |   2 A$block$515        018F GR
  2 A$block$521        0192 GR  |   2 A$block$528        0195 GR
  2 A$block$529        0198 GR  |   2 A$block$535        019B GR
  2 A$block$536        019E GR  |   2 A$block$54         000E GR
  2 A$block$542        01A1 GR  |   2 A$block$543        01A4 GR
  2 A$block$549        01A7 GR  |   2 A$block$55         0011 GR
  2 A$block$550        01AA GR  |   2 A$block$551        01AC GR
  2 A$block$557        01AF GR  |   2 A$block$563        01B2 GR
  2 A$block$570        01B4 GR  |   2 A$block$571        01B7 GR
  2 A$block$577        01BA GR  |   2 A$block$578        01BD GR
  2 A$block$584        01C0 GR  |   2 A$block$585        01C3 GR
  2 A$block$591        01C6 GR  |   2 A$block$592        01C9 GR
  2 A$block$593        01CA GR  |   2 A$block$599        01CD GR
  2 A$block$61         0015 GR  |   2 A$block$611        01D0 GR
  2 A$block$618        01D3 GR  |   2 A$block$619        01D5 GR
  2 A$block$62         0018 GR  |   2 A$block$620        01D7 GR
  2 A$block$621        01DB GR  |   2 A$block$622        01DD GR
  2 A$block$623        01DF GR  |   2 A$block$624        01E1 GR
  2 A$block$625        01E3 GR  |   2 A$block$626        01E7 GR
  2 A$block$633        01EA GR  |   2 A$block$634        01ED GR
  2 A$block$640        01F0 GR  |   2 A$block$641        01F3 GR
  2 A$block$647        01F6 GR  |   2 A$block$648        01F9 GR
  2 A$block$649        01FA GR  |   2 A$block$655        01FD GR
  2 A$block$656        0200 GR  |   2 A$block$662        0203 GR
  2 A$block$668        0206 GR  |   2 A$block$675        0209 GR
  2 A$block$676        020C GR  |   2 A$block$68         001C GR
  2 A$block$682        020F GR  |   2 A$block$683        0212 GR
  2 A$block$689        0215 GR  |   2 A$block$69         001E GR
  2 A$block$690        0218 GR  |   2 A$block$691        021A GR
  2 A$block$697        021D GR  |   2 A$block$698        0220 GR
  2 A$block$70         0020 GR  |   2 A$block$704        0223 GR
  2 A$block$71         0024 GR  |   2 A$block$710        0226 GR
  2 A$block$717        0229 GR  |   2 A$block$718        022C GR
  2 A$block$72         0026 GR  |   2 A$block$724        022F GR
  2 A$block$73         0028 GR  |   2 A$block$730        0232 GR
  2 A$block$731        0235 GR  |   2 A$block$737        0238 GR
  2 A$block$738        023B GR  |   2 A$block$739        023C GR
  2 A$block$74         002A GR  |   2 A$block$745        023F GR
  2 A$block$75         002C GR  |   2 A$block$752        0241 GR
  2 A$block$753        0244 GR  |   2 A$block$759        0247 GR
  2 A$block$76         0030 GR  |   2 A$block$760        024A GR
  2 A$block$766        024D GR  |   2 A$block$767        0250 GR
  2 A$block$773        0253 GR  |   2 A$block$774        0256 GR
  2 A$block$775        0257 GR  |   2 A$block$788        025A GR
  2 A$block$789        025C GR  |   2 A$block$797        025D GR
  2 A$block$803        025F GR  |   2 A$block$806        0261 GR
  2 A$block$809        0263 GR  |   2 A$block$812        0265 GR
  2 A$block$815        0267 GR  |   2 A$block$818        0269 GR
  2 A$block$821        026B GR  |   2 A$block$824        026D GR
  2 A$block$827        026F GR  |   2 A$block$83         0033 GR
  2 A$block$830        0271 GR  |   2 A$block$833        0273 GR
  2 A$block$836        0275 GR  |   2 A$block$839        0277 GR
  2 A$block$84         0036 GR  |   2 A$block$842        0279 GR
  2 A$block$845        027B GR  |   2 A$block$848        027D GR
  2 A$block$854        027F GR  |   2 A$block$857        0281 GR
  2 A$block$860        0283 GR  |   2 A$block$863        0285 GR
  2 A$block$866        0287 GR  |   2 A$block$869        0289 GR
  2 A$block$872        028B GR  |   2 A$block$875        028D GR
  2 A$block$878        028F GR  |   2 A$block$881        0291 GR
  2 A$block$884        0293 GR  |   2 A$block$887        0295 GR
  2 A$block$890        0297 GR  |   2 A$block$893        0299 GR
  2 A$block$896        029A GR  |   2 A$block$899        029C GR
  2 A$block$90         0039 GR  |   2 A$block$902        029E GR
  2 A$block$905        02A0 GR  |   2 A$block$908        02A2 GR
  2 A$block$911        02A4 GR  |   2 A$block$917        02A6 GR
  2 A$block$925        02A7 GR  |   2 A$block$926        02AA GR
  2 A$block$932        02AC GR  |   2 A$block$933        02AF GR
  2 A$block$934        02B0 GR  |   2 A$block$935        02B3 GR
  2 A$block$936        02B5 GR  |   2 A$block$942        02B7 GR
  2 A$block$943        02BA GR  |   2 A$block$949        02BD GR
  2 A$block$950        02C0 GR  |   2 A$block$956        02C3 GR
  2 A$block$96         003C GR  |   2 A$block$962        02C6 GR
  2 A$block$963        02C9 GR  |   2 A$block$969        02CC GR
  2 A$block$97         003F GR  |   2 A$block$971        02CF GR
  2 A$block$979        02D0 GR  |   2 A$block$98         0040 GR
  2 A$block$980        02D3 GR  |   2 A$block$986        02D6 GR
  2 A$block$992        02D9 GR  |   2 A$block$998        02DC GR
  2 L11                00AD R   |   2 L12                0149 R
  2 L14                0146 R   |   2 L15                00C4 R
  2 L16                0107 R   |   2 L17                00E6 R
  2 L19                01D0 R   |   2 L2                 0099 R
  2 L20                0160 R   |   2 L21                0195 R
  2 L22                0179 R   |   2 L24                025A R
  2 L25                01EA R   |   2 L26                0229 R
  2 L27                0209 R   |   2 L29                025A R
  2 L30                0096 R   |   2 L31                007D R
  2 L32                01D3 R   |   2 L33                0127 R
  2 L34                01B4 R   |   2 L35                0241 R
  2 L40                02CF R   |   2 L46                0345 R
  2 L47                032B R   |   2 L49                036C R
  2 L5                 0093 R   |   2 L50                0381 R
  2 L54                0400 R   |   2 L55                0420 R
  2 L57                0491 R   |   2 L58                04B1 R
  2 L59                04BB R   |   2 L6                 0033 R
  2 L7                 0065 R   |   2 L8                 004C R
  2 _Draw_VLpo         025D GR  |     ___Intensity_a     **** GX
    ___Moveto_d        **** GX  |     ___Reset0Ref       **** GX
  3 _blockAnimatin     0003 GR  |   3 _blockAnimatio     0009 GR
  3 _blockAnimatio     000D GR  |   3 _blockOrientat     0000 GR
  2 _blockStartLev     02D0 GR  |   3 _blockX            0005 GR
  3 _blockX2           0007 GR  |   3 _blockY            0006 GR
  3 _blockY2           0008 GR  |   3 _blockYOfs         0001 GR
  2 _depth2Rolling     2EC3 GR  |   2 _depth2Rolling     0653 GR
  2 _depth2Rolling     0975 GR  |   2 _depth2Rolling     2613 GR
  2 _depth2Rolling     2941 GR  |   2 _depth2Rolling     2C6F GR
  2 _depth2Rolling     0CA3 GR  |   2 _depth2Rolling     0FD1 GR
  2 _depth2Rolling     12FF GR  |   2 _depth2Rolling     162D GR
  2 _depth2Rolling     195B GR  |   2 _depth2Rolling     1C89 GR
  2 _depth2Rolling     1FB7 GR  |   2 _depth2Rolling     22E5 GR
  2 _depth2Rolling     2EDB GR  |   2 _depth2Rolling     0684 GR
  2 _depth2Rolling     09A6 GR  |   2 _depth2Rolling     2644 GR
  2 _depth2Rolling     2972 GR  |   2 _depth2Rolling     2CA0 GR
  2 _depth2Rolling     0CD4 GR  |   2 _depth2Rolling     1002 GR
  2 _depth2Rolling     1330 GR  |   2 _depth2Rolling     165E GR
  2 _depth2Rolling     198C GR  |   2 _depth2Rolling     1CBA GR
  2 _depth2Rolling     1FE8 GR  |   2 _depth2Rolling     2316 GR
  2 _doBlockAnimat     02A7 GR  |     _dp_VIA_t1_cnt     **** GX
  2 _drawBlock         03A9 GR  |   2 _height1Fallin     2F53 GR
  2 _height1Fallin     0779 GR  |   2 _height1Fallin     0AA4 GR
  2 _height1Fallin     2742 GR  |   2 _height1Fallin     2A70 GR
  2 _height1Fallin     2D9E GR  |   2 _height1Fallin     0DD2 GR
  2 _height1Fallin     1100 GR  |   2 _height1Fallin     142E GR
  2 _height1Fallin     175C GR  |   2 _height1Fallin     1A8A GR
  2 _height1Fallin     1DB8 GR  |   2 _height1Fallin     20E6 GR
  2 _height1Fallin     2414 GR  |   2 _height1Fallin     2F6B GR
  2 _height1Fallin     07AA GR  |   2 _height1Fallin     0AD8 GR
  2 _height1Fallin     2776 GR  |   2 _height1Fallin     2AA4 GR
  2 _height1Fallin     2DD2 GR  |   2 _height1Fallin     0E06 GR
  2 _height1Fallin     1134 GR  |   2 _height1Fallin     1462 GR
  2 _height1Fallin     1790 GR  |   2 _height1Fallin     1ABE GR
  2 _height1Fallin     1DEC GR  |   2 _height1Fallin     211A GR
  2 _height1Fallin     2448 GR  |   2 _height1Fallin     2F23 GR
  2 _height1Fallin     0717 GR  |   2 _height1Fallin     0A3F GR
  2 _height1Fallin     26DD GR  |   2 _height1Fallin     2A0B GR
  2 _height1Fallin     2D39 GR  |   2 _height1Fallin     0D6D GR
  2 _height1Fallin     109B GR  |   2 _height1Fallin     13C9 GR
  2 _height1Fallin     16F7 GR  |   2 _height1Fallin     1A25 GR
  2 _height1Fallin     1D53 GR  |   2 _height1Fallin     2081 GR
  2 _height1Fallin     23AF GR  |   2 _height1Fallin     2F3B GR
  2 _height1Fallin     0748 GR  |   2 _height1Fallin     0A70 GR
  2 _height1Fallin     270E GR  |   2 _height1Fallin     2A3C GR
  2 _height1Fallin     2D6A GR  |   2 _height1Fallin     0D9E GR
  2 _height1Fallin     10CC GR  |   2 _height1Fallin     13FA GR
  2 _height1Fallin     1728 GR  |   2 _height1Fallin     1A56 GR
  2 _height1Fallin     1D84 GR  |   2 _height1Fallin     20B2 GR
  2 _height1Fallin     23E0 GR  |   2 _height2Fallin     2E63 GR
  2 _height2Fallin     0589 GR  |   2 _height2Fallin     08A8 GR
  2 _height2Fallin     2546 GR  |   2 _height2Fallin     2874 GR
  2 _height2Fallin     2BA2 GR  |   2 _height2Fallin     0BD6 GR
  2 _height2Fallin     0F04 GR  |   2 _height2Fallin     1232 GR
  2 _height2Fallin     1560 GR  |   2 _height2Fallin     188E GR
  2 _height2Fallin     1BBC GR  |   2 _height2Fallin     1EEA GR
  2 _height2Fallin     2218 GR  |   2 _height2Fallin     2E93 GR
  2 _height2Fallin     05EE GR  |   2 _height2Fallin     0910 GR
  2 _height2Fallin     25AE GR  |   2 _height2Fallin     28DC GR
  2 _height2Fallin     2C0A GR  |   2 _height2Fallin     0C3E GR
  2 _height2Fallin     0F6C GR  |   2 _height2Fallin     129A GR
  2 _height2Fallin     15C8 GR  |   2 _height2Fallin     18F6 GR
  2 _height2Fallin     1C24 GR  |   2 _height2Fallin     1F52 GR
  2 _height2Fallin     2280 GR  |   2 _height2Fallin     2E03 GR
  2 _height2Fallin     04BF GR  |   2 _height2Fallin     07DB GR
  2 _height2Fallin     2479 GR  |   2 _height2Fallin     27A7 GR
  2 _height2Fallin     2AD5 GR  |   2 _height2Fallin     0B09 GR
  2 _height2Fallin     0E37 GR  |   2 _height2Fallin     1165 GR
  2 _height2Fallin     1493 GR  |   2 _height2Fallin     17C1 GR
  2 _height2Fallin     1AEF GR  |   2 _height2Fallin     1E1D GR
  2 _height2Fallin     214B GR  |   2 _height2Fallin     2E33 GR
  2 _height2Fallin     0524 GR  |   2 _height2Fallin     0840 GR
  2 _height2Fallin     24DE GR  |   2 _height2Fallin     280C GR
  2 _height2Fallin     2B3A GR  |   2 _height2Fallin     0B6E GR
  2 _height2Fallin     0E9C GR  |   2 _height2Fallin     11CA GR
  2 _height2Fallin     14F8 GR  |   2 _height2Fallin     1826 GR
  2 _height2Fallin     1B54 GR  |   2 _height2Fallin     1E82 GR
  2 _height2Fallin     21B0 GR  |   2 _height2Rising     2EAB GR
  2 _height2Rising     061F GR  |   2 _height2Rising     0941 GR
  2 _height2Rising     25DF GR  |   2 _height2Rising     290D GR
  2 _height2Rising     2C3B GR  |   2 _height2Rising     0C6F GR
  2 _height2Rising     0F9D GR  |   2 _height2Rising     12CB GR
  2 _height2Rising     15F9 GR  |   2 _height2Rising     1927 GR
  2 _height2Rising     1C55 GR  |   2 _height2Rising     1F83 GR
  2 _height2Rising     22B1 GR  |   2 _height2Rising     2E7B GR
  2 _height2Rising     05BA GR  |   2 _height2Rising     08DC GR
  2 _height2Rising     257A GR  |   2 _height2Rising     28A8 GR
  2 _height2Rising     2BD6 GR  |   2 _height2Rising     0C0A GR
  2 _height2Rising     0F38 GR  |   2 _height2Rising     1266 GR
  2 _height2Rising     1594 GR  |   2 _height2Rising     18C2 GR
  2 _height2Rising     1BF0 GR  |   2 _height2Rising     1F1E GR
  2 _height2Rising     224C GR  |   2 _height2Rising     2E4B GR
  2 _height2Rising     0555 GR  |   2 _height2Rising     0874 GR
  2 _height2Rising     2512 GR  |   2 _height2Rising     2840 GR
  2 _height2Rising     2B6E GR  |   2 _height2Rising     0BA2 GR
  2 _height2Rising     0ED0 GR  |   2 _height2Rising     11FE GR
  2 _height2Rising     152C GR  |   2 _height2Rising     185A GR
  2 _height2Rising     1B88 GR  |   2 _height2Rising     1EB6 GR
  2 _height2Rising     21E4 GR  |   2 _height2Rising     2E1B GR
  2 _height2Rising     04F0 GR  |   2 _height2Rising     080C GR
  2 _height2Rising     24AA GR  |   2 _height2Rising     27D8 GR
  2 _height2Rising     2B06 GR  |   2 _height2Rising     0B3A GR
  2 _height2Rising     0E68 GR  |   2 _height2Rising     1196 GR
  2 _height2Rising     14C4 GR  |   2 _height2Rising     17F2 GR
  2 _height2Rising     1B20 GR  |   2 _height2Rising     1E4E GR
  2 _height2Rising     217C GR  |   3 _lastBlockDire     0002 GR
  2 _moveBlockImpl     0000 GR  |   3 _nextBlockAnim     000B GR
  3 _nextBlockX        000E GR  |   3 _nextBlockY        000F GR
  2 _setSplitMode      02E3 GR  |   3 _splitMode         0004 GR
  2 _swapSplit         0384 GR  |   2 _testMerge         02F2 GR
  2 _width2Rolling     2F0B GR  |   2 _width2Rolling     06E6 GR
  2 _width2Rolling     0A0B GR  |   2 _width2Rolling     26A9 GR
  2 _width2Rolling     29D7 GR  |   2 _width2Rolling     2D05 GR
  2 _width2Rolling     0D39 GR  |   2 _width2Rolling     1067 GR
  2 _width2Rolling     1395 GR  |   2 _width2Rolling     16C3 GR
  2 _width2Rolling     19F1 GR  |   2 _width2Rolling     1D1F GR
  2 _width2Rolling     204D GR  |   2 _width2Rolling     237B GR
  2 _width2Rolling     2EF3 GR  |   2 _width2Rolling     06B5 GR
  2 _width2Rolling     09DA GR  |   2 _width2Rolling     2678 GR
  2 _width2Rolling     29A6 GR  |   2 _width2Rolling     2CD4 GR
  2 _width2Rolling     0D08 GR  |   2 _width2Rolling     1036 GR
  2 _width2Rolling     1364 GR  |   2 _width2Rolling     1692 GR
  2 _width2Rolling     19C0 GR  |   2 _width2Rolling     1CEE GR
  2 _width2Rolling     201C GR  |   2 _width2Rolling     234A GR
    _x3d               **** GX  |     _y3d               **** GX
  2 macroEnd2          02A6 R   |   2 shiftOff1          025F R
  2 shiftOn1           027F R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 2F83   flags  100
   3 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

