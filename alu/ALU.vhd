----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:37:06 10/24/2016 
-- Design Name: 
-- Module Name:    AluOperation - ALU 
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
--use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AluOperation is
port(a,b :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
       op  :IN STD_LOGIC_VECTOR (3 DOWNTO 0);
       clk :IN STD_LOGIC ;
       reset :IN STD_LOGIC;
       Z :OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
       OV :OUT STD_LOGIC;
       Cout :OUT STD_LOGIC;
       Sign :OUT STD_LOGIC);
end AluOperation;

architecture ALU of AluOperation is
  signal ovf, cout1, sign1: STD_LOGIC;
  signal zo , addAB, cin : STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal ocs : STD_LOGIC_VECTOR (2 DOWNTO 0);

begin
	 dff1: entity work.DFF(df) port map (clk,reset,ocs(0),OV);
    dff2: entity work.DFF(df) port map (clk,reset,ocs(1),Cout);
    dff3: entity work.DFF(df) port map (clk,reset,ocs(2),Sign);
    dff4: entity work.DFF32(df32) port map (clk,reset,zo,Z);
    with op select 
      cin <= X"ffffffff" when "0011",
             X"00000000" when OTHERS;
    with op select
      ocs <= (ovf&cout1&sign1) when "0011",
             (ovf&cout1&sign1) when "0010",
             ("00"&zo(31)) when OTHERS;        
    adder: entity work.adder(myAdder) port map (a,b,cin,ovf,cout1,sign1,addAB);
    with op select
      zo <= a when "0000",
            b when "0001",
            addAB when "0010",
            addAB when "0011",
            a(28 downto 0)&"000" when "0100",--to_stdlogicvector(to_bitvector(a) sll 3) when "0100",
            b(29 downto 0)&"00" when "0101",--to_stdlogicvector(to_bitvector(b) sll 2) when "0101",
            a(31)&a(31)&a(31 downto 2 )when "0110",--to_stdlogicvector(to_bitvector(a) sra 2) when "0110",
            b(31)&b(31 downto 1)when "0111",--to_stdlogicvector(to_bitvector(b) sra 1) when "0111",
            a(30 downto 0)&a(31)when "1000",--to_stdlogicvector(to_bitvector(a) rol 1) when "1000",
            b(28 downto 0)&b(31 downto 29)when "1001",--to_stdlogicvector(to_bitvector(b) rol 3) when "1001",
            X"00000000"when others;


end ALU;


