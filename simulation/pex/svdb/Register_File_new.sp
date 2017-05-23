* SPICE NETLIST
***************************************

.SUBCKT sram_dummy_8t122_0 vss! WBL vddcol
** N=9 EP=3 IP=0 FDC=3
M0 vss! vss! WBL vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=68 $Y=54 $D=3
M1 vss! vss! vss! vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=68 $Y=810 $D=3
M2 vss! vss! vddcol vddcol pmos_sram L=2e-08 W=2.7e-08 nfin=1 $X=68 $Y=594 $D=2
.ENDS
***************************************
.SUBCKT sram_8t122_11wideLISD WWL RWL 3 WBL vss! vddcol WBLN RBL
** N=10 EP=8 IP=0 FDC=8
M0 3 WWL WBL vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=68 $Y=54 $D=3
M1 9 3 vss! vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=68 $Y=810 $D=3
M2 10 3 vss! vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=68 $Y=1242 $D=3
M3 vss! 9 3 vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=284 $Y=54 $D=3
M4 WBLN WWL 9 vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=284 $Y=810 $D=3
M5 RBL RWL 10 vss! nmos_sram L=2e-08 W=5.4e-08 nfin=2 $X=284 $Y=1242 $D=3
M6 9 3 vddcol vddcol pmos_sram L=2e-08 W=2.7e-08 nfin=1 $X=68 $Y=594 $D=2
M7 vddcol 9 3 vddcol pmos_sram L=2e-08 W=2.7e-08 nfin=1 $X=284 $Y=378 $D=2
.ENDS
***************************************
.SUBCKT RF_8t1122_8x1 vss! wwl<7> rwl<7> wwl<6> rwl<6> wwl<5> rwl<5> wwl<4> rwl<4> wwl<3> rwl<3> wwl<2> rwl<2> wwl<1> rwl<1> wwl<0> rwl<0> vdd! WBL WBLN
+ RBL 22 23 24 25 26 27 28 29
** N=31 EP=29 IP=78 FDC=70
X0 vss! WBL vdd! sram_dummy_8t122_0 $T=864 0 1 180 $X=324 $Y=-162
X1 vss! WBL vdd! sram_dummy_8t122_0 $T=4320 0 0 0 $X=4212 $Y=-162
X2 wwl<7> rwl<7> 22 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=864 0 0 0 $X=756 $Y=-162
X3 wwl<6> rwl<6> 23 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=1728 0 1 180 $X=1186 $Y=-162
X4 wwl<5> rwl<5> 24 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=1728 0 0 0 $X=1620 $Y=-162
X5 wwl<4> rwl<4> 25 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=2592 0 1 180 $X=2050 $Y=-162
X6 wwl<3> rwl<3> 26 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=2592 0 0 0 $X=2484 $Y=-162
X7 wwl<2> rwl<2> 27 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=3456 0 1 180 $X=2914 $Y=-162
X8 wwl<1> rwl<1> 28 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=3456 0 0 0 $X=3348 $Y=-162
X9 wwl<0> rwl<0> 29 WBL vss! vdd! WBLN RBL sram_8t122_11wideLISD $T=4320 0 1 180 $X=3778 $Y=-162
.ENDS
***************************************
.SUBCKT dummy_interface
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT RF_8t_RBLkeeper vss! vdd! 3 RBL prechn
** N=13 EP=5 IP=0 FDC=5
M0 3 RBL vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=716 $Y=270 $D=1
M1 13 3 RBL vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=284 $Y=1134 $D=0
M2 vdd! 3 13 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=500 $Y=1134 $D=0
M3 3 RBL vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=716 $Y=1134 $D=0
M4 vdd! prechn RBL vdd! pmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=1364 $Y=1026 $D=0
.ENDS
***************************************
.SUBCKT RF_8t1122_16x1colgrp vss! vdd! 3 4 5 6 7 8 9 10 11 clk prech we dn wwl<7> rwl<7> rwl<6> wwl<6> wwl<5>
+ rwl<5> rwl<4> wwl<4> wwl<3> rwl<3> rwl<2> wwl<2> wwl<1> rwl<1> rwl<0> wwl<0> wwl<15> rwl<15> rwl<14> wwl<14> wwl<13> rwl<13> rwl<12> wwl<12> wwl<11>
+ rwl<11> rwl<10> wwl<10> wwl<9> rwl<9> rwl<8> wwl<8> Q 49 64 65 66 67 68 69 70 71 72 73 74
+ 75 76 77 78 79 85 90
** N=106 EP=67 IP=90 FDC=192
M0 94 3 vss! vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=5682 $Y=396 $D=1
M1 vss! 4 94 vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=5898 $Y=396 $D=1
M2 95 5 vss! vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=6114 $Y=396 $D=1
M3 vss! 3 95 vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=6330 $Y=396 $D=1
M4 vss! 6 Q vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=8706 $Y=288 $D=1
M5 vss! 6 7 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=9354 $Y=396 $D=1
M6 101 7 vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=9570 $Y=396 $D=1
M7 6 9 101 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=9786 $Y=396 $D=1
M8 100 8 6 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=10002 $Y=396 $D=1
M9 102 10 100 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=10434 $Y=396 $D=1
M10 vss! 11 102 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=10650 $Y=396 $D=1
M11 vss! 8 9 vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=11298 $Y=396 $D=1
M12 8 clk vss! vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=11514 $Y=396 $D=1
M13 vss! prech 49 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=13890 $Y=396 $D=1
M14 3 we vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=14106 $Y=396 $D=1
M15 vss! 5 4 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=14754 $Y=396 $D=1
M16 5 dn vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=14970 $Y=396 $D=1
M17 97 3 vss! vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=15618 $Y=396 $D=1
M18 vss! 5 97 vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=15834 $Y=396 $D=1
M19 98 4 vss! vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=16050 $Y=396 $D=1
M20 vss! 3 98 vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=16266 $Y=396 $D=1
M21 103 3 94 vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=5682 $Y=1044 $D=0
M22 vdd! 4 103 vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=5898 $Y=1044 $D=0
M23 104 5 vdd! vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=6114 $Y=1044 $D=0
M24 95 3 104 vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=6330 $Y=1044 $D=0
M25 vdd! 6 Q vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=8706 $Y=1044 $D=0
M26 vdd! 6 7 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=9354 $Y=1152 $D=0
M27 99 7 vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=9570 $Y=1152 $D=0
M28 6 8 99 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=10002 $Y=1152 $D=0
M29 96 9 6 vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=10218 $Y=1044 $D=0
M30 vdd! 10 96 vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=10434 $Y=1044 $D=0
M31 96 11 vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=10650 $Y=1044 $D=0
M32 vdd! 8 9 vdd! pmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=11298 $Y=1044 $D=0
M33 8 clk vdd! vdd! pmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=11514 $Y=1044 $D=0
M34 vdd! prech 49 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=13890 $Y=1260 $D=0
M35 3 we vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=14106 $Y=1260 $D=0
M36 vdd! 5 4 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=14754 $Y=1260 $D=0
M37 5 dn vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=14970 $Y=1260 $D=0
M38 105 3 97 vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=15618 $Y=1044 $D=0
M39 vdd! 5 105 vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=15834 $Y=1044 $D=0
M40 106 4 vdd! vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=16050 $Y=1044 $D=0
M41 98 3 106 vdd! pmos_rvt L=2e-08 W=1.08e-07 nfin=4 $X=16266 $Y=1044 $D=0
X42 vss! wwl<7> rwl<7> wwl<6> rwl<6> wwl<5> rwl<5> wwl<4> rwl<4> wwl<3> rwl<3> wwl<2> rwl<2> wwl<1> rwl<1> wwl<0> rwl<0> vdd! 95 94
+ 10 64 65 66 67 68 69 70 71
+ RF_8t1122_8x1 $T=214 1638 1 0 $X=106 $Y=0
X43 vss! wwl<15> rwl<15> wwl<14> rwl<14> wwl<13> rwl<13> wwl<12> rwl<12> wwl<11> rwl<11> wwl<10> rwl<10> wwl<9> rwl<9> wwl<8> rwl<8> vdd! 97 98
+ 11 72 73 74 75 76 77 78 79
+ RF_8t1122_8x1 $T=21814 1638 0 180 $X=16954 $Y=0
X46 vss! vdd! 85 10 49 RF_8t_RBLkeeper $T=6694 126 0 0 $X=6566 $Y=40
X47 vss! vdd! 90 11 49 RF_8t_RBLkeeper $T=13606 126 1 180 $X=11806 $Y=40
.ENDS
***************************************
.SUBCKT RF_16x8cells 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 65 66 67 70 71 74 77 80 81 82 83 90 100 101 102 103 104 105 106
+ 107
** N=457 EP=81 IP=744 FDC=1536
X0 1 18 65 66 67 77 80 82 81 71 83 51 53 52 43 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 35 74 54 55 56 57 58 59 60 61 107 106 105
+ 104 103 102 101 100 70 90
+ RF_8t1122_16x1colgrp $T=-28 0 0 0 $X=78 $Y=0
X1 1 18 117 118 119 129 132 134 133 123 135 51 53 52 44 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 36 126 108 109 110 111 112 113 114 115 157 156 155
+ 154 153 152 151 150 122 142
+ RF_8t1122_16x1colgrp $T=-28 3276 1 0 $X=78 $Y=1476
X2 1 18 167 168 169 179 182 184 183 173 185 51 53 52 45 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 37 176 158 159 160 161 162 163 164 165 207 206 205
+ 204 203 202 201 200 172 192
+ RF_8t1122_16x1colgrp $T=-28 3024 0 0 $X=78 $Y=3024
X3 1 18 217 218 219 229 232 234 233 223 235 51 53 52 46 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 38 226 208 209 210 211 212 213 214 215 257 256 255
+ 254 253 252 251 250 222 242
+ RF_8t1122_16x1colgrp $T=-28 6300 1 0 $X=78 $Y=4500
X4 1 18 267 268 269 279 282 284 283 273 285 51 53 52 47 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 39 276 258 259 260 261 262 263 264 265 307 306 305
+ 304 303 302 301 300 272 292
+ RF_8t1122_16x1colgrp $T=-28 6048 0 0 $X=78 $Y=6048
X5 1 18 317 318 319 329 332 334 333 323 335 51 53 52 48 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 40 326 308 309 310 311 312 313 314 315 357 356 355
+ 354 353 352 351 350 322 342
+ RF_8t1122_16x1colgrp $T=-28 9324 1 0 $X=78 $Y=7524
X6 1 18 367 368 369 379 382 384 383 373 385 51 53 52 49 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 41 376 358 359 360 361 362 363 364 365 407 406 405
+ 404 403 402 401 400 372 392
+ RF_8t1122_16x1colgrp $T=-28 9072 0 0 $X=78 $Y=9072
X7 1 18 417 418 419 429 432 434 433 423 435 51 53 52 50 2 3 4 5 6
+ 7 8 9 10 11 12 13 14 15 16 17 34 33 32 31 30 29 28 27 26
+ 25 24 23 22 21 20 19 42 426 408 409 410 411 412 413 414 415 457 456 455
+ 454 453 452 451 450 422 442
+ RF_8t1122_16x1colgrp $T=-28 12348 1 0 $X=78 $Y=10548
.ENDS
***************************************
.SUBCKT RF_dummy_interface
** N=7 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=13 EP=0 IP=14 FDC=0
.ENDS
***************************************
.SUBCKT ICV_2
** N=25 EP=0 IP=26 FDC=0
.ENDS
***************************************
.SUBCKT ICV_3
** N=49 EP=0 IP=50 FDC=0
.ENDS
***************************************
.SUBCKT ICV_4
** N=97 EP=0 IP=98 FDC=0
.ENDS
***************************************
.SUBCKT RF_dummy_array
** N=226 EP=0 IP=304 FDC=0
.ENDS
***************************************
.SUBCKT Filler_ASAP7_75t_R
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT INVx7_ASAP7_75t_R vss! vdd! A Y
** N=6 EP=4 IP=0 FDC=2
M0 Y A vss! vss! nmos_rvt L=2e-08 W=1.89e-07 nfin=7 $X=284 $Y=0 $D=1
M1 Y A vdd! vdd! pmos_rvt L=2e-08 W=1.89e-07 nfin=7 $X=284 $Y=1188 $D=0
.ENDS
***************************************
.SUBCKT ICV_5 1 2 3 4 5 6
** N=10 EP=6 IP=12 FDC=4
X0 2 1 3 4 INVx7_ASAP7_75t_R $T=0 0 0 0 $X=0 $Y=-196
X1 2 1 5 6 INVx7_ASAP7_75t_R $T=1296 0 1 180 $X=648 $Y=-196
.ENDS
***************************************
.SUBCKT INVx3_ASAP7_75t_R vss! vdd! A Y
** N=6 EP=4 IP=0 FDC=2
M0 Y A vss! vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=284 $Y=0 $D=1
M1 Y A vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=284 $Y=1620 $D=0
.ENDS
***************************************
.SUBCKT NANDx1_ASAP7_75t_R vss! A vdd! B C
** N=8 EP=5 IP=0 FDC=4
M0 6 A vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=284 $Y=108 $D=1
M1 C B 6 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=500 $Y=108 $D=1
M2 vdd! A C vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=284 $Y=1728 $D=0
M3 C B vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=500 $Y=1728 $D=0
.ENDS
***************************************
.SUBCKT NANDx5_ASAP7_75t_R vss! vdd! A B C
** N=8 EP=5 IP=0 FDC=4
M0 8 A vss! vss! nmos_rvt L=2e-08 W=1.35e-07 nfin=5 $X=284 $Y=0 $D=1
M1 C B 8 vss! nmos_rvt L=2e-08 W=1.35e-07 nfin=5 $X=500 $Y=0 $D=1
M2 C A vdd! vdd! pmos_rvt L=2e-08 W=1.35e-07 nfin=5 $X=284 $Y=1404 $D=0
M3 vdd! B C vdd! pmos_rvt L=2e-08 W=1.35e-07 nfin=5 $X=500 $Y=1404 $D=0
.ENDS
***************************************
.SUBCKT ICV_6 1 2 3 4 5 6 7
** N=10 EP=7 IP=14 FDC=8
X0 2 1 3 5 4 NANDx5_ASAP7_75t_R $T=216 0 1 180 $X=-648 $Y=-196
X1 2 1 3 7 6 NANDx5_ASAP7_75t_R $T=0 0 0 0 $X=0 $Y=-196
.ENDS
***************************************
.SUBCKT NAND3x1_ASAP7_75t_R vss! vdd! A B C Y
** N=10 EP=6 IP=0 FDC=6
M0 8 A vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=284 $Y=0 $D=1
M1 9 B 8 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=500 $Y=0 $D=1
M2 Y C 9 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=716 $Y=0 $D=1
M3 Y A vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=284 $Y=1836 $D=0
M4 vdd! B Y vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=500 $Y=1836 $D=0
M5 Y C vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=716 $Y=1836 $D=0
.ENDS
***************************************
.SUBCKT TAPCELL_ASAP7_75t_R
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT INVx8_ASAP7_75t_R vss! vdd! A Y
** N=6 EP=4 IP=0 FDC=2
M0 Y A vss! vss! nmos_rvt L=2e-08 W=2.16e-07 nfin=8 $X=284 $Y=0 $D=1
M1 Y A vdd! vdd! pmos_rvt L=2e-08 W=2.16e-07 nfin=8 $X=284 $Y=1080 $D=0
.ENDS
***************************************
.SUBCKT Decoder_4x16_ASAP7_75t_R_new A3 vss! vdd! 4 A0 A1 A2 8 9 10 11 12 13 word7 word6 16 17 word5 word4 20
+ 21 word3 word2 24 25 word1 word0 28 word8 word9 31 32 word10 word11 35 36 word12 word13 39 word14
+ word15 42 43 44 45 46 47 48 en
** N=140 EP=49 IP=316 FDC=180
M0 vss! A3 102 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=91336 $Y=6168 $D=1
M1 vdd! A3 102 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=91336 $Y=7788 $D=0
X7 vdd! vss! 4 word7 16 word6 ICV_5 $T=72908 10164 1 0 $X=72908 $Y=8024
X8 vdd! vss! 17 word5 20 word4 ICV_5 $T=73988 10164 1 0 $X=73988 $Y=8024
X9 vdd! vss! 21 word3 24 word2 ICV_5 $T=75068 10164 1 0 $X=75068 $Y=8024
X10 vdd! vss! 25 word1 8 word0 ICV_5 $T=76148 10164 1 0 $X=76148 $Y=8024
X11 vdd! vss! 28 word8 31 word9 ICV_5 $T=89972 10164 1 0 $X=89972 $Y=8024
X12 vdd! vss! 32 word10 35 word11 ICV_5 $T=91052 10164 1 0 $X=91052 $Y=8024
X13 vdd! vss! 36 word12 39 word13 ICV_5 $T=92132 10164 1 0 $X=92132 $Y=8024
X14 vdd! vss! 12 word14 13 word15 ICV_5 $T=93212 10164 1 0 $X=93212 $Y=8024
X15 vss! vdd! 103 42 INVx3_ASAP7_75t_R $T=81548 6060 1 180 $X=80900 $Y=5864
X16 vss! vdd! 104 43 INVx3_ASAP7_75t_R $T=81332 6060 0 0 $X=81332 $Y=5864
X17 vss! vdd! 105 44 INVx3_ASAP7_75t_R $T=82628 6060 1 180 $X=81980 $Y=5864
X18 vss! vdd! 106 45 INVx3_ASAP7_75t_R $T=82412 6060 0 0 $X=82412 $Y=5864
X19 vss! vdd! 107 46 INVx3_ASAP7_75t_R $T=84140 6060 1 180 $X=83492 $Y=5864
X20 vss! vdd! 108 47 INVx3_ASAP7_75t_R $T=83924 6060 0 0 $X=83924 $Y=5864
X21 vss! vdd! 109 48 INVx3_ASAP7_75t_R $T=85220 6060 1 180 $X=84572 $Y=5864
X22 vss! vdd! 110 10 INVx3_ASAP7_75t_R $T=85004 6060 0 0 $X=85004 $Y=5864
X23 vss! vdd! 111 9 INVx3_ASAP7_75t_R $T=90188 6060 1 180 $X=89540 $Y=5864
X24 vss! vdd! 112 11 INVx3_ASAP7_75t_R $T=92564 6060 0 0 $X=92564 $Y=5864
X25 vss! en vdd! 102 111 NANDx1_ASAP7_75t_R $T=90188 6060 0 0 $X=90188 $Y=5864
X26 vss! A3 vdd! en 112 NANDx1_ASAP7_75t_R $T=91700 6060 0 0 $X=91700 $Y=5864
X27 vdd! vss! 9 25 43 8 42 ICV_6 $T=78308 10164 0 180 $X=77444 $Y=8024
X28 vdd! vss! 9 21 45 24 44 ICV_6 $T=79820 10164 0 180 $X=78956 $Y=8024
X29 vdd! vss! 9 17 47 20 46 ICV_6 $T=81332 10164 0 180 $X=80468 $Y=8024
X30 vdd! vss! 9 4 10 16 48 ICV_6 $T=82844 10164 0 180 $X=81980 $Y=8024
X31 vdd! vss! 11 12 48 13 10 ICV_6 $T=84788 10164 0 180 $X=83924 $Y=8024
X32 vdd! vss! 11 36 46 39 47 ICV_6 $T=86300 10164 0 180 $X=85436 $Y=8024
X33 vdd! vss! 11 32 44 35 45 ICV_6 $T=87812 10164 0 180 $X=86948 $Y=8024
X34 vdd! vss! 11 28 42 31 43 ICV_6 $T=89324 10164 0 180 $X=88460 $Y=8024
X35 vss! vdd! 113 114 115 103 NAND3x1_ASAP7_75t_R $T=77660 6060 1 180 $X=76580 $Y=5864
X36 vss! vdd! A0 114 113 104 NAND3x1_ASAP7_75t_R $T=77660 6060 0 0 $X=77660 $Y=5864
X37 vss! vdd! 113 A1 115 105 NAND3x1_ASAP7_75t_R $T=79820 6060 1 180 $X=78740 $Y=5864
X38 vss! vdd! A0 A1 113 106 NAND3x1_ASAP7_75t_R $T=79820 6060 0 0 $X=79820 $Y=5864
X39 vss! vdd! A2 114 115 107 NAND3x1_ASAP7_75t_R $T=86732 6060 1 180 $X=85652 $Y=5864
X40 vss! vdd! A0 114 A2 108 NAND3x1_ASAP7_75t_R $T=86516 6060 0 0 $X=86516 $Y=5864
X41 vss! vdd! A2 A1 115 109 NAND3x1_ASAP7_75t_R $T=88676 6060 1 180 $X=87596 $Y=5864
X42 vss! vdd! A0 A1 A2 110 NAND3x1_ASAP7_75t_R $T=88460 6060 0 0 $X=88460 $Y=5864
X45 vss! vdd! A0 115 INVx8_ASAP7_75t_R $T=75284 6060 1 180 $X=74636 $Y=5864
X46 vss! vdd! A1 114 INVx8_ASAP7_75t_R $T=75284 6060 0 0 $X=75284 $Y=5864
X47 vss! vdd! A2 113 INVx8_ASAP7_75t_R $T=75932 6060 0 0 $X=75932 $Y=5864
.ENDS
***************************************
.SUBCKT Register_File_new vss! Data_out<8> Data_out<9> Data_out<10> Data_out<11> Data_out<12> Data_out<13> Data_out<14> Data_out<15> Data_out<0> Data_out<1> Data_out<2> Data_out<3> Data_out<4> Data_out<5> Data_out<6> Data_out<7> vdd! Addr_rd<0> Addr_rd<1>
+ Addr_rd<2> Addr_rd<3> RE Addr_wr<0> Addr_wr<1> Addr_wr<2> Addr_wr<3> WE Clk Data_in<12> Data_in<14> Data_in<15> Data_in<10> Data_in<9> Data_in<13> Data_in<11> Data_in<8> Data_in<4> Data_in<6> Data_in<7>
+ Data_in<2> Data_in<1> Data_in<5> Data_in<3> Data_in<0> Precharge
** N=487 EP=46 IP=868 FDC=3432
X0 vss! 40 2 3 41 42 4 5 43 46 6 7 47 49 8 9 50 vdd! 51 10
+ 11 52 53 12 13 55 57 14 15 58 59 16 17 60 Data_out<8> Data_out<9> Data_out<10> Data_out<11> Data_out<12> Data_out<13>
+ Data_out<14> Data_out<15> Data_in<8> Data_in<9> Data_in<10> Data_in<11> Data_in<12> Data_in<13> Data_in<14> Data_in<15> Clk WE Precharge 234 235 236 237 238 239 240
+ 241 243 244 245 248 249 252 255 258 259 260 261 268 276 277 278 279 280 281 282
+ 283
+ RF_16x8cells $T=43414 11426 1 0 $X=43492 $Y=-930
X1 vss! 40 2 3 41 42 4 5 43 46 6 7 47 49 8 9 50 vdd! 51 10
+ 11 52 53 12 13 55 57 14 15 58 59 16 17 60 Data_out<0> Data_out<1> Data_out<2> Data_out<3> Data_out<4> Data_out<5>
+ Data_out<6> Data_out<7> Data_in<0> Data_in<1> Data_in<2> Data_in<3> Data_in<4> Data_in<5> Data_in<6> Data_in<7> Clk WE Precharge 284 285 286 287 288 289 290
+ 291 295 296 297 300 301 304 307 310 311 312 313 320 330 331 332 333 334 335 336
+ 337
+ RF_16x8cells $T=43414 20678 0 0 $X=43492 $Y=20670
X4 Addr_rd<3> vss! vdd! 339 Addr_rd<0> Addr_rd<1> Addr_rd<2> 357 361 378 383 411 414 2 3 342 344 4 5 347
+ 349 6 7 352 354 8 9 396 10 11 399 401 12 13 404 406 14 15 409 16
+ 17 360 363 366 368 371 373 376 RE
+ Decoder_4x16_ASAP7_75t_R_new $T=-29308 22058 1 0 $X=43600 $Y=11698
X5 Addr_wr<3> vss! vdd! 81 Addr_wr<0> Addr_wr<1> Addr_wr<2> 108 115 156 167 228 232 40 41 86 88 42 43 93
+ 96 46 47 100 104 49 50 206 51 52 210 213 53 55 218 220 57 58 225 59
+ 60 113 120 126 132 138 144 150 WE
+ Decoder_4x16_ASAP7_75t_R_new $T=-29308 10154 0 0 $X=43600 $Y=16018
.ENDS
***************************************
