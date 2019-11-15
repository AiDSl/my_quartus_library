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
// CREATED		"Mon Oct 28 18:49:53 2019"

module ncarry(
	T0,
	C0,
	T1,
	C1,
	ci,
	i1,
	i2,
	i0,
	T,
	C
);


input wire	T0;
input wire	C0;
input wire	T1;
input wire	C1;
input wire	ci;
output wire	i1;
output wire	i2;
output wire	i0;
output wire	T;
output wire	C;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;




assign	i0 = ci;


assign	C = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 = C1;


assign	SYNTHESIZED_WIRE_0 = T1 & C0;

assign	i2 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_3 = ci & T0 & T1;

assign	SYNTHESIZED_WIRE_2 = C0 & T1;

assign	SYNTHESIZED_WIRE_5 = ci & T0;

assign	SYNTHESIZED_WIRE_6 = C0;


assign	i1 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_4 = C1;


assign	T = T0 & T1;


endmodule
