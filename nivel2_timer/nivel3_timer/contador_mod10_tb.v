`include "contador_mod10.v"
`timescale 1ns/1ps

module contador_mod10_tb();

    reg clk;
    reg loadn;
    reg [3:0] data;
    reg clearn;
    reg en;
    wire tc;
    wire zero;
    wire [3:0] ones;
    integer i;

    contador_mod10 dut(
        clk,
        loadn,
        data,
        clearn,
        en,
        tc,
        zero,
        ones
    );

    initial begin
        clk = 1'b0;
    end

    initial begin
        $dumpfile("contador_mod10_tb.vcd");
        $dumpvars(0, dut);

        loadn = 1'b1;
        en = 1'b0;
        clearn = 1'b1;
        data = 4'b0110;

        #5 loadn = 1'b0;

        #5 loadn = 1'b1;

        #5 en = 1'b1;
    end

    initial begin
        #5 clk = ~clk;
        for (i = 0; i < 26; i = i + 1) begin
            #5 clk = ~clk;
        end
    end

endmodule
