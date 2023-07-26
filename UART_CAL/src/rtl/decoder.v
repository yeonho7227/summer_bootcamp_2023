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
output reg [4:0] operator;
output reg [15:0] src1;
output reg [15:0] src2;
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

always@(posedge clk or negedge n_rst)
    if(!n_rst)
        c_state <= IDLE;
    else
        c_state <= n_state;

always(*) begin
    case(c_state) 
        IDLE : n_state = (data_valid == 1'b1) ? FORMAT : c_state;
        FORMAT : n_state = ((data == 8'h49) && (data_valid == 1'b1)) ? TYPE : c_state;
        TYPE : n_state = (((data == 8'h53) || (data == 8'h57)) && (data_valid == 1'b1)) ? DATA1 : c_state;
        DATA1 : 
        OPERATION : 
        DATA2 :
        END_PROTOCOL : n_state = ((data == 8'h3D) && (data_valid == 1'b1)) ? RESULT : c_state;
        RESULT : n_state = IDLE;
        default : n_state = (data_valid == 1'b1) ? FORMAT : c_state;
    endcase
end

always(*)
    if (c_state == OPERATION)
        



endmodule
