library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OLED_1x64_wrap is
    Port ( Clk_100MHz : in STD_LOGIC;
           Line       : in STD_LOGIC_VECTOR(63 downto 0);
           DecPts     : in STD_LOGIC_VECTOR (15 downto 0);
           Blank      : in STD_LOGIC_VECTOR(15 downto 0);
           I2C_NACK   : out STD_LOGIC;
           OLED_SCL   : inout STD_LOGIC;
           OLED_SDA   : inout STD_LOGIC
         );
end OLED_1x64_wrap;

architecture Wrap of OLED_1x64_wrap is

    component OLED_1x64 is
        Port ( Clk_100MHz : in STD_LOGIC;
               Line       : in STD_LOGIC_VECTOR(63 downto 0);
               DecPts     : in STD_LOGIC_VECTOR (15 downto 0);
               Blank      : in STD_LOGIC_VECTOR(15 downto 0);
               I2C_NACK   : out STD_LOGIC;
               OLED_SCL   : inout STD_LOGIC;
               OLED_SDA   : inout STD_LOGIC
             );
    end component;

begin

    i_wrap: OLED_1x64 port map(
               Clk_100MHz => Clk_100MHz,
               Line       => Line,
               DecPts     => DecPts,
               Blank      => Blank,
               I2C_NACK   => I2C_NACK,
               OLED_SCL   => OLED_SCL,
               OLED_SDA   => OLED_SDA
             );

end Wrap;
