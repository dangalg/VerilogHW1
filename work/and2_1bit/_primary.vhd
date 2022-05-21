library verilog;
use verilog.vl_types.all;
entity and2_1bit is
    generic(
        Tpd             : integer := 10
    );
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end and2_1bit;
