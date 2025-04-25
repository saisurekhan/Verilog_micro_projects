`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 12:42:46 PM
// Design Name: 
// Module Name: tb_xor_gate
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


module tb_xor_gate(
 );
 
 reg A,B;
 wire Z;
 
 xor_using_nand uut(
 .A(A),
 .B(B),
 .Z(Z)
 );
 
 initial begin
 #1;
 A=0 ; B=0 ;
 #50;
 A=0 ; B=1 ;
 #50;
 A=1 ; B=0 ;
 #50;
 A=1 ; B=1 ;
 #50;
 end 
endmodule
