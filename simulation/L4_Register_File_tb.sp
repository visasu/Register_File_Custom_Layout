
.TEMP 25
.OPTION

.param pvcc = 0.7

.param AClkperiod = 1n
.param tr = 25p
.param tf = 25p
.param AClkpw = '(AClkperiod/2)-(tr+tf/2)'

.param A0period = 2n
.param tr = 25p
.param tf = 25p
.param A0pw = '(A0period/2)-(tr+tf/2)'

.param A1period = 4n
.param A1pw = '(A1period/2)-(tr+tf/2)'

.param A2period = 8n
.param A2pw = '(A2period/2)-(tr+tf/2)'

.param A3period = 16n
.param A3pw = '(A3period/2)-(tr+tf/2)'


.param wenperiod = 32n
.param wenpw = '(wenperiod/20)-(tr+tf/2)'

.param renperiod = 32n
.param renpw = '(renperiod/20)-(tr+tf/2)'


*.lib '/afs/asu.edu/users/v/s/r/vsriva10/425_lab/iPDK/hspice/saed32nm.lib' TT
.inc '/afs/asu.edu/class/e/e/e/eee525b/asap7/asap7PDK/models/hspice/7nm_TT.pm'

.include "./Register_File.sp"
.include "./RF_Latch.sp"


Vvss vss! 0 DC = 0
Vvdd vdd! 0 DC = 0.7
*VAClk AClk 0 DC = 0.7
*Vd D_d 0 DC = 0.7

Vaddr_rd<0> DAddr_rd<0> 0 DC = 0
Vaddr_rd<1> DAddr_rd<1> 0 DC = 0
Vaddr_rd<2> DAddr_rd<2> 0 DC = 0
Vaddr_rd<3> DAddr_rd<3> 0 DC = 0.7

Vaddr_wr<0> DAddr_wr<0> 0 DC = 0
Vaddr_wr<1> DAddr_wr<1> 0 DC = 0
Vaddr_wr<2> DAddr_wr<2> 0 DC = 0
Vaddr_wr<3> DAddr_wr<3> 0 DC = 0.7


Vdata_in<0> D_Data_in<0> 0 DC = 0
Vdata_in<1> D_Data_in<1> 0 DC = 0
Vdata_in<2> D_Data_in<2> 0 DC = 0.7
Vdata_in<3> D_Data_in<3> 0 DC = 0
Vdata_in<4> D_Data_in<4> 0 DC = 0
Vdata_in<5> D_Data_in<5> 0 DC = 0
Vdata_in<6> D_Data_in<6> 0 DC = 0
Vdata_in<7> D_Data_in<7> 0 DC = 0
Vdata_in<8> D_Data_in<8> 0 DC = 0
Vdata_in<9> D_Data_in<9> 0 DC = 0
Vdata_in<10> D_Data_in<10> 0 DC = 0
Vdata_in<11> D_Data_in<11> 0 DC = 0
Vdata_in<12> D_Data_in<12> 0 DC = 0
Vdata_in<13> D_Data_in<13> 0 DC = 0
Vdata_in<14> D_Data_in<14> 0 DC = 0
Vdata_in<15> D_Data_in<15> 0 DC = 0




Vclk Clk 0 PULSE ( 0.7 0 0 tr tf AClkpw AClkperiod)
Vprecharge Precharge 0 PULSE ( 0.7 0 0 tr tf AClkpw AClkperiod)
Vre D_RE 0 PULSE ( 0 0.7 12n tr tf renpw renperiod)
Vwe D_WE 0 PULSE ( 0 0.7 0 tr tf wenpw wenperiod)



X_Register_File Addr_rd<3> Addr_rd<2> Addr_rd<1> Addr_rd<0> Addr_wr<3> Addr_wr<2> Addr_wr<1> Addr_wr<0> Clk Data_in<15> Data_in<14> Data_in<13> Data_in<12> Data_in<11> Data_in<10> Data_in<9> Data_in<8> Data_in<7> Data_in<6> Data_in<5> Data_in<4> Data_in<3> Data_in<2> Data_in<1> Data_in<0> Data_out<15> Data_out<14> Data_out<13> Data_out<12> Data_out<11> Data_out<10> Data_out<9> Data_out<8> Data_out<7> Data_out<6> Data_out<5> Data_out<4> Data_out<3> Data_out<2> Data_out<1> Data_out<0> Precharge RE WE Register_File


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

X_RELatch Clk D_RE RE Latch
X_WELatch Clk D_WE WE Latch

X_RLatch0 Clk DAddr_rd<0> Addr_rd<0> Latch
X_RLatch1 Clk DAddr_rd<1> Addr_rd<1> Latch
X_RLatch2 Clk DAddr_rd<2> Addr_rd<2> Latch
X_RLatch3 Clk DAddr_rd<3> Addr_rd<3> Latch

X_WLatch0 Clk DAddr_wr<0> Addr_wr<0> Latch
X_WLatch1 Clk DAddr_wr<1> Addr_wr<1> Latch
X_WLatch2 Clk DAddr_wr<2> Addr_wr<2> Latch
X_WLatch3 Clk DAddr_wr<3> Addr_wr<3> Latch

X_Data_outLatch0 Clk Data_out<0> Q_Data_out<0> Latch
X_Data_outLatch1 Clk Data_out<1> Q_Data_out<1> Latch
X_Data_outLatch2 Clk Data_out<2> Q_Data_out<2> Latch
X_Data_outLatch3 Clk Data_out<3> Q_Data_out<3> Latch
X_Data_outLatch4 Clk Data_out<4> Q_Data_out<4> Latch
X_Data_outLatch5 Clk Data_out<5> Q_Data_out<5> Latch
X_Data_outLatch6 Clk Data_out<6> Q_Data_out<6> Latch
X_Data_outLatch7 Clk Data_out<7> Q_Data_out<7> Latch
X_Data_outLatch8 Clk Data_out<8> Q_Data_out<8> Latch
X_Data_outLatch9 Clk Data_out<9> Q_Data_out<9> Latch
X_Data_outLatch10 Clk Data_out<10> Q_Data_out<10> Latch
X_Data_outLatch11 Clk Data_out<11> Q_Data_out<11> Latch
X_Data_outLatch12 Clk Data_out<12> Q_Data_out<12> Latch
X_Data_outLatch13 Clk Data_out<13> Q_Data_out<13> Latch
X_Data_outLatch14 Clk Data_out<14> Q_Data_out<14> Latch
X_Data_outLatch15 Clk Data_out<15> Q_Data_out<15> Latch

*.measure TRAN ta0_word0 TRIG v(a0) VAL = '0.5*pvcc' Rise = 1 TARG v(word0) VAL ='0.5*pvcc' Rise = 1
*d0 doesn't change so will throw error
*.measure TRAN tpClkQ2 TRIG v(sp) VAL = '0.5*pvcc' Fall = 1 TARG v(Qn) VAL ='0.5*pvcc' Rise = 1

.tran 2p 30n Start=0.0  

.probe V(*)
.option post
.end


