`timescale 1ns/1ps

module t_ff_tb;

reg clk, rst, t;
wire q, qbar;

t_ff uut(
    .clk(clk),
    .rst(rst),
    .t(t),
    .q(q),
    .qbar(qbar)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    t = 0;
    #7 rst = 0;
    #5 t = 1;
    #40 t = 0;
    #20 t = 1;
    #20 $finish;
end

initial $monitor("%4t | clk=%b rst=%b t=%b q=%b qbar=%b", $time, clk, rst, t, q, qbar);

endmodule
