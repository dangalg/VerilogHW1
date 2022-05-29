/************************************************************************
 * Example testbench: instantiates 4 basic logic gates and applies      *
 * stimulus to the gate inputs. Prints out the outputs using $display   *
 * function.                                                            *
 ************************************************************************/
module MUX4_TB();

// Signal declarations
// ===================

// Gate output wires
wire z;

// Gate inputs - declared as registers, since we need them to 'remember'
// values
reg d0, d1, d2, d3, s0, s1;

// The test bench: try 2 different input combinations at 2 different points
// of time - change values : 00 to 11 to 00 after 10 time units.
// ====================================================================
initial
begin
  	$dumpfile("simulation.vcd");
    $dumpvars(1);
    
    s0 = 1'b0;
    s1 = 1'b0;
    d0 = 1'b0;
    d1 = 1'b0;
    d2 = 1'b0;
    d3 = 1'b0;
    #10
    s0 = 1'b0;
    s1 = 1'b1;
    d0 = 1'b0;
    d1 = 1'b0;
    d2 = 1'b1;
    d3 = 1'b0;
    
end

// Gate instantiations
// ===================

// For this gate we use the default delays with: Tpdlh=1 and Tpdhl=1
mux_4bit  mux4_de ( .z(z), .s0(s0), .s1(s1), .d0(d0), .d1(d1),.d2(d2), .d3(d3) );

// Print out the output values on every change
// ===========================================
always @(*)
    $display("%t: outputs changed to %d", $time, z);

endmodule
