`timescale 1ns / 1ps

// DECREMENT
module DEC #(parameter DATAWIDTH = 4)(a, d);
    input      [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] d;
    
    always @(a) begin
        /*if (a == 0)
            d <= {DATAWIDTH{1'b1}};
        else
            d <= a - 1;*/
       d <= a - 1;
    end
endmodule