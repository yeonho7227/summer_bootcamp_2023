library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(1 downto 0)
    );
end encoder;
