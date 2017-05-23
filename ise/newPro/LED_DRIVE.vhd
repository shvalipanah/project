----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:35:07 02/18/2017 
-- Design Name: 
-- Module Name:    LED_DRIVE - Behavioral 
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
use ieee.numeric_std;
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_DRIVE is
    Port ( DATA_16BIT : in  STD_LOGIC_VECTOR (15 downto 0);
           latch : out  STD_LOGIC;
           out_data : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end LED_DRIVE;

architecture Behavioral of LED_DRIVE is

SIGNAL INPUTREV : STD_LOGIC_VECTOR (15 DOWNTO 0);
--Signal data :  STD_LOGIC_VECTOR (15 DOWNTO 0);
--signal endp: std_logic:='0';
begin

process(DATA_16BIT)
begin
	
	inputrev(7 downto 0) <= DATA_16BIT(15 downto 8);	
	inputrev(15 downto 8) <= DATA_16BIT(7 downto 0);
--	endp <= '1';	
	--for i in 8 to 15  loop
--		inputrev(i) <= DATA_16BIT(15-i);
--	end loop;
end process;

process(clk)
--variable l: std_logic:='1'; 
variable counter : INTEGER :=0;
begin
   
	if clk'event and clk ='1' then
		--if endp = '1' then
		--if counter =0 then
			latch<='1';
	--		l:='1';
			out_data <= inputrev(counter);
			counter := counter+1;
			--inputrev	<= to_stdlogicvector(to_bitvector(inputrev) srl 1);
		--elsif(l='1')then
		--	counter := counter+1;
		--	out_data <= data(counter);
		--	data		<= to_stdlogicvector(to_bitvector(inputrev) srl 1);
			if counter = 16 then
				counter :=0;
				latch<='0';
	--			l:='0';
			end if;
		--end if;
		--end if;
	end if;
end process;

end Behavioral;

