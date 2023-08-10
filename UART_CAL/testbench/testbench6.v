module testbench6 ();

reg clk;
reg n_rst;
reg [15:0] src1; 
reg [15:0] src2;
reg [3:0] start_alu;

wire add_done; 
wire [31:0] calc_res;

add u_add(
    .clk(clk),
    .n_rst(n_rst),
    .src1(src1),
    .src2(src2),
    .add_done(add_done),
    .calc_res(calc_res),
    .start_alu(start_alu)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end


initial begin
    start_alu = 4'h0;
    src1 = 16'h0000;
    src2 = 16'h0000;
    #30;

    start_alu = 4'h1;
    src1 = 16'h0009;
    src2 = 16'h0001;
    #30;

    start_alu = 4'h2;
    src1 = 16'h0006;
    src2 = 16'h0002;
    #30;

    start_alu = 4'h5;
    src1 = 16'h0005;
    src2 = 16'h0003;
    #30;
    $stop;
end

endmodule