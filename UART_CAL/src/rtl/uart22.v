module uart (
    clk,
    n_rst,
    start,
    data,
    data_valid,
    rxd
);

input clk;
input n_rst;
input start; 
input rxd;

wire rxen; // speed

output reg [7:0] data;
output data_valid;
//output TXD;

localparam IDLE = 2'h0;
localparam START = 2'h1;
localparam DATA = 2'h2;
localparam STOP = 2'h3;

parameter CNTEND = 16'h1B2; //115200 BaudRate / 50MHz

reg [1:0] c_state;
reg [1:0] n_state;

//reg [16:0] cnt;
reg [3:0] cnt;
reg [3:0] cnt2;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        c_state <= IDLE;
    end
    else begin
        c_state <= n_state;
    end
end

/*
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 16'h0000;
    end
    else if (start == 1'b0) begin
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
    else if (start == 1'b0) begin
        cnt <= (cnt == 4'hf) ? 4'h0 : cnt + 4'h1;
    end
    else begin
        cnt <= cnt;
    end
end

assign rxen = (cnt == 4'hf)? 1'b1 : 1'b0;

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt2 <= 4'h0;
    end
    else if (start == 1'b0) begin
        cnt2 <= (cnt2 == 4'h9) ? 4'h0 : cnt2 + 4'h1;
    end
    else begin
        cnt2 <= cnt2;
    end
end


always @ (*) begin
    case(c_state) 
        IDLE : n_state = (start == 1'b0) ? START : c_state;
        START : n_state = (cnt2 == 4'h1) ? DATA : c_state;
        DATA : n_state = (cnt2 == 4'h9) ? STOP : c_state;
        STOP : n_state = (cnt2 == 4'h0) ? IDLE : c_state;
    endcase
end

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        data <= 8'h00;
    end 
    else if (c_state == DATA) begin
        data <= (rxen == 1'b1) ? {rxd , data[7:1]} : data;
    end
    else begin
        data <= data;
    end
end

assign data_valid = ((c_state == STOP) && (rxen == 1'b1)) ? 1'b1 : 1'b0;

endmodule