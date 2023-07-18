library verilog;
use verilog.vl_types.all;
entity non_restore_divider is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : in     vl_logic_vector(3 downto 0);
        M               : in     vl_logic_vector(3 downto 0);
        Q_product       : out    vl_logic_vector(3 downto 0);
        R_product       : out    vl_logic_vector(4 downto 0);
        start           : in     vl_logic
    );
end non_restore_divider;
