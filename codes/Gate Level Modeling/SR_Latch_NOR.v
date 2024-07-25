module SR_Latch_NOR(S,R,Q,Qn);
 input S,R;
 output Q,Qn;

 nor gate1 (Q,R,Qn);
 nor gate2 (Qn,S,Q);

endmodule 
