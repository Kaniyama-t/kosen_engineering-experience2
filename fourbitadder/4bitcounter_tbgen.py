# coding: utf-8
import copy
from bitstring import BitArray

#############################
# statics

LOG_LEVEL = 0

ARRAYSTR = ["Theoretrical Value", "A3", "A2", "A1", "A0", "B3", "B2", "B1", "B0"]
ARREYSUB_THEORETICAL_VALUE = 0
ARREYSUB_A3_VALUE = 1
ARREYSUB_A2_VALUE = 2
ARREYSUB_A1_VALUE = 3
ARREYSUB_A0_VALUE = 4
ARREYSUB_B3_VALUE = 5
ARREYSUB_B2_VALUE = 6
ARREYSUB_B1_VALUE = 7
ARREYSUB_B0_VALUE = 8



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
        if LOG_LEVEL >= 1:
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
    A = int("".join(map(str, pattern[1:5])),2)
    B = int("".join(map(str, pattern[5:9])),2)
    pattern.insert(0, A + B)
    if LOG_LEVEL >= 1:
        print("A = " + str(A) + " / B = " + str(B) + " / Cal = " + str(A+B))

#############################
# Sorting Pattern
patternList.sort()
for i in patternList:
    print(i[0])

exit()

#############################
# Generating Code
for i in range(9):
    print(ARRAYSTR[i] + "_SIG <= " , end='')
    for p in range(len(patternList)):
        if (ARRAYSTR[i] == "Theoretrical Value"):
            continue
        print("\'" + str(patternList[p][i]) + "\'" + " after " + str(p * 10) + " ns, " , end='')
    print(';\n', end='')
    
