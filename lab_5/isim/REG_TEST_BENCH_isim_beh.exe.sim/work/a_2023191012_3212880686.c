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
extern char *STD_STANDARD;
extern char *STD_TEXTIO;
static const char *ng2 = "fp";
extern char *IEEE_P_2592010699;
static const char *ng4 = "E:/School/Lab 5/lab_5/REG.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


char *work_a_2023191012_3212880686_sub_1650422408_3057020925(char *t1, char *t2, char *t3)
{
    char t4[448];
    char t5[24];
    char t9[8];
    char t21[32];
    char t30[1024];
    char t44[16];
    char t50[32];
    char t59[16];
    char *t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t19;
    unsigned int t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t45;
    char *t46;
    int t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t60;
    unsigned int t61;

LAB0:    t6 = (t4 + 4U);
    t7 = ((STD_STANDARD) + 384);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((int *)t9) = 31;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 4U;
    t12 = ((STD_TEXTIO) + 3440);
    t13 = (t4 + 124U);
    t14 = xsi_create_file_variable_in_buffer(0, ng2, t12, 0, 0, 1);
    *((char **)t13) = t14;
    t15 = xsi_get_transient_memory(1024U);
    memset(t15, 0, 1024U);
    t16 = t15;
    t17 = (t1 + 7377);
    t19 = (32U != 0);
    if (t19 == 1)
        goto LAB2;

LAB3:    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 31;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (31 - 0);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = (t21 + 16U);
    t26 = (t23 + 0U);
    *((int *)t26) = 31;
    t26 = (t23 + 4U);
    *((int *)t26) = 0;
    t26 = (t23 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 31);
    t25 = (t27 * -1);
    t25 = (t25 + 1);
    t26 = (t23 + 12U);
    *((unsigned int *)t26) = t25;
    t26 = (t4 + 132U);
    t28 = (t1 + 4496);
    t29 = (t26 + 88U);
    *((char **)t29) = t28;
    t31 = (t26 + 56U);
    *((char **)t31) = t30;
    memcpy(t30, t15, 1024U);
    t32 = (t26 + 64U);
    t33 = (t28 + 80U);
    t34 = *((char **)t33);
    *((char **)t32) = t34;
    t35 = (t26 + 80U);
    *((unsigned int *)t35) = 1024U;
    t36 = (t4 + 252U);
    t37 = ((STD_TEXTIO) + 3280);
    t38 = (t36 + 56U);
    *((char **)t38) = t37;
    t39 = (t36 + 40U);
    *((char **)t39) = 0;
    t40 = (t36 + 64U);
    *((int *)t40) = 1;
    t41 = (t36 + 48U);
    *((char **)t41) = 0;
    t42 = (t1 + 7409);
    t45 = (t44 + 0U);
    t46 = (t45 + 0U);
    *((int *)t46) = 31;
    t46 = (t45 + 4U);
    *((int *)t46) = 0;
    t46 = (t45 + 8U);
    *((int *)t46) = -1;
    t47 = (0 - 31);
    t25 = (t47 * -1);
    t25 = (t25 + 1);
    t46 = (t45 + 12U);
    *((unsigned int *)t46) = t25;
    t46 = (t4 + 324U);
    t48 = ((STD_STANDARD) + 1112);
    t49 = (t46 + 88U);
    *((char **)t49) = t48;
    t51 = (t46 + 56U);
    *((char **)t51) = t50;
    memcpy(t50, t42, 32U);
    t52 = (t46 + 64U);
    *((char **)t52) = t44;
    t53 = (t46 + 80U);
    *((unsigned int *)t53) = 32U;
    t54 = (t5 + 4U);
    t55 = (t2 != 0);
    if (t55 == 1)
        goto LAB5;

LAB4:    t56 = (t5 + 12U);
    *((char **)t56) = t3;
    t57 = (t4 + 124U);
    t58 = *((char **)t57);
    std_textio_file_open1(t58, t2, t3, (unsigned char)0);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t24 = *((int *)t8);
    t27 = 0;
    t47 = t24;

LAB6:    if (t27 <= t47)
        goto LAB7;

LAB9:    t7 = (t4 + 124U);
    t8 = *((char **)t7);
    std_textio_file_close(t8);
    t7 = (t26 + 56U);
    t8 = *((char **)t7);
    t19 = (1024U != 1024U);
    if (t19 == 1)
        goto LAB15;

LAB16:    t0 = xsi_get_transient_memory(1024U);
    memcpy(t0, t8, 1024U);

LAB1:    xsi_access_variable_delete(t36);
    t7 = (t4 + 124U);
    t8 = *((char **)t7);
    xsi_delete_file_variable(t8);
    return t0;
LAB2:    t20 = (1024U / 32U);
    xsi_mem_set_data(t16, t17, 32U, t20);
    goto LAB3;

LAB5:    *((char **)t54) = t2;
    goto LAB4;

LAB7:    t7 = (t4 + 124U);
    t10 = *((char **)t7);
    t19 = std_textio_endfile(t10);
    if (t19 != 0)
        goto LAB10;

LAB12:    t7 = (t4 + 124U);
    t8 = *((char **)t7);
    std_textio_readline(STD_TEXTIO, (char *)0, t8, t36);
    t7 = (t46 + 56U);
    t8 = *((char **)t7);
    std_textio_read4(STD_TEXTIO, (char *)0, t36, t8, t44);
    t7 = (t46 + 56U);
    t8 = *((char **)t7);
    t7 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t59, t8, t44);
    t10 = (t26 + 56U);
    t11 = *((char **)t10);
    t24 = (t27 - 0);
    t20 = (t24 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t27);
    t25 = (32U * t20);
    t60 = (0 + t25);
    t10 = (t11 + t60);
    t12 = (t59 + 12U);
    t61 = *((unsigned int *)t12);
    t61 = (t61 * 1U);
    memcpy(t10, t7, t61);

LAB11:
LAB8:    if (t27 == t47)
        goto LAB9;

LAB14:    t24 = (t27 + 1);
    t27 = t24;
    goto LAB6;

LAB10:    goto LAB9;

LAB13:    goto LAB11;

LAB15:    xsi_size_not_matching(1024U, 1024U, 0);
    goto LAB16;

LAB17:;
}

static void work_a_2023191012_3212880686_p_0(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(67, ng4);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng4);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t1 = (t0 + 6168U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t7);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t13 = (t0 + 3872);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 32U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(69, ng4);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 6184U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t7);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t6 = (t2 + t11);
    t12 = (t0 + 3936);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 32U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(70, ng4);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng4);
    t1 = (t0 + 7441);
    t6 = (t18 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 12;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t7 = (12 - 1);
    t9 = (t7 * 1);
    t9 = (t9 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t9;
    t12 = work_a_2023191012_3212880686_sub_1650422408_3057020925(t0, t1, t18);
    t13 = (t0 + 4000);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 1024U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(72, ng4);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 6200U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    t10 = (32U * t9);
    t11 = (0U + t10);
    t6 = (t0 + 4000);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 32U);
    xsi_driver_first_trans_delta(t6, t11, 32U, 0LL);
    goto LAB6;

}


extern void work_a_2023191012_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2023191012_3212880686_p_0};
	static char *se[] = {(void *)work_a_2023191012_3212880686_sub_1650422408_3057020925};
	xsi_register_didat("work_a_2023191012_3212880686", "isim/REG_TEST_BENCH_isim_beh.exe.sim/work/a_2023191012_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
