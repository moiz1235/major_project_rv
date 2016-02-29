***************************PFAL NOR OR*****************************************
.subckt pfal_nor_or pwr_clk vin1 vin2 vin1_b vin2_b y_nor y_or
xM1P y_or y_nor pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P y_nor y_or pwr_clk pwr_clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM1N y_or y_nor gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N y_nor y_or gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM3N pwr_clk vin1 y_or gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N pwr_clk vin2 y_or gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM5N pwr_clk vin1_b net1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM6N net1 vin2_b y_nor gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
.ends pfal_nor_or
*******************************************************************************