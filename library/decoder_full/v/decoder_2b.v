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
// CREATED		"Fri Oct 25 16:24:53 2019"

module decoder_2b(
	en,
	s,
	d,
	ps
);


input wire	[3:0] en;
input wire	[1:0] s;
output wire	[3:0] d;
output wire	[3:0] ps;

wire	[1:0] a;
wire	[3:0] b;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;





shifter_4b	b2v_inst(
	.A(en),
	.B(ps));


decoder_1b	b2v_inst1(
	.en(en[3:2]),
	.s(a[1]),
	.d(SYNTHESIZED_WIRE_0)
	);


decoder_1b	b2v_inst2(
	.en(SYNTHESIZED_WIRE_0),
	.s(a[0]),
	.d(b[3:2]),
	.ps(SYNTHESIZED_WIRE_1));


decoder_1b	b2v_inst3(
	.en(SYNTHESIZED_WIRE_1),
	.s(a[0]),
	.d(b[1:0])
	);

assign	d = b;
assign	a = s;

endmodule
