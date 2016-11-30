////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: TopLevelRS232_synthesis.v
// /___/   /\     Timestamp: Mon Nov 23 20:34:32 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TopLevelRS232.ngc TopLevelRS232_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: TopLevelRS232.ngc
// Output file	: C:\Users\Michael\Xilinx\RS232\netgen\synthesis\TopLevelRS232_synthesis.v
// # of Modules	: 1
// Design Name	: TopLevelRS232
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module TopLevelRS232 (
  send, Ca, Cb, Cc, Cd, Ce, Cf, Cg, Reset, Rxd, Txd, SystemClock, An, RxdData, DataIn
);
  input send;
  output Ca;
  output Cb;
  output Cc;
  output Cd;
  output Ce;
  output Cf;
  output Cg;
  input Reset;
  input Rxd;
  output Txd;
  input SystemClock;
  output [3 : 0] An;
  output [7 : 0] RxdData;
  input [7 : 0] DataIn;
  wire An_0_OBUF_4;
  wire An_1_OBUF_5;
  wire An_2_OBUF_6;
  wire An_3_OBUF_7;
  wire Ca_OBUF_9;
  wire Cb_OBUF_11;
  wire Cc_OBUF_13;
  wire Cd_OBUF_15;
  wire Ce_OBUF_17;
  wire Cf_OBUF_19;
  wire Cg_OBUF_21;
  wire \Mcount_iCount9_cy<1>_rt_24 ;
  wire \Mcount_iCount9_cy<2>_rt_26 ;
  wire \Mcount_iCount9_cy<3>_rt_28 ;
  wire \Mcount_iCount9_cy<4>_rt_30 ;
  wire \Mcount_iCount9_cy<5>_rt_32 ;
  wire \Mcount_iCount9_cy<6>_rt_34 ;
  wire \Mcount_iCount9_cy<7>_rt_36 ;
  wire \Mcount_iCount9_xor<8>_rt_38 ;
  wire N0;
  wire N1;
  wire N46;
  wire N48;
  wire N52;
  wire N54;
  wire N56;
  wire Reset_IBUF_47;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire Rxd_IBUF_82;
  wire SystemClock_BUFGP_84;
  wire \U1/u1/Result<0>1 ;
  wire \U1/u1/Result<1>1 ;
  wire \U1/u1/Result<2>1 ;
  wire \U1/u1/Result<3>1 ;
  wire \U1/u1/iBtShift_0_0_94 ;
  wire \U1/u1/iBtShift_0_0_not0000 ;
  wire \U1/u1/iClock1xEnable_96 ;
  wire \U1/u1/iClock1xEnable_and0000 ;
  wire \U1/u1/iClock1xEnable_inv ;
  wire \U1/u1/iClockDiv_31 ;
  wire \U1/u1/iDataOut1_not0001 ;
  wire \U1/u1/iEnableDataOut ;
  wire \U1/u1/iEnableDataOut_inv_114 ;
  wire \U1/u1/iResetReg_119 ;
  wire \U1/u1/iRxd1_120 ;
  wire \U1/u1/iRxd1_or0000 ;
  wire \U1/u1/iRxd2_122 ;
  wire \U1/u1/presState_FSM_FFd1_131 ;
  wire \U1/u1/presState_FSM_FFd2_132 ;
  wire \U1/u1/presState_FSM_FFd3_133 ;
  wire \U1/u1/presState_FSM_FFd3-In_134 ;
  wire \U1/u1/presState_FSM_FFd4_135 ;
  wire \U2/Mrom_seg ;
  wire \U2/Mrom_seg1 ;
  wire \U2/Mrom_seg2 ;
  wire \U2/Mrom_seg3 ;
  wire \U2/Mrom_seg4 ;
  wire \U2/Mrom_seg5 ;
  wire \U2/Mrom_seg6 ;
  wire \U3/Mrom_seg ;
  wire \U3/Mrom_seg1 ;
  wire \U3/Mrom_seg2 ;
  wire \U3/Mrom_seg3 ;
  wire \U3/Mrom_seg4 ;
  wire \U3/Mrom_seg5 ;
  wire \U3/Mrom_seg6 ;
  wire \U4/Mrom_seg ;
  wire \U4/Mrom_seg1 ;
  wire \U4/Mrom_seg2 ;
  wire \U4/Mrom_seg3 ;
  wire \U4/Mrom_seg4 ;
  wire \U4/Mrom_seg5 ;
  wire \U4/Mrom_seg6 ;
  wire \U5/Mrom_seg ;
  wire \U5/Mrom_seg1 ;
  wire \U5/Mrom_seg2 ;
  wire \U5/Mrom_seg3 ;
  wire \U5/Mrom_seg4 ;
  wire \U5/Mrom_seg5 ;
  wire \U5/Mrom_seg6 ;
  wire \U6/Mcount_iCount16_cy<10>_rt_166 ;
  wire \U6/Mcount_iCount16_cy<11>_rt_168 ;
  wire \U6/Mcount_iCount16_cy<12>_rt_170 ;
  wire \U6/Mcount_iCount16_cy<13>_rt_172 ;
  wire \U6/Mcount_iCount16_cy<14>_rt_174 ;
  wire \U6/Mcount_iCount16_cy<1>_rt_176 ;
  wire \U6/Mcount_iCount16_cy<2>_rt_178 ;
  wire \U6/Mcount_iCount16_cy<3>_rt_180 ;
  wire \U6/Mcount_iCount16_cy<4>_rt_182 ;
  wire \U6/Mcount_iCount16_cy<5>_rt_184 ;
  wire \U6/Mcount_iCount16_cy<6>_rt_186 ;
  wire \U6/Mcount_iCount16_cy<7>_rt_188 ;
  wire \U6/Mcount_iCount16_cy<8>_rt_190 ;
  wire \U6/Mcount_iCount16_cy<9>_rt_192 ;
  wire \U6/Mcount_iCount16_xor<15>_rt_194 ;
  wire \U6/Mmux_iDigitOut_3_195 ;
  wire \U6/Mmux_iDigitOut_31_196 ;
  wire \U6/Mmux_iDigitOut_32_197 ;
  wire \U6/Mmux_iDigitOut_33_198 ;
  wire \U6/Mmux_iDigitOut_34_199 ;
  wire \U6/Mmux_iDigitOut_35_200 ;
  wire \U6/Mmux_iDigitOut_36_201 ;
  wire \U6/Mmux_iDigitOut_4_202 ;
  wire \U6/Mmux_iDigitOut_41_203 ;
  wire \U6/Mmux_iDigitOut_42_204 ;
  wire \U6/Mmux_iDigitOut_43_205 ;
  wire \U6/Mmux_iDigitOut_44_206 ;
  wire \U6/Mmux_iDigitOut_45_207 ;
  wire \U6/Mmux_iDigitOut_46_208 ;
  wire iCount9_or0000;
  wire iCount9_or000010_235;
  wire [7 : 0] Mcount_iCount9_cy;
  wire [0 : 0] Mcount_iCount9_lut;
  wire [15 : 0] Result;
  wire [3 : 0] \U1/u1/Result ;
  wire [3 : 0] \U1/u1/iClockDiv ;
  wire [7 : 0] \U1/u1/iDataOut1 ;
  wire [3 : 0] \U1/u1/iNoBitsReceived ;
  wire [7 : 0] \U1/u1/iShiftRegister ;
  wire [14 : 0] \U6/Mcount_iCount16_cy ;
  wire [0 : 0] \U6/Mcount_iCount16_lut ;
  wire [15 : 0] \U6/iCount16 ;
  wire [8 : 0] iCount9;
  wire [7 : 0] iDataOut2_mux0000;
  wire [7 : 0] iPrev1;
  wire [7 : 0] iPrev2;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_0 (
    .D(\U1/u1/iDataOut1 [0]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[0])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_1 (
    .D(\U1/u1/iDataOut1 [1]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[1])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_2 (
    .D(\U1/u1/iDataOut1 [2]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[2])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_3 (
    .D(\U1/u1/iDataOut1 [3]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[3])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_4 (
    .D(\U1/u1/iDataOut1 [4]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[4])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_5 (
    .D(\U1/u1/iDataOut1 [5]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[5])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_6 (
    .D(\U1/u1/iDataOut1 [6]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[6])
  );
  LD #(
    .INIT ( 1'b0 ))
  iPrev2_7 (
    .D(\U1/u1/iDataOut1 [7]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev2[7])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_0 (
    .D(\U1/u1/iDataOut1 [0]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[0])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_1 (
    .D(\U1/u1/iDataOut1 [1]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[1])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_2 (
    .D(\U1/u1/iDataOut1 [2]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[2])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_3 (
    .D(\U1/u1/iDataOut1 [3]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[3])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_4 (
    .D(\U1/u1/iDataOut1 [4]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[4])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_5 (
    .D(\U1/u1/iDataOut1 [5]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[5])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_6 (
    .D(\U1/u1/iDataOut1 [6]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[6])
  );
  LD_1 #(
    .INIT ( 1'b0 ))
  iPrev1_7 (
    .D(\U1/u1/iDataOut1 [7]),
    .G(\U1/u1/iBtShift_0_0_94 ),
    .Q(iPrev1[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_0 (
    .C(SystemClock_BUFGP_84),
    .D(Result[0]),
    .R(iCount9_or0000),
    .Q(iCount9[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_1 (
    .C(SystemClock_BUFGP_84),
    .D(Result[1]),
    .R(iCount9_or0000),
    .Q(iCount9[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_2 (
    .C(SystemClock_BUFGP_84),
    .D(Result[2]),
    .R(iCount9_or0000),
    .Q(iCount9[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_3 (
    .C(SystemClock_BUFGP_84),
    .D(Result[3]),
    .R(iCount9_or0000),
    .Q(iCount9[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_4 (
    .C(SystemClock_BUFGP_84),
    .D(Result[4]),
    .R(iCount9_or0000),
    .Q(iCount9[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_5 (
    .C(SystemClock_BUFGP_84),
    .D(Result[5]),
    .R(iCount9_or0000),
    .Q(iCount9[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_6 (
    .C(SystemClock_BUFGP_84),
    .D(Result[6]),
    .R(iCount9_or0000),
    .Q(iCount9[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_7 (
    .C(SystemClock_BUFGP_84),
    .D(Result[7]),
    .R(iCount9_or0000),
    .Q(iCount9[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  iCount9_8 (
    .C(SystemClock_BUFGP_84),
    .D(Result[8]),
    .R(iCount9_or0000),
    .Q(iCount9[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_0  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<0>1 ),
    .Q(\U6/iCount16 [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_1  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<1>1 ),
    .Q(\U6/iCount16 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_2  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<2>1 ),
    .Q(\U6/iCount16 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_3  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<3>1 ),
    .Q(\U6/iCount16 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_4  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<4>1 ),
    .Q(\U6/iCount16 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_5  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<5>1 ),
    .Q(\U6/iCount16 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_6  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<6>1 ),
    .Q(\U6/iCount16 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_7  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<7>1 ),
    .Q(\U6/iCount16 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_8  (
    .C(SystemClock_BUFGP_84),
    .D(\Result<8>1 ),
    .Q(\U6/iCount16 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_9  (
    .C(SystemClock_BUFGP_84),
    .D(Result[9]),
    .Q(\U6/iCount16 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_10  (
    .C(SystemClock_BUFGP_84),
    .D(Result[10]),
    .Q(\U6/iCount16 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_11  (
    .C(SystemClock_BUFGP_84),
    .D(Result[11]),
    .Q(\U6/iCount16 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_12  (
    .C(SystemClock_BUFGP_84),
    .D(Result[12]),
    .Q(\U6/iCount16 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_13  (
    .C(SystemClock_BUFGP_84),
    .D(Result[13]),
    .Q(\U6/iCount16 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_14  (
    .C(SystemClock_BUFGP_84),
    .D(Result[14]),
    .Q(\U6/iCount16 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U6/iCount16_15  (
    .C(SystemClock_BUFGP_84),
    .D(Result[15]),
    .Q(\U6/iCount16 [15])
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5_5  (
    .I0(\U6/Mmux_iDigitOut_46_208 ),
    .I1(\U6/Mmux_iDigitOut_36_201 ),
    .S(\U6/iCount16 [15]),
    .O(Cg_OBUF_21)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_46  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg ),
    .I2(\U3/Mrom_seg ),
    .O(\U6/Mmux_iDigitOut_46_208 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_36  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg ),
    .I2(\U5/Mrom_seg ),
    .O(\U6/Mmux_iDigitOut_36_201 )
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5_4  (
    .I0(\U6/Mmux_iDigitOut_45_207 ),
    .I1(\U6/Mmux_iDigitOut_35_200 ),
    .S(\U6/iCount16 [15]),
    .O(Cf_OBUF_19)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_45  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg1 ),
    .I2(\U3/Mrom_seg1 ),
    .O(\U6/Mmux_iDigitOut_45_207 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_35  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg1 ),
    .I2(\U5/Mrom_seg1 ),
    .O(\U6/Mmux_iDigitOut_35_200 )
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5_3  (
    .I0(\U6/Mmux_iDigitOut_44_206 ),
    .I1(\U6/Mmux_iDigitOut_34_199 ),
    .S(\U6/iCount16 [15]),
    .O(Ce_OBUF_17)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_44  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg2 ),
    .I2(\U3/Mrom_seg2 ),
    .O(\U6/Mmux_iDigitOut_44_206 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_34  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg2 ),
    .I2(\U5/Mrom_seg2 ),
    .O(\U6/Mmux_iDigitOut_34_199 )
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5_2  (
    .I0(\U6/Mmux_iDigitOut_43_205 ),
    .I1(\U6/Mmux_iDigitOut_33_198 ),
    .S(\U6/iCount16 [15]),
    .O(Cd_OBUF_15)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_43  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg3 ),
    .I2(\U3/Mrom_seg3 ),
    .O(\U6/Mmux_iDigitOut_43_205 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_33  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg3 ),
    .I2(\U5/Mrom_seg3 ),
    .O(\U6/Mmux_iDigitOut_33_198 )
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5_1  (
    .I0(\U6/Mmux_iDigitOut_42_204 ),
    .I1(\U6/Mmux_iDigitOut_32_197 ),
    .S(\U6/iCount16 [15]),
    .O(Cc_OBUF_13)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_42  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg4 ),
    .I2(\U3/Mrom_seg4 ),
    .O(\U6/Mmux_iDigitOut_42_204 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_32  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg4 ),
    .I2(\U5/Mrom_seg4 ),
    .O(\U6/Mmux_iDigitOut_32_197 )
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5_0  (
    .I0(\U6/Mmux_iDigitOut_41_203 ),
    .I1(\U6/Mmux_iDigitOut_31_196 ),
    .S(\U6/iCount16 [15]),
    .O(Cb_OBUF_11)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_41  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg5 ),
    .I2(\U3/Mrom_seg5 ),
    .O(\U6/Mmux_iDigitOut_41_203 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_31  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg5 ),
    .I2(\U5/Mrom_seg5 ),
    .O(\U6/Mmux_iDigitOut_31_196 )
  );
  MUXF5   \U6/Mmux_iDigitOut_2_f5  (
    .I0(\U6/Mmux_iDigitOut_4_202 ),
    .I1(\U6/Mmux_iDigitOut_3_195 ),
    .S(\U6/iCount16 [15]),
    .O(Ca_OBUF_9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_4  (
    .I0(\U6/iCount16 [14]),
    .I1(\U2/Mrom_seg6 ),
    .I2(\U3/Mrom_seg6 ),
    .O(\U6/Mmux_iDigitOut_4_202 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U6/Mmux_iDigitOut_3  (
    .I0(\U6/iCount16 [14]),
    .I1(\U4/Mrom_seg6 ),
    .I2(\U5/Mrom_seg6 ),
    .O(\U6/Mmux_iDigitOut_3_195 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\U6/Mcount_iCount16_lut [0]),
    .O(\U6/Mcount_iCount16_cy [0])
  );
  XORCY   \U6/Mcount_iCount16_xor<0>  (
    .CI(N0),
    .LI(\U6/Mcount_iCount16_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<1>  (
    .CI(\U6/Mcount_iCount16_cy [0]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<1>_rt_176 ),
    .O(\U6/Mcount_iCount16_cy [1])
  );
  XORCY   \U6/Mcount_iCount16_xor<1>  (
    .CI(\U6/Mcount_iCount16_cy [0]),
    .LI(\U6/Mcount_iCount16_cy<1>_rt_176 ),
    .O(\Result<1>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<2>  (
    .CI(\U6/Mcount_iCount16_cy [1]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<2>_rt_178 ),
    .O(\U6/Mcount_iCount16_cy [2])
  );
  XORCY   \U6/Mcount_iCount16_xor<2>  (
    .CI(\U6/Mcount_iCount16_cy [1]),
    .LI(\U6/Mcount_iCount16_cy<2>_rt_178 ),
    .O(\Result<2>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<3>  (
    .CI(\U6/Mcount_iCount16_cy [2]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<3>_rt_180 ),
    .O(\U6/Mcount_iCount16_cy [3])
  );
  XORCY   \U6/Mcount_iCount16_xor<3>  (
    .CI(\U6/Mcount_iCount16_cy [2]),
    .LI(\U6/Mcount_iCount16_cy<3>_rt_180 ),
    .O(\Result<3>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<4>  (
    .CI(\U6/Mcount_iCount16_cy [3]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<4>_rt_182 ),
    .O(\U6/Mcount_iCount16_cy [4])
  );
  XORCY   \U6/Mcount_iCount16_xor<4>  (
    .CI(\U6/Mcount_iCount16_cy [3]),
    .LI(\U6/Mcount_iCount16_cy<4>_rt_182 ),
    .O(\Result<4>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<5>  (
    .CI(\U6/Mcount_iCount16_cy [4]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<5>_rt_184 ),
    .O(\U6/Mcount_iCount16_cy [5])
  );
  XORCY   \U6/Mcount_iCount16_xor<5>  (
    .CI(\U6/Mcount_iCount16_cy [4]),
    .LI(\U6/Mcount_iCount16_cy<5>_rt_184 ),
    .O(\Result<5>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<6>  (
    .CI(\U6/Mcount_iCount16_cy [5]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<6>_rt_186 ),
    .O(\U6/Mcount_iCount16_cy [6])
  );
  XORCY   \U6/Mcount_iCount16_xor<6>  (
    .CI(\U6/Mcount_iCount16_cy [5]),
    .LI(\U6/Mcount_iCount16_cy<6>_rt_186 ),
    .O(\Result<6>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<7>  (
    .CI(\U6/Mcount_iCount16_cy [6]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<7>_rt_188 ),
    .O(\U6/Mcount_iCount16_cy [7])
  );
  XORCY   \U6/Mcount_iCount16_xor<7>  (
    .CI(\U6/Mcount_iCount16_cy [6]),
    .LI(\U6/Mcount_iCount16_cy<7>_rt_188 ),
    .O(\Result<7>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<8>  (
    .CI(\U6/Mcount_iCount16_cy [7]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<8>_rt_190 ),
    .O(\U6/Mcount_iCount16_cy [8])
  );
  XORCY   \U6/Mcount_iCount16_xor<8>  (
    .CI(\U6/Mcount_iCount16_cy [7]),
    .LI(\U6/Mcount_iCount16_cy<8>_rt_190 ),
    .O(\Result<8>1 )
  );
  MUXCY   \U6/Mcount_iCount16_cy<9>  (
    .CI(\U6/Mcount_iCount16_cy [8]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<9>_rt_192 ),
    .O(\U6/Mcount_iCount16_cy [9])
  );
  XORCY   \U6/Mcount_iCount16_xor<9>  (
    .CI(\U6/Mcount_iCount16_cy [8]),
    .LI(\U6/Mcount_iCount16_cy<9>_rt_192 ),
    .O(Result[9])
  );
  MUXCY   \U6/Mcount_iCount16_cy<10>  (
    .CI(\U6/Mcount_iCount16_cy [9]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<10>_rt_166 ),
    .O(\U6/Mcount_iCount16_cy [10])
  );
  XORCY   \U6/Mcount_iCount16_xor<10>  (
    .CI(\U6/Mcount_iCount16_cy [9]),
    .LI(\U6/Mcount_iCount16_cy<10>_rt_166 ),
    .O(Result[10])
  );
  MUXCY   \U6/Mcount_iCount16_cy<11>  (
    .CI(\U6/Mcount_iCount16_cy [10]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<11>_rt_168 ),
    .O(\U6/Mcount_iCount16_cy [11])
  );
  XORCY   \U6/Mcount_iCount16_xor<11>  (
    .CI(\U6/Mcount_iCount16_cy [10]),
    .LI(\U6/Mcount_iCount16_cy<11>_rt_168 ),
    .O(Result[11])
  );
  MUXCY   \U6/Mcount_iCount16_cy<12>  (
    .CI(\U6/Mcount_iCount16_cy [11]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<12>_rt_170 ),
    .O(\U6/Mcount_iCount16_cy [12])
  );
  XORCY   \U6/Mcount_iCount16_xor<12>  (
    .CI(\U6/Mcount_iCount16_cy [11]),
    .LI(\U6/Mcount_iCount16_cy<12>_rt_170 ),
    .O(Result[12])
  );
  MUXCY   \U6/Mcount_iCount16_cy<13>  (
    .CI(\U6/Mcount_iCount16_cy [12]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<13>_rt_172 ),
    .O(\U6/Mcount_iCount16_cy [13])
  );
  XORCY   \U6/Mcount_iCount16_xor<13>  (
    .CI(\U6/Mcount_iCount16_cy [12]),
    .LI(\U6/Mcount_iCount16_cy<13>_rt_172 ),
    .O(Result[13])
  );
  MUXCY   \U6/Mcount_iCount16_cy<14>  (
    .CI(\U6/Mcount_iCount16_cy [13]),
    .DI(N0),
    .S(\U6/Mcount_iCount16_cy<14>_rt_174 ),
    .O(\U6/Mcount_iCount16_cy [14])
  );
  XORCY   \U6/Mcount_iCount16_xor<14>  (
    .CI(\U6/Mcount_iCount16_cy [13]),
    .LI(\U6/Mcount_iCount16_cy<14>_rt_174 ),
    .O(Result[14])
  );
  XORCY   \U6/Mcount_iCount16_xor<15>  (
    .CI(\U6/Mcount_iCount16_cy [14]),
    .LI(\U6/Mcount_iCount16_xor<15>_rt_194 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_iCount9_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_iCount9_lut[0]),
    .O(Mcount_iCount9_cy[0])
  );
  XORCY   \Mcount_iCount9_xor<0>  (
    .CI(N0),
    .LI(Mcount_iCount9_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_iCount9_cy<1>  (
    .CI(Mcount_iCount9_cy[0]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<1>_rt_24 ),
    .O(Mcount_iCount9_cy[1])
  );
  XORCY   \Mcount_iCount9_xor<1>  (
    .CI(Mcount_iCount9_cy[0]),
    .LI(\Mcount_iCount9_cy<1>_rt_24 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_iCount9_cy<2>  (
    .CI(Mcount_iCount9_cy[1]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<2>_rt_26 ),
    .O(Mcount_iCount9_cy[2])
  );
  XORCY   \Mcount_iCount9_xor<2>  (
    .CI(Mcount_iCount9_cy[1]),
    .LI(\Mcount_iCount9_cy<2>_rt_26 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_iCount9_cy<3>  (
    .CI(Mcount_iCount9_cy[2]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<3>_rt_28 ),
    .O(Mcount_iCount9_cy[3])
  );
  XORCY   \Mcount_iCount9_xor<3>  (
    .CI(Mcount_iCount9_cy[2]),
    .LI(\Mcount_iCount9_cy<3>_rt_28 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_iCount9_cy<4>  (
    .CI(Mcount_iCount9_cy[3]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<4>_rt_30 ),
    .O(Mcount_iCount9_cy[4])
  );
  XORCY   \Mcount_iCount9_xor<4>  (
    .CI(Mcount_iCount9_cy[3]),
    .LI(\Mcount_iCount9_cy<4>_rt_30 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_iCount9_cy<5>  (
    .CI(Mcount_iCount9_cy[4]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<5>_rt_32 ),
    .O(Mcount_iCount9_cy[5])
  );
  XORCY   \Mcount_iCount9_xor<5>  (
    .CI(Mcount_iCount9_cy[4]),
    .LI(\Mcount_iCount9_cy<5>_rt_32 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_iCount9_cy<6>  (
    .CI(Mcount_iCount9_cy[5]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<6>_rt_34 ),
    .O(Mcount_iCount9_cy[6])
  );
  XORCY   \Mcount_iCount9_xor<6>  (
    .CI(Mcount_iCount9_cy[5]),
    .LI(\Mcount_iCount9_cy<6>_rt_34 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_iCount9_cy<7>  (
    .CI(Mcount_iCount9_cy[6]),
    .DI(N0),
    .S(\Mcount_iCount9_cy<7>_rt_36 ),
    .O(Mcount_iCount9_cy[7])
  );
  XORCY   \Mcount_iCount9_xor<7>  (
    .CI(Mcount_iCount9_cy[6]),
    .LI(\Mcount_iCount9_cy<7>_rt_36 ),
    .O(Result[7])
  );
  XORCY   \Mcount_iCount9_xor<8>  (
    .CI(Mcount_iCount9_cy[7]),
    .LI(\Mcount_iCount9_xor<8>_rt_38 ),
    .O(Result[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/iNoBitsReceived_3  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/Result<3>1 ),
    .Q(\U1/u1/iNoBitsReceived [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/iNoBitsReceived_2  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/Result<2>1 ),
    .Q(\U1/u1/iNoBitsReceived [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/iNoBitsReceived_1  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/Result<1>1 ),
    .Q(\U1/u1/iNoBitsReceived [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/iNoBitsReceived_0  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/Result<0>1 ),
    .Q(\U1/u1/iNoBitsReceived [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U1/u1/iClockDiv_3  (
    .C(iCount9[8]),
    .D(\U1/u1/Result [3]),
    .R(\U1/u1/iClock1xEnable_inv ),
    .Q(\U1/u1/iClockDiv_31 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U1/u1/iClockDiv_2  (
    .C(iCount9[8]),
    .D(\U1/u1/Result [2]),
    .R(\U1/u1/iClock1xEnable_inv ),
    .Q(\U1/u1/iClockDiv [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U1/u1/iClockDiv_1  (
    .C(iCount9[8]),
    .D(\U1/u1/Result [1]),
    .R(\U1/u1/iClock1xEnable_inv ),
    .Q(\U1/u1/iClockDiv [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U1/u1/iClockDiv_0  (
    .C(iCount9[8]),
    .D(\U1/u1/Result [0]),
    .R(\U1/u1/iClock1xEnable_inv ),
    .Q(\U1/u1/iClockDiv [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iBtShift_0_0  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iBtShift_0_0_not0000 ),
    .Q(\U1/u1/iBtShift_0_0_94 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U1/u1/presState_FSM_FFd4  (
    .C(\U1/u1/iClockDiv [3]),
    .D(\U1/u1/presState_FSM_FFd1_131 ),
    .PRE(\U1/u1/iClock1xEnable_inv ),
    .Q(\U1/u1/presState_FSM_FFd4_135 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/presState_FSM_FFd1  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/presState_FSM_FFd2_132 ),
    .Q(\U1/u1/presState_FSM_FFd1_131 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/presState_FSM_FFd3  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/presState_FSM_FFd3-In_134 ),
    .Q(\U1/u1/presState_FSM_FFd3_133 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U1/u1/presState_FSM_FFd2  (
    .C(\U1/u1/iClockDiv [3]),
    .CLR(\U1/u1/iClock1xEnable_inv ),
    .D(\U1/u1/iEnableDataOut ),
    .Q(\U1/u1/presState_FSM_FFd2_132 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_7  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [7]),
    .Q(\U1/u1/iDataOut1 [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_6  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [6]),
    .Q(\U1/u1/iDataOut1 [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_5  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [5]),
    .Q(\U1/u1/iDataOut1 [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_4  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [4]),
    .Q(\U1/u1/iDataOut1 [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_3  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [3]),
    .Q(\U1/u1/iDataOut1 [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_2  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [2]),
    .Q(\U1/u1/iDataOut1 [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_1  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [1]),
    .Q(\U1/u1/iDataOut1 [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iDataOut1_0  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iDataOut1_not0001 ),
    .D(\U1/u1/iShiftRegister [0]),
    .Q(\U1/u1/iDataOut1 [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_7  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(Rxd_IBUF_82),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_6  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [7]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_5  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [6]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_4  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [5]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_3  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [4]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_2  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [3]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_1  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [2]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U1/u1/iShiftRegister_0  (
    .C(\U1/u1/iClockDiv [3]),
    .CE(\U1/u1/iEnableDataOut_inv_114 ),
    .D(\U1/u1/iShiftRegister [1]),
    .R(\U1/u1/iResetReg_119 ),
    .Q(\U1/u1/iShiftRegister [0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \U1/u1/iRxd2  (
    .C(iCount9[8]),
    .D(\U1/u1/iRxd1_120 ),
    .S(\U1/u1/iRxd1_or0000 ),
    .Q(\U1/u1/iRxd2_122 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U1/u1/iClock1xEnable  (
    .C(iCount9[8]),
    .CE(\U1/u1/iRxd1_or0000 ),
    .D(N0),
    .S(\U1/u1/iClock1xEnable_and0000 ),
    .Q(\U1/u1/iClock1xEnable_96 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \U1/u1/iRxd1  (
    .C(iCount9[8]),
    .D(Rxd_IBUF_82),
    .S(\U1/u1/iRxd1_or0000 ),
    .Q(\U1/u1/iRxd1_120 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U1/u1/iResetReg  (
    .C(iCount9[8]),
    .CE(Reset_IBUF_47),
    .D(N1),
    .Q(\U1/u1/iResetReg_119 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U6/Mdecod_An31  (
    .I0(\U6/iCount16 [14]),
    .I1(\U6/iCount16 [15]),
    .O(An_3_OBUF_7)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U6/Mdecod_An21  (
    .I0(\U6/iCount16 [15]),
    .I1(\U6/iCount16 [14]),
    .O(An_2_OBUF_6)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U6/Mdecod_An11  (
    .I0(\U6/iCount16 [14]),
    .I1(\U6/iCount16 [15]),
    .O(An_1_OBUF_5)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U6/Mdecod_An01  (
    .I0(\U6/iCount16 [14]),
    .I1(\U6/iCount16 [15]),
    .O(An_0_OBUF_4)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U1/u1/Mcount_iNoBitsReceived_xor<1>11  (
    .I0(\U1/u1/iNoBitsReceived [1]),
    .I1(\U1/u1/iNoBitsReceived [0]),
    .O(\U1/u1/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U1/u1/Mcount_iClockDiv_xor<1>11  (
    .I0(\U1/u1/iClockDiv [1]),
    .I1(\U1/u1/iClockDiv [0]),
    .O(\U1/u1/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U1/u1/Mcount_iNoBitsReceived_xor<2>11  (
    .I0(\U1/u1/iNoBitsReceived [2]),
    .I1(\U1/u1/iNoBitsReceived [1]),
    .I2(\U1/u1/iNoBitsReceived [0]),
    .O(\U1/u1/Result<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U1/u1/Mcount_iClockDiv_xor<2>11  (
    .I0(\U1/u1/iClockDiv [2]),
    .I1(\U1/u1/iClockDiv [1]),
    .I2(\U1/u1/iClockDiv [0]),
    .O(\U1/u1/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U1/u1/Mcount_iNoBitsReceived_xor<3>11  (
    .I0(\U1/u1/iNoBitsReceived [3]),
    .I1(\U1/u1/iNoBitsReceived [1]),
    .I2(\U1/u1/iNoBitsReceived [0]),
    .I3(\U1/u1/iNoBitsReceived [2]),
    .O(\U1/u1/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U1/u1/Mcount_iClockDiv_xor<3>11  (
    .I0(\U1/u1/iClockDiv_31 ),
    .I1(\U1/u1/iClockDiv [1]),
    .I2(\U1/u1/iClockDiv [0]),
    .I3(\U1/u1/iClockDiv [2]),
    .O(\U1/u1/Result [3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U1/u1/iRxd1_or00001  (
    .I0(Reset_IBUF_47),
    .I1(\U1/u1/presState_FSM_FFd1_131 ),
    .O(\U1/u1/iRxd1_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U1/u1/iClock1xEnable_and00001  (
    .I0(\U1/u1/iRxd2_122 ),
    .I1(\U1/u1/iRxd1_120 ),
    .O(\U1/u1/iClock1xEnable_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \U3/Mrom_seg21  (
    .I0(\U1/u1/iDataOut1 [7]),
    .I1(\U1/u1/iDataOut1 [4]),
    .I2(\U1/u1/iDataOut1 [6]),
    .I3(\U1/u1/iDataOut1 [5]),
    .O(\U3/Mrom_seg2 )
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \U3/Mrom_seg41  (
    .I0(\U1/u1/iDataOut1 [5]),
    .I1(\U1/u1/iDataOut1 [6]),
    .I2(\U1/u1/iDataOut1 [7]),
    .I3(\U1/u1/iDataOut1 [4]),
    .O(\U3/Mrom_seg4 )
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \U3/Mrom_seg51  (
    .I0(\U1/u1/iDataOut1 [6]),
    .I1(\U1/u1/iDataOut1 [4]),
    .I2(\U1/u1/iDataOut1 [5]),
    .I3(\U1/u1/iDataOut1 [7]),
    .O(\U3/Mrom_seg5 )
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \U3/Mrom_seg111  (
    .I0(\U1/u1/iDataOut1 [7]),
    .I1(\U1/u1/iDataOut1 [5]),
    .I2(\U1/u1/iDataOut1 [4]),
    .I3(\U1/u1/iDataOut1 [6]),
    .O(\U3/Mrom_seg1 )
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \U3/Mrom_seg11  (
    .I0(\U1/u1/iDataOut1 [5]),
    .I1(\U1/u1/iDataOut1 [7]),
    .I2(\U1/u1/iDataOut1 [6]),
    .I3(\U1/u1/iDataOut1 [4]),
    .O(\U3/Mrom_seg )
  );
  LUT4 #(
    .INIT ( 16'hC118 ))
  \U3/Mrom_seg31  (
    .I0(\U1/u1/iDataOut1 [7]),
    .I1(\U1/u1/iDataOut1 [5]),
    .I2(\U1/u1/iDataOut1 [4]),
    .I3(\U1/u1/iDataOut1 [6]),
    .O(\U3/Mrom_seg3 )
  );
  LUT4 #(
    .INIT ( 16'h4184 ))
  \U3/Mrom_seg61  (
    .I0(\U1/u1/iDataOut1 [5]),
    .I1(\U1/u1/iDataOut1 [4]),
    .I2(\U1/u1/iDataOut1 [7]),
    .I3(\U1/u1/iDataOut1 [6]),
    .O(\U3/Mrom_seg6 )
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \U2/Mrom_seg21  (
    .I0(\U1/u1/iDataOut1 [3]),
    .I1(\U1/u1/iDataOut1 [0]),
    .I2(\U1/u1/iDataOut1 [2]),
    .I3(\U1/u1/iDataOut1 [1]),
    .O(\U2/Mrom_seg2 )
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \U2/Mrom_seg41  (
    .I0(\U1/u1/iDataOut1 [1]),
    .I1(\U1/u1/iDataOut1 [2]),
    .I2(\U1/u1/iDataOut1 [3]),
    .I3(\U1/u1/iDataOut1 [0]),
    .O(\U2/Mrom_seg4 )
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \U2/Mrom_seg51  (
    .I0(\U1/u1/iDataOut1 [2]),
    .I1(\U1/u1/iDataOut1 [0]),
    .I2(\U1/u1/iDataOut1 [1]),
    .I3(\U1/u1/iDataOut1 [3]),
    .O(\U2/Mrom_seg5 )
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \U2/Mrom_seg111  (
    .I0(\U1/u1/iDataOut1 [3]),
    .I1(\U1/u1/iDataOut1 [1]),
    .I2(\U1/u1/iDataOut1 [0]),
    .I3(\U1/u1/iDataOut1 [2]),
    .O(\U2/Mrom_seg1 )
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \U2/Mrom_seg11  (
    .I0(\U1/u1/iDataOut1 [1]),
    .I1(\U1/u1/iDataOut1 [3]),
    .I2(\U1/u1/iDataOut1 [2]),
    .I3(\U1/u1/iDataOut1 [0]),
    .O(\U2/Mrom_seg )
  );
  LUT4 #(
    .INIT ( 16'hC118 ))
  \U2/Mrom_seg31  (
    .I0(\U1/u1/iDataOut1 [3]),
    .I1(\U1/u1/iDataOut1 [1]),
    .I2(\U1/u1/iDataOut1 [0]),
    .I3(\U1/u1/iDataOut1 [2]),
    .O(\U2/Mrom_seg3 )
  );
  LUT4 #(
    .INIT ( 16'h4184 ))
  \U2/Mrom_seg61  (
    .I0(\U1/u1/iDataOut1 [1]),
    .I1(\U1/u1/iDataOut1 [0]),
    .I2(\U1/u1/iDataOut1 [3]),
    .I3(\U1/u1/iDataOut1 [2]),
    .O(\U2/Mrom_seg6 )
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \U1/u1/presState_FSM_FFd3-In  (
    .I0(\U1/u1/presState_FSM_FFd3_133 ),
    .I1(N46),
    .I2(\U1/u1/iNoBitsReceived [3]),
    .I3(\U1/u1/presState_FSM_FFd4_135 ),
    .O(\U1/u1/presState_FSM_FFd3-In_134 )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \U1/u1/iEnableDataOut_inv  (
    .I0(\U1/u1/presState_FSM_FFd3_133 ),
    .I1(\U1/u1/iNoBitsReceived [3]),
    .I2(\U1/u1/iNoBitsReceived [2]),
    .I3(N56),
    .O(\U1/u1/iEnableDataOut_inv_114 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<7>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[7]),
    .I2(iPrev1[7]),
    .O(iDataOut2_mux0000[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<6>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[6]),
    .I2(iPrev1[6]),
    .O(iDataOut2_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<5>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[5]),
    .I2(iPrev1[5]),
    .O(iDataOut2_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<4>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[4]),
    .I2(iPrev1[4]),
    .O(iDataOut2_mux0000[4])
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \U5/Mrom_seg21  (
    .I0(iDataOut2_mux0000[7]),
    .I1(iDataOut2_mux0000[4]),
    .I2(iDataOut2_mux0000[6]),
    .I3(iDataOut2_mux0000[5]),
    .O(\U5/Mrom_seg2 )
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \U5/Mrom_seg41  (
    .I0(iDataOut2_mux0000[5]),
    .I1(iDataOut2_mux0000[7]),
    .I2(iDataOut2_mux0000[6]),
    .I3(iDataOut2_mux0000[4]),
    .O(\U5/Mrom_seg4 )
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \U5/Mrom_seg51  (
    .I0(iDataOut2_mux0000[6]),
    .I1(iDataOut2_mux0000[4]),
    .I2(iDataOut2_mux0000[5]),
    .I3(iDataOut2_mux0000[7]),
    .O(\U5/Mrom_seg5 )
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \U5/Mrom_seg111  (
    .I0(iDataOut2_mux0000[7]),
    .I1(iDataOut2_mux0000[5]),
    .I2(iDataOut2_mux0000[4]),
    .I3(iDataOut2_mux0000[6]),
    .O(\U5/Mrom_seg1 )
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \U5/Mrom_seg11  (
    .I0(iDataOut2_mux0000[5]),
    .I1(iDataOut2_mux0000[7]),
    .I2(iDataOut2_mux0000[6]),
    .I3(iDataOut2_mux0000[4]),
    .O(\U5/Mrom_seg )
  );
  LUT4 #(
    .INIT ( 16'hC118 ))
  \U5/Mrom_seg31  (
    .I0(iDataOut2_mux0000[7]),
    .I1(iDataOut2_mux0000[5]),
    .I2(iDataOut2_mux0000[4]),
    .I3(iDataOut2_mux0000[6]),
    .O(\U5/Mrom_seg3 )
  );
  LUT4 #(
    .INIT ( 16'h4184 ))
  \U5/Mrom_seg61  (
    .I0(iDataOut2_mux0000[5]),
    .I1(iDataOut2_mux0000[4]),
    .I2(iDataOut2_mux0000[7]),
    .I3(iDataOut2_mux0000[6]),
    .O(\U5/Mrom_seg6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<3>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[3]),
    .I2(iPrev1[3]),
    .O(iDataOut2_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<2>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[2]),
    .I2(iPrev1[2]),
    .O(iDataOut2_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<1>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[1]),
    .I2(iPrev1[1]),
    .O(iDataOut2_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \iDataOut2_mux0000<0>1  (
    .I0(\U1/u1/iBtShift_0_0_94 ),
    .I1(iPrev2[0]),
    .I2(iPrev1[0]),
    .O(iDataOut2_mux0000[0])
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \U4/Mrom_seg21  (
    .I0(iDataOut2_mux0000[3]),
    .I1(iDataOut2_mux0000[0]),
    .I2(iDataOut2_mux0000[2]),
    .I3(iDataOut2_mux0000[1]),
    .O(\U4/Mrom_seg2 )
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \U4/Mrom_seg41  (
    .I0(iDataOut2_mux0000[1]),
    .I1(iDataOut2_mux0000[3]),
    .I2(iDataOut2_mux0000[2]),
    .I3(iDataOut2_mux0000[0]),
    .O(\U4/Mrom_seg4 )
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \U4/Mrom_seg51  (
    .I0(iDataOut2_mux0000[2]),
    .I1(iDataOut2_mux0000[0]),
    .I2(iDataOut2_mux0000[1]),
    .I3(iDataOut2_mux0000[3]),
    .O(\U4/Mrom_seg5 )
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \U4/Mrom_seg111  (
    .I0(iDataOut2_mux0000[3]),
    .I1(iDataOut2_mux0000[1]),
    .I2(iDataOut2_mux0000[0]),
    .I3(iDataOut2_mux0000[2]),
    .O(\U4/Mrom_seg1 )
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \U4/Mrom_seg11  (
    .I0(iDataOut2_mux0000[1]),
    .I1(iDataOut2_mux0000[3]),
    .I2(iDataOut2_mux0000[2]),
    .I3(iDataOut2_mux0000[0]),
    .O(\U4/Mrom_seg )
  );
  LUT4 #(
    .INIT ( 16'hC118 ))
  \U4/Mrom_seg31  (
    .I0(iDataOut2_mux0000[3]),
    .I1(iDataOut2_mux0000[1]),
    .I2(iDataOut2_mux0000[0]),
    .I3(iDataOut2_mux0000[2]),
    .O(\U4/Mrom_seg3 )
  );
  LUT4 #(
    .INIT ( 16'h4184 ))
  \U4/Mrom_seg61  (
    .I0(iDataOut2_mux0000[1]),
    .I1(iDataOut2_mux0000[0]),
    .I2(iDataOut2_mux0000[3]),
    .I3(iDataOut2_mux0000[2]),
    .O(\U4/Mrom_seg6 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  iCount9_or000010 (
    .I0(iCount9[2]),
    .I1(iCount9[7]),
    .I2(iCount9[6]),
    .I3(iCount9[1]),
    .O(iCount9_or000010_235)
  );
  IBUF   Reset_IBUF (
    .I(Reset),
    .O(Reset_IBUF_47)
  );
  IBUF   Rxd_IBUF (
    .I(Rxd),
    .O(Rxd_IBUF_82)
  );
  OBUF   Ca_OBUF (
    .I(Ca_OBUF_9),
    .O(Ca)
  );
  OBUF   Cb_OBUF (
    .I(Cb_OBUF_11),
    .O(Cb)
  );
  OBUF   Cc_OBUF (
    .I(Cc_OBUF_13),
    .O(Cc)
  );
  OBUF   Cd_OBUF (
    .I(Cd_OBUF_15),
    .O(Cd)
  );
  OBUF   Ce_OBUF (
    .I(Ce_OBUF_17),
    .O(Ce)
  );
  OBUF   Cf_OBUF (
    .I(Cf_OBUF_19),
    .O(Cf)
  );
  OBUF   Cg_OBUF (
    .I(Cg_OBUF_21),
    .O(Cg)
  );
  OBUF   Txd_OBUF (
    .I(N1),
    .O(Txd)
  );
  OBUF   An_3_OBUF (
    .I(An_3_OBUF_7),
    .O(An[3])
  );
  OBUF   An_2_OBUF (
    .I(An_2_OBUF_6),
    .O(An[2])
  );
  OBUF   An_1_OBUF (
    .I(An_1_OBUF_5),
    .O(An[1])
  );
  OBUF   An_0_OBUF (
    .I(An_0_OBUF_4),
    .O(An[0])
  );
  OBUF   RxdData_7_OBUF (
    .I(\U1/u1/iDataOut1 [7]),
    .O(RxdData[7])
  );
  OBUF   RxdData_6_OBUF (
    .I(\U1/u1/iDataOut1 [6]),
    .O(RxdData[6])
  );
  OBUF   RxdData_5_OBUF (
    .I(\U1/u1/iDataOut1 [5]),
    .O(RxdData[5])
  );
  OBUF   RxdData_4_OBUF (
    .I(\U1/u1/iDataOut1 [4]),
    .O(RxdData[4])
  );
  OBUF   RxdData_3_OBUF (
    .I(\U1/u1/iDataOut1 [3]),
    .O(RxdData[3])
  );
  OBUF   RxdData_2_OBUF (
    .I(\U1/u1/iDataOut1 [2]),
    .O(RxdData[2])
  );
  OBUF   RxdData_1_OBUF (
    .I(\U1/u1/iDataOut1 [1]),
    .O(RxdData[1])
  );
  OBUF   RxdData_0_OBUF (
    .I(\U1/u1/iDataOut1 [0]),
    .O(RxdData[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<1>_rt  (
    .I0(\U6/iCount16 [1]),
    .O(\U6/Mcount_iCount16_cy<1>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<2>_rt  (
    .I0(\U6/iCount16 [2]),
    .O(\U6/Mcount_iCount16_cy<2>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<3>_rt  (
    .I0(\U6/iCount16 [3]),
    .O(\U6/Mcount_iCount16_cy<3>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<4>_rt  (
    .I0(\U6/iCount16 [4]),
    .O(\U6/Mcount_iCount16_cy<4>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<5>_rt  (
    .I0(\U6/iCount16 [5]),
    .O(\U6/Mcount_iCount16_cy<5>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<6>_rt  (
    .I0(\U6/iCount16 [6]),
    .O(\U6/Mcount_iCount16_cy<6>_rt_186 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<7>_rt  (
    .I0(\U6/iCount16 [7]),
    .O(\U6/Mcount_iCount16_cy<7>_rt_188 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<8>_rt  (
    .I0(\U6/iCount16 [8]),
    .O(\U6/Mcount_iCount16_cy<8>_rt_190 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<9>_rt  (
    .I0(\U6/iCount16 [9]),
    .O(\U6/Mcount_iCount16_cy<9>_rt_192 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<10>_rt  (
    .I0(\U6/iCount16 [10]),
    .O(\U6/Mcount_iCount16_cy<10>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<11>_rt  (
    .I0(\U6/iCount16 [11]),
    .O(\U6/Mcount_iCount16_cy<11>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<12>_rt  (
    .I0(\U6/iCount16 [12]),
    .O(\U6/Mcount_iCount16_cy<12>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<13>_rt  (
    .I0(\U6/iCount16 [13]),
    .O(\U6/Mcount_iCount16_cy<13>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_cy<14>_rt  (
    .I0(\U6/iCount16 [14]),
    .O(\U6/Mcount_iCount16_cy<14>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<1>_rt  (
    .I0(iCount9[1]),
    .O(\Mcount_iCount9_cy<1>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<2>_rt  (
    .I0(iCount9[2]),
    .O(\Mcount_iCount9_cy<2>_rt_26 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<3>_rt  (
    .I0(iCount9[3]),
    .O(\Mcount_iCount9_cy<3>_rt_28 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<4>_rt  (
    .I0(iCount9[4]),
    .O(\Mcount_iCount9_cy<4>_rt_30 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<5>_rt  (
    .I0(iCount9[5]),
    .O(\Mcount_iCount9_cy<5>_rt_32 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<6>_rt  (
    .I0(iCount9[6]),
    .O(\Mcount_iCount9_cy<6>_rt_34 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_cy<7>_rt  (
    .I0(iCount9[7]),
    .O(\Mcount_iCount9_cy<7>_rt_36 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U6/Mcount_iCount16_xor<15>_rt  (
    .I0(\U6/iCount16 [15]),
    .O(\U6/Mcount_iCount16_xor<15>_rt_194 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_iCount9_xor<8>_rt  (
    .I0(iCount9[8]),
    .O(\Mcount_iCount9_xor<8>_rt_38 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \U1/u1/iEnableDataOut1  (
    .I0(\U1/u1/presState_FSM_FFd3_133 ),
    .I1(N48),
    .I2(\U1/u1/iNoBitsReceived [3]),
    .I3(\U1/u1/iNoBitsReceived [2]),
    .O(\U1/u1/iEnableDataOut )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  iCount9_or000040 (
    .I0(Reset_IBUF_47),
    .I1(iCount9[0]),
    .I2(iCount9_or000010_235),
    .I3(N52),
    .O(iCount9_or0000)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \U1/u1/iDataOut1_not00011  (
    .I0(\U1/u1/iNoBitsReceived [1]),
    .I1(\U1/u1/iNoBitsReceived [0]),
    .I2(\U1/u1/iNoBitsReceived [2]),
    .I3(N54),
    .O(\U1/u1/iDataOut1_not0001 )
  );
  BUFGP   SystemClock_BUFGP (
    .I(SystemClock),
    .O(SystemClock_BUFGP_84)
  );
  BUFG   \U1/u1/iClockDiv_3_BUFG  (
    .I(\U1/u1/iClockDiv_31 ),
    .O(\U1/u1/iClockDiv [3])
  );
  INV   \U6/Mcount_iCount16_lut<0>_INV_0  (
    .I(\U6/iCount16 [0]),
    .O(\U6/Mcount_iCount16_lut [0])
  );
  INV   \Mcount_iCount9_lut<0>_INV_0  (
    .I(iCount9[0]),
    .O(Mcount_iCount9_lut[0])
  );
  INV   \U1/u1/iBtShift_0_0_not00001_INV_0  (
    .I(\U1/u1/iBtShift_0_0_94 ),
    .O(\U1/u1/iBtShift_0_0_not0000 )
  );
  INV   \U1/u1/Mcount_iNoBitsReceived_xor<0>11_INV_0  (
    .I(\U1/u1/iNoBitsReceived [0]),
    .O(\U1/u1/Result<0>1 )
  );
  INV   \U1/u1/Mcount_iClockDiv_xor<0>11_INV_0  (
    .I(\U1/u1/iClockDiv [0]),
    .O(\U1/u1/Result [0])
  );
  INV   \U1/u1/iClock1xEnable_inv1_INV_0  (
    .I(\U1/u1/iClock1xEnable_96 ),
    .O(\U1/u1/iClock1xEnable_inv )
  );
  LUT3_L #(
    .INIT ( 8'hFB ))
  \U1/u1/presState_FSM_FFd3-In_SW0  (
    .I0(\U1/u1/iNoBitsReceived [1]),
    .I1(\U1/u1/iNoBitsReceived [0]),
    .I2(\U1/u1/iNoBitsReceived [2]),
    .LO(N46)
  );
  LUT2_D #(
    .INIT ( 4'hB ))
  \U1/u1/iEnableDataOut_inv_SW0  (
    .I0(\U1/u1/iNoBitsReceived [1]),
    .I1(\U1/u1/iNoBitsReceived [0]),
    .LO(N56),
    .O(N48)
  );
  LUT4_L #(
    .INIT ( 16'h0100 ))
  iCount9_or000040_SW0 (
    .I0(iCount9[4]),
    .I1(iCount9[5]),
    .I2(iCount9[3]),
    .I3(iCount9[8]),
    .LO(N52)
  );
  LUT3_L #(
    .INIT ( 8'hBF ))
  \U1/u1/iDataOut1_not00011_SW0  (
    .I0(\U1/u1/iResetReg_119 ),
    .I1(\U1/u1/presState_FSM_FFd3_133 ),
    .I2(\U1/u1/iNoBitsReceived [3]),
    .LO(N54)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

