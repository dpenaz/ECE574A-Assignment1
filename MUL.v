`timescale 1ns / 1ps

// MULTIPLIER
module MUL #(parameter DATAWIDTH = 4)(A, B, Prod);
	input      [DATAWIDTH-1:0] A, B;
	output reg [DATAWIDTH-1:0] Prod;

	always @(A,B) begin
		Prod <= A * B;
	end
endmodule