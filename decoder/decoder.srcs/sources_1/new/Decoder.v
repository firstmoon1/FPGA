`timescale 1ns / 1ps

module Decoder(x,y);
    input [1:0] x;
    output reg [3:0] y;
    
    initial 
    y=4'b0000;
    
    always @(x) // normalde always den sonra begin end yapýlýr {} iþlevi görsün diye
    case(x) // ama burda 1 statement oldugu için gerek yok ,sen genede her yerde begin end yap
    2'b00 : y=4'b0001;
    2'b01 : y=4'b0010;
    2'b10 : y=4'b0100;
    2'b11 : y=4'b1000;
    endcase 
endmodule