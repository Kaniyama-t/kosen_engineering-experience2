library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
--------------------------------------
entity fulladder is
    Port (
      A	: in std_logic;
      B	: in std_logic;
      C	: in std_logic;
	  	Co	: out std_logic;
		  S	: out std_logic);
end entity fulladder;

architecture RTL of fulladder is
  component halfadder
    Port (
      A	: in std_logic;
      B	: in std_logic;
      S	: out std_logic;
      C	: out std_logic);
  end component;
  signal W0, W1, W2, W3, W4 : std_logic;
  begin
   U0: halfadder port map(A => A, B => B, S => W0, C => W1);
   U1: halfadder port map(A => W0, B => C_IN, S => W3, C => W2);
	W4 <= W1 or W2;
	S <= W3;
	Co <= W4;
end architecture RTL;
-------------------------------------
