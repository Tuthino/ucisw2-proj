-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Mar 23 10:45:01 2026
-- Host        : Lab016-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_Game_Logic_FSM_0_0/design_1_Game_Logic_FSM_0_0_stub.vhdl
-- Design      : design_1_Game_Logic_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Game_Logic_FSM_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    ASCII_In : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Char_Valid : in STD_LOGIC;
    OLED_ASCII : out STD_LOGIC_VECTOR ( 6 downto 0 );
    OLED_WE : out STD_LOGIC;
    OLED_ClrScr : out STD_LOGIC;
    OLED_Busy : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Game_Logic_FSM_0_0 : entity is "design_1_Game_Logic_FSM_0_0,Game_Logic_FSM,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_Game_Logic_FSM_0_0 : entity is "design_1_Game_Logic_FSM_0_0,Game_Logic_FSM,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Game_Logic_FSM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Game_Logic_FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Game_Logic_FSM_0_0 : entity is "module_ref";
end design_1_Game_Logic_FSM_0_0;

architecture stub of design_1_Game_Logic_FSM_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Clk,ASCII_In[6:0],Char_Valid,OLED_ASCII[6:0],OLED_WE,OLED_ClrScr,OLED_Busy";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of Clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "Game_Logic_FSM,Vivado 2025.1";
begin
end;
