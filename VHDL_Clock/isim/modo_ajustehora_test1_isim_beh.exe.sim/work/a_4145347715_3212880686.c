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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Tmicro 1/Desktop/hds/modo_ajustehora.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4145347715_3212880686_p_0(char *t0)
{
    char t16[16];
    char t24[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 8484);
    t6 = (t0 + 5408);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 8488);
    t5 = (t0 + 5472);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 8492);
    t5 = (t0 + 5536);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 8496);
    t5 = (t0 + 5600);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB25;

LAB27:
LAB26:    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2312U);
    t7 = *((char **)t2);
    t2 = (t0 + 8392U);
    t8 = (t0 + 8500);
    t10 = (t16 + 0U);
    t17 = (t10 + 0U);
    *((int *)t17) = 0;
    t17 = (t10 + 4U);
    *((int *)t17) = 3;
    t17 = (t10 + 8U);
    *((int *)t17) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t10 + 12U);
    *((unsigned int *)t17) = t19;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t7, t2, t8, t16);
    if (t20 == 1)
        goto LAB16;

LAB17:    t15 = (unsigned char)0;

LAB18:    if (t15 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8392U);
    t5 = (t0 + 8516);
    t7 = (t16 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t16);
    if (t3 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8392U);
    t5 = (t0 + 8528);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t16, t2, t1, t5, t24);
    t9 = (t16 + 12U);
    t19 = *((unsigned int *)t9);
    t35 = (1U * t19);
    t3 = (4U != t35);
    if (t3 == 1)
        goto LAB23;

LAB24:    t10 = (t0 + 5408);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(71, ng0);
    t26 = (t0 + 8508);
    t30 = (t0 + 5408);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t26, 4U);
    xsi_driver_first_trans_fast(t30);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 8512);
    t5 = (t0 + 5472);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB14;

LAB16:    t17 = (t0 + 2472U);
    t21 = *((char **)t17);
    t17 = (t0 + 8408U);
    t22 = (t0 + 8504);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 3;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (3 - 0);
    t19 = (t27 * 1);
    t19 = (t19 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t19;
    t28 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t17, t22, t24);
    t15 = t28;
    goto LAB18;

LAB19:    xsi_set_current_line(74, ng0);
    t8 = (t0 + 8520);
    t10 = (t0 + 5408);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8408U);
    t5 = (t0 + 8524);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t16, t2, t1, t5, t24);
    t9 = (t16 + 12U);
    t19 = *((unsigned int *)t9);
    t35 = (1U * t19);
    t3 = (4U != t35);
    if (t3 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 5472);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB14;

LAB21:    xsi_size_not_matching(4U, t35, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(4U, t35, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t1 = (t0 + 8424U);
    t6 = (t0 + 8532);
    t8 = (t16 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t16);
    if (t11 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8424U);
    t5 = (t0 + 8552);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t16, t2, t1, t5, t24);
    t9 = (t16 + 12U);
    t19 = *((unsigned int *)t9);
    t35 = (1U * t19);
    t3 = (4U != t35);
    if (t3 == 1)
        goto LAB36;

LAB37:    t10 = (t0 + 5536);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB29:    goto LAB26;

LAB28:    xsi_set_current_line(83, ng0);
    t9 = (t0 + 8536);
    t17 = (t0 + 5536);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t9, 4U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8440U);
    t5 = (t0 + 8540);
    t7 = (t16 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t16);
    if (t3 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8440U);
    t5 = (t0 + 8548);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t16, t2, t1, t5, t24);
    t9 = (t16 + 12U);
    t19 = *((unsigned int *)t9);
    t35 = (1U * t19);
    t3 = (4U != t35);
    if (t3 == 1)
        goto LAB34;

LAB35:    t10 = (t0 + 5600);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB32:    goto LAB29;

LAB31:    xsi_set_current_line(85, ng0);
    t8 = (t0 + 8544);
    t10 = (t0 + 5600);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB32;

LAB34:    xsi_size_not_matching(4U, t35, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(4U, t35, 0);
    goto LAB37;

}

static void work_a_4145347715_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5280);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4145347715_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5296);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4145347715_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(97, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5312);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4145347715_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(98, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5328);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4145347715_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4145347715_3212880686_p_0,(void *)work_a_4145347715_3212880686_p_1,(void *)work_a_4145347715_3212880686_p_2,(void *)work_a_4145347715_3212880686_p_3,(void *)work_a_4145347715_3212880686_p_4};
	xsi_register_didat("work_a_4145347715_3212880686", "isim/modo_ajustehora_test1_isim_beh.exe.sim/work/a_4145347715_3212880686.didat");
	xsi_register_executes(pe);
}
