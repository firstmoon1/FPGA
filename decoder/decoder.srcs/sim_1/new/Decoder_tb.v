`timescale 1ns / 1ps

module Decoder_tb;
    reg [1:0] x;
    wire [3:0] y;
    
    Decoder UUT(.x(x), .y(y));
    initial begin
    #10;
    x=2'b00;
    #10;
    x=2'b01;
    #10;    
    x=2'b10;
    #10;    
    x=2'b11;
    
    end 
endmodule