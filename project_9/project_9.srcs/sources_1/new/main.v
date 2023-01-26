`timescale 1ns / 1ps

// listing 10.7 kitapta serial in,parallel out var ,burda tersini yaptýk
// amac ,input A girdiginde output 1011 almak. 1 bit output var , arka arkaya alýyoruz
// pwm signal gibi.
module main( clk,enable,parallel_in,serial_out );

    input clk,enable;
    input [3:0] parallel_in;
    output reg serial_out;
    reg [3:0] shift_reg;

  always @(posedge clk) begin
    if (enable) begin
      shift_reg <= parallel_in;
    end
    else begin
    serial_out <= shift_reg[3];
    shift_reg <= {shift_reg[2:0], serial_out};
    end
  end
endmodule