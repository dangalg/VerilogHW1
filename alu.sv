//module alu_1bit(s, cout, a, b, cin, s_op);
 // input a, b, cin, 
 // input [1:0] s_op;
 // output [3:0] cout;
  //output s;
//  parameter Tpd = 1;
 //   fas fas1(.s(s), .cout(cout[0]), .a(a), .b(b), .cin(cin), .s_op(s_op[0]));
 //   and2_1bit and1(.a(a),.b(b),.c(cout[1]));
 //   nor2_1bit nor1(.a(a),.b(b),.c(cout[2]));
    //mux_4bit mux1(.z(),.s1(),.s2(),.d0(),.d1(),.d2(),.d3());
//endmodule

//module alu_4bit(s, cout, a, b, cin, s_op);
//  input a, b, cin, s_op;
//  wire op_nand, op_nor, op_sum, op_sub;
//  output cout, s;
 // parameter Tpd = 1;
 //   mux_4bit mux1(.z(),.s1(a),.s2(b),.d0(op_nand),.d1(op_nor),.d2(op_sum),.d3(op_sub));
 //   fas fas1(.s(s), .cout(cout), .a(a), .b(b), .cin(cin), .s_op(s_op));
//endmodule