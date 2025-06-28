`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 04:44:45 PM
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
    
    reg en,I7,I6,I5,I4,I3,I2,I1,I0;
    wire O2,O1,O0;
    
    priority_enc8_3_str uut (
    .en(en),
    .I7(I7),
    .I6(I6),
    .I5(I5),
    .I4(I4),
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .O2(O2),
    .O1(O1),
    .O0(O0)
    );
    
    initial begin 
    #10;
    en = 0; I7 = 1; I6 = 0; I5 = 0; I4 = 0; I3 = 0; I2 = 0; I1 = 0; I0 = 0;
    #25;
    en = 1; I7 = 0; I6 = 0; I5 = 0; I4 = 0; I3 = 0; I2 = 0; I1 = 0; I0 = 1;
    #25;
    en = 1; I7 = 0; I6 = 0; I5 = 0; I4 = 0; I3 = 0; I2 = 0; I1 = 1; I0 = 0;
    #25;
    en = 1; I7 = 0; I6 = 0; I5 = 0; I4 = 0; I3 = 0; I2 = 1; I1 = 1; I0 = 0;
    #25;
    en = 1; I7 = 0; I6 = 0; I5 = 0; I4 = 0; I3 = 1; I2 = 0; I1 = 1; I0 = 0;
    #25;
    en = 1; I7 = 0; I6 = 0; I5 = 0; I4 = 1; I3 = 1; I2 = 0; I1 = 0; I0 = 0;
    #25;
    en = 1; I7 = 0; I6 = 0; I5 = 1; I4 = 1; I3 = 0; I2 = 0; I1 = 0; I0 = 0;
    #25;
    en = 1; I7 = 0; I6 = 1; I5 = 0; I4 = 0; I3 = 1; I2 = 0; I1 = 0; I0 = 0;
    #25;
    en = 1; I7 = 1; I6 = 0; I5 = 0; I4 = 0; I3 = 0; I2 = 0; I1 = 0; I0 = 0;
    #25;
    $finish;
    end
endmodule
