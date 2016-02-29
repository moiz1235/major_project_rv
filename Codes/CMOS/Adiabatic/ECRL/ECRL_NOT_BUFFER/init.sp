ECRL_NOT

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

.global gnd
.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\ECRL_NOT_BUFFER\ecrl_not_buff.sp"

va va gnd pulse 0 1 1n 0.1n 0.1n 5n 10n
vab vab gnd pulse 1 0 1n 0.1n 0.1n 5n 10n
v2 v2 gnd pulse 1 0.0 .0001n 0.5n 0.5n 2n 5n

*********instantiating***********
xnot1 v2 va vab y yb adiabatic_not_buffer

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
