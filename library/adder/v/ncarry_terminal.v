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
// CREATED		"Mon Oct 28 16:27:39 2019"

module ncarry_terminal(
	T,
	C,
	pervC,
	nextC,
	I
);


input wire	T;
input wire	C;
input wire	pervC;
output wire	nextC;
output wire	I;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	I = pervC;



assign	SYNTHESIZED_WIRE_1 = pervC & T;

assign	SYNTHESIZED_WIRE_0 = C;


assign	nextC = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;


endmodule
