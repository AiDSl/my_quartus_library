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
// CREATED		"Fri Nov 01 02:04:14 2019"

module nested_counter_4b_down(
	en,
	in,
	M,
	out
);


input wire	en;
input wire	[3:0] in;
output wire	M;
output wire	[3:0] out;

wire	[3:0] out_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_4 & en;


nested_counter_2b_down	b2v_inst2(
	.en(en),
	.in(in[1:0]),
	.M(SYNTHESIZED_WIRE_4),
	.out(out_ALTERA_SYNTHESIZED[1:0]));


nested_counter_2b_down	b2v_inst3(
	.en(SYNTHESIZED_WIRE_1),
	.in(in[3:2]),
	.M(SYNTHESIZED_WIRE_3),
	.out(out_ALTERA_SYNTHESIZED[3:2]));

assign	M = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_3;

assign	out = out_ALTERA_SYNTHESIZED;

endmodule
