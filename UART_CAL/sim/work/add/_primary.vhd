library verilog;
use verilog.vl_types.all;
entity add is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        src1            : in     vl_logic_vector(15 downto 0);
        src2            : in     vl_logic_vector(15 downto 0);
        add_done        : out    vl_logic;
        calc_res        : out    vl_logic_vector(31 downto 0);
        parser_done     : in     vl_logic
    );
end add;
