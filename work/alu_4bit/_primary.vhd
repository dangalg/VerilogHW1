library verilog;
use verilog.vl_types.all;
entity alu_4bit is
    generic(
        Tpd             : integer := 1
    );
    port(
        s               : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        s_op            : in     vl_logic
    );
end alu_4bit;
