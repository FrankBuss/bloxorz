                              1 
                              2 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	cartridge.enr.c
                              7 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              8 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              9 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                             10 ;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             11 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ;  -fno-time-report
                             13 ;  -I/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf
                             14 ;  -DOMMIT_FRAMEPOINTER=1
                             15 ;  -I/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/include
                             16 ;  /home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/cartridge.enr.c
                             17 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             18 ;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             19 ;  -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             20 ;  -fdelete-null-pointer-checks -fearly-inlining
                             21 ;  -feliminate-unused-debug-types -fexpensive-optimizations
                             22 ;  -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
                             23 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             24 ;  -finline-functions -finline-functions-called-once
                             25 ;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
                             26 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             27 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             28 ;  -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
                             29 ;  -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
                             30 ;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
                             31 ;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
                             32 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
                             33 ;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
                             34 ;  -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             35 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             36 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             37 ;  -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
                             38 ;  -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
                             39 ;  -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
                             40 ;  -fverbose-asm -fzero-initialized-in-bss
                             41 
                             42 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             43 
                             44 	.globl _game_header
                             45 	.area	.cartridge
   0000                      46 _game_header:
                             47 ;  copyright:
   0000 67                   48 	.byte	0x67
   0001 20                   49 	.byte	0x20
   0002 47                   50 	.byte	0x47
   0003 43                   51 	.byte	0x43
   0004 45                   52 	.byte	0x45
   0005 20                   53 	.byte	0x20
   0006 32                   54 	.byte	0x32
   0007 30                   55 	.byte	0x30
   0008 31                   56 	.byte	0x31
   0009 38                   57 	.byte	0x38
   000A 80                   58 	.byte	0x80
                             59 ;  music:
   000B FD 0D                60 	.word	-755
                             61 ;  title_height:
   000D F8                   62 	.byte	-8
                             63 ;  title_width:
   000E 50                   64 	.byte	80
                             65 ;  title_y:
   000F F0                   66 	.byte	-16
                             67 ;  title_x:
   0010 B8                   68 	.byte	-72
                             69 ;  title:
   0011 42                   70 	.byte	0x42
   0012 4C                   71 	.byte	0x4C
   0013 4F                   72 	.byte	0x4F
   0014 58                   73 	.byte	0x58
   0015 4F                   74 	.byte	0x4F
   0016 52                   75 	.byte	0x52
   0017 5A                   76 	.byte	0x5A
   0018 80                   77 	.byte	0x80
   0019 00                   78 	.byte	0x00
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 _game_header       0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .cartridge       size   1A   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

