`timescale 1ns/100ps
module testbench11();

reg clk;
reg n_rst;

reg alu_done;
reg [31:0] calc_res;

wire [7:0] tx_data;
wire uout_valid;

encoder u_encoder(
    .clk(clk),
    .n_rst(n_rst),
    .alu_done(alu_done),
    .calc_res(calc_res),
    .tx_data(tx_data),
    .uout_valid(uout_valid)
);

initial begin
    clk = 1'b0;
    n_rst = 1'b0;
    #7 n_rst = 1'b1;
end

always #5 clk = ~clk;

initial begin
    alu_done = 1'b0;
    calc_res = 32'h00000000;
    #21;

    alu_done = 1'b1;
    calc_res = 32'h123f5a78;
    #1000;

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
