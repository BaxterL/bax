import os
import math


#>
#修改下面这段函数来修改执行指令
#{player}为当前对象 {obj}为当前计分板 {score}为当前分数
def opera(score,obj,player):
    return (f"execute if score {player} {obj} matches {score} run data modify storage bax:list output set from storage bax:list input[{score}]")


def carry_bit(i):
    if(i % 1 != 0):
        return(int(i+1))
    return(int(i))


def strint(num):
    return (str(int(num)))


def start(max, branch, folder, function=opera, namespace="", obj="int", player="#index"):
    if (branch < 2):
        branch = 2
    os.makedirs(f"{folder}/zzz", exist_ok=True)
    os.chdir(f"{folder}/zzz")
    if (namespace != ""):
        funchead = f"{namespace}:{folder}/zzz/"
    else:
        funchead = f"{folder}/zzz/"
    row = carry_bit(math.log(max, branch))
    for now_row in range(row):
        score=1
        if (now_row==(row-1)):
            for now_point in range(branch**now_row):
                with open(f"tree{now_row}_{now_point}.mcfunction",mode="a") as f:
                    for now_br in range(branch):
                        f.write(function(score,obj,player)+"\n")
                        score=score+1
        else:
            left=1
            for now_point in range(branch**now_row):
                with open(f"tree{now_row}_{now_point}.mcfunction",mode="a") as f:
                    for now_br in range(branch):
                        right=branch**(row-now_row-1)*(now_br+now_point*branch+1)
                        f.write(f"execute if score {player} {obj} matches {strint(left)}..{strint(right)} run function {funchead}tree{strint(now_row+1)}_{strint(now_br+now_point*branch)}\n")
                        left=right+1
    os.chdir("../")
    with open(f"root.mcfunction",mode="w") as f:
        f.write(f"execute if score {player} {obj} = {player} {obj} run function {funchead}tree0_0")


def main():
    a=False
    while (a==False):
        print("输入最大分数")
        i=input()
        print("输入分支")
        i2=input()
        a1=False
        while (a1 == False):
            if (math.log(int(i), int(i2)) % 1 != 0):
                print("建议更换是幂倍数的数字,生成可能会出现问题,是否继续(1继续,2取消)")
                i3=input()
                if (int(i3)==2):
                    print("输入最大分数")
                    i=input()
                    print("输入分支")
                    i2=input()
                    continue
                elif(int(i3==1)):
                    a1=True
            else:
                a1=True
        if(a1==True):
            print("输入目录")
            i4=input()
            print("输入命名空间")
            i5=input()
            print("输入玩家")
            i6=input()
            print("输入记分板")
            i7=input()
            a=True
    start(int(i),int(i2),i4,namespace=i5,player=i6,obj=i7)

main()