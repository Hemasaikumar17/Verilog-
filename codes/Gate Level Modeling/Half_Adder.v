`timescale 1ns/1ps
  module ha (a,b,sum,carry);
    input a,b;
    output sum,carry;


    //
         xor #(5)gate1(sum,a,b);        //simple delays
         and #(4)gate2(carry,a,b);      //simple delays

   //half adder using nand gate 

  /*   nand #(3,2)gate1(w1,a,b);       //2 - delays --- Rise , Fall
       nand #(1,4)gate2(w2,w1,a);      //3 delays are not posiible for simple gates
       nand #(2,3)gate3(w3,w1,b);
       nand #(1,3)gate4(sum,w2,w3);
       nand #(2,4)gate5(carry,w1);

  //half adder using nor gate

      nor #(5:3:1,4:3:2)gate1(w1,a,b);
      nor #(3:2:1,4:2:1)gate2(w2,a);
      nor #(5:4:1,6:4:1)gate3(w3,b);
      nor #(3:2:1,3:2:1)gate4(carry,w2,w3);
      nor #(5:4:2,5:3:2)gate5(sum,w1,carry);*/
  endmodule  
