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
use IEEE.NUMERIC_STD.ALL; -- Przydatne do liczników
-- Nie mamy CLEAR ,_,

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

    --  Definicja stanów (ECHO_ACK dla 100% stabilności pętli echa)
    type state_type is (
        WAIT_TO_START, INIT, CLEAR_SCREEN, CLEAR_SCREEN_ACK, WAIT_CLEAR, 
        DRAW_TARGET_WORD, DRAW_TARGET_WORD_ACK, WAIT_OLED_DRAW, 
        WAIT_FOR_KEY, ECHO_TYPED_CHAR, ECHO_ACK, WAIT_OLED_ECHO, CHECK_WIN,
        PREPARE_RESULT, DRAW_RESULT, DRAW_RESULT_ACK, WAIT_RESULT_DRAW,
        FORCE_NEW_LINE, NL_ACK, NL_WAIT
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
    signal random_cnt : integer range 0 to DICT_SIZE - 1 := 0;
    signal letter_idx   : integer range 0 to MAX_WORD_LEN := 0; 
    signal latched_char : std_logic_vector(6 downto 0); -- do pamietania jaki znak wpisal uzytkownik
    
    signal err_ones : integer range 0 to 9 := 0;
    signal err_tens : integer range 0 to 9 := 0;
    constant PRESCALER_MAX : integer := 10_000_000 - 1; -- do liczenie 0.01s

    signal prescaler_cnt   : integer range 0 to PRESCALER_MAX := 0;
    signal time_ds  : integer range 0 to 9 := 0; 
    signal time_s   : integer range 0 to 9 := 0; 
    signal time_10s : integer range 0 to 9 := 0; 
    signal timer_running : std_logic := '0';

    type res_array is array (0 to 11) of std_logic_vector(6 downto 0);
    signal result_str : res_array;
    signal res_idx    : integer range 0 to 11 := 0;
    
    signal total_chars : integer range 0 to 167 := 0; 
    signal state_after_nl : state_type;
    
    constant WORDS_TO_WIN : integer := 3;
    signal words_typed    : integer range 0 to 15 := 0; 

begin

    -- =========================================================================
    -- PROCES 1: Synchroniczny (Pamięć stanu FSM, Rejestry, Datapath)
    -- =========================================================================
    SYNC_PROC: process(Clk)
    begin
        if rising_edge(Clk) then
            --  Przełącz na nowy stan wyliczony przez logikę kombinacyjną
            state <= next_state;

            --  Stoper i losowanie (Działa w tle)
            if time_ds = 9 and time_s = 9 and time_10s = 9 then
                timer_running <= '0';
            end if;
            
            if timer_running = '1' then
                if prescaler_cnt = PRESCALER_MAX then
                    prescaler_cnt <= 0;
                    if random_cnt = DICT_SIZE - 1 then
                        random_cnt <= 0;
                    else
                        random_cnt <= random_cnt + 1;
                    end if;
                    
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
            else
                prescaler_cnt <= 0;
            end if;

            --  Logika zmian wartości reagująca na obecny stan
            case state is
                when INIT =>
                    current_word <= DICTIONARY(random_cnt); 
                    letter_idx <= 0;
                    err_ones <= 0; err_tens <= 0;
                    time_ds <= 0; time_s <= 0; time_10s <= 0;
                    timer_running <= '0';
                    words_typed <= 0;

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
                        if words_typed + 1 = WORDS_TO_WIN then
                            timer_running <= '0';
                            state_after_nl <= PREPARE_RESULT;
                        else
                            words_typed <= words_typed + 1;         
                            current_word <= DICTIONARY(random_cnt); 
                            letter_idx <= 0;                        
                        end if;
                    end if;

                when PREPARE_RESULT =>
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
    -- PROCES 2: Kombinacyjny (Logika przejść między stanami)!
    -- =========================================================================
    NEXT_STATE_PROC: process(state, Char_Valid, OLED_Busy, ASCII_In, current_word, letter_idx, words_typed, total_chars, res_idx, state_after_nl)
    begin
        next_state <= state; --  domyślnie zostajemy tu gdzie jesteśmy

        case state is
            when WAIT_TO_START =>
                if Char_Valid = '1' then next_state <= INIT; end if;
            
            when INIT =>
                next_state <= CLEAR_SCREEN;

            when CLEAR_SCREEN =>
                next_state <= CLEAR_SCREEN_ACK;
                
            when CLEAR_SCREEN_ACK =>
                if OLED_Busy = '1' then next_state <= WAIT_CLEAR; end if;

            when WAIT_CLEAR =>
                if OLED_Busy = '0' then next_state <= DRAW_TARGET_WORD; end if;

            when DRAW_TARGET_WORD =>
                if letter_idx < MAX_WORD_LEN and current_word(letter_idx) /= "0000000" then
                    next_state <= DRAW_TARGET_WORD_ACK;
                else
                    next_state <= FORCE_NEW_LINE;
                end if;
                
            when DRAW_TARGET_WORD_ACK =>
                if OLED_Busy = '1' then next_state <= WAIT_OLED_DRAW; end if;

            when WAIT_OLED_DRAW =>
                if OLED_Busy = '0' then next_state <= DRAW_TARGET_WORD; end if;

            when WAIT_FOR_KEY =>
                if Char_Valid = '1' then
                    if ASCII_In = current_word(letter_idx) then
                        next_state <= ECHO_TYPED_CHAR;
                    end if;
                end if;

            when ECHO_TYPED_CHAR =>
                next_state <= ECHO_ACK; 

            when ECHO_ACK =>
                if OLED_Busy = '1' then next_state <= WAIT_OLED_ECHO; end if;

            when WAIT_OLED_ECHO =>
                if OLED_Busy = '0' then next_state <= CHECK_WIN; end if;

            when CHECK_WIN =>
                if letter_idx + 1 < MAX_WORD_LEN and current_word(letter_idx + 1) /= "0000000" then
                    next_state <= WAIT_FOR_KEY; 
                else
                    if words_typed + 1 = WORDS_TO_WIN then
                        next_state <= FORCE_NEW_LINE;
                    else
                        next_state <= CLEAR_SCREEN; 
                    end if;
                end if;

            when PREPARE_RESULT =>
                next_state <= DRAW_RESULT;

            when DRAW_RESULT =>
                if res_idx < 11 then
                    next_state <= DRAW_RESULT_ACK;
                else
                    next_state <= WAIT_TO_START;
                end if;
                
            when DRAW_RESULT_ACK =>
                if OLED_Busy = '1' then next_state <= WAIT_RESULT_DRAW; end if;

            when WAIT_RESULT_DRAW =>
                if OLED_Busy = '0' then next_state <= DRAW_RESULT; end if;

            when FORCE_NEW_LINE =>
                if total_chars > 21 then
                    -- Tylko matematyka, nie zmieniamy jeszcze linii, obcinamy licznik (Zostajemy tu!)
                elsif total_chars /= 21 then
                    next_state <= NL_ACK;
                else
                    next_state <= state_after_nl;
                end if;
                
            when NL_ACK =>
                if OLED_Busy = '1' then next_state <= NL_WAIT; end if;
            
            when NL_WAIT =>
                if OLED_Busy = '0' then next_state <= FORCE_NEW_LINE; end if;

        end case;
    end process;


    -- =========================================================================
    -- PROCES 3: Kombinacyjny (Logika wyjść)
    -- =========================================================================
    OUTPUT_PROC: process(state, current_word, letter_idx, latched_char, result_str, res_idx, total_chars)
    begin
        -- Inicjalizacja domyślnych wartości zabezpiecza układ przed zatrzaskami!
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
                if res_idx < 11 then
                    OLED_WE <= '1';
                    OLED_ASCII <= result_str(res_idx);
                end if;

            when FORCE_NEW_LINE =>
                if total_chars /= 21 and total_chars <= 21 then
                    OLED_WE <= '1';
                    OLED_ASCII <= "0100000"; -- Spacja
                end if;

            when others =>
                -- Pozostałe stany korzystają z wartości domyślnych
                null; 
        end case;
    end process;

end Behavioral;