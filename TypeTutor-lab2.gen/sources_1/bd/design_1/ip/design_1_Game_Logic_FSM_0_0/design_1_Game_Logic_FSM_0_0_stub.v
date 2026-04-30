// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 23 10:45:01 2026
// Host        : Lab016-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_Game_Logic_FSM_0_0/design_1_Game_Logic_FSM_0_0_stub.v
// Design      : design_1_Game_Logic_FSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_Game_Logic_FSM_0_0,Game_Logic_FSM,{}" *) (* CORE_GENERATION_INFO = "design_1_Game_Logic_FSM_0_0,Game_Logic_FSM,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Game_Logic_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "Game_Logic_FSM,Vivado 2025.1" *) 
module design_1_Game_Logic_FSM_0_0(Clk, ASCII_In, Char_Valid, OLED_ASCII, OLED_WE, 
  OLED_ClrScr, OLED_Busy)
/* synthesis syn_black_box black_box_pad_pin="ASCII_In[6:0],Char_Valid,OLED_ASCII[6:0],OLED_WE,OLED_ClrScr,OLED_Busy" */
/* synthesis syn_force_seq_prim="Clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input Clk /* synthesis syn_isclock = 1 */;
  input [6:0]ASCII_In;
  input Char_Valid;
  output [6:0]OLED_ASCII;
  output OLED_WE;
  output OLED_ClrScr;
  input OLED_Busy;
endmodule
