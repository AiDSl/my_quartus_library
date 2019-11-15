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
// CREATED		"Sun Nov 03 15:58:50 2019"

module copyer_16b(
	A,
	B
);


input wire	[0:0] A;
output wire	[15:0] B;

wire	[0:0] in;
wire	[15:0] out;





copyer_8b	b2v_inst(
	.A(in),
	.B(out[7:0]));


copyer_8b	b2v_inst4(
	.A(in),
	.B(out[15:8]));

assign	B = out;
assign	in = A;

endmodule
