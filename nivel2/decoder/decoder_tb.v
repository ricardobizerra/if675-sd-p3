`timescale 1ns/1ns
`include "decoder.v"

module decoder_tb;

    reg [3:0] Minutos_TB, DezenaSegundos_TB, UnidadeSegundos_TB;
  	wire [6:0] OutMinutos_TB, OutDezenaSegundos_TB, OutUnidadeSegundos_TB;

  	decoder DUT(.Minutos(Minutos_TB), .DezenaSegundos(DezenaSegundos_TB), .UnidadeSegundos(UnidadeSegundos_TB), .OutMinutos(OutMinutos_TB), .OutDezenaSegundos(OutDezenaSegundos_TB), .OutUnidadeSegundos(OutUnidadeSegundos_TB));

    initial
        begin

            $dumpfile("decoder_tb.vcd");
            $dumpvars(0, decoder_tb);

                Minutos_TB=4'b0000; DezenaSegundos_TB=4'b0000; UnidadeSegundos_TB=4'b0000;  
            #5  Minutos_TB=4'b0001; DezenaSegundos_TB=4'b0001; UnidadeSegundos_TB=4'b0001; 
         	  #5  Minutos_TB=4'b0010; DezenaSegundos_TB=4'b0010; UnidadeSegundos_TB=4'b0010;
            #5  Minutos_TB=4'b0011; DezenaSegundos_TB=4'b0011; UnidadeSegundos_TB=4'b0011;
            #5  Minutos_TB=4'b0100; DezenaSegundos_TB=4'b0100; UnidadeSegundos_TB=4'b0100;
            #5  Minutos_TB=4'b0101; DezenaSegundos_TB=4'b0101; UnidadeSegundos_TB=4'b0101;
          	#5  Minutos_TB=4'b0110; DezenaSegundos_TB=4'b0110; UnidadeSegundos_TB=4'b0110;
            #5  Minutos_TB=4'b0111; DezenaSegundos_TB=4'b0111; UnidadeSegundos_TB=4'b0111;
          	#5  Minutos_TB=4'b1000; DezenaSegundos_TB=4'b1000; UnidadeSegundos_TB=4'b1000;
            #5  Minutos_TB=4'b1001; DezenaSegundos_TB=4'b1001; UnidadeSegundos_TB=4'b1001;    
        end
endmodule