module greycode_cnt(
    clk,
    n_rst,
    data
);

input clk;
input n_rst;

output reg [2:0] data;

reg [2:0]cnt;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 3'b0;
    end 
    else
        cnt <= cnt + 1'b1;
end

always@(cnt) begin
    data[2] = 1'b0^cnt[2];
    data[1] = cnt[2]^cnt[1];
    data[0] = cnt[1]^cnt[0];     
end

endmodule