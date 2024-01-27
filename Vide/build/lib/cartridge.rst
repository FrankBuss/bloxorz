                              1 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	cartridge.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -IC:\data\Vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
                             12 ;  -DOMMIT_FRAMEPOINTER=1
                             13 ;  C:\data\Vide\..\bloxorz\Vide\source\cartridge.enr.c
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
                             30 ;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
                             31 	.globl _game_header
                             32 	.area	.cartridge
   0000                      33 _game_header:
                             34 ;  copyright:
   0000 67                   35 	.byte	0x67
   0001 20                   36 	.byte	0x20
   0002 47                   37 	.byte	0x47
   0003 43                   38 	.byte	0x43
   0004 45                   39 	.byte	0x45
   0005 20                   40 	.byte	0x20
   0006 32                   41 	.byte	0x32
   0007 30                   42 	.byte	0x30
   0008 32                   43 	.byte	0x32
   0009 33                   44 	.byte	0x33
   000A 80                   45 	.byte	0x80
                             46 ;  music:
   000B FD 0D                47 	.word	_Vec_Music_1
                             48 ;  title_height:
   000D F8                   49 	.byte	-8
                             50 ;  title_width:
   000E 50                   51 	.byte	80
                             52 ;  title_y:
   000F F0                   53 	.byte	-16
                             54 ;  title_x:
   0010 B8                   55 	.byte	-72
                             56 ;  title:
   0011 42                   57 	.byte	0x42
   0012 4C                   58 	.byte	0x4C
   0013 4F                   59 	.byte	0x4F
   0014 58                   60 	.byte	0x58
   0015 4F                   61 	.byte	0x4F
   0016 52                   62 	.byte	0x52
   0017 5A                   63 	.byte	0x5A
   0018 80                   64 	.byte	0x80
   0019 00                   65 	.byte	0x00
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

