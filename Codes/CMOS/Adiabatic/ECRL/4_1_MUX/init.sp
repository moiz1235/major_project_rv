init

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


.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\4_1_MUX\ecrl_4_1_mux.sp"
.param   TEMP=27

.global gnd



vs0 vs0 gnd pat (1 0 0 0.01n 0.01n 3n b1010100010 r=3)
vs0b vs0b gnd pat (1 0 0 0.01n 0.01n 3n b0000001000 r=3)
vs1 vs1 gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5)
vs1b vs1b gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5)
va va gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5)
vab vab gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5)
vc vc gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5) 
vcb vcb gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5)
vb vb gnd pat (1 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vbb vbb gnd pat (1 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vd vd gnd pat (1 0 0 0.01n 0.01n 3n b1000100010 r=5) 
vdb vdb gnd pat (1 0 0 0.01n 0.01n 3n b0010001000 r=5)
vclk1 vclk1 0 PULSE 0 1 1n 1n 1n 2n 6.0n

xadder vclk1 vs1 vs0 va vb vc vd vs1b vs0b vab vbb vcb vdb y yb ecrl_mux4_1


* Transient analysis *
.op
.TRAN 1n 25n
************total Power Calculation(op =High)*****************
.meas tran itotal AVG i(v2) FROM=1ns TO=25ns
.meas tran vtotal AVG v(v2) FROM=1ns TO=25ns
.meas Etotal PARAM='vtotal*itotal'

.meas TRAN average_power avg p(v2) from 1ns to 25ns
************************************************** ********
.end 

