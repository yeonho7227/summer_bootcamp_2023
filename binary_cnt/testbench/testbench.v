module testbench();

reg clk;
reg n_rst;
reg x;

wire [2:0] data;

binary_cnt u_binary_cnt(
    .clk(clk),
    .n_rst(n_rst),
    .x(x),
    .data(data)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin
    x = 1'b1;
    #20;
    x = 1'b1;
    #10;
    x = 1'b0;
    #10;
    x = 1'b1;
    #10;
    $stop;
end

endmodule

