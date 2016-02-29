alu
.include "C:\synopsys\hl\hp\ptm10hp.sp"

.options POST
.options AUTOSTOP
.options INGOLD=2     DCON=1
.options GSHUNT=1e-12 RMIN=1e-15 
.options ABSTOL=1e-5  ABSVDC=1e-4 
.options RELTOL=1e-2  RELVDC=1e-2 
.options NUMDGT=4     PIVOT=1
*.options trcon=0

*.lib 'gnrfet.lib' GNRFET

.param   TEMP=27

.global vdd gnd s2b
vdd vdd gnd dc 1

********************INVERTER*********************************
.subckt inv vin vout
xM1P vout vin vdd vdd 10n 10n p10hpfet
xM1N vout vin gnd gnd 10n 10n n10hpfet
.ends inv
*************************************************************

********************AND gate 2 INPUT************************
.subckt and vin1 vin2 vout
xM1P vout1 vin1 vdd vdd 10n 10n p10hpfet
xM2P vout1 vin2 vdd vdd 10n 10n p10hpfet
xM1N vout1 vin1 vn1 gnd 10n 10n n10hpfet
xM2N vn1  vin2 gnd gnd 10n 10n n10hpfet
xinv1 vout1 vout inv
.ends and

********************ALU CONTROL*********************************
.subckt alu_control a b s2 s1 s0 x y

xinv1 s0 s0b inv
xinv2 s1 s1b inv
xinv3 s2 s2b inv
xinv4 a ab inv
xinv5 b bb inv

*y cirvuit*
xM1P vdp1 s0b vdd vdd 10n 10n p10hpfet
xM2P vdp2 s1b vdd vdd 10n 10n p10hpfet
xM3P y bb vdp1 vdd 10n 10n p10hpfet
xM4P y b vdp2 vdd 10n 10n p10hpfet

xM1N y s0b vsn1 gnd 10n 10n n10hpfet
xM2N y bb vsn1 gnd 10n 10n n10hpfet
xM3N vsn1 s1b gnd gnd 10n 10n n10hpfet
xM4N vsn1 b gnd gnd 10n 10n n10hpfet


*x circuit*
xM5P vdp5 s2 vdd vdd 10n 10n p10hpfet
xM6P x ab vdp5 vdd 10n 10n p10hpfet
xM7P vdp7 ab vdd vdd 10n 10n p10hpfet
xM8P x b vdp7 vdd 10n 10n p10hpfet
xM9P vdp9 ab vdd vdd 10n 10n p10hpfet
xM10P x s0b vdp9 vdd 10n 10n p10hpfet
xM11P vdp11 s2b vdd vdd 10n 10n p10hpfet
xM12P vdp12 a vdp11 vdd 10n 10n p10hpfet
xM13P vdp13 s0 vdp12 vdd 10n 10n p10hpfet
xM14P x s1 vdp13 vdd 10n 10n p10hpfet

xM5N x s2 vsn5 gnd 10n 10n n10hpfet
xM6N x ab vsn5 gnd 10n 10n n10hpfet
xM7N vsn5 ab vsn7 gnd 10n 10n n10hpfet
xM8N vsn5 b vsn7 gnd 10n 10n n10hpfet
xM9N vsn7 ab vsn9 gnd 10n 10n n10hpfet
xM10N vsn7 s0b vsn9 gnd 10n 10n n10hpfet
xM11N vsn9 s2b gnd gnd 10n 10n n10hpfet
xM12N vsn9 s0 gnd gnd 10n 10n n10hpfet
xM13N vsn9 a gnd gnd 10n 10n n10hpfet
xM14N vsn9 s1 gnd gnd 10n 10n n10hpfet


.ends alu_control
*************************************************************

********************FULL ADDER*******************************
.subckt full_adder a b c sum cout

xM1P x1 a vdd vdd 10n 10n p10hpfet
xM2P x2 b x1 x1 10n 10n p10hpfet 
xM3P x3 c vdd vdd 10n 10n p10hpfet
xM4P sum x2 x3 x3 10n 10n p10hpfet 
xM5P cout x2 c c 10n 10n p10hpfet 

xM1N x2 a b b 10n 10n n10hpfet 
xM2N x2 b a a 10n 10n n10hpfet 
xM3N sum x2 c c 10n 10n n10hpfet 
xM4N sum c x2 x2 10n 10n n10hpfet 
xM5N cout x2 a a 10n 10n n10hpfet 

.ends full_adder
*************************************************************

********************ALU 8 bit********************************
.subckt alu_des a7 a6 a5 a4 a3 a2 a1 a0 b7 b6 b5 b4 b3 b2 b1 b0 cin s2 s1 s0 out7 out6 out5 out4 out3 out2 out1 out0 cout

*alu control stage*
xalu_control1 a0 b0 s2 s1 s0 x0 y0 alu_control
xalu_control2 a1 b1 s2 s1 s0 x1 y1 alu_control
xalu_control3 a2 b2 s2 s1 s0 x2 y2 alu_control
xalu_control4 a3 b3 s2 s1 s0 x3 y3 alu_control
xalu_control5 a4 b4 s2 s1 s0 x4 y4 alu_control
xalu_control6 a5 b5 s2 s1 s0 x5 y5 alu_control
xalu_control7 a6 b6 s2 s1 s0 x6 y6 alu_control
xalu_control8 a7 b7 s2 s1 s0 x7 y7 alu_control

*parallel adder*
xfa1 x0 y0 cin out0 c01   full_adder
xand1 s2b c01 c0 and 
xfa2 x1 y1 c0  out1 c11   full_adder
xand2 s2b c11 c1 and 
xfa3 x2 y2 c1  out2 c21   full_adder
xand3 s2b c21 c2 and 
xfa4 x3 y3 c2  out3 c31   full_adder
xand4 s2b c31 c3 and 
xfa5 x4 y4 c3  out4 c41   full_adder
xand5 s2b c41 c4 and 
xfa6 x5 y5 c4  out5 c51   full_adder
xand6 s2b c51 c5 and 
xfa7 x6 y6 c5  out6 c61   full_adder
xand7 s2b c61 c6 and 
xfa8 x7 y7 c6  out7 cout full_adder


.ends alu_des
*************************************************************


va7 va7 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va6 va6 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va5 va5 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va4 va4 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va3 va3 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va2 va2 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va1 va1 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
va0 va0 gnd pulse 0 1 0.0n 0.1n 0.1n 9n 10n
vb7 vb7 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb6 vb6 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb5 vb5 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb4 vb4 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb3 vb3 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb2 vb2 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb1 vb1 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vb0 vb0 gnd pulse 1 0 0.0n 0.1n 0.1n 4n 5n
vcin vcin gnd pulse 0 1 0.0n 0.1n 0.1n 10n 20n
vs0 vs0 gnd pulse 1 0 0.0n 0.1n 0.1n 2.5n 5n
vs1 vs1 gnd pulse 1 0 0.0n 0.1n 0.1n 5n 10n
vs2 vs2 gnd pulse 1 0 0.0n 0.1n 0.1n 10n 20n


*ALU instantiation*

xalu1 va7 va6 va5 va4 va3 va2 va1 va0 vb7 vb6 vb5 vb4 vb3 vb2 vb1 vb0 vcin vs2 vs1 vs0 y7 y6 y5 y4 y3 y2 y1 y0 ycout alu_des

* Transient analysis *
.op
.TRAN 1n 22n
.print power

*.measure tran td1 TRIG v(vcin) VAL=0.5 TD=20n RISE=1 TARG v(ycout) VAL=0.5 RISE=1
.end

