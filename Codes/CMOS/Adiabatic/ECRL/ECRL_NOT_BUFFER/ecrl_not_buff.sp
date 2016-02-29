*****************NOT_BUFFER*****************
.subckt adiabatic_not_buffer clk a ab y_not y_buf
xM1P y_buf y_not clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P y_not y_buf clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

xM1N y_not a gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N y_buf ab gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

.ends adiabatic_not_buffer
