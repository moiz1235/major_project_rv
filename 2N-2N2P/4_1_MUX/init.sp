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

.include "F:\MAJOR_PROJECT\Codes\GNRFET\Adiabatic_logic\2N-2N2P\4_1_MUX\n2n2p_4_1_mux.sp"
.param   TEMP=27

.global gnd



vs0 vs0 gnd pat (.5 0 0 0.01n 0.01n 3n b1010100010 r=3)
vs0b vs0b gnd pat (.5 0 0 0.01n 0.01n 3n b0000001000 r=3)
vs1 vs1 gnd pat (.5 0 0 0.01n 0.01n 3n b1010000000 r=5)
vs1b vs1b gnd pat (.5 0 0 0.01n 0.01n 3n b0000101010 r=5)
va va gnd pat (.5 0 0 0.01n 0.01n 3n b1010000000 r=5)
vab vab gnd pat (.5 0 0 0.01n 0.01n 3n b0000101010 r=5)
vc vc gnd pat (.5 0 0 0.01n 0.01n 3n b0010001000 r=5) 
vcb vcb gnd pat (.5 0 0 0.01n 0.01n 3n b1000100010 r=5)
vb vb gnd pat (.5 0 0 0.01n 0.01n 3n b0000101010 r=5) 
vbb vbb gnd pat (.5 0 0 0.01n 0.01n 3n b1010000000 r=5) 
vd vd gnd pat (.5 0 0 0.01n 0.01n 3n b1000100010 r=5) 
vdb vdb gnd pat (.5 0 0 0.01n 0.01n 3n b0010001000 r=5)
vclk1 vclk1 0 PULSE 0 .5 1n 1n 1n 2n 6.0n

xadder vclk1 vs1 vs0 va vb vc vd vs1b vs0b vab vbb vcb vdb y yb n2n2p_mux4_1


* Transient analysis *
.op
.TRAN 1n 50n
.meas tran itotal1 avg i(vclk1) from=8ns to=50ns
.meas tran vtotal1 avg v(vclk1) from=8ns to=50ns
.meas etotal1 param='-vtotal1*itotal1'
.meas tran p_avg1 avg p(vclk1) from=8n to=50n
.end 
