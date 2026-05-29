----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 04:57:33 PM
-- Design Name: 
-- Module Name: Game_Logic_FSM - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Game_Logic_FSM is
    Port ( 
        Clk         : in  STD_LOGIC;
        -- Porty od dekodera klawiatury
        ASCII_In    : in  STD_LOGIC_VECTOR (6 downto 0);
        Char_Valid  : in  STD_LOGIC;
        
        -- Porty do sterowania modułem OLED_ASCII
        OLED_ASCII  : out STD_LOGIC_VECTOR (6 downto 0);
        OLED_WE     : out STD_LOGIC;
        OLED_ClrScr : out STD_LOGIC;
        OLED_Busy   : in  STD_LOGIC
    );
end Game_Logic_FSM;

architecture Behavioral of Game_Logic_FSM is

    -- Definicja stanów wzbogacona o ekran decyzji
    type state_type is (
        WAIT_TO_START, INIT, CONTINUE_GAME, CLEAR_SCREEN, WAIT_CLEAR, 
        DRAW_TARGET_WORD, WAIT_OLED_DRAW, 
        WAIT_FOR_KEY, ECHO_TYPED_CHAR, WAIT_OLED_ECHO, CHECK_WIN,
        PREPARE_RESULT, DRAW_RESULT, WAIT_RESULT_DRAW,
        FORCE_NEW_LINE, NL_WAIT, 
        WAIT_FOR_DECISION -- <== NOWY STAN DECYZYJNY
    );

    signal state, next_state : state_type := WAIT_TO_START;

    -- Stale, tablice i zmienne 
    constant MAX_WORD_LEN : integer := 21;
    type word_array is array (0 to MAX_WORD_LEN-1) of std_logic_vector(6 downto 0);

    function str_to_word(s: string) return word_array is
        variable res: word_array := (others => "0000000"); 
    begin
        for i in 1 to s'length loop
            if i <= MAX_WORD_LEN then
                res(i-1) := std_logic_vector(to_unsigned(character'pos(s(i)), 7));
            end if;
        end loop;
        return res;
    end function;

    constant DICT_SIZE : integer := 4; 
    type dict_array is array (0 to DICT_SIZE - 1) of word_array;
    constant DICTIONARY : dict_array := (
        str_to_word("Vivado pozdrawiam"), str_to_word("FPGA hehe"),
        str_to_word("ucisw"), str_to_word("system")
    );

    signal current_word : word_array := DICTIONARY(0);
    signal random_cnt   : integer range 0 to DICT_SIZE - 1 := 0;
    signal letter_idx   : integer range 0 to MAX_WORD_LEN := 0; 
    signal latched_char : std_logic_vector(6 downto 0); 
    
    signal err_ones : integer range 0 to 9 := 0;
    signal err_tens : integer range 0 to 9 := 0;
    constant PRESCALER_MAX : integer := 10_000_000 - 1; 

    signal prescaler_cnt   : integer range 0 to PRESCALER_MAX := 0;
    signal time_ds  : integer range 0 to 9 := 0; 
    signal time_s   : integer range 0 to 9 := 0; 
    signal time_10s : integer range 0 to 9 := 0; 
    signal timer_running : std_logic := '0';
    
    -- Rozmiar 35 elementów (indeksy 0 to 34), dla pełnego bezpieczeństwa
    type res_array is array (0 to 34) of std_logic_vector(6 downto 0);
    
    -- Inicjalizacja całej tablicy samymi zerami (NULL w ASCII)
    signal result_str : res_array := (others => "0000000");
    signal res_idx    : integer range 0 to 34 := 0; -- 33 + 1, ponieważ w stanie wait_result_draw po narysowaniu 33 znaku
                                                    -- zwiększamy res_idx do 34, więc tutaj dbamy, żeby nie mieć OOB error
    
    signal total_chars : integer range 0 to 167 := 0; 
    signal state_after_nl : state_type;
    
    constant WORDS_TO_WIN : integer := 1;
    signal words_typed    : integer range 0 to 9 := 0; -- Licznik ogólny 
    signal round_words    : integer range 0 to WORDS_TO_WIN := 0; -- Licznik postępu obecnej rundy
begin

    -- =========================================================================
    -- PROCES A: TIMER (Niezależny Datapath)
    -- =========================================================================
    TIMER_PROC: process(Clk)
    begin
        if rising_edge(Clk) then
            if state = INIT then
                prescaler_cnt <= 0;
                time_ds <= 0; 
                time_s <= 0; 
                time_10s <= 0;
            elsif timer_running = '1' then
                if prescaler_cnt = PRESCALER_MAX then
                    prescaler_cnt <= 0;
                    if time_ds = 9 then
                        time_ds <= 0;
                        if time_s = 9 then
                            time_s <= 0;
                            if time_10s < 9 then time_10s <= time_10s + 1; end if;
                        else
                            time_s <= time_s + 1;
                        end if;
                    else
                        time_ds <= time_ds + 1;
                    end if;
                else
                    prescaler_cnt <= prescaler_cnt + 1;
                end if;
            end if;
        end if;
    end process;

    -- =========================================================================
    -- PROCES B: GENERATOR LOSOWY (Niezależny Datapath)
    -- =========================================================================
    RANDOM_PROC: process(Clk)
    begin
        if rising_edge(Clk) then
            if random_cnt = DICT_SIZE - 1 then
                random_cnt <= 0;
            else
                random_cnt <= random_cnt + 1;
            end if;
        end if;
    end process;

    -- =========================================================================
    -- PROCES 1: PAMIĘĆ STANU FSM (Czysty Control Path)
    -- =========================================================================
    STATE_MEMORY_PROC: process(Clk)
    begin
        if rising_edge(Clk) then
            state <= next_state;
        end if;
    end process;

    -- =========================================================================
    -- PROCES 2: LOGIKA PRZEJŚĆ (Kombinacyjna, reaguje na wyjścia Datapath)
    -- =========================================================================
    NEXT_STATE_PROC: process(state, Char_Valid, OLED_Busy, ASCII_In, current_word, letter_idx, words_typed, round_words, total_chars, res_idx, state_after_nl)
    begin
        next_state <= state; -- domyślnie zostajemy tu gdzie jesteśmy

        case state is
            when WAIT_TO_START =>
                if Char_Valid = '1' then next_state <= INIT; end if;
            
            when INIT =>
                next_state <= CLEAR_SCREEN;

            when CLEAR_SCREEN =>
                next_state <= WAIT_CLEAR;

            when WAIT_CLEAR =>
                if OLED_Busy = '0' then next_state <= DRAW_TARGET_WORD; end if;

            when DRAW_TARGET_WORD =>
                if letter_idx < MAX_WORD_LEN and current_word(letter_idx) /= "0000000" then
                    next_state <= WAIT_OLED_DRAW;
                else
                    next_state <= FORCE_NEW_LINE;
                end if;

            when WAIT_OLED_DRAW =>
                if OLED_Busy = '0' then next_state <= DRAW_TARGET_WORD; end if;

            when WAIT_FOR_KEY =>
                if Char_Valid = '1' then
                    if ASCII_In = current_word(letter_idx) then
                        next_state <= ECHO_TYPED_CHAR;
                    end if;
                end if;

            when ECHO_TYPED_CHAR =>
                next_state <= WAIT_OLED_ECHO; 

            when WAIT_OLED_ECHO =>
                if OLED_Busy = '0' then next_state <= CHECK_WIN; end if;

            when CHECK_WIN =>
                if letter_idx + 1 < MAX_WORD_LEN and current_word(letter_idx + 1) /= "0000000" then
                    next_state <= WAIT_FOR_KEY; 
                else
                    if round_words + 1 = WORDS_TO_WIN then
                        next_state <= FORCE_NEW_LINE;
                    else
                        next_state <= CLEAR_SCREEN; 
                    end if;
                end if;

            when PREPARE_RESULT =>
                next_state <= DRAW_RESULT;

            when DRAW_RESULT =>
                if res_idx < 34 then
                    next_state <= WAIT_RESULT_DRAW;
                else
                    next_state <= WAIT_FOR_DECISION; -- <== Przejście do ekranu decyzji
                end if;

            when WAIT_RESULT_DRAW =>
                if OLED_Busy = '0' then next_state <= DRAW_RESULT; end if;

            -- =======================================
            -- EKRAN DECYZJI: Czekamy na Spację lub ESC
            -- =======================================
            when WAIT_FOR_DECISION =>
                if Char_Valid = '1' then
                    if ASCII_In = "0100000" then      -- Spacja
                        next_state <= CONTINUE_GAME;  -- Skok do kontynuacji
                    elsif ASCII_In = "0011011" then   -- ESC
                        next_state <= WAIT_TO_START;  -- Czeka na wciśnięcie i potem idzie do INIT
                    end if;
                end if;

            when FORCE_NEW_LINE =>
                if total_chars > 21 then
                    -- Zostajemy tu (matematyka Datapath wykona cięcie)
                elsif total_chars /= 21 then
                    next_state <= NL_WAIT;
                else
                    next_state <= state_after_nl;
                end if;
            
            when NL_WAIT =>
                if OLED_Busy = '0' then next_state <= FORCE_NEW_LINE; end if;
            when CONTINUE_GAME =>
                next_state <= CLEAR_SCREEN;

        end case;
    end process;

    -- =========================================================================
    -- PROCES 3: ŚCIEŻKA DANYCH (Synchroniczna aktualizacja rejestrów na podst. stanu)
    -- =========================================================================
    DATAPATH_PROC: process(Clk)
    begin
        if rising_edge(Clk) then
            
            -- Domyślne wyłączenie timera chroniące przed błędem 99.9
            if time_ds = 9 and time_s = 9 and time_10s = 9 then
                timer_running <= '0';
            end if;

            case state is
                
                when INIT =>
                    current_word <= DICTIONARY(random_cnt); 
                    letter_idx <= 0;
                    err_ones <= 0; err_tens <= 0;
                    timer_running <= '0';
                    words_typed <= 0;
                    round_words <= 0;
                    
                when CONTINUE_GAME => -- po naciśnięciu spacji przy wyświetlonym wyniku
                    current_word <= DICTIONARY(random_cnt); 
                    letter_idx <= 0;
                    timer_running <= '0';
                    round_words <= 0; -- <-- Resetujemy TYLKO rundę (błędy i total score zostają)

                when WAIT_CLEAR =>
                    if OLED_Busy = '0' then total_chars <= 0; end if;

                when DRAW_TARGET_WORD =>
                    if not (letter_idx < MAX_WORD_LEN and current_word(letter_idx) /= "0000000") then
                        letter_idx <= 0;
                        timer_running <= '1';
                        state_after_nl <= WAIT_FOR_KEY;
                    end if;

                when WAIT_OLED_DRAW =>
                    if OLED_Busy = '0' then
                        letter_idx <= letter_idx + 1;
                        total_chars <= total_chars + 1;
                    end if;

                when WAIT_FOR_KEY =>
                    if Char_Valid = '1' then
                        latched_char <= ASCII_In;
                        if ASCII_In /= current_word(letter_idx) then
                            if not (err_tens = 9 and err_ones = 9) then
                                if err_ones = 9 then
                                    err_ones <= 0; err_tens <= err_tens + 1;
                                else
                                    err_ones <= err_ones + 1;
                                end if;
                            end if;
                        end if;
                    end if;

                when CHECK_WIN =>
                    if letter_idx + 1 < MAX_WORD_LEN and current_word(letter_idx + 1) /= "0000000" then
                        letter_idx <= letter_idx + 1;
                        total_chars <= total_chars + 1; 
                    else
                        -- Słowo wpisane poprawnie! Zwiększamy główny wynik (z blokadą na 9, żeby nie zepsuć ASCII)
                        if words_typed < 9 then
                            words_typed <= words_typed + 1;
                        end if;

                        -- Sprawdzamy wygraną na podstawie RUNDY, a nie całkowitego wyniku
                        if round_words + 1 = WORDS_TO_WIN then
                            timer_running <= '0';
                            state_after_nl <= PREPARE_RESULT;
                        else
                            round_words <= round_words + 1; -- Krok dalej w rundzie
                            current_word <= DICTIONARY(random_cnt); 
                            letter_idx <= 0;                        
                        end if;
                    end if;

                when PREPARE_RESULT =>
                    -- Linia 1: Błędy i Czas (11 znaków)
                    result_str(0) <= "1000101"; -- 'E'
                    result_str(1) <= "0111010"; -- ':'
                    result_str(2) <= std_logic_vector(to_unsigned(err_tens + 48, 7));
                    result_str(3) <= std_logic_vector(to_unsigned(err_ones + 48, 7));
                    result_str(4) <= "0100000"; -- Spacja
                    result_str(5) <= "1010100"; -- 'T'
                    result_str(6) <= "0111010"; -- ':'
                    result_str(7) <= std_logic_vector(to_unsigned(time_10s + 48, 7));
                    result_str(8) <= std_logic_vector(to_unsigned(time_s + 48, 7));
                    result_str(9) <= "0101110"; -- '.'
                    result_str(10)<= std_logic_vector(to_unsigned(time_ds + 48, 7));
                    
                    -- Linia 1 cont.: Liczba słów (4 znaki)
                    result_str(11) <= "0100000"; -- Spacja
                    result_str(12) <= "1010111"; -- 'W'
                    result_str(13) <= "0111010"; -- ':'
                    result_str(14) <= std_logic_vector(to_unsigned(words_typed + 48, 7)); -- liczba wpisanych słów
                    
                    -- Dopełnienie spacjami do 21 znaków, aby wymusić nową linię na OLED (6 spacji)
                    result_str(15) <= "0100000"; result_str(16) <= "0100000";
                    result_str(17) <= "0100000"; result_str(18) <= "0100000";
                    result_str(19) <= "0100000"; result_str(20) <= "0100000";
                    
                    -- Linia 2: Instrukcja "[SPC] / [ESC]" (13 znaków)
                    result_str(21) <= "1011011"; -- '['
                    result_str(22) <= "1010011"; -- 'S'
                    result_str(23) <= "1010000"; -- 'P'
                    result_str(24) <= "1000011"; -- 'C'
                    result_str(25) <= "1011101"; -- ']'
                    result_str(26) <= "0100000"; -- Spacja
                    result_str(27) <= "0101111"; -- '/'
                    result_str(28) <= "0100000"; -- Spacja
                    result_str(29) <= "1011011"; -- '['
                    result_str(30) <= "1000101"; -- 'E'
                    result_str(31) <= "1010011"; -- 'S'
                    result_str(32) <= "1000011"; -- 'C'
                    result_str(33) <= "1011101"; -- ']'
                    
                    res_idx <= 0;
                when WAIT_RESULT_DRAW =>
                    if OLED_Busy = '0' then res_idx <= res_idx + 1; end if;

                when FORCE_NEW_LINE =>
                    if total_chars > 21 then
                        total_chars <= total_chars - 21;
                    elsif total_chars = 21 then
                        total_chars <= 0;
                    end if;

                when NL_WAIT =>
                    if OLED_Busy = '0' then total_chars <= total_chars + 1; end if;

                when others => null;
            end case;
        end if;
    end process;

    -- =========================================================================
    -- PROCES 4: LOGIKA WYJŚĆ (Kombinacyjna - sterowanie OLED)
    -- =========================================================================
    OUTPUT_PROC: process(state, current_word, letter_idx, latched_char, result_str, res_idx, total_chars)
    begin
        -- Inicjalizacja domyślnych 
        OLED_WE <= '0';
        OLED_ClrScr <= '0';
        OLED_ASCII <= "0000000";

        case state is
            when CLEAR_SCREEN =>
                OLED_ClrScr <= '1';

            when DRAW_TARGET_WORD =>
                if letter_idx < MAX_WORD_LEN and current_word(letter_idx) /= "0000000" then
                    OLED_WE <= '1';
                    OLED_ASCII <= current_word(letter_idx);
                end if;

            when ECHO_TYPED_CHAR =>
                OLED_WE <= '1';
                OLED_ASCII <= latched_char;

            when DRAW_RESULT =>
                if res_idx < 34 then
                    OLED_WE <= '1';
                    OLED_ASCII <= result_str(res_idx);
                end if;

            when FORCE_NEW_LINE =>
                if total_chars /= 21 and total_chars <= 21 then
                    OLED_WE <= '1';
                    OLED_ASCII <= "0100000"; -- Spacja
                end if;

            when others => null; 
        end case;
    end process;

end Behavioral;