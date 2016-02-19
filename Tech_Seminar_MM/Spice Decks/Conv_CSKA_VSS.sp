** Generated for: hspiceD
** Generated on: Feb 19 17:34:34 2016
** Design library name: Tech_Seminar_MM
** Design cell name: Conv_CSKA_VSS
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

** Library name: ALU
** Cell name: and2
** View name: schematic
.subckt and2 vin1 vin2 vout
mxm1n nand2 vin1 net1 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2n net1 vin2 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3n vout nand2 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p nand2 vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p nand2 vin2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3p vout nand2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends and2
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: RCA_2bit
** View name: schematic
.subckt RCA_2bit a0 a1 b0 b1 cin cout p s0 s1
xi3 a0 b0 cin c0 pr0 s0 Tech_Seminar_MM_10TFA_Pr_schematic
xi2 a1 b1 c0 cout pr1 s1 Tech_Seminar_MM_10TFA_Pr_schematic
xi0 pr0 pr1 p and2
.ends RCA_2bit
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: and3
** View name: schematic
.subckt and3 vin1 vin2 vin3 vout
mxm1n nand4 vin1 net1 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2n net1 vin2 net2 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5n vout nand4 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3n net2 vin3 0 0 gpdk045_nmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm1p nand4 vin1 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm2p nand4 vin2 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm5p vout nand4 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
mxm3p nand4 vin3 vdd! vdd! gpdk045_pmos1v L=45e-9 W=120e-9 AD=16.8e-15 AS=16.8e-15 PD=520e-9 PS=520e-9 NRD=1.16667 NRS=1.16667 M=1
.ends and3
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: RCA_3bit
** View name: schematic
.subckt RCA_3bit a0 a1 a2 b0 b1 b2 cin cout p s0 s1 s2
xi0 pr0 pr1 pr2 p and3
xi3 a0 b0 cin c0 pr0 s0 Tech_Seminar_MM_10TFA_Pr_schematic
xi2 a1 b1 c0 c1 pr1 s1 Tech_Seminar_MM_10TFA_Pr_schematic
xi1 a2 b2 c1 cout pr2 s2 Tech_Seminar_MM_10TFA_Pr_schematic
.ends RCA_3bit
** End of subcircuit definition.

** Library name: Tech_Seminar_MM
** Cell name: Conv_CSKA_VSS
** View name: schematic
xi8 a15 a16 a17 a18 b15 b16 b17 b18 m7 c18 p8 s15 s16 s17 s18 RCA_4bit
xi30 c30 m13 p14 m14 mux2_1
xi29 c29 m12 p13 m13 mux2_1
xi28 c28 m11 p12 m12 mux2_1
xi27 c26 m10 p11 m11 mux2_1
xi26 c24 m9 p10 m10 mux2_1
xi25 c21 m8 p9 m9 mux2_1
xi24 c18 m7 p8 m8 mux2_1
xi23 c14 m6 p7 m7 mux2_1
xi22 c11 m5 p6 m6 mux2_1
xi21 c8 m4 p5 m5 mux2_1
xi20 c6 m3 p4 m4 mux2_1
xi19 c4 m2 p3 m3 mux2_1
xi18 c2 m1 p2 m2 mux2_1
xi17 c1 m0 p1 m1 mux2_1
xi16 c0 cin p0 m0 mux2_1
xi1 a1 b1 m0 c1 p1 s1 Tech_Seminar_MM_10TFA_Pr_schematic
xi2 a2 b2 m1 c2 p2 s2 Tech_Seminar_MM_10TFA_Pr_schematic
xi0 a0 b0 cin c0 p0 s0 Tech_Seminar_MM_10TFA_Pr_schematic
xi15 a31 b31 m14 cout pout s31 Tech_Seminar_MM_10TFA_Pr_schematic
xi13 a29 b29 m12 c29 p13 s29 Tech_Seminar_MM_10TFA_Pr_schematic
xi14 a30 b30 m13 c30 p14 s30 Tech_Seminar_MM_10TFA_Pr_schematic
xi4 a5 a6 b5 b6 m3 c6 p4 s5 s6 RCA_2bit
xi3 a3 a4 b3 b4 m2 c4 p3 s3 s4 RCA_2bit
xi12 a27 a28 b27 b28 m11 c28 p12 s27 s28 RCA_2bit
xi11 a25 a26 b25 b26 m10 c26 p11 s25 s26 RCA_2bit
xi5 a7 a8 b7 b8 m4 c8 p5 s7 s8 RCA_2bit
xi9 a19 a20 a21 b19 b20 b21 m8 c21 p9 s19 s20 s21 RCA_3bit
xi7 a12 a13 a14 b12 b13 b14 m6 c14 p7 s12 s13 s14 RCA_3bit
xi6 a9 a10 a11 b9 b10 b11 m5 c11 p6 s9 s10 s11 RCA_3bit
xi10 a22 a23 a24 b22 b23 b24 m9 c24 p10 s22 s23 s24 RCA_3bit
.END
