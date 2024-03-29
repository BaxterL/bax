import os
import math


#>
#修改下面这段函数来修改执行指令
#{player}为当前对象 {obj}为当前计分板 {score}为当前分数
def opera(score,obj,player):
    return (f"say {player} on {obj} is {score} 具体操作见python代码\n#当前分数(角度)的余弦值\nscoreboard players set {player} {opera2(score)}\n#当前分数%4分别输出不同信息\nsay {opera3(score)}")

def opera2(num):
    return (int(math.cos(math.radians(num))*1000))
    
def opera3(num):
	temp = num % 4
	if(temp==0):
		return "a"
	elif(temp==1):
		return "b"
	elif(temp==2):
		return "c"
	elif(temp==3):
		return "d"
	return "null"

####################################

def carry_bit(i):
    if(i % 1 != 0):
        return(int(i+1))
    return(int(i))


def strint(num):
    return (str(int(num)))


def start(max, branch, folder, function=opera, namespace="", obj="int", player="#index"):
    if (branch < 2):
        branch = 2
    os.makedirs(f"{folder}/zzz/do", exist_ok=True)
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
                        f.write(f"execute if score {player} {obj} matches {score} run function {funchead}do/{score}"+"\n")
                        score=score+1
        else:
            left=1
            for now_point in range(branch**now_row):
                with open(f"tree{now_row}_{now_point}.mcfunction",mode="a") as f:
                    for now_br in range(branch):
                        right=branch**(row-now_row-1)*(now_br+now_point*branch+1)
                        f.write(f"execute if score {player} {obj} matches {strint(left)}..{strint(right)} run function {funchead}tree{strint(now_row+1)}_{strint(now_br+now_point*branch)}\n")
                        left=right+1
    for score in range(1,max+1):
        with open(f"do/{score}.mcfunction",mode="a") as f:
            f.write(function(score,obj,player))
    os.chdir("../")
    with open(f"{folder}/root.mcfunction",mode="w") as f:
        f.write(f"execute if score {player} {obj} = {player} {obj} run function {funchead}tree0_0")


def main():
    a=False
    while (a==False):
        print("输入最大分数")
        i=int(input())
        print("输入分支")
        i2=int(input())
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
    print("完成")

main()