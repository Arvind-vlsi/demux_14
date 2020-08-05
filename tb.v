`timescale 1ns / 1ps

module tb();
reg a=0;
reg [0:1]sel=2'b00;
wire [3:0] y;

demux_14 d1(a,sel,y);

always #5 a=~a;

initial begin
    #15 sel=2'b01;
    #15 sel=2'b10;
    #15 sel=2'b11;
    #15 sel=2'b00;
    
   end
 initial begin
    #70 $stop;
 end

endmodule
