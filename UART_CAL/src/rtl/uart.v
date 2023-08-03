module uart (
    clk,
    n_rst,
    rxd,
    rx_data,
    rx_valid,
    txd,
    tx_data,
    tx_valid
);

input clk;
input n_rst;

input rxd;
output [7:0] rx_data;
output rx_valid;

output txd;
input [7:0] tx_data;
input tx_valid;

wire rx_start;
wire tx_start;

rx u_rx (
    .clk(clk),
    .n_rst(n_rst),
    .rx_start(rx_start),
    .rxd(rxd),
    .rx_data(rx_data),
    .rx_valid(rx_valid)    
);

tx u_tx (
    .clk(clk),
    .n_rst(n_rst), 
    .tx_start(tx_start),
    .txd(txd),
    .tx_data(tx_data),
    .tx_valid(tx_valid)
);


endmodule