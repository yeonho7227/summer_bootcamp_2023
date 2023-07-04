module sr_ff(
    clk,
    n_rst,
    s,
    r,
    qn
);

input clk;
input n_rst;
input s;
input r;

output qn;
reg qn;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        qn <= 1'b0;
    end
    else 
    if ((s == 0) && (r == 0)) 
        qn <= 1'b0;
    else if ((s == 1) && (r == 0))
        qn <= 1'b1;
    else if ((s == 0) && (r == 1))
        qn <= 1'b0;
    else 
        qn <= 1'bz;
    
end

endmodule