library verilog;
use verilog.vl_types.all;
entity shift_add_multi is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        product         : out    vl_logic_vector(7 downto 0);
        start           : in     vl_logic
    );
end shift_add_multi;
