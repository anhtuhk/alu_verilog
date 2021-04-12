module top_testbench();
	reg M,ci;
	reg [1:0]sel;
	reg [3:0]A,B;
	wire [3:0]F;
	wire co;
	integer k;
	top t1(M,sel,A,B,ci,F,co);
	initial begin
		{M,sel,A,B,ci}=12'b000000000000;
		for (k=0;k<8193;k=k+1)
			#10		{M,sel,A,B,ci}={M,sel,A,B,ci}+12'b000000000001;
		#10
		$finish;
	end
	initial begin
		$vcdplusfile("waveform.vpd");
		$vcdpluson();
	end
endmodule
