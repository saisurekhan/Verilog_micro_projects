`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 01:48:54 PM
// Design Name: 
// Module Name: tb_full_sub
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


module tb_full_sub(
    );
    
    reg A,B,borrow_in;
    wire Y,borrow_out;
    
    full_Sub_behavioral uut (
    .A(A),
    .B(B),
    .borrow_in(borrow_in),
    .Y(Y),
    .borrow_out(borrow_out)
    );
    
    initial begin 
    #10;
    A = 0; B = 1; borrow_in = 0;
    #100;
    A = 1; B = 1; borrow_in = 0;
    #100;
    A = 1; B = 0; borrow_in = 1;
    #100;
    A = 0; B = 0; borrow_in = 1;
    #100;
    A = 1; B = 1; borrow_in = 1;
    #100;
    $finish;
    end    
endmodule
