module tb_and_gate;

reg A,B; 
wire Y,Z;

AND_using_Nand uut (

.A(A),
.B(B),
.Y(Y),
.Z(Z)

);

initial begin

A = 0; B = 0;
#50;
A = 0; B = 1;
#50;
A = 1; B = 0;
#50;
A = 1; B = 1;
#50;
$finish;

end

endmodule

