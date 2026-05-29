//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon May  4 10:30:18 2026
//Host        : Lab016-09 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input clk_100mhz_clk_n;
  input clk_100mhz_clk_p;

  wire OLED_SCL;
  wire OLED_SDA;
  wire PS2_Clk;
  wire PS2_Data;
  wire clk_100mhz_clk_n;
  wire clk_100mhz_clk_p;

  design_1 design_1_i
       (.OLED_SCL(OLED_SCL),
        .OLED_SDA(OLED_SDA),
        .PS2_Clk(PS2_Clk),
        .PS2_Data(PS2_Data),
        .clk_100mhz_clk_n(clk_100mhz_clk_n),
        .clk_100mhz_clk_p(clk_100mhz_clk_p));
endmodule
