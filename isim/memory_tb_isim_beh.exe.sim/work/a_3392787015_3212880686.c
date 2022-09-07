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
static const char *ng0 = "D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/Memory.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3392787015_3212880686_p_0(char *t0)
{
    char t16[16];
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
    int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 4112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 2152U);
    t6 = *((char **)t1);
    t7 = *((int *)t6);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    t10 = (1024U * t9);
    t11 = (0U + t10);
    t1 = (t0 + 4192);
    t12 = (t1 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 1024U);
    xsi_driver_first_trans_delta(t1, t11, 1024U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t16, t7, 4);
    t5 = (t0 + 4256);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t8 = (t7 + 1);
    t17 = xsi_vhdl_mod(t8, 13);
    t1 = (t0 + 4320);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t17;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t9 = (10 - 6);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t5 + t11);
    t6 = (t0 + 2688U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    memcpy(t6, t1, 7U);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t9 = (10 - 10);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 2448U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 4U);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t1 = (t0 + 6832U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 12, 1, t7);
    t10 = (1024U * t9);
    t11 = (0 + t10);
    t6 = (t2 + t11);
    t12 = (t0 + 2568U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    memcpy(t12, t6, 1024U);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t9 = (6 - 6);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t16 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 6;
    t6 = (t5 + 4U);
    *((int *)t6) = 3;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t7 = (3 - 6);
    t18 = (t7 * -1);
    t18 = (t18 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t18;
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t1, t16);
    t6 = (t0 + 2808U);
    t12 = *((char **)t6);
    t6 = (t12 + 0);
    *((int *)t6) = t8;
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t0 + 2808U);
    t5 = *((char **)t1);
    t7 = *((int *)t5);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t7);
    t10 = (64U * t9);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t6 = (t0 + 4384);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 64U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB6;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/memory_tb_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
