
module contador_mod6 (
    input wire clk,          // sinal de clock
    input wire loadn,        
  	input wire [2:0] data,   // valor inicial do contador
    input wire clearn,       // sinal de reset em nível baixo
    input wire en,           // sinal de habilitação em nível alto
    output wire tc,
    output wire zero,
  	output reg [2:0] tens // saída do contador
);

  assign zero = (tens == 3'b000) ? 1'b1 : 1'b0;
  assign tc = en & zero;

  always @(posedge clk) begin
    if (~loadn) begin
        tens <= data; // reinicia o contador com o valor de 'data'
    end else if (~clearn) begin
        tens <= 3'b000; // zera o contador quando 'clearn' está em nível baixo
    end else if (en) begin
        if (tens == 3'b000) begin
            tens <= 3'b101; // volta a contar a partir de 5 quando atinge 0
        end else begin
            tens <= tens - 1; // subtrai 1 do contador
        end
    end
  end

endmodule
