module alu(M,sel,a,b,ci,f,co);
	input wire M,a,b,ci;
	input wire [1:0]sel;
	output wire f,co;
	wire g,h;
	arithmetic_unit au1(sel,a,b,ci,g,co);
	logic_unit      lu1(sel,a,b,h);
	mux21           m1(M,g,h,f);
endmodule

