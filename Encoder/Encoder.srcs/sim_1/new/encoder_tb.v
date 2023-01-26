`timescale 1ns / 1ps

module encoder_tb;
    reg [3:0] x;
    wire [1:0] y;
    
    encoder UUT(.x(x), .y(y));
    initial begin
    #100;
    x=4'b0000;
    #100;
    x=4'b0010;
    #100;    
    x=4'b0100;
    #100;    
    x=4'b1000;
    
    end 
endmodule