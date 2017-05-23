----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:25 10/24/2016 
-- Design Name: 
-- Module Name:    DFF - df 
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

entity DFF is
		 port(clk : IN STD_LOGIC ;
       reset : IN STD_LOGIC;
       input : IN STD_LOGIC;
       output : OUT STD_LOGIC );
end DFF;

architecture df of DFF is
	 signal temp :STD_LOGIC;
begin
	temp <= '0' when (reset = '1')
                else input when (clk = '1' and clk'event)
              else temp;
    output <= temp;


end df;


