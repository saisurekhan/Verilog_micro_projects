`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 03:35:30 PM
// Design Name: 
// Module Name: tb_comparator_2b
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


module tb_comparator_2b(
    );
    
    reg [1:0]A,B;
    wire A_great_B,A_equal_B,A_less_B ;
    
    comparator_2b_behav_case uut (
    .A(A),
    .B(B),
    .A_great_B(A_great_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
    );
    
    initial begin 
    #10;
    A = 00 ; B = 00;
    #50;
    A = 00 ; B = 01;
    #50;
    A = 00 ; B = 10;
    #50;
    A = 00 ; B = 11;
    #50;
    A = 01 ; B = 00;
    #50;
    A = 01 ; B = 01;
    #50;
    A = 01 ; B = 10;
    #50;
    A = 01 ; B = 11;
    #50;
    A = 10 ; B = 00;
    #50;
    A = 10 ; B = 01;
    #50;
    A = 10 ; B = 10;
    #50;
    A = 10 ; B = 11;
    #50;
    A = 11 ; B = 00;
    #50;
    A = 11 ; B = 01;
    #50;
    A = 11 ; B = 10;
    #50;
    A = 11 ; B = 11;
    #50;
    $finish;
    end
endmodule
