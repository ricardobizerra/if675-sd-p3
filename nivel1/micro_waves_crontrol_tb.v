`timescale 1ns/1ps
`include "micro_waves_control.v"

module micro_waves_control_tb;

    reg startn_TB, stopn_TB, clearn_TB, door_closed_TB, clk_TB;
    reg [9:0] keypad_TB;
    wire [6:0] sec_ones_segs_TB, sec_tens_segs_TB, min_segs_TB;
    wire mag_on_TB;

    micro_waves_control DUT (.startn(startn_TB),.stopn(stopn_TB),.clearn(clearn_TB),.door_closed(door_closed_TB),.clk(clk_TB),.keyboard(keypad_TB),.sec_ones_segs(sec_ones_segs_TB),.sec_tens_segs(sec_tens_segs_TB),.min_segs(min_segs_TB),.mag_on(mag_on_TB));

    initial 
        begin

            $dumpfile("micro_waves_control_tb.vcd");
            $dumpvars(0, micro_waves_control_tb);

        end
    
    initial begin
        keypad_TB = 10'b0000000000;
        door_closed_TB = 0;
        stopn_TB = 1;
        startn_TB = 1;

        // Inicializando o contador
        clearn_TB = 1; #1;
        clearn_TB = 0; #1;
        clearn_TB = 1;

        // Digitando o 2
        #1100;
        keypad_TB = 10'b0000000100;
        #1100;
        keypad_TB = 10'b0000000000;

        // Digitando o 5
        #1100;
        keypad_TB = 10'b0000100000;
        #1100;
        keypad_TB = 10'b0000000000;

        // Digitando o 9
        #1100;
        keypad_TB = 10'b1000000000;
        #1100;
        keypad_TB = 10'b0000000000;

        // Digitando o 9
        #1100;
        keypad_TB = 10'b1000000000;
        #1100;
        keypad_TB = 10'b0000000000;

        // Digitando o 9
        #1100;
        keypad_TB = 10'b1000000000;
        #1100;
        keypad_TB = 10'b0000000000;

        // Tentando abrir
        #1100;
        startn_TB = 0;
        #1100;
        startn_TB = 1;
        #1100;
        // Fechando a porta
        door_closed_TB = 1;
        #1000;
        startn_TB = 0;
        #1000;
        startn_TB = 1;
        #2000;
        // Pausando o timer
        stopn_TB = 0;
        #1000;
        stopn_TB = 1;
        #1000;
        startn_TB = 0;
        #1000;
        startn_TB = 1;
        #2000;
        // Abrindo porta
        door_closed_TB = 0;
        #1000;
        door_closed_TB = 1;
        #3000000;
        $finish();
    end

endmodule