// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 23 09:58:56 2026
// Host        : Lab016-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_PS2_Kbd_0_0/design_1_PS2_Kbd_0_0_sim_netlist.v
// Design      : design_1_PS2_Kbd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PS2_Kbd_0_0,PS2_Kbd_wrap,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "PS2_Kbd_wrap,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_PS2_Kbd_0_0
   (Clk_100MHz,
    Key_Code,
    E0,
    F0,
    Key_Rdy,
    PS2_Clk,
    PS2_Data);
  input Clk_100MHz;
  output [7:0]Key_Code;
  output E0;
  output F0;
  output Key_Rdy;
  input PS2_Clk;
  input PS2_Data;

  wire Clk_100MHz;
  wire E0;
  wire F0;
  wire [7:0]Key_Code;
  wire Key_Rdy;
  wire PS2_Clk;
  wire PS2_Data;

  design_1_PS2_Kbd_0_0_PS2_Kbd_wrap U0
       (.Clk_100MHz(Clk_100MHz),
        .E0(E0),
        .F0(F0),
        .Key_Code(Key_Code),
        .Key_Rdy(Key_Rdy),
        .PS2_Clk(PS2_Clk),
        .PS2_Data(PS2_Data));
endmodule

(* ORIG_REF_NAME = "PS2_Kbd" *) 
module design_1_PS2_Kbd_0_0_PS2_Kbd
   (Clk_100MHz,
    E0,
    F0,
    Key_Rdy,
    PS2_Clk,
    PS2_Data,
    Key_Code);
  input Clk_100MHz;
  output E0;
  output F0;
  output Key_Rdy;
  input PS2_Clk;
  input PS2_Data;
  output [7:0]Key_Code;

  wire ByteRdy;
  wire ByteRdy_i_1_n_0;
  wire ByteRdy_i_2_n_0;
  wire ByteRdy_i_3_n_0;
  wire ByteRdy_i_4_n_0;
  wire Clk_100MHz;
  wire E0;
  wire F0;
  wire [7:0]Key_Code;
  wire Key_Rdy;
  wire Key_Rdy0;
  wire Key_Rdy_i_2_n_0;
  wire PS2_Clk;
  wire PS2_Data;
  wire PS_ClkHL;
  wire WDogRst;
  wire \cnt5b[0]_i_1_n_0 ;
  wire \cnt5b[1]_i_1_n_0 ;
  wire \cnt5b[2]_i_1_n_0 ;
  wire \cnt5b[3]_i_1_n_0 ;
  wire \cnt5b[4]_i_1_n_0 ;
  wire [4:0]cnt5b_reg;
  wire \cnt9b[7]_i_2_n_0 ;
  wire [8:0]cnt9b_reg;
  wire \cntMod11[0]_i_1_n_0 ;
  wire \cntMod11[1]_i_1_n_0 ;
  wire \cntMod11[2]_i_1_n_0 ;
  wire \cntMod11[3]_i_2_n_0 ;
  wire \cntMod11[3]_i_3_n_0 ;
  wire \cntMod11[3]_i_4_n_0 ;
  wire \cntMod11[3]_i_5_n_0 ;
  wire [3:0]cntMod11_reg_n_0_;
  wire p_0_in;
  wire p_6_in;
  wire [8:0]plusOp;
  wire qE0;
  wire qE0_i_1_n_0;
  wire qE0_i_2_n_0;
  wire qF0;
  wire qF0_i_1_n_0;
  wire qPS_Clk;
  wire qPS_Clk_Prev;
  wire qPS_Clk_i_1_n_0;

  LUT6 #(
    .INIT(64'h0000008400000000)) 
    ByteRdy_i_1
       (.I0(ByteRdy_i_2_n_0),
        .I1(PS_ClkHL),
        .I2(ByteRdy_i_3_n_0),
        .I3(ByteRdy_i_4_n_0),
        .I4(Key_Code[0]),
        .I5(PS2_Data),
        .O(ByteRdy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    ByteRdy_i_2
       (.I0(Key_Code[5]),
        .I1(Key_Code[6]),
        .I2(Key_Code[4]),
        .I3(Key_Code[3]),
        .I4(Key_Code[2]),
        .O(ByteRdy_i_2_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    ByteRdy_i_3
       (.I0(p_6_in),
        .I1(Key_Code[7]),
        .I2(p_0_in),
        .I3(Key_Code[1]),
        .O(ByteRdy_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    ByteRdy_i_4
       (.I0(cntMod11_reg_n_0_[1]),
        .I1(cntMod11_reg_n_0_[0]),
        .I2(cntMod11_reg_n_0_[3]),
        .I3(cntMod11_reg_n_0_[2]),
        .O(ByteRdy_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ByteRdy_reg
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(ByteRdy_i_1_n_0),
        .Q(ByteRdy),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    E0_reg
       (.C(Clk_100MHz),
        .CE(ByteRdy),
        .D(qE0),
        .Q(E0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    F0_reg
       (.C(Clk_100MHz),
        .CE(ByteRdy),
        .D(qF0),
        .Q(F0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    Key_Rdy_i_1
       (.I0(ByteRdy),
        .I1(Key_Code[6]),
        .I2(Key_Code[3]),
        .I3(Key_Code[5]),
        .I4(Key_Rdy_i_2_n_0),
        .O(Key_Rdy0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    Key_Rdy_i_2
       (.I0(Key_Code[7]),
        .I1(Key_Code[1]),
        .I2(Key_Code[0]),
        .I3(Key_Code[2]),
        .O(Key_Rdy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Key_Rdy_reg
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(Key_Rdy0),
        .Q(Key_Rdy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt5b[0]_i_1 
       (.I0(cnt5b_reg[0]),
        .I1(\cntMod11[3]_i_3_n_0 ),
        .I2(cnt9b_reg[6]),
        .I3(cnt9b_reg[5]),
        .I4(cnt9b_reg[8]),
        .I5(cnt9b_reg[7]),
        .O(\cnt5b[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt5b[1]_i_1 
       (.I0(cnt5b_reg[0]),
        .I1(\cntMod11[3]_i_4_n_0 ),
        .I2(\cnt9b[7]_i_2_n_0 ),
        .I3(cnt9b_reg[3]),
        .I4(cnt9b_reg[4]),
        .I5(cnt5b_reg[1]),
        .O(\cnt5b[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt5b[2]_i_1 
       (.I0(cnt5b_reg[1]),
        .I1(cnt5b_reg[0]),
        .I2(\cntMod11[3]_i_4_n_0 ),
        .I3(\cntMod11[3]_i_3_n_0 ),
        .I4(cnt5b_reg[2]),
        .O(\cnt5b[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt5b[3]_i_1 
       (.I0(cnt5b_reg[2]),
        .I1(cnt5b_reg[0]),
        .I2(cnt5b_reg[1]),
        .I3(\cntMod11[3]_i_4_n_0 ),
        .I4(\cntMod11[3]_i_3_n_0 ),
        .I5(cnt5b_reg[3]),
        .O(\cnt5b[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt5b[4]_i_1 
       (.I0(cnt5b_reg[4]),
        .I1(\cntMod11[3]_i_3_n_0 ),
        .I2(\cntMod11[3]_i_4_n_0 ),
        .I3(\cntMod11[3]_i_5_n_0 ),
        .I4(cnt5b_reg[2]),
        .I5(cnt5b_reg[3]),
        .O(\cnt5b[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt5b_reg[0] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(\cnt5b[0]_i_1_n_0 ),
        .Q(cnt5b_reg[0]),
        .R(PS_ClkHL));
  FDRE #(
    .INIT(1'b0)) 
    \cnt5b_reg[1] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(\cnt5b[1]_i_1_n_0 ),
        .Q(cnt5b_reg[1]),
        .R(PS_ClkHL));
  FDRE #(
    .INIT(1'b0)) 
    \cnt5b_reg[2] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(\cnt5b[2]_i_1_n_0 ),
        .Q(cnt5b_reg[2]),
        .R(PS_ClkHL));
  FDRE #(
    .INIT(1'b0)) 
    \cnt5b_reg[3] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(\cnt5b[3]_i_1_n_0 ),
        .Q(cnt5b_reg[3]),
        .R(PS_ClkHL));
  FDRE #(
    .INIT(1'b0)) 
    \cnt5b_reg[4] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(\cnt5b[4]_i_1_n_0 ),
        .Q(cnt5b_reg[4]),
        .R(PS_ClkHL));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt9b[0]_i_1 
       (.I0(cnt9b_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt9b[1]_i_1 
       (.I0(cnt9b_reg[0]),
        .I1(cnt9b_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt9b[2]_i_1 
       (.I0(cnt9b_reg[2]),
        .I1(cnt9b_reg[1]),
        .I2(cnt9b_reg[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt9b[3]_i_1 
       (.I0(cnt9b_reg[3]),
        .I1(cnt9b_reg[0]),
        .I2(cnt9b_reg[1]),
        .I3(cnt9b_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt9b[4]_i_1 
       (.I0(cnt9b_reg[4]),
        .I1(cnt9b_reg[2]),
        .I2(cnt9b_reg[1]),
        .I3(cnt9b_reg[0]),
        .I4(cnt9b_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt9b[5]_i_1 
       (.I0(cnt9b_reg[5]),
        .I1(cnt9b_reg[2]),
        .I2(cnt9b_reg[1]),
        .I3(cnt9b_reg[0]),
        .I4(cnt9b_reg[3]),
        .I5(cnt9b_reg[4]),
        .O(plusOp[5]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt9b[6]_i_1 
       (.I0(cnt9b_reg[6]),
        .I1(cnt9b_reg[4]),
        .I2(cnt9b_reg[3]),
        .I3(\cnt9b[7]_i_2_n_0 ),
        .I4(cnt9b_reg[5]),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt9b[7]_i_1 
       (.I0(cnt9b_reg[7]),
        .I1(cnt9b_reg[5]),
        .I2(\cnt9b[7]_i_2_n_0 ),
        .I3(cnt9b_reg[3]),
        .I4(cnt9b_reg[4]),
        .I5(cnt9b_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt9b[7]_i_2 
       (.I0(cnt9b_reg[2]),
        .I1(cnt9b_reg[1]),
        .I2(cnt9b_reg[0]),
        .O(\cnt9b[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt9b[8]_i_1 
       (.I0(cnt9b_reg[8]),
        .I1(cnt9b_reg[6]),
        .I2(\cntMod11[3]_i_3_n_0 ),
        .I3(cnt9b_reg[5]),
        .I4(cnt9b_reg[7]),
        .O(plusOp[8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[0] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(cnt9b_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[1] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(cnt9b_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[2] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(cnt9b_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[3] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(cnt9b_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[4] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(cnt9b_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[5] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(cnt9b_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[6] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(cnt9b_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[7] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(cnt9b_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt9b_reg[8] 
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(cnt9b_reg[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \cntMod11[0]_i_1 
       (.I0(cntMod11_reg_n_0_[2]),
        .I1(cntMod11_reg_n_0_[3]),
        .I2(cntMod11_reg_n_0_[1]),
        .I3(cntMod11_reg_n_0_[0]),
        .O(\cntMod11[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6626)) 
    \cntMod11[1]_i_1 
       (.I0(cntMod11_reg_n_0_[0]),
        .I1(cntMod11_reg_n_0_[1]),
        .I2(cntMod11_reg_n_0_[3]),
        .I3(cntMod11_reg_n_0_[2]),
        .O(\cntMod11[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cntMod11[2]_i_1 
       (.I0(cntMod11_reg_n_0_[2]),
        .I1(cntMod11_reg_n_0_[0]),
        .I2(cntMod11_reg_n_0_[1]),
        .O(\cntMod11[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cntMod11[3]_i_1 
       (.I0(cnt5b_reg[4]),
        .I1(\cntMod11[3]_i_3_n_0 ),
        .I2(\cntMod11[3]_i_4_n_0 ),
        .I3(\cntMod11[3]_i_5_n_0 ),
        .I4(cnt5b_reg[2]),
        .I5(cnt5b_reg[3]),
        .O(WDogRst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7B80)) 
    \cntMod11[3]_i_2 
       (.I0(cntMod11_reg_n_0_[0]),
        .I1(cntMod11_reg_n_0_[1]),
        .I2(cntMod11_reg_n_0_[2]),
        .I3(cntMod11_reg_n_0_[3]),
        .O(\cntMod11[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cntMod11[3]_i_3 
       (.I0(cnt9b_reg[4]),
        .I1(cnt9b_reg[3]),
        .I2(cnt9b_reg[0]),
        .I3(cnt9b_reg[1]),
        .I4(cnt9b_reg[2]),
        .O(\cntMod11[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cntMod11[3]_i_4 
       (.I0(cnt9b_reg[6]),
        .I1(cnt9b_reg[5]),
        .I2(cnt9b_reg[8]),
        .I3(cnt9b_reg[7]),
        .O(\cntMod11[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cntMod11[3]_i_5 
       (.I0(cnt5b_reg[1]),
        .I1(cnt5b_reg[0]),
        .O(\cntMod11[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntMod11_reg[0] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(\cntMod11[0]_i_1_n_0 ),
        .Q(cntMod11_reg_n_0_[0]),
        .R(WDogRst));
  FDRE #(
    .INIT(1'b0)) 
    \cntMod11_reg[1] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(\cntMod11[1]_i_1_n_0 ),
        .Q(cntMod11_reg_n_0_[1]),
        .R(WDogRst));
  FDRE #(
    .INIT(1'b0)) 
    \cntMod11_reg[2] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(\cntMod11[2]_i_1_n_0 ),
        .Q(cntMod11_reg_n_0_[2]),
        .R(WDogRst));
  FDRE #(
    .INIT(1'b0)) 
    \cntMod11_reg[3] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(\cntMod11[3]_i_2_n_0 ),
        .Q(cntMod11_reg_n_0_[3]),
        .R(WDogRst));
  LUT5 #(
    .INIT(32'h555F0002)) 
    qE0_i_1
       (.I0(ByteRdy),
        .I1(Key_Code[4]),
        .I2(Key_Rdy_i_2_n_0),
        .I3(qE0_i_2_n_0),
        .I4(qE0),
        .O(qE0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    qE0_i_2
       (.I0(Key_Code[6]),
        .I1(Key_Code[3]),
        .I2(Key_Code[5]),
        .O(qE0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    qE0_reg
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(qE0_i_1_n_0),
        .Q(qE0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h57570200)) 
    qF0_i_1
       (.I0(ByteRdy),
        .I1(Key_Rdy_i_2_n_0),
        .I2(qE0_i_2_n_0),
        .I3(Key_Code[4]),
        .I4(qF0),
        .O(qF0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    qF0_reg
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(qF0_i_1_n_0),
        .Q(qF0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    qPS_Clk_Prev_reg
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(qPS_Clk),
        .Q(qPS_Clk_Prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    qPS_Clk_i_1
       (.I0(PS2_Clk),
        .I1(\cntMod11[3]_i_4_n_0 ),
        .I2(\cnt9b[7]_i_2_n_0 ),
        .I3(cnt9b_reg[3]),
        .I4(cnt9b_reg[4]),
        .I5(qPS_Clk),
        .O(qPS_Clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    qPS_Clk_reg
       (.C(Clk_100MHz),
        .CE(1'b1),
        .D(qPS_Clk_i_1_n_0),
        .Q(qPS_Clk),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg11b[8]_i_1 
       (.I0(qPS_Clk_Prev),
        .I1(qPS_Clk),
        .O(PS_ClkHL));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[10] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(PS2_Data),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[1] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[1]),
        .Q(Key_Code[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[2] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[2]),
        .Q(Key_Code[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[3] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[3]),
        .Q(Key_Code[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[4] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[4]),
        .Q(Key_Code[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[5] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[5]),
        .Q(Key_Code[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[6] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[6]),
        .Q(Key_Code[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[7] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(Key_Code[7]),
        .Q(Key_Code[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[8] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(p_6_in),
        .Q(Key_Code[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg11b_reg[9] 
       (.C(Clk_100MHz),
        .CE(PS_ClkHL),
        .D(p_0_in),
        .Q(p_6_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "PS2_Kbd_wrap" *) 
module design_1_PS2_Kbd_0_0_PS2_Kbd_wrap
   (Key_Code,
    E0,
    F0,
    Key_Rdy,
    Clk_100MHz,
    PS2_Clk,
    PS2_Data);
  output [7:0]Key_Code;
  output E0;
  output F0;
  output Key_Rdy;
  input Clk_100MHz;
  input PS2_Clk;
  input PS2_Data;

  wire Clk_100MHz;
  wire E0;
  wire F0;
  wire [7:0]Key_Code;
  wire Key_Rdy;
  wire PS2_Clk;
  wire PS2_Data;

  design_1_PS2_Kbd_0_0_PS2_Kbd i_wrap
       (.Clk_100MHz(Clk_100MHz),
        .E0(E0),
        .F0(F0),
        .Key_Code(Key_Code),
        .Key_Rdy(Key_Rdy),
        .PS2_Clk(PS2_Clk),
        .PS2_Data(PS2_Data));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
