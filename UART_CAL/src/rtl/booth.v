module booth(
    clk,
    n_rst,
    dtype,
    operator,
    src1,
    src2,
    calc_res,
    parser_done,
    alu_done
);

input clk;
input n_rst;
input [3:0] dtype; // 1 s
input [4:0] operator; // 03
input [15:0] src2; //multiplier 
input [15:0] src1; //multiplicand
input parser_done; // 1

output alu_done; 
output reg [31:0] calc_res;

reg [15:0] sum_src2;

reg [15:0] cnt;
reg q0;
reg [15:0] A;

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
        DATA: n_state =  ((cnt == 16'h0006) && (dtype == 4'h1) && (operator == 5'h03)) ? STOP : c_state;
        STOP : n_state = IDLE;
        default : n_state = IDLE;
    endcase
end


always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 16'h0000;
    end
    else if (c_state == IDLE)
        cnt <= 16'h0000;
    else if (c_state == DATA) begin
        cnt <= (cnt == 16'h0006) ? 16'h0000 : 16'h0001 + cnt;
    end
end

wire [15:0] a_shift; 
wire [15:0] a_resert;

assign a_resert = ((q0 == 1'b0) && (sum_src2[0] == 16'h0001)) ? A + {~src1 + 16'h0001} :
                    ((q0 == 1'b1) && (sum_src2[0] == 16'h0000)) ? A + src1 : A;
assign a_shift = {a_resert[15], a_resert[15:1]};


always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        A <= 16'h0000;
        q0 <= 1'b0;
        sum_src2 <= src2;
        calc_res <= 32'h00000000;
    end
    else if (cnt <= 16'h0006) begin
        sum_src2 <= {A[0],sum_src2[15:1]};
        A <= a_shift;
        q0 <= sum_src2[0];
        calc_res <= {A, sum_src2};
    end
end

assign alu_done = (c_state == STOP) ? 1'b1 : 1'b0;

endmodule