library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
--------------------------------------
entity fourbitadder is
    Port (
      A	: in std_logic_vector(3 downto 0);
      B	: in std_logic_vector(3 downto 0);
      C	: out std_logic;
      S	: out std_logic_vector(3 downto 0));
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
   U0: halfadder port map(A => A(0), B => B(0), S =>S0_SIG , C => C0i_SIG);
   U1: fulladder port map(X_IN => A(1), Y_IN => B(1), C_IN => C0i_SIG, C_OUT => C1i_SIG, S_OUT => S1_SIG);
   U2: fulladder port map(X_IN => A(2), Y_IN => B(2), C_IN => C1i_SIG, C_OUT => C2i_SIG, S_OUT => S2_SIG);
   U3: fulladder port map(X_IN => A(3), Y_IN => B(3), C_IN => C2i_SIG, C_OUT => C3_SIG, S_OUT => S3_SIG);

	S(3) <= S3_SIG;
	S(2) <= S2_SIG;
	S(1) <= S1_SIG;
	S(0) <= S0_SIG;
	C <= C3_SIG;

end architecture RTL;
-------------------------------------
