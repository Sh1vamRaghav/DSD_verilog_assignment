`timescale 1ns/1ps

module universal_add_sub_tb;

reg  [3:0] a, b;
reg        mode;
wire [3:0] result;
wire       carry_out;
wire       overflow;

universal_add_sub uut(
    .a(a),
    .b(b),
    .mode(mode),
    .result(result),
    .carry_out(carry_out),
    .overflow(overflow)
);

initial begin
    $monitor("%4t | mode=%b a=%b b=%b result=%b carry=%b ovf=%b",
             $time, mode, a, b, result, carry_out, overflow);

    mode=0; a=4'b0011; b=4'b0001; #10;
    mode=0; a=4'b0111; b=4'b0001; #10;
    mode=0; a=4'b0100; b=4'b0100; #10;

    mode=1; a=4'b0101; b=4'b0011; #10;
    mode=1; a=4'b0000; b=4'b0001; #10;
    mode=1; a=4'b1000; b=4'b0111; #10;

    $finish;
end

endmodule
