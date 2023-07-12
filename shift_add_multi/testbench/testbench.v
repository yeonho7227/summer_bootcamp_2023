module testbench();

reg clk;
reg n_rst;
reg [3:0] a;
reg [3:0] b;
reg start;

wire [7:0] product;

shift_add_multi u_shift_add_multi(
    .clk(clk),
    .n_rst(n_rst),
    .a(a),
    .b(b),
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
    a = 4'b0011;
    b = 4'b0010;
    #21;
    start = 1'b1;
    #10;
    start = 1'b0;    
    #100;
    $stop;
end

endmodule

