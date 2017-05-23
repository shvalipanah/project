----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:42 02/18/2017 
-- Design Name: 
-- Module Name:    wled - Behavioral 
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

entity wled is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end wled;

architecture Behavioral of wled is
SIGNAL INPUTREV : STD_LOGIC_VECTOR (15 DOWNTO 0);



begin
process(input)
variable low8 : STD_LOGIC_VECTOR (7 DOWNTO 0);
variable hig8 : STD_LOGIC_VECTOR (7 DOWNTO 0);
begin
--	low8 := input(7 downto 0);
--	hig8 := input(15 downto 8);
	
	for i in 0 to 7  loop
		inputrev(i) <= input(7-i);
		inputrev(i+8) <= input(15-i);
	end loop;
	output <= inputrev(15);
end process;


end Behavioral;

