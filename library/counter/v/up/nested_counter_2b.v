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
// CREATED		"Wed Oct 30 08:10:50 2019"

module nested_counter_2b(
	en,
	in,
	M,
	out
);


input wire	en;
input wire	[1:0] in;
output wire	M;
output wire	[1:0] out;

wire	[1:0] out_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_3;





nested_counter_1b	b2v_inst01(
	.en(en),
	.in(in[0]),
	.out(out_ALTERA_SYNTHESIZED[0]),
	.M(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_4 & en;


nested_counter_1b	b2v_inst03(
	.en(SYNTHESIZED_WIRE_1),
	.in(in[1]),
	.out(out_ALTERA_SYNTHESIZED[1]),
	.M(SYNTHESIZED_WIRE_3));

assign	M = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_3;

assign	out = out_ALTERA_SYNTHESIZED;

endmodule
