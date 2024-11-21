`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:50:18 PM
// Design Name: 
// Module Name: sr_latch
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



module sr_latch(
    input S,  //Set
    input R,  //Reset
    output Q, //Output
    output Qn //Inverted Output
);


    nor(Qn, S, Q);
    nor(Q, R, Qn);
endmodule

    

