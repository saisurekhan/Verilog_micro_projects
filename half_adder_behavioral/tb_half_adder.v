`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 11:16:36 PM
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder(
    );
    
    reg A,B;
    wire S,C;
    
    half_adder_behav uut (
    .A(A),
    .B(B),
    .S(S),
    .C(C)
    );
    
    initial begin 
    #10;
    A = 0; B = 0;
    #25;
    A = 0; B = 1;
    #25;
    A = 1; B = 0;
    #25;
    A = 1; B = 1;
    #25;
    $finish;
    end
endmodule
