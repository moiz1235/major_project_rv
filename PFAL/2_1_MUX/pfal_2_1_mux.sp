******************************PFAL MUX 2X1***************************************
.subckt pfal_mux2_1 pwr_clk s a b s_b a_b b_b y y_b
xM1P y y_b pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P y_b y pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1N y y_b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N y_b y gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM3N pwr_clk s_b net1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N net1 a y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM5N pwr_clk s net2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM6N net2 b y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM7N pwr_clk s_b net3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM8N pwr_clk b_b net3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM9N net3 s y_b gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM10N net3 a_b y_b gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
.ends pfal_mux2_1
*********************************************************************************