`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 05:58:53 PM
// Design Name: 
// Module Name: half_subtractor_struc
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


module half_subtractor_struc(
    input wire A,B,
    output wire Y,borrow
    );
    
    xor(Y,A,B);
    and(borrow,B,(~(A)));
    
endmodule
