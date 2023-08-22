`timescale 1ns/100ps
module testbench4();

reg clk;
reg n_rst;
reg [7:0] rx_data;
reg rx_valid;

wire [3:0] dtype;
wire [4:0] operator;
wire [15:0] src1;
wire [15:0] src2;
wire parser_done;

decoder u_decoder(
    .clk(clk),
    .n_rst(n_rst),
    .rx_data(rx_data),
    .rx_valid(rx_valid),
    
    .dtype(dtype),
    .operator(operator),
    .src1(src1),
    .src2(src2),
    .parser_done(parser_done)
);

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #5 clk = ~clk;

initial begin
    rx_valid = 1'b0;
    rx_data = 8'h00;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h49; //I
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1; //space
    rx_data = 8'h20;
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h53; //S
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1; //space
    rx_data = 8'h20;
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h31; //1
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h32; //2
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h33; //3
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h34; //4
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h2D; //+
    #10;
    rx_valid = 1'b0;
    #21;


    rx_valid = 1'b1;
    rx_data = 8'h35; //5
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h36; //6
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h37; //7
    #10;
    rx_valid = 1'b0;
    #21;

    rx_valid = 1'b1;
    rx_data = 8'h38; //8
    #10;
    rx_valid = 1'b0;
    #25;

    rx_valid = 1'b1;
    rx_data = 8'h3D; //=
    #10;
    rx_valid = 1'b0;
    #300;

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
