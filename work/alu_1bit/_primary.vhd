library verilog;
use verilog.vl_types.all;
entity alu_1bit is
    generic(
        Tpd             : integer := 1
    );
    port(
        z               : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        s_op            : in     vl_logic_vector(1 downto 0)
    );
end alu_1bit;
