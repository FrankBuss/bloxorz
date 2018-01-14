                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	cartridge.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report
                             12 ;  -I/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include
                             13 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             14 ;  -I/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/include
                             15 ;  /home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/cartridge.enr.c
                             16 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             17 ;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             18 ;  -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             19 ;  -fdelete-null-pointer-checks -fearly-inlining
                             20 ;  -feliminate-unused-debug-types -fexpensive-optimizations
                             21 ;  -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
                             22 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             23 ;  -finline-functions -finline-functions-called-once
                             24 ;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
                             25 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             26 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             27 ;  -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
                             28 ;  -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
                             29 ;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
                             30 ;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
                             31 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
                             32 ;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
                             33 ;  -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             34 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             35 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             36 ;  -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
                             37 ;  -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
                             38 ;  -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
                             39 ;  -fverbose-asm -fzero-initialized-in-bss
                             40 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             41 	.globl _game_header
                             42 	.area	.cartridge
   0000                      43 _game_header:
                             44 ;  copyright:
   0000 67                   45 	.byte	0x67
   0001 20                   46 	.byte	0x20
   0002 47                   47 	.byte	0x47
   0003 43                   48 	.byte	0x43
   0004 45                   49 	.byte	0x45
   0005 20                   50 	.byte	0x20
   0006 32                   51 	.byte	0x32
   0007 30                   52 	.byte	0x30
   0008 31                   53 	.byte	0x31
   0009 38                   54 	.byte	0x38
   000A 80                   55 	.byte	0x80
                             56 ;  music:
   000B FD 0D                57 	.word	_Vec_Music_1
                             58 ;  title_height:
   000D F8                   59 	.byte	-8
                             60 ;  title_width:
   000E 50                   61 	.byte	80
                             62 ;  title_y:
   000F F0                   63 	.byte	-16
                             64 ;  title_x:
   0010 B8                   65 	.byte	-72
                             66 ;  title:
   0011 42                   67 	.byte	0x42
   0012 4C                   68 	.byte	0x4C
   0013 4F                   69 	.byte	0x4F
   0014 58                   70 	.byte	0x58
   0015 4F                   71 	.byte	0x4F
   0016 52                   72 	.byte	0x52
   0017 5A                   73 	.byte	0x5A
   0018 80                   74 	.byte	0x80
   0019 00                   75 	.byte	0x00
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

