library verilog;
use verilog.vl_types.all;
entity uart is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        rxd             : in     vl_logic;
        rx_data         : out    vl_logic_vector(7 downto 0);
        rx_valid        : out    vl_logic;
        txd             : out    vl_logic;
        tx_data         : in     vl_logic_vector(7 downto 0);
        tx_valid        : out    vl_logic;
        uout_valid      : in     vl_logic
    );
end uart;
