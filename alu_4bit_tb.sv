/************************************************************************
 * Example testbench: instantiates 4 basic logic gates and applies      *
 * stimulus to the gate inputs. Prints out the outputs using $display   *
 * function.                                                            *
 ************************************************************************/
module ALU_4BIT_TB();

// Signal declarations
// ===================

// Gate output wires
wire z;
wire cout;

// Gate inputs - declared as registers, since we need them to 'remember'
// values
reg [3:0] a; 
reg [3:0] b;
reg [1:0] s_op;
reg cin;

// The test bench: try 2 different input combinations at 2 different points
// of time - change values : 00 to 11 to 00 after 10 time units.
// ====================================================================
initial
begin
  	$dumpfile("simulation.vcd");
    $dumpvars(1);
    
    s_op[0] = 1'b0;
    s_op[1] = 1'b0;
    a = 4'b0010;
    b = 4'b0010;
    cin = 1'b0;
    #10
    s_op[0] = 1'b1;
    s_op[1] = 1'b0;
    a = 4'b0010;
    b = 4'b0011;
    cin = 1'b1;
    #10
    s_op[0] = 1'b0;
    s_op[1] = 1'b1;
    a = 4'b0010;
    b = 4'b0010;
    cin = 1'b1;
    #10
    s_op[0] = 1'b1;
    s_op[1] = 1'b1;
    a = 4'b0010;
    b = 4'b0110;
    cin = 1'b1;
    
end

// Gate instantiations
// ===================

// For this gate we use the default delays with: Tpdlh=1 and Tpdhl=1
alu_4bit  alu4_de(.z(z), .cout(cout), .a(a), .b(b), .cin(cin), .s_op(s_op));

// Print out the output values on every change
// ===========================================
always @(*)
    $display("%t: outputs changed to %d", $time, z);

endmodule

