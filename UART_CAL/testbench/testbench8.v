module testbench8 ();

reg clk;
reg n_rst;
reg [3:0] dtype;
reg [4:0] operator;
reg [15:0] src1;
reg [15:0] src2;
reg parser_done;

wire [32:0] calc_res;
wire alu_done;

shift_add_multi u_shift_add_multi(
    .clk(clk),
    .n_rst(n_rst),
    .src2(src2),
    .src1(src1),
    .calc_res(calc_res),
    .parser_done(parser_done),
    .multi_done(multi_done)
);


always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end


initial begin
    parser_done = 1'b0;
    src1 = 16'b0000;
    src2 = 16'b0000;
    #30;

    parser_done = 1'b1;
    src1 = 16'h0009;
    src2 = 16'h0002;
    #50;
    parser_done = 1'b0;
    #30;
    $stop;
end

endmodule