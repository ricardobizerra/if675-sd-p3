`timescale 1ns/1ps
`include "micro_waves_control.v"

module micro_waves_control_tb();

    reg startn_TB, stopn_TB, clearn_TB, door_closed_TB, clk_TB, [9:0] keypad_TB;
    wire [6:0] sec_ones_segs_TB, sec_tens_segs_TB, min_segs_TB;
    wire mag_on_TB;

    micro_waves_control DUT (.startn(startn_TB),.stopn(stopn_TB),.clearn(clearn_TB),.door_closed(door_closed_TB),.clk(clk_TB),.keypad(keypad_TB).sec_ones_segs(sec_ones_segs_TB),.sec_tens_segs(sec_tens_segs_TB),.min_segs(min_segs_TB),.mag_on(mag_on_TB));

    initial 
        begin

            $dumpfile("micro_waves_control_tb.vcd");
            $dumpvars(0, micro_waves_control_tb);

        end

endmodule