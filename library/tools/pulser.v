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
// CREATED		"Fri Nov 15 12:38:21 2019"

module pulser(
	clk,
	mode,
	in,
	out
);


input wire	clk;
input wire	mode;
input wire	in;
output wire	out;

reg	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	DFF_inst1;
wire	SYNTHESIZED_WIRE_2;





always@(posedge clk)
begin
	begin
	SYNTHESIZED_WIRE_3 <= in;
	end
end


always@(posedge clk)
begin
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_3;
	end
end

assign	out = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 = DFF_inst1 ^ mode;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_3 ^ SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_2 =  ~mode;


endmodule
