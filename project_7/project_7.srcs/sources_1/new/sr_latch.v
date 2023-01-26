`timescale 1ns / 1ps
module sr_latch(s,r,c,q,qn);

input s,r,c;
output reg  q,qn;

always @ (s or r or c)
/*if (c&s) {q,qn} <= 2'b10;
else if (c&r) {q,qn} <= 2'b01;
// 1 satýrdan fazla iþ var ise if else if  yada else için.
*/
if(c&s) begin
{q,qn} <= 2'b10;
end
else if (c&r) begin
{q,qn} <= 2'b01;
end

endmodule
