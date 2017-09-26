`timescale 1ns / 1ps

module circuit3(a, b, c, d, e, f, g, h, sa, avg, clk, rst);
    input[15:0] a, b, c, d, e, f, g, h;
    input[7:0] sa;
    input clk, rst;
    
    output[15:0] avg;
    
    wire[31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD#(32) Add_1(a, b, 100);              // l00 = a + b
    ADD#(32) Add_2(c, d, 101);              // l01 = c + d
    ADD#(32) Add_3(e, f, 102);              // l02 = e + f
    ADD#(32) Add_4(g, h, 103);              // l03 = g + h
    ADD#(32) Add_5(100, 101, 110);          // l10 = l00 + l01
    ADD#(32) Add_6(102, 103, 111);          // l11 = l02 + l03
    ADD#(32) Add_7(110, 111, 12);           // l2 = l10 + l11
    SHR#(32) Shr_1(12, sa, l2div2);         // l2div2 = l2 >> sa
    SHR#(32) Shr_2(l2div2, sa, l2div4);     // l2div4 = l2div2 >> sa 
    SHR#(32) Shr_3(l2div4, sa, l2div8);     // l2div8 = l2div4 >> sa
    REG#(32) Reg_1(l2div8, avg, clk, rst);  // avg = l2div8
endmodule