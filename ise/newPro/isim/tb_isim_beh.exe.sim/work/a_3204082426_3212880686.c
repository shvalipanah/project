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



static void work_a_3204082426_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(51, ng0);
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
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (15 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2264);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_delta(t6, 0U, 8U, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2300);
    t2 = (t1 + 32U);
    t6 = *((char **)t2);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 2212);
    *((int *)t1) = 1;

LAB1:    return;
}

static void work_a_3204082426_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(64, ng0);
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
LAB2:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1144U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 868U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 2336);
    t11 = (t4 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 960U);
    t4 = *((char **)t2);
    t2 = (t0 + 1316U);
    t5 = *((char **)t2);
    t15 = *((int *)t5);
    t16 = (t15 - 15);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t15);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t4 + t19);
    t1 = *((unsigned char *)t2);
    t8 = (t0 + 2372);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t1;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t16 = (t15 + 1);
    t2 = (t0 + 1316U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t16;
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1316U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t1 = (t15 == 16);
    if (t1 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1316U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2336);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t8 = (t5 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB12;

}


extern void work_a_3204082426_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3204082426_3212880686_p_0,(void *)work_a_3204082426_3212880686_p_1};
	xsi_register_didat("work_a_3204082426_3212880686", "isim/tb_isim_beh.exe.sim/work/a_3204082426_3212880686.didat");
	xsi_register_executes(pe);
}
