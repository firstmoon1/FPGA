`timescale 1ns / 1ps
module freq_divider(clk,out);

input clk;
output reg [1:0] out;
// https://verilogguide.readthedocs.io/en/latest/verilog/datatype.html
//initial out =0;
integer count1,count2; // 32 bit  
//initial count1 =0;
//initial count2 =0;
initial begin
count1=0;
count2=0;
out=0;
end
 

always @ (posedge clk) begin
    count1 = count1+1;
    count2 = count2+1;
    if (count1 == 3) begin // 6 up-down için count1==3, 
    out[0] =~out[0]; 
    count1=0;
    end
    if (count2 == 5) begin
    out[1] =~out[1];
    count2=0;
    end
end

 
endmodule
// eger 8 up-down istiyorsan count1==4 demelisin, 
// her 2 up-down için count1 == burdaki deger +1 artar
// yada kýsaca istenilen up-down miktarýnýn yarýsý kadar if else condition yap