`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 03:32:58 PM
// Design Name: 
// Module Name: full_adder_structural
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


module full_adder_structural(
    input A,B,Cin,
    output S,Cout
    );
    
    wire and_logic_1,and_logic_2;
    wire xor_logic_1;
    
    //writing for the expression S = A xor B xor Cin
    xor(S,A,B,Cin);
    
    /// breaking the entire expression into multiple steps "Cout = AB + Cin(A xor B)"
    and(and_logic_1,A,B);
    xor(xor_logic_1,A,B);
    and(and_logic_2,Cin,xor_logic_1);
    or(Cout,and_logic_1,and_logic_2);
    
endmodule
