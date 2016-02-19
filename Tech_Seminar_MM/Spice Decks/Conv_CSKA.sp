** Generated for: hspiceD
** Generated on: Feb 19 01:01:59 2016
** Design library name: Tech_Seminar_MM
** Design cell name: cska_32test
** Design view name: schematic
.GLOBAL vdd!


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

** Library name: Tech_Seminar_MM
** Cell name: 10TFA_Pr
** View name: schematic
.subckt Tech_Seminar_MM_10TFA_Pr_schematic a b c cout axorb sum
mxm1n abar a 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2n axorb b abar 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3n cout axorb c 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4n cbar c 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5n sum axorb cbar 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p abar a vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p axorb b a vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3p cout axorb b vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm4p cbar c vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5p sum axorb c vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends Tech_Seminar_MM_10TFA_Pr_schematic
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
** Cell name: RCA_4bit
** View name: schematic
.subckt RCA_4bit a0 a1 a2 a3 b0 b1 b2 b3 cin cout p s0 s1 s2 s3
xi3 a0 b0 cin c0 pr0 s0 Tech_Seminar_MM_10TFA_Pr_schematic
xi2 a1 b1 c0 c1 pr1 s1 Tech_Seminar_MM_10TFA_Pr_schematic
xi1 a2 b2 c1 c2 pr2 s2 Tech_Seminar_MM_10TFA_Pr_schematic
xi0 a3 b3 c2 cout pr3 s3 Tech_Seminar_MM_10TFA_Pr_schematic
xi4 pr0 pr1 pr2 pr3 p and4
.ends RCA_4bit
** End of subcircuit definition.

** Library name: ALU
** Cell name: nand2
** View name: schematic
.subckt nand2 vin1 vin2 vout
mxm2n net1 vin2 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1n vout vin1 net1 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p vout vin2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p vout vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends nand2
** End of subcircuit definition.

** Library name: ALU
** Cell name: inv
** View name: schematic
.subckt inv vin vout
mxm1n vout vin 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p vout vin vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends inv
** End of subcircuit definition.

** Library name: ALU
** Cell name: mux2_1
** View name: schematic
.subckt mux2_1 a b s y
xi2 asbar bs y nand2
xi1 b s bs nand2
xi0 sbar a asbar nand2
xi3 s sbar inv
.ends mux2_1
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: Conv_CSKA
** View name: schematic
.subckt Conv_CSKA a0 a1 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a2 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a3 a30 a31 a4 a5 a6 a7 a8 a9 b0 b1 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b2 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b3 b30 b31 b4 b5 b6 b7 b8 b9 cin cout pout s0 s1 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s2 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s3 s30 s31 s4 s5 s6 s7 s8 s9
xi7 a28 a29 a30 a31 b28 b29 b30 b31 m6 cout pout s28 s29 s30 s31 RCA_4bit
xi6 a24 a25 a26 a27 b24 b25 b26 b27 m5 c27 p6 s24 s25 s26 s27 RCA_4bit
xi5 a20 a21 a22 a23 b20 b21 b22 b23 m4 c23 p5 s20 s21 s22 s23 RCA_4bit
xi4 a16 a17 a18 a19 b16 b17 b18 b19 m3 c19 p4 s16 s17 s18 s19 RCA_4bit
xi3 a12 a13 a14 a15 b12 b13 b14 b15 m2 c15 p3 s12 s13 s14 s15 RCA_4bit
xi2 a8 a9 a10 a11 b8 b9 b10 b11 m1 c11 p2 s8 s9 s10 s11 RCA_4bit
xi1 a4 a5 a6 a7 b4 b5 b6 b7 m0 c7 p1 s4 s5 s6 s7 RCA_4bit
xi0 a0 a1 a2 a3 b0 b1 b2 b3 cin c3 p0 s0 s1 s2 s3 RCA_4bit
xi14 c27 m5 p6 m6 mux2_1
xi13 c23 m4 p5 m5 mux2_1
xi12 c19 m3 p4 m4 mux2_1
xi11 c15 m2 p3 m3 mux2_1
xi10 c11 m1 p2 m2 mux2_1
xi9 c7 m0 p1 m1 mux2_1
xi8 c3 cin p0 m0 mux2_1
.ends Conv_CSKA
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: cska_32test
** View name: schematic
xi0 a0 a1 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a2 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a3 a30 a31 a4 a5 a6 a7 a8 a9 b0 b1 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b2 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b3 b30 b31 b4 b5 b6 b7 b8 b9 cin cout pout s0 s1 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s2 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s3 s30 s31 s4 s5 s6 s7 s8 s9 Conv_CSKA
.END
