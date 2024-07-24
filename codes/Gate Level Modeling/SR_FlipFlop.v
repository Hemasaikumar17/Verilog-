module SR_FlipFlop(S,R,clk,Q,q);    //q = ~Q
 input S,R;
 input clk;
 output Q,q;

 wire S,R;
 wire clk;
 wire Q,q;
  
  nand gate1 (w1,S,clk);
  nand gate2 (w2,R,clk);
  nand gate3 (Q,w1,q);
  nand gate4 (q,w2,Q);
 
endmodule 


