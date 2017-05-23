----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:35 12/15/2016 
-- Design Name: 
-- Module Name:    carry_lookahead_adder - Behavioral 
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

entity carry_lookahead_adder is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end carry_lookahead_adder;

architecture Behavioral of carry_lookahead_adder is
	signal G,P,c:STD_LOGIC_VECTOR (3 downto 0);
begin
	G <= a and b;
	P <= a xor b;
	
	c(0) <= cin;
	c(1) <= G(0) or (P(0) And cin);
	c(2) <= G(1) or (p(1) and G(0))or(p(1)and p(0) and cin);
	c(3) <= G(2) or (P(2) and G(1))or(P(2)and P(1) and G(0))or(P(2)and P(1) and P(0) and cin);
	cout <= G(3) or (P(3) and G(2))or(P(3)and P(2) and G(1))or (P(3)and P(2) and P(1) and G(0))or(P(3)and P(2) and P(1) and P(0)and cin);
	
	sum <= P xor c;
end Behavioral;

