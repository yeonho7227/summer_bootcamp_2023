module parity_check(
    clk,
    n_rst,
    x,
    y,
    z,
    result
);

input clk;
input n_rst;
input x;
input y;
input z;

output reg result;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) 
        result <= 1'b0;
    else
        result <= x^y^z;
end


endmodule