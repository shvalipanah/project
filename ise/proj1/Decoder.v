`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:33 05/05/2017 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(
    input [15:0] instruction,
    output reg [2:0] op1,
    output reg [2:0] op2,
    output reg [4:0] aluop,
    output reg [7:0] immdata,
	 output reg shiftflag
    );
	 reg [8:0] opc;
	 initial
	 begin
		opc=0;
		immdata=0;
		aluop=0;
		op1=0;
		op2=0;
		shiftflag=0;
	 end

	 always @(instruction)
	 begin
		if(instruction[15] == 0)
			begin 
				opc =instruction[14:6];
				immdata=0;
				op1 = instruction[5:3];
				op2 = instruction[2:0];
			end
		else
			begin
				opc ={5'b00010, instruction[14:11]}; 
				op1 = instruction[10:8];
				op2 =3'b0;
				immdata = instruction[7:0];
			end
		case(opc)
			9'b000000000 :///nop 
			begin
			aluop=0;
			shiftflag =0;
			end
			9'b000000001 : ////add
			begin
			aluop =1;
			shiftflag =0;
			end
			9'b000000010 : ////and
			begin
			aluop =2;
			shiftflag =0;
			end
			9'b000000011 : ////sub
			begin
			aluop =3;
			shiftflag =0;
			end
			9'b000000100 : ////or
			begin
			aluop=4;
			shiftflag =0;
			end
			9'b000000101 : ////xor
			begin
			aluop=5;
			shiftflag =0;
			end
			9'b000000110 : ////mov 
			begin
			aluop=6;
			shiftflag =0;
			end
			9'b000001000 : ////not
			begin
			aluop=7;
			shiftflag =0;
			end
			9'b000001001 : ////sar
			begin
			aluop=8;
			shiftflag =1;
			end
			9'b000001010 :////slr
			begin
			aluop=9;
			shiftflag =1;
			end
		   9'b000001011 :////sal
			begin
			aluop=10;
			shiftflag =1;
			end
			9'b000001100 :////sll
			begin
			aluop=11;
			shiftflag =1;
			end
			9'b000001101 :///rol
			begin
			aluop=12;
			shiftflag =1;
			end
			9'b000001110 :////ror
			begin
			aluop=13;
			shiftflag =1;
			end
			9'b000001111 :////inc
			begin
			aluop=14;
			shiftflag =0;
			end
			9'b000010000 :///dec
			begin
			aluop=15;
			shiftflag =0;
			end
			9'b000010010 :////showr
			begin
			aluop=16;
			shiftflag =0;
			end
			9'b000010011 ://showrseg
			begin
			aluop=17;
			shiftflag =0;
			end
			9'b000010100 :////cmp
			begin
			aluop=18;
			shiftflag =0;
			end
			/////////////////////////////////////////////////////////////////////////////////////////////////
			9'b000100000 ://///////je
			begin
			aluop=19;
			shiftflag =0;
			end
			9'b000100001 ://///jb
			begin
			aluop=20;
			shiftflag =0;
			end
			9'b000100010 ://///ja
			begin
			aluop=21;
			shiftflag =0;
			end
			9'b000100011 :///lj
			begin
			aluop=22;
			shiftflag =0;
			end
			9'b000100100 ://jg
			begin
			aluop=23;
			shiftflag =0;
			end
			9'b000100101 :///jmp
			begin
			aluop=24;
			shiftflag =0;
			end
			9'b000100110 :///li
			begin
			aluop=25;
			shiftflag =0;
			end
			9'b000100111 :///lm
			begin
			aluop=26;
			shiftflag =0;
			end
			9'b000101000 :////Stordm
			begin
			aluop=27;
			shiftflag =0;
			end
			9'b000101001 :////ldip
			begin
			aluop=28;
			shiftflag =0;
			end
			9'b000101010 :///showdm
			begin
			aluop=29;
			shiftflag =0;
			end
			9'b000101011 :///showdmseg
			begin
			aluop=30;
			shiftflag =0;
			end
			default:
			begin
			immdata=0;
			aluop=0;
			op1=0;
			op2=0;
			shiftflag=0;
			end
		endcase
	 end
endmodule
