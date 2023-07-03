module testbench2;
    reg a;
    reg b;
    wire c;

    and_gate u_and_gate(
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        a = 0;
        b = 0;
        #5;

        a = 1;
        b = 0;
        #5;

        a = 0;
        b = 1;
        #5;

        a = 1;
        b = 1;
        #5;

        $stop;
    end

endmodule