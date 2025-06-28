`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 09:41:24 PM
// Design Name: 
// Module Name: encoder8_3_beh_case
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


module encoder8_3_beh_case(
    input en,
    input Y7,Y6,Y5,Y4,
    input Y3,Y2,Y1,Y0,
    output reg A2,A1,A0
    );
    
    always @(*) begin
        case(en)
            1'b1 : begin
                    A2 = ( Y4 | Y5 | Y6 | Y7 );
                    A1 = ( Y2 | Y3 | Y6 | Y7 );
                    A0 = ( Y1 | Y3 | Y5 | Y7 );
                   end
            1'b0 : begin
                    A2 = 0;
                    A1 = 0;
                    A0 = 0;
                   end
        endcase
    end 
endmodule
