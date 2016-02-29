.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\Adders\RCA\RCA.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\NOR_OR\ecrl_nor_or.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\2_1MUX\ecrl_2_1_mux.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\4_1_MUX\ecrl_4_1_mux.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\ECRL_NAND_AND\ECRL_NAND.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\XOR_XNOR\ecrl_xor_xnor.sp"


***********************ECRL_ALU********************************************************************************************************************************************************************************************************************************************
.subckt ecrl_alu_rca_con phi1 phi2 phi3 phi4 s2 s1 s0 a0 a1 a2 a3 a4 a5 a6 a7 b0 b1 b2 b3 b4 b5 b6 b7 cin s2_b s1_b s0_b a0_b a1_b a2_b a3_b a4_b a5_b a6_b a7_b b0_b b1_b b2_b b3_b b4_b b5_b b6_b b7_b cin_b out0 out1 out2 out3 out4 out5 out6 out7 cout out0_b out1_b out2_b out3_b out4_b out5_b out6_b out7_b cout_b

vhi vhi gnd pat (.5 0 0 0.01n 0.01n 3n b1010101010 r=10)  

**********INITIAL INPUT SELECTION STAGE  phi1 clk**************************************
xmux1 phi1 s1 s0 vhi b0 b0_b gnd s1_b s0_b gnd b0_b b0 vhi op0 op0_b ecrl_mux4_1
xmux2 phi1 s1 s0 gnd b1 b1_b gnd s1_b s0_b vhi b1_b b1 vhi op1 op1_b ecrl_mux4_1
xmux3 phi1 s1 s0 gnd b2 b2_b gnd s1_b s0_b vhi b2_b b2 vhi op2 op2_b ecrl_mux4_1
xmux4 phi1 s1 s0 gnd b3 b3_b gnd s1_b s0_b vhi b3_b b3 vhi op3 op3_b ecrl_mux4_1
xmux5 phi1 s1 s0 gnd b4 b4_b gnd s1_b s0_b vhi b4_b b4 vhi op4 op4_b ecrl_mux4_1
xmux6 phi1 s1 s0 gnd b5 b5_b gnd s1_b s0_b vhi b5_b b5 vhi op5 op5_b ecrl_mux4_1
xmux7 phi1 s1 s0 gnd b6 b6_b gnd s1_b s0_b vhi b6_b b6 vhi op6 op6_b ecrl_mux4_1
xmux8 phi1 s1 s0 gnd b7 b7_b gnd s1_b s0_b vhi b7_b b7 vhi op7 op7_b ecrl_mux4_1
****************************************************************************************

**********A input through buffer stage with phi1 clk*************************************
xinv1 phi1 a0 a0_b opa0_b opa0 adiabatic_not_buffer
xinv2 phi1 a1 a1_b opa1_b opa1 adiabatic_not_buffer
xinv3 phi1 a2 a2_b opa2_b opa2 adiabatic_not_buffer
xinv4 phi1 a3 a3_b opa3_b opa3 adiabatic_not_buffer
xinv5 phi1 a4 a4_b opa4_b opa4 adiabatic_not_buffer
xinv6 phi1 a5 a5_b opa5_b opa5 adiabatic_not_buffer
xinv7 phi1 a6 a6_b opa6_b opa6 adiabatic_not_buffer
xinv8 phi1 a7 a7_b opa7_b opa7 adiabatic_not_buffer
******************************************************************************************

xinv9 phi1 cin cin_b cin_b1 cin1 adiabatic_not_buffer
xinv10 phi1 s2 s2_b s21b s21 adiabatic_not_buffer

****************************Parallel adder stage with phi2,phi3,phi3,phi1 clk**************************************************
xPA1 phi2 phi3 phi4 phi1 opa0 opa1 opa2 opa3 opa4 opa5 opa6 opa7 op0 op1 op2 op3 op4 op5 op6 op7 cin1 opa0_b opa1_b opa2_b opa3_b opa4_b opa5_b opa6_b opa7_b op0_b op1_b op2_b op3_b op4_b op5_b op6_b op7_b cin_b1 ar0 ar1 ar2 ar3 ar4 ar5 ar6 ar7 cout1 ar0_b ar1_b ar2_b ar3_b ar4_b ar5_b ar6_b ar7_b cout_b1 ripple_carry_adder
**********************************************************************************************************************************

********************************NAND GATE STAGE WITH phi1 clk***********************************************
xnand1 phi1 a0 b0 a0_b b0_b nand0 and0 ecrl_nand_and
xnand2 phi1 a1 b1 a1_b b1_b nand1 and1 ecrl_nand_and
xnand3 phi1 a2 b2 a2_b b2_b nand2 and2 ecrl_nand_and
xnand4 phi1 a3 b3 a3_b b3_b nand3 and3 ecrl_nand_and
xnand5 phi1 a4 b4 a4_b b4_b nand4 and4 ecrl_nand_and
xnand6 phi1 a5 b5 a5_b b5_b nand5 and5 ecrl_nand_and
xnand7 phi1 a6 b6 a6_b b6_b nand6 and6 ecrl_nand_and
xnand8 phi1 a7 b7 a7_b b7_b nand7 and7 ecrl_nand_and
*************************************************************************************************************


********************************NOR GATE STAGE WITH phi1 clk***********************************************
xnor1 phi1 a0 b0 a0_b b0_b nor0 or0 ecrl_nor_or
xnor2 phi1 a1 b1 a1_b b1_b nor1 or1 ecrl_nor_or
xnor3 phi1 a2 b2 a2_b b2_b nor2 or2 ecrl_nor_or
xnor4 phi1 a3 b3 a3_b b3_b nor3 or3 ecrl_nor_or
xnor5 phi1 a4 b4 a4_b b4_b nor4 or4 ecrl_nor_or
xnor6 phi1 a5 b5 a5_b b5_b nor5 or5 ecrl_nor_or
xnor7 phi1 a6 b6 a6_b b6_b nor6 or6 ecrl_nor_or
xnor8 phi1 a7 b7 a7_b b7_b nor7 or7 ecrl_nor_or
*************************************************************************************************************

********************************XOR XNOR STAGE WITH phi1 clk*************************************
xxor1 phi1 a0 b0 a0_b b0_b xor0 xnor0 ecrl_xor_xnor
xxor2 phi1 a1 b1 a1_b b1_b xor1 xnor1 ecrl_xor_xnor
xxor3 phi1 a2 b2 a2_b b2_b xor2 xnor2 ecrl_xor_xnor
xxor4 phi1 a3 b3 a3_b b3_b xor3 xnor3 ecrl_xor_xnor
xxor5 phi1 a4 b4 a4_b b4_b xor4 xnor4 ecrl_xor_xnor
xxor6 phi1 a5 b5 a5_b b5_b xor5 xnor5 ecrl_xor_xnor
xxor7 phi1 a6 b6 a6_b b6_b xor6 xnor6 ecrl_xor_xnor
xxor8 phi1 a7 b7 a7_b b7_b xor7 xnor7 ecrl_xor_xnor
**************************************************************************************************
*******************************s1 s0 buffer stage for logical*************************************
xinv19 phi1 s1 s1_b s11b s11 adiabatic_not_buffer
xinv20 phi1 s0 s0_b s01b s01 adiabatic_not_buffer
**************************************************************************************************
*******************************LOGICAL OUTPUT SELECTION STAGE WITH phi2 clk***********************
xmux9  phi2 s1 s0 nand0 nor0 xor0 xnor0 s1_b s0_b and0 or0 xnor0 xor0 lo0 lo0_b ecrl_mux4_1
xmux10 phi2 s1 s0 nand1 nor1 xor1 xnor1 s1_b s0_b and1 or1 xnor1 xor1 lo1 lo1_b ecrl_mux4_1
xmux11 phi2 s1 s0 nand2 nor2 xor2 xnor2 s1_b s0_b and2 or2 xnor2 xor2 lo2 lo2_b ecrl_mux4_1
xmux12 phi2 s1 s0 nand3 nor3 xor3 xnor3 s1_b s0_b and3 or3 xnor3 xor3 lo3 lo3_b ecrl_mux4_1
xmux13 phi2 s1 s0 nand4 nor4 xor4 xnor4 s1_b s0_b and4 or4 xnor4 xor4 lo4 lo4_b ecrl_mux4_1
xmux14 phi2 s1 s0 nand5 nor5 xor5 xnor5 s1_b s0_b and5 or5 xnor5 xor5 lo5 lo5_b ecrl_mux4_1
xmux15 phi2 s1 s0 nand6 nor6 xor6 xnor6 s1_b s0_b and6 or6 xnor6 xor6 lo6 lo6_b ecrl_mux4_1
xmux16 phi2 s1 s0 nand7 nor7 xor7 xnor7 s1_b s0_b and7 or7 xnor7 xor7 lo7 lo7_b ecrl_mux4_1
xinv11 phi2 s21 s21b s22b s22 adiabatic_not_buffer
***************************************************************************************************

****************************Buffer logical 1st stage***********************************************
xinv_buf1 phi3 lo0 lo0_b lo01b lo01 adiabatic_not_buffer
xinv_buf2 phi3 lo1 lo1_b lo11b lo11 adiabatic_not_buffer
xinv_buf3 phi3 lo2 lo2_b lo21b lo21 adiabatic_not_buffer
xinv_buf4 phi3 lo3 lo3_b lo31b lo31 adiabatic_not_buffer
xinv_buf5 phi3 lo4 lo4_b lo41b lo41 adiabatic_not_buffer
xinv_buf6 phi3 lo5 lo5_b lo51b lo51 adiabatic_not_buffer
xinv_buf7 phi3 lo6 lo6_b lo61b lo61 adiabatic_not_buffer
xinv_buf8 phi3 lo7 lo7_b lo71b lo71 adiabatic_not_buffer
xinv12 phi3 s22 s22b s23b s23 adiabatic_not_buffer
***********************************************************************************************

****************************Buffer logical 2st stage***********************************************
xinv_buf9 phi4 lo01 lo01b lo02b lo02 adiabatic_not_buffer
xinv_buf10 phi4 lo11 lo11b lo12b lo12 adiabatic_not_buffer
xinv_buf11 phi4 lo21 lo21b lo22b lo22 adiabatic_not_buffer
xinv_buf12 phi4 lo31 lo31b lo32b lo32 adiabatic_not_buffer
xinv_buf13 phi4 lo41 lo41b lo42b lo42 adiabatic_not_buffer
xinv_buf14 phi4 lo51 lo51b lo52b lo52 adiabatic_not_buffer
xinv_buf15 phi4 lo61 lo61b lo62b lo62 adiabatic_not_buffer
xinv_buf16 phi4 lo71 lo71b lo72b lo72 adiabatic_not_buffer
xinv13 phi4 s23 s23b s24b s24 adiabatic_not_buffer
***********************************************************************************************

****************************Buffer logical 3st stage***********************************************
xinv_buf17 phi1 lo02 lo02b lo03b lo03 adiabatic_not_buffer
xinv_buf18 phi1 lo12 lo12b lo13b lo13 adiabatic_not_buffer
xinv_buf19 phi1 lo22 lo22b lo23b lo23 adiabatic_not_buffer
xinv_buf20 phi1 lo32 lo32b lo33b lo33 adiabatic_not_buffer
xinv_buf21 phi1 lo42 lo42b lo43b lo43 adiabatic_not_buffer
xinv_buf22 phi1 lo52 lo52b lo53b lo53 adiabatic_not_buffer
xinv_buf23 phi1 lo62 lo62b lo63b lo63 adiabatic_not_buffer
xinv_buf24 phi1 lo72 lo72b lo73b lo73 adiabatic_not_buffer
xinv14 phi1 s24 s24b s25b s25 adiabatic_not_buffer
***********************************************************************************************

****************************Buffer logical 4st stage***********************************************
xinv_buf25 phi2 lo03 lo03b lo04b lo04 adiabatic_not_buffer
xinv_buf26 phi2 lo13 lo13b lo14b lo14 adiabatic_not_buffer
xinv_buf27 phi2 lo23 lo23b lo24b lo24 adiabatic_not_buffer
xinv_buf28 phi2 lo33 lo33b lo34b lo34 adiabatic_not_buffer
xinv_buf29 phi2 lo43 lo43b lo44b lo44 adiabatic_not_buffer
xinv_buf30 phi2 lo53 lo53b lo54b lo54 adiabatic_not_buffer
xinv_buf31 phi2 lo63 lo63b lo64b lo64 adiabatic_not_buffer
xinv_buf32 phi2 lo73 lo73b lo74b lo74 adiabatic_not_buffer
xinv15 phi2 s25 s25b s26b s26 adiabatic_not_buffer
***********************************************************************************************


****************************Buffer logical 5st stage***********************************************
xinv_buf33 phi3 lo04 lo04b lo05b lo05 adiabatic_not_buffer
xinv_buf34 phi3 lo14 lo14b lo15b lo15 adiabatic_not_buffer
xinv_buf35 phi3 lo24 lo24b lo25b lo25 adiabatic_not_buffer
xinv_buf36 phi3 lo34 lo34b lo35b lo35 adiabatic_not_buffer
xinv_buf37 phi3 lo44 lo44b lo45b lo45 adiabatic_not_buffer
xinv_buf38 phi3 lo54 lo54b lo55b lo55 adiabatic_not_buffer
xinv_buf39 phi3 lo64 lo64b lo65b lo65 adiabatic_not_buffer
xinv_buf40 phi3 lo74 lo74b lo75b lo75 adiabatic_not_buffer
xinv16 phi3 s26 s26b s27b s27 adiabatic_not_buffer
***********************************************************************************************

****************************Buffer logical 6st stage***********************************************
xinv_buf41 phi4 lo05 lo05b lo06b lo06 adiabatic_not_buffer
xinv_buf42 phi4 lo15 lo15b lo16b lo16 adiabatic_not_buffer
xinv_buf43 phi4 lo25 lo25b lo26b lo26 adiabatic_not_buffer
xinv_buf44 phi4 lo35 lo35b lo36b lo36 adiabatic_not_buffer
xinv_buf45 phi4 lo45 lo45b lo46b lo46 adiabatic_not_buffer
xinv_buf46 phi4 lo55 lo55b lo56b lo56 adiabatic_not_buffer
xinv_buf47 phi4 lo65 lo65b lo66b lo66 adiabatic_not_buffer
xinv_buf48 phi4 lo75 lo75b lo76b lo76 adiabatic_not_buffer
xinv17 phi4 s27 s27b s28b s28 adiabatic_not_buffer
***********************************************************************************************

****************************Buffer logical 7st stage***********************************************
xinv_buf49 phi1 lo06 lo06b lo07b lo07 adiabatic_not_buffer
xinv_buf50 phi1 lo16 lo16b lo17b lo17 adiabatic_not_buffer
xinv_buf51 phi1 lo26 lo26b lo27b lo27 adiabatic_not_buffer
xinv_buf52 phi1 lo36 lo36b lo37b lo37 adiabatic_not_buffer
xinv_buf53 phi1 lo46 lo46b lo47b lo47 adiabatic_not_buffer
xinv_buf54 phi1 lo56 lo56b lo57b lo57 adiabatic_not_buffer
xinv_buf55 phi1 lo66 lo66b lo67b lo67 adiabatic_not_buffer
xinv_buf56 phi1 lo76 lo76b lo77b lo77 adiabatic_not_buffer
xinv18 phi1 s28 s28b s29b s29 adiabatic_not_buffer
***********************************************************************************************

*************FINAL OUTPUT SELECTION STAGE WITH phi3 clk**************************************
xmux17 phi2 s29 ar0 lo07 s29b ar0_b lo07b out0 out0_b ecrl_mux2_1
xmux18 phi2 s29 ar1 lo17 s29b ar1_b lo17b out1 out1_b ecrl_mux2_1
xmux19 phi2 s29 ar2 lo27 s29b ar2_b lo27b out2 out2_b ecrl_mux2_1
xmux20 phi2 s29 ar3 lo37 s29b ar3_b lo37b out3 out3_b ecrl_mux2_1
xmux21 phi2 s29 ar4 lo47 s29b ar4_b lo47b out4 out4_b ecrl_mux2_1
xmux22 phi2 s29 ar5 lo57 s29b ar5_b lo57b out5 out5_b ecrl_mux2_1
xmux23 phi2 s29 ar6 lo67 s29b ar6_b lo67b out6 out6_b ecrl_mux2_1
xmux24 phi2 s29 ar7 lo77 s29b ar7_b lo77b out7 out7_b ecrl_mux2_1
xinv_buf57 phi2 cout1 cout_b1 cout_b cout adiabatic_not_buffer
*********************************************************************************************

.ends ecrl_alu_rca_con

***