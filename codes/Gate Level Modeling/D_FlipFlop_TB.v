`include "D_FlipFlop.v"
`timescale 1ns/1ps

module D_FlipFlop_TB;
 reg D;
 reg rst;
 wire Q,Qn;

 D_FlipFlop dut (D,rst,Q,Qn);

  initial begin

  D = 0; rst = 0; 
    $monitor("TIME = %0dns   D = %0d   rst = %0d   Q = %0d    Qn  = %0d",$time,D,rst,Q,Qn);


#10	  D = 0; rst = 1;
#10   D = 0; rst = 0;
#10   D = 1; rst = 0;

#10   D = 1; rst = 1;
#10   D = 0; rst = 0;
#10   D = 1; rst = 0;


#10;
end
endmodule  
