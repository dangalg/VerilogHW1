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
  wire s0s1, d0s0s1,s0not,s1not, s0s1not, d1s0s1not,s0nots1,
        d2s0nots1,s0nots1not, d3s0nots1not, d0nord1, d0ord1, 
        d2nord3, d2ord3, d01nor23, d01or23;
  output z;
  parameter Tpd = 1;
  nor2_1bit nor1(.c(s0not), .b(s0), .a(s0));
  nor2_1bit nor2(.c(s1not), .b(s1), .a(s1));
  and2_1bit and1(.c(s0s1), .b(s0), .a(s1));
  and2_1bit and2(.c(d0s0s1), .b(s0s1), .a(d0));
  and2_1bit and3(.c(s0s1not), .b(s0), .a(s1not));
  and2_1bit and4(.c(d1s0s1not), .b(d1), .a(s0s1not));
  and2_1bit and5(.c(s0nots1), .b(s0not), .a(s1));
  and2_1bit and6(.c(d2s0nots1), .b(d2), .a(s0nots1));
  and2_1bit and7(.c(s0nots1not), .b(s0not), .a(s1not));
  and2_1bit and8(.c(d3s0nots1not), .b(d3), .a(s0nots1not));
  nor2_1bit nor3(.c(d0nord1), .b(d0), .a(d1));
  nor2_1bit nor4(.c(d0ord1), .b(d0nord1), .a(d0nord1));
  nor2_1bit nor5(.c(d2nord3), .b(d2), .a(d3));
  nor2_1bit nor6(.c(d2ord3), .b(d2nord3), .a(d2nord3));
  nor2_1bit nor7(.c(d01nord23), .b(d0ord1), .a(d2ord3));
  nor2_1bit nor8(.c(z), .b(d01nord23), .a(d01nord23));
endmodule

