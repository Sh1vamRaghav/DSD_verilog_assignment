`timescale 1ns / 1ps

module decoder2to4(
    input A1, A0,
    output D0, D1, D2, D3
);

assign D0 = (~A1 & ~A0);
assign D1 = (~A1 &  A0);
assign D2 = ( A1 & ~A0);
assign D3 = ( A1 &  A0);

endmodule
