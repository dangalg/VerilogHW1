library verilog;
use verilog.vl_types.all;
entity alu_4bit is
    generic(
        Tpd             : integer := 1
    );
    port(
        z               : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        s_op            : in     vl_logic_vector(1 downto 0)
    );
end alu_4bit;
