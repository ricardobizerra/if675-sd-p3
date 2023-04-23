`timescale 1ns/1ns
`include "mux.v"

module mux_tb;

    reg enablen_tb, signal_tb, clk_tb;
  	wire pgt_1Hz_tb;

  	mux dut(
        .enablen(enablen_tb), .signal(signal_tb), .clk(clk_tb), 
        .pgt_1Hz(pgt_1Hz_tb)
    );

    initial begin

        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);

        enablen_tb=1; signal_tb=0; clk_tb=1;
        #5 enablen_tb=0; signal_tb=0; clk_tb=1;
        #5 enablen_tb=1; signal_tb=1; clk_tb=0;
        #5 enablen_tb=0; signal_tb=1; clk_tb=0;
        #5 enablen_tb=1; signal_tb=1; clk_tb=1;
        #5 enablen_tb=0; signal_tb=1; clk_tb=1;
        #5 enablen_tb=1; signal_tb=0; clk_tb=0;
        #5 enablen_tb=0; signal_tb=0; clk_tb=0;
        
    end

endmodule