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
static const char *ng0 = "D:/CE_IUST/Term_4/Computer_Architecture/Final_Project/Processor.vhd";



static void work_a_1667949733_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 3232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(255, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 != 0)
        goto LAB4;

LAB6:
LAB5:    xsi_set_current_line(258, ng0);

LAB9:    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB4:    xsi_set_current_line(256, ng0);
    t2 = (t0 + 2248U);
    t6 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t8 = *((int *)t7);
    t9 = (t8 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 199, 1, t8);
    t11 = (16U * t10);
    t12 = (0 + t11);
    t2 = (t6 + t12);
    t13 = (t0 + 3616);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 16U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB5;

LAB7:    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}


extern void work_a_1667949733_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1667949733_3212880686_p_0};
	xsi_register_didat("work_a_1667949733_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_1667949733_3212880686.didat");
	xsi_register_executes(pe);
}
