module testbench();

reg clk;
reg n_rst;

reg rxd;
wire [7:0] rx_data;
wire rx_valid;

wire txd;
reg [7:0] tx_data;
reg tx_valid;

uart u_uart (
    .clk(clk),
    .n_rst(n_rst),
    .rxd(rxd),
    .rx_data(rx_data),
    .rx_valid(rx_valid),
    .txd(txd),
    .tx_data(tx_data),
    .tx_valid(tx_valid)
);

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

/*
initial begin
    rxd = 1'b0;
    #21

    tx_data
    
    #3000;
    $stop;
end
*/

initial begin
    /*
    rxd = 1'b1;
    tx_data = 32'h0000_0000;
    tx_valid = 1'b0;
    #102;
    tx_data = 32'h454b4f43;
    #10;
    tx_valid = 1'b1;
    #10;
    tx_valid = 1'b0;
    #8090;
    */

    //0x31
    #150 rxd = 1'b0;
    #150 rxd = 1'b1;
    #150 rxd = 1'b0;
    #150 rxd = 1'b0;
    #150 rxd = 1'b0;
    #150 rxd = 1'b1;
    #150 rxd = 1'b1;
    #150 rxd = 1'b0;
    #150 rxd = 1'b0;
    #150 rxd = 1'b1;
    #8090;
    $stop;
end


endmodule

