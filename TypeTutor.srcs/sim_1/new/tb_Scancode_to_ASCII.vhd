----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 05:18:29 PM
-- Design Name: 
-- Module Name: tb_Scancode_to_ASCII - Behavioral
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


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity tb_Scancode_to_ASCII is
----  Port ( );
--end tb_Scancode_to_ASCII;

--architecture Behavioral of tb_Scancode_to_ASCII is

--begin


--end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Testbench zawsze ma puste entity!
entity tb_Scancode_to_ASCII is
end tb_Scancode_to_ASCII;

architecture Behavioral of tb_Scancode_to_ASCII is

    -- 1. Deklaracja testowanego komponentu (Device Under Test - DUT)
    component Scancode_to_ASCII
        Port ( 
            Clk         : in  STD_LOGIC;
            Key_Code    : in  STD_LOGIC_VECTOR (7 downto 0);
            Key_Rdy     : in  STD_LOGIC;
            F0          : in  STD_LOGIC;
            ASCII_Out   : out STD_LOGIC_VECTOR (6 downto 0);
            Char_Valid  : out STD_LOGIC
        );
    end component;

    -- 2. Sygnały wewnątrz testbencha (udają kable na płytce)
    signal tb_Clk         : STD_LOGIC := '0';
    signal tb_Key_Code    : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal tb_Key_Rdy     : STD_LOGIC := '0';
    signal tb_F0          : STD_LOGIC := '0';
    signal tb_ASCII_Out   : STD_LOGIC_VECTOR (6 downto 0);
    signal tb_Char_Valid  : STD_LOGIC;

    -- Stała określająca zegar (10 ns = 100 MHz, tak jak na AUP-ZU3)
    constant clk_period : time := 10 ns;

begin

    -- 3. Podłączenie testowanego układu do naszych sygnałów
    DUT: Scancode_to_ASCII port map (
        Clk         => tb_Clk,
        Key_Code    => tb_Key_Code,
        Key_Rdy     => tb_Key_Rdy,
        F0          => tb_F0,
        ASCII_Out   => tb_ASCII_Out,
        Char_Valid  => tb_Char_Valid
    );

    -- 4. Proces generujący sygnał zegarowy 100 MHz
    clk_process :process
    begin
        tb_Clk <= '0';
        wait for clk_period/2;
        tb_Clk <= '1';
        wait for clk_period/2;
    end process;

    -- 5. Główny proces testujący (Stimulus Process)
    stim_proc: process
    begin		
        -- Inicjalizacja i odczekanie chwili na "ustabilizowanie" się symulacji
        wait for 100 ns;	
        
        -- TEST 1: Wciśnięcie klawisza 'a' (Scancode 0x1C)
        tb_Key_Code <= x"1C";
        tb_F0       <= '0';     -- To jest wciśnięcie, więc F0 = '0'
        tb_Key_Rdy  <= '1';     -- Impuls informujący o gotowości danych...
        wait for clk_period;    -- ...który trwa dokładnie 1 takt zegara
        tb_Key_Rdy  <= '0';
        wait for 50 ns;         -- Czekamy chwilę przed kolejnym zdarzeniem
        
        -- TEST 2: Puszczenie klawisza 'a'
        -- Oczekiwany wynik: Moduł ma to zignorować (Char_Valid ma pozostać '0')
        tb_Key_Code <= x"1C";
        tb_F0       <= '1';     -- Moduł z ePortalu informuje: "puszczono klawisz!"
        tb_Key_Rdy  <= '1';
        wait for clk_period;
        tb_Key_Rdy  <= '0';
        wait for 50 ns;

        -- TEST 3: Wciśnięcie klawisza 'z' (Scancode 0x1A)
        tb_Key_Code <= x"1A";
        tb_F0       <= '0';
        tb_Key_Rdy  <= '1';
        wait for clk_period;
        tb_Key_Rdy  <= '0';
        wait for 50 ns;

        -- TEST 4: Wciśnięcie nieznanego klawisza, np. F1 (Scancode 0x05)
        -- Oczekiwany wynik: Instrukcja "when others", wyjście puste, brak impulsu.
        tb_Key_Code <= x"05";
        tb_F0       <= '0';
        tb_Key_Rdy  <= '1';
        wait for clk_period;
        tb_Key_Rdy  <= '0';
        wait for 50 ns;

        wait;
    end process;

end Behavioral;
