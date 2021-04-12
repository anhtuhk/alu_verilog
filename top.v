module top(M,sel,A,B,ci,F,co);
	input wire M,ci;
	input wire [1:0]sel;
	input wire [3:0]A,B;
	output wire [3:0]F;
	output wire co;
	wire ci1,ci2,ci3;
	alu a0(M,sel,A[0],B[0],ci,F[0],ci1);
	alu a1(M,sel,A[1],B[1],ci1,F[1],ci2);
	alu a2(M,sel,A[2],B[2],ci2,F[2],ci3);
	alu a3(M,sel,A[3],B[3],ci3,F[3],co);
endmodule

