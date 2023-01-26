`timescale 1ns / 1ps

module main(clk,state,out);
input clk;
input [3:0]state;
output reg [3:0]out;

initial begin
out=4'b0000;
end
// nonblocking bunlar 
always @* begin // ne var ne yok bütün degiþikliklerde calýþ demek @* yada @(*)
if(clk==1) begin
case(state)
    4'hA : out <= 4'd1;
    4'hB : out <= 4'h2;
    4'hC : out <= 4'b0011; // 3
endcase
end
else if (clk==0) begin  // clk = 1'd0; iken  test.v de state=4'd11; out bize 5 olur.
case(state)
    4'hA : out <= 4'd4;
    4'hB : out <= 4'h5;
    4'hC : out <= 4'b0110; // 6
endcase
end


end

endmodule
