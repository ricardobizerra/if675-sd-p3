module decoder (output wire [6:0] OutMinutos, OutDezenaSeg, OutUnidadeSeg,
                input wire [3:0] Minutos, DezenaSeg, UnidadeSeg);


        assign OutMinutos = (Minutos == 4'b0000) ? 7'b000_0001 : 
                            (Minutos == 4'b0001) ? 7'b100_1111 : 
                            (Minutos == 4'b0010) ? 7'b001_0010 : 
                            (Minutos == 4'b0011) ? 7'b000_0110 : 
                            (Minutos == 4'b0100) ? 7'b100_1100 : 
                            (Minutos == 4'b0101) ? 7'b010_0100 : 
                            (Minutos == 4'b0110) ? 7'b010_0000 : 
                            (Minutos == 4'b0111) ? 7'b000_1111 : 
                            (Minutos == 4'b1000) ? 7'b000_0000 : 
                            (Minutos == 4'b1001) ? 7'b000_1100 : 7'b111_1111;


        assign OutDezenaSeg =   (DezenaSeg == 4'b0000) ? 7'b000_0001 : 
                                (DezenaSeg == 4'b0001) ? 7'b100_1111 : 
                                (DezenaSeg == 4'b0010) ? 7'b001_0010 : 
                                (DezenaSeg == 4'b0011) ? 7'b000_0110 : 
                                (DezenaSeg == 4'b0100) ? 7'b100_1100 : 
                                (DezenaSeg == 4'b0101) ? 7'b010_0100 : 
                                (DezenaSeg == 4'b0110) ? 7'b010_0000 : 
                                (DezenaSeg == 4'b0111) ? 7'b000_1111 : 
                                (DezenaSeg == 4'b1000) ? 7'b000_0000 : 
                                (DezenaSeg == 4'b1001) ? 7'b000_1100 : 7'b111_1111;

        assign OutUnidadeSeg =  (UnidadeSeg == 4'b0000) ? 7'b000_0001 : 
                                (UnidadeSeg == 4'b0001) ? 7'b100_1111 : 
                                (UnidadeSeg == 4'b0010) ? 7'b001_0010 : 
                                (UnidadeSeg == 4'b0011) ? 7'b000_0110 : 
                                (UnidadeSeg == 4'b0100) ? 7'b100_1100 : 
                                (UnidadeSeg == 4'b0101) ? 7'b010_0100 : 
                                (UnidadeSeg == 4'b0110) ? 7'b010_0000 : 
                                (UnidadeSeg == 4'b0111) ? 7'b000_1111 : 
                                (UnidadeSeg == 4'b1000) ? 7'b000_0000 : 
                                (UnidadeSeg == 4'b1001) ? 7'b000_1100 : 7'b111_1111;
endmodule
