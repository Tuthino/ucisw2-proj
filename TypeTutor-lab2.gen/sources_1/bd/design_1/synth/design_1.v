//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Mar 23 10:44:06 2026
//Host        : Lab016-10 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (OLED_SCL,
    OLED_SDA,
    PS2_Clk,
    PS2_Data,
    clk_100mhz_clk_n,
    clk_100mhz_clk_p);
  inout OLED_SCL;
  inout OLED_SDA;
  input PS2_Clk;
  input PS2_Data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk_100mhz CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_100mhz, CAN_DEBUG false, FREQ_HZ 100000000" *) input clk_100mhz_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk_100mhz CLK_P" *) input clk_100mhz_clk_p;

  wire [6:0]Game_Logic_FSM_0_OLED_ASCII;
  wire Game_Logic_FSM_0_OLED_ClrScr;
  wire Game_Logic_FSM_0_OLED_WE;
  wire OLED_ASCII_0_Busy;
  wire OLED_SCL;
  wire OLED_SDA;
  wire PS2_Clk;
  wire PS2_Data;
  wire PS2_Kbd_0_F0;
  wire [7:0]PS2_Kbd_0_Key_Code;
  wire PS2_Kbd_0_Key_Rdy;
  wire [6:0]Scancode_to_ASCII_0_ASCII_Out;
  wire Scancode_to_ASCII_0_Char_Valid;
  wire clk_100mhz_clk_n;
  wire clk_100mhz_clk_p;
  wire clk_wiz_0_clk_out1;

  design_1_Game_Logic_FSM_0_0 Game_Logic_FSM_0
       (.ASCII_In(Scancode_to_ASCII_0_ASCII_Out),
        .Char_Valid(Scancode_to_ASCII_0_Char_Valid),
        .Clk(clk_wiz_0_clk_out1),
        .OLED_ASCII(Game_Logic_FSM_0_OLED_ASCII),
        .OLED_Busy(OLED_ASCII_0_Busy),
        .OLED_ClrScr(Game_Logic_FSM_0_OLED_ClrScr),
        .OLED_WE(Game_Logic_FSM_0_OLED_WE));
  design_1_OLED_ASCII_0_0 OLED_ASCII_0
       (.ASCII(Game_Logic_FSM_0_OLED_ASCII),
        .ASCII_WE(Game_Logic_FSM_0_OLED_WE),
        .Busy(OLED_ASCII_0_Busy),
        .Clk_100MHz(clk_wiz_0_clk_out1),
        .ClrScr(Game_Logic_FSM_0_OLED_ClrScr),
        .OLED_SCL(OLED_SCL),
        .OLED_SDA(OLED_SDA));
  design_1_PS2_Kbd_0_0 PS2_Kbd_0
       (.Clk_100MHz(clk_wiz_0_clk_out1),
        .F0(PS2_Kbd_0_F0),
        .Key_Code(PS2_Kbd_0_Key_Code),
        .Key_Rdy(PS2_Kbd_0_Key_Rdy),
        .PS2_Clk(PS2_Clk),
        .PS2_Data(PS2_Data));
  design_1_Scancode_to_ASCII_0_0 Scancode_to_ASCII_0
       (.ASCII_Out(Scancode_to_ASCII_0_ASCII_Out),
        .Char_Valid(Scancode_to_ASCII_0_Char_Valid),
        .Clk(clk_wiz_0_clk_out1),
        .F0(PS2_Kbd_0_F0),
        .Key_Code(PS2_Kbd_0_Key_Code),
        .Key_Rdy(PS2_Kbd_0_Key_Rdy));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(clk_100mhz_clk_n),
        .clk_in1_p(clk_100mhz_clk_p),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(1'b0));
endmodule
