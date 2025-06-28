`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 01:16:08 PM
// Design Name: 
// Module Name: Riplcry_add_4_1_str
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


module Riplcry_add_4_1_str(
    input wire A3,A2,A1,A0,
    input wire B3,B2,B1,B0,
    input wire Cin,
    output wire Cout,
    output wire S3,S2,S1,S0
    );
    
    wire C0,C1,C2;
    wire and_logic_0,and_logic_1,xor_logic_0;
    wire and_logic_2,and_logic_3,xor_logic_1;
    wire and_logic_4,and_logic_5,xor_logic_2;
    wire and_logic_6,and_logic_7,xor_logic_3;
    
    ///S0 from the first fulladder
    xor(S0,A0,B0,Cin);
    
    ///C0 from the first full adder
    ///wire and_logic_0,and_logic_1,xor_logic_0;
    and(and_logic_0, A0, B0);
    xor(xor_logic_0,A0,B0);
    and(and_logic_1,Cin,xor_logic_0);
    or(C0,and_logic_0,and_logic_1);
    
    
    ///S1 from the second fulladder
    xor(S1,A1,B1,C0);
    
    ///C1 from the second full adder
    ////wire and_logic_2,and_logic_3,xor_logic_1;
    and(and_logic_2, A1, B1);
    xor(xor_logic_1,A1,B1);
    and(and_logic_3,C0,xor_logic_1);
    or(C1,and_logic_2,and_logic_3);
    
    
    ///S2 from the third fulladder
    xor(S2,A2,B2,C1);
    
    ///C2 from the third full adder
    ////wire and_logic_4,and_logic_5,xor_logic_2;
    and(and_logic_4, A2, B2);
    xor(xor_logic_2,A2,B2);
    and(and_logic_5,C1,xor_logic_2);
    or(C2,and_logic_4,and_logic_5);
    
    
    ///S3 from the fourth fulladder
    xor(S3,A3,B3,C2);
    
    ///Cout from the fourth full adder
    ////wire and_logic_6,and_logic_7,xor_logic_3;
    
    and(and_logic_6, A3, B3);
    xor(xor_logic_3,A3,B3);
    and(and_logic_7,C2,xor_logic_3);
    or(Cout,and_logic_6,and_logic_7);
    
endmodule
