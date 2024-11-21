`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:53:09 PM
// Design Name: 
// Module Name: DFF_AS
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


module DFF_AS(
    input d,
    input rst,
    input clk,
    output reg q
    );
    
    always@(posedge clk or negedge rst) begin
        if(!rst) q<=0;
        else q<=d;
       end
      
endmodule