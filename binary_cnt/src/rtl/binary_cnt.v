module binary_cnt(
    clk,
    n_rst,
    x,
    data
);

input clk;
input n_rst;
input x;

output reg [2:0] data;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        data<= 3'b000;
    end 
    else if (x == 1) 
        data <= data + 1'b1;
    else
        data <= data - 1'b1;  
    
end

endmodule