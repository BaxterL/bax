'''
有的时候我比较讨厌写着写着要打几刻延迟,所以这个辅助开发的脚本就因此诞生了

全局计时 格式:
#global
say 1
#2t
say 3
#3s
say end
运行0.mcfunction

实体计时 格式(obj是计分板,数字是计分板分数):
#self
#obj
#1
say 1
#4
say 2
#5..7
say end
循环运行root.mcfunction
'''
import os

def run(namespace="bax",folder="func/zzz"):
    lines = []
    delay = []
    text=""

    with open('input.mcfunction', 'r',encoding='utf-8',errors='ignore') as file:
        first_line = next(file).rstrip().lstrip("#")
        if first_line == "self":
            mode=True
            obj = next(file).rstrip().lstrip("#")
            for line in file:
                line = line.rstrip()
                if line.startswith("#"):
                    delay.append(line.lstrip("#"))
                    lines.append(text.lstrip("&&&"))
                    text=""
                else:
                    text = text+"&&&"+line
            lines.append(text.lstrip("&&&"))
            lines.pop(0)
        if first_line == "global":
            for line in file:
                line = line.rstrip()
                if line.startswith("#"):
                    lines.append(text.lstrip("&&&"))
                    text=""
                    line = line.lstrip("#")
                    delay.append(line)
                else:
                    text = text+"&&&"+line
            lines.append(text.lstrip("&&&"))
    try:                
        os.mkdir("generate")
    except:
        pass
    os.chdir("generate")
    count=len(lines)
    if first_line == "global":
        for index in range(count):
            after=True
            try:
                items = lines[index].split("&&&")
            except:
                after=False
            with open(f"{index}.mcfunction","a") as f:
                for item in items:
                    f.write(f"{item}\n")
                if after == True:
                    try:
                        f.write(f"schedule function {namespace}:{folder}/{index+1} {delay[index]} append")
                    except:
                        pass
    elif mode == True:
        for index in range(count):
            try:
                items = lines[index].split("&&&")
            except:
                pass
            with open(f"{index}.mcfunction","a") as f:
                for item in items:
                    f.write(f"{item}\n")
        with open("root.mcfunction","a") as f:

            for index in range(count):
                f.write(f"execute if score @s {obj} matches {delay[index]} run function {namespace}:{folder}/{index}\n")

def main():
    a=False
    while (a==False):
        print("请确保运行路径下有input.mcfunction且按照格式书写\n输入你的数据包命名空间")
        name=input()
        print("例如player/zzz为function player/zzz\n输入你的函数目录")
        fl=input()
        run(namespace=name,folder=fl)
        print("生成于当前目录generate文件中\n请将里面放入你的文件夹目录")
        a=True
        os.system('pause')

main()
