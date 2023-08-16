module testbench10 ();

reg clk;
reg n_rst;
reg [15:0] Q;
reg [15:0] M;
reg parser_done;

wire [15:0] Q_product;
wire [16:0] R_product;

divider u_divider(
    .clk(clk),
    .n_rst(n_rst),
    .Q(Q),
    .M(M),
    .Q_product(Q_product),
    .R_product(R_product),
    .parser_done(parser_done)
);

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #5 clk = ~clk;

initial begin
    parser_done = 1'b0;
    Q = 16'b0000000000000000;
    M = 16'b0000000000000000;
    #21;

    parser_done = 1'b1;
    Q = 16'b0000000000000111;
    M = 16'b0000000000000011;
    #200;
    parser_done = 1'b0;
    #200;
    $stop;
end

endmodule


/*
module testbench10();

reg clk;
reg n_rst;
reg [3:0] Q;
reg [3:0] M;
reg start;

wire [3:0] Q_product;
wire [4:0] R_product;

divider u_divider(
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
    Q = 4'b0111;
    M = 4'b0011;
    #21;
    start = 1'b1;
    #100;
    $stop;
end

endmodule
*/