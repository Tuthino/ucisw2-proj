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

-- Definicja wejść i wyjść 
entity Scancode_to_ASCII is
    Port ( 
        Clk         : in  STD_LOGIC;
        Key_Code    : in  STD_LOGIC_VECTOR (7 downto 0); -- Kod z modułu PS2_Kbd
        Key_Rdy     : in  STD_LOGIC;                     -- Impuls informujący o nowym kodzie
        F0          : in  STD_LOGIC;                     -- Flaga puszczenia klawisza (F0)
        ASCII_Out   : out STD_LOGIC_VECTOR (6 downto 0); -- Zdekodowany znak (do OLED/FSM)
        Char_Valid  : out STD_LOGIC                      -- Impuls: "poprawny znak (z zdefiniowanej tabeli)"
    );
end Scancode_to_ASCII;

-- Wnętrze układu (Logika dekodera)
architecture Behavioral of Scancode_to_ASCII is
begin
    -- Proces synchroniczny - wszystko dzieje się w takt zegara
    process(Clk)
    begin
        if rising_edge(Clk) then
            -- Domyślnie impuls Char_Valid jest w stanie niskim
            -- Zmieni się na '1' tylko na 1 takt zegara, gdy wciśniemy klawisz
            Char_Valid <= '0'; 
            
            -- Sprawdzamy czy przyszedł nowy kod ORAZ czy nie jest to puszczenie klawisza (F0='0')
            if Key_Rdy = '1' and F0 = '0' then
                
                -- Zakładamy, że znak będzie poprawny
                Char_Valid <= '1'; 
                
                -- Look-Up Table tłumacząca ScanCode na ASCII
            case Key_Code is

                    when x"1C" => ASCII_Out <= "1100001"; -- 'a' (0x61)
                    when x"32" => ASCII_Out <= "1100010"; -- 'b' (0x62)
                    when x"21" => ASCII_Out <= "1100011"; -- 'c' (0x63)
                    when x"23" => ASCII_Out <= "1100100"; -- 'd' (0x64)
                    when x"24" => ASCII_Out <= "1100101"; -- 'e' (0x65)
                    when x"2B" => ASCII_Out <= "1100110"; -- 'f' (0x66)
                    when x"34" => ASCII_Out <= "1100111"; -- 'g' (0x67)
                    when x"33" => ASCII_Out <= "1101000"; -- 'h' (0x68)
                    when x"43" => ASCII_Out <= "1101001"; -- 'i' (0x69)
                    when x"3B" => ASCII_Out <= "1101010"; -- 'j' (0x6A)
                    when x"42" => ASCII_Out <= "1101011"; -- 'k' (0x6B)
                    when x"4B" => ASCII_Out <= "1101100"; -- 'l' (0x6C)
                    when x"3A" => ASCII_Out <= "1101101"; -- 'm' (0x6D)
                    when x"31" => ASCII_Out <= "1101110"; -- 'n' (0x6E)
                    when x"44" => ASCII_Out <= "1101111"; -- 'o' (0x6F)
                    when x"4D" => ASCII_Out <= "1110000"; -- 'p' (0x70)
                    when x"15" => ASCII_Out <= "1110001"; -- 'q' (0x71)
                    when x"2D" => ASCII_Out <= "1110010"; -- 'r' (0x72)
                    when x"1B" => ASCII_Out <= "1110011"; -- 's' (0x73)
                    when x"2C" => ASCII_Out <= "1110100"; -- 't' (0x74)
                    when x"3C" => ASCII_Out <= "1110101"; -- 'u' (0x75)
                    when x"2A" => ASCII_Out <= "1110110"; -- 'v' (0x76)
                    when x"1D" => ASCII_Out <= "1110111"; -- 'w' (0x77)
                    when x"22" => ASCII_Out <= "1111000"; -- 'x' (0x78)
                    when x"35" => ASCII_Out <= "1111001"; -- 'y' (0x79)
                    when x"1A" => ASCII_Out <= "1111010"; -- 'z' (0x7A)

--                    -- Znaki specjalne (moze sie nam przydac do rozbudowy
--                    when x"29" => ASCII_Out <= "0100000"; -- Spacja (0x20)
--                    when x"5A" => ASCII_Out <= "0001101"; -- Enter (CR - 0x0D)
                    
                    -- Jeśli wciśnięto klawisz, którego nie ma na liście:
                    when others => 
                        ASCII_Out <= "0000000"; -- Znak pusty (NULL)
                        Char_Valid <= '0';      -- Cofamy impuls, znak jest ignorowany
                end case;
                
            end if;
        end if;
    end process;
end Behavioral;