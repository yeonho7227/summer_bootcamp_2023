module mux(
    a,
    b,
    c,
    d,
    sig,
    result
);

input a;
input b;
input c;
input d;
input [1:0] sig;
output result;
reg result;

always@(*) begin
    case(sig)
        2'b00 : result = a;
        2'b01 : result = b;
        2'b10 : result = c;
        2'b11 : result = d;
        default : result = a;
    endcase
end

endmodule