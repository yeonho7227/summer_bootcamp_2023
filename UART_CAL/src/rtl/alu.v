module alu (
    clk,
    n_rst,
    dtype,
    operator,
    src1,
    src2,
    parser_done,
    alu_done,
    calc_res
);

input clk;
input n_rst;
input [3:0] dtype;
input [4:0] operator;
input [15:0] src1;
input [15:0] src2;
input parser_done;

output reg alu_done;
output reg [31:0] calc_res;


add u_Add(  // 32bit 
    .clk(clk),
    .n_rst(n_rst),
    .a(src1),
    .b(src2),
    .result(calc_res)
);

substraction u_substraction( // 4bit 
    clk(clk),
    n_rst(n_rst),
    a(src1),
    b(src2),
    result(calc_res)
);

shift_add_multi u_shift_add_multi( // 4bit 
    clk(clk),
    n_rst(n_rst),
    a(src1),
    b(src2),
    product(calc_res),
    start()
);

booth u_booth(
    clk(clk),
    n_rst(n_rst),
    Q(src2),
    M(src1),
    product(calc_res),
    start()
);

non_restore_divider u_non_restore_divider(
    clk(clk),
    n_rst(n_rst),
    Q(src2),
    M(src1),
    Q_product(calc_res),
    R_product(),
    start()
);

endmodule