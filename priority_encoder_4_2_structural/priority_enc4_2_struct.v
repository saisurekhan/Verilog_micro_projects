`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 02:06:31 PM
// Design Name: 
// Module Name: priority_enc4_2_struct
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


module priority_enc4_2_struct(
    input en,
    input I3,I2,I1,I0,
    output O1,O0
    );
    
    wire I2_bar,O0_logic,O1_logic,mid_logic;
    
    
    //logic for O1 whose equation is O1 = I2 + I3
    or(O1_logic,I2,I3);
    
    //logic for I2_bar
    not(I2_bar,I2);
    
    //logic for and gate... i.e., I1.I2_bar
    and(mid_logic,I1,I2_bar);
    
    //logic for O0 = I3 + (I1.I2_bar)
    or(O0_logic,I3,mid_logic);
    
    //enable logic - so that output goes out only when enable = 1
    and(O0,en,O0_logic);
    and(O1,en,O1_logic);
    
endmodule
