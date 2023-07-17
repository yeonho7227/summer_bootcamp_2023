module non_restore_divider(
    clk,
    n_rst,
    Q,
    M,
    Q_product,
    R_product,
    start
);

input clk;
input n_rst;
input start;

input [3:0] Q; //divisor 
input [4:0] M; //dividend

output reg [3:0] Q_product; 
output reg [4:0] R_product;

reg [4:0] cnt;
reg [4:0] A;
reg [3:0] sum_Q;

always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 5'h00;
    end
    else if (cnt == 5'h04)
        cnt <= 5'h00;
    else begin
        cnt <= (cnt == 5'h04) ? 5'h00 : 5'h01 + cnt;
    end
end

wire [4:0] A_shift;
wire [3:0] Q_shift;
wire [4:0] A_resert;
wire [3:0] Q_resert;

assign A_shift = {A[3:0],1'b1};
assign Q_shift = {sum_Q[2:0],1'b0};

assign A_resert = (A[4] == 1'b1) ? A_shift + M : A_shift + {~M + 5'h01};

assign Q_resert = (A[4] == 1'b1) ? {Q_shift[3:1],1'b0} : {Q_shift[3:1],1'b1};


always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        A <= 4'h0;
        sum_Q <= Q;
        cnt <= 5'h00;
        Q_product <= Q;
        R_product <= 5'h00;
    end
    else if (cnt <= 5'h04) begin
        A <= A_resert;
        R_product <= A;
        sum_Q <= Q_resert;
        Q_product <= Q_resert;
    end
end

endmodule
