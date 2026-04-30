library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OLED_1x32_wrap is
    Port ( Clk_100MHz : in STD_LOGIC;
           Line       : in STD_LOGIC_VECTOR(31 downto 0);
           DecPts     : in STD_LOGIC_VECTOR (7 downto 0);
           Blank      : in STD_LOGIC_VECTOR(7 downto 0);
           I2C_NACK   : out STD_LOGIC;
           OLED_SDA   : inout STD_LOGIC;
           OLED_SCL   : inout STD_LOGIC );
end OLED_1x32_wrap;

architecture Behavioral of OLED_1x32_wrap is


    component OLED_1x32 is
        Port ( 
        Clk_100MHz : in STD_LOGIC;
        Line       : in STD_LOGIC_VECTOR ( 31 downto 0 );
        DecPts     : in STD_LOGIC_VECTOR ( 7 downto 0 );
        Blank      : in STD_LOGIC_VECTOR ( 7 downto 0 );
        I2C_NACK   : out STD_LOGIC;
        OLED_SDA   : inout STD_LOGIC;
        OLED_SCL   : inout STD_LOGIC
        );
    end component;
    
begin

    wrap: OLED_1x32  Port map ( 
        Clk_100MHz => Clk_100MHz,
        Line       => Line,
        DecPts     => DecPts,
        Blank      => Blank,
        I2C_NACK   => I2C_NACK,
        OLED_SDA   => OLED_SDA,
        OLED_SCL   => OLED_SCL
        );

end Behavioral;
