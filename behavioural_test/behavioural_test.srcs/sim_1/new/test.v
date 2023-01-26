`timescale 1ns / 1ps

module test( );

reg i1,i2; 
wire o1,o2;

main d1( .in1(i1), .in2(i2), .out1(o1), .out2(o2) );

// bu deger verme i�i tam degil ,triger i�in degi�im olmas� gerek
initial begin
// 1 inci yol
#100;
i1=1'b0;
i2=1'b0;
#100;
i1=1'b1;
i2=1'b0;
#100;

/* // 2inci yol repeatl� bir yol ama denemedim
repeat(4)
#100;
i1=1'b0;
i2=1'b0;
#100;
i1=1'b1;
i2=1'b0;
#100;
end
*/
end

endmodule
