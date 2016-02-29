.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\ECRL_NAND_AND\ECRL_NAND.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\XOR_XNOR\ecrl_xor_xnor.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\ECRL_NOT_BUFFER\ecrl_not_buff.sp"



******************ECRL GEN CKT****************************************
.subckt ecrl_gen_ckt pwr_clk g p g_prev g_b p_b g_prev_b g_nxt g_nxt_b
xM1P g_nxt_b g_nxt pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P g_nxt g_nxt_b pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1N g_nxt_b p net1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N net1 g_prev gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM3N g_nxt_b g gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N g_nxt g_b net2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM5N net2 p_b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM6N net2 g_prev_b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
.ends ecrl_gen_ckt
**********************************************************************

******************ECRL Kogge_stone_Parallel_adder****************************************
.subckt ecrl_kogge phi1 phi2 phi3 phi4 a0 a1 a2 a3 a4 a5 a6 a7 b0 b1 b2 b3 b4 b5 b6 b7 cin a0_b a1_b a2_b a3_b a4_b a5_b a6_b a7_b b0_b b1_b b2_b b3_b b4_b b5_b b6_b b7_b cin_b s0 s1 s2 s3 s4 s5 s6 s7 cout s0_b s1_b s2_b s3_b s4_b s5_b s6_b s7_b cout_b
***FIRST STAGE phi1 clk*************************
xXOR1 phi1 a0 b0 a0_b b0_b p0 p0_b ecrl_xor_xnor
xXOR2 phi1 a1 b1 a1_b b1_b p1 p1_b ecrl_xor_xnor
xXOR3 phi1 a2 b2 a2_b b2_b p2 p2_b ecrl_xor_xnor
xXOR4 phi1 a3 b3 a3_b b3_b p3 p3_b ecrl_xor_xnor
xXOR5 phi1 a4 b4 a4_b b4_b p4 p4_b ecrl_xor_xnor
xXOR6 phi1 a5 b5 a5_b b5_b p5 p5_b ecrl_xor_xnor
xXOR7 phi1 a6 b6 a6_b b6_b p6 p6_b ecrl_xor_xnor
xXOR8 phi1 a7 b7 a7_b b7_b p7 p7_b ecrl_xor_xnor

xAND1 phi1 a0 b0 a0_b b0_b g0_b g0 ecrl_nand_and
xAND2 phi1 a1 b1 a1_b b1_b g1_b g1 ecrl_nand_and
xAND3 phi1 a2 b2 a2_b b2_b g2_b g2 ecrl_nand_and
xAND4 phi1 a3 b3 a3_b b3_b g3_b g3 ecrl_nand_and
xAND5 phi1 a4 b4 a4_b b4_b g4_b g4 ecrl_nand_and
xAND6 phi1 a5 b5 a5_b b5_b g5_b g5 ecrl_nand_and
xAND7 phi1 a6 b6 a6_b b6_b g6_b g6 ecrl_nand_and
xAND8 phi1 a7 b7 a7_b b7_b g7_b g7 ecrl_nand_and

xinv1 phi1 cin cin_b cin_1_b cin_1 adiabatic_not_buffer
************************************************

***SECOND STAGE phi2 clk***************************************
xkgc1 phi2 g0 p0 cin_1 g0_b p0_b cin_1_b c1  c1_b  ecrl_gen_ckt
xkgc2 phi2 g1 p1 g0    g1_b p1_b g0_b    gx1 gx1_b ecrl_gen_ckt
xkgc3 phi2 g2 p2 g1    g2_b p2_b g1_b    gx2 gx2_b ecrl_gen_ckt
xkgc4 phi2 g3 p3 g2    g3_b p3_b g2_b    gx3 gx3_b ecrl_gen_ckt
xkgc5 phi2 g4 p4 g3    g4_b p4_b g3_b    gx4 gx4_b ecrl_gen_ckt
xkgc6 phi2 g5 p5 g4    g5_b p5_b g4_b    gx5 gx5_b ecrl_gen_ckt
xkgc7 phi2 g6 p6 g5    g6_b p6_b g5_b    gx6 gx6_b ecrl_gen_ckt
xkgc8 phi2 g7 p7 g6    g7_b p7_b g6_b    gx7 gx7_b ecrl_gen_ckt

xAND9  phi2 p1 p0 p1_b p0_b px1_b px1 ecrl_nand_and
xAND10 phi2 p2 p1 p2_b p1_b px2_b px2 ecrl_nand_and
xAND11 phi2 p3 p2 p3_b p2_b px3_b px3 ecrl_nand_and
xAND12 phi2 p4 p3 p4_b p3_b px4_b px4 ecrl_nand_and
xAND13 phi2 p5 p4 p5_b p4_b px5_b px5 ecrl_nand_and
xAND14 phi2 p6 p5 p6_b p5_b px6_b px6 ecrl_nand_and
xAND15 phi2 p7 p6 p7_b p6_b px7_b px7 ecrl_nand_and

xinv2  phi2 cin_1 cin_1_b cin_2_b cin_2 adiabatic_not_buffer

xinv3  phi2 p0    p0_b    p0_2_b  p0_2  adiabatic_not_buffer
xinv4  phi2 p1    p1_b    p1_2_b  p1_2  adiabatic_not_buffer
xinv5  phi2 p2    p2_b    p2_2_b  p2_2  adiabatic_not_buffer
xinv6  phi2 p3    p3_b    p3_2_b  p3_2  adiabatic_not_buffer
xinv7  phi2 p4    p4_b    p4_2_b  p4_2  adiabatic_not_buffer
xinv8  phi2 p5    p5_b    p5_2_b  p5_2  adiabatic_not_buffer
xinv9  phi2 p6    p6_b    p6_2_b  p6_2  adiabatic_not_buffer
xinv10 phi2 p7    p7_b    p7_2_b  p7_2  adiabatic_not_buffer
***************************************************************

***THIRD STAGE phi3 clk*********************************************
xkgc9  phi3 gx1 px1 cin_2 gx1_b px1_b cin_2_b c2  c2_b  ecrl_gen_ckt
xkgc10 phi3 gx2 px2 c1    gx2_b px2_b c1_b    c3  c3_b  ecrl_gen_ckt
xkgc11 phi3 gx3 px3 gx1   gx3_b px3_b gx1_b   gy3 gy3_b ecrl_gen_ckt
xkgc12 phi3 gx4 px4 gx2   gx4_b px4_b gx2_b   gy4 gy4_b ecrl_gen_ckt
xkgc13 phi3 gx5 px5 gx3   gx5_b px5_b gx3_b   gy5 gy5_b ecrl_gen_ckt
xkgc14 phi3 gx6 px6 gx4   gx6_b px6_b gx4_b   gy6 gy6_b ecrl_gen_ckt
xkgc15 phi3 gx7 px7 gx5   gx7_b px7_b gx5_b   gy7 gy7_b ecrl_gen_ckt

xAND16 phi3 px3 px1 px3_b px1_b py3_b py3 ecrl_nand_and
xAND17 phi3 px4 px2 px4_b px2_b py4_b py4 ecrl_nand_and
xAND18 phi3 px5 px3 px5_b px3_b py5_b py5 ecrl_nand_and
xAND19 phi3 px6 px4 px6_b px4_b py6_b py6 ecrl_nand_and
xAND20 phi3 px7 px5 px7_b px5_b py7_b py7 ecrl_nand_and

xinv11 phi3 cin_2 cin_2_b cin_3_b cin_3 adiabatic_not_buffer
xinv12 phi3 c1    c1_b    c1_3_b  c1_3  adiabatic_not_buffer

xinv13 phi3 p0_2  p0_2_b  p0_3_b  p0_3  adiabatic_not_buffer
xinv14 phi3 p1_2  p1_2_b  p1_3_b  p1_3  adiabatic_not_buffer
xinv15 phi3 p2_2  p2_2_b  p2_3_b  p2_3  adiabatic_not_buffer
xinv16 phi3 p3_2  p3_2_b  p3_3_b  p3_3  adiabatic_not_buffer
xinv17 phi3 p4_2  p4_2_b  p4_3_b  p4_3  adiabatic_not_buffer
xinv18 phi3 p5_2  p5_2_b  p5_3_b  p5_3  adiabatic_not_buffer
xinv19 phi3 p6_2  p6_2_b  p6_3_b  p6_3  adiabatic_not_buffer
xinv20 phi3 p7_2  p7_2_b  p7_3_b  p7_3  adiabatic_not_buffer
********************************************************************

***FOURTH STAGE phi4 clk********************************************
xkgc16 phi4 gy3 py3 cin_3 gy3_b py3_b cin_3_b c4  c4_b  ecrl_gen_ckt
xkgc17 phi4 gy4 py4 c1_3  gy4_b py4_b c1_3_b  c5  c5_b  ecrl_gen_ckt
xkgc18 phi4 gy5 py5 c2    gy5_b py5_b c2_b    c6  c6_b  ecrl_gen_ckt
xkgc19 phi4 gy6 py6 c3    gy6_b py6_b c3_b    c7  c7_b  ecrl_gen_ckt
xkgc20 phi4 gy7 py7 gy3   gy7_b py7_b gy3_b   gz7 gz7_b ecrl_gen_ckt

xAND21 phi4 py7 py3 py7_b py3_b pz7_b pz7 ecrl_nand_and 

xinv21 phi4 cin_3 cin_3_b cin_4_b cin_4 adiabatic_not_buffer
xinv22 phi4 c1_3  c1_3_b  c1_4_b  c1_4  adiabatic_not_buffer
xinv23 phi4 c2    c2_b    c2_4_b  c2_4  adiabatic_not_buffer
xinv24 phi4 c3    c3_b    c3_4_b  c3_4  adiabatic_not_buffer

xinv25 phi4 p0_3  p0_3_b  p0_4_b  p0_4  adiabatic_not_buffer
xinv26 phi4 p1_3  p1_3_b  p1_4_b  p1_4  adiabatic_not_buffer
xinv27 phi4 p2_3  p2_3_b  p2_4_b  p2_4  adiabatic_not_buffer
xinv28 phi4 p3_3  p3_3_b  p3_4_b  p3_4  adiabatic_not_buffer
xinv29 phi4 p4_3  p4_3_b  p4_4_b  p4_4  adiabatic_not_buffer
xinv30 phi4 p5_3  p5_3_b  p5_4_b  p5_4  adiabatic_not_buffer
xinv31 phi4 p6_3  p6_3_b  p6_4_b  p6_4  adiabatic_not_buffer
xinv32 phi4 p7_3  p7_3_b  p7_4_b  p7_4  adiabatic_not_buffer
********************************************************************

***FIFTH STAGE phi5 clk***********************************************
xkgc21 phi1 gz7 pz7 cin_4 gz7_b pz7_b cin_4_b cout cout_b ecrl_gen_ckt

xXOR9  phi1 p0_4 cin_4 p0_4_b cin_4_b s0 s0_b ecrl_xor_xnor
xXOR10 phi1 p1_4 c1_4  p1_4_b c1_4_b  s1 s1_b ecrl_xor_xnor
xXOR11 phi1 p2_4 c2_4  p2_4_b c2_4_b  s2 s2_b ecrl_xor_xnor
xXOR12 phi1 p3_4 c3_4  p3_4_b c3_4_b  s3 s3_b ecrl_xor_xnor
xXOR13 phi1 p4_4 c4    p4_4_b c4_b    s4 s4_b ecrl_xor_xnor
xXOR14 phi1 p5_4 c5    p5_4_b c5_b    s5 s5_b ecrl_xor_xnor
xXOR15 phi1 p6_4 c6    p6_4_b c6_b    s6 s6_b ecrl_xor_xnor
xXOR16 phi1 p7_4 c7    p7_4_b c7_b    s7 s7_b ecrl_xor_xnor
**********************************************************************

.ends ecrl_kogge
