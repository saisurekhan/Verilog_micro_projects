`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 02:05:28 PM
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
    
    reg A,B,borrow_in,en;
    wire Y,borrow_out;
    
    full_sub_usealways_ifelse uut (
    .en(en),
    .A(A),
    .B(B),
    .borrow_in(borrow_in),
    .Y(Y),
    .borrow_out(borrow_out)
    );
    
    initial begin
    #10;
    en = 1;
    A = 0; B = 0; borrow_in = 1;
    #50;
    en = 1;
    A = 0; B = 1; borrow_in = 0;
    #50;
    en = 1; A = 0; B = 1; borrow_in = 1;
    #50;
    en = 1; A = 1; B = 0; borrow_in = 1;
    #50;
    en = 1; A = 1; B = 1; borrow_in = 0;
    #50;
    $finish;
    end 
endmodule
