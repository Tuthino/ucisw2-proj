-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Mar 23 09:58:56 2026
-- Host        : Lab016-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_OLED_ASCII_0_0/design_1_OLED_ASCII_0_0_stub.vhdl
-- Design      : design_1_OLED_ASCII_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_OLED_ASCII_0_0 is
  Port ( 
    Clk_100MHz : in STD_LOGIC;
    ASCII : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ASCII_WE : in STD_LOGIC;
    ClrScr : in STD_LOGIC;
    Busy : out STD_LOGIC;
    OLED_SDA : inout STD_LOGIC;
    OLED_SCL : inout STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_OLED_ASCII_0_0 : entity is "design_1_OLED_ASCII_0_0,OLED_ASCII_wrap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_OLED_ASCII_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_OLED_ASCII_0_0 : entity is "package_project";
end design_1_OLED_ASCII_0_0;

architecture stub of design_1_OLED_ASCII_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk_100MHz,ASCII[6:0],ASCII_WE,ClrScr,Busy,OLED_SDA,OLED_SCL";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "OLED_ASCII_wrap,Vivado 2025.1";
begin
end;
