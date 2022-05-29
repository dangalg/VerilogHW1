library verilog;
use verilog.vl_types.all;
entity fas4bit is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        s_op            : in     vl_logic;
        cout            : out    vl_logic;
        s               : out    vl_logic_vector(3 downto 0)
    );
end fas4bit;
