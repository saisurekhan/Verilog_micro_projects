`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 09:20:05 PM
// Design Name: 
// Module Name: tb_encoder8_3
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


module tb_encoder8_3(

    );
    
    reg en,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;
    wire A2,A1,A0;
    
    encoder8_3_beh_ifelse uut(
    .en(en),
    .Y7(Y7),
    .Y6(Y6),
    .Y5(Y5),
    .Y4(Y4),
    .Y3(Y3),
    .Y2(Y2),
    .Y1(Y1),
    .Y0(Y0),
    .A2(A2),
    .A1(A1),
    .A0(A0)
    );
    
    initial begin 
    #10;
    en = 0; Y7 = 1; Y6 = 0; Y5 = 0; Y4 = 0; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 1; Y6 = 0; Y5 = 0; Y4 = 0; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 1; Y5 = 0; Y4 = 0; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 0; Y5 = 1; Y4 = 0; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 0; Y5 = 0; Y4 = 1; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 0; Y5 = 0; Y4 = 0; Y3 = 1; Y2 = 0; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 0; Y5 = 0; Y4 = 0; Y3 = 0; Y2 = 1; Y1 = 0; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 0; Y5 = 0; Y4 = 0; Y3 = 0; Y2 = 0; Y1 = 1; Y0 = 0;
    #25;
    en = 1; Y7 = 0; Y6 = 0; Y5 = 0; Y4 = 0; Y3 = 0; Y2 = 0; Y1 = 0; Y0 = 1;
    #25;
    $finish;
    end
endmodule
