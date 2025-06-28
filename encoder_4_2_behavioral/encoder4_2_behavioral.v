`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 03:29:45 PM
// Design Name: 
// Module Name: encoder4_2_behavioral
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


module encoder4_2_behavioral(
    input en,
    input Y3,Y2,Y1,Y0,
    output A1,A0
    );
    
    wire A1_bar,A0_bar;
    
    assign A1_bar = ( Y3 | Y1 );
    assign A0_bar = ( Y3 | Y2 );
    assign A1 = (A1_bar & en);
    assign A0 = (A0_bar & en);
    
endmodule
