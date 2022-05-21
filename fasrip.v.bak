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
