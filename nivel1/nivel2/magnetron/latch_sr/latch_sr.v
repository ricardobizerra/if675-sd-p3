module latch_sr(input wire set, reset,
                output reg mag_on); // mag_on seria a saida Q do latch SR padrao

    always @(set or reset) 
    begin
        if (!set && !reset) 
            mag_on <= mag_on;
        else if (set && reset)
            mag_on <= 0;
        else 
            mag_on <= set;
    end
endmodule