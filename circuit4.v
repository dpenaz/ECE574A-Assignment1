`timescale 1ns / 1ps

module circuit4(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, final, clk, rst);
    input[7:0] a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
    input clk, rst;
    
    output[31:0] final;
    
    wire[31:0] t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14;
    
    ADD#(32) Add_1(a, b, t1);       // t1 = a + b
    ADD#(32) Add_2(c, t1, t2);      // t2 = t1 + c
    ADD#(32) Add_3(d, t2, t3);      // t3 = t2 + d
    ADD#(32) Add_4(e, t3, t4);      // t4 = t3 + e
    ADD#(32) Add_5(f, t4, t5);      // t5 = t4 + f
    ADD#(32) Add_6(g, t5, t6);      // t6 = t5 + g
    ADD#(32) Add_7(h, t6, t7);      // t7 = t6 + h
    ADD#(32) Add_8(i, t7, t8);      // t8 = t7 + i
    ADD#(32) Add_9(j, t8, t9);      // t9 = t8 + j
    ADD#(32) Add_10(l, t9, t10);    // t10 = t9 + l
    ADD#(32) Add_11(m, t10, t11);   // t11 = t10 + m
    ADD#(32) Add_12(n, t11, t12);   // t12 = t11 + n
    ADD#(32) Add_13(o, t12, t13);   // t13 = t12 + o
    ADD#(32) Add_14(p, t13, t14);   // t14 = t13 + p
    REG#(32) Reg_1(t14, final, clk, rst);    // final = t14
endmodule