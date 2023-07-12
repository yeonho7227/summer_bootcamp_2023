module shift_add_multi2(
    clk,
    n_rst,
    a,
    b,
    product
);

input clk;
input n_rst;

input [3:0] a; //multiplier 
input [3:0] b; //multiplicand

output reg [7:0] product;

reg [3:0] cnt;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 4'b0;
    end 
    else begin
        cnt <= (cnt == 4'h4) ? 4'h0 : cnt + 4'b1;
    end
end
always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        product <= 8'h00;
    end
    else if ((a == 4'b0) || (b == 4'b0)) begin
        product <= 8'h00;
    end
    else if (cnt < a)
        product <= product + b;
    else
        product <= product;
end 

endmodule


/*
always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        product <= 8'b00;
        sum_b <= 8'h00;
        sum_a <= 4'b00;
    end
    else if ((a[0] == 4'b1) && (cnt < 4'h4)) begin
        product <= product + b;
        sum_b <= b << 1;
        sum_a <= a >> 1;
    end
    else if ((a[0] == 4'b0) && (cnt < 4'h4)) begin
        product <= product;
        sum_b <= b << 1;
        sum_a <= a >> 1;
    end
    else begin
        product <= product;
    end
end*/