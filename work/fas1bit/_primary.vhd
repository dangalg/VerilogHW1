library verilog;
use verilog.vl_types.all;
entity fas1bit is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        s_op            : in     vl_logic;
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        s               : out    vl_logic
    );
end fas1bit;
