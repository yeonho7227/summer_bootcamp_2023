module testbench();

reg [1:0] a;

wire[3:0] y;

decoder u_decoder(
    .a(a),
    .y(y)
);

initial begin

    a = 2'b00;
    #20;
    a = 2'b01;
    #20;
    a = 2'b10;
    #20;
    a = 2'b11;
    #20;
    $stop;
end

endmodule

