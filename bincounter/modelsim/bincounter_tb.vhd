library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity bincounter_tb is  
end entity bincounter_tb;
------------------------------------------------------------
architecture SIM of bincounter_tb is
    component bincounter     -- ??????????????
    Port ( CLK : in std_logic;
           PB  : in std_logic;
	   LED : out std_logic_vector(9 downto 0));
    end component;
  -- ??????????????
        signal  CLK : std_logic := '0';
        signal  RST : std_logic := '1';
        signal  LED : std_logic_vector(9 downto 0);

  begin
  -- ???????
	U0: bincounter port map(CLK => CLK, PB => RST, LED => LED);
	CLK <= not CLK after 10 ns;
         RST <= 	'1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
end architecture SIM;

