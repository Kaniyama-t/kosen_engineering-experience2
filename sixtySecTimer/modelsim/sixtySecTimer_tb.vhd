library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity sixtySecTimer_tb is  
end entity sixtySecTimer_tb;
------------------------------------------------------------
architecture SIM of sixtySecTimer_tb is
    component sixtySecTimer is
        port (
          KEY     : in std_logic_vector(2 downto 0); -- ボタン(入力デバイス)
          -- KEY(2) : カウントダウン開始
          -- KEY(1) : カウントダウン停止
          -- KEY(0) : カウントダウンリセット
          CLK     : in std_logic; -- 50kHz発振器からの信号
          HEX1    : out std_logic_vector(6 downto 0);  -- 10の位桁のディスプレイデバイス(7セグメントデコーダ)
          HEX0    : out std_logic_vector(6 downto 0)); -- 1の位桁のディスプレイデバイス(7セグメントデコーダ)
    end component sixtySecTimer;
      signal KEY_sig	    : std_logic_vector(2 downto 0) := "100";
      signal CLOCK_50_sig	: std_logic := '0';
      signal HEX1_sig	    : std_logic_vector(6 downto 0);
      signal HEX0_sig	    : std_logic_vector(6 downto 0);

  begin
  U0: sixtySecTimer port map(KEY=>KEY_sig, CLK=>CLOCK_50_sig, HEX1=>HEX1_sig, HEX0=>HEX0_sig);

  KEY_sig(2)   <= '0' after 1 sec;
--  KEY_sig(1)   <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns;
--  KEY_sig(0)   <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '1' after 50 ns;
  CLOCK_50_sig <= not CLOCK_50_sig after 10 ps;
--  CLK_sig      <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns;
end architecture SIM;