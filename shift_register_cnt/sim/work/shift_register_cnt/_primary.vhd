library verilog;
use verilog.vl_types.all;
entity shift_register_cnt is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        \in\            : in     vl_logic;
        result0         : out    vl_logic;
        result1         : out    vl_logic;
        result2         : out    vl_logic;
        result3         : out    vl_logic
    );
end shift_register_cnt;
