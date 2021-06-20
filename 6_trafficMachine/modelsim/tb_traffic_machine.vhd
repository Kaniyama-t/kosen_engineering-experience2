library IEEE;
use IEEE.std_logic_1164.all;
entity tb_traffic_machine is
end entity tb_traffic_machine; 

architecture SIM of tb_traffic_machine is
    component traffic_machine is
	port (CLK, STBY, Test : in std_logic;
	      R1, R2, Y1, Y2, G1, G2 : out std_logic);
    end component;

	signal CLK : std_logic := '0';
	signal STBY : std_logic := '1';
	signal Test : std_logic := '1';
	signal R1, R2, Y1, Y2, G1, G2 : std_logic;
		
    begin
	U0 : traffic_machine port map(CLK => CLK, STBY => STBY, Test => Test,
				      R1 => R1, R2 => R2, Y1 => Y1, Y2 => Y2, G1 => G1, G2 => G2);
	CLK <= not CLK after 1 ns;
	STBY <= '1' after 10 ns, '0' after 20 ns;
	Test <= '1';
end architecture SIM;
