module uart (
    clk,
    n_rst,
    rxd,
    rx_data,
    rx_valid,

    txd,
    tx_data,
    tx_valid,
    uout_valid
);

input clk;
input n_rst;

input rxd;

output [7:0] rx_data;
output rx_valid;

output txd;
output tx_valid;

input [7:0] tx_data;
input uout_valid;


rx u_rx(
    .clk(clk),
    .n_rst(n_rst),

    .rxd(rxd),
    .rx_data(rx_data),
    .rx_valid(rx_valid)    
);

tx u_tx (
    .clk(clk),
    .n_rst(n_rst), 

    .uout_valid(uout_valid),
    .txd(txd),
    .tx_data(tx_data),
    .tx_valid(tx_valid)
);


endmodule