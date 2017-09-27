`timescale 1ns / 1ps

module circuit2(a, b, c, z, x, clk, rst);
    input[31:0] a, b, c;
    input clk, rst;
    
    output[31:0] z, x;
        
    wire[31:0] d, e, f, g, h;
    wire[31:0] zwire, xwire;
    wire dLTe, dEQe;
    wire gt, lt, eq;
    
    ADD#(32) Adder_1(a, b, d);              // d = a + b
    ADD#(32) Adder_2(a, c, e);              // e = a + c
    SUB#(32) Sub_1(a, b, f);                // f = a - b  
    COMP#(32) Comp_1(d, e, gt, dLTe, dEQe);   // dEQe = d == e, dLTe = d < e
    MUX2x1#(32) Mux_1(e, d, dLTe, g);       // g = dLTe ? d : e 
    MUX2x1#(32) Mux_2(f, g, dEQe, h);       // h = dEQe ? g : f 
    SHL#(32) Shl_1(g, dLTe, xwire);         // xwire = g << dLTe
    SHR#(32) Shr_1(h, dEQe, zwire);         // zwire = h >> dEQe
    REG#(32) Reg_1(xwire, x, clk, rst);     // x = xwire
    REG#(32) Reg_2(zwire, z, clk, rst);     // z = zwire
endmodule