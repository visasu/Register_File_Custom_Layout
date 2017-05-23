************************************************************************
* auCdl Netlist:
* 
* Library Name:  Lab3
* Top Cell Name: RF_8t1122_32x1colgrp
* View Name:     schematic
* Netlisted on:  Mar 19 15:53:48 2016
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
* Library Name: Lab3
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
* Library Name: Lab3
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
* Library Name: Lab3
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
* Library Name: Lab3
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
* Library Name: Lab3
* Cell Name:    RF_8t_io
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t_io RBLB RBLT WBLB WBLBN WBLT WBLTN clk dn prech q we
*.PININFO RBLB:I RBLT:I clk:I dn:I prech:I we:I WBLB:O WBLBN:O WBLT:O WBLTN:O 
*.PININFO q:O
XI18 RBLB RBLT q clk / RF_8t_orlat
XI22 RBLB prechn / RF_8t_RBLkeeper
XI21 RBLT prechn / RF_8t_RBLkeeper
XI19 WBLT WBLTN d dnn wen / RF_8t_write
XI20 WBLB WBLBN d dn dnn prech prechn we wen / RF_8t_write_buf
.ENDS

************************************************************************
* Library Name: Lab3
* Cell Name:    sram_dummy_8t122_0
* View Name:    schematic
************************************************************************

.SUBCKT sram_dummy_8t122_0 WBL vddcol
*.PININFO WBL:I vddcol:I
MM3 vss! vss! WBL vss! nmos_sram w=54.0n l=21n nfin=2
MM2 vss! net8 vss! vss! nmos_sram w=54.0n l=21n nfin=2
MM1 vss! net8 vddcol vdd! pmos_sram w=27n l=21n nfin=1
.ENDS

************************************************************************
* Library Name: Lab3
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
* Library Name: Lab3
* Cell Name:    RF_8t1122_16x1
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t1122_16x1 RBL WBL WBLN rwl<15> rwl<14> rwl<13> rwl<12> rwl<11> 
+ rwl<10> rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> rwl<1> 
+ rwl<0> wwl<15> wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> wwl<8> wwl<7> 
+ wwl<6> wwl<5> wwl<4> wwl<3> wwl<2> wwl<1> wwl<0>
*.PININFO WBL:I WBLN:I rwl<15>:I rwl<14>:I rwl<13>:I rwl<12>:I rwl<11>:I 
*.PININFO rwl<10>:I rwl<9>:I rwl<8>:I rwl<7>:I rwl<6>:I rwl<5>:I rwl<4>:I 
*.PININFO rwl<3>:I rwl<2>:I rwl<1>:I rwl<0>:I wwl<15>:I wwl<14>:I wwl<13>:I 
*.PININFO wwl<12>:I wwl<11>:I wwl<10>:I wwl<9>:I wwl<8>:I wwl<7>:I wwl<6>:I 
*.PININFO wwl<5>:I wwl<4>:I wwl<3>:I wwl<2>:I wwl<1>:I wwl<0>:I RBL:O
Xd<1> WBL vdd! / sram_dummy_8t122_0
Xd<0> WBL vdd! / sram_dummy_8t122_0
Xs0c<15> RBL rwl<15> WBL WBLN wwl<15> vdd! / sram_8t122_11wideLISD
Xs0c<14> RBL rwl<14> WBL WBLN wwl<14> vdd! / sram_8t122_11wideLISD
Xs0c<13> RBL rwl<13> WBL WBLN wwl<13> vdd! / sram_8t122_11wideLISD
Xs0c<12> RBL rwl<12> WBL WBLN wwl<12> vdd! / sram_8t122_11wideLISD
Xs0c<11> RBL rwl<11> WBL WBLN wwl<11> vdd! / sram_8t122_11wideLISD
Xs0c<10> RBL rwl<10> WBL WBLN wwl<10> vdd! / sram_8t122_11wideLISD
Xs0c<9> RBL rwl<9> WBL WBLN wwl<9> vdd! / sram_8t122_11wideLISD
Xs0c<8> RBL rwl<8> WBL WBLN wwl<8> vdd! / sram_8t122_11wideLISD
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
* Library Name: Lab3
* Cell Name:    RF_8t1122_32x1colgrp
* View Name:    schematic
************************************************************************

.SUBCKT RF_8t1122_32x1colgrp clk dn prech q rwl<31> rwl<30> rwl<29> rwl<28> 
+ rwl<27> rwl<26> rwl<25> rwl<24> rwl<23> rwl<22> rwl<21> rwl<20> rwl<19> 
+ rwl<18> rwl<17> rwl<16> rwl<15> rwl<14> rwl<13> rwl<12> rwl<11> rwl<10> 
+ rwl<9> rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> rwl<1> rwl<0> we 
+ wwl<31> wwl<30> wwl<29> wwl<28> wwl<27> wwl<26> wwl<25> wwl<24> wwl<23> 
+ wwl<22> wwl<21> wwl<20> wwl<19> wwl<18> wwl<17> wwl<16> wwl<15> wwl<14> 
+ wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> wwl<4> 
+ wwl<3> wwl<2> wwl<1> wwl<0>
*.PININFO clk:I dn:I prech:I rwl<31>:I rwl<30>:I rwl<29>:I rwl<28>:I rwl<27>:I 
*.PININFO rwl<26>:I rwl<25>:I rwl<24>:I rwl<23>:I rwl<22>:I rwl<21>:I 
*.PININFO rwl<20>:I rwl<19>:I rwl<18>:I rwl<17>:I rwl<16>:I rwl<15>:I 
*.PININFO rwl<14>:I rwl<13>:I rwl<12>:I rwl<11>:I rwl<10>:I rwl<9>:I rwl<8>:I 
*.PININFO rwl<7>:I rwl<6>:I rwl<5>:I rwl<4>:I rwl<3>:I rwl<2>:I rwl<1>:I 
*.PININFO rwl<0>:I we:I wwl<31>:I wwl<30>:I wwl<29>:I wwl<28>:I wwl<27>:I 
*.PININFO wwl<26>:I wwl<25>:I wwl<24>:I wwl<23>:I wwl<22>:I wwl<21>:I 
*.PININFO wwl<20>:I wwl<19>:I wwl<18>:I wwl<17>:I wwl<16>:I wwl<15>:I 
*.PININFO wwl<14>:I wwl<13>:I wwl<12>:I wwl<11>:I wwl<10>:I wwl<9>:I wwl<8>:I 
*.PININFO wwl<7>:I wwl<6>:I wwl<5>:I wwl<4>:I wwl<3>:I wwl<2>:I wwl<1>:I 
*.PININFO wwl<0>:I q:O
XI14 net8 net11 net10 net9 net20 net12 clk dn prech q we / RF_8t_io
XI15 net11 net20 net12 rwl<31> rwl<30> rwl<29> rwl<28> rwl<27> rwl<26> rwl<25> 
+ rwl<24> rwl<23> rwl<22> rwl<21> rwl<20> rwl<19> rwl<18> rwl<17> rwl<16> 
+ wwl<31> wwl<30> wwl<29> wwl<28> wwl<27> wwl<26> wwl<25> wwl<24> wwl<23> 
+ wwl<22> wwl<21> wwl<20> wwl<19> wwl<18> wwl<17> wwl<16> / RF_8t1122_16x1
XI16 net8 net10 net9 rwl<15> rwl<14> rwl<13> rwl<12> rwl<11> rwl<10> rwl<9> 
+ rwl<8> rwl<7> rwl<6> rwl<5> rwl<4> rwl<3> rwl<2> rwl<1> rwl<0> wwl<15> 
+ wwl<14> wwl<13> wwl<12> wwl<11> wwl<10> wwl<9> wwl<8> wwl<7> wwl<6> wwl<5> 
+ wwl<4> wwl<3> wwl<2> wwl<1> wwl<0> / RF_8t1122_16x1
.ENDS

