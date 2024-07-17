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
static const char *ng0 = "E:/School/Lab4/ACU.vhd";



static void work_a_3232483742_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4448);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4454);
    t15 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t15 = 0;

LAB18:    if (t15 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 4456);
    t16 = 1;
    if (2U == 2U)
        goto LAB22;

LAB23:    t16 = 0;

LAB24:    t4 = t16;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4462);
    t3 = (t0 + 2912);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t8 = (t0 + 4450);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(42, ng0);
    t13 = (t0 + 4458);
    t18 = (t0 + 2912);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 4U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB3;

LAB13:    t4 = (unsigned char)1;
    goto LAB15;

LAB16:    t5 = 0;

LAB19:    if (t5 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB17;

LAB21:    t5 = (t5 + 1);
    goto LAB19;

LAB22:    t17 = 0;

LAB25:    if (t17 < 2U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t11 = (t9 + t17);
    t12 = (t8 + t17);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB23;

LAB27:    t17 = (t17 + 1);
    goto LAB25;

}


extern void work_a_3232483742_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3232483742_3212880686_p_0};
	xsi_register_didat("work_a_3232483742_3212880686", "isim/Test_Module_isim_beh.exe.sim/work/a_3232483742_3212880686.didat");
	xsi_register_executes(pe);
}
