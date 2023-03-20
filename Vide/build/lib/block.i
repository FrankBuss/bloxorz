# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\block.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\block.c"
# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/stdint.h" 1



typedef unsigned long uint16_t;
typedef signed char int8_t;
typedef long int16_t;
typedef unsigned char uint8_t;
# 2 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\block.c" 2
# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/hardware.h" 1



# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/stdint.h" 1
# 5 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/hardware.h" 2
# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vectrex.h" 1
# 37 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vectrex.h"
       



# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram.h"
       

# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
       
# 48 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern int Vec_Snd_Shadow __attribute__((section(".dpc8")));
extern int Vec_Snd_shadow[15] __attribute__((section(".dpc8")));
extern unsigned int Vec_Btn_State __attribute__((section(".dpc8")));
extern unsigned int Vec_Prev_Btns __attribute__((section(".dpc8")));
extern unsigned int Vec_Buttons __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_4 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_4 __attribute__((section(".dpc8")));
extern int Vec_Joy_Resltn __attribute__((section(".dpc8")));
extern int Vec_Joy_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_2_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux __attribute__((section(".dpc8")));
extern int Vec_Joy_mux[4] __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_Y __attribute__((section(".dpc8")));
extern unsigned int Vec_Misc_Count __attribute__((section(".dpc8")));
extern int Vec_0Ref_Enable __attribute__((section(".dpc8")));
extern unsigned long int Vec_Loop_Count __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_hi __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_lo __attribute__((section(".dpc8")));
extern int Vec_Brightness __attribute__((section(".dpc8")));
extern unsigned int Vec_Dot_Dwell __attribute__((section(".dpc8")));
extern unsigned int Vec_Pattern __attribute__((section(".dpc8")));
extern unsigned long int Vec_Text_HW __attribute__((section(".dpc8")));
extern int Vec_Text_Height __attribute__((section(".dpc8")));
extern int Vec_Text_Width __attribute__((section(".dpc8")));
extern int* Vec_Str_Ptr __attribute__((section(".dpc8")));
extern int Vec_counters[6] __attribute__((section(".dpc8")));
extern int Vec_Counters __attribute__((section(".dpc8")));
extern int Vec_Counter_1 __attribute__((section(".dpc8")));
extern int Vec_Counter_2 __attribute__((section(".dpc8")));
extern int Vec_Counter_3 __attribute__((section(".dpc8")));
extern int Vec_Counter_4 __attribute__((section(".dpc8")));
extern int Vec_Counter_5 __attribute__((section(".dpc8")));
extern int Vec_Counter_6 __attribute__((section(".dpc8")));
extern unsigned long int Vec_RiseRun_Tmp __attribute__((section(".dpc8")));
extern int Vec_Angle __attribute__((section(".dpc8")));
extern unsigned long int Vec_Run_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rise_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_XXX_00 __attribute__((section(".dpc8")));
extern int Vec_RiseRun_Len __attribute__((section(".dpc8")));
extern int Vec_XXX_01 __attribute__((section(".dpc8")));
extern int Vec_XXX_02 __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rfrsh __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_lo __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_hi __attribute__((section(".dpc8")));
extern int Vec_Music_Work __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_A __attribute__((section(".dpc8")));
extern int Vec_XXX_03 __attribute__((section(".dpc8")));
extern int Vec_XXX_04 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_7 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_6 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_5 __attribute__((section(".dpc8")));
extern int Vec_XXX_05 __attribute__((section(".dpc8")));
extern int Vec_XXX_06 __attribute__((section(".dpc8")));
extern int Vec_XXX_07 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_1 __attribute__((section(".dpc8")));
extern int Vec_XXX_08 __attribute__((section(".dpc8")));
extern int* Vec_Freq_Table __attribute__((section(".dpc8")));
extern long unsigned int Vec_ADSR_Table __attribute__((section(".dpc8")));
extern int Vec_Max_Players __attribute__((section(".dpc8")));
extern int Vec_Max_Games __attribute__((section(".dpc8")));
extern int* Vec_Twang_Table __attribute__((section(".dpc8")));
extern int* Vec_Music_Ptr __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanA __attribute__((section(".dpc8")));
extern int Vec_Expl_Chans __attribute__((section(".dpc8")));
extern int Vec_Music_Chan __attribute__((section(".dpc8")));
extern int Vec_Music_Flag __attribute__((section(".dpc8")));
extern int Vec_Duration __attribute__((section(".dpc8")));
extern int Vec_Expl_1 __attribute__((section(".dpc8")));
extern long unsigned int Vec_Music_Twang __attribute__((section(".dpc8")));
extern int Vec_Expl_2 __attribute__((section(".dpc8")));
extern int Vec_Expl_3 __attribute__((section(".dpc8")));
extern int Vec_Expl_4 __attribute__((section(".dpc8")));
extern int Vec_Expl_Chan __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanB __attribute__((section(".dpc8")));
extern int Vec_XXX_09 __attribute__((section(".dpc8")));
extern int Vec_ADSR_Timers __attribute__((section(".dpc8")));
extern int Vec_ADSR_timers[3] __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_Freq __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_freq[3] __attribute__((section(".dpc8")));
extern unsigned int Vec_Expl_Flag __attribute__((section(".dpc8")));
extern int Vec_XXX_10 __attribute__((section(".dpc8")));
extern int Vec_XXX_11 __attribute__((section(".dpc8")));
extern int Vec_XXX_12 __attribute__((section(".dpc8")));
extern int Vec_XXX_13 __attribute__((section(".dpc8")));
extern int Vec_XXX_14 __attribute__((section(".dpc8")));
extern int Vec_XXX_15 __attribute__((section(".dpc8")));
extern int Vec_XXX_16 __attribute__((section(".dpc8")));
extern int Vec_XXX_17 __attribute__((section(".dpc8")));
extern int Vec_XXX_18 __attribute__((section(".dpc8")));
extern int Vec_XXX_19 __attribute__((section(".dpc8")));
extern int Vec_XXX_20 __attribute__((section(".dpc8")));
extern int Vec_XXX_21 __attribute__((section(".dpc8")));
extern int Vec_XXX_22 __attribute__((section(".dpc8")));
extern int Vec_XXX_23 __attribute__((section(".dpc8")));
extern int Vec_XXX_24 __attribute__((section(".dpc8")));
extern int Vec_Expl_Timer __attribute__((section(".dpc8")));
extern int Vec_XXX_25 __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Players __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Game __attribute__((section(".dpc8")));
extern unsigned int* Vec_Seed_Ptr __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed0 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed2 __attribute__((section(".dpc8")));



extern int Vec_Default_Stk __attribute__((section(".dpcb")));
extern unsigned int Vec_High_Score __attribute__((section(".dpcb")));
extern unsigned int Vec_High_score[7] __attribute__((section(".dpcb")));
extern int Vec_SWI3_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI3_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI2_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI2_vector[3] __attribute__((section(".dpcb")));
extern int Vec_FIRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_FIRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_IRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_IRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI_vector[3] __attribute__((section(".dpcb")));
extern int Vec_NWI_Vector __attribute__((section(".dpcb")));
extern int Vec_NWI_vector[3] __attribute__((section(".dpcb")));
extern long unsigned int Vec_Cold_Flag __attribute__((section(".dpcb")));





extern volatile int VIA_port_b __attribute__((section(".dpd0")));
extern volatile int VIA_port_a __attribute__((section(".dpd0")));
# 197 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_DDR_b __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_a __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_cnt __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_lch __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t2 __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_hi __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_shift_reg __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_aux_cntl __attribute__((section(".dpd0")));
# 218 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_cntl __attribute__((section(".dpd0")));
# 227 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_int_flags __attribute__((section(".dpd0")));
# 237 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_int_enable __attribute__((section(".dpd0")));
# 246 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_port_a_nohs __attribute__((section(".dpd0")));
# 41 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram.h" 2
# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_dp.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_dp.h"
       
# 48 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram_dp.h"
extern int dp_Vec_Snd_Shadow __attribute__((section("direct")));
extern int dp_Vec_Snd_shadow[15] __attribute__((section("direct")));
extern unsigned int dp_Vec_Btn_State __attribute__((section("direct")));
extern unsigned int dp_Vec_Prev_Btns __attribute__((section("direct")));
extern unsigned int dp_Vec_Buttons __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_1 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_2 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_3 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_4 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_1 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_2 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_3 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_4 __attribute__((section("direct")));
extern int dp_Vec_Joy_Resltn __attribute__((section("direct")));
extern int dp_Vec_Joy_1_X __attribute__((section("direct")));
extern int dp_Vec_Joy_1_Y __attribute__((section("direct")));
extern int dp_Vec_Joy_2_X __attribute__((section("direct")));
extern int dp_Vec_Joy_2_Y __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux __attribute__((section("direct")));
extern int dp_Vec_Joy_mux[4] __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_1_X __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_1_Y __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_2_X __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_2_Y __attribute__((section("direct")));
extern unsigned int dp_Vec_Misc_Count __attribute__((section("direct")));
extern int dp_Vec_0Ref_Enable __attribute__((section("direct")));
extern unsigned long int dp_Vec_Loop_Count __attribute__((section("direct")));
extern unsigned int dp_Vec_Loop_Count_hi __attribute__((section("direct")));
extern unsigned int dp_Vec_Loop_Count_lo __attribute__((section("direct")));
extern int dp_Vec_Brightness __attribute__((section("direct")));
extern unsigned int dp_Vec_Dot_Dwell __attribute__((section("direct")));
extern unsigned int dp_Vec_Pattern __attribute__((section("direct")));
extern unsigned long int dp_Vec_Text_HW __attribute__((section("direct")));
extern int dp_Vec_Text_Height __attribute__((section("direct")));
extern int dp_Vec_Text_Width __attribute__((section("direct")));
extern int* dp_Vec_Str_Ptr __attribute__((section("direct")));
extern int dp_Vec_counters[6] __attribute__((section("direct")));
extern int dp_Vec_Counters __attribute__((section("direct")));
extern int dp_Vec_Counter_1 __attribute__((section("direct")));
extern int dp_Vec_Counter_2 __attribute__((section("direct")));
extern int dp_Vec_Counter_3 __attribute__((section("direct")));
extern int dp_Vec_Counter_4 __attribute__((section("direct")));
extern int dp_Vec_Counter_5 __attribute__((section("direct")));
extern int dp_Vec_Counter_6 __attribute__((section("direct")));
extern unsigned long int dp_Vec_RiseRun_Tmp __attribute__((section("direct")));
extern int dp_Vec_Angle __attribute__((section("direct")));
extern unsigned long int dp_Vec_Run_Index __attribute__((section("direct")));
extern unsigned long int dp_Vec_Rise_Index __attribute__((section("direct")));
extern unsigned long int dp_Vec_XXX_00 __attribute__((section("direct")));
extern int dp_Vec_RiseRun_Len __attribute__((section("direct")));
extern int dp_Vec_XXX_01 __attribute__((section("direct")));
extern int dp_Vec_XXX_02 __attribute__((section("direct")));
extern unsigned long int dp_Vec_Rfrsh __attribute__((section("direct")));
extern unsigned int dp_Vec_Rfrsh_lo __attribute__((section("direct")));
extern unsigned int dp_Vec_Rfrsh_hi __attribute__((section("direct")));
extern int dp_Vec_Music_Work __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_A __attribute__((section("direct")));
extern int dp_Vec_XXX_03 __attribute__((section("direct")));
extern int dp_Vec_XXX_04 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_7 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_6 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_5 __attribute__((section("direct")));
extern int dp_Vec_XXX_05 __attribute__((section("direct")));
extern int dp_Vec_XXX_06 __attribute__((section("direct")));
extern int dp_Vec_XXX_07 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_1 __attribute__((section("direct")));
extern int dp_Vec_XXX_08 __attribute__((section("direct")));
extern int* dp_Vec_Freq_Table __attribute__((section("direct")));
extern long unsigned int dp_Vec_ADSR_Table __attribute__((section("direct")));
extern int dp_Vec_Max_Players __attribute__((section("direct")));
extern int dp_Vec_Max_Games __attribute__((section("direct")));
extern int* dp_Vec_Twang_Table __attribute__((section("direct")));
extern int* dp_Vec_Music_Ptr __attribute__((section("direct")));
extern int dp_Vec_Expl_ChanA __attribute__((section("direct")));
extern int dp_Vec_Expl_Chans __attribute__((section("direct")));
extern int dp_Vec_Music_Chan __attribute__((section("direct")));
extern int dp_Vec_Music_Flag __attribute__((section("direct")));
extern int dp_Vec_Duration __attribute__((section("direct")));
extern int dp_Vec_Expl_1 __attribute__((section("direct")));
extern long unsigned int dp_Vec_Music_Twang __attribute__((section("direct")));
extern int dp_Vec_Expl_2 __attribute__((section("direct")));
extern int dp_Vec_Expl_3 __attribute__((section("direct")));
extern int dp_Vec_Expl_4 __attribute__((section("direct")));
extern int dp_Vec_Expl_Chan __attribute__((section("direct")));
extern int dp_Vec_Expl_ChanB __attribute__((section("direct")));
extern int dp_Vec_XXX_09 __attribute__((section("direct")));
extern int dp_Vec_ADSR_Timers __attribute__((section("direct")));
extern int dp_Vec_ADSR_timers[3] __attribute__((section("direct")));
extern unsigned long int dp_Vec_Music_Freq __attribute__((section("direct")));
extern unsigned long int dp_Vec_Music_freq[3] __attribute__((section("direct")));
extern unsigned int dp_Vec_Expl_Flag __attribute__((section("direct")));
extern int dp_Vec_XXX_10 __attribute__((section("direct")));
extern int dp_Vec_XXX_11 __attribute__((section("direct")));
extern int dp_Vec_XXX_12 __attribute__((section("direct")));
extern int dp_Vec_XXX_13 __attribute__((section("direct")));
extern int dp_Vec_XXX_14 __attribute__((section("direct")));
extern int dp_Vec_XXX_15 __attribute__((section("direct")));
extern int dp_Vec_XXX_16 __attribute__((section("direct")));
extern int dp_Vec_XXX_17 __attribute__((section("direct")));
extern int dp_Vec_XXX_18 __attribute__((section("direct")));
extern int dp_Vec_XXX_19 __attribute__((section("direct")));
extern int dp_Vec_XXX_20 __attribute__((section("direct")));
extern int dp_Vec_XXX_21 __attribute__((section("direct")));
extern int dp_Vec_XXX_22 __attribute__((section("direct")));
extern int dp_Vec_XXX_23 __attribute__((section("direct")));
extern int dp_Vec_XXX_24 __attribute__((section("direct")));
extern int dp_Vec_Expl_Timer __attribute__((section("direct")));
extern int dp_Vec_XXX_25 __attribute__((section("direct")));
extern unsigned int dp_Vec_Num_Players __attribute__((section("direct")));
extern unsigned int dp_Vec_Num_Game __attribute__((section("direct")));
extern unsigned int* dp_Vec_Seed_Ptr __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed0 __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed1 __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed2 __attribute__((section("direct")));



extern int dp_Vec_Default_Stk __attribute__((section("direct")));
extern unsigned int dp_Vec_High_Score __attribute__((section("direct")));
extern unsigned int dp_Vec_High_score[7] __attribute__((section("direct")));
extern int dp_Vec_SWI3_Vector __attribute__((section("direct")));
extern int dp_Vec_SWI3_vector[3] __attribute__((section("direct")));
extern int dp_Vec_SWI2_Vector __attribute__((section("direct")));
extern int dp_Vec_SWI2_vector[3] __attribute__((section("direct")));
extern int dp_Vec_FIRQ_Vector __attribute__((section("direct")));
extern int dp_Vec_FIRQ_vector[3] __attribute__((section("direct")));
extern int dp_Vec_IRQ_Vector __attribute__((section("direct")));
extern int dp_Vec_IRQ_vector[3] __attribute__((section("direct")));
extern int dp_Vec_SWI_Vector __attribute__((section("direct")));
extern int dp_Vec_SWI_vector[3] __attribute__((section("direct")));
extern int dp_Vec_NWI_Vector __attribute__((section("direct")));
extern int dp_Vec_NWI_vector[3] __attribute__((section("direct")));
extern long unsigned int dp_Vec_Cold_Flag __attribute__((section("direct")));





extern volatile int dp_VIA_port_b __attribute__((section("direct")));
extern volatile int dp_VIA_port_a __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_DDR_b __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_DDR_a __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_t1_cnt __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_cnt_lo __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_cnt_hi __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_t1_lch __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_lch_lo __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_lch_hi __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_t2 __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t2_lo __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t2_hi __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_shift_reg __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_aux_cntl __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_cntl __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_int_flags __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_int_enable __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_port_a_nohs __attribute__((section("direct")));
# 42 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_ram.h" 2
# 42 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vectrex.h" 2
# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom.h"
       

# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom_0x.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom_0x.h"
       




extern const int Vec_Sine_Table __attribute__((section(".dpfc")));
extern const int Vec_Cosine_Table __attribute__((section(".dpfc")));
extern const int Vec_Note_Table __attribute__((section(".dpfc")));




extern const unsigned int Vec_Music_0 __attribute__((section(".dped")));
extern const unsigned int Vec_Music_1 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_2 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_3 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_4 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_5 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_6 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_7 __attribute__((section(".dpfc")));
extern const unsigned int Vec_Music_8 __attribute__((section(".dpf8")));
extern const unsigned int Vec_Music_9 __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_a __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_b __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_c __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_d __attribute__((section(".dpff")));




extern const unsigned int Vec_ADSR_FADE66 __attribute__((section(".dped")));
extern const unsigned int Vec_ADSR_FADE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_ADSR_FADE1 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE2 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE3 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE4 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE8 __attribute__((section(".dpff")));
extern const unsigned int Vec_ADSR_FADE12 __attribute__((section(".dpfd")));




extern const unsigned int Vec_TWANG_VIBE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_TWANG_VIBEHL __attribute__((section(".dpfe")));
extern const unsigned int Vec_TWANG_VIBENL __attribute__((section(".dpfe")));
# 41 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom.h" 2
# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom_dp.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom_dp.h"
       




extern const int dp_Vec_Sine_Table __attribute__((section("direct")));
extern const int dp_Vec_Cosine_Table __attribute__((section("direct")));
extern const int dp_Vec_Note_Table __attribute__((section("direct")));




extern const unsigned int dp_Vec_Music_0 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_1 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_2 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_3 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_4 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_5 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_6 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_7 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_8 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_9 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_a __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_b __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_c __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_d __attribute__((section("direct")));




extern const unsigned int dp_Vec_ADSR_FADE66 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE0 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE1 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE2 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE3 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE4 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE8 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE12 __attribute__((section("direct")));




extern const unsigned int dp_Vec_TWANG_VIBE0 __attribute__((section("direct")));
extern const unsigned int dp_Vec_TWANG_VIBEHL __attribute__((section("direct")));
extern const unsigned int dp_Vec_TWANG_VIBENL __attribute__((section("direct")));
# 42 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rom.h" 2
# 43 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vectrex.h" 2
# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum.h"
       
# 48 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum.h"
# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
       

# 1 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/macro.h" 1
# 38 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/macro.h"
       
# 41 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h" 2
# 95 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Wait_Recal(void)
{
 asm volatile(
  "jsr ___Wait_Recal; BIOS call\n\t"
  ::
  : "memory", "cc", "dp", "d", "x");
}
# 126 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Recalibrate(void)
{
 asm volatile(
  "jsr ___Recalibrate; BIOS call\n\t"
  ::
  : "memory", "cc", "dp", "d", "x");
}
# 144 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref_D0(void)
{
 asm volatile(
  "jsr ___Reset0Ref_D0; BIOS call\n\t"
  ::
  : "memory", "cc", "dp", "d");
}
# 163 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Check0Ref(void)
{
 asm volatile(
  "jsr ___Check0Ref; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 179 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref(void)
{
 asm volatile(
  "jsr ___Reset0Ref; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 198 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Reset_Pen(void)
{
 asm volatile(
  "jsr ___Reset_Pen; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 214 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Reset0Int(void)
{
 asm volatile(
  "jsr ___Reset0Int; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 239 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dec_3_Counters(void)
{
 asm volatile(
  "jsr ___Dec_3_Counters; BIOS call\n\t"
  ::
  : "memory", "cc", "b", "x");
}
# 257 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dec_6_Counters(void)
{
 asm volatile(
  "jsr ___Dec_6_Counters; BIOS call\n\t"
  ::
  : "memory", "cc", "b", "x");
}
# 274 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dec_Counters(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Dec_Counters; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "b", "x");
}
# 298 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void DP_to_D0(void)
{
 asm volatile(
  "jsr ___DP_to_D0; BIOS call\n\t"
  ::
  : "memory", "cc", "dp", "a");
}
# 314 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void DP_to_C8(void)
{
 asm volatile(
  "jsr ___DP_to_C8; BIOS call\n\t"
  ::
  : "memory", "cc", "dp", "a");
}
# 339 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Delay_3(void)
{
 asm volatile(
  "jsr ___Delay_3; BIOS call\n\t"
  ::
  : "memory", "cc", "b");
}
# 354 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Delay_2(void)
{
 asm volatile(
  "jsr ___Delay_2; BIOS call\n\t"
  ::
  : "memory", "cc", "b");
}
# 369 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Delay_1(void)
{
 asm volatile(
  "jsr ___Delay_1; BIOS call\n\t"
  ::
  : "memory", "cc", "b");
}
# 384 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Delay_0(void)
{
 asm volatile(
  "jsr ___Delay_0; BIOS call\n\t"
  ::
  : "memory", "cc", "b");
}
# 399 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Delay_b(const unsigned int b)
{
 asm volatile(
  "ldb %[B]\n\t"
  "jsr ___Delay_b; BIOS call\n\t"
  :: [B] "mi" (b)
  : "memory", "cc", "b");
}






static inline __attribute__((always_inline)) void Delay_RTS(void)
{
 asm volatile(
  "jsr ___Delay_RTS; BIOS call\n\t"
  ::
  : "memory", "cc");
}
# 447 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_ix_b(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Dot_ix_b; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 471 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_ix(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Dot_ix; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 492 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_d(const int a, const int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Dot_d; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
}

static inline __attribute__((always_inline)) void Dot_dd(const long int d)
{
 asm volatile(
  "ldd %[D]\n\t"
  "jsr ___Dot_d; BIOS call\n\t"
  :: [D] "mi" (d)
  : "memory", "cc", "d");
}
# 520 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_here(void)
{
 asm volatile(
  "jsr ___Dot_here; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 546 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_List(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Dot_List; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 574 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_List_Reset(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Dot_List_Reset; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 613 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Str_hwyx(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Print_Str_hwyx; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 638 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Str_yx(volatile const void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Print_Str_yx; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 664 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Str_d(const int a, const int b, void* const u)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Print_Str_d; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}

static inline __attribute__((always_inline)) void Print_Str_dd(const long int d, void* const u)
{
 asm volatile(
  "ldd %[D]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Print_Str_d; BIOS call\n\t"
  :: [D] "mi" (d), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 703 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_List_hw(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Print_List_hw; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 731 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_List(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Print_List; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 758 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_List_chk(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Print_List_chk; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 783 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Ships_x(const unsigned int a, const unsigned int b, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Print_Ships_x; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x", "u");
}
# 810 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Ships(const unsigned int a, const unsigned int b, const unsigned long int x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Print_Ships; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x", "u");
}
# 836 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Str(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Print_Str; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 860 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_MRast(void)
{
 asm volatile(
  "jsr ___Print_MRast; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x", "u");
}
# 925 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_a(const unsigned int a, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Draw_Pat_VL_a; BIOS call\n\t"
  :: [A] "mi" (a), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 992 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_Pat_VL; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1037 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Line_d(const int a, const int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Draw_Line_d; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d", "x");
}
# 1066 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLc(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VLc; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1094 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Draw_VL_ab; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1124 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VL(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VL; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1152 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLcs(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VLcs; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1180 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_b(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Draw_VL_b; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1209 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_a(const unsigned int a, void* const x)
{
 asm volatile(
  "ldb %[A]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Draw_VL_a; BIOS call\n\t"
  :: [A] "mi" (a), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1254 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLc_a(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Mov_Draw_VLc_a; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1281 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_b(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Mov_Draw_VL_b; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1310 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLcs(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Mov_Draw_VLcs; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1338 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Mov_Draw_VL_ab; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1368 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_a(const unsigned int a, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Mov_Draw_VL_a; BIOS call\n\t"
  :: [A] "mi" (a), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1397 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Mov_Draw_VL; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1422 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_d(const int a, const int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Mov_Draw_VL_d; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d", "x");
}
# 1484 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_mode(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VL_mode; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1515 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_7F(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VLp_7F; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1547 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_FF(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VLp_FF; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1577 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_b(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Draw_VLp_b; BIOS call\n\t"
  ::[B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 1608 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp(void (* const x))
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VLp; BIOS call\n\t"
  :: [X] "im" (x)
  : "memory", "cc", "d", "x");
}
# 1638 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_scale(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Draw_VLp_scale; BIOS call\n\t"
  :: [X] "im" (x)
  : "memory", "cc", "d", "x");
}
# 1665 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Mode(const unsigned int a, void* const x, volatile void* volatile const u)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Rot_VL_Mode; BIOS call\n\t"
  :: [A] "mi" (a), [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 1694 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Pack(void* const x, void* const u)
{
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Rot_VL_Pack; BIOS call\n\t"
  :: [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 1722 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_M_dft(void* const x, void* const u)
{
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Rot_VL_M_dft; BIOS call\n\t"
  :: [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 1778 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Random_3(void)
{
 unsigned int rnd;
 asm volatile(
  "jsr ___Random_3; BIOS call\n\t"
  "sta %[R]\n\t"
  : [R] "=m" (rnd)
  :
  : "memory", "cc", "a");
 return rnd;
}
# 1798 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Random(void)
{
 unsigned int rnd;
 asm volatile(
  "jsr ___Random; BIOS call\n\t"
  "sta %[R]\n\t"
  : [R] "=m" (rnd)
  :
  : "memory", "cc", "a");
 return rnd;
}
# 1827 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Bitmask_a(const unsigned int a)
{
 unsigned int r;
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Bitmask_a; BIOS call\n\t"
  "sta %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a)
  : "memory", "cc", "a", "x");
 return r;
}
# 1851 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Abs_a_b(const int a, const int b)
{
 long unsigned int r;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Abs_a_b; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
 return r;
}
# 1874 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) int Abs_b(const int b)
{
 int r;
 asm volatile(
  "ldb %[B]\n\t"
  "jsr ___Abs_b; BIOS call\n\t"
  "stb %[R]\n\t"
  : [R] "=m" (r)
  : [B] "im" (b)
  : "memory", "cc", "b");
 return r;
}
# 1898 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Angle(const int a, const int b)
{
 long unsigned int r;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Rise_Run_Angle; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
 return r;
}
# 1921 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Idx(const int a)
{
 long unsigned int r;
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Get_Rise_Idx; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a)
  : "memory", "cc", "d", "x");
 return r;
}
# 1943 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) int Xform_Sin(const int a)
{
 int r;
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Xform_Sin; BIOS call\n\t"
  "sta %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a)
  : "memory", "cc", "d", "x");
 return r;
}
# 1966 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Run(void)
{
 long unsigned int r;
 asm volatile(
  "jsr ___Get_Rise_Run; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  :
  : "memory", "cc", "d");
 return r;
}
# 1989 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Xform_Run_a(const int a)
{
 long unsigned int r;
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Xform_Run_a; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a)
  : "memory", "cc", "d");
 return r;
}
# 2012 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Xform_Run(void)
{
 unsigned int r;
 asm volatile(
  "jsr ___Xform_Run; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  :
  : "memory", "cc", "d");
 return r;
}
# 2035 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Xform_Rise_a(const int a)
{
 long unsigned int r;
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Xform_Rise_a; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  : [A] "mi" (a)
  : "memory", "cc", "d");
 return r;
}
# 2058 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Xform_Rise(void)
{
 long unsigned int r;
 asm volatile(
  "jsr ___Xform_Rise; BIOS call\n\t"
  "std %[R]\n\t"
  : [R] "=m" (r)
  :
  : "memory", "cc", "d");
 return r;
}
# 2087 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_x_b(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Clear_x_b; BIOS call\n\t"
  :
  : [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2106 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_C8_RAM(void)
{
 asm volatile(
  "jsr ___Clear_C8_RAM; BIOS call\n\t"
  :
  :
  : "memory", "cc", "d", "x");
}
# 2122 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_x_256(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Clear_x_256; BIOS call\n\t"
  :
  : [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2140 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_x_d(const long unsigned int d, void* const x)
{
 asm volatile(
  "ldd %[D]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Clear_x_d; BIOS call\n\t"
  :
  : [D] "mi" (d), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2167 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a_1(const unsigned int a, void* const x, void* const u)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Move_Mem_a_1; BIOS call\n\t"
  :
  : [A] "mi" (a), [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 2189 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a(const unsigned int a, void* const x, void* const u)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Move_Mem_a_1; BIOS call\n\t"
  :
  : [A] "mi" (a), [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 2216 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_x_b_80(const int b, void* const x)
{
 asm volatile(
  "lda %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Clear_x_b_80; BIOS call\n\t"
  :
  : [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2235 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_x_b_a(const unsigned int a, const unsigned int b, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Clear_x_b_a; BIOS call\n\t"
  :
  : [A] "mi" (a), [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2265 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Read_Btns_Mask(const unsigned int a)
{
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Read_Btns_Mask; BIOS call\n\t"
  :
  : [A] "mi" (a)
  : "memory", "cc", "d", "x");
}
# 2284 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Read_Btns(void)
{
 asm volatile(
  "jsr ___Read_Btns; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2320 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Joy_Analog(void)
{
 asm volatile(
  "jsr ___Joy_Analog; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2352 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Joy_Digital(void)
{
 asm volatile(
  "jsr ___Joy_Digital; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2418 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Select_Game(const unsigned int a, const unsigned int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Select_Game; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d", "x", "y", "u");
}
# 2440 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Display_Option(const unsigned int a, const void* const y)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldy %[Y]\n\t"
  "jsr ___Display_Option; BIOS call\n\t"
  :: [A] "mi" (a), [Y] "mi" (y)
  : "memory", "cc", "d", "x", "y", "u");
}
# 2460 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Reset(void)
{
 asm volatile(
  "jsr ___Reset; BIOS call\n\t"
  ::
  : "memory", "cc");
}
# 2481 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_VIA(void)
{
 asm volatile(
  "jsr ___Init_VIA; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2508 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_OS_RAM(void)
{
 asm volatile(
  "jsr ___Init_OS_RAM; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2537 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_OS(void)
{
 asm volatile(
  "jsr ___Init_OS; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2556 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_Music_Buf(void)
{
 asm volatile(
  "jsr ___Init_Music_Buf; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2602 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_Score(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Clear_Score; BIOS call\n\t"
  :: [X] "mins" (x)
  : "memory", "cc", "d", "x");
}
# 2630 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Add_Score_a(const unsigned int a, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Add_Score_a; BIOS call\n\t"
  :: [A] "mins" (a), [X] "mins" (x)
  : "memory", "cc", "d", "x", "u");
}
# 2658 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Add_Score_d(const long unsigned int d, void* const x)
{
 asm volatile(
  "ldd %[D]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Add_Score_d; BIOS call\n\t"
  :: [D] "mi" (d), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2710 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Compare_Score(void* const x, void* const u)
{
 unsigned int r;
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Compare_Score; BIOS call\n\t"
  "sta %[R]\n\t"
  : [R] "=m" (r)
  : [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
 return r;
}
# 2743 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void New_High_Score(void* const x, void* const u)
{
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___New_High_Score; BIOS call\n\t"
  :: [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 2780 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte(const unsigned int a, const unsigned int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Sound_Byte; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d", "x");
}
# 2800 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte_x(const unsigned int a, const unsigned int b, void* const x)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Sound_Byte_x; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 2820 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Clear_Sound(void)
{
 asm volatile(
  "jsr ___Clear_Sound; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 2838 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Sound_Bytes; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 2857 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes_x(void* const x, void* const u)
{
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Sound_Bytes_x; BIOS call\n\t"
  :: [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 2878 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Do_Sound(void)
{
 asm volatile(
  "jsr ___Do_Sound; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x", "u");
}
# 2915 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_Music_chk(const void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Init_Music_chk; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "y", "u");
}
# 2964 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_Music(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Init_Music; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "y", "u");
}
# 2997 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_Music_a(void* const x, void* const u)
{
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Init_Music_a; BIOS call\n\t"
  :: [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "y", "u");
}
# 3031 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Init_Music_x(void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Init_Music_x; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "y", "u");
}
# 3050 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Stop_Sound(void)
{
 asm volatile(
  "jsr ___Stop_Sound; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x");
}
# 3088 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Explosion_Snd(const void* const u)
{
 asm volatile(
  "ldu %[U]\n\t"
  "jsr ___Explosion_Snd; BIOS call\n\t"
  :: [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 3107 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Set_Amp(const unsigned int b)
{
 asm volatile(
  "ldb %[B]\n\t"
  "jsr ___Set_Amp; BIOS call\n\t"
  :: [B] "mi" (b)
  : "memory", "cc", "d", "x");
}
# 3169 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_x_7F(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Moveto_x_7F; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 3188 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_d_7F(const int a, const int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Moveto_d_7F; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
}

static inline __attribute__((always_inline)) void Moveto_dd_7F(const long int d)
{
 asm volatile(
  "ldd %[D]\n\t"
  "jsr ___Moveto_dd_7F; BIOS call\n\t"
  :: [D] "mi" (d)
  : "memory", "cc", "d");
}
# 3221 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_FF(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Moveto_ix_FF; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 3244 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_7F(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Moveto_ix_7F; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 3268 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_b(const unsigned int b, void* const x)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "jsr ___Moveto_ix_b; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 3291 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix(void* const x)
{
 asm volatile(
  "ldx %[X]\n\t"
  "jsr ___Moveto_ix; BIOS call\n\t"
  :: [X] "mi" (x)
  : "memory", "cc", "d", "x");
}
# 3313 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Moveto_d(const int a, const int b)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Moveto_d; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
}

static inline __attribute__((always_inline)) void Moveto_dd(const long int d)
{
 asm volatile(
  "ldd %[D]\n\t"
  "jsr ___Moveto_d; BIOS call\n\t"
  :: [D] "mi" (d)
  : "memory", "cc", "d");
}
# 3351 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Intensity_1F(void)
{
 asm volatile(
  "jsr ___Intensity_1F; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 3369 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Intensity_3F(void)
{
 asm volatile(
  "jsr ___Intensity_3F; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 3387 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Intensity_5F(void)
{
 asm volatile(
  "jsr ___Intensity_5F; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 3405 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Intensity_7F(void)
{
 asm volatile(
  "jsr ___Intensity_7F; BIOS call\n\t"
  ::
  : "memory", "cc", "d");
}
# 3425 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Intensity_a(const unsigned int a)
{
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Intensity_a; BIOS call\n\t"
  :: [A] "mi" (a)
  : "memory", "cc", "d");
}
# 3452 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit_u(const int a, const int b, const long int x, const long int y, const long int u)
{
 unsigned int hit;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldy %[Y]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Obj_Will_Hit_u; BIOS call\n\t"
  "ldb #0\n\t"
  "adcb #0\n\t"
  "stb %[M]\n\t"
  : [M] "=m" (hit)
  : [A] "mins" (a), [B] "mins" (b), [X] "mi" (x), [Y] "mi" (y), [U] "mi" (u)
  : "memory", "cc", "d", "x", "y", "u");
 return hit;
}
# 3482 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit(const int a, const int b, const long int x, const long int y, const long int* u)
{
 unsigned int hit;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldy %[Y]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Obj_Will_Hit; BIOS call\n\t"
  "ldb #0\n\t"
  "adcb #0\n\t"
  "stb %[M]\n\t"
  : [M] "=m" (hit)
  : [A] "mins" (a), [B] "mins" (b), [X] "mi" (x), [Y] "mi" (y), [U] "mi" (u)
  : "memory", "cc", "d", "x", "y", "u");
 return hit;
}
# 3511 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Hit(const int a, const int b, const long int x, const long int y)
{
 unsigned int hit;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldy %[Y]\n\t"
  "jsr ___Obj_Hit; BIOS call\n\t"
  "ldb #0\n\t"
  "adcb #0\n\t"
  "stb %[M]\n\t"
  : [M] "=m" (hit)
  : [A] "mins" (a), [B] "mins" (b), [X] "mi" (x), [Y] "mi" (y)
  : "memory", "cc", "d", "x", "y");
 return hit;
}
# 3551 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_X(const int a, const int b)
{
 unsigned long int d;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Rise_Run_X; BIOS call\n\t"
  "std %[D]\n\t"
  : [D] "=m" (d)
  : [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
 return d;
}
# 3575 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Y(const int a, const int b)
{
 unsigned long int d;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Rise_Run_Y; BIOS call\n\t"
  "std %[D]\n\t"
  : [D] "=m" (d)
  : [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d");
 return d;
}
# 3599 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned long int Rise_Run_Len(const int a)
{
 unsigned long int d;
 asm volatile(
  "lda %[A]\n\t"
  "jsr ___Rise_Run_Len; BIOS call\n\t"
  "std %[D]\n\t"
  : [D] "=m" (d)
  : [A] "mi" (a)
  : "memory", "cc", "d");
 return d;
}
# 3630 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_ab(const unsigned int a, const unsigned int b, void* const x, void* const u)
{
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Rot_VL_ab; BIOS call\n\t"
  :: [A] "mi" (a), [B] "mi" (b), [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 3659 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Diff(const unsigned int b, void* const x, void* const u)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Rot_VL_Diff; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 3688 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Rot_VL(void* const x, void* const u)
{
 asm volatile(
  "ldx %[X]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Rot_VL; BIOS call\n\t"
  :: [X] "mi" (x), [U] "mi" (u)
  : "memory", "cc", "d", "x", "u");
}
# 3748 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_y(const long int y)
{
 asm volatile(
  "ldy %[Y]\n\t"
  "jsr ___Dot_y; BIOS call\n\t"
  :: [Y] "mi" (y)
  : "memory", "cc", "y");
}
# 3766 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Dot_py(void* const y)
{
 asm volatile(
  "ldy %[Y]\n\t"
  "jsr ___Dot_py; BIOS call\n\t"
  :: [Y] "mi" (y)
  : "memory", "cc", "y");
}
# 3795 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack(const unsigned int b, void* const x, const long int y)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldy %[Y]\n\t"
  "jsr ___Draw_Pack; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x), [Y] "mi" (y)
  : "memory", "cc", "b", "x", "y");
}
# 3824 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack_py(const unsigned int b, void* const x, void* const y)
{
 asm volatile(
  "ldb %[B]\n\t"
  "ldx %[X]\n\t"
  "ldy %[Y]\n\t"
  "jsr ___Draw_Pack_py; BIOS call\n\t"
  :: [B] "mi" (b), [X] "mi" (x), [Y] "mi" (y)
  : "memory", "cc", "b", "x", "y");
}
# 3848 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Print_Msg(void* const y, void* const u)
{
 asm volatile(
  "ldy %[Y]\n\t"
  "ldu %[U]\n\t"
  "jsr ___Print_Msg; BIOS call\n\t"
  :: [Y] "mi" (y), [U] "mi" (u)
  : "memory", "cc", "y", "u");
}
# 3865 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) unsigned int Rnd_Cone(void)
{
 unsigned int b;
 asm volatile(
  "jsr ___Rnd_Cone; BIOS call\n\t"
  "std %[B]\n\t"
  : [B] "=m" (b)
  :
  : "memory", "cc", "b");
 return b;
}
# 3887 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ8_xy(const unsigned int a, const unsigned int b)
{
 unsigned long int x;
 unsigned long int y;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Displ8_xy; BIOS call\n\t"
  "stx %[X]\n\t"
  "sty %[Y]\n\t"
  : [X] "=m" (x), [Y] "=m" (y)
  : [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d", "x", "y");
 return x;
}
# 3913 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ16_xy(const unsigned int a, const unsigned int b)
{
 unsigned long int x;
 unsigned long int y;
 asm volatile(
  "lda %[A]\n\t"
  "ldb %[B]\n\t"
  "jsr ___Displ16_xy; BIOS call\n\t"
  "stx %[X]\n\t"
  "sty %[Y]\n\t"
  : [X] "=m" (x), [Y] "=m" (y)
  : [A] "mi" (a), [B] "mi" (b)
  : "memory", "cc", "d", "x", "y");
 return x;
}
# 3938 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) long unsigned int Ranpos(void)
{
 unsigned long int d;
 asm volatile(
  "jsr ___Dot_y; BIOS call\n\t"
  "std %[D]\n\t"
  : [D] "=m" (d)
  :
  : "memory", "cc", "d");
 return d;
}
# 3971 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Scores(void)
{
 asm volatile(
  "jsr ___Draw_Scores; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "y", "u");
}
# 4000 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Draw_Score(void)
{
 asm volatile(
  "jsr ___Draw_Score; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "y", "u");
}
# 4027 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum_inl.h"
static inline __attribute__((always_inline)) void Wait_Bound(void)
{
 asm volatile(
  "jsr ___Wait_Bound; BIOS call\n\t"
  ::
  : "memory", "cc", "d", "x", "y", "u");
}
# 49 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vec_rum.h" 2
# 44 "C:\\data\\vide\\C\\PeerC\\vectrex\\include/vectrex.h" 2
# 6 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/hardware.h" 2
# 15 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/hardware.h"
static inline __attribute__((always_inline)) void positd (int8_t x, int8_t y)
{
    dp_VIA_t1_cnt_lo = 0x80;
    Moveto_d(y,x);
}
static inline __attribute__((always_inline)) void Draw_VLp_80(void* const x)
{
    dp_VIA_t1_cnt_lo = 0x80;
    Draw_VLp(x);
}
# 3 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\block.c" 2
# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/block.i" 1


const int8_t height2FallingLeft0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-13,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2RisingRight0[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*13, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*-3, 3*-28,
 0, 3*16, 3*30,
 (int8_t) 255, 3*-2, 3*-28,
 0, 3*10, 3*22,
 (int8_t) 255, 3*-2, 3*-27,
 0, 3*-11, 3*25,
 (int8_t) 255, 3*-3, 3*-27,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*14, 3*2,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-14, 3*-2,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2FallingRight0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-13,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2RisingLeft0[] = {
 0, 3*12, 3*-1,
 (int8_t) 255, 3*-12, 3*1,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*12, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*10, 3*27,
 0, 3*-22, 3*-26,
 (int8_t) 255, 3*9, 3*28,
 0, 3*-1, 3*-33,
 (int8_t) 255, 3*9, 3*27,
 0, 3*3, 3*-29,
 (int8_t) 255, 3*10, 3*27,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-13, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*13, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-13,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2RisingFront0[] = {
 0, 3*12, 3*1,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-12, 3*-1,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*12, 3*1,
 (int8_t) 255, 3*19, 3*-11,
 0, 3*-16, 3*25,
 (int8_t) 255, 3*19, 3*-12,
 0, 3*-31, 3*11,
 (int8_t) 255, 3*19, 3*-12,
 0, 3*-22, 3*-2,
 (int8_t) 255, 3*19, 3*-11,
 0, 3*12, 3*1,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-12, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*12, 3*1,
 1
};
const int8_t height2FallingFront0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-13,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2RisingBack0[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*14, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*1,
 (int8_t) 255, 3*-12, 3*11,
 0, 3*15, 3*2,
 (int8_t) 255, 3*-12, 3*12,
 0, 3*26, 3*-13,
 (int8_t) 255, 3*-13, 3*12,
 0, 3*10, 3*-25,
 (int8_t) 255, 3*-13, 3*12,
 0, 3*-13, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-13, 3*0,
 1
};
const int8_t depth2RollingLeft0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*13, 3*0,
 0, 3*3, 3*-12,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t depth2RollingRight0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*13, 3*0,
 0, 3*3, 3*-12,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t width2RollingFront0[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-7, 3*28,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-5, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-19, 3*-27,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t width2RollingBack0[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-7, 3*28,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-5, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-19, 3*-27,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height1FallingLeft0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-5, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height1FallingRight0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-5, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height1FallingBack0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-5, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height1FallingFront0[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-5, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-16, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2FallingLeft1[] = {
 (int8_t) 255, 3*5, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*25, 3*-3,
 0, 3*-20, 3*17,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-17, 3*-2,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-30, 3*-9,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*5, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight1[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*13, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*1, 3*-27,
 0, 3*12, 3*31,
 (int8_t) 255, 3*1, 3*-27,
 0, 3*7, 3*21,
 (int8_t) 255, 3*1, 3*-26,
 0, 3*-14, 3*22,
 (int8_t) 255, 3*1, 3*-26,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*4,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-4,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2FallingRight1[] = {
 0, 3*2, 3*0,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-1, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*26, 3*4,
 0, 3*-25, 3*10,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-19, 3*-10,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-28, 3*-17,
 (int8_t) 255, 3*26, 3*4,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*2, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-2, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2RisingLeft1[] = {
 0, 3*12, 3*-3,
 (int8_t) 255, 3*-12, 3*3,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*12, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*12, 3*26,
 0, 3*-24, 3*-23,
 (int8_t) 255, 3*13, 3*27,
 0, 3*-5, 3*-32,
 (int8_t) 255, 3*13, 3*26,
 0, 3*-1, 3*-30,
 (int8_t) 255, 3*12, 3*26,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-11, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack1[] = {
 0, 3*2, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-6, 3*5,
 (int8_t) 255, 3*28, 3*-1,
 0, 3*-25, 3*15,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-22, 3*-4,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-31, 3*-11,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-6, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-6, 3*6,
 1
};
const int8_t height2RisingFront1[] = {
 0, 3*10, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-10, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*10, 3*2,
 (int8_t) 255, 3*23, 3*-11,
 0, 3*-20, 3*25,
 (int8_t) 255, 3*23, 3*-12,
 0, 3*-33, 3*10,
 (int8_t) 255, 3*22, 3*-12,
 0, 3*-25, 3*-2,
 (int8_t) 255, 3*22, 3*-11,
 0, 3*11, 3*2,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-11, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*11, 3*2,
 1
};
const int8_t height2FallingFront1[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*10, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-10, 3*5,
 (int8_t) 255, 3*24, 3*2,
 0, 3*-21, 3*12,
 (int8_t) 255, 3*24, 3*2,
 0, 3*-14, 3*-8,
 (int8_t) 255, 3*23, 3*2,
 0, 3*-26, 3*-15,
 (int8_t) 255, 3*23, 3*2,
 0, 3*-9, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*9, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-9, 3*5,
 1
};
const int8_t height2RisingBack1[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*2,
 (int8_t) 255, 3*-9, 3*11,
 0, 3*12, 3*2,
 (int8_t) 255, 3*-9, 3*12,
 0, 3*24, 3*-14,
 (int8_t) 255, 3*-9, 3*12,
 0, 3*6, 3*-25,
 (int8_t) 255, 3*-9, 3*12,
 0, 3*-15, 3*1,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*1,
 1
};
const int8_t depth2RollingLeft1[] = {
 (int8_t) 255, 3*5, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-5, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*12, 3*-1,
 0, 3*-7, 3*15,
 (int8_t) 255, 3*12, 3*-2,
 0, 3*4, 3*-10,
 (int8_t) 255, 3*12, 3*-2,
 0, 3*-17, 3*-11,
 (int8_t) 255, 3*12, 3*-2,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*5, 3*13,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-5, 3*-13,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight1[] = {
 0, 3*2, 3*0,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-1, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-12, 3*12,
 (int8_t) 255, 3*13, 3*2,
 0, 3*3, 3*-14,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-14, 3*-15,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-1, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t width2RollingFront1[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*10, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-10, 3*5,
 (int8_t) 255, 3*12, 3*1,
 0, 3*-6, 3*27,
 (int8_t) 255, 3*12, 3*1,
 0, 3*-2, 3*-7,
 (int8_t) 255, 3*11, 3*1,
 0, 3*-17, 3*-28,
 (int8_t) 255, 3*11, 3*1,
 0, 3*-9, 3*5,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*9, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-9, 3*5,
 1
};
const int8_t width2RollingBack1[] = {
 0, 3*2, 3*0,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-6, 3*5,
 (int8_t) 255, 3*14, 3*0,
 0, 3*-8, 3*28,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-8, 3*-5,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-20, 3*-26,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-6, 3*6,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-6, 3*6,
 1
};
const int8_t height1FallingLeft1[] = {
 (int8_t) 255, 3*5, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*12, 3*-1,
 0, 3*-7, 3*15,
 (int8_t) 255, 3*12, 3*-2,
 0, 3*-4, 3*-4,
 (int8_t) 255, 3*12, 3*-2,
 0, 3*-17, 3*-11,
 (int8_t) 255, 3*12, 3*-2,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*5, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight1[] = {
 0, 3*2, 3*0,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-1, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-12, 3*12,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-5, 3*-8,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-14, 3*-15,
 (int8_t) 255, 3*13, 3*2,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-1, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height1FallingBack1[] = {
 0, 3*2, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-6, 3*5,
 (int8_t) 255, 3*14, 3*0,
 0, 3*-11, 3*14,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-8, 3*-5,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-17, 3*-12,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-6, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-6, 3*6,
 1
};
const int8_t height1FallingFront1[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*10, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-10, 3*5,
 (int8_t) 255, 3*12, 3*1,
 0, 3*-9, 3*13,
 (int8_t) 255, 3*12, 3*1,
 0, 3*-2, 3*-7,
 (int8_t) 255, 3*11, 3*1,
 0, 3*-14, 3*-14,
 (int8_t) 255, 3*11, 3*1,
 0, 3*-9, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*9, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-9, 3*5,
 1
};
const int8_t height2FallingLeft2[] = {
 (int8_t) 255, 3*6, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*24, 3*-6,
 0, 3*-18, 3*20,
 (int8_t) 255, 3*24, 3*-8,
 0, 3*-16, 3*2,
 (int8_t) 255, 3*24, 3*-8,
 0, 3*-30, 3*-5,
 (int8_t) 255, 3*24, 3*-7,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*6, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight2[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*13, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*4, 3*-26,
 0, 3*9, 3*31,
 (int8_t) 255, 3*5, 3*-26,
 0, 3*3, 3*20,
 (int8_t) 255, 3*5, 3*-26,
 0, 3*-18, 3*21,
 (int8_t) 255, 3*4, 3*-25,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*14, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-14, 3*-4,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2FallingRight2[] = {
 0, 3*3, 3*0,
 (int8_t) 255, 3*0, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*0, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*27, 3*8,
 0, 3*-27, 3*6,
 (int8_t) 255, 3*27, 3*7,
 0, 3*-19, 3*-13,
 (int8_t) 255, 3*27, 3*7,
 0, 3*-27, 3*-20,
 (int8_t) 255, 3*27, 3*7,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*0, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*0, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft2[] = {
 0, 3*11, 3*-4,
 (int8_t) 255, 3*-11, 3*4,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*15, 3*25,
 0, 3*-26, 3*-21,
 (int8_t) 255, 3*15, 3*26,
 0, 3*-7, 3*-31,
 (int8_t) 255, 3*15, 3*25,
 0, 3*-4, 3*-30,
 (int8_t) 255, 3*15, 3*25,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack2[] = {
 0, 3*4, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*4, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-4, 3*5,
 (int8_t) 255, 3*29, 3*-2,
 0, 3*-26, 3*16,
 (int8_t) 255, 3*29, 3*-3,
 0, 3*-25, 3*-3,
 (int8_t) 255, 3*29, 3*-3,
 0, 3*-32, 3*-10,
 (int8_t) 255, 3*29, 3*-3,
 0, 3*-4, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*4, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-4, 3*6,
 1
};
const int8_t height2RisingFront2[] = {
 0, 3*9, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-9, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*9, 3*2,
 (int8_t) 255, 3*25, 3*-10,
 0, 3*-22, 3*24,
 (int8_t) 255, 3*25, 3*-11,
 0, 3*-34, 3*9,
 (int8_t) 255, 3*25, 3*-11,
 0, 3*-28, 3*-3,
 (int8_t) 255, 3*25, 3*-10,
 0, 3*9, 3*2,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-9, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*9, 3*2,
 1
};
const int8_t height2FallingFront2[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*11, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-18, 3*11,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-10, 3*-9,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-24, 3*-16,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-11, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*11, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-11, 3*5,
 1
};
const int8_t height2RisingBack2[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*2,
 (int8_t) 255, 3*-5, 3*11,
 0, 3*8, 3*2,
 (int8_t) 255, 3*-5, 3*11,
 0, 3*20, 3*-13,
 (int8_t) 255, 3*-5, 3*11,
 0, 3*2, 3*-24,
 (int8_t) 255, 3*-5, 3*11,
 0, 3*-15, 3*2,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*2,
 1
};
const int8_t depth2RollingLeft2[] = {
 (int8_t) 255, 3*6, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-6, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*12, 3*-3,
 0, 3*-6, 3*17,
 (int8_t) 255, 3*12, 3*-4,
 0, 3*4, 3*-8,
 (int8_t) 255, 3*12, 3*-3,
 0, 3*-18, 3*-10,
 (int8_t) 255, 3*12, 3*-4,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*6, 3*13,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-6, 3*-14,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight2[] = {
 0, 3*3, 3*0,
 (int8_t) 255, 3*0, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*0, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*14, 3*4,
 0, 3*-14, 3*10,
 (int8_t) 255, 3*13, 3*4,
 0, 3*3, 3*-16,
 (int8_t) 255, 3*13, 3*4,
 0, 3*-13, 3*-17,
 (int8_t) 255, 3*14, 3*4,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*-1, 3*14,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*1, 3*-13,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t width2RollingFront2[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*11, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*10, 3*2,
 0, 3*-4, 3*26,
 (int8_t) 255, 3*10, 3*2,
 0, 3*1, 3*-8,
 (int8_t) 255, 3*11, 3*2,
 0, 3*-17, 3*-29,
 (int8_t) 255, 3*11, 3*2,
 0, 3*-12, 3*5,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-12, 3*5,
 1
};
const int8_t width2RollingBack2[] = {
 0, 3*4, 3*0,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*4, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-4, 3*5,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-8, 3*29,
 (int8_t) 255, 3*14, 3*-2,
 0, 3*-10, 3*-4,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-21, 3*-25,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-5, 3*6,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*5, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-5, 3*6,
 1
};
const int8_t height1FallingLeft2[] = {
 (int8_t) 255, 3*6, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*12, 3*-3,
 0, 3*-6, 3*17,
 (int8_t) 255, 3*12, 3*-4,
 0, 3*-4, 3*-2,
 (int8_t) 255, 3*12, 3*-4,
 0, 3*-18, 3*-9,
 (int8_t) 255, 3*12, 3*-4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*6, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight2[] = {
 0, 3*3, 3*0,
 (int8_t) 255, 3*0, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*0, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*14, 3*4,
 0, 3*-14, 3*10,
 (int8_t) 255, 3*13, 3*4,
 0, 3*-5, 3*-10,
 (int8_t) 255, 3*13, 3*4,
 0, 3*-13, 3*-17,
 (int8_t) 255, 3*14, 3*4,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*-1, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*1, 3*-13,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height1FallingBack2[] = {
 0, 3*4, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*4, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-4, 3*5,
 (int8_t) 255, 3*14, 3*-1,
 0, 3*-11, 3*15,
 (int8_t) 255, 3*14, 3*-2,
 0, 3*-10, 3*-4,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-18, 3*-11,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-5, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*5, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-5, 3*6,
 1
};
const int8_t height1FallingFront2[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*11, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*10, 3*2,
 0, 3*-7, 3*12,
 (int8_t) 255, 3*10, 3*2,
 0, 3*1, 3*-8,
 (int8_t) 255, 3*11, 3*2,
 0, 3*-14, 3*-15,
 (int8_t) 255, 3*11, 3*2,
 0, 3*-12, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-12, 3*5,
 1
};
const int8_t height2FallingLeft3[] = {
 (int8_t) 255, 3*8, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-8, 3*-12,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*22, 3*-10,
 0, 3*-14, 3*23,
 (int8_t) 255, 3*21, 3*-11,
 0, 3*-13, 3*5,
 (int8_t) 255, 3*21, 3*-10,
 0, 3*-29, 3*-2,
 (int8_t) 255, 3*22, 3*-11,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*7, 3*12,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-7, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight3[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*8, 3*-24,
 0, 3*5, 3*31,
 (int8_t) 255, 3*8, 3*-24,
 0, 3*0, 3*18,
 (int8_t) 255, 3*8, 3*-24,
 0, 3*-21, 3*17,
 (int8_t) 255, 3*8, 3*-23,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-6,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2FallingRight3[] = {
 0, 3*5, 3*1,
 (int8_t) 255, 3*-2, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*2, 3*-12,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*27, 3*11,
 0, 3*-29, 3*2,
 (int8_t) 255, 3*26, 3*11,
 0, 3*-18, 3*-17,
 (int8_t) 255, 3*26, 3*11,
 0, 3*-24, 3*-23,
 (int8_t) 255, 3*27, 3*10,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-3, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*3, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft3[] = {
 0, 3*10, 3*-6,
 (int8_t) 255, 3*-10, 3*6,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*18, 3*23,
 0, 3*-28, 3*-17,
 (int8_t) 255, 3*18, 3*24,
 0, 3*-10, 3*-29,
 (int8_t) 255, 3*18, 3*23,
 0, 3*-8, 3*-30,
 (int8_t) 255, 3*18, 3*23,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack3[] = {
 0, 3*6, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*2, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-2, 3*5,
 (int8_t) 255, 3*30, 3*-4,
 0, 3*-27, 3*18,
 (int8_t) 255, 3*30, 3*-5,
 0, 3*-28, 3*-1,
 (int8_t) 255, 3*30, 3*-5,
 0, 3*-33, 3*-8,
 (int8_t) 255, 3*30, 3*-5,
 0, 3*-2, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*2, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-2, 3*6,
 1
};
const int8_t height2RisingFront3[] = {
 0, 3*7, 3*3,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-7, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*7, 3*3,
 (int8_t) 255, 3*27, 3*-9,
 0, 3*-24, 3*23,
 (int8_t) 255, 3*27, 3*-10,
 0, 3*-34, 3*7,
 (int8_t) 255, 3*27, 3*-10,
 0, 3*-30, 3*-4,
 (int8_t) 255, 3*27, 3*-9,
 0, 3*7, 3*3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-7, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*7, 3*3,
 1
};
const int8_t height2FallingFront3[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-12, 3*5,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-15, 3*9,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-6, 3*-11,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-21, 3*-18,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-12, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-12, 3*5,
 1
};
const int8_t height2RisingBack3[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*-1, 3*10,
 0, 3*4, 3*3,
 (int8_t) 255, 3*-1, 3*10,
 0, 3*16, 3*-12,
 (int8_t) 255, 3*-1, 3*9,
 0, 3*-2, 3*-23,
 (int8_t) 255, 3*-1, 3*10,
 0, 3*-15, 3*3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*3,
 1
};
const int8_t depth2RollingLeft3[] = {
 (int8_t) 255, 3*8, 3*13,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-8, 3*-12,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*11, 3*-4,
 0, 3*-3, 3*17,
 (int8_t) 255, 3*11, 3*-5,
 0, 3*5, 3*-7,
 (int8_t) 255, 3*11, 3*-4,
 0, 3*-19, 3*-8,
 (int8_t) 255, 3*11, 3*-5,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*8, 3*12,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-8, 3*-13,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight3[] = {
 0, 3*5, 3*1,
 (int8_t) 255, 3*-2, 3*13,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*2, 3*-12,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*13, 3*5,
 0, 3*-15, 3*8,
 (int8_t) 255, 3*13, 3*5,
 0, 3*3, 3*-17,
 (int8_t) 255, 3*13, 3*5,
 0, 3*-11, 3*-17,
 (int8_t) 255, 3*13, 3*5,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*-2, 3*13,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*2, 3*-12,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t width2RollingFront3[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-12, 3*5,
 (int8_t) 255, 3*9, 3*2,
 0, 3*-3, 3*26,
 (int8_t) 255, 3*9, 3*2,
 0, 3*3, 3*-8,
 (int8_t) 255, 3*9, 3*3,
 0, 3*-15, 3*-30,
 (int8_t) 255, 3*9, 3*3,
 0, 3*-12, 3*4,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*12, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-12, 3*4,
 1
};
const int8_t width2RollingBack3[] = {
 0, 3*6, 3*0,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*2, 3*-6,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-2, 3*5,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-9, 3*30,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-13, 3*-3,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-21, 3*-25,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-2, 3*5,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*2, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-2, 3*5,
 1
};
const int8_t height1FallingLeft3[] = {
 (int8_t) 255, 3*8, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-8, 3*-12,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*11, 3*-4,
 0, 3*-3, 3*17,
 (int8_t) 255, 3*11, 3*-5,
 0, 3*-3, 3*-1,
 (int8_t) 255, 3*11, 3*-5,
 0, 3*-19, 3*-7,
 (int8_t) 255, 3*11, 3*-5,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*8, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-8, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight3[] = {
 0, 3*5, 3*1,
 (int8_t) 255, 3*-2, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*2, 3*-12,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*5,
 0, 3*-15, 3*8,
 (int8_t) 255, 3*13, 3*5,
 0, 3*-5, 3*-11,
 (int8_t) 255, 3*13, 3*5,
 0, 3*-11, 3*-17,
 (int8_t) 255, 3*13, 3*4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-2, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*2, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack3[] = {
 0, 3*6, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*2, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-2, 3*5,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-12, 3*16,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-13, 3*-3,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-18, 3*-11,
 (int8_t) 255, 3*15, 3*-2,
 0, 3*-2, 3*5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*2, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-2, 3*5,
 1
};
const int8_t height1FallingFront3[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-12, 3*5,
 (int8_t) 255, 3*9, 3*2,
 0, 3*-6, 3*12,
 (int8_t) 255, 3*9, 3*2,
 0, 3*3, 3*-8,
 (int8_t) 255, 3*9, 3*3,
 0, 3*-12, 3*-16,
 (int8_t) 255, 3*9, 3*3,
 0, 3*-12, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-12, 3*4,
 1
};
const int8_t height2FallingLeft4[] = {
 (int8_t) 255, 3*9, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-9, 3*-11,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*20, 3*-13,
 0, 3*-11, 3*25,
 (int8_t) 255, 3*20, 3*-13,
 0, 3*-12, 3*7,
 (int8_t) 255, 3*20, 3*-13,
 0, 3*-29, 3*2,
 (int8_t) 255, 3*20, 3*-14,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*9, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-9, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight4[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*12, 3*9,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-12, 3*-9,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*11, 3*-22,
 0, 3*1, 3*31,
 (int8_t) 255, 3*11, 3*-23,
 0, 3*-3, 3*17,
 (int8_t) 255, 3*11, 3*-23,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*11, 3*-22,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*12, 3*8,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-12, 3*-8,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight4[] = {
 0, 3*7, 3*2,
 (int8_t) 255, 3*-4, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*4, 3*-11,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*25, 3*14,
 0, 3*-29, 3*-2,
 (int8_t) 255, 3*26, 3*14,
 0, 3*-18, 3*-20,
 (int8_t) 255, 3*26, 3*14,
 0, 3*-22, 3*-25,
 (int8_t) 255, 3*25, 3*13,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-3, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*3, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft4[] = {
 0, 3*8, 3*-8,
 (int8_t) 255, 3*-8, 3*8,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*8, 3*-9,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*21, 3*22,
 0, 3*-29, 3*-14,
 (int8_t) 255, 3*21, 3*22,
 0, 3*-13, 3*-27,
 (int8_t) 255, 3*21, 3*21,
 0, 3*-13, 3*-30,
 (int8_t) 255, 3*21, 3*22,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-8, 3*8,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*8, 3*-8,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack4[] = {
 0, 3*8, 3*0,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*0, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*0, 3*5,
 (int8_t) 255, 3*30, 3*-6,
 0, 3*-27, 3*19,
 (int8_t) 255, 3*30, 3*-6,
 0, 3*-30, 3*1,
 (int8_t) 255, 3*31, 3*-6,
 0, 3*-34, 3*-7,
 (int8_t) 255, 3*31, 3*-6,
 0, 3*-1, 3*5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*1, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-1, 3*5,
 1
};
const int8_t height2RisingFront4[] = {
 0, 3*5, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-5, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*5, 3*4,
 (int8_t) 255, 3*29, 3*-9,
 0, 3*-26, 3*23,
 (int8_t) 255, 3*29, 3*-10,
 0, 3*-34, 3*6,
 (int8_t) 255, 3*29, 3*-10,
 0, 3*-32, 3*-4,
 (int8_t) 255, 3*29, 3*-9,
 0, 3*5, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-5, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*5, 3*4,
 1
};
const int8_t height2FallingFront4[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-13, 3*4,
 (int8_t) 255, 3*15, 3*6,
 0, 3*-12, 3*8,
 (int8_t) 255, 3*15, 3*6,
 0, 3*-2, 3*-11,
 (int8_t) 255, 3*15, 3*6,
 0, 3*-18, 3*-19,
 (int8_t) 255, 3*15, 3*5,
 0, 3*-13, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-13, 3*5,
 1
};
const int8_t height2RisingBack4[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*10,
 0, 3*0, 3*3,
 (int8_t) 255, 3*3, 3*10,
 0, 3*12, 3*-13,
 (int8_t) 255, 3*3, 3*9,
 0, 3*-6, 3*-23,
 (int8_t) 255, 3*3, 3*10,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t depth2RollingLeft4[] = {
 (int8_t) 255, 3*9, 3*12,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-9, 3*-11,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*-1, 3*18,
 (int8_t) 255, 3*10, 3*-7,
 0, 3*6, 3*-5,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*-19, 3*-5,
 (int8_t) 255, 3*10, 3*-7,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*9, 3*11,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-9, 3*-12,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight4[] = {
 0, 3*7, 3*2,
 (int8_t) 255, 3*-4, 3*12,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*4, 3*-11,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*13, 3*7,
 0, 3*-17, 3*5,
 (int8_t) 255, 3*13, 3*7,
 0, 3*3, 3*-19,
 (int8_t) 255, 3*13, 3*7,
 0, 3*-9, 3*-18,
 (int8_t) 255, 3*13, 3*7,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*-4, 3*12,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*4, 3*-11,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t width2RollingFront4[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*13, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-13, 3*4,
 (int8_t) 255, 3*7, 3*3,
 0, 3*-1, 3*25,
 (int8_t) 255, 3*7, 3*3,
 0, 3*6, 3*-8,
 (int8_t) 255, 3*8, 3*3,
 0, 3*-14, 3*-30,
 (int8_t) 255, 3*8, 3*3,
 0, 3*-14, 3*4,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*14, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-14, 3*4,
 1
};
const int8_t width2RollingBack4[] = {
 0, 3*8, 3*0,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*0, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*0, 3*5,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-9, 3*30,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-15, 3*-2,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-21, 3*-24,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*0, 3*5,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*0, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*0, 3*5,
 1
};
const int8_t height1FallingLeft4[] = {
 (int8_t) 255, 3*9, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-9, 3*-11,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*-1, 3*18,
 (int8_t) 255, 3*10, 3*-7,
 0, 3*-2, 3*1,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*-19, 3*-5,
 (int8_t) 255, 3*10, 3*-7,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*9, 3*11,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-9, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight4[] = {
 0, 3*7, 3*2,
 (int8_t) 255, 3*-4, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*4, 3*-11,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*13, 3*7,
 0, 3*-17, 3*5,
 (int8_t) 255, 3*13, 3*7,
 0, 3*-5, 3*-13,
 (int8_t) 255, 3*13, 3*7,
 0, 3*-9, 3*-18,
 (int8_t) 255, 3*13, 3*6,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-4, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*4, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack4[] = {
 0, 3*8, 3*0,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*0, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*0, 3*5,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-12, 3*16,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-15, 3*-2,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*-18, 3*-10,
 (int8_t) 255, 3*15, 3*-3,
 0, 3*0, 3*5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*0, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*0, 3*5,
 1
};
const int8_t height1FallingFront4[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-13, 3*4,
 (int8_t) 255, 3*7, 3*3,
 0, 3*-4, 3*11,
 (int8_t) 255, 3*7, 3*3,
 0, 3*6, 3*-8,
 (int8_t) 255, 3*8, 3*3,
 0, 3*-11, 3*-16,
 (int8_t) 255, 3*8, 3*3,
 0, 3*-14, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*4,
 1
};
const int8_t height2FallingLeft5[] = {
 (int8_t) 255, 3*10, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-10, 3*-10,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*17, 3*-16,
 0, 3*-7, 3*27,
 (int8_t) 255, 3*17, 3*-16,
 0, 3*-9, 3*10,
 (int8_t) 255, 3*17, 3*-16,
 0, 3*-27, 3*6,
 (int8_t) 255, 3*17, 3*-17,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*10, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-10, 3*-11,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight5[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*11, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-11, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*14, 3*-20,
 0, 3*-3, 3*30,
 (int8_t) 255, 3*14, 3*-20,
 0, 3*-6, 3*14,
 (int8_t) 255, 3*14, 3*-20,
 0, 3*-25, 3*10,
 (int8_t) 255, 3*14, 3*-20,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*11, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-11, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight5[] = {
 0, 3*9, 3*3,
 (int8_t) 255, 3*-6, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*6, 3*-10,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*24, 3*17,
 0, 3*-30, 3*-6,
 (int8_t) 255, 3*24, 3*17,
 0, 3*-16, 3*-23,
 (int8_t) 255, 3*24, 3*17,
 0, 3*-18, 3*-27,
 (int8_t) 255, 3*24, 3*16,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-6, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*6, 3*-11,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft5[] = {
 0, 3*7, 3*-9,
 (int8_t) 255, 3*-7, 3*9,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*7, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*23, 3*19,
 0, 3*-30, 3*-10,
 (int8_t) 255, 3*23, 3*20,
 0, 3*-15, 3*-25,
 (int8_t) 255, 3*23, 3*19,
 0, 3*-16, 3*-29,
 (int8_t) 255, 3*23, 3*19,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*7, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack5[] = {
 0, 3*10, 3*0,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-2, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*2, 3*5,
 (int8_t) 255, 3*30, 3*-8,
 0, 3*-27, 3*21,
 (int8_t) 255, 3*30, 3*-8,
 0, 3*-32, 3*3,
 (int8_t) 255, 3*30, 3*-7,
 0, 3*-33, 3*-6,
 (int8_t) 255, 3*30, 3*-7,
 0, 3*2, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-2, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*2, 3*4,
 1
};
const int8_t height2RisingFront5[] = {
 0, 3*4, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-4, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*4, 3*4,
 (int8_t) 255, 3*29, 3*-7,
 0, 3*-26, 3*21,
 (int8_t) 255, 3*29, 3*-8,
 0, 3*-33, 3*4,
 (int8_t) 255, 3*30, 3*-8,
 0, 3*-33, 3*-6,
 (int8_t) 255, 3*30, 3*-7,
 0, 3*3, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-3, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*3, 3*4,
 1
};
const int8_t height2FallingFront5[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*4,
 (int8_t) 255, 3*11, 3*7,
 0, 3*-8, 3*7,
 (int8_t) 255, 3*11, 3*7,
 0, 3*3, 3*-12,
 (int8_t) 255, 3*11, 3*8,
 0, 3*-14, 3*-21,
 (int8_t) 255, 3*11, 3*7,
 0, 3*-14, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*4,
 1
};
const int8_t height2RisingBack5[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*4,
 (int8_t) 255, 3*7, 3*8,
 0, 3*-4, 3*5,
 (int8_t) 255, 3*7, 3*8,
 0, 3*8, 3*-11,
 (int8_t) 255, 3*7, 3*7,
 0, 3*-10, 3*-21,
 (int8_t) 255, 3*7, 3*8,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t depth2RollingLeft5[] = {
 (int8_t) 255, 3*10, 3*11,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-10, 3*-11,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*8, 3*-8,
 0, 3*2, 3*19,
 (int8_t) 255, 3*9, 3*-8,
 0, 3*7, 3*-3,
 (int8_t) 255, 3*9, 3*-8,
 0, 3*-19, 3*-3,
 (int8_t) 255, 3*8, 3*-9,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*11, 3*11,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-11, 3*-12,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight5[] = {
 0, 3*9, 3*3,
 (int8_t) 255, 3*-6, 3*11,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*6, 3*-10,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*12, 3*8,
 0, 3*-18, 3*3,
 (int8_t) 255, 3*12, 3*9,
 0, 3*4, 3*-21,
 (int8_t) 255, 3*12, 3*9,
 0, 3*-6, 3*-19,
 (int8_t) 255, 3*12, 3*8,
 0, 3*-16, 3*11,
 (int8_t) 255, 3*-6, 3*12,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*6, 3*-11,
 (int8_t) 255, 3*-16, 3*11,
 1
};
const int8_t width2RollingFront5[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*14, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-14, 3*4,
 (int8_t) 255, 3*5, 3*4,
 0, 3*1, 3*24,
 (int8_t) 255, 3*5, 3*4,
 0, 3*9, 3*-9,
 (int8_t) 255, 3*6, 3*4,
 0, 3*-12, 3*-31,
 (int8_t) 255, 3*6, 3*4,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t width2RollingBack5[] = {
 0, 3*10, 3*0,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-2, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*2, 3*5,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-9, 3*31,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-17, 3*-1,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-21, 3*-23,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*2, 3*5,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-2, 3*-5,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*2, 3*5,
 1
};
const int8_t height1FallingLeft5[] = {
 (int8_t) 255, 3*10, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-10, 3*-10,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*8, 3*-8,
 0, 3*2, 3*19,
 (int8_t) 255, 3*9, 3*-8,
 0, 3*-1, 3*2,
 (int8_t) 255, 3*9, 3*-7,
 0, 3*-19, 3*-3,
 (int8_t) 255, 3*8, 3*-9,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*11, 3*11,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-11, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight5[] = {
 0, 3*9, 3*3,
 (int8_t) 255, 3*-6, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*6, 3*-10,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*12, 3*8,
 0, 3*-18, 3*3,
 (int8_t) 255, 3*12, 3*9,
 0, 3*-4, 3*-15,
 (int8_t) 255, 3*12, 3*9,
 0, 3*-6, 3*-19,
 (int8_t) 255, 3*12, 3*7,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-6, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*6, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack5[] = {
 0, 3*10, 3*0,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-2, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*2, 3*5,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-12, 3*17,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-17, 3*-1,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-18, 3*-9,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*2, 3*5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-2, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*2, 3*5,
 1
};
const int8_t height1FallingFront5[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*4,
 (int8_t) 255, 3*5, 3*4,
 0, 3*-2, 3*10,
 (int8_t) 255, 3*5, 3*4,
 0, 3*9, 3*-9,
 (int8_t) 255, 3*6, 3*4,
 0, 3*-9, 3*-17,
 (int8_t) 255, 3*6, 3*4,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t height2FallingLeft6[] = {
 (int8_t) 255, 3*11, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-11, 3*-9,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*14, 3*-19,
 0, 3*-3, 3*29,
 (int8_t) 255, 3*14, 3*-19,
 0, 3*-6, 3*13,
 (int8_t) 255, 3*14, 3*-19,
 0, 3*-25, 3*10,
 (int8_t) 255, 3*14, 3*-20,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*11, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-11, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight6[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*10, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-10, 3*-11,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*17, 3*-17,
 0, 3*-7, 3*28,
 (int8_t) 255, 3*17, 3*-17,
 0, 3*-9, 3*11,
 (int8_t) 255, 3*17, 3*-17,
 0, 3*-27, 3*6,
 (int8_t) 255, 3*17, 3*-17,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*10, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-10, 3*-11,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight6[] = {
 0, 3*10, 3*4,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*7, 3*-9,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*23, 3*20,
 0, 3*-30, 3*-10,
 (int8_t) 255, 3*23, 3*20,
 0, 3*-15, 3*-26,
 (int8_t) 255, 3*23, 3*20,
 0, 3*-16, 3*-29,
 (int8_t) 255, 3*23, 3*19,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*7, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft6[] = {
 0, 3*6, 3*-10,
 (int8_t) 255, 3*-6, 3*10,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*6, 3*-11,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*24, 3*16,
 0, 3*-30, 3*-6,
 (int8_t) 255, 3*24, 3*17,
 0, 3*-16, 3*-22,
 (int8_t) 255, 3*24, 3*16,
 0, 3*-18, 3*-27,
 (int8_t) 255, 3*24, 3*16,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-6, 3*11,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*6, 3*-11,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack6[] = {
 0, 3*12, 3*-1,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-4, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*4, 3*4,
 (int8_t) 255, 3*29, 3*-8,
 0, 3*-26, 3*21,
 (int8_t) 255, 3*29, 3*-8,
 0, 3*-33, 3*4,
 (int8_t) 255, 3*30, 3*-8,
 0, 3*-33, 3*-5,
 (int8_t) 255, 3*30, 3*-8,
 0, 3*3, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-3, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*3, 3*4,
 1
};
const int8_t height2RisingFront6[] = {
 0, 3*2, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-2, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*2, 3*5,
 (int8_t) 255, 3*30, 3*-7,
 0, 3*-27, 3*21,
 (int8_t) 255, 3*30, 3*-8,
 0, 3*-32, 3*3,
 (int8_t) 255, 3*30, 3*-7,
 0, 3*-33, 3*-7,
 (int8_t) 255, 3*30, 3*-6,
 0, 3*2, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-2, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*2, 3*4,
 1
};
const int8_t height2FallingFront6[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*7, 3*8,
 0, 3*-4, 3*6,
 (int8_t) 255, 3*7, 3*8,
 0, 3*8, 3*-12,
 (int8_t) 255, 3*7, 3*8,
 0, 3*-10, 3*-21,
 (int8_t) 255, 3*7, 3*7,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t height2RisingBack6[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*14, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*5,
 (int8_t) 255, 3*11, 3*7,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*11, 3*7,
 0, 3*3, 3*-11,
 (int8_t) 255, 3*11, 3*7,
 0, 3*-14, 3*-21,
 (int8_t) 255, 3*11, 3*8,
 0, 3*-14, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*14, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*4,
 1
};
const int8_t depth2RollingLeft6[] = {
 (int8_t) 255, 3*11, 3*10,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-11, 3*-10,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*7, 3*-9,
 0, 3*4, 3*19,
 (int8_t) 255, 3*7, 3*-10,
 0, 3*9, 3*-1,
 (int8_t) 255, 3*7, 3*-10,
 0, 3*-18, 3*0,
 (int8_t) 255, 3*7, 3*-10,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*11, 3*9,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-11, 3*-10,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight6[] = {
 0, 3*10, 3*4,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*7, 3*-9,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*11, 3*10,
 0, 3*-18, 3*0,
 (int8_t) 255, 3*11, 3*10,
 0, 3*5, 3*-22,
 (int8_t) 255, 3*11, 3*10,
 0, 3*-4, 3*-19,
 (int8_t) 255, 3*11, 3*9,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*7, 3*-10,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront6[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*4, 3*4,
 0, 3*2, 3*24,
 (int8_t) 255, 3*4, 3*4,
 0, 3*11, 3*-8,
 (int8_t) 255, 3*3, 3*4,
 0, 3*-9, 3*-31,
 (int8_t) 255, 3*3, 3*3,
 0, 3*-14, 3*4,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*14, 3*-4,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-14, 3*4,
 1
};
const int8_t width2RollingBack6[] = {
 0, 3*12, 3*-1,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-4, 3*-4,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*4, 3*4,
 (int8_t) 255, 3*14, 3*-4,
 0, 3*-8, 3*31,
 (int8_t) 255, 3*14, 3*-4,
 0, 3*-18, 3*0,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-21, 3*-23,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*3, 3*4,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-3, 3*-4,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*3, 3*4,
 1
};
const int8_t height1FallingLeft6[] = {
 (int8_t) 255, 3*11, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-11, 3*-9,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*7, 3*-9,
 0, 3*4, 3*19,
 (int8_t) 255, 3*7, 3*-10,
 0, 3*1, 3*4,
 (int8_t) 255, 3*7, 3*-9,
 0, 3*-18, 3*0,
 (int8_t) 255, 3*7, 3*-10,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*11, 3*9,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-11, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight6[] = {
 0, 3*10, 3*4,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*7, 3*-9,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*11, 3*10,
 0, 3*-18, 3*0,
 (int8_t) 255, 3*11, 3*10,
 0, 3*-3, 3*-16,
 (int8_t) 255, 3*11, 3*10,
 0, 3*-4, 3*-19,
 (int8_t) 255, 3*11, 3*9,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-7, 3*10,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*7, 3*-10,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack6[] = {
 0, 3*12, 3*-1,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-4, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*4, 3*4,
 (int8_t) 255, 3*14, 3*-4,
 0, 3*-11, 3*17,
 (int8_t) 255, 3*14, 3*-4,
 0, 3*-18, 3*0,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*-18, 3*-9,
 (int8_t) 255, 3*15, 3*-4,
 0, 3*3, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-3, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*3, 3*4,
 1
};
const int8_t height1FallingFront6[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*4, 3*4,
 0, 3*-1, 3*10,
 (int8_t) 255, 3*4, 3*4,
 0, 3*11, 3*-8,
 (int8_t) 255, 3*3, 3*4,
 0, 3*-6, 3*-17,
 (int8_t) 255, 3*3, 3*3,
 0, 3*-14, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*4,
 1
};
const int8_t height2FallingLeft7[] = {
 (int8_t) 255, 3*12, 3*9,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-12, 3*-8,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*11, 3*-21,
 0, 3*1, 3*30,
 (int8_t) 255, 3*11, 3*-22,
 0, 3*-3, 3*16,
 (int8_t) 255, 3*11, 3*-22,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*11, 3*-22,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*12, 3*8,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-12, 3*-8,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight7[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*9, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-9, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*20, 3*-14,
 0, 3*-11, 3*26,
 (int8_t) 255, 3*20, 3*-14,
 0, 3*-12, 3*8,
 (int8_t) 255, 3*20, 3*-14,
 0, 3*-29, 3*2,
 (int8_t) 255, 3*20, 3*-14,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*9, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-9, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight7[] = {
 0, 3*11, 3*5,
 (int8_t) 255, 3*-8, 3*9,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*8, 3*-8,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*21, 3*23,
 0, 3*-29, 3*-14,
 (int8_t) 255, 3*21, 3*22,
 0, 3*-13, 3*-28,
 (int8_t) 255, 3*21, 3*22,
 0, 3*-13, 3*-30,
 (int8_t) 255, 3*21, 3*22,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-8, 3*8,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*8, 3*-8,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft7[] = {
 0, 3*4, 3*-11,
 (int8_t) 255, 3*-4, 3*11,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*4, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*25, 3*13,
 0, 3*-29, 3*-2,
 (int8_t) 255, 3*26, 3*14,
 0, 3*-18, 3*-19,
 (int8_t) 255, 3*26, 3*13,
 0, 3*-22, 3*-25,
 (int8_t) 255, 3*25, 3*14,
 0, 3*-8, 3*5,
 (int8_t) 255, 3*-3, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*3, 3*-11,
 (int8_t) 255, 3*-8, 3*5,
 1
};
const int8_t height2FallingBack7[] = {
 0, 3*13, 3*-1,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-5, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*5, 3*4,
 (int8_t) 255, 3*29, 3*-10,
 0, 3*-26, 3*23,
 (int8_t) 255, 3*29, 3*-10,
 0, 3*-34, 3*6,
 (int8_t) 255, 3*29, 3*-9,
 0, 3*-32, 3*-4,
 (int8_t) 255, 3*29, 3*-10,
 0, 3*5, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-5, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*5, 3*4,
 1
};
const int8_t height2RisingFront7[] = {
 0, 3*0, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*0, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*0, 3*5,
 (int8_t) 255, 3*30, 3*-5,
 0, 3*-27, 3*19,
 (int8_t) 255, 3*30, 3*-6,
 0, 3*-30, 3*1,
 (int8_t) 255, 3*31, 3*-6,
 0, 3*-34, 3*-8,
 (int8_t) 255, 3*31, 3*-5,
 0, 3*-1, 3*5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*1, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-1, 3*5,
 1
};
const int8_t height2FallingFront7[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*3, 3*10,
 0, 3*0, 3*4,
 (int8_t) 255, 3*3, 3*10,
 0, 3*12, 3*-14,
 (int8_t) 255, 3*3, 3*10,
 0, 3*-6, 3*-23,
 (int8_t) 255, 3*3, 3*9,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t height2RisingBack7[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*13, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-13, 3*5,
 (int8_t) 255, 3*15, 3*6,
 0, 3*-12, 3*7,
 (int8_t) 255, 3*15, 3*6,
 0, 3*-2, 3*-10,
 (int8_t) 255, 3*15, 3*5,
 0, 3*-18, 3*-19,
 (int8_t) 255, 3*15, 3*6,
 0, 3*-13, 3*5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*13, 3*-5,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-13, 3*5,
 1
};
const int8_t depth2RollingLeft7[] = {
 (int8_t) 255, 3*12, 3*9,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-12, 3*-9,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*6, 3*-10,
 0, 3*6, 3*19,
 (int8_t) 255, 3*6, 3*-11,
 0, 3*10, 3*0,
 (int8_t) 255, 3*6, 3*-12,
 0, 3*-18, 3*3,
 (int8_t) 255, 3*6, 3*-11,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*12, 3*8,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-12, 3*-8,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight7[] = {
 0, 3*11, 3*5,
 (int8_t) 255, 3*-8, 3*9,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*8, 3*-8,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*11, 3*12,
 0, 3*-19, 3*-3,
 (int8_t) 255, 3*10, 3*11,
 0, 3*6, 3*-23,
 (int8_t) 255, 3*10, 3*11,
 0, 3*-2, 3*-19,
 (int8_t) 255, 3*11, 3*11,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-9, 3*8,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*9, 3*-8,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront7[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*2, 3*5,
 0, 3*4, 3*23,
 (int8_t) 255, 3*2, 3*5,
 0, 3*13, 3*-9,
 (int8_t) 255, 3*2, 3*5,
 0, 3*-8, 3*-32,
 (int8_t) 255, 3*2, 3*4,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t width2RollingBack7[] = {
 0, 3*13, 3*-1,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-5, 3*-4,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*5, 3*4,
 (int8_t) 255, 3*15, 3*-5,
 0, 3*-9, 3*32,
 (int8_t) 255, 3*15, 3*-5,
 0, 3*-20, 3*1,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*-20, 3*-22,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*6, 3*4,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-6, 3*-4,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*6, 3*4,
 1
};
const int8_t height1FallingLeft7[] = {
 (int8_t) 255, 3*12, 3*9,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-12, 3*-8,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*6, 3*-10,
 0, 3*6, 3*19,
 (int8_t) 255, 3*6, 3*-11,
 0, 3*2, 3*5,
 (int8_t) 255, 3*6, 3*-11,
 0, 3*-18, 3*3,
 (int8_t) 255, 3*6, 3*-11,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*12, 3*8,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-12, 3*-8,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight7[] = {
 0, 3*11, 3*5,
 (int8_t) 255, 3*-8, 3*9,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*8, 3*-8,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*11, 3*12,
 0, 3*-19, 3*-3,
 (int8_t) 255, 3*10, 3*11,
 0, 3*-2, 3*-17,
 (int8_t) 255, 3*10, 3*11,
 0, 3*-2, 3*-19,
 (int8_t) 255, 3*11, 3*11,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-9, 3*8,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*9, 3*-8,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack7[] = {
 0, 3*13, 3*-1,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-5, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*5, 3*4,
 (int8_t) 255, 3*15, 3*-5,
 0, 3*-12, 3*18,
 (int8_t) 255, 3*15, 3*-5,
 0, 3*-20, 3*1,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*-17, 3*-8,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*6, 3*4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-6, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*6, 3*4,
 1
};
const int8_t height1FallingFront7[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*3,
 (int8_t) 255, 3*2, 3*5,
 0, 3*1, 3*9,
 (int8_t) 255, 3*2, 3*5,
 0, 3*13, 3*-9,
 (int8_t) 255, 3*2, 3*5,
 0, 3*-5, 3*-18,
 (int8_t) 255, 3*2, 3*4,
 0, 3*-15, 3*4,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-4,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*4,
 1
};
const int8_t height2FallingLeft8[] = {
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-6,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*8, 3*-23,
 0, 3*5, 3*30,
 (int8_t) 255, 3*8, 3*-23,
 0, 3*0, 3*17,
 (int8_t) 255, 3*8, 3*-23,
 0, 3*-21, 3*17,
 (int8_t) 255, 3*8, 3*-24,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight8[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*8, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-8, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*22, 3*-11,
 0, 3*-14, 3*24,
 (int8_t) 255, 3*21, 3*-11,
 0, 3*-13, 3*5,
 (int8_t) 255, 3*21, 3*-11,
 0, 3*-29, 3*-2,
 (int8_t) 255, 3*22, 3*-11,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*7, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-7, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight8[] = {
 0, 3*13, 3*7,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*18, 3*24,
 0, 3*-28, 3*-17,
 (int8_t) 255, 3*18, 3*24,
 0, 3*-10, 3*-30,
 (int8_t) 255, 3*18, 3*24,
 0, 3*-8, 3*-31,
 (int8_t) 255, 3*18, 3*24,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft8[] = {
 0, 3*2, 3*-12,
 (int8_t) 255, 3*-2, 3*12,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*2, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*27, 3*11,
 0, 3*-29, 3*1,
 (int8_t) 255, 3*26, 3*11,
 0, 3*-18, 3*-16,
 (int8_t) 255, 3*26, 3*10,
 0, 3*-24, 3*-23,
 (int8_t) 255, 3*27, 3*11,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-3, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*3, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack8[] = {
 0, 3*15, 3*-2,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-7, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*7, 3*3,
 (int8_t) 255, 3*27, 3*-10,
 0, 3*-24, 3*23,
 (int8_t) 255, 3*27, 3*-10,
 0, 3*-34, 3*7,
 (int8_t) 255, 3*27, 3*-9,
 0, 3*-30, 3*-4,
 (int8_t) 255, 3*27, 3*-10,
 0, 3*7, 3*3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-7, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*7, 3*3,
 1
};
const int8_t height2RisingFront8[] = {
 0, 3*-1, 3*6,
 (int8_t) 255, 3*2, 3*14,
 (int8_t) 255, 3*2, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-1, 3*6,
 (int8_t) 255, 3*29, 3*-5,
 0, 3*-27, 3*19,
 (int8_t) 255, 3*30, 3*-5,
 0, 3*-28, 3*-1,
 (int8_t) 255, 3*30, 3*-5,
 0, 3*-33, 3*-9,
 (int8_t) 255, 3*30, 3*-4,
 0, 3*-2, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*2, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-2, 3*5,
 1
};
const int8_t height2FallingFront8[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*2,
 (int8_t) 255, 3*0, 3*10,
 0, 3*3, 3*4,
 (int8_t) 255, 3*-1, 3*10,
 0, 3*16, 3*-13,
 (int8_t) 255, 3*-1, 3*10,
 0, 3*-2, 3*-23,
 (int8_t) 255, 3*-1, 3*9,
 0, 3*-14, 3*3,
 (int8_t) 255, 3*2, 3*14,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*3,
 1
};
const int8_t height2RisingBack8[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*12, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-12, 3*6,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-15, 3*8,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-6, 3*-10,
 (int8_t) 255, 3*18, 3*4,
 0, 3*-21, 3*-18,
 (int8_t) 255, 3*18, 3*5,
 0, 3*-12, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*12, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-12, 3*6,
 1
};
const int8_t depth2RollingLeft8[] = {
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-13, 3*-7,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*4, 3*-11,
 0, 3*9, 3*18,
 (int8_t) 255, 3*4, 3*-11,
 0, 3*12, 3*0,
 (int8_t) 255, 3*4, 3*-12,
 0, 3*-17, 3*5,
 (int8_t) 255, 3*4, 3*-12,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-13, 3*-7,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight8[] = {
 0, 3*13, 3*7,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*10, 3*-6,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*9, 3*12,
 0, 3*-19, 3*-5,
 (int8_t) 255, 3*9, 3*12,
 0, 3*7, 3*-24,
 (int8_t) 255, 3*9, 3*12,
 0, 3*1, 3*-18,
 (int8_t) 255, 3*9, 3*11,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront8[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-15, 3*2,
 (int8_t) 255, 3*0, 3*5,
 0, 3*6, 3*23,
 (int8_t) 255, 3*0, 3*5,
 0, 3*15, 3*-8,
 (int8_t) 255, 3*0, 3*5,
 0, 3*-6, 3*-32,
 (int8_t) 255, 3*0, 3*4,
 0, 3*-15, 3*3,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-15, 3*3,
 1
};
const int8_t width2RollingBack8[] = {
 0, 3*15, 3*-2,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-7, 3*-3,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*7, 3*3,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*-8, 3*32,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*-21, 3*2,
 (int8_t) 255, 3*13, 3*-5,
 0, 3*-19, 3*-22,
 (int8_t) 255, 3*13, 3*-5,
 0, 3*8, 3*3,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-8, 3*-3,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*8, 3*3,
 1
};
const int8_t height1FallingLeft8[] = {
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-6,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*4, 3*-11,
 0, 3*9, 3*18,
 (int8_t) 255, 3*4, 3*-11,
 0, 3*4, 3*5,
 (int8_t) 255, 3*4, 3*-11,
 0, 3*-17, 3*5,
 (int8_t) 255, 3*4, 3*-12,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*13, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight8[] = {
 0, 3*13, 3*7,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*9, 3*12,
 0, 3*-19, 3*-5,
 (int8_t) 255, 3*9, 3*12,
 0, 3*-1, 3*-18,
 (int8_t) 255, 3*9, 3*12,
 0, 3*1, 3*-19,
 (int8_t) 255, 3*9, 3*12,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-10, 3*7,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*10, 3*-7,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack8[] = {
 0, 3*15, 3*-2,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-7, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*7, 3*3,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*-11, 3*18,
 (int8_t) 255, 3*14, 3*-5,
 0, 3*-21, 3*2,
 (int8_t) 255, 3*13, 3*-5,
 0, 3*-16, 3*-8,
 (int8_t) 255, 3*13, 3*-5,
 0, 3*8, 3*3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-8, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*8, 3*3,
 1
};
const int8_t height1FallingFront8[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*2,
 (int8_t) 255, 3*0, 3*5,
 0, 3*3, 3*9,
 (int8_t) 255, 3*0, 3*5,
 0, 3*15, 3*-8,
 (int8_t) 255, 3*0, 3*5,
 0, 3*-3, 3*-18,
 (int8_t) 255, 3*0, 3*4,
 0, 3*-15, 3*3,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-15, 3*3,
 1
};
const int8_t height2FallingLeft9[] = {
 (int8_t) 255, 3*13, 3*5,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-5,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*4, 3*-25,
 0, 3*9, 3*30,
 (int8_t) 255, 3*5, 3*-25,
 0, 3*3, 3*20,
 (int8_t) 255, 3*5, 3*-26,
 0, 3*-18, 3*21,
 (int8_t) 255, 3*4, 3*-26,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*14, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-14, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight9[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*6, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*24, 3*-7,
 0, 3*-18, 3*21,
 (int8_t) 255, 3*24, 3*-8,
 0, 3*-16, 3*2,
 (int8_t) 255, 3*24, 3*-8,
 0, 3*-30, 3*-6,
 (int8_t) 255, 3*24, 3*-7,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*6, 3*13,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-6, 3*-13,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight9[] = {
 0, 3*14, 3*9,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*15, 3*26,
 0, 3*-26, 3*-21,
 (int8_t) 255, 3*15, 3*26,
 0, 3*-7, 3*-32,
 (int8_t) 255, 3*15, 3*26,
 0, 3*-4, 3*-31,
 (int8_t) 255, 3*15, 3*26,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft9[] = {
 0, 3*0, 3*-13,
 (int8_t) 255, 3*0, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*0, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*27, 3*8,
 0, 3*-27, 3*5,
 (int8_t) 255, 3*27, 3*7,
 0, 3*-19, 3*-12,
 (int8_t) 255, 3*27, 3*6,
 0, 3*-27, 3*-20,
 (int8_t) 255, 3*27, 3*8,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*0, 3*12,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*0, 3*-12,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack9[] = {
 0, 3*17, 3*-3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-9, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*9, 3*2,
 (int8_t) 255, 3*25, 3*-11,
 0, 3*-22, 3*24,
 (int8_t) 255, 3*25, 3*-10,
 0, 3*-34, 3*8,
 (int8_t) 255, 3*25, 3*-10,
 0, 3*-28, 3*-3,
 (int8_t) 255, 3*25, 3*-11,
 0, 3*9, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-9, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*9, 3*2,
 1
};
const int8_t height2RisingFront9[] = {
 0, 3*-3, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*3, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-3, 3*6,
 (int8_t) 255, 3*28, 3*-3,
 0, 3*-25, 3*17,
 (int8_t) 255, 3*28, 3*-3,
 0, 3*-25, 3*-3,
 (int8_t) 255, 3*29, 3*-3,
 0, 3*-32, 3*-11,
 (int8_t) 255, 3*29, 3*-2,
 0, 3*-4, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*4, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-4, 3*5,
 1
};
const int8_t height2FallingFront9[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*1,
 (int8_t) 255, 3*-4, 3*11,
 0, 3*7, 3*3,
 (int8_t) 255, 3*-4, 3*11,
 0, 3*19, 3*-13,
 (int8_t) 255, 3*-5, 3*11,
 0, 3*2, 3*-24,
 (int8_t) 255, 3*-5, 3*10,
 0, 3*-14, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*2,
 1
};
const int8_t height2RisingBack9[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-11, 3*6,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-18, 3*10,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-10, 3*-8,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-24, 3*-17,
 (int8_t) 255, 3*21, 3*3,
 0, 3*-11, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-11, 3*6,
 1
};
const int8_t depth2RollingLeft9[] = {
 (int8_t) 255, 3*13, 3*5,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-13, 3*-5,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*2, 3*-12,
 0, 3*11, 3*17,
 (int8_t) 255, 3*2, 3*-12,
 0, 3*14, 3*1,
 (int8_t) 255, 3*2, 3*-13,
 0, 3*-15, 3*8,
 (int8_t) 255, 3*2, 3*-13,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*13, 3*5,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-13, 3*-5,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight9[] = {
 0, 3*14, 3*9,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*11, 3*-4,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*8, 3*13,
 0, 3*-19, 3*-8,
 (int8_t) 255, 3*8, 3*13,
 0, 3*8, 3*-25,
 (int8_t) 255, 3*8, 3*13,
 0, 3*3, 3*-17,
 (int8_t) 255, 3*8, 3*12,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront9[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-15, 3*1,
 (int8_t) 255, 3*-1, 3*6,
 0, 3*7, 3*22,
 (int8_t) 255, 3*-2, 3*6,
 0, 3*17, 3*-8,
 (int8_t) 255, 3*-2, 3*5,
 0, 3*-4, 3*-32,
 (int8_t) 255, 3*-2, 3*4,
 0, 3*-14, 3*3,
 (int8_t) 255, 3*5, 3*28,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-14, 3*3,
 1
};
const int8_t width2RollingBack9[] = {
 0, 3*17, 3*-3,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-9, 3*-2,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*9, 3*2,
 (int8_t) 255, 3*12, 3*-5,
 0, 3*-6, 3*32,
 (int8_t) 255, 3*12, 3*-5,
 0, 3*-21, 3*3,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*-18, 3*-21,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*9, 3*3,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-9, 3*-3,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*9, 3*3,
 1
};
const int8_t height1FallingLeft9[] = {
 (int8_t) 255, 3*13, 3*5,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-5,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*2, 3*-12,
 0, 3*11, 3*17,
 (int8_t) 255, 3*2, 3*-12,
 0, 3*6, 3*7,
 (int8_t) 255, 3*2, 3*-13,
 0, 3*-15, 3*8,
 (int8_t) 255, 3*2, 3*-13,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*13, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight9[] = {
 0, 3*14, 3*9,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*8, 3*13,
 0, 3*-19, 3*-8,
 (int8_t) 255, 3*8, 3*13,
 0, 3*0, 3*-19,
 (int8_t) 255, 3*8, 3*13,
 0, 3*3, 3*-18,
 (int8_t) 255, 3*8, 3*13,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-11, 3*5,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-5,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack9[] = {
 0, 3*17, 3*-3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-9, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*9, 3*2,
 (int8_t) 255, 3*12, 3*-5,
 0, 3*-9, 3*18,
 (int8_t) 255, 3*12, 3*-5,
 0, 3*-21, 3*3,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*-15, 3*-7,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*9, 3*3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-9, 3*-3,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*9, 3*3,
 1
};
const int8_t height1FallingFront9[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*1,
 (int8_t) 255, 3*-1, 3*6,
 0, 3*4, 3*8,
 (int8_t) 255, 3*-2, 3*6,
 0, 3*17, 3*-8,
 (int8_t) 255, 3*-2, 3*5,
 0, 3*-1, 3*-18,
 (int8_t) 255, 3*-2, 3*4,
 0, 3*-14, 3*3,
 (int8_t) 255, 3*2, 3*14,
 (int8_t) 255, 3*15, 3*-3,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*3,
 1
};
const int8_t height2FallingLeft10[] = {
 (int8_t) 255, 3*13, 3*4,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-4,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*1, 3*-26,
 0, 3*12, 3*30,
 (int8_t) 255, 3*1, 3*-26,
 0, 3*7, 3*21,
 (int8_t) 255, 3*1, 3*-27,
 0, 3*-14, 3*23,
 (int8_t) 255, 3*1, 3*-27,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*13, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingRight10[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*5, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-20, 3*18,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-17, 3*-2,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-30, 3*-10,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*5, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight10[] = {
 0, 3*15, 3*10,
 (int8_t) 255, 3*-12, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*12, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*12, 3*27,
 0, 3*-24, 3*-23,
 (int8_t) 255, 3*13, 3*27,
 0, 3*-5, 3*-33,
 (int8_t) 255, 3*13, 3*27,
 0, 3*-1, 3*-31,
 (int8_t) 255, 3*12, 3*27,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-11, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*11, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft10[] = {
 0, 3*0, 3*-13,
 (int8_t) 255, 3*0, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-1, 3*-14,
 (int8_t) 255, 3*-7, 3*6,
 (int8_t) 255, 3*25, 3*4,
 0, 3*-25, 3*9,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-19, 3*-9,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-28, 3*-18,
 (int8_t) 255, 3*26, 3*4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*2, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-2, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack10[] = {
 0, 3*18, 3*-3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-10, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*10, 3*2,
 (int8_t) 255, 3*23, 3*-12,
 0, 3*-20, 3*25,
 (int8_t) 255, 3*23, 3*-11,
 0, 3*-33, 3*9,
 (int8_t) 255, 3*22, 3*-11,
 0, 3*-25, 3*-2,
 (int8_t) 255, 3*22, 3*-12,
 0, 3*11, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-11, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*11, 3*2,
 1
};
const int8_t height2RisingFront10[] = {
 0, 3*-5, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*5, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-5, 3*6,
 (int8_t) 255, 3*27, 3*-2,
 0, 3*-24, 3*16,
 (int8_t) 255, 3*27, 3*-2,
 0, 3*-22, 3*-4,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-31, 3*-12,
 (int8_t) 255, 3*28, 3*-1,
 0, 3*-6, 3*5,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*6, 3*-6,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-6, 3*5,
 1
};
const int8_t height2FallingFront10[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*1,
 (int8_t) 255, 3*-8, 3*12,
 0, 3*11, 3*2,
 (int8_t) 255, 3*-8, 3*12,
 0, 3*23, 3*-14,
 (int8_t) 255, 3*-9, 3*12,
 0, 3*6, 3*-25,
 (int8_t) 255, 3*-9, 3*11,
 0, 3*-14, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-14, 3*2,
 1
};
const int8_t height2RisingBack10[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*10, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-10, 3*6,
 (int8_t) 255, 3*24, 3*2,
 0, 3*-21, 3*11,
 (int8_t) 255, 3*24, 3*2,
 0, 3*-14, 3*-7,
 (int8_t) 255, 3*23, 3*2,
 0, 3*-26, 3*-16,
 (int8_t) 255, 3*23, 3*2,
 0, 3*-9, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*9, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-9, 3*6,
 1
};
const int8_t depth2RollingLeft10[] = {
 (int8_t) 255, 3*13, 3*4,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-13, 3*-4,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*0, 3*-13,
 0, 3*13, 3*17,
 (int8_t) 255, 3*1, 3*-13,
 0, 3*15, 3*2,
 (int8_t) 255, 3*1, 3*-14,
 0, 3*-14, 3*10,
 (int8_t) 255, 3*0, 3*-14,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*14, 3*4,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-14, 3*-4,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t depth2RollingRight10[] = {
 0, 3*15, 3*10,
 (int8_t) 255, 3*-12, 3*4,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*12, 3*-3,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*6, 3*14,
 0, 3*-18, 3*-10,
 (int8_t) 255, 3*6, 3*14,
 0, 3*10, 3*-26,
 (int8_t) 255, 3*6, 3*14,
 0, 3*6, 3*-17,
 (int8_t) 255, 3*6, 3*13,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-12, 3*4,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*12, 3*-4,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront10[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-15, 3*1,
 (int8_t) 255, 3*-3, 3*6,
 0, 3*9, 3*22,
 (int8_t) 255, 3*-4, 3*6,
 0, 3*19, 3*-8,
 (int8_t) 255, 3*-5, 3*6,
 0, 3*-1, 3*-33,
 (int8_t) 255, 3*-5, 3*5,
 0, 3*-13, 3*2,
 (int8_t) 255, 3*5, 3*28,
 (int8_t) 255, 3*14, 3*-2,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-13, 3*2,
 1
};
const int8_t width2RollingBack10[] = {
 0, 3*18, 3*-3,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-10, 3*-2,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*10, 3*2,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*-6, 3*33,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*-22, 3*4,
 (int8_t) 255, 3*11, 3*-6,
 0, 3*-17, 3*-21,
 (int8_t) 255, 3*11, 3*-6,
 0, 3*11, 3*2,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-11, 3*-2,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*11, 3*2,
 1
};
const int8_t height1FallingLeft10[] = {
 (int8_t) 255, 3*13, 3*4,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-4,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*0, 3*-13,
 0, 3*13, 3*17,
 (int8_t) 255, 3*1, 3*-13,
 0, 3*7, 3*8,
 (int8_t) 255, 3*1, 3*-14,
 0, 3*-14, 3*10,
 (int8_t) 255, 3*0, 3*-14,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*14, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-14, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingRight10[] = {
 0, 3*15, 3*10,
 (int8_t) 255, 3*-12, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*12, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*6, 3*14,
 0, 3*-18, 3*-10,
 (int8_t) 255, 3*6, 3*14,
 0, 3*2, 3*-20,
 (int8_t) 255, 3*6, 3*14,
 0, 3*6, 3*-18,
 (int8_t) 255, 3*6, 3*14,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-12, 3*4,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*12, 3*-4,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack10[] = {
 0, 3*18, 3*-3,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-10, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*10, 3*2,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*-9, 3*19,
 (int8_t) 255, 3*12, 3*-6,
 0, 3*-22, 3*4,
 (int8_t) 255, 3*11, 3*-6,
 0, 3*-14, 3*-7,
 (int8_t) 255, 3*11, 3*-6,
 0, 3*11, 3*2,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-11, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*11, 3*2,
 1
};
const int8_t height1FallingFront10[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*15, 3*-2,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-15, 3*1,
 (int8_t) 255, 3*-3, 3*6,
 0, 3*6, 3*8,
 (int8_t) 255, 3*-3, 3*6,
 0, 3*18, 3*-8,
 (int8_t) 255, 3*-5, 3*6,
 0, 3*2, 3*-19,
 (int8_t) 255, 3*-5, 3*5,
 0, 3*-13, 3*2,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*-2,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-13, 3*2,
 1
};
const int8_t height2FallingLeft11[] = {
 (int8_t) 255, 3*13, 3*2,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-2,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*-2, 3*-27,
 0, 3*15, 3*29,
 (int8_t) 255, 3*-2, 3*-27,
 0, 3*10, 3*22,
 (int8_t) 255, 3*-2, 3*-28,
 0, 3*-11, 3*26,
 (int8_t) 255, 3*-3, 3*-28,
 0, 3*-7, 3*6,
 (int8_t) 255, 3*13, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-14, 3*-2,
 (int8_t) 255, 3*-7, 3*6,
 1
};
const int8_t height2RisingRight11[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-23, 3*14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight11[] = {
 0, 3*15, 3*12,
 (int8_t) 255, 3*-12, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*12, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*10, 3*28,
 0, 3*-22, 3*-26,
 (int8_t) 255, 3*9, 3*28,
 0, 3*-1, 3*-34,
 (int8_t) 255, 3*9, 3*28,
 0, 3*3, 3*-30,
 (int8_t) 255, 3*10, 3*28,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-13, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*13, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft11[] = {
 0, 3*-2, 3*-13,
 (int8_t) 255, 3*2, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-7, 3*6,
 (int8_t) 255, 3*25, 3*0,
 0, 3*-23, 3*13,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-5,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack11[] = {
 0, 3*20, 3*-4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-12, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*12, 3*1,
 (int8_t) 255, 3*19, 3*-12,
 0, 3*-16, 3*25,
 (int8_t) 255, 3*19, 3*-11,
 0, 3*-31, 3*10,
 (int8_t) 255, 3*19, 3*-11,
 0, 3*-22, 3*-2,
 (int8_t) 255, 3*19, 3*-12,
 0, 3*12, 3*1,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-12, 3*-1,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*12, 3*1,
 1
};
const int8_t height2RisingFront11[] = {
 0, 3*-7, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*7, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-7, 3*6,
 (int8_t) 255, 3*25, 3*0,
 0, 3*-22, 3*14,
 (int8_t) 255, 3*25, 3*0,
 0, 3*-18, 3*-6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingFront11[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*0,
 (int8_t) 255, 3*-11, 3*12,
 0, 3*14, 3*2,
 (int8_t) 255, 3*-11, 3*12,
 0, 3*25, 3*-13,
 (int8_t) 255, 3*-13, 3*12,
 0, 3*10, 3*-25,
 (int8_t) 255, 3*-13, 3*11,
 0, 3*-12, 3*1,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*-1,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-12, 3*1,
 1
};
const int8_t height2RisingBack11[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-23, 3*13,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-18, 3*-5,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-29, 3*-14,
 (int8_t) 255, 3*26, 3*0,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t depth2RollingLeft11[] = {
 (int8_t) 255, 3*13, 3*2,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-13, 3*-2,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*0, 3*-13,
 0, 3*13, 3*15,
 (int8_t) 255, 3*-1, 3*-13,
 0, 3*17, 3*2,
 (int8_t) 255, 3*-1, 3*-14,
 0, 3*-12, 3*12,
 (int8_t) 255, 3*-1, 3*-14,
 0, 3*-15, 3*12,
 (int8_t) 255, 3*12, 3*2,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-13, 3*-2,
 (int8_t) 255, 3*-15, 3*12,
 1
};
const int8_t depth2RollingRight11[] = {
 0, 3*15, 3*12,
 (int8_t) 255, 3*-12, 3*2,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*12, 3*-2,
 (int8_t) 255, 3*-16, 3*12,
 (int8_t) 255, 3*5, 3*14,
 0, 3*-17, 3*-12,
 (int8_t) 255, 3*5, 3*14,
 0, 3*11, 3*-26,
 (int8_t) 255, 3*5, 3*14,
 0, 3*7, 3*-16,
 (int8_t) 255, 3*5, 3*14,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-12, 3*2,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*12, 3*-2,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront11[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*14, 3*-1,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*-14, 3*0,
 (int8_t) 255, 3*-5, 3*6,
 0, 3*11, 3*22,
 (int8_t) 255, 3*-6, 3*6,
 0, 3*20, 3*-7,
 (int8_t) 255, 3*-6, 3*6,
 0, 3*0, 3*-33,
 (int8_t) 255, 3*-6, 3*5,
 0, 3*-13, 3*1,
 (int8_t) 255, 3*5, 3*28,
 (int8_t) 255, 3*14, 3*-1,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-13, 3*1,
 1
};
const int8_t width2RollingBack11[] = {
 0, 3*20, 3*-4,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-12, 3*-1,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*12, 3*1,
 (int8_t) 255, 3*9, 3*-6,
 0, 3*-3, 3*33,
 (int8_t) 255, 3*9, 3*-6,
 0, 3*-21, 3*5,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*-16, 3*-21,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*11, 3*1,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-11, 3*-1,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*11, 3*1,
 1
};
const int8_t height1FallingLeft11[] = {
 (int8_t) 255, 3*13, 3*2,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*-2,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*0, 3*-13,
 0, 3*13, 3*15,
 (int8_t) 255, 3*-1, 3*-13,
 0, 3*9, 3*8,
 (int8_t) 255, 3*-1, 3*-14,
 0, 3*-12, 3*12,
 (int8_t) 255, 3*-1, 3*-14,
 0, 3*-7, 3*6,
 (int8_t) 255, 3*12, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*-2,
 (int8_t) 255, 3*-7, 3*6,
 1
};
const int8_t height1FallingRight11[] = {
 0, 3*15, 3*12,
 (int8_t) 255, 3*-12, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*12, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*5, 3*14,
 0, 3*-17, 3*-12,
 (int8_t) 255, 3*5, 3*14,
 0, 3*3, 3*-20,
 (int8_t) 255, 3*5, 3*14,
 0, 3*7, 3*-16,
 (int8_t) 255, 3*5, 3*14,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-12, 3*2,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*12, 3*-2,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack11[] = {
 0, 3*20, 3*-4,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-12, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*12, 3*1,
 (int8_t) 255, 3*9, 3*-6,
 0, 3*-6, 3*19,
 (int8_t) 255, 3*9, 3*-6,
 0, 3*-21, 3*5,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*-13, 3*-7,
 (int8_t) 255, 3*10, 3*-6,
 0, 3*11, 3*1,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-11, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*11, 3*1,
 1
};
const int8_t height1FallingFront11[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*14, 3*-1,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*-14, 3*0,
 (int8_t) 255, 3*-5, 3*6,
 0, 3*8, 3*8,
 (int8_t) 255, 3*-5, 3*6,
 0, 3*19, 3*-7,
 (int8_t) 255, 3*-6, 3*6,
 0, 3*3, 3*-19,
 (int8_t) 255, 3*-6, 3*5,
 0, 3*-13, 3*1,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*-1,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-13, 3*1,
 1
};
const int8_t height2FallingLeft12[] = {
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*-5, 3*-27,
 0, 3*18, 3*27,
 (int8_t) 255, 3*-6, 3*-27,
 0, 3*14, 3*22,
 (int8_t) 255, 3*-6, 3*-28,
 0, 3*-7, 3*28,
 (int8_t) 255, 3*-6, 3*-28,
 0, 3*-7, 3*6,
 (int8_t) 255, 3*12, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-7, 3*6,
 1
};
const int8_t height2RisingRight12[] = {
 0, 3*6, 3*28,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-1, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-26, 3*10,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-19, 3*-10,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-28, 3*-18,
 (int8_t) 255, 3*27, 3*4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*1, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-1, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingRight12[] = {
 0, 3*16, 3*14,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*6, 3*28,
 0, 3*-19, 3*-28,
 (int8_t) 255, 3*6, 3*28,
 0, 3*2, 3*-34,
 (int8_t) 255, 3*6, 3*28,
 0, 3*7, 3*-28,
 (int8_t) 255, 3*6, 3*28,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2RisingLeft12[] = {
 0, 3*-4, 3*-13,
 (int8_t) 255, 3*4, 3*13,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-5, 3*-14,
 (int8_t) 255, 3*-7, 3*6,
 (int8_t) 255, 3*24, 3*-4,
 0, 3*-20, 3*17,
 (int8_t) 255, 3*25, 3*-3,
 0, 3*-17, 3*-2,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-30, 3*-10,
 (int8_t) 255, 3*25, 3*-4,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*5, 3*14,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-5, 3*-14,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height2FallingBack12[] = {
 0, 3*21, 3*-5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*16, 3*-12,
 0, 3*-13, 3*25,
 (int8_t) 255, 3*16, 3*-11,
 0, 3*-29, 3*11,
 (int8_t) 255, 3*16, 3*-11,
 0, 3*-19, 3*-2,
 (int8_t) 255, 3*16, 3*-12,
 0, 3*13, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*13, 3*0,
 1
};
const int8_t height2RisingFront12[] = {
 0, 3*-9, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*9, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-9, 3*6,
 (int8_t) 255, 3*23, 3*2,
 0, 3*-20, 3*12,
 (int8_t) 255, 3*23, 3*2,
 0, 3*-14, 3*-8,
 (int8_t) 255, 3*24, 3*2,
 0, 3*-27, 3*-16,
 (int8_t) 255, 3*24, 3*2,
 0, 3*-10, 3*6,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*10, 3*-6,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-10, 3*6,
 1
};
const int8_t height2FallingFront12[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-15, 3*12,
 0, 3*18, 3*2,
 (int8_t) 255, 3*-15, 3*12,
 0, 3*28, 3*-12,
 (int8_t) 255, 3*-16, 3*12,
 0, 3*13, 3*-26,
 (int8_t) 255, 3*-15, 3*12,
 0, 3*-13, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*0,
 (int8_t) 255, 3*-2, 3*-14,
 (int8_t) 255, 3*-13, 3*0,
 1
};
const int8_t height2RisingBack12[] = {
 0, 3*16, 3*-11,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*6, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-6, 3*6,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-25, 3*15,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-22, 3*-3,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-31, 3*-12,
 (int8_t) 255, 3*28, 3*-2,
 0, 3*-6, 3*6,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*6, 3*-5,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-6, 3*6,
 1
};
const int8_t depth2RollingLeft12[] = {
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*16, 3*-11,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-16, 3*11,
 (int8_t) 255, 3*-2, 3*-13,
 0, 3*15, 3*13,
 (int8_t) 255, 3*-3, 3*-13,
 0, 3*19, 3*2,
 (int8_t) 255, 3*-3, 3*-14,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*-3, 3*-14,
 0, 3*-15, 3*12,
 (int8_t) 255, 3*12, 3*0,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-15, 3*12,
 1
};
const int8_t depth2RollingRight12[] = {
 0, 3*16, 3*14,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-16, 3*12,
 (int8_t) 255, 3*3, 3*14,
 0, 3*-16, 3*-14,
 (int8_t) 255, 3*3, 3*14,
 0, 3*13, 3*-26,
 (int8_t) 255, 3*3, 3*14,
 0, 3*10, 3*-14,
 (int8_t) 255, 3*3, 3*14,
 0, 3*-16, 3*12,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*16, 3*-12,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-16, 3*12,
 1
};
const int8_t width2RollingFront12[] = {
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-7, 3*6,
 0, 3*13, 3*22,
 (int8_t) 255, 3*-7, 3*6,
 0, 3*20, 3*-6,
 (int8_t) 255, 3*-8, 3*6,
 0, 3*2, 3*-34,
 (int8_t) 255, 3*-8, 3*6,
 0, 3*-12, 3*0,
 (int8_t) 255, 3*6, 3*28,
 (int8_t) 255, 3*12, 3*0,
 (int8_t) 255, 3*-6, 3*-28,
 (int8_t) 255, 3*-12, 3*0,
 1
};
const int8_t width2RollingBack12[] = {
 0, 3*21, 3*-5,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*-2, 3*33,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*-21, 3*6,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*-14, 3*-21,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*13, 3*0,
 (int8_t) 255, 3*6, 3*27,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-6, 3*-27,
 (int8_t) 255, 3*13, 3*0,
 1
};
const int8_t height1FallingLeft12[] = {
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*8, 3*-5,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-8, 3*5,
 (int8_t) 255, 3*-2, 3*-13,
 0, 3*15, 3*13,
 (int8_t) 255, 3*-3, 3*-13,
 0, 3*11, 3*8,
 (int8_t) 255, 3*-3, 3*-14,
 0, 3*-10, 3*14,
 (int8_t) 255, 3*-3, 3*-14,
 0, 3*-7, 3*6,
 (int8_t) 255, 3*12, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-7, 3*6,
 1
};
const int8_t height1FallingRight12[] = {
 0, 3*16, 3*14,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-8, 3*6,
 (int8_t) 255, 3*3, 3*14,
 0, 3*-16, 3*-14,
 (int8_t) 255, 3*3, 3*14,
 0, 3*5, 3*-20,
 (int8_t) 255, 3*3, 3*14,
 0, 3*10, 3*-14,
 (int8_t) 255, 3*3, 3*14,
 0, 3*-8, 3*6,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-8, 3*6,
 1
};
const int8_t height1FallingBack12[] = {
 0, 3*21, 3*-5,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*-5, 3*19,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*-21, 3*6,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*-11, 3*-7,
 (int8_t) 255, 3*8, 3*-6,
 0, 3*13, 3*0,
 (int8_t) 255, 3*3, 3*13,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-3, 3*-13,
 (int8_t) 255, 3*13, 3*0,
 1
};
const int8_t height1FallingFront12[] = {
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*13, 3*0,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-13, 3*0,
 (int8_t) 255, 3*-7, 3*6,
 0, 3*10, 3*8,
 (int8_t) 255, 3*-7, 3*6,
 0, 3*20, 3*-6,
 (int8_t) 255, 3*-8, 3*6,
 0, 3*5, 3*-20,
 (int8_t) 255, 3*-8, 3*6,
 0, 3*-12, 3*0,
 (int8_t) 255, 3*3, 3*14,
 (int8_t) 255, 3*12, 3*0,
 (int8_t) 255, 3*-3, 3*-14,
 (int8_t) 255, 3*-12, 3*0,
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
const int8_t* height1FallingLeft[] __attribute__ ((section(".text"))) = {
 height1FallingLeft0,
 height1FallingLeft1,
 height1FallingLeft2,
 height1FallingLeft3,
 height1FallingLeft4,
 height1FallingLeft5,
 height1FallingLeft6,
 height1FallingLeft7,
 height1FallingLeft8,
 height1FallingLeft9,
 height1FallingLeft10,
 height1FallingLeft11,
};
const int8_t* height1FallingRight[] __attribute__ ((section(".text"))) = {
 height1FallingRight0,
 height1FallingRight1,
 height1FallingRight2,
 height1FallingRight3,
 height1FallingRight4,
 height1FallingRight5,
 height1FallingRight6,
 height1FallingRight7,
 height1FallingRight8,
 height1FallingRight9,
 height1FallingRight10,
 height1FallingRight11,
};
const int8_t* height1FallingBack[] __attribute__ ((section(".text"))) = {
 height1FallingBack0,
 height1FallingBack1,
 height1FallingBack2,
 height1FallingBack3,
 height1FallingBack4,
 height1FallingBack5,
 height1FallingBack6,
 height1FallingBack7,
 height1FallingBack8,
 height1FallingBack9,
 height1FallingBack10,
 height1FallingBack11,
};
const int8_t* height1FallingFront[] __attribute__ ((section(".text"))) = {
 height1FallingFront0,
 height1FallingFront1,
 height1FallingFront2,
 height1FallingFront3,
 height1FallingFront4,
 height1FallingFront5,
 height1FallingFront6,
 height1FallingFront7,
 height1FallingFront8,
 height1FallingFront9,
 height1FallingFront10,
 height1FallingFront11,
};
# 4 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\block.c" 2
# 1 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\/block.h" 1





enum BlockOrientation_t {
    Standing,
    Vertical,
    Horizontal
};

extern enum BlockOrientation_t blockOrientation;

extern int8_t blockYOfs;
extern int8_t lastBlockDirection;
extern int8_t blockAnimating;


extern uint8_t splitMode;


extern int8_t blockX;
extern int8_t blockY;


extern int8_t blockX2;
extern int8_t blockY2;

enum BlockDirection_t {
    Left, Up, Right, Down
};

void moveBlockImpl(enum BlockDirection_t move);

void startBlockFalling();

void drawBlock(int8_t yofs);

void doBlockAnimation();

void blockStartLevel();

void setSplitMode();

void testMerge();

void swapSplit();
# 5 "C:\\data\\vide\\..\\bloxorz\\Vide\\source\\block.c" 2

extern int8_t x3d(int8_t x, int8_t z);
extern int8_t y3d(int8_t x, int8_t y, int8_t z);

enum BlockOrientation_t blockOrientation;
int8_t blockX;
int8_t blockY;

int8_t blockX2;
int8_t blockY2;

uint8_t splitMode;

const int8_t** blockAnimation;
const int8_t** nextBlockAnimation;
int8_t blockAnimationStep;
int8_t blockAnimating;
int8_t nextBlockX;
int8_t nextBlockY;
int8_t lastBlockDirection;
int8_t blockYOfs;

void moveBlockImpl(enum BlockDirection_t move)
{
    blockAnimating = 1;
    lastBlockDirection = move;
    if (splitMode) {
        switch (blockOrientation) {
        case Standing:
            switch (move) {
            case Left:
                blockAnimation = height1FallingLeft;
                nextBlockAnimation = height1FallingLeft;
                nextBlockX = blockX - 1;
                nextBlockY = blockY;
                break;
            case Right:
                blockAnimation = height1FallingRight;
                nextBlockAnimation = height1FallingRight;
                nextBlockX = blockX + 1;
                nextBlockY = blockY;
                break;
            case Up:
                blockAnimation = height1FallingBack;
                nextBlockAnimation = height1FallingBack;
                nextBlockX = blockX;
                nextBlockY = blockY + 1;
                break;
            case Down:
                blockAnimation = height1FallingFront;
                nextBlockAnimation = height1FallingFront;
                nextBlockX = blockX;
                nextBlockY = blockY - 1;
                break;
            }
            break;
        default:
            break;
        }
    } else {
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
}

void Draw_VLpo(void* const x)
{
    (void) x;
    asm("                    LDD      1,X                          ;Get next coordinate pair  ");
    asm("shiftOff1:  ");
    asm("                    STA      *0xd001                  ;Send Y to A/D  ");
    asm("                    CLR      *0xd000                  ;Enable mux  ");
    asm("                    LDA      ,X                           ;Get pattern byte  ");
    asm("                    INC      *0xd000                  ;Disable mux  ");
    asm("                    STB      *0xd001                  ;Send X to A/D  ");
    asm("                    ldb      #0  ");
    asm("                    STA      *0xd00a               ;Store pattern in shift register  ");
    asm("                    STB      *0xd005               ;Clear T1H  ");

    asm("                    LEAX     3,X                          ;Advance to next point in list  ");

    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");

    asm("                    LDA      ,X                           ;Get next pattern byte  ");

    asm("                    bgt      macroEnd2  ");

    asm("                    LDD      1,X                          ;Get next coordinate pair  ");
    asm("shiftOn1:  ");
    asm("                    STA      *0xd001                  ;Send Y to A/D  ");
    asm("                    CLR      *0xd000                  ;Enable mux  ");
    asm("                    LDA      ,X                           ;Get pattern byte  ");
    asm("                    INC      *0xd000                  ;Disable mux  ");
    asm("                    STB      *0xd001                  ;Send X to A/D  ");
    asm("                    ldb      #0  ");
    asm("                    STA      *0xd00a               ;Store pattern in shift register  ");
    asm("                    STB      *0xd005               ;Clear T1H  ");
    asm("                    LEAX     3,X                          ;Advance to next point in list  ");

    asm("                    LDD      1,X                          ;Get next coordinate pair  ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    nop    ; 6 ");

    asm("                    tst      ,X  ");
    asm("                    beq      shiftOff1  ");
    asm("                    bmi      shiftOn1  ");
    asm("	    tfr a,a    ; 6 ");
    asm("                    ldb      #0  ");
    asm("                    STB      *0xd00a               ;Clear shift register (blank output)  ");
    asm("macroEnd2:  ");
}

void drawBlock(int8_t yofs)
{

    Intensity_a(0x63);
    int8_t yy = y3d(blockX, 0, blockY);

    if (yofs < -30)
    {
        positd(0, yofs);
        positd(x3d(blockX, blockY), yy);
    }
    else
    {
        positd(x3d(blockX, blockY), yy+yofs);
    }

 dp_VIA_t1_cnt_lo = 0x7f/3;

    Draw_VLpo((void*)(blockAnimation[blockAnimationStep]));


    if (splitMode) {
        Reset0Ref();
        Intensity_a(0x35);
        yy = y3d(blockX2, 0, blockY2);

        if (yofs < -50)
        {
            positd(0, yofs);
            positd(x3d(blockX2, blockY2),yy );
        }
        else
        {
            positd(x3d(blockX2, blockY2),yy+yofs );
        }


 dp_VIA_t1_cnt_lo = 0x7f/3;

    Draw_VLpo((void*)(height1FallingLeft[0]));
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

void blockStartLevel()
{
    blockAnimation = height2FallingLeft;
    blockAnimationStep = 0;
    blockAnimating = 0;
    blockOrientation = Standing;
    splitMode = 0;
}

void setSplitMode()
{
    blockAnimation = height1FallingLeft;
    blockOrientation = Standing;
    splitMode = 1;
}

void testMerge()
{
    if (blockY == blockY2) {
        if (blockX == blockX2 + 1) {
            blockAnimation = width2RollingFront;
            blockOrientation = Horizontal;
            blockX--;
            splitMode = 0;
        } else if (blockX == blockX2 - 1) {
            blockAnimation = width2RollingFront;
            blockOrientation = Horizontal;
            splitMode = 0;
        }
    } else if (blockX == blockX2) {
        if (blockY == blockY2 + 1) {
            blockAnimation = depth2RollingLeft;
            blockOrientation = Vertical;
            blockY--;
            splitMode = 0;
        } else if (blockY == blockY2 - 1) {
            blockAnimation = depth2RollingLeft;
            blockOrientation = Vertical;;
            splitMode = 0;
        }
    }
}

void swapSplit()
{
    int8_t xt = blockX;
    int8_t yt = blockY;
    blockX = blockX2;
    blockY = blockY2;
    blockX2 = xt;
    blockY2 = yt;
}
