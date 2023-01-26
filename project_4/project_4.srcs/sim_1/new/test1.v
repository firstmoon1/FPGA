`timescale 1ns / 1ps

module test1();
    /*
    reg [7:0] num1;
    reg [7:0] num2;
    reg [7:0] num3;
    reg [7:0] num4;
    reg [7:0] num5;
    reg [7:0] num6;
    reg [7:0] num7;
    reg [7:0] num8;
    */
    reg [7:0] num1,num2,num3,num4,num5,num6,num7,num8;
    reg x1,y1,z1;
    wire [7:0] out1;
    
    final eb (
        .in1(num1),
        .in2(num2),
        .in3(num3),
        .in4(num4),
        .in5(num5),
        .in6(num6),
        .in7(num7),
        .in8(num8),
        
        .fin(out1),
        
        .x(x1),
        .y(y1),
        .z(z1)
    );
        
    initial begin
        num1 = 8'hAA;
        num2 = 8'hBA;
        num3 = 8'hBB;
        num4 = 8'hCB;
        num5 = 8'hCC;
        num6 = 8'hDC;
        num7 = 8'hDD;
        num8 = 8'hFF;
        x1=1'b0; // selection ları buradan yapıyoruz
        y1=1'b0;
        z1=1'b0;
 
    end
    
endmodule
