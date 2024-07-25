module SR_Latch_NAND(S,R,Q,Qn);
 input S,R;
 output Q,Qn;

 nand gate1 (Q,S,Qn);
 nand gate2 (Qn,R,Q);

endmodule 
