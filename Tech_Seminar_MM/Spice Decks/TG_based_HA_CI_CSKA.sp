** Generated for: hspiceD
** Generated on: Feb 22 20:30:47 2016
** Design library name: Tech_Seminar_MM
** Design cell name: CI_CSKA_FSS_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 100e-12 80e-9 START=0.0

.OP

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

** Library name: Tech_Seminar_MM
** Cell name: aoi_21
** View name: schematic
.subckt aoi_21 vin1 vin2 vin3 vout
mnm2 net2 vin3 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mnm1 vout vin2 net2 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mnm0 vout vin1 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm2 net1 vin3 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm1 net1 vin2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm0 vout vin1 net1 vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends aoi_21
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: inv
** View name: schematic
.subckt inv vin vout
mxm1n vout vin 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p vout vin vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends inv
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: oai_21
** View name: schematic
.subckt oai_21 vin1 vin2 vin3 vout
mnm2 net2 vin3 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mnm1 vout vin1 net2 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mnm0 net2 vin2 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm2 vout vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm1 net1 vin3 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm0 vout vin2 net1 vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends oai_21
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: and4
** View name: schematic
.subckt and4 vin1 vin2 vin3 vin4 vout
mxm4n net3 vin4 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3n net2 vin3 net3 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5n vout nand4 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2n net1 vin2 net2 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1n nand4 vin1 net1 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4p nand4 vin4 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3p nand4 vin3 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5p vout nand4 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p nand4 vin2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p nand4 vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends and4
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: 10TFA
** View name: schematic
.subckt Tech_Seminar_MM_10TFA_schematic a b c cout sum
mxm1n abar a 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2n axnorb b a 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3n net13 axnorb b 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4n cbar c 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5n sumb axnorb cbar 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p abar a vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p axnorb b abar vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3p net13 axnorb c vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4p cbar c vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5p sumb axnorb c vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
xi3 sumb sum inv
xi4 net13 net29 inv
xi5 net29 cout inv
.ends Tech_Seminar_MM_10TFA_schematic
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: RCA_4bit_nopr
** View name: schematic
.subckt RCA_4bit_nopr a0 a1 a2 a3 b0 b1 b2 b3 cin cout s0 s1 s2 s3
xi2 a2 b2 c1 c2 s2 Tech_Seminar_MM_10TFA_schematic
xi3 a3 b3 c2 cout s3 Tech_Seminar_MM_10TFA_schematic
xi1 a1 b1 c0 c1 s1 Tech_Seminar_MM_10TFA_schematic
xi0 a0 b0 cin c0 s0 Tech_Seminar_MM_10TFA_schematic
.ends RCA_4bit_nopr
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: nand4
** View name: schematic
.subckt nand4 vin1 vin2 vin3 vin4 vout
mxm2n net1 vin2 net2 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3n net2 vin3 net3 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4n net3 vin4 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1n vout vin1 net1 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p vout vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p vout vin2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3p vout vin3 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4p vout vin4 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends nand4
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: TG
** View name: schematic
.subckt TG sel selb vin vout
mnm0 vin sel vout 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mpm0 vin selb vout vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends TG
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: 6THA
** View name: schematic
.subckt Tech_Seminar_MM_6THA_schematic a b cout sum
xi8 b bbar inv
xi7 a abar inv
xi9 b bbar a cout TG
xi5 b bbar abar sum TG
xi10 bbar b 0 cout TG
xi6 bbar b a sum TG
.ends Tech_Seminar_MM_6THA_schematic
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: xor2
** View name: schematic
.subckt xor2 vin1 vin2 vout
mxm1n abar vin1 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2n voutb vin2 vin1 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p abar vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p voutb vin2 abar vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
xi2 voutb vout inv
.ends xor2
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: incr_4bit
** View name: schematic
.subckt incr_4bit a0 a1 a2 a3 cin s0 s1 s2 s3
xi2 a2 c2 c3 s2 Tech_Seminar_MM_6THA_schematic
xi1 a1 c1 c2 s1 Tech_Seminar_MM_6THA_schematic
xi0 a0 cin c1 s0 Tech_Seminar_MM_6THA_schematic
xi4 a3 c3 s3 xor2
.ends incr_4bit
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: CI_CSKA_FSS
** View name: schematic
.subckt CI_CSKA_FSS a0 a1 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a2 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a3 a30 a31 a4 a5 a6 a7 a8 a9 b0 b1 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b2 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b3 b30 b31 b4 b5 b6 b7 b8 b9 cin cout so0 so1 so10 so11 so12 so13 so14 so15 so16 so17 so18 so19 so2 so20 so21 so22 so23 so24 so25 so26 so27 so28 so29 so3 so30 so31 so4 so5 so6 so7 so8 so9
xi11 c8 co7 and4 co8b aoi_21
xi10 c6 co5 and3 co6b aoi_21
xi9 c4 co3 and2 co4b aoi_21
xi8 c2 c1 and1 co2b aoi_21
xi55 c3 c3b inv
xi56 c5 c5b inv
xi57 c7 c7b inv
xi58 co2b co2 inv
xi59 co4b co4 inv
xi60 co6b co6 inv
xi61 co8b cout inv
xi14 c7b co6b nand3 co7 oai_21
xi13 c5b co4b nand2 co5 oai_21
xi12 c3b co2b nand1 co3 oai_21
xi62 s4 s5 s6 s7 and1 and4
xi63 s12 s13 s14 s15 and2 and4
xi64 s20 s21 s22 s23 and3 and4
xi65 s28 s29 s30 s31 and4 and4
xi0 a0 a1 a2 a3 b0 b1 b2 b3 cin c1 so0 so1 so2 so3 RCA_4bit_nopr
xi1 a4 a5 a6 a7 b4 b5 b6 b7 0 c2 s4 s5 s6 s7 RCA_4bit_nopr
xi2 a8 a9 a10 a11 b8 b9 b10 b11 0 c3 s8 s9 s10 s11 RCA_4bit_nopr
xi3 a12 a13 a14 a15 b12 b13 b14 b15 0 c4 s12 s13 s14 s15 RCA_4bit_nopr
xi4 a16 a17 a18 a19 b16 b17 b18 b19 0 c5 s16 s17 s18 s19 RCA_4bit_nopr
xi5 a20 a21 a22 a23 b20 b21 b22 b23 0 c6 s20 s21 s22 s23 RCA_4bit_nopr
xi6 a24 a25 a26 a27 b24 b25 b26 b27 0 c7 s24 s25 s26 s27 RCA_4bit_nopr
xi7 a28 a29 a30 a31 b28 b29 b30 b31 0 c8 s28 s29 s30 s31 RCA_4bit_nopr
xi66 s8 s9 s10 s11 nand1 nand4
xi67 s16 s17 s18 s19 nand2 nand4
xi68 s24 s25 s26 s27 nand3 nand4
xi69 s4 s5 s6 s7 c1 so4 so5 so6 so7 incr_4bit
xi70 s8 s9 s10 s11 co2 so8 so9 so10 so11 incr_4bit
xi71 s12 s13 s14 s15 co3 so12 so13 so14 so15 incr_4bit
xi72 s16 s17 s18 s19 co4 so16 so17 so18 so19 incr_4bit
xi73 s20 s21 s22 s23 co5 so20 so21 so22 so23 incr_4bit
xi74 s24 s25 s26 s27 co6 so24 so25 so26 so27 incr_4bit
xi75 s28 s29 s30 s31 co7 so28 so29 so30 so31 incr_4bit
.ends CI_CSKA_FSS
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: CI_CSKA_FSS_test
** View name: schematic
v1 net37 0 PULSE 0 1.2 0 10e-9
v0 net35 0 PULSE 0 1.2 0 40e-9
v2 vdd! 0 DC=1.2
xi7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net35 net37 cout so0 so1 so10 so11 so12 so13 so14 so15 so16 so17 so18 so19 so2 so20 so21 so22 so23 so24 so25 so26 so27 so28 so29 so3 so30 so31 so4 so5 so6 so7 so8 so9 CI_CSKA_FSS
.END
