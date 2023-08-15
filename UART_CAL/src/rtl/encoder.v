module encoder(
    clk,
    n_rst,
    alu_done,
    calc_res,
    tx_data,
    uout_valid
);

input clk;
input n_rst;
input alu_done;
input [31:0] calc_res;

output [7:0] tx_data;
output uout_valid; //encoder valid

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
        IDLE : n_state = (rx_valid == 1'b1) ? FORMAT : c_state;
        FORMAT : n_state = ((rx_valid == 1'b1) && (rx_data == 8'h20)) ? TYPE : c_state;
        TYPE : n_state = ((rx_valid == 1'b1) && (rx_data == 8'h20)) ? DATA1 : c_state;
        DATA1 : n_state = ((rx_valid == 1'b1) && (cnt == 4'h4)) ? OPERATION : c_state;
        OPERATION : n_state = (rx_valid == 1'b1) ? DATA2 : c_state;
        DATA2 : n_state = ((rx_data == 8'h3D) && (rx_valid == 1'b1)) ? RESULT: c_state;
        //END_PROTOCOL : n_state = (rx_valid == 1'b1) ? RESULT : c_state;
        RESULT : n_state = IDLE;
        default : n_state = (rx_valid == 1'b1) ? FORMAT : c_state;
    endcase 
end

//((rx_data == 8'h3D) && (rx_valid == 1'b1))

/*
IDLE : n_state = (rx_data)
FORMAT : n_state = (rx_data = 8'h20)? TYPE :c_state;
TYPE :

if (c_state == FORMAT)
    if (rx_data == 8'h49)
        format <= 1'b1;

*/

reg format_q;
always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        format_q <= 1'h0;
    end
    else if (c_state == FORMAT) begin
        if (rx_data == 8'h49)
            format_q <= 1'b1;
        else 
            format_q <= 1'b0;
    end
    else begin
        format_q <= format_q;
    end
end

reg [3:0] dtype_q;
always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        dtype_q <= 4'h0;
    end
    else if (c_state == TYPE) begin
        if (rx_data == 8'h53) //s
            dtype_q <= 4'h1; 
        else if (rx_data == 8'h57) //u
            dtype_q <= 4'h2; 
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
        if (rx_data == 8'h30)
            src1_q <= 16'h0000;
        else if (rx_data == 8'h31)
            src1_q <= 16'h0001;
        else if (rx_data == 8'h32)
            src1_q <= 16'h0002;
        else if (rx_data == 8'h33)
            src1_q <= 16'h0003;
        else if (rx_data == 8'h34)
            src1_q <= 16'h0004;
        else if (rx_data == 8'h35)
            src1_q <= 16'h0005;
        else if (rx_data == 8'h36)
            src1_q <= 16'h0006;
        else if (rx_data == 8'h37)
            src1_q <= 16'h0007;
        else if (rx_data == 8'h38)
            src1_q <= 16'h0008;
        else if (rx_data == 8'h39)
            src1_q <= 16'h0009;
        else if (rx_data == 8'h41)
            src1_q <= 16'h000a;
        else if (rx_data == 8'h42)
            src1_q <= 16'h000b;
        else if (rx_data == 8'h43)
            src1_q <= 16'h000c;
        else if (rx_data == 8'h44)
            src1_q <= 16'h000d;
        else if (rx_data == 8'h45)
            src1_q <= 16'h000e;
        else if (rx_data == 8'h46)
            src1_q <= 16'h000f;
    end
    else begin
        src1_q <= src1_q;
    end
end

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 4'h0;
        src1 <= 16'h0000;
    end
    else if ((c_state == DATA1) && (rx_valid == 1'b1)) begin
        cnt <= (cnt == 4'h4) ? 4'h0 : (rx_valid == 1'b1) ? cnt + 4'h1 : cnt;
        src1 <= {src1[11:0], src1_q[3:0]}; 
    end
    else begin
        cnt <= cnt;
        src1 <= src1;
    end
end


reg [15:0] src2_q; 
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        src2_q <= 16'h0000;
    end
    else if (c_state == DATA2) begin
        if (rx_data == 8'h30)
            src2_q <= 16'h0000;
        else if (rx_data == 8'h31)
            src2_q <= 16'h0001;
        else if (rx_data == 8'h32)
            src2_q <= 16'h0002;
        else if (rx_data == 8'h33)
            src2_q <= 16'h0003;
        else if (rx_data == 8'h34)
            src2_q <= 16'h0004;
        else if (rx_data == 8'h35)
            src2_q <= 16'h0005;
        else if (rx_data == 8'h36)
            src2_q <= 16'h0006;
        else if (rx_data == 8'h37)
            src2_q <= 16'h0007;
        else if (rx_data == 8'h38)
            src2_q <= 16'h0008;
        else if (rx_data == 8'h39)
            src2_q <= 16'h009;
        else if (rx_data == 8'h41)
            src2_q <= 16'h000a;
        else if (rx_data == 8'h42)
            src2_q <= 16'h000b;
        else if (rx_data == 8'h43)
            src2_q <= 16'h000c;
        else if (rx_data == 8'h44)
            src2_q <= 16'h000d;
        else if (rx_data == 8'h45)
            src2_q <= 16'h000e;
        else if (rx_data == 8'h46)
            src2_q <= 16'h000f;
    end
    else begin
        src2_q <= src2_q;
    end
end

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt2 <= 4'h0;
        src2 <= 16'h0000;
    end
    else if ((c_state == DATA2) && (rx_valid == 1'b1)) begin
        cnt2 <= (cnt2 == 4'h4) ? 4'h0 : (rx_valid == 1'b1) ? cnt2 + 4'h1 : cnt2; 
        src2 <= {src2[11:0], src2_q[3:0]}; 
    end
    else begin
        cnt2 <= cnt2;
        src2 <= src2;
    end
end

reg [4:0] operator_q;
always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        operator_q <= 5'h00;
    end
    else if (c_state == OPERATION) begin
        if (rx_data == 8'h2B) //+
            operator_q <= 5'h01;
        else if (rx_data == 8'h2D) //-
            operator_q <= 5'h02;
        else if (rx_data == 8'h2A) //*
            operator_q <= 5'h03;
        else if (rx_data == 8'h2F) //divider
            operator_q <= 5'h04;
    end
    else begin
        operator_q <= operator_q;
    end
end
assign operator = operator_q;


/*
reg parser_done_q;
always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        parser_done_q <= 1'h0;
    end
    else if (c_state == RESULT) begin
        if (rx_data == 8'h3D)
            parser_done_q <= 1'b1;
        else if (parser_done_q == 1'b1)
            parser_done_q = 1'b0;
        else 
            parser_done_q <= 1'b0;
    end
end
*/

assign parser_done = (c_state == RESULT) ? 1'b1 : 1'b0;


/*
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
*/

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