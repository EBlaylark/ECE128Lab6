`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:50:45 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;

reg S, R;
    wire Q, Qn;

    sr_latch uut(.S(S), .R(R), .Q(Q), .Qn(Qn));

    initial 
        begin
        S = 0; R = 0;
        #5;
        S = 1;  
        #5;
        S = 0; 
        #5;
        R = 1;
        #5;
        R = 0; S = 1;
        #5;
        S = 0; R = 1;
        #5;
        R = 0;
        #5;
        R = 1; S = 1;
        end
        
            
        
        
        initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
        end
        
        

endmodule
