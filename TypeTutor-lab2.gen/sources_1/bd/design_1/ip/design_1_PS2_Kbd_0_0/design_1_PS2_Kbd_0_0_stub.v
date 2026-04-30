// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 23 09:58:56 2026
// Host        : Lab016-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_PS2_Kbd_0_0/design_1_PS2_Kbd_0_0_stub.v
// Design      : design_1_PS2_Kbd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_PS2_Kbd_0_0,PS2_Kbd_wrap,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "PS2_Kbd_wrap,Vivado 2025.1" *) 
module design_1_PS2_Kbd_0_0(Clk_100MHz, Key_Code, E0, F0, Key_Rdy, PS2_Clk, 
  PS2_Data)
/* synthesis syn_black_box black_box_pad_pin="Key_Code[7:0],E0,F0,Key_Rdy,PS2_Clk,PS2_Data" */
/* synthesis syn_force_seq_prim="Clk_100MHz" */;
  input Clk_100MHz /* synthesis syn_isclock = 1 */;
  output [7:0]Key_Code;
  output E0;
  output F0;
  output Key_Rdy;
  input PS2_Clk;
  input PS2_Data;
endmodule
