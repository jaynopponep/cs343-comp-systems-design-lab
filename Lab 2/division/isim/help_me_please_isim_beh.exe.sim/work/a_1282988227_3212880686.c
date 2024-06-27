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
static const char *ng0 = "E:/School/Lab 2/division/divider_alu.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1282988227_3212880686_p_0(char *t0)
{
    char t10[16];
    char t11[16];
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    int t12;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 5340U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t7 = (t0 + 1968U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((int *)t7) = t6;
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5324U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t5 = (t0 + 2088U);
    t7 = *((char **)t5);
    t5 = (t7 + 0);
    *((int *)t5) = t6;
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t3 = (t6 >= t9);
    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3472);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t14 = *((char **)t8);
    memcpy(t14, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1968U);
    t7 = *((char **)t1);
    t12 = *((int *)t7);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, t12, 6);
    t8 = (t0 + 2088U);
    t14 = *((char **)t8);
    t15 = *((int *)t14);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, t15, 6);
    t16 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t10, t1, t11, t8, t13);
    t17 = (t0 + 3472);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 6U);
    xsi_driver_first_trans_fast_port(t17);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_1282988227_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1282988227_3212880686_p_0};
	xsi_register_didat("work_a_1282988227_3212880686", "isim/help_me_please_isim_beh.exe.sim/work/a_1282988227_3212880686.didat");
	xsi_register_executes(pe);
}
