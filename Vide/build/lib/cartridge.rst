                              1 ;;; gcc for m6809 : Mar 17 2019 11:56:12
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	cartridge.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report -I/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include
                             12 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             13 ; /home/frank/data/projects/bloxorz/Vide/source/cartridge.enr.c
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
                             31 	.globl	_game_header
                             32 	.area	.cartridge
   0000                      33 _game_header:
                             34 ; copyright:
   0000 67 20 47 43 45 20    35 	.byte	103,32,71,67,69,32,50,48
        32 30
   0008 31 39 80             36 	.byte	49,57,-128
                             37 ; music:
   000B FD 0D                38 	.word	_Vec_Music_1
                             39 ; title_height:
   000D F8                   40 	.byte	-8
                             41 ; title_width:
   000E 50                   42 	.byte	80
                             43 ; title_y:
   000F F0                   44 	.byte	-16
                             45 ; title_x:
   0010 B8                   46 	.byte	-72
                             47 ; title:
   0011 42 4C 4F 58 4F 52    48 	.byte	66,76,79,88,79,82,90,-128
        5A 80
   0019 00                   49 	.byte	0
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
    _Vec_Music_1       **** GX  |   2 _game_header       0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .cartridge       size   1A   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

