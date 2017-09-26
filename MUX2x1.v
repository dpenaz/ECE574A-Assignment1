`timescale 1ns / 1ps

// 2->1 MULTIPLEXOR
module MUX2x1 #(parameter DATAWIDTH = 4)(A, B, Sel, D);
	input      [DATAWIDTH-1:0] A, B;
	input                      Sel;
	output reg [DATAWIDTH-1:0] D;

	always @(A,B,Sel) begin
		if (Sel == 1'b0)
			D <= A;
		else if (Sel == 1'b1)
			D <= B;
	end
endmodule