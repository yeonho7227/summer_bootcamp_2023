library verilog;
use verilog.vl_types.all;
entity fulladder_4bit is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end fulladder_4bit;
