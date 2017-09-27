`timescale 1ns / 1ps

module circuit5(a, b, c, z, x, clk, rst);
    input[63:0] a, b, c;
    input clk, rst;
    
    output[31:0] z, x;
    
    wire[63:0] d, e, f, g, h;
    wire dLTe, dEQe;
    wire[63:0] xrin, zrin;
    wire gt, lt, eq;
    
    wire[63:0] grego, hrego;
    
    ADD#(64) Add_1(b, a, d);                // d = a + b
    ADD#(64) Add_2(c, a, e);                // e = a + c
    SUB#(64) Sub_1(a, b, f);                // f = a - b  
    COMP#(64) Comp_1(d, e, gt, dLTe, dEQe);   // dEQe = d == e, dLTe = d < e
    MUX2x1#(64) Mux_1(e, d, dLTe, g);       // g = dLTe ? d : e 
    MUX2x1#(64) Mux_2(f, g, dEQe, h);       // h = dEQe ? g : f 
    REG#(64) greg(g, grego, clk, rst);      // greg = g
    REG#(64) hreg(h, hrego, clk, rst);      // hreg = h
    SHL#(64) Shl_1(hrego, dLTe, xrin);       // xrin = hreg << dLTe
    SHR#(64) Shr_1(grego, dEQe, zrin);       // zrin = greg >> dEQe
    REG#(64) Reg_3(xrin, x, clk, rst);      // x = xrin
    REG#(64) Reg_4(zrin, z, clk, rst);      // z = zrin
endmodule