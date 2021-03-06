`timescale 1ns / 1ps

module circuit6(a, b, c, d, e, f, g, h, num, avg, clk, rst);
    input[15:0] a, b, c, d, e, f, g, h, num;
    input clk, rst;
    
    output[15:0] avg;
    
    wire[15:0] avgwire;
    wire[31:0] t1, t2, t3, t4, t5, t6, t7;
    wire[31:0] ro1, ro2, ro3, ro4, ro5, ro6, ro7;
    
    ADD#(32) Add_1(a, b, t1);           // t1 = a + b
    REG#(32) r1(t1, ro1, clk, rst);   // r1 = t1
    ADD#(32) Add_2(ro1, c, t2);          // t2 = r1 + c 
    REG#(32) r2(t2, ro2, clk, rst);   // r2 = t2
    ADD#(32) Add_3(ro2, d, t3);          // t3 = r2 + d 
    REG#(32) r3(t3, ro3, clk, rst);   // r3 = t3
    ADD#(32) Add_4(ro3, e, t4);          // t4 = r3 + e 
    REG#(32) r4(t4, ro4, clk, rst);   // r4 = t4
    ADD#(32) Add_5(ro4, f, t5);          // t5 = r4 + f 
    REG#(32) r5(t5, ro5, clk, rst);   // r5 = t5
    ADD#(32) Add_6(ro5, g, t6);          // t6 = r5 + g 
    REG#(32) r6(t6, ro6, clk, rst);   // r6 = t6
    ADD#(32) Add_7(ro6, h, t7);          // t7 = r6 + h 
    REG#(32) r7(t7, ro7, clk, rst);   // r7 = t7
    DIV#(32) Div_1(ro7, num, avgwire);   // avgwire = r7 / num
    REG#(16) Reg_8(avgwire[15:0], avg, clk, rst); // avg = avgwire
endmodule