`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:21 02/27/2017 
// Design Name: 
// Module Name:    switch_driver 
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
module switch_driver(
    input clk,
    input input_bit,
    output reg latch,
    output reg [20:0] out
    );
	 reg [20:0] data = 21'b0;
	 reg [4:0]counter = 5'b0;
always @(posedge clk)
begin
	if (counter == 5'b10101)
	begin
	    out = {data[12:5],data[20:13],data[4:0]};
		 latch = 1'b0; 
		 counter =5'b0;
	end
	else
	begin
		latch = 1'b1;
		data={data[19:0],input_bit};
		counter = counter +5'b00001;
	end
end

endmodule
