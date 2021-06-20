library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
entity chattering2 is
    Port ( CLK : in std_logic;
    SW : in std_logic;
    SOUT : out std_logic);
   end entity chattering2;
   ------------------------------------------------------------
   architecture RTL of chattering2 is
   signal FF1 : std_logic := '0';
   signal FF2 : std_logic := '0';
   signal TEMP : std_logic := '1';
   begin
    process(CLK)
    begin
    if (rising_edge(CLK)) then FF2 <= FF1;
    FF1 <= SW;
    end if;
    end process;
    temp <= FF1 or not(FF2);
    process(CLK)
    begin
    if (falling_edge(CLK)) then SOUT <= temp;
    end if;
  end process;
end architecture RTL;