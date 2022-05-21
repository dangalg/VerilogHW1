
/************************************************************************
 * Example testbench: instantiates 4 basic logic gates and applies      *
 * stimulus to the gate inputs. Prints out the outputs using $display   *
 * function.                                                            *
 ************************************************************************/
module DEMO_TB_FAS();

// Signal declarations
// ===================

// Gate output wires
wire cout;
wire s;

// Gate inputs - declared as registers, since we need them to 'remember'
// values
reg a; 
reg b; 
reg cin, s_op;

// The test bench: try 2 different input combinations at 2 different points
// of time - change values : 00 to 11 to 00 after 10 time units.
// ====================================================================
initial
begin
  	$dumpfile("simulation.vcd");
    $dumpvars(1);
    
    a = 1'b1;
    b = 1'b1;
    cin = 1'b0;
    s_op = 1'b0;
end

// Gate instantiations
// ===================

// For this gate we use the default delays with: Tpdlh=1 and Tpdhl=1
fas fas_de(.s(s), .cout(cout), .a(a), .b(b), .cin(cin), .s_op(s_op));

// Print out the output values on every change
// ===========================================
always @(*)
    $display("%t: outputs changed to %d, %d", $time, cout,s);

endmodule