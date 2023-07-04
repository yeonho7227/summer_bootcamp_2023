module jk_ff(
    clk,
    n_rst,
    j,
    k,
    qn
);

input clk;
input n_rst;
input j;
input k;

output qn;
reg qn;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        qn <= 1'b0;
    end
    else 
    if ((j == 0) && (k == 0)) 
        qn <= qn;
    else if ((j == 1) && (k == 0))
        qn <= 1'b1;
    else if ((j == 0) && (k == 1))
        qn <= 1'b0;
    else 
        qn <= ~qn;
    
end

endmodule