library verilog;
use verilog.vl_types.all;
entity nor2_1bit is
    generic(
        Tpd             : integer := 2
    );
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end nor2_1bit;
