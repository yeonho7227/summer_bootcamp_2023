module shift_add_multi(
    clk,
    n_rst,
    a,
    b,
    product,
    start
);

input clk;
input n_rst;
input start;

input [3:0] a; //multiplier 
input [3:0] b; //multiplicand

output reg [7:0] product;

reg [3:0] cnt;
reg [3:0] sum_a;
reg [7:0] sum_b;

parameter IDLE = 2'h0,
            S1 = 2'h1,
            S2 = 2'h2;

reg [1:0] state;
reg [1:0] n_state;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst)
        state <= IDLE;
    else 
        state <= n_state;
end

always@(*)
    case(state) 
        IDLE : n_state = (start == 1'b1) ? S1 : IDLE;
        S1 : n_state = (cnt == 4'h4) ? S2 : state;
        S2 : n_state = IDLE;
        default : n_state = IDLE;
    endcase


always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 4'h0;
    end
    else if (state == IDLE) begin
        cnt <= 4'h0;
    end
    else if(state == S1) begin
        cnt <= (cnt == 4'h4) ? 4'h0 : 4'h1 + cnt;
    end
end

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        product <= 8'h00;
        sum_b <= 8'h00;
        sum_a <= 4'h0;
    end
    else if (state == IDLE) begin
        sum_a <= a;
        sum_b <= {4'h0,b};
    end
    else if ((state == S1) && (sum_a[0] == 1'b1)) begin
        product <= product + sum_b;
        sum_b <= {sum_b[6:0],1'b0};
        sum_a <= {1'b0,sum_a[3:1]};
    end
    else if ((state == S1) && (sum_a[0] == 1'b0)) begin
        product <= product;
        sum_b <= {sum_b[6:0],1'b0};
        sum_a <= {1'b0,sum_a[3:1]};
    end
end

endmodule

