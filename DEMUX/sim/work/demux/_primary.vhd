library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        enable          : in     vl_logic;
        sig             : in     vl_logic_vector(1 downto 0);
        result0         : out    vl_logic;
        result1         : out    vl_logic;
        result2         : out    vl_logic;
        result3         : out    vl_logic
    );
end demux;
