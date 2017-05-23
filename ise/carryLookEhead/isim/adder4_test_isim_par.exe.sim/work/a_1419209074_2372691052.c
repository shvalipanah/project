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
static const char *ng0 = "A:/ise/carryLookEhead/adder4_test.vhd";



static void work_a_1419209074_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 1620U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1520);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3322);
    t5 = (t0 + 1852);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, 0LL);
    t3 = (100 * 1000LL);
    t10 = (t0 + 3326);
    t12 = (t0 + 1852);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 4U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 4U, t3);
    t17 = (200 * 1000LL);
    t18 = (t0 + 3330);
    t20 = (t0 + 1852);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 4U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 4U, t17);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3334);
    t5 = (t0 + 1888);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, 0LL);
    t3 = (100 * 1000LL);
    t10 = (t0 + 3338);
    t12 = (t0 + 1888);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 4U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 4U, t3);
    t17 = (200 * 1000LL);
    t18 = (t0 + 3342);
    t20 = (t0 + 1888);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 4U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 4U, t17);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1924);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t3 = (100 * 1000LL);
    t8 = (t0 + 1924);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t3);
    t17 = (200 * 1000LL);
    t13 = (t0 + 1924);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t18 = *((char **)t16);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t13, 0U, 1, t17);
    xsi_set_current_line(97, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1419209074_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1419209074_2372691052_p_0};
	xsi_register_didat("work_a_1419209074_2372691052", "isim/adder4_test_isim_par.exe.sim/work/a_1419209074_2372691052.didat");
	xsi_register_executes(pe);
}
