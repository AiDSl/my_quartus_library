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
// CREATED		"Fri Oct 25 16:18:03 2019"

module decoder_1b(
	en,
	s,
	d,
	ps
);


input wire	[1:0] en;
input wire	[0:0] s;
output wire	[1:0] d;
output wire	[1:0] ps;

wire	[0:0] a;
wire	[1:0] b;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





shifter_2b	b2v_inst(
	.A(en),
	.B(ps));


decoder_half	b2v_inst3(
	.a(SYNTHESIZED_WIRE_0),
	.en(en[1]),
	.r(b[1]),
	.ps(SYNTHESIZED_WIRE_2));


decoder_half	b2v_inst4(
	.a(SYNTHESIZED_WIRE_1),
	.en(SYNTHESIZED_WIRE_2),
	.r(b[0])
	);

assign	SYNTHESIZED_WIRE_1 =  ~a;

assign	SYNTHESIZED_WIRE_0 = a;


assign	d = b;
assign	a = s;

endmodule
