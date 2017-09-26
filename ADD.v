`timescale 1ns / 1ps

// ADDER 
module ADD #(parameter DATAWIDTH = 4)(A, B, Sum);
	input      [DATAWIDTH-1:0] A, B;
	output reg [DATAWIDTH-1:0] Sum;

	always @(A,B) begin
		Sum <= A + B;
	end
endmodule