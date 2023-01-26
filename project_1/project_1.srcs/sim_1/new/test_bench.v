`timescale 1ns / 1ps
module test_bench();
    reg in11,in22;
    wire out11,out22;
    
    first ebru(
    .in1(in11),
    .in2(in22),
    .out1(out11),
    .out2(out22)
    );
    
    initial begin
        in11 = 0;
        in22 = 0;
        #10; // delay dir 10ms
        in11 = 0;
        in22 = 1;
        #10;
        in11 = 1;
        in22 = 0;
        #10;
        in11 = 1;
        in22 = 1;
    end
    
endmodule
