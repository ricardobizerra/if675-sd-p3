# Instruções de Compilação do Projeto

## Nível 1
Para compilar o projeto no nível 1, basta inserir essa sequência de comandos no terminal:

1. Ir até o diretório: `cd nivel1`

2. Compilar: `iverilog -o micro_waves_control_tb.vvp micro_waves_control_tb.v -g2005-sv`

3. Fazer formas de onda: `vvp micro_waves_control_tb.vvp`

4. Ver formas de onda: `gtkwave micro_waves_control_tb.vcd`

## Níveis 2 e 3

1. `cd nivel2`

2. Navegue pelos diretórios e acesse aquele que você quer analisar

3. Insira o mesmo comando de compilação acima: `iverilog -o <arquivo.vvp> <arquivo_tb.v> -g2005-sv`

4. Faça as formas de onda com: `vvp <arquivo.vvp>`

5. Veja as formas de onda com: `gtkwave <arquivo.vcd>`

6. Observações:

    i. "<arquivo.vvp>" é o arquivo que possui extensão .vvp

    ii. "<arquivo.vcd>" é o arquivo que possui extensão .vcd

    iii. "<arquivo_tb.v> é a testbench. Possui, ao final do arquivo, "tb.v"

    iv. Todos esses arquivos já existem. Basta copiar o nome daquele que você deseja analisar e colar no comando adequado.
