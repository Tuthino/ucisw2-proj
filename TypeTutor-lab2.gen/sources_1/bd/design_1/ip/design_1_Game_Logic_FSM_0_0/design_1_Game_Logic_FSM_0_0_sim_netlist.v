// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 23 10:45:01 2026
// Host        : Lab016-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_Game_Logic_FSM_0_0/design_1_Game_Logic_FSM_0_0_sim_netlist.v
// Design      : design_1_Game_Logic_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Game_Logic_FSM_0_0,Game_Logic_FSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Game_Logic_FSM,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_Game_Logic_FSM_0_0
   (Clk,
    ASCII_In,
    Char_Valid,
    OLED_ASCII,
    OLED_WE,
    OLED_ClrScr,
    OLED_Busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input Clk;
  input [6:0]ASCII_In;
  input Char_Valid;
  output [6:0]OLED_ASCII;
  output OLED_WE;
  output OLED_ClrScr;
  input OLED_Busy;

  wire [6:0]ASCII_In;
  wire Char_Valid;
  wire Clk;
  wire [6:0]OLED_ASCII;
  wire OLED_Busy;
  wire OLED_ClrScr;
  wire OLED_WE;

  design_1_Game_Logic_FSM_0_0_Game_Logic_FSM inst
       (.ASCII_In(ASCII_In),
        .Char_Valid(Char_Valid),
        .Clk(Clk),
        .OLED_ASCII(OLED_ASCII),
        .OLED_Busy(OLED_Busy),
        .OLED_ClrScr(OLED_ClrScr),
        .OLED_WE(OLED_WE));
endmodule

(* ORIG_REF_NAME = "Game_Logic_FSM" *) 
module design_1_Game_Logic_FSM_0_0_Game_Logic_FSM
   (OLED_ASCII,
    OLED_WE,
    OLED_ClrScr,
    Clk,
    ASCII_In,
    OLED_Busy,
    Char_Valid);
  output [6:0]OLED_ASCII;
  output OLED_WE;
  output OLED_ClrScr;
  input Clk;
  input [6:0]ASCII_In;
  input OLED_Busy;
  input Char_Valid;

  wire [6:0]ASCII_In;
  wire Char_Valid;
  wire Clk;
  wire [1:1]\DICTIONARY[0][0] ;
  wire [0:0]\DICTIONARY[0][1] ;
  wire [0:0]\DICTIONARY[0][3] ;
  wire [1:1]\DICTIONARY[0][4] ;
  wire [1:1]\DICTIONARY[0][5] ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[2] ;
  wire [6:0]OLED_ASCII;
  wire \OLED_ASCII[0]_i_1_n_0 ;
  wire \OLED_ASCII[0]_i_3_n_0 ;
  wire \OLED_ASCII[0]_i_4_n_0 ;
  wire \OLED_ASCII[0]_i_5_n_0 ;
  wire \OLED_ASCII[0]_i_6_n_0 ;
  wire \OLED_ASCII[0]_i_7_n_0 ;
  wire \OLED_ASCII[1]_i_1_n_0 ;
  wire \OLED_ASCII[1]_i_3_n_0 ;
  wire \OLED_ASCII[1]_i_4_n_0 ;
  wire \OLED_ASCII[1]_i_5_n_0 ;
  wire \OLED_ASCII[1]_i_6_n_0 ;
  wire \OLED_ASCII[2]_i_1_n_0 ;
  wire \OLED_ASCII[2]_i_3_n_0 ;
  wire \OLED_ASCII[2]_i_4_n_0 ;
  wire \OLED_ASCII[2]_i_5_n_0 ;
  wire \OLED_ASCII[2]_i_6_n_0 ;
  wire \OLED_ASCII[2]_i_7_n_0 ;
  wire \OLED_ASCII[3]_i_1_n_0 ;
  wire \OLED_ASCII[3]_i_3_n_0 ;
  wire \OLED_ASCII[3]_i_4_n_0 ;
  wire \OLED_ASCII[3]_i_5_n_0 ;
  wire \OLED_ASCII[4]_i_1_n_0 ;
  wire \OLED_ASCII[4]_i_2_n_0 ;
  wire \OLED_ASCII[4]_i_3_n_0 ;
  wire \OLED_ASCII[4]_i_4_n_0 ;
  wire \OLED_ASCII[4]_i_5_n_0 ;
  wire \OLED_ASCII[5]_i_1_n_0 ;
  wire \OLED_ASCII[6]_i_1_n_0 ;
  wire \OLED_ASCII[6]_i_2_n_0 ;
  wire \OLED_ASCII[6]_i_3_n_0 ;
  wire \OLED_ASCII[6]_i_4_n_0 ;
  wire \OLED_ASCII[6]_i_5_n_0 ;
  wire \OLED_ASCII[6]_i_6_n_0 ;
  wire \OLED_ASCII_reg[0]_i_2_n_0 ;
  wire \OLED_ASCII_reg[1]_i_2_n_0 ;
  wire \OLED_ASCII_reg[2]_i_2_n_0 ;
  wire \OLED_ASCII_reg[3]_i_2_n_0 ;
  wire OLED_Busy;
  wire OLED_ClrScr;
  wire OLED_ClrScr_i_1_n_0;
  wire OLED_WE;
  wire \current_word[2][0]_i_1_n_0 ;
  wire \current_word[2][2]_i_1_n_0 ;
  wire \current_word[2][4]_i_1_n_0 ;
  wire \current_word[3][2]_i_1_n_0 ;
  wire [1:1]\current_word_reg[0] ;
  wire [4:0]\current_word_reg[1] ;
  wire [4:0]\current_word_reg[2] ;
  wire [2:0]\current_word_reg[3] ;
  wire [1:0]\current_word_reg[4] ;
  wire [1:1]\current_word_reg[5] ;
  wire [3:0]err_ones;
  wire \err_ones[2]_i_1_n_0 ;
  wire \err_ones[3]_i_1_n_0 ;
  wire \err_ones_reg_n_0_[0] ;
  wire \err_ones_reg_n_0_[1] ;
  wire \err_ones_reg_n_0_[2] ;
  wire \err_ones_reg_n_0_[3] ;
  wire err_tens;
  wire \err_tens[3]_i_3_n_0 ;
  wire \err_tens[3]_i_4_n_0 ;
  wire [3:0]err_tens_reg;
  wire latched_char;
  wire \latched_char_reg_n_0_[0] ;
  wire \latched_char_reg_n_0_[1] ;
  wire \latched_char_reg_n_0_[2] ;
  wire \latched_char_reg_n_0_[3] ;
  wire \latched_char_reg_n_0_[4] ;
  wire \latched_char_reg_n_0_[5] ;
  wire \latched_char_reg_n_0_[6] ;
  wire [3:0]letter_idx;
  wire \letter_idx[3]_i_3_n_0 ;
  wire \letter_idx[3]_i_4_n_0 ;
  wire letter_idx_1;
  wire \letter_idx_reg_n_0_[0] ;
  wire \letter_idx_reg_n_0_[1] ;
  wire \letter_idx_reg_n_0_[2] ;
  wire \letter_idx_reg_n_0_[3] ;
  wire p_0_in;
  wire [3:1]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire \prescaler_cnt[0]_i_3_n_0 ;
  wire \prescaler_cnt[0]_i_4_n_0 ;
  wire \prescaler_cnt[0]_i_5_n_0 ;
  wire \prescaler_cnt[0]_i_6_n_0 ;
  wire \prescaler_cnt[0]_i_7_n_0 ;
  wire \prescaler_cnt[0]_i_8_n_0 ;
  wire \prescaler_cnt[0]_i_9_n_0 ;
  wire \prescaler_cnt[16]_i_2_n_0 ;
  wire \prescaler_cnt[16]_i_3_n_0 ;
  wire \prescaler_cnt[16]_i_4_n_0 ;
  wire \prescaler_cnt[16]_i_5_n_0 ;
  wire \prescaler_cnt[8]_i_2_n_0 ;
  wire \prescaler_cnt[8]_i_3_n_0 ;
  wire [19:0]prescaler_cnt_reg;
  wire \prescaler_cnt_reg[0]_i_2_n_0 ;
  wire \prescaler_cnt_reg[0]_i_2_n_1 ;
  wire \prescaler_cnt_reg[0]_i_2_n_10 ;
  wire \prescaler_cnt_reg[0]_i_2_n_11 ;
  wire \prescaler_cnt_reg[0]_i_2_n_12 ;
  wire \prescaler_cnt_reg[0]_i_2_n_13 ;
  wire \prescaler_cnt_reg[0]_i_2_n_14 ;
  wire \prescaler_cnt_reg[0]_i_2_n_15 ;
  wire \prescaler_cnt_reg[0]_i_2_n_2 ;
  wire \prescaler_cnt_reg[0]_i_2_n_3 ;
  wire \prescaler_cnt_reg[0]_i_2_n_4 ;
  wire \prescaler_cnt_reg[0]_i_2_n_5 ;
  wire \prescaler_cnt_reg[0]_i_2_n_6 ;
  wire \prescaler_cnt_reg[0]_i_2_n_7 ;
  wire \prescaler_cnt_reg[0]_i_2_n_8 ;
  wire \prescaler_cnt_reg[0]_i_2_n_9 ;
  wire \prescaler_cnt_reg[16]_i_1_n_12 ;
  wire \prescaler_cnt_reg[16]_i_1_n_13 ;
  wire \prescaler_cnt_reg[16]_i_1_n_14 ;
  wire \prescaler_cnt_reg[16]_i_1_n_15 ;
  wire \prescaler_cnt_reg[16]_i_1_n_5 ;
  wire \prescaler_cnt_reg[16]_i_1_n_6 ;
  wire \prescaler_cnt_reg[16]_i_1_n_7 ;
  wire \prescaler_cnt_reg[8]_i_1_n_0 ;
  wire \prescaler_cnt_reg[8]_i_1_n_1 ;
  wire \prescaler_cnt_reg[8]_i_1_n_10 ;
  wire \prescaler_cnt_reg[8]_i_1_n_11 ;
  wire \prescaler_cnt_reg[8]_i_1_n_12 ;
  wire \prescaler_cnt_reg[8]_i_1_n_13 ;
  wire \prescaler_cnt_reg[8]_i_1_n_14 ;
  wire \prescaler_cnt_reg[8]_i_1_n_15 ;
  wire \prescaler_cnt_reg[8]_i_1_n_2 ;
  wire \prescaler_cnt_reg[8]_i_1_n_3 ;
  wire \prescaler_cnt_reg[8]_i_1_n_4 ;
  wire \prescaler_cnt_reg[8]_i_1_n_5 ;
  wire \prescaler_cnt_reg[8]_i_1_n_6 ;
  wire \prescaler_cnt_reg[8]_i_1_n_7 ;
  wire \prescaler_cnt_reg[8]_i_1_n_8 ;
  wire \prescaler_cnt_reg[8]_i_1_n_9 ;
  wire \random_cnt[0]_i_1_n_0 ;
  wire \random_cnt[1]_i_1_n_0 ;
  wire \random_cnt[1]_i_2_n_0 ;
  wire \random_cnt_reg_n_0_[0] ;
  wire \random_cnt_reg_n_0_[1] ;
  wire res_idx;
  wire \res_idx[0]_i_1_n_0 ;
  wire [3:0]res_idx_reg;
  wire \result_str[3]_0 ;
  wire [3:0]\result_str_reg[11] ;
  wire [3:0]\result_str_reg[3] ;
  wire [3:0]\result_str_reg[4] ;
  wire [3:0]\result_str_reg[8] ;
  wire [3:0]\result_str_reg[9] ;
  wire [3:0]state__0;
  wire [3:0]state__1;
  wire time_10s;
  wire time_10s0;
  wire \time_10s[3]_i_3_n_0 ;
  wire \time_10s[3]_i_4_n_0 ;
  wire \time_10s[3]_i_5_n_0 ;
  wire [3:0]time_10s_reg;
  wire [3:1]time_ds;
  wire \time_ds[0]_i_1_n_0 ;
  wire \time_ds[3]_i_1_n_0 ;
  wire \time_ds[3]_i_3_n_0 ;
  wire \time_ds[3]_i_4_n_0 ;
  wire \time_ds[3]_i_5_n_0 ;
  wire \time_ds[3]_i_6_n_0 ;
  wire \time_ds[3]_i_7_n_0 ;
  wire \time_ds_reg_n_0_[0] ;
  wire \time_ds_reg_n_0_[1] ;
  wire \time_ds_reg_n_0_[2] ;
  wire \time_ds_reg_n_0_[3] ;
  wire [3:1]time_s;
  wire \time_s[0]_i_1_n_0 ;
  wire \time_s[3]_i_1_n_0 ;
  wire \time_s[3]_i_3_n_0 ;
  wire \time_s_reg_n_0_[0] ;
  wire \time_s_reg_n_0_[1] ;
  wire \time_s_reg_n_0_[2] ;
  wire \time_s_reg_n_0_[3] ;
  wire timer_running_i_1_n_0;
  wire timer_running_reg_n_0;
  wire [7:3]\NLW_prescaler_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_prescaler_cnt_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[3]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(state__0[3]),
        .I4(res_idx_reg[2]),
        .I5(res_idx_reg[3]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF000E)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(state__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\OLED_ASCII[6]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\OLED_ASCII[6]_i_6_n_0 ),
        .I3(\OLED_ASCII[1]_i_3_n_0 ),
        .I4(\OLED_ASCII[4]_i_3_n_0 ),
        .I5(\OLED_ASCII[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888808888888)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(res_idx_reg[2]),
        .I3(res_idx_reg[3]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\letter_idx[3]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(state__0[3]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[3]),
        .I2(Char_Valid),
        .I3(\FSM_sequential_state[3]_i_3_n_0 ),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF0000FF00)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(res_idx_reg[3]),
        .I1(res_idx_reg[2]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(\OLED_ASCII[6]_i_4_n_0 ),
        .I4(\FSM_sequential_state[3]_i_5_n_0 ),
        .I5(state__0[3]),
        .O(state__1[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBE)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(\OLED_ASCII[0]_i_3_n_0 ),
        .I2(ASCII_In[0]),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(\FSM_sequential_state[3]_i_8_n_0 ),
        .I5(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6666FDFDDBDBCFCC)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(OLED_Busy),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(Char_Valid),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\OLED_ASCII[0]_i_3_n_0 ),
        .I1(\OLED_ASCII[4]_i_3_n_0 ),
        .I2(\OLED_ASCII[1]_i_3_n_0 ),
        .I3(\OLED_ASCII[6]_i_6_n_0 ),
        .I4(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(ASCII_In[6]),
        .I1(\OLED_ASCII[6]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF9FFF9F9CFC9CFCF)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\OLED_ASCII[1]_i_6_n_0 ),
        .I1(ASCII_In[1]),
        .I2(\letter_idx_reg_n_0_[3] ),
        .I3(\OLED_ASCII[2]_i_6_n_0 ),
        .I4(\OLED_ASCII[2]_i_7_n_0 ),
        .I5(ASCII_In[2]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(ASCII_In[3]),
        .I1(\OLED_ASCII[3]_i_3_n_0 ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBA45FFFFFFFFBA45)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\OLED_ASCII[4]_i_4_n_0 ),
        .I2(\OLED_ASCII[4]_i_5_n_0 ),
        .I3(ASCII_In[4]),
        .I4(\OLED_ASCII[6]_i_6_n_0 ),
        .I5(ASCII_In[5]),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(Clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(Clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(Clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__1[2]),
        .Q(\FSM_sequential_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_clear:0100,clear_screen_ack:0011,clear_screen:0010,draw_result:1101,prepare_result:1100,check_win:1011,wait_oled_echo:1010,init:0001,wait_to_start:0000,echo_typed_char:1001,wait_oled_draw:0111,wait_for_key:1000,draw_target_word_ack:0110,wait_result_draw:1111,draw_result_ack:1110,draw_target_word:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(Clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__1[3]),
        .Q(state__0[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OLED_ASCII[0]_i_1 
       (.I0(\OLED_ASCII_reg[0]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(\OLED_ASCII[0]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[0] ),
        .O(\OLED_ASCII[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \OLED_ASCII[0]_i_3 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\OLED_ASCII[0]_i_6_n_0 ),
        .I2(\OLED_ASCII[0]_i_7_n_0 ),
        .O(\OLED_ASCII[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00BB3000)) 
    \OLED_ASCII[0]_i_4 
       (.I0(\result_str_reg[3] [0]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[4] [0]),
        .I3(res_idx_reg[2]),
        .I4(res_idx_reg[0]),
        .O(\OLED_ASCII[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \OLED_ASCII[0]_i_5 
       (.I0(\result_str_reg[11] [0]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[9] [0]),
        .I3(res_idx_reg[0]),
        .I4(\result_str_reg[8] [0]),
        .O(\OLED_ASCII[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h08300800)) 
    \OLED_ASCII[0]_i_6 
       (.I0(\current_word_reg[2] [4]),
        .I1(\letter_idx_reg_n_0_[2] ),
        .I2(\letter_idx_reg_n_0_[1] ),
        .I3(\letter_idx_reg_n_0_[0] ),
        .I4(\current_word_reg[2] [0]),
        .O(\OLED_ASCII[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF50F35FFF5FF35)) 
    \OLED_ASCII[0]_i_7 
       (.I0(\current_word_reg[4] [0]),
        .I1(\current_word_reg[1] [0]),
        .I2(\letter_idx_reg_n_0_[0] ),
        .I3(\letter_idx_reg_n_0_[1] ),
        .I4(\letter_idx_reg_n_0_[2] ),
        .I5(\current_word_reg[3] [0]),
        .O(\OLED_ASCII[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OLED_ASCII[1]_i_1 
       (.I0(\OLED_ASCII_reg[1]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(\OLED_ASCII[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[1] ),
        .O(\OLED_ASCII[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \OLED_ASCII[1]_i_3 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\OLED_ASCII[1]_i_6_n_0 ),
        .O(\OLED_ASCII[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCC8830CC)) 
    \OLED_ASCII[1]_i_4 
       (.I0(\result_str_reg[3] [1]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[4] [1]),
        .I3(res_idx_reg[2]),
        .I4(res_idx_reg[0]),
        .O(\OLED_ASCII[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \OLED_ASCII[1]_i_5 
       (.I0(\result_str_reg[11] [1]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[9] [1]),
        .I3(res_idx_reg[0]),
        .I4(\result_str_reg[8] [1]),
        .O(\OLED_ASCII[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF300F055F3FFFF55)) 
    \OLED_ASCII[1]_i_6 
       (.I0(\current_word_reg[0] ),
        .I1(\current_word_reg[5] ),
        .I2(\letter_idx_reg_n_0_[1] ),
        .I3(\letter_idx_reg_n_0_[2] ),
        .I4(\letter_idx_reg_n_0_[0] ),
        .I5(\current_word_reg[4] [1]),
        .O(\OLED_ASCII[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OLED_ASCII[2]_i_1 
       (.I0(\OLED_ASCII_reg[2]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(\OLED_ASCII[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[2] ),
        .O(\OLED_ASCII[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \OLED_ASCII[2]_i_3 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\OLED_ASCII[2]_i_6_n_0 ),
        .I2(\OLED_ASCII[2]_i_7_n_0 ),
        .O(\OLED_ASCII[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00BBFC00)) 
    \OLED_ASCII[2]_i_4 
       (.I0(\result_str_reg[3] [2]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[4] [2]),
        .I3(res_idx_reg[2]),
        .I4(res_idx_reg[0]),
        .O(\OLED_ASCII[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \OLED_ASCII[2]_i_5 
       (.I0(\result_str_reg[11] [2]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[9] [2]),
        .I3(res_idx_reg[0]),
        .I4(\result_str_reg[8] [2]),
        .O(\OLED_ASCII[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \OLED_ASCII[2]_i_6 
       (.I0(\letter_idx_reg_n_0_[0] ),
        .I1(\current_word_reg[3] [0]),
        .I2(\letter_idx_reg_n_0_[1] ),
        .I3(\current_word_reg[2] [2]),
        .I4(\current_word_reg[3] [2]),
        .I5(\letter_idx_reg_n_0_[2] ),
        .O(\OLED_ASCII[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \OLED_ASCII[2]_i_7 
       (.I0(\current_word_reg[2] [4]),
        .I1(\letter_idx_reg_n_0_[1] ),
        .I2(\letter_idx_reg_n_0_[2] ),
        .I3(\letter_idx_reg_n_0_[0] ),
        .I4(\current_word_reg[1] [0]),
        .O(\OLED_ASCII[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OLED_ASCII[3]_i_1 
       (.I0(\OLED_ASCII_reg[3]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(\OLED_ASCII[3]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[3] ),
        .O(\OLED_ASCII[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040054000400040)) 
    \OLED_ASCII[3]_i_3 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\current_word_reg[2] [4]),
        .I2(\letter_idx_reg_n_0_[0] ),
        .I3(\letter_idx_reg_n_0_[1] ),
        .I4(\letter_idx_reg_n_0_[2] ),
        .I5(\current_word_reg[4] [1]),
        .O(\OLED_ASCII[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCC8830CC)) 
    \OLED_ASCII[3]_i_4 
       (.I0(\result_str_reg[3] [3]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[4] [3]),
        .I3(res_idx_reg[2]),
        .I4(res_idx_reg[0]),
        .O(\OLED_ASCII[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \OLED_ASCII[3]_i_5 
       (.I0(\result_str_reg[11] [3]),
        .I1(res_idx_reg[1]),
        .I2(\result_str_reg[9] [3]),
        .I3(res_idx_reg[0]),
        .I4(\result_str_reg[8] [3]),
        .O(\OLED_ASCII[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAE00)) 
    \OLED_ASCII[4]_i_1 
       (.I0(\OLED_ASCII[4]_i_2_n_0 ),
        .I1(\OLED_ASCII[4]_i_3_n_0 ),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[4] ),
        .O(\OLED_ASCII[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hA82AA828)) 
    \OLED_ASCII[4]_i_2 
       (.I0(state__0[3]),
        .I1(res_idx_reg[3]),
        .I2(res_idx_reg[1]),
        .I3(res_idx_reg[0]),
        .I4(res_idx_reg[2]),
        .O(\OLED_ASCII[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \OLED_ASCII[4]_i_3 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\OLED_ASCII[4]_i_4_n_0 ),
        .I2(\OLED_ASCII[4]_i_5_n_0 ),
        .O(\OLED_ASCII[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h03000B0B03000808)) 
    \OLED_ASCII[4]_i_4 
       (.I0(\current_word_reg[4] [1]),
        .I1(\letter_idx_reg_n_0_[2] ),
        .I2(\letter_idx_reg_n_0_[1] ),
        .I3(\current_word_reg[1] [4]),
        .I4(\letter_idx_reg_n_0_[0] ),
        .I5(\current_word_reg[1] [0]),
        .O(\OLED_ASCII[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBABFFFFF)) 
    \OLED_ASCII[4]_i_5 
       (.I0(\letter_idx_reg_n_0_[2] ),
        .I1(\current_word_reg[4] [0]),
        .I2(\letter_idx_reg_n_0_[0] ),
        .I3(\current_word_reg[2] [4]),
        .I4(\letter_idx_reg_n_0_[1] ),
        .O(\OLED_ASCII[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OLED_ASCII[5]_i_1 
       (.I0(\OLED_ASCII[6]_i_5_n_0 ),
        .I1(state__0[3]),
        .I2(\OLED_ASCII[6]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[5] ),
        .O(\OLED_ASCII[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C80CC80CC80CC80)) 
    \OLED_ASCII[6]_i_1 
       (.I0(\OLED_ASCII[6]_i_3_n_0 ),
        .I1(\OLED_ASCII[6]_i_4_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(state__0[3]),
        .I4(res_idx_reg[2]),
        .I5(res_idx_reg[3]),
        .O(\OLED_ASCII[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \OLED_ASCII[6]_i_2 
       (.I0(\OLED_ASCII[6]_i_5_n_0 ),
        .I1(state__0[3]),
        .I2(\OLED_ASCII[6]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\latched_char_reg_n_0_[6] ),
        .O(\OLED_ASCII[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \OLED_ASCII[6]_i_3 
       (.I0(\OLED_ASCII[6]_i_6_n_0 ),
        .I1(\OLED_ASCII[1]_i_3_n_0 ),
        .I2(\OLED_ASCII[4]_i_3_n_0 ),
        .I3(\OLED_ASCII[0]_i_3_n_0 ),
        .O(\OLED_ASCII[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OLED_ASCII[6]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\OLED_ASCII[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFBD)) 
    \OLED_ASCII[6]_i_5 
       (.I0(res_idx_reg[0]),
        .I1(res_idx_reg[1]),
        .I2(res_idx_reg[2]),
        .I3(res_idx_reg[3]),
        .O(\OLED_ASCII[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1151115511511111)) 
    \OLED_ASCII[6]_i_6 
       (.I0(\letter_idx_reg_n_0_[3] ),
        .I1(\letter_idx_reg_n_0_[2] ),
        .I2(\current_word_reg[2] [4]),
        .I3(\letter_idx_reg_n_0_[1] ),
        .I4(\letter_idx_reg_n_0_[0] ),
        .I5(\current_word_reg[1] [0]),
        .O(\OLED_ASCII[6]_i_6_n_0 ));
  FDRE \OLED_ASCII_reg[0] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[0]_i_1_n_0 ),
        .Q(OLED_ASCII[0]),
        .R(1'b0));
  MUXF7 \OLED_ASCII_reg[0]_i_2 
       (.I0(\OLED_ASCII[0]_i_4_n_0 ),
        .I1(\OLED_ASCII[0]_i_5_n_0 ),
        .O(\OLED_ASCII_reg[0]_i_2_n_0 ),
        .S(res_idx_reg[3]));
  FDRE \OLED_ASCII_reg[1] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[1]_i_1_n_0 ),
        .Q(OLED_ASCII[1]),
        .R(1'b0));
  MUXF7 \OLED_ASCII_reg[1]_i_2 
       (.I0(\OLED_ASCII[1]_i_4_n_0 ),
        .I1(\OLED_ASCII[1]_i_5_n_0 ),
        .O(\OLED_ASCII_reg[1]_i_2_n_0 ),
        .S(res_idx_reg[3]));
  FDRE \OLED_ASCII_reg[2] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[2]_i_1_n_0 ),
        .Q(OLED_ASCII[2]),
        .R(1'b0));
  MUXF7 \OLED_ASCII_reg[2]_i_2 
       (.I0(\OLED_ASCII[2]_i_4_n_0 ),
        .I1(\OLED_ASCII[2]_i_5_n_0 ),
        .O(\OLED_ASCII_reg[2]_i_2_n_0 ),
        .S(res_idx_reg[3]));
  FDRE \OLED_ASCII_reg[3] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[3]_i_1_n_0 ),
        .Q(OLED_ASCII[3]),
        .R(1'b0));
  MUXF7 \OLED_ASCII_reg[3]_i_2 
       (.I0(\OLED_ASCII[3]_i_4_n_0 ),
        .I1(\OLED_ASCII[3]_i_5_n_0 ),
        .O(\OLED_ASCII_reg[3]_i_2_n_0 ),
        .S(res_idx_reg[3]));
  FDRE \OLED_ASCII_reg[4] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[4]_i_1_n_0 ),
        .Q(OLED_ASCII[4]),
        .R(1'b0));
  FDRE \OLED_ASCII_reg[5] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[5]_i_1_n_0 ),
        .Q(OLED_ASCII[5]),
        .R(1'b0));
  FDRE \OLED_ASCII_reg[6] 
       (.C(Clk),
        .CE(\OLED_ASCII[6]_i_1_n_0 ),
        .D(\OLED_ASCII[6]_i_2_n_0 ),
        .Q(OLED_ASCII[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    OLED_ClrScr_i_1
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(OLED_ClrScr_i_1_n_0));
  FDRE OLED_ClrScr_reg
       (.C(Clk),
        .CE(1'b1),
        .D(OLED_ClrScr_i_1_n_0),
        .Q(OLED_ClrScr),
        .R(1'b0));
  FDRE OLED_WE_reg
       (.C(Clk),
        .CE(1'b1),
        .D(\OLED_ASCII[6]_i_1_n_0 ),
        .Q(OLED_WE),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_word[0][1]_i_1 
       (.I0(\random_cnt_reg_n_0_[0] ),
        .I1(\random_cnt_reg_n_0_[1] ),
        .O(\DICTIONARY[0][0] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_word[1][0]_i_1 
       (.I0(\random_cnt_reg_n_0_[1] ),
        .I1(\random_cnt_reg_n_0_[0] ),
        .O(\DICTIONARY[0][1] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \current_word[1][4]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .O(time_10s0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_word[2][0]_i_1 
       (.I0(\random_cnt_reg_n_0_[0] ),
        .I1(\random_cnt_reg_n_0_[1] ),
        .O(\current_word[2][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_word[2][2]_i_1 
       (.I0(\random_cnt_reg_n_0_[1] ),
        .O(\current_word[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \current_word[2][4]_i_1 
       (.I0(\random_cnt_reg_n_0_[0] ),
        .I1(\random_cnt_reg_n_0_[1] ),
        .O(\current_word[2][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \current_word[3][0]_i_1 
       (.I0(\random_cnt_reg_n_0_[1] ),
        .I1(\random_cnt_reg_n_0_[0] ),
        .O(\DICTIONARY[0][3] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_word[3][2]_i_1 
       (.I0(\random_cnt_reg_n_0_[0] ),
        .I1(\random_cnt_reg_n_0_[1] ),
        .O(\current_word[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_word[4][1]_i_1 
       (.I0(\random_cnt_reg_n_0_[1] ),
        .I1(\random_cnt_reg_n_0_[0] ),
        .O(\DICTIONARY[0][4] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_word[5][1]_i_1 
       (.I0(\random_cnt_reg_n_0_[1] ),
        .I1(\random_cnt_reg_n_0_[0] ),
        .O(\DICTIONARY[0][5] ));
  FDRE #(
    .INIT(1'b1)) 
    \current_word_reg[0][1] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\DICTIONARY[0][0] ),
        .Q(\current_word_reg[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_word_reg[1][0] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\DICTIONARY[0][1] ),
        .Q(\current_word_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_word_reg[1][4] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\random_cnt_reg_n_0_[0] ),
        .Q(\current_word_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_word_reg[2][0] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\current_word[2][0]_i_1_n_0 ),
        .Q(\current_word_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_word_reg[2][2] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\current_word[2][2]_i_1_n_0 ),
        .Q(\current_word_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_word_reg[2][4] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\current_word[2][4]_i_1_n_0 ),
        .Q(\current_word_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_word_reg[3][0] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\DICTIONARY[0][3] ),
        .Q(\current_word_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_word_reg[3][2] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\current_word[3][2]_i_1_n_0 ),
        .Q(\current_word_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_word_reg[4][0] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\random_cnt_reg_n_0_[1] ),
        .Q(\current_word_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_word_reg[4][1] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\DICTIONARY[0][4] ),
        .Q(\current_word_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_word_reg[5][1] 
       (.C(Clk),
        .CE(time_10s0),
        .D(\DICTIONARY[0][5] ),
        .Q(\current_word_reg[5] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \err_ones[0]_i_1 
       (.I0(state__0[3]),
        .I1(\err_ones_reg_n_0_[0] ),
        .O(err_ones[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00D0F000)) 
    \err_ones[1]_i_1 
       (.I0(\err_ones_reg_n_0_[3] ),
        .I1(\err_ones_reg_n_0_[2] ),
        .I2(state__0[3]),
        .I3(\err_ones_reg_n_0_[1] ),
        .I4(\err_ones_reg_n_0_[0] ),
        .O(err_ones[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \err_ones[2]_i_1 
       (.I0(\err_ones_reg_n_0_[0] ),
        .I1(\err_ones_reg_n_0_[1] ),
        .I2(\err_ones_reg_n_0_[2] ),
        .I3(state__0[3]),
        .O(\err_ones[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000F80)) 
    \err_ones[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(Char_Valid),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state_reg_n_0_[2] ),
        .O(\err_ones[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h28AA8000)) 
    \err_ones[3]_i_2 
       (.I0(state__0[3]),
        .I1(\err_ones_reg_n_0_[2] ),
        .I2(\err_ones_reg_n_0_[1] ),
        .I3(\err_ones_reg_n_0_[0] ),
        .I4(\err_ones_reg_n_0_[3] ),
        .O(err_ones[3]));
  FDRE #(
    .INIT(1'b0)) 
    \err_ones_reg[0] 
       (.C(Clk),
        .CE(\err_ones[3]_i_1_n_0 ),
        .D(err_ones[0]),
        .Q(\err_ones_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \err_ones_reg[1] 
       (.C(Clk),
        .CE(\err_ones[3]_i_1_n_0 ),
        .D(err_ones[1]),
        .Q(\err_ones_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \err_ones_reg[2] 
       (.C(Clk),
        .CE(\err_ones[3]_i_1_n_0 ),
        .D(\err_ones[2]_i_1_n_0 ),
        .Q(\err_ones_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \err_ones_reg[3] 
       (.C(Clk),
        .CE(\err_ones[3]_i_1_n_0 ),
        .D(err_ones[3]),
        .Q(\err_ones_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \err_tens[0]_i_1 
       (.I0(err_tens_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \err_tens[1]_i_1 
       (.I0(err_tens_reg[0]),
        .I1(err_tens_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \err_tens[2]_i_1 
       (.I0(err_tens_reg[2]),
        .I1(err_tens_reg[1]),
        .I2(err_tens_reg[0]),
        .O(p_0_in__2[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \err_tens[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\err_tens[3]_i_3_n_0 ),
        .O(err_tens));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \err_tens[3]_i_2 
       (.I0(err_tens_reg[3]),
        .I1(err_tens_reg[2]),
        .I2(err_tens_reg[0]),
        .I3(err_tens_reg[1]),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'hFFFD5555FFFFFFFF)) 
    \err_tens[3]_i_3 
       (.I0(latched_char),
        .I1(err_tens_reg[0]),
        .I2(err_tens_reg[1]),
        .I3(err_tens_reg[2]),
        .I4(err_tens_reg[3]),
        .I5(\err_tens[3]_i_4_n_0 ),
        .O(\err_tens[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \err_tens[3]_i_4 
       (.I0(\err_ones_reg_n_0_[3] ),
        .I1(\err_ones_reg_n_0_[0] ),
        .I2(\err_ones_reg_n_0_[2] ),
        .I3(\err_ones_reg_n_0_[1] ),
        .O(\err_tens[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \err_tens_reg[0] 
       (.C(Clk),
        .CE(err_tens),
        .D(p_0_in__2[0]),
        .Q(err_tens_reg[0]),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \err_tens_reg[1] 
       (.C(Clk),
        .CE(err_tens),
        .D(p_0_in__2[1]),
        .Q(err_tens_reg[1]),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \err_tens_reg[2] 
       (.C(Clk),
        .CE(err_tens),
        .D(p_0_in__2[2]),
        .Q(err_tens_reg[2]),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \err_tens_reg[3] 
       (.C(Clk),
        .CE(err_tens),
        .D(p_0_in__2[3]),
        .Q(err_tens_reg[3]),
        .R(time_10s0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \latched_char[6]_i_1 
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(Char_Valid),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(latched_char));
  FDRE \latched_char_reg[0] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[0]),
        .Q(\latched_char_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \latched_char_reg[1] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[1]),
        .Q(\latched_char_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \latched_char_reg[2] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[2]),
        .Q(\latched_char_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \latched_char_reg[3] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[3]),
        .Q(\latched_char_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \latched_char_reg[4] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[4]),
        .Q(\latched_char_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \latched_char_reg[5] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[5]),
        .Q(\latched_char_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \latched_char_reg[6] 
       (.C(Clk),
        .CE(latched_char),
        .D(ASCII_In[6]),
        .Q(\latched_char_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \letter_idx[0]_i_1 
       (.I0(state__0[1]),
        .I1(\letter_idx_reg_n_0_[0] ),
        .O(letter_idx[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \letter_idx[1]_i_1 
       (.I0(state__0[1]),
        .I1(\letter_idx_reg_n_0_[0] ),
        .I2(\letter_idx_reg_n_0_[1] ),
        .O(letter_idx[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \letter_idx[2]_i_1 
       (.I0(state__0[1]),
        .I1(\letter_idx_reg_n_0_[1] ),
        .I2(\letter_idx_reg_n_0_[0] ),
        .I3(\letter_idx_reg_n_0_[2] ),
        .O(letter_idx[2]));
  LUT6 #(
    .INIT(64'h222232222E223E22)) 
    \letter_idx[3]_i_1 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state__0[3]),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(OLED_Busy),
        .I5(\letter_idx[3]_i_3_n_0 ),
        .O(letter_idx_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \letter_idx[3]_i_2 
       (.I0(state__0[1]),
        .I1(\letter_idx_reg_n_0_[0] ),
        .I2(\letter_idx_reg_n_0_[1] ),
        .I3(\letter_idx_reg_n_0_[2] ),
        .I4(\letter_idx_reg_n_0_[3] ),
        .O(letter_idx[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAEE)) 
    \letter_idx[3]_i_3 
       (.I0(\letter_idx[3]_i_4_n_0 ),
        .I1(\letter_idx_reg_n_0_[2] ),
        .I2(\letter_idx_reg_n_0_[0] ),
        .I3(\current_word_reg[2] [4]),
        .I4(\current_word_reg[5] ),
        .I5(\letter_idx_reg_n_0_[3] ),
        .O(\letter_idx[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F1F0F000000000)) 
    \letter_idx[3]_i_4 
       (.I0(\current_word_reg[4] [0]),
        .I1(\current_word_reg[1] [0]),
        .I2(\letter_idx_reg_n_0_[2] ),
        .I3(\current_word_reg[4] [1]),
        .I4(\letter_idx_reg_n_0_[0] ),
        .I5(\letter_idx_reg_n_0_[1] ),
        .O(\letter_idx[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \letter_idx_reg[0] 
       (.C(Clk),
        .CE(letter_idx_1),
        .D(letter_idx[0]),
        .Q(\letter_idx_reg_n_0_[0] ),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \letter_idx_reg[1] 
       (.C(Clk),
        .CE(letter_idx_1),
        .D(letter_idx[1]),
        .Q(\letter_idx_reg_n_0_[1] ),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \letter_idx_reg[2] 
       (.C(Clk),
        .CE(letter_idx_1),
        .D(letter_idx[2]),
        .Q(\letter_idx_reg_n_0_[2] ),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \letter_idx_reg[3] 
       (.C(Clk),
        .CE(letter_idx_1),
        .D(letter_idx[3]),
        .Q(\letter_idx_reg_n_0_[3] ),
        .R(time_10s0));
  LUT1 #(
    .INIT(2'h1)) 
    \prescaler_cnt[0]_i_1 
       (.I0(timer_running_reg_n_0),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[0]_i_3 
       (.I0(prescaler_cnt_reg[0]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[0]_i_4 
       (.I0(prescaler_cnt_reg[5]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[0]_i_5 
       (.I0(prescaler_cnt_reg[4]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[0]_i_6 
       (.I0(prescaler_cnt_reg[3]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[0]_i_7 
       (.I0(prescaler_cnt_reg[2]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[0]_i_8 
       (.I0(prescaler_cnt_reg[1]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \prescaler_cnt[0]_i_9 
       (.I0(prescaler_cnt_reg[0]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[16]_i_2 
       (.I0(prescaler_cnt_reg[19]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[16]_i_3 
       (.I0(prescaler_cnt_reg[18]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[16]_i_4 
       (.I0(prescaler_cnt_reg[17]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[16]_i_5 
       (.I0(prescaler_cnt_reg[16]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[8]_i_2 
       (.I0(prescaler_cnt_reg[14]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prescaler_cnt[8]_i_3 
       (.I0(prescaler_cnt_reg[9]),
        .I1(\time_ds[3]_i_3_n_0 ),
        .O(\prescaler_cnt[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_15 ),
        .Q(prescaler_cnt_reg[0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \prescaler_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\prescaler_cnt_reg[0]_i_2_n_0 ,\prescaler_cnt_reg[0]_i_2_n_1 ,\prescaler_cnt_reg[0]_i_2_n_2 ,\prescaler_cnt_reg[0]_i_2_n_3 ,\prescaler_cnt_reg[0]_i_2_n_4 ,\prescaler_cnt_reg[0]_i_2_n_5 ,\prescaler_cnt_reg[0]_i_2_n_6 ,\prescaler_cnt_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\prescaler_cnt[0]_i_3_n_0 }),
        .O({\prescaler_cnt_reg[0]_i_2_n_8 ,\prescaler_cnt_reg[0]_i_2_n_9 ,\prescaler_cnt_reg[0]_i_2_n_10 ,\prescaler_cnt_reg[0]_i_2_n_11 ,\prescaler_cnt_reg[0]_i_2_n_12 ,\prescaler_cnt_reg[0]_i_2_n_13 ,\prescaler_cnt_reg[0]_i_2_n_14 ,\prescaler_cnt_reg[0]_i_2_n_15 }),
        .S({prescaler_cnt_reg[7:6],\prescaler_cnt[0]_i_4_n_0 ,\prescaler_cnt[0]_i_5_n_0 ,\prescaler_cnt[0]_i_6_n_0 ,\prescaler_cnt[0]_i_7_n_0 ,\prescaler_cnt[0]_i_8_n_0 ,\prescaler_cnt[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_13 ),
        .Q(prescaler_cnt_reg[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_12 ),
        .Q(prescaler_cnt_reg[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_11 ),
        .Q(prescaler_cnt_reg[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_10 ),
        .Q(prescaler_cnt_reg[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_9 ),
        .Q(prescaler_cnt_reg[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_8 ),
        .Q(prescaler_cnt_reg[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[16]_i_1_n_15 ),
        .Q(prescaler_cnt_reg[16]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \prescaler_cnt_reg[16]_i_1 
       (.CI(\prescaler_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_prescaler_cnt_reg[16]_i_1_CO_UNCONNECTED [7:3],\prescaler_cnt_reg[16]_i_1_n_5 ,\prescaler_cnt_reg[16]_i_1_n_6 ,\prescaler_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_prescaler_cnt_reg[16]_i_1_O_UNCONNECTED [7:4],\prescaler_cnt_reg[16]_i_1_n_12 ,\prescaler_cnt_reg[16]_i_1_n_13 ,\prescaler_cnt_reg[16]_i_1_n_14 ,\prescaler_cnt_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\prescaler_cnt[16]_i_2_n_0 ,\prescaler_cnt[16]_i_3_n_0 ,\prescaler_cnt[16]_i_4_n_0 ,\prescaler_cnt[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[16]_i_1_n_14 ),
        .Q(prescaler_cnt_reg[17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[16]_i_1_n_13 ),
        .Q(prescaler_cnt_reg[18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[19] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[16]_i_1_n_12 ),
        .Q(prescaler_cnt_reg[19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_14 ),
        .Q(prescaler_cnt_reg[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_13 ),
        .Q(prescaler_cnt_reg[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_12 ),
        .Q(prescaler_cnt_reg[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_11 ),
        .Q(prescaler_cnt_reg[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_10 ),
        .Q(prescaler_cnt_reg[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_9 ),
        .Q(prescaler_cnt_reg[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[0]_i_2_n_8 ),
        .Q(prescaler_cnt_reg[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_15 ),
        .Q(prescaler_cnt_reg[8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \prescaler_cnt_reg[8]_i_1 
       (.CI(\prescaler_cnt_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\prescaler_cnt_reg[8]_i_1_n_0 ,\prescaler_cnt_reg[8]_i_1_n_1 ,\prescaler_cnt_reg[8]_i_1_n_2 ,\prescaler_cnt_reg[8]_i_1_n_3 ,\prescaler_cnt_reg[8]_i_1_n_4 ,\prescaler_cnt_reg[8]_i_1_n_5 ,\prescaler_cnt_reg[8]_i_1_n_6 ,\prescaler_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\prescaler_cnt_reg[8]_i_1_n_8 ,\prescaler_cnt_reg[8]_i_1_n_9 ,\prescaler_cnt_reg[8]_i_1_n_10 ,\prescaler_cnt_reg[8]_i_1_n_11 ,\prescaler_cnt_reg[8]_i_1_n_12 ,\prescaler_cnt_reg[8]_i_1_n_13 ,\prescaler_cnt_reg[8]_i_1_n_14 ,\prescaler_cnt_reg[8]_i_1_n_15 }),
        .S({prescaler_cnt_reg[15],\prescaler_cnt[8]_i_2_n_0 ,prescaler_cnt_reg[13:10],\prescaler_cnt[8]_i_3_n_0 ,prescaler_cnt_reg[8]}));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_cnt_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(\prescaler_cnt_reg[8]_i_1_n_14 ),
        .Q(prescaler_cnt_reg[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \random_cnt[0]_i_1 
       (.I0(\random_cnt_reg_n_0_[0] ),
        .O(\random_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \random_cnt[1]_i_1 
       (.I0(\time_ds[3]_i_3_n_0 ),
        .I1(timer_running_reg_n_0),
        .O(\random_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \random_cnt[1]_i_2 
       (.I0(\random_cnt_reg_n_0_[1] ),
        .I1(\random_cnt_reg_n_0_[0] ),
        .O(\random_cnt[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \random_cnt_reg[0] 
       (.C(Clk),
        .CE(\random_cnt[1]_i_1_n_0 ),
        .D(\random_cnt[0]_i_1_n_0 ),
        .Q(\random_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \random_cnt_reg[1] 
       (.C(Clk),
        .CE(\random_cnt[1]_i_1_n_0 ),
        .D(\random_cnt[1]_i_2_n_0 ),
        .Q(\random_cnt_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \res_idx[0]_i_1 
       (.I0(res_idx_reg[0]),
        .O(\res_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \res_idx[1]_i_1 
       (.I0(res_idx_reg[1]),
        .I1(res_idx_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \res_idx[2]_i_1 
       (.I0(res_idx_reg[2]),
        .I1(res_idx_reg[0]),
        .I2(res_idx_reg[1]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \res_idx[3]_i_1 
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(OLED_Busy),
        .O(res_idx));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \res_idx[3]_i_2 
       (.I0(res_idx_reg[3]),
        .I1(res_idx_reg[2]),
        .I2(res_idx_reg[1]),
        .I3(res_idx_reg[0]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \res_idx_reg[0] 
       (.C(Clk),
        .CE(res_idx),
        .D(\res_idx[0]_i_1_n_0 ),
        .Q(res_idx_reg[0]),
        .R(\result_str[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_idx_reg[1] 
       (.C(Clk),
        .CE(res_idx),
        .D(p_0_in__0[1]),
        .Q(res_idx_reg[1]),
        .R(\result_str[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_idx_reg[2] 
       (.C(Clk),
        .CE(res_idx),
        .D(p_0_in__0[2]),
        .Q(res_idx_reg[2]),
        .R(\result_str[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_idx_reg[3] 
       (.C(Clk),
        .CE(res_idx),
        .D(p_0_in__0[3]),
        .Q(res_idx_reg[3]),
        .R(\result_str[3]_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \result_str[3][3]_i_1 
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(\result_str[3]_0 ));
  FDRE \result_str_reg[11][0] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_ds_reg_n_0_[0] ),
        .Q(\result_str_reg[11] [0]),
        .R(1'b0));
  FDRE \result_str_reg[11][1] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_ds_reg_n_0_[1] ),
        .Q(\result_str_reg[11] [1]),
        .R(1'b0));
  FDRE \result_str_reg[11][2] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_ds_reg_n_0_[2] ),
        .Q(\result_str_reg[11] [2]),
        .R(1'b0));
  FDRE \result_str_reg[11][3] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_ds_reg_n_0_[3] ),
        .Q(\result_str_reg[11] [3]),
        .R(1'b0));
  FDRE \result_str_reg[3][0] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(err_tens_reg[0]),
        .Q(\result_str_reg[3] [0]),
        .R(1'b0));
  FDRE \result_str_reg[3][1] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(err_tens_reg[1]),
        .Q(\result_str_reg[3] [1]),
        .R(1'b0));
  FDRE \result_str_reg[3][2] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(err_tens_reg[2]),
        .Q(\result_str_reg[3] [2]),
        .R(1'b0));
  FDRE \result_str_reg[3][3] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(err_tens_reg[3]),
        .Q(\result_str_reg[3] [3]),
        .R(1'b0));
  FDRE \result_str_reg[4][0] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\err_ones_reg_n_0_[0] ),
        .Q(\result_str_reg[4] [0]),
        .R(1'b0));
  FDRE \result_str_reg[4][1] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\err_ones_reg_n_0_[1] ),
        .Q(\result_str_reg[4] [1]),
        .R(1'b0));
  FDRE \result_str_reg[4][2] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\err_ones_reg_n_0_[2] ),
        .Q(\result_str_reg[4] [2]),
        .R(1'b0));
  FDRE \result_str_reg[4][3] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\err_ones_reg_n_0_[3] ),
        .Q(\result_str_reg[4] [3]),
        .R(1'b0));
  FDRE \result_str_reg[8][0] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(time_10s_reg[0]),
        .Q(\result_str_reg[8] [0]),
        .R(1'b0));
  FDRE \result_str_reg[8][1] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(time_10s_reg[1]),
        .Q(\result_str_reg[8] [1]),
        .R(1'b0));
  FDRE \result_str_reg[8][2] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(time_10s_reg[2]),
        .Q(\result_str_reg[8] [2]),
        .R(1'b0));
  FDRE \result_str_reg[8][3] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(time_10s_reg[3]),
        .Q(\result_str_reg[8] [3]),
        .R(1'b0));
  FDRE \result_str_reg[9][0] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_s_reg_n_0_[0] ),
        .Q(\result_str_reg[9] [0]),
        .R(1'b0));
  FDRE \result_str_reg[9][1] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_s_reg_n_0_[1] ),
        .Q(\result_str_reg[9] [1]),
        .R(1'b0));
  FDRE \result_str_reg[9][2] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_s_reg_n_0_[2] ),
        .Q(\result_str_reg[9] [2]),
        .R(1'b0));
  FDRE \result_str_reg[9][3] 
       (.C(Clk),
        .CE(\result_str[3]_0 ),
        .D(\time_s_reg_n_0_[3] ),
        .Q(\result_str_reg[9] [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \time_10s[0]_i_1 
       (.I0(time_10s_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \time_10s[1]_i_1 
       (.I0(time_10s_reg[0]),
        .I1(time_10s_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \time_10s[2]_i_1 
       (.I0(time_10s_reg[2]),
        .I1(time_10s_reg[1]),
        .I2(time_10s_reg[0]),
        .O(p_0_in__1[2]));
  LUT3 #(
    .INIT(8'h08)) 
    \time_10s[3]_i_1 
       (.I0(timer_running_reg_n_0),
        .I1(\time_ds[3]_i_3_n_0 ),
        .I2(\time_10s[3]_i_3_n_0 ),
        .O(time_10s));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \time_10s[3]_i_2 
       (.I0(time_10s_reg[3]),
        .I1(time_10s_reg[0]),
        .I2(time_10s_reg[1]),
        .I3(time_10s_reg[2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hFE00FFFFFFFFFFFF)) 
    \time_10s[3]_i_3 
       (.I0(time_10s_reg[1]),
        .I1(time_10s_reg[0]),
        .I2(time_10s_reg[2]),
        .I3(time_10s_reg[3]),
        .I4(\time_10s[3]_i_4_n_0 ),
        .I5(\time_10s[3]_i_5_n_0 ),
        .O(\time_10s[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \time_10s[3]_i_4 
       (.I0(\time_s_reg_n_0_[1] ),
        .I1(\time_s_reg_n_0_[3] ),
        .I2(\time_s_reg_n_0_[0] ),
        .I3(\time_s_reg_n_0_[2] ),
        .O(\time_10s[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \time_10s[3]_i_5 
       (.I0(\time_ds_reg_n_0_[1] ),
        .I1(\time_ds_reg_n_0_[3] ),
        .I2(\time_ds_reg_n_0_[0] ),
        .I3(\time_ds_reg_n_0_[2] ),
        .O(\time_10s[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_10s_reg[0] 
       (.C(Clk),
        .CE(time_10s),
        .D(p_0_in__1[0]),
        .Q(time_10s_reg[0]),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \time_10s_reg[1] 
       (.C(Clk),
        .CE(time_10s),
        .D(p_0_in__1[1]),
        .Q(time_10s_reg[1]),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \time_10s_reg[2] 
       (.C(Clk),
        .CE(time_10s),
        .D(p_0_in__1[2]),
        .Q(time_10s_reg[2]),
        .R(time_10s0));
  FDRE #(
    .INIT(1'b0)) 
    \time_10s_reg[3] 
       (.C(Clk),
        .CE(time_10s),
        .D(p_0_in__1[3]),
        .Q(time_10s_reg[3]),
        .R(time_10s0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555455)) 
    \time_ds[0]_i_1 
       (.I0(\time_ds_reg_n_0_[0] ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\time_ds[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00515500)) 
    \time_ds[1]_i_1 
       (.I0(time_10s0),
        .I1(\time_ds_reg_n_0_[3] ),
        .I2(\time_ds_reg_n_0_[2] ),
        .I3(\time_ds_reg_n_0_[1] ),
        .I4(\time_ds_reg_n_0_[0] ),
        .O(time_ds[1]));
  LUT4 #(
    .INIT(16'h1540)) 
    \time_ds[2]_i_1 
       (.I0(time_10s0),
        .I1(\time_ds_reg_n_0_[0] ),
        .I2(\time_ds_reg_n_0_[1] ),
        .I3(\time_ds_reg_n_0_[2] ),
        .O(time_ds[2]));
  LUT6 #(
    .INIT(64'hFFFF000400040004)) 
    \time_ds[3]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\time_ds[3]_i_3_n_0 ),
        .I5(timer_running_reg_n_0),
        .O(\time_ds[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h14554000)) 
    \time_ds[3]_i_2 
       (.I0(time_10s0),
        .I1(\time_ds_reg_n_0_[2] ),
        .I2(\time_ds_reg_n_0_[1] ),
        .I3(\time_ds_reg_n_0_[0] ),
        .I4(\time_ds_reg_n_0_[3] ),
        .O(time_ds[3]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \time_ds[3]_i_3 
       (.I0(\time_ds[3]_i_4_n_0 ),
        .I1(prescaler_cnt_reg[19]),
        .I2(prescaler_cnt_reg[18]),
        .I3(prescaler_cnt_reg[11]),
        .I4(prescaler_cnt_reg[10]),
        .I5(\time_ds[3]_i_5_n_0 ),
        .O(\time_ds[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \time_ds[3]_i_4 
       (.I0(prescaler_cnt_reg[1]),
        .I1(prescaler_cnt_reg[13]),
        .I2(prescaler_cnt_reg[16]),
        .I3(prescaler_cnt_reg[8]),
        .O(\time_ds[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \time_ds[3]_i_5 
       (.I0(prescaler_cnt_reg[14]),
        .I1(prescaler_cnt_reg[17]),
        .I2(prescaler_cnt_reg[0]),
        .I3(prescaler_cnt_reg[4]),
        .I4(\time_ds[3]_i_6_n_0 ),
        .I5(\time_ds[3]_i_7_n_0 ),
        .O(\time_ds[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \time_ds[3]_i_6 
       (.I0(prescaler_cnt_reg[15]),
        .I1(prescaler_cnt_reg[7]),
        .I2(prescaler_cnt_reg[2]),
        .I3(prescaler_cnt_reg[12]),
        .O(\time_ds[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \time_ds[3]_i_7 
       (.I0(prescaler_cnt_reg[9]),
        .I1(prescaler_cnt_reg[5]),
        .I2(prescaler_cnt_reg[3]),
        .I3(prescaler_cnt_reg[6]),
        .O(\time_ds[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_ds_reg[0] 
       (.C(Clk),
        .CE(\time_ds[3]_i_1_n_0 ),
        .D(\time_ds[0]_i_1_n_0 ),
        .Q(\time_ds_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_ds_reg[1] 
       (.C(Clk),
        .CE(\time_ds[3]_i_1_n_0 ),
        .D(time_ds[1]),
        .Q(\time_ds_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_ds_reg[2] 
       (.C(Clk),
        .CE(\time_ds[3]_i_1_n_0 ),
        .D(time_ds[2]),
        .Q(\time_ds_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_ds_reg[3] 
       (.C(Clk),
        .CE(\time_ds[3]_i_1_n_0 ),
        .D(time_ds[3]),
        .Q(\time_ds_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55555455)) 
    \time_s[0]_i_1 
       (.I0(\time_s_reg_n_0_[0] ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\time_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00515500)) 
    \time_s[1]_i_1 
       (.I0(time_10s0),
        .I1(\time_s_reg_n_0_[3] ),
        .I2(\time_s_reg_n_0_[2] ),
        .I3(\time_s_reg_n_0_[1] ),
        .I4(\time_s_reg_n_0_[0] ),
        .O(time_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \time_s[2]_i_1 
       (.I0(time_10s0),
        .I1(\time_s_reg_n_0_[0] ),
        .I2(\time_s_reg_n_0_[1] ),
        .I3(\time_s_reg_n_0_[2] ),
        .O(time_s[2]));
  LUT4 #(
    .INIT(16'h5444)) 
    \time_s[3]_i_1 
       (.I0(\time_s[3]_i_3_n_0 ),
        .I1(time_10s0),
        .I2(\time_ds[3]_i_3_n_0 ),
        .I3(timer_running_reg_n_0),
        .O(\time_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h14554000)) 
    \time_s[3]_i_2 
       (.I0(time_10s0),
        .I1(\time_s_reg_n_0_[2] ),
        .I2(\time_s_reg_n_0_[1] ),
        .I3(\time_s_reg_n_0_[0] ),
        .I4(\time_s_reg_n_0_[3] ),
        .O(time_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \time_s[3]_i_3 
       (.I0(\time_ds_reg_n_0_[2] ),
        .I1(\time_ds_reg_n_0_[0] ),
        .I2(\time_ds_reg_n_0_[3] ),
        .I3(\time_ds_reg_n_0_[1] ),
        .I4(time_10s0),
        .O(\time_s[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_s_reg[0] 
       (.C(Clk),
        .CE(\time_s[3]_i_1_n_0 ),
        .D(\time_s[0]_i_1_n_0 ),
        .Q(\time_s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_s_reg[1] 
       (.C(Clk),
        .CE(\time_s[3]_i_1_n_0 ),
        .D(time_s[1]),
        .Q(\time_s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_s_reg[2] 
       (.C(Clk),
        .CE(\time_s[3]_i_1_n_0 ),
        .D(time_s[2]),
        .Q(\time_s_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_s_reg[3] 
       (.C(Clk),
        .CE(\time_s[3]_i_1_n_0 ),
        .D(time_s[3]),
        .Q(\time_s_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFAE00A2)) 
    timer_running_i_1
       (.I0(timer_running_reg_n_0),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg_n_0_[2] ),
        .I5(time_10s0),
        .O(timer_running_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    timer_running_reg
       (.C(Clk),
        .CE(1'b1),
        .D(timer_running_i_1_n_0),
        .Q(timer_running_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
