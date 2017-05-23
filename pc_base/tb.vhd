
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;
use ieee.std_logic_signed.all;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE tb OF testbench IS 

          COMPONENT main
          port( clk, reset: in std_logic;
r_en, cpu_en: in std_logic;
r_addr: in std_logic_vector (7 downto 0);
r_data: in std_logic_vector (15 downto 0);
INPUT: in std_logic_vector (15 downto 0);

OUTPUT: out std_logic_vector (15 downto 0);
AC_OUT: out std_logic_vector (15 downto 0);
SEG_OUT: out std_logic_vector (7 downto 0);
ADDRESS_OUT: out std_logic_vector (7 downto 0);
OPCode_OUT: out std_logic_vector (7 downto 0);
PC_OUT: out unsigned (7 downto 0);--std_logic_vector
Memory_Data_OUT : out std_logic_vector (15 downto 0));
END component;
 
 signal clk: std_logic := '0';
 signal reset: std_logic;
signal r_en:  std_logic;
signal cpu_en: std_logic;
signal r_addr:  std_logic_vector (7 downto 0);
signal r_data:  std_logic_vector (15 downto 0);
signal INPUT:  std_logic_vector (15 downto 0);

signal OUTPUT:  std_logic_vector (15 downto 0);
signal AC_OUT:  std_logic_vector (15 downto 0);
signal SEG_OUT:  std_logic_vector (7 downto 0);
signal ADDRESS_OUT:  std_logic_vector (7 downto 0);
signal OPCode_OUT:  std_logic_vector (7 downto 0);
signal PC_OUT:  unsigned (7 downto 0);--std_logic_vector
signal Memory_Data_OUT :  std_logic_vector (15 downto 0);
 CONSTANT period : TIME := 50 ns;
 
   BEGIN

    run : main port map (clk, reset,r_en, cpu_en,r_addr,r_data,INPUT,OUTPUT,AC_OUT,SEG_OUT,ADDRESS_OUT,OPCode_OUT,PC_OUT,Memory_Data_OUT);


    CLK <= NOT clk AFTER period/2;
    reset <= '1',
    '0' after 40 ns;
    r_en <= '1',
    '0' after 400 ns;
    cpu_en <= '0',
    '1' after 400 ns;
    r_addr <= X"09",
    X"00" after 95 ns,
    X"01" after 145 ns,
    X"02" after 195 ns,
    X"03" after 245 ns,
    X"04" after 295 ns,
    X"05" after 345 ns;
    r_data <= X"0003",
    X"0d04" after 95 ns,
    X"020a" after 145 ns,
    X"0309" after 195 ns,
    X"0502" after 245 ns,
    X"020b" after 295 ns,
    X"0b03" after 345 ns;
    
     END;
 