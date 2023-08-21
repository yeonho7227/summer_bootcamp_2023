`timescale 1ns/100ps
module testbench22();

reg clk;
reg n_rst;

reg rxd;
//reg rx_start;

wire [7:0] rx_data;
wire rx_valid;
wire rx_start;

rx22 u_rx22(
    .clk(clk),
    .n_rst(n_rst),
    //.rx_start(rx_start),
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
    //rx_start = 1'b0;
    #21;

    //rx_start = 1'b1;
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
    #300;
    $stop;
end

endmodule