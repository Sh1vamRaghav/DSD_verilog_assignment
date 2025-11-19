module sr_latch(
    input  wire S,
    input  wire R,
    output wire Q,
    output wire Qbar
);

assign Q     = ~(R | Qbar);
assign Qbar  = ~(S | Q);

endmodule
