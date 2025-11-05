`timescale 1ns / 1ps

module decoder2to4_tb;

reg A1, A0;
wire D0, D1, D2, D3;

decoder2to4 uut (
    .A1(A1),
    .A0(A0),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3)
);

initial begin
    $display("A1 A0 | D0 D1 D2 D3");
    $monitor("%b  %b  | %b  %b  %b  %b", A1, A0, D0, D1, D2, D3);

    A1=0; A0=0; #10;
    A1=0; A0=1; #10;
    A1=1; A0=0; #10;
    A1=1; A0=1; #10;

    $finish;
end

endmodule
