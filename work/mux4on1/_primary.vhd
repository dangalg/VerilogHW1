library verilog;
use verilog.vl_types.all;
entity mux4on1 is
    generic(
        Tpd             : integer := 1
    );
    port(
        z               : out    vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        d0              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        d3              : in     vl_logic
    );
end mux4on1;
