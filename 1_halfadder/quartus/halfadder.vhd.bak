library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
--------------------------------------
entity bincounter is
    Port ( CLK : in std_logic;
             PB  : in std_logic;
	   LED : out std_logic_vector(9 downto 0));
end entity bincounter;

architecture RTL of bincounter is
        signal DD : std_logic_vector (31 downto 0);
  begin
  process (CLK, PB)
    begin
    if(PB='0') then DD <= X"00000000";
    elsif (rising_edge(CLK)) then
           if(DD < X"FFFFFFFF") then 
 DD <= DD + 1;
           else         DD <= X"00000000";
           end if;
    end if;
  end process;
    LED <= DD(31 downto 22 );
end architecture RTL;
-------------------------------------
