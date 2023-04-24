# Instruções de Compilação do Projeto

## Nível 1
Para compilar o projeto no nível 1, basta inserir essa sequência de comandos no terminal:

1. Ir até o diretório: `cd nivel1`

2. Compilar: `iverilog -o micro_waves_control_tb.vvp micro_waves_control_tb.v -g2005-sv`

3. Fazer formas de onda: `vvp micro_waves_control_tb.vvp`

4. Ver formas de onda: `gtkwave micro_waves_control_tb.vcd`

## Níveis 2 e 3

1. Já estando no nível 1: `cd nivel2`

2. Navegue pelos diretórios e acesse aquele que você quer analisar

3. Procure o arquivo com extensão `.vcd` e veja as formas de onda com o comando: `gtkwave <nome_arquivo.vcd>`
