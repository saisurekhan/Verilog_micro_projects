`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 02:13:05 PM
// Design Name: 
// Module Name: tb_priorityenc4_2
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


module tb_priorityenc4_2(
    );
    
    reg en,I3,I2,I1,I0;
    wire O1,O0;
    
    priority_enc4_2_beh_ifelse uut (
    .en(en),
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .O1(O1),
    .O0(O0)
    );
    
    initial begin
    #10;
    en = 0; I3 = 1; I2 = 0; I1 = 0; I0 = 0;
    #25;
    en = 1; I3 = 0; I2 = 0; I1 = 0; I0 = 1;
    #25;
    en = 1; I3 = 0; I2 = 0; I1 = 1; I0 = 0;
    #25;
    en = 1; I3 = 0; I2 = 1; I1 = 0; I0 = 1;
    #25;
    en = 1; I3 = 1; I2 = 0; I1 = 0; I0 = 0;
    #25;
    $finish;
    end
endmodule
