;;; gcc for m6809 : Sep 13 2017 10:25:42
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	cartridge.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/cartridge.enr.c
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
	.byte	0x39
	.byte	0x80
;  music:
	.word	_Vec_Music_1
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
