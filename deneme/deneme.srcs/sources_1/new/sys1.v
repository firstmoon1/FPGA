`timescale 1ns / 1ps
/*
module sys1(x,y,z); 
    input [7:0] x;
    output [7:0] y,z;
    wire [7:0] yd,zd;
    assign yd=x/10;
    assign y=yd*10;
    assign zd=x*10;
    assign z=zd/10;
endmodule
*/





/*
// overflow_operations
module sys1(in1,in2,out1,out2,out3);
    input [15:0] in1,in2;
    output [15:0] out1,out2,out3;
    assign out1=in1+in2;
    assign out2=in1-in2;
    assign out3=in2-in1;
endmodule
*/


/*
module sys1(num1,num2,out); // concatenation
    input [7:0] num1;
    input [7:0] num2;
    output [5:0] out;
    wire [3:0] t1;
    wire [3:0] t2;
    wire [7:0] t3;
    wire [1:0] t4;
    wire [1:0] t5;
    parameter case1 = 2'b10;
    
    assign t1=num1[7:4];
    assign t2=num2[3:0];
    assign t3={t1,t2};
    assign t4=t3[5:4];
    assign t5=t4 & case1;
    assign out={3{t5}};
    
endmodule
*/








// Odd_Even_Number
module sys1(x,y1,y2);
    input [3:0] x;
    output y1,y2;
    assign y2=x[0]&1;
    assign y1=~y2;
endmodule
