
library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity halfadder_tb is  
end entity halfadder_tb;
------------------------------------------------------------
architecture SIM of halfadder_tb is
    component halfadder     -- ??????????????
    Port ( CLK : in std_logic;
      A	: in std_logic;
      B	: in std_logic;
      S	: out std_logic;
      C	: out std_logic);
    end component;
        signal  CLK : std_logic := '0';
        signal  A_SIG : std_logic := '0';
        signal  B_SIG : std_logic := '0';
        signal  S_RST : std_logic;
        signal  C_RST : std_logic;

  begin
  -- ???????
  U0: halfadder port map(CLK => CLK, A => A_SIG, B => B_SIG, S => S_RST, C => C_RST);
  -- CLK <= not CLK after 10 ns;
  A_SIG <= 	'0' after 10 ns, '1' after 20 ns, '1' after 30 ns;
  B_SIG <= 	'1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
end architecture SIM;
