`timescale 1ns/1ps
`include "timer_nivel2.v"

module timer_nivel2_tb();
  // Declaração de entradas e saídas do testbench
    wire[3:0] minutos_tb, dezenas, unidades_tb;
    wire contador_zerado;
    reg [3:0]  data_tb;
    reg clearn_tb, enable_tb, loadn_tb, clk_tb;

    // Instanciando o DUT (Device Under Test) e suas conexões
    timer_nivel2 DUT(data_tb, clk_tb, enable_tb, loadn_tb, clearn_tb,
                  unidades_tb, dezenas, minutos_tb, contador_zerado);

    initial begin
        $dumpfile("timer_nivel2_tb.vcd"); // Define o nome do arquivo de simulação
        $dumpvars(0,timer_nivel2_tb); // Define quais variáveis serão salvas no arquivo de simulação
        clk_tb  = 1'b0; // Inicializa o clock
        enable_tb = 1'b0; // Desabilita o timer
        loadn_tb  = 1'b0; // Desativa o sinal de carregamento
    end

    always begin
        #1 clk_tb = loadn_tb? ~clk_tb : clk_tb; // Gera o sinal de clock
    end

    initial begin    
        clearn_tb = 1'b1; #0.5 // Ativa o sinal de limpeza por 0.5ns
        clearn_tb = 1'b0; #0.5 // Desativa o sinal de limpeza por 0.5ns
        clearn_tb = 1'b1; #0.5 // Ativa novamente o sinal de limpeza por 0.5ns

        data_tb =  2;   #0.04; // Define o valor de entrada para 2 e espera 0.04ns
        clk_tb = 1'b1;   #0.01; // Gera uma borda de subida no clock por 0.01ns
        clk_tb = 1'b0;   #0.95; // Gera uma borda de descida no clock por 0.95ns

        data_tb =  0;   #0.04; // Define o valor de entrada para 0 e espera 0.04ns
        clk_tb = 1'b1;   #0.01; // Gera uma borda de subida no clock por 0.01ns
        clk_tb = 1'b0;   #0.95; // Gera uma borda de descida no clock por 0.95ns

        data_tb =  0;   #0.04; // Define o valor de entrada para 0 e espera 0.04ns
        clk_tb = 1'b1;   #0.01; // Gera uma borda de subida no clock por 0.01ns
        clk_tb = 1'b0;   #0.95; // Gera uma borda de descida no clock por 0.95ns
        enable_tb = 1; loadn_tb = 1; #240.5; // Habilita o timer e ativa o sinal de carregamento por 240.5ns
        
        $finish();
    end
endmodule
