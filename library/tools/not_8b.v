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
// CREATED		"Fri Nov 08 16:15:17 2019"

module not_8b(
	A,
	B
);


input wire	[7:0] A;
output wire	[7:0] B;

wire	[7:0] B_ALTERA_SYNTHESIZED;




assign	B_ALTERA_SYNTHESIZED[0] =  ~A[0];

assign	B_ALTERA_SYNTHESIZED[4] =  ~A[4];

assign	B_ALTERA_SYNTHESIZED[1] =  ~A[1];

assign	B_ALTERA_SYNTHESIZED[2] =  ~A[2];

assign	B_ALTERA_SYNTHESIZED[3] =  ~A[3];

assign	B_ALTERA_SYNTHESIZED[5] =  ~A[5];

assign	B_ALTERA_SYNTHESIZED[6] =  ~A[6];

assign	B_ALTERA_SYNTHESIZED[7] =  ~A[7];

assign	B = B_ALTERA_SYNTHESIZED;

endmodule
