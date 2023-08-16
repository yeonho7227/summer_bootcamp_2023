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

localparam IDLE = 2'h0;
localparam START = 2'h1;
localparam DATA = 2'h2;
localparam STOP = 2'h3;

reg [1:0] c_state;
reg [1:0] n_state;    

reg [3:0] cnt; 
reg [3:0] cnt2; //state cnt

always @ (posedge clk or negedge n_rst)
    if(!n_rst) begin
        c_state <= IDLE;   
    end
    else begin
        c_state <= n_state;
end

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt2 <= 4'h0;
    end
    else if  (c_state == DATA) begin
        cnt2 <= (cnt2 == 4'h4) ? 4'h0 :
                (txen == 1'b1) ? cnt2 + 4'h1 : cnt2;
    end
    else begin
        cnt2 <= cnt2;
    end
end

// 32'h1234_5678
// 1 = 0001 => 49

// 32'h0000_0009
// 9 = 0009 => 39 


always @ (*) begin
    case(c_state) 
        IDLE : n_state = (alu_done  == 1'b1) ? START : c_state;
        START : n_state = (cnt2 == 4'h0) ? DATA : c_state;
        DATA : n_state = (cnt2 == 4'h4) ? STOP : c_state;
        STOP : n_state = (cnt2 == 4'h0) ? IDLE : c_state;
        default : n_state = IDLE;
    endcase
end

/*
reg format_q;
always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        tx_data <= 8'h00;
    end
    else if (c_state == FORMAR) begin
        if(format_q == 1'b1) 
            tx_data <= 8'h49;
        else
            tx_data <= 8'h30;
    end
    else begin
        tx_data <= tx_data
    end
end


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
*/

reg [31:0] calc_res_q;
always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        calc_res_q <= 8'h00;
    end
    else if (c_state == START) begin
        calc_res_q <= tx_data;
    end
    else if (c_state == DATA) begin
        calc_res_q <= (txen == 1'b1) ? {1'b0, calc_res_q[7:1]} : calc_res_q;
    end
    else begin
        calc_res_q <= calc_res_q;
    end
end

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        tx_data <= 8'h1;
    end
    else if (c_state == START) begin
        tx_data <= 1'b0;
    end
    else if (c_state == DATA) begin
        tx_data <= (txen == 1'b1) ? calc_res_q[0] : tx_data;
    end
    else if (c_state == STOP) begin
        tx_data <= 1'b1;
    end
    else begin
        tx_data <= tx_data;
    end
end


assign uout_valid = (c_state == RESULT) ? 1'b1 : 1'b0;

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
