library verilog;
use verilog.vl_types.all;
entity substraction is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic_vector(3 downto 0)
    );
end substraction;
