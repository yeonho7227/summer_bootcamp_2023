module top(
    clk,
    n_rst,
    rxd,
    rx_start,
    txd,
    tx_valid
);

input clk;
input n_rst;
input rxd;
input rx_start;

output txd;
output tx_valid;

wire [7:0] rx_data;
wire rx_valid;

wire [7:0] tx_data;
wire uout_valid;

wire [3:0] dtype;
wire [4:0] operator;
wire [15:0] src1;
wire [15:0] src2;
wire parser_done;
wire alu_done;
wire [31:0] calc_res;

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

encoder u_encoder(
    .clk(clk),
    .n_rst(n_rst),
    .alu_done(alu_done),
    .calc_res(calc_res),
    .tx_data(tx_data),
    .uout_valid(uout_valid)
);

endmodule