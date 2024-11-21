`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:50:45 PM
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb;

reg S, R, clk;
    wire Q, Qn;
    
    

    sr_ff uut(.clk(clk), .S(S), .R(R), .Q(Q), .Qn(Qn));
    
    always begin
    #5; 
    clk = ~clk;
    end

    initial 
        begin
        S = 0; R = 0; clk = 0;
        #10;
        S = 1;  
        #10;
        S = 0; 
        #10;
        R = 1;
        #10;
        R = 0; S = 1;
        #10;
        S = 0; R = 1;
        #10;
        R = 0;
        #10;
        R = 1; S = 1;
        #10
        $finish;
        end
        
            
        
      

endmodule
