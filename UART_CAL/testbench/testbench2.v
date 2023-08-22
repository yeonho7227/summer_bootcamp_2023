`timescale 1ns/100ps
module testbench2();

reg clk;
reg n_rst;
reg rxd;


wire [7:0] rx_data;
wire rx_valid;


rx u_rx(
    .clk(clk),
    .n_rst(n_rst),
    .rxd(rxd),
    .rx_data(rx_data),
    .rx_valid(rx_valid)    
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

initial begin
    rxd = 1'b1;
    #21;

    rxd = 1'b0; //I 49
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;

    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //space 20
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //S 53
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //1 31
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //2 32
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //3 33
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //4 34
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //+ 2B
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;

    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //5 35
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //6 36
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //7 37
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

    rxd = 1'b0; //8 38
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b1;
    #160;

    rxd = 1'b1;
    #160;
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rxd = 1'b0;
    #160;

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