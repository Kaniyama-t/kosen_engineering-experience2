library IEEE;
use IEEE.std_logic_1164.all;

entity tb_counter_8 is
end entity tb_counter_8;
------------------------------------------------------------
architecture SIM of tb_counter_8 is
component counter_8 is
port(CLK, RST : in bit;
OUTPUT : out natural range 0 to 9);
end component;

signal CLK: bit := '0';
signal RST: bit := '1';
signal OUTPUT : natural :=0;

begin
U0: counter_8 port map(CLK=>CLK, RST=>RST, OUTPUT=>OUTPUT);
CLK <= not CLK after 10 ns;
RST <= not RST after 180 ns;
end architecture SIM;
