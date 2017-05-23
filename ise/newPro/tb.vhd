--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:08:48 02/24/2017
-- Design Name:   
-- Module Name:   A:/ise/newPro/tb.vhd
-- Project Name:  newPro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         i_clk : IN  std_logic;
         o_PSCLK : OUT  std_logic;
         o_LEDData : OUT  std_logic;
         o_LEDLatch : OUT  std_logic;
         o_DIPLatch : OUT  std_logic;
         i_DIPData : IN  std_logic;
         o_SEGData : OUT  std_logic;
         o_SEGLatch : OUT  std_logic;
         o_LCDData : OUT  std_logic;
         o_LCDLatch : OUT  std_logic;
         o_Eth_RST : OUT  std_logic;
         i_Eth_INT : IN  std_logic;
         o_Eth_CS : OUT  std_logic;
         o_Eth_RD : OUT  std_logic;
         o_Eth_WR : OUT  std_logic;
         o_USB_SLOE : OUT  std_logic;
         io_USB_IFCLK : INOUT  std_logic;
         o_USB_SLRD : OUT  std_logic;
         o_USB_SLWR : OUT  std_logic;
         io_Data : INOUT  std_logic_vector(7 downto 0);
         io_MuxEthUSB : INOUT  std_logic_vector(9 downto 0);
         o_VGA_blue0 : OUT  std_logic;
         o_VGA_blue1 : OUT  std_logic;
         o_VGA_green0 : OUT  std_logic;
         o_VGA_green1 : OUT  std_logic;
         o_VGA_red0 : OUT  std_logic;
         o_VGA_red1 : OUT  std_logic;
         o_VGA_vsync : OUT  std_logic;
         o_VGA_hsync : OUT  std_logic;
         i_SW1 : IN  std_logic;
         i_SW2 : IN  std_logic;
         i_SW3 : IN  std_logic;
         i_SW4 : IN  std_logic;
         o_TXD1 : OUT  std_logic;
         i_RXD1 : IN  std_logic;
         o_TXD2 : OUT  std_logic;
         i_RXD2 : IN  std_logic;
         o_MMC_SCK : OUT  std_logic;
         i_MMC_DO : IN  std_logic;
         o_MMC_DI : OUT  std_logic;
         o_MMC_CS : OUT  std_logic;
         i_SYS_RESET : IN  std_logic;
         data : IN  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk : std_logic := '0';
   signal i_DIPData : std_logic := '0';
   signal i_Eth_INT : std_logic := '0';
   signal i_SW1 : std_logic := '0';
   signal i_SW2 : std_logic := '0';
   signal i_SW3 : std_logic := '0';
   signal i_SW4 : std_logic := '0';
   signal i_RXD1 : std_logic := '0';
   signal i_RXD2 : std_logic := '0';
   signal i_MMC_DO : std_logic := '0';
   signal i_SYS_RESET : std_logic := '0';
   signal data : std_logic_vector(15 downto 0) := (others => '0');

	--BiDirs
   signal io_USB_IFCLK : std_logic;
   signal io_Data : std_logic_vector(7 downto 0);
   signal io_MuxEthUSB : std_logic_vector(9 downto 0);

 	--Outputs
   signal o_PSCLK : std_logic;
   signal o_LEDData : std_logic;
   signal o_LEDLatch : std_logic;
   signal o_DIPLatch : std_logic;
   signal o_SEGData : std_logic;
   signal o_SEGLatch : std_logic;
   signal o_LCDData : std_logic;
   signal o_LCDLatch : std_logic;
   signal o_Eth_RST : std_logic;
   signal o_Eth_CS : std_logic;
   signal o_Eth_RD : std_logic;
   signal o_Eth_WR : std_logic;
   signal o_USB_SLOE : std_logic;
   signal o_USB_SLRD : std_logic;
   signal o_USB_SLWR : std_logic;
   signal o_VGA_blue0 : std_logic;
   signal o_VGA_blue1 : std_logic;
   signal o_VGA_green0 : std_logic;
   signal o_VGA_green1 : std_logic;
   signal o_VGA_red0 : std_logic;
   signal o_VGA_red1 : std_logic;
   signal o_VGA_vsync : std_logic;
   signal o_VGA_hsync : std_logic;
   signal o_TXD1 : std_logic;
   signal o_TXD2 : std_logic;
   signal o_MMC_SCK : std_logic;
   signal o_MMC_DI : std_logic;
   signal o_MMC_CS : std_logic;

   -- Clock period definitions
   constant i_clk_period : time := 10 ns;
   constant o_PSCLK_period : time := 10 ns;
   constant io_USB_IFCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          i_clk => i_clk,
          o_PSCLK => o_PSCLK,
          o_LEDData => o_LEDData,
          o_LEDLatch => o_LEDLatch,
          o_DIPLatch => o_DIPLatch,
          i_DIPData => i_DIPData,
          o_SEGData => o_SEGData,
          o_SEGLatch => o_SEGLatch,
          o_LCDData => o_LCDData,
          o_LCDLatch => o_LCDLatch,
          o_Eth_RST => o_Eth_RST,
          i_Eth_INT => i_Eth_INT,
          o_Eth_CS => o_Eth_CS,
          o_Eth_RD => o_Eth_RD,
          o_Eth_WR => o_Eth_WR,
          o_USB_SLOE => o_USB_SLOE,
          io_USB_IFCLK => io_USB_IFCLK,
          o_USB_SLRD => o_USB_SLRD,
          o_USB_SLWR => o_USB_SLWR,
          io_Data => io_Data,
          io_MuxEthUSB => io_MuxEthUSB,
          o_VGA_blue0 => o_VGA_blue0,
          o_VGA_blue1 => o_VGA_blue1,
          o_VGA_green0 => o_VGA_green0,
          o_VGA_green1 => o_VGA_green1,
          o_VGA_red0 => o_VGA_red0,
          o_VGA_red1 => o_VGA_red1,
          o_VGA_vsync => o_VGA_vsync,
          o_VGA_hsync => o_VGA_hsync,
          i_SW1 => i_SW1,
          i_SW2 => i_SW2,
          i_SW3 => i_SW3,
          i_SW4 => i_SW4,
          o_TXD1 => o_TXD1,
          i_RXD1 => i_RXD1,
          o_TXD2 => o_TXD2,
          i_RXD2 => i_RXD2,
          o_MMC_SCK => o_MMC_SCK,
          i_MMC_DO => i_MMC_DO,
          o_MMC_DI => o_MMC_DI,
          o_MMC_CS => o_MMC_CS,
          i_SYS_RESET => i_SYS_RESET,
          data => data
        );

   -- Clock process definitions
   i_clk_process :process
   begin
		i_clk <= '0';
		wait for i_clk_period/2;
		i_clk <= '1';
		wait for i_clk_period/2;
   end process;
 
   o_PSCLK_process :process
   begin
		o_PSCLK <= '0';
		wait for o_PSCLK_period/2;
		o_PSCLK <= '1';
		wait for o_PSCLK_period/2;
   end process;
 
   io_USB_IFCLK_process :process
   begin
		io_USB_IFCLK <= '0';
		wait for io_USB_IFCLK_period/2;
		io_USB_IFCLK <= '1';
		wait for io_USB_IFCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

		data <=X"010f" ;

      -- insert stimulus here 

      wait;
   end process;

END;
