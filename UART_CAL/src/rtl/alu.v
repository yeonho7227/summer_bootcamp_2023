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

reg [3:0] calc_res_q;


reg add_done_q;
reg substraction_done_q;
reg multi_done_q;
reg booth_done_q;
reg divider_done_q;
reg signdivider_done_q;

wire add_done;
wire substraction_done;
wire multi_done;
wire booth_done;
wire divider_done;
wire signdivider_done;


reg start_add;
reg start_substraction;
reg start_multi;
reg start_booth;
reg start_divider;
reg start_signdivider;

/*
wire start_add;
wire start_substraction;
wire start_multi;
wire start_booth;
wire start_divider;
wire start_signdivider;
*/

/*
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        start_add <= 1'b0;
        start_substraction <= 1'b0;
        start_multi <= 1'b0;
        start_booth <= 1'b0;
        start_divider <= 1'b0;
        start_signdivider <= 1'b0;
    end
    else if ((calc_res_q == 4'h1) || (calc_res_q == 4'h5)) begin
        start_add <= 1'b1;
        start_substraction <= 1'b0;
        start_multi <= 1'b0;
        start_booth <= 1'b0;
        start_divider <= 1'b0;
        start_signdivider <= 1'b0;
    end
    else if ((calc_res_q == 4'h2) || (calc_res_q == 4'h6)) begin
        start_add <= 1'b0;
        start_substraction <= 1'b1;
        start_multi <= 1'b0;
        start_booth <= 1'b0;
        start_divider <= 1'b0;
        start_signdivider <= 1'b0;
    end
    else if (calc_res_q == 4'h3) begin
        start_add <= 1'b0;
        start_substraction <= 1'b0;
        start_multi <= 1'b0;
        start_booth <= 1'b1;
        start_divider <= 1'b0;
        start_signdivider <= 1'b0;

    end
    else if (calc_res_q == 4'h4) begin
        start_add <= 1'b0;
        start_substraction <= 1'b0;
        start_multi <= 1'b0;
        start_booth <= 1'b0;
        start_divider <= 1'b0;
        start_signdivider <= 1'b1;
    end
    else if (calc_res_q == 4'h7) begin
        start_add <= 1'b0;
        start_substraction <= 1'b0;
        start_multi <= 1'b1;
        start_booth <= 1'b0;
        start_divider <= 1'b0;
        start_signdivider <= 1'b0;
    end
    else if (calc_res_q == 4'h8) begin
        start_add <= 1'b0;
        start_substraction <= 1'b0;
        start_multi <= 1'b0;
        start_booth <= 1'b0;
        start_divider <= 1'b1;
        start_signdivider <= 1'b0;
    end
end
*/

always @(*) begin
    if ((calc_res_q == 4'h1) || (calc_res_q == 4'h5)) begin
        start_add = 1'b1;
        start_substraction = 1'b0;
        start_multi = 1'b0;
        start_booth = 1'b0;
        start_divider = 1'b0;
        start_signdivider = 1'b0;
    end
    else if ((calc_res_q == 4'h2) || (calc_res_q == 4'h6)) begin
        start_add = 1'b0;
        start_substraction = 1'b1;
        start_multi = 1'b0;
        start_booth = 1'b0;
        start_divider = 1'b0;
        start_signdivider = 1'b0;
    end
    else if (calc_res_q == 4'h3) begin
        start_add = 1'b0;
        start_substraction = 1'b0;
        start_multi = 1'b0;
        start_booth = 1'b1;
        start_divider = 1'b0;
        start_signdivider = 1'b0;
    end
    else if (calc_res_q == 4'h4) begin
        start_add = 1'b0;
        start_substraction = 1'b0;
        start_multi = 1'b0;
        start_booth = 1'b0;
        start_divider = 1'b0;
        start_signdivider = 1'b1;
    end
    else if (calc_res_q == 4'h7) begin
        start_add = 1'b0;
        start_substraction = 1'b0;
        start_multi = 1'b1;
        start_booth = 1'b0;
        start_divider = 1'b0;
        start_signdivider = 1'b0;
    end
    else if (calc_res_q == 4'h8) begin
        start_add = 1'b0;
        start_substraction = 1'b0;
        start_multi = 1'b0;
        start_booth = 1'b0;
        start_divider = 1'b1;
        start_signdivider = 1'b0;
    end
    else begin
        start_add = 1'b0;
        start_substraction = 1'b0;
        start_multi = 1'b0;
        start_booth = 1'b0;
        start_divider = 1'b0;
        start_signdivider = 1'b0;
    end
end


always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        calc_res_q <= 4'h0;
    end
    else if ((dtype == 4'h1) && (operator == 5'h01) && (parser_done == 1'b1)) begin 
        calc_res_q <= 4'h1; //s +
    end
    else if ((dtype == 4'h1) && (operator == 5'h02) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h2; //s -
    end
    else if ((dtype == 4'h1) && (operator == 5'h03) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h3; //s *
    end
    else if ((dtype == 4'h1) && (operator == 5'h04) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h4; //s 
    end
    else if ((dtype == 4'h2) && (operator == 5'h01) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h5; //u +
    end
    else if ((dtype == 4'h2) && (operator == 5'h02) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h6; //u -
    end
    else if ((dtype == 4'h2) && (operator == 5'h03) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h7; //u *
    end
    else if ((dtype == 4'h2) && (operator == 5'h04) && (parser_done == 1'b1)) begin
        calc_res_q <= 4'h8; //u /
    end
end


wire [31:0] calc_res_add; 
wire [31:0] calc_res_substraction; 
wire [31:0] calc_res_multi;
wire [31:0] calc_res_booth;
wire [31:0] calc_res_divider;
wire [31:0] calc_res_signdivider;

add u_add(
    .clk(clk),
    .n_rst(n_rst),
    .src1(src1),
    .src2(src2),
    .add_done(add_done),
    .calc_res(calc_res_add),
    .parser_done(start_add)
);

substraction u_substraction(
    .clk(clk),
    .n_rst(n_rst),
    .src1(src1),
    .src2(src2),
    .substraction_done(substraction_done),
    .calc_res(calc_res_substraction),
    .parser_done(start_substraction)
);

shift_add_multi u_shift_add_multi (
    .clk(clk),
    .n_rst(n_rst),
    .src2(src2),
    .src1(src1),
    .calc_res(calc_res_multi),
    .parser_done(start_multi),
    .multi_done(multi_done)
);


booth u_booth(
    .clk(clk),
    .n_rst(n_rst),
    .src2(src2),
    .src1(src1),
    .calc_res(calc_res_booth),
    .parser_done(start_booth),
    .booth_done(booth_done)
);

divider u_divider(
    .clk(clk),
    .n_rst(n_rst),
    .Q(src1),
    .M(src2),
    .Q_product(calc_res_divider[31:16]),
    .R_product(calc_res_divider[15:0]),
    .parser_done(start_divider),
    .divider_done(divider_done)
);


assign calc_res = (((calc_res_q == 4'h1) || (calc_res_q == 4'h5)) && (alu_done == 1'b1)) ? calc_res_add :
                (((calc_res_q == 4'h2) || (calc_res_q == 4'h6)) && (alu_done == 1'b1)) ? calc_res_substraction :
                ((calc_res_q == 4'h3) && (alu_done == 1'b1)) ? calc_res_booth :
                ((calc_res_q == 4'h4) && (alu_done == 1'b1)) ? calc_res_signdivider : 
                ((calc_res_q == 4'h7) && (alu_done == 1'b1)) ? calc_res_multi :
                ((calc_res_q == 4'h8) && (alu_done == 1'b1)) ? calc_res_divider : 1'b0;



always @(*) begin
    if (((calc_res_q == 4'h1) || (calc_res_q == 4'h5)) && (add_done == 1'b1)) begin
        add_done_q = 1'b1;
        substraction_done_q = 1'b0;
        multi_done_q = 1'b0;
        booth_done_q = 1'b0;
        divider_done_q = 1'b0;
        signdivider_done_q = 1'b0;
    end
    else if (((calc_res_q == 4'h2) || (calc_res_q == 4'h6)) && (substraction_done == 1'b1)) begin
        add_done_q = 1'b0;
        substraction_done_q = 1'b1;
        multi_done_q = 1'b0;
        booth_done_q = 1'b0;
        divider_done_q = 1'b0;
        signdivider_done_q = 1'b0;
    end
    else if ((calc_res_q == 4'h3) && (booth_done == 1'b1)) begin
        add_done_q = 1'b0;
        substraction_done_q = 1'b0;
        multi_done_q = 1'b0;
        booth_done_q = 1'b1;
        divider_done_q = 1'b0;
        signdivider_done_q = 1'b0;
    end
    else if ((calc_res_q == 4'h4) && (signdivider_done == 1'b1)) begin
        add_done_q = 1'b0;
        substraction_done_q = 1'b0;
        multi_done_q = 1'b0;
        booth_done_q = 1'b0;
        divider_done_q = 1'b0;
        signdivider_done_q = 1'b1;
    end
    else if ((calc_res_q == 4'h7) && (multi_done == 1'b1)) begin
        add_done_q = 1'b0;
        substraction_done_q = 1'b0;
        multi_done_q = 1'b1;
        booth_done_q = 1'b0;
        divider_done_q = 1'b0;
        signdivider_done_q = 1'b0;
    end
    else if ((calc_res_q == 4'h8) && (divider_done == 1'b1)) begin
        add_done_q = 1'b0;
        substraction_done_q = 1'b0;
        multi_done_q = 1'b0;
        booth_done_q = 1'b0;
        divider_done_q = 1'b1;
        signdivider_done_q = 1'b0;
    end
    else begin
        add_done_q = 1'b0;
        substraction_done_q = 1'b0;
        multi_done_q = 1'b0;
        booth_done_q = 1'b0;
        divider_done_q = 1'b0;
        signdivider_done_q = 1'b0;
    end
end


assign alu_done = ((add_done_q == 1'b1) || (substraction_done_q == 1'b1) || (multi_done_q == 1'b1) 
                    || (booth_done_q == 1'b1) || (divider_done_q == 1'b1) ) ? 1'b1 : 1'b0;


endmodule