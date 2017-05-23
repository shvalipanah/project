--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:18:17 12/15/2016
-- Design Name:   
-- Module Name:   A:/ise/carryLookEhead/adder4_test.vhd
-- Project Name:  carryLookEhead
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_lookahead_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder4_test IS
END adder4_test;
 
ARCHITECTURE behavior OF adder4_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_lookahead_adder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         sum : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_lookahead_adder PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );

   -- Clock process definitions
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


        a<= "0001",
	"1010" after 100 ns,
	"1101" after 200 ns;
	
	b<="0000",
	"0011" after 100 ns,
	"1010" after 200 ns;

	cin<='0',
	'0' after 100 ns,
	'1' after 200 ns;
 

      wait;
   end process;

END;
