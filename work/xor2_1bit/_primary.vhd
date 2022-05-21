library verilog;
use verilog.vl_types.all;
entity xor2_1bit is
    generic(
        Tpd             : integer := 5
    );
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end xor2_1bit;
