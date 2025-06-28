`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 03:38:02 PM
// Design Name: 
// Module Name: demux1_4_behav_always
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


module demux1_4_behav_always(
    input S2,S1,A,
    output reg Y1,Y2,Y3,Y4
    );
    
    always @(*) begin
        if (S2 == 0 && S1 ==0) begin 
            Y1 = A; 
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
         end 
         else if (S2 == 0 && S1 ==1) begin
            Y1 = 0;
            Y2 = A;
            Y3 = 0;
            Y4 = 0;
         end 
         else if (S2 == 1 && S1 == 0) begin
            Y1 = 0;
            Y2 = 0;
            Y3 = A;
            Y4 = 0;
         end 
         else if (S2 == 1 && S1 == 1) begin
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = A;
         end 
     end 
            
endmodule
