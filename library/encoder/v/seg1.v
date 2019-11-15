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
// CREATED		"Fri Oct 25 19:01:24 2019"

module seg1(
	n,
	seg1
);


input wire	[15:0] n;
output wire	seg1;

wire	SYNTHESIZED_WIRE_0;




assign	seg1 = n[10] | n[13] | SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = n[0] | n[2] | n[1] | n[3] | n[7] | n[4] | n[8] | n[9];


endmodule
