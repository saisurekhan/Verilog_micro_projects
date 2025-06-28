`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 04:48:20 PM
// Design Name: 
// Module Name: tb_comparator_1b
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


module tb_comparator_1b(
    );
    
    reg A,B;
    wire A_great_B,A_equal_B,A_less_B;
    
    comapartor_1bbehav_case uut (
    .A(A),
    .B(B),
    .A_great_B(A_great_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
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
