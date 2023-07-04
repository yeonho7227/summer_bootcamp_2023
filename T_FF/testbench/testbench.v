module testbench();

reg clk;
reg n_rst;
reg t;

wire qn;

t_ff u_t_ff(
    .clk(clk),
    .n_rst(n_rst),
    .t(t),
    .qn(qn)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin

    t = 1'b0;
    #20;
    t = 1'b1;
    #20;
    t = 1'b0;
    #20;
    t = 1'b1;
    #20;
    $stop;
end

endmodule

