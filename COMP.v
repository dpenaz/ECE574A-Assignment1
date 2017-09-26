`timescale 1ns / 1ps

// COMPARE
module COMP #(parameter DATAWIDTH = 4)(A, B, gt, lt, eq);
	input      [DATAWIDTH-1:0] A, B;
	output reg                 gt, lt, eq;

	always @(A,B) begin
		gt <= 0; lt <= 0; eq <= 0;
        
		if ($signed({1'b0,A}) > B) //convert unsigned to signed
			gt<=1;
		else if ($signed({1'b0,A}) < B) //convert unsigned to signed
			lt<=1;
		else begin
			eq<=1;
		end
	end
endmodule