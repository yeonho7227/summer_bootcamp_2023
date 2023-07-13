module booth(
    clk,
    n_rst,
    Q,
    M,
    product,
    start
);


input clk;
input n_rst;
input start;

input [5:0] Q; //multiplier 
input [5:0] M; //multiplicand

output reg [11:0] product;

reg [5:0] sum_Q;

reg [5:0] cnt;
reg q0;
reg [5:0] A;


always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 6'h00;
    end
    else if (cnt == 6'h06)
        cnt <= 6'h00;
    else begin
        cnt <= (cnt == 6'h06) ? 6'h00 : 6'h01 + cnt;
    end
end

wire [5:0] a_shift; 
wire [5:0] a_resert;

assign a_resert = (q0 == 1'b0) && (sum_Q[0] == 6'h01) ? A + {~M + 6'h01} :
                        (q0 == 1'b1) && (sum_Q[0] == 6'h00) ? A + M : A;
assign a_shift = {a_resert[5], a_resert[5:1]};

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        A <= 6'h00;
        q0 <= 1'b0;
        sum_Q <= Q;
        cnt <= 6'h00;
        product <= 12'h00;
    end
    else begin
        sum_Q <= {a_shift[0],sum_Q[5:1]};
        A <= a_shift;
        q0 <= sum_Q[0];
        product <= {a_shift, sum_Q};
    end

    /*
    else if ((start == 1'b1) && (cnt <= 6'h06) && (q0 == 1'b0) && (sum_Q[0] == 1'h0)) begin
        sum_Q <= {a_shift[0],sum_Q[5:1]};
        A <= a_shift;
        q0 <= sum_Q[0];
        product <= {a_shift, sum_Q};
    end
    else if ((start == 1'b1) && (cnt <= 6'h06) && (q0 == 1'b1) && (sum_Q[0] == 1'h1)) begin
        sum_Q <= {a_shift[0],sum_Q[5:1]};
        A <= a_shift;
        q0 <= sum_Q[0];
        product <= {a_shift, sum_Q};
    end
    else if ((start == 1'b1) && (q0 == 1'b0) && (sum_Q[0] == 1'h1)) begin
        A <= a_shift;
        q0 <= sum_Q[0];
        
    end
    else if ((start == 1'b1) && (q0 == 1'b1) && (sum_Q[0] == 1'h0)) begin
        A <= a_shift;
        q0 <= sum_Q[0];
    end 
    else begin
        sum_Q <= sum_Q;
        A <= A;
        product <= product;
    end*/
end

/*
always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        A <= 6'h00;
        q0 <= 1'b0;
        sum_Q <= Q;
        cnt <= 6'h00;
    end
    else if ((start == 1'b1) && (q0 == 1'b0) && (sum_Q[0] == 6'h01)) begin
        A <= A + {~M + 6'h01};
    end
    else if ((start == 1'b1) && (q0 == 1'b1) && (sum_Q[0] == 6'h00)) begin
        A <= A + M;
    end
end
*/


endmodule






/*
input clk;
input n_rst;
input start;

input [5:0] Q; //multiplier 
input [5:0] M; //multiplicand

output [11:0] product;

reg [5:0] sum_Q;

reg [5:0] cnt;
reg q0;
reg [5:0] A;

parameter IDLE = 2'h0, 
            S0 = 2'h1, // q1q0
            S1 = 2'h2, // A = A - M
            S2 = 2'h3, // A = A + M
            S3 = 2'h4,
            S4 = 2'h5; // 

reg [2:0] c_state;
reg [2:0] n_state;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst)
        c_state <= IDLE;
    else 
        c_state <= n_state;
end

always@(*)
    case(c_state) 
        IDLE : n_state = (start == 1'b1) ? S0 : c_state;
        S0 : n_state = ((q0 == 1'b0) && (sum_Q[0] == 6'h01)) ? S1 :
                        ((q0 == 1'b1) && (sum_Q[0] == 6'h00)) ? S2 : S3;
        S1 : n_state = S3;
        S2 : n_state = S3;
        S3 : n_state = (cnt == 6'h06) ? IDLE : c_state;
        default : n_state = IDLE;
    endcase

always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 6'h00;
    end
    else if(c_state == S3) begin
        cnt <= (cnt == 6'h06) ? 6'h00 : 6'h01 + cnt;
    end
end


always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        A <= 6'h00;
        q0 <= 1'b0;
        sum_Q <= Q;
        cnt <= 6'h00;
    end
    else if ((c_state == S1) && (q0 == 1'b0) && (sum_Q[0] == 6'h01)) begin
        A <= A + {~M + 6'h01};
    end
    else if ((c_state == S2) && (q0 == 1'b1) && (sum_Q[0] == 6'h00)) begin
        A <= A + M;
    end
    else if ((c_state == S3) && (q0 == 1'b1) && (sum_Q[0] == 6'h01)) begin
        sum_Q <= {A[0],sum_Q[5:1]};
        A <= {A[5],A[5:1]};
    end
    else if ((c_state == S3) && (q0 == 1'b0) && (sum_Q[0] == 6'h00)) begin
        sum_Q <= {A[0],sum_Q[5:1]};
        A <= {A[5],A[5:1]};
    end
    else begin
        sum_Q <= sum_Q;
        A <= A;
    end
end

assign product = {A , sum_Q};

*/

