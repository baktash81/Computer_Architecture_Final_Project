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
static const char *ng0 = "D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/TLB.vhd";



static void work_a_4071089103_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB23;

LAB25:
LAB24:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 7336);
    *((int *)t1) = 0;
    t2 = (t0 + 7340);
    *((int *)t2) = 47;
    t9 = 0;
    t10 = 47;

LAB5:    if (t9 <= t10)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(55, ng0);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t5 = (t0 + 7336);
    t11 = *((int *)t5);
    t12 = (t11 - 47);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(47, 0, -1, *((int *)t5));
    t14 = (1U * t13);
    t15 = (0 + t14);
    t7 = (t6 + t15);
    t4 = *((unsigned char *)t7);
    t16 = (t4 == (unsigned char)3);
    if (t16 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB9;

LAB11:
LAB10:
LAB7:    t1 = (t0 + 7336);
    t9 = *((int *)t1);
    t2 = (t0 + 7340);
    t10 = *((int *)t2);
    if (t9 == t10)
        goto LAB8;

LAB22:    t11 = (t9 + 1);
    t9 = t11;
    t5 = (t0 + 7336);
    *((int *)t5) = t9;
    goto LAB5;

LAB9:    xsi_set_current_line(56, ng0);
    t29 = (t0 + 1992U);
    t30 = *((char **)t29);
    t29 = (t0 + 7336);
    t31 = *((int *)t29);
    t32 = (t31 - 0);
    t33 = (t32 * 1);
    xsi_vhdl_check_range_of_index(0, 47, 1, *((int *)t29));
    t34 = (4U * t33);
    t35 = (0 + t34);
    t36 = (t30 + t35);
    t37 = (t0 + 4096);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t36, 4U);
    xsi_driver_first_trans_fast_port(t37);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4032);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    goto LAB8;

LAB12:    t8 = (t0 + 2152U);
    t17 = *((char **)t8);
    t8 = (t0 + 7336);
    t18 = *((int *)t8);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    xsi_vhdl_check_range_of_index(0, 47, 1, *((int *)t8));
    t21 = (9U * t20);
    t22 = (0 + t21);
    t23 = (t17 + t22);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t26 = 1;
    if (9U == 9U)
        goto LAB15;

LAB16:    t26 = 0;

LAB17:    t3 = t26;
    goto LAB14;

LAB15:    t27 = 0;

LAB18:    if (t27 < 9U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t24 = (t23 + t27);
    t28 = (t25 + t27);
    if (*((unsigned char *)t24) != *((unsigned char *)t28))
        goto LAB16;

LAB20:    t27 = (t27 + 1);
    goto LAB18;

LAB21:    goto LAB10;

LAB23:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t10 = (t9 - 47);
    t13 = (t10 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t1 = (t0 + 4160);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t17 = *((char **)t8);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, t15, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t10 = (t9 - 0);
    t13 = (t10 * 1);
    t14 = (9U * t13);
    t15 = (0U + t14);
    t1 = (t0 + 4224);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t17 = *((char **)t8);
    memcpy(t17, t2, 9U);
    xsi_driver_first_trans_delta(t1, t15, 9U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t9 = *((int *)t5);
    t10 = (t9 - 0);
    t13 = (t10 * 1);
    t14 = (4U * t13);
    t15 = (0U + t14);
    t1 = (t0 + 4288);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t17 = *((char **)t8);
    memcpy(t17, t2, 4U);
    xsi_driver_first_trans_delta(t1, t15, 4U, 0LL);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t11 = xsi_vhdl_mod(t10, 48);
    t1 = (t0 + 4352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB24;

}


extern void work_a_4071089103_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4071089103_3212880686_p_0};
	xsi_register_didat("work_a_4071089103_3212880686", "isim/Full_TLB_isim_beh.exe.sim/work/a_4071089103_3212880686.didat");
	xsi_register_executes(pe);
}
