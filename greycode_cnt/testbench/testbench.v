module testbench();

reg clk;
reg n_rst;

wire [2:0] data;

greycode_cnt u_greycode_cnt(
    .clk(clk),
    .n_rst(n_rst),
    .data(data)
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

