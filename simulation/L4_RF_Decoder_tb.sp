
.TEMP 25
.OPTION

.param pvcc = 0.7

.param Aclkperiod = 1n
.param tr = 25p
.param tf = 25p
.param Aclkpw = '(Aclkperiod/2)-(tr+tf/2)'

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

.param renperiod = 32n
.param renpw = '(renperiod/2)-(tr+tf/2)'


*.lib '/afs/asu.edu/users/v/s/r/vsriva10/425_lab/iPDK/hspice/saed32nm.lib' TT
.inc '/afs/asu.edu/class/e/e/e/eee525b/asap7/asap7PDK/models/hspice/7nm_TT.pm'

.include "./Decoder_4x16_ASAP7_75t_R_new.sp"
.include "./RF_Latch.sp"

Vvss vss! 0 DC = 0
Vvdd vdd! 0 DC = 0.7
*VAclk Aclk 0 DC = 0.7

VAclk Aclk 0 PULSE ( 0.7 0 0 tr tf Aclkpw Aclkperiod)
VA0 DA0 0 PULSE ( 0 0.7 0 tr tf A0pw A0period)
VA1 DA1 0 PULSE ( 0 0.7 0 tr tf A1pw A1period)
VA2 DA2 0 PULSE ( 0 0.7 0 tr tf A2pw A2period)
VA3 DA3 0 PULSE ( 0 0.7 0 tr tf A3pw A3period)

Ven en 0 PULSE ( 0 0.7 0 tr tf renpw renperiod)

X_Decoder_4x16_ASAP7_75t_R_new A0 A1 A2 A3 en word0 word1 word2 word3 word4 word5 word6 word7 word8 word9 word10 word11 word12 word13 word14 word15 Decoder_4x16_ASAP7_75t_R_new

X_Latch0 Aclk DA0 A0 Latch
X_Latch1 Aclk DA1 A1 Latch
X_Latch2 Aclk DA2 A2 Latch
X_Latch3 Aclk DA3 A3 Latch

*.measure TRAN ta0_word0 TRIG v(a0) VAL = '0.5*pvcc' Rise = 1 TARG v(word0) VAL ='0.5*pvcc' Rise = 1
*d0 doesn't change so will throw error
*.measure TRAN tpclkQ2 TRIG v(sp) VAL = '0.5*pvcc' Fall = 1 TARG v(Qn) VAL ='0.5*pvcc' Rise = 1

.tran 2p 30n Start=0.0  

.probe V(*)
.option post
.end


