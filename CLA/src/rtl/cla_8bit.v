module cla_8bit(
    a,
    b,
    cin,
    sum,
    cout
);

input [7:0] a;
input [7:0] b;
input cin;

output cout;
output [7:0] sum;

wire carry1;

cla_4bit u_cla_4bit1(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(carry1)
);
cla_4bit u_cla_4bit2(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(carry1),
    .sum(sum[7:4]),
    .cout(cout)
);

endmodule