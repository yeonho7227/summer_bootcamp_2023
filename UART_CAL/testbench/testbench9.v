module testbench9 ();

reg clk;
reg n_rst;
reg [3:0] dtype;
reg [4:0] operator;
reg [15:0] src1;
reg [15:0] src2;
reg parser_done;

wire [32:0] calc_res;
wire alu_done;

booth u_booth(
    .clk(clk),
    .n_rst(n_rst),
    .dtype(dtype),
    .operator(operator),
    .src2(src2),
    .src1(src1),
    .calc_res(calc_res),
    .parser_done(parser_done),
    .alu_done(alu_done)
);


always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end


initial begin
    parser_done = 1'b1;
    dtype = 4'h1;
    operator = 5'h03;
    src1 = 16'h0008;
    src2 = 16'h0002;
    #30;
/*
    parser_done = 1'b1;
    dtype = 4'h1;
    operator = 5'h03;
    src1 = 16'h0008;
    src2 = 16'h0002;
    #21;
    */
    parser_done = 1'b0;
    #200;
    $stop;
end

endmodule