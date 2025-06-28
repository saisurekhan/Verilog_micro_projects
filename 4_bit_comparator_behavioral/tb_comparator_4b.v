`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 05:33:03 PM
// Design Name: 
// Module Name: tb_comparator_4b
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


module tb_comparator_4b(
    );
    
    reg [3:0]A,B;
    wire  A_great_B,A_equal_B,A_less_B;
    
    comparator_4b_behavioral uut (
    .A(A),
    .B(B),
    .A_great_B(A_great_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
    );
    
    initial begin 
    A = 4'b0000; B = 4'b0000;
    #50;
    A = 4'b1110; B = 4'b1101;
    #50;
    A = 4'b0011; B = 4'b0011;
    #50;
    A = 4'b0101; B = 4'b1010;
    #50;
    $finish;
    end
endmodule
