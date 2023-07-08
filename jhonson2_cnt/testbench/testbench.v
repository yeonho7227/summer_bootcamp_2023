module testbench();

reg clk;
reg n_rst;

wire result0;
wire result1;
wire result2;
wire result3;

jhonson2_cnt u_jhonson2_cnt(
    .clk(clk),
    .n_rst(n_rst),
    .result0(result0),
    .result1(result1),
    .result2(result2),
    .result3(result3)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin
    #200;
    $stop;
end

endmodule

