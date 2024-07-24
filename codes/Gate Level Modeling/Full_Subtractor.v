module Full_Subtractor(A,B,C,D,Bo);
  input A,B,C;
  output D,Bo;

  xor gate1 (w1,A,B);
  xor gate2 (D,w1,C);
  
  not gate3 (w2,A);
  not gate4 (w3,w1);

  and gate5 (w4,w2,B);
  and gate6 (w5,w3,C);

  or gate7 (Bo,w4,w5);

endmodule
