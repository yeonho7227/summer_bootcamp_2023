module t_ff(
    clk,
    n_rst,
    t,
    qn
);

input clk;
input n_rst;
input t;

output qn;
reg qn;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        qn <= 1'b0;
    end
    else 
    if (t == 0) 
        qn <= qn;
    else 
        qn <= ~qn;
end

endmodule