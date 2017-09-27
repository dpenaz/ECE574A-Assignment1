`timescale 1ns / 1ps

module circuit7(a, b, c, d, zero, z, clk, rst);
    input[63:0] a, b, c, d, zero;
    input clk, rst;
    output[63:0] z;
    
    wire[63:0] e, f, g, zwire;
    wire gEQz, gt, lt;  
    
    DIV#(64) Div_1(a, b, e);    // e = a / b
    DIV#(64) Div_2(c, d, f);    // f = c / d
    MOD#(64) Mod_1(a, b, g);    // g = a % b  
    COMP#(64) Comp_1(g, zero, gt, lt, gEQz);    // gEQz = g == zero
    MUX2x1#(64) Mux_1(f, e, gEQz, zwire);       // zwire = gEQz ? e : f 
    REG#(64) Reg_1(zwire, z, clk, rst);         // z = zwire
endmodule