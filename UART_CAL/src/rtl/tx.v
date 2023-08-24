module tx (
    clk,
    n_rst, 
    uout_valid,
    txd,
    tx_data,
    tx_valid
);

input clk;
input n_rst;

input uout_valid;
//input uout_control;

input [7:0] tx_data;

output tx_valid;
output reg txd;

wire txen;

parameter CNTEND = 16'h1B2; //115200 BaudRate / 50MHz

localparam IDLE = 2'h0;
localparam START = 2'h1;
localparam DATA = 2'h2;
localparam STOP = 2'h3;

reg [1:0] c_state;
reg [1:0] n_state;    

reg [15:0] cnt;
//reg [3:0] cnt; //txen
reg [3:0] cnt2;

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
    else if (uout_valid == 1'b1) begin
        cnt <= (cnt == CNTEND) ? 16'h0000 : cnt + 16'h0001;
    end
    else begin
        cnt <= cnt;
    end
end
*/

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 16'h0000;
    end
    else if (c_state != IDLE) begin
        cnt <= (cnt == 16'h1B2) ? 16'h0000 : cnt + 16'h0001;
    end
    else begin
        cnt <= cnt;
    end
end

assign txen = (cnt == 16'h1B2)? 1'b1 : 1'b0;

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt2 <= 4'h0;
    end
    else if  (c_state == DATA) begin
        cnt2 <= (cnt2 == 4'h9) ? 4'h0 : (txen == 1'b1) ? cnt2 + 4'h1 : cnt2;
    end
    else begin
        cnt2 <= cnt2;
    end
end

always @ (*) begin
    case(c_state) 
        IDLE : n_state = (uout_valid  == 1'b1) ? START : c_state;
        START : n_state = (cnt2 == 4'h0) ? DATA : c_state;
        DATA : n_state = (cnt2 == 4'h9) ? STOP : c_state;
        STOP : n_state = (cnt2 == 4'h0) ? IDLE : c_state;
        default : n_state = IDLE;
    endcase
end


reg [7:0] tx_data_q;
always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        tx_data_q <= 8'h00;
    end
    else if (c_state == START) begin
        tx_data_q <= tx_data;
    end
    else if (c_state == DATA) begin
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
    else if (c_state == START) begin
        txd <= 1'b0;
    end
    else if (c_state == DATA) begin
        txd <= (txen == 1'b1) ? tx_data_q[0] : txd;
    end
    else if (c_state == STOP) begin
        txd <= 1'b1;
    end
    else begin
        txd <= txd;
    end
end

assign tx_valid = (c_state == STOP)? 1'b1 : 1'b0;

endmodule

