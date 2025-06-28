`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 02:03:22 PM
// Design Name: 
// Module Name: comparator_2b_structural
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


module comparator_2b_structural(
    input wire A1,A0,B1,B0,
    output wire A_greater_B,A_equals_B,A_less_B
    );
    
    wire A1_bar,A0_bar,B1_bar,B0_bar;
    wire and_logic_1,and_logic_2,and_logic_3;
    wire and_logic_4,and_logic_5,and_logic_6;
    wire xor_logic_1,xor_logic_2;
    wire not_logic_1,not_logic_2;
    
    ////A>B
    not(B1_bar,B1);
    not(B0_bar,B0);
    not(A1_bar,A1);
    not(A0_bar,A0);
    and(and_logic_1,A0,B1_bar,B0_bar);
    and(and_logic_2,A1,A0,B0_bar);
    and(and_logic_3,A1,B1_bar);
    or(A_greater_B,and_logic_1,and_logic_2,and_logic_3);
    
    ////A=B
    xor(xor_logic_1,A0,B0);
    xor(xor_logic_2,A1,B1);
    not(not_logic_1,xor_logic_1);
    not(not_logic_2,xor_logic_2);
    and(A_equals_B,not_logic_1,not_logic_2);
    
    ///A<B
    and(and_logic_4,A0_bar,B1,B0);
    and(and_logic_5,A1_bar,A0_bar,B0);
    and(and_logic_6,A1_bar,B1);
    or(A_less_B,and_logic_4,and_logic_5,and_logic_6);
 
endmodule
