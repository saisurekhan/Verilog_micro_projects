`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 10:41:54 AM
// Design Name: 
// Module Name: decoder2_4_struct
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


module decoder2_4_struct(
    input A,B,enable,
    output Y0,Y1,Y2,Y3
    );
    
    wire A_bar,B_bar;

    not(A_bar,A);
    not(B_bar,B);
    and(Y0,enable,A_bar,B_bar);
    and(Y1,enable,A_bar,B);
    and(Y2,enable,A,B_bar);
    and(Y3,enable,A,B);

    
endmodule
