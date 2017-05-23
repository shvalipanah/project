`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:09 05/05/2017 
// Design Name: 
// Module Name:    Execute 
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
module Execute(
    input [5:0] aluop,
    input [7:0] op1,
    input [7:0] op2,
    input [7:0] immdata,
    input [7:0] memorydata,
	 input [7:0] dipsdata,
	 output reg [7:0]DatainMemory,
	 output reg [8:0]datainseg,
	 output reg en_write,
	 output reg jump,
	 output reg en_writedm,
    output reg [7:0] data_output
    );
	 reg [3:0] flags;//zf,cf,of,sf
	 wire[8:0]result ;
	 reg [8:0]temp1,temp2;
	 reg [15:0] res16;
	 
	 initial 
	 begin
	 flags = 0;
	 datainseg =0;
	 jump =0;
	 en_write=0;
	 en_writedm=0;
	 data_output=0;
	 DatainMemory=0;
	 
	 end
	 
	 always@(op1 or op2 or aluop)
	 begin
		case(aluop)
			0:///nop
			begin
			data_output=0;
			en_write=0;
			datainseg=0;
			jump=0;
			DatainMemory=0;
			en_writedm=0;
			end
			1 : ///add
			begin 
			temp1 ={1'b0,op1};
			temp2 ={1'b0,op2};
			result = temp1+temp2;
			data_output = result[7:0];
			flags[2]=result[8];
			flags[1]=((~op1[7]&~op2[7]&result[7])|(op1[7]&op2[7]&~result[7]));
			flags[0]=result[7];
			flags[3]= result[7:0]==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			2 ://///////////and
			begin
			result = op1&op2;//////////////////////////////////////////////////
			flags[0]=result[7];
			flags[1]=0;
			flags[2]=0;
			flags[3]= result[7:0]==0 ? 1 : 0;
			data_output = result[7:0];
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			3 : /////////////////sub
			begin 
			temp1 ={1'b0,op1};
			temp2 ={1'b0,op2};
			result = temp1-temp2;
			data_output = result[7:0];
			flags[2]=result[8];
			flags[1]=((~op1[7]&~op2[7]&result[7])|(op1[7]&op2[7]&~result[7]));
			flags[0]=result[7];
			flags[3]= result[7:0]==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			4: ////or
			begin
			result = op1|op2;//////////////////////////////////////////////////
			flags[0]=result[7];
			flags[1]=0;
			flags[2]=0;
			flags[3]= result[7:0]==0 ? 1 : 0;
			data_output = result[7:0];
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			5 : ///xor
			begin
			result = op1^op2;//////////////////////////////////////////////////
			flags[0]=result[7];
			flags[1]=0;
			flags[2]=0;
			flags[3]= result[7:0]==0 ? 1 : 0;
			data_output = result[7:0];
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			6 : ///mov
			begin
			data_output = op2;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			7 : ///////////////not
			begin
			data_output = ~op2;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			8 : //////////////////////sar
			begin 
			res16 = $signed({op1,op1})>>>op2;;
			data_output = res16[15:8] ;
			flags[2] = res16[7];
			flags[1] =(op1[7]==data_output[7]) ? 0 : 1;
			flags[0] = data_output[7];
			flags[3]=data_output ==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			9://////////////////////slr
			begin 
			res16 = $signed({op1,op1})>>op2;;
			data_output = res16[15:8] ;
			flags[2] = res16[7];
			flags[1] =(op1[7]==data_output[7]) ? 0 : 1;
			flags[0] = data_output[7];
			flags[3]=data_output ==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
		   10 :///sal
			begin 
			res16 = $signed({op1,op1})<<<op2;;
			data_output = res16[7:0] ;
			flags[2] = res16[8];
			flags[1] =(op1[7]==data_output[7]) ? 0 : 1;
			flags[0] = data_output[7];
			flags[3]=data_output ==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			11 ://sll
			begin 
			res16 = $signed({op1,op1})<<op2;;
			data_output = res16[7:0] ;
			flags[2] = res16[8];
			flags[1] =(op1[7]==data_output[7]) ? 0 : 1;
			flags[0] = data_output[7];
			flags[3]=data_output ==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			12 ://rol
			begin 
			res16 = $signed({op1,op1})<<op2;;
			data_output = res16[15:8] ;
			flags[2] = res16[7];
			flags[1] =(op1[7]==data_output[7]) ? 0 : 1;
			flags[0] = data_output[7];
			flags[3]=data_output ==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			13://ror
			begin 
			res16 = $signed({op1,op1})>>op2;;
			data_output = res16[7:0] ;
			flags[2] = res16[8];
			flags[1] =(op1[7]==data_output[7]) ? 0 : 1;
			flags[0] = data_output[7];
			flags[3]=data_output ==0 ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			14 ://inc
			begin 
			temp1 ={1'b0,op1};
			result = temp1+1;
			data_output = result[7:0];
			flags[2]=result[8];
			flags[1]=(~op1[7]&result[7]);
			flags[0]=result[7];
			flags[3]= (result[7:0]==0) ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			15 ://dec
			begin 
			temp1 ={1'b0,op1};
			result = temp1-1;
			data_output = result[7:0];
			flags[2]=result[8];
			flags[1]=(~op1[7]&result[7]);
			flags[0]=result[7];
			flags[3]= (result[7:0]==0) ? 1 : 0;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			16 :///showr
			begin
			end
			17 :///showrseg
			begin
			data_output = op1;
			en_write = 0;
			datainseg = {1'b1,op1[7:0]};;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			18 :
			begin 
			temp1 ={1'b0,op1};
			temp2 ={1'b0,op2};
			result = temp1-temp2;
			data_output = result[7:0];
			flags[2]=result[8];
			flags[1]=((~op1[7]&~op2[7]&result[7])|(op1[7]&op2[7]&~result[7]));
			flags[0]=result[7];
			flags[3]= result[7:0]==0 ? 1 : 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			jump = 0;
			DatainMemory =0;
			end
			//////////////////////////////////////////////////
			19 :////je
			begin 
			if(flags[3] == 1)
				jump =1;
			else
				jump=0;
			data_output = 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			20 ://///jb
			begin 
			if(flags[2] == 1)
				jump =1;
			else
				jump=0;
			data_output = 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			21 ://///ja
			begin 
			if(flags[3] == 0 && flags[2] == 0 )
				jump =1;
			else
				jump=0;
			data_output = 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			22 :////jl
			begin 
			if(flags[0] !=flags[1] )
				jump =1;
			else
				jump=0;
			data_output = 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			23 :///jg
			begin 
			if(flags[0] ==flags[1] && flags[3] ==0)
				jump =1;
			else
				jump=0;
			data_output = 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			24 :///jmp
			begin 
			jump =1;
			data_output = 0;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			25 :///li
			begin
			jump =0;
			data_output = immdata;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			26 :///lm
			begin
			jump =0;
			data_output = DatainMemory;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			27 ://storedm
			begin
			jump =0;
			data_output = op1;
			en_write = 0;
			datainseg = 0;
			en_writedm = 1;
			DatainMemory =op1;
			end
			28 :///ldip
			begin
			jump =0;
			data_output =  dipsdata ;
			en_write = 1;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			29 :///showdm
			begin
			jump =0;
			data_output = DatainMemory  ;
			en_write = 0;
			datainseg = 0;
			en_writedm = 0;
			DatainMemory =0;
			end
			30 :///showDMSeg
			begin
			jump =0;
			data_output = DatainMemory  ;
			en_write = 0;
			datainseg ={1'b1,DatainMemory[7:0]};
			en_writedm = 0;
			DatainMemory =0;
			end
			default :
			begin
			data_output=0;
			en_write=0;
			datainseg=0;
			isjump=0;
			DatainMemory=0;
			en_writedm=0;
			end
			endcase

	 end


endmodule

