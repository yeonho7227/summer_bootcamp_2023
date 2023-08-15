`timescale 1ns/100ps
module testbench5 ();

reg clk;
reg n_rst;
reg [3:0] dtype;
reg [4:0] operator;
reg [15:0] src1;
reg [15:0] src2;
reg parser_done;

wire alu_done;
wire [31:0] calc_res;

alu u_alu (
    .clk(clk),
    .n_rst(n_rst),
    .dtype(dtype),
    .operator(operator),
    .src1(src1),
    .src2(src2),
    .parser_done(parser_done),
    .alu_done(alu_done),
    .calc_res(calc_res)
);

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #5 clk = ~clk;

initial begin
    parser_done = 1'b0;
    dtype = 4'h0;
    operator = 5'h00;
    src1 = 16'h0000;
    src2 = 16'h0000;
    #25;
    
    parser_done = 1'b1;
    dtype = 4'h2; //add
    operator = 5'h01;
    src1 = 16'h0007;
    src2 = 16'h0002;
    #25;
    parser_done = 1'b0;
    #25;

    parser_done = 1'b1;
    dtype = 4'h1; //substraction
    operator = 5'h02;
    src1 = 16'h0008;
    src2 = 16'h0004;
    #25;
    parser_done = 1'b0;
    #25;

    parser_done = 1'b1;
    dtype = 4'h2; //multi
    operator = 5'h03;
    src1 = 16'h0007;
    src2 = 16'h0003;
    #100;
    parser_done = 1'b0;
    #25;

    parser_done = 1'b1;
    dtype = 4'h1; //booth
    operator = 5'h03;
    src1 = 16'b0000000000000110;
    src2 = 16'b1111111111111011;
    #200;
    parser_done = 1'b0;
    #100;


    $stop;
end

endmodule

/*
space 20
I 49
1 31
2 32
3 33
4 34
5 35
6 36
7 37
8 38
9 39
0 30
U 57
S 53
= 3D
* 2A
+ 2B
- 2D
/ 2F
*/
