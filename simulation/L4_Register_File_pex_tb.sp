
.TEMP 25
.OPTION

.param pvcc = 0.7
.param factor = 4.23

.param AClkperiod = '1n/factor'
.param tr = 17p
.param tf = 22p
.param AClkpw = '(AClkperiod/2)-((tr+tf)/2)'

.param APreperiod = '1n/factor'
.param tr = 17p
.param tf = 22p
.param APrepw = '(APreperiod/2)-((tr+tf)/2)'

.param A0period = '2n/factor'
.param tr = 17p
.param tf = 22p
.param A0pw = '(A0period/2)-((tr+tf)/2)'

.param A1period = '4n/factor'
.param A1pw = '(A1period/2)-((tr+tf)/2)'

.param A2period = '8n/factor'
.param A2pw = '(A2period/2)-((tr+tf)/2)'

.param A3period = '16n/factor'
.param A3pw = '(A3period/2)-((tr+tf)/2)'


.param wenperiod = '8n/factor'
.param wenpw = '(wenperiod/20)-((tr+tf)/2)'

.param renperiod = '8n/factor'
.param renpw = '(renperiod/20)-((tr+tf)/2)'


*.lib '/afs/asu.edu/users/v/s/r/vsriva10/425_lab/iPDK/hspice/saed32nm.lib' TT
.inc '/afs/asu.edu/class/e/e/e/eee525b/asap7/asap7PDK/models/hspice/7nm_TT.pm'

.include "./pex/Register_File_new.pex.netlist"
.include "./RF_Latch.sp"


Vvss vss! 0 DC = 0
Vvdd vdd! 0 DC = 0.7
*VAClk AClk 0 DC = 0.7
*Vd D_d 0 DC = 0.7

Vaddr_rd<0> DAddr_rd<0> 0 DC = 0.7
Vaddr_rd<1> DAddr_rd<1> 0 DC = 0.7
Vaddr_rd<2> DAddr_rd<2> 0 DC = 0.7
Vaddr_rd<3> DAddr_rd<3> 0 DC = 0

Vaddr_wr<0> DAddr_wr<0> 0 DC = 0.7
Vaddr_wr<1> DAddr_wr<1> 0 DC = 0.7
Vaddr_wr<2> DAddr_wr<2> 0 DC = 0.7
Vaddr_wr<3> DAddr_wr<3> 0 DC = 0


Vdata_in<0> D_Data_in<0> 0 DC = 0
Vdata_in<1> D_Data_in<1> 0 DC = 0
Vdata_in<2> D_Data_in<2> 0 DC = 0
Vdata_in<3> D_Data_in<3> 0 DC = 0
Vdata_in<4> D_Data_in<4> 0 DC = 0
Vdata_in<5> D_Data_in<5> 0 DC = 0
Vdata_in<6> D_Data_in<6> 0 DC = 0
Vdata_in<7> D_Data_in<7> 0 DC = 0.7
Vdata_in<8> D_Data_in<8> 0 DC = 0
Vdata_in<9> D_Data_in<9> 0 DC = 0
Vdata_in<10> D_Data_in<10> 0 DC = 0
Vdata_in<11> D_Data_in<11> 0 DC = 0
Vdata_in<12> D_Data_in<12> 0 DC = 0
Vdata_in<13> D_Data_in<13> 0 DC = 0
Vdata_in<14> D_Data_in<14> 0 DC = 0
Vdata_in<15> D_Data_in<15> 0 DC = 0




Vclk Clk 0 PULSE ( 0.7 0 0 tr tf AClkpw AClkperiod)
Vclkn Clkn 0 PULSE ( 0 0.7 0 tr tf AClkpw AClkperiod)
Vprecharge Precharge 0 PULSE ( 0.7 0 0 tr tf APrepw APreperiod)
Vre RE 0 PULSE ( 0 0.7 '4n/factor' tr tf renpw renperiod)
Vwe WE 0 PULSE ( 0 0.7 0 tr tf wenpw wenperiod)



*X_Register_File Addr_rd<3> Addr_rd<2> Addr_rd<1> Addr_rd<0> Addr_wr<3> Addr_wr<2> Addr_wr<1> Addr_wr<0> Clk Data_in<15> Data_in<14> Data_in<13> Data_in<12> Data_in<11> Data_in<10> Data_in<9> Data_in<8> Data_in<7> Data_in<6> Data_in<5> Data_in<4> Data_in<3> Data_in<2> Data_in<1> Data_in<0> Data_out<15> Data_out<14> Data_out<13> Data_out<12> Data_out<11> Data_out<10> Data_out<9> Data_out<8> Data_out<7> Data_out<6> Data_out<5> Data_out<4> Data_out<3> Data_out<2> Data_out<1> Data_out<0> Precharge RE WE Register_File

X_Register_File_new  VSS! DATA_OUT<8> DATA_OUT<9> DATA_OUT<10>
+ DATA_OUT<11> DATA_OUT<12> DATA_OUT<13> DATA_OUT<14> DATA_OUT<15> DATA_OUT<0>
+ DATA_OUT<1> DATA_OUT<2> DATA_OUT<3> DATA_OUT<4> DATA_OUT<5> DATA_OUT<6>
+ DATA_OUT<7> VDD! ADDR_RD<0> ADDR_RD<1> ADDR_RD<2> ADDR_RD<3> RE ADDR_WR<0>
+ ADDR_WR<1> ADDR_WR<2> ADDR_WR<3> WE CLK DATA_IN<12> DATA_IN<14> DATA_IN<15>
+ DATA_IN<10> DATA_IN<9> DATA_IN<13> DATA_IN<11> DATA_IN<8> DATA_IN<4>
+ DATA_IN<6> DATA_IN<7> DATA_IN<2> DATA_IN<1> DATA_IN<5> DATA_IN<3> DATA_IN<0>
+ PRECHARGE Register_File_new


*Latch is neg Latch

X_Data_inLatch0 Clk D_Data_in<0> Data_in<0> Latch
X_Data_inLatch1 Clk D_Data_in<1> Data_in<1> Latch
X_Data_inLatch2 Clk D_Data_in<2> Data_in<2> Latch
X_Data_inLatch3 Clk D_Data_in<3> Data_in<3> Latch
X_Data_inLatch4 Clk D_Data_in<4> Data_in<4> Latch
X_Data_inLatch5 Clk D_Data_in<5> Data_in<5> Latch
X_Data_inLatch6 Clk D_Data_in<6> Data_in<6> Latch
X_Data_inLatch7 Clk D_Data_in<7> Data_in<7> Latch
X_Data_inLatch8 Clk D_Data_in<8> Data_in<8> Latch
X_Data_inLatch9 Clk D_Data_in<9> Data_in<9> Latch
X_Data_inLatch10 Clk D_Data_in<10> Data_in<10> Latch
X_Data_inLatch11 Clk D_Data_in<11> Data_in<11> Latch
X_Data_inLatch12 Clk D_Data_in<12> Data_in<12> Latch
X_Data_inLatch13 Clk D_Data_in<13> Data_in<13> Latch
X_Data_inLatch14 Clk D_Data_in<14> Data_in<14> Latch
X_Data_inLatch15 Clk D_Data_in<15> Data_in<15> Latch

*X_RELatch Clk D_RE RE Latch
*X_WELatch Clk D_WE WE Latch

X_RLatch0 Clkn DAddr_rd<0> Addr_rd<0> Latch
X_RLatch1 Clkn DAddr_rd<1> Addr_rd<1> Latch
X_RLatch2 Clkn DAddr_rd<2> Addr_rd<2> Latch
X_RLatch3 Clkn DAddr_rd<3> Addr_rd<3> Latch

X_WLatch0 Clk DAddr_wr<0> Addr_wr<0> Latch
X_WLatch1 Clk DAddr_wr<1> Addr_wr<1> Latch
X_WLatch2 Clk DAddr_wr<2> Addr_wr<2> Latch
X_WLatch3 Clk DAddr_wr<3> Addr_wr<3> Latch

X_Data_outLatch0 Clkn Data_out<0> Q_Data_out<0> Latch
X_Data_outLatch1 Clkn Data_out<1> Q_Data_out<1> Latch
X_Data_outLatch2 Clkn Data_out<2> Q_Data_out<2> Latch
X_Data_outLatch3 Clkn Data_out<3> Q_Data_out<3> Latch
X_Data_outLatch4 Clkn Data_out<4> Q_Data_out<4> Latch
X_Data_outLatch5 Clkn Data_out<5> Q_Data_out<5> Latch
X_Data_outLatch6 Clkn Data_out<6> Q_Data_out<6> Latch
X_Data_outLatch7 Clkn Data_out<7> Q_Data_out<7> Latch
X_Data_outLatch8 Clkn Data_out<8> Q_Data_out<8> Latch
X_Data_outLatch9 Clkn Data_out<9> Q_Data_out<9> Latch
X_Data_outLatch10 Clkn Data_out<10> Q_Data_out<10> Latch
X_Data_outLatch11 Clkn Data_out<11> Q_Data_out<11> Latch
X_Data_outLatch12 Clkn Data_out<12> Q_Data_out<12> Latch
X_Data_outLatch13 Clkn Data_out<13> Q_Data_out<13> Latch
X_Data_outLatch14 Clkn Data_out<14> Q_Data_out<14> Latch
X_Data_outLatch15 Clkn Data_out<15> Q_Data_out<15> Latch

.measure TRAN tre_dataout7 TRIG v(re) VAL = '0.5*pvcc' Rise = 1 TARG v(data_out<7>) VAL ='0.5*pvcc' Fall = 1
*d0 doesn't change so will throw error
*.measure TRAN tpClkQ2 TRIG v(sp) VAL = '0.5*pvcc' Fall = 1 TARG v(Qn) VAL ='0.5*pvcc' Rise = 1

.tran 2p 4n Start=0.0  

.probe V(*)
.option post
.end


