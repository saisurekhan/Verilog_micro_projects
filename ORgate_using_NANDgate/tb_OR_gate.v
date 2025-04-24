`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 12:26:16 PM
// Design Name: 
// Module Name: tb_OR_gate
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


module tb_OR_gate(
);

reg A,B; 
wire Z;

or_using_nand uut (

.A(A),
.B(B),
.Z(Z)
);

initial begin

A=0;B=0;
#50;
A=0;B=1;
#50;
A=1;B=0;
#50;
A=1;B=1;
#50;
end 

endmodule
