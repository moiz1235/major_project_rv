******************************ECRL MUX 2X1***************************************
.subckt ecrl_mux2_1 pwr_clk s a b s_b a_b b_b y y_b
xM1P y_b y pwr_clk pwr_clk 10n 10n p10hpfet
xM2P y y_b pwr_clk pwr_clk 10n 10n p10hpfet
xM1N y_b s_b net1 gnd 10n 10n n10hpfet
xM2N net1 a gnd gnd 10n 10n n10hpfet
xM3N y_b s net2 gnd 10n 10n n10hpfet
xM4N net2 b gnd gnd 10n 10n n10hpfet
xM5N y s_b net3 gnd 10n 10n n10hpfet
xM6N y b_b net3 gnd 10n 10n n10hpfet
xM7N net3 s gnd gnd 10n 10n n10hpfet
xM8N net3 a_b gnd gnd 10n 10n n10hpfet
.ends ecrl_mux2_1
*********************************************************************************