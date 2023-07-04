module testbench();

reg clk;
reg n_rst;
reg d;

wire qn;

d_ff u_d_ff(
    .clk(clk),
    .n_rst(n_rst),
    .d(d),
    .qn(qn)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin

    d = 1'b0;
    #20;
    d = 1'b1;
    #20;
    d = 1'b0;
    #20;
    d = 1'b1;
    #20;
    $stop;
end

endmodule

