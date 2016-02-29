.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\PFAL\Adders\Kogge_stone_mod\pfal_kogge_mod.sp"

*****************Control Unit****************
.subckt control_unit clk a ab b bb s0 s0b s1 s1b s2 s2b x xb y yb

xM1P y yb clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P yb y clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1bN yb y gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb2N y yb gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

*************Y N Tree*********
xM1N clk s0b vns1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N clk bb vns1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM3N vns1 s1b yb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N vns1 b yb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

*************Y NB tree********
xM5N clk s0 vns5 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM6N clk s1 vns6 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM7N vns5 b y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM8N vns6 bb y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM3P x xb clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4P xb x clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb3N x xb gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb4N xb x gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
*************X N Tree*********
xM9N clk ab vns9 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM10N clk b vns9 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM11N vns9 s2 vns11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM12N vns9 ab vns11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM13N vns11 ab vns13 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM14N vns11 s0b vns13 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM15N vns13 s2b xb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM16N vns13 a xb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM17N vns13 s0 xb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM18N vns13 s1 xb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

*************X NB tree********
xM19N clk a vns19 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM20N clk s2b vns20 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM21N clk a vns21 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM22N clk s2 vns22 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM23N vns19 bb y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM24N vns20 a y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM25N vns21 s0 y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM26N vns22 ab vns26 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM27N vns26 s0b vns27 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM28N vns27 s1b y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

.ends control_unit


***********************ECRL_ALU********************************************************************************************************************************************************************************************************************************************
.subckt pfal_alu_kogge_new  phi1 phi2 phi3 phi4 s2 s1 s0 a0 a1 a2 a3 a4 a5 a6 a7 b0 b1 b2 b3 b4 b5 b6 b7 cin s2_b s1_b s0_b a0_b a1_b a2_b a3_b a4_b a5_b a6_b a7_b b0_b b1_b b2_b b3_b b4_b b5_b b6_b b7_b cin_b out0 out1 out2 out3 out4 out5 out6 out7 cout out0_b out1_b out2_b out3_b out4_b out5_b out6_b out7_b cout_b

xcontrol1 phi1 a0 a0_b b0 b0_b s0 s0_b s1 s1_b s2 s2_b x0 x0_b y0 y0_b control_unit
xcontrol2 phi1 a1 a1_b b1 b1_b s0 s0_b s1 s1_b s2 s2_b x1 x1_b y1 y1_b control_unit
xcontrol3 phi1 a2 a2_b b2 b2_b s0 s0_b s1 s1_b s2 s2_b x2 x2_b y2 y2_b control_unit
xcontrol4 phi1 a3 a3_b b3 b3_b s0 s0_b s1 s1_b s2 s2_b x3 x3_b y3 y3_b control_unit
xcontrol5 phi1 a4 a4_b b4 b4_b s0 s0_b s1 s1_b s2 s2_b x4 x4_b y4 y4_b control_unit
xcontrol6 phi1 a5 a5_b b5 b5_b s0 s0_b s1 s1_b s2 s2_b x5 x5_b y5 y5_b control_unit
xcontrol7 phi1 a6 a6_b b6 b6_b s0 s0_b s1 s1_b s2 s2_b x6 x6_b y6 y6_b control_unit
xcontrol8 phi1 a7 a7_b b7 b7_b s0 s0_b s1 s1_b s2 s2_b x7 x7_b y7 y7_b control_unit
xinv1 phi1 s2 s2_b s21b s21 pfal_not_buff
xinv2 phi1 cin cin_b cin1b cin1 pfal_not_buff

****************************Parallel adder stage with phi2,phi3,phi3,phi1 clk**************************************************
xPA1 phi2 phi3 phi4 phi1 s21 x0 x1 x2 x3 x4 x5 x6 x7 y0 y1 y2 y3 y4 y5 y6 y7 cin1 s21b x0_b x1_b x2_b x3_b x4_b x5_b x6_b x7_b y0_b y1_b y2_b y3_b y4_b y5_b y6_b y7_b cin1b out0 out1 out2 out3 out4 out5 out6 out7 cout out0_b out1_b out2_b out3_b out4_b out5_b out6_b out7_b cout_b pfal_kogge_mod

.ends pfal_alu_kogge_new
***************************************************************************************************************************************************************

