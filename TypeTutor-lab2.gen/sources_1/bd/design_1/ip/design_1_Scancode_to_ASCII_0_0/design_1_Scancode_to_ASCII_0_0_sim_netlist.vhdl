-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Mar 23 09:58:59 2026
-- Host        : Lab016-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_Scancode_to_ASCII_0_0/design_1_Scancode_to_ASCII_0_0_sim_netlist.vhdl
-- Design      : design_1_Scancode_to_ASCII_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII is
  port (
    ASCII_Out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Char_Valid : out STD_LOGIC;
    F0 : in STD_LOGIC;
    Key_Rdy : in STD_LOGIC;
    Key_Code : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII : entity is "Scancode_to_ASCII";
end design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII;

architecture STRUCTURE of design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII is
  signal \ASCII_Out[0]_i_2_n_0\ : STD_LOGIC;
  signal \ASCII_Out[0]_i_3_n_0\ : STD_LOGIC;
  signal \ASCII_Out[1]_i_2_n_0\ : STD_LOGIC;
  signal \ASCII_Out[1]_i_3_n_0\ : STD_LOGIC;
  signal \ASCII_Out[2]_i_2_n_0\ : STD_LOGIC;
  signal \ASCII_Out[2]_i_3_n_0\ : STD_LOGIC;
  signal \ASCII_Out[3]_i_2_n_0\ : STD_LOGIC;
  signal \ASCII_Out[3]_i_3_n_0\ : STD_LOGIC;
  signal \ASCII_Out[4]_i_2_n_0\ : STD_LOGIC;
  signal \ASCII_Out[4]_i_3_n_0\ : STD_LOGIC;
  signal \ASCII_Out[5]_i_1_n_0\ : STD_LOGIC;
  signal \ASCII_Out[5]_i_2_n_0\ : STD_LOGIC;
  signal \ASCII_Out[5]_i_4_n_0\ : STD_LOGIC;
  signal \ASCII_Out[5]_i_5_n_0\ : STD_LOGIC;
  signal \ASCII_Out_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ASCII_Out_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ASCII_Out_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ASCII_Out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ASCII_Out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ASCII_Out_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal Char_Valid_i_1_n_0 : STD_LOGIC;
begin
\ASCII_Out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000220A0A680"
    )
        port map (
      I0 => Key_Code(2),
      I1 => Key_Code(0),
      I2 => Key_Code(4),
      I3 => Key_Code(5),
      I4 => Key_Code(3),
      I5 => Key_Code(6),
      O => \ASCII_Out[0]_i_2_n_0\
    );
\ASCII_Out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000102000030000"
    )
        port map (
      I0 => Key_Code(0),
      I1 => Key_Code(2),
      I2 => Key_Code(4),
      I3 => Key_Code(5),
      I4 => Key_Code(6),
      I5 => Key_Code(3),
      O => \ASCII_Out[0]_i_3_n_0\
    );
\ASCII_Out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000128000108200"
    )
        port map (
      I0 => Key_Code(0),
      I1 => Key_Code(3),
      I2 => Key_Code(2),
      I3 => Key_Code(5),
      I4 => Key_Code(6),
      I5 => Key_Code(4),
      O => \ASCII_Out[1]_i_2_n_0\
    );
\ASCII_Out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504010400000410"
    )
        port map (
      I0 => Key_Code(2),
      I1 => Key_Code(4),
      I2 => Key_Code(6),
      I3 => Key_Code(5),
      I4 => Key_Code(0),
      I5 => Key_Code(3),
      O => \ASCII_Out[1]_i_3_n_0\
    );
\ASCII_Out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000662200020000"
    )
        port map (
      I0 => Key_Code(2),
      I1 => Key_Code(1),
      I2 => Key_Code(4),
      I3 => Key_Code(3),
      I4 => Key_Code(6),
      I5 => Key_Code(5),
      O => \ASCII_Out[2]_i_2_n_0\
    );
\ASCII_Out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008041000A0"
    )
        port map (
      I0 => Key_Code(1),
      I1 => Key_Code(3),
      I2 => Key_Code(5),
      I3 => Key_Code(2),
      I4 => Key_Code(4),
      I5 => Key_Code(6),
      O => \ASCII_Out[2]_i_3_n_0\
    );
\ASCII_Out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000000000640"
    )
        port map (
      I0 => Key_Code(2),
      I1 => Key_Code(1),
      I2 => Key_Code(5),
      I3 => Key_Code(6),
      I4 => Key_Code(4),
      I5 => Key_Code(3),
      O => \ASCII_Out[3]_i_2_n_0\
    );
\ASCII_Out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001000500A1000"
    )
        port map (
      I0 => Key_Code(6),
      I1 => Key_Code(3),
      I2 => Key_Code(4),
      I3 => Key_Code(5),
      I4 => Key_Code(1),
      I5 => Key_Code(2),
      O => \ASCII_Out[3]_i_3_n_0\
    );
\ASCII_Out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A008020800080"
    )
        port map (
      I0 => Key_Code(2),
      I1 => Key_Code(5),
      I2 => Key_Code(3),
      I3 => Key_Code(6),
      I4 => Key_Code(0),
      I5 => Key_Code(4),
      O => \ASCII_Out[4]_i_2_n_0\
    );
\ASCII_Out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011010000000100"
    )
        port map (
      I0 => Key_Code(6),
      I1 => Key_Code(2),
      I2 => Key_Code(0),
      I3 => Key_Code(5),
      I4 => Key_Code(4),
      I5 => Key_Code(3),
      O => \ASCII_Out[4]_i_3_n_0\
    );
\ASCII_Out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Key_Code(7),
      I1 => F0,
      I2 => Key_Rdy,
      O => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Key_Rdy,
      I1 => F0,
      O => \ASCII_Out[5]_i_2_n_0\
    );
\ASCII_Out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11000100EA0AEA00"
    )
        port map (
      I0 => Key_Code(5),
      I1 => Key_Code(4),
      I2 => Key_Code(3),
      I3 => Key_Code(1),
      I4 => Key_Code(0),
      I5 => Key_Code(6),
      O => \ASCII_Out[5]_i_4_n_0\
    );
\ASCII_Out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000115405444"
    )
        port map (
      I0 => Key_Code(1),
      I1 => Key_Code(5),
      I2 => Key_Code(3),
      I3 => Key_Code(4),
      I4 => Key_Code(0),
      I5 => Key_Code(6),
      O => \ASCII_Out[5]_i_5_n_0\
    );
\ASCII_Out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \ASCII_Out[5]_i_2_n_0\,
      D => \ASCII_Out_reg[0]_i_1_n_0\,
      Q => ASCII_Out(0),
      R => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASCII_Out[0]_i_2_n_0\,
      I1 => \ASCII_Out[0]_i_3_n_0\,
      O => \ASCII_Out_reg[0]_i_1_n_0\,
      S => Key_Code(1)
    );
\ASCII_Out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \ASCII_Out[5]_i_2_n_0\,
      D => \ASCII_Out_reg[1]_i_1_n_0\,
      Q => ASCII_Out(1),
      R => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASCII_Out[1]_i_2_n_0\,
      I1 => \ASCII_Out[1]_i_3_n_0\,
      O => \ASCII_Out_reg[1]_i_1_n_0\,
      S => Key_Code(1)
    );
\ASCII_Out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \ASCII_Out[5]_i_2_n_0\,
      D => \ASCII_Out_reg[2]_i_1_n_0\,
      Q => ASCII_Out(2),
      R => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASCII_Out[2]_i_2_n_0\,
      I1 => \ASCII_Out[2]_i_3_n_0\,
      O => \ASCII_Out_reg[2]_i_1_n_0\,
      S => Key_Code(0)
    );
\ASCII_Out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \ASCII_Out[5]_i_2_n_0\,
      D => \ASCII_Out_reg[3]_i_1_n_0\,
      Q => ASCII_Out(3),
      R => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASCII_Out[3]_i_2_n_0\,
      I1 => \ASCII_Out[3]_i_3_n_0\,
      O => \ASCII_Out_reg[3]_i_1_n_0\,
      S => Key_Code(0)
    );
\ASCII_Out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \ASCII_Out[5]_i_2_n_0\,
      D => \ASCII_Out_reg[4]_i_1_n_0\,
      Q => ASCII_Out(4),
      R => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASCII_Out[4]_i_2_n_0\,
      I1 => \ASCII_Out[4]_i_3_n_0\,
      O => \ASCII_Out_reg[4]_i_1_n_0\,
      S => Key_Code(1)
    );
\ASCII_Out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \ASCII_Out[5]_i_2_n_0\,
      D => \ASCII_Out_reg[5]_i_3_n_0\,
      Q => ASCII_Out(5),
      R => \ASCII_Out[5]_i_1_n_0\
    );
\ASCII_Out_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ASCII_Out[5]_i_4_n_0\,
      I1 => \ASCII_Out[5]_i_5_n_0\,
      O => \ASCII_Out_reg[5]_i_3_n_0\,
      S => Key_Code(2)
    );
Char_Valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040404000000"
    )
        port map (
      I0 => F0,
      I1 => Key_Rdy,
      I2 => Key_Code(7),
      I3 => \ASCII_Out[5]_i_5_n_0\,
      I4 => Key_Code(2),
      I5 => \ASCII_Out[5]_i_4_n_0\,
      O => Char_Valid_i_1_n_0
    );
Char_Valid_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => Char_Valid_i_1_n_0,
      Q => Char_Valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Scancode_to_ASCII_0_0 is
  port (
    Clk : in STD_LOGIC;
    Key_Code : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Key_Rdy : in STD_LOGIC;
    F0 : in STD_LOGIC;
    ASCII_Out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Char_Valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Scancode_to_ASCII_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Scancode_to_ASCII_0_0 : entity is "design_1_Scancode_to_ASCII_0_0,Scancode_to_ASCII,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Scancode_to_ASCII_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Scancode_to_ASCII_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Scancode_to_ASCII_0_0 : entity is "Scancode_to_ASCII,Vivado 2025.1";
end design_1_Scancode_to_ASCII_0_0;

architecture STRUCTURE of design_1_Scancode_to_ASCII_0_0 is
  signal \^ascii_out\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of Clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
  ASCII_Out(6) <= \^ascii_out\(5);
  ASCII_Out(5 downto 0) <= \^ascii_out\(5 downto 0);
inst: entity work.design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII
     port map (
      ASCII_Out(5 downto 0) => \^ascii_out\(5 downto 0),
      Char_Valid => Char_Valid,
      Clk => Clk,
      F0 => F0,
      Key_Code(7 downto 0) => Key_Code(7 downto 0),
      Key_Rdy => Key_Rdy
    );
end STRUCTURE;
