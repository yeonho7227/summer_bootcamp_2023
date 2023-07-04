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
        2'b00 : result0 = enable;
        2'b01 : result1 = enable;
        2'b10 : result2 = enable;
        2'b11 : result3 = enable;
        default : result0 = enable;
    endcase
end

endmodule