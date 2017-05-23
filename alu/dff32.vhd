----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:45 10/24/2016 
-- Design Name: 
-- Module Name:    DFF32 - df32 
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

entity DFF32 is
	port(clk : IN STD_LOGIC ;
       reset : IN STD_LOGIC;
       input : IN STD_LOGIC_VECTOR (31 downto 0);
       output : OUT STD_LOGIC_VECTOR (31 downto 0) );
end DFF32;

architecture df32 of DFF32 is
	signal temp :STD_LOGIC_VECTOR (31 downto 0);
begin
	 temp <= X"00000000" when (reset = '1')
                else input when (clk = '1' and clk'event)
                else temp;
    output <= temp;

end df32;


