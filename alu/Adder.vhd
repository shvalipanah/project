----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:35 10/24/2016 
-- Design Name: 
-- Module Name:    adder - myAdder 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
 port (A : IN STD_LOGIC_VECTOR(31 downto 0);
        B : IN STD_LOGIC_VECTOR(31 downto 0);
        cin : IN STD_LOGIC_VECTOR(31 downto 0);
        ov : OUT STD_LOGIC; 
        cout : OUT STD_LOGIC;
        sign : OUT STD_LOGIC;
        output :OUT STD_LOGIC_VECTOR(31 downto 0)
        );
end adder;

architecture myAdder of adder is
  signal sum :STD_LOGIC_VECTOR(32 downto 0);
  signal tb :STD_LOGIC_VECTOR(31 downto 0);
begin

    tb <= ((cin and (not B))+((not cin)and B)+ ((not cin)+1)) ;
    sum <= (('0'&A)+ tb);
    output <= sum(31 downto 0);
    cout <= sum(32);
    ov <= sum(32) xor sum(31) xor A (31) xor tB(31);
    sign <= sum(31); 


end myAdder;


