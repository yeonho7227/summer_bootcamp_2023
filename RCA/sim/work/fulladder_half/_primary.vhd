library verilog;
use verilog.vl_types.all;
entity fulladder_half is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        sum             : out    vl_logic;
        cout            : out    vl_logic
    );
end fulladder_half;
