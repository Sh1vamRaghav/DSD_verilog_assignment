`timescale 1ns / 1ps

module basic_gates_tb;

reg A;
reg B;
wire and_gate;
wire or_gate;
wire not_gate;
wire xor_gate;
wire nand_gate;
wire nor_gate;
wire xnor_gate;

basic_gates uut (
    .A(A),
    .B(B),
    .and_gate(and_gate),
    .or_gate(or_gate),
    .not_gate(not_gate),
    .xor_gate(xor_gate),
    .nand_gate(nand_gate),
    .nor_gate(nor_gate),
    .xnor_gate(xnor_gate)
);

initial begin
    $display("Time\tA B | AND OR NOT XOR NAND NOR XNOR");
    $monitor("%0t\t%b %b |  %b   %b   %b   %b    %b    %b    %b",
             $time, A, B, and_gate, or_gate, not_gate, xor_gate, nand_gate, nor_gate, xnor_gate);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    // End simulation
    $finish;
end

endmodule
