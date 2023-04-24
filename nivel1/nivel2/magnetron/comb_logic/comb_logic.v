module comb_logic(input wire startn, stopn, clearn, door_closed, timer_done,
                  output wire set, reset);

    assign set = (~startn) & door_closed & (~timer_done);
    assign reset = (~door_closed) | (~clearn) | (~stopn) | timer_done;

endmodule