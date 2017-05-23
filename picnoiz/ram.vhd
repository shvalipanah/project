LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;
use IEEE.numeric_std.all;

ENTITY ram IS
PORT ( In_Address: IN std_logic_vector(7 DOWNTO 0);
       IN_Out_Data: IN std_logic_vector(7 DOWNTO 0);--out
       ou:OUT std_logic_vector(7 DOWNTO 0);
       EN,RW: IN std_logic;
       clk,rst : IN std_logic);
END ram;

architecture myRam of ram is
  type RAMTYPE is array (0 to 255) of std_logic_vector(7 downto 0);
  signal RAM : RAMTYPE:= (others => X"00");
begin
   
  process(clk,EN,rst)
    begin
      if(rst = '1')then
     RAM(0) <=X"ff";
    RAM(1) <=X"ff";
    RAM(4) <=X"01";
    RAM(30)<=X"50";
   RAM(199)<=X"60";
    RAM(100)<=X"01";
     for i in 5 to 99 loop  --20*10 pi
         RAM(i) <= X"91";
         RAM(i*2) <= X"32";
       end loop ;
end if;
    if(clk'event and clk='0' and EN='1')then
      if(RW = '1')then
        ou<=RAM(to_integer(unsigned(In_Address)));--IN_Out_Data
      elsif(RW = '0')then
        RAM(to_integer(signed(In_Address)))<=IN_Out_Data;
      end if;
    end if;
  end process;
end myRam;
