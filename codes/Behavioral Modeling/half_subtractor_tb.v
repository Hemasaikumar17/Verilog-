`include "half_subtractor.v"
`timescale 1ns/1ps

module tb();
  reg a,b;
  wire D,B;

  half_subtractor dut (.a(a),.b(b),.D(D),.B(B));

   initial
   begin
   $monitor("TIME  = %0g   a = %0b   b = %0b   |   D = %0b   B = %0b",$time ,a,b,D,B);

   a = 1'b0;
   b = 1'b0;

#5 a = 1'b0;
   b = 1'b1;
   
#5 a = 1'b1;
   b = 1'b0;
   
#5 a = 1'b1;
   b = 1'b1;

#30;
$finish;
end
endmodule
