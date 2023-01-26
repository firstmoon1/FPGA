`timescale 1ns / 1ps
/* 
comparator,burda say� kar��la�t�rmas� yapt�k,say�lar negatif say� oldugu i�in
twos complement yapt�k sonra bakt�k,ama� en k�c�k say�y� bulmak,
*/
module main(i1,i2,i3,o1);

input [7:0]i1,i2,i3;
output reg [7:0]o1;
wire [7:0]xc,xy,xz;

assign xc[7:0]= ~(i1[7:0]-1'b1); // two's complement yapt�k ama normalde flip sonra 1 ekle yapard�k
assign xy[7:0]= ~(i2[7:0]-1'b1); // burda 1 c�kar sonra filp yapt�k
assign xz[7:0]= ~(i3[7:0]-1'b1);

initial begin // bu  k�sm� initial begin ... end k�s�mlar�n� yazmad�g�mdada cal��t�
o1[7:0]=8'b00000000; // veya 8'd0; yada 8'h00;
end

always @ (xc or xy or xz)
if ((xc>xy) && (xc>xz)) o1=i1;
else if ((xy>xc) && (xy>xz)) o1=i2;
else o1=i3;
/* //veya b�yle yap 1 sat�rdan fazla i� var ise
always @ (xc or xy or xz)
if begin
((xc>xy) && (xc>xz)) o1=i1;
end
else if begin
((xy>xc) && (xy>xz)) o1=i2;
end
else begin
o1=i3;
end
*/

endmodule
