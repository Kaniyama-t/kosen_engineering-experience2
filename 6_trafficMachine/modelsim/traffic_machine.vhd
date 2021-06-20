library IEEE;
use IEEE.std_logic_1164.all;
entity Traffic_machine is
  generic( TimeRG : positive  :=  300;
           TimeRY : positive  :=  300;
           TimeGR : positive  :=  300;
           TimeYR : positive  :=  300;
	   TimeTest: positive  := 5;
	   TimeMax : positive  := 1000);
  port (CLK, STBY, Test  : in std_logic;
	R1, R2, Y1, Y2, G1, G2 :out std_logic);
end entity Traffic_machine;
------------------------------------------------------------
architecture FSM of Traffic_machine is
    type State is (RG, RY, GR, YR, YY);
    signal Pr_state, Nx_state : State;
signal Timer : integer range 0 to TimeMax;
begin
----- Sequential logic of FSM ---------------------
seq: process (CLK, STBY) 
    variable Count : integer range 0 to TimeMax;
    begin
      if (STBY = '1') then Pr_state<= YY;
	     Count := 0;
      elsif (rising_edge(CLK)) then 
             Count := Count + 1;
     	 if (Count>= Timer) then Pr_state<= Nx_state;
	     Count := 0;
     	 end if;
      end if;
 end process;
-----Combinational logic of FSM ---------------------
com: process (Pr_state, Test) 
    begin
        case Pr_state is
          when RG =>
               R1 <= '1'; Y1 <= '0'; G1 <= '0';
               R2 <= '0'; Y2 <= '0'; G2 <= '1';
	       Nx_state<= RY;
               if (Test='0') then Timer <= TimeRG;
               else               Timer <= TimeTest;
             end if;
          when RY =>
               R1 <= '1'; Y1 <= '0'; G1 <= '0';
               R2 <= '0'; Y2 <= '1'; G2 <= '0';
	       Nx_state<= GR;
               if (Test='0') then Timer <= TimeRY;
               else               Timer <= TimeTest;
             end if;
          when GR =>
               R1 <= '0'; Y1 <= '0'; G1 <= '1';
               R2 <= '1'; Y2 <= '0'; G2 <= '0';
	       Nx_state<= YR;
               if (Test='0') then Timer <= TimeGR;
               else               Timer <= TimeTest;
             end if;
          when YR =>
               R1 <= '0'; Y1 <= '1'; G1 <= '0';
               R2 <= '1'; Y2 <= '0'; G2 <= '0';
	       Nx_state<= RG;
               if (Test='0') then Timer <= TimeYR;
               else               Timer <= TimeTest;
             end if;
          when YY =>
               R1 <= '0'; Y1 <= '1'; G1 <= '0';
               R2 <= '0'; Y2 <= '1'; G2 <= '0';
	       Nx_state<= RY;
               Timer <= TimeTest;
        end case;
   end process;
end architecture FSM;
