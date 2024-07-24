`include "Mux_2X1.v"
`timescale 1ns/1ps

module Mux_2X1_TB;
 reg i0,i1,S;
 wire Y;

 Mux_2X1 DUT (i0,i1,S,Y);

  initial begin
  $monitor("TIME = %0dns   i0 = %0d   i1 = %0d   S = %0d    Y = %0d",$time,i0,i1,S,Y);

     i0 = 0; i1 = 0; S = 0;

#10  i0 = 0; i1 = 0; S = 0; 
#10  i0 = 0; i1 = 0; S = 1; 
#10  i0 = 0; i1 = 1; S = 0; 
#10  i0 = 0; i1 = 1; S = 1; 
#10  i0 = 1; i1 = 0; S = 0; 
#10  i0 = 1; i1 = 0; S = 1; 
#10  i0 = 1; i1 = 1; S = 0; 
#10  i0 = 1; i1 = 1; S = 1;

#10;
$finish;
end

endmodule



