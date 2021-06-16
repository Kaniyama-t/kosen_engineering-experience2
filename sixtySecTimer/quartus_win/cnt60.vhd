library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
entity cnt60 is
    port (
	 -------------------------------------
	 -- (IN) port description
	 CLK, RST : in std_logic;
	 -- - CLK ... Accept Clock Pulse(50MHz)
	 -- - RST ... Signal of Reset Button
    CLR, CEN, INC : in std_logic;
	 -- - CLR ... Signal of Pause Button
	 -- - CEN ... Accept Clock Pulse(1Hz)
	 -- - INC ... Signal of Start Button
	 -------------------------------------
	 -- (OUT) port description
    QH : out std_logic_vector(2 downto 0);
	 -- - QH  ... Binary Value of counting 60 sec.
    QL : out std_logic_vector(3 downto 0);
	 -- - QL  ... Binary Value of counting 60 sec.
    CA : out std_logic
	 -- - CA  ... Signal of finishing count 60 sec.
	 );
   end entity cnt60;
   ------------------------------------------------------------
   architecture RTL of cnt60 is
    signal QLsig: std_logic_vector(3 downto 0);
    signal QHsig: std_logic_vector(2 downto 0);
	 signal counting: std_logic;
    begin
    process (CLK, RST, CEN, CLR, INC)
    begin
		if (RST='1') then -- if pause or stop button is pushed, 
			-- value will reset.
			QLsig <= (others=>'0');
			QHsig <= (others=>'0');
		elsif (CLR='1' or INC='0') then
			--nothing-to-do
		elsif (rising_edge(CEN)) then -- if received clock(50MHz)
				if (QLsig="1001") then -- if overflow QL value
					QLsig <= "0000"; -- reset value
					QHsig <= QHsig +1; -- raising QH value
					if (QHsig="101") then 
						QHsig <= "000"; -- if overflow QH, reset QH value.
						QLsig <= "0000";
					end if;
				else -- if NOT overflow QL value,
					QLsig <= QLsig +1; -- Only raise QL value
				end if;
				

		end if;
    end process;
	 CA <= '1' when (QHsig="101" and QLsig="1001" and CEN='1') else '0';
    QL <= QLsig;
    QH <= QHsig;
end architecture RTL;