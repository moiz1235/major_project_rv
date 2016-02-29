alu

.options POST
.options AUTOSTOP
.options INGOLD=2     DCON=1
.options GSHUNT=1e-12 RMIN=1e-15 
.options ABSTOL=1e-5  ABSVDC=1e-4 
.options RELTOL=1e-2  RELVDC=1e-2 
.options NUMDGT=4     PIVOT=1
*.options trcon=0

*library file*
.include "C:\synopsys\hl\hp\ptm10hp.sp"


.param   TEMP=27

.global vdd gnd
vdd vdd gnd dc .5

********************INVERTER*********************************
.subckt inv vin vout
xM1P vout vin vdd vdd 10n 10n p10hpfet
xM1N vout vin gnd gnd 10n 10n n10hpfet
.ends inv
*************************************************************

********************NAND gate 2 INPUT************************
.subckt nand2 vin1 vin2 vout
xM1P vout vin1 vdd vdd 10n 10n p10hpfet
xM2P vout vin2 vdd vdd 10n 10n p10hpfet
xM1N vout vin1 vn1 gnd 10n 10n n10hpfet
xM2N vn1  vin2 gnd gnd 10n 10n n10hpfet
.ends nand2
*************************************************************
********************NAND gate 3 INPUT************************
.subckt nand3 vin1 vin2 vin3 vout
xM1P vout vin1 vdd vdd 10n 10n p10hpfet
xM2P vout vin2 vdd vdd 10n 10n p10hpfet
xM3P vout vin3 vdd vdd 10n 10n p10hpfet
xM1N vout vin1 vn1 gnd 10n 10n n10hpfet
xM2N vn1  vin2 vn2 gnd 10n 10n n10hpfet
xM3N vn2  vin3 gnd gnd 10n 10n n10hpfet
.ends nand3
*************************************************************

********************NAND gate 4 INPUT************************
.subckt nand4 vin1 vin2 vin3 vin4 vout
xM1P vout vin1 vdd vdd 10n 10n p10hpfet
xM2P vout vin2 vdd vdd 10n 10n p10hpfet
xM3P vout vin3 vdd vdd 10n 10n p10hpfet
xM4P vout vin4 vdd vdd 10n 10n p10hpfet
xM1N vout vin1 vn1 gnd 10n 10n n10hpfet
xM2N vn1  vin2 vn2 gnd 10n 10n n10hpfet
xM3N vn2  vin3 vn3 gnd 10n 10n n10hpfet
xM4N vn3  vin4 gnd gnd 10n 10n n10hpfet
.ends nand4
*************************************************************
********************NOR gate 2 INPUT*************************
.subckt nor2 vin1 vin2 vout
xnand1 vin1 vin1 val1 nand2
xnand2 vin2 vin2 val2 nand2
xnand3 val1 val2 val3 nand2
xnand4 val3 val3 vout nand2
.ends nor2
*************************************************************

*********************CMOS AND***************************
.subckt and2 vin1 vin2 y_and
xM1P vout vin1 vdd vdd 10n 10n p10hpfet
xM2P vout vin2 vdd vdd 10n 10n p10hpfet
xM1N vout vin1 net1 gnd 10n 10n n10hpfet
xM2N net1 vin2 gnd gnd 10n 10n n10hpfet
xinv1 vout y_and inv
.ends and2
********************************************************
********************XOR gate 2 INPUT*************************
.subckt xor2 vin1 vin2 vout
xnand1 vin1 vin2 val1 nand2
xnand2 vin1 val1 val2 nand2
xnand3 vin2 val1 val3 nand2
xnand4 val2 val3 vout nand2
.ends xor2
*************************************************************


********************MUX 2x1**********************************
.subckt mux2_1 a b s y
xinv1 s sb inv
xnand1 a sb val1 nand2
xnand2 b s  val2 nand2
xnand3 val1 val2 y nand2
.ends mux2_1
*************************************************************

********************MUX 4x1**********************************
.subckt mux4_1 a b c d s1 s0 y
xinv1 s1 s1b inv
xinv2 s0 s0b inv
xnand1 a s1b s0b val1 nand3
xnand2 b s1b s0  val2 nand3
xnand3 c s1  s0b val3 nand3
xnand4 d s1  s0  val4 nand3            
xnand5 val1 val2 val3 val4 y nand4
.ends mux4_1
*************************************************************

****************GEN CKT*********************************
.subckt gen_ckt g p g_prev g_nxt
xM1P g_nxt_b p net1 vdd 10n 10n p10hpfet
xM2P g_nxt_b g_prev net1 vdd 10n 10n p10hpfet
xM3P net1 g vdd vdd 10n 10n p10hpfet
xM1N g_nxt_b p net2 gnd 10n 10n n10hpfet
xM2N net2 g_prev gnd gnd 10n 10n n10hpfet
xM3N g_nxt_b g gnd gnd 10n 10n n10hpfet
xinv1 g_nxt_b g_nxt inv
.ends gen_ckt
********************************************************

****************Kogge stone PARALLEL ADDER**************
.subckt kogge_stone_PA a7 a6 a5 a4 a3 a2 a1 a0 b7 b6 b5 b4 b3 b2 b1 b0 cin cout s7 s6 s5 s4 s3 s2 s1 s0

***FIRST STAGE*****
xXOR1 a0 b0 p0 xor2
xXOR2 a1 b1 p1 xor2
xXOR3 a2 b2 p2 xor2
xXOR4 a3 b3 p3 xor2
xXOR5 a4 b4 p4 xor2
xXOR6 a5 b5 p5 xor2
xXOR7 a6 b6 p6 xor2
xXOR8 a7 b7 p7 xor2

xAND1 a0 b0 g0 and2
xAND2 a1 b1 g1 and2
xAND3 a2 b2 g2 and2
xAND4 a3 b3 g3 and2
xAND5 a4 b4 g4 and2
xAND6 a5 b5 g5 and2
xAND7 a6 b6 g6 and2
xAND8 a7 b7 g7 and2
*******************

***SECOND STAGE************
xkgc1 g0 p0 cin c1  gen_ckt
xkgc2 g1 p1 g0  gx1 gen_ckt
xkgc3 g2 p2 g1  gx2 gen_ckt
xkgc4 g3 p3 g2  gx3 gen_ckt
xkgc5 g4 p4 g3  gx4 gen_ckt
xkgc6 g5 p5 g4  gx5 gen_ckt
xkgc7 g6 p6 g5  gx6 gen_ckt
xkgc8 g7 p7 g6  gx7 gen_ckt

xAND9  p1 p0 px1 and2
xAND10 p2 p1 px2 and2
xAND11 p3 p2 px3 and2
xAND12 p4 p3 px4 and2
xAND13 p5 p4 px5 and2
xAND14 p6 p5 px6 and2
xAND15 p7 p6 px7 and2
***************************

***THIRD STAGE****************
xkgc9  gx1 px1 cin c2  gen_ckt
xkgc10 gx2 px2 c1  c3  gen_ckt
xkgc11 gx3 px3 gx1 gy3 gen_ckt
xkgc12 gx4 px4 gx2 gy4 gen_ckt
xkgc13 gx5 px5 gx3 gy5 gen_ckt
xkgc14 gx6 px6 gx4 gy6 gen_ckt
xkgc15 gx7 px7 gx5 gy7 gen_ckt

xAND16 px3 px1 py3 and2
xAND17 px4 px2 py4 and2
xAND18 px5 px3 py5 and2
xAND19 px6 px4 py6 and2
xAND20 px7 px5 py7 and2
******************************

***FOURTH STAGE***************
xkgc16 gy3 py3 cin c4  gen_ckt
xkgc17 gy4 py4 c1  c5  gen_ckt
xkgc18 gy5 py5 c2  c6  gen_ckt
xkgc19 gy6 py6 c3  c7  gen_ckt
xkgc20 gy7 py7 gy3 gz7 gen_ckt

xAND21 py7 py3 pz7 and2
******************************

***FIFTH STAGE*****************
xkgc21 gz7 pz7 cin cout gen_ckt

xXOR9  p0 cin s0 xor2
xXOR10 p1 c1  s1 xor2
xXOR11 p2 c2  s2 xor2
xXOR12 p3 c3  s3 xor2
xXOR13 p4 c4  s4 xor2
xXOR14 p5 c5  s5 xor2
xXOR15 p6 c6  s6 xor2
xXOR16 p7 c7  s7 xor2
*******************************

.ends kogge_stone_PA
***********************************************************************************


********************ALU 8 bit********************************
.subckt alu_des a7 a6 a5 a4 a3 a2 a1 a0 b7 b6 b5 b4 b3 b2 b1 b0 cin s2 s1 s0 out7 out6 out5 out4 out3 out2 out1 out0 cout 

*inverter stage*
xinv1 b0 b0b inv
xinv2 b1 b1b inv
xinv3 b2 b2b inv
xinv4 b3 b3b inv
xinv5 b4 b4b inv
xinv6 b5 b5b inv
xinv7 b6 b6b inv
xinv8 b7 b7b inv

*MUX input stage*
xmux1 vdd b0 b0b gnd s1 s0 op0 mux4_1
xmux2 vdd b1 b1b gnd s1 s0 op1 mux4_1
xmux3 vdd b2 b2b gnd s1 s0 op2 mux4_1
xmux4 vdd b3 b3b gnd s1 s0 op3 mux4_1
xmux5 vdd b4 b4b gnd s1 s0 op4 mux4_1
xmux6 vdd b5 b5b gnd s1 s0 op5 mux4_1
xmux7 vdd b6 b6b gnd s1 s0 op6 mux4_1
xmux8 vdd b7 b7b gnd s1 s0 op7 mux4_1

xKGSPA1 a7 a6 a5 a4 a3 a2 a1 a0 op7 op6 op5 op4 op3 op2 op1 op0 cin cout ar7 ar6 ar5 ar4 ar3 ar2 ar1 ar0 kogge_stone_PA

*NOT stage*
xinv11 a0 linv0 inv
xinv21 a1 linv1 inv
xinv31 a2 linv2 inv
xinv41 a3 linv3 inv
xinv51 a4 linv4 inv
xinv61 a5 linv5 inv
xinv71 a6 linv6 inv
xinv81 a7 linv7 inv

*NAND stage*
xnand1 a0 b0 lnand0 nand2
xnand2 a1 b1 lnand1 nand2
xnand3 a2 b2 lnand2 nand2
xnand4 a3 b3 lnand3 nand2
xnand5 a4 b4 lnand4 nand2
xnand6 a5 b5 lnand5 nand2
xnand7 a6 b6 lnand6 nand2
xnand8 a7 b7 lnand7 nand2

*NOR stage*
xnor1 a0 b0 lnor0 nor2
xnor2 a1 b1 lnor1 nor2
xnor3 a2 b2 lnor2 nor2
xnor4 a3 b3 lnor3 nor2
xnor5 a4 b4 lnor4 nor2
xnor6 a5 b5 lnor5 nor2
xnor7 a6 b6 lnor6 nor2
xnor8 a7 b7 lnor7 nor2

*XOR stage*
xxor1 a0 b0 lxor0 xor2
xxor2 a1 b1 lxor1 xor2
xxor3 a2 b2 lxor2 xor2
xxor4 a3 b3 lxor3 xor2
xxor5 a4 b4 lxor4 xor2
xxor6 a5 b5 lxor5 xor2
xxor7 a6 b6 lxor6 xor2
xxor8 a7 b7 lxor7 xor2


*MUX logical stage*
xmux9  linv0 lnand0 lnor0 lxor0 s1 s0 lo0 mux4_1
xmux10 linv1 lnand1 lnor1 lxor1 s1 s0 lo1 mux4_1
xmux11 linv2 lnand2 lnor2 lxor2 s1 s0 lo2 mux4_1
xmux12 linv3 lnand3 lnor3 lxor3 s1 s0 lo3 mux4_1
xmux13 linv4 lnand4 lnor4 lxor4 s1 s0 lo4 mux4_1
xmux14 linv5 lnand5 lnor5 lxor5 s1 s0 lo5 mux4_1
xmux15 linv6 lnand6 lnor6 lxor6 s1 s0 lo6 mux4_1
xmux16 linv7 lnand7 lnor7 lxor7 s1 s0 lo7 mux4_1

*MUX final stage*
xmux17 ar0 lo0 s2 out0 mux2_1
xmux18 ar1 lo1 s2 out1 mux2_1
xmux19 ar2 lo2 s2 out2 mux2_1
xmux20 ar3 lo3 s2 out3 mux2_1
xmux21 ar4 lo4 s2 out4 mux2_1
xmux22 ar5 lo5 s2 out5 mux2_1
xmux23 ar6 lo6 s2 out6 mux2_1
xmux24 ar7 lo7 s2 out7 mux2_1

.ends alu_des

va7 va7 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va6 va6 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va5 va5 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va4 va4 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va3 va3 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va2 va2 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va1 va1 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
va0 va0 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
vb7 vb7 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb6 vb6 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb5 vb5 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb4 vb4 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb3 vb3 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb2 vb2 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb1 vb1 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vb0 vb0 gnd pulse 0.5 0 0.1p 0.1p 0.1p 4n 5n
vcin vcin gnd pulse .5 0 0.1p 0.1p 0.1p 2n 4n
vs0 vs0 gnd pulse 0 .5 0.1p 0.1p 0.1p 5n 5n
vs1 vs1 gnd pulse 0.5 0 0.1p 0.1p 0.1p 5n 5n
vs2 vs2 gnd pulse 0.5 0 0.1p 0.1p 0.1p 5n 5n


*ALU instantiation*

xalu1 va7 va6 va5 va4 va3 va2 va1 va0 vb7 vb6 vb5 vb4 vb3 vb2 vb1 vb0 vcin vs2 vs1 vs0 y7 y6 y5 y4 y3 y2 y1 y0 ycout alu_des

* Transient analysis *
.op
.TRAN 1n 25n
.print power
* Transmission delay
.meas tran itotal1 AVG i(vdd) FROM=1ns TO=25ns
.meas tran vtotal1 AVG v(vdd) FROM=1ns TO=25ns
.meas Etotal1 PARAM='-vtotal1*itotal1'
.meas tran avgpow AVG p(vdd) FROM=1ns TO=25ns
.measure tran td1 TRIG v(vcin) VAL=0.25 TD=1n RISE=1 TARG v(ycout) VAL=0.25 RISE=1
.measure tran td2 TRIG v(vb7) VAL=0.25 TD=3.5n RISE=1 TARG v(ycout) VAL=0.25 RISE=1
.end