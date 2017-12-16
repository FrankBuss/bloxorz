
;;; gcc for m6809 : Sep 13 2017 10:25:42
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	cartridge.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report
;  -I/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf
;  -DOMMIT_FRAMEPOINTER=1
;  -I/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/include
;  /home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/cartridge.enr.c
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

	.globl _game_header
	.area	.cartridge
_game_header:
;  copyright:
	.byte	0x67
	.byte	0x20
	.byte	0x47
	.byte	0x43
	.byte	0x45
	.byte	0x20
	.byte	0x32
	.byte	0x30
	.byte	0x31
	.byte	0x38
	.byte	0x80
;  music:
	.word	-755
;  title_height:
	.byte	-8
;  title_width:
	.byte	80
;  title_y:
	.byte	-16
;  title_x:
	.byte	-72
;  title:
	.byte	0x42
	.byte	0x4C
	.byte	0x4F
	.byte	0x58
	.byte	0x4F
	.byte	0x52
	.byte	0x5A
	.byte	0x80
	.byte	0x00
