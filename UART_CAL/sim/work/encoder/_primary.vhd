library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        alu_done        : in     vl_logic;
        calc_res        : in     vl_logic_vector(31 downto 0);
        tx_data         : out    vl_logic_vector(7 downto 0);
        uout_valid      : out    vl_logic
    );
end encoder;
