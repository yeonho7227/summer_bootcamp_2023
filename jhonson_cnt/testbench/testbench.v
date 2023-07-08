module testbench();

reg clk;
reg n_rst;
reg in;

wire result0;
wire result1;
wire result2;
wire result3;

jhonson_cnt u_jhonson_cnt(
    .clk(clk),
    .n_rst(n_rst),
    .in(in),
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
    in = 1'b1;
    #20;
    in = 1'b1;
    #20;
    in = 1'b0;
    #10;
    in = 1'b1;
    #20;
    
    $stop;
end

endmodule

