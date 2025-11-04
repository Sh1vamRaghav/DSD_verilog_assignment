`timescale 1ns / 1ps

module basic_gates(
    input A,
    input B,
    output and_gate,
    output or_gate,
    output not_gate,
    output xor_gate,
    output nand_gate,
    output nor_gate,
    output xnor_gate
);

assign and_gate = A&B;
assign or_gate = A|B;
assign not_gate = ~A;
assign xor_gate = A^B;
assign nand_gate = ~(A&B);
assign nor_gate = ~(A|B);
assign xnor_gate = ~(A^B);
    
  
endmodule
