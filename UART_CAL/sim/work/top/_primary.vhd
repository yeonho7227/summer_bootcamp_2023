library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        rxd             : in     vl_logic;
        txd             : out    vl_logic;
        tx_valid        : out    vl_logic
    );
end top;
