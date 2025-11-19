module t_ff(
    input  wire clk,
    input  wire rst,
    input  wire t,
    output reg  q,
    output wire qbar
);

assign qbar = ~q;

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 0;
    else if (t)
        q <= ~q;
    else
        q <= q;
end

endmodule
