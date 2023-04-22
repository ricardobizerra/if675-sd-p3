module mux(
    input wire enablen,
    input reg signal,
    input clk,
    output reg pgt_1Hz
);

    always @(*) begin
        if (enablen == 1'b0) begin
            pgt_1Hz = signal;
        end

        else begin
            pgt_1Hz = clk;
        end
    end
    
endmodule