`timescale 1ns / 1ps

module test();
 
 reg clk;
 reg [3:0]state;
 wire[3:0] out;
 
 main uut(.clk(clk),.out(out),.state(state));
 
initial begin
 #10;
 clk = 1'b1;
 state=4'd10;
 #10;
 
 clk = 1'd0;
 state=4'd11;
 #10;
 
 clk = 1'h1;
 state=4'd12;
 #10;
 
 clk = 1'b0;
 state=4'd10;
 #10;
 
 clk = 1'b0; // calýþtý bu illa 0 to 1 yada 1 to 0 a gerek yok
 state=4'd11;
 #10;
 
end
endmodule
