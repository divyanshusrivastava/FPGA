

module RunningLights(LED, SW0, SW1, SW2, SW3, CLK);

input wire CLK;
input wire  SW0, SW1, SW2, SW3;

output reg [7:0]LED = 8'h01;

reg [32:0]counter;
reg [32:0]count;

	always @ (posedge CLK) begin
		
		counter = counter + 1;
		
		if(counter > count) begin
			LED = LED?LED<<1:1;
			
			counter = 0;
			
			count = 15000000;
			
			if(SW0 == 0) begin
				count = 30000000;
			end
			
			if(SW1 == 0) begin
				count =  5000000;
			end
			
			if(SW2 == 0) begin
				count =  4000000;
			end
			
			if(SW3 == 0) begin
				count =  3000000;
			end
			
		end

	end

endmodule
