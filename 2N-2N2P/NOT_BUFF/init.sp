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
.lib 'gnrfet.lib' GNRFET

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\2N-2N2P\NOT_BUFF\2n2n_not_buf.sp"
.param   TEMP=27

.global gnd



va va gnd pulse 0 .5 2n 0.1n 0.1n 2n 10n
vab vab gnd pulse 0 .5 6.5n 0.1n 0.1n 2.5n 10.5n
v2 v2 0 PULSE .5 0 0 .5n .5n 2n 5.0n

xnot v2 va vab y yb n2n2p_not_buf


* Transient analysis *
.op
.TRAN 1n 25n
.print power
.end 

