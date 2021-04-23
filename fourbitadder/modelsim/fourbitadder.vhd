library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
--------------------------------------
entity fourbitadder is
    Port (
      A3	: in std_logic;
      A2	: in std_logic;
      A1	: in std_logic;
      A0	: in std_logic;
      B3	: in std_logic;
      B2	: in std_logic;
      B1	: in std_logic;
      B0	: in std_logic;
      C3	: out std_logic;
      S3	: out std_logic;
      S2	: out std_logic;
      S1	: out std_logic;
      S0	: out std_logic);
end entity fourbitadder;

architecture RTL of fourbitadder is
  component halfadder
    Port (
      A	: in std_logic;
      B	: in std_logic;
      S	: out std_logic;
      C	: out std_logic);
  end component;
  component fulladder
    Port (
      X_IN	: in std_logic;
      Y_IN	: in std_logic;
      C_IN	: in std_logic;
		C_OUT	: out std_logic;
		S_OUT	: out std_logic);
  end component;
  signal S0_SIG, S1_SIG, S2_SIG, S3_SIG, C3_SIG : std_logic;
  signal C0i_SIG, C1i_SIG, C2i_SIG : std_logic;
  begin
   U0: halfadder port map(A => A0, B => B0, S =>S0_SIG , C => C0i_SIG);
   U1: fulladder port map(X_IN => A1, Y_IN => B1, C_IN => C0i_SIG, C_OUT => C1i_SIG, S_OUT => S1_SIG);
   U2: fulladder port map(X_IN => A2, Y_IN => B2, C_IN => C1i_SIG, C_OUT => C2i_SIG, S_OUT => S2_SIG);
   U3: fulladder port map(X_IN => A3, Y_IN => B3, C_IN => C2i_SIG, C_OUT => C3_SIG, S_OUT => S3_SIG);

	S3 <= S3_SIG;
	S2 <= S2_SIG;
	S1 <= S1_SIG;
	S0 <= S0_SIG;
	C3 <= C3_SIG;

end architecture RTL;
-------------------------------------
