* SPICE NETLIST
***************************************

.SUBCKT L2_trialSDFLx4_ASAP7_75t_R vss! vdd! CLK Sp D0 D1 Qn
** N=36 EP=7 IP=0 FDC=40
M0 vss! CLK 4 vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=53464 $Y=43524 $D=1
M1 10 4 vss! vss! nmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=53680 $Y=43524 $D=1
M2 6 Sp vss! vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=54328 $Y=43524 $D=1
M3 17 6 9 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=54976 $Y=43524 $D=1
M4 vss! D0 17 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=55192 $Y=43524 $D=1
M5 18 D1 vss! vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=55408 $Y=43524 $D=1
M6 9 Sp 18 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=55624 $Y=43524 $D=1
M7 19 9 vss! vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=56272 $Y=43524 $D=1
M8 12 10 19 vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=56704 $Y=43524 $D=1
M9 24 4 12 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=56920 $Y=43524 $D=1
M10 vss! 11 24 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57136 $Y=43524 $D=1
M11 11 12 vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57352 $Y=43524 $D=1
M12 14 4 11 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57568 $Y=43524 $D=1
M13 22 10 14 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57784 $Y=43524 $D=1
M14 vss! 13 22 vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=58216 $Y=43524 $D=1
M15 13 14 vss! vss! nmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=58432 $Y=43524 $D=1
M16 vss! 14 Qn vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59080 $Y=43524 $D=1
M17 Qn 14 vss! vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59296 $Y=43524 $D=1
M18 vss! 14 Qn vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59512 $Y=43524 $D=1
M19 Qn 14 vss! vss! nmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59728 $Y=43524 $D=1
M20 vdd! CLK 4 vdd! pmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=53464 $Y=44172 $D=0
M21 10 4 vdd! vdd! pmos_rvt L=2e-08 W=5.4e-08 nfin=2 $X=53680 $Y=44172 $D=0
M22 6 Sp vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=54328 $Y=44064 $D=0
M23 vdd! 6 15 vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=54976 $Y=44064 $D=0
M24 15 D0 vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=55192 $Y=44064 $D=0
M25 9 D1 15 vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=55408 $Y=44064 $D=0
M26 15 Sp 9 vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=55624 $Y=44064 $D=0
M27 20 9 vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=56272 $Y=44064 $D=0
M28 12 4 20 vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=56488 $Y=44064 $D=0
M29 21 10 12 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=56704 $Y=44280 $D=0
M30 vdd! 11 21 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57136 $Y=44280 $D=0
M31 11 12 vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57352 $Y=44280 $D=0
M32 14 10 11 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=57784 $Y=44280 $D=0
M33 23 4 14 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=58000 $Y=44280 $D=0
M34 vdd! 13 23 vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=58216 $Y=44280 $D=0
M35 13 14 vdd! vdd! pmos_rvt L=2e-08 W=2.7e-08 nfin=1 $X=58432 $Y=44280 $D=0
M36 vdd! 14 Qn vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59080 $Y=44064 $D=0
M37 Qn 14 vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59296 $Y=44064 $D=0
M38 vdd! 14 Qn vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59512 $Y=44064 $D=0
M39 Qn 14 vdd! vdd! pmos_rvt L=2e-08 W=8.1e-08 nfin=3 $X=59728 $Y=44064 $D=0
.ENDS
***************************************
