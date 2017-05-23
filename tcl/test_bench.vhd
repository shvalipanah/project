
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:38:58 12/16/2016
-- Design Name:   
-- Module Name:   A:/ise/TCL/test_bench.vhd
-- Project Name:  TCL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tcl
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
 
ENTITY test_bench IS
END test_bench;
 
ARCHITECTURE behavior OF test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tcl
    PORT(
         clk : IN  std_logic;
         stby : IN  std_logic;
         test : IN  std_logic;
         r1 : OUT  std_logic;
         r2 : OUT  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic;
         g1 : OUT  std_logic;
         g2 : OUT  std_logic;
         yeltime : IN  std_logic_vector(7 downto 0);
         greentime : IN  std_logic_vector(7 downto 0);
         redtime : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal stby : std_logic ;
   signal test : std_logic ;
   signal yeltime : std_logic_vector(7 downto 0) ;
   signal greentime : std_logic_vector(7 downto 0) ;
   signal redtime : std_logic_vector(7 downto 0) ;

 	--Outputs
   signal r1 : std_logic;
   signal r2 : std_logic;
   signal y1 : std_logic;
   signal y2 : std_logic;
   signal g1 : std_logic;
   signal g2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 0.02 sec;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tcl PORT MAP (
          clk => clk,
          stby => stby,
          test => test,
          r1 => r1,
          r2 => r2,
          y1 => y1,
          y2 => y2,
          g1 => g1,
          g2 => g2,
          yeltime => yeltime,
          greentime => greentime,
          redtime => redtime
        );
  clk <= not clk after clk_period/2;
		
		test <='1',
		'0' after 3 sec,
		'1' after 103 sec,
		'0' after 105 sec;
		
		stby <='0',
		'1' after 3 sec,
		'0' after 5 sec,
		'1' after 100 sec,
		'0' after 103 sec;
		
		
		yeltime <= X"05",
		X"0A" after 101 sec;
		greentime <= X"2D";
		redtime <= X"2D";

END;
