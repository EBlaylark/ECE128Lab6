`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:44:46 PM
// Design Name: 
// Module Name: counter
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


module counter(clk, rst, count);
    input wire clk;
    input wire rst;
    output  [2:0] count;
    wire [2:0] T;
    
 tff uut0(clk, rst, 1'b1, count[0]);
 assign T[0] = count[0];
 
 tff uut1(clk, rst, T[0], count[1]);
 assign T[1] = T[0] & count[1];
 
 tff uut2(clk, rst, T[1], count[2]);
    
endmodule 


