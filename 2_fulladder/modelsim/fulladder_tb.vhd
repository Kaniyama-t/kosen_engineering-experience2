

library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity fulladder_tb is  
end entity fulladder_tb;
------------------------------------------------------------
architecture SIM of fulladder_tb is
    component fulladder
    Port ( 
      A_IN	: in std_logic;
      B_IN	: in std_logic;
      C_IN	: in std_logic;
		C_OUT	: out std_logic;
		S_OUT	: out std_logic);
    end component;
      signal A_IN_SIG	: std_logic := '0';
      signal B_IN_SIG	: std_logic := '0';
      signal C_IN_SIG	: std_logic := '0';
      signal C_OUT_SIG	: std_logic;
      signal S_OUT_SIG	: std_logic;

  begin
  -- ???????
  U0: fulladder port map(A_IN => A_IN_SIG, B_IN => B_IN_SIG, C_IN => C_IN_SIG, C_OUT => C_OUT_SIG, S_OUT => S_OUT_SIG);
  A_IN_SIG <= 	'0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '0' after 40 ns, '1' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns;
  B_IN_SIG <= 	'0' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '1' after 60 ns, '1' after 70 ns, '1' after 80 ns;
  C_IN_SIG <= 	'0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '1' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns, '1' after 80 ns;

end architecture SIM;
