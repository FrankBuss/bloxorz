
;;; gcc for m6809 : Sep 13 2017 10:25:42
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	bloxorz.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report
;  -I/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf
;  -DOMMIT_FRAMEPOINTER=1
;  -I/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/include
;  /home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c
;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
;  -fcrossjumping -fcse-follow-jumps -fdefer-pop
;  -fdelete-null-pointer-checks -fearly-inlining
;  -feliminate-unused-debug-types -fexpensive-optimizations
;  -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
;  -finline-functions -finline-functions-called-once
;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;  -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
;  -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
;  -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
;  -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
;  -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
;  -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
;  -fverbose-asm -fzero-initialized-in-bss

;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f

	.area .text
	.globl _isField
_isField:
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  c,
	beq	L2	; 
	cmpb	#97	;cmpqi:	;  c,
	beq	L2	; 
	eorb	#111	;  c,
	clra		;zero_extendqihi: R:b -> R:d	;  c, tmp32
	addd	#-1	;  tmp33,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	rts
L2:
	ldb	#1	;  prephitmp.116,
	rts
	.globl _x3d
_x3d:
	pshs	y	; 
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , z
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp32
	ldb	,s	; , x
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp34
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp32,
	stb	,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp34,
	stb	1,s	; ,
	ldb	,s	; ,
	addb	1,s	; ,
	leas	2,s	; ,,
	puls	y,pc	; 
	.globl _y3d
_y3d:
	pshs	b	; 
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , y
	addb	#-8	; ,
	lda	#13	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp33
	asl	4,s	;  z
	asl	4,s	;  z
	asl	4,s	;  z
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
	addb	4,s	;  tmp36, z
	stb	4,s	;  tmp36, z
	ldb	,s	;  tmp38, x
	aslb	;  tmp38
	addb	,s	;  tmp38, x
	addb	4,s	;  tmp38, z
	stb	4,s	;  tmp38, z
	leas	1,s	; ,,
	rts
	.globl _addLine
_addLine:
	pshs	y,u	; 
	leas	-4,s	; ,,
	stb	2,s	;  x0, x0
;----- asm -----
;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	3,s	; , lineCount.51
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,y	; , lineCount.51
	ldb	10,s	; , y0
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp35
	ldb	2,s	; , x0
	addb	#-2	; ,
	stb	2,s	; , x0
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp37
	ldb	2,s	; , x0
	addb	#2	; ,
	stb	2,s	; , x0
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp35,
	stb	1,s	; ,
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp37, tmp39
	addb	1,s	;  tmp39,
	stb	_lineX0,y	;  tmp39, lineX0
;----- asm -----
;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	2,s	;  tmp44, x0
	aslb	;  tmp44
	addb	2,s	;  tmp44, x0
	addb	#-104	;  tmp44,
	asl	10,s	;  y0
	asl	10,s	;  y0
	asl	10,s	;  y0
	addb	10,s	;  tmp44, y0
	stb	_lineY0,y	;  tmp44, lineY0
;----- asm -----
;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	12,s	; , y1
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp51
	ldb	11,s	; , x1
	addb	#-2	; ,
	stb	11,s	; , x1
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp53
	ldb	11,s	; , x1
	addb	#2	; ,
	stb	11,s	; , x1
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp51,
	stb	,s	; ,
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp53, tmp55
	addb	,s	;  tmp55,
	stb	_lineX1,y	;  tmp55, lineX1
;----- asm -----
;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	11,s	;  tmp60, x1
	aslb	;  tmp60
	addb	11,s	;  tmp60, x1
	addb	#-104	;  tmp60,
	asl	12,s	;  y1
	asl	12,s	;  y1
	asl	12,s	;  y1
	addb	12,s	;  tmp60, y1
	stb	_lineY1,y	;  tmp60, lineY1
;----- asm -----
;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , lineCount.51
	incb	; 
	stb	_lineCount	; , lineCount
	leas	4,s	; ,,
	puls	y,u,pc	; 
	.globl _addTarget
_addTarget:
	pshs	u	; 
	leas	-13,s	; ,,
	stb	1,s	;  x, x
;----- asm -----
;  216 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[204]	lineX0[lineCount] = x3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	2,s	; , lineCount.53
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , x
	addb	#-2	; ,
	stb	1,s	; , x
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp42
	ldb	1,s	; , x
	addb	#2	; ,
	stb	1,s	; , x
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp42,
	stb	7,s	; , D.2405
	ldb	17,s	; , y
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp43
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp43,
	stb	6,s	; , D.2406
	ldb	2,s	; , lineCount.53
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.53
	ldb	6,s	; , D.2406
	addb	7,s	; , D.2405
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  218 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[205]	lineY0[lineCount] = y3d(x, 0, y);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , x
	aslb	; 
	addb	1,s	; , x
	addb	#-104	; ,
	stb	9,s	; , D.2414
	ldb	17,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	stb	8,s	; , D.2415
	addb	9,s	; , D.2414
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  220 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[206]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	17,s	; , y
	incb	; 
	stb	3,s	; , D.2079
	ldb	1,s	; , x
	incb	; 
	stb	4,s	; , D.2080
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	dec	1,s	;  x
	ldb	1,s	; , x
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp54
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp54,
	stb	11,s	; , D.2421
	ldb	3,s	; , D.2079
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp55
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp55,
	stb	10,s	; , D.2422
	addb	11,s	; , D.2421
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  222 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[207]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , D.2080
	aslb	; 
	addb	4,s	; , D.2080
	addb	#-104	; ,
	stb	,s	; , D.2430
	ldb	3,s	; , D.2079
	aslb	; 
	aslb	; 
	aslb	; 
	stb	12,s	; , D.2431
	ldb	,s	; , D.2430
	addb	12,s	; , D.2431
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  224 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[208]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , lineCount.53
	incb	; 
	stb	5,s	; , lineCount.54
;----- asm -----
;  226 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[209]	lineX0[lineCount] = x3d(x + 1, 0, y);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.54
	ldb	11,s	; , D.2421
	addb	6,s	; , D.2406
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  228 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[210]	lineY0[lineCount] = y3d(x + 1, 0, y);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.2430
	addb	8,s	; , D.2415
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  230 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[211]	lineX1[lineCount] = x3d(x, 0, y + 1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , D.2422
	addb	7,s	; , D.2405
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  232 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	lineY1[lineCount] = y3d(x, 0, y + 1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	12,s	; , D.2431
	addb	9,s	; , D.2414
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  234 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , lineCount.54
	incb	; 
	stb	_lineCount	; , lineCount
	leas	13,s	; ,,
	puls	u,pc	; 
	.globl _changeMusic
_changeMusic:
;----- asm -----
;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[296]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[297]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _moveBlock
_moveBlock:
	pshs	b	; 
;----- asm -----
;  366 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[302]	blockAnimating = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockAnimating	; , blockAnimating
;----- asm -----
;  368 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[303]	lastBlockDirection = move;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	stb	_lastBlockDirection	; , lastBlockDirection
;----- asm -----
;  370 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[304]	switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lbeq	L20	; 
	blo	L19	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbeq	L38	; 
	leas	1,s	; ,,
	rts
L19:
;----- asm -----
;  374 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[306]		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L24	; 
	lbhs	L39	; 
;----- asm -----
;  378 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[308]			blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  380 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[309]			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  382 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[310]			nextBlockX = blockX - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#-2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  384 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[311]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  386 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[312]			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  388 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[313]			break;
;  0 "" 2
;--- end asm ---
L22:
;----- asm -----
;  433 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[336]		break;
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
L20:
;----- asm -----
;  437 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[338]		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L29	; 
	lbhs	L40	; 
;----- asm -----
;  441 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[340]			blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  443 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[341]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  445 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[342]			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  447 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[343]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  449 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[344]			break;
;  0 "" 2
;--- end asm ---
L27:
;----- asm -----
;  492 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[366]		break;
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
L38:
;----- asm -----
;  496 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[368]		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L34	; 
	lbhs	L41	; 
;----- asm -----
;  500 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[370]			blockAnimation = height2RisingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  502 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[371]			nextBlockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  504 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[372]			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  506 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[373]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  508 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[374]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  510 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[375]			break;
;  0 "" 2
;--- end asm ---
L32:
;----- asm -----
;  551 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[396]		break;
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
L34:
;----- asm -----
;  528 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[384]			blockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  530 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[385]			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  532 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[386]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  534 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[387]			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  536 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[388]			break;
;  0 "" 2
;--- end asm ---
	bra	L32	; 
L29:
;----- asm -----
;  465 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[352]			blockAnimation = height2RisingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  467 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[353]			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  469 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[354]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  471 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[355]			nextBlockY = blockY + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  473 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[356]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  475 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[357]			break;
;  0 "" 2
;--- end asm ---
	jmp	L27	; 
L24:
;----- asm -----
;  406 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[322]			blockAnimation = height2FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  408 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[323]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  410 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[324]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  412 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[325]			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  414 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[326]			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  416 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[327]			break;
;  0 "" 2
;--- end asm ---
	jmp	L22	; 
L40:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L30	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L27	; 
;----- asm -----
;  479 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[359]			blockAnimation = height2RisingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  481 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[360]			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  483 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[361]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  485 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[362]			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  487 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[363]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  489 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[364]			break;
;  0 "" 2
;--- end asm ---
	jmp	L27	; 
L39:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L25	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L22	; 
;----- asm -----
;  420 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[329]			blockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  422 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[330]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  424 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[331]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  426 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[332]			nextBlockY = blockY - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#-2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  428 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[333]			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  430 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[334]			break;
;  0 "" 2
;--- end asm ---
	jmp	L22	; 
L41:
	cmpb	#2	;cmpqi:	; ,
	beq	L35	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L32	; 
;----- asm -----
;  540 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[390]			blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  542 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[391]			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  544 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[392]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[393]			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  548 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[394]			break;
;  0 "" 2
;--- end asm ---
	jmp	L32	; 
L35:
;----- asm -----
;  514 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[377]			blockAnimation = height2RisingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  516 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[378]			nextBlockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  518 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[379]			nextBlockX = blockX + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  520 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[380]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  522 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[381]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[382]			break;
;  0 "" 2
;--- end asm ---
	jmp	L32	; 
L25:
;----- asm -----
;  392 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[315]			blockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  394 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[316]			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  396 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[317]			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  398 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[318]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  400 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[319]			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  402 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[320]			break;
;  0 "" 2
;--- end asm ---
	jmp	L22	; 
L30:
;----- asm -----
;  453 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[346]			blockAnimation = depth2RollingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  455 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[347]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  457 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[348]			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  459 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[349]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  461 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[350]			break;
;  0 "" 2
;--- end asm ---
	jmp	L27	; 
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  558 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[402]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  560 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[403]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  562 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[404]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  564 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[405]	changeMusic(fallingMusic);
;  0 "" 2
;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[296]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[297]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	stx	_currentMusic	; , currentMusic
	rts
	.globl _drawField
_drawField:
;----- asm -----
;  611 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[435]	intens(0x55);
;  0 "" 2
;--- end asm ---
	ldb	#85	;  a.49,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a.49
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  626 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs a, b, dp, x, u
;  0 "" 2
;  627 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda #0xd0
;  0 "" 2
;  628 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		tfr a, dp
;  0 "" 2
;  629 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldx #0
;  0 "" 2
;  630 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldb _lineCount
;  0 "" 2
;  631 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	drawFieldLoop:
;  0 "" 2
;  632 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs b
;  0 "" 2
;  633 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  634 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		jsr 0xf354
;  0 "" 2
;  635 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  636 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda _lineY0,x
;  0 "" 2
;  637 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldb _lineX0,x
;  0 "" 2
;  638 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  639 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		jsr 0xf2fc
;  0 "" 2
;  640 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  641 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda _lineY1,x
;  0 "" 2
;  642 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldb _lineX1,x
;  0 "" 2
;  643 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		suba _lineY0,x
;  0 "" 2
;  644 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		subb _lineX0,x
;  0 "" 2
;  645 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  646 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		jsr 0xf3df
;  0 "" 2
;  647 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  648 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda ,x+
;  0 "" 2
;  649 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls b
;  0 "" 2
;  650 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		decb
;  0 "" 2
;  651 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		bne drawFieldLoop
;  0 "" 2
;  652 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls a, b, dp, x, u
;  0 "" 2
;--- end asm ---
	rts
	.globl _drawBlock
_drawBlock:
	pshs	u	; 
	leas	-8,s	; ,,
	stb	4,s	;  yofs, yofs
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a.49,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a.49
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , yofs
	stb	7,s	; , a
	clr	6,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 7,s	;  a
	ldb 6,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	5,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	5,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp40, blockY
	aslb	;  tmp40
	aslb	;  tmp40
	aslb	;  tmp40
	addb	3,s	;  tmp40,
	addb	#-104	;  tmp40,
	stb	3,s	;  tmp40,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp43
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp44
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp43,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp44, tmp46
	addb	2,s	;  tmp46,
	stb	2,s	;  tmp46,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	6,s	; , a
	ldb	2,s	; ,
	stb	7,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 6,s	;  a
	ldb 7,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp50, tmp49,
	ldx	,x	;  x.25,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;--- end asm ---
	leas	8,s	; ,,
	puls	u,pc	; 
	.globl _doBlockAnimation
_doBlockAnimation:
;----- asm -----
;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[525]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L50	; 
;----- asm -----
;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
	beq	L51	; 
L50:
	rts
L51:
;----- asm -----
;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[527]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[528]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[531]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	rts
	.globl _setupY
_setupY:
	pshs	y,u	; 
	leas	-14,s	; ,,
;----- asm -----
;  313 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[267]	unsigned long int index;
;  0 "" 2
;  315 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	int8_t x = 0;
;  0 "" 2
;  317 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	int8_t y = 0;
;  0 "" 2
;  319 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[270]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldx	_level	; , level
	stx	12,s	; , ivtmp.299
	leay	,x	;  ivtmp.300,
	ldb	#-14	; ,
	stb	11,s	; , ivtmp.295
L59:
;----- asm -----
;  321 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[271]		int8_t y0 = -1;
;  0 "" 2
;  323 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[272]		int8_t y1 = -1;
;  0 "" 2
;  325 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[273]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	ldd	12,s	; , ivtmp.299
	stb	2,s	;movlsbqihi: R:d -> 2,s	; ,
	ldb	2,s	; ,
	aslb	; 
	stb	10,s	; , D.2871
	ldb	2,s	; ,
	addb	10,s	; , D.2871
	stb	10,s	; , D.2871
	neg	10,s	;  D.2871
	ldb	10,s	; , D.2871
	addb	#-101	; ,
	stb	10,s	; , D.2871
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  ivtmp.300,
	stb	3,s	; ,
	aslb	;  tmp111
	addb	3,s	;  tmp111,
	addb	10,s	;  tmp111, D.2871
	stb	10,s	;  tmp111, D.2871
	leau	,y	;  ivtmp.301, ivtmp.300
	clr	5,s	;  y
	ldb	#-1	; ,
	stb	6,s	; , y0
	stb	7,s	; , y1
	jmp	L58	; 
L69:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L53	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L53	; 
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L53	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L53	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L53	; 
;----- asm -----
;  344 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[285]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L57	; 
;----- asm -----
;  346 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[286]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , y1
	incb	; 
	stb	4,s	; , D.2142
;----- asm -----
;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	9,s	; , lineCount.51
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.51
	ldb	6,s	; , y0
	lda	#-6	;mulqihi3	; 
	mul
		;movlsbqihi: D->B
	addb	11,s	;  tmp117, ivtmp.295
	stb	_lineX0,x	;  tmp117, lineX0
;----- asm -----
;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  y0
	asl	6,s	;  y0
	asl	6,s	;  y0
	ldb	6,s	; , y0
	addb	10,s	; , D.2871
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , D.2142
	lda	#-6	;mulqihi3	; 
	mul
	std	,s	; ,
		;movlsbqihi: D->B
	addb	11,s	;  tmp126, ivtmp.295
	stb	_lineX1,x	;  tmp126, lineX1
;----- asm -----
;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	4,s	;  D.2142
	asl	4,s	;  D.2142
	asl	4,s	;  D.2142
	ldb	4,s	; , D.2142
	addb	10,s	; , D.2871
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , lineCount.51
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  348 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[287]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	6,s	; , y0
L57:
	inc	5,s	;  y
	leau	12,u	;  ivtmp.301,, ivtmp.301
	ldb	5,s	; , y
	cmpb	#17	;cmpqi:	; ,
	lbeq	L68	; 
L58:
;----- asm -----
;  331 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[278]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  333 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[279]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	; ,* ivtmp.301
	stb	2,s	; , c0
;----- asm -----
;  335 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[280]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	1,u	; ,
	stb	8,s	; , c1
;----- asm -----
;  337 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L69	; 
L53:
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[282]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	beq	L70	; 
L56:
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[283]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y
	stb	7,s	; , y1
	inc	5,s	;  y
	leau	12,u	;  ivtmp.301,, ivtmp.301
	ldb	5,s	; , y
	cmpb	#17	;cmpqi:	; ,
	lbne	L58	; 
L68:
	ldb	11,s	; , ivtmp.295
	addb	#14	; ,
	stb	11,s	; , ivtmp.295
	leay	1,y	;  ivtmp.300,, ivtmp.300
	cmpb	#-116	;cmpqi:	; ,
	lbne	L59	; 
	leas	14,s	; ,,
	puls	y,u,pc	; 
L70:
	ldb	5,s	; , y
	stb	6,s	; , y0
	bra	L56	; 
	.globl _setupX
_setupX:
	pshs	y,u	; 
	leas	-22,s	; ,,
;----- asm -----
;  250 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	unsigned long int index;
;  0 "" 2
;  252 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	int8_t x = 0;
;  0 "" 2
;  254 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]	int8_t y = 0;
;  0 "" 2
;  256 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
;  0 "" 2
;--- end asm ---
	ldx	_level	; , level
	stx	20,s	; , ivtmp.351
	clr	8,s	;  y
	clr	19,s	;  ivtmp.347
L80:
;----- asm -----
;  258 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]		int8_t x0 = -1;
;  0 "" 2
;  260 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]		int8_t x1 = -1;
;  0 "" 2
;  262 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[234]		for (x = 0; x < LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , ivtmp.347
	addb	#-6	; ,
	stb	4,s	; ,
	ldb	8,s	; , y
	addb	#20	; ,
	stb	8,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	stb	15,s	; , D.3011
	ldb	8,s	; , y
	addb	#-20	; ,
	stb	8,s	; , y
	ldb	19,s	; , ivtmp.347
	addb	#-20	; ,
	stb	16,s	; , ivtmp.332
	ldy	20,s	;  ivtmp.355, ivtmp.351
	ldb	#-1	; ,
	stb	9,s	; , x0
	stb	10,s	; , x1
	ldu	#0	;  ivtmp.319,
	ldb	8,s	; , y
	incb	; 
	stb	3,s	; ,
	jmp	L79	; 
L73:
;----- asm -----
;  287 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[249]			index += LEVEL_WIDTH;
;  0 "" 2
;  289 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]			char c1 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	12,y	; ,
	stb	2,s	; , c1
;----- asm -----
;  291 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[251]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	11,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbeq	L74	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L74	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L74	; 
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L74	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L74	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L74	; 
;----- asm -----
;  298 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[255]				if (x0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L78	; 
;----- asm -----
;  300 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[256]					addLine(x0, y + 1, x1 + 1, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , x1
	incb	; 
	stb	6,s	; , D.2114
;----- asm -----
;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	14,s	; , lineCount.51
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.51
	ldb	9,s	; , x0
	addb	#-2	; ,
	stb	9,s	; , x0
	lda	#14	;mulqihi3	; 
	mul
	std	,s	; ,
	ldb	9,s	; , x0
	addb	#2	; ,
	stb	9,s	; , x0
	ldb	1,s	;movlsbqihi: msb:,s -> R:b	;  tmp329,
	addb	4,s	;  tmp329,
	stb	_lineX0,x	;  tmp329, lineX0
;----- asm -----
;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	9,s	;  tmp334, x0
	aslb	;  tmp334
	addb	9,s	;  tmp334, x0
	addb	15,s	;  tmp334, D.3011
	stb	_lineY0,x	;  tmp334, lineY0
;----- asm -----
;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	dec	10,s	;  x1
	ldb	10,s	; , x1
	lda	#14	;mulqihi3	; 
	mul
	std	,s	; ,
	inc	10,s	;  x1
		;movlsbqihi: D->B
	addb	4,s	;  tmp341,
	stb	_lineX1,x	;  tmp341, lineX1
;----- asm -----
;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	6,s	;  tmp346, D.2114
	aslb	;  tmp346
	addb	6,s	;  tmp346, D.2114
	addb	15,s	;  tmp346, D.3011
	stb	_lineY1,x	;  tmp346, lineY1
;----- asm -----
;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	14,s	; , lineCount.51
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  302 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[257]					x0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	9,s	; , x0
L78:
	leau	1,u	;  ivtmp.319,, ivtmp.319
	leay	1,y	;  ivtmp.355,, ivtmp.355
	ldb	16,s	; , ivtmp.332
	addb	#14	; ,
	stb	16,s	; , ivtmp.332
	cmpu	#12	;cmphi:	;  ivtmp.319,
	lbeq	L89	; 
L79:
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.319,
	stb	7,s	; , x
;----- asm -----
;  265 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[236]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  267 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[237]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	,y	; ,* ivtmp.355
	stb	11,s	; , c0
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[239]			if (c0 == 'o') {
;  0 "" 2
;--- end asm ---
	cmpb	#111	;cmpqi:	; ,
	beq	L90	; 
L72:
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]			if (c0 == 'a') {
;  0 "" 2
;--- end asm ---
	cmpb	#97	;cmpqi:	; ,
	lbne	L73	; 
;----- asm -----
;  281 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]				startX = x;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	stb	_startX	; , startX
;----- asm -----
;  283 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]				startY = y;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , y
	stb	_startY	; , startY
	jmp	L73	; 
L74:
;----- asm -----
;  293 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[252]				if (x0 < 0) x0 = x;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	beq	L91	; 
L77:
;----- asm -----
;  295 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]				x1 = x;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	stb	10,s	; , x1
	jmp	L78	; 
L91:
	ldb	7,s	; , x
	stb	9,s	; , x0
	bra	L77	; 
L90:
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[240]				addTarget(x, y);
;  0 "" 2
;  216 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[204]	lineX0[lineCount] = x3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	12,s	; , lineCount.53
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	lda	#14	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp289
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp289,
	stb	17,s	; , D.3060
	ldb	12,s	; , lineCount.53
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.53
	ldb	19,s	; , ivtmp.347
	addb	#-28	; ,
	stb	19,s	; , ivtmp.347
	addb	17,s	; , D.3060
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  218 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[205]	lineY0[lineCount] = y3d(x, 0, y);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	aslb	; 
	addb	7,s	; , x
	stb	5,s	; ,
	ldb	8,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	addb	#-104	; ,
	stb	18,s	; , D.3066
	addb	5,s	; ,
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  220 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[206]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	16,s	; , ivtmp.332
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  222 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[207]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	aslb	; 
	aslb	; 
	aslb	; 
	addb	#-101	; ,
	stb	2,s	; , D.3071
	addb	5,s	; ,
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  224 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[208]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	12,s	; , lineCount.53
	incb	; 
	stb	13,s	; , lineCount.54
;----- asm -----
;  226 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[209]	lineX0[lineCount] = x3d(x + 1, 0, y);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.54
	ldb	19,s	; , ivtmp.347
	addb	#14	; ,
	stb	19,s	; , ivtmp.347
	ldb	17,s	; , D.3060
	addb	19,s	; , ivtmp.347
	stb	_lineX0,x	; , lineX0
	ldb	19,s	; , ivtmp.347
	addb	#14	; ,
	stb	19,s	; , ivtmp.347
;----- asm -----
;  228 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[210]	lineY0[lineCount] = y3d(x + 1, 0, y);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	18,s	; , D.3066
	addb	#3	; ,
	stb	18,s	; , D.3066
	ldb	5,s	; ,
	addb	18,s	; , D.3066
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  230 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[211]	lineX1[lineCount] = x3d(x, 0, y + 1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	16,s	; , ivtmp.332
	addb	#-14	; ,
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  232 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	lineY1[lineCount] = y3d(x, 0, y + 1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , D.3071
	addb	#-3	; ,
	addb	5,s	; ,
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  234 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	13,s	; , lineCount.54
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  274 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[241]				endX = x;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  ivtmp.319,
	stb	_endX	;movlsbqihi: R:d -> _endX	;  endX,
;----- asm -----
;  276 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]				endY = y;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , y
	stb	_endY	; , endY
	ldb	11,s	; , c0
	jmp	L72	; 
L89:
	ldb	3,s	; ,
	stb	8,s	; , y
	ldb	4,s	; ,
	stb	19,s	; , ivtmp.347
	ldd	20,s	; , ivtmp.351
	addd	#12	; ,
	std	20,s	; , ivtmp.351
	ldb	8,s	; , y
	cmpb	#16	;cmpqi:	; ,
	lbne	L80	; 
	leas	22,s	; ,,
	puls	y,u,pc	; 
	.globl _blockMoving
_blockMoving:
	pshs	u	; 
	leas	-13,s	; ,,
;----- asm -----
;  746 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[538]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  748 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[539]	drawBlock(0);
;  0 "" 2
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	clr	12,s	;  a
	clr	11,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 12,s	;  a
	ldb 11,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	8,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	8,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp48, blockY
	aslb	;  tmp48
	aslb	;  tmp48
	aslb	;  tmp48
	addb	3,s	;  tmp48,
	addb	#-104	;  tmp48,
	stb	3,s	;  tmp48,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp51
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp52
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp51,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp52, tmp54
	addb	2,s	;  tmp54,
	stb	2,s	;  tmp54,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	11,s	; , a
	ldb	2,s	; ,
	stb	12,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 11,s	;  a
	ldb 12,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp58, tmp57,
	ldx	,x	;  D.3148,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  750 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[540]	doBlockAnimation();
;  0 "" 2
;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[525]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L93	; 
;----- asm -----
;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
	lbeq	L115	; 
L93:
;----- asm -----
;  752 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[541]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L114	; 
;----- asm -----
;  758 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[546]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	lda	#12	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp60
	ldb	_blockX	; , blockX
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , blockX
	tfr	u,d	;  tmp60,
	leax	d,x	; ,, blockX
	stx	,s	; , index
;----- asm -----
;  760 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[547]		char c0 = isField(level[index]);
;  0 "" 2
;--- end asm ---
	exg	d,x	; , tmp70
	addd	_level	; , level
	exg	d,x	; , tmp70
	ldb	,x	;  D.2252,
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2252,
	lbeq	L95	; 
	cmpb	#97	;cmpqi:	;  D.2252,
	lbeq	L95	; 
	eorb	#111	;  D.2252,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2252, tmp72
	addd	#-1	;  tmp73,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	10,s	; , prephitmp.370
L97:
;----- asm -----
;  762 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[548]		char c1 = isField(level[index+1]);
;  0 "" 2
;--- end asm ---
	ldb	1,x	;  D.2256,
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2256,
	lbeq	L98	; 
	cmpb	#97	;cmpqi:	;  D.2256,
	lbeq	L98	; 
	eorb	#111	;  D.2256,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2256, tmp76
	addd	#-1	;  tmp77,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	5,s	; , iftmp.50
L100:
;----- asm -----
;  764 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[549]		char c2 = isField(level[index + LEVEL_WIDTH]);
;  0 "" 2
;--- end asm ---
	ldb	12,x	;  D.2260,
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2260,
	beq	L101	; 
	cmpb	#97	;cmpqi:	;  D.2260,
	beq	L101	; 
	eorb	#111	;  D.2260,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2260, tmp80
	addd	#-1	;  tmp81,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	7,s	; , iftmp.50
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[550]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L106	; 
L118:
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lblo	L105	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbeq	L116	; 
L104:
;----- asm -----
;  798 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[569]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L113	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	lbeq	L117	; 
L113:
;----- asm -----
;  808 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[575]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	beq	L114	; 
;----- asm -----
;  810 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[576]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L114:
	leas	13,s	; ,,
	puls	u,pc	; 
L95:
	ldb	#1	; ,
	stb	10,s	; , prephitmp.370
	jmp	L97	; 
L101:
	ldb	#1	; ,
	stb	7,s	; , iftmp.50
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[550]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	bne	L118	; 
L106:
;----- asm -----
;  779 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[557]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	10,s	;  prephitmp.370
	beq	L109	; 
	tst	7,s	;  iftmp.50
	bne	L110	; 
L109:
;----- asm -----
;  781 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[558]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L110:
;----- asm -----
;  784 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]			break;
;  0 "" 2
;--- end asm ---
	jmp	L104	; 
L98:
	ldb	#1	; ,
	stb	5,s	; , iftmp.50
	jmp	L100	; 
L105:
;----- asm -----
;  770 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[552]			if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	10,s	;  prephitmp.370
	lbeq	L119	; 
L108:
;----- asm -----
;  775 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[555]			break;
;  0 "" 2
;--- end asm ---
	jmp	L104	; 
L115:
;----- asm -----
;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[527]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[528]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[531]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L93	; 
L116:
;----- asm -----
;  788 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[562]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	10,s	;  prephitmp.370
	beq	L111	; 
	tst	5,s	;  iftmp.50
	bne	L112	; 
L111:
;----- asm -----
;  790 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L112:
;----- asm -----
;  793 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]			break;
;  0 "" 2
;--- end asm ---
	jmp	L104	; 
L117:
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	lbne	L113	; 
;----- asm -----
;  800 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[570]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  802 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[571]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  804 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[572]			changeMusic(levelEndMusic);
;  0 "" 2
;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[296]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[297]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	stx	_currentMusic	; , currentMusic
	jmp	L114	; 
L119:
;----- asm -----
;  772 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[553]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L108	; 
	.globl _blockMovingToStart
_blockMovingToStart:
	pshs	u	; 
	leas	-8,s	; ,,
;----- asm -----
;  674 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[492]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  676 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[493]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	4,s	; , blockYOfs.81
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , blockYOfs.81
	stb	7,s	; , a
	clr	6,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 7,s	;  a
	ldb 6,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	5,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	5,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp41, blockY
	aslb	;  tmp41
	aslb	;  tmp41
	aslb	;  tmp41
	addb	3,s	;  tmp41,
	addb	#-104	;  tmp41,
	stb	3,s	;  tmp41,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp44
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp45
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp44,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp45, tmp47
	addb	2,s	;  tmp47,
	stb	2,s	;  tmp47,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	6,s	; , a
	ldb	2,s	; ,
	stb	7,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 6,s	;  a
	ldb 7,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp51, tmp50,
	ldx	,x	;  D.3218,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  678 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[494]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.82, blockYOfs
;----- asm -----
;  680 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[495]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.82
	bne	L122	; 
;----- asm -----
;  682 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[496]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L122:
	leas	8,s	; ,,
	puls	u,pc	; 
	.globl _blockWaiting
_blockWaiting:
	pshs	u	; 
	leas	-7,s	; ,,
;----- asm -----
;  689 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[502]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  691 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[503]	drawBlock(0);
;  0 "" 2
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	clr	6,s	;  a
	clr	5,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 6,s	;  a
	ldb 5,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	4,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	4,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp43, blockY
	aslb	;  tmp43
	aslb	;  tmp43
	aslb	;  tmp43
	addb	3,s	;  tmp43,
	addb	#-104	;  tmp43,
	stb	3,s	;  tmp43,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp46
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp47
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp46,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp47, tmp49
	addb	2,s	;  tmp49,
	stb	2,s	;  tmp49,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	5,s	; , a
	ldb	2,s	; ,
	stb	6,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 5,s	;  a
	ldb 6,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp53, tmp52,
	ldx	,x	;  D.3267,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  693 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[504]	joybit();
;  0 "" 2
;  359 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF1F8; Vec_Sub_JOYBIT
	
;  0 "" 2
;  695 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[505]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2220,
	cmpb	#-10	;cmpqi:	;  D.2220,
	lblt	L130	; 
	ldb	-14309	;  D.2221,
	cmpb	#10	;cmpqi:	;  D.2221,
	bgt	L131	; 
	ldb	-14308	;  D.2223,
	cmpb	#-10	;cmpqi:	;  D.2223,
	lblt	L132	; 
	ldb	-14308	;  D.2224,
	cmpb	#10	;cmpqi:	;  D.2224,
	lbgt	L133	; 
L125:
;----- asm -----
;  717 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[518]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#2	;cmpqi:	; ,
	bne	L129	; 
;----- asm -----
;  719 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[519]		changeMusic(movingMusic);
;  0 "" 2
;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[296]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[297]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	stx	_currentMusic	; , currentMusic
L129:
	leas	7,s	; ,,
	puls	u,pc	; 
L131:
;----- asm -----
;  702 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[509]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  704 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[510]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	bra	L125	; 
L130:
;----- asm -----
;  697 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[506]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  699 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[507]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	jmp	L125	; 
L132:
;----- asm -----
;  707 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[512]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  709 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[513]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	jmp	L125	; 
L133:
;----- asm -----
;  712 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[515]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  714 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[516]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	jmp	L125	; 
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-12,s	; ,,
;----- asm -----
;  570 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[410]	if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.71, levelNumber
	lbeq	L152	; 
	cmpb	#1	;cmpqi:	;  levelNumber.71,
	lbeq	L153	; 
;----- asm -----
;  578 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[415]		level = level2;
;  0 "" 2
;--- end asm ---
	ldx	_level2	; , level2
	stx	_level	; , level
L136:
;----- asm -----
;  581 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[417]	lineCount = 0;
;  0 "" 2
;--- end asm ---
	clr	_lineCount	;  lineCount
;----- asm -----
;  583 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[418]	setupX();
;  0 "" 2
;--- end asm ---
	jsr	_setupX	; 
;----- asm -----
;  585 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[419]	setupY();
;  0 "" 2
;  313 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[267]	unsigned long int index;
;  0 "" 2
;  315 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	int8_t x = 0;
;  0 "" 2
;  317 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	int8_t y = 0;
;  0 "" 2
;  319 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[270]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldy	_level	;  ivtmp.448, level
	clr	4,s	;  x
	ldb	4,s	; , x
L144:
;----- asm -----
;  321 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[271]		int8_t y0 = -1;
;  0 "" 2
;  323 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[272]		int8_t y1 = -1;
;  0 "" 2
;  325 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[273]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	lda	#14	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp79
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp79,
	addb	#-14	; ,
	stb	8,s	; , D.3327
	ldb	4,s	; , x
	aslb	; 
	addb	4,s	; , x
	addb	#-101	; ,
	stb	9,s	; , D.3330
	leau	,y	;  ivtmp.451, ivtmp.448
	clr	5,s	;  y0
	ldb	#-1	; ,
	stb	10,s	; , y0.449
	stb	11,s	; , y0.450
	jmp	L143	; 
L155:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L138	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L138	; 
;----- asm -----
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L138	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L138	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L138	; 
;----- asm -----
;  344 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[285]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , y0.449
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L142	; 
;----- asm -----
;  346 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[286]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	ldb	11,s	; , y0.450
	incb	; 
	stb	3,s	; , D.3304
;----- asm -----
;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	7,s	; , lineCount.51
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.51
	ldb	10,s	; , y0.449
	lda	#-6	;mulqihi3	; 
	mul
		;movlsbqihi: D->B
	addb	8,s	;  tmp88, D.3327
	stb	_lineX0,x	;  tmp88, lineX0
;----- asm -----
;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	10,s	;  y0.449
	asl	10,s	;  y0.449
	asl	10,s	;  y0.449
	ldb	10,s	; , y0.449
	addb	9,s	; , D.3330
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , D.3304
	lda	#-6	;mulqihi3	; 
	mul
	std	,s	; ,
		;movlsbqihi: D->B
	addb	8,s	;  tmp97, D.3327
	stb	_lineX1,x	;  tmp97, lineX1
;----- asm -----
;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	3,s	;  D.3304
	asl	3,s	;  D.3304
	asl	3,s	;  D.3304
	ldb	3,s	; , D.3304
	addb	9,s	; , D.3330
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , lineCount.51
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  348 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[287]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	10,s	; , y0.449
L142:
	inc	5,s	;  y0
	leau	12,u	;  ivtmp.451,, ivtmp.451
	ldb	5,s	; , y0
	cmpb	#17	;cmpqi:	; ,
	lbeq	L154	; 
L143:
;----- asm -----
;  331 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[278]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  333 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[279]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	; ,* ivtmp.451
	stb	2,s	; , c0
;----- asm -----
;  335 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[280]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	1,u	; ,
	stb	6,s	; , c1
;----- asm -----
;  337 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L155	; 
L138:
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[282]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , y0.449
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L156	; 
L141:
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[283]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y0
	stb	11,s	; , y0.450
	inc	5,s	;  y0
	leau	12,u	;  ivtmp.451,, ivtmp.451
	ldb	5,s	; , y0
	cmpb	#17	;cmpqi:	; ,
	lbne	L143	; 
L154:
	inc	4,s	;  x
	leay	1,y	;  ivtmp.448,, ivtmp.448
	ldb	4,s	; , x
	cmpb	#11	;cmpqi:	; ,
	lbne	L144	; 
;----- asm -----
;  587 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[420]	blockX = startX;
;  0 "" 2
;--- end asm ---
	ldb	_startX	; , startX
	stb	_blockX	; , blockX
;----- asm -----
;  589 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[421]	blockY = startY;
;  0 "" 2
;--- end asm ---
	ldb	_startY	; , startY
	stb	_blockY	; , blockY
;----- asm -----
;  591 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[422]	blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  593 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[423]	blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  595 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[424]	blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  597 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[425]	blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  599 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[426]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  601 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[427]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  603 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[428]	changeMusic(startMusic);
;  0 "" 2
;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[296]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[297]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	stx	_currentMusic	; , currentMusic
	leas	12,s	; ,,
	puls	y,u,pc	; 
L156:
	ldb	5,s	; , y0
	stb	10,s	; , y0.449
	jmp	L141	; 
L152:
;----- asm -----
;  572 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[411]		level = level0;
;  0 "" 2
;--- end asm ---
	ldx	_level0	; , level0
	stx	_level	; , level
	jmp	L136	; 
L153:
;----- asm -----
;  575 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[413]		level = level1;
;  0 "" 2
;--- end asm ---
	ldd	_level1	; , level1
	std	_level	; , level
	jmp	L136	; 
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	u	; 
	leas	-8,s	; ,,
;----- asm -----
;  839 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[597]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  841 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[598]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	4,s	; , blockYOfs.103
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , blockYOfs.103
	stb	7,s	; , a
	clr	6,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 7,s	;  a
	ldb 6,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	5,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	5,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp42, blockY
	aslb	;  tmp42
	aslb	;  tmp42
	aslb	;  tmp42
	addb	3,s	;  tmp42,
	addb	#-104	;  tmp42,
	stb	3,s	;  tmp42,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp45
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp46
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp45,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp46, tmp48
	addb	2,s	;  tmp48,
	stb	2,s	;  tmp48,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	6,s	; , a
	ldb	2,s	; ,
	stb	7,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 6,s	;  a
	ldb 7,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp52, tmp51,
	ldx	,x	;  D.3428,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  843 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[599]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.104, blockYOfs
;----- asm -----
;  845 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[600]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.104,
	beq	L161	; 
	leas	8,s	; ,,
	puls	u,pc	; 
L161:
;----- asm -----
;  847 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[601]		levelNumber++;
;  0 "" 2
;--- end asm ---
	inc	_levelNumber	;  levelNumber
	ldb	_levelNumber	;  levelNumber.106, levelNumber
;----- asm -----
;  849 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[602]		if (levelNumber > 2) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	#2	;cmpqi:	;  levelNumber.106,
	ble	L159	; 
	clr	_levelNumber	;  levelNumber
L159:
;----- asm -----
;  851 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	leas	8,s	; ,,
	puls	u,pc	; 
	.globl _main
_main:
	pshs	y,u	; 
	leas	-18,s	; ,,
;----- asm -----
;  862 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[613]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  864 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[614]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  866 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[615]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  868 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[616]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  871 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[618]	startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
;----- asm -----
;  873 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[619]	while (1) {
;  0 "" 2
;--- end asm ---
L175:
;----- asm -----
;  876 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[621]		frwait();
;  0 "" 2
;  56 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF192; Vec_Sub_FRWAIT
	
;  0 "" 2
;  879 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[623]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#4	;cmpqi:	; ,
	lbhi	L163	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp70
	jmp	[L169,x]	; , tmp70
L169:
	.word L164
	.word L165
	.word L166
	.word L167
	.word L168
L168:
;----- asm -----
;  907 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[637]			blockMovingAtEnd();
;  0 "" 2
;  839 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[597]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  841 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[598]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	14,s	; , blockYOfs.103
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	14,s	; , blockYOfs.103
	stb	17,s	; , a
	clr	16,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 17,s	;  a
	ldb 16,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	15,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	15,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp107, blockY
	aslb	;  tmp107
	aslb	;  tmp107
	aslb	;  tmp107
	addb	3,s	;  tmp107,
	addb	#-104	;  tmp107,
	stb	3,s	;  tmp107,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	15,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp110
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp111
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp110,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp111, tmp113
	addb	2,s	;  tmp113,
	stb	2,s	;  tmp113,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	16,s	; , a
	ldb	2,s	; ,
	stb	17,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 16,s	;  a
	ldb 17,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp117, tmp116,
	ldx	,x	;  D.3561,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  843 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[599]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.104, blockYOfs
;----- asm -----
;  845 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[600]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.104,
	lbeq	L177	; 
L173:
;----- asm -----
;  909 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[638]			break;
;  0 "" 2
;--- end asm ---
L163:
;----- asm -----
;  914 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[642]		DP_to_C8();
;  0 "" 2
;  89 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF1AF; Vec_Sub_DPRAM
	
;  0 "" 2
;  916 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[643]		replay(currentMusic);
;  0 "" 2
;  476 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	ldu _currentMusic	;  currentMusic
	jsr 0xF687; Vec_Sub_REPLAY
	
;  0 "" 2
;  918 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[644]		DP_to_D0();
;  0 "" 2
;  88 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF1AA; Vec_Sub_DPIO
	
;  0 "" 2
;  920 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[645]		reqout();
;  0 "" 2
;  474 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF289; Vec_Sub_REQOUT
	
;  0 "" 2
;--- end asm ---
	jmp	L175	; 
L167:
;----- asm -----
;  901 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[634]			blockFalling();
;  0 "" 2
;  819 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[584]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  821 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[585]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	12,s	; , blockYOfs.102
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  823 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[586]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	lble	L178	; 
L171:
;----- asm -----
;  830 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[590]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L179	; 
L172:
;----- asm -----
;  903 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[635]			break;
;  0 "" 2
;--- end asm ---
	jmp	L163	; 
L166:
;----- asm -----
;  895 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[631]			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  897 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[632]			break;
;  0 "" 2
;--- end asm ---
	jmp	L163	; 
L164:
;----- asm -----
;  883 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[625]			blockMovingToStart();
;  0 "" 2
;  674 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[492]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  676 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[493]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	10,s	; , blockYOfs.81
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , blockYOfs.81
	stb	17,s	; , a
	clr	16,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 17,s	;  a
	ldb 16,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	11,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	11,s	; , blockX.78
	stb	9,s	; ,
	ldb	_blockY	;  tmp76, blockY
	aslb	;  tmp76
	aslb	;  tmp76
	aslb	;  tmp76
	addb	9,s	;  tmp76,
	addb	#-104	;  tmp76,
	stb	9,s	;  tmp76,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	11,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp79
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp80
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp79,
	stb	8,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp80, tmp82
	addb	8,s	;  tmp82,
	stb	8,s	;  tmp82,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	9,s	; ,
	stb	16,s	; , a
	ldb	8,s	; ,
	stb	17,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 16,s	;  a
	ldb 17,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp86, tmp85,
	ldx	,x	;  D.3479,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  678 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[494]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.82, blockYOfs
;----- asm -----
;  680 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[495]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.82
	bne	L170	; 
;----- asm -----
;  682 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[496]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L170:
;----- asm -----
;  885 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[626]			break;
;  0 "" 2
;--- end asm ---
	jmp	L163	; 
L165:
;----- asm -----
;  889 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[628]			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  891 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[629]			break;
;  0 "" 2
;--- end asm ---
	jmp	L163	; 
L177:
;----- asm -----
;  847 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[601]		levelNumber++;
;  0 "" 2
;--- end asm ---
	inc	_levelNumber	;  levelNumber
	ldb	_levelNumber	;  levelNumber.106, levelNumber
;----- asm -----
;  849 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[602]		if (levelNumber > 2) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	#2	;cmpqi:	;  levelNumber.106,
	ble	L174	; 
	clr	_levelNumber	;  levelNumber
L174:
;----- asm -----
;  851 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	jmp	L173	; 
L178:
;----- asm -----
;  825 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[587]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp87
	lda	12,s	;mulqihi3	;  blockYOfs.102
	mul
	std	6,s	; ,
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldd	6,s	; ,
	stb	17,s	;movlsbqihi: R:d -> 17,s	;  a,
	clr	16,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 17,s	;  a
	ldb 16,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	13,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	13,s	; , blockX.78
	stb	5,s	; ,
	ldb	_blockY	;  tmp92, blockY
	aslb	;  tmp92
	aslb	;  tmp92
	aslb	;  tmp92
	addb	5,s	;  tmp92,
	addb	#-104	;  tmp92,
	stb	5,s	;  tmp92,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	13,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp95
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp96
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp95,
	stb	4,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp96, tmp98
	addb	4,s	;  tmp98,
	stb	4,s	;  tmp98,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; ,
	stb	16,s	; , a
	ldb	4,s	; ,
	stb	17,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 16,s	;  a
	ldb 17,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp102, tmp101,
	ldx	,x	;  D.3517,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  827 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[588]		doBlockAnimation();
;  0 "" 2
;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[525]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L171	; 
;----- asm -----
;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
	lbne	L171	; 
;----- asm -----
;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[527]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[528]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[531]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  830 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[590]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbne	L172	; 
L179:
;----- asm -----
;  832 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[591]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	jmp	L172	; 
	.globl _blockFalling
_blockFalling:
	pshs	u	; 
	leas	-10,s	; ,,
;----- asm -----
;  819 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[584]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  821 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[585]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	6,s	; , blockYOfs.102
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  823 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[586]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	ble	L184	; 
L181:
;----- asm -----
;  830 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[590]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L185	; 
	leas	10,s	; ,,
	puls	u,pc	; 
L184:
;----- asm -----
;  825 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[587]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp39
	lda	6,s	;mulqihi3	;  blockYOfs.102
	mul
	std	4,s	; ,
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[481]	zergnd();
;  0 "" 2
;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF354; Vec_Sub_ZEROIT
	
;  0 "" 2
;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	;  a,
;----- asm -----
;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
	jsr 0xF2AB; Vec_Sub_INTENS
	
;  0 "" 2
;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	positd(0, yofs);
;  0 "" 2
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldd	4,s	; ,
	stb	9,s	;movlsbqihi: R:d -> 9,s	;  a,
	clr	8,s	;  b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 9,s	;  a
	ldb 8,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	7,s	; , blockX.78
;----- asm -----
;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	7,s	; , blockX.78
	stb	3,s	; ,
	ldb	_blockY	;  tmp44, blockY
	aslb	;  tmp44
	aslb	;  tmp44
	aslb	;  tmp44
	addb	3,s	;  tmp44,
	addb	#-104	;  tmp44,
	stb	3,s	;  tmp44,
;----- asm -----
;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[183]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , blockX.78
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp47
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp48
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp47,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp48, tmp50
	addb	2,s	;  tmp50,
	stb	2,s	;  tmp50,
;----- asm -----
;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[40]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	stb	8,s	; , a
	ldb	2,s	; ,
	stb	9,s	; , b
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	lda 8,s	;  a
	ldb 9,s	;  b
	jsr 0xF2FC; Vec_Sub_POSITD
	
;  0 "" 2
;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp54, tmp53,
	ldx	,x	;  D.3616,
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
	jsr 0xF408; Vec_Sub_PACK1X
	
;  0 "" 2
;  827 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[588]		doBlockAnimation();
;  0 "" 2
;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[525]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L181	; 
;----- asm -----
;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
	lbne	L181	; 
;----- asm -----
;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[527]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[528]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[531]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L181	; 
L185:
;----- asm -----
;  832 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[591]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	leas	10,s	; ,,
	puls	u,pc	; 
	.globl _startMusic
_startMusic:
	.byte	-2
	.byte	-24
	.byte	-2
	.byte	-74
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	3
	.byte	1
	.byte	4
	.byte	1
	.byte	5
	.byte	1
	.byte	6
	.byte	1
	.byte	7
	.byte	1
	.byte	8
	.byte	1
	.byte	9
	.byte	1
	.byte	10
	.byte	1
	.byte	11
	.byte	1
	.byte	12
	.byte	1
	.byte	13
	.byte	1
	.byte	0
	.byte	-128
	.globl _levelEndMusic
_levelEndMusic:
	.byte	-2
	.byte	-24
	.byte	-2
	.byte	-74
	.byte	13
	.byte	1
	.byte	14
	.byte	1
	.byte	15
	.byte	1
	.byte	16
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	19
	.byte	1
	.byte	20
	.byte	1
	.byte	21
	.byte	1
	.byte	22
	.byte	1
	.byte	0
	.byte	-128
	.globl _fallingMusic
_fallingMusic:
	.byte	-2
	.byte	-24
	.byte	-2
	.byte	-74
	.byte	13
	.byte	2
	.byte	12
	.byte	2
	.byte	11
	.byte	2
	.byte	10
	.byte	2
	.byte	9
	.byte	2
	.byte	8
	.byte	2
	.byte	7
	.byte	2
	.byte	6
	.byte	2
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	-128
	.globl _movingMusic
_movingMusic:
	.byte	-3
	.byte	-61
	.byte	-2
	.byte	-74
	.byte	1
	.byte	5
	.byte	0
	.byte	-128
	.globl _currentMusic
	.area .data
_currentMusic:
	.word	_startMusic
	.globl _level0
	.area .text
LC0:
	.ascii "                                          ...   "
	.ascii "     ..a.        ....        ...         ...    "
	.ascii "    ....       ....        .o..        ....     "
	.ascii "    ..                                          "
	.ascii "            \0"
	.area .data
_level0:
	.word	LC0
	.globl _level1
	.area .text
LC1:
	.ascii "                ....        .a..        ....    "
	.ascii "    ....          .           .           ...   "
	.ascii "      ...         ...           .           .   "
	.ascii "    .....      ......      ..o.        ....     "
	.ascii "            \0"
	.area .data
_level1:
	.word	LC1
	.globl _level2
	.area .text
LC2:
	.ascii "                a           .           .       "
	.ascii "    .           ...      ......      .   .....  "
	.ascii " .      ...  ...    ...  ...   ....  ...   ...  "
	.ascii "   ...         ....         .o.         ...     "
	.ascii "            \0"
	.area .data
_level2:
	.word	LC2
	.globl _height2FallingLeft0
	.area .text
_height2FallingLeft0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingRight0
_height2RisingRight0:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	-28
	.byte	0
	.byte	16
	.byte	30
	.byte	-1
	.byte	-2
	.byte	-28
	.byte	0
	.byte	10
	.byte	22
	.byte	-1
	.byte	-2
	.byte	-27
	.byte	0
	.byte	-11
	.byte	25
	.byte	-1
	.byte	-3
	.byte	-27
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	14
	.byte	2
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-14
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight0
_height2FallingRight0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingLeft0
_height2RisingLeft0:
	.byte	0
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	1
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	27
	.byte	0
	.byte	-22
	.byte	-26
	.byte	-1
	.byte	9
	.byte	28
	.byte	0
	.byte	-1
	.byte	-33
	.byte	-1
	.byte	9
	.byte	27
	.byte	0
	.byte	3
	.byte	-29
	.byte	-1
	.byte	10
	.byte	27
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack0
_height2FallingBack0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingFront0
_height2RisingFront0:
	.byte	0
	.byte	12
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	12
	.byte	1
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	-16
	.byte	25
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	-31
	.byte	11
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	-22
	.byte	-2
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	12
	.byte	1
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	12
	.byte	1
	.byte	1
	.globl _height2FallingFront0
_height2FallingFront0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingBack0
_height2RisingBack0:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	1
	.byte	-1
	.byte	-12
	.byte	11
	.byte	0
	.byte	15
	.byte	2
	.byte	-1
	.byte	-12
	.byte	12
	.byte	0
	.byte	26
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	12
	.byte	0
	.byte	10
	.byte	-25
	.byte	-1
	.byte	-13
	.byte	12
	.byte	0
	.byte	-13
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	0
	.byte	1
	.globl _depth2RollingLeft0
_depth2RollingLeft0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-10
	.byte	14
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	3
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	-13
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _depth2RollingRight0
_depth2RollingRight0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-10
	.byte	14
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	3
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	-13
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront0
_width2RollingFront0:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-19
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _width2RollingBack0
_width2RollingBack0:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-19
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingLeft1
_height2FallingLeft1:
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	25
	.byte	-3
	.byte	0
	.byte	-20
	.byte	17
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-17
	.byte	-2
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-30
	.byte	-9
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	5
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight1
_height2RisingRight1:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	12
	.byte	31
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	7
	.byte	21
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	-14
	.byte	22
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight1
_height2FallingRight1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	4
	.byte	0
	.byte	-25
	.byte	10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-19
	.byte	-10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-28
	.byte	-17
	.byte	-1
	.byte	26
	.byte	4
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	2
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-2
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingLeft1
_height2RisingLeft1:
	.byte	0
	.byte	12
	.byte	-3
	.byte	-1
	.byte	-12
	.byte	3
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	12
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	26
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	13
	.byte	27
	.byte	0
	.byte	-5
	.byte	-32
	.byte	-1
	.byte	13
	.byte	26
	.byte	0
	.byte	-1
	.byte	-30
	.byte	-1
	.byte	12
	.byte	26
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack1
_height2FallingBack1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-6
	.byte	5
	.byte	-1
	.byte	28
	.byte	-1
	.byte	0
	.byte	-25
	.byte	15
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-22
	.byte	-4
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-31
	.byte	-11
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-6
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-6
	.byte	6
	.byte	1
	.globl _height2RisingFront1
_height2RisingFront1:
	.byte	0
	.byte	10
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	10
	.byte	2
	.byte	-1
	.byte	23
	.byte	-11
	.byte	0
	.byte	-20
	.byte	25
	.byte	-1
	.byte	23
	.byte	-12
	.byte	0
	.byte	-33
	.byte	10
	.byte	-1
	.byte	22
	.byte	-12
	.byte	0
	.byte	-25
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-11
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	11
	.byte	2
	.byte	1
	.globl _height2FallingFront1
_height2FallingFront1:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-10
	.byte	5
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-21
	.byte	12
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-14
	.byte	-8
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-26
	.byte	-15
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-9
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	9
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-9
	.byte	5
	.byte	1
	.globl _height2RisingBack1
_height2RisingBack1:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	-9
	.byte	11
	.byte	0
	.byte	12
	.byte	2
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	24
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	6
	.byte	-25
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	-15
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	1
	.byte	1
	.globl _depth2RollingLeft1
_depth2RollingLeft1:
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	12
	.byte	-1
	.byte	0
	.byte	-7
	.byte	15
	.byte	-1
	.byte	12
	.byte	-2
	.byte	0
	.byte	4
	.byte	-10
	.byte	-1
	.byte	12
	.byte	-2
	.byte	0
	.byte	-17
	.byte	-11
	.byte	-1
	.byte	12
	.byte	-2
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	5
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight1
_depth2RollingRight1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	-12
	.byte	12
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	3
	.byte	-14
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	-14
	.byte	-15
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront1
_width2RollingFront1:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-10
	.byte	5
	.byte	-1
	.byte	12
	.byte	1
	.byte	0
	.byte	-6
	.byte	27
	.byte	-1
	.byte	12
	.byte	1
	.byte	0
	.byte	-2
	.byte	-7
	.byte	-1
	.byte	11
	.byte	1
	.byte	0
	.byte	-17
	.byte	-28
	.byte	-1
	.byte	11
	.byte	1
	.byte	0
	.byte	-9
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	9
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-9
	.byte	5
	.byte	1
	.globl _width2RollingBack1
_width2RollingBack1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-6
	.byte	5
	.byte	-1
	.byte	14
	.byte	0
	.byte	0
	.byte	-8
	.byte	28
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-8
	.byte	-5
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-20
	.byte	-26
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-6
	.byte	6
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-6
	.byte	6
	.byte	1
	.globl _height2FallingLeft2
_height2FallingLeft2:
	.byte	-1
	.byte	6
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	24
	.byte	-6
	.byte	0
	.byte	-18
	.byte	20
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-16
	.byte	2
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-30
	.byte	-5
	.byte	-1
	.byte	24
	.byte	-7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	6
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight2
_height2RisingRight2:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	4
	.byte	-26
	.byte	0
	.byte	9
	.byte	31
	.byte	-1
	.byte	5
	.byte	-26
	.byte	0
	.byte	3
	.byte	20
	.byte	-1
	.byte	5
	.byte	-26
	.byte	0
	.byte	-18
	.byte	21
	.byte	-1
	.byte	4
	.byte	-25
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	14
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-14
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight2
_height2FallingRight2:
	.byte	0
	.byte	3
	.byte	0
	.byte	-1
	.byte	0
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	0
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	27
	.byte	8
	.byte	0
	.byte	-27
	.byte	6
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-19
	.byte	-13
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-27
	.byte	-20
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	0
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	0
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft2
_height2RisingLeft2:
	.byte	0
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-11
	.byte	4
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	15
	.byte	25
	.byte	0
	.byte	-26
	.byte	-21
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-7
	.byte	-31
	.byte	-1
	.byte	15
	.byte	25
	.byte	0
	.byte	-4
	.byte	-30
	.byte	-1
	.byte	15
	.byte	25
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack2
_height2FallingBack2:
	.byte	0
	.byte	4
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-4
	.byte	5
	.byte	-1
	.byte	29
	.byte	-2
	.byte	0
	.byte	-26
	.byte	16
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-25
	.byte	-3
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-32
	.byte	-10
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-4
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-4
	.byte	6
	.byte	1
	.globl _height2RisingFront2
_height2RisingFront2:
	.byte	0
	.byte	9
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	9
	.byte	2
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	-22
	.byte	24
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	-34
	.byte	9
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	-28
	.byte	-3
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	9
	.byte	2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	9
	.byte	2
	.byte	1
	.globl _height2FallingFront2
_height2FallingFront2:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	11
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-18
	.byte	11
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-10
	.byte	-9
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-24
	.byte	-16
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-11
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	11
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-11
	.byte	5
	.byte	1
	.globl _height2RisingBack2
_height2RisingBack2:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	8
	.byte	2
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	20
	.byte	-13
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	2
	.byte	-24
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	-15
	.byte	2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	1
	.globl _depth2RollingLeft2
_depth2RollingLeft2:
	.byte	-1
	.byte	6
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-6
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	12
	.byte	-3
	.byte	0
	.byte	-6
	.byte	17
	.byte	-1
	.byte	12
	.byte	-4
	.byte	0
	.byte	4
	.byte	-8
	.byte	-1
	.byte	12
	.byte	-3
	.byte	0
	.byte	-18
	.byte	-10
	.byte	-1
	.byte	12
	.byte	-4
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	6
	.byte	13
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-6
	.byte	-14
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight2
_depth2RollingRight2:
	.byte	0
	.byte	3
	.byte	0
	.byte	-1
	.byte	0
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	0
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	14
	.byte	4
	.byte	0
	.byte	-14
	.byte	10
	.byte	-1
	.byte	13
	.byte	4
	.byte	0
	.byte	3
	.byte	-16
	.byte	-1
	.byte	13
	.byte	4
	.byte	0
	.byte	-13
	.byte	-17
	.byte	-1
	.byte	14
	.byte	4
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-1
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	1
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront2
_width2RollingFront2:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	11
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	10
	.byte	2
	.byte	0
	.byte	-4
	.byte	26
	.byte	-1
	.byte	10
	.byte	2
	.byte	0
	.byte	1
	.byte	-8
	.byte	-1
	.byte	11
	.byte	2
	.byte	0
	.byte	-17
	.byte	-29
	.byte	-1
	.byte	11
	.byte	2
	.byte	0
	.byte	-12
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-12
	.byte	5
	.byte	1
	.globl _width2RollingBack2
_width2RollingBack2:
	.byte	0
	.byte	4
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-4
	.byte	5
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-8
	.byte	29
	.byte	-1
	.byte	14
	.byte	-2
	.byte	0
	.byte	-10
	.byte	-4
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-21
	.byte	-25
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-5
	.byte	6
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	5
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-5
	.byte	6
	.byte	1
	.globl _height2FallingLeft3
_height2FallingLeft3:
	.byte	-1
	.byte	8
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	22
	.byte	-10
	.byte	0
	.byte	-14
	.byte	23
	.byte	-1
	.byte	21
	.byte	-11
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	21
	.byte	-10
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	7
	.byte	12
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-7
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight3
_height2RisingRight3:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	5
	.byte	31
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	0
	.byte	18
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	-21
	.byte	17
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight3
_height2FallingRight3:
	.byte	0
	.byte	5
	.byte	1
	.byte	-1
	.byte	-2
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	27
	.byte	11
	.byte	0
	.byte	-29
	.byte	2
	.byte	-1
	.byte	26
	.byte	11
	.byte	0
	.byte	-18
	.byte	-17
	.byte	-1
	.byte	26
	.byte	11
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	27
	.byte	10
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft3
_height2RisingLeft3:
	.byte	0
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	6
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	18
	.byte	23
	.byte	0
	.byte	-28
	.byte	-17
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-10
	.byte	-29
	.byte	-1
	.byte	18
	.byte	23
	.byte	0
	.byte	-8
	.byte	-30
	.byte	-1
	.byte	18
	.byte	23
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack3
_height2FallingBack3:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-2
	.byte	5
	.byte	-1
	.byte	30
	.byte	-4
	.byte	0
	.byte	-27
	.byte	18
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-33
	.byte	-8
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-2
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-2
	.byte	6
	.byte	1
	.globl _height2RisingFront3
_height2RisingFront3:
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	7
	.byte	3
	.byte	-1
	.byte	27
	.byte	-9
	.byte	0
	.byte	-24
	.byte	23
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-34
	.byte	7
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-30
	.byte	-4
	.byte	-1
	.byte	27
	.byte	-9
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	7
	.byte	3
	.byte	1
	.globl _height2FallingFront3
_height2FallingFront3:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-12
	.byte	5
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-15
	.byte	9
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-6
	.byte	-11
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-21
	.byte	-18
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-12
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-12
	.byte	5
	.byte	1
	.globl _height2RisingBack3
_height2RisingBack3:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	4
	.byte	3
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	9
	.byte	0
	.byte	-2
	.byte	-23
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	-15
	.byte	3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	3
	.byte	1
	.globl _depth2RollingLeft3
_depth2RollingLeft3:
	.byte	-1
	.byte	8
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	11
	.byte	-4
	.byte	0
	.byte	-3
	.byte	17
	.byte	-1
	.byte	11
	.byte	-5
	.byte	0
	.byte	5
	.byte	-7
	.byte	-1
	.byte	11
	.byte	-4
	.byte	0
	.byte	-19
	.byte	-8
	.byte	-1
	.byte	11
	.byte	-5
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	8
	.byte	12
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight3
_depth2RollingRight3:
	.byte	0
	.byte	5
	.byte	1
	.byte	-1
	.byte	-2
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	-15
	.byte	8
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	3
	.byte	-17
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	-11
	.byte	-17
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-2
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront3
_width2RollingFront3:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-12
	.byte	5
	.byte	-1
	.byte	9
	.byte	2
	.byte	0
	.byte	-3
	.byte	26
	.byte	-1
	.byte	9
	.byte	2
	.byte	0
	.byte	3
	.byte	-8
	.byte	-1
	.byte	9
	.byte	3
	.byte	0
	.byte	-15
	.byte	-30
	.byte	-1
	.byte	9
	.byte	3
	.byte	0
	.byte	-12
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-12
	.byte	4
	.byte	1
	.globl _width2RollingBack3
_width2RollingBack3:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-2
	.byte	5
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-9
	.byte	30
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-13
	.byte	-3
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-21
	.byte	-25
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-2
	.byte	5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	2
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-2
	.byte	5
	.byte	1
	.globl _height2FallingLeft4
_height2FallingLeft4:
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	20
	.byte	-13
	.byte	0
	.byte	-11
	.byte	25
	.byte	-1
	.byte	20
	.byte	-13
	.byte	0
	.byte	-12
	.byte	7
	.byte	-1
	.byte	20
	.byte	-13
	.byte	0
	.byte	-29
	.byte	2
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight4
_height2RisingRight4:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	9
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	1
	.byte	31
	.byte	-1
	.byte	11
	.byte	-23
	.byte	0
	.byte	-3
	.byte	17
	.byte	-1
	.byte	11
	.byte	-23
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight4
_height2FallingRight4:
	.byte	0
	.byte	7
	.byte	2
	.byte	-1
	.byte	-4
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	25
	.byte	14
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	26
	.byte	14
	.byte	0
	.byte	-18
	.byte	-20
	.byte	-1
	.byte	26
	.byte	14
	.byte	0
	.byte	-22
	.byte	-25
	.byte	-1
	.byte	25
	.byte	13
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft4
_height2RisingLeft4:
	.byte	0
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	8
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	8
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-13
	.byte	-27
	.byte	-1
	.byte	21
	.byte	21
	.byte	0
	.byte	-13
	.byte	-30
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-8
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack4
_height2FallingBack4:
	.byte	0
	.byte	8
	.byte	0
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	-27
	.byte	19
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	-30
	.byte	1
	.byte	-1
	.byte	31
	.byte	-6
	.byte	0
	.byte	-34
	.byte	-7
	.byte	-1
	.byte	31
	.byte	-6
	.byte	0
	.byte	-1
	.byte	5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	5
	.byte	1
	.globl _height2RisingFront4
_height2RisingFront4:
	.byte	0
	.byte	5
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	5
	.byte	4
	.byte	-1
	.byte	29
	.byte	-9
	.byte	0
	.byte	-26
	.byte	23
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-34
	.byte	6
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-32
	.byte	-4
	.byte	-1
	.byte	29
	.byte	-9
	.byte	0
	.byte	5
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	5
	.byte	4
	.byte	1
	.globl _height2FallingFront4
_height2FallingFront4:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	4
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-12
	.byte	8
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-2
	.byte	-11
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-18
	.byte	-19
	.byte	-1
	.byte	15
	.byte	5
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	5
	.byte	1
	.globl _height2RisingBack4
_height2RisingBack4:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	0
	.byte	3
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	12
	.byte	-13
	.byte	-1
	.byte	3
	.byte	9
	.byte	0
	.byte	-6
	.byte	-23
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _depth2RollingLeft4
_depth2RollingLeft4:
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	-1
	.byte	18
	.byte	-1
	.byte	10
	.byte	-7
	.byte	0
	.byte	6
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	-19
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-7
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	9
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight4
_depth2RollingRight4:
	.byte	0
	.byte	7
	.byte	2
	.byte	-1
	.byte	-4
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	-17
	.byte	5
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	3
	.byte	-19
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	-9
	.byte	-18
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-4
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront4
_width2RollingFront4:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-13
	.byte	4
	.byte	-1
	.byte	7
	.byte	3
	.byte	0
	.byte	-1
	.byte	25
	.byte	-1
	.byte	7
	.byte	3
	.byte	0
	.byte	6
	.byte	-8
	.byte	-1
	.byte	8
	.byte	3
	.byte	0
	.byte	-14
	.byte	-30
	.byte	-1
	.byte	8
	.byte	3
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _width2RollingBack4
_width2RollingBack4:
	.byte	0
	.byte	8
	.byte	0
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-9
	.byte	30
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-15
	.byte	-2
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-21
	.byte	-24
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	0
	.byte	5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	0
	.byte	5
	.byte	1
	.globl _height2FallingLeft5
_height2FallingLeft5:
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	17
	.byte	-16
	.byte	0
	.byte	-7
	.byte	27
	.byte	-1
	.byte	17
	.byte	-16
	.byte	0
	.byte	-9
	.byte	10
	.byte	-1
	.byte	17
	.byte	-16
	.byte	0
	.byte	-27
	.byte	6
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight5
_height2RisingRight5:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-3
	.byte	30
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-6
	.byte	14
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-25
	.byte	10
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight5
_height2FallingRight5:
	.byte	0
	.byte	9
	.byte	3
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-16
	.byte	-23
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-18
	.byte	-27
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft5
_height2RisingLeft5:
	.byte	0
	.byte	7
	.byte	-9
	.byte	-1
	.byte	-7
	.byte	9
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-15
	.byte	-25
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-16
	.byte	-29
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack5
_height2FallingBack5:
	.byte	0
	.byte	10
	.byte	0
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	2
	.byte	5
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-27
	.byte	21
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-32
	.byte	3
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	2
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	2
	.byte	4
	.byte	1
	.globl _height2RisingFront5
_height2RisingFront5:
	.byte	0
	.byte	4
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	4
	.byte	4
	.byte	-1
	.byte	29
	.byte	-7
	.byte	0
	.byte	-26
	.byte	21
	.byte	-1
	.byte	29
	.byte	-8
	.byte	0
	.byte	-33
	.byte	4
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	3
	.byte	4
	.byte	1
	.globl _height2FallingFront5
_height2FallingFront5:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	4
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-8
	.byte	7
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	3
	.byte	-12
	.byte	-1
	.byte	11
	.byte	8
	.byte	0
	.byte	-14
	.byte	-21
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _height2RisingBack5
_height2RisingBack5:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-4
	.byte	5
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	8
	.byte	-11
	.byte	-1
	.byte	7
	.byte	7
	.byte	0
	.byte	-10
	.byte	-21
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _depth2RollingLeft5
_depth2RollingLeft5:
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	8
	.byte	-8
	.byte	0
	.byte	2
	.byte	19
	.byte	-1
	.byte	9
	.byte	-8
	.byte	0
	.byte	7
	.byte	-3
	.byte	-1
	.byte	9
	.byte	-8
	.byte	0
	.byte	-19
	.byte	-3
	.byte	-1
	.byte	8
	.byte	-9
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	11
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-11
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight5
_depth2RollingRight5:
	.byte	0
	.byte	9
	.byte	3
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	12
	.byte	8
	.byte	0
	.byte	-18
	.byte	3
	.byte	-1
	.byte	12
	.byte	9
	.byte	0
	.byte	4
	.byte	-21
	.byte	-1
	.byte	12
	.byte	9
	.byte	0
	.byte	-6
	.byte	-19
	.byte	-1
	.byte	12
	.byte	8
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-6
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront5
_width2RollingFront5:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-14
	.byte	4
	.byte	-1
	.byte	5
	.byte	4
	.byte	0
	.byte	1
	.byte	24
	.byte	-1
	.byte	5
	.byte	4
	.byte	0
	.byte	9
	.byte	-9
	.byte	-1
	.byte	6
	.byte	4
	.byte	0
	.byte	-12
	.byte	-31
	.byte	-1
	.byte	6
	.byte	4
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _width2RollingBack5
_width2RollingBack5:
	.byte	0
	.byte	10
	.byte	0
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	2
	.byte	5
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-9
	.byte	31
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-17
	.byte	-1
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-21
	.byte	-23
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	2
	.byte	5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	2
	.byte	5
	.byte	1
	.globl _height2FallingLeft6
_height2FallingLeft6:
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	14
	.byte	-19
	.byte	0
	.byte	-3
	.byte	29
	.byte	-1
	.byte	14
	.byte	-19
	.byte	0
	.byte	-6
	.byte	13
	.byte	-1
	.byte	14
	.byte	-19
	.byte	0
	.byte	-25
	.byte	10
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight6
_height2RisingRight6:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-9
	.byte	11
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-27
	.byte	6
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight6
_height2FallingRight6:
	.byte	0
	.byte	10
	.byte	4
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	7
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-15
	.byte	-26
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-16
	.byte	-29
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft6
_height2RisingLeft6:
	.byte	0
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-6
	.byte	10
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-16
	.byte	-22
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-18
	.byte	-27
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack6
_height2FallingBack6:
	.byte	0
	.byte	12
	.byte	-1
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	4
	.byte	4
	.byte	-1
	.byte	29
	.byte	-8
	.byte	0
	.byte	-26
	.byte	21
	.byte	-1
	.byte	29
	.byte	-8
	.byte	0
	.byte	-33
	.byte	4
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-33
	.byte	-5
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	3
	.byte	4
	.byte	1
	.globl _height2RisingFront6
_height2RisingFront6:
	.byte	0
	.byte	2
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	2
	.byte	5
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	-27
	.byte	21
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-32
	.byte	3
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	-33
	.byte	-7
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	2
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	2
	.byte	4
	.byte	1
	.globl _height2FallingFront6
_height2FallingFront6:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-4
	.byte	6
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	8
	.byte	-12
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-10
	.byte	-21
	.byte	-1
	.byte	7
	.byte	7
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _height2RisingBack6
_height2RisingBack6:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	5
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	3
	.byte	-11
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-14
	.byte	-21
	.byte	-1
	.byte	11
	.byte	8
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _depth2RollingLeft6
_depth2RollingLeft6:
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	7
	.byte	-9
	.byte	0
	.byte	4
	.byte	19
	.byte	-1
	.byte	7
	.byte	-10
	.byte	0
	.byte	9
	.byte	-1
	.byte	-1
	.byte	7
	.byte	-10
	.byte	0
	.byte	-18
	.byte	0
	.byte	-1
	.byte	7
	.byte	-10
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	11
	.byte	9
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight6
_depth2RollingRight6:
	.byte	0
	.byte	10
	.byte	4
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	7
	.byte	-9
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	11
	.byte	10
	.byte	0
	.byte	-18
	.byte	0
	.byte	-1
	.byte	11
	.byte	10
	.byte	0
	.byte	5
	.byte	-22
	.byte	-1
	.byte	11
	.byte	10
	.byte	0
	.byte	-4
	.byte	-19
	.byte	-1
	.byte	11
	.byte	9
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront6
_width2RollingFront6:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	4
	.byte	4
	.byte	0
	.byte	2
	.byte	24
	.byte	-1
	.byte	4
	.byte	4
	.byte	0
	.byte	11
	.byte	-8
	.byte	-1
	.byte	3
	.byte	4
	.byte	0
	.byte	-9
	.byte	-31
	.byte	-1
	.byte	3
	.byte	3
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _width2RollingBack6
_width2RollingBack6:
	.byte	0
	.byte	12
	.byte	-1
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	4
	.byte	4
	.byte	-1
	.byte	14
	.byte	-4
	.byte	0
	.byte	-8
	.byte	31
	.byte	-1
	.byte	14
	.byte	-4
	.byte	0
	.byte	-18
	.byte	0
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-21
	.byte	-23
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	3
	.byte	4
	.byte	1
	.globl _height2FallingLeft7
_height2FallingLeft7:
	.byte	-1
	.byte	12
	.byte	9
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	11
	.byte	-21
	.byte	0
	.byte	1
	.byte	30
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-3
	.byte	16
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight7
_height2RisingRight7:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-11
	.byte	26
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-12
	.byte	8
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-29
	.byte	2
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight7
_height2FallingRight7:
	.byte	0
	.byte	11
	.byte	5
	.byte	-1
	.byte	-8
	.byte	9
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	21
	.byte	23
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-13
	.byte	-28
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-13
	.byte	-30
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-8
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft7
_height2RisingLeft7:
	.byte	0
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-4
	.byte	11
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	4
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	25
	.byte	13
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	26
	.byte	14
	.byte	0
	.byte	-18
	.byte	-19
	.byte	-1
	.byte	26
	.byte	13
	.byte	0
	.byte	-22
	.byte	-25
	.byte	-1
	.byte	25
	.byte	14
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	-3
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingBack7
_height2FallingBack7:
	.byte	0
	.byte	13
	.byte	-1
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	5
	.byte	4
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-26
	.byte	23
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-34
	.byte	6
	.byte	-1
	.byte	29
	.byte	-9
	.byte	0
	.byte	-32
	.byte	-4
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	5
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	5
	.byte	4
	.byte	1
	.globl _height2RisingFront7
_height2RisingFront7:
	.byte	0
	.byte	0
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-27
	.byte	19
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	-30
	.byte	1
	.byte	-1
	.byte	31
	.byte	-6
	.byte	0
	.byte	-34
	.byte	-8
	.byte	-1
	.byte	31
	.byte	-5
	.byte	0
	.byte	-1
	.byte	5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	5
	.byte	1
	.globl _height2FallingFront7
_height2FallingFront7:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	12
	.byte	-14
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	-6
	.byte	-23
	.byte	-1
	.byte	3
	.byte	9
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _height2RisingBack7
_height2RisingBack7:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	13
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	5
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-12
	.byte	7
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-2
	.byte	-10
	.byte	-1
	.byte	15
	.byte	5
	.byte	0
	.byte	-18
	.byte	-19
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	5
	.byte	1
	.globl _depth2RollingLeft7
_depth2RollingLeft7:
	.byte	-1
	.byte	12
	.byte	9
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-12
	.byte	-9
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	6
	.byte	-10
	.byte	0
	.byte	6
	.byte	19
	.byte	-1
	.byte	6
	.byte	-11
	.byte	0
	.byte	10
	.byte	0
	.byte	-1
	.byte	6
	.byte	-12
	.byte	0
	.byte	-18
	.byte	3
	.byte	-1
	.byte	6
	.byte	-11
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	12
	.byte	8
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight7
_depth2RollingRight7:
	.byte	0
	.byte	11
	.byte	5
	.byte	-1
	.byte	-8
	.byte	9
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	11
	.byte	12
	.byte	0
	.byte	-19
	.byte	-3
	.byte	-1
	.byte	10
	.byte	11
	.byte	0
	.byte	6
	.byte	-23
	.byte	-1
	.byte	10
	.byte	11
	.byte	0
	.byte	-2
	.byte	-19
	.byte	-1
	.byte	11
	.byte	11
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-9
	.byte	8
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	9
	.byte	-8
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront7
_width2RollingFront7:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	2
	.byte	5
	.byte	0
	.byte	4
	.byte	23
	.byte	-1
	.byte	2
	.byte	5
	.byte	0
	.byte	13
	.byte	-9
	.byte	-1
	.byte	2
	.byte	5
	.byte	0
	.byte	-8
	.byte	-32
	.byte	-1
	.byte	2
	.byte	4
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _width2RollingBack7
_width2RollingBack7:
	.byte	0
	.byte	13
	.byte	-1
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	5
	.byte	4
	.byte	-1
	.byte	15
	.byte	-5
	.byte	0
	.byte	-9
	.byte	32
	.byte	-1
	.byte	15
	.byte	-5
	.byte	0
	.byte	-20
	.byte	1
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	-20
	.byte	-22
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	6
	.byte	4
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-6
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	6
	.byte	4
	.byte	1
	.globl _height2FallingLeft8
_height2FallingLeft8:
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	5
	.byte	30
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	0
	.byte	17
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	-21
	.byte	17
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight8
_height2RisingRight8:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-14
	.byte	24
	.byte	-1
	.byte	21
	.byte	-11
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	21
	.byte	-11
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	7
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-7
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight8
_height2FallingRight8:
	.byte	0
	.byte	13
	.byte	7
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-28
	.byte	-17
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-10
	.byte	-30
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-8
	.byte	-31
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft8
_height2RisingLeft8:
	.byte	0
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-2
	.byte	12
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	2
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	27
	.byte	11
	.byte	0
	.byte	-29
	.byte	1
	.byte	-1
	.byte	26
	.byte	11
	.byte	0
	.byte	-18
	.byte	-16
	.byte	-1
	.byte	26
	.byte	10
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	27
	.byte	11
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack8
_height2FallingBack8:
	.byte	0
	.byte	15
	.byte	-2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	7
	.byte	3
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-24
	.byte	23
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-34
	.byte	7
	.byte	-1
	.byte	27
	.byte	-9
	.byte	0
	.byte	-30
	.byte	-4
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-7
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	7
	.byte	3
	.byte	1
	.globl _height2RisingFront8
_height2RisingFront8:
	.byte	0
	.byte	-1
	.byte	6
	.byte	-1
	.byte	2
	.byte	14
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-1
	.byte	6
	.byte	-1
	.byte	29
	.byte	-5
	.byte	0
	.byte	-27
	.byte	19
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-33
	.byte	-9
	.byte	-1
	.byte	30
	.byte	-4
	.byte	0
	.byte	-2
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-2
	.byte	5
	.byte	1
	.globl _height2FallingFront8
_height2FallingFront8:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	0
	.byte	10
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	16
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	-2
	.byte	-23
	.byte	-1
	.byte	-1
	.byte	9
	.byte	0
	.byte	-14
	.byte	3
	.byte	-1
	.byte	2
	.byte	14
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	3
	.byte	1
	.globl _height2RisingBack8
_height2RisingBack8:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	12
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-12
	.byte	6
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-15
	.byte	8
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-6
	.byte	-10
	.byte	-1
	.byte	18
	.byte	4
	.byte	0
	.byte	-21
	.byte	-18
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-12
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-12
	.byte	6
	.byte	1
	.globl _depth2RollingLeft8
_depth2RollingLeft8:
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	4
	.byte	-11
	.byte	0
	.byte	9
	.byte	18
	.byte	-1
	.byte	4
	.byte	-11
	.byte	0
	.byte	12
	.byte	0
	.byte	-1
	.byte	4
	.byte	-12
	.byte	0
	.byte	-17
	.byte	5
	.byte	-1
	.byte	4
	.byte	-12
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight8
_depth2RollingRight8:
	.byte	0
	.byte	13
	.byte	7
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	-19
	.byte	-5
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	7
	.byte	-24
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	1
	.byte	-18
	.byte	-1
	.byte	9
	.byte	11
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront8
_width2RollingFront8:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	23
	.byte	-1
	.byte	0
	.byte	5
	.byte	0
	.byte	15
	.byte	-8
	.byte	-1
	.byte	0
	.byte	5
	.byte	0
	.byte	-6
	.byte	-32
	.byte	-1
	.byte	0
	.byte	4
	.byte	0
	.byte	-15
	.byte	3
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-15
	.byte	3
	.byte	1
	.globl _width2RollingBack8
_width2RollingBack8:
	.byte	0
	.byte	15
	.byte	-2
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	7
	.byte	3
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	-8
	.byte	32
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	-21
	.byte	2
	.byte	-1
	.byte	13
	.byte	-5
	.byte	0
	.byte	-19
	.byte	-22
	.byte	-1
	.byte	13
	.byte	-5
	.byte	0
	.byte	8
	.byte	3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-8
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	8
	.byte	3
	.byte	1
	.globl _height2FallingLeft9
_height2FallingLeft9:
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	4
	.byte	-25
	.byte	0
	.byte	9
	.byte	30
	.byte	-1
	.byte	5
	.byte	-25
	.byte	0
	.byte	3
	.byte	20
	.byte	-1
	.byte	5
	.byte	-26
	.byte	0
	.byte	-18
	.byte	21
	.byte	-1
	.byte	4
	.byte	-26
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	14
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-14
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight9
_height2RisingRight9:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	6
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	24
	.byte	-7
	.byte	0
	.byte	-18
	.byte	21
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-16
	.byte	2
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	24
	.byte	-7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	6
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight9
_height2FallingRight9:
	.byte	0
	.byte	14
	.byte	9
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-26
	.byte	-21
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-7
	.byte	-32
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-4
	.byte	-31
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft9
_height2RisingLeft9:
	.byte	0
	.byte	0
	.byte	-13
	.byte	-1
	.byte	0
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	0
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	27
	.byte	8
	.byte	0
	.byte	-27
	.byte	5
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-19
	.byte	-12
	.byte	-1
	.byte	27
	.byte	6
	.byte	0
	.byte	-27
	.byte	-20
	.byte	-1
	.byte	27
	.byte	8
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	0
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	0
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack9
_height2FallingBack9:
	.byte	0
	.byte	17
	.byte	-3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	9
	.byte	2
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	-22
	.byte	24
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	-34
	.byte	8
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	-28
	.byte	-3
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	9
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	9
	.byte	2
	.byte	1
	.globl _height2RisingFront9
_height2RisingFront9:
	.byte	0
	.byte	-3
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	3
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-3
	.byte	6
	.byte	-1
	.byte	28
	.byte	-3
	.byte	0
	.byte	-25
	.byte	17
	.byte	-1
	.byte	28
	.byte	-3
	.byte	0
	.byte	-25
	.byte	-3
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-32
	.byte	-11
	.byte	-1
	.byte	29
	.byte	-2
	.byte	0
	.byte	-4
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-4
	.byte	5
	.byte	1
	.globl _height2FallingFront9
_height2FallingFront9:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-4
	.byte	11
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	-4
	.byte	11
	.byte	0
	.byte	19
	.byte	-13
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	2
	.byte	-24
	.byte	-1
	.byte	-5
	.byte	10
	.byte	0
	.byte	-14
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	2
	.byte	1
	.globl _height2RisingBack9
_height2RisingBack9:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-11
	.byte	6
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-18
	.byte	10
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-10
	.byte	-8
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-24
	.byte	-17
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-11
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-11
	.byte	6
	.byte	1
	.globl _depth2RollingLeft9
_depth2RollingLeft9:
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	2
	.byte	-12
	.byte	0
	.byte	11
	.byte	17
	.byte	-1
	.byte	2
	.byte	-12
	.byte	0
	.byte	14
	.byte	1
	.byte	-1
	.byte	2
	.byte	-13
	.byte	0
	.byte	-15
	.byte	8
	.byte	-1
	.byte	2
	.byte	-13
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight9
_depth2RollingRight9:
	.byte	0
	.byte	14
	.byte	9
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	8
	.byte	13
	.byte	0
	.byte	-19
	.byte	-8
	.byte	-1
	.byte	8
	.byte	13
	.byte	0
	.byte	8
	.byte	-25
	.byte	-1
	.byte	8
	.byte	13
	.byte	0
	.byte	3
	.byte	-17
	.byte	-1
	.byte	8
	.byte	12
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront9
_width2RollingFront9:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-1
	.byte	6
	.byte	0
	.byte	7
	.byte	22
	.byte	-1
	.byte	-2
	.byte	6
	.byte	0
	.byte	17
	.byte	-8
	.byte	-1
	.byte	-2
	.byte	5
	.byte	0
	.byte	-4
	.byte	-32
	.byte	-1
	.byte	-2
	.byte	4
	.byte	0
	.byte	-14
	.byte	3
	.byte	-1
	.byte	5
	.byte	28
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-14
	.byte	3
	.byte	1
	.globl _width2RollingBack9
_width2RollingBack9:
	.byte	0
	.byte	17
	.byte	-3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	9
	.byte	2
	.byte	-1
	.byte	12
	.byte	-5
	.byte	0
	.byte	-6
	.byte	32
	.byte	-1
	.byte	12
	.byte	-5
	.byte	0
	.byte	-21
	.byte	3
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	-18
	.byte	-21
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	9
	.byte	3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-9
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	9
	.byte	3
	.byte	1
	.globl _height2FallingLeft10
_height2FallingLeft10:
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	12
	.byte	30
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	7
	.byte	21
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	-14
	.byte	23
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight10
_height2RisingRight10:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-20
	.byte	18
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-17
	.byte	-2
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight10
_height2FallingRight10:
	.byte	0
	.byte	15
	.byte	10
	.byte	-1
	.byte	-12
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	12
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	27
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	13
	.byte	27
	.byte	0
	.byte	-5
	.byte	-33
	.byte	-1
	.byte	13
	.byte	27
	.byte	0
	.byte	-1
	.byte	-31
	.byte	-1
	.byte	12
	.byte	27
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft10
_height2RisingLeft10:
	.byte	0
	.byte	0
	.byte	-13
	.byte	-1
	.byte	0
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	25
	.byte	4
	.byte	0
	.byte	-25
	.byte	9
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-19
	.byte	-9
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-28
	.byte	-18
	.byte	-1
	.byte	26
	.byte	4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	2
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-2
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack10
_height2FallingBack10:
	.byte	0
	.byte	18
	.byte	-3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	10
	.byte	2
	.byte	-1
	.byte	23
	.byte	-12
	.byte	0
	.byte	-20
	.byte	25
	.byte	-1
	.byte	23
	.byte	-11
	.byte	0
	.byte	-33
	.byte	9
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-25
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-12
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-11
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	11
	.byte	2
	.byte	1
	.globl _height2RisingFront10
_height2RisingFront10:
	.byte	0
	.byte	-5
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	5
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-5
	.byte	6
	.byte	-1
	.byte	27
	.byte	-2
	.byte	0
	.byte	-24
	.byte	16
	.byte	-1
	.byte	27
	.byte	-2
	.byte	0
	.byte	-22
	.byte	-4
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-31
	.byte	-12
	.byte	-1
	.byte	28
	.byte	-1
	.byte	0
	.byte	-6
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-6
	.byte	5
	.byte	1
	.globl _height2FallingFront10
_height2FallingFront10:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-8
	.byte	12
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	-8
	.byte	12
	.byte	0
	.byte	23
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	6
	.byte	-25
	.byte	-1
	.byte	-9
	.byte	11
	.byte	0
	.byte	-14
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	2
	.byte	1
	.globl _height2RisingBack10
_height2RisingBack10:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	10
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-10
	.byte	6
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-21
	.byte	11
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-14
	.byte	-7
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-26
	.byte	-16
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-9
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	9
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	6
	.byte	1
	.globl _depth2RollingLeft10
_depth2RollingLeft10:
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	0
	.byte	-13
	.byte	0
	.byte	13
	.byte	17
	.byte	-1
	.byte	1
	.byte	-13
	.byte	0
	.byte	15
	.byte	2
	.byte	-1
	.byte	1
	.byte	-14
	.byte	0
	.byte	-14
	.byte	10
	.byte	-1
	.byte	0
	.byte	-14
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	14
	.byte	4
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-14
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight10
_depth2RollingRight10:
	.byte	0
	.byte	15
	.byte	10
	.byte	-1
	.byte	-12
	.byte	4
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-3
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	6
	.byte	14
	.byte	0
	.byte	-18
	.byte	-10
	.byte	-1
	.byte	6
	.byte	14
	.byte	0
	.byte	10
	.byte	-26
	.byte	-1
	.byte	6
	.byte	14
	.byte	0
	.byte	6
	.byte	-17
	.byte	-1
	.byte	6
	.byte	13
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-12
	.byte	4
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront10
_width2RollingFront10:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-3
	.byte	6
	.byte	0
	.byte	9
	.byte	22
	.byte	-1
	.byte	-4
	.byte	6
	.byte	0
	.byte	19
	.byte	-8
	.byte	-1
	.byte	-5
	.byte	6
	.byte	0
	.byte	-1
	.byte	-33
	.byte	-1
	.byte	-5
	.byte	5
	.byte	0
	.byte	-13
	.byte	2
	.byte	-1
	.byte	5
	.byte	28
	.byte	-1
	.byte	14
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-13
	.byte	2
	.byte	1
	.globl _width2RollingBack10
_width2RollingBack10:
	.byte	0
	.byte	18
	.byte	-3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	10
	.byte	2
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	-6
	.byte	33
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	-22
	.byte	4
	.byte	-1
	.byte	11
	.byte	-6
	.byte	0
	.byte	-17
	.byte	-21
	.byte	-1
	.byte	11
	.byte	-6
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-11
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	11
	.byte	2
	.byte	1
	.globl _height2FallingLeft11
_height2FallingLeft11:
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	-2
	.byte	-27
	.byte	0
	.byte	15
	.byte	29
	.byte	-1
	.byte	-2
	.byte	-27
	.byte	0
	.byte	10
	.byte	22
	.byte	-1
	.byte	-2
	.byte	-28
	.byte	0
	.byte	-11
	.byte	26
	.byte	-1
	.byte	-3
	.byte	-28
	.byte	0
	.byte	-7
	.byte	6
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-14
	.byte	-2
	.byte	-1
	.byte	-7
	.byte	6
	.byte	1
	.globl _height2RisingRight11
_height2RisingRight11:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight11
_height2FallingRight11:
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	-12
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	28
	.byte	0
	.byte	-22
	.byte	-26
	.byte	-1
	.byte	9
	.byte	28
	.byte	0
	.byte	-1
	.byte	-34
	.byte	-1
	.byte	9
	.byte	28
	.byte	0
	.byte	3
	.byte	-30
	.byte	-1
	.byte	10
	.byte	28
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft11
_height2RisingLeft11:
	.byte	0
	.byte	-2
	.byte	-13
	.byte	-1
	.byte	2
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	25
	.byte	0
	.byte	0
	.byte	-23
	.byte	13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack11
_height2FallingBack11:
	.byte	0
	.byte	20
	.byte	-4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	12
	.byte	1
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	-16
	.byte	25
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	-31
	.byte	10
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	-22
	.byte	-2
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	12
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	12
	.byte	1
	.byte	1
	.globl _height2RisingFront11
_height2RisingFront11:
	.byte	0
	.byte	-7
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	7
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	25
	.byte	0
	.byte	0
	.byte	-22
	.byte	14
	.byte	-1
	.byte	25
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingFront11
_height2FallingFront11:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-1
	.byte	-11
	.byte	12
	.byte	0
	.byte	14
	.byte	2
	.byte	-1
	.byte	-11
	.byte	12
	.byte	0
	.byte	25
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	12
	.byte	0
	.byte	10
	.byte	-25
	.byte	-1
	.byte	-13
	.byte	11
	.byte	0
	.byte	-12
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-12
	.byte	1
	.byte	1
	.globl _height2RisingBack11
_height2RisingBack11:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _depth2RollingLeft11
_depth2RollingLeft11:
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	0
	.byte	-13
	.byte	0
	.byte	13
	.byte	15
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	0
	.byte	17
	.byte	2
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-12
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-15
	.byte	12
	.byte	-1
	.byte	12
	.byte	2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-15
	.byte	12
	.byte	1
	.globl _depth2RollingRight11
_depth2RollingRight11:
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	-12
	.byte	2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-16
	.byte	12
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	-17
	.byte	-12
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	11
	.byte	-26
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	7
	.byte	-16
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-12
	.byte	2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront11
_width2RollingFront11:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-1
	.byte	-5
	.byte	6
	.byte	0
	.byte	11
	.byte	22
	.byte	-1
	.byte	-6
	.byte	6
	.byte	0
	.byte	20
	.byte	-7
	.byte	-1
	.byte	-6
	.byte	6
	.byte	0
	.byte	0
	.byte	-33
	.byte	-1
	.byte	-6
	.byte	5
	.byte	0
	.byte	-13
	.byte	1
	.byte	-1
	.byte	5
	.byte	28
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-13
	.byte	1
	.byte	1
	.globl _width2RollingBack11
_width2RollingBack11:
	.byte	0
	.byte	20
	.byte	-4
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	12
	.byte	1
	.byte	-1
	.byte	9
	.byte	-6
	.byte	0
	.byte	-3
	.byte	33
	.byte	-1
	.byte	9
	.byte	-6
	.byte	0
	.byte	-21
	.byte	5
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	-16
	.byte	-21
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	11
	.byte	1
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	11
	.byte	1
	.byte	1
	.globl _height2FallingLeft12
_height2FallingLeft12:
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	-5
	.byte	-27
	.byte	0
	.byte	18
	.byte	27
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	0
	.byte	14
	.byte	22
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	0
	.byte	-7
	.byte	6
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-7
	.byte	6
	.byte	1
	.globl _height2RisingRight12
_height2RisingRight12:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-26
	.byte	10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-19
	.byte	-10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-28
	.byte	-18
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight12
_height2FallingRight12:
	.byte	0
	.byte	16
	.byte	14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	-19
	.byte	-28
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	2
	.byte	-34
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	7
	.byte	-28
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft12
_height2RisingLeft12:
	.byte	0
	.byte	-4
	.byte	-13
	.byte	-1
	.byte	4
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	24
	.byte	-4
	.byte	0
	.byte	-20
	.byte	17
	.byte	-1
	.byte	25
	.byte	-3
	.byte	0
	.byte	-17
	.byte	-2
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack12
_height2FallingBack12:
	.byte	0
	.byte	21
	.byte	-5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	0
	.byte	-13
	.byte	25
	.byte	-1
	.byte	16
	.byte	-11
	.byte	0
	.byte	-29
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	0
	.byte	-19
	.byte	-2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	0
	.byte	13
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	13
	.byte	0
	.byte	1
	.globl _height2RisingFront12
_height2RisingFront12:
	.byte	0
	.byte	-9
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	9
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	6
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-20
	.byte	12
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-14
	.byte	-8
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-27
	.byte	-16
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-10
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-10
	.byte	6
	.byte	1
	.globl _height2FallingFront12
_height2FallingFront12:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-15
	.byte	12
	.byte	0
	.byte	18
	.byte	2
	.byte	-1
	.byte	-15
	.byte	12
	.byte	0
	.byte	28
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	12
	.byte	0
	.byte	13
	.byte	-26
	.byte	-1
	.byte	-15
	.byte	12
	.byte	0
	.byte	-13
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	-2
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	1
	.globl _height2RisingBack12
_height2RisingBack12:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	6
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-6
	.byte	6
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-25
	.byte	15
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-22
	.byte	-3
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-31
	.byte	-12
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-6
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	6
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-6
	.byte	6
	.byte	1
	.globl _depth2RollingLeft12
_depth2RollingLeft12:
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-2
	.byte	-13
	.byte	0
	.byte	15
	.byte	13
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	0
	.byte	19
	.byte	2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	0
	.byte	-10
	.byte	14
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	0
	.byte	-15
	.byte	12
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-15
	.byte	12
	.byte	1
	.globl _depth2RollingRight12
_depth2RollingRight12:
	.byte	0
	.byte	16
	.byte	14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-16
	.byte	12
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	-16
	.byte	-14
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	13
	.byte	-26
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	10
	.byte	-14
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront12
_width2RollingFront12:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-7
	.byte	6
	.byte	0
	.byte	13
	.byte	22
	.byte	-1
	.byte	-7
	.byte	6
	.byte	0
	.byte	20
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	6
	.byte	0
	.byte	2
	.byte	-34
	.byte	-1
	.byte	-8
	.byte	6
	.byte	0
	.byte	-12
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-12
	.byte	0
	.byte	1
	.globl _width2RollingBack12
_width2RollingBack12:
	.byte	0
	.byte	21
	.byte	-5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	-2
	.byte	33
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	-21
	.byte	6
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	-14
	.byte	-21
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	13
	.byte	0
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	13
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
	.globl _lineCount
	.area .data
_lineCount:
	.byte	0	;skip space
	.globl _startX
_startX:
	.byte	0	;skip space
	.globl _startY
_startY:
	.byte	0	;skip space
	.globl _endX
_endX:
	.byte	0	;skip space
	.globl _endY
_endY:
	.byte	0	;skip space
	.globl _levelNumber
_levelNumber:
	.byte	0	;skip space
	.area .bss
	.globl	_lineX0
_lineX0:	.blkb	120
	.globl	_lineY0
_lineY0:	.blkb	120
	.globl	_lineX1
_lineX1:	.blkb	120
	.globl	_lineY1
_lineY1:	.blkb	120
	.globl	_blockOrientation
_blockOrientation:	.blkb	1
	.globl	_blockX
_blockX:	.blkb	1
	.globl	_blockY
_blockY:	.blkb	1
	.globl	_blockAnimation
_blockAnimation:	.blkb	2
	.globl	_nextBlockAnimation
_nextBlockAnimation:	.blkb	2
	.globl	_blockAnimationStep
_blockAnimationStep:	.blkb	1
	.globl	_blockAnimating
_blockAnimating:	.blkb	1
	.globl	_nextBlockX
_nextBlockX:	.blkb	1
	.globl	_nextBlockY
_nextBlockY:	.blkb	1
	.globl	_lastBlockDirection
_lastBlockDirection:	.blkb	1
	.globl	_blockYOfs
_blockYOfs:	.blkb	1
	.globl	_level
_level:	.blkb	2
	.globl	_gameState
_gameState:	.blkb	1
