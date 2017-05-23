----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:10 02/18/2017 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is port (i_clk :in std_logic;
				o_PSCLK:out std_logic;
				o_LEDData:out std_logic;
				o_LEDLatch:out std_logic;
				o_DIPLatch:out std_logic;
				i_DIPData:in std_logic;
				o_SEGData:out std_logic;
				o_SEGLatch:out std_logic;
				o_LCDData:out std_logic;
				o_LCDLatch:out std_logic;
				o_Eth_RST:out std_logic;
				i_Eth_INT:in std_logic;
				o_Eth_CS:out std_logic;
				o_Eth_RD:out std_logic;
				o_Eth_WR:out std_logic;
				o_USB_SLOE:out std_logic;
				io_USB_IFCLK:inout std_logic;
				o_USB_SLRD:out std_logic;
				o_USB_SLWR:out std_logic;
				io_Data:inout std_logic_vector(7 downto 0);
				io_MuxEthUSB:inout std_logic_vector(9 downto 0);
				o_VGA_blue0:out std_logic;
				o_VGA_blue1:out std_logic;
				o_VGA_green0:out std_logic;
				o_VGA_green1:out std_logic;
				o_VGA_red0:out std_logic;
				o_VGA_red1:out std_logic;
				o_VGA_vsync:out std_logic;
				o_VGA_hsync:out std_logic;
				i_SW1:in std_logic;
				i_SW2:in std_logic;
				i_SW3:in std_logic;
				i_SW4:in std_logic;
				o_TXD1:out std_logic;
				i_RXD1:in std_logic;
				o_TXD2:out std_logic;
				i_RXD2:in std_logic;
				o_MMC_SCK:out std_logic;
				i_MMC_DO:in std_logic;
				o_MMC_DI:out std_logic;
				o_MMC_CS:out std_logic;
				i_SYS_RESET:in std_logic);
end top;

architecture Behavioral of top is

signal clk_5,clk_20,clk_50,clk_100 :std_logic;


		
COMPONENT clock
    PORT(clk_In1 : in std_logic;
			clk_out5 : out std_logic;
			clk_out20 : out std_logic;
			clk_out50 : out std_logic;
			clk_out100 : out std_logic
          );
    END COMPONENT;
component LED_DRIVE 
    Port ( DATA_16BIT : in  STD_LOGIC_VECTOR (15 downto 0);
           latch : out  STD_LOGIC;
           out_data : out  STD_LOGIC;
           clk : in  STD_LOGIC);
	end component;


begin
o_PSCLK  <= 'Z';
o_LEDData <= 'Z';
o_LEDLatch <= 'Z';

o_DIPLatch <= 'Z';

o_SEGData <= 'Z';
o_SEGLatch <= 'Z';

o_LCDData <= 'Z';
o_LCDLatch <= 'Z';

o_MMC_SCK <= 'Z';
o_MMC_DI <= 'Z';
o_MMC_CS <= 'Z';

o_VGA_blue0 <= 'Z';
o_VGA_blue1  <= 'Z';
o_VGA_green0 <= 'Z';
o_VGA_green1 <= 'Z';
o_VGA_red0 <= 'Z';
o_VGA_red1 <= 'Z';
o_VGA_vsync <= 'Z';
o_VGA_hsync <= 'Z';

o_Eth_RST <= 'Z';
o_Eth_CS <= 'Z';
o_Eth_RD <= 'Z';
o_Eth_WR <= 'Z';

o_USB_SLOE <= 'Z';
io_USB_IFCLK <= 'Z';

o_USB_SLRD <= 'Z';
o_USB_SLWR <= 'Z';

io_Data <= "ZZZZZZZZ";

io_MuxEthUSB <= "ZZZZZZZZZZ";

o_TXD1 <= 'Z';
o_TXD2 <= 'Z';

o_SEGData <= 'Z';
o_SEGLatch <= 'Z';

o_LCDData <= 'Z';
o_LCDLatch <= 'Z';

CLKGEN: clock port map (clk_In1 => i_clk, clk_out5=>clk_5,clk_out20=>clk_20,clk_out50=>clk_50,clk_out100=>clk_100);
led_dr:LED_DRIVE port map(DATA_16BIT =>X"0011",latch =>o_LEDLatch,out_data=>o_LEDData,clk=>clk_5);


end Behavioral;

