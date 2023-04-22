`include "comb_logic/comb_logic.v"
`include "latch_sr/latch_sr.v"

module magnetron(input wire startn, stopn, 
                 clearn, door_closed, timer_done,
                 output wire Q);

    wire set_wire, reset_wire;

    comb_logic comb_logic(startn, stopn, clearn, door_closed, timer_done, set_wire, reset_wire);


    latch_sr latch_sr(set_wire, reset_wire, Q);

endmodule