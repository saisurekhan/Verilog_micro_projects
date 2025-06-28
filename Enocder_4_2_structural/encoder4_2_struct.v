`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 03:00:29 PM
// Design Name: 
// Module Name: encoder4_2_struct
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


module encoder4_2_struct(
    input en,
    input Y3,Y2,Y1,Y0,
    output A1,A0
    );
   
    wire A1_bar,A0_bar;
    
    or(A1_bar,Y3,Y2);
    or(A0_bar,Y3,Y1);
    
    and(A1,en,A1_bar);
    and(A0,en,A0_bar);
    
endmodule
