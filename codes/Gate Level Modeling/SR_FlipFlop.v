module SR_FlipFlop(S,R,clk,Q,Qn);    
 input S,R;
 input clk;
 output Q,Qn;

 wire S,R;
 wire clk;
 wire Q,Qn;
  
  nand gate1 (w1,S,clk);
  nand gate2 (w2,R,clk);
  nand gate3 (Q,w1,Qn);
  nand gate4 (Qn,w2,Q);
 
endmodule 


