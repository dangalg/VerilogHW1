module fas(s, cout, a, b, cin, s_op);
  input a, b, cin, s_op;
  wire bxs_op, axbxs_op, cinaxbxs_op, abxs_op;
  output cout, s;
  parameter Tpd = 1;
    xor2_1bit xor1(.c(bxs_op), .b(b), .a(s_op));
    xor2_1bit xor2(.c(axbxs_op), .b(a), .a(bxs_op));
    and2_1bit and1(.c(cinaxbxs_op), .b(cin), .a(axbxs_op));
    and2_1bit and2(.c(abxs_op), .b(a), .a(bxs_op));
    xor2_1bit xor3(.c(cout), .b(cinaxbxs_op), .a(abxs_op));
    xor2_1bit xor4(.c(s), .b(cin), .a(axbxs_op));
endmodule