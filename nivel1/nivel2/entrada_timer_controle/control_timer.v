`include "nivel2/entrada_timer_controle/counter_freq/counter_freq.v"
`include "nivel2/entrada_timer_controle/counter_non_recycling/counter_non_recycling.v"
`include "nivel2/entrada_timer_controle/encoder/encoder.v"
`include "nivel2/entrada_timer_controle/mux/mux.v"

module control_timer(
    input [9:0] keyboard,
    input enablen,
    input clk,
    output [3:0] d,
    output loadn,
    output pgt_1Hz
);
    wire clk_1Hz;
    wire signal;
    
    reg keypad_pressed;
    
    initial keypad_pressed = 0;

    always @(keyboard) begin
    if(keyboard == 10'b00000_00000)
            keypad_pressed <= 0;
        else
            keypad_pressed <= 1;
    end

    assign loadn = ~keypad_pressed;

    encoder encoder(
        .keyboard(keyboard), .enablen(enablen),
        .bcd(d)
    );
  
    counter_freq counter_freq(
        .clk(clk),
        .clk_out(clk_1Hz)
    );

    counter_non_recycling counter_non_recycling(
        .clk(clk), .clear(loadn),
        .signal(signal)
    );

    mux mux(
        .enablen(enablen), .signal(signal), .clk(clk_1Hz),
        .pgt_1Hz(pgt_1Hz)
    );

endmodule