`timescale 1ns / 1ps

module test1();
    reg [7:0]num11; // register'den yer ayýrýyoruz sistemde tutulsun diye.
    reg[7:0]num22;
    wire [5:0] result; // putputlarý wire olarak tanýmlarýz
    
    source1 ebru(
    .num1(num11),
    .num2(num22),
    .out(result)
    );
    
    initial begin
    // burda outputlara bir þey vermeyiz onu run simulation RTL analysis schematic den bakarýz 
    // burda inputlara deger veririr.
    // binary way
    //num11=8'b11011011;
    //num22=8'b10101110;
    // hexadecimal way
    //num11=8'hDB;
    //num22=8'hAE; 
    // decimal way
    num11=8'd219;
    num22=8'd174;
    end
   
endmodule

/*
Let's give some examples on constants. 
1'b0 indicates the binary number 0.
2'b10 indicatesthe binary number 10. 
4'b10 indicates the binary number 0010. 
6'o75 indicates the octal number75. 
8'hCA indicates the hexadecimal number CA. 
Finally, 
8'd251 indicates the decimal number 251 which can be represented by eight bits.
*/

