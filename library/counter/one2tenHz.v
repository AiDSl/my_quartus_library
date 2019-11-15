// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Fri Nov 01 18:44:59 2019"

module one2tenHz(
	reset,
	speedy,
	clk,
	ob
);


input wire	reset;
input wire	speedy;
input wire	clk;
output wire	[27:0] ob;

wire	[27:0] q;
wire	[27:0] t;
wire	[27:0] SYNTHESIZED_WIRE_0;
wire	[27:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_4;
wire	[27:0] SYNTHESIZED_WIRE_5;
wire	[27:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 = 1;
assign	SYNTHESIZED_WIRE_4 = 0;
assign	SYNTHESIZED_WIRE_7 = 0;




reg_28b	b2v_inst(
	.clk(clk),
	.D(SYNTHESIZED_WIRE_0),
	.Q(q));



busmux_28b	b2v_inst2(
	.sel(speedy),
	.dataa(t),
	.datab(SYNTHESIZED_WIRE_1),
	.result(SYNTHESIZED_WIRE_5));


nested_counter_150md	b2v_inst3(
	.en(SYNTHESIZED_WIRE_8),
	.in(q),
	
	.out(SYNTHESIZED_WIRE_1));


nested_counter_15md	b2v_inst4(
	.en(SYNTHESIZED_WIRE_8),
	.in(q[23:0]),
	
	.out(t[23:0]));


copyer_4b	b2v_inst5(
	.A(SYNTHESIZED_WIRE_4),
	.B(t[27:24]));




busmux_28b	b2v_inst8(
	.sel(reset),
	.dataa(SYNTHESIZED_WIRE_5),
	.datab(SYNTHESIZED_WIRE_6),
	.result(SYNTHESIZED_WIRE_0));


copyer_27b	b2v_inst9(
	.A(SYNTHESIZED_WIRE_7),
	.out(SYNTHESIZED_WIRE_6));

assign	ob = q;

endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [27:0] dataa;
input [27:0] datab;
output [27:0] result;

endmodule

module busmux_1(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [27:0] dataa;
input [27:0] datab;
output [27:0] result;

endmodule
