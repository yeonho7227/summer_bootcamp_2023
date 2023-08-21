`timescale 1ns/100ps
module testbench3();

reg clk;
reg n_rst;

reg [7:0] tx_data;
reg uout_valid;

wire txd;
wire tx_valid;

tx u_tx (
    .clk(clk),
    .n_rst(n_rst), 
    .uout_valid(uout_valid),
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

initial begin
    uout_valid = 1'b0;
    tx_data = 8'b00000000;
    #40;
    tx_data = 8'b10101011;
    uout_valid = 1'b1;
    #3000;
    uout_valid = 1'b0;
    #300;
    $stop;
end

endmodule
