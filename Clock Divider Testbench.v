`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:55:01 PM
// Design Name: 
// Module Name: clockDivider_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clockDivider_tb;
reg clock_in;
 wire clock_out;
 
 clockDivider uut (.clock_in(clock_in), .clock_out(clock_out));
 initial begin
  
 clock_in = 0;
  
        forever #10 clock_in = ~clock_in;
 end
      
endmodule