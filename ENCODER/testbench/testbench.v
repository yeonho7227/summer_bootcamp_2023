module testbench();

reg [3:0] a;
wire[1:0] y;

encoder u_encoder(
    .a(a),
    .y(y)
);

initial begin

    a = 4'b0001;
    #20;
    a = 4'b0010;
    #20;
    a = 4'b0100;
    #20;
    a = 4'b1000;
    #20;
    $stop;


end

endmodule

