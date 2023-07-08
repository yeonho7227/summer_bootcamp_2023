library verilog;
use verilog.vl_types.all;
entity ring2_cnt is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        result0         : out    vl_logic;
        result1         : out    vl_logic;
        result2         : out    vl_logic;
        result3         : out    vl_logic
    );
end ring2_cnt;
