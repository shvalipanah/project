--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:04:03 12/15/2016
-- Design Name:   
-- Module Name:   A:/ise/adder4_ripple/adder4_test.vhd
-- Project Name:  adder4_ripple
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripple_adder4
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
 
    COMPONENT ripple_adder4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_adder4 PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S,
          cout => cout
        );

  -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      A<= "0001",
	"1010" after 100 ns,
	"1101" after 200 ns;
	
	B<="0000",
	"0011" after 100 ns,
	"1010" after 200 ns;

	C<='0',
	'0' after 100 ns,
	'1' after 200 ns;

      wait;
   end process;

END;
