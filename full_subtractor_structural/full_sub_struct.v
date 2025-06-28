`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 07:17:55 PM
// Design Name: 
// Module Name: full_sub_struct
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


module full_sub_struct(
    input wire A,B,borw_in,
    output wire Y,borw_out
    );
    
    wire xor_logic,xnor_logic,and_logic_1,and_logic_2;
    
    xor(Y,A,B,borw_in);
    
    xor(xor_logic,A,B);
    not(xnor_logic,xor_logic);
    and(and_logic_1,borw_in,xnor_logic);
    and(and_logic_2,(~A),B);
    or(borw_out,and_logic_1,and_logic_2);    
    
endmodule
