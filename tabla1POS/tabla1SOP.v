module tabla1SOP();

reg A, B, C;
wire notA, notB, notC, ter1, ter2, ter3, ter4, ter5, out;

not a(notA, A);
not b(notB, B);
not c(notC, C);

and I(ter1, notA, notB, notC);
and J(ter2, notA, B, notC);
and K(ter3, A, notB, notC);
and L(ter4, A, notB, C);
and M(ter5, A, B, C);

or U1(out, ter1, ter2, ter3, ter4, ter5);

initial begin

$display("| A B C | Y |");
$display("|-------|---|");
$monitor("| %b %b %b | %b |", A, B, C, out);
A = 0; B = 0; C = 0;
#1 C = 1;
#1 B = 1; C = 0;
#1 C = 1;
#1 A = 1; B = 0; C = 0;
#1 C = 1;
#1 B = 1; C = 0;
#1 C = 1;

end

endmodule
