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
// CREATED		"Fri Nov 01 12:42:41 2019"

module nested_counter_150md_down(
	en,
	in,
	M,
	out
);


input wire	en;
input wire	[27:0] in;
output wire	M;
output wire	[27:0] out;

wire	[27:0] o;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_3;





nested_counter_150d_down	b2v_inst(
	.en(SYNTHESIZED_WIRE_0),
	.in(in[27:20]),
	.M(SYNTHESIZED_WIRE_3),
	.out(o[27:20]));

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_4 & en;

assign	M = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_3;


nested_counter_md_down	b2v_inst5(
	.en(en),
	.in(in[19:0]),
	.M(SYNTHESIZED_WIRE_4),
	.out(o[19:0]));

assign	out = o;

endmodule
