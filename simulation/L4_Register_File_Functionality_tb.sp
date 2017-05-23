

.TEMP 25
.OPTION

.param period3=4n
.param period5=10n
.param tr=17p
.param tf=22p
.param pw3 = '(period3/2)-((tr+tf)/2)'
.param pw5 = '(period5/2)-((tr+tf)/2)'

.inc '/afs/asu.edu/class/e/e/e/eee525b/asap7/asap7PDK/models/hspice/7nm_TT.pm'

.include "./pex/Register_File_new.pex.netlist"
.include "./RF_Latch.sp"

X_Register_File_new  VSS! DATA_OUT<8> DATA_OUT<9> DATA_OUT<10>
+ DATA_OUT<11> DATA_OUT<12> DATA_OUT<13> DATA_OUT<14> DATA_OUT<15> DATA_OUT<0>
+ DATA_OUT<1> DATA_OUT<2> DATA_OUT<3> DATA_OUT<4> DATA_OUT<5> DATA_OUT<6>
+ DATA_OUT<7> VDD! ADDR_RD<0> ADDR_RD<1> ADDR_RD<2> ADDR_RD<3> RE ADDR_WR<0>
+ ADDR_WR<1> ADDR_WR<2> ADDR_WR<3> WE CLK DATA_IN<12> DATA_IN<14> DATA_IN<15>
+ DATA_IN<10> DATA_IN<9> DATA_IN<13> DATA_IN<11> DATA_IN<8> DATA_IN<4>
+ DATA_IN<6> DATA_IN<7> DATA_IN<2> DATA_IN<1> DATA_IN<5> DATA_IN<3> DATA_IN<0>
+ PRECHARGE Register_File_new

Vvss vss! 0 DC=0
Vvdd vdd! 0 DC=0.7

vRE RE 0 PULSE (0.7 0 -1n tr tf pw5 period5)
vWE WE 0 PULSE (0.7 0 -1n tr tf pw3 period3)

vClk Clk 0 PULSE (0.7 0 -1n tr tf pw3 period3)
vClkn Clkn 0 PULSE (0 0.7 0 tr tf pw3 period3)
vPrecharge Precharge 0 PULSE (0.7 0 0 tr tf pw3 period3)

X_RLatch0 Clkn DAddr_rd<0> Addr_rd<0> Latch
X_RLatch1 Clkn DAddr_rd<1> Addr_rd<1> Latch
X_RLatch2 Clkn DAddr_rd<2> Addr_rd<2> Latch
X_RLatch3 Clkn DAddr_rd<3> Addr_rd<3> Latch

X_WLatch0 Clk DAddr_wr<0> Addr_wr<0> Latch
X_WLatch1 Clk DAddr_wr<1> Addr_wr<1> Latch
X_WLatch2 Clk DAddr_wr<2> Addr_wr<2> Latch
X_WLatch3 Clk DAddr_wr<3> Addr_wr<3> Latch

vAddr_rd<0> DAddr_rd<0> 0 PULSE (0 0 0 tr tf pw3 period3)
vAddr_rd<1> DAddr_rd<1> 0 PULSE (0 0 0 tr tf pw3 period3)
vAddr_rd<2> DAddr_rd<2> 0 PULSE (0 0 0 tr tf pw3 period3)
vAddr_rd<3> DAddr_rd<3> 0 PULSE (0 0 0 tr tf pw3 period3)

vAddr_wr<0> DAddr_wr<0> 0 PULSE (0 0 0 tr tf pw3 period3)
vAddr_wr<1> DAddr_wr<1> 0 PULSE (0 0 0 tr tf pw3 period3)
vAddr_wr<2> DAddr_wr<2> 0 PULSE (0 0 0 tr tf pw3 period3)
vAddr_wr<3> DAddr_wr<3> 0 PULSE (0 0 0 tr tf pw3 period3)

vD_Data_in<0> D_Data_in<0> 0 PULSE (0 0 0 tr tf pw3 period3)
vD_Data_in<1> D_Data_in<1> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<2> D_Data_in<2> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<3> D_Data_in<3> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)

vD_Data_in<4> D_Data_in<4> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<5> D_Data_in<5> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<6> D_Data_in<6> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<7> D_Data_in<7> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)

vD_Data_in<8> D_Data_in<8> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<9> D_Data_in<9> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<10> D_Data_in<10> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<11> D_Data_in<11> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)

vD_Data_in<12> D_Data_in<12> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<13> D_Data_in<13> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<14> D_Data_in<14> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)
vD_Data_in<15> D_Data_in<15> 0 PULSE (0.7 0.7 0 tr tf pw3 period3)

X_Data_in<0> Clk D_Data_in<0> Data_in<0> Latch
X_Data_in<1> Clk D_Data_in<1> Data_in<1> Latch
X_Data_in<2> Clk D_Data_in<2> Data_in<2> Latch
X_Data_in<3> Clk D_Data_in<3> Data_in<3> Latch
X_Data_in<4> Clk D_Data_in<4> Data_in<4> Latch
X_Data_in<5> Clk D_Data_in<5> Data_in<5> Latch
X_Data_in<6> Clk D_Data_in<6> Data_in<6> Latch
X_Data_in<7> Clk D_Data_in<7> Data_in<7> Latch
X_Data_in<8> Clk D_Data_in<8> Data_in<8> Latch
X_Data_in<9> Clk D_Data_in<9> Data_in<9> Latch
X_Data_in<10> Clk D_Data_in<10> Data_in<10> Latch
X_Data_in<11> Clk D_Data_in<11> Data_in<11> Latch
X_Data_in<12> Clk D_Data_in<12> Data_in<12> Latch
X_Data_in<13> Clk D_Data_in<13> Data_in<13> Latch
X_Data_in<14> Clk D_Data_in<14> Data_in<14> Latch
X_Data_in<15> Clk D_Data_in<15> Data_in<15> Latch


.tran 2p 10n Start=0.0
.probe v(*)
.option post
.end


