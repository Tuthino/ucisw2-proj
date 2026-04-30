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

    -- Definicja stanów (bez zmian)
    type state_type is (
        WAIT_TO_START, INIT, CLEAR_SCREEN, CLEAR_SCREEN_ACK, WAIT_CLEAR, DRAW_TARGET_WORD, DRAW_TARGET_WORD_ACK,
        WAIT_OLED_DRAW, WAIT_FOR_KEY, ECHO_TYPED_CHAR,
        WAIT_OLED_ECHO, CHECK_WIN,
        PREPARE_RESULT, DRAW_RESULT, DRAW_RESULT_ACK, WAIT_RESULT_DRAW,
        FORCE_NEW_LINE, NL_ACK, NL_WAIT
    );
    signal state : state_type := WAIT_TO_START;

    -- 1. Maksymalna długość słowa 
    constant MAX_WORD_LEN : integer := 10;
    
    -- Typ tablicowy o stałym rozmiarze
    type word_array is array (0 to MAX_WORD_LEN-1) of std_logic_vector(6 downto 0);

    -- 2. FUNKCJA: Konwertuje tekst (string) na naszą tablicę bitów
    function str_to_word(s: string) return word_array is
        variable res: word_array := (others => "0000000"); -- Wypełnij zerami (Null-terminator)
    begin
        for i in 1 to s'length loop
            if i <= MAX_WORD_LEN then
                -- character'pos() pobiera kod ASCII znaku jako liczbę, a to_unsigned zamienia na bity
                res(i-1) := std_logic_vector(to_unsigned(character'pos(s(i)), 7));
            end if;
        end loop;
        return res;
    end function;

    -- ==========================================
    -- SŁOWNIK I LOSOWANIE
    -- ==========================================
    
    --  Zmienna określająca ilość słów
    constant DICT_SIZE : integer := 4; 
    
    --  Definicja tablicy oparta na naszej zmiennej (od 0 do DICT_SIZE-1)
    type dict_array is array (0 to DICT_SIZE - 1) of word_array;
    
    --  Inicjalizacja słownika
    constant DICTIONARY : dict_array := (
        str_to_word("vivado"),
        str_to_word("fpga"),
        str_to_word("ucisw"),
        str_to_word("system")
        -- Jeśli kiedyś dodasz tu kolejne słowa, wystarczy że zwiększysz DICT_SIZE!
    );

    -- Sygnał na nasze aktualne słowo
    signal current_word : word_array := DICTIONARY(0);

    --  Licznik losujący, dostosowuje się do rozmiaru DICT_SIZE
    signal random_cnt : integer range 0 to DICT_SIZE - 1 := 0;

    -- Indeks litery w slowie
    signal letter_idx   : integer range 0 to MAX_WORD_LEN := 0; 
--    signal error_count  : integer range 0 to 255 := 0;

    -- Zmienna pomocnicza do zapamiętania wpisanego znaku
    signal latched_char : std_logic_vector(6 downto 0);
    
    
    -- ==========================================
    -- LICZNIKI BŁĘDÓW I CZASU (METODA BCD)
    -- ==========================================
    -- Zamiast jednego error_count, liczymy osobno jedności i dziesiątki (max 99 błędów)
    signal err_ones : integer range 0 to 9 := 0;
    signal err_tens : integer range 0 to 9 := 0;

    -- liczymy dziesiętne, sekundy i dziesiątki sekund (max 99.9s)
    -- Przy zegarze 100 MHz, 10 000 000 taktów to dokładnie 0.1 sekundy (100 ms)
    constant PRESCALER_MAX : integer := 10_000_00 - 1;
--    constant PRESCALER_MAX : integer := 100 - 1;
    

    signal prescaler_cnt   : integer range 0 to PRESCALER_MAX := 0;
    signal time_ds  : integer range 0 to 9 := 0; -- (0.1s)
    signal time_s   : integer range 0 to 9 := 0; -- (1s)
    signal time_10s : integer range 0 to 9 := 0; -- (10s)
    
    signal timer_running : std_logic := '0';

    -- Tablica na napis z wynikiem (Format: " E:00 T:00.0" -> 12 znaków)
    type res_array is array (0 to 11) of std_logic_vector(6 downto 0);
    signal result_str : res_array;
    signal res_idx    : integer range 0 to 12 := 0;
    
    -- Licznik wszystkich znaków wysłanych od ostatniego czyszczenia ekranu
    signal total_chars : integer range 0 to 167 := 0; 
    -- Stan powrotu - by wiedzieć, gdzie pójść po zakończeniu nowej linii
    signal state_after_nl : state_type;
    
    

begin

    process(Clk)
    begin
        if rising_edge(Clk) then
            -- ==========================================
            -- GENERATOR "LOSOWOŚCI"
            -- ==========================================
--            if random_cnt = DICT_SIZE - 1 then
            
--                random_cnt <= 0;
--            else
--                random_cnt <= random_cnt + 1;
--            end if;
           
            -- ==========================================
            -- STOPER BCD 
            -- ==========================================
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
                            if time_10s < 9 then
                                time_10s <= time_10s + 1;
                            end if;
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
            
            
            
            -- Wartości domyślne dla impulsów 
            OLED_WE <= '0';
            OLED_ClrScr <= '0';

            case state is
            --  Ekran startowy (Czekamy na sygnal)
                when WAIT_TO_START =>
                    if Char_Valid = '1' then
                        state <= INIT; 
                    end if;
                
                --  Inicjalizacja gry
                when INIT =>
                    -- Pobieramy słowo z "wylosowanego" indeksu
                    current_word <= DICTIONARY(random_cnt); 
                    
                    letter_idx <= 0;
                    err_ones <= 0; err_tens <= 0;     -- Reset błędów
                    time_ds <= 0; time_s <= 0; time_10s <= 0; -- Reset czasu
                    timer_running <= '0';    -- <--- UPEWNIENIE, ŻE STOPER STOI
                    state <= CLEAR_SCREEN;

                --  Czyszczenie ekranu OLED
                when CLEAR_SCREEN =>
                    OLED_ClrScr <= '1';

                    state <= CLEAR_SCREEN_ACK;
                    
                when CLEAR_SCREEN_ACK =>
                    if OLED_Busy = '1' then
                        state <= WAIT_CLEAR;
                    end if;

                --  Czekamy aż OLED skończy się czyścić 
                when WAIT_CLEAR =>
                    if OLED_Busy = '0' then
                        state <= DRAW_TARGET_WORD;
                        total_chars <= 0; -- po każdym clear_screen musimy zresetować licznik 
                    end if;

                --  Wypisanie docelowego słowa na ekran
                when DRAW_TARGET_WORD =>
                    -- Sprawdzamy czy nie dotarliśmy do końca słowa (Null) lub limitu znaków
                    if letter_idx < MAX_WORD_LEN and current_word(letter_idx) /= "0000000" then
                        OLED_ASCII <= current_word(letter_idx);
                        OLED_WE <= '1';
                        state <= DRAW_TARGET_WORD_ACK;
                    else
                        -- Słowo wypisane! Zerujemy indeks i czekamy na klawisze
                        letter_idx <= 0;
                        timer_running <= '1';
                        -- Muismy wyrównać do nowej lini zanim użytkownik będzie pisał
                        state_after_nl <= WAIT_FOR_KEY; -- Gdzie iść po nowej linii
                        state <= FORCE_NEW_LINE;        -- Wywołaj wyrównanie
                    end if;
                    
                when DRAW_TARGET_WORD_ACK =>
                    if OLED_BUSY = '1' then
                        state <= WAIT_OLED_DRAW;
                    end if;

                --  Czekamy aż pojedyncza litera się wypisze
                when WAIT_OLED_DRAW =>
                    if OLED_Busy = '0' then
                        letter_idx <= letter_idx + 1;
                        total_chars <= total_chars + 1;
                        state <= DRAW_TARGET_WORD; -- Wróć wypisywac kolejną
                    end if;

                --  Główna pętla gry 
                when WAIT_FOR_KEY =>
                    if Char_Valid = '1' then
                        latched_char <= ASCII_In; 
                        
                        -- Porównanie z aktualnym słowem
                        if ASCII_In = current_word(letter_idx) then
                            state <= ECHO_TYPED_CHAR;
                        else
                            -- Zła liter, Zwiększamy licznik BCD błędów
                            if err_ones = 9 then
                                err_ones <= 0;
                                if err_tens < 9 then
                                    err_tens <= err_tens + 1;
                                end if;
                            else
                                err_ones <= err_ones + 1;
                            end if;
                        end if;
                    end if;

                --  Wypisanie poprawnej litery gracza na ekran
                when ECHO_TYPED_CHAR =>
                    OLED_ASCII <= latched_char;
                    OLED_WE <= '1';
                    state <= WAIT_OLED_ECHO;

                --  Czekamy aż OLED narysuje literę
                when WAIT_OLED_ECHO =>
                    if OLED_Busy = '0' then
                        state <= CHECK_WIN;
                    end if;

                --  Sprawdzenie, czy to była ostatnia litera
                when CHECK_WIN =>
                    -- Sprawdzamy, czy kolejna litera to koniec słowa
                    if letter_idx + 1 < MAX_WORD_LEN and current_word(letter_idx + 1) /= "0000000" then
                        letter_idx <= letter_idx + 1;
                        state <= WAIT_FOR_KEY; 
                    else
                        -- Następny znak to NULL, czyli mamy całe słowo
                        timer_running <= '0';
                        state_after_nl <= PREPARE_RESULT; -- Po nowej linii przygotuj wynik
                        state <= FORCE_NEW_LINE;
                    end if;
                    --  Przygotowanie napisu z wynikiem: " E:00 T:00.0"
                when PREPARE_RESULT =>
                    result_str(0) <= "0100000"; -- Spacja
                    result_str(1) <= "1000101"; -- 'E' (Errors)
                    result_str(2) <= "0111010"; -- ':'
                    -- Dodajemy 48 (0x30) do cyfry, by otrzymać kod ASCII!
                    result_str(3) <= std_logic_vector(to_unsigned(err_tens + 48, 7));
                    result_str(4) <= std_logic_vector(to_unsigned(err_ones + 48, 7));
                    
                    result_str(5) <= "0100000"; -- Spacja
                    result_str(6) <= "1010100"; -- 'T'
                    result_str(7) <= "0111010"; -- ':'
                    result_str(8) <= std_logic_vector(to_unsigned(time_10s + 48, 7));
                    result_str(9) <= std_logic_vector(to_unsigned(time_s + 48, 7));
                    result_str(10)<= "0101110"; -- '.'
                    result_str(11)<= std_logic_vector(to_unsigned(time_ds + 48, 7));
                    
                    res_idx <= 0;
                    state <= DRAW_RESULT;

                --  Pętla wypisująca wynik na ekranie (znak po znaku)
                when DRAW_RESULT =>
                    if res_idx < 12 then
                        OLED_ASCII <= result_str(res_idx);
                        OLED_WE <= '1';
                        state <= DRAW_RESULT_ACK;
                    else
                        state <= WAIT_TO_START;
                    end if;
                    
                when DRAW_RESULT_ACK =>
                    if OLED_BUSY = '1' then
                        state <= WAIT_RESULT_DRAW;
                    end if;

                --  Czekanie na sprzęt OLED
                when WAIT_RESULT_DRAW =>
                    if OLED_Busy = '0' then
                        res_idx <= res_idx + 1;
                        state <= DRAW_RESULT;
                    end if;


                ---------------------------------------------------------
                -- MECHANIZM WYMUSZANIA NOWEJ LINII -- wywolywany z kilku stanow 
                -- i ma dynamicznie definiowany stan powrotu
                ---------------------------------------------------------
                when FORCE_NEW_LINE =>
                    -- Sprawdzamy czy jesteśmy na początku linii (pozycja 0, 21, 42...)
                    if (total_chars mod 21) /= 0 then
                        OLED_ASCII <= "0100000"; -- Wyślij spację (ASCII 0x20)
                        OLED_WE <= '1';
                        state <= NL_ACK;
                    else
                        -- Jesteśmy na początku nowej linii, wracamy do logiki gry
                        state <= state_after_nl;
                    end if;
                
                when NL_ACK =>
                    if OLED_Busy = '1' then
                        state <= NL_WAIT;
                    end if;
                
                when NL_WAIT =>
                    if OLED_Busy = '0' then
                        total_chars <= total_chars + 1;
                        state <= FORCE_NEW_LINE; -- Sprawdź czy trzeba wysłać kolejną spację
                    end if;



                when others =>
                    state <= WAIT_TO_START;
            end case;
        end if;
    end process;

end Behavioral;