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
// CREATED		"Fri Oct 25 19:00:22 2019"

module decoder_4b_seg7(
	inv,
	d,
	s7
);


input wire	inv;
input wire	[3:0] d;
output wire	[6:0] s7;

wire	[3:0] n;
wire	[6:0] w;
wire	SYNTHESIZED_WIRE_0;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_0 = 1;




copyer_16b	b2v_inst(
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_6));


seg2	b2v_inst10(
	.n(SYNTHESIZED_WIRE_9),
	.seg2(w[2]));


seg3	b2v_inst12(
	.n(SYNTHESIZED_WIRE_9),
	.seg3(w[3]));


seg4	b2v_inst13(
	.n(SYNTHESIZED_WIRE_9),
	.seg4(w[4]));


seg5	b2v_inst15(
	.n(SYNTHESIZED_WIRE_9),
	.seg5(w[5]));


seg6	b2v_inst16(
	.n(SYNTHESIZED_WIRE_9),
	.seg6(w[6]));


bitwise_inv	b2v_inst17(
	.inv(inv),
	.A(w),
	.nA(s7));


decoder_4b	b2v_inst2(
	.en(SYNTHESIZED_WIRE_6),
	.s(n),
	.d(SYNTHESIZED_WIRE_9)
	);



seg1	b2v_inst8(
	.n(SYNTHESIZED_WIRE_9),
	.seg1(w[1]));


seg0	b2v_inst9(
	.n(SYNTHESIZED_WIRE_9),
	.seg0(w[0]));

assign	n = d;

endmodule
