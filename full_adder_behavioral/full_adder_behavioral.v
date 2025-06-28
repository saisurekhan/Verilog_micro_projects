`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 03:56:38 PM
// Design Name: 
// Module Name: full_adder_behavioral
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
`default_nettype none  ///it is to tell the compiler.. do ot assume any mispelled or undeclared signals...remind the programmer to be aware


module full_adder_behavioral(
    input wire A,B,Cin,
    output wire S,Cout
    );
    
   
    
    assign Cout = (A & B) | ( Cin & (A^B) );
    assign S = A ^ B ^ Cin;
    
endmodule
