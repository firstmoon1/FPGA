`timescale 1ns / 1ps

module main(in1,in2,res1,res2);
    input [7:0]in1;
    input [7:0]in2;
    output [7:0]res1,res2; 
    // subtraction
    assign res1=in1-in2; 
    //summation
    assign res2=in1+in2; 
endmodule

/*
module first(in1,in2,out1);
input [7:0]in1,[7:0]in2;
output [7:0]in2;
// cýkarma bulamadým structural da  ,dataflow da var + - * / % olaylarý
endmodule
*/