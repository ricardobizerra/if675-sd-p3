// Importando os módulos dos contadores
`include "nivel2/timer_min_sec/nivel3_timer/contador_mod10.v"
`include "nivel2/timer_min_sec/nivel3_timer/contador_mod6.v"
`include "nivel2/timer_min_sec/nivel3_timer/contador_mod10_2.v"

// Definindo a escala de tempo do módulo
`timescale 1ns/1ps

// Definindo o módulo timer_nivel2
module timer_nivel2(data, clk, enable, load, clear, unidades, dezenas, minutos, zero);

  // Definindo as entradas do módulo
  input [3:0] data;
  input wire clk, enable, load, clear; // Lembrar que aqui tudo menos o clk está invertido (load equivale a loadn...)
  
  // Definindo as saídas do módulo
  output wire [3:0] unidades, dezenas, minutos;
  output wire zero;
  
  // Definindo os sinais de controle dos contadores
  wire tc1;
  wire tc2;
  wire tc3;
  
  // Definindo os sinais de saída de zero dos contadores
  wire zero1;
  wire zero2;
  wire zero3;

  // Instanciando o contador_mod10 para as unidades
  contador_mod10 unidade(clk, load, data, clear, enable, tc1, zero1, unidades);
  
  // Instanciando o contador_mod6 para as dezenas
  contador_mod6 dezena(clk, load, unidades, clear, tc1, tc2, zero2, dezenas);
  
  // Instanciando o contador_mod10 para os minutos
  contador_mod10_2 minuto(clk, load, dezenas, clear, tc2, tc3, zero3, minutos);

  // Definindo o sinal zero como o AND das saídas zero dos contadores
  assign zero = zero1 & zero2 & zero3;
endmodule