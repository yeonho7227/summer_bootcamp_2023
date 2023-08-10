library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        dtype           : in     vl_logic_vector(3 downto 0);
        operator        : in     vl_logic_vector(4 downto 0);
        src1            : in     vl_logic_vector(15 downto 0);
        src2            : in     vl_logic_vector(15 downto 0);
        parser_done     : in     vl_logic;
        alu_done        : out    vl_logic;
        calc_res        : out    vl_logic_vector(31 downto 0)
    );
end alu;
