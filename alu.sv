module alu_1bit(z, cout, a, b, cin, s_op);
  input a, b, cin;
  input [1:0]s_op;
  output cout, z;
  wire ab, nandop, norop, fasout;
 parameter Tpd = 1;
    and2_1bit and1(.a(a),.b(b),.c(ab));
    nor2_1bit nor1(.a(nandop),.b(ab),.c(ab));
    nor2_1bit nor2(.a(a),.b(b),.c(norop));
    fas fas1(.s(fasout), .cout(cout), .a(a), .b(b), .cin(cin), .s_op(s_op[0]));
    mux_4bit mux1(.z(z),.s0(s_op[0]),.s1(s_op[1]),.d0(nandop),.d1(norop),.d2(fasout),.d3(fasout));
endmodule

module alu_4bit(z, cout, a, b, cin, s_op);
  input [3:0] a;
  input [3:0] b; 
  input [1:0] s_op; 
  input cin;
  wire [2:0] co;
  output cout; 
  output z;
  parameter Tpd = 1;
    alu_1bit alu1(.z(z), .cout(co[0]), .a(a[0]), .b(b[0]), .cin(cin), .s_op(s_op));
    //alu_1bit alu2(.z(z[1]), .cout(co[1]), .a(a[1]), .b(b[1]), .cin(co[0]), .s_op(s_op));
    //alu_1bit alu3(.z(z[2]), .cout(co[2]), .a(a[2]), .b(b[2]), .cin(co[1]), .s_op(s_op));
    //alu_1bit alu4(.z(z[3]), .cout(cout), .a(a[3]), .b(b[3]), .cin(co[2]), .s_op(s_op));
endmodule