`timescale 1ns / 1ps

module main_tb();
 // Input
 reg clk;
 reg [7:0]left,right,forward,backward;
 wire [3:0]out;  // Output
 main deneme_1(.clk(clk),.out(out),.left(left),.right(right),.forward(forward),.backward(backward));
 // The user can change state point of pwm from 0 to 255 , for try,I put the decimal number of 100 
 initial begin 
   clk=0;
   forever #0.2 clk=~clk;  
 end
  initial begin
     #100; 
     left<=8'd0;
     forward<=8'd0;  
     right<=8'd100; 
     backward<=8'd100; 
     #450;
     right<=8'd0; 
     backward<=8'd0; 
     left<=8'd100; 
     forward<=8'd100; 
  end
endmodule
