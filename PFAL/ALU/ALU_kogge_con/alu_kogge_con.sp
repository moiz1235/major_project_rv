.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\Adders\Kogge_stone\pfal_kogge.sp"

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\NOR_OR\pfal_nor_or.sp"

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\2_1_MUX\pfal_2_1_mux.sp"

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\4_1_MUX\pfal_4_1_mux.sp"

***********************ECRL_ALU********************************************************************************************************************************************************************************************************************************************
.subckt pfal_alu_kogge_con phi1 phi2 phi3 phi4 s2 s1 s0 a0 a1 a2 a3 a4 a5 a6 a7 b0 b1 b2 b3 b4 b5 b6 b7 cin s2_b s1_b s0_b a0_b a1_b a2_b a3_b a4_b a5_b a6_b a7_b b0_b b1_b b2_b b3_b b4_b b5_b b6_b b7_b cin_b out0 out1 out2 out3 out4 out5 out6 out7 cout out0_b out1_b out2_b out3_b out4_b out5_b out6_b out7_b cout_b

vhi vhi gnd pat (.5 0 0 0.01n 0.01n 3n b1010101010 r=10)  

**********INITIAL INPUT SELECTION STAGE  phi1 clk**************************************
xmux1 phi1 s1 s0 vhi b0 b0_b gnd s1_b s0_b gnd b0_b b0 vhi op0 op0_b pfal_mux4_1
xmux2 phi1 s1 s0 gnd b1 b1_b gnd s1_b s0_b vhi b1_b b1 vhi op1 op1_b pfal_mux4_1
xmux3 phi1 s1 s0 gnd b2 b2_b gnd s1_b s0_b vhi b2_b b2 vhi op2 op2_b pfal_mux4_1
xmux4 phi1 s1 s0 gnd b3 b3_b gnd s1_b s0_b vhi b3_b b3 vhi op3 op3_b pfal_mux4_1
xmux5 phi1 s1 s0 gnd b4 b4_b gnd s1_b s0_b vhi b4_b b4 vhi op4 op4_b pfal_mux4_1
xmux6 phi1 s1 s0 gnd b5 b5_b gnd s1_b s0_b vhi b5_b b5 vhi op5 op5_b pfal_mux4_1
xmux7 phi1 s1 s0 gnd b6 b6_b gnd s1_b s0_b vhi b6_b b6 vhi op6 op6_b pfal_mux4_1
xmux8 phi1 s1 s0 gnd b7 b7_b gnd s1_b s0_b vhi b7_b b7 vhi op7 op7_b pfal_mux4_1
****************************************************************************************

**********A input through buffer stage with phi1 clk*************************************
xinv1 phi1 a0 a0_b opa0_b opa0 pfal_not_buff
xinv2 phi1 a1 a1_b opa1_b opa1 pfal_not_buff
xinv3 phi1 a2 a2_b opa2_b opa2 pfal_not_buff
xinv4 phi1 a3 a3_b opa3_b opa3 pfal_not_buff
xinv5 phi1 a4 a4_b opa4_b opa4 pfal_not_buff
xinv6 phi1 a5 a5_b opa5_b opa5 pfal_not_buff
xinv7 phi1 a6 a6_b opa6_b opa6 pfal_not_buff
xinv8 phi1 a7 a7_b opa7_b opa7 pfal_not_buff
******************************************************************************************

xinv9 phi1 cin cin_b cin_b1 cin1 pfal_not_buff
xinv10 phi1 s2 s2_b s21b s21 pfal_not_buff

****************************Parallel adder stage with phi2,phi3,phi3,phi1 clk**************************************************
xPA1 phi2 phi3 phi4 phi1 opa0 opa1 opa2 opa3 opa4 opa5 opa6 opa7 op0 op1 op2 op3 op4 op5 op6 op7 cin1 opa0_b opa1_b opa2_b opa3_b opa4_b opa5_b opa6_b opa7_b op0_b op1_b op2_b op3_b op4_b op5_b op6_b op7_b cin_b1 ar0 ar1 ar2 ar3 ar4 ar5 ar6 ar7 cout1 ar0_b ar1_b ar2_b ar3_b ar4_b ar5_b ar6_b ar7_b cout_b1 pfal_kogge
**********************************************************************************************************************************

********************************NAND GATE STAGE WITH phi1 clk***********************************************
xnand1 phi1 a0 b0 a0_b b0_b nand0 and0 pfal_nand_and
xnand2 phi1 a1 b1 a1_b b1_b nand1 and1 pfal_nand_and
xnand3 phi1 a2 b2 a2_b b2_b nand2 and2 pfal_nand_and
xnand4 phi1 a3 b3 a3_b b3_b nand3 and3 pfal_nand_and
xnand5 phi1 a4 b4 a4_b b4_b nand4 and4 pfal_nand_and
xnand6 phi1 a5 b5 a5_b b5_b nand5 and5 pfal_nand_and
xnand7 phi1 a6 b6 a6_b b6_b nand6 and6 pfal_nand_and
xnand8 phi1 a7 b7 a7_b b7_b nand7 and7 pfal_nand_and
*************************************************************************************************************


********************************NOR GATE STAGE WITH phi1 clk***********************************************
xnor1 phi1 a0 b0 a0_b b0_b nor0 or0 pfal_nor_or
xnor2 phi1 a1 b1 a1_b b1_b nor1 or1 pfal_nor_or
xnor3 phi1 a2 b2 a2_b b2_b nor2 or2 pfal_nor_or
xnor4 phi1 a3 b3 a3_b b3_b nor3 or3 pfal_nor_or
xnor5 phi1 a4 b4 a4_b b4_b nor4 or4 pfal_nor_or
xnor6 phi1 a5 b5 a5_b b5_b nor5 or5 pfal_nor_or
xnor7 phi1 a6 b6 a6_b b6_b nor6 or6 pfal_nor_or
xnor8 phi1 a7 b7 a7_b b7_b nor7 or7 pfal_nor_or
*************************************************************************************************************

********************************XOR XNOR STAGE WITH phi1 clk*************************************
xxor1 phi1 a0 b0 a0_b b0_b xor0 xnor0 pfal_xor_xnor
xxor2 phi1 a1 b1 a1_b b1_b xor1 xnor1 pfal_xor_xnor
xxor3 phi1 a2 b2 a2_b b2_b xor2 xnor2 pfal_xor_xnor
xxor4 phi1 a3 b3 a3_b b3_b xor3 xnor3 pfal_xor_xnor
xxor5 phi1 a4 b4 a4_b b4_b xor4 xnor4 pfal_xor_xnor
xxor6 phi1 a5 b5 a5_b b5_b xor5 xnor5 pfal_xor_xnor
xxor7 phi1 a6 b6 a6_b b6_b xor6 xnor6 pfal_xor_xnor
xxor8 phi1 a7 b7 a7_b b7_b xor7 xnor7 pfal_xor_xnor
**************************************************************************************************

*******************************s1 s0 buffer stage for logical*************************************
xinv16 phi1 s1 s1_b s11b s11 pfal_not_buff
xinv17 phi1 s0 s0_b s01b s01 pfal_not_buff
**************************************************************************************************

*******************************LOGICAL OUTPUT SELECTION STAGE WITH phi2 clk***********************
xmux9  phi2 s11 s01 nand0 nor0 xor0 xnor0 s11b s01b and0 or0 xnor0 xor0 lo0 lo0_b pfal_mux4_1
xmux10 phi2 s11 s01 nand1 nor1 xor1 xnor1 s11b s01b and1 or1 xnor1 xor1 lo1 lo1_b pfal_mux4_1
xmux11 phi2 s11 s01 nand2 nor2 xor2 xnor2 s11b s01b and2 or2 xnor2 xor2 lo2 lo2_b pfal_mux4_1
xmux12 phi2 s11 s01 nand3 nor3 xor3 xnor3 s11b s01b and3 or3 xnor3 xor3 lo3 lo3_b pfal_mux4_1
xmux13 phi2 s11 s01 nand4 nor4 xor4 xnor4 s11b s01b and4 or4 xnor4 xor4 lo4 lo4_b pfal_mux4_1
xmux14 phi2 s11 s01 nand5 nor5 xor5 xnor5 s11b s01b and5 or5 xnor5 xor5 lo5 lo5_b pfal_mux4_1
xmux15 phi2 s11 s01 nand6 nor6 xor6 xnor6 s11b s01b and6 or6 xnor6 xor6 lo6 lo6_b pfal_mux4_1
xmux16 phi2 s11 s01 nand7 nor7 xor7 xnor7 s11b s01b and7 or7 xnor7 xor7 lo7 lo7_b pfal_mux4_1
xinv11 phi2 s21 s21b s22b s22 pfal_not_buff
***************************************************************************************************

****************************Buffer logical 1st stage***********************************************
xinv_buf1 phi3 lo0 lo0_b lo01b lo01 pfal_not_buff
xinv_buf2 phi3 lo1 lo1_b lo11b lo11 pfal_not_buff
xinv_buf3 phi3 lo2 lo2_b lo21b lo21 pfal_not_buff
xinv_buf4 phi3 lo3 lo3_b lo31b lo31 pfal_not_buff
xinv_buf5 phi3 lo4 lo4_b lo41b lo41 pfal_not_buff
xinv_buf6 phi3 lo5 lo5_b lo51b lo51 pfal_not_buff
xinv_buf7 phi3 lo6 lo6_b lo61b lo61 pfal_not_buff
xinv_buf8 phi3 lo7 lo7_b lo71b lo71 pfal_not_buff
xinv12 phi3 s22 s22b s23b s23 pfal_not_buff
***********************************************************************************************

****************************Buffer logical 2st stage***********************************************
xinv_buf9 phi4 lo01 lo01b lo02b lo02 pfal_not_buff
xinv_buf10 phi4 lo11 lo11b lo12b lo12 pfal_not_buff
xinv_buf11 phi4 lo21 lo21b lo22b lo22 pfal_not_buff
xinv_buf12 phi4 lo31 lo31b lo32b lo32 pfal_not_buff
xinv_buf13 phi4 lo41 lo41b lo42b lo42 pfal_not_buff
xinv_buf14 phi4 lo51 lo51b lo52b lo52 pfal_not_buff
xinv_buf15 phi4 lo61 lo61b lo62b lo62 pfal_not_buff
xinv_buf16 phi4 lo71 lo71b lo72b lo72 pfal_not_buff
xinv13 phi4 s23 s23b s24b s24 pfal_not_buff
***********************************************************************************************

****************************Buffer logical 3st stage***********************************************
xinv_buf17 phi1 lo02 lo02b lo03b lo03 pfal_not_buff
xinv_buf18 phi1 lo12 lo12b lo13b lo13 pfal_not_buff
xinv_buf19 phi1 lo22 lo22b lo23b lo23 pfal_not_buff
xinv_buf20 phi1 lo32 lo32b lo33b lo33 pfal_not_buff
xinv_buf21 phi1 lo42 lo42b lo43b lo43 pfal_not_buff
xinv_buf22 phi1 lo52 lo52b lo53b lo53 pfal_not_buff
xinv_buf23 phi1 lo62 lo62b lo63b lo63 pfal_not_buff
xinv_buf24 phi1 lo72 lo72b lo73b lo73 pfal_not_buff
xinv14 phi1 s24 s24b s25b s25 pfal_not_buff
***********************************************************************************************

****************************Buffer logical 4st stage***********************************************
xinv_buf25 phi2 lo03 lo03b lo04b lo04 pfal_not_buff
xinv_buf26 phi2 lo13 lo13b lo14b lo14 pfal_not_buff
xinv_buf27 phi2 lo23 lo23b lo24b lo24 pfal_not_buff
xinv_buf28 phi2 lo33 lo33b lo34b lo34 pfal_not_buff
xinv_buf29 phi2 lo43 lo43b lo44b lo44 pfal_not_buff
xinv_buf30 phi2 lo53 lo53b lo54b lo54 pfal_not_buff
xinv_buf31 phi2 lo63 lo63b lo64b lo64 pfal_not_buff
xinv_buf32 phi2 lo73 lo73b lo74b lo74 pfal_not_buff
xinv15 phi2 s25 s25b s26b s26 pfal_not_buff
***********************************************************************************************

*************FINAL OUTPUT SELECTION STAGE WITH phi3 clk**************************************
xmux17 phi3 s26 ar0 lo04 s26b ar0_b lo04b out0 out0_b pfal_mux2_1
xmux18 phi3 s26 ar1 lo14 s26b ar1_b lo14b out1 out1_b pfal_mux2_1
xmux19 phi3 s26 ar2 lo24 s26b ar2_b lo24b out2 out2_b pfal_mux2_1
xmux20 phi3 s26 ar3 lo34 s26b ar3_b lo34b out3 out3_b pfal_mux2_1
xmux21 phi3 s26 ar4 lo44 s26b ar4_b lo44b out4 out4_b pfal_mux2_1
xmux22 phi3 s26 ar5 lo54 s26b ar5_b lo54b out5 out5_b pfal_mux2_1
xmux23 phi3 s26 ar6 lo64 s26b ar6_b lo64b out6 out6_b pfal_mux2_1
xmux24 phi3 s26 ar7 lo74 s26b ar7_b lo74b out7 out7_b pfal_mux2_1
xinv_buf33 phi3 cout1 cout_b1 cout_b cout pfal_not_buff
*********************************************************************************************

.ends pfal_alu_kogge_con

***