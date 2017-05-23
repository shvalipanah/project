`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:31:18 04/08/2017 
// Design Name: 
// Module Name:    push_button 
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
module push_button(
	input clk,
    input in,
    output reg [15:0] out
    );
	 reg [18:0]timer = 19'b0;
	 reg flag = 0;
	 reg [15:0] counter = 16'b0;
	 
	 	 initial 
	 begin
		flag = 0;
		timer = 19'b0;
	end
	 always @(posedge clk )
	 begin
		//************************************************
	
	if(in == 0)
	begin
		if ( timer == 19'b1111010000100100000)
		begin
			flag = 1;			
		end
		else 
		begin 
			timer = timer + 1;
		end
	end
 if(flag == 1 && in == 1)
	begin
		timer = 0;
		flag = 0;
		counter = counter +1;
		out = counter;
		
	end
		
		//************************************************
	end
	endmodule
