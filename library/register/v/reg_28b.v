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
// CREATED		"Fri Nov 01 13:20:03 2019"

module reg_28b(
	clk,
	D,
	Q
);


input wire	clk;
input wire	[27:0] D;
output wire	[27:0] Q;

wire	[27:0] q_ALTERA_SYNTHESIZED;





reg_8b	b2v_inst(
	.clk(clk),
	.D(D[7:0]),
	.Q(q_ALTERA_SYNTHESIZED[7:0]));


reg_8b	b2v_inst2(
	.clk(clk),
	.D(D[15:8]),
	.Q(q_ALTERA_SYNTHESIZED[15:8]));


reg_8b	b2v_inst3(
	.clk(clk),
	.D(D[23:16]),
	.Q(q_ALTERA_SYNTHESIZED[23:16]));


reg_4b	b2v_inst4(
	.clk(clk),
	.D(D[27:24]),
	.Q(q_ALTERA_SYNTHESIZED[27:24]));

assign	Q = q_ALTERA_SYNTHESIZED;

endmodule
