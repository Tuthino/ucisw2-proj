----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 06:10:46 PM
-- Design Name: 
-- Module Name: tb_Game_Logic_FSM - Behavioral
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

entity tb_Game_Logic_FSM is
-- Puste entity dla testbencha
end tb_Game_Logic_FSM;

architecture Behavioral of tb_Game_Logic_FSM is

    -- 1. Deklaracja naszego FSM (DUT)
    component Game_Logic_FSM
        Port ( 
            Clk         : in  STD_LOGIC;
            ASCII_In    : in  STD_LOGIC_VECTOR (6 downto 0);
            Char_Valid  : in  STD_LOGIC;
            OLED_ASCII  : out STD_LOGIC_VECTOR (6 downto 0);
            OLED_WE     : out STD_LOGIC;
            OLED_ClrScr : out STD_LOGIC;
            OLED_Busy   : in  STD_LOGIC
        );
    end component;

    -- 2. Sygnały testowe
    signal tb_Clk         : STD_LOGIC := '0';
    signal tb_ASCII_In    : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
    signal tb_Char_Valid  : STD_LOGIC := '0';
    signal tb_OLED_ASCII  : STD_LOGIC_VECTOR (6 downto 0);
    signal tb_OLED_WE     : STD_LOGIC;
    signal tb_OLED_ClrScr : STD_LOGIC;
    signal tb_OLED_Busy   : STD_LOGIC := '0';

    constant clk_period : time := 10 ns;

begin

    -- 3. Podłączenie DUT
    DUT: Game_Logic_FSM port map (
        Clk         => tb_Clk,
        ASCII_In    => tb_ASCII_In,
        Char_Valid  => tb_Char_Valid,
        OLED_ASCII  => tb_OLED_ASCII,
        OLED_WE     => tb_OLED_WE,
        OLED_ClrScr => tb_OLED_ClrScr,
        OLED_Busy   => tb_OLED_Busy
    );

    -- 4. Generator zegara (100 MHz)
    clk_process :process
    begin
        tb_Clk <= '0';
        wait for clk_period/2;
        tb_Clk <= '1';
        wait for clk_period/2;
    end process;

    -- 5. Symulacja (Mock) Ekranu OLED
    oled_mock_process :process
    begin
        wait until rising_edge(tb_Clk);
        if tb_OLED_ClrScr = '1' or tb_OLED_WE = '1' then
            tb_OLED_Busy <= '1';     
            wait for 50 ns;          
            wait until rising_edge(tb_Clk);
            tb_OLED_Busy <= '0';     
        end if;
    end process;

    -- 6. Główny scenariusz gry (Gracz wpisuje litery słowa "vivado")
    stim_proc: process
    begin
    
        -- Po włączeniu zasilania czekamy losową ilość czasu 
        -- (To symuluje czas, zanim gracz zdecyduje się rozpocząć)
        wait for 120 ns; -- Zmieniając tę wartość (np. na 750 ns, 120 ns), zmieniamy wylosowane PIERWSZE słowo!

        -- ========================================================
        -- GRACZ WCISKA KLAWISZ (NP. SPACJĘ), ABY ZACZĄĆ GRĘ
        -- ========================================================
        tb_ASCII_In   <= "0100000"; -- Spacja
        tb_Char_Valid <= '1'; 
        wait for clk_period; 
        tb_Char_Valid <= '0';
        -- ZWIĘKSZONY CZAS OCZEKIWANIA
        -- Czekamy aż FSM wyczyści ekran i wypisze docelowe słowo
        wait for 500 ns;


        -- SCENARIUSZ 1: Użytkownik wpisuje ZŁĄ literę (np. 'x')
        tb_ASCII_In   <= "1111000"; -- 'x' (0x78)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        wait for 200 ns; -- Oczekiwany wynik: error_count rośnie, stan zostaje WAIT_FOR_KEY
--        wait for 1_000_000_000ns;

        -- SCENARIUSZ 2: Wpisujemy DOBRĄ literę #1 ('v')
        tb_ASCII_In   <= "1110110"; -- 'v' (0x76)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        wait for 200 ns; 

        -- SCENARIUSZ 3: Wpisujemy DOBRĄ literę #2 ('i')
        tb_ASCII_In   <= "1101001"; -- 'i' (0x69)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        wait for 200 ns; 
        
        -- SCENARIUSZ 4: Wpisujemy DOBRĄ literę #3 ('v')
        tb_ASCII_In   <= "1110110"; -- 'v' (0x76)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        wait for 200 ns; 

        -- SCENARIUSZ 5: Wpisujemy DOBRĄ literę #4 ('a')
        tb_ASCII_In   <= "1100001"; -- 'a' (0x61)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        wait for 200 ns; 
        
        -- SCENARIUSZ 6: Wpisujemy DOBRĄ literę #5 ('d')
        tb_ASCII_In   <= "1100100"; -- 'd' (0x64)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        wait for 200 ns; 
        
        -- SCENARIUSZ 7: Wpisujemy OSTATNIĄ DOBRĄ literę #6 ('o')
        tb_ASCII_In   <= "1101111"; -- 'o' (0x6F)
        tb_Char_Valid <= '1';
        wait for clk_period;
        tb_Char_Valid <= '0';
        
        -- Czekamy dłużej, aby zaobserwować, jak maszyna przetwarza koniec słowa
        -- i czy wraca do stanu INIT wyczyszczając ekran na nową rundę.
        wait for 800 ns; 

        wait; -- Koniec symulacji
    end process;

end Behavioral;
