`include "SR_Latch_NOR.v"
`timescale 1ns/1ps

module SR_Latch_NOR_TB;
 reg S,R;
 wire Q,Qn;

 SR_Latch_NOR DUT (S,R,Q,Qn);

 initial begin
   $monitor("TIME = %0dns   S = %0d   R = %0d   Q = %0d   Qn = %0d",$time,S,R,Q,Qn);

    S = 0; R = 1;
#10 S = 1;

#10 S = 1; R = 0;
#10 R = 1;

#10 S = 0; R = 0;
#10 S = 1; R = 1;

#10;
$finish;
end
endmodule
