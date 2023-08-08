`timescale 1ns/100ps
module testbench2();

reg clk;
reg n_rst;

reg rxd;
reg rx_start;
wire [7:0] rx_data;
wire rx_valid;

rx u_rx(
    .clk(clk),
    .n_rst(n_rst),
    .rx_start(rx_start),
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
    rxd = 1'b0;
    rx_start = 1'b0;
    #21;

    rx_start = 1'b1;
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
    rxd = 1'b1;
    #160;
    rxd = 1'b0;
    #160;
    rx_start = 1'b0;
    #300;
    $stop;
end

endmodule
