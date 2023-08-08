module rx (
    clk,
    n_rst,
    rx_start,
    rxd,
    rx_data,
    rx_valid    
);

input clk;
input n_rst;
input rx_start; 
input rxd;

wire rxen; // speed

output reg [7:0] rx_data;
output rx_valid;


localparam IDLE = 2'h0;
localparam START = 2'h1;
localparam DATA = 2'h2;
localparam STOP = 2'h3;

parameter CNTEND = 16'h1B2; //115200 BaudRate / 50MHz

reg [1:0] c_state;
reg [1:0] n_state;

//reg [16:0] cnt;
reg [3:0] cnt; //rxen
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
    else if (rx_start == 1'b1) begin
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
    else if (rx_start == 1'b1) begin
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
    else if  (c_state == DATA) begin
        cnt2 <= (cnt2 == 4'h8) ? 4'h0 : (rxen == 1'b1) ? cnt2 + 4'h1 : cnt2;
    end
    else begin
        cnt2 <= cnt2;
    end
end



always @ (*) begin
    case(c_state) 
        IDLE : n_state = (rx_start == 1'b1) ? START : c_state;
        START : n_state = (cnt2 == 4'h0) ? DATA : c_state;
        DATA : n_state = (cnt2 == 4'h8) ? STOP : c_state;
        STOP : n_state = (cnt2 == 4'h0) ? IDLE : c_state;
    endcase
end


always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        rx_data <= 8'h00;
    end 
    else if ((c_state == DATA) && (cnt2 <= 4'h8)) begin
        rx_data <= (rxen == 1'b1) ? {rxd , rx_data[7:1]} : rx_data;
    end
    else begin
        rx_data <= rx_data;
    end
end


/*
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        rx_data <= 8'h00;
        cnt2 <= 4'h0;
    end 
    else if ((c_state == DATA) && (rx_start == 1'b1)) begin
        cnt2 <= (cnt2 == 4'h8) ? 4'h0 : (rxen == 1'b1) ? cnt2 + 4'h1 : cnt2;
        rx_data <= {rxd , rx_data[7:1]};
    end
    else begin
        rx_data <= rx_data;
        cnt2 <= cnt2;
    end
end
*/

assign rx_valid = (c_state == STOP) ? 1'b1 : 1'b0;

endmodule