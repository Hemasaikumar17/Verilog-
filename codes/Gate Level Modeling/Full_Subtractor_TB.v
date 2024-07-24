`include "Full_Subtractor.v"
`timescale 1ns/1ps

module Full_Subtractor_TB;
  reg A,B,C;
  wire D,Bo;

  Full_Subtractor DUT (A,B,C,D,Bo);

  initial begin

  $monitor("TIME=%0dns   A=%0d   B=%0d   C=%0d   D=%0d   Bo=%0d",$time,A,B,C,D,Bo);

      A = 0;   B = 0;   C = 0;
#10   A = 0;   B = 0;   C = 1;
#10   A = 0;   B = 1;   C = 0;
#10   A = 0;   B = 1;   C = 1;
#10   A = 1;   B = 0;   C = 0;
#10   A = 1;   B = 0;   C = 1;
#10   A = 1;   B = 1;   C = 0;
#10   A = 1;   B = 1;   C = 1;
 
   #10;
   $finish;
   end
endmodule   
