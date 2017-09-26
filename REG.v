`timescale 1ns / 1ps

// REGISTER
module REG #(parameter DATAWIDTH = 4)(D, Q, clk, rst);
	input      [DATAWIDTH-1:0] D;
	input                      clk, rst;
	output reg [DATAWIDTH-1:0] Q;

	always @(posedge clk) begin
		if (rst == 1) // synchronous reset 
			Q <= 0;
		else
			Q <=D;
	end
endmodule