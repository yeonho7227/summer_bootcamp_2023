module substraction(
    clk,
    n_rst,
    a,
    b,
    result
);

input clk;
input n_rst;
input [3:0] a; 
input [3:0] b; 

output reg [3:0] result;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        result <= 4'b0;
    end
    else 
        result <= a + (~b + 4'b1);

end


endmodule