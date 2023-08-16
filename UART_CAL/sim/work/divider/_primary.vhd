library verilog;
use verilog.vl_types.all;
entity divider is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : in     vl_logic_vector(15 downto 0);
        M               : in     vl_logic_vector(15 downto 0);
        Q_product       : out    vl_logic_vector(15 downto 0);
        R_product       : out    vl_logic_vector(16 downto 0);
        parser_done     : in     vl_logic;
        divider_done    : out    vl_logic
    );
end divider;
