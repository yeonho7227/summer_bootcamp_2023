module testbench();

reg clk;
reg n_rst;
reg start;


wire [7:0] data;
wire data_valid;

uart u_uart(
    .clk(clk),
    .n_rst(n_rst),
    .start(start),
    .data(data),
    .data_valid(data_valid)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    start = 1'b1;
    #21;
    start = 1'b0;
    #3000;
    $stop;
end

endmodule

