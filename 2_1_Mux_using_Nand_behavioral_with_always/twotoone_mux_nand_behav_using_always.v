`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 04:11:09 PM
// Design Name: 
// Module Name: twotoone_mux_nand_behav_using_always
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


module twotoone_mux_nand_behav_using_always(
    input S,
    input A,
    input B,
    output reg Z
    );
    
    always @(*) begin 
    if (S == 0)
        Z = A;
    else 
        Z = B;
    end 
    
endmodule
