module D_FlipFlop(D,rst,Q,Qn);
 input D,rst;
 output Q,Qn;
 
 nand gate1 (w1,w4,w2);
 nand gate2 (w2,w1,rst);
 nand gate3 (w3,w2,rst,w4);
 nand gate4 (w4,D,w3);
 nand gate5 (Q,w2,Qn);
 nand gate6 (Qn,Q,w3);

endmodule
