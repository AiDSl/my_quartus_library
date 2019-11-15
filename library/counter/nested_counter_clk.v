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
// CREATED		"Fri Nov 01 16:21:30 2019"

module nested_counter_clk(
	mode,
	en,
	in,
	out
);


input wire	mode;
input wire	en;
input wire	[11:0] in;
output wire	[11:0] out;

wire	[11:0] inside;
wire	[11:0] out_ALTERA_SYNTHESIZED;
wire	[11:0] SYNTHESIZED_WIRE_0;
wire	[11:0] SYNTHESIZED_WIRE_1;




assign	out_ALTERA_SYNTHESIZED[7:0] = inside[7:0];



nested_counter_clk_down	b2v_inst2(
	.en(en),
	.in(in),
	
	.out(SYNTHESIZED_WIRE_1));


nested_counter_clk_up	b2v_inst3(
	.en(en),
	.in(in),
	
	.out(SYNTHESIZED_WIRE_0));


nested_counter_4b	b2v_inst5(
	
	.in(inside[11:8]),
	
	.out(out_ALTERA_SYNTHESIZED[11:8]));


busmux_12b	b2v_inst97(
	.sel(mode),
	.dataa(SYNTHESIZED_WIRE_0),
	.datab(SYNTHESIZED_WIRE_1),
	.result(inside));

assign	out = out_ALTERA_SYNTHESIZED;

endmodule


