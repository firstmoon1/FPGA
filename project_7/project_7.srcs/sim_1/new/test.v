`timescale 1ns / 1ps
module test();

reg [3:0] s,r;
reg c;
wire [3:0] q,qn;

main UUT(.s(s),.r(r),.c(c),.q(q),.qn(qn));

initial begin
{c,s,r}={1'b0,4'h0,4'h0};
/*
c = 1'b0;
s = 4'h0;
r = 4'h0;
*/
#10;
{c,s,r}={1'b0,4'hF,4'h0};
/*
c = 1'b0;
s = 4'hF;
r = 4'h0;
*/
#10;
{c,s,r}={1'b1,4'h0,4'h0};
/*
c = 1'b1;
s = 4'h0;
r = 4'h0;
*/
#10;
{c,s,r}={1'b1,4'hA,4'h5};
/*
c = 1'b1;
s = 4'hA;
r = 4'h5;
*/
#10;
{c,s,r}={1'b1,4'h0,4'h0};
/*
c = 1'b1;
s = 4'h0;
r = 4'h0;
*/
#10;
{c,s,r}={1'b1,4'hF,4'hA};
/*
c = 1'b1;
s = 4'hF;
r = 4'hA;
*/
#10;
{c,s,r}={1'b1,4'h0,4'h5};
/*
c = 1'b1;
s = 4'h0;
r = 4'h5;
*/
#10; // delay
{c,s[3:0],r[3:0]}={1'b1,4'h0,4'h0}; // fark etmiyor istersen tek tek ver
/*
c = 1'b1;
s = 4'h0;
r = 4'h0;
*/
#10;

end

endmodule
