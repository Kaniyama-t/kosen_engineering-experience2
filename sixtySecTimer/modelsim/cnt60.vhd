library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
entity cnt60 is
    port ( CLK, RST : in std_logic;
    CLR, CEN, INC : in std_logic;
    QH : out std_logic_vector(2 downto 0);
    QL : out std_logic_vector(3 downto 0);
    CA : out std_logic);
   end entity cnt60;
   ------------------------------------------------------------
   architecture RTL of cnt60 is
    signal QLsig: std_logic_vector(3 downto 0);
    signal QHsig: std_logic_vector(2 downto 0);
    begin
    process (CLK, RST)
    begin
    if ( RST='0' or CLR='0') then
    QLsig <= (others=>'0');
    QHsig <= (others=>'0');
    elsif (rising_edge(CLK)) then
    if (CEN='0' or INC='0') then
    if (QLsig="1001") then QLsig <= "0000";
    else QLsig <= QLsig +1;
    end if;
    if (QHsig="101") then QHsig <= "000";
    else QHsig <= QHsig +1;
    end if;
    end if;
    end if;
    end process;
	 CA <= '1' when (QHsig="101" and QLsig="1001" and CEN='1') else '0';
    QL <= QLsig;
    QH <= QHsig;
end architecture RTL;