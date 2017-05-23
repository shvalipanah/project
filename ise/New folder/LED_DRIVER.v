`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:04 02/27/2017 
// Design Name: 
// Module Name:    LED_DRIVER 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision updated
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LED_DRIVER(
    input clk,
    input [15:0] input_data,
    output reg out_data,
    output reg latch
    );
	 reg [15:0] data ;
	 reg [3:0]counter;
	 initial
	 begin 
	 counter = 0;
	 out_data = 0;
	 latch =1;
	 data ={input_data[7:0],input_data[15:8]};
	 end
	 
always @(posedge clk)
begin
	if (counter == 15)
	begin
		 out_data = data[15];
		 latch = 1'b0;
		 data ={input_data[7:0],input_data[15:8]};
		 counter = 0;
	end
	else
	begin
		latch = 1;
		out_data = data[15];
		data=data<<1;
		counter = counter + 1;
	end
end

endmodule

