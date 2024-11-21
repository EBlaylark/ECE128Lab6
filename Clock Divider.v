`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:54:28 PM
// Design Name: 
// Module Name: clockDivider
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


module clockDivider(clock_in,clock_out);

input clock_in; 
output reg clock_out = 1'b0; 

reg[1:0] counter=2'd0;

    always @(posedge clock_in) begin
        counter <= counter + 1;
        if (counter == 2'b01) begin
            clock_out <= ~clock_out;  // Toggle the output clock
            counter <= 0;
            end
        end
  endmodule

