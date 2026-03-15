library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PS2_RX_wrap is
    Port ( Clk_100MHz : in  STD_LOGIC;
	       PS2_Clk    : in  STD_LOGIC;
           PS2_Data   : in  STD_LOGIC;
           PS2_DO     : out  STD_LOGIC_VECTOR( 7 downto 0 );
           PS2_DOrdy  : out  STD_LOGIC);
end PS2_RX_wrap;

architecture RTL of PS2_RX_wrap is

    component PS2_RX is
        Port ( Clk_100MHz : in  STD_LOGIC;
               PS2_Clk    : in  STD_LOGIC;
               PS2_Data   : in  STD_LOGIC;
               PS2_DO     : out  STD_LOGIC_VECTOR( 7 downto 0 );
               PS2_DOrdy  : out  STD_LOGIC);
    end component;
    
  
begin

    wrap: PS2_RX port map (
        Clk_100MHz => Clk_100MHz,
        PS2_Clk    => PS2_Clk,
        PS2_Data   => PS2_Data,
        PS2_DO     => PS2_DO,
        PS2_DOrdy  => PS2_DOrdy
        );

end RTL;

