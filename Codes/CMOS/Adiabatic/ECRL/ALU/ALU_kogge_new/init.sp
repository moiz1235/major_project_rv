init

.options POST
.options AUTOSTOP
.options INGOLD=2     DCON=1
.options GSHUNT=1e-12 RMIN=1e-9
.options ABSTOL=1e-5  ABSVDC=1e-4 
.options RELTOL=1e-2  RELVDC=1e-2 
.options NUMDGT=4     PIVOT=1
.options LVLTIM=1
*.options trcon=0

*library file*
.include "C:\synopsys\hl\hp\ptm10hp.sp"

.global gnd
.param   TEMP=27
.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\ALU\ALU_kogge_new\ecrl_alu_kogge_new.sp"

vclk1 vclk1 0 PULSE 0 1 1n 1n 1n 2n 6.0n
vclk2 vclk2 0 PULSE 0 1 2.5n 1n 1n 2n 6.0n
vclk3 vclk3 0 PULSE 0 1 4n 1n 1n 2n 6.0n
vclk4 vclk4 0 PULSE 0 1 5.5n 1n 1n 2n 6.0n

va0 va0 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va0b va0b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va1 va1 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va1b va1b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va2 va2 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va2b va2b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va3 va3 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va3b va3b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va4 va4 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va4b va4b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va5 va5 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va5b va5b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va6 va6 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va6b va6b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
va7 va7 gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
va7b va7b gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)

vb0 vb0 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb0b vb0b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb1 vb1 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb1b vb1b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb2 vb2 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb2b vb2b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb3 vb3 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb3b vb3b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb4 vb4 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb4b vb4b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb5 vb5 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb5b vb5b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb6 vb6 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb6b vb6b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vb7 vb7 gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vb7b vb7b gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 


vcin vcin gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5) 
vcinb vcinb gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5)

vs2 vs2 gnd pat (1 0 0 0.01n 0.01n 3n b10101010100000000000 r=3)
vs2b vs2b gnd pat (1 0 0 0.01n 0.01n 3n b00000000001010101010 r=3)
vs1 vs1 gnd pat (1 0 0 0.01n 0.01n 3n b1010100000 r=5)
vs1b vs1b gnd pat (1 0 0 0.01n 0.01n 3n b0000001010 r=5)
vs0 vs0 gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5)
vs0b vs0b gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5)

*********instantiating***********
xalu1 vclk1 vclk2 vclk3 vclk4 vs2 vs1 vs0 va0 va1 va2 va3 va4 va5 va6 va7 vb0 vb1 vb2 vb3 vb4 vb5 vb6 vb7 vcin vs2b vs1b vs0b va0b va1b va2b va3b va4b va5b va6b va7b vb0b vb1b vb2b vb3b vb4b vb5b vb6b vb7b vcinb s0 s1 s2 s3 s4 s5 s6 s7 cout s0_b s1_b s2_b s3_b s4_b s5_b s6_b s7_b cout_b ecrl_alu_kogge_new

* Transient analysis *
.op
.TRAN 1n 50n
************total Power Calculation(op =High)*****************
.meas tran itotal1 AVG i(vclk1) FROM=8ns TO=50ns
.meas tran vtotal1 AVG v(vclk1) FROM=8ns TO=50ns
.meas Etotal1 PARAM='-vtotal1*itotal1'
.meas tran p_avg1 avg p(vclk1) from=8n to=50n
************************************************** ********
************total Power Calculation(op =High)*****************
.meas tran itotal2 AVG i(vclk2) FROM=8ns TO=50ns
.meas tran vtotal2 AVG v(vclk2) FROM=8ns TO=50ns
.meas Etotal2 PARAM='-vtotal2*itotal2'
.meas tran p_avg2 avg p(vclk2) from=8n to=50n
************************************************** ********
************total Power Calculation(op =High)*****************
.meas tran itotal3 AVG i(vclk3) FROM=8ns TO=50ns
.meas tran vtotal3 AVG v(vclk3) FROM=8ns TO=50ns
.meas Etotal3 PARAM='-vtotal3*itotal3'
.meas tran p_avg3 avg p(vclk3) from=8n to=50n
************************************************** ********
************total Power Calculation(op =High)*****************
.meas tran itotal4 AVG i(vclk4) FROM=8ns TO=50ns
.meas tran vtotal4 AVG v(vclk4) FROM=8ns TO=50ns
.meas Etotal4 PARAM='-vtotal4*itotal4'
.meas tran p_avg4 avg p(vclk4) from=8n to=50n
************************************************** ********
.meas Etotal PARAM = 'Etotal1+Etotal2+Etotal3+Etotal4'
.end 


