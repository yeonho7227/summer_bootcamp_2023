module jhonson2_cnt(
    clk,
    n_rst,
    result0,
    result1,
    result2,
    result3,
);

input clk;
input n_rst;

output reg result0;
output reg result1;
output reg result2;
output reg result3;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        result0 <= 1'b0;
        result1 <= 1'b0;
        result2 <= 1'b0;
        result3 <= 1'b0;  
    end
    else begin
        result0 <= !result3;
        result1 <= result0;
        result2 <= result1;
        result3 <= result2;
    end
end

endmodule