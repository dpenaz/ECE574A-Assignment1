`timescale 1ns / 1ps

// SHIFT RIGHT
module SHR #(parameter DATAWIDTH = 4)(A, Sh_amt, D);
	input      [DATAWIDTH-1:0] A, Sh_amt;
	output reg [DATAWIDTH-1:0] D;

	always @(A, Sh_amt) begin
		D<= A >> Sh_amt;
	end
endmodule