module testbench9 ();

reg clk;
reg n_rst;
reg [15:0] src1;
reg [15:0] src2;
reg parser_done;

wire [32:0] calc_res;
wire booth_done;

booth u_booth(
    .clk(clk),
    .n_rst(n_rst),
    .src1(src1),
    .src2(src2),
    .calc_res(calc_res_booth),
    .parser_done(parser_done),
    .booth_done(booth_done)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    parser_done = 1'b0;
    src1 = 16'b0000000000000000;
    src2 = 16'b0000000000000000;
    #30;

    parser_done = 1'b1;

    src2 = 16'b1111111111111011;
    src1 = 16'b0000000000000110;
    #200;
    parser_done = 1'b0;
    #50;
    $stop;
end

endmodule

/*
module testbench9();

reg clk;
reg n_rst;
reg [15:0] src2;
reg [15:0] src1;
reg parser_done;

wire [31:0] calc_res;

booth u_booth(
    .clk(clk),
    .n_rst(n_rst),
    .src2(src2),
    .src1(src1),
    .calc_res(calc_res),
    .parser_done(parser_done)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    parser_done = 1'b0;
    src2 = 16'b1111111111111011;
    src1 = 16'b0000000000000110;
    #300;
    parser_done = 1'b1;
    #300;
    $stop;
end

endmodule

*/