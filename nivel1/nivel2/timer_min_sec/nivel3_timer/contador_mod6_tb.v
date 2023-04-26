`include "contador_mod6.v"
`timescale 1ns/1ps

module contador_mod6_tb ();
    reg clk, loadn,clearn,en;
  	reg [3:0] data;
  	wire [3:0] tens;
    wire zero, tc;
    integer i;


  contador_mod6 dut(clk, loadn, data, en, clearn, tc, zero, tens);
  initial
    begin
      $dumpfile("contador_mod6_teste.vcd");
      $dumpvars(0,contador_mod6_tb);
  
  assign loadn = 1;
  assign en = 0;
  assign clearn = 1;
  assign data = 3'b000;

  #6 assign data = 3'b101;

  #5 assign loadn = 0;

  #5 assign clearn = 1;

  #5 assign loadn = 1;

  #4 assign en = 1;
    end

initial
  begin
    clk = 1'b0;
  end

initial
  begin
    #5 clk = ~clk;
    for(i = 0; i < 26; i= i + 1)
        begin
          #5 clk = ~clk;
        end
  end
endmodule
