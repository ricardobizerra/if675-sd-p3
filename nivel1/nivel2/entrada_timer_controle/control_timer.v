`include "counter_freq/counter_freq.v"
`include "counter_non_recycling/counter_non_recycling.v"
`include "encoder/encoder.v"
`include "mux/mux.v"

module control_timer(
    input wire [9:0] keyboard,
    input wire enablen,
    input clk,
    output wire [3:0] d,
    output reg loadn,
    output reg pgt_1Hz
);

    reg clk_1Hz;
    reg signal;

    counter_freq counter_freq(
        .clk(clk),
        .clk_out(clk_1Hz)
    );

    counter_non_recycling counter_non_recycling(
        .clk(clk), .clear(loadn),
        .signal(signal)
    );

    encoder encoder(
        .keyboard(keyboard), .enablen(enablen),
        .bcd(d), .valid_data(loadn)
    );

    mux mux(
        .enablen(enablen), .signal(signal), .clk(clk_1Hz),
        .pgt_1Hz(pgt_1Hz)
    );

endmodule