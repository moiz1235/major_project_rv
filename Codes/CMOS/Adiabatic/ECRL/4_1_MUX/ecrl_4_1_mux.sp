*****************************ECRL MUX 4X1***************************************
.subckt ecrl_mux4_1 pwr_clk s1 s0 a b c d s1_b s0_b a_b b_b c_b d_b y y_b
xM1P y y_b pwr_clk pwr_clk 10n 10n p10hpfet
xM2P y_b y pwr_clk pwr_clk 10n 10n p10hpfet

xM1N y_b a net1 gnd 10n 10n n10hpfet
xM2N net1 s0_b net2 gnd 10n 10n n10hpfet
xM3N net2 s1_b gnd gnd 10n 10n n10hpfet
xM4N y_b b net3 gnd 10n 10n n10hpfet
xM5N net3 s0 net4 gnd 10n 10n n10hpfet
xM6N net4 s1_b gnd gnd 10n 10n n10hpfet
xM7N y_b c net5 gnd 10n 10n n10hpfet
xM8N net5 s0_b net6 gnd 10n 10n n10hpfet
xM9N net6 s1 gnd gnd 10n 10n n10hpfet
xM10N y_b d net7 gnd 10n 10n n10hpfet
xM11N net7 s0 net8 gnd 10n 10n n10hpfet
xM12N net8 s1 gnd gnd 10n 10n n10hpfet

xM13N y a_b net9 gnd 10n 10n n10hpfet
xM14N y s0 net9 gnd 10n 10n n10hpfet
xM15N y s1 net9 gnd 10n 10n n10hpfet

xM16N net9 b_b net10 gnd 10n 10n n10hpfet
xM17N net9 s0_b net10 gnd 10n 10n n10hpfet
xM18N net9 s1 net10 gnd 10n 10n n10hpfet

xM19N net10 c_b net11 gnd 10n 10n n10hpfet
xM20N net10 s0 net11 gnd 10n 10n n10hpfet
xM21N net10 s1_b net11 gnd 10n 10n n10hpfet

xM22N net11 d_b gnd gnd 10n 10n n10hpfet
xM23N net11 s0_b gnd gnd 10n 10n n10hpfet
xM24N net11 s1_b gnd gnd 10n 10n n10hpfet

.ends ecrl_mux4_1
**********************************************************************************