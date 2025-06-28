`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 03:04:10 PM
// Design Name: 
// Module Name: tb_encoder4_2
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

module tb_encoder4_2(
    );
    
    reg en,Y3,Y2,Y1,Y0;
    wire A1,A0;
    
    encoder4_2_struct uut (
    .en(en),
    .Y3(Y3),
    .Y2(Y2),
    .Y1(Y1),
    .Y0(Y0),
    .A1(A1),
    .A0(A0)
    );
    
    initial begin 
    #10;
    en = 0; Y3 = 1; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y3 = 1; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y3 = 0; Y2 = 1; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y3 = 0; Y2 = 0; Y1 = 1; Y0 = 0;
    #25;
    en = 1; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 1;
    #25;
    $finish;
    end
endmodule
