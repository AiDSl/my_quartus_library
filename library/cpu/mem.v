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
// CREATED		"Fri Nov 08 14:04:09 2019"

module mem(
	a,
	b,
	c,
	cmd,
	d,
	t,
	mem
);


input wire	[3:0] a;
input wire	[3:0] b;
input wire	[3:0] c;
input wire	[3:0] cmd;
input wire	[3:0] d;
input wire	[3:0] t;
output wire	[3:0] mem;

wire	[15:0] sel;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_8;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 = 1;




busmux_4b	b2v_inst(
	.sel(sel[1]),
	.dataa(SYNTHESIZED_WIRE_0),
	.datab(a),
	.result(SYNTHESIZED_WIRE_4));


busmux_4b	b2v_inst11(
	.sel(sel[5]),
	.dataa(SYNTHESIZED_WIRE_1),
	.datab(t),
	.result(mem));



copyer_16b	b2v_inst13(
	.A(SYNTHESIZED_WIRE_8),
	.B(SYNTHESIZED_WIRE_6));


copyer_4b	b2v_inst14(
	.A(SYNTHESIZED_WIRE_8),
	.B(SYNTHESIZED_WIRE_0));


busmux_4b	b2v_inst4(
	.sel(sel[2]),
	.dataa(SYNTHESIZED_WIRE_4),
	.datab(b),
	.result(SYNTHESIZED_WIRE_5));


busmux_4b	b2v_inst5(
	.sel(sel[3]),
	.dataa(SYNTHESIZED_WIRE_5),
	.datab(c),
	.result(SYNTHESIZED_WIRE_7));


decoder_4b	b2v_inst8(
	.en(SYNTHESIZED_WIRE_6),
	.s(cmd),
	.d(sel)
	);


busmux_4b	b2v_inst9(
	.sel(sel[4]),
	.dataa(SYNTHESIZED_WIRE_7),
	.datab(d),
	.result(SYNTHESIZED_WIRE_1));


endmodule


