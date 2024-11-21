`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:53:47 PM
// Design Name: 
// Module Name: DFF_S_tb
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


module DFF_S_tb;
    reg clk, rst, d;
    wire q;

    DFF_S uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end


    initial begin
        rst = 1; d = 0; 
        #10;
        rst = 0; d = 1; 
        #10;
        d = 1; 
        #10;
        rst = 1; 
        #10
        rst = 0; d = 1; 
        #10
        $stop;
        
    end
    
endmodule