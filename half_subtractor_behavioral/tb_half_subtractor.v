`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 06:16:03 PM
// Design Name: 
// Module Name: tb_half_subtractor
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
    
    reg A,B,en;
    wire Y,borrow;
    
    half_sub_always uut (
    .A(A),
    .B(B),
    .en(en),
    .Y(Y),
    .borrow(borrow)
    );
    
    initial begin 
    #10;
    en = 1;
    A = 0;
    B = 0;
    #25;
    en = 1;
    A = 0;
    B = 1;
    #25;
    en = 1;
    A = 1;
    B = 0;
    #25;
    en = 1;
    A = 1;
    B = 1;
    #25;
    $finish;
    end  
endmodule
