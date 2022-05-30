module xor2_1bit(a,b,c);
  input a,b;
  output c;
  parameter Tpd = 5;
  assign #(Tpd) c = a^b;
endmodule
