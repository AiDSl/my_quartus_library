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
// CREATED		"Fri Nov 08 12:50:00 2019"

module copyer_24b(
	A,
	B
);


input wire	[0:0] A;
output wire	[23:0] B;

wire	[23:0] t;





copyer_10b	b2v_inst(
	.A(A),
	.B(t[9:0]));


copyer_10b	b2v_inst2(
	.A(A),
	.B(t[19:10]));


copyer_4b	b2v_inst3(
	.A(A),
	.B(t[23:20]));

assign	B = t;

endmodule
