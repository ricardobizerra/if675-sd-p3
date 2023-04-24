`timescale 1ns/1ps

module contador_mod10 (
    input wire clk,          // sinal de clock
    input loadn,        
  	input wire [3:0] data,   // valor inicial do contador
    input clearn,       // sinal de reset em nível baixo
    input en,           // sinal de habilitação em nível alto
    output wire tc,
    output wire zero,
  	output reg [3:0] ones // saída do contador
);
always @ (negedge clearn) // Lembrar de trocar o reset e o stop (feito)
  begin
    ones = 4'b0000;
  end
  assign zero = (ones == 4'b0000) ? 1'b1 : 1'b0;
  assign tc = en & zero;

  always @(posedge clk) begin
    if (en) 
        if (ones == 4'b0000) begin
            ones <= 4'b1001; // volta a contar a partir de 9 quando atinge 0
        end else
            ones <= ones - 4'b0001; // subtrai 1 do contador
        
    else begin
      if (~loadn)
          ones <= data; // reinicia o contador com o valor de 'data'
    end
  end

endmodule