/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "A:/ise/newPro/LED_DRIVE.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_2732702322_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    int t14;
    int t15;
    unsigned char t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t6, 8U, 8U, 0LL);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3819);
    *((int *)t1) = 8;
    t2 = (t0 + 3823);
    *((int *)t2) = 15;
    t11 = 8;
    t12 = 15;

LAB2:    if (t11 <= t12)
        goto LAB3;

LAB5:    t1 = (t0 + 2212);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(51, ng0);
    t6 = (t0 + 592U);
    t7 = *((char **)t6);
    t6 = (t0 + 3819);
    t13 = *((int *)t6);
    t14 = (15 - t13);
    t15 = (t14 - 15);
    t3 = (t15 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t14);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t8 = (t7 + t5);
    t16 = *((unsigned char *)t8);
    t9 = (t0 + 3819);
    t17 = *((int *)t9);
    t18 = (t17 - 15);
    t19 = (t18 * -1);
    t20 = (1 * t19);
    t21 = (0U + t20);
    t10 = (t0 + 2264);
    t22 = (t10 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = t16;
    xsi_driver_first_trans_delta(t10, t21, 1, 0LL);

LAB4:    t1 = (t0 + 3819);
    t11 = *((int *)t1);
    t2 = (t0 + 3823);
    t12 = *((int *)t2);
    if (t11 == t12)
        goto LAB5;

LAB6:    t13 = (t11 + 1);
    t11 = t13;
    t6 = (t0 + 3819);
    *((int *)t6) = t11;
    goto LAB2;

}

static void work_a_2732702322_3212880686_p_1(char *t0)
{
    char t11[16];
    char t23[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 844U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2220);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1316U);
    t8 = *((char **)t4);
    t4 = (t0 + 3740U);
    t9 = (t0 + 3827);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 4;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (4 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t8, t4, t9, t11);
    if (t16 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 868U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(60, ng0);
    t13 = (t0 + 2300);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2336);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t2 = (t0 + 3740U);
    t5 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t11, t4, t2, 1);
    t8 = (t0 + 1316U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t11 + 12U);
    t15 = *((unsigned int *)t10);
    t21 = (1U * t15);
    memcpy(t8, t5, t21);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t14 = (0 - 15);
    t15 = (t14 * -1);
    t21 = (1U * t15);
    t22 = (0 + t21);
    t2 = (t4 + t22);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2372);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t2 = (t0 + 3708U);
    t5 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t23, t4, t2, (unsigned char)0);
    t8 = (t23 + 12U);
    t15 = *((unsigned int *)t8);
    t15 = (t15 * 1U);
    t9 = xsi_vhdl_bitvec_srl(t9, t5, t15, 1);
    t10 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t11, t9, t23);
    t12 = (t11 + 12U);
    t21 = *((unsigned int *)t12);
    t21 = (t21 * 1U);
    t1 = (16U != t21);
    if (t1 == 1)
        goto LAB11;

LAB12:    t13 = (t0 + 2408);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 16U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    xsi_size_not_matching(16U, t21, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1316U);
    t5 = *((char **)t2);
    t2 = (t0 + 3740U);
    t8 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t11, t5, t2, 1);
    t9 = (t0 + 1316U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    t12 = (t11 + 12U);
    t15 = *((unsigned int *)t12);
    t21 = (1U * t15);
    memcpy(t9, t8, t21);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t14 = (0 - 15);
    t15 = (t14 * -1);
    t21 = (1U * t15);
    t22 = (0 + t21);
    t2 = (t4 + t22);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 2372);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t2 = (t0 + 3708U);
    t5 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t23, t4, t2, (unsigned char)0);
    t8 = (t23 + 12U);
    t15 = *((unsigned int *)t8);
    t15 = (t15 * 1U);
    t9 = xsi_vhdl_bitvec_srl(t9, t5, t15, 1);
    t10 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t11, t9, t23);
    t12 = (t11 + 12U);
    t21 = *((unsigned int *)t12);
    t21 = (t21 * 1U);
    t1 = (16U != t21);
    if (t1 == 1)
        goto LAB15;

LAB16:    t13 = (t0 + 2408);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 16U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t2 = (t0 + 3740U);
    t5 = (t0 + 3832);
    t9 = (t11 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 19;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (19 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t1 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t4, t2, t5, t11);
    if (t1 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB9;

LAB15:    xsi_size_not_matching(16U, t21, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(70, ng0);
    t10 = (t0 + 2300);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t17 = (t13 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2336);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

}


extern void work_a_2732702322_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2732702322_3212880686_p_0,(void *)work_a_2732702322_3212880686_p_1};
	xsi_register_didat("work_a_2732702322_3212880686", "isim/LED_DRIVE_isim_beh.exe.sim/work/a_2732702322_3212880686.didat");
	xsi_register_executes(pe);
}
