module universal_add_sub(
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire       mode,
    output wire [3:0] result,
    output wire       carry_out,
    output wire       overflow
);

wire [3:0] b_mod;
assign b_mod = b ^ {4{mode}};

wire [4:0] sum;
assign sum = a + b_mod + mode;

assign result   = sum[3:0];
assign carry_out = sum[4];
assign overflow  = (a[3] & b_mod[3] & ~sum[3]) | (~a[3] & ~b_mod[3] & sum[3]);

endmodule
