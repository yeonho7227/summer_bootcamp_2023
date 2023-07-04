library verilog;
use verilog.vl_types.all;
entity binary_cnt is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        x               : in     vl_logic;
        data            : out    vl_logic_vector(2 downto 0)
    );
end binary_cnt;
