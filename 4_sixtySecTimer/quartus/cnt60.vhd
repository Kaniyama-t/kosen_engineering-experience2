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
    process (CLK, RST)
    begin
		if (RST='0') then -- if pause or stop button is pushed, 
			-- value will reset.
			QLsig <= (others=>'0');
			QHsig <= (others=>'0');
		elsif (CLR='1') then
			counting <= '0';
		elsif (INC='1') then
			counting <= '1';
		elsif (rising_edge(CLK)) then -- if received clock(50MHz)
			if (CEN='1' and counting='1') then -- if received clock(1Hz) or signal of Start button.
				if (QLsig="1001") then -- if overflow QL value
					QLsig <= "0000"; -- reset value
					QHsig <= QHsig +1; -- raising QH value
				else -- if NOT overflow QL value,
					QLsig <= QLsig +1; -- Only raise QL value
				end if;
				
				if (QHsig="110") then QHsig <= "000"; -- if overflow QH, reset QH value.
--				else QHsig <= QHsig +1;
				end if;
			end if;
		end if;
    end process;
	 CA <= '1' when (QHsig="101" and QLsig="1001" and CEN='1') else '0';
    QL <= QLsig;
    QH <= QHsig;
end architecture RTL;