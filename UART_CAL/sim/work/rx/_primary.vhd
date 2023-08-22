library verilog;
use verilog.vl_types.all;
entity rx is
    generic(
        CNTEND          : vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        rxd             : in     vl_logic;
        rx_data         : out    vl_logic_vector(7 downto 0);
        rx_valid        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CNTEND : constant is 1;
end rx;
