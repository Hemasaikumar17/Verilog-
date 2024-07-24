`include "SR_FlipFlop.v"
`timescale 1ns/1ps

module SR_FlipFlop_TB;
reg S,R;
reg clk;
wire Q;

SR_FlipFlop dut (S,R,clk,Q);

initial begin
clk = 0;
forever #10 clk = ~clk;
end

initial begin
$monitor("TIME=%gns  S=%0d   R=%0d   |||  Q=%0d",$time,S,R,Q);

   S   = 0;
   R   = 0;

#10;
   S   = 0;
   R   = 1;

#10;
   S   = 1;
   R   = 0;

#10;
   S   = 0;
   R   = 0;

#10;
   S   = 1;
   R   = 0;

#10;
   S   = 0;
   R   = 0;

#10;
   S   = 1;
   R   = 1;
end

initial begin
#100;
v$stop;
end
endmodule
