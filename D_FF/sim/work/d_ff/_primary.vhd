library verilog;
use verilog.vl_types.all;
entity d_ff is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        d               : in     vl_logic;
        qn              : out    vl_logic
    );
end d_ff;
