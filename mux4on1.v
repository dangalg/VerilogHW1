module mux4on1(z,s1,s2,d0,d1,d2,d3);
  input d0,d1,d2,d3,s1,s2;
  wire mux1, mux2, mux1normux2;
  output z;
  parameter Tpd = 1;
    mux2on1 muxa(.z(mux1),.s1(s1),.d0(d0),.d1(d1));
    mux2on1 muxb(.z(mux2),.s1(s2),.d0(d2),.d1(d3));
    nor2_1bit nor1(.c(mux1normux2), .b(mux1), .a(mux2));
    nor2_1bit nor2(.c(z), .b(mux1normux2), .a(mux1normux2));
endmodule
