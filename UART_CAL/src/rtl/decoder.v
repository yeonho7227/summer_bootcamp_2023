module decoder(
    clk,
    n_rst,
    data,
    start,
    dtype,
    operator,
    src1,
    src2,
    parser_done
);

input clk,
input n_rst,
input [7:0] data;
input data_valid;

output reg [3:0] dtype;
output reg [4:0] operator;
output reg [15:0] src1;
output reg [15:0] src2;
output parser_done;

endmodule