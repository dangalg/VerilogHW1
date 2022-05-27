library verilog;
use verilog.vl_types.all;
entity mux_2bit is
    generic(
        Tpd             : integer := 1
    );
    port(
        z               : out    vl_logic;
        s1              : in     vl_logic;
        d0              : in     vl_logic;
        d1              : in     vl_logic
    );
end mux_2bit;
