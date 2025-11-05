`timescale 1ns / 1ps

module priority_encoder4to2_tb;

reg D0, D1, D2, D3;
wire A1, A0, V;

priority_encoder4to2 uut (
    .D0(D0), .D1(D1), .D2(D2), .D3(D3),
    .A1(A1), .A0(A0), .V(V)
);

initial begin
    $display("D3 D2 D1 D0 | A1 A0 V");
    $monitor("%b  %b  %b  %b  | %b  %b  %b", D3, D2, D1, D0, A1, A0, V);

    // test various cases
    D3=0; D2=0; D1=0; D0=0; #10;
    D3=0; D2=0; D1=0; D0=1; #10;
    D3=0; D2=0; D1=1; D0=1; #10;  // D1 has higher priority
    D3=0; D2=1; D1=1; D0=1; #10;  // D2 wins
    D3=1; D2=1; D1=1; D0=1; #10;  // D3 wins

    $finish;
end

endmodule
