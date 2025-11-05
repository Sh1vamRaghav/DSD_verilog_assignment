`timescale 1ns / 1ps

module priority_encoder4to2(
    input D0, D1, D2, D3,
    output reg A1, A0,
    output reg V   
);

always @(*) begin
    if (D3) begin
        A1 = 1; A0 = 1; V = 1;
    end else if (D2) begin
        A1 = 1; A0 = 0; V = 1;
    end else if (D1) begin
        A1 = 0; A0 = 1; V = 1;
    end else if (D0) begin
        A1 = 0; A0 = 0; V = 1;
    end else begin
        A1 = 0; A0 = 0; V = 0;
    end
end

endmodule
