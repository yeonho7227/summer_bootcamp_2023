module alu (
    clk,
    n_rst,
    dtype,
    operator,
    src1,
    src2,
    parser_done,
    alu_done,
    calc_res,
);

input clk;
input n_rst;
input [3:0] dtype;
input [4:0] operator;
input [15:0] src1;
input [15:0] src2;
input parser_done;

output alu_done;
output [31:0] calc_res;
reg [3:0] start_alu;

reg [31:0] calc_res_add_q;
reg [31:0] calc_res_substraction_q;
reg [31:0] calc_res_multi_q;
reg [31:0] calc_res_booth_q;
reg [31:0] calc_res_divider_q;

wire add_done;
wire substraction_done;

/*
//always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        start_alu = 4'h0;
    end
    else if ((dtype == 4'h1) && (operator == 5'h01) && (parser_done == 1'b1)) begin 
        start_alu = 4'h1; //s +
    end
    else if ((dtype == 4'h1) && (operator == 5'h02) && (parser_done == 1'b1)) begin
        start_alu = 4'h2; //s -
    end
    else if ((dtype == 4'h1) && (operator == 5'h03) && (parser_done == 1'b1)) begin
        start_alu = 4'h3; //s *
    end
    else if ((dtype == 4'h1) && (operator == 5'h04) && (parser_done == 1'b1)) begin
        start_alu = 4'h4; //s /
    end
    else if ((dtype == 4'h2) && (operator == 5'h01) && (parser_done == 1'b1)) begin
        start_alu = 4'h5; //u +
    end
    else if ((dtype == 4'h2) && (operator == 5'h02) && (parser_done == 1'b1)) begin
        start_alu = 4'h6; //u -
    end
    else if ((dtype == 4'h2) && (operator == 5'h03) && (parser_done == 1'b1)) begin
        start_alu = 4'h7; //u *
    end
    else if ((dtype == 4'h2) && (operator == 5'h04) && (parser_done == 1'b1)) begin
        start_alu = 4'h8; //u /
    end
//end
*/

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        calc_res_add_q <= 32'h00000000;
        calc_res_substraction_q <= 32'h00000000;
    end
    else if ((dtype == 4'h1) && (operator == 5'h01) && (parser_done == 1'b1)) begin 
        calc_res_add_q <= 32'h00000001; //s +
    end
    else if ((dtype == 4'h1) && (operator == 5'h02) && (parser_done == 1'b1)) begin
        calc_res_substraction_q <= 32'h00000002; //s -
    end
    else if ((dtype == 4'h1) && (operator == 5'h03) && (parser_done == 1'b1)) begin
        start_alu <= 4'h3; //s *
    end
    else if ((dtype == 4'h1) && (operator == 5'h04) && (parser_done == 1'b1)) begin
        start_alu <= 4'h4; //s /
    end
    else if ((dtype == 4'h2) && (operator == 5'h01) && (parser_done == 1'b1)) begin
        calc_res_add_q <= 32'h00000005; //u +
    end
    else if ((dtype == 4'h2) && (operator == 5'h02) && (parser_done == 1'b1)) begin
        calc_res_substraction_q <= 32'h00000006; //u -
    end
    else if ((dtype == 4'h2) && (operator == 5'h03) && (parser_done == 1'b1)) begin
        start_alu <= 4'h7; //u *
    end
    else if ((dtype == 4'h2) && (operator == 5'h04) && (parser_done == 1'b1)) begin
        start_alu <= 4'h8; //u /
    end
end

wire calc_res_add = calc_res_add_q;
wire calc_res_substraction = calc_res_substraction_q;
wire calc_res_multi = calc_res_multi_q;
wire calc_res_booth = calc_res_booth_q;
wire calc_res_divider = calc_res_divider_q;

add u_add(
    .clk(clk),
    .n_rst(n_rst),
    .src1(src1),
    .src2(src2),
    .add_done(add_done),
    .calc_res(calc_res_add),
    .parser_done(parser_done)
);


substraction u_substraction(
    .clk(clk),
    .n_rst(n_rst),
    .src1(src1),
    .src2(src2),
    .substraction_done(substraction_done),
    .calc_res(calc_res_substraction),
    .parser_done(parser_done)
);

/*
shift_add_multi u_shift_add_multi( // 16bit unsign
    .clk(clk),
    .n_rst(n_rst),
    .a(src1),
    .b(src2),
    .product(calc_res),
    .start(parser_done)
);

booth u_booth( //sign 6bit
    .clk(clk),
    .n_rst(n_rst),
    .Q(src2),
    .M(src1),
    .product(calc_res),
    .start(parser_done)
);

non_restore_divider u_non_restore_divider( //unsign 4bit
    .clk(clk),
    .n_rst(n_rst),
    .Q(src2),
    .M(src1),
    .Q_product(calc_res),
    .R_product(),
    .start(parser_done)
);*/

assign alu_done = ((add_done == 1'b1) || (substraction_done == 1'b1)) ? 1'b1 : 1'b0;

endmodule