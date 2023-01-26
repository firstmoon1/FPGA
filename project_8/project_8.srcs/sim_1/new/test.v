`timescale 1ns / 1ps

module test();
 
 reg clk;
 wire[1:0] out;
 
 freq_divider uut(clk,out);
 
 initial begin
 clk = 0;
 forever // while döngüsü bro sonsuza kadar devam
 #5 clk = ~clk; // 5 dedeigimiz delay 
 end
endmodule