`timescale 1ns/1ps

module sr_ff_tb;

reg clk, s, r;
wire q, qbar;

sr_ff uut(
    .clk(clk),
    .s(s),
    .r(r),
    .q(q),
    .qbar(qbar)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("%4t | clk=%b s=%b r=%b q=%b qbar=%b", $time, clk, s, r, q, qbar);

    s=0; r=0; #12;
    s=1; r=0; #10;
    s=0; r=0; #10;
    s=0; r=1; #10;
    s=0; r=0; #10;
    s=1; r=1; #10;

    $finish;
end

endmodule
