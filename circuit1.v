`timescale 1ns / 1ps

module circuit1(a, b, c, z, x, clk, rst);
    input[7:0] a, b, c;
    input clk, rst;
    
    output[7:0] z;
    output[15:0] x;
    
    wire[7:0] d, e;
    wire[15:0] f, g, xwire;
    wire lt, eq;
    
    ADD#(8) Adder_1(a, b, d);           // d = a + b
    ADD#(8) Adder_2(a, c, e);           // e = a + c
    COMP#(8) Comp_1(d, e, g, lt, eq);   // g = d > e
    MUX2x1#(8) Mux_1(e, d, g[0], z);       // z = g ? d : e
    MUL#(16) Mul_1(a, c, f);            // f = a * c
    SUB#(16) Sub_1(f, d, xwire);        // xwire = f - d
    REG#(16)Reg_1(xwire, x, clk, rst);  // x = xwire
endmodule