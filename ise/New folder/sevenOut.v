`timescale 1ns / 1ps

module sevenOut(
	data,
	clk,
	sevenData,
	sevenLatch);
	input [15:0] data;
	input clk;
	output reg sevenData;
	output reg sevenLatch;
	reg [15:0]reg_data;
	reg [3:0] count;
	initial 
		begin
				count=0;
				sevenLatch=1;
				reg_data={data[7:0],data[15:8]};	
				sevenData=0;
		end
		always @(posedge clk)
		begin
		if(count<15)
			begin
			sevenData= reg_data[count];
			count=count+1;
			sevenLatch=1;
			end
		else
		if(count==15)
			begin
			sevenData=reg_data[15];
			sevenLatch=0;
			count=0;
			reg_data={data[7:0],data[15:8]};	
		end
		end
endmodule
