----------------------------------------------------------------------------------
-- Company: 
-- Engineer: UCISW Master
-- 
-- Create Date: 05/29/2026
-- Design Name: tb_Game_Logic_FSM
-- Target Devices: AUP-ZU3 (Zynq UltraScale+)
-- Tool Versions: Vivado
-- Description: Uniwersalny Testbench do weryfikacji logiki gry.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Game_Logic_FSM is
-- Testbench nie ma portów
end tb_Game_Logic_FSM;

architecture Behavioral of tb_Game_Logic_FSM is

    -- Komponent DUT (Device Under Test)
    component Game_Logic_FSM is
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

    -- Sygnały testowe
    signal Clk         : STD_LOGIC := '0';
    signal ASCII_In    : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
    signal Char_Valid  : STD_LOGIC := '0';
    
    signal OLED_ASCII  : STD_LOGIC_VECTOR (6 downto 0);
    signal OLED_WE     : STD_LOGIC;
    signal OLED_ClrScr : STD_LOGIC;
    signal OLED_Busy   : STD_LOGIC := '0';

    -- Parametry zegara (100 MHz -> 10 ns)
    constant CLK_PERIOD : time := 10 ns;

    -- Tablica symulująca opóźnienie dla OLEDa (w cyklach zegara)
    signal oled_delay_cnt : integer := 0;

    -- =========================================================================
    -- UNIWERSALNA TABLICA ZNAKÓW (SCENARIUSZ TESTOWY)
    -- =========================================================================
    -- Tutaj definiujesz, co po kolei naciska użytkownik.
    -- character'val(27) to klawisz ESC
    type char_array_type is array (natural range <>) of character;
    constant TEST_SEQUENCE : char_array_type := (
        ' ', -- 1. Naciśnięcie spacji na ekranie WAIT_TO_START
        's', 'y', 's', 't', 'e', ' ', ' ', 'm', ' ', ' ', ' ', 'r', 'a', 'w', 'i', 'a', ' ', -- Słowo 1
        'F', 'P', 'G', 'A', ' ', 'x', 'h', 'e', 'h', 'e', -- Słowo 2 (celowy błąd: 'x')
        'u', 'c', 'i', 's', 'w', -- Słowo 3
        ' ', -- Kontynuacja gry po wygranej (Ekran Decyzji)
        character'val(27) -- Wyjście do menu z ekranu decyzji
    );

begin

    -- Instancja testowanego modułu
    DUT: Game_Logic_FSM port map (
        Clk         => Clk,
        ASCII_In    => ASCII_In,
        Char_Valid  => Char_Valid,
        OLED_ASCII  => OLED_ASCII,
        OLED_WE     => OLED_WE,
        OLED_ClrScr => OLED_ClrScr,
        OLED_Busy   => OLED_Busy
    );

    -- =========================================================================
    -- GENERATOR ZEGARA
    -- =========================================================================
    Clk_Process: process
    begin
        Clk <= '0';
        wait for CLK_PERIOD / 2;
        Clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- =========================================================================
    -- SYMULATOR WYŚWIETLACZA OLED (Mock)
    -- =========================================================================
    OLED_Mock_Process: process(Clk)
    begin
        if rising_edge(Clk) then
            if OLED_WE = '1' or OLED_ClrScr = '1' then
                -- Jeśli FSM wyśle komendę, zajmij ekran na 5 cykli
                oled_delay_cnt <= 5;
                OLED_Busy <= '1';
            elsif oled_delay_cnt > 0 then
                oled_delay_cnt <= oled_delay_cnt - 1;
                OLED_Busy <= '1';
            else
                OLED_Busy <= '0';
            end if;
        end if;
    end process;

    -- =========================================================================
    -- PROCES WSTRZYKUJĄCY KLAWISZE (Stimulus)
    -- =========================================================================
    Stimulus_Process: process
    begin
        -- Poczekaj chwilę po uruchomieniu symulacji
        wait for 100 ns;

        -- Przejście przez wszystkie zdefiniowane znaki
        for i in TEST_SEQUENCE'range loop
            
            -- Czekamy na odpowiedni stan maszyny (OLED musi być wolny, a system gotowy)
            -- Symulujemy opóźnienie "myślenia" użytkownika (np. 3 mikrosekundy)
            wait for 3 us; 

            -- Ustaw znak na wejściu i odpal Valid na 1 cykl zegara
            ASCII_In <= std_logic_vector(to_unsigned(character'pos(TEST_SEQUENCE(i)), 7));
            Char_Valid <= '1';
            wait for CLK_PERIOD;
            Char_Valid <= '0';
            
            -- Opcjonalnie: logowanie do konsoli symulacji (TCL)
            report "Wyslano znak: " & character'image(TEST_SEQUENCE(i));
            
        end loop;

        report "Symulacja zakonczona sukcesem. Scenariusz wykonany.";
        wait; -- Zatrzymaj proces na zawsze
    end process;

end Behavioral;