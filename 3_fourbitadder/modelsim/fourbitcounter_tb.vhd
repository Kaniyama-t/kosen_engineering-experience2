library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity fourbitadder_tb is  
end entity fourbitadder_tb;
------------------------------------------------------------
architecture SIM of fourbitadder_tb is
    component fourbitadder
    Port (
      A	: in std_logic_vector(3 downto 0);
      B	: in std_logic_vector(3 downto 0);
      C	: out std_logic;
      S	: out std_logic_vector(3 downto 0));
    end component;
      signal A_SIG	: std_logic_vector(3 downto 0) := "0000";
      signal B_SIG	: std_logic_vector(3 downto 0) := "0000";
      
      signal C3_SIG	: std_logic;
      signal S_SIG  : std_logic_vector(3 downto 0) := "0000";

  begin
    
  U0: fourbitadder port map(A => A_SIG, B => B_SIG, C => C3_SIG , S => S_SIG );

  A_SIG(3) <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '0' after 70 ns, '0' after 80 ns, '0' after 90 ns, '0' after 100 ns, '0' after 110 ns, '0' after 120 ns, '0' after 130 ns, '0' after 140 ns, '0' after 150 ns, '0' after 160 ns, '0' after 170 ns, '0' after 180 ns, '0' after 190 ns, '0' after 200 ns, '0' after 210 ns, '0' after 220 ns, '0' after 230 ns, '0' after 240 ns, '0' after 250 ns, '0' after 260 ns, '0' after 270 ns, '0' after 280 ns, '0' after 290 ns, '0' after 300 ns, '0' after 310 ns, '0' after 320 ns, '0' after 330 ns, '0' after 340 ns, '0' after 350 ns, '0' after 360 ns, '0' after 370 ns, '0' after 380 ns, '0' after 390 ns, '0' after 400 ns, '0' after 410 ns, '0' after 420 ns, '0' after 430 ns, '1' after 440 ns, '0' after 450 ns, '0' after 460 ns, '0' after 470 ns, '0' after 480 ns, '0' after 490 ns, '0' after 500 ns, '0' after 510 ns, '0' after 520 ns, '1' after 530 ns, '1' after 540 ns, '0' after 550 ns, '0' after 560 ns, '0' after 570 ns, '0' after 580 ns, '0' after 590 ns, '0' after 600 ns, '0' after 610 ns, '0' after 620 ns, '1' after 630 ns, '1' after 640 ns, '1' after 650 ns, '0' after 660 ns, '0' after 670 ns, '0' after 680 ns, '0' after 690 ns, '0' after 700 ns, '0' after 710 ns, '0' after 720 ns, '0' after 730 ns, '1' after 740 ns, '1' after 750 ns, '1' after 760 ns, '1' after 770 ns, '0' after 780 ns, '0' after 790 ns, '0' after 800 ns, '0' after 810 ns, '0' after 820 ns, '0' after 830 ns, '0' after 840 ns, '0' after 850 ns, '1' after 860 ns, '1' after 870 ns, '1' after 880 ns, '1' after 890 ns, '1' after 900 ns, '0' after 910 ns, '0' after 920 ns, '0' after 930 ns, '0' after 940 ns, '0' after 950 ns, '0' after 960 ns, '0' after 970 ns, '0' after 980 ns, '1' after 990 ns, '1' after 1000 ns, '1' after 1010 ns, '1' after 1020 ns, '1' after 1030 ns, '1' after 1040 ns, '0' after 1050 ns, '0' after 1060 ns, '0' after 1070 ns, '0' after 1080 ns, '0' after 1090 ns, '0' after 1100 ns, '0' after 1110 ns, '0' after 1120 ns, '1' after 1130 ns, '1' after 1140 ns, '1' after 1150 ns, '1' after 1160 ns, '1' after 1170 ns, '1' after 1180 ns, '1' after 1190 ns, '0' after 1200 ns, '0' after 1210 ns, '0' after 1220 ns, '0' after 1230 ns, '0' after 1240 ns, '0' after 1250 ns, '0' after 1260 ns, '0' after 1270 ns, '1' after 1280 ns, '1' after 1290 ns, '1' after 1300 ns, '1' after 1310 ns, '1' after 1320 ns, '1' after 1330 ns, '1' after 1340 ns, '1' after 1350 ns, '0' after 1360 ns, '0' after 1370 ns, '0' after 1380 ns, '0' after 1390 ns, '0' after 1400 ns, '0' after 1410 ns, '0' after 1420 ns, '1' after 1430 ns, '1' after 1440 ns, '1' after 1450 ns, '1' after 1460 ns, '1' after 1470 ns, '1' after 1480 ns, '1' after 1490 ns, '1' after 1500 ns, '0' after 1510 ns, '0' after 1520 ns, '0' after 1530 ns, '0' after 1540 ns, '0' after 1550 ns, '0' after 1560 ns, '1' after 1570 ns, '1' after 1580 ns, '1' after 1590 ns, '1' after 1600 ns, '1' after 1610 ns, '1' after 1620 ns, '1' after 1630 ns, '1' after 1640 ns, '0' after 1650 ns, '0' after 1660 ns, '0' after 1670 ns, '0' after 1680 ns, '0' after 1690 ns, '1' after 1700 ns, '1' after 1710 ns, '1' after 1720 ns, '1' after 1730 ns, '1' after 1740 ns, '1' after 1750 ns, '1' after 1760 ns, '1' after 1770 ns, '0' after 1780 ns, '0' after 1790 ns, '0' after 1800 ns, '0' after 1810 ns, '1' after 1820 ns, '1' after 1830 ns, '1' after 1840 ns, '1' after 1850 ns, '1' after 1860 ns, '1' after 1870 ns, '1' after 1880 ns, '1' after 1890 ns, '0' after 1900 ns, '0' after 1910 ns, '0' after 1920 ns, '1' after 1930 ns, '1' after 1940 ns, '1' after 1950 ns, '1' after 1960 ns, '1' after 1970 ns, '1' after 1980 ns, '1' after 1990 ns, '1' after 2000 ns, '0' after 2010 ns, '0' after 2020 ns, '1' after 2030 ns, '1' after 2040 ns, '1' after 2050 ns, '1' after 2060 ns, '1' after 2070 ns, '1' after 2080 ns, '1' after 2090 ns, '1' after 2100 ns, '0' after 2110 ns, '1' after 2120 ns, '1' after 2130 ns, '1' after 2140 ns, '1' after 2150 ns, '1' after 2160 ns, '1' after 2170 ns, '1' after 2180 ns, '1' after 2190 ns, '1' after 2200 ns, '1' after 2210 ns, '1' after 2220 ns, '1' after 2230 ns, '1' after 2240 ns, '1' after 2250 ns, '1' after 2260 ns, '1' after 2270 ns, '1' after 2280 ns, '1' after 2290 ns, '1' after 2300 ns, '1' after 2310 ns, '1' after 2320 ns, '1' after 2330 ns, '1' after 2340 ns, '1' after 2350 ns, '1' after 2360 ns, '1' after 2370 ns, '1' after 2380 ns, '1' after 2390 ns, '1' after 2400 ns, '1' after 2410 ns, '1' after 2420 ns, '1' after 2430 ns, '1' after 2440 ns, '1' after 2450 ns, '1' after 2460 ns, '1' after 2470 ns, '1' after 2480 ns, '1' after 2490 ns, '1' after 2500 ns, '1' after 2510 ns, '1' after 2520 ns, '1' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  A_SIG(2) <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '0' after 70 ns, '0' after 80 ns, '0' after 90 ns, '0' after 100 ns, '0' after 110 ns, '0' after 120 ns, '0' after 130 ns, '1' after 140 ns, '0' after 150 ns, '0' after 160 ns, '0' after 170 ns, '0' after 180 ns, '1' after 190 ns, '1' after 200 ns, '0' after 210 ns, '0' after 220 ns, '0' after 230 ns, '0' after 240 ns, '1' after 250 ns, '1' after 260 ns, '1' after 270 ns, '0' after 280 ns, '0' after 290 ns, '0' after 300 ns, '0' after 310 ns, '1' after 320 ns, '1' after 330 ns, '1' after 340 ns, '1' after 350 ns, '0' after 360 ns, '0' after 370 ns, '0' after 380 ns, '0' after 390 ns, '1' after 400 ns, '1' after 410 ns, '1' after 420 ns, '1' after 430 ns, '0' after 440 ns, '0' after 450 ns, '0' after 460 ns, '0' after 470 ns, '0' after 480 ns, '1' after 490 ns, '1' after 500 ns, '1' after 510 ns, '1' after 520 ns, '0' after 530 ns, '0' after 540 ns, '0' after 550 ns, '0' after 560 ns, '0' after 570 ns, '0' after 580 ns, '1' after 590 ns, '1' after 600 ns, '1' after 610 ns, '1' after 620 ns, '0' after 630 ns, '0' after 640 ns, '0' after 650 ns, '0' after 660 ns, '0' after 670 ns, '0' after 680 ns, '0' after 690 ns, '1' after 700 ns, '1' after 710 ns, '1' after 720 ns, '1' after 730 ns, '0' after 740 ns, '0' after 750 ns, '0' after 760 ns, '0' after 770 ns, '0' after 780 ns, '0' after 790 ns, '0' after 800 ns, '0' after 810 ns, '1' after 820 ns, '1' after 830 ns, '1' after 840 ns, '1' after 850 ns, '0' after 860 ns, '0' after 870 ns, '0' after 880 ns, '0' after 890 ns, '1' after 900 ns, '0' after 910 ns, '0' after 920 ns, '0' after 930 ns, '0' after 940 ns, '1' after 950 ns, '1' after 960 ns, '1' after 970 ns, '1' after 980 ns, '0' after 990 ns, '0' after 1000 ns, '0' after 1010 ns, '0' after 1020 ns, '1' after 1030 ns, '1' after 1040 ns, '0' after 1050 ns, '0' after 1060 ns, '0' after 1070 ns, '0' after 1080 ns, '1' after 1090 ns, '1' after 1100 ns, '1' after 1110 ns, '1' after 1120 ns, '0' after 1130 ns, '0' after 1140 ns, '0' after 1150 ns, '0' after 1160 ns, '1' after 1170 ns, '1' after 1180 ns, '1' after 1190 ns, '0' after 1200 ns, '0' after 1210 ns, '0' after 1220 ns, '0' after 1230 ns, '1' after 1240 ns, '1' after 1250 ns, '1' after 1260 ns, '1' after 1270 ns, '0' after 1280 ns, '0' after 1290 ns, '0' after 1300 ns, '0' after 1310 ns, '1' after 1320 ns, '1' after 1330 ns, '1' after 1340 ns, '1' after 1350 ns, '0' after 1360 ns, '0' after 1370 ns, '0' after 1380 ns, '1' after 1390 ns, '1' after 1400 ns, '1' after 1410 ns, '1' after 1420 ns, '0' after 1430 ns, '0' after 1440 ns, '0' after 1450 ns, '0' after 1460 ns, '1' after 1470 ns, '1' after 1480 ns, '1' after 1490 ns, '1' after 1500 ns, '0' after 1510 ns, '0' after 1520 ns, '1' after 1530 ns, '1' after 1540 ns, '1' after 1550 ns, '1' after 1560 ns, '0' after 1570 ns, '0' after 1580 ns, '0' after 1590 ns, '0' after 1600 ns, '1' after 1610 ns, '1' after 1620 ns, '1' after 1630 ns, '1' after 1640 ns, '0' after 1650 ns, '1' after 1660 ns, '1' after 1670 ns, '1' after 1680 ns, '1' after 1690 ns, '0' after 1700 ns, '0' after 1710 ns, '0' after 1720 ns, '0' after 1730 ns, '1' after 1740 ns, '1' after 1750 ns, '1' after 1760 ns, '1' after 1770 ns, '1' after 1780 ns, '1' after 1790 ns, '1' after 1800 ns, '1' after 1810 ns, '0' after 1820 ns, '0' after 1830 ns, '0' after 1840 ns, '0' after 1850 ns, '1' after 1860 ns, '1' after 1870 ns, '1' after 1880 ns, '1' after 1890 ns, '1' after 1900 ns, '1' after 1910 ns, '1' after 1920 ns, '0' after 1930 ns, '0' after 1940 ns, '0' after 1950 ns, '0' after 1960 ns, '1' after 1970 ns, '1' after 1980 ns, '1' after 1990 ns, '1' after 2000 ns, '1' after 2010 ns, '1' after 2020 ns, '0' after 2030 ns, '0' after 2040 ns, '0' after 2050 ns, '0' after 2060 ns, '1' after 2070 ns, '1' after 2080 ns, '1' after 2090 ns, '1' after 2100 ns, '1' after 2110 ns, '0' after 2120 ns, '0' after 2130 ns, '0' after 2140 ns, '0' after 2150 ns, '1' after 2160 ns, '1' after 2170 ns, '1' after 2180 ns, '1' after 2190 ns, '0' after 2200 ns, '0' after 2210 ns, '0' after 2220 ns, '0' after 2230 ns, '1' after 2240 ns, '1' after 2250 ns, '1' after 2260 ns, '1' after 2270 ns, '0' after 2280 ns, '0' after 2290 ns, '0' after 2300 ns, '1' after 2310 ns, '1' after 2320 ns, '1' after 2330 ns, '1' after 2340 ns, '0' after 2350 ns, '0' after 2360 ns, '1' after 2370 ns, '1' after 2380 ns, '1' after 2390 ns, '1' after 2400 ns, '0' after 2410 ns, '1' after 2420 ns, '1' after 2430 ns, '1' after 2440 ns, '1' after 2450 ns, '1' after 2460 ns, '1' after 2470 ns, '1' after 2480 ns, '1' after 2490 ns, '1' after 2500 ns, '1' after 2510 ns, '1' after 2520 ns, '1' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  A_SIG(1) <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '0' after 70 ns, '1' after 80 ns, '1' after 90 ns, '0' after 100 ns, '0' after 110 ns, '1' after 120 ns, '1' after 130 ns, '0' after 140 ns, '0' after 150 ns, '0' after 160 ns, '1' after 170 ns, '1' after 180 ns, '0' after 190 ns, '0' after 200 ns, '0' after 210 ns, '0' after 220 ns, '1' after 230 ns, '1' after 240 ns, '0' after 250 ns, '0' after 260 ns, '1' after 270 ns, '0' after 280 ns, '0' after 290 ns, '1' after 300 ns, '1' after 310 ns, '0' after 320 ns, '0' after 330 ns, '1' after 340 ns, '1' after 350 ns, '0' after 360 ns, '0' after 370 ns, '1' after 380 ns, '1' after 390 ns, '0' after 400 ns, '0' after 410 ns, '1' after 420 ns, '1' after 430 ns, '0' after 440 ns, '0' after 450 ns, '0' after 460 ns, '1' after 470 ns, '1' after 480 ns, '0' after 490 ns, '0' after 500 ns, '1' after 510 ns, '1' after 520 ns, '0' after 530 ns, '0' after 540 ns, '0' after 550 ns, '0' after 560 ns, '1' after 570 ns, '1' after 580 ns, '0' after 590 ns, '0' after 600 ns, '1' after 610 ns, '1' after 620 ns, '0' after 630 ns, '0' after 640 ns, '1' after 650 ns, '0' after 660 ns, '0' after 670 ns, '1' after 680 ns, '1' after 690 ns, '0' after 700 ns, '0' after 710 ns, '1' after 720 ns, '1' after 730 ns, '0' after 740 ns, '0' after 750 ns, '1' after 760 ns, '1' after 770 ns, '0' after 780 ns, '0' after 790 ns, '1' after 800 ns, '1' after 810 ns, '0' after 820 ns, '0' after 830 ns, '1' after 840 ns, '1' after 850 ns, '0' after 860 ns, '0' after 870 ns, '1' after 880 ns, '1' after 890 ns, '0' after 900 ns, '0' after 910 ns, '0' after 920 ns, '1' after 930 ns, '1' after 940 ns, '0' after 950 ns, '0' after 960 ns, '1' after 970 ns, '1' after 980 ns, '0' after 990 ns, '0' after 1000 ns, '1' after 1010 ns, '1' after 1020 ns, '0' after 1030 ns, '0' after 1040 ns, '0' after 1050 ns, '0' after 1060 ns, '1' after 1070 ns, '1' after 1080 ns, '0' after 1090 ns, '0' after 1100 ns, '1' after 1110 ns, '1' after 1120 ns, '0' after 1130 ns, '0' after 1140 ns, '1' after 1150 ns, '1' after 1160 ns, '0' after 1170 ns, '0' after 1180 ns, '1' after 1190 ns, '0' after 1200 ns, '0' after 1210 ns, '1' after 1220 ns, '1' after 1230 ns, '0' after 1240 ns, '0' after 1250 ns, '1' after 1260 ns, '1' after 1270 ns, '0' after 1280 ns, '0' after 1290 ns, '1' after 1300 ns, '1' after 1310 ns, '0' after 1320 ns, '0' after 1330 ns, '1' after 1340 ns, '1' after 1350 ns, '0' after 1360 ns, '1' after 1370 ns, '1' after 1380 ns, '0' after 1390 ns, '0' after 1400 ns, '1' after 1410 ns, '1' after 1420 ns, '0' after 1430 ns, '0' after 1440 ns, '1' after 1450 ns, '1' after 1460 ns, '0' after 1470 ns, '0' after 1480 ns, '1' after 1490 ns, '1' after 1500 ns, '1' after 1510 ns, '1' after 1520 ns, '0' after 1530 ns, '0' after 1540 ns, '1' after 1550 ns, '1' after 1560 ns, '0' after 1570 ns, '0' after 1580 ns, '1' after 1590 ns, '1' after 1600 ns, '0' after 1610 ns, '0' after 1620 ns, '1' after 1630 ns, '1' after 1640 ns, '1' after 1650 ns, '0' after 1660 ns, '0' after 1670 ns, '1' after 1680 ns, '1' after 1690 ns, '0' after 1700 ns, '0' after 1710 ns, '1' after 1720 ns, '1' after 1730 ns, '0' after 1740 ns, '0' after 1750 ns, '1' after 1760 ns, '1' after 1770 ns, '0' after 1780 ns, '0' after 1790 ns, '1' after 1800 ns, '1' after 1810 ns, '0' after 1820 ns, '0' after 1830 ns, '1' after 1840 ns, '1' after 1850 ns, '0' after 1860 ns, '0' after 1870 ns, '1' after 1880 ns, '1' after 1890 ns, '0' after 1900 ns, '1' after 1910 ns, '1' after 1920 ns, '0' after 1930 ns, '0' after 1940 ns, '1' after 1950 ns, '1' after 1960 ns, '0' after 1970 ns, '0' after 1980 ns, '1' after 1990 ns, '1' after 2000 ns, '1' after 2010 ns, '1' after 2020 ns, '0' after 2030 ns, '0' after 2040 ns, '1' after 2050 ns, '1' after 2060 ns, '0' after 2070 ns, '0' after 2080 ns, '1' after 2090 ns, '1' after 2100 ns, '1' after 2110 ns, '0' after 2120 ns, '0' after 2130 ns, '1' after 2140 ns, '1' after 2150 ns, '0' after 2160 ns, '0' after 2170 ns, '1' after 2180 ns, '1' after 2190 ns, '0' after 2200 ns, '0' after 2210 ns, '1' after 2220 ns, '1' after 2230 ns, '0' after 2240 ns, '0' after 2250 ns, '1' after 2260 ns, '1' after 2270 ns, '0' after 2280 ns, '1' after 2290 ns, '1' after 2300 ns, '0' after 2310 ns, '0' after 2320 ns, '1' after 2330 ns, '1' after 2340 ns, '1' after 2350 ns, '1' after 2360 ns, '0' after 2370 ns, '0' after 2380 ns, '1' after 2390 ns, '1' after 2400 ns, '1' after 2410 ns, '0' after 2420 ns, '0' after 2430 ns, '1' after 2440 ns, '1' after 2450 ns, '0' after 2460 ns, '0' after 2470 ns, '1' after 2480 ns, '1' after 2490 ns, '0' after 2500 ns, '1' after 2510 ns, '1' after 2520 ns, '1' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  A_SIG(0) <= '0' after 0 ns, '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '0' after 60 ns, '1' after 70 ns, '0' after 80 ns, '1' after 90 ns, '0' after 100 ns, '1' after 110 ns, '0' after 120 ns, '1' after 130 ns, '0' after 140 ns, '0' after 150 ns, '1' after 160 ns, '0' after 170 ns, '1' after 180 ns, '0' after 190 ns, '1' after 200 ns, '0' after 210 ns, '1' after 220 ns, '0' after 230 ns, '1' after 240 ns, '0' after 250 ns, '1' after 260 ns, '0' after 270 ns, '0' after 280 ns, '1' after 290 ns, '0' after 300 ns, '1' after 310 ns, '0' after 320 ns, '1' after 330 ns, '0' after 340 ns, '1' after 350 ns, '0' after 360 ns, '1' after 370 ns, '0' after 380 ns, '1' after 390 ns, '0' after 400 ns, '1' after 410 ns, '0' after 420 ns, '1' after 430 ns, '0' after 440 ns, '0' after 450 ns, '1' after 460 ns, '0' after 470 ns, '1' after 480 ns, '0' after 490 ns, '1' after 500 ns, '0' after 510 ns, '1' after 520 ns, '0' after 530 ns, '1' after 540 ns, '0' after 550 ns, '1' after 560 ns, '0' after 570 ns, '1' after 580 ns, '0' after 590 ns, '1' after 600 ns, '0' after 610 ns, '1' after 620 ns, '0' after 630 ns, '1' after 640 ns, '0' after 650 ns, '0' after 660 ns, '1' after 670 ns, '0' after 680 ns, '1' after 690 ns, '0' after 700 ns, '1' after 710 ns, '0' after 720 ns, '1' after 730 ns, '0' after 740 ns, '1' after 750 ns, '0' after 760 ns, '1' after 770 ns, '0' after 780 ns, '1' after 790 ns, '0' after 800 ns, '1' after 810 ns, '0' after 820 ns, '1' after 830 ns, '0' after 840 ns, '1' after 850 ns, '0' after 860 ns, '1' after 870 ns, '0' after 880 ns, '1' after 890 ns, '0' after 900 ns, '0' after 910 ns, '1' after 920 ns, '0' after 930 ns, '1' after 940 ns, '0' after 950 ns, '1' after 960 ns, '0' after 970 ns, '1' after 980 ns, '0' after 990 ns, '1' after 1000 ns, '0' after 1010 ns, '1' after 1020 ns, '0' after 1030 ns, '1' after 1040 ns, '0' after 1050 ns, '1' after 1060 ns, '0' after 1070 ns, '1' after 1080 ns, '0' after 1090 ns, '1' after 1100 ns, '0' after 1110 ns, '1' after 1120 ns, '0' after 1130 ns, '1' after 1140 ns, '0' after 1150 ns, '1' after 1160 ns, '0' after 1170 ns, '1' after 1180 ns, '0' after 1190 ns, '0' after 1200 ns, '1' after 1210 ns, '0' after 1220 ns, '1' after 1230 ns, '0' after 1240 ns, '1' after 1250 ns, '0' after 1260 ns, '1' after 1270 ns, '0' after 1280 ns, '1' after 1290 ns, '0' after 1300 ns, '1' after 1310 ns, '0' after 1320 ns, '1' after 1330 ns, '0' after 1340 ns, '1' after 1350 ns, '1' after 1360 ns, '0' after 1370 ns, '1' after 1380 ns, '0' after 1390 ns, '1' after 1400 ns, '0' after 1410 ns, '1' after 1420 ns, '0' after 1430 ns, '1' after 1440 ns, '0' after 1450 ns, '1' after 1460 ns, '0' after 1470 ns, '1' after 1480 ns, '0' after 1490 ns, '1' after 1500 ns, '0' after 1510 ns, '1' after 1520 ns, '0' after 1530 ns, '1' after 1540 ns, '0' after 1550 ns, '1' after 1560 ns, '0' after 1570 ns, '1' after 1580 ns, '0' after 1590 ns, '1' after 1600 ns, '0' after 1610 ns, '1' after 1620 ns, '0' after 1630 ns, '1' after 1640 ns, '1' after 1650 ns, '0' after 1660 ns, '1' after 1670 ns, '0' after 1680 ns, '1' after 1690 ns, '0' after 1700 ns, '1' after 1710 ns, '0' after 1720 ns, '1' after 1730 ns, '0' after 1740 ns, '1' after 1750 ns, '0' after 1760 ns, '1' after 1770 ns, '0' after 1780 ns, '1' after 1790 ns, '0' after 1800 ns, '1' after 1810 ns, '0' after 1820 ns, '1' after 1830 ns, '0' after 1840 ns, '1' after 1850 ns, '0' after 1860 ns, '1' after 1870 ns, '0' after 1880 ns, '1' after 1890 ns, '1' after 1900 ns, '0' after 1910 ns, '1' after 1920 ns, '0' after 1930 ns, '1' after 1940 ns, '0' after 1950 ns, '1' after 1960 ns, '0' after 1970 ns, '1' after 1980 ns, '0' after 1990 ns, '1' after 2000 ns, '0' after 2010 ns, '1' after 2020 ns, '0' after 2030 ns, '1' after 2040 ns, '0' after 2050 ns, '1' after 2060 ns, '0' after 2070 ns, '1' after 2080 ns, '0' after 2090 ns, '1' after 2100 ns, '1' after 2110 ns, '0' after 2120 ns, '1' after 2130 ns, '0' after 2140 ns, '1' after 2150 ns, '0' after 2160 ns, '1' after 2170 ns, '0' after 2180 ns, '1' after 2190 ns, '0' after 2200 ns, '1' after 2210 ns, '0' after 2220 ns, '1' after 2230 ns, '0' after 2240 ns, '1' after 2250 ns, '0' after 2260 ns, '1' after 2270 ns, '1' after 2280 ns, '0' after 2290 ns, '1' after 2300 ns, '0' after 2310 ns, '1' after 2320 ns, '0' after 2330 ns, '1' after 2340 ns, '0' after 2350 ns, '1' after 2360 ns, '0' after 2370 ns, '1' after 2380 ns, '0' after 2390 ns, '1' after 2400 ns, '1' after 2410 ns, '0' after 2420 ns, '1' after 2430 ns, '0' after 2440 ns, '1' after 2450 ns, '0' after 2460 ns, '1' after 2470 ns, '0' after 2480 ns, '1' after 2490 ns, '1' after 2500 ns, '0' after 2510 ns, '1' after 2520 ns, '0' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  B_SIG(3) <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '0' after 70 ns, '0' after 80 ns, '0' after 90 ns, '0' after 100 ns, '0' after 110 ns, '0' after 120 ns, '0' after 130 ns, '0' after 140 ns, '0' after 150 ns, '0' after 160 ns, '0' after 170 ns, '0' after 180 ns, '0' after 190 ns, '0' after 200 ns, '0' after 210 ns, '0' after 220 ns, '0' after 230 ns, '0' after 240 ns, '0' after 250 ns, '0' after 260 ns, '0' after 270 ns, '0' after 280 ns, '0' after 290 ns, '0' after 300 ns, '0' after 310 ns, '0' after 320 ns, '0' after 330 ns, '0' after 340 ns, '0' after 350 ns, '1' after 360 ns, '0' after 370 ns, '0' after 380 ns, '0' after 390 ns, '0' after 400 ns, '0' after 410 ns, '0' after 420 ns, '0' after 430 ns, '0' after 440 ns, '1' after 450 ns, '1' after 460 ns, '0' after 470 ns, '0' after 480 ns, '0' after 490 ns, '0' after 500 ns, '0' after 510 ns, '0' after 520 ns, '0' after 530 ns, '0' after 540 ns, '1' after 550 ns, '1' after 560 ns, '1' after 570 ns, '0' after 580 ns, '0' after 590 ns, '0' after 600 ns, '0' after 610 ns, '0' after 620 ns, '0' after 630 ns, '0' after 640 ns, '0' after 650 ns, '1' after 660 ns, '1' after 670 ns, '1' after 680 ns, '1' after 690 ns, '0' after 700 ns, '0' after 710 ns, '0' after 720 ns, '0' after 730 ns, '0' after 740 ns, '0' after 750 ns, '0' after 760 ns, '0' after 770 ns, '1' after 780 ns, '1' after 790 ns, '1' after 800 ns, '1' after 810 ns, '1' after 820 ns, '0' after 830 ns, '0' after 840 ns, '0' after 850 ns, '0' after 860 ns, '0' after 870 ns, '0' after 880 ns, '0' after 890 ns, '0' after 900 ns, '1' after 910 ns, '1' after 920 ns, '1' after 930 ns, '1' after 940 ns, '1' after 950 ns, '1' after 960 ns, '0' after 970 ns, '0' after 980 ns, '0' after 990 ns, '0' after 1000 ns, '0' after 1010 ns, '0' after 1020 ns, '0' after 1030 ns, '0' after 1040 ns, '1' after 1050 ns, '1' after 1060 ns, '1' after 1070 ns, '1' after 1080 ns, '1' after 1090 ns, '1' after 1100 ns, '1' after 1110 ns, '0' after 1120 ns, '0' after 1130 ns, '0' after 1140 ns, '0' after 1150 ns, '0' after 1160 ns, '0' after 1170 ns, '0' after 1180 ns, '0' after 1190 ns, '1' after 1200 ns, '1' after 1210 ns, '1' after 1220 ns, '1' after 1230 ns, '1' after 1240 ns, '1' after 1250 ns, '1' after 1260 ns, '1' after 1270 ns, '0' after 1280 ns, '0' after 1290 ns, '0' after 1300 ns, '0' after 1310 ns, '0' after 1320 ns, '0' after 1330 ns, '0' after 1340 ns, '0' after 1350 ns, '1' after 1360 ns, '1' after 1370 ns, '1' after 1380 ns, '1' after 1390 ns, '1' after 1400 ns, '1' after 1410 ns, '1' after 1420 ns, '1' after 1430 ns, '0' after 1440 ns, '0' after 1450 ns, '0' after 1460 ns, '0' after 1470 ns, '0' after 1480 ns, '0' after 1490 ns, '0' after 1500 ns, '1' after 1510 ns, '1' after 1520 ns, '1' after 1530 ns, '1' after 1540 ns, '1' after 1550 ns, '1' after 1560 ns, '1' after 1570 ns, '1' after 1580 ns, '0' after 1590 ns, '0' after 1600 ns, '0' after 1610 ns, '0' after 1620 ns, '0' after 1630 ns, '0' after 1640 ns, '1' after 1650 ns, '1' after 1660 ns, '1' after 1670 ns, '1' after 1680 ns, '1' after 1690 ns, '1' after 1700 ns, '1' after 1710 ns, '1' after 1720 ns, '0' after 1730 ns, '0' after 1740 ns, '0' after 1750 ns, '0' after 1760 ns, '0' after 1770 ns, '1' after 1780 ns, '1' after 1790 ns, '1' after 1800 ns, '1' after 1810 ns, '1' after 1820 ns, '1' after 1830 ns, '1' after 1840 ns, '1' after 1850 ns, '0' after 1860 ns, '0' after 1870 ns, '0' after 1880 ns, '0' after 1890 ns, '1' after 1900 ns, '1' after 1910 ns, '1' after 1920 ns, '1' after 1930 ns, '1' after 1940 ns, '1' after 1950 ns, '1' after 1960 ns, '1' after 1970 ns, '0' after 1980 ns, '0' after 1990 ns, '0' after 2000 ns, '1' after 2010 ns, '1' after 2020 ns, '1' after 2030 ns, '1' after 2040 ns, '1' after 2050 ns, '1' after 2060 ns, '1' after 2070 ns, '1' after 2080 ns, '0' after 2090 ns, '0' after 2100 ns, '1' after 2110 ns, '1' after 2120 ns, '1' after 2130 ns, '1' after 2140 ns, '1' after 2150 ns, '1' after 2160 ns, '1' after 2170 ns, '1' after 2180 ns, '0' after 2190 ns, '1' after 2200 ns, '1' after 2210 ns, '1' after 2220 ns, '1' after 2230 ns, '1' after 2240 ns, '1' after 2250 ns, '1' after 2260 ns, '1' after 2270 ns, '1' after 2280 ns, '1' after 2290 ns, '1' after 2300 ns, '1' after 2310 ns, '1' after 2320 ns, '1' after 2330 ns, '1' after 2340 ns, '1' after 2350 ns, '1' after 2360 ns, '1' after 2370 ns, '1' after 2380 ns, '1' after 2390 ns, '1' after 2400 ns, '1' after 2410 ns, '1' after 2420 ns, '1' after 2430 ns, '1' after 2440 ns, '1' after 2450 ns, '1' after 2460 ns, '1' after 2470 ns, '1' after 2480 ns, '1' after 2490 ns, '1' after 2500 ns, '1' after 2510 ns, '1' after 2520 ns, '1' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  B_SIG(2) <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '0' after 40 ns, '0' after 50 ns, '0' after 60 ns, '0' after 70 ns, '0' after 80 ns, '0' after 90 ns, '1' after 100 ns, '0' after 110 ns, '0' after 120 ns, '0' after 130 ns, '0' after 140 ns, '1' after 150 ns, '1' after 160 ns, '0' after 170 ns, '0' after 180 ns, '0' after 190 ns, '0' after 200 ns, '1' after 210 ns, '1' after 220 ns, '1' after 230 ns, '0' after 240 ns, '0' after 250 ns, '0' after 260 ns, '0' after 270 ns, '1' after 280 ns, '1' after 290 ns, '1' after 300 ns, '1' after 310 ns, '0' after 320 ns, '0' after 330 ns, '0' after 340 ns, '0' after 350 ns, '0' after 360 ns, '1' after 370 ns, '1' after 380 ns, '1' after 390 ns, '1' after 400 ns, '0' after 410 ns, '0' after 420 ns, '0' after 430 ns, '0' after 440 ns, '0' after 450 ns, '0' after 460 ns, '1' after 470 ns, '1' after 480 ns, '1' after 490 ns, '1' after 500 ns, '0' after 510 ns, '0' after 520 ns, '0' after 530 ns, '0' after 540 ns, '0' after 550 ns, '0' after 560 ns, '0' after 570 ns, '1' after 580 ns, '1' after 590 ns, '1' after 600 ns, '1' after 610 ns, '0' after 620 ns, '0' after 630 ns, '0' after 640 ns, '0' after 650 ns, '0' after 660 ns, '0' after 670 ns, '0' after 680 ns, '0' after 690 ns, '1' after 700 ns, '1' after 710 ns, '1' after 720 ns, '1' after 730 ns, '0' after 740 ns, '0' after 750 ns, '0' after 760 ns, '0' after 770 ns, '1' after 780 ns, '0' after 790 ns, '0' after 800 ns, '0' after 810 ns, '0' after 820 ns, '1' after 830 ns, '1' after 840 ns, '1' after 850 ns, '1' after 860 ns, '0' after 870 ns, '0' after 880 ns, '0' after 890 ns, '0' after 900 ns, '1' after 910 ns, '1' after 920 ns, '0' after 930 ns, '0' after 940 ns, '0' after 950 ns, '0' after 960 ns, '1' after 970 ns, '1' after 980 ns, '1' after 990 ns, '1' after 1000 ns, '0' after 1010 ns, '0' after 1020 ns, '0' after 1030 ns, '0' after 1040 ns, '1' after 1050 ns, '1' after 1060 ns, '1' after 1070 ns, '0' after 1080 ns, '0' after 1090 ns, '0' after 1100 ns, '0' after 1110 ns, '1' after 1120 ns, '1' after 1130 ns, '1' after 1140 ns, '1' after 1150 ns, '0' after 1160 ns, '0' after 1170 ns, '0' after 1180 ns, '0' after 1190 ns, '1' after 1200 ns, '1' after 1210 ns, '1' after 1220 ns, '1' after 1230 ns, '0' after 1240 ns, '0' after 1250 ns, '0' after 1260 ns, '0' after 1270 ns, '1' after 1280 ns, '1' after 1290 ns, '1' after 1300 ns, '1' after 1310 ns, '0' after 1320 ns, '0' after 1330 ns, '0' after 1340 ns, '0' after 1350 ns, '1' after 1360 ns, '1' after 1370 ns, '1' after 1380 ns, '1' after 1390 ns, '0' after 1400 ns, '0' after 1410 ns, '0' after 1420 ns, '0' after 1430 ns, '1' after 1440 ns, '1' after 1450 ns, '1' after 1460 ns, '1' after 1470 ns, '0' after 1480 ns, '0' after 1490 ns, '0' after 1500 ns, '1' after 1510 ns, '1' after 1520 ns, '1' after 1530 ns, '1' after 1540 ns, '0' after 1550 ns, '0' after 1560 ns, '0' after 1570 ns, '0' after 1580 ns, '1' after 1590 ns, '1' after 1600 ns, '1' after 1610 ns, '1' after 1620 ns, '0' after 1630 ns, '0' after 1640 ns, '1' after 1650 ns, '1' after 1660 ns, '1' after 1670 ns, '1' after 1680 ns, '0' after 1690 ns, '0' after 1700 ns, '0' after 1710 ns, '0' after 1720 ns, '1' after 1730 ns, '1' after 1740 ns, '1' after 1750 ns, '1' after 1760 ns, '0' after 1770 ns, '1' after 1780 ns, '1' after 1790 ns, '1' after 1800 ns, '1' after 1810 ns, '0' after 1820 ns, '0' after 1830 ns, '0' after 1840 ns, '0' after 1850 ns, '1' after 1860 ns, '1' after 1870 ns, '1' after 1880 ns, '1' after 1890 ns, '1' after 1900 ns, '1' after 1910 ns, '1' after 1920 ns, '1' after 1930 ns, '0' after 1940 ns, '0' after 1950 ns, '0' after 1960 ns, '0' after 1970 ns, '1' after 1980 ns, '1' after 1990 ns, '1' after 2000 ns, '1' after 2010 ns, '1' after 2020 ns, '1' after 2030 ns, '1' after 2040 ns, '0' after 2050 ns, '0' after 2060 ns, '0' after 2070 ns, '0' after 2080 ns, '1' after 2090 ns, '1' after 2100 ns, '1' after 2110 ns, '1' after 2120 ns, '1' after 2130 ns, '1' after 2140 ns, '0' after 2150 ns, '0' after 2160 ns, '0' after 2170 ns, '0' after 2180 ns, '1' after 2190 ns, '1' after 2200 ns, '1' after 2210 ns, '1' after 2220 ns, '1' after 2230 ns, '0' after 2240 ns, '0' after 2250 ns, '0' after 2260 ns, '0' after 2270 ns, '1' after 2280 ns, '1' after 2290 ns, '1' after 2300 ns, '1' after 2310 ns, '0' after 2320 ns, '0' after 2330 ns, '0' after 2340 ns, '1' after 2350 ns, '1' after 2360 ns, '1' after 2370 ns, '1' after 2380 ns, '0' after 2390 ns, '0' after 2400 ns, '1' after 2410 ns, '1' after 2420 ns, '1' after 2430 ns, '1' after 2440 ns, '0' after 2450 ns, '1' after 2460 ns, '1' after 2470 ns, '1' after 2480 ns, '1' after 2490 ns, '1' after 2500 ns, '1' after 2510 ns, '1' after 2520 ns, '1' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  B_SIG(1) <= '0' after 0 ns, '0' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '1' after 60 ns, '1' after 70 ns, '0' after 80 ns, '0' after 90 ns, '0' after 100 ns, '1' after 110 ns, '1' after 120 ns, '0' after 130 ns, '0' after 140 ns, '0' after 150 ns, '0' after 160 ns, '1' after 170 ns, '1' after 180 ns, '0' after 190 ns, '0' after 200 ns, '1' after 210 ns, '0' after 220 ns, '0' after 230 ns, '1' after 240 ns, '1' after 250 ns, '0' after 260 ns, '0' after 270 ns, '1' after 280 ns, '1' after 290 ns, '0' after 300 ns, '0' after 310 ns, '1' after 320 ns, '1' after 330 ns, '0' after 340 ns, '0' after 350 ns, '0' after 360 ns, '1' after 370 ns, '1' after 380 ns, '0' after 390 ns, '0' after 400 ns, '1' after 410 ns, '1' after 420 ns, '0' after 430 ns, '0' after 440 ns, '0' after 450 ns, '0' after 460 ns, '1' after 470 ns, '1' after 480 ns, '0' after 490 ns, '0' after 500 ns, '1' after 510 ns, '1' after 520 ns, '0' after 530 ns, '0' after 540 ns, '1' after 550 ns, '0' after 560 ns, '0' after 570 ns, '1' after 580 ns, '1' after 590 ns, '0' after 600 ns, '0' after 610 ns, '1' after 620 ns, '1' after 630 ns, '0' after 640 ns, '0' after 650 ns, '1' after 660 ns, '1' after 670 ns, '0' after 680 ns, '0' after 690 ns, '1' after 700 ns, '1' after 710 ns, '0' after 720 ns, '0' after 730 ns, '1' after 740 ns, '1' after 750 ns, '0' after 760 ns, '0' after 770 ns, '0' after 780 ns, '1' after 790 ns, '1' after 800 ns, '0' after 810 ns, '0' after 820 ns, '1' after 830 ns, '1' after 840 ns, '0' after 850 ns, '0' after 860 ns, '1' after 870 ns, '1' after 880 ns, '0' after 890 ns, '0' after 900 ns, '0' after 910 ns, '0' after 920 ns, '1' after 930 ns, '1' after 940 ns, '0' after 950 ns, '0' after 960 ns, '1' after 970 ns, '1' after 980 ns, '0' after 990 ns, '0' after 1000 ns, '1' after 1010 ns, '1' after 1020 ns, '0' after 1030 ns, '0' after 1040 ns, '1' after 1050 ns, '0' after 1060 ns, '0' after 1070 ns, '1' after 1080 ns, '1' after 1090 ns, '0' after 1100 ns, '0' after 1110 ns, '1' after 1120 ns, '1' after 1130 ns, '0' after 1140 ns, '0' after 1150 ns, '1' after 1160 ns, '1' after 1170 ns, '0' after 1180 ns, '0' after 1190 ns, '1' after 1200 ns, '1' after 1210 ns, '0' after 1220 ns, '0' after 1230 ns, '1' after 1240 ns, '1' after 1250 ns, '0' after 1260 ns, '0' after 1270 ns, '1' after 1280 ns, '1' after 1290 ns, '0' after 1300 ns, '0' after 1310 ns, '1' after 1320 ns, '1' after 1330 ns, '0' after 1340 ns, '0' after 1350 ns, '1' after 1360 ns, '1' after 1370 ns, '0' after 1380 ns, '0' after 1390 ns, '1' after 1400 ns, '1' after 1410 ns, '0' after 1420 ns, '0' after 1430 ns, '1' after 1440 ns, '1' after 1450 ns, '0' after 1460 ns, '0' after 1470 ns, '1' after 1480 ns, '1' after 1490 ns, '0' after 1500 ns, '1' after 1510 ns, '1' after 1520 ns, '0' after 1530 ns, '0' after 1540 ns, '1' after 1550 ns, '1' after 1560 ns, '0' after 1570 ns, '0' after 1580 ns, '1' after 1590 ns, '1' after 1600 ns, '0' after 1610 ns, '0' after 1620 ns, '1' after 1630 ns, '1' after 1640 ns, '1' after 1650 ns, '1' after 1660 ns, '0' after 1670 ns, '0' after 1680 ns, '1' after 1690 ns, '1' after 1700 ns, '0' after 1710 ns, '0' after 1720 ns, '1' after 1730 ns, '1' after 1740 ns, '0' after 1750 ns, '0' after 1760 ns, '1' after 1770 ns, '1' after 1780 ns, '1' after 1790 ns, '0' after 1800 ns, '0' after 1810 ns, '1' after 1820 ns, '1' after 1830 ns, '0' after 1840 ns, '0' after 1850 ns, '1' after 1860 ns, '1' after 1870 ns, '0' after 1880 ns, '0' after 1890 ns, '1' after 1900 ns, '1' after 1910 ns, '0' after 1920 ns, '0' after 1930 ns, '1' after 1940 ns, '1' after 1950 ns, '0' after 1960 ns, '0' after 1970 ns, '1' after 1980 ns, '1' after 1990 ns, '0' after 2000 ns, '1' after 2010 ns, '1' after 2020 ns, '0' after 2030 ns, '0' after 2040 ns, '1' after 2050 ns, '1' after 2060 ns, '0' after 2070 ns, '0' after 2080 ns, '1' after 2090 ns, '1' after 2100 ns, '1' after 2110 ns, '1' after 2120 ns, '0' after 2130 ns, '0' after 2140 ns, '1' after 2150 ns, '1' after 2160 ns, '0' after 2170 ns, '0' after 2180 ns, '1' after 2190 ns, '1' after 2200 ns, '1' after 2210 ns, '0' after 2220 ns, '0' after 2230 ns, '1' after 2240 ns, '1' after 2250 ns, '0' after 2260 ns, '0' after 2270 ns, '1' after 2280 ns, '1' after 2290 ns, '0' after 2300 ns, '0' after 2310 ns, '1' after 2320 ns, '1' after 2330 ns, '0' after 2340 ns, '1' after 2350 ns, '1' after 2360 ns, '0' after 2370 ns, '0' after 2380 ns, '1' after 2390 ns, '1' after 2400 ns, '1' after 2410 ns, '1' after 2420 ns, '0' after 2430 ns, '0' after 2440 ns, '1' after 2450 ns, '1' after 2460 ns, '1' after 2470 ns, '0' after 2480 ns, '0' after 2490 ns, '1' after 2500 ns, '1' after 2510 ns, '0' after 2520 ns, '1' after 2530 ns, '1' after 2540 ns, '1' after 2550 ns;
  B_SIG(0) <= '0' after 0 ns, '1' after 10 ns, '0' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '0' after 100 ns, '1' after 110 ns, '0' after 120 ns, '1' after 130 ns, '0' after 140 ns, '1' after 150 ns, '0' after 160 ns, '1' after 170 ns, '0' after 180 ns, '1' after 190 ns, '0' after 200 ns, '0' after 210 ns, '1' after 220 ns, '0' after 230 ns, '1' after 240 ns, '0' after 250 ns, '1' after 260 ns, '0' after 270 ns, '1' after 280 ns, '0' after 290 ns, '1' after 300 ns, '0' after 310 ns, '1' after 320 ns, '0' after 330 ns, '1' after 340 ns, '0' after 350 ns, '0' after 360 ns, '1' after 370 ns, '0' after 380 ns, '1' after 390 ns, '0' after 400 ns, '1' after 410 ns, '0' after 420 ns, '1' after 430 ns, '0' after 440 ns, '1' after 450 ns, '0' after 460 ns, '1' after 470 ns, '0' after 480 ns, '1' after 490 ns, '0' after 500 ns, '1' after 510 ns, '0' after 520 ns, '1' after 530 ns, '0' after 540 ns, '0' after 550 ns, '1' after 560 ns, '0' after 570 ns, '1' after 580 ns, '0' after 590 ns, '1' after 600 ns, '0' after 610 ns, '1' after 620 ns, '0' after 630 ns, '1' after 640 ns, '0' after 650 ns, '1' after 660 ns, '0' after 670 ns, '1' after 680 ns, '0' after 690 ns, '1' after 700 ns, '0' after 710 ns, '1' after 720 ns, '0' after 730 ns, '1' after 740 ns, '0' after 750 ns, '1' after 760 ns, '0' after 770 ns, '0' after 780 ns, '1' after 790 ns, '0' after 800 ns, '1' after 810 ns, '0' after 820 ns, '1' after 830 ns, '0' after 840 ns, '1' after 850 ns, '0' after 860 ns, '1' after 870 ns, '0' after 880 ns, '1' after 890 ns, '0' after 900 ns, '1' after 910 ns, '0' after 920 ns, '1' after 930 ns, '0' after 940 ns, '1' after 950 ns, '0' after 960 ns, '1' after 970 ns, '0' after 980 ns, '1' after 990 ns, '0' after 1000 ns, '1' after 1010 ns, '0' after 1020 ns, '1' after 1030 ns, '0' after 1040 ns, '0' after 1050 ns, '1' after 1060 ns, '0' after 1070 ns, '1' after 1080 ns, '0' after 1090 ns, '1' after 1100 ns, '0' after 1110 ns, '1' after 1120 ns, '0' after 1130 ns, '1' after 1140 ns, '0' after 1150 ns, '1' after 1160 ns, '0' after 1170 ns, '1' after 1180 ns, '0' after 1190 ns, '1' after 1200 ns, '0' after 1210 ns, '1' after 1220 ns, '0' after 1230 ns, '1' after 1240 ns, '0' after 1250 ns, '1' after 1260 ns, '0' after 1270 ns, '1' after 1280 ns, '0' after 1290 ns, '1' after 1300 ns, '0' after 1310 ns, '1' after 1320 ns, '0' after 1330 ns, '1' after 1340 ns, '0' after 1350 ns, '1' after 1360 ns, '0' after 1370 ns, '1' after 1380 ns, '0' after 1390 ns, '1' after 1400 ns, '0' after 1410 ns, '1' after 1420 ns, '0' after 1430 ns, '1' after 1440 ns, '0' after 1450 ns, '1' after 1460 ns, '0' after 1470 ns, '1' after 1480 ns, '0' after 1490 ns, '1' after 1500 ns, '1' after 1510 ns, '0' after 1520 ns, '1' after 1530 ns, '0' after 1540 ns, '1' after 1550 ns, '0' after 1560 ns, '1' after 1570 ns, '0' after 1580 ns, '1' after 1590 ns, '0' after 1600 ns, '1' after 1610 ns, '0' after 1620 ns, '1' after 1630 ns, '0' after 1640 ns, '1' after 1650 ns, '0' after 1660 ns, '1' after 1670 ns, '0' after 1680 ns, '1' after 1690 ns, '0' after 1700 ns, '1' after 1710 ns, '0' after 1720 ns, '1' after 1730 ns, '0' after 1740 ns, '1' after 1750 ns, '0' after 1760 ns, '1' after 1770 ns, '1' after 1780 ns, '0' after 1790 ns, '1' after 1800 ns, '0' after 1810 ns, '1' after 1820 ns, '0' after 1830 ns, '1' after 1840 ns, '0' after 1850 ns, '1' after 1860 ns, '0' after 1870 ns, '1' after 1880 ns, '0' after 1890 ns, '1' after 1900 ns, '0' after 1910 ns, '1' after 1920 ns, '0' after 1930 ns, '1' after 1940 ns, '0' after 1950 ns, '1' after 1960 ns, '0' after 1970 ns, '1' after 1980 ns, '0' after 1990 ns, '1' after 2000 ns, '1' after 2010 ns, '0' after 2020 ns, '1' after 2030 ns, '0' after 2040 ns, '1' after 2050 ns, '0' after 2060 ns, '1' after 2070 ns, '0' after 2080 ns, '1' after 2090 ns, '0' after 2100 ns, '1' after 2110 ns, '0' after 2120 ns, '1' after 2130 ns, '0' after 2140 ns, '1' after 2150 ns, '0' after 2160 ns, '1' after 2170 ns, '0' after 2180 ns, '1' after 2190 ns, '1' after 2200 ns, '0' after 2210 ns, '1' after 2220 ns, '0' after 2230 ns, '1' after 2240 ns, '0' after 2250 ns, '1' after 2260 ns, '0' after 2270 ns, '1' after 2280 ns, '0' after 2290 ns, '1' after 2300 ns, '0' after 2310 ns, '1' after 2320 ns, '0' after 2330 ns, '1' after 2340 ns, '1' after 2350 ns, '0' after 2360 ns, '1' after 2370 ns, '0' after 2380 ns, '1' after 2390 ns, '0' after 2400 ns, '1' after 2410 ns, '0' after 2420 ns, '1' after 2430 ns, '0' after 2440 ns, '1' after 2450 ns, '1' after 2460 ns, '0' after 2470 ns, '1' after 2480 ns, '0' after 2490 ns, '1' after 2500 ns, '0' after 2510 ns, '1' after 2520 ns, '1' after 2530 ns, '0' after 2540 ns, '1' after 2550 ns;
  process
  variable i : integer := 0;
    begin
    wait for 3 ns;
    for i in 0 to 2560 loop
    report "A3:[ " & std_logic'image(A_SIG(3)) & "] A2:[ " & std_logic'image(A_SIG(2)) & "] A1:[ " & std_logic'image(A_SIG(1)) & "] A0:[ " & std_logic'image(A_SIG(0)) & "] B3:[ " & std_logic'image(B_SIG(3)) & "] B2:[ " & std_logic'image(B_SIG(2)) & "] B1:[ " & std_logic'image(B_SIG(1)) & "] B0:[ " & std_logic'image(B_SIG(0)) & "] C3:[ " & std_logic'image(C3_SIG) & "] S3:[ " & std_logic'image(S_SIG(3)) & "] S2:[ " & std_logic'image(S_SIG(2)) & "] S1:[ " & std_logic'image(S_SIG(1)) & "] S0:[ " & std_logic'image(S_SIG(0)) & "]";
    wait for 10 ns;
    end loop;
    wait;
  end process;
end architecture SIM;