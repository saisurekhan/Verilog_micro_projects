module tb_not_gate;
reg A;
wire Y;

not_gate uut (
  .A(A),
  .Y(Y)
);

initial begin

A = 0;
#50;
A = 1;
#50;
A = 0;
#50;
A = 1;
#50;
A = 0;
#50;
$finish;
end

endmodule

