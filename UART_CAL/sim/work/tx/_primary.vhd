library verilog;
use verilog.vl_types.all;
entity tx is
    generic(
        CNTEND          : vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        uout_valid      : in     vl_logic;
        txd             : out    vl_logic;
        tx_data         : in     vl_logic_vector(7 downto 0);
        tx_valid        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CNTEND : constant is 1;
end tx;
