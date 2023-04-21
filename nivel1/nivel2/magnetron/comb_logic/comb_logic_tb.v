`timescale 1ns/1ps
`include "comb_logic.v"

module comb_logic_tb();

    reg startn_TB, stopn_TB, clearn_TB, door_closed_TB , timer_done_TB;

    comb_logic DUT(.startn(startn_TB),.stopn(stopn_TB),.clearn(clearn_TB),.door_closed(door_closed_TB),.timer_done(timer_done_TB));

    initial 
        begin
            
            $dumpfile("comb_logic_tb.vcd");
            $dumpvars(0,comb_logic_tb);

                startn_TB=1; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=1;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=0;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=0; door_closed_TB=1; timer_done_TB=1;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=0;
            #3 startn_TB=0; stopn_TB=0; clearn_TB=1; door_closed_TB=1; timer_done_TB=0;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=0;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=0; timer_done_TB=0;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=0;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=1;
            #3 startn_TB=0; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=0;
            #3 startn_TB=1; stopn_TB=1; clearn_TB=1; door_closed_TB=1; timer_done_TB=1;
            #3;
        end 
endmodule