`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 02:55:44 PM
// Design Name: 
// Module Name: tb_decoder2_4_with_case
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


module tb_decoder2_4_with_case(

    );
    
    reg A,B,enable;
    wire Y0,Y1,Y2,Y3;
    
    Decoder2_4_with_case uut (
    .A(A),
    .B(B),
    .enable(enable),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
    );
    
    initial begin
    #10;
    enable = 1 ; A = 0; B = 0;
    #25;
    enable = 1 ; A = 0; B = 1;
    #25;
    enable = 1 ; A = 1; B = 0;
    #25;
    enable = 1 ; A = 1; B = 1;
    #25;
    $finish;
    
    end
endmodule
