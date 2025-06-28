`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 03:15:01 PM
// Design Name: 
// Module Name: priority_enc4_2behav
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


module priority_enc4_2behav(
    input en,
    input I3,I2,I1,I0,
    output O1,O0
    );
    
    wire O0_logic,O1_logic;
    
    assign O1_logic = ( I2 | I3 );
    
    assign O0_logic = ( I3 | I1 & ~(I2));
    
    assign O0 = ( en & O0_logic );
    
    assign O1 = ( en & O1_logic );
      
endmodule
