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
 port (A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        cin : IN STD_LOGIC;
        output :OUT STD_LOGIC;
        cout : OUT STD_LOGIC
        
        );
end adder;

architecture myAdder of adder is
  signal sum :STD_LOGIC_VECTOR(1 downto 0);
begin

    sum <= (('0'&A)+ B + cin);
    output <= sum(0);
    cout <= sum(1);


end myAdder;




