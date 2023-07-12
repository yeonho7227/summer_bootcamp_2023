library verilog;
use verilog.vl_types.all;
entity booth is
    generic(
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S0              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        S1              : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        S2              : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        S3              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S4              : vl_logic_vector(0 to 1) := (Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : in     vl_logic_vector(5 downto 0);
        M               : in     vl_logic_vector(5 downto 0);
        product         : out    vl_logic_vector(11 downto 0);
        start           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
end booth;
