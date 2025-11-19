`timescale 1ns/1ps

module jk_ff_tb;

reg clk, j, k;
wire q, qbar;

jk_ff uut(
    .clk(clk),
    .j(j),
    .k(k),
    .q(q),
    .qbar(qbar)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("%4t | clk=%b j=%b k=%b q=%b qbar=%b", $time, clk, j, k, q, qbar);

    j=0; k=0; #12;
    j=1; k=0; #10;
    j=0; k=1; #10;
    j=1; k=1; #10;
    j=0; k=0; #10;

    $finish;
end

endmodule
