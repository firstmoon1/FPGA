`timescale 1ns / 1ps

module test_bench();

reg [3:0]x,y;
wire [4:0]s;
final uut( .x(x),.y(y),.s(s) );

initial begin

x=4'b1010;
y=4'b1100;
end

endmodule
