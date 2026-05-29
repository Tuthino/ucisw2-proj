----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 04:57:33 PM
-- Design Name: 
-- Module Name: Scancode_to_ASCII - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Scancode_to_ASCII is
    Port ( 
        Clk         : in  STD_LOGIC;
        Key_Code    : in  STD_LOGIC_VECTOR (7 downto 0);
        Key_Rdy     : in  STD_LOGIC;
        F0          : in  STD_LOGIC;
        ASCII_Out   : out STD_LOGIC_VECTOR (6 downto 0);
        Char_Valid  : out STD_LOGIC
    );
end Scancode_to_ASCII;

architecture Behavioral of Scancode_to_ASCII is
    -- Rejestr przechowujący aktualny stan klawiszy Shift
    signal shift_active : std_logic := '0';
begin
    process(Clk)
        variable temp_ascii : std_logic_vector(6 downto 0); -- żebyśmy mogli modyfikować 5  bit (wielkośc)
        variable is_letter  : std_logic; -- np. spacja jest validm ale nie literą
    begin
        if rising_edge(Clk) then

            Char_Valid <= '0'; 
            

            if Key_Rdy = '1' then
                
                -- Shift (Lewy = x"12", Prawy = x"59")
                if Key_Code = x"12" or Key_Code = x"59" then
                    -- Jeśli F0 = '0' (wciśnięcie), to shift_active <= '1'
                    -- Jeśli F0 = '1' (puszczenie), to shift_active <= '0'
                    shift_active <= not F0;
                    -- Char_Valid pozostaje '0', więc gra zignoruje samego Shifta

                -- 2. Obsługa pozostałych klawiszy (tylko na wciśnięcie, omijamy puszczanie)
                elsif F0 = '0' then
                    
                    Char_Valid <= '1';
                    is_letter := '1'; -- Zakładamy, że to litera (ułatwi to zmianę wielkości)

                    case Key_Code is
                        when x"1C" => temp_ascii := "1100001"; -- 'a'
                        when x"32" => temp_ascii := "1100010"; -- 'b'
                        when x"21" => temp_ascii := "1100011"; -- 'c'
                        when x"23" => temp_ascii := "1100100"; -- 'd'
                        when x"24" => temp_ascii := "1100101"; -- 'e'
                        when x"2B" => temp_ascii := "1100110"; -- 'f'
                        when x"34" => temp_ascii := "1100111"; -- 'g'
                        when x"33" => temp_ascii := "1101000"; -- 'h'
                        when x"43" => temp_ascii := "1101001"; -- 'i'
                        when x"3B" => temp_ascii := "1101010"; -- 'j'
                        when x"42" => temp_ascii := "1101011"; -- 'k'
                        when x"4B" => temp_ascii := "1101100"; -- 'l'
                        when x"3A" => temp_ascii := "1101101"; -- 'm'
                        when x"31" => temp_ascii := "1101110"; -- 'n'
                        when x"44" => temp_ascii := "1101111"; -- 'o'
                        when x"4D" => temp_ascii := "1110000"; -- 'p'
                        when x"15" => temp_ascii := "1110001"; -- 'q'
                        when x"2D" => temp_ascii := "1110010"; -- 'r'
                        when x"1B" => temp_ascii := "1110011"; -- 's'
                        when x"2C" => temp_ascii := "1110100"; -- 't'
                        when x"3C" => temp_ascii := "1110101"; -- 'u'
                        when x"2A" => temp_ascii := "1110110"; -- 'v'
                        when x"1D" => temp_ascii := "1110111"; -- 'w'
                        when x"22" => temp_ascii := "1111000"; -- 'x'
                        when x"35" => temp_ascii := "1111001"; -- 'y'
                        when x"1A" => temp_ascii := "1111010"; -- 'z'

                        -- Znaki specjalne
                        when x"29" => 
                            temp_ascii := "0100000"; -- Spacja (0x20)
                            is_letter := '0';        -- Zdejmujemy flagę, spacja nie ma dużej wersji
                        
                        when others => 
                            temp_ascii := "0000000"; -- Znak pusty (NULL)
                            is_letter := '0';
                            Char_Valid <= '0';       -- Ignorujemy niezdekodowane klawisze
                    end case;

                    -- modyfikatora Shift
                    if is_letter = '1' and shift_active = '1' then
                        temp_ascii(5) := '0'; -- Zamiana małej litery na dużą
                    end if;

                    ASCII_Out <= temp_ascii;
                end if;
            end if;
        end if;
    end process;
end Behavioral;