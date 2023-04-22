module counter_non_recycling(
    input wire clk,
    input wire clear,
    output reg signal
);

    reg [2:0] counter;

    always @(posedge clk or posedge clear) begin
        if (clear) begin
            counter = 3'b000;
        end

        else begin
            if (counter == 3'b011) begin
                signal = 1'b1;
                counter = counter + 1'b1;
            end

            else if (counter < 3'b111) begin
                counter = counter + 1'b1;
            end
        end
    end
    
endmodule