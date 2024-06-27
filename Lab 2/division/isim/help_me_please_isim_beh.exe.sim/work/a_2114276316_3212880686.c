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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/School/Lab 2/division/div_register.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2114276316_3212880686_p_0(char *t0)
{
    char t21[16];
    char t22[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4720);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)3);
    if (t8 != 0)
        goto LAB18;

LAB19:
LAB3:    t1 = (t0 + 4608);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 7217);
    t5 = (t0 + 4784);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4848);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 6U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4720);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t13 = (5 - 4);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t16 = (5 - 5);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t4 = (t5 + t19);
    t3 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t22 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 4;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t25 = (0 - 4);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t6 = xsi_base_array_concat(t6, t21, t7, (char)97, t1, t22, (char)99, t3, (char)101);
    t26 = (5U + 1U);
    t8 = (6U != t26);
    if (t8 == 1)
        goto LAB14;

LAB15:    t10 = (t0 + 4784);
    t23 = (t10 + 56U);
    t24 = *((char **)t23);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t6, 6U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t13 = (5 - 4);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t22 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 4;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t16 = (0 - 4);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t17;
    t4 = xsi_base_array_concat(t4, t21, t5, (char)97, t1, t22, (char)99, (unsigned char)3, (char)101);
    t17 = (5U + 1U);
    t3 = (6U != t17);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 4848);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t23 = (t10 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t4, 6U);
    xsi_driver_first_trans_fast(t7);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t13 = (5 - 4);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t5 + t15);
    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t16 = (5 - 5);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t6 = (t7 + t19);
    t20 = *((unsigned char *)t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 4;
    t24 = (t23 + 4U);
    *((int *)t24) = 0;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (0 - 4);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t9 = xsi_base_array_concat(t9, t21, t10, (char)97, t1, t22, (char)99, t20, (char)101);
    t26 = (5U + 1U);
    t27 = (6U != t26);
    if (t27 == 1)
        goto LAB10;

LAB11:    t24 = (t0 + 4784);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t9, 6U);
    xsi_driver_first_trans_fast(t24);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t13 = (5 - 4);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t22 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 4;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t16 = (0 - 4);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t17;
    t4 = xsi_base_array_concat(t4, t21, t5, (char)97, t1, t22, (char)99, (unsigned char)2, (char)101);
    t17 = (5U + 1U);
    t3 = (6U != t17);
    if (t3 == 1)
        goto LAB12;

LAB13:    t7 = (t0 + 4848);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t23 = (t10 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t4, 6U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB10:    xsi_size_not_matching(6U, t26, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(6U, t17, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(6U, t26, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(6U, t17, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 4784);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t4, 6U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t8 = (t3 == (unsigned char)2);
    if (t8 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t13 = (5 - 5);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t22 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 5;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t16 = (1 - 5);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t17;
    t4 = xsi_base_array_concat(t4, t21, t5, (char)97, t1, t22, (char)99, (unsigned char)3, (char)101);
    t17 = (5U + 1U);
    t3 = (6U != t17);
    if (t3 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 4848);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t23 = (t10 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t4, 6U);
    xsi_driver_first_trans_fast(t7);

LAB21:    goto LAB3;

LAB20:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 4848);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t4, 6U);
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

LAB23:    xsi_size_not_matching(6U, t17, 0);
    goto LAB24;

}

static void work_a_2114276316_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4624);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2114276316_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4640);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2114276316_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2114276316_3212880686_p_0,(void *)work_a_2114276316_3212880686_p_1,(void *)work_a_2114276316_3212880686_p_2};
	xsi_register_didat("work_a_2114276316_3212880686", "isim/help_me_please_isim_beh.exe.sim/work/a_2114276316_3212880686.didat");
	xsi_register_executes(pe);
}
