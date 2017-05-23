************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_Lab4
* Top Cell Name: RF_Decoder
* View Name:     schematic
* Netlisted on:  Oct 20 18:15:07 2016
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

.GLOBAL vdd!
+        vss!

*.PIN vdd!
*+    vss!

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
* Cell Name:    NANDx1_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT NANDx1_ASAP7_75t_R A B C
*.PININFO A:I B:I C:O
MM3 net2 B vss! vss! nmos_rvt w=27n l=20n nfin=1
MM0 C A net2 vss! nmos_rvt w=27n l=20n nfin=1
MM2 C A vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM1 C B vdd! vdd! pmos_rvt w=27n l=20n nfin=1
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    NANDx5_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT NANDx5_ASAP7_75t_R A B C
*.PININFO A:I B:I C:O
MM3 net2 B vss! vss! nmos_rvt w=135.00n l=20n nfin=5
MM0 C A net2 vss! nmos_rvt w=135.00n l=20n nfin=5
MM2 C A vdd! vdd! pmos_rvt w=135.00n l=20n nfin=5
MM1 C B vdd! vdd! pmos_rvt w=135.00n l=20n nfin=5
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
* Cell Name:    Decoder_4x16_ASAP7_75t_R
* View Name:    schematic
************************************************************************

.SUBCKT Decoder_4x16_ASAP7_75t_R A0 A1 A2 A3 word0 word1 word2 word3 word4 
+ word5 word6 word7 word8 word9 word10 word11 word12 word13 word14 word15
*.PININFO A0:I A1:I A2:I A3:I word0:O word1:O word2:O word3:O word4:O word5:O 
*.PININFO word6:O word7:O word8:O word9:O word10:O word11:O word12:O word13:O 
*.PININFO word14:O word15:O
XI105 net022 net021 net059 / NANDx5_ASAP7_75t_R
XI104 net038 net037 net060 / NANDx5_ASAP7_75t_R
XI93 net024 net023 net073 / NANDx5_ASAP7_75t_R
XI92 net040 net039 net074 / NANDx5_ASAP7_75t_R
XI83 net052 net051 net084 / NANDx5_ASAP7_75t_R
XI77 net050 net049 net091 / NANDx5_ASAP7_75t_R
XI71 net048 net047 net098 / NANDx5_ASAP7_75t_R
XI65 net046 net045 net0105 / NANDx5_ASAP7_75t_R
XI59 net044 net043 net0112 / NANDx5_ASAP7_75t_R
XI53 net042 net041 net0119 / NANDx5_ASAP7_75t_R
XI46 net026 net025 net0125 / NANDx5_ASAP7_75t_R
XI41 net028 net027 net0134 / NANDx5_ASAP7_75t_R
XI34 net030 net029 net0139 / NANDx5_ASAP7_75t_R
XI29 net032 net031 net0148 / NANDx5_ASAP7_75t_R
XI20 net034 net033 net0151 / NANDx5_ASAP7_75t_R
XI5 net20 net15 net13 / NANDx5_ASAP7_75t_R
XI103 net059 word7 / INVx7_ASAP7_75t_R
XI102 net060 word15 / INVx7_ASAP7_75t_R
XI91 net073 word6 / INVx7_ASAP7_75t_R
XI90 net074 word14 / INVx7_ASAP7_75t_R
XI82 net084 word8 / INVx7_ASAP7_75t_R
XI76 net091 word9 / INVx7_ASAP7_75t_R
XI70 net098 word10 / INVx7_ASAP7_75t_R
XI64 net0105 word11 / INVx7_ASAP7_75t_R
XI58 net0112 word12 / INVx7_ASAP7_75t_R
XI52 net0119 word13 / INVx7_ASAP7_75t_R
XI47 net0125 word5 / INVx7_ASAP7_75t_R
XI40 net0134 word4 / INVx7_ASAP7_75t_R
XI35 net0139 word3 / INVx7_ASAP7_75t_R
XI28 net0148 word2 / INVx7_ASAP7_75t_R
XI21 net0151 word1 / INVx7_ASAP7_75t_R
XI7 net13 word0 / INVx7_ASAP7_75t_R
XI107 net055 net022 / INVx3_ASAP7_75t_R
XI106 net056 net038 / INVx3_ASAP7_75t_R
XI99 net063 net021 / INVx3_ASAP7_75t_R
XI98 net064 net037 / INVx3_ASAP7_75t_R
XI95 net069 net024 / INVx3_ASAP7_75t_R
XI94 net070 net040 / INVx3_ASAP7_75t_R
XI87 net077 net023 / INVx3_ASAP7_75t_R
XI86 net078 net039 / INVx3_ASAP7_75t_R
XI84 net082 net052 / INVx3_ASAP7_75t_R
XI80 net086 net051 / INVx3_ASAP7_75t_R
XI78 net089 net050 / INVx3_ASAP7_75t_R
XI74 net093 net049 / INVx3_ASAP7_75t_R
XI72 net096 net048 / INVx3_ASAP7_75t_R
XI68 net0100 net047 / INVx3_ASAP7_75t_R
XI66 net0103 net046 / INVx3_ASAP7_75t_R
XI62 net0107 net045 / INVx3_ASAP7_75t_R
XI60 net0110 net044 / INVx3_ASAP7_75t_R
XI56 net0114 net043 / INVx3_ASAP7_75t_R
XI54 net0117 net042 / INVx3_ASAP7_75t_R
XI50 net0121 net041 / INVx3_ASAP7_75t_R
XI49 net0124 net025 / INVx3_ASAP7_75t_R
XI45 net0123 net026 / INVx3_ASAP7_75t_R
XI42 net0136 net028 / INVx3_ASAP7_75t_R
XI38 net0135 net027 / INVx3_ASAP7_75t_R
XI37 net0138 net029 / INVx3_ASAP7_75t_R
XI33 net0137 net030 / INVx3_ASAP7_75t_R
XI30 net0150 net032 / INVx3_ASAP7_75t_R
XI26 net0149 net031 / INVx3_ASAP7_75t_R
XI23 net0152 net033 / INVx3_ASAP7_75t_R
XI22 net0153 net034 / INVx3_ASAP7_75t_R
XI9 net19 net15 / INVx3_ASAP7_75t_R
XI8 net25 net20 / INVx3_ASAP7_75t_R
XI109 A0 A1 net055 / NANDx1_ASAP7_75t_R
XI108 A0 A1 net056 / NANDx1_ASAP7_75t_R
XI101 A2 ~A3 net063 / NANDx1_ASAP7_75t_R
XI100 A2 A3 net064 / NANDx1_ASAP7_75t_R
XI97 ~A0 A1 net069 / NANDx1_ASAP7_75t_R
XI96 ~A0 A1 net070 / NANDx1_ASAP7_75t_R
XI89 A2 ~A3 net077 / NANDx1_ASAP7_75t_R
XI88 A2 A3 net078 / NANDx1_ASAP7_75t_R
XI85 ~A0 ~A1 net082 / NANDx1_ASAP7_75t_R
XI81 ~A2 A3 net086 / NANDx1_ASAP7_75t_R
XI79 A0 ~A1 net089 / NANDx1_ASAP7_75t_R
XI75 ~A2 A3 net093 / NANDx1_ASAP7_75t_R
XI73 ~A0 A1 net096 / NANDx1_ASAP7_75t_R
XI69 ~A2 A3 net0100 / NANDx1_ASAP7_75t_R
XI67 A0 A1 net0103 / NANDx1_ASAP7_75t_R
XI63 ~A2 A3 net0107 / NANDx1_ASAP7_75t_R
XI61 ~A0 ~A1 net0110 / NANDx1_ASAP7_75t_R
XI57 A2 A3 net0114 / NANDx1_ASAP7_75t_R
XI55 A0 ~A1 net0117 / NANDx1_ASAP7_75t_R
XI51 A2 A3 net0121 / NANDx1_ASAP7_75t_R
XI48 A2 ~A3 net0124 / NANDx1_ASAP7_75t_R
XI44 A0 ~A1 net0123 / NANDx1_ASAP7_75t_R
XI43 ~A0 ~A1 net0136 / NANDx1_ASAP7_75t_R
XI39 A2 ~A3 net0135 / NANDx1_ASAP7_75t_R
XI36 ~A2 ~A3 net0138 / NANDx1_ASAP7_75t_R
XI32 A0 A1 net0137 / NANDx1_ASAP7_75t_R
XI31 ~A0 A1 net0150 / NANDx1_ASAP7_75t_R
XI27 ~A2 ~A3 net0149 / NANDx1_ASAP7_75t_R
XI25 ~A2 ~A3 net0152 / NANDx1_ASAP7_75t_R
XI24 A0 ~A1 net0153 / NANDx1_ASAP7_75t_R
XI11 ~A2 ~A3 net19 / NANDx1_ASAP7_75t_R
XI10 ~A0 ~A1 net25 / NANDx1_ASAP7_75t_R
XI16 A3 ~A3 / INVx8_ASAP7_75t_R
XI17 A2 ~A2 / INVx8_ASAP7_75t_R
XI18 A1 ~A1 / INVx8_ASAP7_75t_R
XI19 A0 ~A0 / INVx8_ASAP7_75t_R
.ENDS

************************************************************************
* Library Name: RF_Lab4
* Cell Name:    RF_Decoder
* View Name:    schematic
************************************************************************

.SUBCKT RF_Decoder A0 A1 A2 A3 ren word0 word1 word2 word3 word4 word5 word6 
+ word7 word8 word9 word10 word11 word12 word13 word14 word15
*.PININFO A0:I A1:I A2:I A3:I ren:I word0:O word1:O word2:O word3:O word4:O 
*.PININFO word5:O word6:O word7:O word8:O word9:O word10:O word11:O word12:O 
*.PININFO word13:O word14:O word15:O
XI14 net31 net08 / INVx1_ASAP7_75t_R
XI13 net29 net010 / INVx1_ASAP7_75t_R
XI12 net28 net09 / INVx1_ASAP7_75t_R
XI11 net30 net011 / INVx1_ASAP7_75t_R
XI9 A3 ren net31 / NANDx1_ASAP7_75t_R
XI8 A2 ren net29 / NANDx1_ASAP7_75t_R
XI7 A1 ren net28 / NANDx1_ASAP7_75t_R
XI6 A0 ren net30 / NANDx1_ASAP7_75t_R
XI10 net011 net09 net010 net08 word0 word1 word2 word3 word4 word5 word6 word7 
+ word8 word9 word10 word11 word12 word13 word14 word15 / 
+ Decoder_4x16_ASAP7_75t_R
.ENDS

