module testbench3();

reg clk;
reg n_rst;
reg [7:0] data;
reg data_valid;

wire [3:0] dtype;
wire [4:0] operator;
wire [15:0] src1;
wire [15:0] src2;
wire parser_done;

decoder u_decoder(
    .clk(clk),
    .n_rst(n_rst),
    .data(data),
    .data_valid(data_valid),
    .dtype(dtype),
    .operator(operator),
    .src1(src1),
    .src2(src2),
    .parser_done(parser_done)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h49; //I
    data = 8'h20;
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h53; //S
    data = 8'h20;
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h31; //1
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h32; //2
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h33; //3
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h34; //4
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h2B; //+
    data_valid = 1'b0;
    #21;


    data_valid = 1'b1;
    data = 8'h35; //5
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h36; //6
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h37; //6
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h38; //8
    data_valid = 1'b0;
    #21;

    data_valid = 1'b1;
    data = 8'h3D; //=
    data_valid = 1'b0;
    #3000;

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

