library IEEE;
use IEEE.std_logic_1164.all;

entity counter_8 is
port(CLK, RST : in bit;
OUTPUT : out natural range 0 to 9);
end entity counter_8;
-----------------------------------
architecture fsm of counter_8 is
type State is (ZERO, ONE, TWO, THREE,
FOUR, FIVE, SIX, SEVEN);
signal PR_STATE, NX_STATE : State;
attribute enum_encoding : string;
attribute enum_encoding of State : type is
"sequential";
begin
-------------
seq: process(RST, CLK)
begin
if (RST = '0') then
PR_STATE <= ZERO;
elsif (rising_edge(CLK)) then
PR_STATE <= NX_STATE;
end if;
end process;
---------------
com: process(PR_STATE)
begin
case PR_STATE is
when ZERO =>
OUTPUT <= 0;
NX_STATE <= ONE;
when ONE =>
OUTPUT <= 1;
NX_STATE <= TWO;
when TWO =>
OUTPUT <= 2;
NX_STATE <= THREE;
when THREE =>
OUTPUT <= 3;
NX_STATE <= FOUR;
when FOUR =>
OUTPUT <= 4;
NX_STATE <= FIVE;
when FIVE =>
OUTPUT <= 5;
NX_STATE <= SIX;
when SIX =>
OUTPUT <= 6;
NX_STATE <= SEVEN;
when SEVEN =>
OUTPUT <= 7;
NX_STATE <= ZERO;
end case;
end process;
end architecture fsm;
