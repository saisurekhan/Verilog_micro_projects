`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 03:28:12 PM
// Design Name: 
// Module Name: priority_enc8_3_str
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


module priority_enc8_3_str(
    input en,
    input I7,I6,I5,I4,
    input I3,I2,I1,I0,
    output O2,O1,O0
    );
    
    wire O2_logic,O1_logic,O0_logic;
    
    or (O2_logic,I4,I5,I6,I7 );
    or (O1_logic, I6, I7,(I3 & (~(I6)) & (~(I7))), (I2 & ~I3 & ~I6 & ~I7));
    or (O1_logic, I6, I7, (I3 & ~I6 & ~I7), (I2 & ~I3 & ~I6 & ~I7));

    
    and(O2,en,O2_logic);
    and(O1,en,O1_logic);
    and(O0,en,O0_logic);

endmodule
