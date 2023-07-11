module testbench();

reg clk;
reg n_rst;
reg [3:0]a;
reg [3:0]b;

wire [3:0] result;

substraction u_substraction(
    .clk(clk),
    .n_rst(n_rst),
    .a(a),
    .b(b),
    .result(result)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end


initial begin
    a = 4'b0011;
    b = 4'b0001;
    #30;
    a = 4'b0101;
    b = 4'b0010;
    #30;
    
    $stop;
end

endmodule

