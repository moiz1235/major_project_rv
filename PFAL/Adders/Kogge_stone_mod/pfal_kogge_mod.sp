.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\PFAL_NAND_AND\PFAL_NAND_AND.sp"

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\XOR_XNOR\pfal_xor_xnor.sp"

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\PFAL_NOT_BUFFER\pfal_not_buf.sp"



******************PFAL GEN CKT****************************************
.subckt pfal_gen_ckt pwr_clk g p g_prev g_b p_b g_prev_b g_nxt g_nxt_b
xM1P g_nxt g_nxt_b pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P g_nxt_b g_nxt pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1N g_nxt g_nxt_b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N g_nxt_b g_nxt gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM3N pwr_clk g g_nxt gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N pwr_clk p net1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM5N net1 g_prev g_nxt gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM6N pwr_clk p_b net2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM7N pwr_clk g_prev_b net2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM8N net2 g_b g_nxt_b gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
.ends pfal_gen_ckt
**********************************************************************

******************ECRL Kogge_stone_Parallel_adder****************************************
.subckt pfal_kogge_mod phi1 phi2 phi3 phi4 sel2 a0 a1 a2 a3 a4 a5 a6 a7 b0 b1 b2 b3 b4 b5 b6 b7 cin sel2b a0_b a1_b a2_b a3_b a4_b a5_b a6_b a7_b b0_b b1_b b2_b b3_b b4_b b5_b b6_b b7_b cin_b s0 s1 s2 s3 s4 s5 s6 s7 cout s0_b s1_b s2_b s3_b s4_b s5_b s6_b s7_b cout_b
***FIRST STAGE phi1 clk*************************
xXOR1 phi1 a0 b0 a0_b b0_b p0 p0_b pfal_xor_xnor
xXOR2 phi1 a1 b1 a1_b b1_b p1 p1_b pfal_xor_xnor
xXOR3 phi1 a2 b2 a2_b b2_b p2 p2_b pfal_xor_xnor
xXOR4 phi1 a3 b3 a3_b b3_b p3 p3_b pfal_xor_xnor
xXOR5 phi1 a4 b4 a4_b b4_b p4 p4_b pfal_xor_xnor
xXOR6 phi1 a5 b5 a5_b b5_b p5 p5_b pfal_xor_xnor
xXOR7 phi1 a6 b6 a6_b b6_b p6 p6_b pfal_xor_xnor
xXOR8 phi1 a7 b7 a7_b b7_b p7 p7_b pfal_xor_xnor

xAND1 phi1 a0 b0 a0_b b0_b g0_b g0 pfal_nand_and
xAND2 phi1 a1 b1 a1_b b1_b g1_b g1 pfal_nand_and
xAND3 phi1 a2 b2 a2_b b2_b g2_b g2 pfal_nand_and
xAND4 phi1 a3 b3 a3_b b3_b g3_b g3 pfal_nand_and
xAND5 phi1 a4 b4 a4_b b4_b g4_b g4 pfal_nand_and
xAND6 phi1 a5 b5 a5_b b5_b g5_b g5 pfal_nand_and
xAND7 phi1 a6 b6 a6_b b6_b g6_b g6 pfal_nand_and
xAND8 phi1 a7 b7 a7_b b7_b g7_b g7 pfal_nand_and

xinv1 phi1 cin cin_b cin_1_b cin_1 pfal_not_buff
xinv_buf1 phi1 sel2 sel2b sel21b sel21 pfal_not_buff
************************************************

***SECOND STAGE phi2 clk***************************************
xkgc1 phi2 g0 p0 cin_1 g0_b p0_b cin_1_b c1  c1_b  pfal_gen_ckt
xkgc2 phi2 g1 p1 g0    g1_b p1_b g0_b    gx1 gx1_b pfal_gen_ckt
xkgc3 phi2 g2 p2 g1    g2_b p2_b g1_b    gx2 gx2_b pfal_gen_ckt
xkgc4 phi2 g3 p3 g2    g3_b p3_b g2_b    gx3 gx3_b pfal_gen_ckt
xkgc5 phi2 g4 p4 g3    g4_b p4_b g3_b    gx4 gx4_b pfal_gen_ckt
xkgc6 phi2 g5 p5 g4    g5_b p5_b g4_b    gx5 gx5_b pfal_gen_ckt
xkgc7 phi2 g6 p6 g5    g6_b p6_b g5_b    gx6 gx6_b pfal_gen_ckt
xkgc8 phi2 g7 p7 g6    g7_b p7_b g6_b    gx7 gx7_b pfal_gen_ckt

xAND9  phi2 p1 p0 p1_b p0_b px1_b px1 pfal_nand_and
xAND10 phi2 p2 p1 p2_b p1_b px2_b px2 pfal_nand_and
xAND11 phi2 p3 p2 p3_b p2_b px3_b px3 pfal_nand_and
xAND12 phi2 p4 p3 p4_b p3_b px4_b px4 pfal_nand_and
xAND13 phi2 p5 p4 p5_b p4_b px5_b px5 pfal_nand_and
xAND14 phi2 p6 p5 p6_b p5_b px6_b px6 pfal_nand_and
xAND15 phi2 p7 p6 p7_b p6_b px7_b px7 pfal_nand_and

xinv2  phi2 cin_1 cin_1_b cin_2_b cin_2 pfal_not_buff
xinv_buf2 phi2 sel21 sel21b sel22b sel22 pfal_not_buff

xinv3  phi2 p0    p0_b    p0_2_b  p0_2  pfal_not_buff
xinv4  phi2 p1    p1_b    p1_2_b  p1_2  pfal_not_buff
xinv5  phi2 p2    p2_b    p2_2_b  p2_2  pfal_not_buff
xinv6  phi2 p3    p3_b    p3_2_b  p3_2  pfal_not_buff
xinv7  phi2 p4    p4_b    p4_2_b  p4_2  pfal_not_buff
xinv8  phi2 p5    p5_b    p5_2_b  p5_2  pfal_not_buff
xinv9  phi2 p6    p6_b    p6_2_b  p6_2  pfal_not_buff
xinv10 phi2 p7    p7_b    p7_2_b  p7_2  pfal_not_buff
***************************************************************

***THIRD STAGE phi3 clk*********************************************
xkgc9  phi3 gx1 px1 cin_2 gx1_b px1_b cin_2_b c2  c2_b  pfal_gen_ckt
xkgc10 phi3 gx2 px2 c1    gx2_b px2_b c1_b    c3  c3_b  pfal_gen_ckt
xkgc11 phi3 gx3 px3 gx1   gx3_b px3_b gx1_b   gy3 gy3_b pfal_gen_ckt
xkgc12 phi3 gx4 px4 gx2   gx4_b px4_b gx2_b   gy4 gy4_b pfal_gen_ckt
xkgc13 phi3 gx5 px5 gx3   gx5_b px5_b gx3_b   gy5 gy5_b pfal_gen_ckt
xkgc14 phi3 gx6 px6 gx4   gx6_b px6_b gx4_b   gy6 gy6_b pfal_gen_ckt
xkgc15 phi3 gx7 px7 gx5   gx7_b px7_b gx5_b   gy7 gy7_b pfal_gen_ckt

xAND16 phi3 px3 px1 px3_b px1_b py3_b py3 pfal_nand_and
xAND17 phi3 px4 px2 px4_b px2_b py4_b py4 pfal_nand_and
xAND18 phi3 px5 px3 px5_b px3_b py5_b py5 pfal_nand_and
xAND19 phi3 px6 px4 px6_b px4_b py6_b py6 pfal_nand_and
xAND20 phi3 px7 px5 px7_b px5_b py7_b py7 pfal_nand_and

xinv11 phi3 cin_2 cin_2_b cin_3_b cin_3 pfal_not_buff
xinv12 phi3 c1    c1_b    c1_3_b  c1_3  pfal_not_buff
xinv_buf3 phi3 sel22 sel22b sel23b sel23 pfal_not_buff

xinv13 phi3 p0_2  p0_2_b  p0_3_b  p0_3  pfal_not_buff
xinv14 phi3 p1_2  p1_2_b  p1_3_b  p1_3  pfal_not_buff
xinv15 phi3 p2_2  p2_2_b  p2_3_b  p2_3  pfal_not_buff
xinv16 phi3 p3_2  p3_2_b  p3_3_b  p3_3  pfal_not_buff
xinv17 phi3 p4_2  p4_2_b  p4_3_b  p4_3  pfal_not_buff
xinv18 phi3 p5_2  p5_2_b  p5_3_b  p5_3  pfal_not_buff
xinv19 phi3 p6_2  p6_2_b  p6_3_b  p6_3  pfal_not_buff
xinv20 phi3 p7_2  p7_2_b  p7_3_b  p7_3  pfal_not_buff
********************************************************************

***FOURTH STAGE phi4 clk********************************************
xkgc16 phi4 gy3 py3 cin_3 gy3_b py3_b cin_3_b c4  c4_b  pfal_gen_ckt
xkgc17 phi4 gy4 py4 c1_3  gy4_b py4_b c1_3_b  c5  c5_b  pfal_gen_ckt
xkgc18 phi4 gy5 py5 c2    gy5_b py5_b c2_b    c6  c6_b  pfal_gen_ckt
xkgc19 phi4 gy6 py6 c3    gy6_b py6_b c3_b    c7  c7_b  pfal_gen_ckt
xkgc20 phi4 gy7 py7 gy3   gy7_b py7_b gy3_b   gz7 gz7_b pfal_gen_ckt

xAND21 phi4 py7 py3 py7_b py3_b pz7_b pz7 pfal_nand_and 

xinv21 phi4 cin_3 cin_3_b cin_4_b cin_4 pfal_not_buff
xinv22 phi4 c1_3  c1_3_b  c1_4_b  c1_4  pfal_not_buff
xinv23 phi4 c2    c2_b    c2_4_b  c2_4  pfal_not_buff
xinv24 phi4 c3    c3_b    c3_4_b  c3_4  pfal_not_buff
xinv_buf4 phi4 sel23 sel23b sel24b sel24 pfal_not_buff

xinv25 phi4 p0_3  p0_3_b  p0_4_b  p0_4  pfal_not_buff
xinv26 phi4 p1_3  p1_3_b  p1_4_b  p1_4  pfal_not_buff
xinv27 phi4 p2_3  p2_3_b  p2_4_b  p2_4  pfal_not_buff
xinv28 phi4 p3_3  p3_3_b  p3_4_b  p3_4  pfal_not_buff
xinv29 phi4 p4_3  p4_3_b  p4_4_b  p4_4  pfal_not_buff
xinv30 phi4 p5_3  p5_3_b  p5_4_b  p5_4  pfal_not_buff
xinv31 phi4 p6_3  p6_3_b  p6_4_b  p6_4  pfal_not_buff
xinv32 phi4 p7_3  p7_3_b  p7_4_b  p7_4  pfal_not_buff
********************************************************************

***FIFTH STAGE phi5 clk***********************************************
xkgc21 phi1 gz7 pz7 cin_4 gz7_b pz7_b cin_4_b cout5 cout5_b pfal_gen_ckt
xAND22 phi1 sel24b cin_4 sel24 cin_4_b cin5b cin5 pfal_nand_and
xAND23 phi1 sel24b c1_4 sel24 c1_4_b c15b c15 pfal_nand_and
xAND24 phi1 sel24b c2_4 sel24 c2_4_b c25b c25 pfal_nand_and
xAND25 phi1 sel24b c3_4 sel24 c3_4_b c35b c35 pfal_nand_and
xAND26 phi1 sel24b c4 sel24 c4_b c45b c45 pfal_nand_and
xAND27 phi1 sel24b c5 sel24 c5_b c55b c55 pfal_nand_and
xAND28 phi1 sel24b c6 sel24 c6_b c65b c65 pfal_nand_and
xAND29 phi1 sel24b c7 sel24 c7_b c75b c75 pfal_nand_and

xinv33 phi1 p0_4  p0_4_b  p0_5_b  p0_5  pfal_not_buff
xinv34 phi1 p1_4  p1_4_b  p1_5_b  p1_5  pfal_not_buff
xinv35 phi1 p2_4  p2_4_b  p2_5_b  p2_5  pfal_not_buff
xinv36 phi1 p3_4  p3_4_b  p3_5_b  p3_5  pfal_not_buff
xinv37 phi1 p4_4  p4_4_b  p4_5_b  p4_5  pfal_not_buff
xinv38 phi1 p5_4  p5_4_b  p5_5_b  p5_5  pfal_not_buff
xinv39 phi1 p6_4  p6_4_b  p6_5_b  p6_5  pfal_not_buff
xinv40 phi1 p7_4  p7_4_b  p7_5_b  p7_5  pfal_not_buff
***********************************************************************

***SIXTH STAGE phi6 clk***********************************************
xXOR9  phi2 p0_5 cin5 p0_5_b cin5b s0 s0_b pfal_xor_xnor
xXOR10 phi2 p1_5 c15  p1_5_b c15b s1 s1_b pfal_xor_xnor
xXOR11 phi2 p2_5 c25  p2_5_b c25b s2 s2_b pfal_xor_xnor
xXOR12 phi2 p3_5 c35  p3_5_b c35b s3 s3_b pfal_xor_xnor
xXOR13 phi2 p4_5 c45  p4_5_b c45b s4 s4_b pfal_xor_xnor
xXOR14 phi2 p5_5 c55  p5_5_b c55b s5 s5_b pfal_xor_xnor
xXOR15 phi2 p6_5 c65  p6_5_b c65b s6 s6_b pfal_xor_xnor
xXOR16 phi2 p7_5 c75  p7_5_b c75b s7 s7_b pfal_xor_xnor
xinv41 phi2 cout5  cout5_b  cout_b  cout  pfal_not_buff
**********************************************************************

.ends pfal_kogge_mod
