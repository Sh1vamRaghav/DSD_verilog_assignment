`timescale 1ns / 1ps

module boolean_expression(
    input A,
    input B,
    input C,
    output F
);

assign F = (A & B) | (~A & C);

endmodule
