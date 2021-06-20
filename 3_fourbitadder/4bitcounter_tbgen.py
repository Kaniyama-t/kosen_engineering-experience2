# coding: utf-8
import copy
from bitstring import BitArray

#############################
# statics

LOG_LEVEL = 1

ARRAYSTR = ["Theoretrical Value", "A3", "A2", "A1", "A0", "B3", "B2", "B1", "B0", "C3", "S3", "S2", "S1", "S0"]
ARREYSUB_THEORETICAL_VALUE = 0
ARREYSUB_A3_VALUE = 1
ARREYSUB_A2_VALUE = 2
ARREYSUB_A1_VALUE = 3
ARREYSUB_A0_VALUE = 4
ARREYSUB_B3_VALUE = 5
ARREYSUB_B2_VALUE = 6
ARREYSUB_B1_VALUE = 7
ARREYSUB_B0_VALUE = 8

CODE_PATH = "fourbitcounter_tb.vhd"
RESULT_PATH = "fourbitcounter_tb.result"


#############################
# genPattern
#  - description:
#      i個のPin入力がある場合にその組み合わせをpatternListに追加する再起関数。
#  - ARGS:
#      i		: 残りくりかえし回数
#      arraySource	: 処理中のパターン配列
#      patternList	: 生成結果

def genPattern(i, arraySource, patternList):
    for p in [0,1]:
        if LOG_LEVEL >= 3:
            print("i = " + str(i) + " / VALUE = " + str(p))
        array = copy.copy(arraySource)
        array.append(p)
        if(i <= 0):
            patternList.append(array)
        else:
            genPattern(i-1, array, patternList)
    # print("i = " + str(i) + " / VALUE = " + "1")
    # arr.append(1)
    # if(i <= 0):
    #     return arr
    # else:
    #     return cnt(i-1, arr)


#############################
# Generating Pattern
patternList = []
genPattern(7,[], patternList)

#############################
# Calucurating Theoretrical Value
for pattern in patternList:
    A = int("".join(map(str, pattern[0:4])),2)
    B = int("".join(map(str, pattern[4:8])),2)
    if LOG_LEVEL >= 2:
        print("A = " + str(A) + " / A = " + str(pattern[0:4]) + " / B = " + str(B) + " / B = " + str(pattern[4:8]), end="")
    pattern.insert(0, A + B)
    if LOG_LEVEL >= 2:
        print(" / Cal = " + str(A+B))

#############################
# Sorting Pattern
patternList.sort()
for i in patternList:
    if LOG_LEVEL >= 1:
        print("A = " + str(int("".join(map(str, i[1:5])),2)) + " / A = " + str(i[1:5]) + " / B = " + str(int("".join(map(str, i[5:9])),2)) + " / B = " + str(i[5:9]) + " / cal = " + str(i[0]))

#############################
# Generating Code
vhdFile = open(CODE_PATH, mode="w")
print("""
library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------------
entity fourbitadder_tb is  
end entity fourbitadder_tb;
------------------------------------------------------------
architecture SIM of fourbitadder_tb is
    component fourbitadder
    Port (
      A3	: in std_logic;
      A2	: in std_logic;
      A1	: in std_logic;
      A0	: in std_logic;
      B3	: in std_logic;
      B2	: in std_logic;
      B1	: in std_logic;
      B0	: in std_logic;
      C3	: out std_logic;
      S3	: out std_logic;
      S2	: out std_logic;
      S1	: out std_logic;
      S0	: out std_logic);
    end component;
      signal A3_SIG	: std_logic := '0';
      signal A2_SIG	: std_logic := '0';
      signal A1_SIG	: std_logic := '0';
      signal A0_SIG	: std_logic := '0';
      signal B3_SIG	: std_logic := '0';
      signal B2_SIG	: std_logic := '0';
      signal B1_SIG	: std_logic := '0';
      signal B0_SIG	: std_logic := '0';

      signal C3_SIG	: std_logic;
      signal S3_SIG	: std_logic;
      signal S2_SIG	: std_logic;
      signal S1_SIG	: std_logic;
      signal S0_SIG	: std_logic;

  begin
  U0: fourbitadder port map(A3 => A3_SIG, A2 => A2_SIG , A1 => A1_SIG , A0 => A0_SIG , B3 => B3_SIG , B2 => B2_SIG , B1 => B1_SIG , B0 => B0_SIG , C3 => C3_SIG , S3 => S3_SIG , S2 => S2_SIG , S1 => S1_SIG , S0 => S0_SIG );
\n""", file=vhdFile, end="")

for pin in range(1,9):
    print("  " + ARRAYSTR[pin] + "_SIG <= " , end='', file=vhdFile)
    for caseNum in range(len(patternList)):
        print("\'" + str(patternList[caseNum][pin]) + "\'" + " after " + str(caseNum * 10) + " ns, " , end='', file=vhdFile)
    print(';\n', end='', file=vhdFile)

print("""
  process
  variable i : integer := 0;
    begin
    wait for 3 ns;
    for i in 0 to 2560 loop
    report "A3:[ " & std_logic'image(A3_SIG) & "] A2:[ " & std_logic'image(A2_SIG) & "] A1:[ " & std_logic'image(A1_SIG) & "] A0:[ " & std_logic'image(A0_SIG) & "] B3:[ " & std_logic'image(B3_SIG) & "] B2:[ " & std_logic'image(B2_SIG) & "] B1:[ " & std_logic'image(B1_SIG) & "] B0:[ " & std_logic'image(B0_SIG) & "] C3:[ " & std_logic'image(C3_SIG) & "] S3:[ " & std_logic'image(S3_SIG) & "] S2:[ " & std_logic'image(S2_SIG) & "] S1:[ " & std_logic'image(S1_SIG) & "] S0:[ " & std_logic'image(S0_SIG) & "]";
    wait for 10 ns;
    end loop;
    wait;
  end process;
end architecture SIM;
""", file=vhdFile, end="")
vhdFile.close()

#############################
# Deleting Invalid Syntax
vhdFile = open(CODE_PATH, mode="r+")
TBCode = vhdFile.read()
modifiedTBCode = TBCode.replace(", ;",";")
vhdFile.write(modifiedTBCode)

#############################
# Generating Test Code
resultFile = open(RESULT_PATH, mode="w")
for i in patternList:
    if LOG_LEVEL >= 1:
        for p in range(1,9):
            print(ARRAYSTR[p] + ":[\'" + str(i[p]) + "\'] ", file=resultFile, end="")
        caledResVal = str(bin(i[0])).replace("b","").zfill(5)
        if len(caledResVal) > 5:
            caledResVal = caledResVal[1:6]
        print(caledResVal)
        for q in range (9,14):
            print(ARRAYSTR[q] + ":[\'" + str(caledResVal[q-9:q-8]) + "\'] ", file=resultFile, end="")

        print("\n", file=resultFile, end="")
        print("A = " + str(int("".join(map(str, i[1:5])),2)) + " / A = " + str(i[1:5]) + " / B = " + str(int("".join(map(str, i[5:9])),2)) + " / B = " + str(i[5:9]) + " / cal = " + str(i[0]))
