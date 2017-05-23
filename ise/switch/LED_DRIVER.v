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
// Revision 0.01 - File Created
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
	 reg [4:0]counter = 5'b0;
	 
always @(posedge clk)
begin
	if (counter == 5'b10000)
	begin
		 latch = 1'b0;
		 counter = 5'b0;
	end
	else if(counter == 5'b0)
	begin 
		latch = 1'b1;
		data = {input_data[7:0],input_data[15:8]};
		out_data=data[15];
		//out_data=input_data[8];
		counter = counter +5'b00001;
	end
	else
	begin
	//	data={input_bit,data[15:1]};
		out_data = data[15];
		data=data<<1;
		counter = counter +5'b00001;
	end
end

endmodule

