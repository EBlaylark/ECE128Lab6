`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 03:44:29 PM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb;
    reg clk, rst, t;
    wire q;

    tff uut(
        .clk(clk),
        .rst(rst),
        .t(t),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    

    initial begin
        rst = 1; t = 0; 
        #10;
        rst = 0; t = 1; 
        #10;
        t = 0; 
        #10;
        $stop;
        
    end
    
endmodule