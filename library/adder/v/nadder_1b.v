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
// CREATED		"Mon Oct 28 16:27:28 2019"

module nadder_1b(
	A,
	B,
	I,
	T,
	C,
	S
);


input wire	A;
input wire	B;
input wire	I;
output wire	T;
output wire	C;
output wire	S;

wire	SYNTHESIZED_WIRE_0;

assign	T = SYNTHESIZED_WIRE_0;



assign	SYNTHESIZED_WIRE_0 = A ^ B;

assign	C = A & B;

assign	S = SYNTHESIZED_WIRE_0 ^ I;


endmodule
