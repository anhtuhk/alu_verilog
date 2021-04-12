module logic_unit(sel,a,b,h);
	input wire a,b;
	input wire [1:0]sel;
	output wire h;
	assign h= (sel==2'b00)? a&b :(sel==2'b01)? a|b :(sel==2'b10)? a^b :(sel==2'b11)? a^~b :1'b0;
endmodule
