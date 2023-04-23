`timescale 1ns/1ns
`include "control_timer.v"

module control_timer_tb;

    reg [9:0] keyboard_tb;
    reg enablen_tb;
    reg clk_tb;
    wire [3:0] d;
    wire loadn;
    wire pgt_1Hz;

    control_timer dut(
        .keyboard(keyboard_tb), .enablen(enablen_tb), .clk(clk_tb),
        .d(d_tb), .loadn(loadn_tb), .pgt_1Hz(pgt_1Hz_tb)
    );

    initial begin
        $dumpfile("control_timer_tb.vcd");
        $dumpvars(0, control_timer_tb);

            #1 keyboard_tb = 10'b1000000000;
            clk_tb = 1;
            enablen_tb = 0;
            repeat(201)
                #1 clk_tb = ~clk_tb;
            
            #1 keyboard_tb = 10'b0100000000;
            clk_tb = 1;
            repeat(201)
                #1 clk_tb = ~clk_tb;

            #1 keyboard_tb = 10'b100000000;
            clk_tb = 1;
            enablen_tb = 1;
            repeat(201)
                #1 clk_tb = ~clk_tb;

            enablen_tb = 0;
            repeat(201)
                #1 clk_tb = ~clk_tb;
            
    end

endmodule