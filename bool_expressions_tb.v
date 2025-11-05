`timescale 1ns / 1ps

module boolean_expression_tb;

reg A, B, C;
wire F;

boolean_expression uut (
    .A(A),
    .B(B),
    .C(C),
    .F(F)
);

initial begin
    $display("Time\tA B C | F");
    $monitor("%0t\t%b %b %b | %b", $time, A, B, C, F);
    A=0; B=0; C=0; #10;
    A=0; B=0; C=1; #10;
    A=0; B=1; C=0; #10;
    A=0; B=1; C=1; #10;
    A=1; B=0; C=0; #10;
    A=1; B=0; C=1; #10;
    A=1; B=1; C=0; #10;
    A=1; B=1; C=1; #10;

    $finish;
end

endmodule
