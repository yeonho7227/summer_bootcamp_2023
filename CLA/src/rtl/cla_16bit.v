module cla_16bit(
    a,
    b,
    cin,
    sum,
    cout
);

input [15:0] a;
input [15:0] b;
input cin;

output cout;
output [15:0] sum;

wire carry1;

cla_8bit u_cla_8bit1(
    .a(a[7:0]),
    .b(b[7:0]),
    .cin(cin),
    .sum(sum[7:0]),
    .cout(carry1)
);
cla_8bit u_cla_8bit2(
    .a(a[15:8]),
    .b(b[15:8]),
    .cin(carry1),
    .sum(sum[15:8]),
    .cout(cout)
);

endmodule