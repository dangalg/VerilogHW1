module mux_2bit(z,s1,d0,d1);
  input d0,d1,s1;
  wire s1not, d1s1, d0s1not,  d1s1nord0s1not;
  output z;
  parameter Tpd = 1;
  nor2_1bit nor1(.c(s1not), .b(s1), .a(s1));
  and2_1bit and1(.c(d1s1), .b(d1), .a(s1));
  and2_1bit and2(.c(d0s1not), .b(d0), .a(s1not));
  nor2_1bit nor2(.c(d1s1nord0s1not), .b(d0s1not), .a(d1s1));
  nor2_1bit nor3(.c(z), .b(d1s1nord0s1not), .a(d1s1nord0s1not));
endmodule

module mux_4bit(z,s0,s1,d0,d1,d2,d3);
  input d0,d1,d2,d3,s0,s1;
  wire muxaout, muxbout, res;
  output z;
  parameter Tpd = 1;
  mux_2bit muxa(.z(muxaout),.s1(s0),.d0(d0),.d1(d1));
  mux_2bit muxb(.z(muxbout),.s1(s0),.d0(d2),.d1(d3));
  mux_2bit muxc(.z(z),.s1(s1),.d0(muxaout),.d1(muxbout));
endmodule

