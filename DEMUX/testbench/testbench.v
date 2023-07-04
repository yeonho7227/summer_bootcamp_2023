module testbench();

reg enable;
reg [1:0] sig;

wire result0;
wire result1;
wire result2;
wire result3;

demux u_demux(
    .enable(enable),
    .sig(sig),
    .result0(result0),
    .result1(result1),
    .result2(result2),
    .result3(result3)
);

initial begin

    enable = 1'b1;
    sig = 2'b00;
    #20;
    enable = 1'b1;
    sig = 2'b01;
    #20;
    enable = 1'b1;
    sig = 2'b10;
    #20;
    enable = 1'b1;
    sig = 2'b11;
    #20;
    $stop;
end
endmodule

