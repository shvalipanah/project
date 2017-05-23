----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:01 12/12/2016 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;


entity full_adder is
 port (A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        cin : IN STD_LOGIC;
        output :OUT STD_LOGIC;
        cout : OUT STD_LOGIC
        
        );
end full_adder;

architecture Behavioral of full_adder is
  signal sum :STD_LOGIC_VECTOR(1 downto 0);
begin

    sum <= (('0'&A)+ B + cin);
    output <= sum(0);
    cout <= sum(1);


end Behavioral;







