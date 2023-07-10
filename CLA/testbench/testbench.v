module testbench();

reg [31:0] a;
reg [31:0] b;
reg cin;

wire cout;
wire [31:0] sum;

cla_32bit u_cla_32bit(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
);

initial begin
    a = 32'h00000002;
    b = 32'h00000003;
    cin = 1'b0;
    #20;

    a = 32'h80000008;
    b = 32'h80000003;
    cin = 1'b0;
    #20;

    $stop;
end


endmodule


