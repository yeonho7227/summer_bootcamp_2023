module d_ff(
    clk,
    n_rst,
    d,
    qn
);

input clk;
input n_rst;
input d;

output qn;
reg qn;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        qn <= 1'b0;
    end
    else 
    if (d == 0) 
        qn <= 1'b0;
    else 
        qn <= 1'b1;
end

endmodule