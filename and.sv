module and2_1bit(a,b,c);
  input a,b;
  output c;
  parameter Tpd = 10;
  assign #(Tpd) c = a&b;
endmodule
