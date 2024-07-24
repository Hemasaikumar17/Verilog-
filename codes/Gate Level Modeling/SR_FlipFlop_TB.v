`include "SR_FlipFlop.v"
`timescale 1ns/1ps

module SR_FlipFlop_TB;
 reg S,R;
 reg clk;
 wire Q,q;

 SR_FlipFlop dut (S,R,clk,Q,q);

 initial begin
 clk = 0;
 forever #10 clk = ~clk;
 end

 initial begin

 S = 0;
 R = 0;

 $monitor("TIME=%gns   S = %0d  R = %0d | Q = %0d  q = %0d",$time,S,R,Q,q);

#10   S = 1;R = 0;
#10   S = 0;

#10   R = 1;S = 0;
#10   R = 0;

#10   S = 1; R = 1;
#10   S = 0; R = 0;

#10   S = 1; R = 0;
#10   S = 0; R = 1;
#10   S = 1; R = 1;
#10   S = 0; R = 0;

 #20 $finish;
 end
 endmodule
