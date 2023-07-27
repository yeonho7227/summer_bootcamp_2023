module decoder(
    clk,
    n_rst,
    data,
    data_valid,
    dtype,
    operator,
    src1,
    src2,
    parser_done
);

input clk,
input n_rst,
input [7:0] data;
input data_valid;

output reg [3:0] dtype;
output [4:0] operator;
output [15:0] src1;
output [15:0] src2;
output parser_done;

localparam IDLE = 3'h0;
localparam FORMAT = 3'h1;
localparam TYPE = 3'h2;
localparam DATA1 = 3'h3;
localparam OPERATION = 3'h4;
localparam DATA2 = 3'h5;
localparam END_PROTOCOL = 3'h6;
localparam RESULT = 3'h7;

reg [2:0] c_state;
reg [2:0] n_state;

reg [3:0] cnt;
reg [3:0] cnt2;

always@(posedge clk or negedge n_rst)
    if(!n_rst)
        c_state <= IDLE;
    else
        c_state <= n_state;

always(*) begin
    case(c_state) 
        IDLE : n_state = (data_valid == 1'b1) ? FORMAT : c_state;
        FORMAT : n_state = ((data == 8'h49) && (data_valid == 1'b1) && (data == 8'h20)) ? TYPE : c_state;
        TYPE : n_state = (((data == 8'h53) || (data == 8'h57)) && (data_valid == 1'b1) && (data == 8'h20)) ? DATA1 : c_state;
        DATA1 : n_state = 
        OPERATION : n_state =
        DATA2 : n_state = 
        END_PROTOCOL : n_state = ((data == 8'h3D) && (data_valid == 1'b1)) ? RESULT : c_state;
        RESULT : n_state = IDLE;
        default : n_state = (data_valid == 1'b1) ? FORMAT : c_state;
    endcase
end

reg [15:0] src1_q; 

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 4'h0;
        src1_q <= 16'h0000;
    end
    else if (c_state == DATRA1) begin
        cnt <= (cnt == 4'h4) ? 4'h0 : cnt + 4'h1;
        src1_q <= {src1 [11:0] , data[3:0]};
    end
    else begin
        cnt <= cnt;
        src1_q <= src1_q;
    end
end

assign src1 = src1_q;

reg [15:0] src2_q; 

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt2 <= 4'h0;
        src2_q <= 16'h0000;
    end
    else if (c_state == DATRA2) begin
        cnt2 <= (cnt2 == 4'h4) ? 4'h0 : cnt2 + 4'h1;
        src2_q <= {src2 [11:0] , data[3:0]};
    end
    else begin
        cnt2 <= cnt2;
        src2_q <= src2_q;
    end
end

assign src2 = src2_q;

reg [4:0] operator_q;

always(posedge clk or negedge n_rst)
    if (!n_rst)
        operation_q <= 5'h00;
    else if(c_state == OPERATION)
        operator_q <= 8'h2B 
        

assign operator = operator_q;

endmodule

/*
space 20
I 49
1 31
2 32
3 33
4 34
5 35
6 36
7 37
8 38
9 39
0 30
U 57
S 53
= 3D
* 2A
+ 2B
- 2D
/ 2F
*/