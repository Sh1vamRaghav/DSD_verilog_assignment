`timescale 1ns/1ps

module tb_mux8x1;

reg  [7:0] d;
reg  [2:0] s;
wire y;

mux8x1 uut (
    .d(d),
    .s(s),
    .y(y)
);

initial begin
    $display("Time |  s  |    d      | y");
    $monitor("%4t | %b | %b | %b", $time, s, d, y);

    d = 8'b11010011;

    s = 3'b000; #10;
    s = 3'b001; #10;
    s = 3'b010; #10;
    s = 3'b011; #10;
    s = 3'b100; #10;
    s = 3'b101; #10;
    s = 3'b110; #10;
    s = 3'b111; #10;

    $finish;
end

endmodule
