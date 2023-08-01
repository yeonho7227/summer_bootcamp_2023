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

input clk;
input n_rst;
input [7:0] data;
input data_valid;

output [3:0] dtype;
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

always@(*) begin
    case(c_state) 
        IDLE : n_state = (data_valid == 1'b1) ? FORMAT : c_state;
        FORMAT : n_state = ((data_valid == 1'b1) && (data == 8'h20)) ? TYPE : c_state;
        TYPE : n_state = ((data_valid == 1'b1) && (data == 8'h20)) ? DATA1 : c_state;
        DATA1 : n_state = ((data_valid == 1'b1)) ? OPERATION : c_state;
        OPERATION : n_state = (data_valid == 1'b1) ? DATA2 : c_state;
        DATA2 : n_state = ((data_valid == 1'b1)) ? END_PROTOCOL : c_state;
        END_PROTOCOL : n_state = ((data == 8'h3D) && (data_valid == 1'b1)) ? RESULT : c_state;
        RESULT : n_state = IDLE;
        default : n_state = (data_valid == 1'b1) ? FORMAT : c_state;
    endcase 
end

/*
IDLE : n_state = (data)
FORMAT : n_state = (data = 8'h20)? TYPE :c_state;
TYPE :

if (c_state == FORMAT)
    if (data == 8'h49)
        format <= 1'b1;

*/

reg format_q;
always@(*) begin
    if (!n_rst) begin
        format_q <= 1'h0;
    end
    else if (c_state == FORMAT) begin
        if (data == 8'h49)
            format_q <= 1'b1;
        else 
            format_q <= 1'b0;
    end
    else begin
        format_q <= format_q;
    end
end

reg [1:0] dtype_q;

always@(*) begin
    if (!n_rst) begin
        dtype_q <= 2'h0;
    end
    else if (c_state == TYPE) begin
        if (data == 8'h53)
            dtype_q <= 2'h1;
        else if (data == 8'h57)
            dtype_q <= 2'h2;
    end
    else begin
        dtype_q <= dtype_q;
    end
end
assign dtype = dtype_q;

reg [15:0] src1_q; 
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        src1_q <= 16'h0000;
    end
    else if (c_state == DATA1) begin
        if (data == 8'h30)
            src1_q <= 16'h0001;
        else if (data == 8'h31)
            src1_q <= 16'h0002;
        else if (data == 8'h32)
            src1_q <= 16'h0003;
        else if (data == 8'h33)
            src1_q <= 16'h0004;
        else if (data == 8'h34)
            src1_q <= 16'h0005;
        else if (data == 8'h35)
            src1_q <= 16'h0006;
        else if (data == 8'h36)
            src1_q <= 16'h0007;
        else if (data == 8'h37)
            src1_q <= 16'h0008;
        else if (data == 8'h38)
            src1_q <= 16'h0009;
        else if (data == 8'h39)
            src1_q <= 16'h0010;
        else if (data == 8'h41)
            src1_q <= 16'h0011;
        else if (data == 8'h42)
            src1_q <= 16'h0012;
        else if (data == 8'h43)
            src1_q <= 16'h0013;
        else if (data == 8'h44)
            src1_q <= 16'h0014;
        else if (data == 8'h45)
            src1_q <= 16'h0015;
        else if (data == 8'h46)
            src1_q <= 16'h0016;
    end
    else begin
        src1_q <= src1_q;
    end
end
assign src1 = src1_q;

reg [15:0] src2_q; 
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        src2_q <= 16'h0000;
    end
    else if (c_state == DATA2) begin
        if (data == 8'h30)
            src2_q <= 16'h0001;
        else if (data == 8'h31)
            src2_q <= 16'h0002;
        else if (data == 8'h32)
            src2_q <= 16'h0003;
        else if (data == 8'h33)
            src2_q <= 16'h0004;
        else if (data == 8'h34)
            src2_q <= 16'h0005;
        else if (data == 8'h35)
            src2_q <= 16'h0006;
        else if (data == 8'h36)
            src2_q <= 16'h0007;
        else if (data == 8'h37)
            src2_q <= 16'h0008;
        else if (data == 8'h38)
            src2_q <= 16'h0009;
        else if (data == 8'h39)
            src2_q <= 16'h0010;
        else if (data == 8'h41)
            src2_q <= 16'h0011;
        else if (data == 8'h42)
            src2_q <= 16'h0012;
        else if (data == 8'h43)
            src2_q <= 16'h0013;
        else if (data == 8'h44)
            src2_q <= 16'h0014;
        else if (data == 8'h45)
            src2_q <= 16'h0015;
        else if (data == 8'h46)
            src2_q <= 16'h0016;
    end
    else begin
        src2_q <= src2_q;
    end
end
assign src2 = src2_q;

reg [4:0] operator_q;
always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        operator_q <= 5'h00;
    end
    else if (c_state == OPERATION) begin
        if (data == 8'h2B)
            operator_q <= 5'h01;
        else if (data == 8'h2D)
            operator_q <= 5'h02;
        else if (data == 8'h2A)
            operator_q <= 5'h03;
        else if (data == 8'h2F)
            operator_q <= 5'h04;
    end
    else begin
        operator_q <= operator_q;
    end
end
assign operator = operator_q;


reg parser_done_q;
always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        parser_done_q <= 1'b0;
    end
    else if (c_state == RESULT) begin
        parser_done_q <= 1'b1;
    end
    else begin
        parser_done_q <= parser_done_q;
    end
end
assign parser_done = parser_done_q;

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