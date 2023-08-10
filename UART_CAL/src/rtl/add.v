module add(
    clk,
    n_rst,
    src1,
    src2,
    add_done,
    calc_res,
    parser_done
);

input clk;
input n_rst;
input [15:0] src1; 
input [15:0] src2;
input parser_done;

output add_done; 
output reg [31:0] calc_res;

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
        DATA : n_state = STOP;
        STOP : n_state = IDLE;
        default : n_state = IDLE;
    endcase
end

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        calc_res <= 32'h00000000;
    end
    else if (c_state == DATA)
        calc_res <= src1 + src2;
end

assign add_done = (c_state == STOP) ? 1'b1 : 1'b0;

endmodule

