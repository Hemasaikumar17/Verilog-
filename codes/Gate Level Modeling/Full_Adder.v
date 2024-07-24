`timescale 1ns/1ps
  module fa (a,b,c,sum,carry);
     input a,b,c;
     output sum,carry;

   /*xor gate1(w1,a,b);
     xor #(5)gate2(sum,w1,c);

    and gate3(w3,a,b);
    and gate4(w4,w1,c);

    or #(6)gate5(carry,w3,w4);*/

  
    xor gate1(w1,a,b);
    xor #(5,4)gate2(sum,w1,c);
                                 
    and gate3(w3,a,b);
    and gate4(w4,w1,c);
                                 
    or #(6,3)gate5(carry,w3,w4);
  
  
  endmodule
