module mux21(M,g,h,f);
	input wire M,g,h;
	output wire f;
	assign f=M?g:h;
endmodule
