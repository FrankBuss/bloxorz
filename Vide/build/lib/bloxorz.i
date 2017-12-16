# 1 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
# 26 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 1




       



# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_ram.h" 1





       
# 10 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 2
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rom.h" 1





       
# 11 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 2
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1




       



# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_sub.h" 1





       



# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/asm.h" 1




       
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/mc6809.h" 1




       



struct mc6809_t
{
 union
 {
  struct {
   unsigned int A;
   unsigned int B;
  };
  long unsigned int D;
 };
 long unsigned int X;
 long unsigned int Y;
 long unsigned int U;
};


extern struct mc6809_t _mc6809;
# 7 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/asm.h" 2
# 11 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_sub.h" 2
# 10 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 2
# 56 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Wait_Recal(void) { { asm volatile( "jsr " "0xF192" "; " "Vec_Sub_FRWAIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }

static inline __attribute__((always_inline)) void Recalibrate(void) { { asm volatile( "jsr " "0xF2E6" "; " "Vec_Sub_DEFLOK" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset0Ref_D0(void) { { asm volatile( "jsr " "0xF34A" "; " "Vec_Sub_DZERO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Check0Ref(void) { { asm volatile( "jsr " "0xF34F" "; " "Vec_Sub_CZERO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset0Ref(void) { { asm volatile( "jsr " "0xF354" "; " "Vec_Sub_ZEROIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset_Pen(void) { { asm volatile( "jsr " "0xF35B" "; " "Vec_Sub_ACTGND" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset0Int(void) { { asm volatile( "jsr " "0xF36B" "; " "Vec_Sub_ZERO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 78 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Dec_3_Counters(void) { { asm volatile( "jsr " "0xF55A" "; " "Vec_Sub_D2TMR" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Dec_6_Counters(void) { { asm volatile( "jsr " "0xF55E" "; " "Vec_Sub_DECTMR" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Dec_Counters(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF563" "; " "Vec_Sub_DEKCNT" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }







static inline __attribute__((always_inline)) void DP_to_D0(void) { { asm volatile( "jsr " "0xF1AA" "; " "Vec_Sub_DPIO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void DP_to_C8(void) { { asm volatile( "jsr " "0xF1AF" "; " "Vec_Sub_DPRAM" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 106 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Delay_3(void) { { asm volatile( "jsr " "0xF56D" "; " "Vec_Sub_DEL38" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_2(void) { { asm volatile( "jsr " "0xF571" "; " "Vec_Sub_DEL33" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_1(void) { { asm volatile( "jsr " "0xF575" "; " "Vec_Sub_DEL28" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_0(void) { { asm volatile( "jsr " "0xF579" "; " "Vec_Sub_DEL20" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_b(volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "ldb %[B]\n\t" "jsr " "0xF57A" "; " "Vec_Sub_DEL" "\n\t" :: [B] "m" (b) : "s", "memory", "cc", "dp", "b"); }; }
static inline __attribute__((always_inline)) void Delay_RTS(void) { { asm volatile( "jsr " "0xF57D" "; " "Vec_Sub_DEL13" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 123 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Dot_ix_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF2BE" "; " "Vec_Sub_DOTTIM" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Dot_ix(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2C1" "; " "Vec_Sub_DOTX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Dot_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF2C3" "; " "Vec_Sub_DOTAB" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Dot_dd(volatile long int d) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; asm volatile( "ldd %[D]\n\t" "jsr " "0xF2C3" "; " "Vec_Sub_DOTAB" "\n\t" :: [D] "r" (d) : "s", "memory", "cc", "dp", "a", "b"); }; }
static inline __attribute__((always_inline)) void Dot_here(void) { { asm volatile( "jsr " "0xF2C5" "; " "Vec_Sub_DOT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Dot_List(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2D5" "; " "Vec_Sub_DIFDOT" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Dot_List_Reset(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2DE" "; " "Vec_Sub_DOTPAK" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
# 149 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Print_Str_hwyx(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF373" "; " "Vec_Sub_RSTSIZ" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_Str_yx(const void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF378" "; " "Vec_Sub_RSTPOS" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_Str_d(volatile int a, volatile int b, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldu %[U]\n\t" "jsr " "0xF37A" "; " "Vec_Sub_MSSPOS" "\n\t" :: [A] "m" (a), [B] "m" (b), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d"); }; }
static inline __attribute__((always_inline)) void Print_Str_dd(volatile long int d, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldd %[D]\n\t" "ldu %[U]\n\t" "jsr " "0xF37A" "; " "Vec_Sub_MSSPOSD" "\n\t" :: [D] "m" (d), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d"); }; }
static inline __attribute__((always_inline)) void Print_List_hw(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF385" "; " "Vec_Sub_TXTSIZ" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_List(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF38A" "; " "Vec_Sub_TXTPSX" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_List_chk(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF38C" "; " "Vec_Sub_TXTPOS" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_Ships_x(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF391" "; " "Vec_Sub_SHIPX" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Print_Ships(volatile unsigned int a, volatile unsigned int b, volatile unsigned long int x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF393" "; " "Vec_Sub_DSHIP" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Print_Str(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF495" "; " "Vec_Sub_RASTER" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_MRast(void) { { asm volatile( "jsr " "0xF498" "; " "Vec_Sub_MRASTR" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 196 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF434" "; " "Vec_Sub_DSHDF" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
static inline __attribute__((always_inline)) void Draw_Pat_VL(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF437" "; " "Vec_Sub_DASHDF" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }

static inline __attribute__((always_inline)) void Draw_Line_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF3DF" "; " "Vec_Sub_DIFFAB" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "x", "d"); }; }
static inline __attribute__((always_inline)) void Draw_VLc(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3CE" "; " "Vec_Sub_DIFFAX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VL_ab(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3D8" "; " "Vec_Sub_TDIFFY" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Draw_VL(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3DD" "; " "Vec_Sub_DIFFY" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLcs(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3D6" "; " "Vec_Sub_DIFLST" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VL_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3D2" "; " "Vec_Sub_DIFTIM" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Draw_VL_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF3DA" "; " "Vec_Sub_LDIFFY" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
# 223 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLc_a(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3AD" "; " "Vec_Sub_DUFFAX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3B1" "; " "Vec_Sub_DUFTIM" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VLcs(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3B5" "; " "Vec_Sub_DUFLST" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_ab(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3B7" "; " "Vec_Sub_TDUFFY" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF3B9" "; " "Vec_Sub_LDUFFY" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3BC" "; " "Vec_Sub_DUFFY" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF3BE" "; " "Vec_Sub_DUFFAB" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
# 259 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Draw_VL_mode(volatile const void* x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF46E" "; " "Vec_Sub_DASHY3" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_7F(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF408" "; " "Vec_Sub_PACK1X" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_FF(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF404" "; " "Vec_Sub_PACK2X" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF40E" "; " "Vec_Sub_PACB" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Draw_VLp(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF410" "; " "Vec_Sub_PACKET" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_scale(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF40C" "; " "Vec_Sub_PACXX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Rot_VL_Mode_a(volatile unsigned int a, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF61F" "; " "Vec_Sub_POTATA" "\n\t" :: [A] "m" (a), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "x"); }; }
static inline __attribute__((always_inline)) void Rot_VL_Pack(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF622" "; " "Vec_Sub_POTATE" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
# 299 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) unsigned int Random_3(void) { return ({ asm volatile( "jsr " "0xF511" "; " "Vec_Sub_RAND3" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }
static inline __attribute__((always_inline)) unsigned int Random(void) { return ({ asm volatile( "jsr " "0xF517" "; " "Vec_Sub_RANDOM" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }

static inline __attribute__((always_inline)) unsigned int Bitmask_a(volatile unsigned int a) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF57E" "; " "Vec_Sub_BITE" "\n\t" "sta %[R]; return a\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.A; }); }

static inline __attribute__((always_inline)) long unsigned int Abs_a_b(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF584" "; " "Vec_Sub_ABSVAL" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) unsigned int Abs_b(volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "ldb %[B]\n\t" "jsr " "0xF58B" "; " "Vec_Sub_AOK" "\n\t" "stb %[R]; return b\n\t" : [R] "=m" (_mc6809.B) : [B] "m" (b) : "s", "memory", "cc", "dp", "b", "d"); _mc6809.B; }); }

static inline __attribute__((always_inline)) long unsigned int Rise_Run_Angle(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF593" "; " "Vec_Sub_COMPAS" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Idx(volatile int a) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF5D9" "; " "Vec_Sub_COSGET" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) int Xform_Sin(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF5D8" "; " "Vec_Sub_SINGET" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Run(void) { return ({ asm volatile( "jsr " "0xF5EF" "; " "Vec_Sub_SINCOS" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : : "s", "memory", "cc", "dp"); _mc6809.D; }); }

static inline __attribute__((always_inline)) int Xform_Run_a(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF65B" "; " "Vec_Sub_RSINA" "\n\t" "sta %[R]; return a\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.A; }); }
static inline __attribute__((always_inline)) int Xform_Run(void) { return (int) ({ asm volatile( "jsr " "0xF65D" "; " "Vec_Sub_RSIN" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }
static inline __attribute__((always_inline)) int Xform_Rise_a(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF661" "; " "Vec_Sub_RCOSA" "\n\t" "sta %[R]; return a\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.A; }); }
static inline __attribute__((always_inline)) int Xform_Rise(void) { return (int) ({ asm volatile( "jsr " "0xF663" "; " "Vec_Sub_RCOS" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }
# 325 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Clear_x_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF53F" "; " "Vec_Sub_BCLR" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Clear_C8_RAM(void) { { asm volatile( "jsr " "0xF542" "; " "Vec_Sub_CLREX" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Clear_x_256(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF545" "; " "Vec_Sub_CLR256" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Clear_x_d(volatile long unsigned int d, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldd %[D]\n\t" "ldx %[X]\n\t" "jsr " "0xF548" "; " "Vec_Sub_CLRBLK" "\n\t" :: [D] "m" (d), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }







static inline __attribute__((always_inline)) void Move_Mem_a_1(volatile unsigned int a, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF67F" "; " "Vec_Sub_BLKMV1" "\n\t" :: [A] "m" (a), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "x"); }; }
static inline __attribute__((always_inline)) void Move_Mem_a(volatile unsigned int a, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF683" "; " "Vec_Sub_BLKMOV" "\n\t" :: [A] "m" (a), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "x"); }; }







static inline __attribute__((always_inline)) void Clear_x_b_80(volatile int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF550" "; " "Vec_Sub_CLR80" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Clear_x_b_a(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF552" "; " "Vec_Sub_BLKFIL" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
# 356 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Read_Btns_Mask(volatile unsigned int a) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "tfr %[A],a\t; #VIDE_CHANGE_B_TO_A# \n\t" "jsr " "0xF1B4" "; " "Vec_Sub_DBNCE" "\n\t" :: [A] "r" (a) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Read_Btns(void) { { asm volatile( "jsr " "0xF1BA" "; " "Vec_Sub_INPUT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Joy_Analog(void) { { asm volatile( "jsr " "0xF1F5" "; " "Vec_Sub_JOYSTK" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Joy_Digital(void) { { asm volatile( "jsr " "0xF1F8" "; " "Vec_Sub_JOYBIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 404 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Select_Game(volatile unsigned int a, volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF7A9" "; " "Vec_Sub_SELOPT" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Display_Option(volatile unsigned int a, void* volatile y) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "lda %[A]\n\t" "ldy %[Y]\n\t" "jsr " "0xF835" "; " "Vec_Sub_DISOPT" "\n\t" :: [A] "m" (a), [Y] "m" (y) : "s", "memory", "cc", "dp", "a", "d", "y"); }; }
# 417 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Reset(void) { { asm volatile( "jsr " "0xF000" "; " "Vec_Sub_POWER" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_VIA(void) { { asm volatile( "jsr " "0xF14C" "; " "Vec_Sub_INTPIA" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_OS_RAM(void) { { asm volatile( "jsr " "0xF164" "; " "Vec_Sub_INTMSC" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_OS(void) { { asm volatile( "jsr " "0xF18B" "; " "Vec_Sub_INTALL" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_Music_Buf(void) { { asm volatile( "jsr " "0xF533" "; " "Vec_Sub_INTREQ" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 445 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Clear_Score(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF84F" "; " "Vec_Sub_SCLR" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Add_Score_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF85E" "; " "Vec_Sub_BYTADD" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
static inline __attribute__((always_inline)) void Add_Score_d(volatile long unsigned int d, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldd %[D]\n\t" "ldx %[X]\n\t" "jsr " "0xF87C" "; " "Vec_Sub_SCRADD" "\n\t" :: [D] "m" (d), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }

static inline __attribute__((always_inline)) unsigned int Compare_Score(void* volatile x, void* volatile u) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF8C7" "; " "Vec_Sub_WINNER" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); _mc6809.A; }); }
static inline __attribute__((always_inline)) void New_High_Score(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF8D8" "; " "Vec_Sub_HISCR" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
# 469 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Sound_Byte(volatile unsigned int a, volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF256" "; " "Vec_Sub_PSGX" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Sound_Byte_x(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF259" "; " "Vec_Sub_PSG" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Clear_Sound(void) { { asm volatile( "jsr " "0xF272" "; " "Vec_Sub_INITPSG" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Sound_Bytes(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF27D" "; " "Vec_Sub_PSGLUP" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Sound_Bytes_x(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF284" "; " "Vec_Sub_PSGULP" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
static inline __attribute__((always_inline)) void Do_Sound(void) { { asm volatile( "jsr " "0xF289" "; " "Vec_Sub_REQOUT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }

static inline __attribute__((always_inline)) void Init_Music_chk(volatile const void* u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF687" "; " "Vec_Sub_REPLAY" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Init_Music(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF68D" "; " "Vec_Sub_SPLAY" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Init_Music_a(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF690" "; " "Vec_Sub_SOPLAY" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
static inline __attribute__((always_inline)) void Init_Music_x(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF692" "; " "Vec_Sub_YOPLAY" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Stop_Sound(void) { { asm volatile( "jsr " "0xF742" "; " "Vec_Sub_XPLAY" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Explosion_Snd(volatile const void* u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF92E" "; " "Vec_Sub_AXE" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Set_Amp(volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "ldb %[B]\n\t" "jsr " "0xF9CA" "; " "Vec_Sub_LOUDIN" "\n\t" :: [B] "m" (b) : "s", "memory", "cc", "dp", "b"); }; }
# 523 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Moveto_x_7F(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2F2" "; " "Vec_Sub_POSWID" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_d_7F(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF2FC" "; " "Vec_Sub_POSITD" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Moveto_dd_7F(volatile long int d) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; asm volatile( "ldd %[D]\n\t" "jsr " "0xF2FC" "; " "Vec_Sub_POSITD" "\n\t" :: [D] "r" (d) : "s", "memory", "cc", "dp", "a", "b"); }; }
static inline __attribute__((always_inline)) void Moveto_ix_FF(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF308" "; " "Vec_Sub_POSIT2" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_ix_7F(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF30C" "; " "Vec_Sub_POSIT1" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_ix_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF30E" "; " "Vec_Sub_POSITB" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Moveto_ix(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF310" "; " "Vec_Sub_POSITX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF312" "; " "Vec_Sub_POSITN" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Moveto_dd(volatile long int d) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; asm volatile( "ldd %[D]\n\t" "jsr " "0xF312" "; " "Vec_Sub_POSITN" "\n\t" :: [D] "r" (d) : "s", "memory", "cc", "dp", "a", "b"); }; }
# 542 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Intensity_1F(void) { { asm volatile( "jsr " "0xF29D" "; " "Vec_Sub_INT1Q" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_3F(void) { { asm volatile( "jsr " "0xF2A1" "; " "Vec_Sub_INT2Q" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_5F(void) { { asm volatile( "jsr " "0xF2A5" "; " "Vec_Sub_INT3Q" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_7F(void) { { asm volatile( "jsr " "0xF2A9" "; " "Vec_Sub_INTMAX" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_a(volatile unsigned int a) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "tfr %[A],a\t; #VIDE_CHANGE_B_TO_A# \n\t" "jsr " "0xF2AB" "; " "Vec_Sub_INTENS" "\n\t" :: [A] "r" (a) : "s", "memory", "cc", "dp"); }; }
# 555 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit_u(volatile int a, volatile int b, volatile long int x, volatile long int y, volatile long int u) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "ldu %[U]\n\t" "jsr " "0xF8E5" "; " "Vec_Sub_OFF1BX" "\n\t" "lda #0\n\t" "adca #0\n\t" "sta %[R]; return carry\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a), [B] "m" (b), [X] "m" (x), [Y] "m" (y), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d", "x", "y"); _mc6809.A; }); }
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit(volatile int a, volatile int b, volatile long int x, volatile long int y, volatile long int* u) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "ldu %[U]\n\t" "jsr " "0xF8F3" "; " "Vec_Sub_OFF2BX" "\n\t" "lda #0\n\t" "adca #0\n\t" "sta %[R]; return carry\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a), [B] "m" (b), [X] "m" (x), [Y] "m" (y), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d", "x", "y"); _mc6809.A; }); }
static inline __attribute__((always_inline)) unsigned int Obj_Hit(volatile int a, volatile int b, volatile long int x, volatile long int y) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "jsr " "0xF8FF" "; " "Vec_Sub_BXTEST" "\n\t" "lda #0\n\t" "adca #0\n\t" "sta %[R]; return carry\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a), [B] "m" (b), [X] "m" (x), [Y] "m" (y) : "s", "memory", "cc", "dp", "a", "b", "d", "x", "y"); _mc6809.A; }); }
# 571 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_X(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF5FF" "; " "Vec_Sub_LROT90" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Y(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF601" "; " "Vec_Sub_LNROT" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) int Rise_Run_Len(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF603" "; " "Vec_Sub_ALNROT" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) void Rot_VL_ab(volatile unsigned int a, volatile unsigned int b, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF610" "; " "Vec_Sub_DROT" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Rot_VL_Diff(volatile unsigned int b, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF613" "; " "Vec_Sub_BDROT" "\n\t" :: [B] "m" (b), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Rot_VL(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF616" "; " "Vec_Sub_ADROT" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
# 625 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Dot_y(volatile long int y) { { ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldy %[Y]\n\t" "jsr " "0xEA5D" "; " "Vec_Sub_ADOT" "\n\t" :: [Y] "m" (y) : "s", "memory", "cc", "dp", "y"); }; }
static inline __attribute__((always_inline)) void Dot_py(void* volatile y) { { ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldy %[Y]\n\t" "jsr " "0xEA6D" "; " "Vec_Sub_DDOT" "\n\t" :: [Y] "m" (y) : "s", "memory", "cc", "dp", "y"); }; }

static inline __attribute__((always_inline)) void Draw_Pack(volatile unsigned int b, void* volatile x, volatile long int y) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "jsr " "0xEA7F" "; " "Vec_Sub_APACK" "\n\t" :: [B] "m" (b), [X] "m" (x), [Y] "m" (y) : "s", "memory", "cc", "dp", "b", "d", "x", "y"); }; }
static inline __attribute__((always_inline)) void Draw_Pack_py(volatile unsigned int b, void* volatile x, void* volatile y) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "jsr " "0xEA8D" "; " "Vec_Sub_DPACK" "\n\t" :: [B] "m" (b), [X] "m" (x), [Y] "m" (y) : "s", "memory", "cc", "dp", "b", "d", "x", "y"); }; }

static inline __attribute__((always_inline)) void Print_Msg(void* volatile y, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldy %[Y]\n\t" "ldu %[U]\n\t" "jsr " "0xEAA8" "; " "Vec_Sub_ASMESS" "\n\t" :: [Y] "m" (y), [U] "m" (u) : "s", "memory", "cc", "dp", "y"); }; }
static inline __attribute__((always_inline)) unsigned int Rnd_Cone(void) { return ({ asm volatile( "jsr " "0xEA3E" "; " "Vec_Sub_CONE" "\n\t" "stb %[B]; return b\n\t" : [B] "=m" (_mc6809.B) : : "s", "memory", "cc", "dp"); _mc6809.B; }); }

static inline __attribute__((always_inline)) long unsigned int Displ8_xy(volatile unsigned int a, volatile unsigned int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xE7B5" "; " "Vec_Sub_MLTY8" "\n\t" "stx %[X]; return x\n\t" : [X] "=m" (_mc6809.X) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.X; }); }
static inline __attribute__((always_inline)) long unsigned int Displ16_xy(volatile unsigned int a, volatile unsigned int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xE7D2" "; " "Vec_Sub_MLTY16" "\n\t" "stx %[X]; return x\n\t" : [X] "=m" (_mc6809.X) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.X; }); }

static inline __attribute__((always_inline)) long unsigned int Ranpos(void) { return ({ asm volatile( "jsr " "0xE98A" "; " "Vec_Sub_RANPOS" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : : "s", "memory", "cc", "dp"); _mc6809.D; }); }
static inline __attribute__((always_inline)) void Draw_Scores() { { asm volatile( "jsr " "0xEACF" "; " "Vec_Sub_SCRBTH" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Draw_Score() { { asm volatile( "jsr " "0xEAB4" "; " "Vec_Sub_SCRMES" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Wait_Bound() { { asm volatile( "jsr " "0xEAF0" "; " "Vec_Sub_WAIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 12 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 2
# 27 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c" 2

typedef signed char int8_t;
typedef unsigned char uint8_t;
# 39 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
static inline __attribute__((always_inline)) void positd (int8_t x, int8_t y)
{
 Moveto_d_7F(y,x);
}
# 70 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
const uint8_t startMusic[] = {
 0xFE,0xE8, 0xFE,0xB6,
 1,1,
 2,1,
 3,1,
 4,1,
 5,1,
 6,1,
 7,1,
 8,1,
 9,1,
 10,1,
 11,1,
 12,1,
 13,1,
 0, 0x80,
};

const uint8_t levelEndMusic[] = {
 0xFE,0xE8, 0xFE,0xB6,
 13,1,
 14,1,
 15,1,
 16,1,
 17,1,
 18,1,
 19,1,
 20,1,
 21,1,
 22,1,
 0, 0x80,
};

const uint8_t fallingMusic[] = {
 0xFE,0xE8, 0xFE,0xB6,
 13,2,
 12,2,
 11,2,
 10,2,
 9,2,
 8,2,
 7,2,
 6,2,
 5,2,
 4,2,
 3,2,
 2,2,
 1,2,
 0, 0x80,
};

const uint8_t movingMusic[] = {
 0xfd,0xc3, 0xFE,0xB6,
 0x01,5,
 0, 0x80,
};

const uint8_t* currentMusic = startMusic;

# 1 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/level.i" 1



const char* level0 =
 "            "
 "            "
 "            "
 "      ...   "
 "     ..a.   "
 "     ....   "
 "     ...    "
 "     ...    "
 "    ....    "
 "   ....     "
 "   .o..     "
 "   ....     "
 "    ..      "
 "            "
 "            "
 "            "
 "            "
;

const char* level1 =
 "            "
 "    ....    "
 "    .a..    "
 "    ....    "
 "    ....    "
 "      .     "
 "      .     "
 "      ...   "
 "      ...   "
 "      ...   "
 "        .   "
 "        .   "
 "    .....   "
 "   ......   "
 "   ..o.     "
 "   ....     "
 "            "
;

const char* level2 =
 "            "
 "    a       "
 "    .       "
 "    .       "
 "    .       "
 "    ...     "
 " ......     "
 " .   .....  "
 " .      ... "
 " ...    ... "
 " ...   .... "
 " ...   ...  "
 "   ...      "
 "   ....     "
 "    .o.     "
 "    ...     "
 "            "
;
# 130 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c" 2
# 1 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/block.i" 1

const int8_t height2FallingLeft0[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 26, 0,
 0, -23, 14,
 (int8_t) 255, 26, 0,
 0, -18, -6,
 (int8_t) 255, 26, 0,
 0, -29, -13,
 (int8_t) 255, 26, 0,
 0, -8, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2RisingRight0[] = {
 0, 6, 28,
 (int8_t) 255, 13, 2,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -2,
 (int8_t) 255, -8, 6,
 (int8_t) 255, -3, -28,
 0, 16, 30,
 (int8_t) 255, -2, -28,
 0, 10, 22,
 (int8_t) 255, -2, -27,
 0, -11, 25,
 (int8_t) 255, -3, -27,
 0, -8, 5,
 (int8_t) 255, 14, 2,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -14, -2,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2FallingRight0[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 26, 0,
 0, -23, 14,
 (int8_t) 255, 26, 0,
 0, -18, -6,
 (int8_t) 255, 26, 0,
 0, -29, -13,
 (int8_t) 255, 26, 0,
 0, -8, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2RisingLeft0[] = {
 0, 12, -1,
 (int8_t) 255, -12, 1,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 12, -2,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 10, 27,
 0, -22, -26,
 (int8_t) 255, 9, 28,
 0, -1, -33,
 (int8_t) 255, 9, 27,
 0, 3, -29,
 (int8_t) 255, 10, 27,
 0, -8, 6,
 (int8_t) 255, -13, 2,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 13, -2,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack0[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 26, 0,
 0, -23, 14,
 (int8_t) 255, 26, 0,
 0, -18, -6,
 (int8_t) 255, 26, 0,
 0, -29, -13,
 (int8_t) 255, 26, 0,
 0, -8, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2RisingFront0[] = {
 0, 12, 1,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -12, -1,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 12, 1,
 (int8_t) 255, 19, -11,
 0, -16, 25,
 (int8_t) 255, 19, -12,
 0, -31, 11,
 (int8_t) 255, 19, -12,
 0, -22, -2,
 (int8_t) 255, 19, -11,
 0, 12, 1,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -12, -1,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 12, 1,
 1
};
const int8_t height2FallingFront0[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 26, 0,
 0, -23, 14,
 (int8_t) 255, 26, 0,
 0, -18, -6,
 (int8_t) 255, 26, 0,
 0, -29, -13,
 (int8_t) 255, 26, 0,
 0, -8, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2RisingBack0[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 14, -1,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -14, 1,
 (int8_t) 255, -12, 11,
 0, 15, 2,
 (int8_t) 255, -12, 12,
 0, 26, -13,
 (int8_t) 255, -13, 12,
 0, 10, -25,
 (int8_t) 255, -13, 12,
 0, -13, 0,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 13, -1,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -13, 0,
 1
};
const int8_t depth2RollingLeft0[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 13, 0,
 0, -10, 14,
 (int8_t) 255, 13, 0,
 0, 3, -12,
 (int8_t) 255, 13, 0,
 0, -16, -13,
 (int8_t) 255, 13, 0,
 0, -16, 11,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -16, 11,
 1
};
const int8_t depth2RollingRight0[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 13, 0,
 0, -10, 14,
 (int8_t) 255, 13, 0,
 0, 3, -12,
 (int8_t) 255, 13, 0,
 0, -16, -13,
 (int8_t) 255, 13, 0,
 0, -16, 11,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -16, 11,
 1
};
const int8_t width2RollingFront0[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 13, 0,
 0, -7, 28,
 (int8_t) 255, 13, 0,
 0, -5, -6,
 (int8_t) 255, 13, 0,
 0, -19, -27,
 (int8_t) 255, 13, 0,
 0, -8, 5,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -8, 5,
 1
};
const int8_t width2RollingBack0[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 13, 0,
 0, -7, 28,
 (int8_t) 255, 13, 0,
 0, -5, -6,
 (int8_t) 255, 13, 0,
 0, -19, -27,
 (int8_t) 255, 13, 0,
 0, -8, 5,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -8, 5,
 1
};

const int8_t height2FallingLeft1[] = {
 (int8_t) 255, 5, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -5, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 25, -3,
 0, -20, 17,
 (int8_t) 255, 25, -4,
 0, -17, -2,
 (int8_t) 255, 25, -4,
 0, -30, -9,
 (int8_t) 255, 25, -4,
 0, -8, 6,
 (int8_t) 255, 5, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -5, -13,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight1[] = {
 0, 6, 28,
 (int8_t) 255, 13, 4,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -4,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 1, -27,
 0, 12, 31,
 (int8_t) 255, 1, -27,
 0, 7, 21,
 (int8_t) 255, 1, -26,
 0, -14, 22,
 (int8_t) 255, 1, -26,
 0, -8, 5,
 (int8_t) 255, 13, 4,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -13, -4,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2FallingRight1[] = {
 0, 2, 0,
 (int8_t) 255, 1, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -1, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 26, 4,
 0, -25, 10,
 (int8_t) 255, 27, 4,
 0, -19, -10,
 (int8_t) 255, 27, 4,
 0, -28, -17,
 (int8_t) 255, 26, 4,
 0, -8, 5,
 (int8_t) 255, 2, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -2, -13,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2RisingLeft1[] = {
 0, 12, -3,
 (int8_t) 255, -12, 3,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 12, -4,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 12, 26,
 0, -24, -23,
 (int8_t) 255, 13, 27,
 0, -5, -32,
 (int8_t) 255, 13, 26,
 0, -1, -30,
 (int8_t) 255, 12, 26,
 0, -8, 6,
 (int8_t) 255, -11, 4,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 11, -4,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack1[] = {
 0, 2, 0,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 6, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -6, 5,
 (int8_t) 255, 28, -1,
 0, -25, 15,
 (int8_t) 255, 28, -2,
 0, -22, -4,
 (int8_t) 255, 28, -2,
 0, -31, -11,
 (int8_t) 255, 28, -2,
 0, -6, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 6, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -6, 6,
 1
};
const int8_t height2RisingFront1[] = {
 0, 10, 2,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -10, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 10, 2,
 (int8_t) 255, 23, -11,
 0, -20, 25,
 (int8_t) 255, 23, -12,
 0, -33, 10,
 (int8_t) 255, 22, -12,
 0, -25, -2,
 (int8_t) 255, 22, -11,
 0, 11, 2,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -11, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 11, 2,
 1
};
const int8_t height2FallingFront1[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 10, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -10, 5,
 (int8_t) 255, 24, 2,
 0, -21, 12,
 (int8_t) 255, 24, 2,
 0, -14, -8,
 (int8_t) 255, 23, 2,
 0, -26, -15,
 (int8_t) 255, 23, 2,
 0, -9, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 9, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -9, 5,
 1
};
const int8_t height2RisingBack1[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 2,
 (int8_t) 255, -9, 11,
 0, 12, 2,
 (int8_t) 255, -9, 12,
 0, 24, -14,
 (int8_t) 255, -9, 12,
 0, 6, -25,
 (int8_t) 255, -9, 12,
 0, -15, 1,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 1,
 1
};
const int8_t depth2RollingLeft1[] = {
 (int8_t) 255, 5, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -5, -13,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 12, -1,
 0, -7, 15,
 (int8_t) 255, 12, -2,
 0, 4, -10,
 (int8_t) 255, 12, -2,
 0, -17, -11,
 (int8_t) 255, 12, -2,
 0, -16, 12,
 (int8_t) 255, 5, 13,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -5, -13,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight1[] = {
 0, 2, 0,
 (int8_t) 255, 1, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -1, -13,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 13, 2,
 0, -12, 12,
 (int8_t) 255, 13, 2,
 0, 3, -14,
 (int8_t) 255, 13, 2,
 0, -14, -15,
 (int8_t) 255, 13, 2,
 0, -16, 11,
 (int8_t) 255, 1, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -1, -13,
 (int8_t) 255, -16, 11,
 1
};
const int8_t width2RollingFront1[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 10, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -10, 5,
 (int8_t) 255, 12, 1,
 0, -6, 27,
 (int8_t) 255, 12, 1,
 0, -2, -7,
 (int8_t) 255, 11, 1,
 0, -17, -28,
 (int8_t) 255, 11, 1,
 0, -9, 5,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 9, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -9, 5,
 1
};
const int8_t width2RollingBack1[] = {
 0, 2, 0,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 6, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -6, 5,
 (int8_t) 255, 14, 0,
 0, -8, 28,
 (int8_t) 255, 14, -1,
 0, -8, -5,
 (int8_t) 255, 14, -1,
 0, -20, -26,
 (int8_t) 255, 14, -1,
 0, -6, 6,
 (int8_t) 255, 6, 27,
 (int8_t) 255, 6, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -6, 6,
 1
};

const int8_t height2FallingLeft2[] = {
 (int8_t) 255, 6, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 24, -6,
 0, -18, 20,
 (int8_t) 255, 24, -8,
 0, -16, 2,
 (int8_t) 255, 24, -8,
 0, -30, -5,
 (int8_t) 255, 24, -7,
 0, -8, 6,
 (int8_t) 255, 6, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -12,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight2[] = {
 0, 6, 28,
 (int8_t) 255, 13, 5,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -5,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 4, -26,
 0, 9, 31,
 (int8_t) 255, 5, -26,
 0, 3, 20,
 (int8_t) 255, 5, -26,
 0, -18, 21,
 (int8_t) 255, 4, -25,
 0, -8, 5,
 (int8_t) 255, 14, 5,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -14, -4,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2FallingRight2[] = {
 0, 3, 0,
 (int8_t) 255, 0, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 0, -13,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 27, 8,
 0, -27, 6,
 (int8_t) 255, 27, 7,
 0, -19, -13,
 (int8_t) 255, 27, 7,
 0, -27, -20,
 (int8_t) 255, 27, 7,
 0, -8, 6,
 (int8_t) 255, 0, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 0, -13,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft2[] = {
 0, 11, -4,
 (int8_t) 255, -11, 4,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 15, 25,
 0, -26, -21,
 (int8_t) 255, 15, 26,
 0, -7, -31,
 (int8_t) 255, 15, 25,
 0, -4, -30,
 (int8_t) 255, 15, 25,
 0, -8, 6,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack2[] = {
 0, 4, 0,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 4, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -4, 5,
 (int8_t) 255, 29, -2,
 0, -26, 16,
 (int8_t) 255, 29, -3,
 0, -25, -3,
 (int8_t) 255, 29, -3,
 0, -32, -10,
 (int8_t) 255, 29, -3,
 0, -4, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 4, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -4, 6,
 1
};
const int8_t height2RisingFront2[] = {
 0, 9, 2,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -9, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 9, 2,
 (int8_t) 255, 25, -10,
 0, -22, 24,
 (int8_t) 255, 25, -11,
 0, -34, 9,
 (int8_t) 255, 25, -11,
 0, -28, -3,
 (int8_t) 255, 25, -10,
 0, 9, 2,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -9, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 9, 2,
 1
};
const int8_t height2FallingFront2[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 11, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 21, 3,
 0, -18, 11,
 (int8_t) 255, 21, 3,
 0, -10, -9,
 (int8_t) 255, 21, 3,
 0, -24, -16,
 (int8_t) 255, 21, 3,
 0, -11, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 11, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -11, 5,
 1
};
const int8_t height2RisingBack2[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 2,
 (int8_t) 255, -5, 11,
 0, 8, 2,
 (int8_t) 255, -5, 11,
 0, 20, -13,
 (int8_t) 255, -5, 11,
 0, 2, -24,
 (int8_t) 255, -5, 11,
 0, -15, 2,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 2,
 1
};
const int8_t depth2RollingLeft2[] = {
 (int8_t) 255, 6, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -6, -13,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 12, -3,
 0, -6, 17,
 (int8_t) 255, 12, -4,
 0, 4, -8,
 (int8_t) 255, 12, -3,
 0, -18, -10,
 (int8_t) 255, 12, -4,
 0, -16, 12,
 (int8_t) 255, 6, 13,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -6, -14,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight2[] = {
 0, 3, 0,
 (int8_t) 255, 0, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 0, -13,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 14, 4,
 0, -14, 10,
 (int8_t) 255, 13, 4,
 0, 3, -16,
 (int8_t) 255, 13, 4,
 0, -13, -17,
 (int8_t) 255, 14, 4,
 0, -16, 11,
 (int8_t) 255, -1, 14,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 1, -13,
 (int8_t) 255, -16, 11,
 1
};
const int8_t width2RollingFront2[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 11, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 10, 2,
 0, -4, 26,
 (int8_t) 255, 10, 2,
 0, 1, -8,
 (int8_t) 255, 11, 2,
 0, -17, -29,
 (int8_t) 255, 11, 2,
 0, -12, 5,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 12, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -12, 5,
 1
};
const int8_t width2RollingBack2[] = {
 0, 4, 0,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 4, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -4, 5,
 (int8_t) 255, 14, -1,
 0, -8, 29,
 (int8_t) 255, 14, -2,
 0, -10, -4,
 (int8_t) 255, 15, -2,
 0, -21, -25,
 (int8_t) 255, 15, -2,
 0, -5, 6,
 (int8_t) 255, 6, 27,
 (int8_t) 255, 5, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -5, 6,
 1
};

const int8_t height2FallingLeft3[] = {
 (int8_t) 255, 8, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -8, -12,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 22, -10,
 0, -14, 23,
 (int8_t) 255, 21, -11,
 0, -13, 5,
 (int8_t) 255, 21, -10,
 0, -29, -2,
 (int8_t) 255, 22, -11,
 0, -8, 6,
 (int8_t) 255, 7, 12,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -7, -13,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight3[] = {
 0, 6, 28,
 (int8_t) 255, 13, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -7,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 8, -24,
 0, 5, 31,
 (int8_t) 255, 8, -24,
 0, 0, 18,
 (int8_t) 255, 8, -24,
 0, -21, 17,
 (int8_t) 255, 8, -23,
 0, -8, 5,
 (int8_t) 255, 13, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -6,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2FallingRight3[] = {
 0, 5, 1,
 (int8_t) 255, -2, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 2, -12,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 27, 11,
 0, -29, 2,
 (int8_t) 255, 26, 11,
 0, -18, -17,
 (int8_t) 255, 26, 11,
 0, -24, -23,
 (int8_t) 255, 27, 10,
 0, -8, 6,
 (int8_t) 255, -3, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 3, -13,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft3[] = {
 0, 10, -6,
 (int8_t) 255, -10, 6,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 10, -7,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 18, 23,
 0, -28, -17,
 (int8_t) 255, 18, 24,
 0, -10, -29,
 (int8_t) 255, 18, 23,
 0, -8, -30,
 (int8_t) 255, 18, 23,
 0, -8, 6,
 (int8_t) 255, -10, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 10, -7,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack3[] = {
 0, 6, 0,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 2, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -2, 5,
 (int8_t) 255, 30, -4,
 0, -27, 18,
 (int8_t) 255, 30, -5,
 0, -28, -1,
 (int8_t) 255, 30, -5,
 0, -33, -8,
 (int8_t) 255, 30, -5,
 0, -2, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 2, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -2, 6,
 1
};
const int8_t height2RisingFront3[] = {
 0, 7, 3,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -7, -3,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 7, 3,
 (int8_t) 255, 27, -9,
 0, -24, 23,
 (int8_t) 255, 27, -10,
 0, -34, 7,
 (int8_t) 255, 27, -10,
 0, -30, -4,
 (int8_t) 255, 27, -9,
 0, 7, 3,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -7, -3,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 7, 3,
 1
};
const int8_t height2FallingFront3[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 12, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -12, 5,
 (int8_t) 255, 18, 5,
 0, -15, 9,
 (int8_t) 255, 18, 5,
 0, -6, -11,
 (int8_t) 255, 18, 5,
 0, -21, -18,
 (int8_t) 255, 18, 5,
 0, -12, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 12, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -12, 5,
 1
};
const int8_t height2RisingBack3[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -15, 3,
 (int8_t) 255, -1, 10,
 0, 4, 3,
 (int8_t) 255, -1, 10,
 0, 16, -12,
 (int8_t) 255, -1, 9,
 0, -2, -23,
 (int8_t) 255, -1, 10,
 0, -15, 3,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 3,
 1
};
const int8_t depth2RollingLeft3[] = {
 (int8_t) 255, 8, 13,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -8, -12,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 11, -4,
 0, -3, 17,
 (int8_t) 255, 11, -5,
 0, 5, -7,
 (int8_t) 255, 11, -4,
 0, -19, -8,
 (int8_t) 255, 11, -5,
 0, -16, 12,
 (int8_t) 255, 8, 12,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -8, -13,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight3[] = {
 0, 5, 1,
 (int8_t) 255, -2, 13,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 2, -12,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 13, 5,
 0, -15, 8,
 (int8_t) 255, 13, 5,
 0, 3, -17,
 (int8_t) 255, 13, 5,
 0, -11, -17,
 (int8_t) 255, 13, 5,
 0, -16, 11,
 (int8_t) 255, -2, 13,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 2, -12,
 (int8_t) 255, -16, 11,
 1
};
const int8_t width2RollingFront3[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 12, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -12, 5,
 (int8_t) 255, 9, 2,
 0, -3, 26,
 (int8_t) 255, 9, 2,
 0, 3, -8,
 (int8_t) 255, 9, 3,
 0, -15, -30,
 (int8_t) 255, 9, 3,
 0, -12, 4,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 12, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -12, 4,
 1
};
const int8_t width2RollingBack3[] = {
 0, 6, 0,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 2, -6,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -2, 5,
 (int8_t) 255, 15, -2,
 0, -9, 30,
 (int8_t) 255, 15, -3,
 0, -13, -3,
 (int8_t) 255, 15, -2,
 0, -21, -25,
 (int8_t) 255, 15, -2,
 0, -2, 5,
 (int8_t) 255, 6, 27,
 (int8_t) 255, 2, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -2, 5,
 1
};

const int8_t height2FallingLeft4[] = {
 (int8_t) 255, 9, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -9, -11,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 20, -13,
 0, -11, 25,
 (int8_t) 255, 20, -13,
 0, -12, 7,
 (int8_t) 255, 20, -13,
 0, -29, 2,
 (int8_t) 255, 20, -14,
 0, -8, 6,
 (int8_t) 255, 9, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -9, -12,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight4[] = {
 0, 6, 28,
 (int8_t) 255, 12, 9,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -12, -9,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 11, -22,
 0, 1, 31,
 (int8_t) 255, 11, -23,
 0, -3, 17,
 (int8_t) 255, 11, -23,
 0, -23, 14,
 (int8_t) 255, 11, -22,
 0, -8, 6,
 (int8_t) 255, 12, 8,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -12, -8,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight4[] = {
 0, 7, 2,
 (int8_t) 255, -4, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 4, -11,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 25, 14,
 0, -29, -2,
 (int8_t) 255, 26, 14,
 0, -18, -20,
 (int8_t) 255, 26, 14,
 0, -22, -25,
 (int8_t) 255, 25, 13,
 0, -8, 6,
 (int8_t) 255, -3, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 3, -12,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft4[] = {
 0, 8, -8,
 (int8_t) 255, -8, 8,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 8, -9,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 21, 22,
 0, -29, -14,
 (int8_t) 255, 21, 22,
 0, -13, -27,
 (int8_t) 255, 21, 21,
 0, -13, -30,
 (int8_t) 255, 21, 22,
 0, -8, 6,
 (int8_t) 255, -8, 8,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 8, -8,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack4[] = {
 0, 8, 0,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 0, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 0, 5,
 (int8_t) 255, 30, -6,
 0, -27, 19,
 (int8_t) 255, 30, -6,
 0, -30, 1,
 (int8_t) 255, 31, -6,
 0, -34, -7,
 (int8_t) 255, 31, -6,
 0, -1, 5,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 1, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -1, 5,
 1
};
const int8_t height2RisingFront4[] = {
 0, 5, 4,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -5, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 5, 4,
 (int8_t) 255, 29, -9,
 0, -26, 23,
 (int8_t) 255, 29, -10,
 0, -34, 6,
 (int8_t) 255, 29, -10,
 0, -32, -4,
 (int8_t) 255, 29, -9,
 0, 5, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -5, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 5, 4,
 1
};
const int8_t height2FallingFront4[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 13, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -13, 4,
 (int8_t) 255, 15, 6,
 0, -12, 8,
 (int8_t) 255, 15, 6,
 0, -2, -11,
 (int8_t) 255, 15, 6,
 0, -18, -19,
 (int8_t) 255, 15, 5,
 0, -13, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 13, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -13, 5,
 1
};
const int8_t height2RisingBack4[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -15, 4,
 (int8_t) 255, 3, 10,
 0, 0, 3,
 (int8_t) 255, 3, 10,
 0, 12, -13,
 (int8_t) 255, 3, 9,
 0, -6, -23,
 (int8_t) 255, 3, 10,
 0, -15, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 4,
 1
};
const int8_t depth2RollingLeft4[] = {
 (int8_t) 255, 9, 12,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -9, -11,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 10, -6,
 0, -1, 18,
 (int8_t) 255, 10, -7,
 0, 6, -5,
 (int8_t) 255, 10, -6,
 0, -19, -5,
 (int8_t) 255, 10, -7,
 0, -16, 12,
 (int8_t) 255, 9, 11,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -9, -12,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight4[] = {
 0, 7, 2,
 (int8_t) 255, -4, 12,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 4, -11,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 13, 7,
 0, -17, 5,
 (int8_t) 255, 13, 7,
 0, 3, -19,
 (int8_t) 255, 13, 7,
 0, -9, -18,
 (int8_t) 255, 13, 7,
 0, -16, 11,
 (int8_t) 255, -4, 12,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 4, -11,
 (int8_t) 255, -16, 11,
 1
};
const int8_t width2RollingFront4[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 13, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -13, 4,
 (int8_t) 255, 7, 3,
 0, -1, 25,
 (int8_t) 255, 7, 3,
 0, 6, -8,
 (int8_t) 255, 8, 3,
 0, -14, -30,
 (int8_t) 255, 8, 3,
 0, -14, 4,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 14, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -14, 4,
 1
};
const int8_t width2RollingBack4[] = {
 0, 8, 0,
 (int8_t) 255, 6, 27,
 (int8_t) 255, 0, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 0, 5,
 (int8_t) 255, 15, -3,
 0, -9, 30,
 (int8_t) 255, 15, -3,
 0, -15, -2,
 (int8_t) 255, 15, -3,
 0, -21, -24,
 (int8_t) 255, 15, -3,
 0, 0, 5,
 (int8_t) 255, 6, 27,
 (int8_t) 255, 0, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 0, 5,
 1
};

const int8_t height2FallingLeft5[] = {
 (int8_t) 255, 10, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -10, -10,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 17, -16,
 0, -7, 27,
 (int8_t) 255, 17, -16,
 0, -9, 10,
 (int8_t) 255, 17, -16,
 0, -27, 6,
 (int8_t) 255, 17, -17,
 0, -8, 6,
 (int8_t) 255, 10, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -10, -11,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight5[] = {
 0, 6, 28,
 (int8_t) 255, 11, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -11, -10,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 14, -20,
 0, -3, 30,
 (int8_t) 255, 14, -20,
 0, -6, 14,
 (int8_t) 255, 14, -20,
 0, -25, 10,
 (int8_t) 255, 14, -20,
 0, -8, 6,
 (int8_t) 255, 11, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -11, -10,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight5[] = {
 0, 9, 3,
 (int8_t) 255, -6, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 6, -10,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 24, 17,
 0, -30, -6,
 (int8_t) 255, 24, 17,
 0, -16, -23,
 (int8_t) 255, 24, 17,
 0, -18, -27,
 (int8_t) 255, 24, 16,
 0, -8, 6,
 (int8_t) 255, -6, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 6, -11,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft5[] = {
 0, 7, -9,
 (int8_t) 255, -7, 9,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 7, -10,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 23, 19,
 0, -30, -10,
 (int8_t) 255, 23, 20,
 0, -15, -25,
 (int8_t) 255, 23, 19,
 0, -16, -29,
 (int8_t) 255, 23, 19,
 0, -8, 6,
 (int8_t) 255, -7, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 7, -10,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack5[] = {
 0, 10, 0,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -2, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 2, 5,
 (int8_t) 255, 30, -8,
 0, -27, 21,
 (int8_t) 255, 30, -8,
 0, -32, 3,
 (int8_t) 255, 30, -7,
 0, -33, -6,
 (int8_t) 255, 30, -7,
 0, 2, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -2, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 2, 4,
 1
};
const int8_t height2RisingFront5[] = {
 0, 4, 4,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -4, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 4, 4,
 (int8_t) 255, 29, -7,
 0, -26, 21,
 (int8_t) 255, 29, -8,
 0, -33, 4,
 (int8_t) 255, 30, -8,
 0, -33, -6,
 (int8_t) 255, 30, -7,
 0, 3, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -3, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 3, 4,
 1
};
const int8_t height2FallingFront5[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 14, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -14, 4,
 (int8_t) 255, 11, 7,
 0, -8, 7,
 (int8_t) 255, 11, 7,
 0, 3, -12,
 (int8_t) 255, 11, 8,
 0, -14, -21,
 (int8_t) 255, 11, 7,
 0, -14, 4,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 14, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -14, 4,
 1
};
const int8_t height2RisingBack5[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -15, 4,
 (int8_t) 255, 7, 8,
 0, -4, 5,
 (int8_t) 255, 7, 8,
 0, 8, -11,
 (int8_t) 255, 7, 7,
 0, -10, -21,
 (int8_t) 255, 7, 8,
 0, -15, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 4,
 1
};
const int8_t depth2RollingLeft5[] = {
 (int8_t) 255, 10, 11,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -10, -11,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 8, -8,
 0, 2, 19,
 (int8_t) 255, 9, -8,
 0, 7, -3,
 (int8_t) 255, 9, -8,
 0, -19, -3,
 (int8_t) 255, 8, -9,
 0, -16, 12,
 (int8_t) 255, 11, 11,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -11, -12,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight5[] = {
 0, 9, 3,
 (int8_t) 255, -6, 11,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 6, -10,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 12, 8,
 0, -18, 3,
 (int8_t) 255, 12, 9,
 0, 4, -21,
 (int8_t) 255, 12, 9,
 0, -6, -19,
 (int8_t) 255, 12, 8,
 0, -16, 11,
 (int8_t) 255, -6, 12,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 6, -11,
 (int8_t) 255, -16, 11,
 1
};
const int8_t width2RollingFront5[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 14, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -14, 4,
 (int8_t) 255, 5, 4,
 0, 1, 24,
 (int8_t) 255, 5, 4,
 0, 9, -9,
 (int8_t) 255, 6, 4,
 0, -12, -31,
 (int8_t) 255, 6, 4,
 0, -15, 4,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -15, 4,
 1
};
const int8_t width2RollingBack5[] = {
 0, 10, 0,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -2, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 2, 5,
 (int8_t) 255, 15, -4,
 0, -9, 31,
 (int8_t) 255, 15, -4,
 0, -17, -1,
 (int8_t) 255, 15, -4,
 0, -21, -23,
 (int8_t) 255, 15, -4,
 0, 2, 5,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -2, -5,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 2, 5,
 1
};

const int8_t height2FallingLeft6[] = {
 (int8_t) 255, 11, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -11, -9,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 14, -19,
 0, -3, 29,
 (int8_t) 255, 14, -19,
 0, -6, 13,
 (int8_t) 255, 14, -19,
 0, -25, 10,
 (int8_t) 255, 14, -20,
 0, -8, 6,
 (int8_t) 255, 11, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -11, -10,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight6[] = {
 0, 6, 28,
 (int8_t) 255, 10, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -10, -11,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 17, -17,
 0, -7, 28,
 (int8_t) 255, 17, -17,
 0, -9, 11,
 (int8_t) 255, 17, -17,
 0, -27, 6,
 (int8_t) 255, 17, -17,
 0, -8, 6,
 (int8_t) 255, 10, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -10, -11,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight6[] = {
 0, 10, 4,
 (int8_t) 255, -7, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 7, -9,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 23, 20,
 0, -30, -10,
 (int8_t) 255, 23, 20,
 0, -15, -26,
 (int8_t) 255, 23, 20,
 0, -16, -29,
 (int8_t) 255, 23, 19,
 0, -8, 6,
 (int8_t) 255, -7, 10,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 7, -10,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft6[] = {
 0, 6, -10,
 (int8_t) 255, -6, 10,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 6, -11,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 24, 16,
 0, -30, -6,
 (int8_t) 255, 24, 17,
 0, -16, -22,
 (int8_t) 255, 24, 16,
 0, -18, -27,
 (int8_t) 255, 24, 16,
 0, -8, 6,
 (int8_t) 255, -6, 11,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 6, -11,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack6[] = {
 0, 12, -1,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -4, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 4, 4,
 (int8_t) 255, 29, -8,
 0, -26, 21,
 (int8_t) 255, 29, -8,
 0, -33, 4,
 (int8_t) 255, 30, -8,
 0, -33, -5,
 (int8_t) 255, 30, -8,
 0, 3, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -3, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 3, 4,
 1
};
const int8_t height2RisingFront6[] = {
 0, 2, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -2, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 2, 5,
 (int8_t) 255, 30, -7,
 0, -27, 21,
 (int8_t) 255, 30, -8,
 0, -32, 3,
 (int8_t) 255, 30, -7,
 0, -33, -7,
 (int8_t) 255, 30, -6,
 0, 2, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -2, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 2, 4,
 1
};
const int8_t height2FallingFront6[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 3,
 (int8_t) 255, 7, 8,
 0, -4, 6,
 (int8_t) 255, 7, 8,
 0, 8, -12,
 (int8_t) 255, 7, 8,
 0, -10, -21,
 (int8_t) 255, 7, 7,
 0, -15, 4,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -15, 4,
 1
};
const int8_t height2RisingBack6[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 14, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -14, 5,
 (int8_t) 255, 11, 7,
 0, -8, 6,
 (int8_t) 255, 11, 7,
 0, 3, -11,
 (int8_t) 255, 11, 7,
 0, -14, -21,
 (int8_t) 255, 11, 8,
 0, -14, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 14, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -14, 4,
 1
};
const int8_t depth2RollingLeft6[] = {
 (int8_t) 255, 11, 10,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -11, -10,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 7, -9,
 0, 4, 19,
 (int8_t) 255, 7, -10,
 0, 9, -1,
 (int8_t) 255, 7, -10,
 0, -18, 0,
 (int8_t) 255, 7, -10,
 0, -16, 12,
 (int8_t) 255, 11, 9,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -11, -10,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight6[] = {
 0, 10, 4,
 (int8_t) 255, -7, 10,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 7, -9,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 11, 10,
 0, -18, 0,
 (int8_t) 255, 11, 10,
 0, 5, -22,
 (int8_t) 255, 11, 10,
 0, -4, -19,
 (int8_t) 255, 11, 9,
 0, -16, 12,
 (int8_t) 255, -7, 10,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 7, -10,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront6[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -15, 3,
 (int8_t) 255, 4, 4,
 0, 2, 24,
 (int8_t) 255, 4, 4,
 0, 11, -8,
 (int8_t) 255, 3, 4,
 0, -9, -31,
 (int8_t) 255, 3, 3,
 0, -14, 4,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 14, -4,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -14, 4,
 1
};
const int8_t width2RollingBack6[] = {
 0, 12, -1,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -4, -4,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 4, 4,
 (int8_t) 255, 14, -4,
 0, -8, 31,
 (int8_t) 255, 14, -4,
 0, -18, 0,
 (int8_t) 255, 15, -4,
 0, -21, -23,
 (int8_t) 255, 15, -4,
 0, 3, 4,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -3, -4,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 3, 4,
 1
};

const int8_t height2FallingLeft7[] = {
 (int8_t) 255, 12, 9,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -12, -8,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 11, -21,
 0, 1, 30,
 (int8_t) 255, 11, -22,
 0, -3, 16,
 (int8_t) 255, 11, -22,
 0, -23, 14,
 (int8_t) 255, 11, -22,
 0, -8, 6,
 (int8_t) 255, 12, 8,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -12, -8,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight7[] = {
 0, 6, 28,
 (int8_t) 255, 9, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -9, -12,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 20, -14,
 0, -11, 26,
 (int8_t) 255, 20, -14,
 0, -12, 8,
 (int8_t) 255, 20, -14,
 0, -29, 2,
 (int8_t) 255, 20, -14,
 0, -8, 6,
 (int8_t) 255, 9, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -9, -12,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight7[] = {
 0, 11, 5,
 (int8_t) 255, -8, 9,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 8, -8,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 21, 23,
 0, -29, -14,
 (int8_t) 255, 21, 22,
 0, -13, -28,
 (int8_t) 255, 21, 22,
 0, -13, -30,
 (int8_t) 255, 21, 22,
 0, -8, 6,
 (int8_t) 255, -8, 8,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 8, -8,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft7[] = {
 0, 4, -11,
 (int8_t) 255, -4, 11,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 4, -12,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 25, 13,
 0, -29, -2,
 (int8_t) 255, 26, 14,
 0, -18, -19,
 (int8_t) 255, 26, 13,
 0, -22, -25,
 (int8_t) 255, 25, 14,
 0, -8, 5,
 (int8_t) 255, -3, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 3, -11,
 (int8_t) 255, -8, 5,
 1
};
const int8_t height2FallingBack7[] = {
 0, 13, -1,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -5, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 5, 4,
 (int8_t) 255, 29, -10,
 0, -26, 23,
 (int8_t) 255, 29, -10,
 0, -34, 6,
 (int8_t) 255, 29, -9,
 0, -32, -4,
 (int8_t) 255, 29, -10,
 0, 5, 4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -5, -3,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 5, 4,
 1
};
const int8_t height2RisingFront7[] = {
 0, 0, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 0, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 0, 5,
 (int8_t) 255, 30, -5,
 0, -27, 19,
 (int8_t) 255, 30, -6,
 0, -30, 1,
 (int8_t) 255, 31, -6,
 0, -34, -8,
 (int8_t) 255, 31, -5,
 0, -1, 5,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 1, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -1, 5,
 1
};
const int8_t height2FallingFront7[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 3,
 (int8_t) 255, 3, 10,
 0, 0, 4,
 (int8_t) 255, 3, 10,
 0, 12, -14,
 (int8_t) 255, 3, 10,
 0, -6, -23,
 (int8_t) 255, 3, 9,
 0, -15, 4,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -15, 4,
 1
};
const int8_t height2RisingBack7[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 13, -4,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -13, 5,
 (int8_t) 255, 15, 6,
 0, -12, 7,
 (int8_t) 255, 15, 6,
 0, -2, -10,
 (int8_t) 255, 15, 5,
 0, -18, -19,
 (int8_t) 255, 15, 6,
 0, -13, 5,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 13, -5,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -13, 5,
 1
};
const int8_t depth2RollingLeft7[] = {
 (int8_t) 255, 12, 9,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -12, -9,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 6, -10,
 0, 6, 19,
 (int8_t) 255, 6, -11,
 0, 10, 0,
 (int8_t) 255, 6, -12,
 0, -18, 3,
 (int8_t) 255, 6, -11,
 0, -16, 12,
 (int8_t) 255, 12, 8,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -12, -8,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight7[] = {
 0, 11, 5,
 (int8_t) 255, -8, 9,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 8, -8,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 11, 12,
 0, -19, -3,
 (int8_t) 255, 10, 11,
 0, 6, -23,
 (int8_t) 255, 10, 11,
 0, -2, -19,
 (int8_t) 255, 11, 11,
 0, -16, 12,
 (int8_t) 255, -9, 8,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 9, -8,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront7[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -15, 3,
 (int8_t) 255, 2, 5,
 0, 4, 23,
 (int8_t) 255, 2, 5,
 0, 13, -9,
 (int8_t) 255, 2, 5,
 0, -8, -32,
 (int8_t) 255, 2, 4,
 0, -15, 4,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -4,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -15, 4,
 1
};
const int8_t width2RollingBack7[] = {
 0, 13, -1,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -5, -4,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 5, 4,
 (int8_t) 255, 15, -5,
 0, -9, 32,
 (int8_t) 255, 15, -5,
 0, -20, 1,
 (int8_t) 255, 14, -5,
 0, -20, -22,
 (int8_t) 255, 14, -5,
 0, 6, 4,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -6, -4,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 6, 4,
 1
};

const int8_t height2FallingLeft8[] = {
 (int8_t) 255, 13, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -6,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 8, -23,
 0, 5, 30,
 (int8_t) 255, 8, -23,
 0, 0, 17,
 (int8_t) 255, 8, -23,
 0, -21, 17,
 (int8_t) 255, 8, -24,
 0, -8, 6,
 (int8_t) 255, 13, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -7,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight8[] = {
 0, 6, 28,
 (int8_t) 255, 8, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -8, -13,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 22, -11,
 0, -14, 24,
 (int8_t) 255, 21, -11,
 0, -13, 5,
 (int8_t) 255, 21, -11,
 0, -29, -2,
 (int8_t) 255, 22, -11,
 0, -8, 6,
 (int8_t) 255, 7, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -7, -13,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight8[] = {
 0, 13, 7,
 (int8_t) 255, -10, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 10, -7,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 18, 24,
 0, -28, -17,
 (int8_t) 255, 18, 24,
 0, -10, -30,
 (int8_t) 255, 18, 24,
 0, -8, -31,
 (int8_t) 255, 18, 24,
 0, -8, 6,
 (int8_t) 255, -10, 7,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 10, -7,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft8[] = {
 0, 2, -12,
 (int8_t) 255, -2, 12,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 2, -13,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 27, 11,
 0, -29, 1,
 (int8_t) 255, 26, 11,
 0, -18, -16,
 (int8_t) 255, 26, 10,
 0, -24, -23,
 (int8_t) 255, 27, 11,
 0, -8, 6,
 (int8_t) 255, -3, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 3, -12,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack8[] = {
 0, 15, -2,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -7, -3,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 7, 3,
 (int8_t) 255, 27, -10,
 0, -24, 23,
 (int8_t) 255, 27, -10,
 0, -34, 7,
 (int8_t) 255, 27, -9,
 0, -30, -4,
 (int8_t) 255, 27, -10,
 0, 7, 3,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -7, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 7, 3,
 1
};
const int8_t height2RisingFront8[] = {
 0, -1, 6,
 (int8_t) 255, 2, 14,
 (int8_t) 255, 2, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -1, 6,
 (int8_t) 255, 29, -5,
 0, -27, 19,
 (int8_t) 255, 30, -5,
 0, -28, -1,
 (int8_t) 255, 30, -5,
 0, -33, -9,
 (int8_t) 255, 30, -4,
 0, -2, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 2, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -2, 5,
 1
};
const int8_t height2FallingFront8[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 2,
 (int8_t) 255, 0, 10,
 0, 3, 4,
 (int8_t) 255, -1, 10,
 0, 16, -13,
 (int8_t) 255, -1, 10,
 0, -2, -23,
 (int8_t) 255, -1, 9,
 0, -14, 3,
 (int8_t) 255, 2, 14,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -14, 3,
 1
};
const int8_t height2RisingBack8[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 12, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -12, 6,
 (int8_t) 255, 18, 5,
 0, -15, 8,
 (int8_t) 255, 18, 5,
 0, -6, -10,
 (int8_t) 255, 18, 4,
 0, -21, -18,
 (int8_t) 255, 18, 5,
 0, -12, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 12, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -12, 6,
 1
};
const int8_t depth2RollingLeft8[] = {
 (int8_t) 255, 13, 7,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -13, -7,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 4, -11,
 0, 9, 18,
 (int8_t) 255, 4, -11,
 0, 12, 0,
 (int8_t) 255, 4, -12,
 0, -17, 5,
 (int8_t) 255, 4, -12,
 0, -16, 12,
 (int8_t) 255, 13, 7,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -13, -7,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight8[] = {
 0, 13, 7,
 (int8_t) 255, -10, 7,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 10, -6,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 9, 12,
 0, -19, -5,
 (int8_t) 255, 9, 12,
 0, 7, -24,
 (int8_t) 255, 9, 12,
 0, 1, -18,
 (int8_t) 255, 9, 11,
 0, -16, 12,
 (int8_t) 255, -10, 7,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 10, -7,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront8[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -15, 2,
 (int8_t) 255, 0, 5,
 0, 6, 23,
 (int8_t) 255, 0, 5,
 0, 15, -8,
 (int8_t) 255, 0, 5,
 0, -6, -32,
 (int8_t) 255, 0, 4,
 0, -15, 3,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -15, 3,
 1
};
const int8_t width2RollingBack8[] = {
 0, 15, -2,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -7, -3,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 7, 3,
 (int8_t) 255, 14, -5,
 0, -8, 32,
 (int8_t) 255, 14, -5,
 0, -21, 2,
 (int8_t) 255, 13, -5,
 0, -19, -22,
 (int8_t) 255, 13, -5,
 0, 8, 3,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -8, -3,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 8, 3,
 1
};

const int8_t height2FallingLeft9[] = {
 (int8_t) 255, 13, 5,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -13, -5,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 4, -25,
 0, 9, 30,
 (int8_t) 255, 5, -25,
 0, 3, 20,
 (int8_t) 255, 5, -26,
 0, -18, 21,
 (int8_t) 255, 4, -26,
 0, -8, 6,
 (int8_t) 255, 14, 5,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -14, -5,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight9[] = {
 0, 6, 28,
 (int8_t) 255, 6, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -14,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 24, -7,
 0, -18, 21,
 (int8_t) 255, 24, -8,
 0, -16, 2,
 (int8_t) 255, 24, -8,
 0, -30, -6,
 (int8_t) 255, 24, -7,
 0, -8, 6,
 (int8_t) 255, 6, 13,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -6, -13,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight9[] = {
 0, 14, 9,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 15, 26,
 0, -26, -21,
 (int8_t) 255, 15, 26,
 0, -7, -32,
 (int8_t) 255, 15, 26,
 0, -4, -31,
 (int8_t) 255, 15, 26,
 0, -8, 6,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft9[] = {
 0, 0, -13,
 (int8_t) 255, 0, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, 0, -14,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 27, 8,
 0, -27, 5,
 (int8_t) 255, 27, 7,
 0, -19, -12,
 (int8_t) 255, 27, 6,
 0, -27, -20,
 (int8_t) 255, 27, 8,
 0, -8, 6,
 (int8_t) 255, 0, 12,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 0, -12,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack9[] = {
 0, 17, -3,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -9, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 9, 2,
 (int8_t) 255, 25, -11,
 0, -22, 24,
 (int8_t) 255, 25, -10,
 0, -34, 8,
 (int8_t) 255, 25, -10,
 0, -28, -3,
 (int8_t) 255, 25, -11,
 0, 9, 2,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -9, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 9, 2,
 1
};
const int8_t height2RisingFront9[] = {
 0, -3, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 3, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -3, 6,
 (int8_t) 255, 28, -3,
 0, -25, 17,
 (int8_t) 255, 28, -3,
 0, -25, -3,
 (int8_t) 255, 29, -3,
 0, -32, -11,
 (int8_t) 255, 29, -2,
 0, -4, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 4, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -4, 5,
 1
};
const int8_t height2FallingFront9[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 1,
 (int8_t) 255, -4, 11,
 0, 7, 3,
 (int8_t) 255, -4, 11,
 0, 19, -13,
 (int8_t) 255, -5, 11,
 0, 2, -24,
 (int8_t) 255, -5, 10,
 0, -14, 2,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 14, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -14, 2,
 1
};
const int8_t height2RisingBack9[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -11, 6,
 (int8_t) 255, 21, 3,
 0, -18, 10,
 (int8_t) 255, 21, 3,
 0, -10, -8,
 (int8_t) 255, 21, 3,
 0, -24, -17,
 (int8_t) 255, 21, 3,
 0, -11, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -11, 6,
 1
};
const int8_t depth2RollingLeft9[] = {
 (int8_t) 255, 13, 5,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -13, -5,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 2, -12,
 0, 11, 17,
 (int8_t) 255, 2, -12,
 0, 14, 1,
 (int8_t) 255, 2, -13,
 0, -15, 8,
 (int8_t) 255, 2, -13,
 0, -16, 12,
 (int8_t) 255, 13, 5,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -13, -5,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight9[] = {
 0, 14, 9,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 11, -4,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 8, 13,
 0, -19, -8,
 (int8_t) 255, 8, 13,
 0, 8, -25,
 (int8_t) 255, 8, 13,
 0, 3, -17,
 (int8_t) 255, 8, 12,
 0, -16, 12,
 (int8_t) 255, -11, 5,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 11, -5,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront9[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -15, 1,
 (int8_t) 255, -1, 6,
 0, 7, 22,
 (int8_t) 255, -2, 6,
 0, 17, -8,
 (int8_t) 255, -2, 5,
 0, -4, -32,
 (int8_t) 255, -2, 4,
 0, -14, 3,
 (int8_t) 255, 5, 28,
 (int8_t) 255, 15, -3,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -14, 3,
 1
};
const int8_t width2RollingBack9[] = {
 0, 17, -3,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -9, -2,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 9, 2,
 (int8_t) 255, 12, -5,
 0, -6, 32,
 (int8_t) 255, 12, -5,
 0, -21, 3,
 (int8_t) 255, 12, -6,
 0, -18, -21,
 (int8_t) 255, 12, -6,
 0, 9, 3,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -9, -3,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 9, 3,
 1
};

const int8_t height2FallingLeft10[] = {
 (int8_t) 255, 13, 4,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -13, -4,
 (int8_t) 255, -8, 5,
 (int8_t) 255, 1, -26,
 0, 12, 30,
 (int8_t) 255, 1, -26,
 0, 7, 21,
 (int8_t) 255, 1, -27,
 0, -14, 23,
 (int8_t) 255, 1, -27,
 0, -8, 6,
 (int8_t) 255, 13, 4,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, -4,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingRight10[] = {
 0, 6, 28,
 (int8_t) 255, 5, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -5, -14,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 25, -4,
 0, -20, 18,
 (int8_t) 255, 25, -4,
 0, -17, -2,
 (int8_t) 255, 25, -4,
 0, -30, -10,
 (int8_t) 255, 25, -4,
 0, -8, 6,
 (int8_t) 255, 5, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -5, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight10[] = {
 0, 15, 10,
 (int8_t) 255, -12, 4,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 12, -4,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 12, 27,
 0, -24, -23,
 (int8_t) 255, 13, 27,
 0, -5, -33,
 (int8_t) 255, 13, 27,
 0, -1, -31,
 (int8_t) 255, 12, 27,
 0, -8, 6,
 (int8_t) 255, -11, 4,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 11, -4,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft10[] = {
 0, 0, -13,
 (int8_t) 255, 0, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -1, -14,
 (int8_t) 255, -7, 6,
 (int8_t) 255, 25, 4,
 0, -25, 9,
 (int8_t) 255, 27, 4,
 0, -19, -9,
 (int8_t) 255, 27, 4,
 0, -28, -18,
 (int8_t) 255, 26, 4,
 0, -8, 6,
 (int8_t) 255, 2, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -2, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack10[] = {
 0, 18, -3,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -10, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 10, 2,
 (int8_t) 255, 23, -12,
 0, -20, 25,
 (int8_t) 255, 23, -11,
 0, -33, 9,
 (int8_t) 255, 22, -11,
 0, -25, -2,
 (int8_t) 255, 22, -12,
 0, 11, 2,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -11, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 11, 2,
 1
};
const int8_t height2RisingFront10[] = {
 0, -5, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 5, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -5, 6,
 (int8_t) 255, 27, -2,
 0, -24, 16,
 (int8_t) 255, 27, -2,
 0, -22, -4,
 (int8_t) 255, 28, -2,
 0, -31, -12,
 (int8_t) 255, 28, -1,
 0, -6, 5,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 6, -6,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -6, 5,
 1
};
const int8_t height2FallingFront10[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -15, 1,
 (int8_t) 255, -8, 12,
 0, 11, 2,
 (int8_t) 255, -8, 12,
 0, 23, -14,
 (int8_t) 255, -9, 12,
 0, 6, -25,
 (int8_t) 255, -9, 11,
 0, -14, 2,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 14, -2,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -14, 2,
 1
};
const int8_t height2RisingBack10[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 10, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -10, 6,
 (int8_t) 255, 24, 2,
 0, -21, 11,
 (int8_t) 255, 24, 2,
 0, -14, -7,
 (int8_t) 255, 23, 2,
 0, -26, -16,
 (int8_t) 255, 23, 2,
 0, -9, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 9, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -9, 6,
 1
};
const int8_t depth2RollingLeft10[] = {
 (int8_t) 255, 13, 4,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -13, -4,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 0, -13,
 0, 13, 17,
 (int8_t) 255, 1, -13,
 0, 15, 2,
 (int8_t) 255, 1, -14,
 0, -14, 10,
 (int8_t) 255, 0, -14,
 0, -16, 12,
 (int8_t) 255, 14, 4,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -14, -4,
 (int8_t) 255, -16, 12,
 1
};
const int8_t depth2RollingRight10[] = {
 0, 15, 10,
 (int8_t) 255, -12, 4,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 12, -3,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 6, 14,
 0, -18, -10,
 (int8_t) 255, 6, 14,
 0, 10, -26,
 (int8_t) 255, 6, 14,
 0, 6, -17,
 (int8_t) 255, 6, 13,
 0, -16, 12,
 (int8_t) 255, -12, 4,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 12, -4,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront10[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 15, -2,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -15, 1,
 (int8_t) 255, -3, 6,
 0, 9, 22,
 (int8_t) 255, -4, 6,
 0, 19, -8,
 (int8_t) 255, -5, 6,
 0, -1, -33,
 (int8_t) 255, -5, 5,
 0, -13, 2,
 (int8_t) 255, 5, 28,
 (int8_t) 255, 14, -2,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -13, 2,
 1
};
const int8_t width2RollingBack10[] = {
 0, 18, -3,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -10, -2,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 10, 2,
 (int8_t) 255, 12, -6,
 0, -6, 33,
 (int8_t) 255, 12, -6,
 0, -22, 4,
 (int8_t) 255, 11, -6,
 0, -17, -21,
 (int8_t) 255, 11, -6,
 0, 11, 2,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -11, -2,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 11, 2,
 1
};

const int8_t height2FallingLeft11[] = {
 (int8_t) 255, 13, 2,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -13, -2,
 (int8_t) 255, -8, 5,
 (int8_t) 255, -2, -27,
 0, 15, 29,
 (int8_t) 255, -2, -27,
 0, 10, 22,
 (int8_t) 255, -2, -28,
 0, -11, 26,
 (int8_t) 255, -3, -28,
 0, -7, 6,
 (int8_t) 255, 13, 2,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -14, -2,
 (int8_t) 255, -7, 6,
 1
};
const int8_t height2RisingRight11[] = {
 0, 6, 28,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 26, 0,
 0, -23, 14,
 (int8_t) 255, 26, 0,
 0, -18, -6,
 (int8_t) 255, 26, 0,
 0, -29, -14,
 (int8_t) 255, 26, 0,
 0, -8, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight11[] = {
 0, 15, 12,
 (int8_t) 255, -12, 2,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 12, -2,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 10, 28,
 0, -22, -26,
 (int8_t) 255, 9, 28,
 0, -1, -34,
 (int8_t) 255, 9, 28,
 0, 3, -30,
 (int8_t) 255, 10, 28,
 0, -8, 6,
 (int8_t) 255, -13, 2,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 13, -2,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft11[] = {
 0, -2, -13,
 (int8_t) 255, 2, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -7, 6,
 (int8_t) 255, 25, 0,
 0, -23, 13,
 (int8_t) 255, 26, 0,
 0, -18, -5,
 (int8_t) 255, 26, 0,
 0, -29, -14,
 (int8_t) 255, 26, 0,
 0, -8, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack11[] = {
 0, 20, -4,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -12, -1,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 12, 1,
 (int8_t) 255, 19, -12,
 0, -16, 25,
 (int8_t) 255, 19, -11,
 0, -31, 10,
 (int8_t) 255, 19, -11,
 0, -22, -2,
 (int8_t) 255, 19, -12,
 0, 12, 1,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -12, -1,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 12, 1,
 1
};
const int8_t height2RisingFront11[] = {
 0, -7, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 7, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -7, 6,
 (int8_t) 255, 25, 0,
 0, -22, 14,
 (int8_t) 255, 25, 0,
 0, -18, -6,
 (int8_t) 255, 26, 0,
 0, -29, -14,
 (int8_t) 255, 26, 0,
 0, -8, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingFront11[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 14, -1,
 (int8_t) 255, -3, -13,
 (int8_t) 255, -14, 0,
 (int8_t) 255, -11, 12,
 0, 14, 2,
 (int8_t) 255, -11, 12,
 0, 25, -13,
 (int8_t) 255, -13, 12,
 0, 10, -25,
 (int8_t) 255, -13, 11,
 0, -12, 1,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 12, -1,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -12, 1,
 1
};
const int8_t height2RisingBack11[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 26, 0,
 0, -23, 13,
 (int8_t) 255, 26, 0,
 0, -18, -5,
 (int8_t) 255, 26, 0,
 0, -29, -14,
 (int8_t) 255, 26, 0,
 0, -8, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t depth2RollingLeft11[] = {
 (int8_t) 255, 13, 2,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -13, -2,
 (int8_t) 255, -16, 11,
 (int8_t) 255, 0, -13,
 0, 13, 15,
 (int8_t) 255, -1, -13,
 0, 17, 2,
 (int8_t) 255, -1, -14,
 0, -12, 12,
 (int8_t) 255, -1, -14,
 0, -15, 12,
 (int8_t) 255, 12, 2,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -13, -2,
 (int8_t) 255, -15, 12,
 1
};
const int8_t depth2RollingRight11[] = {
 0, 15, 12,
 (int8_t) 255, -12, 2,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 12, -2,
 (int8_t) 255, -16, 12,
 (int8_t) 255, 5, 14,
 0, -17, -12,
 (int8_t) 255, 5, 14,
 0, 11, -26,
 (int8_t) 255, 5, 14,
 0, 7, -16,
 (int8_t) 255, 5, 14,
 0, -16, 12,
 (int8_t) 255, -12, 2,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 12, -2,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront11[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 14, -1,
 (int8_t) 255, -6, -27,
 (int8_t) 255, -14, 0,
 (int8_t) 255, -5, 6,
 0, 11, 22,
 (int8_t) 255, -6, 6,
 0, 20, -7,
 (int8_t) 255, -6, 6,
 0, 0, -33,
 (int8_t) 255, -6, 5,
 0, -13, 1,
 (int8_t) 255, 5, 28,
 (int8_t) 255, 14, -1,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -13, 1,
 1
};
const int8_t width2RollingBack11[] = {
 0, 20, -4,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -12, -1,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 12, 1,
 (int8_t) 255, 9, -6,
 0, -3, 33,
 (int8_t) 255, 9, -6,
 0, -21, 5,
 (int8_t) 255, 10, -6,
 0, -16, -21,
 (int8_t) 255, 10, -6,
 0, 11, 1,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -11, -1,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 11, 1,
 1
};

const int8_t height2FallingLeft12[] = {
 (int8_t) 255, 13, 0,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -8, 5,
 (int8_t) 255, -5, -27,
 0, 18, 27,
 (int8_t) 255, -6, -27,
 0, 14, 22,
 (int8_t) 255, -6, -28,
 0, -7, 28,
 (int8_t) 255, -6, -28,
 0, -7, 6,
 (int8_t) 255, 12, 0,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -7, 6,
 1
};
const int8_t height2RisingRight12[] = {
 0, 6, 28,
 (int8_t) 255, 1, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -1, -14,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 27, 4,
 0, -26, 10,
 (int8_t) 255, 27, 4,
 0, -19, -10,
 (int8_t) 255, 27, 4,
 0, -28, -18,
 (int8_t) 255, 27, 4,
 0, -8, 6,
 (int8_t) 255, 1, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -1, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingRight12[] = {
 0, 16, 14,
 (int8_t) 255, -13, 0,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 13, 0,
 (int8_t) 255, -8, 6,
 (int8_t) 255, 6, 28,
 0, -19, -28,
 (int8_t) 255, 6, 28,
 0, 2, -34,
 (int8_t) 255, 6, 28,
 0, 7, -28,
 (int8_t) 255, 6, 28,
 0, -8, 6,
 (int8_t) 255, -13, 0,
 (int8_t) 255, 8, -6,
 (int8_t) 255, 13, 0,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2RisingLeft12[] = {
 0, -4, -13,
 (int8_t) 255, 4, 13,
 (int8_t) 255, 8, -5,
 (int8_t) 255, -5, -14,
 (int8_t) 255, -7, 6,
 (int8_t) 255, 24, -4,
 0, -20, 17,
 (int8_t) 255, 25, -3,
 0, -17, -2,
 (int8_t) 255, 25, -4,
 0, -30, -10,
 (int8_t) 255, 25, -4,
 0, -8, 6,
 (int8_t) 255, 5, 14,
 (int8_t) 255, 8, -6,
 (int8_t) 255, -5, -14,
 (int8_t) 255, -8, 6,
 1
};
const int8_t height2FallingBack12[] = {
 0, 21, -5,
 (int8_t) 255, 3, 13,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -3, -13,
 (int8_t) 255, 13, 0,
 (int8_t) 255, 16, -12,
 0, -13, 25,
 (int8_t) 255, 16, -11,
 0, -29, 11,
 (int8_t) 255, 16, -11,
 0, -19, -2,
 (int8_t) 255, 16, -12,
 0, 13, 0,
 (int8_t) 255, 3, 14,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -3, -14,
 (int8_t) 255, 13, 0,
 1
};
const int8_t height2RisingFront12[] = {
 0, -9, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 9, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -9, 6,
 (int8_t) 255, 23, 2,
 0, -20, 12,
 (int8_t) 255, 23, 2,
 0, -14, -8,
 (int8_t) 255, 24, 2,
 0, -27, -16,
 (int8_t) 255, 24, 2,
 0, -10, 6,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 10, -6,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -10, 6,
 1
};
const int8_t height2FallingFront12[] = {
 (int8_t) 255, 3, 14,
 (int8_t) 255, 13, 0,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -15, 12,
 0, 18, 2,
 (int8_t) 255, -15, 12,
 0, 28, -12,
 (int8_t) 255, -16, 12,
 0, 13, -26,
 (int8_t) 255, -15, 12,
 0, -13, 0,
 (int8_t) 255, 3, 14,
 (int8_t) 255, 12, 0,
 (int8_t) 255, -2, -14,
 (int8_t) 255, -13, 0,
 1
};
const int8_t height2RisingBack12[] = {
 0, 16, -11,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 6, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -6, 6,
 (int8_t) 255, 28, -2,
 0, -25, 15,
 (int8_t) 255, 28, -2,
 0, -22, -3,
 (int8_t) 255, 28, -2,
 0, -31, -12,
 (int8_t) 255, 28, -2,
 0, -6, 6,
 (int8_t) 255, 3, 13,
 (int8_t) 255, 6, -5,
 (int8_t) 255, -3, -14,
 (int8_t) 255, -6, 6,
 1
};
const int8_t depth2RollingLeft12[] = {
 (int8_t) 255, 13, 0,
 (int8_t) 255, 16, -11,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -16, 11,
 (int8_t) 255, -2, -13,
 0, 15, 13,
 (int8_t) 255, -3, -13,
 0, 19, 2,
 (int8_t) 255, -3, -14,
 0, -10, 14,
 (int8_t) 255, -3, -14,
 0, -15, 12,
 (int8_t) 255, 12, 0,
 (int8_t) 255, 16, -12,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -15, 12,
 1
};
const int8_t depth2RollingRight12[] = {
 0, 16, 14,
 (int8_t) 255, -13, 0,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 13, 0,
 (int8_t) 255, -16, 12,
 (int8_t) 255, 3, 14,
 0, -16, -14,
 (int8_t) 255, 3, 14,
 0, 13, -26,
 (int8_t) 255, 3, 14,
 0, 10, -14,
 (int8_t) 255, 3, 14,
 0, -16, 12,
 (int8_t) 255, -13, 0,
 (int8_t) 255, 16, -12,
 (int8_t) 255, 13, 0,
 (int8_t) 255, -16, 12,
 1
};
const int8_t width2RollingFront12[] = {
 (int8_t) 255, 6, 28,
 (int8_t) 255, 13, 0,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -7, 6,
 0, 13, 22,
 (int8_t) 255, -7, 6,
 0, 20, -6,
 (int8_t) 255, -8, 6,
 0, 2, -34,
 (int8_t) 255, -8, 6,
 0, -12, 0,
 (int8_t) 255, 6, 28,
 (int8_t) 255, 12, 0,
 (int8_t) 255, -6, -28,
 (int8_t) 255, -12, 0,
 1
};
const int8_t width2RollingBack12[] = {
 0, 21, -5,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 13, 0,
 (int8_t) 255, 8, -6,
 0, -2, 33,
 (int8_t) 255, 8, -6,
 0, -21, 6,
 (int8_t) 255, 8, -6,
 0, -14, -21,
 (int8_t) 255, 8, -6,
 0, 13, 0,
 (int8_t) 255, 6, 27,
 (int8_t) 255, -13, 0,
 (int8_t) 255, -6, -27,
 (int8_t) 255, 13, 0,
 1
};
const int8_t* height2FallingLeft[] __attribute__ ((section(".text"))) = {
 height2FallingLeft0,
 height2FallingLeft1,
 height2FallingLeft2,
 height2FallingLeft3,
 height2FallingLeft4,
 height2FallingLeft5,
 height2FallingLeft6,
 height2FallingLeft7,
 height2FallingLeft8,
 height2FallingLeft9,
 height2FallingLeft10,
 height2FallingLeft11,
};
const int8_t* height2RisingRight[] __attribute__ ((section(".text"))) = {
 height2RisingRight0,
 height2RisingRight1,
 height2RisingRight2,
 height2RisingRight3,
 height2RisingRight4,
 height2RisingRight5,
 height2RisingRight6,
 height2RisingRight7,
 height2RisingRight8,
 height2RisingRight9,
 height2RisingRight10,
 height2RisingRight11,
};
const int8_t* height2FallingRight[] __attribute__ ((section(".text"))) = {
 height2FallingRight0,
 height2FallingRight1,
 height2FallingRight2,
 height2FallingRight3,
 height2FallingRight4,
 height2FallingRight5,
 height2FallingRight6,
 height2FallingRight7,
 height2FallingRight8,
 height2FallingRight9,
 height2FallingRight10,
 height2FallingRight11,
};
const int8_t* height2RisingLeft[] __attribute__ ((section(".text"))) = {
 height2RisingLeft0,
 height2RisingLeft1,
 height2RisingLeft2,
 height2RisingLeft3,
 height2RisingLeft4,
 height2RisingLeft5,
 height2RisingLeft6,
 height2RisingLeft7,
 height2RisingLeft8,
 height2RisingLeft9,
 height2RisingLeft10,
 height2RisingLeft11,
};
const int8_t* height2FallingBack[] __attribute__ ((section(".text"))) = {
 height2FallingBack0,
 height2FallingBack1,
 height2FallingBack2,
 height2FallingBack3,
 height2FallingBack4,
 height2FallingBack5,
 height2FallingBack6,
 height2FallingBack7,
 height2FallingBack8,
 height2FallingBack9,
 height2FallingBack10,
 height2FallingBack11,
};
const int8_t* height2RisingFront[] __attribute__ ((section(".text"))) = {
 height2RisingFront0,
 height2RisingFront1,
 height2RisingFront2,
 height2RisingFront3,
 height2RisingFront4,
 height2RisingFront5,
 height2RisingFront6,
 height2RisingFront7,
 height2RisingFront8,
 height2RisingFront9,
 height2RisingFront10,
 height2RisingFront11,
};
const int8_t* height2FallingFront[] __attribute__ ((section(".text"))) = {
 height2FallingFront0,
 height2FallingFront1,
 height2FallingFront2,
 height2FallingFront3,
 height2FallingFront4,
 height2FallingFront5,
 height2FallingFront6,
 height2FallingFront7,
 height2FallingFront8,
 height2FallingFront9,
 height2FallingFront10,
 height2FallingFront11,
};
const int8_t* height2RisingBack[] __attribute__ ((section(".text"))) = {
 height2RisingBack0,
 height2RisingBack1,
 height2RisingBack2,
 height2RisingBack3,
 height2RisingBack4,
 height2RisingBack5,
 height2RisingBack6,
 height2RisingBack7,
 height2RisingBack8,
 height2RisingBack9,
 height2RisingBack10,
 height2RisingBack11,
};
const int8_t* depth2RollingLeft[] __attribute__ ((section(".text"))) = {
 depth2RollingLeft0,
 depth2RollingLeft1,
 depth2RollingLeft2,
 depth2RollingLeft3,
 depth2RollingLeft4,
 depth2RollingLeft5,
 depth2RollingLeft6,
 depth2RollingLeft7,
 depth2RollingLeft8,
 depth2RollingLeft9,
 depth2RollingLeft10,
 depth2RollingLeft11,
};
const int8_t* depth2RollingRight[] __attribute__ ((section(".text"))) = {
 depth2RollingRight0,
 depth2RollingRight1,
 depth2RollingRight2,
 depth2RollingRight3,
 depth2RollingRight4,
 depth2RollingRight5,
 depth2RollingRight6,
 depth2RollingRight7,
 depth2RollingRight8,
 depth2RollingRight9,
 depth2RollingRight10,
 depth2RollingRight11,
};
const int8_t* width2RollingFront[] __attribute__ ((section(".text"))) = {
 width2RollingFront0,
 width2RollingFront1,
 width2RollingFront2,
 width2RollingFront3,
 width2RollingFront4,
 width2RollingFront5,
 width2RollingFront6,
 width2RollingFront7,
 width2RollingFront8,
 width2RollingFront9,
 width2RollingFront10,
 width2RollingFront11,
};
const int8_t* width2RollingBack[] __attribute__ ((section(".text"))) = {
 width2RollingBack0,
 width2RollingBack1,
 width2RollingBack2,
 width2RollingBack3,
 width2RollingBack4,
 width2RollingBack5,
 width2RollingBack6,
 width2RollingBack7,
 width2RollingBack8,
 width2RollingBack9,
 width2RollingBack10,
 width2RollingBack11,
};
# 131 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c" 2

int8_t lineX0[120];
int8_t lineY0[120];
int8_t lineX1[120];
int8_t lineY1[120];
int8_t lineCount = 0;
int8_t startX = 0;
int8_t startY = 0;
int8_t endX = 0;
int8_t endY = 0;

enum BlockOrientation_t {
 Standing,
 Vertical,
 Horizontal
};

enum BlockOrientation_t blockOrientation;
int8_t blockX;
int8_t blockY;

const int8_t** blockAnimation;
const int8_t** nextBlockAnimation;
int8_t blockAnimationStep;
int8_t blockAnimating;
int8_t nextBlockX;
int8_t nextBlockY;
int8_t lastBlockDirection;
int8_t blockYOfs;
const char* level;
int8_t levelNumber = 0;

enum GameState_t {
 BlockMovingToStart,
 BlockWaiting,
 BlockMoving,
 BlockFalling,
 BlockMovingAtEnd,
} gameState;

enum BlockDirection_t {
 Left, Up, Right, Down
};

char isField(char c)
{
 return (char)(c == '.' || c == 'a' || c == 'o');
}

int8_t x3d(int8_t x, int8_t y, int8_t z)
{

 x -= 12 / 2 - 4;
 return 14 * x - 6 * z+0*y;
}

int8_t y3d(int8_t x, int8_t y, int8_t z)
{

 y -= 17 / 2;
 return 3 * x + 13 * y + 8 * z;
}

void addLine(int8_t x0, int8_t y0, int8_t x1, int8_t y1)
{
 lineX0[lineCount] = x3d(x0, 0, y0);
 lineY0[lineCount] = y3d(x0, 0, y0);
 lineX1[lineCount] = x3d(x1, 0, y1);
 lineY1[lineCount] = y3d(x1, 0, y1);
 lineCount++;
}

void addTarget(int8_t x, int8_t y)
{
 lineX0[lineCount] = x3d(x, 0, y);
 lineY0[lineCount] = y3d(x, 0, y);
 lineX1[lineCount] = x3d(x + 1, 0, y + 1);
 lineY1[lineCount] = y3d(x + 1, 0, y + 1);
 lineCount++;
 lineX0[lineCount] = x3d(x + 1, 0, y);
 lineY0[lineCount] = y3d(x + 1, 0, y);
 lineX1[lineCount] = x3d(x, 0, y + 1);
 lineY1[lineCount] = y3d(x, 0, y + 1);
 lineCount++;
}
# 226 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
void setupX()
{

 unsigned long int index;
 int8_t x = 0;
 int8_t y = 0;
 for (y = 0; y < 17 - 1; y++) {
  int8_t x0 = -1;
  int8_t x1 = -1;
  for (x = 0; x < 12; x++) {

   index = (unsigned long int) y*12 + (unsigned long int)x;
   char c0 = level[index];

   if (c0 == 'o') {
    addTarget(x, y);
    endX = x;
    endY = y;
   }
   if (c0 == 'a') {
    startX = x;
    startY = y;
   }

   index += 12;
   char c1 = level[index];
   if (isField(c0) || isField(c1)) {
    if (x0 < 0) x0 = x;
    x1 = x;
   } else {
    if (x0 >= 0) {
     addLine(x0, y + 1, x1 + 1, y + 1);
     x0 = -1;
    }
   }
  }
 }
}

void setupY()
{

 unsigned long int index;
 int8_t x = 0;
 int8_t y = 0;
 for (x = 0; x < 12 - 1; x++) {
  int8_t y0 = -1;
  int8_t y1 = -1;
  for (y = 0; y < 17; y++) {




   index = (unsigned long int) y*12 + (unsigned long int)x;
   char c0 = level[index];
   char c1 = level[index+1];
   if (isField(c0) || isField(c1)) {
    if (y0 < 0) y0 = y;
    y1 = y;
   } else {
    if (y0 >= 0) {
     addLine(x + 1, y0, x + 1, y1 + 1);
     y0 = -1;
    }
   }
  }
 }
}

void changeMusic(const uint8_t* music)
{
 (*((volatile uint8_t *) 0xc856)) = 1;
 currentMusic = music;
}

void moveBlock(enum BlockDirection_t move)
{
 blockAnimating = 1;
 lastBlockDirection = move;
 switch (blockOrientation) {
  case Standing:
  switch (move) {
   case Left:
   blockAnimation = height2FallingLeft;
   nextBlockAnimation = width2RollingFront;
   nextBlockX = blockX - 2;
   nextBlockY = blockY;
   blockOrientation = Horizontal;
   break;
   case Right:
   blockAnimation = height2FallingRight;
   nextBlockAnimation = width2RollingFront;
   nextBlockX = blockX + 1;
   nextBlockY = blockY;
   blockOrientation = Horizontal;
   break;
   case Up:
   blockAnimation = height2FallingBack;
   nextBlockAnimation = depth2RollingLeft;
   nextBlockX = blockX;
   nextBlockY = blockY + 1;
   blockOrientation = Vertical;
   break;
   case Down:
   blockAnimation = height2FallingFront;
   nextBlockAnimation = depth2RollingLeft;
   nextBlockX = blockX;
   nextBlockY = blockY - 2;
   blockOrientation = Vertical;
   break;
  }
  break;
  case Vertical:
  switch (move) {
   case Left:
   blockAnimation = depth2RollingLeft;
   nextBlockAnimation = depth2RollingLeft;
   nextBlockX = blockX - 1;
   nextBlockY = blockY;
   break;
   case Right:
   blockAnimation = depth2RollingRight;
   nextBlockAnimation = depth2RollingLeft;
   nextBlockX = blockX + 1;
   nextBlockY = blockY;
   break;
   case Up:
   blockAnimation = height2RisingBack;
   nextBlockAnimation = height2FallingFront;
   nextBlockX = blockX;
   nextBlockY = blockY + 2;
   blockOrientation = Standing;
   break;
   case Down:
   blockAnimation = height2RisingFront;
   nextBlockAnimation = height2FallingFront;
   nextBlockX = blockX;
   nextBlockY = blockY - 1;
   blockOrientation = Standing;
   break;
  }
  break;
  case Horizontal:
  switch (move) {
   case Left:
   blockAnimation = height2RisingLeft;
   nextBlockAnimation = height2FallingRight;
   nextBlockX = blockX - 1;
   nextBlockY = blockY;
   blockOrientation = Standing;
   break;
   case Right:
   blockAnimation = height2RisingRight;
   nextBlockAnimation = height2FallingLeft;
   nextBlockX = blockX + 2;
   nextBlockY = blockY;
   blockOrientation = Standing;
   break;
   case Up:
   blockAnimation = width2RollingBack;
   nextBlockAnimation = width2RollingBack;
   nextBlockX = blockX;
   nextBlockY = blockY + 1;
   break;
   case Down:
   blockAnimation = width2RollingFront;
   nextBlockAnimation = width2RollingBack;
   nextBlockX = blockX;
   nextBlockY = blockY - 1;
   break;
  }
  break;
 }
}

void startBlockFalling()
{
 gameState = BlockFalling;
 blockYOfs = 0;
 moveBlock(lastBlockDirection);
 changeMusic(fallingMusic);
}

void startLevel()
{
 if (levelNumber == 0) {
  level = level0;
 } else if (levelNumber == 1) {
  level = level1;
 } else {
  level = level2;
 }
 lineCount = 0;
 setupX();
 setupY();
 blockX = startX;
 blockY = startY;
 blockAnimation = height2FallingLeft;
 blockAnimationStep = 0;
 blockAnimating = 0;
 blockOrientation = Standing;
 blockYOfs = -30;
 gameState = BlockMovingToStart;
 changeMusic(startMusic);
}

void __attribute__((noinline)) drawField()
{


 Intensity_a(0x55);
# 450 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.c"
 asm("	pshs a, b, dp, x, u");
 asm("	lda #0xd0");
 asm("	tfr a, dp");
 asm("	ldx #0");
 asm("	ldb _lineCount");
 asm("drawFieldLoop:");
 asm("	pshs b");
 asm("	pshs x");
 asm("	jsr 0xf354");
 asm("	puls x");
 asm("	lda _lineY0,x");
 asm("	ldb _lineX0,x");
 asm("	pshs x");
 asm("	jsr 0xf2fc");
 asm("	puls x");
 asm("	lda _lineY1,x");
 asm("	ldb _lineX1,x");
 asm("	suba _lineY0,x");
 asm("	subb _lineX0,x");
 asm("	pshs x");
 asm("	jsr 0xf3df");
 asm("	puls x");
 asm("	lda ,x+");
 asm("	puls b");
 asm("	decb");
 asm("	bne drawFieldLoop");
 asm("	puls a, b, dp, x, u");

}

void drawBlock(int8_t yofs)
{
 Reset0Ref();
 Intensity_a(0x63);
 positd(0, yofs);

 positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));

 Draw_VLp_7F((void*)(blockAnimation[blockAnimationStep]));
}

void blockMovingToStart()
{
 drawField();
 drawBlock(blockYOfs);
 blockYOfs++;
 if (blockYOfs == 0) {
  gameState = BlockWaiting;
 }
}

void blockWaiting()
{
 drawField();
 drawBlock(0);
 Joy_Digital();
 if ((*((volatile int8_t *) 0xc81b)) < -10) {
  moveBlock(Left);
  gameState = BlockMoving;
 } else if ((*((volatile int8_t *) 0xc81b)) > 10) {
  moveBlock(Right);
  gameState = BlockMoving;
 } else if ((*((volatile int8_t *) 0xc81c)) < -10) {
  moveBlock(Down);
  gameState = BlockMoving;
 } else if ((*((volatile int8_t *) 0xc81c)) > 10) {
  moveBlock(Up);
  gameState = BlockMoving;
 }
 if (gameState == BlockMoving) {
  changeMusic(movingMusic);
 }
}

void doBlockAnimation()
{
 if (blockAnimating) {
  if (++blockAnimationStep == 12) {
   blockX = nextBlockX;
   blockY = nextBlockY;
   blockAnimationStep = 0;
   blockAnimation = nextBlockAnimation;
   blockAnimating = 0;
  }
 }
}

void blockMoving()
{
 drawField();
 drawBlock(0);
 doBlockAnimation();
 if (!blockAnimating) {




  unsigned long int index = (unsigned long int )blockY * 12 + (unsigned long int)blockX;
  char c0 = isField(level[index]);
  char c1 = isField(level[index+1]);
  char c2 = isField(level[index + 12]);
  switch (blockOrientation) {
   case Standing:
   if (!c0) {
    startBlockFalling();
   }
   break;
   case Vertical:
   if (!c0 || !c2) {
    startBlockFalling();
   }
   break;
   case Horizontal:
   if (!c0 || ! c1) {
    startBlockFalling();
   }
   break;
  }


  if (blockOrientation == Standing && blockX == endX && blockY == endY) {
   blockYOfs = 0;
   gameState = BlockMovingAtEnd;
   changeMusic(levelEndMusic);
  } else {

   if (gameState != BlockFalling) {
    gameState = BlockWaiting;
   }
  }
 }
}

void blockFalling()
{
 drawField();
 blockYOfs++;
 if (blockYOfs < 12) {
  drawBlock(-blockYOfs*blockYOfs);
  doBlockAnimation();
 }
 if (blockYOfs == 50) {
  startLevel();
 }
}

void blockMovingAtEnd()
{
 drawField();
 drawBlock(blockYOfs);
 blockYOfs++;
 if (blockYOfs == 30) {
  levelNumber++;
  if (levelNumber > 2) levelNumber = 0;
  startLevel();
 }
}

int main()
{




 (*((volatile uint8_t *) 0xc81f)) = 1;
 (*((volatile uint8_t *) 0xc820)) = 3;
 (*((volatile uint8_t *) 0xc821)) = 0;
 (*((volatile uint8_t *) 0xc822)) = 0;

 startLevel();
 while (1) {

  Wait_Recal();

  switch (gameState) {
   case BlockMovingToStart:
   blockMovingToStart();
   break;
   case BlockWaiting:
   blockWaiting();
   break;
   case BlockMoving:
   blockMoving();
   break;
   case BlockFalling:
   blockFalling();
   break;
   case BlockMovingAtEnd:
   blockMovingAtEnd();
   break;
  }


  DP_to_C8();
  Init_Music_chk(currentMusic);
  DP_to_D0();
  Do_Sound();
 }
 return 0;
}
