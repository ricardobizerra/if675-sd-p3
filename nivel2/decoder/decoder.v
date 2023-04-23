module decoder (output reg [6:0] OutMinutos, OutDezenaSegundos, OutUnidadeSegundos, 
                input wire [3:0] Minutos, DezenaSegundos, UnidadeSegundos);

        always@(Minutos) 
                case(Minutos)
                4'b0000 : OutMinutos = 7'b0000001;
                4'b0001 : OutMinutos = 7'b1001111;
                4'b0010 : OutMinutos = 7'b0010010;
                4'b0011 : OutMinutos = 7'b0000110;
                4'b0100 : OutMinutos = 7'b1001100;
                4'b0101 : OutMinutos = 7'b0100100;
                4'b0110 : OutMinutos = 7'b0100000;
                4'b0111 : OutMinutos = 7'b0001101;
                4'b1000 : OutMinutos = 7'b0000000;
                4'b1001 : OutMinutos = 7'b0000100;
                endcase

        always@(DezenaSegundos)
                case(DezenaSegundos)
                4'b0000 : OutDezenaSegundos = 7'b0000001;
                4'b0001 : OutDezenaSegundos = 7'b1001111;
                4'b0010 : OutDezenaSegundos = 7'b0010010;
                4'b0011 : OutDezenaSegundos = 7'b0000110;
                4'b0100 : OutDezenaSegundos = 7'b1001100;
                4'b0101 : OutDezenaSegundos = 7'b0100100;
                4'b0110 : OutDezenaSegundos = 7'b0100000;
                4'b0111 : OutDezenaSegundos = 7'b0001101;
                4'b1000 : OutDezenaSegundos = 7'b0000000;
                4'b1001 : OutDezenaSegundos = 7'b0000100;
                endcase
  
        always@(UnidadeSegundos)
                case(UnidadeSegundos)
                4'b0000 : OutUnidadeSegundos = 7'b0000001;
                4'b0001 : OutUnidadeSegundos = 7'b1001111;
                4'b0010 : OutUnidadeSegundos = 7'b0010010;
                4'b0011 : OutUnidadeSegundos = 7'b0000110;
                4'b0100 : OutUnidadeSegundos = 7'b1001100;
                4'b0101 : OutUnidadeSegundos = 7'b0100100;
                4'b0110 : OutUnidadeSegundos = 7'b0100000;
                4'b0111 : OutUnidadeSegundos = 7'b0001101;
                4'b1000 : OutUnidadeSegundos = 7'b0000000;
                4'b1001 : OutUnidadeSegundos = 7'b0000100;
                endcase

endmodule