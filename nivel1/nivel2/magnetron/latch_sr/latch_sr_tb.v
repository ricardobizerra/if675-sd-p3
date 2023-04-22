`timescale 1ns/1ps
`include "latch_sr.v"

module latch_sr_tb();

    reg set_TB, reset_TB;
    latch_sr DUT(.set(set_TB), .reset(reset_TB));

    initial 
        begin
            
            $dumpfile("latch_sr_tb.vcd");
            $dumpvars(0,latch_sr_tb);

                set_TB=0; reset_TB=0;
            #3 set_TB=0; reset_TB=1;
            #3 set_TB=0; reset_TB=0;
            #3 set_TB=1; reset_TB=0;
            #3 set_TB=0; reset_TB=0;
            #3 set_TB=1; reset_TB=1;
            #3;
        end 
endmodule