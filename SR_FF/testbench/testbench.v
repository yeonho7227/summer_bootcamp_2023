module testbench();

reg clk;
reg n_rst;
reg s;
reg r;

wire qn;

sr_ff u_sr_ff(
    .clk(clk),
    .n_rst(n_rst),
    .s(s),
    .r(r),
    .qn(qn)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin


    s = 1'b0;
    r = 1'b0;
    #20;
    s = 1'b1;
    r = 1'b0;
    #20;
    s = 1'b0;
    r = 1'b1;
    #20;
    s = 1'b1;
    r = 1'b1;
    #20;
    $stop;
end

endmodule

