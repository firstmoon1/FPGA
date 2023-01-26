`timescale 1ns / 1ps


module full_adder(s,co,x,y,ci);

    input x,y,ci;
    output s,co;
    assign co=(x&y)|(ci&(x^y));
    assign s=x^y^ci;

endmodule
