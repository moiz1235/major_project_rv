RCA

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\Adders\Conventional_fulladder\full_adder.sp"

.include "F:\MAJOR_PROJECT\Codes\CMOS\Adiabatic\ECRL\ECRL_NOT_BUFFER\ecrl_not_buff.sp"

.subckt ripple_carry_adder clk1 clk2 clk3 clk4 a0 a1 a2 a3 a4 a5 a6 a7 b0 b1 b2 b3 b4 b5 b6 b7 cin a0b a1b a2b a3b a4b a5b a6b a7b b0b b1b b2b b3b b4b b5b b6b b7b cinb s0 s1 s2 s3 s4 s5 s6 s7 cout s0b s1b s2b s3b s4b s5b s6b s7b coutb 

****1st stage*****
xadder1 a0 a0b b0 b0b cin cinb clk1 s01 s01b c1 c1b full_adder
xinv_buf1 clk1 a1 a1b  a11b a11 adiabatic_not_buffer
xinv_buf2 clk1 a2 a2b  a21b a21 adiabatic_not_buffer
xinv_buf3 clk1 a3 a3b  a31b a31 adiabatic_not_buffer
xinv_buf4 clk1 a4 a4b  a41b a41 adiabatic_not_buffer
xinv_buf5 clk1 a5 a5b  a51b a51 adiabatic_not_buffer
xinv_buf6 clk1 a6 a6b  a61b a61 adiabatic_not_buffer
xinv_buf7 clk1 a7 a7b  a71b a71 adiabatic_not_buffer
xinv_buf8 clk1 b1 b1b  b11b b11 adiabatic_not_buffer
xinv_buf9 clk1 b2 b2b  b21b b21 adiabatic_not_buffer
xinv_buf10 clk1 b3 b3b  b31b b31 adiabatic_not_buffer
xinv_buf11 clk1 b4 b4b  b41b b41 adiabatic_not_buffer
xinv_buf12 clk1 b5 b5b  b51b b51 adiabatic_not_buffer
xinv_buf13 clk1 b6 b6b  b61b b61 adiabatic_not_buffer
xinv_buf14 clk1 b7 b7b  b71b b71 adiabatic_not_buffer

****2st stage*****
xadder2 a11 a11b b11 b11b c1 c1b clk2 s12 s12b c2 c2b full_adder
xinv_buf15 clk2 s01 s01b s02b s02 adiabatic_not_buffer
xinv_buf16 clk2 a21 a21b a22b a22 adiabatic_not_buffer
xinv_buf17 clk2 a31 a31b a32b a32 adiabatic_not_buffer
xinv_buf18 clk2 a41 a41b a42b a42 adiabatic_not_buffer
xinv_buf19 clk2 a51 a51b a52b a52 adiabatic_not_buffer
xinv_buf20 clk2 a61 a61b a62b a62 adiabatic_not_buffer
xinv_buf21 clk2 a71 a71b a72b a72 adiabatic_not_buffer
xinv_buf22 clk2 b21 b21b b22b b22 adiabatic_not_buffer
xinv_buf23 clk2 b31 b31b b32b b32 adiabatic_not_buffer
xinv_buf24 clk2 b41 b41b b42b b42 adiabatic_not_buffer
xinv_buf25 clk2 b51 b51b b52b b52 adiabatic_not_buffer
xinv_buf26 clk2 b61 b61b b62b b62 adiabatic_not_buffer
xinv_buf27 clk2 b71 b71b b72b b72 adiabatic_not_buffer

****3st stage*****
xadder3 a22 a22b b22 b22b c2 c2b clk3 s23 s23b c3 c3b full_adder
xinv_buf28 clk3 s02 s02b  s03b s03 adiabatic_not_buffer
xinv_buf29 clk3 s12 s12b  s13b s13 adiabatic_not_buffer
xinv_buf30 clk3 a32 a32b  a33b a33 adiabatic_not_buffer
xinv_buf31 clk3 a42 a42b  a43b a43 adiabatic_not_buffer
xinv_buf32 clk3 a52 a52b  a53b a53 adiabatic_not_buffer
xinv_buf33 clk3 a62 a62b  a63b a63 adiabatic_not_buffer
xinv_buf34 clk3 a72 a72b  a73b a73 adiabatic_not_buffer
xinv_buf35 clk3 b32 b32b  b33b b33 adiabatic_not_buffer
xinv_buf36 clk3 b42 b42b  b43b b43 adiabatic_not_buffer
xinv_buf37 clk3 b52 b52b  b53b b53 adiabatic_not_buffer
xinv_buf38 clk3 b62 b62b  b63b b63 adiabatic_not_buffer
xinv_buf39 clk3 b72 b72b  b73b b73 adiabatic_not_buffer

****4st stage*****
xadder4 a33 a33b b33 b33b c3 c3b clk4 s34 s34b c4 c4b full_adder
xinv_buf40 clk4 s03 s03b  s04b s04 adiabatic_not_buffer
xinv_buf41 clk4 s13 s13b  s14b s14 adiabatic_not_buffer
xinv_buf42 clk4 s23 s23b  s24b s24 adiabatic_not_buffer
xinv_buf43 clk4 a43 a43b  a44b a44 adiabatic_not_buffer
xinv_buf44 clk4 a53 a53b  a54b a54 adiabatic_not_buffer
xinv_buf45 clk4 a63 a63b  a64b a64 adiabatic_not_buffer
xinv_buf46 clk4 a73 a73b  a74b a74 adiabatic_not_buffer
xinv_buf47 clk4 b43 b43b  b44b b44 adiabatic_not_buffer
xinv_buf48 clk4 b53 b53b  b54b b54 adiabatic_not_buffer
xinv_buf49 clk4 b63 b63b  b64b b64 adiabatic_not_buffer
xinv_buf50 clk4 b73 b73b  b74b b74 adiabatic_not_buffer


****5st stage*****
xadder5 a44 a44b b44 b44b c4 c4b clk1 s45 s45b c5 c5b full_adder
xinv_buf51 clk1 s04 s04b s05b s05 adiabatic_not_buffer
xinv_buf52 clk1 s14 s14b s15b s15 adiabatic_not_buffer
xinv_buf53 clk1 s24 s24b s25b s25 adiabatic_not_buffer
xinv_buf54 clk1 s34 s34b s35b s35 adiabatic_not_buffer
xinv_buf55 clk1 a54 a54b a55b a55 adiabatic_not_buffer
xinv_buf56 clk1 a64 a64b a65b a65 adiabatic_not_buffer
xinv_buf57 clk1 a74 a74b a75b a75 adiabatic_not_buffer
xinv_buf58 clk1 b54 b54b b55b b55 adiabatic_not_buffer
xinv_buf59 clk1 b64 b64b b65b b65 adiabatic_not_buffer
xinv_buf60 clk1 b74 b74b b75b b75 adiabatic_not_buffer


****6st stage*****
xadder6 a55 a55b b55 b55b c5 c5b clk2 s56 s56b c6 c6b full_adder
xinv_buf61 clk2 s05 s05b s06b s06 adiabatic_not_buffer
xinv_buf62 clk2 s15 s15b s16b s16 adiabatic_not_buffer
xinv_buf63 clk2 s25 s25b s26b s26 adiabatic_not_buffer
xinv_buf64 clk2 s35 s35b s36b s36 adiabatic_not_buffer
xinv_buf65 clk2 s45 s45b s46b s46 adiabatic_not_buffer
xinv_buf66 clk2 a65 a65b a66b a66 adiabatic_not_buffer
xinv_buf67 clk2 a75 a75b a76b a76 adiabatic_not_buffer
xinv_buf68 clk2 b65 b65b b66b b66 adiabatic_not_buffer
xinv_buf69 clk2 b75 b75b b76b b76 adiabatic_not_buffer

****7st stage*****
xadder7 a66 a66b b66 b66b c6 c6b clk3 s67 s67b c7 c7b full_adder
xinv_buf70 clk3 s06 s06b s07b s07 adiabatic_not_buffer
xinv_buf71 clk3 s16 s16b s17b s17 adiabatic_not_buffer
xinv_buf72 clk3 s26 s26b s27b s27 adiabatic_not_buffer
xinv_buf73 clk3 s36 s36b s37b s37 adiabatic_not_buffer
xinv_buf74 clk3 s46 s46b s47b s47 adiabatic_not_buffer
xinv_buf75 clk3 s56 s56b s57b s57 adiabatic_not_buffer
xinv_buf76 clk3 a76 a76b a77b a77 adiabatic_not_buffer
xinv_buf77 clk3 b76 b76b b77b b77 adiabatic_not_buffer

****8st stage*****
xadder8 a77 a77b b77 b77b c7 c7b clk4 s7 s7b cout coutb full_adder
xinv_buf78 clk4 s07 s07b s0b s0 adiabatic_not_buffer
xinv_buf79 clk4 s17 s17b s1b s1 adiabatic_not_buffer
xinv_buf80 clk4 s27 s27b s2b s2 adiabatic_not_buffer
xinv_buf81 clk4 s37 s37b s3b s3 adiabatic_not_buffer
xinv_buf82 clk4 s47 s47b s4b s4 adiabatic_not_buffer
xinv_buf83 clk4 s57 s57b s5b s5 adiabatic_not_buffer
xinv_buf84 clk4 s67 s67b s6b s6 adiabatic_not_buffer

.ends ripple_carry_adder
