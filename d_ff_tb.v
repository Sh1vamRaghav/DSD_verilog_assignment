`timescale 1ns/1ps

module d_ff_tb;

reg clk, d;
wire q, qbar;

d_ff uut(
    .clk(clk),
    .d(d),
    .q(q),
    .qbar(qbar)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("%4t | clk=%b d=%b q=%b qbar=%b", $time, clk, d, q, qbar);

    d=0; #12;
    d=1; #10;
    d=0; #10;
    d=1; #10;

    $finish;
end

endmodule
