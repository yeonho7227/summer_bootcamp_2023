`timescale 1ns/100ps
module testbench();

reg clk;
reg n_rst;

reg rxd;
reg rx_start;
wire [7:0] rx_data;
wire rx_valid;

wire txd;
reg [7:0] tx_data;
wire tx_valid;
reg uout_valid;

uart u_uart (
    .clk(clk),
    .n_rst(n_rst),

    .rxd(rxd),
    .rx_data(rx_data),
    .rx_valid(rx_valid),
    .rx_start(rx_start),

    .txd(txd),
    .tx_data(tx_data),
    .tx_valid(tx_valid),
    .uout_valid(uout_valid)
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
    
    uout_valid = 1'b0;
    tx_data = 8'b00000000;
    #21;

    rx_start = 1'b1; //rx
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

    
    uout_valid = 1'b1; //tx
    #40;
    tx_data = 8'b01010101;
    #3000;
    uout_valid = 1'b0;
    #300;
    $stop;
end

endmodule

