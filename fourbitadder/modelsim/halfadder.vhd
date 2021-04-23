library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
--------------------------------------
entity halfadder is
    Port (
      A	: in std_logic;
      B	: in std_logic;
		S	: out std_logic;
		C	: out std_logic);
end entity halfadder;

architecture RTL of halfadder is
  signal W0, W1 : std_logic;
  begin
	W0 <= A xor B;
	W1 <= A and B;
	S <= W0;
	C <= W1;
end architecture RTL;
-------------------------------------
