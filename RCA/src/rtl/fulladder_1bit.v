module fulladder_1bit(
    a,
    b,
    cin,
    sum,
    cout
);

input a, b, cin;

output cout, sum;

wire sum1, carry1, carry2;

fulladder_half u_fulladder_half1(
    .a(a),
    .b(b),
    .sum(sum1),
    .cout(carry1)
);
fulladder_half u_fulladder_half2(
    .a(sum1),
    .b(cin),
    .sum(sum),
    .cout(carry2)
);

assign cout = carry1 | carry2;

endmodule