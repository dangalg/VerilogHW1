module FULLADDERTB();
  wire ts,tcout;
	reg ta,tb,tcin,ts_op;
  parameter delay = 15; //delay between input changes
  initial
begin
  	$dumpfile("simulation.vcd");
    $dumpvars(1);
  
  
    ta = 1'b1;	//01 - cin =1
    tb = 1'b1;
  	tcin = 1'b0;
  	ts_op = 1'b0;
    #delay;
  
    ta = 1'b1;	//10 - cin =1
    tb = 1'b0;
	tcin = 1'b0;
  	ts_op = 1'b0;

    #delay;

  	ta = 1'b1;	//00 - cin =1
    tb = 1'b1;
  	tcin = 1'b0;
  	ts_op = 1'b0;

    #delay;
  
  	ta = 1'b1;	//10 - cin =0
    tb = 1'b0;
	tcin = 1'b1;
  	ts_op = 1'b1;

    #delay;
end
  
 fas1bit fa1(.a(ta), .b(tb), .s_op(ts_op), .cin(tcin), .cout(tcout), .s(ts) );
  
//always @(*)
 
  
endmodule
