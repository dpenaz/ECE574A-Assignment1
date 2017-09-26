`timescale 1ns / 1ps

// INCREMENT
module INC #(parameter DATAWIDTH = 4)(a, d);
    input      [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] d;
    
    always @(a) begin
        /*if (a == {DATAWIDTH{1'b1}})
            d <= 0;
        else
            d <= a + 1;*/
        d <= a + 1;
    end
endmodule