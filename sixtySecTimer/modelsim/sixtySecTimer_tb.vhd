library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity sixtySecTimer_tb is  
end entity sixtySecTimer_tb;
------------------------------------------------------------
architecture SIM of sixtySecTimer_tb is
    component sixtySecTimer is
        port (
        KEY : in std_logic_vector(2 downto 0);
        CLOCK_50, CLK : in std_logic;
        HEX1 : out std_logic_vector(6 downto 0);
        HEX0 : out std_logic_vector(6 downto 0));
    end component sixtySecTimer;
      signal KEY_sig	    : std_logic_vector(2 downto 0) := "000";
      signal CLOCK_50_sig	: std_logic := '0';
      signal CLK_sig	    : std_logic := '0';
      signal HEX1_sig	    : std_logic_vector(6 downto 0) := "0000000";
      signal HEX0_sig	    : std_logic_vector(6 downto 0) := "0000000";

  begin
  U0: sixtySecTimer port map(KEY=>KEY_sig, CLOCK_50=>CLOCK_50_sig, CLK=>CLK_sig, HEX1=>HEX1_sig, HEX0=>HEX0_sig);

  KEY_sig(2)   <= '1' after 0 sec,'0' after 1 sec,  '0' after 65 sec;
--  KEY_sig(1)   <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns;
--  KEY_sig(0)   <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '1' after 50 ns;
--  CLOCK_50_sig <= '0' after 0 ns, '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns;
--  CLK_sig      <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns;
end architecture SIM;