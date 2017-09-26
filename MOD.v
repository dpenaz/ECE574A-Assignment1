`timescale 1ns / 1ps

// REMAINDER
module MOD #(parameter DATAWIDTH = 4)(A, B, rem);
	input      [DATAWIDTH-1:0] A, B;
	output reg [DATAWIDTH-1:0] rem;
			
	always @(A,B) begin
		rem <= A%B;	 
	end
endmodule