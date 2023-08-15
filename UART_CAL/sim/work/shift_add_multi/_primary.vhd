library verilog;
use verilog.vl_types.all;
entity shift_add_multi is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        src2            : in     vl_logic_vector(15 downto 0);
        src1            : in     vl_logic_vector(15 downto 0);
        calc_res        : out    vl_logic_vector(31 downto 0);
        parser_done     : in     vl_logic;
        multi_done      : out    vl_logic
    );
end shift_add_multi;
