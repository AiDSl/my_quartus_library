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
// CREATED		"Fri Nov 08 14:08:26 2019"

module nested_adder_4b(
	I,
	A,
	B,
	CarryOut,
	N,
	Z,
	O,
	S
);


input wire	I;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	CarryOut;
output wire	N;
output wire	Z;
output wire	O;
output wire	[3:0] S;

wire	[3:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;





nadder_1b	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.I(SYNTHESIZED_WIRE_0),
	.T(SYNTHESIZED_WIRE_13),
	.S(S_ALTERA_SYNTHESIZED[0]),
	.C(SYNTHESIZED_WIRE_12));

assign	Z = ~(S_ALTERA_SYNTHESIZED[0] | S_ALTERA_SYNTHESIZED[2] | S_ALTERA_SYNTHESIZED[1] | S_ALTERA_SYNTHESIZED[3]);


nadder_1b	b2v_inst18(
	.A(A[1]),
	.B(B[1]),
	.I(SYNTHESIZED_WIRE_1),
	.T(SYNTHESIZED_WIRE_15),
	.S(S_ALTERA_SYNTHESIZED[1]),
	.C(SYNTHESIZED_WIRE_14));


nadder_1b	b2v_inst27(
	.A(A[2]),
	.B(B[2]),
	.I(SYNTHESIZED_WIRE_2),
	.T(SYNTHESIZED_WIRE_8),
	.S(S_ALTERA_SYNTHESIZED[2]),
	.C(SYNTHESIZED_WIRE_23));


nadder_1b	b2v_inst28(
	.A(A[3]),
	.B(B[3]),
	.I(SYNTHESIZED_WIRE_3),
	.T(SYNTHESIZED_WIRE_10),
	.S(S_ALTERA_SYNTHESIZED[3]),
	.C(SYNTHESIZED_WIRE_24));


ncarry_terminal	b2v_inst34(
	.pervC(I),
	.T(SYNTHESIZED_WIRE_4),
	.C(SYNTHESIZED_WIRE_5),
	.I(SYNTHESIZED_WIRE_16),
	.nextC(CarryOut));


ncarry	b2v_inst43(
	.ci(SYNTHESIZED_WIRE_6),
	.C0(SYNTHESIZED_WIRE_23),
	.T0(SYNTHESIZED_WIRE_8),
	.C1(SYNTHESIZED_WIRE_24),
	.T1(SYNTHESIZED_WIRE_10),
	.i0(SYNTHESIZED_WIRE_2),
	.i1(SYNTHESIZED_WIRE_3),
	
	.T(SYNTHESIZED_WIRE_20),
	.C(SYNTHESIZED_WIRE_19));


ncarry	b2v_inst44(
	.ci(SYNTHESIZED_WIRE_11),
	.C0(SYNTHESIZED_WIRE_12),
	.T0(SYNTHESIZED_WIRE_13),
	.C1(SYNTHESIZED_WIRE_14),
	.T1(SYNTHESIZED_WIRE_15),
	.i0(SYNTHESIZED_WIRE_0),
	.i1(SYNTHESIZED_WIRE_1),
	
	.T(SYNTHESIZED_WIRE_18),
	.C(SYNTHESIZED_WIRE_17));


ncarry	b2v_inst46(
	.ci(SYNTHESIZED_WIRE_16),
	.C0(SYNTHESIZED_WIRE_17),
	.T0(SYNTHESIZED_WIRE_18),
	.C1(SYNTHESIZED_WIRE_19),
	.T1(SYNTHESIZED_WIRE_20),
	.i0(SYNTHESIZED_WIRE_11),
	.i1(SYNTHESIZED_WIRE_6),
	
	.T(SYNTHESIZED_WIRE_4),
	.C(SYNTHESIZED_WIRE_5));

assign	O = SYNTHESIZED_WIRE_23 ^ SYNTHESIZED_WIRE_24;

assign	N = S_ALTERA_SYNTHESIZED[3];
assign	S = S_ALTERA_SYNTHESIZED;

endmodule
