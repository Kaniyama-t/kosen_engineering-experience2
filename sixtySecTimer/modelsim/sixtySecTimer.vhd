library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
------------------------------------------------------------
entity sixtySecTimer is
 port (
 KEY     : in std_logic_vector(2 downto 0); -- ボタン(入力デバイス)
 -- KEY(2) : カウントダウン開始
 -- KEY(1) : カウントダウン停止
 -- KEY(0) : カウントダウンリセット
 CLK     : in std_logic; -- 50kHz発振器からの信号
 HEX1    : out std_logic_vector(6 downto 0);  -- 10の位桁のディスプレイデバイス(7セグメントデコーダ)
 HEX0    : out std_logic_vector(6 downto 0)); -- 1の位桁のディスプレイデバイス(7セグメントデコーダ)
end entity sixtySecTimer;
------------------------------------------------------------
architecture RTL of sixtySecTimer is
 component chattering2 is
        Port ( CLK : in std_logic;
        SW : in std_logic;
        SOUT : out std_logic);
 end component chattering2;

 component cnt60 is
    port ( CLK, RST : in std_logic;
    CLR, CEN, INC : in std_logic;
    QH : out std_logic_vector(2 downto 0);
    QL : out std_logic_vector(3 downto 0);
    CA : out std_logic);
 end component cnt60;

 component cnt1sec is
    port ( CLK : in std_logic;
    RST : in std_logic;
    EN1Hz : out std_logic);
 end component cnt1sec;

 component sec7dec is
    port ( DIN : in std_logic_vector(3 downto 0);
    HEX : out std_logic_vector(6 downto 0));
 end component sec7dec;
 
 signal CLOCK_50 : std_logic;
 signal StartBtn_sig : std_logic;
 signal PauseBtn_sig : std_logic;
 signal ResetBtn_sig : std_logic;
 signal CNT : std_logic_vector (25 downto 0);

 signal oneSecSignal : std_logic;

 signal currentTimeValueH : std_logic_vector(2 downto 0);
 signal currentTimeValueHIN : std_logic_vector(3 downto 0);
 signal currentTimeValueL : std_logic_vector(3 downto 0);
 begin
    CLOCK_50 <= CLK;
    ResetBtn_sig <= KEY(0);
    currentTimeValueHIN <= '0' & currentTimeValueH;

    ChatteringA: chattering2 port map(SW=>KEY(2),CLK=>CLOCK_50,SOUT=>StartBtn_sig);
    ChatteringB: chattering2 port map(SW=>KEY(1),CLK=>CLOCK_50,SOUT=>PauseBtn_sig);

    measure1sec: cnt1sec port map(CLK=>CLOCK_50,RST=>ResetBtn_sig,EN1Hz=>oneSecSignal);

    Counter : cnt60 port map(CLK=>CLOCK_50,RST=>ResetBtn_sig,CLR=>PauseBtn_sig,CEN=>oneSecSignal,INC=>StartBtn_sig,QH=>currentTimeValueH,QL=>currentTimeValueL);
    DecoderA : sec7dec port map(DIN=>currentTimeValueHIN,HEX=>HEX1);
    DecoderB : sec7dec port map(DIN=>currentTimeValueL,HEX=>HEX0);

end architecture RTL;