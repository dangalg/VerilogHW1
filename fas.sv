module fas(s, cout, a, b, cin, s_op);//a=1,b=1,cin=0,s_op=1
  input a, b, cin, s_op;
  wire bxs_op, axbxs_op, cinaxbxs_op, abxs_op, coutnor;
  output cout, s;
  parameter Tpd = 1;
    xor2_1bit xor1(.c(bxs_op), .b(b), .a(s_op));//bxs_op = 0
    xor2_1bit xor2(.c(axbxs_op), .b(a), .a(bxs_op));// axbxs_op = 1
    xor2_1bit xor3(.c(s), .b(cin), .a(axbxs_op));// s = 1
    and2_1bit and1(.c(cinaxbxs_op), .b(cin), .a(axbxs_op)); // cinaxbxs_op = 1
    and2_1bit and2(.c(abxs_op), .b(a), .a(bxs_op)); // abxs_op = 0
    nor2_1bit nor1(.c(coutnor), .b(cinaxbxs_op), .a(abxs_op));// coutnor = 1
    nor2_1bit nor2(.c(cout), .b(coutnor), .a(coutnor)); // cout = 0
endmodule


module fasrip(s, cout, a, b, cin, s_op);
  input wire [3:0] a; 
  input wire [3:0] b;
  input cin, s_op;
  wire cout0,cout1,cout2;
  output cout;
  output wire [3:0] s;
  parameter Tpd = 1;
    fas fas1(s[0], cout0, a[0], b[0], cin, s_op);
    fas fas2(s[1], cout1, a[1], b[1], cout0, s_op);
    fas fas3(s[2], cout2, a[2], b[2], cout1, s_op);
    fas fas4(s[3], cout, a[3], b[3], cout2, s_op);
endmodule
