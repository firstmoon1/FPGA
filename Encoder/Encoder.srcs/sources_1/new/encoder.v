`timescale 1ns / 1ps

module encoder(x,y);
    input [3:0] x;
    output reg [1:0] y;
    
    initial 
    y=2'b00;
    
    always @(x) // normalde always den sonra begin end yapýlýr {} iþlevi görsün diye
    case(x) // ama burda 1 statement oldugu için gerek yok ,sen genede her yerde begin end yap
    4'b0000 : y=2'b00;
    4'b0010 : y=2'b01;
    4'b0100 : y=2'b10;
    4'b1000 : y=2'b11;
    endcase 
endmodule