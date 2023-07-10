module cla_4bit(
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

wire [3:0] p,g,c;

assign p = a^b;
assign g = a&b;
assign sum = p^c;

assign c[0] = cin;
assign c[1] = g[0] | (p[0] & c[0]);
assign c[2] = g[1] | (g[0] & p[1]) | (c[0] & p[0] & p[1]);
assign c[3] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (c[0] & p[0] & p[1] & p[2]);
assign cout = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (c[0] & p[1] & p[2] & p[3]) | (c[0] & p[0] & p[1] & p[2] & p[3]);

endmodule