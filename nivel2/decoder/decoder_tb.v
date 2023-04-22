`include "decoder.v"
`timescale 1ns/1ns
module decoder_tb;

  reg [3:0] Minutos;
  reg [3:0] DezenaSeg;
  reg [3:0] UnidadeSeg;

  wire [6:0] OutMinutos;
  wire [6:0] OutDezenaSeg;
  wire [6:0] OutUnidadeSeg;


  decoder dut (
    .OutMinutos(OutMinutos),
    .OutDezenaSeg(OutDezenaSeg),
    .OutUnidadeSeg(OutUnidadeSeg),
    .Minutos(Minutos),
    .DezenaSeg(DezenaSeg),
    .UnidadeSeg(UnidadeSeg) );

    initial begin
        $dumpfile("decoder_tb.vcd");
        $dumpvars(0, decoder_tb);

        Minutos = 4'b0000; 
        DezenaSeg = 4'b0000; 
        UnidadeSeg = 4'b0000;

        #5 Minutos = 4'b0001; 
        DezenaSeg = 4'b0001; 
        UnidadeSeg = 4'b0001;

        #5 Minutos = 4'b0010; 
        DezenaSeg = 4'b0010; 
        UnidadeSeg = 4'b0010;

        #5 Minutos = 4'b0011; 
        DezenaSeg = 4'b0011; 
        UnidadeSeg = 4'b0011;

        #5 Minutos = 4'b0100; 
        DezenaSeg = 4'b0100; 
        UnidadeSeg = 4'b0100;

        #5 Minutos = 4'b0101; 
        DezenaSeg = 4'b0101; 
        UnidadeSeg = 4'b0101;

        #5 Minutos = 4'b0110; 
        DezenaSeg = 4'b0110; 
        UnidadeSeg = 4'b0110;

        #5 Minutos = 4'b0111; 
        DezenaSeg = 4'b0111; 
        UnidadeSeg = 4'b0111;

        #5 Minutos = 4'b1000; 
        DezenaSeg = 4'b1000; 
        UnidadeSeg = 4'b1000;

        #5 Minutos = 4'b1001; 
        DezenaSeg = 4'b1001; 
        UnidadeSeg = 4'b1001;
    end

endmodule
