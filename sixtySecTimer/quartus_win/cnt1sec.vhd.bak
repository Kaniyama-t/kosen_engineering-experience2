library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
entity cnt1sec is
 port ( CLK : in std_logic;
 RST : in std_logic;
 EN1Hz : out std_logic);
end entity cnt1sec;
------------------------------------------------------------
architecture RTL of cnt1sec is
 signal CNT : std_logic_vector (25 downto 0);
 begin
 process (CLK, RST)
 begin
 if ( RST='0') then CNT <= (others=>'0');
 elsif (rising_edge(CLK)) then
 if (CNT=49999998) then CNT <= (others=>'0');
 else CNT <= CNT +1;
 end if;
 end if;
 end process;
 EN1Hz <= '1' when CNT=49999998 else '0';
end architecture RTL;