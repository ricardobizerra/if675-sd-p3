module decoder (output wire [6:0] OutMinutos, OutDezenaSeg, OutUnidadeSeg,
                input wire [3:0] Minutos, DezenaSeg, UnidadeSeg);


        assign OutMinutos = (Minutos == 4'b0000) ? 7'b111_1110 : 
                            (Minutos == 4'b0001) ? 7'b011_0000 : 
                            (Minutos == 4'b0010) ? 7'b110_1101 : 
                            (Minutos == 4'b0011) ? 7'b111_1001 : 
                            (Minutos == 4'b0100) ? 7'b011_0011 : 
                            (Minutos == 4'b0101) ? 7'b101_1011 : 
                            (Minutos == 4'b0110) ? 7'b101_1111 : 
                            (Minutos == 4'b0111) ? 7'b111_0000 : 
                            (Minutos == 4'b1000) ? 7'b111_1111 : 
                            (Minutos == 4'b1001) ? 7'b111_0011 : 8'bXXXX_XXXX;


        assign OutDezenaSeg =   (DezenaSeg == 4'b0000) ? 7'b111_1110 : 
                                (DezenaSeg == 4'b0001) ? 7'b011_0000 : 
                                (DezenaSeg == 4'b0010) ? 7'b110_1101 : 
                                (DezenaSeg == 4'b0011) ? 7'b111_1001 : 
                                (DezenaSeg == 4'b0100) ? 7'b011_0011 : 
                                (DezenaSeg == 4'b0101) ? 7'b101_1011 : 
                                (DezenaSeg == 4'b0110) ? 7'b101_1111 : 
                                (DezenaSeg == 4'b0111) ? 7'b111_0000 : 
                                (DezenaSeg == 4'b1000) ? 7'b111_1111 : 
                                (DezenaSeg == 4'b1001) ? 7'b111_0011 : 8'bXXXX_XXXX;

        assign OutUnidadeSeg =  (UnidadeSeg == 4'b0000) ? 7'b111_1110 : 
                                (UnidadeSeg == 4'b0001) ? 7'b011_0000 : 
                                (UnidadeSeg == 4'b0010) ? 7'b110_1101 : 
                                (UnidadeSeg == 4'b0011) ? 7'b111_1001 : 
                                (UnidadeSeg == 4'b0100) ? 7'b011_0011 : 
                                (UnidadeSeg == 4'b0101) ? 7'b101_1011 : 
                                (UnidadeSeg == 4'b0110) ? 7'b101_1111 : 
                                (UnidadeSeg == 4'b0111) ? 7'b111_0000 : 
                                (UnidadeSeg == 4'b1000) ? 7'b111_1111 : 
                                (UnidadeSeg == 4'b1001) ? 7'b111_0011 : 8'bXXXX_XXXX;
endmodule
