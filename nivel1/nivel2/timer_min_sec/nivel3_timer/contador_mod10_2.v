`timescale 1ns/1ps

module contador_mod10_2 (
    input wire clk,          // sinal de clock
    input wire loadn,        
  	input wire [3:0] data,   // valor inicial do contador
    input wire clearn,       // sinal de reset em nível baixo
    input wire en,           // sinal de habilitação em nível alto
    output wire tc,
    output wire zero,
  	output reg [3:0] mins // saída do contador
);

  assign zero = (mins == 4'b0000) ? 1'b1 : 1'b0;
  assign tc = en & zero;

  always @(posedge clk) begin
    if (~loadn) begin
        mins <= data; // reinicia o contador com o valor de 'data'
    end else if (~clearn) begin
        mins <= 3'b000; // zera o contador quando 'clearn' está em nível baixo
    end else if (en) begin
        if (mins == 4'b0000) begin
            mins <= 4'b1001; // volta a contar a partir de 9 quando atinge 0
        end else begin
            mins <= mins - 1; // subtrai 1 do contador
        end
    end
  end

endmodule