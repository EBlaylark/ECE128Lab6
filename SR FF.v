`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:50:18 PM
// Design Name: 
// Module Name: sr_ff
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



module sr_ff(
    input clk,
    input S,  //Set
    input R,  //Reset
    output Q, //Output
    output Qn //Inverted Output
);

wire y1,y2;

and A1(y1,clk,R);
and A2(y2, clk, S);

nor N1(Q, y1, Qn);
nor N2(Qn, y2, Q);

endmodule

    

