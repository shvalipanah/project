`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:56:39 04/29/2017 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input rst,
    input clk,
    input [7:0] in,
    output reg [7:0] out
    );
	 always @(posedge clk)
	 begin
	 if(rst)
		out =0;
	 out = in;
	 end


endmodule
