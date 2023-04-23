`timescale 1ns/1ns
`include "encoder.v"

module encoder_tb;

    reg [9:0]keyboard_tb;
    reg enablen_tb;
  	wire valid_data_tb;
    wire [3:0]bcd_tb;

  	encoder dut(
        .keyboard(keyboard_tb), .enablen(enablen_tb), 
        .bcd(bcd_tb), .valid_data(valid_data_tb)
    );

    initial begin

        $dumpfile("encoder_tb.vcd");
        $dumpvars(0, encoder_tb);

        keyboard_tb=10'b1000000000; enablen_tb=0;
        #5 keyboard_tb=10'b0100000000; enablen_tb=0; 
        #5 keyboard_tb=10'b0010000000; enablen_tb=0;
        #5 keyboard_tb=10'b0001000000; enablen_tb=0;
        #5 keyboard_tb=10'b0000100000; enablen_tb=0;
        #5 keyboard_tb=10'b0000010000; enablen_tb=0;
        #5 keyboard_tb=10'b0000001000; enablen_tb=0;
        #5 keyboard_tb=10'b0000000100; enablen_tb=0;
        #5 keyboard_tb=10'b0000000010; enablen_tb=0;
        #5 keyboard_tb=10'b0000000001; enablen_tb=0;

        #5 keyboard_tb=10'b1000000000; enablen_tb=1;
        #5 keyboard_tb=10'b0100000000; enablen_tb=1; 
        #5 keyboard_tb=10'b0010000000; enablen_tb=1;
        #5 keyboard_tb=10'b0001000000; enablen_tb=1;
        #5 keyboard_tb=10'b0000100000; enablen_tb=1;
        #5 keyboard_tb=10'b0000010000; enablen_tb=1;
        #5 keyboard_tb=10'b0000001000; enablen_tb=1;
        #5 keyboard_tb=10'b0000000100; enablen_tb=1;
        #5 keyboard_tb=10'b0000000010; enablen_tb=1;
        #5 keyboard_tb=10'b0000000001; enablen_tb=1;

        #5 keyboard_tb=10'b1000000001; enablen_tb=0;
        #5 keyboard_tb=10'b1000001001; enablen_tb=0;
        #5 keyboard_tb=10'b1000000001; enablen_tb=1;
        #5 keyboard_tb=10'b1000001001; enablen_tb=1;

          
    end
endmodule