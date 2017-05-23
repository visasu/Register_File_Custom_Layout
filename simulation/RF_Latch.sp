************************************************************************
* auCdl Netlist:
* 
* Library Name:  RF_Lab4
* Top Cell Name: Latch
* View Name:     schematic
* Netlisted on:  Oct 20 19:38:33 2016
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
* Cell Name:    Latch
* View Name:    schematic
************************************************************************

.SUBCKT Latch CLK D Q
*.PININFO CLK:I D:I Q:O
MM24 Q net018 vss! vss! nmos_rvt w=81.0n l=20n nfin=3
MM6 net29 net018 vss! vss! nmos_rvt w=27.0n l=20n nfin=1
MM9 net018 clkb pd3 vss! nmos_rvt w=27.0n l=20n nfin=1
MM8 pd3 net29 vss! vss! nmos_rvt w=27.0n l=20n nfin=1
MM23 clkb clkn vss! vss! nmos_rvt w=54.0n l=20n nfin=2
MM5 pd1 D vss! vss! nmos_rvt w=81.0n l=20n nfin=3
MM4 net018 clkn pd1 vss! nmos_rvt w=81.0n l=20n nfin=3
MM20 clkn CLK vss! vss! nmos_rvt w=54.0n l=20n nfin=2
MM25 Q net018 vdd! vdd! pmos_rvt w=81.0n l=20n nfin=3
MM7 net29 net018 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM11 pd2 net29 vdd! vdd! pmos_rvt w=27n l=20n nfin=1
MM10 net018 clkn pd2 vdd! pmos_rvt w=27n l=20n nfin=1
MM22 clkb clkn vdd! vdd! pmos_rvt w=54.0n l=20n nfin=2
MM1 net018 clkb pu1 vdd! pmos_rvt w=81.0n l=20n nfin=3
MM3 pu1 D vdd! vdd! pmos_rvt w=81.0n l=20n nfin=3
MM21 clkn CLK vdd! vdd! pmos_rvt w=54.0n l=20n nfin=2
.ENDS

