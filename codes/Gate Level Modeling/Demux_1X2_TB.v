`include "Demux_1X2.v"
`timescale 1ns/1ps

module Demux_1X2_TB;
 reg Y,S;
 wire i0,i1;

 Demux_1X2 DUT (Y,S,i0,i1);

 initial begin

 $monitor("TIME = %0dns  Y = %0d  S = %0d  i0 = %0d  i1 = %0d",$time,Y,S,i0,i1);

     Y = 0; S = 0;
#10  Y = 0; S = 1;
#10  Y = 1; S = 0;
#10  Y = 1; S = 1;

#10;
$finish;

end
endmodule


