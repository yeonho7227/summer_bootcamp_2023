module divider(
    clk,
    n_rst,
    Q,
    M,
    Q_product,
    R_product,
    parser_done,
    divider_done
);

input clk;
input n_rst;
input parser_done;

input [15:0] Q; //divisor //src2 4bit Q
input [15:0] M; //dividend //src1 4bit M

output reg [15:0] Q_product; //4bit Q_product
output reg [16:0] R_product; //5bit R_product
output divider_done;

reg [4:0] cnt;

reg [16:0] A; // 5bit A
reg [15:0] sum_Q; // 4bit sum_Q

localparam IDLE = 2'h0;
localparam DATA = 2'h1;
localparam STOP = 2'h2;

reg [1:0] c_state;
reg [1:0] n_state;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        c_state <= IDLE;
    end
    else begin
        c_state <= n_state;
    end
end

always @ (*) begin
    case(c_state) 
        IDLE : n_state = (parser_done == 1'b1) ? DATA : c_state;
        DATA: n_state =  (cnt == 5'h10) ? STOP : c_state;
        STOP : n_state = IDLE;
        default : n_state = IDLE;
    endcase
end

always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 5'h00;
    end
    else if (c_state == IDLE) begin
        cnt <= 5'h00;
    end
    else if (c_state == DATA) begin
        cnt <= (cnt == 5'h10) ? 5'h00 : 5'h01 + cnt;
    end
end

wire [16:0] A_shift; // 5bit A_shift
wire [15:0] Q_shift; // 4bit Q_shift

wire [16:0] A_resert; // 5bit A_resert
wire [15:0] Q_resert; // 4bit Q_resert

assign A_shift = {A[15:0],sum_Q[15]};
assign Q_shift = {sum_Q[14:0],1'b0};

assign A_resert = (A[16] == 1'b1) ? A_shift + M : A_shift + {~M + 5'h01};
assign Q_resert = (A_resert[16] == 1'b1) ? {Q_shift[15:1],1'b0} : {Q_shift[15:1],1'b1};

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        A <= 17'h00000;
        cnt <= 5'h00;
        R_product <= 17'h00000;
        sum_Q <= 16'h0000;
        Q_product <= 16'h0000;
    end
    else if (c_state == IDLE) begin
        sum_Q <= Q;
        Q_product <= Q;
    end
    else if (c_state == DATA)begin
        A <= A_resert;
        R_product <= A;
        sum_Q <= Q_resert;
        Q_product <= sum_Q;
    end
end

assign divider_done = (c_state == STOP) ? 1'b1 : 1'b0;

endmodule


/*
module divider(
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
input [3:0] M; //dividend

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

assign A_shift = {A[3:0],sum_Q[3]};
assign Q_shift = {sum_Q[2:0],1'b0};

assign A_resert = (A[4] == 1'b1) ? A_shift + M : A_shift + {~M + 5'h01};

assign Q_resert = (A_resert[4] == 1'b1) ? {Q_shift[3:1],1'b0} : {Q_shift[3:1],1'b1};


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
        Q_product <= sum_Q;
    end
end

endmodule
*/