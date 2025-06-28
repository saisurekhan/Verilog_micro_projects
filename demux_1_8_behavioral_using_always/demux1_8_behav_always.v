`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 09:50:03 AM
// Design Name: 
// Module Name: demux1_8_behav_always
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


module demux1_8_behav_always(
    input S3,S2,S1,A,
    output reg Y1,Y2,Y3,Y4,
    output reg Y5,Y6,Y7,Y8
    );
    
    always @(*) begin
        if ( S3 == 0 && S2 == 0 && S1 == 0) begin
            Y1 = A;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
            Y8 = 0;
        end
        else if ( S3 == 0 && S2 == 0 && S1 == 1 ) begin 
            Y1 = 0;
            Y2 = A;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
            Y8 = 0;
        end
        else if ( S3 == 0 && S2 == 1 && S1 == 0 ) begin 
            Y1 = 0;
            Y2 = 0;
            Y3 = A;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
            Y8 = 0;
        end
        else if ( S3 == 0 && S2 == 1 && S1 == 1 ) begin 
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = A;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
            Y8 = 0;
        end
        else if ( S3 == 1 && S2 == 0 && S1 == 0 ) begin 
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = A;
            Y6 = 0;
            Y7 = 0;
            Y8 = 0;
        end
        else if ( S3 == 1 && S2 == 0 && S1 == 1 ) begin 
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = A;
            Y7 = 0;
            Y8 = 0;
        end
        else if ( S3 == 1 && S2 == 1 && S1 == 0 ) begin 
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = A;
            Y8 = 0;
        end
        else begin 
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            Y4 = 0;
            Y5 = 0;
            Y6 = 0;
            Y7 = 0;
            Y8 = A;
        end
        
     end

endmodule
