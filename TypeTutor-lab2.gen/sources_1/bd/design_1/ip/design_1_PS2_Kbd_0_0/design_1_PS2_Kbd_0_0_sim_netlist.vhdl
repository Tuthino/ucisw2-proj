-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Mar 23 09:58:56 2026
-- Host        : Lab016-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_PS2_Kbd_0_0/design_1_PS2_Kbd_0_0_sim_netlist.vhdl
-- Design      : design_1_PS2_Kbd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PS2_Kbd_0_0_PS2_Kbd is
  port (
    Clk_100MHz : in STD_LOGIC;
    E0 : out STD_LOGIC;
    F0 : out STD_LOGIC;
    Key_Rdy : out STD_LOGIC;
    PS2_Clk : in STD_LOGIC;
    PS2_Data : in STD_LOGIC;
    Key_Code : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PS2_Kbd_0_0_PS2_Kbd : entity is "PS2_Kbd";
end design_1_PS2_Kbd_0_0_PS2_Kbd;

architecture STRUCTURE of design_1_PS2_Kbd_0_0_PS2_Kbd is
  signal ByteRdy : STD_LOGIC;
  signal ByteRdy_i_1_n_0 : STD_LOGIC;
  signal ByteRdy_i_2_n_0 : STD_LOGIC;
  signal ByteRdy_i_3_n_0 : STD_LOGIC;
  signal ByteRdy_i_4_n_0 : STD_LOGIC;
  signal \^key_code\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Key_Rdy0 : STD_LOGIC;
  signal Key_Rdy_i_2_n_0 : STD_LOGIC;
  signal PS_ClkHL : STD_LOGIC;
  signal WDogRst : STD_LOGIC;
  signal \cnt5b[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt5b[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt5b[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt5b[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt5b[4]_i_1_n_0\ : STD_LOGIC;
  signal cnt5b_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt9b[7]_i_2_n_0\ : STD_LOGIC;
  signal cnt9b_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cntMod11[0]_i_1_n_0\ : STD_LOGIC;
  signal \cntMod11[1]_i_1_n_0\ : STD_LOGIC;
  signal \cntMod11[2]_i_1_n_0\ : STD_LOGIC;
  signal \cntMod11[3]_i_2_n_0\ : STD_LOGIC;
  signal \cntMod11[3]_i_3_n_0\ : STD_LOGIC;
  signal \cntMod11[3]_i_4_n_0\ : STD_LOGIC;
  signal \cntMod11[3]_i_5_n_0\ : STD_LOGIC;
  signal \cntMod11_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal qE0 : STD_LOGIC;
  signal qE0_i_1_n_0 : STD_LOGIC;
  signal qE0_i_2_n_0 : STD_LOGIC;
  signal qF0 : STD_LOGIC;
  signal qF0_i_1_n_0 : STD_LOGIC;
  signal qPS_Clk : STD_LOGIC;
  signal qPS_Clk_Prev : STD_LOGIC;
  signal qPS_Clk_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ByteRdy_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ByteRdy_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt5b[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt9b[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt9b[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt9b[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt9b[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt9b[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt9b[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cntMod11[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cntMod11[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cntMod11[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cntMod11[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cntMod11[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cntMod11[3]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of qE0_i_2 : label is "soft_lutpair1";
begin
  Key_Code(7 downto 0) <= \^key_code\(7 downto 0);
ByteRdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008400000000"
    )
        port map (
      I0 => ByteRdy_i_2_n_0,
      I1 => PS_ClkHL,
      I2 => ByteRdy_i_3_n_0,
      I3 => ByteRdy_i_4_n_0,
      I4 => \^key_code\(0),
      I5 => PS2_Data,
      O => ByteRdy_i_1_n_0
    );
ByteRdy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^key_code\(5),
      I1 => \^key_code\(6),
      I2 => \^key_code\(4),
      I3 => \^key_code\(3),
      I4 => \^key_code\(2),
      O => ByteRdy_i_2_n_0
    );
ByteRdy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_6_in,
      I1 => \^key_code\(7),
      I2 => p_0_in,
      I3 => \^key_code\(1),
      O => ByteRdy_i_3_n_0
    );
ByteRdy_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \cntMod11_reg_n_0_\(1),
      I1 => \cntMod11_reg_n_0_\(0),
      I2 => \cntMod11_reg_n_0_\(3),
      I3 => \cntMod11_reg_n_0_\(2),
      O => ByteRdy_i_4_n_0
    );
ByteRdy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => ByteRdy_i_1_n_0,
      Q => ByteRdy,
      R => '0'
    );
E0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => ByteRdy,
      D => qE0,
      Q => E0,
      R => '0'
    );
F0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => ByteRdy,
      D => qF0,
      Q => F0,
      R => '0'
    );
Key_Rdy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => ByteRdy,
      I1 => \^key_code\(6),
      I2 => \^key_code\(3),
      I3 => \^key_code\(5),
      I4 => Key_Rdy_i_2_n_0,
      O => Key_Rdy0
    );
Key_Rdy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^key_code\(7),
      I1 => \^key_code\(1),
      I2 => \^key_code\(0),
      I3 => \^key_code\(2),
      O => Key_Rdy_i_2_n_0
    );
Key_Rdy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => Key_Rdy0,
      Q => Key_Rdy,
      R => '0'
    );
\cnt5b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt5b_reg(0),
      I1 => \cntMod11[3]_i_3_n_0\,
      I2 => cnt9b_reg(6),
      I3 => cnt9b_reg(5),
      I4 => cnt9b_reg(8),
      I5 => cnt9b_reg(7),
      O => \cnt5b[0]_i_1_n_0\
    );
\cnt5b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt5b_reg(0),
      I1 => \cntMod11[3]_i_4_n_0\,
      I2 => \cnt9b[7]_i_2_n_0\,
      I3 => cnt9b_reg(3),
      I4 => cnt9b_reg(4),
      I5 => cnt5b_reg(1),
      O => \cnt5b[1]_i_1_n_0\
    );
\cnt5b[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt5b_reg(1),
      I1 => cnt5b_reg(0),
      I2 => \cntMod11[3]_i_4_n_0\,
      I3 => \cntMod11[3]_i_3_n_0\,
      I4 => cnt5b_reg(2),
      O => \cnt5b[2]_i_1_n_0\
    );
\cnt5b[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt5b_reg(2),
      I1 => cnt5b_reg(0),
      I2 => cnt5b_reg(1),
      I3 => \cntMod11[3]_i_4_n_0\,
      I4 => \cntMod11[3]_i_3_n_0\,
      I5 => cnt5b_reg(3),
      O => \cnt5b[3]_i_1_n_0\
    );
\cnt5b[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt5b_reg(4),
      I1 => \cntMod11[3]_i_3_n_0\,
      I2 => \cntMod11[3]_i_4_n_0\,
      I3 => \cntMod11[3]_i_5_n_0\,
      I4 => cnt5b_reg(2),
      I5 => cnt5b_reg(3),
      O => \cnt5b[4]_i_1_n_0\
    );
\cnt5b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => \cnt5b[0]_i_1_n_0\,
      Q => cnt5b_reg(0),
      R => PS_ClkHL
    );
\cnt5b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => \cnt5b[1]_i_1_n_0\,
      Q => cnt5b_reg(1),
      R => PS_ClkHL
    );
\cnt5b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => \cnt5b[2]_i_1_n_0\,
      Q => cnt5b_reg(2),
      R => PS_ClkHL
    );
\cnt5b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => \cnt5b[3]_i_1_n_0\,
      Q => cnt5b_reg(3),
      R => PS_ClkHL
    );
\cnt5b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => \cnt5b[4]_i_1_n_0\,
      Q => cnt5b_reg(4),
      R => PS_ClkHL
    );
\cnt9b[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt9b_reg(0),
      O => plusOp(0)
    );
\cnt9b[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt9b_reg(0),
      I1 => cnt9b_reg(1),
      O => plusOp(1)
    );
\cnt9b[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt9b_reg(2),
      I1 => cnt9b_reg(1),
      I2 => cnt9b_reg(0),
      O => plusOp(2)
    );
\cnt9b[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt9b_reg(3),
      I1 => cnt9b_reg(0),
      I2 => cnt9b_reg(1),
      I3 => cnt9b_reg(2),
      O => plusOp(3)
    );
\cnt9b[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt9b_reg(4),
      I1 => cnt9b_reg(2),
      I2 => cnt9b_reg(1),
      I3 => cnt9b_reg(0),
      I4 => cnt9b_reg(3),
      O => plusOp(4)
    );
\cnt9b[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt9b_reg(5),
      I1 => cnt9b_reg(2),
      I2 => cnt9b_reg(1),
      I3 => cnt9b_reg(0),
      I4 => cnt9b_reg(3),
      I5 => cnt9b_reg(4),
      O => plusOp(5)
    );
\cnt9b[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt9b_reg(6),
      I1 => cnt9b_reg(4),
      I2 => cnt9b_reg(3),
      I3 => \cnt9b[7]_i_2_n_0\,
      I4 => cnt9b_reg(5),
      O => plusOp(6)
    );
\cnt9b[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt9b_reg(7),
      I1 => cnt9b_reg(5),
      I2 => \cnt9b[7]_i_2_n_0\,
      I3 => cnt9b_reg(3),
      I4 => cnt9b_reg(4),
      I5 => cnt9b_reg(6),
      O => plusOp(7)
    );
\cnt9b[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cnt9b_reg(2),
      I1 => cnt9b_reg(1),
      I2 => cnt9b_reg(0),
      O => \cnt9b[7]_i_2_n_0\
    );
\cnt9b[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt9b_reg(8),
      I1 => cnt9b_reg(6),
      I2 => \cntMod11[3]_i_3_n_0\,
      I3 => cnt9b_reg(5),
      I4 => cnt9b_reg(7),
      O => plusOp(8)
    );
\cnt9b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(0),
      Q => cnt9b_reg(0),
      R => '0'
    );
\cnt9b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(1),
      Q => cnt9b_reg(1),
      R => '0'
    );
\cnt9b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(2),
      Q => cnt9b_reg(2),
      R => '0'
    );
\cnt9b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(3),
      Q => cnt9b_reg(3),
      R => '0'
    );
\cnt9b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(4),
      Q => cnt9b_reg(4),
      R => '0'
    );
\cnt9b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(5),
      Q => cnt9b_reg(5),
      R => '0'
    );
\cnt9b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(6),
      Q => cnt9b_reg(6),
      R => '0'
    );
\cnt9b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(7),
      Q => cnt9b_reg(7),
      R => '0'
    );
\cnt9b_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => plusOp(8),
      Q => cnt9b_reg(8),
      R => '0'
    );
\cntMod11[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \cntMod11_reg_n_0_\(2),
      I1 => \cntMod11_reg_n_0_\(3),
      I2 => \cntMod11_reg_n_0_\(1),
      I3 => \cntMod11_reg_n_0_\(0),
      O => \cntMod11[0]_i_1_n_0\
    );
\cntMod11[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6626"
    )
        port map (
      I0 => \cntMod11_reg_n_0_\(0),
      I1 => \cntMod11_reg_n_0_\(1),
      I2 => \cntMod11_reg_n_0_\(3),
      I3 => \cntMod11_reg_n_0_\(2),
      O => \cntMod11[1]_i_1_n_0\
    );
\cntMod11[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cntMod11_reg_n_0_\(2),
      I1 => \cntMod11_reg_n_0_\(0),
      I2 => \cntMod11_reg_n_0_\(1),
      O => \cntMod11[2]_i_1_n_0\
    );
\cntMod11[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt5b_reg(4),
      I1 => \cntMod11[3]_i_3_n_0\,
      I2 => \cntMod11[3]_i_4_n_0\,
      I3 => \cntMod11[3]_i_5_n_0\,
      I4 => cnt5b_reg(2),
      I5 => cnt5b_reg(3),
      O => WDogRst
    );
\cntMod11[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \cntMod11_reg_n_0_\(0),
      I1 => \cntMod11_reg_n_0_\(1),
      I2 => \cntMod11_reg_n_0_\(2),
      I3 => \cntMod11_reg_n_0_\(3),
      O => \cntMod11[3]_i_2_n_0\
    );
\cntMod11[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt9b_reg(4),
      I1 => cnt9b_reg(3),
      I2 => cnt9b_reg(0),
      I3 => cnt9b_reg(1),
      I4 => cnt9b_reg(2),
      O => \cntMod11[3]_i_3_n_0\
    );
\cntMod11[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt9b_reg(6),
      I1 => cnt9b_reg(5),
      I2 => cnt9b_reg(8),
      I3 => cnt9b_reg(7),
      O => \cntMod11[3]_i_4_n_0\
    );
\cntMod11[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt5b_reg(1),
      I1 => cnt5b_reg(0),
      O => \cntMod11[3]_i_5_n_0\
    );
\cntMod11_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \cntMod11[0]_i_1_n_0\,
      Q => \cntMod11_reg_n_0_\(0),
      R => WDogRst
    );
\cntMod11_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \cntMod11[1]_i_1_n_0\,
      Q => \cntMod11_reg_n_0_\(1),
      R => WDogRst
    );
\cntMod11_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \cntMod11[2]_i_1_n_0\,
      Q => \cntMod11_reg_n_0_\(2),
      R => WDogRst
    );
\cntMod11_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \cntMod11[3]_i_2_n_0\,
      Q => \cntMod11_reg_n_0_\(3),
      R => WDogRst
    );
qE0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555F0002"
    )
        port map (
      I0 => ByteRdy,
      I1 => \^key_code\(4),
      I2 => Key_Rdy_i_2_n_0,
      I3 => qE0_i_2_n_0,
      I4 => qE0,
      O => qE0_i_1_n_0
    );
qE0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^key_code\(6),
      I1 => \^key_code\(3),
      I2 => \^key_code\(5),
      O => qE0_i_2_n_0
    );
qE0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => qE0_i_1_n_0,
      Q => qE0,
      R => '0'
    );
qF0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57570200"
    )
        port map (
      I0 => ByteRdy,
      I1 => Key_Rdy_i_2_n_0,
      I2 => qE0_i_2_n_0,
      I3 => \^key_code\(4),
      I4 => qF0,
      O => qF0_i_1_n_0
    );
qF0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => qF0_i_1_n_0,
      Q => qF0,
      R => '0'
    );
qPS_Clk_Prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => qPS_Clk,
      Q => qPS_Clk_Prev,
      R => '0'
    );
qPS_Clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => PS2_Clk,
      I1 => \cntMod11[3]_i_4_n_0\,
      I2 => \cnt9b[7]_i_2_n_0\,
      I3 => cnt9b_reg(3),
      I4 => cnt9b_reg(4),
      I5 => qPS_Clk,
      O => qPS_Clk_i_1_n_0
    );
qPS_Clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => '1',
      D => qPS_Clk_i_1_n_0,
      Q => qPS_Clk,
      R => '0'
    );
\reg11b[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => qPS_Clk_Prev,
      I1 => qPS_Clk,
      O => PS_ClkHL
    );
\reg11b_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => PS2_Data,
      Q => p_0_in,
      R => '0'
    );
\reg11b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(1),
      Q => \^key_code\(0),
      R => '0'
    );
\reg11b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(2),
      Q => \^key_code\(1),
      R => '0'
    );
\reg11b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(3),
      Q => \^key_code\(2),
      R => '0'
    );
\reg11b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(4),
      Q => \^key_code\(3),
      R => '0'
    );
\reg11b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(5),
      Q => \^key_code\(4),
      R => '0'
    );
\reg11b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(6),
      Q => \^key_code\(5),
      R => '0'
    );
\reg11b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => \^key_code\(7),
      Q => \^key_code\(6),
      R => '0'
    );
\reg11b_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => p_6_in,
      Q => \^key_code\(7),
      R => '0'
    );
\reg11b_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_100MHz,
      CE => PS_ClkHL,
      D => p_0_in,
      Q => p_6_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PS2_Kbd_0_0_PS2_Kbd_wrap is
  port (
    Key_Code : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E0 : out STD_LOGIC;
    F0 : out STD_LOGIC;
    Key_Rdy : out STD_LOGIC;
    Clk_100MHz : in STD_LOGIC;
    PS2_Clk : in STD_LOGIC;
    PS2_Data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PS2_Kbd_0_0_PS2_Kbd_wrap : entity is "PS2_Kbd_wrap";
end design_1_PS2_Kbd_0_0_PS2_Kbd_wrap;

architecture STRUCTURE of design_1_PS2_Kbd_0_0_PS2_Kbd_wrap is
begin
i_wrap: entity work.design_1_PS2_Kbd_0_0_PS2_Kbd
     port map (
      Clk_100MHz => Clk_100MHz,
      E0 => E0,
      F0 => F0,
      Key_Code(7 downto 0) => Key_Code(7 downto 0),
      Key_Rdy => Key_Rdy,
      PS2_Clk => PS2_Clk,
      PS2_Data => PS2_Data
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PS2_Kbd_0_0 is
  port (
    Clk_100MHz : in STD_LOGIC;
    Key_Code : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E0 : out STD_LOGIC;
    F0 : out STD_LOGIC;
    Key_Rdy : out STD_LOGIC;
    PS2_Clk : in STD_LOGIC;
    PS2_Data : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PS2_Kbd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PS2_Kbd_0_0 : entity is "design_1_PS2_Kbd_0_0,PS2_Kbd_wrap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_PS2_Kbd_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_PS2_Kbd_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_PS2_Kbd_0_0 : entity is "PS2_Kbd_wrap,Vivado 2025.1";
end design_1_PS2_Kbd_0_0;

architecture STRUCTURE of design_1_PS2_Kbd_0_0 is
begin
U0: entity work.design_1_PS2_Kbd_0_0_PS2_Kbd_wrap
     port map (
      Clk_100MHz => Clk_100MHz,
      E0 => E0,
      F0 => F0,
      Key_Code(7 downto 0) => Key_Code(7 downto 0),
      Key_Rdy => Key_Rdy,
      PS2_Clk => PS2_Clk,
      PS2_Data => PS2_Data
    );
end STRUCTURE;
