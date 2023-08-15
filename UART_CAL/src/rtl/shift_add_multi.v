module shift_add_multi(
    clk,
    n_rst,
    src2,
    src1,
    calc_res,
    parser_done,
    multi_done
);


input clk;
input n_rst;
input [15:0] src1; //multiplier 
input [15:0] src2; //multiplicand
input parser_done; // 1

output multi_done; 
output reg [31:0] calc_res;

reg [16:0] cnt;
reg [16:0] sum_src2;
reg [32:0] sum_src1;


localparam IDLE = 2'h0;
localparam DATA = 2'h1;
localparam STOP = 2'h2;

reg [1:0] c_state;
reg [1:0] n_state;

always@(posedge clk or negedge n_rst) begin
    if(!n_rst)
        c_state <= IDLE;
    else 
        c_state <= n_state;
end

always@(*)
    case(c_state) 
        IDLE : n_state = (parser_done == 1'b1) ? DATA : c_state;
        DATA : n_state = (cnt == 16'h0004) ? STOP : c_state;
        STOP : n_state = IDLE;
        default : n_state = IDLE;
    endcase


always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt <= 16'h0000;
    end
    else if (c_state == IDLE) begin
        cnt <= 16'h0000;
    end
    else if(c_state == DATA) begin
        cnt <= (cnt == 16'h0004) ? 16'h0000 : 16'h0001 + cnt;
    end
end

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        calc_res <= 32'h00000000;
        sum_src1 <= 32'h00000000;
        sum_src2 <= 16'h0000;
    end
    else if (c_state == IDLE) begin
        sum_src2 <= src2;
        sum_src1 <= {16'h0000 , src1};
    end
    else if ((c_state == DATA) && (sum_src2[0] == 1'b1)) begin
        calc_res <= calc_res + sum_src1;
        sum_src1 <= {sum_src1[30:0] , 1'b0};
        sum_src2 <= {1'b0 , sum_src2[15:1]};
    end
    else if ((c_state == DATA) && (sum_src2[0] == 1'b0)) begin
        calc_res <= calc_res;
        sum_src1 <= {sum_src1[30:0]  ,1'b0};
        sum_src2 <= {1'b0 , sum_src2[15:1]};
    end
end

assign multi_done = (c_state == STOP) ? 1'b1 : 1'b0;

endmodule

/*
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
*/