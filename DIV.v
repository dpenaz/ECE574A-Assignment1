`timescale 1ns / 1ps

// DIVIDER
module DIV #(parameter DATAWIDTH = 4)(A, B, Quot);
	input      [DATAWIDTH-1:0] A, B;
	output reg [DATAWIDTH-1:0] Quot;

	always @(A,B) begin
		Quot <= A/B;
	end
endmodule