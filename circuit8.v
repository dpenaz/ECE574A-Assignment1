`timescale 1ns / 1ps

module circuit8(a, b, c, zero, z, clk, rst);
    input[63:0] a, b, c, zero;
    input clk, rst;
    output[63:0] z;
    
    wire[63:0] e, f, g, zwire;
    wire gEQz, gt, lt;
    
    DEC#(64) Dec_1(a, e);    // e = a - 1
    INC#(64) Inc_1(c, f);    // f = c + 1
    MOD#(64) Mod_1(a, c, g); // g = a % c
    COMP#(64) Comp_1(g, zero, gt, lt, gEQz);    // gEQz = g == zero
    MUX2x1#(64) Mux_1(f, e, gEQz, zwire);       // zwire = gEQz ? e : f 
    REG#(64) Reg_1(zwire, z, clk, rst);         // z = zwire
endmodule
