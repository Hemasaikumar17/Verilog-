module hs (a,b,borrow,diff);
  input a,b;
  output borrow,diff;


  /*one - delay
  xor #(5) gate1(borrow,a,b);
  and #(4) gate2(diff,~a,b);*/
  
  
  //two -delay
  xor #(5,4) gate1(borrow,a,b);
  and #(3,2) gate2(diff,~a,b);

  

endmodule  
