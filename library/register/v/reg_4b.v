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
// CREATED		"Fri Nov 01 13:15:51 2019"

module reg_4b(
	clk,
	D,
	Q
);


input wire	clk;
input wire	[3:0] D;
output wire	[3:0] Q;

reg	[3:0] Q_ALTERA_SYNTHESIZED;





always@(posedge clk)
begin
	begin
	Q_ALTERA_SYNTHESIZED[0] <= D[0];
	end
end


always@(posedge clk)
begin
	begin
	Q_ALTERA_SYNTHESIZED[1] <= D[1];
	end
end


always@(posedge clk)
begin
	begin
	Q_ALTERA_SYNTHESIZED[2] <= D[2];
	end
end


always@(posedge clk)
begin
	begin
	Q_ALTERA_SYNTHESIZED[3] <= D[3];
	end
end

assign	Q = Q_ALTERA_SYNTHESIZED;

endmodule
