************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_Lab4
* Top Cell Name: Register_File_new
* View Name:     schematic
* Netlisted on:  Oct 28 12:57:10 2016
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

*.GLOBAL vss!
+        vdd!

*.PIN vss!
*+    vdd!

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    NANDx5_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT NANDx5_ASAP7_75t_R A B C
*.PININFO A:I B:I C:O
MM5 C A vdd! vdd! pmos_rvt w=135.00n l=20n nfin=5
MM4 C B vdd! vdd! pmos_rvt w=135.00n l=20n nfin=5
MM7 net17 A vss! vss! nmos_rvt w=135.00n l=20n nfin=5
MM6 C B net17 vss! nmos_rvt w=135.00n l=20n nfin=5
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    INVx7_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT INVx7_ASAP7_75t_R A Y
*.PININFO A:I Y:O
MM0 Y A vss! vss! nmos_rvt w=189.00n l=20n nfin=7
MM1 Y A vdd! vdd! pmos_rvt w=189.00n l=20n nfin=7
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    INVx3_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT INVx3_ASAP7_75t_R A Y
*.PININFO A:I Y:O
MM0 Y A vss! vss! nmos_rvt w=81.0n l=20n nfin=3
MM1 Y A vdd! vdd! pmos_rvt w=81.0n l=20n nfin=3
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    NANDx1_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT NANDx1_ASAP7_75t_R A B C
*.PININFO A:I B:I C:O
MM5 C B vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 C A vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM7 net17 B vss! vss! nmos_rvt w=27n l=20n nfin=1
MM6 C A net17 vss! nmos_rvt w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    INVx8_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT INVx8_ASAP7_75t_R A Y
*.PININFO A:I Y:O
MM0 Y A vss! vss! nmos_rvt w=216.00n l=20n nfin=8
MM1 Y A vdd! vdd! pmos_rvt w=216.00n l=20n nfin=8
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    INVx1_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT INVx1_ASAP7_75t_R A Y
*.PININFO A:I Y:O
MM0 Y A vss! vss! nmos_rvt w=27.0n l=20n nfin=1
MM1 Y A vdd! vdd! pmos_rvt w=27.0n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    NAND3x1_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT NAND3x1_ASAP7_75t_R A B C Y
*.PININFO A:I B:I C:I Y:O
MM5 Y B vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 Y A vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM8 Y C vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM7 net17 B vss! vss! nmos_rvt w=27n l=20n nfin=1
MM6 net018 A net17 vss! nmos_rvt w=27n l=20n nfin=1
MM9 Y C net018 vss! nmos_rvt w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    Decoder_4x16_ASAP7_75t_R_new
* View Name:    schematic
************************************************************************

.SUBCKT Decoder_4x16_ASAP7_75t_R_new A0 A1 A2 A3 en word0 word1 word2 word3 
+ word4 word5 word6 word7 word8 word9 word10 word11 word12 word13 word14 word15
*.PININFO A0:I A1:I A2:I A3:I en:I word0:O word1:O word2:O word3:O word4:O 
*.PININFO word5:O word6:O word7:O word8:O word9:O word10:O word11:O word12:O 
*.PININFO word13:O word14:O word15:O
XI105 w7 down net059 / NANDx5_ASAP7_75t_R
XI93 w6 down net073 / NANDx5_ASAP7_75t_R
XI121 w7 up net037 / NANDx5_ASAP7_75t_R
XI120 w6 up net036 / NANDx5_ASAP7_75t_R
XI119 w5 up net035 / NANDx5_ASAP7_75t_R
XI118 w4 up net0140 / NANDx5_ASAP7_75t_R
XI117 w3 up net0127 / NANDx5_ASAP7_75t_R
XI116 w2 up net0132 / NANDx5_ASAP7_75t_R
XI115 w1 up net0141 / NANDx5_ASAP7_75t_R
XI114 w0 up net0138 / NANDx5_ASAP7_75t_R
XI46 w5 down net0125 / NANDx5_ASAP7_75t_R
XI41 w4 down net0134 / NANDx5_ASAP7_75t_R
XI34 w3 down net0139 / NANDx5_ASAP7_75t_R
XI29 w2 down net0148 / NANDx5_ASAP7_75t_R
XI20 w1 down net0151 / NANDx5_ASAP7_75t_R
XI5 w0 down net13 / NANDx5_ASAP7_75t_R
XI129 net037 word15 / INVx7_ASAP7_75t_R
XI103 net059 word7 / INVx7_ASAP7_75t_R
XI128 net036 word14 / INVx7_ASAP7_75t_R
XI127 net035 word13 / INVx7_ASAP7_75t_R
XI91 net073 word6 / INVx7_ASAP7_75t_R
XI126 net0140 word12 / INVx7_ASAP7_75t_R
XI125 net0127 word11 / INVx7_ASAP7_75t_R
XI124 net0132 word10 / INVx7_ASAP7_75t_R
XI123 net0141 word9 / INVx7_ASAP7_75t_R
XI122 net0138 word8 / INVx7_ASAP7_75t_R
XI47 net0125 word5 / INVx7_ASAP7_75t_R
XI40 net0134 word4 / INVx7_ASAP7_75t_R
XI35 net0139 word3 / INVx7_ASAP7_75t_R
XI28 net0148 word2 / INVx7_ASAP7_75t_R
XI21 net0151 word1 / INVx7_ASAP7_75t_R
XI7 net13 word0 / INVx7_ASAP7_75t_R
XI107 net055 up / INVx3_ASAP7_75t_R
XI99 net063 down / INVx3_ASAP7_75t_R
XI140 net0119 w4 / INVx3_ASAP7_75t_R
XI139 net0133 w5 / INVx3_ASAP7_75t_R
XI138 net0142 w6 / INVx3_ASAP7_75t_R
XI137 net0123 w7 / INVx3_ASAP7_75t_R
XI33 net0137 w0 / INVx3_ASAP7_75t_R
XI135 net0129 w3 / INVx3_ASAP7_75t_R
XI134 net0130 w2 / INVx3_ASAP7_75t_R
XI131 net0135 w1 / INVx3_ASAP7_75t_R
XI109 en A3 net055 / NANDx1_ASAP7_75t_R
XI101 net0163 en net063 / NANDx1_ASAP7_75t_R
XI17 A2 ~A2 / INVx8_ASAP7_75t_R
XI18 A1 ~A1 / INVx8_ASAP7_75t_R
XI19 A0 ~A0 / INVx8_ASAP7_75t_R
XI147 A3 net0163 / INVx1_ASAP7_75t_R
XI143 A0 ~A1 A2 net0133 / NAND3x1_ASAP7_75t_R
XI144 ~A0 ~A1 A2 net0119 / NAND3x1_ASAP7_75t_R
XI142 ~A0 A1 A2 net0142 / NAND3x1_ASAP7_75t_R
XI141 A0 A1 A2 net0123 / NAND3x1_ASAP7_75t_R
XI136 A0 A1 ~A2 net0129 / NAND3x1_ASAP7_75t_R
XI133 ~A0 A1 ~A2 net0130 / NAND3x1_ASAP7_75t_R
XI132 A0 ~A1 ~A2 net0135 / NAND3x1_ASAP7_75t_R
XI130 ~A0 ~A1 ~A2 net0137 / NAND3x1_ASAP7_75t_R
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t_orlat
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t_orlat BLB BLT Q clk
*.PININFO BLB:I BLT:I clk:I Q:O
MM13 pu1 BLT vdd! vdd! pmos_rvt w=81.0n l=20n nfin=3
MM2 Q LH vdd! vdd! pmos_rvt w=81.0n l=20n nfin=3
MM7 LS LH vdd! vdd! pmos_rvt w=27.0n l=20n nfin=1
MM11 pd2 LS vdd! vdd! pmos_rvt w=27.0n l=20n nfin=1
MM10 LH clkn pd2 vdd! pmos_rvt w=27.0n l=20n nfin=1
MM22 clkb clkn vdd! vdd! pmos_rvt w=54.0n l=20n nfin=2
MM1 LH clkb pu1 vdd! pmos_rvt w=81.0n l=20n nfin=3
MM3 pu1 BLB vdd! vdd! pmos_rvt w=81.0n l=20n nfin=3
MM21 clkn clk vdd! vdd! pmos_rvt w=54.0n l=20n nfin=2
MM0 Q LH vss! vss! nmos_rvt w=81.0n l=20n nfin=3
MM6 LS LH vss! vss! nmos_rvt w=27.0n l=20n nfin=1
MM9 LH clkb pd3 vss! nmos_rvt w=27.0n l=20n nfin=1
MM8 pd3 LS vss! vss! nmos_rvt w=27.0n l=20n nfin=1
MM23 clkb clkn vss! vss! nmos_rvt w=54.0n l=20n nfin=2
MM5 pd1 BLB pd0 vss! nmos_rvt w=81.0n l=20n nfin=3
MM4 LH clkn pd1 vss! nmos_rvt w=81.0n l=20n nfin=3
MM20 clkn clk vss! vss! nmos_rvt w=54.0n l=20n nfin=2
MM12 pd0 BLT vss! vss! nmos_rvt w=81.0n l=20n nfin=3
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t_write
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t_write WBL WBLN d dnn wen
*.PININFO d:I dnn:I wen:I WBL:O WBLN:O
MM9 net065 wen WBL vdd! pmos_rvt w=108.00n l=20n nfin=4
MM8 vdd! d net065 vdd! pmos_rvt w=108.00n l=20n nfin=4
MM4 vdd! dnn net066 vdd! pmos_rvt w=108.00n l=20n nfin=4
MM2 net066 wen WBLN vdd! pmos_rvt w=108.00n l=20n nfin=4
MM12 vss! d WBL vss! nmos_rvt w=54.0n l=20n nfin=2
MM11 vss! wen WBL vss! nmos_rvt w=54.0n l=20n nfin=2
MM5 vss! dnn WBLN vss! nmos_rvt w=54.0n l=20n nfin=2
MM3 vss! wen WBLN vss! nmos_rvt w=54.0n l=20n nfin=2
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t_write_buf
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t_write_buf WBL WBLN d dn dnn prech prechn we wen
*.PININFO dn:I prech:I we:I WBL:O WBLN:O d:O dnn:O prechn:O wen:O
MM17 prechn prech vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM15 d dn vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM9 net065 wen WBL vdd! pmos_rvt w=108.00n l=20n nfin=4
MM8 vdd! d net065 vdd! pmos_rvt w=108.00n l=20n nfin=4
MM7 dnn d vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM4 vdd! dnn net066 vdd! pmos_rvt w=108.00n l=20n nfin=4
MM2 net066 wen WBLN vdd! pmos_rvt w=108.00n l=20n nfin=4
MM1 wen we vdd! vdd! pmos_rvt w=27.0n l=20n nfin=1
MM16 prechn prech vss! vss! nmos_rvt w=27n l=20n nfin=1
MM14 d dn vss! vss! nmos_rvt w=27n l=20n nfin=1
MM12 vss! d WBL vss! nmos_rvt w=54.0n l=20n nfin=2
MM11 vss! wen WBL vss! nmos_rvt w=54.0n l=20n nfin=2
MM6 dnn d vss! vss! nmos_rvt w=27n l=20n nfin=1
MM5 vss! dnn WBLN vss! nmos_rvt w=54.0n l=20n nfin=2
MM3 vss! wen WBLN vss! nmos_rvt w=54.0n l=20n nfin=2
MM0 wen we vss! vss! nmos_rvt w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t_RBLkeeper
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t_RBLkeeper RBL prechn
*.PININFO RBL:I prechn:I
MM15 vss! RBL rbln vss! nmos_rvt w=27.0n l=20n nfin=1
MM17 vdd! RBL rbln vdd! pmos_rvt w=27.0n l=20n nfin=1
MM4 vdd! rbln net066 vdd! pmos_rvt w=27.0n l=20n nfin=1
MM18 vdd! prechn RBL vdd! pmos_rvt w=54.0n l=20n nfin=2
MM2 net066 rbln RBL vdd! pmos_rvt w=27.0n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t_io
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t_io RBLB RBLT WBLB WBLBN WBLT WBLTN clk dn prech q we
*.PININFO RBLB:I RBLT:I clk:I dn:I prech:I we:I WBLB:O WBLBN:O WBLT:O WBLTN:O 
*.PININFO q:O
XI18 RBLB RBLT q clk / RF_8t_orlat
XI19 WBLT WBLTN d dnn wen / RF_8t_write
XI20 WBLB WBLBN d dn dnn prech prechn we wen / RF_8t_write_buf
XI22 RBLB prechn / RF_8t_RBLkeeper
XI21 RBLT prechn / RF_8t_RBLkeeper
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    sram_dummy_8t122_0
* View Name:    schematic
************************************************************************

.SUBCKT sram_dummy_8t122_0 WBL vddcol
*.PININFO WBL:I vddcol:I
MM1 vss! vss! WBL vss! nmos_sram w=54.0n l=20n nfin=2
MM9 vss! vss! vss! vss! nmos_sram w=54.0n l=20n nfin=2
MM0 vss! vss! vddcol vdd! pmos_sram w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    sram_8t122_11wideLISD
* View Name:    schematic
************************************************************************

.SUBCKT sram_8t122_11wideLISD RBL RWL WBL WBLN WWL vddcol
*.PININFO RWL:I WWL:I vddcol:I RBL:O WBL:B WBLN:B
MM7 net38 bitn vss! vss! nmos_sram w=54.0n l=20n nfin=2
MM8 RBL RWL net38 vss! nmos_sram w=54.0n l=20n nfin=2
MM11 WBLN WWL bit vss! nmos_sram w=54.0n l=20n nfin=2
MM9 bitn bit vss! vss! nmos_sram w=54.0n l=20n nfin=2
MM10 bit bitn vss! vss! nmos_sram w=54.0n l=20n nfin=2
MM12 bitn WWL WBL vss! nmos_sram w=54.0n l=20n nfin=2
MM0 bitn bit vddcol vdd! pmos_sram w=27n l=20n nfin=1
MM1 bit bitn vddcol vdd! pmos_sram w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t1122_8x1
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t1122_8x1 RBL WBL WBLN rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0>
*.PININFO WBL:I WBLN:I rwl<7>:I rwl<6>:I rwl<5>:I rwl<4>:I rwl<3>:I rwl<2>:I 
*.PININFO rwl<1>:I rwl<0>:I wwl<7>:I wwl<6>:I wwl<5>:I wwl<4>:I wwl<3>:I 
*.PININFO wwl<2>:I wwl<1>:I wwl<0>:I RBL:O
Xd<1> WBL vdd! / sram_dummy_8t122_0
Xd<0> WBL vdd! / sram_dummy_8t122_0
Xs0c<7> RBL rwl<7> WBL WBLN wwl<7> vdd! / sram_8t122_11wideLISD
Xs0c<6> RBL rwl<6> WBL WBLN wwl<6> vdd! / sram_8t122_11wideLISD
Xs0c<5> RBL rwl<5> WBL WBLN wwl<5> vdd! / sram_8t122_11wideLISD
Xs0c<4> RBL rwl<4> WBL WBLN wwl<4> vdd! / sram_8t122_11wideLISD
Xs0c<3> RBL rwl<3> WBL WBLN wwl<3> vdd! / sram_8t122_11wideLISD
Xs0c<2> RBL rwl<2> WBL WBLN wwl<2> vdd! / sram_8t122_11wideLISD
Xs0c<1> RBL rwl<1> WBL WBLN wwl<1> vdd! / sram_8t122_11wideLISD
Xs0c<0> RBL rwl<0> WBL WBLN wwl<0> vdd! / sram_8t122_11wideLISD
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_8t1122_16x1colgrp
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t1122_16x1colgrp clk dn prech q rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> we wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0>
*.PININFO clk:I dn:I prech:I rwl<15>:I rwl<14>:I rwl<13>:I rwl<12>:I rwl<11>:I 
*.PININFO rwl<10>:I rwl<9>:I rwl<8>:I rwl<7>:I rwl<6>:I rwl<5>:I rwl<4>:I 
*.PININFO rwl<3>:I rwl<2>:I rwl<1>:I rwl<0>:I we:I wwl<15>:I wwl<14>:I 
*.PININFO wwl<13>:I wwl<12>:I wwl<11>:I wwl<10>:I wwl<9>:I wwl<8>:I wwl<7>:I 
*.PININFO wwl<6>:I wwl<5>:I wwl<4>:I wwl<3>:I wwl<2>:I wwl<1>:I wwl<0>:I q:O
XI14 net8 net11 net10 net9 net20 net12 clk dn prech q we / RF_8t_io
XI15 net11 net20 net12 rwl<15> rwl<14> rwl<13> rwl<12> rwl<11> rwl<10> rwl<9> 
+ rwl<8> wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> wwl<8> / 
+ RF_8t1122_8x1
XI16 net8 net10 net9 rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> rwl<1> rwl<0> 
+ wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / RF_8t1122_8x1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    Register_File_new
* View Name:    schematic
************************************************************************

.SUBCKT Register_File_new Addr_rd<3> Addr_rd<2> Addr_rd<1> Addr_rd<0> 
+ Addr_wr<3> Addr_wr<2> Addr_wr<1> Addr_wr<0> Clk Data_in<15> Data_in<14> 
+ Data_in<13> Data_in<12> Data_in<11> Data_in<10> Data_in<9> Data_in<8> 
+ Data_in<7> Data_in<6> Data_in<5> Data_in<4> Data_in<3> Data_in<2> Data_in<1> 
+ Data_in<0> Data_out<15> Data_out<14> Data_out<13> Data_out<12> Data_out<11> 
+ Data_out<10> Data_out<9> Data_out<8> Data_out<7> Data_out<6> Data_out<5> 
+ Data_out<4> Data_out<3> Data_out<2> Data_out<1> Data_out<0> Precharge RE WE
*.PININFO Addr_rd<3>:I Addr_rd<2>:I Addr_rd<1>:I Addr_rd<0>:I Addr_wr<3>:I 
*.PININFO Addr_wr<2>:I Addr_wr<1>:I Addr_wr<0>:I Clk:I Data_in<15>:I 
*.PININFO Data_in<14>:I Data_in<13>:I Data_in<12>:I Data_in<11>:I 
*.PININFO Data_in<10>:I Data_in<9>:I Data_in<8>:I Data_in<7>:I Data_in<6>:I 
*.PININFO Data_in<5>:I Data_in<4>:I Data_in<3>:I Data_in<2>:I Data_in<1>:I 
*.PININFO Data_in<0>:I Precharge:I RE:I WE:I Data_out<15>:O Data_out<14>:O 
*.PININFO Data_out<13>:O Data_out<12>:O Data_out<11>:O Data_out<10>:O 
*.PININFO Data_out<9>:O Data_out<8>:O Data_out<7>:O Data_out<6>:O 
*.PININFO Data_out<5>:O Data_out<4>:O Data_out<3>:O Data_out<2>:O 
*.PININFO Data_out<1>:O Data_out<0>:O
XI22 Addr_wr<0> Addr_wr<1> Addr_wr<2> Addr_wr<3> WE wwl<0> wwl<1> wwl<2> 
+ wwl<3> wwl<4> wwl<5> wwl<6> wwl<7> wwl<8> wwl<9> wwl<10> wwl<11> wwl<12> 
+ wwl<13> wwl<14> wwl<15> / Decoder_4x16_ASAP7_75t_R_new
XI21 Addr_rd<0> Addr_rd<1> Addr_rd<2> Addr_rd<3> RE rwl<0> rwl<1> rwl<2> 
+ rwl<3> rwl<4> rwl<5> rwl<6> rwl<7> rwl<8> rwl<9> rwl<10> rwl<11> rwl<12> 
+ rwl<13> rwl<14> rwl<15> / Decoder_4x16_ASAP7_75t_R_new
XI20<15> Clk Data_in<15> Precharge Data_out<15> rwl<15> rwl<14> rwl<13> 
+ rwl<12> rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> 
+ rwl<2> rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> 
+ wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<14> Clk Data_in<14> Precharge Data_out<14> rwl<15> rwl<14> rwl<13> 
+ rwl<12> rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> 
+ rwl<2> rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> 
+ wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<13> Clk Data_in<13> Precharge Data_out<13> rwl<15> rwl<14> rwl<13> 
+ rwl<12> rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> 
+ rwl<2> rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> 
+ wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<12> Clk Data_in<12> Precharge Data_out<12> rwl<15> rwl<14> rwl<13> 
+ rwl<12> rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> 
+ rwl<2> rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> 
+ wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<11> Clk Data_in<11> Precharge Data_out<11> rwl<15> rwl<14> rwl<13> 
+ rwl<12> rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> 
+ rwl<2> rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> 
+ wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<10> Clk Data_in<10> Precharge Data_out<10> rwl<15> rwl<14> rwl<13> 
+ rwl<12> rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> 
+ rwl<2> rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> 
+ wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<9> Clk Data_in<9> Precharge Data_out<9> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<8> Clk Data_in<8> Precharge Data_out<8> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<7> Clk Data_in<7> Precharge Data_out<7> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<6> Clk Data_in<6> Precharge Data_out<6> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<5> Clk Data_in<5> Precharge Data_out<5> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<4> Clk Data_in<4> Precharge Data_out<4> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<3> Clk Data_in<3> Precharge Data_out<3> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<2> Clk Data_in<2> Precharge Data_out<2> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<1> Clk Data_in<1> Precharge Data_out<1> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
XI20<0> Clk Data_in<0> Precharge Data_out<0> rwl<15> rwl<14> rwl<13> rwl<12> 
+ rwl<11> rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> 
+ rwl<1> rwl<0> WE wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> 
+ wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / 
+ RF_8t1122_16x1colgrp
.ENDS

