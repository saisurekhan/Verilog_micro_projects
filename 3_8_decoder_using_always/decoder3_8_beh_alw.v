`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 05:38:07 PM
// Design Name: 
// Module Name: decoder3_8_beh_alw
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


module decoder3_8_beh_alw(
    input A,B,C,en,
    output reg Y0,Y1,Y2,Y3,
    output reg Y4,Y5,Y6,Y7
    );
    
    always @(*) begin 
        if (en == 1) begin
            if ( A == 0 && B == 0 && C == 0) begin 
                Y0 = 1;
                Y1 = 0;
                Y2 = 0; 
                Y3 = 0;
                Y4 = 0;
                Y5 = 0;
                Y6 = 0;
                Y7 = 0;
            end 
            else if ( A == 0 && B == 0 && C == 1) begin 
                Y0 = 0;
                Y1 = 1;
                Y2 = 0; 
                Y3 = 0;
                Y4 = 0;
                Y5 = 0;
                Y6 = 0;
                Y7 = 0;
            end
            else if ( A == 0 && B == 1 && C == 0) begin 
                Y0 = 0;
                Y1 = 0;
                Y2 = 1; 
                Y3 = 0;
                Y4 = 0;
                Y5 = 0;
                Y6 = 0;
                Y7 = 0;
            end
            else if ( A == 0 && B == 1 && C == 1) begin 
                Y0 = 0;
                Y1 = 0;
                Y2 = 0; 
                Y3 = 1;
                Y4 = 0;
                Y5 = 0;
                Y6 = 0;
                Y7 = 0;
            end
            else if ( A == 1 && B == 0 && C == 0) begin 
                Y0 = 0;
                Y1 = 0;
                Y2 = 0; 
                Y3 = 0;
                Y4 = 1;
                Y5 = 0;
                Y6 = 0;
                Y7 = 0;
            end
            else if ( A == 1 && B == 0 && C == 1) begin 
                Y0 = 0;
                Y1 = 0;
                Y2 = 0; 
                Y3 = 0;
                Y4 = 0;
                Y5 = 1;
                Y6 = 0;
                Y7 = 0;
            end
            else if ( A == 1 && B == 1 && C == 0) begin 
                Y0 = 0;
                Y1 = 0;
                Y2 = 0; 
                Y3 = 0;
                Y4 = 0;
                Y5 = 0;
                Y6 = 1;
                Y7 = 0;
            end
            else if ( A == 1 && B == 1 && C == 1) begin 
                Y0 = 0;
                Y1 = 0;
                Y2 = 0; 
                Y3 = 0;
                Y4 = 0;
                Y5 = 0;
                Y6 = 0;
                Y7 = 1;
            end
        else begin
            Y0 = 0;
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
        end
      end          
   end        
endmodule
