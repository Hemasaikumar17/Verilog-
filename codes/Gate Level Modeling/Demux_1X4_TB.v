`include "Demux_1X4.v"
`timescale 1ns/1ps

module Demux_1X4_TB;
 reg Y;
 reg s0,s1;
 wire i0,i1,i2,i3;

 Demux_1X4 DUT (Y,s0,s1,i0,i1,i2,i3);

 initial begin
  $monitor("TIME = %0dns  Y = %0d  s0 = %0d   s1 = %0d    i0 = %0d    i1 = %0d     i2 = %0d     i3 = %0d",$time,Y,s0,s1,i0,i1,i2,i3);

    Y = 0; s0 = 0; s1 = 0;

#10 Y = 1; s0 = 0; s1 = 0;
#10 Y = 1; s0 = 0; s1 = 1;
#10 Y = 1; s0 = 1; s1 = 0;
#10 Y = 1; s0 = 1; s1 = 1;

#10;
$finish;
end
endmodule
