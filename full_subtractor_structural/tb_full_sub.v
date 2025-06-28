`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 07:33:03 PM
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
    
    reg A,B,borw_in;
    wire Y,borw_out;
    
    full_sub_struct uut (
    .A(A),
    .B(B),
    .borw_in(borw_in),
    .Y(Y),
    .borw_out(borw_out)
    );
    
    initial begin 
    #10;
    A = 0;B = 0;borw_in = 0;
    #50;
    A = 0;B = 1;borw_in = 0;
    #50;
    A = 1;B = 1;borw_in = 1;
    #50;
    $finish;
    end
endmodule
