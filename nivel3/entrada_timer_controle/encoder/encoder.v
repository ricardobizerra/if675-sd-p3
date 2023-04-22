module encoder(
    input wire [9:0] keyboard,
    input wire enablen,
    output wire [3:0] bcd,
    output wire valid_data
);

    always @(keyboard)
        if (enablen == 1'b0) begin
            case(keyboard)
                10'b1000000000: bcd = 4'b1001;
                10'b0100000000: bcd = 4'b1000;
                10'b0010000000: bcd = 4'b0111;
                10'b0001000000: bcd = 4'b0110;
                10'b0000100000: bcd = 4'b0101;
                10'b0000010000: bcd = 4'b0100;
                10'b0000001000: bcd = 4'b0011;
                10'b0000000100: bcd = 4'b0010;
                10'b0000000010: bcd = 4'b0001;
                10'b0000000001: bcd = 4'b0000;
            endcase
            valid_data = 1'b1;
        end

        else begin
            valid_data = 1'b0;
        end

endmodule
