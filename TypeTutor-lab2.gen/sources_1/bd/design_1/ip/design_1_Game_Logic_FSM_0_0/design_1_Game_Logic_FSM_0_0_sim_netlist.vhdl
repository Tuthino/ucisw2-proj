-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Mar 23 10:45:01 2026
-- Host        : Lab016-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_Game_Logic_FSM_0_0/design_1_Game_Logic_FSM_0_0_sim_netlist.vhdl
-- Design      : design_1_Game_Logic_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Game_Logic_FSM_0_0_Game_Logic_FSM is
  port (
    OLED_ASCII : out STD_LOGIC_VECTOR ( 6 downto 0 );
    OLED_WE : out STD_LOGIC;
    OLED_ClrScr : out STD_LOGIC;
    Clk : in STD_LOGIC;
    ASCII_In : in STD_LOGIC_VECTOR ( 6 downto 0 );
    OLED_Busy : in STD_LOGIC;
    Char_Valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Game_Logic_FSM_0_0_Game_Logic_FSM : entity is "Game_Logic_FSM";
end design_1_Game_Logic_FSM_0_0_Game_Logic_FSM;

architecture STRUCTURE of design_1_Game_Logic_FSM_0_0_Game_Logic_FSM is
  signal \DICTIONARY[0][0]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \DICTIONARY[0][1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \DICTIONARY[0][3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \DICTIONARY[0][4]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \DICTIONARY[0][5]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \OLED_ASCII[0]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[0]_i_3_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[0]_i_4_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[0]_i_5_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[0]_i_6_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[0]_i_7_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[1]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[1]_i_3_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[1]_i_4_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[1]_i_5_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[1]_i_6_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[2]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[2]_i_3_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[2]_i_4_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[2]_i_5_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[2]_i_6_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[2]_i_7_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[3]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[3]_i_3_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[3]_i_4_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[3]_i_5_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[4]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[4]_i_2_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[4]_i_3_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[4]_i_4_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[4]_i_5_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[5]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[6]_i_1_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[6]_i_2_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[6]_i_3_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[6]_i_4_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[6]_i_5_n_0\ : STD_LOGIC;
  signal \OLED_ASCII[6]_i_6_n_0\ : STD_LOGIC;
  signal \OLED_ASCII_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \OLED_ASCII_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \OLED_ASCII_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \OLED_ASCII_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal OLED_ClrScr_i_1_n_0 : STD_LOGIC;
  signal \current_word[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \current_word[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \current_word[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \current_word[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \current_word_reg[0]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \current_word_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \current_word_reg[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \current_word_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_word_reg[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \current_word_reg[5]\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal err_ones : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \err_ones[2]_i_1_n_0\ : STD_LOGIC;
  signal \err_ones[3]_i_1_n_0\ : STD_LOGIC;
  signal \err_ones_reg_n_0_[0]\ : STD_LOGIC;
  signal \err_ones_reg_n_0_[1]\ : STD_LOGIC;
  signal \err_ones_reg_n_0_[2]\ : STD_LOGIC;
  signal \err_ones_reg_n_0_[3]\ : STD_LOGIC;
  signal err_tens : STD_LOGIC;
  signal \err_tens[3]_i_3_n_0\ : STD_LOGIC;
  signal \err_tens[3]_i_4_n_0\ : STD_LOGIC;
  signal err_tens_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal latched_char : STD_LOGIC;
  signal \latched_char_reg_n_0_[0]\ : STD_LOGIC;
  signal \latched_char_reg_n_0_[1]\ : STD_LOGIC;
  signal \latched_char_reg_n_0_[2]\ : STD_LOGIC;
  signal \latched_char_reg_n_0_[3]\ : STD_LOGIC;
  signal \latched_char_reg_n_0_[4]\ : STD_LOGIC;
  signal \latched_char_reg_n_0_[5]\ : STD_LOGIC;
  signal \latched_char_reg_n_0_[6]\ : STD_LOGIC;
  signal letter_idx : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \letter_idx[3]_i_3_n_0\ : STD_LOGIC;
  signal \letter_idx[3]_i_4_n_0\ : STD_LOGIC;
  signal letter_idx_1 : STD_LOGIC;
  signal \letter_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \letter_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \letter_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \letter_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \prescaler_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \prescaler_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal prescaler_cnt_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \prescaler_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \prescaler_cnt_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \prescaler_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \prescaler_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \random_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \random_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \random_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \random_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \random_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal res_idx : STD_LOGIC;
  signal \res_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal res_idx_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result_str[3]_0\ : STD_LOGIC;
  signal \result_str_reg[11]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result_str_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result_str_reg[4]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result_str_reg[8]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result_str_reg[9]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal time_10s : STD_LOGIC;
  signal time_10s0 : STD_LOGIC;
  signal \time_10s[3]_i_3_n_0\ : STD_LOGIC;
  signal \time_10s[3]_i_4_n_0\ : STD_LOGIC;
  signal \time_10s[3]_i_5_n_0\ : STD_LOGIC;
  signal time_10s_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal time_ds : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \time_ds[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_ds[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_ds[3]_i_3_n_0\ : STD_LOGIC;
  signal \time_ds[3]_i_4_n_0\ : STD_LOGIC;
  signal \time_ds[3]_i_5_n_0\ : STD_LOGIC;
  signal \time_ds[3]_i_6_n_0\ : STD_LOGIC;
  signal \time_ds[3]_i_7_n_0\ : STD_LOGIC;
  signal \time_ds_reg_n_0_[0]\ : STD_LOGIC;
  signal \time_ds_reg_n_0_[1]\ : STD_LOGIC;
  signal \time_ds_reg_n_0_[2]\ : STD_LOGIC;
  signal \time_ds_reg_n_0_[3]\ : STD_LOGIC;
  signal time_s : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \time_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_s[3]_i_1_n_0\ : STD_LOGIC;
  signal \time_s[3]_i_3_n_0\ : STD_LOGIC;
  signal \time_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \time_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \time_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \time_s_reg_n_0_[3]\ : STD_LOGIC;
  signal timer_running_i_1_n_0 : STD_LOGIC;
  signal timer_running_reg_n_0 : STD_LOGIC;
  signal \NLW_prescaler_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_prescaler_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_5\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101";
  attribute SOFT_HLUTNM of \OLED_ASCII[0]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \OLED_ASCII[1]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \OLED_ASCII[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \OLED_ASCII[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \OLED_ASCII[4]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \OLED_ASCII[6]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \OLED_ASCII[6]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \OLED_ASCII[6]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of OLED_ClrScr_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_word[0][1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current_word[1][0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current_word[2][0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \current_word[2][4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current_word[3][0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_word[3][2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \current_word[4][1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current_word[5][1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \err_ones[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \err_ones[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \err_ones[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \err_tens[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \err_tens[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \err_tens[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \err_tens[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \err_tens[3]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \letter_idx[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \letter_idx[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \letter_idx[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \letter_idx[3]_i_2\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \prescaler_cnt_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \prescaler_cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \prescaler_cnt_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \random_cnt[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \random_cnt[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \res_idx[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \res_idx[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \res_idx[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \res_idx[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \time_10s[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \time_10s[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \time_10s[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \time_10s[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \time_10s[3]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_10s[3]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \time_ds[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \time_ds[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \time_ds[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \time_s[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \time_s[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \time_s[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_s[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \time_s[3]_i_3\ : label is "soft_lutpair5";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => \state__1\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(3),
      I3 => \FSM_sequential_state[3]_i_5_n_0\,
      I4 => \FSM_sequential_state[1]_i_2_n_0\,
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444444444444"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \state__0\(3),
      I4 => res_idx_reg(2),
      I5 => res_idx_reg(3),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF000E"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => \state__0\(3),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \OLED_ASCII[6]_i_4_n_0\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \OLED_ASCII[6]_i_6_n_0\,
      I3 => \OLED_ASCII[1]_i_3_n_0\,
      I4 => \OLED_ASCII[4]_i_3_n_0\,
      I5 => \OLED_ASCII[0]_i_3_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888808888888"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => res_idx_reg(2),
      I3 => res_idx_reg(3),
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \letter_idx[3]_i_3_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \state__0\(3),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(3),
      I2 => Char_Valid,
      I3 => \FSM_sequential_state[3]_i_3_n_0\,
      I4 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFF0000FF00"
    )
        port map (
      I0 => res_idx_reg(3),
      I1 => res_idx_reg(2),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \OLED_ASCII[6]_i_4_n_0\,
      I4 => \FSM_sequential_state[3]_i_5_n_0\,
      I5 => \state__0\(3),
      O => \state__1\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBE"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_6_n_0\,
      I1 => \OLED_ASCII[0]_i_3_n_0\,
      I2 => ASCII_In(0),
      I3 => \FSM_sequential_state[3]_i_7_n_0\,
      I4 => \FSM_sequential_state[3]_i_8_n_0\,
      I5 => \FSM_sequential_state[3]_i_9_n_0\,
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666FDFDDBDBCFCC"
    )
        port map (
      I0 => OLED_Busy,
      I1 => \state__0\(0),
      I2 => \state__0\(3),
      I3 => Char_Valid,
      I4 => \state__0\(1),
      I5 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \OLED_ASCII[0]_i_3_n_0\,
      I1 => \OLED_ASCII[4]_i_3_n_0\,
      I2 => \OLED_ASCII[1]_i_3_n_0\,
      I3 => \OLED_ASCII[6]_i_6_n_0\,
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ASCII_In(6),
      I1 => \OLED_ASCII[6]_i_6_n_0\,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFF9F9CFC9CFCF"
    )
        port map (
      I0 => \OLED_ASCII[1]_i_6_n_0\,
      I1 => ASCII_In(1),
      I2 => \letter_idx_reg_n_0_[3]\,
      I3 => \OLED_ASCII[2]_i_6_n_0\,
      I4 => \OLED_ASCII[2]_i_7_n_0\,
      I5 => ASCII_In(2),
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ASCII_In(3),
      I1 => \OLED_ASCII[3]_i_3_n_0\,
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA45FFFFFFFFBA45"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \OLED_ASCII[4]_i_4_n_0\,
      I2 => \OLED_ASCII[4]_i_5_n_0\,
      I3 => ASCII_In(4),
      I4 => \OLED_ASCII[6]_i_6_n_0\,
      I5 => ASCII_In(5),
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__1\(0),
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__1\(1),
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__1\(2),
      Q => \FSM_sequential_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__1\(3),
      Q => \state__0\(3),
      R => '0'
    );
\OLED_ASCII[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \OLED_ASCII_reg[0]_i_2_n_0\,
      I1 => \state__0\(3),
      I2 => \OLED_ASCII[0]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[0]\,
      O => \OLED_ASCII[0]_i_1_n_0\
    );
\OLED_ASCII[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \OLED_ASCII[0]_i_6_n_0\,
      I2 => \OLED_ASCII[0]_i_7_n_0\,
      O => \OLED_ASCII[0]_i_3_n_0\
    );
\OLED_ASCII[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BB3000"
    )
        port map (
      I0 => \result_str_reg[3]\(0),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[4]\(0),
      I3 => res_idx_reg(2),
      I4 => res_idx_reg(0),
      O => \OLED_ASCII[0]_i_4_n_0\
    );
\OLED_ASCII[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \result_str_reg[11]\(0),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[9]\(0),
      I3 => res_idx_reg(0),
      I4 => \result_str_reg[8]\(0),
      O => \OLED_ASCII[0]_i_5_n_0\
    );
\OLED_ASCII[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08300800"
    )
        port map (
      I0 => \current_word_reg[2]\(4),
      I1 => \letter_idx_reg_n_0_[2]\,
      I2 => \letter_idx_reg_n_0_[1]\,
      I3 => \letter_idx_reg_n_0_[0]\,
      I4 => \current_word_reg[2]\(0),
      O => \OLED_ASCII[0]_i_6_n_0\
    );
\OLED_ASCII[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF50F35FFF5FF35"
    )
        port map (
      I0 => \current_word_reg[4]\(0),
      I1 => \current_word_reg[1]\(0),
      I2 => \letter_idx_reg_n_0_[0]\,
      I3 => \letter_idx_reg_n_0_[1]\,
      I4 => \letter_idx_reg_n_0_[2]\,
      I5 => \current_word_reg[3]\(0),
      O => \OLED_ASCII[0]_i_7_n_0\
    );
\OLED_ASCII[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \OLED_ASCII_reg[1]_i_2_n_0\,
      I1 => \state__0\(3),
      I2 => \OLED_ASCII[1]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[1]\,
      O => \OLED_ASCII[1]_i_1_n_0\
    );
\OLED_ASCII[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \OLED_ASCII[1]_i_6_n_0\,
      O => \OLED_ASCII[1]_i_3_n_0\
    );
\OLED_ASCII[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC8830CC"
    )
        port map (
      I0 => \result_str_reg[3]\(1),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[4]\(1),
      I3 => res_idx_reg(2),
      I4 => res_idx_reg(0),
      O => \OLED_ASCII[1]_i_4_n_0\
    );
\OLED_ASCII[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => \result_str_reg[11]\(1),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[9]\(1),
      I3 => res_idx_reg(0),
      I4 => \result_str_reg[8]\(1),
      O => \OLED_ASCII[1]_i_5_n_0\
    );
\OLED_ASCII[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F300F055F3FFFF55"
    )
        port map (
      I0 => \current_word_reg[0]\(1),
      I1 => \current_word_reg[5]\(1),
      I2 => \letter_idx_reg_n_0_[1]\,
      I3 => \letter_idx_reg_n_0_[2]\,
      I4 => \letter_idx_reg_n_0_[0]\,
      I5 => \current_word_reg[4]\(1),
      O => \OLED_ASCII[1]_i_6_n_0\
    );
\OLED_ASCII[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \OLED_ASCII_reg[2]_i_2_n_0\,
      I1 => \state__0\(3),
      I2 => \OLED_ASCII[2]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[2]\,
      O => \OLED_ASCII[2]_i_1_n_0\
    );
\OLED_ASCII[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \OLED_ASCII[2]_i_6_n_0\,
      I2 => \OLED_ASCII[2]_i_7_n_0\,
      O => \OLED_ASCII[2]_i_3_n_0\
    );
\OLED_ASCII[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BBFC00"
    )
        port map (
      I0 => \result_str_reg[3]\(2),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[4]\(2),
      I3 => res_idx_reg(2),
      I4 => res_idx_reg(0),
      O => \OLED_ASCII[2]_i_4_n_0\
    );
\OLED_ASCII[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => \result_str_reg[11]\(2),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[9]\(2),
      I3 => res_idx_reg(0),
      I4 => \result_str_reg[8]\(2),
      O => \OLED_ASCII[2]_i_5_n_0\
    );
\OLED_ASCII[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[0]\,
      I1 => \current_word_reg[3]\(0),
      I2 => \letter_idx_reg_n_0_[1]\,
      I3 => \current_word_reg[2]\(2),
      I4 => \current_word_reg[3]\(2),
      I5 => \letter_idx_reg_n_0_[2]\,
      O => \OLED_ASCII[2]_i_6_n_0\
    );
\OLED_ASCII[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCFDFFF"
    )
        port map (
      I0 => \current_word_reg[2]\(4),
      I1 => \letter_idx_reg_n_0_[1]\,
      I2 => \letter_idx_reg_n_0_[2]\,
      I3 => \letter_idx_reg_n_0_[0]\,
      I4 => \current_word_reg[1]\(0),
      O => \OLED_ASCII[2]_i_7_n_0\
    );
\OLED_ASCII[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \OLED_ASCII_reg[3]_i_2_n_0\,
      I1 => \state__0\(3),
      I2 => \OLED_ASCII[3]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[3]\,
      O => \OLED_ASCII[3]_i_1_n_0\
    );
\OLED_ASCII[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040054000400040"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \current_word_reg[2]\(4),
      I2 => \letter_idx_reg_n_0_[0]\,
      I3 => \letter_idx_reg_n_0_[1]\,
      I4 => \letter_idx_reg_n_0_[2]\,
      I5 => \current_word_reg[4]\(1),
      O => \OLED_ASCII[3]_i_3_n_0\
    );
\OLED_ASCII[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC8830CC"
    )
        port map (
      I0 => \result_str_reg[3]\(3),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[4]\(3),
      I3 => res_idx_reg(2),
      I4 => res_idx_reg(0),
      O => \OLED_ASCII[3]_i_4_n_0\
    );
\OLED_ASCII[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => \result_str_reg[11]\(3),
      I1 => res_idx_reg(1),
      I2 => \result_str_reg[9]\(3),
      I3 => res_idx_reg(0),
      I4 => \result_str_reg[8]\(3),
      O => \OLED_ASCII[3]_i_5_n_0\
    );
\OLED_ASCII[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAE00"
    )
        port map (
      I0 => \OLED_ASCII[4]_i_2_n_0\,
      I1 => \OLED_ASCII[4]_i_3_n_0\,
      I2 => \state__0\(3),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[4]\,
      O => \OLED_ASCII[4]_i_1_n_0\
    );
\OLED_ASCII[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A82AA828"
    )
        port map (
      I0 => \state__0\(3),
      I1 => res_idx_reg(3),
      I2 => res_idx_reg(1),
      I3 => res_idx_reg(0),
      I4 => res_idx_reg(2),
      O => \OLED_ASCII[4]_i_2_n_0\
    );
\OLED_ASCII[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \OLED_ASCII[4]_i_4_n_0\,
      I2 => \OLED_ASCII[4]_i_5_n_0\,
      O => \OLED_ASCII[4]_i_3_n_0\
    );
\OLED_ASCII[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03000B0B03000808"
    )
        port map (
      I0 => \current_word_reg[4]\(1),
      I1 => \letter_idx_reg_n_0_[2]\,
      I2 => \letter_idx_reg_n_0_[1]\,
      I3 => \current_word_reg[1]\(4),
      I4 => \letter_idx_reg_n_0_[0]\,
      I5 => \current_word_reg[1]\(0),
      O => \OLED_ASCII[4]_i_4_n_0\
    );
\OLED_ASCII[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFFFFF"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[2]\,
      I1 => \current_word_reg[4]\(0),
      I2 => \letter_idx_reg_n_0_[0]\,
      I3 => \current_word_reg[2]\(4),
      I4 => \letter_idx_reg_n_0_[1]\,
      O => \OLED_ASCII[4]_i_5_n_0\
    );
\OLED_ASCII[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \OLED_ASCII[6]_i_5_n_0\,
      I1 => \state__0\(3),
      I2 => \OLED_ASCII[6]_i_6_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[5]\,
      O => \OLED_ASCII[5]_i_1_n_0\
    );
\OLED_ASCII[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C80CC80CC80CC80"
    )
        port map (
      I0 => \OLED_ASCII[6]_i_3_n_0\,
      I1 => \OLED_ASCII[6]_i_4_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \state__0\(3),
      I4 => res_idx_reg(2),
      I5 => res_idx_reg(3),
      O => \OLED_ASCII[6]_i_1_n_0\
    );
\OLED_ASCII[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \OLED_ASCII[6]_i_5_n_0\,
      I1 => \state__0\(3),
      I2 => \OLED_ASCII[6]_i_6_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \latched_char_reg_n_0_[6]\,
      O => \OLED_ASCII[6]_i_2_n_0\
    );
\OLED_ASCII[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \OLED_ASCII[6]_i_6_n_0\,
      I1 => \OLED_ASCII[1]_i_3_n_0\,
      I2 => \OLED_ASCII[4]_i_3_n_0\,
      I3 => \OLED_ASCII[0]_i_3_n_0\,
      O => \OLED_ASCII[6]_i_3_n_0\
    );
\OLED_ASCII[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \OLED_ASCII[6]_i_4_n_0\
    );
\OLED_ASCII[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBD"
    )
        port map (
      I0 => res_idx_reg(0),
      I1 => res_idx_reg(1),
      I2 => res_idx_reg(2),
      I3 => res_idx_reg(3),
      O => \OLED_ASCII[6]_i_5_n_0\
    );
\OLED_ASCII[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1151115511511111"
    )
        port map (
      I0 => \letter_idx_reg_n_0_[3]\,
      I1 => \letter_idx_reg_n_0_[2]\,
      I2 => \current_word_reg[2]\(4),
      I3 => \letter_idx_reg_n_0_[1]\,
      I4 => \letter_idx_reg_n_0_[0]\,
      I5 => \current_word_reg[1]\(0),
      O => \OLED_ASCII[6]_i_6_n_0\
    );
\OLED_ASCII_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[0]_i_1_n_0\,
      Q => OLED_ASCII(0),
      R => '0'
    );
\OLED_ASCII_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \OLED_ASCII[0]_i_4_n_0\,
      I1 => \OLED_ASCII[0]_i_5_n_0\,
      O => \OLED_ASCII_reg[0]_i_2_n_0\,
      S => res_idx_reg(3)
    );
\OLED_ASCII_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[1]_i_1_n_0\,
      Q => OLED_ASCII(1),
      R => '0'
    );
\OLED_ASCII_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \OLED_ASCII[1]_i_4_n_0\,
      I1 => \OLED_ASCII[1]_i_5_n_0\,
      O => \OLED_ASCII_reg[1]_i_2_n_0\,
      S => res_idx_reg(3)
    );
\OLED_ASCII_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[2]_i_1_n_0\,
      Q => OLED_ASCII(2),
      R => '0'
    );
\OLED_ASCII_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \OLED_ASCII[2]_i_4_n_0\,
      I1 => \OLED_ASCII[2]_i_5_n_0\,
      O => \OLED_ASCII_reg[2]_i_2_n_0\,
      S => res_idx_reg(3)
    );
\OLED_ASCII_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[3]_i_1_n_0\,
      Q => OLED_ASCII(3),
      R => '0'
    );
\OLED_ASCII_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \OLED_ASCII[3]_i_4_n_0\,
      I1 => \OLED_ASCII[3]_i_5_n_0\,
      O => \OLED_ASCII_reg[3]_i_2_n_0\,
      S => res_idx_reg(3)
    );
\OLED_ASCII_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[4]_i_1_n_0\,
      Q => OLED_ASCII(4),
      R => '0'
    );
\OLED_ASCII_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[5]_i_1_n_0\,
      Q => OLED_ASCII(5),
      R => '0'
    );
\OLED_ASCII_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \OLED_ASCII[6]_i_1_n_0\,
      D => \OLED_ASCII[6]_i_2_n_0\,
      Q => OLED_ASCII(6),
      R => '0'
    );
OLED_ClrScr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => OLED_ClrScr_i_1_n_0
    );
OLED_ClrScr_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => OLED_ClrScr_i_1_n_0,
      Q => OLED_ClrScr,
      R => '0'
    );
OLED_WE_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \OLED_ASCII[6]_i_1_n_0\,
      Q => OLED_WE,
      R => '0'
    );
\current_word[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[0]\,
      I1 => \random_cnt_reg_n_0_[1]\,
      O => \DICTIONARY[0][0]\(1)
    );
\current_word[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[1]\,
      I1 => \random_cnt_reg_n_0_[0]\,
      O => \DICTIONARY[0][1]\(0)
    );
\current_word[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(3),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      O => time_10s0
    );
\current_word[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[0]\,
      I1 => \random_cnt_reg_n_0_[1]\,
      O => \current_word[2][0]_i_1_n_0\
    );
\current_word[2][2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[1]\,
      O => \current_word[2][2]_i_1_n_0\
    );
\current_word[2][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[0]\,
      I1 => \random_cnt_reg_n_0_[1]\,
      O => \current_word[2][4]_i_1_n_0\
    );
\current_word[3][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[1]\,
      I1 => \random_cnt_reg_n_0_[0]\,
      O => \DICTIONARY[0][3]\(0)
    );
\current_word[3][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[0]\,
      I1 => \random_cnt_reg_n_0_[1]\,
      O => \current_word[3][2]_i_1_n_0\
    );
\current_word[4][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[1]\,
      I1 => \random_cnt_reg_n_0_[0]\,
      O => \DICTIONARY[0][4]\(1)
    );
\current_word[5][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[1]\,
      I1 => \random_cnt_reg_n_0_[0]\,
      O => \DICTIONARY[0][5]\(1)
    );
\current_word_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \DICTIONARY[0][0]\(1),
      Q => \current_word_reg[0]\(1),
      R => '0'
    );
\current_word_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \DICTIONARY[0][1]\(0),
      Q => \current_word_reg[1]\(0),
      R => '0'
    );
\current_word_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \random_cnt_reg_n_0_[0]\,
      Q => \current_word_reg[1]\(4),
      R => '0'
    );
\current_word_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \current_word[2][0]_i_1_n_0\,
      Q => \current_word_reg[2]\(0),
      R => '0'
    );
\current_word_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \current_word[2][2]_i_1_n_0\,
      Q => \current_word_reg[2]\(2),
      R => '0'
    );
\current_word_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \current_word[2][4]_i_1_n_0\,
      Q => \current_word_reg[2]\(4),
      R => '0'
    );
\current_word_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \DICTIONARY[0][3]\(0),
      Q => \current_word_reg[3]\(0),
      R => '0'
    );
\current_word_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \current_word[3][2]_i_1_n_0\,
      Q => \current_word_reg[3]\(2),
      R => '0'
    );
\current_word_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \random_cnt_reg_n_0_[1]\,
      Q => \current_word_reg[4]\(0),
      R => '0'
    );
\current_word_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \DICTIONARY[0][4]\(1),
      Q => \current_word_reg[4]\(1),
      R => '0'
    );
\current_word_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => time_10s0,
      D => \DICTIONARY[0][5]\(1),
      Q => \current_word_reg[5]\(1),
      R => '0'
    );
\err_ones[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \err_ones_reg_n_0_[0]\,
      O => err_ones(0)
    );
\err_ones[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D0F000"
    )
        port map (
      I0 => \err_ones_reg_n_0_[3]\,
      I1 => \err_ones_reg_n_0_[2]\,
      I2 => \state__0\(3),
      I3 => \err_ones_reg_n_0_[1]\,
      I4 => \err_ones_reg_n_0_[0]\,
      O => err_ones(1)
    );
\err_ones[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \err_ones_reg_n_0_[0]\,
      I1 => \err_ones_reg_n_0_[1]\,
      I2 => \err_ones_reg_n_0_[2]\,
      I3 => \state__0\(3),
      O => \err_ones[2]_i_1_n_0\
    );
\err_ones[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000F80"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => Char_Valid,
      I2 => \state__0\(3),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \FSM_sequential_state_reg_n_0_[2]\,
      O => \err_ones[3]_i_1_n_0\
    );
\err_ones[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28AA8000"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \err_ones_reg_n_0_[2]\,
      I2 => \err_ones_reg_n_0_[1]\,
      I3 => \err_ones_reg_n_0_[0]\,
      I4 => \err_ones_reg_n_0_[3]\,
      O => err_ones(3)
    );
\err_ones_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \err_ones[3]_i_1_n_0\,
      D => err_ones(0),
      Q => \err_ones_reg_n_0_[0]\,
      R => '0'
    );
\err_ones_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \err_ones[3]_i_1_n_0\,
      D => err_ones(1),
      Q => \err_ones_reg_n_0_[1]\,
      R => '0'
    );
\err_ones_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \err_ones[3]_i_1_n_0\,
      D => \err_ones[2]_i_1_n_0\,
      Q => \err_ones_reg_n_0_[2]\,
      R => '0'
    );
\err_ones_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \err_ones[3]_i_1_n_0\,
      D => err_ones(3),
      Q => \err_ones_reg_n_0_[3]\,
      R => '0'
    );
\err_tens[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => err_tens_reg(0),
      O => \p_0_in__2\(0)
    );
\err_tens[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => err_tens_reg(0),
      I1 => err_tens_reg(1),
      O => \p_0_in__2\(1)
    );
\err_tens[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => err_tens_reg(2),
      I1 => err_tens_reg(1),
      I2 => err_tens_reg(0),
      O => \p_0_in__2\(2)
    );
\err_tens[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \err_tens[3]_i_3_n_0\,
      O => err_tens
    );
\err_tens[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => err_tens_reg(3),
      I1 => err_tens_reg(2),
      I2 => err_tens_reg(0),
      I3 => err_tens_reg(1),
      O => \p_0_in__2\(3)
    );
\err_tens[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD5555FFFFFFFF"
    )
        port map (
      I0 => latched_char,
      I1 => err_tens_reg(0),
      I2 => err_tens_reg(1),
      I3 => err_tens_reg(2),
      I4 => err_tens_reg(3),
      I5 => \err_tens[3]_i_4_n_0\,
      O => \err_tens[3]_i_3_n_0\
    );
\err_tens[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \err_ones_reg_n_0_[3]\,
      I1 => \err_ones_reg_n_0_[0]\,
      I2 => \err_ones_reg_n_0_[2]\,
      I3 => \err_ones_reg_n_0_[1]\,
      O => \err_tens[3]_i_4_n_0\
    );
\err_tens_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => err_tens,
      D => \p_0_in__2\(0),
      Q => err_tens_reg(0),
      R => time_10s0
    );
\err_tens_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => err_tens,
      D => \p_0_in__2\(1),
      Q => err_tens_reg(1),
      R => time_10s0
    );
\err_tens_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => err_tens,
      D => \p_0_in__2\(2),
      Q => err_tens_reg(2),
      R => time_10s0
    );
\err_tens_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => err_tens,
      D => \p_0_in__2\(3),
      Q => err_tens_reg(3),
      R => time_10s0
    );
\latched_char[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => Char_Valid,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => latched_char
    );
\latched_char_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(0),
      Q => \latched_char_reg_n_0_[0]\,
      R => '0'
    );
\latched_char_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(1),
      Q => \latched_char_reg_n_0_[1]\,
      R => '0'
    );
\latched_char_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(2),
      Q => \latched_char_reg_n_0_[2]\,
      R => '0'
    );
\latched_char_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(3),
      Q => \latched_char_reg_n_0_[3]\,
      R => '0'
    );
\latched_char_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(4),
      Q => \latched_char_reg_n_0_[4]\,
      R => '0'
    );
\latched_char_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(5),
      Q => \latched_char_reg_n_0_[5]\,
      R => '0'
    );
\latched_char_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => latched_char,
      D => ASCII_In(6),
      Q => \latched_char_reg_n_0_[6]\,
      R => '0'
    );
\letter_idx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \letter_idx_reg_n_0_[0]\,
      O => letter_idx(0)
    );
\letter_idx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \letter_idx_reg_n_0_[0]\,
      I2 => \letter_idx_reg_n_0_[1]\,
      O => letter_idx(1)
    );
\letter_idx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \letter_idx_reg_n_0_[1]\,
      I2 => \letter_idx_reg_n_0_[0]\,
      I3 => \letter_idx_reg_n_0_[2]\,
      O => letter_idx(2)
    );
\letter_idx[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222232222E223E22"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \state__0\(3),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => OLED_Busy,
      I5 => \letter_idx[3]_i_3_n_0\,
      O => letter_idx_1
    );
\letter_idx[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \letter_idx_reg_n_0_[0]\,
      I2 => \letter_idx_reg_n_0_[1]\,
      I3 => \letter_idx_reg_n_0_[2]\,
      I4 => \letter_idx_reg_n_0_[3]\,
      O => letter_idx(3)
    );
\letter_idx[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAEE"
    )
        port map (
      I0 => \letter_idx[3]_i_4_n_0\,
      I1 => \letter_idx_reg_n_0_[2]\,
      I2 => \letter_idx_reg_n_0_[0]\,
      I3 => \current_word_reg[2]\(4),
      I4 => \current_word_reg[5]\(1),
      I5 => \letter_idx_reg_n_0_[3]\,
      O => \letter_idx[3]_i_3_n_0\
    );
\letter_idx[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F1F0F000000000"
    )
        port map (
      I0 => \current_word_reg[4]\(0),
      I1 => \current_word_reg[1]\(0),
      I2 => \letter_idx_reg_n_0_[2]\,
      I3 => \current_word_reg[4]\(1),
      I4 => \letter_idx_reg_n_0_[0]\,
      I5 => \letter_idx_reg_n_0_[1]\,
      O => \letter_idx[3]_i_4_n_0\
    );
\letter_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => letter_idx_1,
      D => letter_idx(0),
      Q => \letter_idx_reg_n_0_[0]\,
      R => time_10s0
    );
\letter_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => letter_idx_1,
      D => letter_idx(1),
      Q => \letter_idx_reg_n_0_[1]\,
      R => time_10s0
    );
\letter_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => letter_idx_1,
      D => letter_idx(2),
      Q => \letter_idx_reg_n_0_[2]\,
      R => time_10s0
    );
\letter_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => letter_idx_1,
      D => letter_idx(3),
      Q => \letter_idx_reg_n_0_[3]\,
      R => time_10s0
    );
\prescaler_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer_running_reg_n_0,
      O => p_0_in
    );
\prescaler_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(0),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_3_n_0\
    );
\prescaler_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(5),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_4_n_0\
    );
\prescaler_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(4),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_5_n_0\
    );
\prescaler_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(3),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_6_n_0\
    );
\prescaler_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(2),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_7_n_0\
    );
\prescaler_cnt[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(1),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_8_n_0\
    );
\prescaler_cnt[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prescaler_cnt_reg(0),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[0]_i_9_n_0\
    );
\prescaler_cnt[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(19),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[16]_i_2_n_0\
    );
\prescaler_cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(18),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[16]_i_3_n_0\
    );
\prescaler_cnt[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(17),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[16]_i_4_n_0\
    );
\prescaler_cnt[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(16),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[16]_i_5_n_0\
    );
\prescaler_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(14),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[8]_i_2_n_0\
    );
\prescaler_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prescaler_cnt_reg(9),
      I1 => \time_ds[3]_i_3_n_0\,
      O => \prescaler_cnt[8]_i_3_n_0\
    );
\prescaler_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_15\,
      Q => prescaler_cnt_reg(0),
      R => p_0_in
    );
\prescaler_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \prescaler_cnt_reg[0]_i_2_n_0\,
      CO(6) => \prescaler_cnt_reg[0]_i_2_n_1\,
      CO(5) => \prescaler_cnt_reg[0]_i_2_n_2\,
      CO(4) => \prescaler_cnt_reg[0]_i_2_n_3\,
      CO(3) => \prescaler_cnt_reg[0]_i_2_n_4\,
      CO(2) => \prescaler_cnt_reg[0]_i_2_n_5\,
      CO(1) => \prescaler_cnt_reg[0]_i_2_n_6\,
      CO(0) => \prescaler_cnt_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \prescaler_cnt[0]_i_3_n_0\,
      O(7) => \prescaler_cnt_reg[0]_i_2_n_8\,
      O(6) => \prescaler_cnt_reg[0]_i_2_n_9\,
      O(5) => \prescaler_cnt_reg[0]_i_2_n_10\,
      O(4) => \prescaler_cnt_reg[0]_i_2_n_11\,
      O(3) => \prescaler_cnt_reg[0]_i_2_n_12\,
      O(2) => \prescaler_cnt_reg[0]_i_2_n_13\,
      O(1) => \prescaler_cnt_reg[0]_i_2_n_14\,
      O(0) => \prescaler_cnt_reg[0]_i_2_n_15\,
      S(7 downto 6) => prescaler_cnt_reg(7 downto 6),
      S(5) => \prescaler_cnt[0]_i_4_n_0\,
      S(4) => \prescaler_cnt[0]_i_5_n_0\,
      S(3) => \prescaler_cnt[0]_i_6_n_0\,
      S(2) => \prescaler_cnt[0]_i_7_n_0\,
      S(1) => \prescaler_cnt[0]_i_8_n_0\,
      S(0) => \prescaler_cnt[0]_i_9_n_0\
    );
\prescaler_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_13\,
      Q => prescaler_cnt_reg(10),
      R => p_0_in
    );
\prescaler_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_12\,
      Q => prescaler_cnt_reg(11),
      R => p_0_in
    );
\prescaler_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_11\,
      Q => prescaler_cnt_reg(12),
      R => p_0_in
    );
\prescaler_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_10\,
      Q => prescaler_cnt_reg(13),
      R => p_0_in
    );
\prescaler_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_9\,
      Q => prescaler_cnt_reg(14),
      R => p_0_in
    );
\prescaler_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_8\,
      Q => prescaler_cnt_reg(15),
      R => p_0_in
    );
\prescaler_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[16]_i_1_n_15\,
      Q => prescaler_cnt_reg(16),
      R => p_0_in
    );
\prescaler_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \prescaler_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_prescaler_cnt_reg[16]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \prescaler_cnt_reg[16]_i_1_n_5\,
      CO(1) => \prescaler_cnt_reg[16]_i_1_n_6\,
      CO(0) => \prescaler_cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_prescaler_cnt_reg[16]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \prescaler_cnt_reg[16]_i_1_n_12\,
      O(2) => \prescaler_cnt_reg[16]_i_1_n_13\,
      O(1) => \prescaler_cnt_reg[16]_i_1_n_14\,
      O(0) => \prescaler_cnt_reg[16]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \prescaler_cnt[16]_i_2_n_0\,
      S(2) => \prescaler_cnt[16]_i_3_n_0\,
      S(1) => \prescaler_cnt[16]_i_4_n_0\,
      S(0) => \prescaler_cnt[16]_i_5_n_0\
    );
\prescaler_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[16]_i_1_n_14\,
      Q => prescaler_cnt_reg(17),
      R => p_0_in
    );
\prescaler_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[16]_i_1_n_13\,
      Q => prescaler_cnt_reg(18),
      R => p_0_in
    );
\prescaler_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[16]_i_1_n_12\,
      Q => prescaler_cnt_reg(19),
      R => p_0_in
    );
\prescaler_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_14\,
      Q => prescaler_cnt_reg(1),
      R => p_0_in
    );
\prescaler_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_13\,
      Q => prescaler_cnt_reg(2),
      R => p_0_in
    );
\prescaler_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_12\,
      Q => prescaler_cnt_reg(3),
      R => p_0_in
    );
\prescaler_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_11\,
      Q => prescaler_cnt_reg(4),
      R => p_0_in
    );
\prescaler_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_10\,
      Q => prescaler_cnt_reg(5),
      R => p_0_in
    );
\prescaler_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_9\,
      Q => prescaler_cnt_reg(6),
      R => p_0_in
    );
\prescaler_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[0]_i_2_n_8\,
      Q => prescaler_cnt_reg(7),
      R => p_0_in
    );
\prescaler_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_15\,
      Q => prescaler_cnt_reg(8),
      R => p_0_in
    );
\prescaler_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \prescaler_cnt_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \prescaler_cnt_reg[8]_i_1_n_0\,
      CO(6) => \prescaler_cnt_reg[8]_i_1_n_1\,
      CO(5) => \prescaler_cnt_reg[8]_i_1_n_2\,
      CO(4) => \prescaler_cnt_reg[8]_i_1_n_3\,
      CO(3) => \prescaler_cnt_reg[8]_i_1_n_4\,
      CO(2) => \prescaler_cnt_reg[8]_i_1_n_5\,
      CO(1) => \prescaler_cnt_reg[8]_i_1_n_6\,
      CO(0) => \prescaler_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \prescaler_cnt_reg[8]_i_1_n_8\,
      O(6) => \prescaler_cnt_reg[8]_i_1_n_9\,
      O(5) => \prescaler_cnt_reg[8]_i_1_n_10\,
      O(4) => \prescaler_cnt_reg[8]_i_1_n_11\,
      O(3) => \prescaler_cnt_reg[8]_i_1_n_12\,
      O(2) => \prescaler_cnt_reg[8]_i_1_n_13\,
      O(1) => \prescaler_cnt_reg[8]_i_1_n_14\,
      O(0) => \prescaler_cnt_reg[8]_i_1_n_15\,
      S(7) => prescaler_cnt_reg(15),
      S(6) => \prescaler_cnt[8]_i_2_n_0\,
      S(5 downto 2) => prescaler_cnt_reg(13 downto 10),
      S(1) => \prescaler_cnt[8]_i_3_n_0\,
      S(0) => prescaler_cnt_reg(8)
    );
\prescaler_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \prescaler_cnt_reg[8]_i_1_n_14\,
      Q => prescaler_cnt_reg(9),
      R => p_0_in
    );
\random_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[0]\,
      O => \random_cnt[0]_i_1_n_0\
    );
\random_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \time_ds[3]_i_3_n_0\,
      I1 => timer_running_reg_n_0,
      O => \random_cnt[1]_i_1_n_0\
    );
\random_cnt[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \random_cnt_reg_n_0_[1]\,
      I1 => \random_cnt_reg_n_0_[0]\,
      O => \random_cnt[1]_i_2_n_0\
    );
\random_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \random_cnt[1]_i_1_n_0\,
      D => \random_cnt[0]_i_1_n_0\,
      Q => \random_cnt_reg_n_0_[0]\,
      R => '0'
    );
\random_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \random_cnt[1]_i_1_n_0\,
      D => \random_cnt[1]_i_2_n_0\,
      Q => \random_cnt_reg_n_0_[1]\,
      R => '0'
    );
\res_idx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => res_idx_reg(0),
      O => \res_idx[0]_i_1_n_0\
    );
\res_idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => res_idx_reg(1),
      I1 => res_idx_reg(0),
      O => \p_0_in__0\(1)
    );
\res_idx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => res_idx_reg(2),
      I1 => res_idx_reg(0),
      I2 => res_idx_reg(1),
      O => \p_0_in__0\(2)
    );
\res_idx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => OLED_Busy,
      O => res_idx
    );
\res_idx[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => res_idx_reg(3),
      I1 => res_idx_reg(2),
      I2 => res_idx_reg(1),
      I3 => res_idx_reg(0),
      O => \p_0_in__0\(3)
    );
\res_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => res_idx,
      D => \res_idx[0]_i_1_n_0\,
      Q => res_idx_reg(0),
      R => \result_str[3]_0\
    );
\res_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => res_idx,
      D => \p_0_in__0\(1),
      Q => res_idx_reg(1),
      R => \result_str[3]_0\
    );
\res_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => res_idx,
      D => \p_0_in__0\(2),
      Q => res_idx_reg(2),
      R => \result_str[3]_0\
    );
\res_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => res_idx,
      D => \p_0_in__0\(3),
      Q => res_idx_reg(3),
      R => \result_str[3]_0\
    );
\result_str[3][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \result_str[3]_0\
    );
\result_str_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_ds_reg_n_0_[0]\,
      Q => \result_str_reg[11]\(0),
      R => '0'
    );
\result_str_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_ds_reg_n_0_[1]\,
      Q => \result_str_reg[11]\(1),
      R => '0'
    );
\result_str_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_ds_reg_n_0_[2]\,
      Q => \result_str_reg[11]\(2),
      R => '0'
    );
\result_str_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_ds_reg_n_0_[3]\,
      Q => \result_str_reg[11]\(3),
      R => '0'
    );
\result_str_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => err_tens_reg(0),
      Q => \result_str_reg[3]\(0),
      R => '0'
    );
\result_str_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => err_tens_reg(1),
      Q => \result_str_reg[3]\(1),
      R => '0'
    );
\result_str_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => err_tens_reg(2),
      Q => \result_str_reg[3]\(2),
      R => '0'
    );
\result_str_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => err_tens_reg(3),
      Q => \result_str_reg[3]\(3),
      R => '0'
    );
\result_str_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \err_ones_reg_n_0_[0]\,
      Q => \result_str_reg[4]\(0),
      R => '0'
    );
\result_str_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \err_ones_reg_n_0_[1]\,
      Q => \result_str_reg[4]\(1),
      R => '0'
    );
\result_str_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \err_ones_reg_n_0_[2]\,
      Q => \result_str_reg[4]\(2),
      R => '0'
    );
\result_str_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \err_ones_reg_n_0_[3]\,
      Q => \result_str_reg[4]\(3),
      R => '0'
    );
\result_str_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => time_10s_reg(0),
      Q => \result_str_reg[8]\(0),
      R => '0'
    );
\result_str_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => time_10s_reg(1),
      Q => \result_str_reg[8]\(1),
      R => '0'
    );
\result_str_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => time_10s_reg(2),
      Q => \result_str_reg[8]\(2),
      R => '0'
    );
\result_str_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => time_10s_reg(3),
      Q => \result_str_reg[8]\(3),
      R => '0'
    );
\result_str_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_s_reg_n_0_[0]\,
      Q => \result_str_reg[9]\(0),
      R => '0'
    );
\result_str_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_s_reg_n_0_[1]\,
      Q => \result_str_reg[9]\(1),
      R => '0'
    );
\result_str_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_s_reg_n_0_[2]\,
      Q => \result_str_reg[9]\(2),
      R => '0'
    );
\result_str_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \result_str[3]_0\,
      D => \time_s_reg_n_0_[3]\,
      Q => \result_str_reg[9]\(3),
      R => '0'
    );
\time_10s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_10s_reg(0),
      O => \p_0_in__1\(0)
    );
\time_10s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => time_10s_reg(0),
      I1 => time_10s_reg(1),
      O => \p_0_in__1\(1)
    );
\time_10s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => time_10s_reg(2),
      I1 => time_10s_reg(1),
      I2 => time_10s_reg(0),
      O => \p_0_in__1\(2)
    );
\time_10s[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => timer_running_reg_n_0,
      I1 => \time_ds[3]_i_3_n_0\,
      I2 => \time_10s[3]_i_3_n_0\,
      O => time_10s
    );
\time_10s[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => time_10s_reg(3),
      I1 => time_10s_reg(0),
      I2 => time_10s_reg(1),
      I3 => time_10s_reg(2),
      O => \p_0_in__1\(3)
    );
\time_10s[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FFFFFFFFFFFF"
    )
        port map (
      I0 => time_10s_reg(1),
      I1 => time_10s_reg(0),
      I2 => time_10s_reg(2),
      I3 => time_10s_reg(3),
      I4 => \time_10s[3]_i_4_n_0\,
      I5 => \time_10s[3]_i_5_n_0\,
      O => \time_10s[3]_i_3_n_0\
    );
\time_10s[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \time_s_reg_n_0_[1]\,
      I1 => \time_s_reg_n_0_[3]\,
      I2 => \time_s_reg_n_0_[0]\,
      I3 => \time_s_reg_n_0_[2]\,
      O => \time_10s[3]_i_4_n_0\
    );
\time_10s[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \time_ds_reg_n_0_[1]\,
      I1 => \time_ds_reg_n_0_[3]\,
      I2 => \time_ds_reg_n_0_[0]\,
      I3 => \time_ds_reg_n_0_[2]\,
      O => \time_10s[3]_i_5_n_0\
    );
\time_10s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s,
      D => \p_0_in__1\(0),
      Q => time_10s_reg(0),
      R => time_10s0
    );
\time_10s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s,
      D => \p_0_in__1\(1),
      Q => time_10s_reg(1),
      R => time_10s0
    );
\time_10s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s,
      D => \p_0_in__1\(2),
      Q => time_10s_reg(2),
      R => time_10s0
    );
\time_10s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => time_10s,
      D => \p_0_in__1\(3),
      Q => time_10s_reg(3),
      R => time_10s0
    );
\time_ds[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => \time_ds_reg_n_0_[0]\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(3),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \time_ds[0]_i_1_n_0\
    );
\time_ds[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00515500"
    )
        port map (
      I0 => time_10s0,
      I1 => \time_ds_reg_n_0_[3]\,
      I2 => \time_ds_reg_n_0_[2]\,
      I3 => \time_ds_reg_n_0_[1]\,
      I4 => \time_ds_reg_n_0_[0]\,
      O => time_ds(1)
    );
\time_ds[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => time_10s0,
      I1 => \time_ds_reg_n_0_[0]\,
      I2 => \time_ds_reg_n_0_[1]\,
      I3 => \time_ds_reg_n_0_[2]\,
      O => time_ds(2)
    );
\time_ds[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000400040004"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(3),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \time_ds[3]_i_3_n_0\,
      I5 => timer_running_reg_n_0,
      O => \time_ds[3]_i_1_n_0\
    );
\time_ds[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14554000"
    )
        port map (
      I0 => time_10s0,
      I1 => \time_ds_reg_n_0_[2]\,
      I2 => \time_ds_reg_n_0_[1]\,
      I3 => \time_ds_reg_n_0_[0]\,
      I4 => \time_ds_reg_n_0_[3]\,
      O => time_ds(3)
    );
\time_ds[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \time_ds[3]_i_4_n_0\,
      I1 => prescaler_cnt_reg(19),
      I2 => prescaler_cnt_reg(18),
      I3 => prescaler_cnt_reg(11),
      I4 => prescaler_cnt_reg(10),
      I5 => \time_ds[3]_i_5_n_0\,
      O => \time_ds[3]_i_3_n_0\
    );
\time_ds[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => prescaler_cnt_reg(1),
      I1 => prescaler_cnt_reg(13),
      I2 => prescaler_cnt_reg(16),
      I3 => prescaler_cnt_reg(8),
      O => \time_ds[3]_i_4_n_0\
    );
\time_ds[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => prescaler_cnt_reg(14),
      I1 => prescaler_cnt_reg(17),
      I2 => prescaler_cnt_reg(0),
      I3 => prescaler_cnt_reg(4),
      I4 => \time_ds[3]_i_6_n_0\,
      I5 => \time_ds[3]_i_7_n_0\,
      O => \time_ds[3]_i_5_n_0\
    );
\time_ds[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => prescaler_cnt_reg(15),
      I1 => prescaler_cnt_reg(7),
      I2 => prescaler_cnt_reg(2),
      I3 => prescaler_cnt_reg(12),
      O => \time_ds[3]_i_6_n_0\
    );
\time_ds[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => prescaler_cnt_reg(9),
      I1 => prescaler_cnt_reg(5),
      I2 => prescaler_cnt_reg(3),
      I3 => prescaler_cnt_reg(6),
      O => \time_ds[3]_i_7_n_0\
    );
\time_ds_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_ds[3]_i_1_n_0\,
      D => \time_ds[0]_i_1_n_0\,
      Q => \time_ds_reg_n_0_[0]\,
      R => '0'
    );
\time_ds_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_ds[3]_i_1_n_0\,
      D => time_ds(1),
      Q => \time_ds_reg_n_0_[1]\,
      R => '0'
    );
\time_ds_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_ds[3]_i_1_n_0\,
      D => time_ds(2),
      Q => \time_ds_reg_n_0_[2]\,
      R => '0'
    );
\time_ds_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_ds[3]_i_1_n_0\,
      D => time_ds(3),
      Q => \time_ds_reg_n_0_[3]\,
      R => '0'
    );
\time_s[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => \time_s_reg_n_0_[0]\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \state__0\(3),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \time_s[0]_i_1_n_0\
    );
\time_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00515500"
    )
        port map (
      I0 => time_10s0,
      I1 => \time_s_reg_n_0_[3]\,
      I2 => \time_s_reg_n_0_[2]\,
      I3 => \time_s_reg_n_0_[1]\,
      I4 => \time_s_reg_n_0_[0]\,
      O => time_s(1)
    );
\time_s[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => time_10s0,
      I1 => \time_s_reg_n_0_[0]\,
      I2 => \time_s_reg_n_0_[1]\,
      I3 => \time_s_reg_n_0_[2]\,
      O => time_s(2)
    );
\time_s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => \time_s[3]_i_3_n_0\,
      I1 => time_10s0,
      I2 => \time_ds[3]_i_3_n_0\,
      I3 => timer_running_reg_n_0,
      O => \time_s[3]_i_1_n_0\
    );
\time_s[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14554000"
    )
        port map (
      I0 => time_10s0,
      I1 => \time_s_reg_n_0_[2]\,
      I2 => \time_s_reg_n_0_[1]\,
      I3 => \time_s_reg_n_0_[0]\,
      I4 => \time_s_reg_n_0_[3]\,
      O => time_s(3)
    );
\time_s[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \time_ds_reg_n_0_[2]\,
      I1 => \time_ds_reg_n_0_[0]\,
      I2 => \time_ds_reg_n_0_[3]\,
      I3 => \time_ds_reg_n_0_[1]\,
      I4 => time_10s0,
      O => \time_s[3]_i_3_n_0\
    );
\time_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_s[3]_i_1_n_0\,
      D => \time_s[0]_i_1_n_0\,
      Q => \time_s_reg_n_0_[0]\,
      R => '0'
    );
\time_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_s[3]_i_1_n_0\,
      D => time_s(1),
      Q => \time_s_reg_n_0_[1]\,
      R => '0'
    );
\time_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_s[3]_i_1_n_0\,
      D => time_s(2),
      Q => \time_s_reg_n_0_[2]\,
      R => '0'
    );
\time_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \time_s[3]_i_1_n_0\,
      D => time_s(3),
      Q => \time_s_reg_n_0_[3]\,
      R => '0'
    );
timer_running_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00A2"
    )
        port map (
      I0 => timer_running_reg_n_0,
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \state__0\(3),
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      I5 => time_10s0,
      O => timer_running_i_1_n_0
    );
timer_running_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => timer_running_i_1_n_0,
      Q => timer_running_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Game_Logic_FSM_0_0 is
  port (
    Clk : in STD_LOGIC;
    ASCII_In : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Char_Valid : in STD_LOGIC;
    OLED_ASCII : out STD_LOGIC_VECTOR ( 6 downto 0 );
    OLED_WE : out STD_LOGIC;
    OLED_ClrScr : out STD_LOGIC;
    OLED_Busy : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Game_Logic_FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Game_Logic_FSM_0_0 : entity is "design_1_Game_Logic_FSM_0_0,Game_Logic_FSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Game_Logic_FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Game_Logic_FSM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Game_Logic_FSM_0_0 : entity is "Game_Logic_FSM,Vivado 2025.1";
end design_1_Game_Logic_FSM_0_0;

architecture STRUCTURE of design_1_Game_Logic_FSM_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of Clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_Game_Logic_FSM_0_0_Game_Logic_FSM
     port map (
      ASCII_In(6 downto 0) => ASCII_In(6 downto 0),
      Char_Valid => Char_Valid,
      Clk => Clk,
      OLED_ASCII(6 downto 0) => OLED_ASCII(6 downto 0),
      OLED_Busy => OLED_Busy,
      OLED_ClrScr => OLED_ClrScr,
      OLED_WE => OLED_WE
    );
end STRUCTURE;
