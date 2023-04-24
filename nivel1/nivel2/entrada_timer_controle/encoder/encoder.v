module encoder(
    input wire [9:0] keyboard,
    input wire enablen,
    output reg [3:0] bcd
    //output reg valid_data
);
    //initial valid_data = 1'b0;
    always @(keyboard)
        if (enablen == 1'b0) begin
          if (keyboard[9:0] == 10'b1000000000)
          begin
        	  bcd = 4'b1001;
          end
        else if (keyboard[9:0] == 10'b0100000000)
          begin
        	  bcd = 4'b1000;
          end
        else if (keyboard[9:0] == 10'b0010000000)
          begin
			      bcd = 4'b0111;
          end
        else if (keyboard[9:0] == 10'b0001000000)
          begin
            bcd = 4'b0110;
          end 
        else if (keyboard[9:0] == 10'b0000100000)
          begin 
			      bcd = 4'b0101;
          end 
        else if (keyboard[9:0] == 10'b0000010000)
          begin
			      bcd = 4'b0100;
          end 
        else if (keyboard[9:0] == 10'b0000001000)
          begin
			      bcd = 4'b0011;
          end 
        else if (keyboard[9:0] == 10'b0000000100)
          begin 
			      bcd = 4'b0010;
          end 
        else if (keyboard[9:0] == 10'b0000000010)
          begin 
			      bcd = 4'b0001;
          end 
        else if (keyboard[9:0] == 10'b0000000001)
          begin
			      bcd = 4'b0000;
          end
        end

endmodule