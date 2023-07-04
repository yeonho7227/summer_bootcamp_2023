module testbench();

reg clk;
reg n_rst;
reg j;
reg k;

wire qn;

jk_ff u_jk_ff(
    .clk(clk),
    .n_rst(n_rst),
    .j(j),
    .k(k),
    .qn(qn)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin


    j = 1'b0;
    k = 1'b0;
    #20;
    j = 1'b1;
    k = 1'b0;
    #20;
    j = 1'b0;
    k = 1'b1;
    #20;
    j = 1'b1;
    k = 1'b1;
    #20;
    $stop;
end

endmodule

