module tx (
    clk,
    n_rst, 
    tx_start,
    txd,
    tx_data,
    tx_valid
);

input clk;
input n_rst;
input tx_start;
input [7:0] tx_data;
input tx_valid;

output reg txd;

wire txen;

parameter CNTEND = 16'h1B2; //115200 BaudRate / 50MHz

localparam IDLE = 3'h0, 
localparam S1 = 3'h1,
localparam S2 = 3'h2,
localparam S3 = 3'h3,
localparam S4 = 3'h4;

reg [2:0] c_state;
reg [2:0] n_state;    

reg [3:0] c_cnt2;
reg [3:0] n_cnt2; 

always @ (posedge clk or negedge n_rst)
    if(!n_rst) begin
        c_state <= IDLE;   
    end
    else begin
        c_state <= n_state;
end

/*
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 16'h0000;
    end
    else if (tx_start == 1'b0) begin
        cnt <= (cnt == CNTEND) ? 16'h0000 : cnt + 16'h0001;
    end
    else begin
        cnt <= cnt;
    end
end
*/

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 4'h0;
    end
    else if (tx_start == 1'b0) begin
        cnt <= (cnt == 4'hf) ? 4'h0 : cnt + 4'h1;
    end
    else begin
        cnt <= cnt;
    end
end

assign txen = (cnt == 4'hf)? 1'b1 : 1'b0;

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        c_cnt2 <= 4'h0;
    end
    else begin
        c_cnt2 <= n_cnt2;
    end
end

always @ (*) begin
    case(c_state) 
        IDLE : n_state = (tx_start  == 1'b0) ? S1 : c_state;
        S1 : n_state = (txen == 1'b1) ? S2 : c_state;
        S2 : n_state = (n_cnt2 == 4'h1) ? S3 : c_state;
        S3 : n_state = (n_cnt2 == 4'h9) ? S4 : c_state;
        S4 : n_state = (n_cnt2 == 4'h0) ? IDLE : c_state;
        default : n_state = IDLE;
    endcase
end

always @ (*) begin
    if (c_state == IDLE) begin
        n_cnt2 = 4'h0;
    end
    else if (c_state == S1) begin
        n_cnt2 = c_cnt2;
    end
    else begin
        n_cnt2 = (txen == 1'b0) ? c_cnt2 :
                (c_cnt2 == 4'h9) ? 4'h0 : c_cnt2 + 4'h1;
    end
end

reg [7:0] tx_data_q;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        tx_data_q <= 8'h00;
    end
    else if (c_state == S2) begin
        tx_data_q <= tx_data;
    end
    else if (c_state == S3) begin
        tx_data_q <= (txen == 1'b1) ? {1'b0, tx_data_q[7:1]} : tx_data_q;
    end
    else begin
        tx_data_q <= tx_data_q;
    end
end

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        txd <= 1'b1;
    end
    else if (c_state == S2) begin
        txd <= 1'b0;
    end
    else if (c_state == S3) begin
        txd <= (txen == 1'b0) ? tx_data_q[0] : txd;
    end
    else if (c_state == S4) begin
        txd <= 1'b1;
    end
    else begin
        txd <= txd;
    end
end

assign tx_valid = ((c_state == S4) && (txen == 1'b1)) ? 1'b1 : 1'b0;

endmodule

