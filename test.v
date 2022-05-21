module mux2to1_4(Sel, A, B, O);
  input wire Sel;
  input wire [3:0] A;
  input wire [3:0] B;
  output wire [3:0] O;
  mux2to1 mux0 (Sel, A[0], B[0], O[0]);
  mux2to1 mux1 (Sel, A[1], B[1], O[1]);
  mux2to1 mux2 (Sel, A[2], B[2], O[2]);
  mux2to1 mux3 (Sel, A[3], B[3], O[3]);
endmodule
