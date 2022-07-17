`include "lcd.v"
`timescale 1ns / 1ps

module lcd_tb;
reg clk =0;
wire rs; 
wire rw; 
wire en;
wire [7:0] dout;
lcd l1(clk,rs,rw,en,dout);
always #10 clk = ~clk;
initial begin
    
$dumpfile("lcd.vcd");
$dumpvars(0,lcd_tb);

end
endmodule