
module contador_mod6 (
    input wire clk,          // sinal de clock
    input loadn,        
  	input wire [3:0] data,   // valor inicial do contador
    input clearn,       // sinal de reset em nível baixo
    input en,           // sinal de habilitação em nível alto
    output wire tc,
    output wire zero,
  	output reg [3:0] tens // saída do contador
);
  always @ (negedge clearn) // lembrar de trocar o reset e o stop (feito)
  begin
    tens = 4'b0000;
  end
  assign zero = (tens == 4'b0000) ? 1'b1 : 1'b0;
  assign tc = en & zero;

  always @(posedge clk) begin
    if (en)
        if (tens == 4'b0000) begin
            tens <= 4'b0101; // volta a contar a partir de 5 quando atinge 0
        end else 
            tens <= tens - 4'b0001; // subtrai 1 do contador
        
    else begin
      if (~loadn)
          tens <= data; // reinicia o contador com o valor de 'data'
    end
  end

endmodule