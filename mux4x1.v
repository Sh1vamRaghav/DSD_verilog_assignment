module mux4x1(
    input  wire [3:0] d,
    input  wire [1:0] s,
    output reg  y
);

always @(*) begin
    case (s)
        2'b00: y = d[0];
        2'b01: y = d[1];
        2'b10: y = d[2];
        2'b11: y = d[3];
    endcase
end

endmodule
