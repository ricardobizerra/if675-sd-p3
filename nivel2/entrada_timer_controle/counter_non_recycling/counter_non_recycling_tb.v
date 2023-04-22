`timescale 1ns/1ns
`include "counter_non_recycling.v"

module counter_non_recycling_tb;

    reg clk_tb, clear_tb, contador_tb;
  	wire signal_tb;

  	counter_non_recycling dut(
        .clk(clk_tb), .clear(clear_tb),
        .signal(signal_tb)
    );

    initial begin

        $dumpfile("counter_non_recycling_tb.vcd");
        $dumpvars(0, counter_non_recycling_tb);

        clk_tb = 1; clear_tb=1; contador_tb = 0;
        #5 contador_tb = 3;
        #5 clear_tb = 0; 
        
        repeat(8) begin
            #10 clk_tb = ~clk_tb;
        end

    end
endmodule