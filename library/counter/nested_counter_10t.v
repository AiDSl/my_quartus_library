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
// CREATED		"Fri Nov 08 18:11:01 2019"

module nested_counter_10t(
	reset,
	clk,
	sec,
	internal
);


input wire	reset;
input wire	clk;
output wire	sec;
output wire	[3:0] internal;

wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;

assign	internal = SYNTHESIZED_WIRE_1;
assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_3 = 0;




nested_counter_10d	b2v_inst(
	.en(SYNTHESIZED_WIRE_0),
	.in(SYNTHESIZED_WIRE_1),
	.M(sec),
	.out(SYNTHESIZED_WIRE_4));


reg_4b	b2v_inst1(
	.clk(clk),
	.D(SYNTHESIZED_WIRE_2),
	.Q(SYNTHESIZED_WIRE_1));


copyer_4b	b2v_inst2(
	.A(SYNTHESIZED_WIRE_3),
	.B(SYNTHESIZED_WIRE_5));


busmux_4b	b2v_inst3(
	.sel(reset),
	.dataa(SYNTHESIZED_WIRE_4),
	.datab(SYNTHESIZED_WIRE_5),
	.result(SYNTHESIZED_WIRE_2));




endmodule
