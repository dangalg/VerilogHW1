library verilog;
use verilog.vl_types.all;
entity mux2to1_4 is
    port(
        Sel             : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        O               : out    vl_logic_vector(3 downto 0)
    );
end mux2to1_4;
