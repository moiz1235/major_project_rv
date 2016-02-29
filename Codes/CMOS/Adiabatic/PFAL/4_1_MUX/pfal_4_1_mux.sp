*****************************PFAL MUX 4X1***************************************
.subckt pfal_mux4_1 pwr_clk s1 s0 a b c d s1_b s0_b a_b b_b c_b d_b y y_b
xM1P y_b y pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P y y_b pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1N y_b y gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N y y_b gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM3N pwr_clk a net1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N net1 s0_b net2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM5N net2 s1_b y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM6N pwr_clk b net3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM7N net3 s0 net4 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM8N net4 s1_b y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM9N pwr_clk c net5 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM10N net5 s0_b net6 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM11N net6 s1 y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM12N pwr_clk d net7 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM13N net7 s0 net8 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM14N net8 s1 y gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM15N pwr_clk a_b net9 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM16N pwr_clk s0 net9 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM17N pwr_clk s1 net9 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM18N net9 b_b net10 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM19N net9 s0_b net10 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM20N net9 s1 net10 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM21N net10 c_b net11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM22N net10 s0 net11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM23N net10 s1_b net11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM24N net11 d_b y_b gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM25N net11 s0_b y_b gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM26N net11 s1_b y_b gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

.ends pfal_mux4_1
***************************************************************