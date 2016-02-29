full_adder

*******************FULL ADDER******************
.subckt full_adder a ab b bb c cb clk s sb cout coutb

xM1P s sb clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2P sb s clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb1N s sb gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb2N sb s gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

*********SUM N tree********
xM1N clk cb vns1 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM2N clk c vns2 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM3N vns1 b vns3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4N vns1 bb vns4 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM5N vns2 bb vns3 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM6N vns2 b vns4 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM7N vns3 a sb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM8N vns4 ab sb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

*********SUM Nb tree********
xM9N clk c vns9 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM10N clk cb vns10 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM11N vns9 bb vns11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM12N vns9 b vns12 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM13N vns10 b vns11 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM14N vns10 bb vns12 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM15N vns11 ab s gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM16N vns12 a s gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0


xM3P cout coutb clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM4P coutb cout clk clk gnrfetpmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb3N cout coutb gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xMb4N coutb cout gnd gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
*********CARRY N tree********
xM17N clk cb vns17 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM18N clk ab vns18 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM19N vns17 ab coutb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM20N vns17 bb coutb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM21N vns18 bb coutb gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

*********SUM Nb tree********
xM22N clk c vns22 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM23N clk a vns23 gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM24N vns22 a cout gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM25N vns22 b cout gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0
xM26N vns23 b cout gnd gnrfetnmos nRib=6 n=12 L=10n Tox=0.95n sp=2n dop=0.001 p=0

.ends full_adder

end
