module fulladder_4bit(
    a,
    b,
    cin,
    sum,
    cout
);

input [3:0] a;
input [3:0] b;
input cin;

output cout;
output [3:0] sum;

wire carry1, carry2, carry3;

fulladder_1bit u_fulladder_1bit1(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .cout(carry1)
);
fulladder_1bit u_fulladder_1bit2(
    .a(a[1]),
    .b(b[1]),
    .cin(carry1),
    .sum(sum[1]),
    .cout(carry2)
);
fulladder_1bit u_fulladder_1bit3(
    .a(a[2]),
    .b(b[2]),
    .cin(carry2),
    .sum(sum[2]),
    .cout(carry3)
);
fulladder_1bit u_fulladder_1bit4(
    .a(a[3]),
    .b(b[3]),
    .cin(carry3),
    .sum(sum[3]),
    .cout(cout)
);

endmodule