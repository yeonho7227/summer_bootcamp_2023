library verilog;
use verilog.vl_types.all;
entity parity_check is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        result          : out    vl_logic
    );
end parity_check;
