module demux(
    enable,
    sig,
    result0,
    result1,
    result2,
    result3,
);

input enable;
input [1:0] sig;

output reg result0;
output reg result1;
output reg result2;
output reg result3;

always@(*) begin
    case(sig)
        2'b00 : begin
            result0 = enable;
            result1 = 1'b0;
            result2 = 1'b0;
            result3 = 1'b0;
        end
        2'b01 : begin
            result0 = 1'b0;
            result1 = enable;
            result2 = 1'b0;
            result3 = 1'b0;
        end
        2'b10 : begin
            result0 = 1'b0;
            result1 = 1'b0;
            result2 = enable;
            result3 = 1'b0;
        end
        2'b11 : begin
            result0 = 1'b0;
            result1 = 1'b0;
            result2 = 1'b0;
            result3 = enable;
        end
        default : begin
            result0 = enable;
            result1 = 1'b0;
            result2 = 1'b0;
            result3 = 1'b0;
        end
    endcase
end

endmodule