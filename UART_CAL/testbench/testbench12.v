`timescale 1ns/100ps
module testbench12();

reg clk;
reg n_rst;

reg rxd;
reg rx_start;

wire txd;
wire tx_valid;

//localparam BAUD_TIME =16;
//integer i;

top u_top(
    .clk(clk),
    .n_rst(n_rst),
    .rxd(rxd),
    .rx_start(rx_start),
    .txd(txd),
    .tx_valid(tx_valid)
);

/*
task rx;
    input [7:0]data;
    begin
    rxd = 0;
    #15;
    for(i=0;i<8;i=i+1)
    begin
        rxd=data[i];
        #15;
    end
    repeat(2) @(posedge clk);
    end
endtask
*/

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #5 clk = ~clk;

initial begin
    /*
    rxd = 1'b1;
    rx_start = 1'b0;
    #21;
    rx_start = 1'b1; //rx
    #21;
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
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #50;
    rx_start = 1'b0;
    #3000;
    */
    rxd = 1'b0;
    rx_start = 1'b0;
    #21;

    rx_start = 1'b1;
    #150;
    rxd = 1'b1;
    #150;
    rxd = 1'b0;
    #150;
    rxd = 1'b1;
    #150;
    rxd = 1'b0;
    #150;
    rxd = 1'b1;
    #150;
    rxd = 1'b0;
    #150;
    rxd = 1'b1;
    #150;
    rxd = 1'b0;
    #150;
    rx_start = 1'b0;
    #3000;
    
    $stop;
end

/*
initial begin
    rxd=1;
    rx_start = 1'b0;
    #100;
    rx_start = 1'b1; //rx
    #10 rx_start = 1'b0; //rx

    rx("I");

    
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
    rxd = 1'b1;
    #50;
    

    rx_start = 1'b0;
    #3000;
    
    $stop;
end
*/


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
