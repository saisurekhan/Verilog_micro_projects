`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 06:01:17 PM
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


module tb_half_subtractor(
    );
    
    reg A,B;
    wire Y,borrow;
    
    half_subtractor_struc uut (
    .A(A),
    .B(B),
    .Y(Y),
    .borrow(borrow)
    );
    
    initial begin 
    #10;
    A = 0;
    B = 0;
    #25;
    A = 0;
    B = 1;
    #25;
    A = 1;
    B = 0;
    #25;
    A = 1;
    B = 1;
    #25;
    $finish;
    end
endmodule
