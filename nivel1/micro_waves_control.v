`include "nivel2/magnetron/magnetron.v"
`include "nivel2/decoder_7seg/decoder.v"
`include "nivel2/entrada_timer_controle/control_timer.v"
`include "nivel2/timer_min_sec/timer_nivel2.v"

module micro_waves_control(input wire [9:0] keyboard, 
                           input wire clk, startn, stopn, clearn, door_closed, 
                           output wire [6:0] sec_ones_segs, 
                           output wire [6:0] sec_tens_segs, 
                           output wire [6:0] min_segs,
                           output wire mag_on);

    wire saida_controle;
    wire [3:0] D;
    wire loadn;
    wire pgt_1Hz;
    wire zero;

    assign mag_on = saida_controle;

    wire [3:0] unidades, dezenas, minutos;
    
    control_timer control_timer(keyboard, saida_controle, clk, D, loadn, pgt_1Hz);

    magnetron magnetron(startn, stopn, clearn,door_closed, zero, saida_controle); // saida zero do timer conectado em timer_done do mag_on

    timer_nivel2 timer_nivel2(D, pgt_1Hz, saida_controle, loadn, clearn, unidades, dezenas, minutos, zero); // enable do timer é o mag_on

    decoder decoder(min_segs, sec_tens_segs, sec_ones_segs, minutos, dezenas, unidades);

endmodule