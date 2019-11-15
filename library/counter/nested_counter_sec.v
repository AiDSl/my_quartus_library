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
// CREATED		"Fri Nov 08 13:08:10 2019"

module nested_counter_sec(
	speed,
	clk,
	reset,
	sec
);


input wire	speed;
input wire	clk;
input wire	reset;
output wire	sec;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[0:0] SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_0 = 1;




busmux_1b	b2v_inst(
	.sel(speed),
	.dataa(SYNTHESIZED_WIRE_0),
	.datab(SYNTHESIZED_WIRE_1),
	.result(SYNTHESIZED_WIRE_2));


nested_counter_10hz	b2v_inst2(
	.tempo(SYNTHESIZED_WIRE_2),
	.clk(clk),
	.reset(reset),
	.sec(sec)
	);


nested_counter_10t	b2v_inst3(
	.clk(clk),
	.reset(reset),
	.sec(SYNTHESIZED_WIRE_1)
	);



endmodule
