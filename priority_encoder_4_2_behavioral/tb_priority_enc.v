`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 04:58:08 PM
// Design Name: 
// Module Name: tb_priority_enc
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


module tb_priority_enc(
    );
    
    reg en,I3,I2,I1,I0;
    wire O0,O1;
    
    priority_enc4_2behav uut (
    .en(en),
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .O0(O0),
    .O1(O1)
    );
    
    initial begin 
    #10;
    en = 0; I3 = 1; I2 = 0; I1 = 0; I0 = 0;
    #25;
    en = 1; I3 = 0; I2 = 0; I1 = 0; I0 = 1;
    #25;
    en = 1; I3 = 0; I2 = 0; I1 = 1; I0 = 1;
    #25;
    en = 1; I3 = 0; I2 = 1; I1 = 0; I0 = 0;
    #25;
    en = 1; I3 = 1; I2 = 0; I1 = 1; I0 = 0;
    #25;
    $finish;
    end
endmodule
