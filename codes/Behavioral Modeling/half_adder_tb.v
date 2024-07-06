`include "ha.v"

module tb;
   reg a,b;
   wire sum,carry;

   ha dut (a,b,sum,carry);
   initial
   begin
   $monitor("TIME = %g     a = %d   b = %d   |  sum = %d   carry = %d",$time,a,b,sum,carry);
   a = 1'd0;
   b = 1'd0;

#5 a = 1'd0;
   b = 1'd1;

#5 a = 1'd1;
   b = 1'd0;

#5 a = 1'd1;
   b = 1'd1;

   #30;
   $finish;
   end
endmodule   

