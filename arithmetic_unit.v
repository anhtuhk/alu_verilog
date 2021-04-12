module fulladder(a,b,ci,s,co);
	input wire a,b,ci;
	output wire s,co;
	assign s=(a^b)^ci;
	assign co=(a&b)|(a&ci)|(b&ci);
endmodule

module arithmetic_unit(sel,a,b,ci,g,co);
	input wire a,b,ci;
	input wire [1:0]sel;
	output wire g,co;
	wire co00,co01,co10,co11,g00,g01,g10,g11,nota,notb;
	assign nota=~a;
	assign notb=~b;
	fulladder fa00(a,ci,1'b0,g00,co00);
	fulladder fa01(a,b,ci,g01,co01);
	fulladder fa10(a,notb,ci,g10,co10);
	fulladder fa11(nota,b,ci,g11,co11);
	assign {g,co} = (sel==2'b00)? {g00,co00} :(sel==2'b01)? {g01,co01} :(sel==2'b10)? {g10,co10} :(sel==2'b11)? {g11,co11} :2'b00;
endmodule
