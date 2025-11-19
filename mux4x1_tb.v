`timescale 1ns/1ps

module tb_mux4x1;

reg  [3:0] d;
reg  [1:0] s;
wire y;

mux4x1 uut (
    .d(d),
    .s(s),
    .y(y)
);

initial begin
    $display("Time | s | d | y");
    $monitor("%4t | %b | %b | %b", $time, s, d, y);

    d = 4'b1010;   // Example: d0=0, d1=1, d2=0, d3=1

    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

    $finish;
end

endmodule
