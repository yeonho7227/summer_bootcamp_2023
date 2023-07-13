module testbench();

reg clk;
reg n_rst;
reg [5:0] Q;
reg [5:0] M;
reg start;

wire [11:0] product;

booth u_booth(
    .clk(clk),
    .n_rst(n_rst),
    .Q(Q),
    .M(M),
    .product(product),
    .start(start)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    start = 1'b0;
    Q = 6'b011110;
    M = 6'b110100;
    #21;
    start = 1'b1;
    #100;
    $stop;
end

endmodule

