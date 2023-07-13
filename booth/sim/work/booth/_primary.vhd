library verilog;
use verilog.vl_types.all;
entity booth is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : in     vl_logic_vector(5 downto 0);
        M               : in     vl_logic_vector(5 downto 0);
        product         : out    vl_logic_vector(11 downto 0);
        start           : in     vl_logic
    );
end booth;
