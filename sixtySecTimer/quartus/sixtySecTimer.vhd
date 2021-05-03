library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
entity sixtySecTimer is
 port (
 KEY : in std_logic_vector(2 downto 0);
 CLOCK_50, CLK : in std_logic;
 HEX1 : out std_logic_vector(6 downto 0);
 HEX0 : out std_logic_vector(6 downto 0));
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
 
 signal CLK_sig : std_logic;
 signal RST_sig : std_logic;
 signal Btn : std_logic_vector (1 downto 0);
 signal CNT : std_logic_vector (25 downto 0);

 signal oneSecSignal : std_logic;

 signal currentTimeValueH : std_logic_vector(2 downto 0);
 signal currentTimeValueL : std_logic_vector(3 downto 0);
 begin
    CLK_sig <= CLK;
    RST_sig <= KEY(0);
    ChatteringA: chattering2 port map(SW=>KEY(1),CLK=>CLK_sig,SOUT=>Btn(0));
    ChatteringB: chattering2 port map(SW=>KEY(2),CLK=>CLK_sig,SOUT=>Btn(1));

    measure1sec: cnt1sec port map(CLK=>CLK_sig,RST=>RST_sig,EN1Hz=>oneSecSignal);

    Counter : cnt60 port map(CLK=>CLK_sig,RST=>RST_sig,CLR=>Btn(1),CEN=>oneSecSignal,INC=>Btn(0),QH=>currentTimeValueH,QL=>currentTimeValueL);
    DecoderA : sec7dec port map(DIN=>('0' & currentTimeValueH),HEX=>HEX1);
    DecoderB : sec7dec port map(DIN=>currentTimeValueL,HEX=>HEX0);

end architecture RTL;