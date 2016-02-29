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
.global gnd 


.param   TEMP=27

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\2_1MUX\ecrl_2_1_mux.sp"

va va gnd pulse 0 1v 2n 0.1n 0.1n 2n 10n
vab vab gnd pulse 0 1v 6.5n 0.1n 0.1n 2.5n 10.5n
vbb vbb gnd pulse 0 1v 2n .1n .1n 2n 10n 
vb vb gnd pulse 0 1v 6.5n 0.1n 0.1n 2.5n 10.5n
vc vc gnd pulse 0 1v 2n .1n .1n 2n 10n 
vcb vcb gnd pulse 0 1v 6.5n 0.1n 0.1n 2.5n 10.5n
v2 v2 gnd PULSE 1v 0 0 .5n .5n 2n 5.0n

xmux1 v2 va vb vc vab vbb vcb y yb ecrl_mux2_1


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

