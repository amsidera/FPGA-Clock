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
static const char *ng0 = "C:/Users/Tmicro 1/Desktop/hds/modo_ajuste.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2710019477_3212880686_p_0(char *t0)
{
    char t13[16];
    char t24[16];
    char t32[16];
    char t44[16];
    char t46[16];
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
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    int t45;
    char *t47;
    int t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(60, ng0);
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
LAB3:    t1 = (t0 + 5424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 8834);
    t6 = (t0 + 5568);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 8838);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 8842);
    t5 = (t0 + 5696);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 8846);
    t5 = (t0 + 5760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 8850);
    t5 = (t0 + 5824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t2 = (t0 + 8788U);
    t7 = (t0 + 8852);
    t9 = (t13 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t7, t13);
    if (t16 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8788U);
    t5 = (t0 + 8886);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB28;

LAB30:
LAB29:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8788U);
    t5 = (t0 + 8936);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB52;

LAB54:
LAB53:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB82;

LAB84:
LAB83:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 9026);
    t14 = xsi_mem_cmp(t1, t2, 4U);
    if (t14 == 1)
        goto LAB98;

LAB104:    t6 = (t0 + 9030);
    t27 = xsi_mem_cmp(t6, t2, 4U);
    if (t27 == 1)
        goto LAB99;

LAB105:    t8 = (t0 + 9034);
    t35 = xsi_mem_cmp(t8, t2, 4U);
    if (t35 == 1)
        goto LAB100;

LAB106:    t10 = (t0 + 9038);
    t45 = xsi_mem_cmp(t10, t2, 4U);
    if (t45 == 1)
        goto LAB101;

LAB107:    t21 = (t0 + 9042);
    t48 = xsi_mem_cmp(t21, t2, 4U);
    if (t48 == 1)
        goto LAB102;

LAB108:
LAB103:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 9062);
    t5 = (t0 + 5824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);

LAB97:    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(75, ng0);
    t10 = (t0 + 1352U);
    t17 = *((char **)t10);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    if (t19 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(76, ng0);
    t10 = (t0 + 2312U);
    t21 = *((char **)t10);
    t10 = (t0 + 8724U);
    t22 = (t0 + 8854);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 3;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (3 - 0);
    t15 = (t27 * 1);
    t15 = (t15 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t15;
    t28 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t10, t22, t24);
    if (t28 == 1)
        goto LAB19;

LAB20:    t20 = (unsigned char)0;

LAB21:    if (t20 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = (t0 + 8870);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB22;

LAB23:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = (t0 + 8882);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB26;

LAB27:    t10 = (t0 + 5568);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(77, ng0);
    t34 = (t0 + 8862);
    t38 = (t0 + 5568);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t34, 4U);
    xsi_driver_first_trans_fast(t38);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 8866);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB17;

LAB19:    t26 = (t0 + 2472U);
    t29 = *((char **)t26);
    t26 = (t0 + 8740U);
    t30 = (t0 + 8858);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 0;
    t34 = (t33 + 4U);
    *((int *)t34) = 3;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (3 - 0);
    t15 = (t35 * 1);
    t15 = (t15 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t15;
    t36 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t29, t26, t30, t32);
    t20 = t36;
    goto LAB21;

LAB22:    xsi_set_current_line(80, ng0);
    t8 = (t0 + 8874);
    t10 = (t0 + 5568);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8740U);
    t5 = (t0 + 8878);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB24;

LAB25:    t10 = (t0 + 5632);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB17;

LAB24:    xsi_size_not_matching(4U, t43, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(4U, t43, 0);
    goto LAB27;

LAB28:    xsi_set_current_line(88, ng0);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 8724U);
    t10 = (t0 + 8888);
    t21 = (t24 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 3;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t27 = (3 - 0);
    t15 = (t27 * 1);
    t15 = (t15 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t15;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t24);
    if (t11 == 1)
        goto LAB34;

LAB35:    t4 = (unsigned char)0;

LAB36:    if (t4 != 0)
        goto LAB31;

LAB33:
LAB32:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB29;

LAB31:    xsi_set_current_line(89, ng0);
    t30 = (t0 + 8896);
    t33 = (t0 + 5568);
    t34 = (t33 + 56U);
    t37 = *((char **)t34);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t30, 4U);
    xsi_driver_first_trans_fast(t33);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 8900);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB34:    t22 = (t0 + 2472U);
    t23 = *((char **)t22);
    t22 = (t0 + 8740U);
    t25 = (t0 + 8892);
    t29 = (t32 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 3;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t35 = (3 - 0);
    t15 = (t35 * 1);
    t15 = (t15 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t15;
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t23, t22, t25, t32);
    t4 = t12;
    goto LAB36;

LAB37:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 8724U);
    t6 = (t0 + 8904);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t13);
    if (t12 == 1)
        goto LAB43;

LAB44:    t11 = (unsigned char)0;

LAB45:    if (t11 != 0)
        goto LAB40;

LAB42:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = (t0 + 8920);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB46;

LAB47:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = (t0 + 8932);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB50;

LAB51:    t10 = (t0 + 5568);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB41:    goto LAB38;

LAB40:    xsi_set_current_line(94, ng0);
    t23 = (t0 + 8912);
    t26 = (t0 + 5568);
    t29 = (t26 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t33 = *((char **)t31);
    memcpy(t33, t23, 4U);
    xsi_driver_first_trans_fast(t26);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 8916);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB41;

LAB43:    t9 = (t0 + 2472U);
    t10 = *((char **)t9);
    t9 = (t0 + 8740U);
    t17 = (t0 + 8908);
    t22 = (t24 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t27 = (3 - 0);
    t15 = (t27 * 1);
    t15 = (t15 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t9, t17, t24);
    t11 = t16;
    goto LAB45;

LAB46:    xsi_set_current_line(97, ng0);
    t8 = (t0 + 8924);
    t10 = (t0 + 5568);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8740U);
    t5 = (t0 + 8928);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB48;

LAB49:    t10 = (t0 + 5632);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB41;

LAB48:    xsi_size_not_matching(4U, t43, 0);
    goto LAB49;

LAB50:    xsi_size_not_matching(4U, t43, 0);
    goto LAB51;

LAB52:    xsi_set_current_line(105, ng0);
    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 8724U);
    t10 = (t0 + 8938);
    t21 = (t24 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 3;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t27 = (3 - 0);
    t15 = (t27 * 1);
    t15 = (t15 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t15;
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t24);
    if (t12 == 1)
        goto LAB61;

LAB62:    t11 = (unsigned char)0;

LAB63:    if (t11 == 1)
        goto LAB58;

LAB59:    t30 = (t0 + 2312U);
    t31 = *((char **)t30);
    t30 = (t0 + 8724U);
    t33 = (t0 + 8946);
    t37 = (t44 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 0;
    t38 = (t37 + 4U);
    *((int *)t38) = 3;
    t38 = (t37 + 8U);
    *((int *)t38) = 1;
    t45 = (3 - 0);
    t15 = (t45 * 1);
    t15 = (t15 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t15;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t31, t30, t33, t44);
    if (t19 == 1)
        goto LAB64;

LAB65:    t18 = (unsigned char)0;

LAB66:    t4 = t18;

LAB60:    if (t4 != 0)
        goto LAB55;

LAB57:
LAB56:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB67;

LAB69:
LAB68:    goto LAB53;

LAB55:    xsi_set_current_line(106, ng0);
    t47 = (t0 + 8954);
    t50 = (t0 + 5568);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t47, 4U);
    xsi_driver_first_trans_fast(t50);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8958);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB56;

LAB58:    t4 = (unsigned char)1;
    goto LAB60;

LAB61:    t22 = (t0 + 2472U);
    t23 = *((char **)t22);
    t22 = (t0 + 8740U);
    t25 = (t0 + 8942);
    t29 = (t32 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 3;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t35 = (3 - 0);
    t15 = (t35 * 1);
    t15 = (t15 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t23, t22, t25, t32);
    t11 = t16;
    goto LAB63;

LAB64:    t38 = (t0 + 2472U);
    t39 = *((char **)t38);
    t38 = (t0 + 8740U);
    t40 = (t0 + 8950);
    t42 = (t46 + 0U);
    t47 = (t42 + 0U);
    *((int *)t47) = 0;
    t47 = (t42 + 4U);
    *((int *)t47) = 3;
    t47 = (t42 + 8U);
    *((int *)t47) = 1;
    t48 = (3 - 0);
    t15 = (t48 * 1);
    t15 = (t15 + 1);
    t47 = (t42 + 12U);
    *((unsigned int *)t47) = t15;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t39, t38, t40, t46);
    t18 = t20;
    goto LAB66;

LAB67:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 8724U);
    t6 = (t0 + 8962);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t13);
    if (t12 == 1)
        goto LAB73;

LAB74:    t11 = (unsigned char)0;

LAB75:    if (t11 != 0)
        goto LAB70;

LAB72:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = (t0 + 8978);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB76;

LAB77:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8724U);
    t5 = (t0 + 8990);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB80;

LAB81:    t10 = (t0 + 5568);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB71:    goto LAB68;

LAB70:    xsi_set_current_line(111, ng0);
    t23 = (t0 + 8970);
    t26 = (t0 + 5568);
    t29 = (t26 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t33 = *((char **)t31);
    memcpy(t33, t23, 4U);
    xsi_driver_first_trans_fast(t26);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 8974);
    t5 = (t0 + 5632);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB71;

LAB73:    t9 = (t0 + 2472U);
    t10 = *((char **)t9);
    t9 = (t0 + 8740U);
    t17 = (t0 + 8966);
    t22 = (t24 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t27 = (3 - 0);
    t15 = (t27 * 1);
    t15 = (t15 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t9, t17, t24);
    t11 = t16;
    goto LAB75;

LAB76:    xsi_set_current_line(114, ng0);
    t8 = (t0 + 8982);
    t10 = (t0 + 5568);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8740U);
    t5 = (t0 + 8986);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB78;

LAB79:    t10 = (t0 + 5632);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB71;

LAB78:    xsi_size_not_matching(4U, t43, 0);
    goto LAB79;

LAB80:    xsi_size_not_matching(4U, t43, 0);
    goto LAB81;

LAB82:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t1 = (t0 + 8756U);
    t6 = (t0 + 8994);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t13);
    if (t12 == 1)
        goto LAB88;

LAB89:    t11 = (unsigned char)0;

LAB90:    if (t11 != 0)
        goto LAB85;

LAB87:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8756U);
    t5 = (t0 + 9010);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB91;

LAB92:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8756U);
    t5 = (t0 + 9022);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB95;

LAB96:    t10 = (t0 + 5696);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);

LAB86:    goto LAB83;

LAB85:    xsi_set_current_line(128, ng0);
    t23 = (t0 + 9002);
    t26 = (t0 + 5696);
    t29 = (t26 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t33 = *((char **)t31);
    memcpy(t33, t23, 4U);
    xsi_driver_first_trans_fast(t26);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 9006);
    t5 = (t0 + 5760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB86;

LAB88:    t9 = (t0 + 2792U);
    t10 = *((char **)t9);
    t9 = (t0 + 8772U);
    t17 = (t0 + 8998);
    t22 = (t24 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t27 = (3 - 0);
    t15 = (t27 * 1);
    t15 = (t15 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t15;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t9, t17, t24);
    t11 = t16;
    goto LAB90;

LAB91:    xsi_set_current_line(131, ng0);
    t8 = (t0 + 9014);
    t10 = (t0 + 5696);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8772U);
    t5 = (t0 + 9018);
    t7 = (t24 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t13, t2, t1, t5, t24);
    t9 = (t13 + 12U);
    t15 = *((unsigned int *)t9);
    t43 = (1U * t15);
    t3 = (4U != t43);
    if (t3 == 1)
        goto LAB93;

LAB94:    t10 = (t0 + 5760);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB86;

LAB93:    xsi_size_not_matching(4U, t43, 0);
    goto LAB94;

LAB95:    xsi_size_not_matching(4U, t43, 0);
    goto LAB96;

LAB98:    xsi_set_current_line(139, ng0);
    t23 = (t0 + 9046);
    t26 = (t0 + 5824);
    t29 = (t26 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t33 = *((char **)t31);
    memcpy(t33, t23, 2U);
    xsi_driver_first_trans_fast(t26);
    goto LAB97;

LAB99:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 9048);
    t5 = (t0 + 5824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB97;

LAB100:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 9050);
    t5 = (t0 + 5824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB97;

LAB101:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 9052);
    t5 = (t0 + 5824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB97;

LAB102:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8772U);
    t5 = (t0 + 9054);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB110;

LAB112:    xsi_set_current_line(149, ng0);
    t1 = (t0 + 9060);
    t5 = (t0 + 5824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);

LAB111:    goto LAB97;

LAB109:;
LAB110:    xsi_set_current_line(148, ng0);
    t8 = (t0 + 9058);
    t10 = (t0 + 5824);
    t17 = (t10 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB111;

}

static void work_a_2710019477_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(157, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5888);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5440);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2710019477_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(158, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5952);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5456);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2710019477_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(159, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5472);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2710019477_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(160, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 6080);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5488);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2710019477_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2710019477_3212880686_p_0,(void *)work_a_2710019477_3212880686_p_1,(void *)work_a_2710019477_3212880686_p_2,(void *)work_a_2710019477_3212880686_p_3,(void *)work_a_2710019477_3212880686_p_4};
	xsi_register_didat("work_a_2710019477_3212880686", "isim/modo_ajustefecha_test1_isim_beh.exe.sim/work/a_2710019477_3212880686.didat");
	xsi_register_executes(pe);
}
