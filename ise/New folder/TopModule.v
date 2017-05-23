`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:18 02/14/2016 
// Design Name: 
// Module Name:    TopModule 
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
module TopModule(
	 input i_CLK,
    output o_PSCLK,
    output o_LEDData,
    output o_LEDLatch,
    output o_DIPLatch,
    input i_DIPData,
    output o_SEGData,
    output o_SEGLatch,
    output o_LCDData,
    output o_LCDLatch,
    output o_Eth_RST,
    input i_Eth_INT,
    output o_Eth_CS,
    output o_Eth_RD,
    output o_Eth_WR,
    output o_USB_SLOE,
    inout io_USB_IFCLK,
    output o_USB_SLRD,
    output o_USB_SLWR,
    inout [7:0] io_Data,
    inout [9:0] io_MuxEthUSB,
    output o_VGA_blue0,
    output o_VGA_blue1,
    output o_VGA_green0,
    output o_VGA_green1,
    output o_VGA_red0,
    output o_VGA_red1,
    output o_VGA_vsync,
    output o_VGA_hsync,
    input i_SW1,
    input i_SW2,
    input i_SW3,
    input i_SW4,
    output o_TXD1,
    input i_RXD1,
    output o_TXD2,
    input i_RXD2,
    output o_MMC_SCK,
    input i_MMC_DO,
    output o_MMC_DI,
    output o_MMC_CS,
    input i_SYS_RESET
    );
//////////////////////////////////////

		
		assign o_LCDData = 1'bz;
		assign o_LCDLatch = 1'bz;

		assign o_MMC_SCK	= 1'bz;

		assign o_MMC_DI = 1'bz;
		assign o_MMC_CS = 1'bz;

		assign o_VGA_blue0 = 1'bz;
		assign o_VGA_blue1 = 1'bz;
		assign o_VGA_green0 = 1'bz;
		assign o_VGA_green1 = 1'bz;
		assign o_VGA_red0 = 1'bz;
		assign o_VGA_red1 = 1'bz;
		assign o_VGA_vsync = 1'bz;
		assign o_VGA_hsync = 1'bz;

		assign o_Eth_RST = 1'bz;

		assign o_Eth_CS = 1'bz;
		assign o_Eth_RD = 1'bz;
		assign o_Eth_WR = 1'bz;
		assign o_USB_SLOE = 1'bz;
		assign io_USB_IFCLK = 1'bz;
		assign o_USB_SLRD = 1'bz;
		assign o_USB_SLWR = 1'bz;
		assign io_Data = 8'bz;
		assign io_MuxEthUSB = 10'bz;

		assign o_TXD1 = 1'bz;
		assign o_TXD2 = 1'bz;



		//assign o_SEGData = 1'bz;
		//assign o_SEGLatch = 1'bz;

		assign o_LCDData = 1'bz;
		assign o_LCDLatch = 1'bz;
		//assign o_DIPLatch=1'bz;
	
		
		

		wire CLK_out5;
		wire CLK_out20;
		wire CLK_out50;
		wire CLK_out100;	
		
		wire [20:0] SwitchDriverOut;
		
		wire [7:0] outpc;
		reg  [7:0] PC;
		
		wire [8:0]datainseg;
		reg [15:0] segData;
		
		wire [15:0] instruction;
		
		wire [15:0] outplus ;
		
		
		wire [4:0] aluop;
      wire [2:0] op1;
      wire [2:0] op2;
      wire [7:0] immdata;
		wire shiftf;
		
		wire [7:0] op1data;
		wire [7:0] op2data;
		
		reg [7:0] op2datas;
		
		wire [7:0] memorydata;
		wire [7:0] data_output;
		wire en_write;
		wire [7:0]DatainMemory;
		wire jump;
		wire en_writedm;
		
		reg [15:0]ledData;
		
		reg [7:0] DataMemoryAddress;
		
//		reg [7:0] inPCData;
	
		assign o_PSCLK = ~CLK_out5 ;
		clock CLKGEN(
		.CLK_IN1(i_CLK),
		.CLK_OUT5(CLK_out5),
		.CLK_OUT20(CLK_out20),
		.CLK_OUT50(CLK_out50),
		.CLK_OUT100(CLK_out100)
		);
		//SwitchDriverOut[20:5] is 16 bit switch
		switch_driver s_driver (
		.clk(CLK_out5),
		.input_bit(i_DIPData),
		.out(SwitchDriverOut),
		.latch(o_DIPLatch));
		//////////////////////////////////////pin 5 = SwitchDriverOut[2] , pin[6] =SwitchDriverOut[3]
		debounce dem( 
		.clk(CLK_out5),
		.resetpin(SwitchDriverOut[3]),
		.debugpin(SwitchDriverOut[2]),
		.pc(inPCData),
		.out(outpc)
		);
		////////////////////////every time we push debugpin change PC
		/*always@(outpc)
			PC =outpc;*/
		///////////////////////every time 
		always@(outpc or immdata) //////////immdata is jump address 
		begin
			if(jump==1)
				PC =immdata-8'b00000001;
			else 
				PC =outpc;
		end
		////////////////////////////////PC or data must show on seven segment
		always@(PC or datainseg)
		begin
		if(datainseg[8]==1)/////show data
		segData<={8'b0,datainseg[7:0]};
		else 
		segData<={8'b0,PC};
		end
		//////////////////////////////////instruction memory
		instruction_memory im(.ADDRA(PC),.CLKA(CLK_out5),.DOUTA(instruction));
		/////////////////////////////////send instruction to decoder for decoding
		Decoder decodeunit(
		.instruction(instruction),
		.op1(op1),
		.op2(op2),
		.aluop(aluop),
		.immdata(immdata),//////////immdata is jump address
		.shiftflag(shiftf)
		); 
		///////////////////////////////send op1 , op2 to register for read or data from execut unit to write
		RegisterFile RF(
		.clk(CLK_out5),
		.op1(op1),
		.op2(op2),
		.data(data_output),
		.out1(op1data),
		.out2(op2data),
		.en_write(en_write));////////////////////////en_write from execute unit 
////////////////////////////////////////////////instruction is shift or not , and if it is shift op2 is immdata for shift number		 
		always@(instruction)
		begin
		if(shiftf==1)
		op2datas<={5'b00000,op2};
		else 
		op2datas<=op2data;
		end
////////////////////////////////////////////////////////////execute 		
		Execute exec(
		.aluop(aluop),
		.op1(op1data),
		.op2(op2datas),
		.immdata(immdata),
		.memorydata(memorydata),
		.dipsdata(SwitchDriverOut[12:5]),
		.data_output(data_output),
		.datainseg(datainseg),
		.en_write(en_write),
		.jump(jump),
		.DatainMemory(DatainMemory),
		.DataMemoryAddress(DataMemoryAddress),
		.en_writedm(en_writedm)
		);
		
		
		LED_DRIVER l_drive(
		.clk(CLK_out5),
		.input_data(data_output),////////////instruction
		.out_data(o_LEDData),
		.latch(o_LEDLatch));
//////////////////////////////////////////show pc on seven seg or data in memory
		BCD2SEVEN Seven_Seg (
    .clk(CLK_out5),
    .Dig_one(segData[3:0]),
    .Dig_two(segData[7:4]),
    .Dig_three(segData[11:8]),
    .Dig_four(segData[15:12]),
    .Seg_Out(seven_seg_out)
    );

	sevenOut so(.data(seven_seg_out),
	.clk(CLK_out5),
	.sevenData(o_SEGData),
	.sevenLatch(o_SEGLatch));
//////////////////////////////////////
//define data memory 256 , 8 bit 
//DataMemoryAddress,DatainMemory for input and memorydata for output
///if en_writedm =1 write 
//dataMemory DaMemory(.ADDRA(DataMemoryAddress),.DINA(DatainMemory),WEA(en_writedm),CLKA(CLK_out5),DOUTA(memorydata));
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
push_button pushbutton(
		.clk(CLK_out5),
		.in(SwitchDriverOut[0]),
		.out(outplus)
		);
//////////////////////////////////////		
		

endmodule
