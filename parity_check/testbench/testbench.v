module testbench();

reg clk;
reg n_rst;
reg x;
reg y;
reg z;

wire result;

parity_check u_parity_check(
    .clk(clk),
    .n_rst(n_rst),
    .x(x),
    .y(y),
    .z(z),
    .result(result)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #10 n_rst = 1'b1;
end

initial begin
    x = 0;
    y = 0;
    z = 0;
    #20;
    x = 0;
    y = 0;
    z = 1;
    #20;
    x = 0;
    y = 1;
    z = 1;
    #20;
    x = 0;
    y = 1;
    z = 0;
    #20;

    $stop;
end

endmodule

