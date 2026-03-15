library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PS2_Kbd_wrap is
    Port (
        Clk_100MHz : in  STD_LOGIC;
        Key_Code   : out STD_LOGIC_VECTOR( 7 downto 0 );
        E0         : out STD_LOGIC;
        F0         : out STD_LOGIC;
        Key_Rdy    : out STD_LOGIC;
        PS2_Clk    : in  STD_LOGIC;
        PS2_Data   : in  STD_LOGIC
        );
end PS2_Kbd_wrap;

architecture wrapper of PS2_Kbd_wrap is

	component PS2_Kbd is
        Port (
            Clk_100MHz : in  STD_LOGIC;
            Key_Code   : out STD_LOGIC_VECTOR( 7 downto 0 );
            E0         : out STD_LOGIC;
            F0         : out STD_LOGIC;
            Key_Rdy    : out STD_LOGIC;
            PS2_Clk    : in  STD_LOGIC;
            PS2_Data   : in  STD_LOGIC
            );
	end component;

begin

i_wrap:PS2_Kbd port map (
        Clk_100MHz => Clk_100MHz,
        Key_Code   => Key_Code,
        E0         => E0,
        F0         => F0,
        Key_Rdy    => Key_Rdy,
        PS2_Clk    => PS2_Clk,
        PS2_Data   => PS2_Data  
        );

end wrapper;

