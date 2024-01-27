;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	block.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -IC:\data\Vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
;  -DOMMIT_FRAMEPOINTER=1 C:\data\Vide\..\bloxorz\Vide\source\block.enr.c
;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
;  -fzero-initialized-in-bss
;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
	.area .text
	.globl _moveBlockImpl
_moveBlockImpl:
	leas	-1,s	; ,,
	stb	,s	;  move, move
;----- asm -----
;  29 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[28]    blockAnimating = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockAnimating	; , blockAnimating
;----- asm -----
;  31 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[29]    lastBlockDirection = move;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	stb	_lastBlockDirection	; , lastBlockDirection
;----- asm -----
;  33 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[30]    if (splitMode)
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	lbeq	L2	; 
;----- asm -----
;  36 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[32]        switch (blockOrientation)
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	lbne	L30	; 
;----- asm -----
;  41 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[35]            switch (move)
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L7	; 
	blo	L6	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L8	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L5	; 
	jmp	L31	; 
L6:
;----- asm -----
;  46 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[38]                blockAnimation = height1FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height1FallingLeft	;  tmp29,
	stx	_blockAnimation	;  tmp29, blockAnimation
;----- asm -----
;  48 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[39]                nextBlockAnimation = height1FallingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp29, nextBlockAnimation
;----- asm -----
;  50 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[40]                nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  52 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[41]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  54 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[42]                break;
;  0 "" 2
;--- end asm ---
	jmp	L5	; 
L8:
;----- asm -----
;  58 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[44]                blockAnimation = height1FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height1FallingRight	;  tmp31,
	stx	_blockAnimation	;  tmp31, blockAnimation
;----- asm -----
;  60 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[45]                nextBlockAnimation = height1FallingRight;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp31, nextBlockAnimation
;----- asm -----
;  62 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[46]                nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  64 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[47]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  66 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[48]                break;
;  0 "" 2
;--- end asm ---
	jmp	L5	; 
L7:
;----- asm -----
;  70 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[50]                blockAnimation = height1FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height1FallingBack	;  tmp33,
	stx	_blockAnimation	;  tmp33, blockAnimation
;----- asm -----
;  72 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[51]                nextBlockAnimation = height1FallingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp33, nextBlockAnimation
;----- asm -----
;  74 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[52]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  76 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[53]                nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  78 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[54]                break;
;  0 "" 2
;--- end asm ---
	bra	L5	; 
L31:
;----- asm -----
;  82 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[56]                blockAnimation = height1FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height1FallingFront	;  tmp35,
	stx	_blockAnimation	;  tmp35, blockAnimation
;----- asm -----
;  84 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[57]                nextBlockAnimation = height1FallingFront;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp35, nextBlockAnimation
;----- asm -----
;  86 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[58]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  88 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[59]                nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  90 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[60]                break;
;  0 "" 2
;--- end asm ---
L5:
;----- asm -----
;  93 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[62]            break;
;  0 "" 2
;--- end asm ---
	jmp	L29	; 
L30:
;----- asm -----
;  97 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[64]            break;
;  0 "" 2
;--- end asm ---
	jmp	L29	; 
L2:
;----- asm -----
;  103 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[69]        switch (blockOrientation)
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lbeq	L12	; 
	blo	L11	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L29	; 
	jmp	L32	; 
L11:
;----- asm -----
;  108 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[72]            switch (move)
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L16	; 
	blo	L15	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L17	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L14	; 
	jmp	L33	; 
L15:
;----- asm -----
;  113 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[75]                blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  115 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[76]                nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  117 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[77]                nextBlockX = blockX - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#-2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  119 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[78]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  121 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[79]                blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  123 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[80]                break;
;  0 "" 2
;--- end asm ---
	jmp	L14	; 
L17:
;----- asm -----
;  127 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[82]                blockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  129 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[83]                nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  131 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[84]                nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  133 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[85]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  135 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[86]                blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  137 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[87]                break;
;  0 "" 2
;--- end asm ---
	jmp	L14	; 
L16:
;----- asm -----
;  141 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[89]                blockAnimation = height2FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  143 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[90]                nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  145 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[91]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  147 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[92]                nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  149 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[93]                blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  151 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[94]                break;
;  0 "" 2
;--- end asm ---
	bra	L14	; 
L33:
;----- asm -----
;  155 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[96]                blockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  157 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[97]                nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  159 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[98]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  161 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[99]                nextBlockY = blockY - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#-2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  163 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[100]                blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  165 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[101]                break;
;  0 "" 2
;--- end asm ---
L14:
;----- asm -----
;  168 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[103]            break;
;  0 "" 2
;--- end asm ---
	jmp	L29	; 
L12:
;----- asm -----
;  172 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[105]            switch (move)
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L21	; 
	blo	L20	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L22	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L19	; 
	jmp	L34	; 
L20:
;----- asm -----
;  177 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[108]                blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	;  tmp46,
	stx	_blockAnimation	;  tmp46, blockAnimation
;----- asm -----
;  179 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[109]                nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp46, nextBlockAnimation
;----- asm -----
;  181 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[110]                nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  183 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[111]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  185 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[112]                break;
;  0 "" 2
;--- end asm ---
	jmp	L19	; 
L22:
;----- asm -----
;  189 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[114]                blockAnimation = depth2RollingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  191 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[115]                nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  193 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[116]                nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  195 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[117]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  197 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[118]                break;
;  0 "" 2
;--- end asm ---
	jmp	L19	; 
L21:
;----- asm -----
;  201 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[120]                blockAnimation = height2RisingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  203 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[121]                nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  205 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[122]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  207 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[123]                nextBlockY = blockY + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  209 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[124]                blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  211 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[125]                break;
;  0 "" 2
;--- end asm ---
	bra	L19	; 
L34:
;----- asm -----
;  215 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[127]                blockAnimation = height2RisingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  217 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[128]                nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  219 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[129]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  221 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[130]                nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  223 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[131]                blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  225 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[132]                break;
;  0 "" 2
;--- end asm ---
L19:
;----- asm -----
;  228 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[134]            break;
;  0 "" 2
;--- end asm ---
	jmp	L29	; 
L32:
;----- asm -----
;  232 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[136]            switch (move)
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L26	; 
	blo	L25	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L27	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L24	; 
	jmp	L35	; 
L25:
;----- asm -----
;  237 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[139]                blockAnimation = height2RisingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  239 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[140]                nextBlockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  241 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[141]                nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  243 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[142]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  245 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[143]                blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  247 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[144]                break;
;  0 "" 2
;--- end asm ---
	jmp	L24	; 
L27:
;----- asm -----
;  251 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[146]                blockAnimation = height2RisingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  253 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[147]                nextBlockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  255 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[148]                nextBlockX = blockX + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  257 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[149]                nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  259 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[150]                blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  261 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[151]                break;
;  0 "" 2
;--- end asm ---
	jmp	L24	; 
L26:
;----- asm -----
;  265 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[153]                blockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	;  tmp58,
	stx	_blockAnimation	;  tmp58, blockAnimation
;----- asm -----
;  267 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[154]                nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp58, nextBlockAnimation
;----- asm -----
;  269 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[155]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  271 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[156]                nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  273 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[157]                break;
;  0 "" 2
;--- end asm ---
	bra	L24	; 
L35:
;----- asm -----
;  277 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[159]                blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  279 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[160]                nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  281 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[161]                nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  283 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[162]                nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  285 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[163]                break;
;  0 "" 2
;--- end asm ---
L24:
;----- asm -----
;  288 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[165]            break;
;  0 "" 2
;--- end asm ---
L29:
	leas	1,s	; ,,
	rts
	.globl _Draw_VLpo
_Draw_VLpo:
;----- asm -----
;  296 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[172]    (void)x;
;  0 "" 2
;  298 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LDD      1,X                          ;Get next coordinate pair  
;  0 "" 2
;  299 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	shiftOff1:  
;  0 "" 2
;  300 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STA      *0xd001                  ;Send Y to A/D  
;  0 "" 2
;  301 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    CLR      *0xd000                  ;Enable mux  
;  0 "" 2
;  302 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LDA      ,X                           ;Get pattern byte  
;  0 "" 2
;  303 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    INC      *0xd000                  ;Disable mux  
;  0 "" 2
;  304 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STB      *0xd001                  ;Send X to A/D  
;  0 "" 2
;  305 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    ldb      #0  
;  0 "" 2
;  306 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STA      *0xd00a               ;Store pattern in shift register  
;  0 "" 2
;  307 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STB      *0xd005               ;Clear T1H  
;  0 "" 2
;  309 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LEAX     3,X                          ;Advance to next point in list  
;  0 "" 2
;  311 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  312 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  313 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  314 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  316 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LDA      ,X                           ;Get next pattern byte  
;  0 "" 2
;  318 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    bgt      macroEnd2  
;  0 "" 2
;  320 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LDD      1,X                          ;Get next coordinate pair  
;  0 "" 2
;  321 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	shiftOn1:  
;  0 "" 2
;  322 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STA      *0xd001                  ;Send Y to A/D  
;  0 "" 2
;  323 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    CLR      *0xd000                  ;Enable mux  
;  0 "" 2
;  324 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LDA      ,X                           ;Get pattern byte  
;  0 "" 2
;  325 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    INC      *0xd000                  ;Disable mux  
;  0 "" 2
;  326 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STB      *0xd001                  ;Send X to A/D  
;  0 "" 2
;  327 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    ldb      #0  
;  0 "" 2
;  328 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STA      *0xd00a               ;Store pattern in shift register  
;  0 "" 2
;  329 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STB      *0xd005               ;Clear T1H  
;  0 "" 2
;  330 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LEAX     3,X                          ;Advance to next point in list  
;  0 "" 2
;  332 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    LDD      1,X                          ;Get next coordinate pair  
;  0 "" 2
;  333 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  334 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  335 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  336 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    nop    ; 6 
;  0 "" 2
;  338 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    tst      ,X  
;  0 "" 2
;  339 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    beq      shiftOff1  
;  0 "" 2
;  340 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    bmi      shiftOn1  
;  0 "" 2
;  341 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  342 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    ldb      #0  
;  0 "" 2
;  343 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	                    STB      *0xd00a               ;Clear shift register (blank output)  
;  0 "" 2
;  344 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	macroEnd2:  
;  0 "" 2
;--- end asm ---
	rts
	.globl _doBlockAnimation
_doBlockAnimation:
;----- asm -----
;  410 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[267]    if (blockAnimating)
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L40	; 
;----- asm -----
;  413 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[269]        if (++blockAnimationStep == BLOCK_STEPS_COUNT)
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	;  blockAnimationStep.25, blockAnimationStep
	incb	;  blockAnimationStep.25
	stb	_blockAnimationStep	;  blockAnimationStep.25, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.25,
	bne	L40	; 
;----- asm -----
;  416 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[271]            blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  418 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[272]            blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  420 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[273]            blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  422 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[274]            blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  424 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[275]            blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
L40:
	rts
	.globl _blockStartLevel
_blockStartLevel:
;----- asm -----
;  432 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[282]    blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  434 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[283]    blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  436 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[284]    blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  438 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[285]    blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  440 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[286]    splitMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_splitMode	;  splitMode
	rts
	.globl _setSplitMode
_setSplitMode:
;----- asm -----
;  446 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[291]    blockAnimation = height1FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height1FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  448 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[292]    blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  450 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[293]    splitMode = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_splitMode	; , splitMode
	rts
	.globl _testMerge
_testMerge:
	leas	-4,s	; ,,
;----- asm -----
;  456 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[298]    if (blockY == blockY2)
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,s	; , blockY.29
	ldb	_blockY2	; , blockY2
	stb	1,s	; , blockY2.30
	ldb	,s	; , blockY.29
	cmpb	1,s	;cmpqi:	; , blockY2.30
	lbne	L46	; 
;----- asm -----
;  459 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[300]        if (blockX == blockX2 + 1)
;  0 "" 2
;--- end asm ---
	ldb	_blockX2	; , blockX2
	stb	2,s	; , blockX2.31
	ldb	_blockX	; , blockX
	stb	3,s	; , blockX.32
	ldb	2,s	;  tmp31, blockX2.31
	incb	;  tmp31
	cmpb	3,s	;cmpqi:	;  tmp31, blockX.32
	bne	L47	; 
;----- asm -----
;  462 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[302]            blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  464 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[303]            blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  466 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[304]            blockX--;
;  0 "" 2
;--- end asm ---
	dec	_blockX	;  blockX
;----- asm -----
;  468 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[305]            splitMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_splitMode	;  splitMode
	jmp	L50	; 
L47:
	ldb	2,s	;  tmp33, blockX2.31
	decb	;  tmp33
	cmpb	3,s	;cmpqi:(R)	;  tmp33, blockX.32
	lbne	L50	; 
;----- asm -----
;  473 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[309]            blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  475 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[310]            blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  477 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[311]            splitMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_splitMode	;  splitMode
	jmp	L50	; 
L46:
	ldb	_blockX	; , blockX
	cmpb	_blockX2	;cmpqi:	; , blockX2
	lbne	L50	; 
;----- asm -----
;  483 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[316]        if (blockY == blockY2 + 1)
;  0 "" 2
;--- end asm ---
	ldb	1,s	;  tmp35, blockY2.30
	incb	;  tmp35
	cmpb	,s	;cmpqi:(R)	;  tmp35, blockY.29
	bne	L49	; 
;----- asm -----
;  486 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[318]            blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  488 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[319]            blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  490 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[320]            blockY--;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , blockY.29
	decb	; 
	stb	_blockY	; , blockY
;----- asm -----
;  492 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[321]            splitMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_splitMode	;  splitMode
	bra	L50	; 
L49:
	ldb	1,s	;  tmp37, blockY2.30
	decb	;  tmp37
	cmpb	,s	;cmpqi:(R)	;  tmp37, blockY.29
	bne	L50	; 
;----- asm -----
;  497 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[325]            blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  499 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[326]            blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  501 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[327]            ;
;  0 "" 2
;  503 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[328]            splitMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_splitMode	;  splitMode
L50:
	leas	4,s	; ,,
	rts
	.globl _swapSplit
_swapSplit:
	leas	-2,s	; ,,
;----- asm -----
;  511 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[335]    int8_t xt = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	,s	; , xt
;----- asm -----
;  513 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[336]    int8_t yt = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	1,s	; , yt
;----- asm -----
;  515 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[337]    blockX = blockX2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX2	; , blockX2
	stb	_blockX	; , blockX
;----- asm -----
;  517 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[338]    blockY = blockY2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY2	; , blockY2
	stb	_blockY	; , blockY
;----- asm -----
;  519 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[339]    blockX2 = xt;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , xt
	stb	_blockX2	; , blockX2
;----- asm -----
;  521 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[340]    blockY2 = yt;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , yt
	stb	_blockY2	; , blockY2
	leas	2,s	; ,,
	rts
	.globl _drawBlock
_drawBlock:
	pshs	u	; 
	leas	-7,s	; ,,
	stb	2,s	;  yofs, yofs
;----- asm -----
;  350 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[225]    intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	5,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 5,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  352 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[226]    int8_t yy = y3d(blockX, 0, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	clr	,-s	; 
	ldb	_blockX	; , blockX
	jsr	_y3d	; 
	stb	5,s	; , yy
;----- asm -----
;  355 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[228]    if (yofs < -30)
;  0 "" 2
;--- end asm ---
	leas	2,s	; ,,
	ldb	2,s	; , yofs
	cmpb	#-30	;cmpqi:	; ,
	bge	L54	; 
;----- asm -----
;  358 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[230]        positd(0, yofs);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	2,s	; , yofs
	stb	6,s	; , a
	clr	5,s	;  b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 6,s	;  a
	ldb 5,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  360 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[231]        positd(x3d(blockX, blockY), yy);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_x3d	; 
	stb	7,s	; , b
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	4,s	; , yy
	stb	6,s	; , a
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 6,s	;  a
	ldb 7,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	bra	L55	; 
L54:
;----- asm -----
;  365 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[235]        positd(x3d(blockX, blockY), yy + yofs);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_x3d	; 
	stb	6,s	; , b
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	4,s	; , yy
	addb	3,s	; , yofs
	stb	7,s	; , a
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 7,s	;  a
	ldb 6,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
L55:
;----- asm -----
;  369 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[238]    dp_VIA_t1_cnt_lo = 0x7f / FACTOR; // scale
;  0 "" 2
;--- end asm ---
	ldb	#42	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  372 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[240]    Draw_VLpo((void *)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp37, tmp36,
	ldx	,x	; ,
	jsr	_Draw_VLpo	; 
;----- asm -----
;  376 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[243]    if (splitMode)
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	lbeq	L59	; 
;----- asm -----
;  379 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[245]        zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  381 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[246]        intens(0x35);
;  0 "" 2
;--- end asm ---
	ldb	#53	; ,
	stb	6,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 6,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  383 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[247]        yy = y3d(blockX2, 0, blockY2);
;  0 "" 2
;--- end asm ---
	ldb	_blockY2	; , blockY2
	stb	,-s	; ,
	clr	,-s	; 
	ldb	_blockX2	; , blockX2
	jsr	_y3d	; 
	stb	6,s	; , yy.133
;----- asm -----
;  386 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[249]        if (yofs < -50)
;  0 "" 2
;--- end asm ---
	leas	2,s	; ,,
	ldb	2,s	; , yofs
	cmpb	#-50	;cmpqi:	; ,
	bge	L57	; 
;----- asm -----
;  389 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[251]            positd(0, yofs);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	2,s	; , yofs
	stb	5,s	; , a
	clr	6,s	;  b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 5,s	;  a
	ldb 6,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  391 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[252]            positd(x3d(blockX2, blockY2), yy);
;  0 "" 2
;--- end asm ---
	ldb	_blockY2	; , blockY2
	stb	,-s	; ,
	ldb	_blockX2	; , blockX2
	jsr	_x3d	; 
	stb	6,s	; , b
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	5,s	; , yy.133
	stb	7,s	; , a
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 7,s	;  a
	ldb 6,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	bra	L58	; 
L57:
;----- asm -----
;  396 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[256]            positd(x3d(blockX2, blockY2), yy + yofs);
;  0 "" 2
;--- end asm ---
	ldb	_blockY2	; , blockY2
	stb	,-s	; ,
	ldb	_blockX2	; , blockX2
	jsr	_x3d	; 
	stb	7,s	; , b
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	5,s	; , yy.133
	addb	3,s	; , yofs
	stb	6,s	; , a
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 6,s	;  a
	ldb 7,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
L58:
;----- asm -----
;  400 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[259]        dp_VIA_t1_cnt_lo = 0x7f / FACTOR; // scale
;  0 "" 2
;--- end asm ---
	ldb	#42	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  403 "C:\data\Vide\..\bloxorz\Vide\source\block.enr.c" 1
	; #ENR#[261]        Draw_VLpo((void *)(height1FallingLeft[0]));
;  0 "" 2
;--- end asm ---
	ldx	_height1FallingLeft	; , height1FallingLeft
	jsr	_Draw_VLpo	; 
L59:
	leas	7,s	; ,,
	puls	u,pc	; 
	.globl _height2FallingLeft0
_height2FallingLeft0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-39
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2RisingRight0
_height2RisingRight0:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	39
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-9
	.byte	-84
	.byte	0
	.byte	48
	.byte	90
	.byte	-1
	.byte	-6
	.byte	-84
	.byte	0
	.byte	30
	.byte	66
	.byte	-1
	.byte	-6
	.byte	-81
	.byte	0
	.byte	-33
	.byte	75
	.byte	-1
	.byte	-9
	.byte	-81
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	42
	.byte	6
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-42
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2FallingRight0
_height2FallingRight0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-39
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2RisingLeft0
_height2RisingLeft0:
	.byte	0
	.byte	36
	.byte	-3
	.byte	-1
	.byte	-36
	.byte	3
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	30
	.byte	81
	.byte	0
	.byte	-66
	.byte	-78
	.byte	-1
	.byte	27
	.byte	84
	.byte	0
	.byte	-3
	.byte	-99
	.byte	-1
	.byte	27
	.byte	81
	.byte	0
	.byte	9
	.byte	-87
	.byte	-1
	.byte	30
	.byte	81
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-39
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	39
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack0
_height2FallingBack0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-39
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2RisingFront0
_height2RisingFront0:
	.byte	0
	.byte	36
	.byte	3
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-36
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	36
	.byte	3
	.byte	-1
	.byte	57
	.byte	-33
	.byte	0
	.byte	-48
	.byte	75
	.byte	-1
	.byte	57
	.byte	-36
	.byte	0
	.byte	-93
	.byte	33
	.byte	-1
	.byte	57
	.byte	-36
	.byte	0
	.byte	-66
	.byte	-6
	.byte	-1
	.byte	57
	.byte	-33
	.byte	0
	.byte	36
	.byte	3
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-36
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	36
	.byte	3
	.byte	1
	.globl _height2FallingFront0
_height2FallingFront0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-39
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2RisingBack0
_height2RisingBack0:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	42
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	3
	.byte	-1
	.byte	-36
	.byte	33
	.byte	0
	.byte	45
	.byte	6
	.byte	-1
	.byte	-36
	.byte	36
	.byte	0
	.byte	78
	.byte	-39
	.byte	-1
	.byte	-39
	.byte	36
	.byte	0
	.byte	30
	.byte	-75
	.byte	-1
	.byte	-39
	.byte	36
	.byte	0
	.byte	-39
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-39
	.byte	0
	.byte	1
	.globl _depth2RollingLeft0
_depth2RollingLeft0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	9
	.byte	-36
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _depth2RollingRight0
_depth2RollingRight0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	9
	.byte	-36
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _width2RollingFront0
_width2RollingFront0:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-21
	.byte	84
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-15
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-57
	.byte	-81
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _width2RollingBack0
_width2RollingBack0:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-21
	.byte	84
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-15
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-57
	.byte	-81
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height1FallingLeft0
_height1FallingLeft0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-15
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height1FallingRight0
_height1FallingRight0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-15
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height1FallingBack0
_height1FallingBack0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-15
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height1FallingFront0
_height1FallingFront0:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-15
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-48
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2FallingLeft1
_height2FallingLeft1:
	.byte	-1
	.byte	15
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	75
	.byte	-9
	.byte	0
	.byte	-60
	.byte	51
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-51
	.byte	-6
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-90
	.byte	-27
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	15
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight1
_height2RisingRight1:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	39
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	3
	.byte	-81
	.byte	0
	.byte	36
	.byte	93
	.byte	-1
	.byte	3
	.byte	-81
	.byte	0
	.byte	21
	.byte	63
	.byte	-1
	.byte	3
	.byte	-78
	.byte	0
	.byte	-42
	.byte	66
	.byte	-1
	.byte	3
	.byte	-78
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	12
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2FallingRight1
_height2FallingRight1:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	78
	.byte	12
	.byte	0
	.byte	-75
	.byte	30
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-57
	.byte	-30
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-84
	.byte	-51
	.byte	-1
	.byte	78
	.byte	12
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	6
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-6
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2RisingLeft1
_height2RisingLeft1:
	.byte	0
	.byte	36
	.byte	-9
	.byte	-1
	.byte	-36
	.byte	9
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	36
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	36
	.byte	78
	.byte	0
	.byte	-72
	.byte	-69
	.byte	-1
	.byte	39
	.byte	81
	.byte	0
	.byte	-15
	.byte	-96
	.byte	-1
	.byte	39
	.byte	78
	.byte	0
	.byte	-3
	.byte	-90
	.byte	-1
	.byte	36
	.byte	78
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-33
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack1
_height2FallingBack1:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-18
	.byte	15
	.byte	-1
	.byte	84
	.byte	-3
	.byte	0
	.byte	-75
	.byte	45
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-66
	.byte	-12
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-93
	.byte	-33
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-18
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-18
	.byte	18
	.byte	1
	.globl _height2RisingFront1
_height2RisingFront1:
	.byte	0
	.byte	30
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	30
	.byte	6
	.byte	-1
	.byte	69
	.byte	-33
	.byte	0
	.byte	-60
	.byte	75
	.byte	-1
	.byte	69
	.byte	-36
	.byte	0
	.byte	-99
	.byte	30
	.byte	-1
	.byte	66
	.byte	-36
	.byte	0
	.byte	-75
	.byte	-6
	.byte	-1
	.byte	66
	.byte	-33
	.byte	0
	.byte	33
	.byte	6
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	33
	.byte	6
	.byte	1
	.globl _height2FallingFront1
_height2FallingFront1:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	30
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-30
	.byte	15
	.byte	-1
	.byte	72
	.byte	6
	.byte	0
	.byte	-63
	.byte	36
	.byte	-1
	.byte	72
	.byte	6
	.byte	0
	.byte	-42
	.byte	-24
	.byte	-1
	.byte	69
	.byte	6
	.byte	0
	.byte	-78
	.byte	-45
	.byte	-1
	.byte	69
	.byte	6
	.byte	0
	.byte	-27
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	27
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-27
	.byte	15
	.byte	1
	.globl _height2RisingBack1
_height2RisingBack1:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	6
	.byte	-1
	.byte	-27
	.byte	33
	.byte	0
	.byte	36
	.byte	6
	.byte	-1
	.byte	-27
	.byte	36
	.byte	0
	.byte	72
	.byte	-42
	.byte	-1
	.byte	-27
	.byte	36
	.byte	0
	.byte	18
	.byte	-75
	.byte	-1
	.byte	-27
	.byte	36
	.byte	0
	.byte	-45
	.byte	3
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	3
	.byte	1
	.globl _depth2RollingLeft1
_depth2RollingLeft1:
	.byte	-1
	.byte	15
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	36
	.byte	-3
	.byte	0
	.byte	-21
	.byte	45
	.byte	-1
	.byte	36
	.byte	-6
	.byte	0
	.byte	12
	.byte	-30
	.byte	-1
	.byte	36
	.byte	-6
	.byte	0
	.byte	-51
	.byte	-33
	.byte	-1
	.byte	36
	.byte	-6
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	15
	.byte	39
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight1
_depth2RollingRight1:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-36
	.byte	36
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	9
	.byte	-42
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-42
	.byte	-45
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _width2RollingFront1
_width2RollingFront1:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	30
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-30
	.byte	15
	.byte	-1
	.byte	36
	.byte	3
	.byte	0
	.byte	-18
	.byte	81
	.byte	-1
	.byte	36
	.byte	3
	.byte	0
	.byte	-6
	.byte	-21
	.byte	-1
	.byte	33
	.byte	3
	.byte	0
	.byte	-51
	.byte	-84
	.byte	-1
	.byte	33
	.byte	3
	.byte	0
	.byte	-27
	.byte	15
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	27
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-27
	.byte	15
	.byte	1
	.globl _width2RollingBack1
_width2RollingBack1:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-18
	.byte	15
	.byte	-1
	.byte	42
	.byte	0
	.byte	0
	.byte	-24
	.byte	84
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-24
	.byte	-15
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-60
	.byte	-78
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-18
	.byte	18
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-18
	.byte	18
	.byte	1
	.globl _height1FallingLeft1
_height1FallingLeft1:
	.byte	-1
	.byte	15
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	36
	.byte	-3
	.byte	0
	.byte	-21
	.byte	45
	.byte	-1
	.byte	36
	.byte	-6
	.byte	0
	.byte	-12
	.byte	-12
	.byte	-1
	.byte	36
	.byte	-6
	.byte	0
	.byte	-51
	.byte	-33
	.byte	-1
	.byte	36
	.byte	-6
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	15
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight1
_height1FallingRight1:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-36
	.byte	36
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-15
	.byte	-24
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-42
	.byte	-45
	.byte	-1
	.byte	39
	.byte	6
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height1FallingBack1
_height1FallingBack1:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-18
	.byte	15
	.byte	-1
	.byte	42
	.byte	0
	.byte	0
	.byte	-33
	.byte	42
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-24
	.byte	-15
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-51
	.byte	-36
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-18
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-18
	.byte	18
	.byte	1
	.globl _height1FallingFront1
_height1FallingFront1:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	30
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-30
	.byte	15
	.byte	-1
	.byte	36
	.byte	3
	.byte	0
	.byte	-27
	.byte	39
	.byte	-1
	.byte	36
	.byte	3
	.byte	0
	.byte	-6
	.byte	-21
	.byte	-1
	.byte	33
	.byte	3
	.byte	0
	.byte	-42
	.byte	-42
	.byte	-1
	.byte	33
	.byte	3
	.byte	0
	.byte	-27
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	27
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-27
	.byte	15
	.byte	1
	.globl _height2FallingLeft2
_height2FallingLeft2:
	.byte	-1
	.byte	18
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	72
	.byte	-18
	.byte	0
	.byte	-54
	.byte	60
	.byte	-1
	.byte	72
	.byte	-24
	.byte	0
	.byte	-48
	.byte	6
	.byte	-1
	.byte	72
	.byte	-24
	.byte	0
	.byte	-90
	.byte	-15
	.byte	-1
	.byte	72
	.byte	-21
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	18
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight2
_height2RisingRight2:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	39
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	12
	.byte	-78
	.byte	0
	.byte	27
	.byte	93
	.byte	-1
	.byte	15
	.byte	-78
	.byte	0
	.byte	9
	.byte	60
	.byte	-1
	.byte	15
	.byte	-78
	.byte	0
	.byte	-54
	.byte	63
	.byte	-1
	.byte	12
	.byte	-75
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	42
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-42
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2FallingRight2
_height2FallingRight2:
	.byte	0
	.byte	9
	.byte	0
	.byte	-1
	.byte	0
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	0
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	81
	.byte	24
	.byte	0
	.byte	-81
	.byte	18
	.byte	-1
	.byte	81
	.byte	21
	.byte	0
	.byte	-57
	.byte	-39
	.byte	-1
	.byte	81
	.byte	21
	.byte	0
	.byte	-81
	.byte	-60
	.byte	-1
	.byte	81
	.byte	21
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	0
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	0
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft2
_height2RisingLeft2:
	.byte	0
	.byte	33
	.byte	-12
	.byte	-1
	.byte	-33
	.byte	12
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	45
	.byte	75
	.byte	0
	.byte	-78
	.byte	-63
	.byte	-1
	.byte	45
	.byte	78
	.byte	0
	.byte	-21
	.byte	-93
	.byte	-1
	.byte	45
	.byte	75
	.byte	0
	.byte	-12
	.byte	-90
	.byte	-1
	.byte	45
	.byte	75
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack2
_height2FallingBack2:
	.byte	0
	.byte	12
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	12
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-12
	.byte	15
	.byte	-1
	.byte	87
	.byte	-6
	.byte	0
	.byte	-78
	.byte	48
	.byte	-1
	.byte	87
	.byte	-9
	.byte	0
	.byte	-75
	.byte	-9
	.byte	-1
	.byte	87
	.byte	-9
	.byte	0
	.byte	-96
	.byte	-30
	.byte	-1
	.byte	87
	.byte	-9
	.byte	0
	.byte	-12
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	12
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-12
	.byte	18
	.byte	1
	.globl _height2RisingFront2
_height2RisingFront2:
	.byte	0
	.byte	27
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-27
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	27
	.byte	6
	.byte	-1
	.byte	75
	.byte	-30
	.byte	0
	.byte	-66
	.byte	72
	.byte	-1
	.byte	75
	.byte	-33
	.byte	0
	.byte	-102
	.byte	27
	.byte	-1
	.byte	75
	.byte	-33
	.byte	0
	.byte	-84
	.byte	-9
	.byte	-1
	.byte	75
	.byte	-30
	.byte	0
	.byte	27
	.byte	6
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-27
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	27
	.byte	6
	.byte	1
	.globl _height2FallingFront2
_height2FallingFront2:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	33
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-54
	.byte	33
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-30
	.byte	-27
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-72
	.byte	-48
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-33
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	33
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-33
	.byte	15
	.byte	1
	.globl _height2RisingBack2
_height2RisingBack2:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	6
	.byte	-1
	.byte	-15
	.byte	33
	.byte	0
	.byte	24
	.byte	6
	.byte	-1
	.byte	-15
	.byte	33
	.byte	0
	.byte	60
	.byte	-39
	.byte	-1
	.byte	-15
	.byte	33
	.byte	0
	.byte	6
	.byte	-72
	.byte	-1
	.byte	-15
	.byte	33
	.byte	0
	.byte	-45
	.byte	6
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	6
	.byte	1
	.globl _depth2RollingLeft2
_depth2RollingLeft2:
	.byte	-1
	.byte	18
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-18
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	36
	.byte	-9
	.byte	0
	.byte	-18
	.byte	51
	.byte	-1
	.byte	36
	.byte	-12
	.byte	0
	.byte	12
	.byte	-24
	.byte	-1
	.byte	36
	.byte	-9
	.byte	0
	.byte	-54
	.byte	-30
	.byte	-1
	.byte	36
	.byte	-12
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	18
	.byte	39
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-18
	.byte	-42
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight2
_depth2RollingRight2:
	.byte	0
	.byte	9
	.byte	0
	.byte	-1
	.byte	0
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	0
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	42
	.byte	12
	.byte	0
	.byte	-42
	.byte	30
	.byte	-1
	.byte	39
	.byte	12
	.byte	0
	.byte	9
	.byte	-48
	.byte	-1
	.byte	39
	.byte	12
	.byte	0
	.byte	-39
	.byte	-51
	.byte	-1
	.byte	42
	.byte	12
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	-3
	.byte	42
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	3
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _width2RollingFront2
_width2RollingFront2:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	33
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	30
	.byte	6
	.byte	0
	.byte	-12
	.byte	78
	.byte	-1
	.byte	30
	.byte	6
	.byte	0
	.byte	3
	.byte	-24
	.byte	-1
	.byte	33
	.byte	6
	.byte	0
	.byte	-51
	.byte	-87
	.byte	-1
	.byte	33
	.byte	6
	.byte	0
	.byte	-36
	.byte	15
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-36
	.byte	15
	.byte	1
	.globl _width2RollingBack2
_width2RollingBack2:
	.byte	0
	.byte	12
	.byte	0
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	12
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-12
	.byte	15
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-24
	.byte	87
	.byte	-1
	.byte	42
	.byte	-6
	.byte	0
	.byte	-30
	.byte	-12
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-63
	.byte	-75
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-15
	.byte	18
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	15
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-15
	.byte	18
	.byte	1
	.globl _height1FallingLeft2
_height1FallingLeft2:
	.byte	-1
	.byte	18
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	36
	.byte	-9
	.byte	0
	.byte	-18
	.byte	51
	.byte	-1
	.byte	36
	.byte	-12
	.byte	0
	.byte	-12
	.byte	-6
	.byte	-1
	.byte	36
	.byte	-12
	.byte	0
	.byte	-54
	.byte	-27
	.byte	-1
	.byte	36
	.byte	-12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	18
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight2
_height1FallingRight2:
	.byte	0
	.byte	9
	.byte	0
	.byte	-1
	.byte	0
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	0
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	42
	.byte	12
	.byte	0
	.byte	-42
	.byte	30
	.byte	-1
	.byte	39
	.byte	12
	.byte	0
	.byte	-15
	.byte	-30
	.byte	-1
	.byte	39
	.byte	12
	.byte	0
	.byte	-39
	.byte	-51
	.byte	-1
	.byte	42
	.byte	12
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	-3
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	3
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height1FallingBack2
_height1FallingBack2:
	.byte	0
	.byte	12
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	12
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-12
	.byte	15
	.byte	-1
	.byte	42
	.byte	-3
	.byte	0
	.byte	-33
	.byte	45
	.byte	-1
	.byte	42
	.byte	-6
	.byte	0
	.byte	-30
	.byte	-12
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-54
	.byte	-33
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-15
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	15
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-15
	.byte	18
	.byte	1
	.globl _height1FallingFront2
_height1FallingFront2:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	33
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	30
	.byte	6
	.byte	0
	.byte	-21
	.byte	36
	.byte	-1
	.byte	30
	.byte	6
	.byte	0
	.byte	3
	.byte	-24
	.byte	-1
	.byte	33
	.byte	6
	.byte	0
	.byte	-42
	.byte	-45
	.byte	-1
	.byte	33
	.byte	6
	.byte	0
	.byte	-36
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-36
	.byte	15
	.byte	1
	.globl _height2FallingLeft3
_height2FallingLeft3:
	.byte	-1
	.byte	24
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	66
	.byte	-30
	.byte	0
	.byte	-42
	.byte	69
	.byte	-1
	.byte	63
	.byte	-33
	.byte	0
	.byte	-39
	.byte	15
	.byte	-1
	.byte	63
	.byte	-30
	.byte	0
	.byte	-87
	.byte	-6
	.byte	-1
	.byte	66
	.byte	-33
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	21
	.byte	36
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-21
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight3
_height2RisingRight3:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	24
	.byte	-72
	.byte	0
	.byte	15
	.byte	93
	.byte	-1
	.byte	24
	.byte	-72
	.byte	0
	.byte	0
	.byte	54
	.byte	-1
	.byte	24
	.byte	-72
	.byte	0
	.byte	-63
	.byte	51
	.byte	-1
	.byte	24
	.byte	-69
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2FallingRight3
_height2FallingRight3:
	.byte	0
	.byte	15
	.byte	3
	.byte	-1
	.byte	-6
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	6
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	81
	.byte	33
	.byte	0
	.byte	-87
	.byte	6
	.byte	-1
	.byte	78
	.byte	33
	.byte	0
	.byte	-54
	.byte	-51
	.byte	-1
	.byte	78
	.byte	33
	.byte	0
	.byte	-72
	.byte	-69
	.byte	-1
	.byte	81
	.byte	30
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-9
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	9
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft3
_height2RisingLeft3:
	.byte	0
	.byte	30
	.byte	-18
	.byte	-1
	.byte	-30
	.byte	18
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	54
	.byte	69
	.byte	0
	.byte	-84
	.byte	-51
	.byte	-1
	.byte	54
	.byte	72
	.byte	0
	.byte	-30
	.byte	-87
	.byte	-1
	.byte	54
	.byte	69
	.byte	0
	.byte	-24
	.byte	-90
	.byte	-1
	.byte	54
	.byte	69
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack3
_height2FallingBack3:
	.byte	0
	.byte	18
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	6
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-6
	.byte	15
	.byte	-1
	.byte	90
	.byte	-12
	.byte	0
	.byte	-81
	.byte	54
	.byte	-1
	.byte	90
	.byte	-15
	.byte	0
	.byte	-84
	.byte	-3
	.byte	-1
	.byte	90
	.byte	-15
	.byte	0
	.byte	-99
	.byte	-24
	.byte	-1
	.byte	90
	.byte	-15
	.byte	0
	.byte	-6
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	6
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-6
	.byte	18
	.byte	1
	.globl _height2RisingFront3
_height2RisingFront3:
	.byte	0
	.byte	21
	.byte	9
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-21
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	21
	.byte	9
	.byte	-1
	.byte	81
	.byte	-27
	.byte	0
	.byte	-72
	.byte	69
	.byte	-1
	.byte	81
	.byte	-30
	.byte	0
	.byte	-102
	.byte	21
	.byte	-1
	.byte	81
	.byte	-30
	.byte	0
	.byte	-90
	.byte	-12
	.byte	-1
	.byte	81
	.byte	-27
	.byte	0
	.byte	21
	.byte	9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-21
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	21
	.byte	9
	.byte	1
	.globl _height2FallingFront3
_height2FallingFront3:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-36
	.byte	15
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-45
	.byte	27
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-18
	.byte	-33
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-63
	.byte	-54
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-36
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-36
	.byte	15
	.byte	1
	.globl _height2RisingBack3
_height2RisingBack3:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	-3
	.byte	30
	.byte	0
	.byte	12
	.byte	9
	.byte	-1
	.byte	-3
	.byte	30
	.byte	0
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-3
	.byte	27
	.byte	0
	.byte	-6
	.byte	-69
	.byte	-1
	.byte	-3
	.byte	30
	.byte	0
	.byte	-45
	.byte	9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	9
	.byte	1
	.globl _depth2RollingLeft3
_depth2RollingLeft3:
	.byte	-1
	.byte	24
	.byte	39
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	-36
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	33
	.byte	-12
	.byte	0
	.byte	-9
	.byte	51
	.byte	-1
	.byte	33
	.byte	-15
	.byte	0
	.byte	15
	.byte	-21
	.byte	-1
	.byte	33
	.byte	-12
	.byte	0
	.byte	-57
	.byte	-24
	.byte	-1
	.byte	33
	.byte	-15
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	24
	.byte	36
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	-39
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight3
_depth2RollingRight3:
	.byte	0
	.byte	15
	.byte	3
	.byte	-1
	.byte	-6
	.byte	39
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	6
	.byte	-36
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	-45
	.byte	24
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	9
	.byte	-51
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	-33
	.byte	-51
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	-6
	.byte	39
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	6
	.byte	-36
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _width2RollingFront3
_width2RollingFront3:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-36
	.byte	15
	.byte	-1
	.byte	27
	.byte	6
	.byte	0
	.byte	-9
	.byte	78
	.byte	-1
	.byte	27
	.byte	6
	.byte	0
	.byte	9
	.byte	-24
	.byte	-1
	.byte	27
	.byte	9
	.byte	0
	.byte	-45
	.byte	-90
	.byte	-1
	.byte	27
	.byte	9
	.byte	0
	.byte	-36
	.byte	12
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	36
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-36
	.byte	12
	.byte	1
	.globl _width2RollingBack3
_width2RollingBack3:
	.byte	0
	.byte	18
	.byte	0
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	6
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-6
	.byte	15
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-27
	.byte	90
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-39
	.byte	-9
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-63
	.byte	-75
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-6
	.byte	15
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	6
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-6
	.byte	15
	.byte	1
	.globl _height1FallingLeft3
_height1FallingLeft3:
	.byte	-1
	.byte	24
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	33
	.byte	-12
	.byte	0
	.byte	-9
	.byte	51
	.byte	-1
	.byte	33
	.byte	-15
	.byte	0
	.byte	-9
	.byte	-3
	.byte	-1
	.byte	33
	.byte	-15
	.byte	0
	.byte	-57
	.byte	-21
	.byte	-1
	.byte	33
	.byte	-15
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	24
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight3
_height1FallingRight3:
	.byte	0
	.byte	15
	.byte	3
	.byte	-1
	.byte	-6
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	6
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	-45
	.byte	24
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	-15
	.byte	-33
	.byte	-1
	.byte	39
	.byte	15
	.byte	0
	.byte	-33
	.byte	-51
	.byte	-1
	.byte	39
	.byte	12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-6
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	6
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack3
_height1FallingBack3:
	.byte	0
	.byte	18
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	6
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-6
	.byte	15
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-36
	.byte	48
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-39
	.byte	-9
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-54
	.byte	-33
	.byte	-1
	.byte	45
	.byte	-6
	.byte	0
	.byte	-6
	.byte	15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	6
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-6
	.byte	15
	.byte	1
	.globl _height1FallingFront3
_height1FallingFront3:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-36
	.byte	15
	.byte	-1
	.byte	27
	.byte	6
	.byte	0
	.byte	-18
	.byte	36
	.byte	-1
	.byte	27
	.byte	6
	.byte	0
	.byte	9
	.byte	-24
	.byte	-1
	.byte	27
	.byte	9
	.byte	0
	.byte	-36
	.byte	-48
	.byte	-1
	.byte	27
	.byte	9
	.byte	0
	.byte	-36
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-36
	.byte	12
	.byte	1
	.globl _height2FallingLeft4
_height2FallingLeft4:
	.byte	-1
	.byte	27
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-27
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	60
	.byte	-39
	.byte	0
	.byte	-33
	.byte	75
	.byte	-1
	.byte	60
	.byte	-39
	.byte	0
	.byte	-36
	.byte	21
	.byte	-1
	.byte	60
	.byte	-39
	.byte	0
	.byte	-87
	.byte	6
	.byte	-1
	.byte	60
	.byte	-42
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	27
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-27
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight4
_height2RisingRight4:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	36
	.byte	27
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-36
	.byte	-27
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	33
	.byte	-66
	.byte	0
	.byte	3
	.byte	93
	.byte	-1
	.byte	33
	.byte	-69
	.byte	0
	.byte	-9
	.byte	51
	.byte	-1
	.byte	33
	.byte	-69
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	33
	.byte	-66
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	36
	.byte	24
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-36
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight4
_height2FallingRight4:
	.byte	0
	.byte	21
	.byte	6
	.byte	-1
	.byte	-12
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	12
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	75
	.byte	42
	.byte	0
	.byte	-87
	.byte	-6
	.byte	-1
	.byte	78
	.byte	42
	.byte	0
	.byte	-54
	.byte	-60
	.byte	-1
	.byte	78
	.byte	42
	.byte	0
	.byte	-66
	.byte	-75
	.byte	-1
	.byte	75
	.byte	39
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-9
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	9
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft4
_height2RisingLeft4:
	.byte	0
	.byte	24
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	24
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	24
	.byte	-27
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	63
	.byte	66
	.byte	0
	.byte	-87
	.byte	-42
	.byte	-1
	.byte	63
	.byte	66
	.byte	0
	.byte	-39
	.byte	-81
	.byte	-1
	.byte	63
	.byte	63
	.byte	0
	.byte	-39
	.byte	-90
	.byte	-1
	.byte	63
	.byte	66
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-24
	.byte	24
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	24
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack4
_height2FallingBack4:
	.byte	0
	.byte	24
	.byte	0
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	0
	.byte	15
	.byte	-1
	.byte	90
	.byte	-18
	.byte	0
	.byte	-81
	.byte	57
	.byte	-1
	.byte	90
	.byte	-18
	.byte	0
	.byte	-90
	.byte	3
	.byte	-1
	.byte	93
	.byte	-18
	.byte	0
	.byte	-102
	.byte	-21
	.byte	-1
	.byte	93
	.byte	-18
	.byte	0
	.byte	-3
	.byte	15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	3
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-3
	.byte	15
	.byte	1
	.globl _height2RisingFront4
_height2RisingFront4:
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-15
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	15
	.byte	12
	.byte	-1
	.byte	87
	.byte	-27
	.byte	0
	.byte	-78
	.byte	69
	.byte	-1
	.byte	87
	.byte	-30
	.byte	0
	.byte	-102
	.byte	18
	.byte	-1
	.byte	87
	.byte	-30
	.byte	0
	.byte	-96
	.byte	-12
	.byte	-1
	.byte	87
	.byte	-27
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-15
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	15
	.byte	12
	.byte	1
	.globl _height2FallingFront4
_height2FallingFront4:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-39
	.byte	12
	.byte	-1
	.byte	45
	.byte	18
	.byte	0
	.byte	-36
	.byte	24
	.byte	-1
	.byte	45
	.byte	18
	.byte	0
	.byte	-6
	.byte	-33
	.byte	-1
	.byte	45
	.byte	18
	.byte	0
	.byte	-54
	.byte	-57
	.byte	-1
	.byte	45
	.byte	15
	.byte	0
	.byte	-39
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	15
	.byte	1
	.globl _height2RisingBack4
_height2RisingBack4:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	30
	.byte	0
	.byte	0
	.byte	9
	.byte	-1
	.byte	9
	.byte	30
	.byte	0
	.byte	36
	.byte	-39
	.byte	-1
	.byte	9
	.byte	27
	.byte	0
	.byte	-18
	.byte	-69
	.byte	-1
	.byte	9
	.byte	30
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _depth2RollingLeft4
_depth2RollingLeft4:
	.byte	-1
	.byte	27
	.byte	36
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-27
	.byte	-33
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	-3
	.byte	54
	.byte	-1
	.byte	30
	.byte	-21
	.byte	0
	.byte	18
	.byte	-15
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	-57
	.byte	-15
	.byte	-1
	.byte	30
	.byte	-21
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	27
	.byte	33
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-27
	.byte	-36
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight4
_depth2RollingRight4:
	.byte	0
	.byte	21
	.byte	6
	.byte	-1
	.byte	-12
	.byte	36
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	12
	.byte	-33
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	-51
	.byte	15
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	9
	.byte	-57
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	-27
	.byte	-54
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	-12
	.byte	36
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	12
	.byte	-33
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _width2RollingFront4
_width2RollingFront4:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	39
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-39
	.byte	12
	.byte	-1
	.byte	21
	.byte	9
	.byte	0
	.byte	-3
	.byte	75
	.byte	-1
	.byte	21
	.byte	9
	.byte	0
	.byte	18
	.byte	-24
	.byte	-1
	.byte	24
	.byte	9
	.byte	0
	.byte	-42
	.byte	-90
	.byte	-1
	.byte	24
	.byte	9
	.byte	0
	.byte	-42
	.byte	12
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	42
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-42
	.byte	12
	.byte	1
	.globl _width2RollingBack4
_width2RollingBack4:
	.byte	0
	.byte	24
	.byte	0
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	0
	.byte	15
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-27
	.byte	90
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-45
	.byte	-6
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-63
	.byte	-72
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	0
	.byte	15
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	0
	.byte	15
	.byte	1
	.globl _height1FallingLeft4
_height1FallingLeft4:
	.byte	-1
	.byte	27
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-27
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	-3
	.byte	54
	.byte	-1
	.byte	30
	.byte	-21
	.byte	0
	.byte	-6
	.byte	3
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	-57
	.byte	-15
	.byte	-1
	.byte	30
	.byte	-21
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	27
	.byte	33
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-27
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight4
_height1FallingRight4:
	.byte	0
	.byte	21
	.byte	6
	.byte	-1
	.byte	-12
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	12
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	-51
	.byte	15
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	-15
	.byte	-39
	.byte	-1
	.byte	39
	.byte	21
	.byte	0
	.byte	-27
	.byte	-54
	.byte	-1
	.byte	39
	.byte	18
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-12
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	12
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack4
_height1FallingBack4:
	.byte	0
	.byte	24
	.byte	0
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	0
	.byte	15
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-36
	.byte	48
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-45
	.byte	-6
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	-54
	.byte	-30
	.byte	-1
	.byte	45
	.byte	-9
	.byte	0
	.byte	0
	.byte	15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	0
	.byte	15
	.byte	1
	.globl _height1FallingFront4
_height1FallingFront4:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-39
	.byte	12
	.byte	-1
	.byte	21
	.byte	9
	.byte	0
	.byte	-12
	.byte	33
	.byte	-1
	.byte	21
	.byte	9
	.byte	0
	.byte	18
	.byte	-24
	.byte	-1
	.byte	24
	.byte	9
	.byte	0
	.byte	-33
	.byte	-48
	.byte	-1
	.byte	24
	.byte	9
	.byte	0
	.byte	-42
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	12
	.byte	1
	.globl _height2FallingLeft5
_height2FallingLeft5:
	.byte	-1
	.byte	30
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-30
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	51
	.byte	-48
	.byte	0
	.byte	-21
	.byte	81
	.byte	-1
	.byte	51
	.byte	-48
	.byte	0
	.byte	-27
	.byte	30
	.byte	-1
	.byte	51
	.byte	-48
	.byte	0
	.byte	-81
	.byte	18
	.byte	-1
	.byte	51
	.byte	-51
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	30
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-30
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight5
_height2RisingRight5:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	33
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-33
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	42
	.byte	-60
	.byte	0
	.byte	-9
	.byte	90
	.byte	-1
	.byte	42
	.byte	-60
	.byte	0
	.byte	-18
	.byte	42
	.byte	-1
	.byte	42
	.byte	-60
	.byte	0
	.byte	-75
	.byte	30
	.byte	-1
	.byte	42
	.byte	-60
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	33
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-33
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight5
_height2FallingRight5:
	.byte	0
	.byte	27
	.byte	9
	.byte	-1
	.byte	-18
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	18
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	72
	.byte	51
	.byte	0
	.byte	-90
	.byte	-18
	.byte	-1
	.byte	72
	.byte	51
	.byte	0
	.byte	-48
	.byte	-69
	.byte	-1
	.byte	72
	.byte	51
	.byte	0
	.byte	-54
	.byte	-81
	.byte	-1
	.byte	72
	.byte	48
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-18
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	18
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft5
_height2RisingLeft5:
	.byte	0
	.byte	21
	.byte	-27
	.byte	-1
	.byte	-21
	.byte	27
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	21
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	69
	.byte	57
	.byte	0
	.byte	-90
	.byte	-30
	.byte	-1
	.byte	69
	.byte	60
	.byte	0
	.byte	-45
	.byte	-75
	.byte	-1
	.byte	69
	.byte	57
	.byte	0
	.byte	-48
	.byte	-87
	.byte	-1
	.byte	69
	.byte	57
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	21
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack5
_height2FallingBack5:
	.byte	0
	.byte	30
	.byte	0
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-6
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	6
	.byte	15
	.byte	-1
	.byte	90
	.byte	-24
	.byte	0
	.byte	-81
	.byte	63
	.byte	-1
	.byte	90
	.byte	-24
	.byte	0
	.byte	-96
	.byte	9
	.byte	-1
	.byte	90
	.byte	-21
	.byte	0
	.byte	-99
	.byte	-18
	.byte	-1
	.byte	90
	.byte	-21
	.byte	0
	.byte	6
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-6
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	6
	.byte	12
	.byte	1
	.globl _height2RisingFront5
_height2RisingFront5:
	.byte	0
	.byte	12
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-12
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	12
	.byte	12
	.byte	-1
	.byte	87
	.byte	-21
	.byte	0
	.byte	-78
	.byte	63
	.byte	-1
	.byte	87
	.byte	-24
	.byte	0
	.byte	-99
	.byte	12
	.byte	-1
	.byte	90
	.byte	-24
	.byte	0
	.byte	-99
	.byte	-18
	.byte	-1
	.byte	90
	.byte	-21
	.byte	0
	.byte	9
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	9
	.byte	12
	.byte	1
	.globl _height2FallingFront5
_height2FallingFront5:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	12
	.byte	-1
	.byte	33
	.byte	21
	.byte	0
	.byte	-24
	.byte	21
	.byte	-1
	.byte	33
	.byte	21
	.byte	0
	.byte	9
	.byte	-36
	.byte	-1
	.byte	33
	.byte	24
	.byte	0
	.byte	-42
	.byte	-63
	.byte	-1
	.byte	33
	.byte	21
	.byte	0
	.byte	-42
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	12
	.byte	1
	.globl _height2RisingBack5
_height2RisingBack5:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	12
	.byte	-1
	.byte	21
	.byte	24
	.byte	0
	.byte	-12
	.byte	15
	.byte	-1
	.byte	21
	.byte	24
	.byte	0
	.byte	24
	.byte	-33
	.byte	-1
	.byte	21
	.byte	21
	.byte	0
	.byte	-30
	.byte	-63
	.byte	-1
	.byte	21
	.byte	24
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _depth2RollingLeft5
_depth2RollingLeft5:
	.byte	-1
	.byte	30
	.byte	33
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-30
	.byte	-33
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	24
	.byte	-24
	.byte	0
	.byte	6
	.byte	57
	.byte	-1
	.byte	27
	.byte	-24
	.byte	0
	.byte	21
	.byte	-9
	.byte	-1
	.byte	27
	.byte	-24
	.byte	0
	.byte	-57
	.byte	-9
	.byte	-1
	.byte	24
	.byte	-27
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	33
	.byte	33
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-33
	.byte	-36
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight5
_depth2RollingRight5:
	.byte	0
	.byte	27
	.byte	9
	.byte	-1
	.byte	-18
	.byte	33
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	18
	.byte	-30
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	36
	.byte	24
	.byte	0
	.byte	-54
	.byte	9
	.byte	-1
	.byte	36
	.byte	27
	.byte	0
	.byte	12
	.byte	-63
	.byte	-1
	.byte	36
	.byte	27
	.byte	0
	.byte	-18
	.byte	-57
	.byte	-1
	.byte	36
	.byte	24
	.byte	0
	.byte	-48
	.byte	33
	.byte	-1
	.byte	-18
	.byte	36
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	18
	.byte	-33
	.byte	-1
	.byte	-48
	.byte	33
	.byte	1
	.globl _width2RollingFront5
_width2RollingFront5:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	42
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-42
	.byte	12
	.byte	-1
	.byte	15
	.byte	12
	.byte	0
	.byte	3
	.byte	72
	.byte	-1
	.byte	15
	.byte	12
	.byte	0
	.byte	27
	.byte	-27
	.byte	-1
	.byte	18
	.byte	12
	.byte	0
	.byte	-36
	.byte	-93
	.byte	-1
	.byte	18
	.byte	12
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _width2RollingBack5
_width2RollingBack5:
	.byte	0
	.byte	30
	.byte	0
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-6
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	6
	.byte	15
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-27
	.byte	93
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-51
	.byte	-3
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-63
	.byte	-69
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	6
	.byte	15
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-6
	.byte	-15
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	6
	.byte	15
	.byte	1
	.globl _height1FallingLeft5
_height1FallingLeft5:
	.byte	-1
	.byte	30
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-30
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	24
	.byte	-24
	.byte	0
	.byte	6
	.byte	57
	.byte	-1
	.byte	27
	.byte	-24
	.byte	0
	.byte	-3
	.byte	6
	.byte	-1
	.byte	27
	.byte	-21
	.byte	0
	.byte	-57
	.byte	-9
	.byte	-1
	.byte	24
	.byte	-27
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	33
	.byte	33
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-33
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight5
_height1FallingRight5:
	.byte	0
	.byte	27
	.byte	9
	.byte	-1
	.byte	-18
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	18
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	36
	.byte	24
	.byte	0
	.byte	-54
	.byte	9
	.byte	-1
	.byte	36
	.byte	27
	.byte	0
	.byte	-12
	.byte	-45
	.byte	-1
	.byte	36
	.byte	27
	.byte	0
	.byte	-18
	.byte	-57
	.byte	-1
	.byte	36
	.byte	21
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-18
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	18
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack5
_height1FallingBack5:
	.byte	0
	.byte	30
	.byte	0
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-6
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	6
	.byte	15
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-36
	.byte	51
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-51
	.byte	-3
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-54
	.byte	-27
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	6
	.byte	15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-6
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	6
	.byte	15
	.byte	1
	.globl _height1FallingFront5
_height1FallingFront5:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	12
	.byte	-1
	.byte	15
	.byte	12
	.byte	0
	.byte	-6
	.byte	30
	.byte	-1
	.byte	15
	.byte	12
	.byte	0
	.byte	27
	.byte	-27
	.byte	-1
	.byte	18
	.byte	12
	.byte	0
	.byte	-27
	.byte	-51
	.byte	-1
	.byte	18
	.byte	12
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _height2FallingLeft6
_height2FallingLeft6:
	.byte	-1
	.byte	33
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-33
	.byte	-27
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	42
	.byte	-57
	.byte	0
	.byte	-9
	.byte	87
	.byte	-1
	.byte	42
	.byte	-57
	.byte	0
	.byte	-18
	.byte	39
	.byte	-1
	.byte	42
	.byte	-57
	.byte	0
	.byte	-75
	.byte	30
	.byte	-1
	.byte	42
	.byte	-60
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	33
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-33
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight6
_height2RisingRight6:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	30
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-30
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	51
	.byte	-51
	.byte	0
	.byte	-21
	.byte	84
	.byte	-1
	.byte	51
	.byte	-51
	.byte	0
	.byte	-27
	.byte	33
	.byte	-1
	.byte	51
	.byte	-51
	.byte	0
	.byte	-81
	.byte	18
	.byte	-1
	.byte	51
	.byte	-51
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	30
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-30
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight6
_height2FallingRight6:
	.byte	0
	.byte	30
	.byte	12
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	21
	.byte	-27
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	69
	.byte	60
	.byte	0
	.byte	-90
	.byte	-30
	.byte	-1
	.byte	69
	.byte	60
	.byte	0
	.byte	-45
	.byte	-78
	.byte	-1
	.byte	69
	.byte	60
	.byte	0
	.byte	-48
	.byte	-87
	.byte	-1
	.byte	69
	.byte	57
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	21
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft6
_height2RisingLeft6:
	.byte	0
	.byte	18
	.byte	-30
	.byte	-1
	.byte	-18
	.byte	30
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	18
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	72
	.byte	48
	.byte	0
	.byte	-90
	.byte	-18
	.byte	-1
	.byte	72
	.byte	51
	.byte	0
	.byte	-48
	.byte	-66
	.byte	-1
	.byte	72
	.byte	48
	.byte	0
	.byte	-54
	.byte	-81
	.byte	-1
	.byte	72
	.byte	48
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-18
	.byte	33
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	18
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack6
_height2FallingBack6:
	.byte	0
	.byte	36
	.byte	-3
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-12
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	12
	.byte	12
	.byte	-1
	.byte	87
	.byte	-24
	.byte	0
	.byte	-78
	.byte	63
	.byte	-1
	.byte	87
	.byte	-24
	.byte	0
	.byte	-99
	.byte	12
	.byte	-1
	.byte	90
	.byte	-24
	.byte	0
	.byte	-99
	.byte	-15
	.byte	-1
	.byte	90
	.byte	-24
	.byte	0
	.byte	9
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	9
	.byte	12
	.byte	1
	.globl _height2RisingFront6
_height2RisingFront6:
	.byte	0
	.byte	6
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-6
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	6
	.byte	15
	.byte	-1
	.byte	90
	.byte	-21
	.byte	0
	.byte	-81
	.byte	63
	.byte	-1
	.byte	90
	.byte	-24
	.byte	0
	.byte	-96
	.byte	9
	.byte	-1
	.byte	90
	.byte	-21
	.byte	0
	.byte	-99
	.byte	-21
	.byte	-1
	.byte	90
	.byte	-18
	.byte	0
	.byte	6
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-6
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	6
	.byte	12
	.byte	1
	.globl _height2FallingFront6
_height2FallingFront6:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	21
	.byte	24
	.byte	0
	.byte	-12
	.byte	18
	.byte	-1
	.byte	21
	.byte	24
	.byte	0
	.byte	24
	.byte	-36
	.byte	-1
	.byte	21
	.byte	24
	.byte	0
	.byte	-30
	.byte	-63
	.byte	-1
	.byte	21
	.byte	21
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _height2RisingBack6
_height2RisingBack6:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	42
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	15
	.byte	-1
	.byte	33
	.byte	21
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	33
	.byte	21
	.byte	0
	.byte	9
	.byte	-33
	.byte	-1
	.byte	33
	.byte	21
	.byte	0
	.byte	-42
	.byte	-63
	.byte	-1
	.byte	33
	.byte	24
	.byte	0
	.byte	-42
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	42
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	12
	.byte	1
	.globl _depth2RollingLeft6
_depth2RollingLeft6:
	.byte	-1
	.byte	33
	.byte	30
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-33
	.byte	-30
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	21
	.byte	-27
	.byte	0
	.byte	12
	.byte	57
	.byte	-1
	.byte	21
	.byte	-30
	.byte	0
	.byte	27
	.byte	-3
	.byte	-1
	.byte	21
	.byte	-30
	.byte	0
	.byte	-54
	.byte	0
	.byte	-1
	.byte	21
	.byte	-30
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	33
	.byte	27
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-33
	.byte	-30
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight6
_depth2RollingRight6:
	.byte	0
	.byte	30
	.byte	12
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	21
	.byte	-27
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	33
	.byte	30
	.byte	0
	.byte	-54
	.byte	0
	.byte	-1
	.byte	33
	.byte	30
	.byte	0
	.byte	15
	.byte	-66
	.byte	-1
	.byte	33
	.byte	30
	.byte	0
	.byte	-12
	.byte	-57
	.byte	-1
	.byte	33
	.byte	27
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	21
	.byte	-30
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront6
_width2RollingFront6:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	12
	.byte	12
	.byte	0
	.byte	6
	.byte	72
	.byte	-1
	.byte	12
	.byte	12
	.byte	0
	.byte	33
	.byte	-24
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	-27
	.byte	-93
	.byte	-1
	.byte	9
	.byte	9
	.byte	0
	.byte	-42
	.byte	12
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	42
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-42
	.byte	12
	.byte	1
	.globl _width2RollingBack6
_width2RollingBack6:
	.byte	0
	.byte	36
	.byte	-3
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-12
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	12
	.byte	12
	.byte	-1
	.byte	42
	.byte	-12
	.byte	0
	.byte	-24
	.byte	93
	.byte	-1
	.byte	42
	.byte	-12
	.byte	0
	.byte	-54
	.byte	0
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-63
	.byte	-69
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	9
	.byte	12
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	9
	.byte	12
	.byte	1
	.globl _height1FallingLeft6
_height1FallingLeft6:
	.byte	-1
	.byte	33
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-33
	.byte	-27
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	21
	.byte	-27
	.byte	0
	.byte	12
	.byte	57
	.byte	-1
	.byte	21
	.byte	-30
	.byte	0
	.byte	3
	.byte	12
	.byte	-1
	.byte	21
	.byte	-27
	.byte	0
	.byte	-54
	.byte	0
	.byte	-1
	.byte	21
	.byte	-30
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	33
	.byte	27
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-33
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight6
_height1FallingRight6:
	.byte	0
	.byte	30
	.byte	12
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	21
	.byte	-27
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	33
	.byte	30
	.byte	0
	.byte	-54
	.byte	0
	.byte	-1
	.byte	33
	.byte	30
	.byte	0
	.byte	-9
	.byte	-48
	.byte	-1
	.byte	33
	.byte	30
	.byte	0
	.byte	-12
	.byte	-57
	.byte	-1
	.byte	33
	.byte	27
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-21
	.byte	30
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	21
	.byte	-30
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack6
_height1FallingBack6:
	.byte	0
	.byte	36
	.byte	-3
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-12
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	12
	.byte	12
	.byte	-1
	.byte	42
	.byte	-12
	.byte	0
	.byte	-33
	.byte	51
	.byte	-1
	.byte	42
	.byte	-12
	.byte	0
	.byte	-54
	.byte	0
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	-54
	.byte	-27
	.byte	-1
	.byte	45
	.byte	-12
	.byte	0
	.byte	9
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	9
	.byte	12
	.byte	1
	.globl _height1FallingFront6
_height1FallingFront6:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	12
	.byte	12
	.byte	0
	.byte	-3
	.byte	30
	.byte	-1
	.byte	12
	.byte	12
	.byte	0
	.byte	33
	.byte	-24
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	-18
	.byte	-51
	.byte	-1
	.byte	9
	.byte	9
	.byte	0
	.byte	-42
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	12
	.byte	1
	.globl _height2FallingLeft7
_height2FallingLeft7:
	.byte	-1
	.byte	36
	.byte	27
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-36
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	33
	.byte	-63
	.byte	0
	.byte	3
	.byte	90
	.byte	-1
	.byte	33
	.byte	-66
	.byte	0
	.byte	-9
	.byte	48
	.byte	-1
	.byte	33
	.byte	-66
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	33
	.byte	-66
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	36
	.byte	24
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-36
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight7
_height2RisingRight7:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	27
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-27
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	60
	.byte	-42
	.byte	0
	.byte	-33
	.byte	78
	.byte	-1
	.byte	60
	.byte	-42
	.byte	0
	.byte	-36
	.byte	24
	.byte	-1
	.byte	60
	.byte	-42
	.byte	0
	.byte	-87
	.byte	6
	.byte	-1
	.byte	60
	.byte	-42
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	27
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-27
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight7
_height2FallingRight7:
	.byte	0
	.byte	33
	.byte	15
	.byte	-1
	.byte	-24
	.byte	27
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	24
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	63
	.byte	69
	.byte	0
	.byte	-87
	.byte	-42
	.byte	-1
	.byte	63
	.byte	66
	.byte	0
	.byte	-39
	.byte	-84
	.byte	-1
	.byte	63
	.byte	66
	.byte	0
	.byte	-39
	.byte	-90
	.byte	-1
	.byte	63
	.byte	66
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-24
	.byte	24
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	24
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft7
_height2RisingLeft7:
	.byte	0
	.byte	12
	.byte	-33
	.byte	-1
	.byte	-12
	.byte	33
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	12
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	75
	.byte	39
	.byte	0
	.byte	-87
	.byte	-6
	.byte	-1
	.byte	78
	.byte	42
	.byte	0
	.byte	-54
	.byte	-57
	.byte	-1
	.byte	78
	.byte	39
	.byte	0
	.byte	-66
	.byte	-75
	.byte	-1
	.byte	75
	.byte	42
	.byte	0
	.byte	-24
	.byte	15
	.byte	-1
	.byte	-9
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	9
	.byte	-33
	.byte	-1
	.byte	-24
	.byte	15
	.byte	1
	.globl _height2FallingBack7
_height2FallingBack7:
	.byte	0
	.byte	39
	.byte	-3
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-15
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	15
	.byte	12
	.byte	-1
	.byte	87
	.byte	-30
	.byte	0
	.byte	-78
	.byte	69
	.byte	-1
	.byte	87
	.byte	-30
	.byte	0
	.byte	-102
	.byte	18
	.byte	-1
	.byte	87
	.byte	-27
	.byte	0
	.byte	-96
	.byte	-12
	.byte	-1
	.byte	87
	.byte	-30
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-15
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	15
	.byte	12
	.byte	1
	.globl _height2RisingFront7
_height2RisingFront7:
	.byte	0
	.byte	0
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	0
	.byte	15
	.byte	-1
	.byte	90
	.byte	-15
	.byte	0
	.byte	-81
	.byte	57
	.byte	-1
	.byte	90
	.byte	-18
	.byte	0
	.byte	-90
	.byte	3
	.byte	-1
	.byte	93
	.byte	-18
	.byte	0
	.byte	-102
	.byte	-24
	.byte	-1
	.byte	93
	.byte	-15
	.byte	0
	.byte	-3
	.byte	15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	3
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-3
	.byte	15
	.byte	1
	.globl _height2FallingFront7
_height2FallingFront7:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	9
	.byte	30
	.byte	0
	.byte	0
	.byte	12
	.byte	-1
	.byte	9
	.byte	30
	.byte	0
	.byte	36
	.byte	-42
	.byte	-1
	.byte	9
	.byte	30
	.byte	0
	.byte	-18
	.byte	-69
	.byte	-1
	.byte	9
	.byte	27
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _height2RisingBack7
_height2RisingBack7:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	39
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	15
	.byte	-1
	.byte	45
	.byte	18
	.byte	0
	.byte	-36
	.byte	21
	.byte	-1
	.byte	45
	.byte	18
	.byte	0
	.byte	-6
	.byte	-30
	.byte	-1
	.byte	45
	.byte	15
	.byte	0
	.byte	-54
	.byte	-57
	.byte	-1
	.byte	45
	.byte	18
	.byte	0
	.byte	-39
	.byte	15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	39
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-39
	.byte	15
	.byte	1
	.globl _depth2RollingLeft7
_depth2RollingLeft7:
	.byte	-1
	.byte	36
	.byte	27
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-36
	.byte	-27
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	18
	.byte	-30
	.byte	0
	.byte	18
	.byte	57
	.byte	-1
	.byte	18
	.byte	-33
	.byte	0
	.byte	30
	.byte	0
	.byte	-1
	.byte	18
	.byte	-36
	.byte	0
	.byte	-54
	.byte	9
	.byte	-1
	.byte	18
	.byte	-33
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	36
	.byte	24
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-36
	.byte	-24
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight7
_depth2RollingRight7:
	.byte	0
	.byte	33
	.byte	15
	.byte	-1
	.byte	-24
	.byte	27
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	24
	.byte	-24
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	33
	.byte	36
	.byte	0
	.byte	-57
	.byte	-9
	.byte	-1
	.byte	30
	.byte	33
	.byte	0
	.byte	18
	.byte	-69
	.byte	-1
	.byte	30
	.byte	33
	.byte	0
	.byte	-6
	.byte	-57
	.byte	-1
	.byte	33
	.byte	33
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-27
	.byte	24
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	27
	.byte	-24
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront7
_width2RollingFront7:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	6
	.byte	15
	.byte	0
	.byte	12
	.byte	69
	.byte	-1
	.byte	6
	.byte	15
	.byte	0
	.byte	39
	.byte	-27
	.byte	-1
	.byte	6
	.byte	15
	.byte	0
	.byte	-24
	.byte	-96
	.byte	-1
	.byte	6
	.byte	12
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _width2RollingBack7
_width2RollingBack7:
	.byte	0
	.byte	39
	.byte	-3
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-15
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	15
	.byte	12
	.byte	-1
	.byte	45
	.byte	-15
	.byte	0
	.byte	-27
	.byte	96
	.byte	-1
	.byte	45
	.byte	-15
	.byte	0
	.byte	-60
	.byte	3
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	-60
	.byte	-66
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	18
	.byte	12
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-18
	.byte	-12
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	18
	.byte	12
	.byte	1
	.globl _height1FallingLeft7
_height1FallingLeft7:
	.byte	-1
	.byte	36
	.byte	27
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-36
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	18
	.byte	-30
	.byte	0
	.byte	18
	.byte	57
	.byte	-1
	.byte	18
	.byte	-33
	.byte	0
	.byte	6
	.byte	15
	.byte	-1
	.byte	18
	.byte	-33
	.byte	0
	.byte	-54
	.byte	9
	.byte	-1
	.byte	18
	.byte	-33
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	36
	.byte	24
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-36
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight7
_height1FallingRight7:
	.byte	0
	.byte	33
	.byte	15
	.byte	-1
	.byte	-24
	.byte	27
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	24
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	33
	.byte	36
	.byte	0
	.byte	-57
	.byte	-9
	.byte	-1
	.byte	30
	.byte	33
	.byte	0
	.byte	-6
	.byte	-51
	.byte	-1
	.byte	30
	.byte	33
	.byte	0
	.byte	-6
	.byte	-57
	.byte	-1
	.byte	33
	.byte	33
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-27
	.byte	24
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	27
	.byte	-24
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack7
_height1FallingBack7:
	.byte	0
	.byte	39
	.byte	-3
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-15
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	15
	.byte	12
	.byte	-1
	.byte	45
	.byte	-15
	.byte	0
	.byte	-36
	.byte	54
	.byte	-1
	.byte	45
	.byte	-15
	.byte	0
	.byte	-60
	.byte	3
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	-51
	.byte	-24
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	18
	.byte	12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-18
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	18
	.byte	12
	.byte	1
	.globl _height1FallingFront7
_height1FallingFront7:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	9
	.byte	-1
	.byte	6
	.byte	15
	.byte	0
	.byte	3
	.byte	27
	.byte	-1
	.byte	6
	.byte	15
	.byte	0
	.byte	39
	.byte	-27
	.byte	-1
	.byte	6
	.byte	15
	.byte	0
	.byte	-15
	.byte	-54
	.byte	-1
	.byte	6
	.byte	12
	.byte	0
	.byte	-45
	.byte	12
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	12
	.byte	1
	.globl _height2FallingLeft8
_height2FallingLeft8:
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	24
	.byte	-69
	.byte	0
	.byte	15
	.byte	90
	.byte	-1
	.byte	24
	.byte	-69
	.byte	0
	.byte	0
	.byte	51
	.byte	-1
	.byte	24
	.byte	-69
	.byte	0
	.byte	-63
	.byte	51
	.byte	-1
	.byte	24
	.byte	-72
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight8
_height2RisingRight8:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	24
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	66
	.byte	-33
	.byte	0
	.byte	-42
	.byte	72
	.byte	-1
	.byte	63
	.byte	-33
	.byte	0
	.byte	-39
	.byte	15
	.byte	-1
	.byte	63
	.byte	-33
	.byte	0
	.byte	-87
	.byte	-6
	.byte	-1
	.byte	66
	.byte	-33
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	21
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-21
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight8
_height2FallingRight8:
	.byte	0
	.byte	39
	.byte	21
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	54
	.byte	72
	.byte	0
	.byte	-84
	.byte	-51
	.byte	-1
	.byte	54
	.byte	72
	.byte	0
	.byte	-30
	.byte	-90
	.byte	-1
	.byte	54
	.byte	72
	.byte	0
	.byte	-24
	.byte	-93
	.byte	-1
	.byte	54
	.byte	72
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft8
_height2RisingLeft8:
	.byte	0
	.byte	6
	.byte	-36
	.byte	-1
	.byte	-6
	.byte	36
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	6
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	81
	.byte	33
	.byte	0
	.byte	-87
	.byte	3
	.byte	-1
	.byte	78
	.byte	33
	.byte	0
	.byte	-54
	.byte	-48
	.byte	-1
	.byte	78
	.byte	30
	.byte	0
	.byte	-72
	.byte	-69
	.byte	-1
	.byte	81
	.byte	33
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-9
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	9
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack8
_height2FallingBack8:
	.byte	0
	.byte	45
	.byte	-6
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-21
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	21
	.byte	9
	.byte	-1
	.byte	81
	.byte	-30
	.byte	0
	.byte	-72
	.byte	69
	.byte	-1
	.byte	81
	.byte	-30
	.byte	0
	.byte	-102
	.byte	21
	.byte	-1
	.byte	81
	.byte	-27
	.byte	0
	.byte	-90
	.byte	-12
	.byte	-1
	.byte	81
	.byte	-30
	.byte	0
	.byte	21
	.byte	9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-21
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	21
	.byte	9
	.byte	1
	.globl _height2RisingFront8
_height2RisingFront8:
	.byte	0
	.byte	-3
	.byte	18
	.byte	-1
	.byte	6
	.byte	42
	.byte	-1
	.byte	6
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-3
	.byte	18
	.byte	-1
	.byte	87
	.byte	-15
	.byte	0
	.byte	-81
	.byte	57
	.byte	-1
	.byte	90
	.byte	-15
	.byte	0
	.byte	-84
	.byte	-3
	.byte	-1
	.byte	90
	.byte	-15
	.byte	0
	.byte	-99
	.byte	-27
	.byte	-1
	.byte	90
	.byte	-12
	.byte	0
	.byte	-6
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	6
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-6
	.byte	15
	.byte	1
	.globl _height2FallingFront8
_height2FallingFront8:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	6
	.byte	-1
	.byte	0
	.byte	30
	.byte	0
	.byte	9
	.byte	12
	.byte	-1
	.byte	-3
	.byte	30
	.byte	0
	.byte	48
	.byte	-39
	.byte	-1
	.byte	-3
	.byte	30
	.byte	0
	.byte	-6
	.byte	-69
	.byte	-1
	.byte	-3
	.byte	27
	.byte	0
	.byte	-42
	.byte	9
	.byte	-1
	.byte	6
	.byte	42
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	9
	.byte	1
	.globl _height2RisingBack8
_height2RisingBack8:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	36
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-36
	.byte	18
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-45
	.byte	24
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-18
	.byte	-30
	.byte	-1
	.byte	54
	.byte	12
	.byte	0
	.byte	-63
	.byte	-54
	.byte	-1
	.byte	54
	.byte	15
	.byte	0
	.byte	-36
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	36
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-36
	.byte	18
	.byte	1
	.globl _depth2RollingLeft8
_depth2RollingLeft8:
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-39
	.byte	-21
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	12
	.byte	-33
	.byte	0
	.byte	27
	.byte	54
	.byte	-1
	.byte	12
	.byte	-33
	.byte	0
	.byte	36
	.byte	0
	.byte	-1
	.byte	12
	.byte	-36
	.byte	0
	.byte	-51
	.byte	15
	.byte	-1
	.byte	12
	.byte	-36
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-39
	.byte	-21
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight8
_depth2RollingRight8:
	.byte	0
	.byte	39
	.byte	21
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	30
	.byte	-18
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	-57
	.byte	-15
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	21
	.byte	-72
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	3
	.byte	-54
	.byte	-1
	.byte	27
	.byte	33
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront8
_width2RollingFront8:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-45
	.byte	6
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	18
	.byte	69
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	45
	.byte	-24
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	-18
	.byte	-96
	.byte	-1
	.byte	0
	.byte	12
	.byte	0
	.byte	-45
	.byte	9
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-45
	.byte	9
	.byte	1
	.globl _width2RollingBack8
_width2RollingBack8:
	.byte	0
	.byte	45
	.byte	-6
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-21
	.byte	-9
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	21
	.byte	9
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	-24
	.byte	96
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	-63
	.byte	6
	.byte	-1
	.byte	39
	.byte	-15
	.byte	0
	.byte	-57
	.byte	-66
	.byte	-1
	.byte	39
	.byte	-15
	.byte	0
	.byte	24
	.byte	9
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-24
	.byte	-9
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	24
	.byte	9
	.byte	1
	.globl _height1FallingLeft8
_height1FallingLeft8:
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	12
	.byte	-33
	.byte	0
	.byte	27
	.byte	54
	.byte	-1
	.byte	12
	.byte	-33
	.byte	0
	.byte	12
	.byte	15
	.byte	-1
	.byte	12
	.byte	-33
	.byte	0
	.byte	-51
	.byte	15
	.byte	-1
	.byte	12
	.byte	-36
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	39
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight8
_height1FallingRight8:
	.byte	0
	.byte	39
	.byte	21
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	-57
	.byte	-15
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	-3
	.byte	-54
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	3
	.byte	-57
	.byte	-1
	.byte	27
	.byte	36
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-30
	.byte	21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	30
	.byte	-21
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack8
_height1FallingBack8:
	.byte	0
	.byte	45
	.byte	-6
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-21
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	21
	.byte	9
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	-33
	.byte	54
	.byte	-1
	.byte	42
	.byte	-15
	.byte	0
	.byte	-63
	.byte	6
	.byte	-1
	.byte	39
	.byte	-15
	.byte	0
	.byte	-48
	.byte	-24
	.byte	-1
	.byte	39
	.byte	-15
	.byte	0
	.byte	24
	.byte	9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-24
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	24
	.byte	9
	.byte	1
	.globl _height1FallingFront8
_height1FallingFront8:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	6
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	9
	.byte	27
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	45
	.byte	-24
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	-9
	.byte	-54
	.byte	-1
	.byte	0
	.byte	12
	.byte	0
	.byte	-45
	.byte	9
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-45
	.byte	9
	.byte	1
	.globl _height2FallingLeft9
_height2FallingLeft9:
	.byte	-1
	.byte	39
	.byte	15
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	12
	.byte	-75
	.byte	0
	.byte	27
	.byte	90
	.byte	-1
	.byte	15
	.byte	-75
	.byte	0
	.byte	9
	.byte	60
	.byte	-1
	.byte	15
	.byte	-78
	.byte	0
	.byte	-54
	.byte	63
	.byte	-1
	.byte	12
	.byte	-78
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	42
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-42
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight9
_height2RisingRight9:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	18
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	72
	.byte	-21
	.byte	0
	.byte	-54
	.byte	63
	.byte	-1
	.byte	72
	.byte	-24
	.byte	0
	.byte	-48
	.byte	6
	.byte	-1
	.byte	72
	.byte	-24
	.byte	0
	.byte	-90
	.byte	-18
	.byte	-1
	.byte	72
	.byte	-21
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	18
	.byte	39
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-18
	.byte	-39
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight9
_height2FallingRight9:
	.byte	0
	.byte	42
	.byte	27
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	45
	.byte	78
	.byte	0
	.byte	-78
	.byte	-63
	.byte	-1
	.byte	45
	.byte	78
	.byte	0
	.byte	-21
	.byte	-96
	.byte	-1
	.byte	45
	.byte	78
	.byte	0
	.byte	-12
	.byte	-93
	.byte	-1
	.byte	45
	.byte	78
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft9
_height2RisingLeft9:
	.byte	0
	.byte	0
	.byte	-39
	.byte	-1
	.byte	0
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	0
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	81
	.byte	24
	.byte	0
	.byte	-81
	.byte	15
	.byte	-1
	.byte	81
	.byte	21
	.byte	0
	.byte	-57
	.byte	-36
	.byte	-1
	.byte	81
	.byte	18
	.byte	0
	.byte	-81
	.byte	-60
	.byte	-1
	.byte	81
	.byte	24
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	0
	.byte	36
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	0
	.byte	-36
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack9
_height2FallingBack9:
	.byte	0
	.byte	51
	.byte	-9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-27
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	27
	.byte	6
	.byte	-1
	.byte	75
	.byte	-33
	.byte	0
	.byte	-66
	.byte	72
	.byte	-1
	.byte	75
	.byte	-30
	.byte	0
	.byte	-102
	.byte	24
	.byte	-1
	.byte	75
	.byte	-30
	.byte	0
	.byte	-84
	.byte	-9
	.byte	-1
	.byte	75
	.byte	-33
	.byte	0
	.byte	27
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-27
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	27
	.byte	6
	.byte	1
	.globl _height2RisingFront9
_height2RisingFront9:
	.byte	0
	.byte	-9
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	9
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-9
	.byte	18
	.byte	-1
	.byte	84
	.byte	-9
	.byte	0
	.byte	-75
	.byte	51
	.byte	-1
	.byte	84
	.byte	-9
	.byte	0
	.byte	-75
	.byte	-9
	.byte	-1
	.byte	87
	.byte	-9
	.byte	0
	.byte	-96
	.byte	-33
	.byte	-1
	.byte	87
	.byte	-6
	.byte	0
	.byte	-12
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	12
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-12
	.byte	15
	.byte	1
	.globl _height2FallingFront9
_height2FallingFront9:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	3
	.byte	-1
	.byte	-12
	.byte	33
	.byte	0
	.byte	21
	.byte	9
	.byte	-1
	.byte	-12
	.byte	33
	.byte	0
	.byte	57
	.byte	-39
	.byte	-1
	.byte	-15
	.byte	33
	.byte	0
	.byte	6
	.byte	-72
	.byte	-1
	.byte	-15
	.byte	30
	.byte	0
	.byte	-42
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	6
	.byte	1
	.globl _height2RisingBack9
_height2RisingBack9:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-33
	.byte	18
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-54
	.byte	30
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-30
	.byte	-24
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-72
	.byte	-51
	.byte	-1
	.byte	63
	.byte	9
	.byte	0
	.byte	-33
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-33
	.byte	18
	.byte	1
	.globl _depth2RollingLeft9
_depth2RollingLeft9:
	.byte	-1
	.byte	39
	.byte	15
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-39
	.byte	-15
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	6
	.byte	-36
	.byte	0
	.byte	33
	.byte	51
	.byte	-1
	.byte	6
	.byte	-36
	.byte	0
	.byte	42
	.byte	3
	.byte	-1
	.byte	6
	.byte	-39
	.byte	0
	.byte	-45
	.byte	24
	.byte	-1
	.byte	6
	.byte	-39
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	39
	.byte	15
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-39
	.byte	-15
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight9
_depth2RollingRight9:
	.byte	0
	.byte	42
	.byte	27
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	33
	.byte	-12
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	-57
	.byte	-24
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	24
	.byte	-75
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	9
	.byte	-51
	.byte	-1
	.byte	24
	.byte	36
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront9
_width2RollingFront9:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-45
	.byte	3
	.byte	-1
	.byte	-3
	.byte	18
	.byte	0
	.byte	21
	.byte	66
	.byte	-1
	.byte	-6
	.byte	18
	.byte	0
	.byte	51
	.byte	-24
	.byte	-1
	.byte	-6
	.byte	15
	.byte	0
	.byte	-12
	.byte	-96
	.byte	-1
	.byte	-6
	.byte	12
	.byte	0
	.byte	-42
	.byte	9
	.byte	-1
	.byte	15
	.byte	84
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-42
	.byte	9
	.byte	1
	.globl _width2RollingBack9
_width2RollingBack9:
	.byte	0
	.byte	51
	.byte	-9
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-27
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	27
	.byte	6
	.byte	-1
	.byte	36
	.byte	-15
	.byte	0
	.byte	-18
	.byte	96
	.byte	-1
	.byte	36
	.byte	-15
	.byte	0
	.byte	-63
	.byte	9
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	-54
	.byte	-63
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	27
	.byte	9
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-27
	.byte	-9
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	27
	.byte	9
	.byte	1
	.globl _height1FallingLeft9
_height1FallingLeft9:
	.byte	-1
	.byte	39
	.byte	15
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	6
	.byte	-36
	.byte	0
	.byte	33
	.byte	51
	.byte	-1
	.byte	6
	.byte	-36
	.byte	0
	.byte	18
	.byte	21
	.byte	-1
	.byte	6
	.byte	-39
	.byte	0
	.byte	-45
	.byte	24
	.byte	-1
	.byte	6
	.byte	-39
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	39
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight9
_height1FallingRight9:
	.byte	0
	.byte	42
	.byte	27
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	-57
	.byte	-24
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	0
	.byte	-57
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	9
	.byte	-54
	.byte	-1
	.byte	24
	.byte	39
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-33
	.byte	15
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-15
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack9
_height1FallingBack9:
	.byte	0
	.byte	51
	.byte	-9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-27
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	27
	.byte	6
	.byte	-1
	.byte	36
	.byte	-15
	.byte	0
	.byte	-27
	.byte	54
	.byte	-1
	.byte	36
	.byte	-15
	.byte	0
	.byte	-63
	.byte	9
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	-45
	.byte	-21
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	27
	.byte	9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-27
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	27
	.byte	9
	.byte	1
	.globl _height1FallingFront9
_height1FallingFront9:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	3
	.byte	-1
	.byte	-3
	.byte	18
	.byte	0
	.byte	12
	.byte	24
	.byte	-1
	.byte	-6
	.byte	18
	.byte	0
	.byte	51
	.byte	-24
	.byte	-1
	.byte	-6
	.byte	15
	.byte	0
	.byte	-3
	.byte	-54
	.byte	-1
	.byte	-6
	.byte	12
	.byte	0
	.byte	-42
	.byte	9
	.byte	-1
	.byte	6
	.byte	42
	.byte	-1
	.byte	45
	.byte	-9
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	9
	.byte	1
	.globl _height2FallingLeft10
_height2FallingLeft10:
	.byte	-1
	.byte	39
	.byte	12
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	3
	.byte	-78
	.byte	0
	.byte	36
	.byte	90
	.byte	-1
	.byte	3
	.byte	-78
	.byte	0
	.byte	21
	.byte	63
	.byte	-1
	.byte	3
	.byte	-81
	.byte	0
	.byte	-42
	.byte	69
	.byte	-1
	.byte	3
	.byte	-81
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	39
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingRight10
_height2RisingRight10:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	15
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-60
	.byte	54
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-51
	.byte	-6
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-90
	.byte	-30
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	15
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight10
_height2FallingRight10:
	.byte	0
	.byte	45
	.byte	30
	.byte	-1
	.byte	-36
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	36
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	36
	.byte	81
	.byte	0
	.byte	-72
	.byte	-69
	.byte	-1
	.byte	39
	.byte	81
	.byte	0
	.byte	-15
	.byte	-99
	.byte	-1
	.byte	39
	.byte	81
	.byte	0
	.byte	-3
	.byte	-93
	.byte	-1
	.byte	36
	.byte	81
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-33
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	33
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft10
_height2RisingLeft10:
	.byte	0
	.byte	0
	.byte	-39
	.byte	-1
	.byte	0
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	-1
	.byte	-21
	.byte	18
	.byte	-1
	.byte	75
	.byte	12
	.byte	0
	.byte	-75
	.byte	27
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-57
	.byte	-27
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-84
	.byte	-54
	.byte	-1
	.byte	78
	.byte	12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	6
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-6
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack10
_height2FallingBack10:
	.byte	0
	.byte	54
	.byte	-9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	30
	.byte	6
	.byte	-1
	.byte	69
	.byte	-36
	.byte	0
	.byte	-60
	.byte	75
	.byte	-1
	.byte	69
	.byte	-33
	.byte	0
	.byte	-99
	.byte	27
	.byte	-1
	.byte	66
	.byte	-33
	.byte	0
	.byte	-75
	.byte	-6
	.byte	-1
	.byte	66
	.byte	-36
	.byte	0
	.byte	33
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	33
	.byte	6
	.byte	1
	.globl _height2RisingFront10
_height2RisingFront10:
	.byte	0
	.byte	-15
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	15
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-15
	.byte	18
	.byte	-1
	.byte	81
	.byte	-6
	.byte	0
	.byte	-72
	.byte	48
	.byte	-1
	.byte	81
	.byte	-6
	.byte	0
	.byte	-66
	.byte	-12
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-93
	.byte	-36
	.byte	-1
	.byte	84
	.byte	-3
	.byte	0
	.byte	-18
	.byte	15
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	18
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-18
	.byte	15
	.byte	1
	.globl _height2FallingFront10
_height2FallingFront10:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	3
	.byte	-1
	.byte	-24
	.byte	36
	.byte	0
	.byte	33
	.byte	6
	.byte	-1
	.byte	-24
	.byte	36
	.byte	0
	.byte	69
	.byte	-42
	.byte	-1
	.byte	-27
	.byte	36
	.byte	0
	.byte	18
	.byte	-75
	.byte	-1
	.byte	-27
	.byte	33
	.byte	0
	.byte	-42
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-42
	.byte	6
	.byte	1
	.globl _height2RisingBack10
_height2RisingBack10:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	30
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-30
	.byte	18
	.byte	-1
	.byte	72
	.byte	6
	.byte	0
	.byte	-63
	.byte	33
	.byte	-1
	.byte	72
	.byte	6
	.byte	0
	.byte	-42
	.byte	-21
	.byte	-1
	.byte	69
	.byte	6
	.byte	0
	.byte	-78
	.byte	-48
	.byte	-1
	.byte	69
	.byte	6
	.byte	0
	.byte	-27
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	27
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-27
	.byte	18
	.byte	1
	.globl _depth2RollingLeft10
_depth2RollingLeft10:
	.byte	-1
	.byte	39
	.byte	12
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-39
	.byte	-12
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	0
	.byte	-39
	.byte	0
	.byte	39
	.byte	51
	.byte	-1
	.byte	3
	.byte	-39
	.byte	0
	.byte	45
	.byte	6
	.byte	-1
	.byte	3
	.byte	-42
	.byte	0
	.byte	-42
	.byte	30
	.byte	-1
	.byte	0
	.byte	-42
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	42
	.byte	12
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-42
	.byte	-12
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _depth2RollingRight10
_depth2RollingRight10:
	.byte	0
	.byte	45
	.byte	30
	.byte	-1
	.byte	-36
	.byte	12
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	36
	.byte	-9
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	-54
	.byte	-30
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	30
	.byte	-78
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	18
	.byte	-51
	.byte	-1
	.byte	18
	.byte	39
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-36
	.byte	12
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	36
	.byte	-12
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront10
_width2RollingFront10:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-45
	.byte	3
	.byte	-1
	.byte	-9
	.byte	18
	.byte	0
	.byte	27
	.byte	66
	.byte	-1
	.byte	-12
	.byte	18
	.byte	0
	.byte	57
	.byte	-24
	.byte	-1
	.byte	-15
	.byte	18
	.byte	0
	.byte	-3
	.byte	-99
	.byte	-1
	.byte	-15
	.byte	15
	.byte	0
	.byte	-39
	.byte	6
	.byte	-1
	.byte	15
	.byte	84
	.byte	-1
	.byte	42
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-39
	.byte	6
	.byte	1
	.globl _width2RollingBack10
_width2RollingBack10:
	.byte	0
	.byte	54
	.byte	-9
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	30
	.byte	6
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	-18
	.byte	99
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	-66
	.byte	12
	.byte	-1
	.byte	33
	.byte	-18
	.byte	0
	.byte	-51
	.byte	-63
	.byte	-1
	.byte	33
	.byte	-18
	.byte	0
	.byte	33
	.byte	6
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	33
	.byte	6
	.byte	1
	.globl _height1FallingLeft10
_height1FallingLeft10:
	.byte	-1
	.byte	39
	.byte	12
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	0
	.byte	-39
	.byte	0
	.byte	39
	.byte	51
	.byte	-1
	.byte	3
	.byte	-39
	.byte	0
	.byte	21
	.byte	24
	.byte	-1
	.byte	3
	.byte	-42
	.byte	0
	.byte	-42
	.byte	30
	.byte	-1
	.byte	0
	.byte	-42
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	42
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-42
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingRight10
_height1FallingRight10:
	.byte	0
	.byte	45
	.byte	30
	.byte	-1
	.byte	-36
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	36
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	-54
	.byte	-30
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	6
	.byte	-60
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	18
	.byte	-54
	.byte	-1
	.byte	18
	.byte	42
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-36
	.byte	12
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	36
	.byte	-12
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack10
_height1FallingBack10:
	.byte	0
	.byte	54
	.byte	-9
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	30
	.byte	6
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	-27
	.byte	57
	.byte	-1
	.byte	36
	.byte	-18
	.byte	0
	.byte	-66
	.byte	12
	.byte	-1
	.byte	33
	.byte	-18
	.byte	0
	.byte	-42
	.byte	-21
	.byte	-1
	.byte	33
	.byte	-18
	.byte	0
	.byte	33
	.byte	6
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	33
	.byte	6
	.byte	1
	.globl _height1FallingFront10
_height1FallingFront10:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	45
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-45
	.byte	3
	.byte	-1
	.byte	-9
	.byte	18
	.byte	0
	.byte	18
	.byte	24
	.byte	-1
	.byte	-9
	.byte	18
	.byte	0
	.byte	54
	.byte	-24
	.byte	-1
	.byte	-15
	.byte	18
	.byte	0
	.byte	6
	.byte	-57
	.byte	-1
	.byte	-15
	.byte	15
	.byte	0
	.byte	-39
	.byte	6
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	6
	.byte	1
	.globl _height2FallingLeft11
_height2FallingLeft11:
	.byte	-1
	.byte	39
	.byte	6
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	-6
	.byte	-81
	.byte	0
	.byte	45
	.byte	87
	.byte	-1
	.byte	-6
	.byte	-81
	.byte	0
	.byte	30
	.byte	66
	.byte	-1
	.byte	-6
	.byte	-84
	.byte	0
	.byte	-33
	.byte	78
	.byte	-1
	.byte	-9
	.byte	-84
	.byte	0
	.byte	-21
	.byte	18
	.byte	-1
	.byte	39
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-42
	.byte	-6
	.byte	-1
	.byte	-21
	.byte	18
	.byte	1
	.globl _height2RisingRight11
_height2RisingRight11:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-69
	.byte	42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight11
_height2FallingRight11:
	.byte	0
	.byte	45
	.byte	36
	.byte	-1
	.byte	-36
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	30
	.byte	84
	.byte	0
	.byte	-66
	.byte	-78
	.byte	-1
	.byte	27
	.byte	84
	.byte	0
	.byte	-3
	.byte	-102
	.byte	-1
	.byte	27
	.byte	84
	.byte	0
	.byte	9
	.byte	-90
	.byte	-1
	.byte	30
	.byte	84
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-39
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	39
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft11
_height2RisingLeft11:
	.byte	0
	.byte	-6
	.byte	-39
	.byte	-1
	.byte	6
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-21
	.byte	18
	.byte	-1
	.byte	75
	.byte	0
	.byte	0
	.byte	-69
	.byte	39
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-15
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack11
_height2FallingBack11:
	.byte	0
	.byte	60
	.byte	-12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-36
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	36
	.byte	3
	.byte	-1
	.byte	57
	.byte	-36
	.byte	0
	.byte	-48
	.byte	75
	.byte	-1
	.byte	57
	.byte	-33
	.byte	0
	.byte	-93
	.byte	30
	.byte	-1
	.byte	57
	.byte	-33
	.byte	0
	.byte	-66
	.byte	-6
	.byte	-1
	.byte	57
	.byte	-36
	.byte	0
	.byte	36
	.byte	3
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-36
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	36
	.byte	3
	.byte	1
	.globl _height2RisingFront11
_height2RisingFront11:
	.byte	0
	.byte	-21
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	21
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-21
	.byte	18
	.byte	-1
	.byte	75
	.byte	0
	.byte	0
	.byte	-66
	.byte	42
	.byte	-1
	.byte	75
	.byte	0
	.byte	0
	.byte	-54
	.byte	-18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingFront11
_height2FallingFront11:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	0
	.byte	-1
	.byte	-33
	.byte	36
	.byte	0
	.byte	42
	.byte	6
	.byte	-1
	.byte	-33
	.byte	36
	.byte	0
	.byte	75
	.byte	-39
	.byte	-1
	.byte	-39
	.byte	36
	.byte	0
	.byte	30
	.byte	-75
	.byte	-1
	.byte	-39
	.byte	33
	.byte	0
	.byte	-36
	.byte	3
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-36
	.byte	3
	.byte	1
	.globl _height2RisingBack11
_height2RisingBack11:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-69
	.byte	39
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-54
	.byte	-15
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-87
	.byte	-42
	.byte	-1
	.byte	78
	.byte	0
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _depth2RollingLeft11
_depth2RollingLeft11:
	.byte	-1
	.byte	39
	.byte	6
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-39
	.byte	-6
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	0
	.byte	-39
	.byte	0
	.byte	39
	.byte	45
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	0
	.byte	51
	.byte	6
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	0
	.byte	-36
	.byte	36
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	0
	.byte	-45
	.byte	36
	.byte	-1
	.byte	36
	.byte	6
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-39
	.byte	-6
	.byte	-1
	.byte	-45
	.byte	36
	.byte	1
	.globl _depth2RollingRight11
_depth2RollingRight11:
	.byte	0
	.byte	45
	.byte	36
	.byte	-1
	.byte	-36
	.byte	6
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-48
	.byte	36
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	-51
	.byte	-36
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	33
	.byte	-78
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	21
	.byte	-48
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-36
	.byte	6
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront11
_width2RollingFront11:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	42
	.byte	-3
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	-42
	.byte	0
	.byte	-1
	.byte	-15
	.byte	18
	.byte	0
	.byte	33
	.byte	66
	.byte	-1
	.byte	-18
	.byte	18
	.byte	0
	.byte	60
	.byte	-21
	.byte	-1
	.byte	-18
	.byte	18
	.byte	0
	.byte	0
	.byte	-99
	.byte	-1
	.byte	-18
	.byte	15
	.byte	0
	.byte	-39
	.byte	3
	.byte	-1
	.byte	15
	.byte	84
	.byte	-1
	.byte	42
	.byte	-3
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-39
	.byte	3
	.byte	1
	.globl _width2RollingBack11
_width2RollingBack11:
	.byte	0
	.byte	60
	.byte	-12
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-36
	.byte	-3
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	36
	.byte	3
	.byte	-1
	.byte	27
	.byte	-18
	.byte	0
	.byte	-9
	.byte	99
	.byte	-1
	.byte	27
	.byte	-18
	.byte	0
	.byte	-63
	.byte	15
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	-48
	.byte	-63
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	33
	.byte	3
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-33
	.byte	-3
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	33
	.byte	3
	.byte	1
	.globl _height1FallingLeft11
_height1FallingLeft11:
	.byte	-1
	.byte	39
	.byte	6
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	0
	.byte	-39
	.byte	0
	.byte	39
	.byte	45
	.byte	-1
	.byte	-3
	.byte	-39
	.byte	0
	.byte	27
	.byte	24
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	0
	.byte	-36
	.byte	36
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	0
	.byte	-21
	.byte	18
	.byte	-1
	.byte	36
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	-6
	.byte	-1
	.byte	-21
	.byte	18
	.byte	1
	.globl _height1FallingRight11
_height1FallingRight11:
	.byte	0
	.byte	45
	.byte	36
	.byte	-1
	.byte	-36
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	-51
	.byte	-36
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	9
	.byte	-60
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	21
	.byte	-48
	.byte	-1
	.byte	15
	.byte	42
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-36
	.byte	6
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	36
	.byte	-6
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack11
_height1FallingBack11:
	.byte	0
	.byte	60
	.byte	-12
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-36
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	36
	.byte	3
	.byte	-1
	.byte	27
	.byte	-18
	.byte	0
	.byte	-18
	.byte	57
	.byte	-1
	.byte	27
	.byte	-18
	.byte	0
	.byte	-63
	.byte	15
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	-39
	.byte	-21
	.byte	-1
	.byte	30
	.byte	-18
	.byte	0
	.byte	33
	.byte	3
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-33
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	33
	.byte	3
	.byte	1
	.globl _height1FallingFront11
_height1FallingFront11:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	42
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	-42
	.byte	0
	.byte	-1
	.byte	-15
	.byte	18
	.byte	0
	.byte	24
	.byte	24
	.byte	-1
	.byte	-15
	.byte	18
	.byte	0
	.byte	57
	.byte	-21
	.byte	-1
	.byte	-18
	.byte	18
	.byte	0
	.byte	9
	.byte	-57
	.byte	-1
	.byte	-18
	.byte	15
	.byte	0
	.byte	-39
	.byte	3
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	-3
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	3
	.byte	1
	.globl _height2FallingLeft12
_height2FallingLeft12:
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	-15
	.byte	-81
	.byte	0
	.byte	54
	.byte	81
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	0
	.byte	42
	.byte	66
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	0
	.byte	-21
	.byte	84
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	0
	.byte	-21
	.byte	18
	.byte	-1
	.byte	36
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-21
	.byte	18
	.byte	1
	.globl _height2RisingRight12
_height2RisingRight12:
	.byte	0
	.byte	18
	.byte	84
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-78
	.byte	30
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-57
	.byte	-30
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-84
	.byte	-54
	.byte	-1
	.byte	81
	.byte	12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	3
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-3
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingRight12
_height2FallingRight12:
	.byte	0
	.byte	48
	.byte	42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	18
	.byte	84
	.byte	0
	.byte	-57
	.byte	-84
	.byte	-1
	.byte	18
	.byte	84
	.byte	0
	.byte	6
	.byte	-102
	.byte	-1
	.byte	18
	.byte	84
	.byte	0
	.byte	21
	.byte	-84
	.byte	-1
	.byte	18
	.byte	84
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2RisingLeft12
_height2RisingLeft12:
	.byte	0
	.byte	-12
	.byte	-39
	.byte	-1
	.byte	12
	.byte	39
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-15
	.byte	-42
	.byte	-1
	.byte	-21
	.byte	18
	.byte	-1
	.byte	72
	.byte	-12
	.byte	0
	.byte	-60
	.byte	51
	.byte	-1
	.byte	75
	.byte	-9
	.byte	0
	.byte	-51
	.byte	-6
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-90
	.byte	-30
	.byte	-1
	.byte	75
	.byte	-12
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	15
	.byte	42
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-15
	.byte	-42
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height2FallingBack12
_height2FallingBack12:
	.byte	0
	.byte	63
	.byte	-15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	48
	.byte	-36
	.byte	0
	.byte	-39
	.byte	75
	.byte	-1
	.byte	48
	.byte	-33
	.byte	0
	.byte	-87
	.byte	33
	.byte	-1
	.byte	48
	.byte	-33
	.byte	0
	.byte	-57
	.byte	-6
	.byte	-1
	.byte	48
	.byte	-36
	.byte	0
	.byte	39
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	39
	.byte	0
	.byte	1
	.globl _height2RisingFront12
_height2RisingFront12:
	.byte	0
	.byte	-27
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	27
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-27
	.byte	18
	.byte	-1
	.byte	69
	.byte	6
	.byte	0
	.byte	-60
	.byte	36
	.byte	-1
	.byte	69
	.byte	6
	.byte	0
	.byte	-42
	.byte	-24
	.byte	-1
	.byte	72
	.byte	6
	.byte	0
	.byte	-81
	.byte	-48
	.byte	-1
	.byte	72
	.byte	6
	.byte	0
	.byte	-30
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	30
	.byte	-18
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-30
	.byte	18
	.byte	1
	.globl _height2FallingFront12
_height2FallingFront12:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-45
	.byte	36
	.byte	0
	.byte	54
	.byte	6
	.byte	-1
	.byte	-45
	.byte	36
	.byte	0
	.byte	84
	.byte	-36
	.byte	-1
	.byte	-48
	.byte	36
	.byte	0
	.byte	39
	.byte	-78
	.byte	-1
	.byte	-45
	.byte	36
	.byte	0
	.byte	-39
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	1
	.globl _height2RisingBack12
_height2RisingBack12:
	.byte	0
	.byte	48
	.byte	-33
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	18
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-18
	.byte	18
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-75
	.byte	45
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-66
	.byte	-9
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-93
	.byte	-36
	.byte	-1
	.byte	84
	.byte	-6
	.byte	0
	.byte	-18
	.byte	18
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	18
	.byte	-15
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-18
	.byte	18
	.byte	1
	.globl _depth2RollingLeft12
_depth2RollingLeft12:
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	48
	.byte	-33
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-48
	.byte	33
	.byte	-1
	.byte	-6
	.byte	-39
	.byte	0
	.byte	45
	.byte	39
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	0
	.byte	57
	.byte	6
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	0
	.byte	-45
	.byte	36
	.byte	-1
	.byte	36
	.byte	0
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-45
	.byte	36
	.byte	1
	.globl _depth2RollingRight12
_depth2RollingRight12:
	.byte	0
	.byte	48
	.byte	42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-48
	.byte	36
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	-48
	.byte	-42
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	39
	.byte	-78
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	30
	.byte	-42
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	-48
	.byte	36
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	48
	.byte	-36
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-48
	.byte	36
	.byte	1
	.globl _width2RollingFront12
_width2RollingFront12:
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-21
	.byte	18
	.byte	0
	.byte	39
	.byte	66
	.byte	-1
	.byte	-21
	.byte	18
	.byte	0
	.byte	60
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	18
	.byte	0
	.byte	6
	.byte	-102
	.byte	-1
	.byte	-24
	.byte	18
	.byte	0
	.byte	-36
	.byte	0
	.byte	-1
	.byte	18
	.byte	84
	.byte	-1
	.byte	36
	.byte	0
	.byte	-1
	.byte	-18
	.byte	-84
	.byte	-1
	.byte	-36
	.byte	0
	.byte	1
	.globl _width2RollingBack12
_width2RollingBack12:
	.byte	0
	.byte	63
	.byte	-15
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	-6
	.byte	99
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	-63
	.byte	18
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	-42
	.byte	-63
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	39
	.byte	0
	.byte	-1
	.byte	18
	.byte	81
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-18
	.byte	-81
	.byte	-1
	.byte	39
	.byte	0
	.byte	1
	.globl _height1FallingLeft12
_height1FallingLeft12:
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-15
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-24
	.byte	15
	.byte	-1
	.byte	-6
	.byte	-39
	.byte	0
	.byte	45
	.byte	39
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	0
	.byte	33
	.byte	24
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	0
	.byte	-30
	.byte	42
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	0
	.byte	-21
	.byte	18
	.byte	-1
	.byte	36
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-21
	.byte	18
	.byte	1
	.globl _height1FallingRight12
_height1FallingRight12:
	.byte	0
	.byte	48
	.byte	42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-24
	.byte	18
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	-48
	.byte	-42
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	15
	.byte	-60
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	30
	.byte	-42
	.byte	-1
	.byte	9
	.byte	42
	.byte	0
	.byte	-24
	.byte	18
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-24
	.byte	18
	.byte	1
	.globl _height1FallingBack12
_height1FallingBack12:
	.byte	0
	.byte	63
	.byte	-15
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	-15
	.byte	57
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	-63
	.byte	18
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	-33
	.byte	-21
	.byte	-1
	.byte	24
	.byte	-18
	.byte	0
	.byte	39
	.byte	0
	.byte	-1
	.byte	9
	.byte	39
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-39
	.byte	-1
	.byte	39
	.byte	0
	.byte	1
	.globl _height1FallingFront12
_height1FallingFront12:
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	39
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-39
	.byte	0
	.byte	-1
	.byte	-21
	.byte	18
	.byte	0
	.byte	30
	.byte	24
	.byte	-1
	.byte	-21
	.byte	18
	.byte	0
	.byte	60
	.byte	-18
	.byte	-1
	.byte	-24
	.byte	18
	.byte	0
	.byte	15
	.byte	-60
	.byte	-1
	.byte	-24
	.byte	18
	.byte	0
	.byte	-36
	.byte	0
	.byte	-1
	.byte	9
	.byte	42
	.byte	-1
	.byte	36
	.byte	0
	.byte	-1
	.byte	-9
	.byte	-42
	.byte	-1
	.byte	-36
	.byte	0
	.byte	1
	.globl _height2FallingLeft
	.area	.text
_height2FallingLeft:
	.word	_height2FallingLeft0
	.word	_height2FallingLeft1
	.word	_height2FallingLeft2
	.word	_height2FallingLeft3
	.word	_height2FallingLeft4
	.word	_height2FallingLeft5
	.word	_height2FallingLeft6
	.word	_height2FallingLeft7
	.word	_height2FallingLeft8
	.word	_height2FallingLeft9
	.word	_height2FallingLeft10
	.word	_height2FallingLeft11
	.globl _height2RisingRight
_height2RisingRight:
	.word	_height2RisingRight0
	.word	_height2RisingRight1
	.word	_height2RisingRight2
	.word	_height2RisingRight3
	.word	_height2RisingRight4
	.word	_height2RisingRight5
	.word	_height2RisingRight6
	.word	_height2RisingRight7
	.word	_height2RisingRight8
	.word	_height2RisingRight9
	.word	_height2RisingRight10
	.word	_height2RisingRight11
	.globl _height2FallingRight
_height2FallingRight:
	.word	_height2FallingRight0
	.word	_height2FallingRight1
	.word	_height2FallingRight2
	.word	_height2FallingRight3
	.word	_height2FallingRight4
	.word	_height2FallingRight5
	.word	_height2FallingRight6
	.word	_height2FallingRight7
	.word	_height2FallingRight8
	.word	_height2FallingRight9
	.word	_height2FallingRight10
	.word	_height2FallingRight11
	.globl _height2RisingLeft
_height2RisingLeft:
	.word	_height2RisingLeft0
	.word	_height2RisingLeft1
	.word	_height2RisingLeft2
	.word	_height2RisingLeft3
	.word	_height2RisingLeft4
	.word	_height2RisingLeft5
	.word	_height2RisingLeft6
	.word	_height2RisingLeft7
	.word	_height2RisingLeft8
	.word	_height2RisingLeft9
	.word	_height2RisingLeft10
	.word	_height2RisingLeft11
	.globl _height2FallingBack
_height2FallingBack:
	.word	_height2FallingBack0
	.word	_height2FallingBack1
	.word	_height2FallingBack2
	.word	_height2FallingBack3
	.word	_height2FallingBack4
	.word	_height2FallingBack5
	.word	_height2FallingBack6
	.word	_height2FallingBack7
	.word	_height2FallingBack8
	.word	_height2FallingBack9
	.word	_height2FallingBack10
	.word	_height2FallingBack11
	.globl _height2RisingFront
_height2RisingFront:
	.word	_height2RisingFront0
	.word	_height2RisingFront1
	.word	_height2RisingFront2
	.word	_height2RisingFront3
	.word	_height2RisingFront4
	.word	_height2RisingFront5
	.word	_height2RisingFront6
	.word	_height2RisingFront7
	.word	_height2RisingFront8
	.word	_height2RisingFront9
	.word	_height2RisingFront10
	.word	_height2RisingFront11
	.globl _height2FallingFront
_height2FallingFront:
	.word	_height2FallingFront0
	.word	_height2FallingFront1
	.word	_height2FallingFront2
	.word	_height2FallingFront3
	.word	_height2FallingFront4
	.word	_height2FallingFront5
	.word	_height2FallingFront6
	.word	_height2FallingFront7
	.word	_height2FallingFront8
	.word	_height2FallingFront9
	.word	_height2FallingFront10
	.word	_height2FallingFront11
	.globl _height2RisingBack
_height2RisingBack:
	.word	_height2RisingBack0
	.word	_height2RisingBack1
	.word	_height2RisingBack2
	.word	_height2RisingBack3
	.word	_height2RisingBack4
	.word	_height2RisingBack5
	.word	_height2RisingBack6
	.word	_height2RisingBack7
	.word	_height2RisingBack8
	.word	_height2RisingBack9
	.word	_height2RisingBack10
	.word	_height2RisingBack11
	.globl _depth2RollingLeft
_depth2RollingLeft:
	.word	_depth2RollingLeft0
	.word	_depth2RollingLeft1
	.word	_depth2RollingLeft2
	.word	_depth2RollingLeft3
	.word	_depth2RollingLeft4
	.word	_depth2RollingLeft5
	.word	_depth2RollingLeft6
	.word	_depth2RollingLeft7
	.word	_depth2RollingLeft8
	.word	_depth2RollingLeft9
	.word	_depth2RollingLeft10
	.word	_depth2RollingLeft11
	.globl _depth2RollingRight
_depth2RollingRight:
	.word	_depth2RollingRight0
	.word	_depth2RollingRight1
	.word	_depth2RollingRight2
	.word	_depth2RollingRight3
	.word	_depth2RollingRight4
	.word	_depth2RollingRight5
	.word	_depth2RollingRight6
	.word	_depth2RollingRight7
	.word	_depth2RollingRight8
	.word	_depth2RollingRight9
	.word	_depth2RollingRight10
	.word	_depth2RollingRight11
	.globl _width2RollingFront
_width2RollingFront:
	.word	_width2RollingFront0
	.word	_width2RollingFront1
	.word	_width2RollingFront2
	.word	_width2RollingFront3
	.word	_width2RollingFront4
	.word	_width2RollingFront5
	.word	_width2RollingFront6
	.word	_width2RollingFront7
	.word	_width2RollingFront8
	.word	_width2RollingFront9
	.word	_width2RollingFront10
	.word	_width2RollingFront11
	.globl _width2RollingBack
_width2RollingBack:
	.word	_width2RollingBack0
	.word	_width2RollingBack1
	.word	_width2RollingBack2
	.word	_width2RollingBack3
	.word	_width2RollingBack4
	.word	_width2RollingBack5
	.word	_width2RollingBack6
	.word	_width2RollingBack7
	.word	_width2RollingBack8
	.word	_width2RollingBack9
	.word	_width2RollingBack10
	.word	_width2RollingBack11
	.globl _height1FallingLeft
_height1FallingLeft:
	.word	_height1FallingLeft0
	.word	_height1FallingLeft1
	.word	_height1FallingLeft2
	.word	_height1FallingLeft3
	.word	_height1FallingLeft4
	.word	_height1FallingLeft5
	.word	_height1FallingLeft6
	.word	_height1FallingLeft7
	.word	_height1FallingLeft8
	.word	_height1FallingLeft9
	.word	_height1FallingLeft10
	.word	_height1FallingLeft11
	.globl _height1FallingRight
_height1FallingRight:
	.word	_height1FallingRight0
	.word	_height1FallingRight1
	.word	_height1FallingRight2
	.word	_height1FallingRight3
	.word	_height1FallingRight4
	.word	_height1FallingRight5
	.word	_height1FallingRight6
	.word	_height1FallingRight7
	.word	_height1FallingRight8
	.word	_height1FallingRight9
	.word	_height1FallingRight10
	.word	_height1FallingRight11
	.globl _height1FallingBack
_height1FallingBack:
	.word	_height1FallingBack0
	.word	_height1FallingBack1
	.word	_height1FallingBack2
	.word	_height1FallingBack3
	.word	_height1FallingBack4
	.word	_height1FallingBack5
	.word	_height1FallingBack6
	.word	_height1FallingBack7
	.word	_height1FallingBack8
	.word	_height1FallingBack9
	.word	_height1FallingBack10
	.word	_height1FallingBack11
	.globl _height1FallingFront
_height1FallingFront:
	.word	_height1FallingFront0
	.word	_height1FallingFront1
	.word	_height1FallingFront2
	.word	_height1FallingFront3
	.word	_height1FallingFront4
	.word	_height1FallingFront5
	.word	_height1FallingFront6
	.word	_height1FallingFront7
	.word	_height1FallingFront8
	.word	_height1FallingFront9
	.word	_height1FallingFront10
	.word	_height1FallingFront11
	.area .bss
	.globl	_blockOrientation
_blockOrientation:	.blkb	1
	.globl	_blockYOfs
_blockYOfs:	.blkb	1
	.globl	_lastBlockDirection
_lastBlockDirection:	.blkb	1
	.globl	_blockAnimating
_blockAnimating:	.blkb	1
	.globl	_splitMode
_splitMode:	.blkb	1
	.globl	_blockX
_blockX:	.blkb	1
	.globl	_blockY
_blockY:	.blkb	1
	.globl	_blockX2
_blockX2:	.blkb	1
	.globl	_blockY2
_blockY2:	.blkb	1
	.globl	_blockAnimation
_blockAnimation:	.blkb	2
	.globl	_nextBlockAnimation
_nextBlockAnimation:	.blkb	2
	.globl	_blockAnimationStep
_blockAnimationStep:	.blkb	1
	.globl	_nextBlockX
_nextBlockX:	.blkb	1
	.globl	_nextBlockY
_nextBlockY:	.blkb	1
