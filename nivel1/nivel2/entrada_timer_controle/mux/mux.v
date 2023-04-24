module mux(
    input wire enablen,
    input signal,
    input clk,
    output reg pgt_1Hz
);

    always @*
        if (enablen == 1'b0) begin
            pgt_1Hz = signal;
        end

        else
            pgt_1Hz = clk; 
    
endmodule