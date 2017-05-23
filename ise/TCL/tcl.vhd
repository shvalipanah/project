----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:50 12/16/2016 
-- Design Name: 
-- Module Name:    tcl - Behavioral 
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
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tcl is
    Port ( clk : in  STD_LOGIC;
           stby : in  STD_LOGIC;
           test : in  STD_LOGIC;
           r1 : out  STD_LOGIC;
           r2 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           g1 : out  STD_LOGIC;
           g2 : out  STD_LOGIC;
           yeltime : in  STD_LOGIC_VECTOR (7 downto 0);
           greentime : in  STD_LOGIC_VECTOR (7 downto 0);
           redtime : in  STD_LOGIC_VECTOR (7 downto 0));
end tcl;

architecture Behavioral of tcl is
 type state is (YY,RY,YR,RG,GR );
 signal  pr_collor_state : state :=YY;
-- signal next_collor_state : state;
 signal yrg1 : std_logic_vector(2 downto 0) :="000";
 signal yrg2 : std_logic_vector(2 downto 0) :="000"; 
 
 
 
begin
	y1<= yrg1(2);
	r1<= yrg1(1);
	g1<= yrg1(0);
	y2<= yrg2(2);
	r2<= yrg2(1);
	g2<= yrg2(0);
process1 : process (stby,clk,test)
	variable timeRY,timeYR,timeRG,timeGR: INTEGER := 50 ;
	variable count : INTEGER :=0;
	--variable tRY,tYR,tRG,tGR : INTEGER; 
	BEGIN 
		if(test = '1')then
		   timeGR := to_integer(unsigned(greentime)) ;
			timeRG := to_integer(unsigned(greentime)) ;
			timeRY := to_integer(unsigned(redtime)) ;
		   timeYR := to_integer(unsigned(yeltime)) ;
			case (pr_collor_state) is
				when YY =>
					count := 0;
					pr_collor_state <= RY;-- clk -> 50 Hz -> clk = .02sec or 
				when RY =>
					if(count < 50)then
						count := count +1;
					else 
						count := 0;
						pr_collor_state <= GR;
					end if;
				when GR =>
					if(count < 50)then
						count := count +1;
					else
						count := 0;
						pr_collor_state <= YR;
					end if;
				when YR =>
					if(count < 50)then
						count := count + 1;
					else 
						count := 0;
						pr_collor_state <= RG;
					end if;
				when RG =>
					if(count < 50)then
						count := count +1;
					else
						count := 0;
						pr_collor_state <= RY;
					end if;
				when others =>
					pr_collor_state <= YY;
			end case;
			-------------------------------------------------------------------------
		elsif(stby = '1')then
			pr_collor_state <= YY;
			----------------------------------------------------------------------------
		elsif(clk'event and clk = '1')then
			case (pr_collor_state) is
				when YY =>
					count := 0;
					pr_collor_state <= RY;-- clk -> 50 Hz -> clk = .02sec or 
				when RY =>
					if(count < timeRY * 50)then
						count := count +1;
					else 
						count := 0;
						pr_collor_state <= GR;
					end if;
				when GR =>
					if(count < timeGR)then
						count := count +1;
					else
						count := 0;
						pr_collor_state <= YR;
					end if;
				when YR =>
					if(count < timeYR)then
						count := count + 1;
					else 
						count := 0;
						pr_collor_state <= RG;
					end if;
				when RG =>
					if(count < timeRG)then
						count := count +1;
					else
						count := 0;
						pr_collor_state <= RY;
					end if;
				when others =>
					pr_collor_state <= YY;
			   end case;
		end if;
	END PROCESS;
	
process2 : process (pr_collor_state)
	
	begin 	
		if(pr_collor_state = YY)then
			yrg1 <= "100";
			yrg2 <= "100";
		elsif(pr_collor_state = RY)then
			yrg1 <= "010";
			yrg2 <= "100";
		elsif(pr_collor_state = YR)then
			yrg1 <= "100";
			yrg2 <= "010";
		elsif(pr_collor_state = RG)then
			yrg1 <= "010";
			yrg2 <= "001";
		elsif(pr_collor_state = GR)then
			yrg1 <= "001";
			yrg2 <= "010";
		else 
			yrg1 <= "100";
			yrg2 <= "100";
		end if ;
			
	end process;


end Behavioral;

