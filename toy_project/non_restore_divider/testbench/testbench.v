module testbench();

reg clk;
reg n_rst;
reg [3:0] Q;
reg [4:0] M;
reg start;

wire [3:0] Q_product;
wire [4:0] R_product;

non_restore_divider u_non_restore_divider(
    .clk(clk),
    .n_rst(n_rst),
    .Q(Q),
    .M(M),
    .Q_product(Q_product),
    .R_product(R_product),
    .start(start)
);

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #5 clk = ~clk;

initial begin
    start = 1'b0;
    Q = 4'b1111;
    M = 5'b01011;
    #21;
    start = 1'b1;
    #100;
    $stop;
end

endmodule

