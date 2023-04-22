module decoder (output wire [6:0] OutMinutos, OutDezenaSeg, OutUnidadeSeg,
                input wire [3:0] Minutos, DezenaSeg, UnidadeSeg);


        assign OutMinutos = (Minutos == 4'b0000) ? 7'b0000001 : 
                            (Minutos == 4'b0001) ? 7'b1001111 : 
                            (Minutos == 4'b0010) ? 7'b0010010 : 
                            (Minutos == 4'b0011) ? 7'b0000110 : 
                            (Minutos == 4'b0100) ? 7'b1001100 : 
                            (Minutos == 4'b0101) ? 7'b0100100 : 
                            (Minutos == 4'b0110) ? 7'b0100000 : 
                            (Minutos == 4'b0111) ? 7'b0001101 : 
                            (Minutos == 4'b1000) ? 7'b0000000 : 
                            (Minutos == 4'b1001) ? 7'b0000100 : 7'b0000000;


        assign OutDezenaSeg =   (DezenaSeg == 4'b0000) ? 7'b0000001 : 
                                (DezenaSeg == 4'b0001) ? 7'b1001111 : 
                                (DezenaSeg == 4'b0010) ? 7'b0010010 : 
                                (DezenaSeg == 4'b0011) ? 7'b0000110 : 
                                (DezenaSeg == 4'b0100) ? 7'b1001100 : 
                                (DezenaSeg == 4'b0101) ? 7'b0100100 : 
                                (DezenaSeg == 4'b0110) ? 7'b0100000 : 
                                (DezenaSeg == 4'b0111) ? 7'b0001101 : 
                                (DezenaSeg == 4'b1000) ? 7'b0000000 : 
                                (DezenaSeg == 4'b1001) ? 7'b0000100 : 7'b0000000;


        assign OutUnidadeSeg =  (UnidadeSeg == 4'b0000) ? 7'b0000001 : 
                                (UnidadeSeg == 4'b0001) ? 7'b1001111 : 
                                (UnidadeSeg == 4'b0010) ? 7'b0010010 : 
                                (UnidadeSeg == 4'b0011) ? 7'b0000110 : 
                                (UnidadeSeg == 4'b0100) ? 7'b1001100 : 
                                (UnidadeSeg == 4'b0101) ? 7'b0100100 : 
                                (UnidadeSeg == 4'b0110) ? 7'b0100000 : 
                                (UnidadeSeg == 4'b0111) ? 7'b0001101 : 
                                (UnidadeSeg == 4'b1000) ? 7'b0000000 : 
                                (UnidadeSeg == 4'b1001) ? 7'b0000100 : 7'b0000000;
endmodule
