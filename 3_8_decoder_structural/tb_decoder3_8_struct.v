`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 04:08:04 PM
// Design Name: 
// Module Name: tb_decoder3_8_struct
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


module tb_decoder3_8_struct(

    );
    
    reg A,B,C,en;
    wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
    
    Decoder3_8_struct uut (
    .A(A),
    .B(B),
    .C(C),
    .en(en),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
    );
    
    initial begin 
    #10;
    en = 0; A = 0; B = 0; C = 1;
    #25;
    en = 1; A = 0; B = 0; C = 0;
    #25;
    en = 1; A = 0; B = 0; C = 1;
    #25;
    en = 1; A = 0; B = 1; C = 0;
    #25;
    en = 1; A = 0; B = 1; C = 1;
    #25;
    en = 1; A = 1; B = 0; C = 0;
    #25;
    en = 1; A = 1; B = 0; C = 1;
    #25;
    en = 1; A = 1; B = 1; C = 0;
    #25;
    en = 1; A = 1; B = 1; C = 1;
    #25;
    $finish;
    end
endmodule
