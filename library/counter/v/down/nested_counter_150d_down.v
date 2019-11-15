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
// CREATED		"Fri Nov 15 12:55:14 2019"

module nested_counter_150d_down(
	en,
	in,
	M,
	out
);


input wire	en;
input wire	[7:0] in;
output wire	M;
output wire	[7:0] out;

wire	[7:0] o;
wire	SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;

assign	M = SYNTHESIZED_WIRE_0;




busmux_0	b2v_inst(
	.sel(SYNTHESIZED_WIRE_0),
	.dataa(o),
	.datab(SYNTHESIZED_WIRE_1),
	.result(out));


nested_counter_8b_down	b2v_inst1(
	.en(en),
	.in(in),
	
	.out(o));

assign	SYNTHESIZED_WIRE_2 = ~(in[0] | in[2] | in[1] | in[3] | in[5] | in[4] | in[6] | in[7]);


num_8b_149d	b2v_inst4(
	.set(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_0 = en & SYNTHESIZED_WIRE_2;


endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [7:0] dataa;
input [7:0] datab;
output [7:0] result;

endmodule
