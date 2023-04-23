module counter_freq(
    input reg clk,
    output reg clk_out
);

    reg [5:0] count = 6'b000000;
    initial clk_out = 1'b0;

    always @(posedge clk) begin
        count = count + 1'b1;
        if (count >= 50) begin
            count = 6'b000000;
            clk_out = !clk_out;
        end
    end

endmodule