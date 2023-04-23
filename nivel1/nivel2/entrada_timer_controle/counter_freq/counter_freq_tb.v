`timescale 1ns/1ns
`include "counter_freq.v"

module counter_freq_tb;
    reg clk_tb;
    wire clk_out_tb;

    counter_freq dut(
        .clk(clk_tb),
        .clk_out(clk_out_tb)
    );
  
    initial begin

        $dumpfile("counter_freq_tb.vcd");
        $dumpvars(0, counter_freq_tb);
        #1 clk_tb = 1'b0;

        repeat(200)
            #1 clk_tb = ~clk_tb;
    end
endmodule