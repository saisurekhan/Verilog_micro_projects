`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 02:13:47 PM
// Design Name: 
// Module Name: tb_comparator_2bit
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


module tb_comparator_2bit(
    );
    
    reg A1,A0,B1,B0;
    wire A_greater_B,A_equals_B,A_less_B;
    
    comparator_2b_structural uut (
    .A1(A1),
    .A0(A0),
    .B1(B1),
    .B0(B0),
    .A_greater_B(A_greater_B),
    .A_equals_B(A_equals_B),
    .A_less_B(A_less_B)
    );
    
    initial begin 
    #10;
    A1 = 0; A0 = 0; B1 = 0; B0 = 0;
    #50;
    A1 = 0; A0 = 0; B1 = 0; B0 = 1;
    #50;
    A1 = 0; A0 = 0; B1 = 1; B0 = 0;
    #50;
    A1 = 0; A0 = 0; B1 = 1; B0 = 1;
    #50;
    A1 = 0; A0 = 1; B1 = 0; B0 = 0;
    #50;
    A1 = 0; A0 = 1; B1 = 0; B0 = 1;
    #50;
    A1 = 0; A0 = 1; B1 = 1; B0 = 0;
    #50;
    A1 = 0; A0 = 1; B1 = 1; B0 = 1;
    #50;
    A1 = 1; A0 = 0; B1 = 0; B0 = 0;
    #50;
    A1 = 1; A0 = 0; B1 = 0; B0 = 1;
    #50;
    A1 = 1; A0 = 0; B1 = 1; B0 = 0;
    #50;
    A1 = 1; A0 = 0; B1 = 1; B0 = 1;
    #50;
    A1 = 1; A0 = 1; B1 = 0; B0 = 0;
    #50;
    A1 = 1; A0 = 1; B1 = 0; B0 = 1;
    #50;
    A1 = 1; A0 = 1; B1 = 1; B0 = 0;
    #50;
    A1 = 1; A0 = 1; B1 = 1; B0 = 1;
    #50;
    $finish;
    end
       
endmodule
