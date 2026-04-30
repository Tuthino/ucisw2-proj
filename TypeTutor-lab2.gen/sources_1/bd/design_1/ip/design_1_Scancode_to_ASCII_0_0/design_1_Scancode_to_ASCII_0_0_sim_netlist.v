// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Mar 23 09:58:59 2026
// Host        : Lab016-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/XnxPrj/TypeTutor-lab2/TypeTutor-lab2.gen/sources_1/bd/design_1/ip/design_1_Scancode_to_ASCII_0_0/design_1_Scancode_to_ASCII_0_0_sim_netlist.v
// Design      : design_1_Scancode_to_ASCII_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Scancode_to_ASCII_0_0,Scancode_to_ASCII,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Scancode_to_ASCII,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_Scancode_to_ASCII_0_0
   (Clk,
    Key_Code,
    Key_Rdy,
    F0,
    ASCII_Out,
    Char_Valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input Clk;
  input [7:0]Key_Code;
  input Key_Rdy;
  input F0;
  output [6:0]ASCII_Out;
  output Char_Valid;

  wire [5:0]\^ASCII_Out ;
  wire Char_Valid;
  wire Clk;
  wire F0;
  wire [7:0]Key_Code;
  wire Key_Rdy;

  assign ASCII_Out[6] = \^ASCII_Out [5];
  assign ASCII_Out[5:0] = \^ASCII_Out [5:0];
  design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII inst
       (.ASCII_Out(\^ASCII_Out ),
        .Char_Valid(Char_Valid),
        .Clk(Clk),
        .F0(F0),
        .Key_Code(Key_Code),
        .Key_Rdy(Key_Rdy));
endmodule

(* ORIG_REF_NAME = "Scancode_to_ASCII" *) 
module design_1_Scancode_to_ASCII_0_0_Scancode_to_ASCII
   (ASCII_Out,
    Char_Valid,
    F0,
    Key_Rdy,
    Key_Code,
    Clk);
  output [5:0]ASCII_Out;
  output Char_Valid;
  input F0;
  input Key_Rdy;
  input [7:0]Key_Code;
  input Clk;

  wire [5:0]ASCII_Out;
  wire \ASCII_Out[0]_i_2_n_0 ;
  wire \ASCII_Out[0]_i_3_n_0 ;
  wire \ASCII_Out[1]_i_2_n_0 ;
  wire \ASCII_Out[1]_i_3_n_0 ;
  wire \ASCII_Out[2]_i_2_n_0 ;
  wire \ASCII_Out[2]_i_3_n_0 ;
  wire \ASCII_Out[3]_i_2_n_0 ;
  wire \ASCII_Out[3]_i_3_n_0 ;
  wire \ASCII_Out[4]_i_2_n_0 ;
  wire \ASCII_Out[4]_i_3_n_0 ;
  wire \ASCII_Out[5]_i_1_n_0 ;
  wire \ASCII_Out[5]_i_2_n_0 ;
  wire \ASCII_Out[5]_i_4_n_0 ;
  wire \ASCII_Out[5]_i_5_n_0 ;
  wire \ASCII_Out_reg[0]_i_1_n_0 ;
  wire \ASCII_Out_reg[1]_i_1_n_0 ;
  wire \ASCII_Out_reg[2]_i_1_n_0 ;
  wire \ASCII_Out_reg[3]_i_1_n_0 ;
  wire \ASCII_Out_reg[4]_i_1_n_0 ;
  wire \ASCII_Out_reg[5]_i_3_n_0 ;
  wire Char_Valid;
  wire Char_Valid_i_1_n_0;
  wire Clk;
  wire F0;
  wire [7:0]Key_Code;
  wire Key_Rdy;

  LUT6 #(
    .INIT(64'h0000000220A0A680)) 
    \ASCII_Out[0]_i_2 
       (.I0(Key_Code[2]),
        .I1(Key_Code[0]),
        .I2(Key_Code[4]),
        .I3(Key_Code[5]),
        .I4(Key_Code[3]),
        .I5(Key_Code[6]),
        .O(\ASCII_Out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000102000030000)) 
    \ASCII_Out[0]_i_3 
       (.I0(Key_Code[0]),
        .I1(Key_Code[2]),
        .I2(Key_Code[4]),
        .I3(Key_Code[5]),
        .I4(Key_Code[6]),
        .I5(Key_Code[3]),
        .O(\ASCII_Out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000128000108200)) 
    \ASCII_Out[1]_i_2 
       (.I0(Key_Code[0]),
        .I1(Key_Code[3]),
        .I2(Key_Code[2]),
        .I3(Key_Code[5]),
        .I4(Key_Code[6]),
        .I5(Key_Code[4]),
        .O(\ASCII_Out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0504010400000410)) 
    \ASCII_Out[1]_i_3 
       (.I0(Key_Code[2]),
        .I1(Key_Code[4]),
        .I2(Key_Code[6]),
        .I3(Key_Code[5]),
        .I4(Key_Code[0]),
        .I5(Key_Code[3]),
        .O(\ASCII_Out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000662200020000)) 
    \ASCII_Out[2]_i_2 
       (.I0(Key_Code[2]),
        .I1(Key_Code[1]),
        .I2(Key_Code[4]),
        .I3(Key_Code[3]),
        .I4(Key_Code[6]),
        .I5(Key_Code[5]),
        .O(\ASCII_Out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000008041000A0)) 
    \ASCII_Out[2]_i_3 
       (.I0(Key_Code[1]),
        .I1(Key_Code[3]),
        .I2(Key_Code[5]),
        .I3(Key_Code[2]),
        .I4(Key_Code[4]),
        .I5(Key_Code[6]),
        .O(\ASCII_Out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0044000000000640)) 
    \ASCII_Out[3]_i_2 
       (.I0(Key_Code[2]),
        .I1(Key_Code[1]),
        .I2(Key_Code[5]),
        .I3(Key_Code[6]),
        .I4(Key_Code[4]),
        .I5(Key_Code[3]),
        .O(\ASCII_Out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00001000500A1000)) 
    \ASCII_Out[3]_i_3 
       (.I0(Key_Code[6]),
        .I1(Key_Code[3]),
        .I2(Key_Code[4]),
        .I3(Key_Code[5]),
        .I4(Key_Code[1]),
        .I5(Key_Code[2]),
        .O(\ASCII_Out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h002A008020800080)) 
    \ASCII_Out[4]_i_2 
       (.I0(Key_Code[2]),
        .I1(Key_Code[5]),
        .I2(Key_Code[3]),
        .I3(Key_Code[6]),
        .I4(Key_Code[0]),
        .I5(Key_Code[4]),
        .O(\ASCII_Out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0011010000000100)) 
    \ASCII_Out[4]_i_3 
       (.I0(Key_Code[6]),
        .I1(Key_Code[2]),
        .I2(Key_Code[0]),
        .I3(Key_Code[5]),
        .I4(Key_Code[4]),
        .I5(Key_Code[3]),
        .O(\ASCII_Out[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ASCII_Out[5]_i_1 
       (.I0(Key_Code[7]),
        .I1(F0),
        .I2(Key_Rdy),
        .O(\ASCII_Out[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ASCII_Out[5]_i_2 
       (.I0(Key_Rdy),
        .I1(F0),
        .O(\ASCII_Out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11000100EA0AEA00)) 
    \ASCII_Out[5]_i_4 
       (.I0(Key_Code[5]),
        .I1(Key_Code[4]),
        .I2(Key_Code[3]),
        .I3(Key_Code[1]),
        .I4(Key_Code[0]),
        .I5(Key_Code[6]),
        .O(\ASCII_Out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0010000115405444)) 
    \ASCII_Out[5]_i_5 
       (.I0(Key_Code[1]),
        .I1(Key_Code[5]),
        .I2(Key_Code[3]),
        .I3(Key_Code[4]),
        .I4(Key_Code[0]),
        .I5(Key_Code[6]),
        .O(\ASCII_Out[5]_i_5_n_0 ));
  FDRE \ASCII_Out_reg[0] 
       (.C(Clk),
        .CE(\ASCII_Out[5]_i_2_n_0 ),
        .D(\ASCII_Out_reg[0]_i_1_n_0 ),
        .Q(ASCII_Out[0]),
        .R(\ASCII_Out[5]_i_1_n_0 ));
  MUXF7 \ASCII_Out_reg[0]_i_1 
       (.I0(\ASCII_Out[0]_i_2_n_0 ),
        .I1(\ASCII_Out[0]_i_3_n_0 ),
        .O(\ASCII_Out_reg[0]_i_1_n_0 ),
        .S(Key_Code[1]));
  FDRE \ASCII_Out_reg[1] 
       (.C(Clk),
        .CE(\ASCII_Out[5]_i_2_n_0 ),
        .D(\ASCII_Out_reg[1]_i_1_n_0 ),
        .Q(ASCII_Out[1]),
        .R(\ASCII_Out[5]_i_1_n_0 ));
  MUXF7 \ASCII_Out_reg[1]_i_1 
       (.I0(\ASCII_Out[1]_i_2_n_0 ),
        .I1(\ASCII_Out[1]_i_3_n_0 ),
        .O(\ASCII_Out_reg[1]_i_1_n_0 ),
        .S(Key_Code[1]));
  FDRE \ASCII_Out_reg[2] 
       (.C(Clk),
        .CE(\ASCII_Out[5]_i_2_n_0 ),
        .D(\ASCII_Out_reg[2]_i_1_n_0 ),
        .Q(ASCII_Out[2]),
        .R(\ASCII_Out[5]_i_1_n_0 ));
  MUXF7 \ASCII_Out_reg[2]_i_1 
       (.I0(\ASCII_Out[2]_i_2_n_0 ),
        .I1(\ASCII_Out[2]_i_3_n_0 ),
        .O(\ASCII_Out_reg[2]_i_1_n_0 ),
        .S(Key_Code[0]));
  FDRE \ASCII_Out_reg[3] 
       (.C(Clk),
        .CE(\ASCII_Out[5]_i_2_n_0 ),
        .D(\ASCII_Out_reg[3]_i_1_n_0 ),
        .Q(ASCII_Out[3]),
        .R(\ASCII_Out[5]_i_1_n_0 ));
  MUXF7 \ASCII_Out_reg[3]_i_1 
       (.I0(\ASCII_Out[3]_i_2_n_0 ),
        .I1(\ASCII_Out[3]_i_3_n_0 ),
        .O(\ASCII_Out_reg[3]_i_1_n_0 ),
        .S(Key_Code[0]));
  FDRE \ASCII_Out_reg[4] 
       (.C(Clk),
        .CE(\ASCII_Out[5]_i_2_n_0 ),
        .D(\ASCII_Out_reg[4]_i_1_n_0 ),
        .Q(ASCII_Out[4]),
        .R(\ASCII_Out[5]_i_1_n_0 ));
  MUXF7 \ASCII_Out_reg[4]_i_1 
       (.I0(\ASCII_Out[4]_i_2_n_0 ),
        .I1(\ASCII_Out[4]_i_3_n_0 ),
        .O(\ASCII_Out_reg[4]_i_1_n_0 ),
        .S(Key_Code[1]));
  FDRE \ASCII_Out_reg[5] 
       (.C(Clk),
        .CE(\ASCII_Out[5]_i_2_n_0 ),
        .D(\ASCII_Out_reg[5]_i_3_n_0 ),
        .Q(ASCII_Out[5]),
        .R(\ASCII_Out[5]_i_1_n_0 ));
  MUXF7 \ASCII_Out_reg[5]_i_3 
       (.I0(\ASCII_Out[5]_i_4_n_0 ),
        .I1(\ASCII_Out[5]_i_5_n_0 ),
        .O(\ASCII_Out_reg[5]_i_3_n_0 ),
        .S(Key_Code[2]));
  LUT6 #(
    .INIT(64'h0400040404000000)) 
    Char_Valid_i_1
       (.I0(F0),
        .I1(Key_Rdy),
        .I2(Key_Code[7]),
        .I3(\ASCII_Out[5]_i_5_n_0 ),
        .I4(Key_Code[2]),
        .I5(\ASCII_Out[5]_i_4_n_0 ),
        .O(Char_Valid_i_1_n_0));
  FDRE Char_Valid_reg
       (.C(Clk),
        .CE(1'b1),
        .D(Char_Valid_i_1_n_0),
        .Q(Char_Valid),
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
