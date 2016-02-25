******************************ECRL MUX 2X1***************************************
.subckt ecrl_mux2_1 pwr_clk s a b s_b a_b b_b y y_b
xM1P y_b y pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P y y_b pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1N y_b s_b net1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N net1 a gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM3N y_b s net2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N net2 b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM5N y s_b net3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM6N y b_b net3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM7N net3 s gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM8N net3 a_b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
.ends ecrl_mux2_1
*********************************************************************************