`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 02:23:07 PM
// Design Name: 
// Module Name: demux1_2beh_usealways
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


module demux1_2beh_usealways(
    input S,
    input A,
    output reg Y2,
    output reg Y1
    );
    
always @(*) begin
    if (S == 0) begin
        Y1 = A;
        Y2 = 0;
    end
    else begin
        Y2 = A;
        Y1 = 0;
    end
end 
endmodule
