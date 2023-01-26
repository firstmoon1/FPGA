`timescale 1ns / 1ps

module source1( num1,num2,out );
    input [7:0] num1;
    input [7:0] num2;
    output [5:0] out;
    
    wire [1:0] a; // array gibi düþün.
    wire [3:0] b;
    wire [2:0] c;
    wire [3:0] d;
    wire [10:0] e;
    parameter coef=6'b110010;   // constant sayýlarý parameter adý altýnda tanýmlanýr
    
    assign a=num1[7:6];
    assign b={2{a}}; // {x{a}}replicate demek x tekrar sayýsý,a content,içinde ne varsa 2 defa yazýlýr,
    // mesela emma var ise {2{a}} ise emmaemma olur
    assign c=num1[2:0]; 
    assign d=num2[3:0];  // toplamda 4 bit ,3,2,1,0 bitler. 3 to 0 ,burda soldan saða yazýyoruz
    assign e={d,c,b}; // {} in anlamý concatanete demek ,python da append gibi sonuna ekliyor
    assign out=e/coef;
 
endmodule
/*
sum  +
subtraction -
multiplication *
divide  /
modules  %
*/

