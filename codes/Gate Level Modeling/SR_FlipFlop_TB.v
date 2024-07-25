`include "SR_FlipFlop.v"
`timescale 1ns/1ps

module SR_FlipFlop_TB;
 reg S,R;
 reg clk;
 wire Q,Qn;

 SR_FlipFlop dut (S,R,clk,Q,Qn);

 initial begin
  $monitor("TIME = %0dns   clk = %0d   S = %0d    R = %0d     Q =  %0d     Qn = %0d",$time,clk,S,R,Q,Qn);

      S = 0; R = 1; clk = 1;
#10   S = 0; R = 1; clk = 0;
#10   S = 0; R = 0; clk = 1;
#10   S = 1; R = 1; clk = 1;

#10   S = 1; R = 0; clk = 1;
#10   S = 1; R = 1; clk = 0;
#10   S = 0; R = 0; clk = 1;
#10   S = 1; R = 1; clk = 1;

#10;
$finish;
end
endmodule
