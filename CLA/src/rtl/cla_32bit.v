module cla_32bit(
    a,
    b,
    cin,
    sum,
    cout
);

input [31:0] a;
input [31:0] b;
input cin;

output cout;
output [31:0] sum;

wire carry1;

cla_16bit u_cla_16bit1(
    .a(a[15:0]),
    .b(b[15:0]),
    .cin(cin),
    .sum(sum[15:0]),
    .cout(carry1)
);
cla_16bit u_cla_16bit2(
    .a(a[31:16]),
    .b(b[31:16]),
    .cin(carry1),
    .sum(sum[31:16]),
    .cout(cout)
);

endmodule