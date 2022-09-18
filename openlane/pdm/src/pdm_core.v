`default_nettype none

module pdm_core #(
    parameter BITWIDTH=8) (
    input [7:0] pdm_input,
    input       write_en,
    input       clk, reset_n,    
    output      pdm_out
);

`ifdef COCOTB_SIM_WAVEFORMS
initial begin
    $dumpfile("pdm_core.vcd");
    $dumpvars(0, pdm_core);
end
`endif

reg [BITWIDTH-1:0] accumulator;
reg [BITWIDTH-1:0] input_reg;

wire [BITWIDTH:0] sum;

assign sum = input_reg + accumulator;
assign pdm_out = sum[BITWIDTH];

always @(posedge clk or negedge reset_n) begin
    if (~reset_n) begin 
        input_reg <=    {(BITWIDTH-1){1'b0}};
        accumulator <=  {(BITWIDTH-1){1'b0}};
    end else begin
        accumulator <= sum[BITWIDTH-1:0];
        if (write_en) input_reg <= pdm_input ;
    end
end

endmodule

`default_nettype wire