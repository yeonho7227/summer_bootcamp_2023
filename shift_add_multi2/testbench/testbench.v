module testbench();

reg clk;
reg n_rst;
reg [3:0] a;
reg [3:0] b;

wire [7:0] product;

shift_add_multi2 u_shift_add_multi2(
    .clk(clk),
    .n_rst(n_rst),
    .a(a),
    .b(b),
    .product(product)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    a = 4'b0011;
    b = 4'b0010;
    #50;
    a = 4'b0100;
    b = 4'b0011;
    #50;
    $stop;
end

endmodule

